unit uDM;

interface

uses
  SysUtils, Classes, frxDCtrl, frxClass, frxDMPExport, frxDesgn, DB, Forms,
  uFuncoes, Controls, extensos, windows, ACBrEAD,
  RxPlacemnt, frxExportText, frxExportImage, frxExportRTF, frxExportHTML,
  frxExportPDF, frxBarcode, frxChBox, frxExportCSV,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Comp.Client, FireDAC.VCLUI.Wait, frxFDComponents,
  FireDAC.Comp.UI, FireDAC.Phys.MySQL, FireDAC.DApt, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, Vcl.AppEvnts,
  FireDAC.Phys.MySQLDef, ACBrBase;

type
  TDM = class(TDataModule)
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    PDF: TfrxPDFExport;
    HTML: TfrxHTMLExport;
    RTF: TfrxRTFExport;
    JPG: TfrxJPEGExport;
    TXT: TfrxSimpleTextExport;
    txt1: TfrxSimpleTextExport;
    txt2: TfrxSimpleTextExport;
    EAD: TACBrEAD;
    CSV: TfrxCSVExport;
    Rep1: TfrxReport;
    DB: TFDConnection;
    frxFDComponents1: TfrxFDComponents;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    drvMySQL: TFDPhysMySQLDriverLink;
    QRelat_Grupo: TFDQuery;
    QRelat_Grupoid: TFDAutoIncField;
    QRelat_Gruponome: TStringField;
    DSRelat_Grupo: TDataSource;
    QRelat: TFDQuery;
    DSRelat: TDataSource;
    QRelatid: TFDAutoIncField;
    QRelatgrupo: TIntegerField;
    QRelatnome: TStringField;
    QRelattemplate: TMemoField;
    QRelatcustom: TStringField;
    QRelattxt: TStringField;
    Q1: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    MemoField1: TMemoField;
    StringField2: TStringField;
    StringField3: TStringField;
    RepDesign: TfrxDesigner;
    procedure Rep1GetValue(const VarName: string; var Value: Variant);
    function RepDesignSaveReport(Report: TfrxReport;
      SaveAs: Boolean): Boolean;
    procedure Rep1LoadTemplate(Report: TfrxReport; const TemplateName: string);
    procedure RepDesignShow(Sender: TObject);
    procedure DBBeforeConnect(Sender: TObject);
  private
     JaSalvou: boolean;
    { Private declarations }
  public
    inipath1, inipath2, aPath: string;
    desconsidera, usapadrao, matricial: Boolean;
    parmName: array [1..20] of String;
    parmValue: array [1..20] of variant;
    _Grupoid: integer;

    procedure Carrega(path: string);
    procedure Imprimir;
    procedure Exportar_PDF(st_PathRel, st_FileName: string);
    function ExecSQL(asql:string):boolean;
    function DecimalSep(separator:string):boolean;
    function MD5FromString(const AString: String): String;
  end;

var
  DM: TDM;

implementation

uses uprn, uAutocomConsts, udm_ini, uGeraRel;

{$R *.dfm}

function TDM.MD5FromString(const AString: String): String;
begin
  Result := AString + _C;
  Result := EAD.MD5FromString(Result);
end;

procedure TDM.Carrega(path: string);
var
   relatorio: TStream;                                         //carrega o fr3
begin
    if DM.QRelat.Active then
    if not QRelat.IsEmpty then
    begin
       relatorio := TMemoryStream.Create;
       (QRelat.fieldByName('template') as TBlobField).SaveToStream(relatorio);
       relatorio.Position := 0;
       Rep1.Report.Clear;
       Rep1.LoadFromStream(relatorio);
       FreeAndNil(relatorio);
    end;
end;

procedure TDM.DBBeforeConnect(Sender: TObject);
begin
  drvMySQL.VendorLib := Aqui('LIB\32', 'libmysql.dll');
end;

function TDM.DecimalSep(separator: string): boolean;
begin
   Result := true;
   FormatSettings.DecimalSeparator := Separator[1];
end;

function TDM.ExecSQL(asql: string):boolean;
begin
   with DB do
   begin
      execSql(asql);
      result := true;
   end;
end;

