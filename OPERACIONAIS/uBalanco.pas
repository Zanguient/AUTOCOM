unit uBalanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, FireDAC.Comp.Client,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, uDM_INI,
  cxDropDownEdit, cxCalendar, cxGroupBox, cxRadioGroup, cxLabel, cxTextEdit,
  cxMaskEdit, dxSkinsdxStatusBarPainter, dxStatusBar, Vcl.ComCtrls,
  cxProgressBar, dxCore, cxDateUtils, FireDAC.Stan.Param, cxCheckBox;

type
  TfrmBalanco = class(Tfrm)
    GroupBox1: TGroupBox;
    cxLabel1: TcxLabel;
    btnExport: TcxButton;
    btnImprimirCST: TcxButton;
    btnImprimirSessao: TcxButton;
    rbFormato: TcxRadioGroup;
    btnAnalisar: TcxButton;
    GroupBox2: TGroupBox;
    cxLabel2: TcxLabel;
    btnGerarInvent: TcxButton;
    dtInvent: TcxDateEdit;
    Bar1: TdxStatusBar;
    pBar1: TcxProgressBar;
    Dt1: TcxDateEdit;
    cbFiltro: TcxCheckBox;
    procedure rbFormatoClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnAnalisarClick(Sender: TObject);
    procedure btnImprimirCSTClick(Sender: TObject);
    procedure btnImprimirSessaoClick(Sender: TObject);
  private
//    procedure Listar_Inventarios;
    procedure GerarCSV;
    procedure Filtrar(sessao: boolean = false);
  public
    { Public declarations }
  end;

var
  frmBalanco: TfrmBalanco;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, uInventarioExportacao, uAnaliseBalanco,
  uMain;

procedure TfrmBalanco.btnAnalisarClick(Sender: TObject);
begin
   if Dt1.Date <=0 then
      raise Exception.Create('Selecione uma data de inventário.');

   DM.QInventario.Close;
   DM.QInventario.Params[0].AsDate := Dt1.Date;
   Filtrar;
   DM.QInventario.Open;
   frmMain.Abrir_Form('frmCadAnaliseInvent', TfrmCadAnaliseInvent);
end;

procedure TfrmBalanco.btnExportClick(Sender: TObject);
begin
   btnExport.Enabled   := False;

   case rbFormato.ItemIndex of
      0:;
      1: GerarCSV;
   end;
   rbFormato.ItemIndex := -1;
end;


procedure TfrmBalanco.btnImprimirCSTClick(Sender: TObject);
begin
   DM.Abrir_Central_Relat('-v', DM_INI.ini.inifilename, 'SISTEMA', 'BALANÇO POR CST', '"sData=' + Dt1.Text +'"');
end;

procedure TfrmBalanco.btnImprimirSessaoClick(Sender: TObject);
begin
   DM.Abrir_Central_Relat('-v', DM_INI.ini.inifilename, 'SISTEMA', 'BALANÇO POR SESSÃO', '"sData=' + Dt1.Text +'"');
end;

procedure TfrmBalanco.Filtrar;
begin
   DM.QInventario.Filter := '';

   if cbFiltro.Checked then
   begin
      DM.QInventario.Filter := 'saldo > 0';
   end;

   DM.QInventario.Filtered := DM.QInventario.Filter <> '';
end;

procedure TfrmBalanco.GerarCSV;
 var
   Lista : TStringList;
   i: integer;
   s: string;
begin
   Lista := TStringList.Create;
   DM.QInventario.Close;
   DM.QInventario.Params[0].AsDate := Dt1.Date;
   DM.QInventario.Open;
   pBar1.Show;
   pBar1.Properties.Max := DM.QInventario.RecordCount;
   s := 'DATA;';

   for i := 1 to 10 do//SEGUE A ORDEM DS CAMPOS NO DATASET
   begin
      s := s + (AnsiUpperCase(DM.QInventario.Fields[i].DisplayLabel) + ';');
   end;

   s := s + 'TRIBUTAÇÃO;POSSE;';

   Lista.Append(s);

   while not DM.QInventario.Eof do
   begin
      pBar1.Position := DM.QInventario.recno;
      s := C_ST_VAZIO;

      s := FormatDateTime('dd/mm/yyyy', Dt1.Date) + ';';
      s := s + LFill(DM.QInventarioproduto.AsString, 5, '0') + ';';
      s := s + RFill(DM.QInventariocod_gtin.AsString, 14, ' ') + ';';
      s := s + DM.QInventarionome.AsString + ';';
      s := s + DM.QInventarioncm.AsString + ';';
      s := s + DM.QInventariounid.AsString + ';';
      s := s + DM.QInventariocst_csosn.AsString + ';';
      s := s + FloatToStrF(DM.QInventarioaliq_icms.Value, ffNumber,15,2) + ';';
      s := s + FloatToStrF(DM.QInventariovr_un.Value, ffNumber,15,3) + ';';
      s := s + FloatToStrF(DM.QInventariosaldo.Value, ffNumber,15,3) + ';';
      s := s + FloatToStrF(DM.QInventariovr_estoque.Value, ffNumber,15,3) + ';';


      if DM.QInventarioaliq_ecf.AsString = 'FF' then
          s := s + 'TRIBUTADO;'
      else
      if DM.QInventarioaliq_ecf.AsString = 'II' then
          s := s + 'ISENTO;'
      else
      if DM.QInventarioaliq_ecf.AsString <> '' then
          s := s + 'SUBST. TRIB;'
      else
          s := s + 'OUTROS;';

      s := s + 'NÃO INFORMADO;';

      Lista.Append(s);
      DM.QInventario.Next;
      Application.ProcessMessages;
   end;

   s := NUMBER(dm.QEmpresacnpj.AsString) + '_' + FormatDateTime(C_231, Dt1.Date) + '.csv';
   s := Aqui(C_233, s);
   bar1.Panels[0].Text := 'Gerando arquivo...';
   Lista.SaveToFile(s);
   pBar1.Hide;
   pBar1.Position := 0;
   bar1.Panels[0].Text := C_ST_VAZIO;
   ShowMessage(Format(C_MSG,[s]));
end;

procedure TfrmBalanco.rbFormatoClick(Sender: TObject);
begin
   btnExport.Enabled := True;
end;

end.