procedure TDM.Exportar_PDF(st_PathRel, st_FileName: string);
begin
   Carrega(st_PathRel);

   if Rep1.PrepareReport then
   begin
      if st_FileName <> '' then
         PDF.ShowDialog := False;

      PDF.FileName   := st_FileName;
      Rep1.Export(pdf);
      PDF.ShowDialog := True;
      PDF.FileName   := '';
   end;
end;

function TDM.RepDesignSaveReport(Report: TfrxReport; SaveAs: Boolean): Boolean;
var
   relatorio : TStream;
   s: string;
   replica:boolean;
begin
    if DM.Rep1.Report.ReportOptions.Name = EmptyStr then
      raise Exception.Create('Informe ReportOptions.Name');

    relatorio := TMemoryStream.Create;
    DM.Rep1.Designer.Report.SaveToStream(relatorio);
    replica := False;

    if not JaSalvou then
       DM.Q1.Open('select * from relat where nome=' + QuotedStr(AnsiUpperCase(DM.Rep1.Report.ReportOptions.Name)));

    if Q1.IsEmpty then  //se nao tem cria um novo não custom  (N)
       s := ''
    else
       s := DM.Q1.FieldByName('custom').AsString;

    if JaSalvou then //se ja salvou uma vez é pq esta modificando o rel. Dai só edita
       DM.Q1.Edit
    else
    if s = 'S' then  //se é custom(S) edita
       DM.Q1.Edit
    else
    if (s = 'N') then //se nao é custom pergunta se quer replicar e insere novo
    begin
       replica := (MessageBox(0, 'Salvar réplica customizada?', 'Atenção!', MB_ICONQUESTION or MB_YESNO or MB_DEFBUTTON1) = idYes);

       if replica then
          DM.Q1.Insert
       else
         DM.Q1.edit;
    end
    else
    begin //se esta vazio insere novo não custom
       DM.Q1.Insert;
    end;

    if not jasalvou then//se ainda não salvou, grava os registros pertinentes
    begin
      DM.Q1.FieldByName('grupo').AsInteger := DM._Grupoid;
      DM.Q1.FieldByName('nome').AsString   := DM.Rep1.Report.ReportOptions.Name;

      if replica then
         DM.Q1.FieldByName('custom').AsString := Iif(s = '', 'N', 'S');//se vazio é novo  e nao é custom. Se preenchido é custom

      DM.Q1.FieldByName('txt').AsString    := Iif (DM.Rep1.Report.DotMatrixReport,'S', 'N');
      JaSalvou := True;
    end;

    (DM.Q1.fieldByName('template') as TBlobField).LoadFromStream(relatorio);//salva o relatório

    DM.Q1.Post;

    if DM.QRelat.Active then
       DM.QRelat.Refresh;

    FreeAndNil(relatorio);
end;

procedure TDM.RepDesignShow(Sender: TObject);
begin
   JaSalvou := False;
end;

procedure TDM.Imprimir;                                                      //função para impressão direta
begin
   if (usapadrao) then                                                          //usa a padrão
   begin
      Rep1.PrintOptions.Printer := 'Default';
      if DM.Rep1.PrepareReport then                                          //imprime
         DM.Rep1.Print;
   end
   else
   begin
      frmprn := Tfrmprn.Create(nil);                                            //abre a tela de escolha de printers

      if (DM_INI.ini.ReadInteger('default', 0) = 1) then
      begin
         if DM_INI.ini.ReadString('printer', '') <> '' then                           //coloca a printer definida no ini, no cmb1
            frmprn.cmb1.Text := DM_INI.ini.ReadString('printer', '')
      end
      else
         frmprn.cmb1.Text := '';

      if frmprn.ShowModal = mrOK then                                           //se ok
      begin
         Rep1.Report.PrintOptions.Printer := frmprn.cmb1.Text;                  //impoe a printer ao rel1
         Rep1.PrintOptions.ShowDialog     := False;

         if DM.Rep1.PrepareReport then                                       //imprime
            DM.Rep1.Print;
      end;
   end;
end;

procedure TDM.Rep1GetValue(const VarName: string; var Value: Variant); //usado pelo report para capturar os parametros informados
var
   i: integer;
begin
  for i := 1 to 20 do
  if CompareText(VarName, parmName[i]) = 0 then
     value := parmValue[i];
end;

procedure TDM.Rep1LoadTemplate(Report: TfrxReport; const TemplateName: string);
begin
   JaSalvou := False;
end;

end.
