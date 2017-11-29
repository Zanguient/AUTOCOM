unit uGeraRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFuncoes, ComCtrls, StdCtrls, ExtCtrls, Menus, Buttons, rxPlacemnt,
  cxButtons, ImgList, jpeg, cxGraphics,  cxClasses, cxEdit, cxControls,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, uDM,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dximctrl, cxImageComboBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxCheckBox, Vcl.AppEvnts, cxMemo, dxSkinsCore,
  dxSkinCaramel, dxSkinscxPCPainter, System.ImageList;

type
  TfrmGeraRel = class(TForm)
    bar1: TStatusBar;
    GB1: TPanel;
    btnPrint: TcxButton;
    btnClose: TcxButton;
    btnShow: TcxButton;
    btnEditor: TcxButton;
    Panel1: TPanel;
    Panel2: TPanel;
    cbPadrao: TCheckBox;
    Panel3: TPanel;
    ImgList1: TImageList;
    ini: TFormStorage;
    cmb1: TcxImageComboBox;
    Label1: TLabel;
    cb1: TCheckBox;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    tbvid: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvcustom: TcxGridDBColumn;
    tbvtxt: TcxGridDBColumn;
    mmMsg: TcxMemo;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure cbPadraoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmb1Click(Sender: TObject);
    procedure tbvCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
  public
    { Public declarations }
  end;

var
  frmGeraRel: TfrmGeraRel;

implementation

uses uVisual, uAutocomConsts, uMD5Print, udm_ini, dmSkins, uSkinDLL;

{$R *.dfm}

procedure TfrmGeraRel.btnCloseClick(Sender: TObject);
var
   data: TDate;
begin
   data := StrToDateDef(ini.StoredValue['data_atu'], 0);

   if (DM_INI.ini.StoredValue['cbAtu'])and(NaNet)and(Trunc(data) <> date) then
   begin
      killtask('Atualizador.exe');
      ExecFile('Atualizador.exe','open','-r -start');
      ini.StoredValue['data_atu'] := date;
   end;
   Close;
end;

procedure TfrmGeraRel.btnPrintClick(Sender: TObject);                           //rotina comum aos 3 botoes
begin
   DM.Carrega('');

   DM.usapadrao := cbPadrao.Checked;
   DM.Rep1.EngineOptions.SilentMode := True;//oculta as msg de erro

   try
      case TBitBtn(sender).Tag of
         0:begin //imprimir
               DM.Imprimir;
            end;

         1: begin                                                                  //visualizar
               if frmVisual = nil then
                  frmVisual := TfrmVisual.Create(Application);

               if DM.Rep1.PrepareReport then
               begin
                  DM.Rep1.ShowPreparedReport;
                  frmVisual.bar1.Panels[4].Text := DM.Rep1.Report.ReportOptions.Name;
                  frmVisual.ShowModal;
               end;
            end;

         2: begin
             DM.Rep1.EngineOptions.SilentMode := False;  //mostra as msg de erro no modo editor
             DM.Rep1.DesignReport;
         end;
      end;
   except
      ON E: EXCEPTION DO
      begin
         mmMsg.Text := E.Message;
         mmMsg.Show;
      end;
   end;
end;

procedure TfrmGeraRel.cbPadraoClick(Sender: TObject);                                //comum aos 2 checkbox
var i: Integer;
begin
   if TCheckBox(Sender).Focused then
   begin
      if TCheckBox(Sender).Checked then
         i := 1
      else
         i := 0;

      DM_INI.INI.IniSection := 'CFG';
      DM_INI.INI.WriteInteger(IntToStr(TCheckBox(Sender).Tag), i);
      DM.desconsidera := (TCheckBox(Sender).Checked)and(TCheckBox(Sender).Tag = 1);//printer padrao
      DM.usapadrao    := (TCheckBox(Sender).Checked)and(TCheckBox(Sender).Tag = 0);//desconsidera
   end;
end;

procedure TfrmGeraRel.cmb1Click(Sender: TObject);
var
   s: string;
begin
   DM.QRelat.Close;
 //  mmMsg.Hide;

   if not DM.QRelat_Grupo.Active then
      DM.QRelat_Grupo.Open();

   if DM.QRelat_Grupo.Locate('id', cmb1.Properties.Items[cmb1.ItemIndex].Value, []) then
   begin
      s := Iif (cb1.Checked, ' and txt="S" ' , ' and txt="N" ');

      DM.QRelat.Open('SELECT id, nome, grupo, txt, custom, template FROM ( ' +
                     ' select * from relat where custom = "S" ' +
                     ' union ' +
                     ' select * from relat where custom = "N" ' +
                     ') AS CUR where grupo = ' +
                      DM.QRelat_Grupoid.AsString + s +
                      ' group by nome order by nome');
   end;

   DM._Grupoid := DM.QRelat_Grupoid.AsInteger;
   btnPrint.Enabled  := False;
   btnShow.Enabled   := False;
   btnEditor.Enabled  := DM._Grupoid > 0;
end;

procedure TfrmGeraRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ini.StoredValue['w'] := width;
   ini.StoredValue['h'] := height;
   ini.SaveFormPlacement;
   DM_INI.INI.SaveFormPlacement;
   FreeAndNil(DM);
   FreeAndNil(DM_INI);
   action := cafree;
   Release;
end;

procedure TfrmGeraRel.FormCreate(Sender: TObject);
var
   i, j: integer;
   s, st_parm, st_valor: string;
begin
   CAPTION := 'AUTOCOM CENTRAL DE RELATÓRIOS ' + C_117;

   DM := TDM.Create(self);
   DM_INI := TDM_INI.Create(Self);
   DM_INI.INI.inifilename := ParamStr(2);
   DM_INI.INI.Active      := True;
   DM_INI.INI.RestoreFormPlacement;
   DM._Grupoid := 0;

   ini.inifilename := Aqui(C_DAT_FILE, MD5_Str(Application.ExeName + TForm(sender).Name) + '.fr');
   ini.Active      := True;
   ini.RestoreFormPlacement;

   with DM do
   begin
      DB.Params.Clear;
      DB.Params.Add('Server=' + DM_INI.INI.StoredValue['serv_host']);
      DB.Params.Add('Database=' + DM_INI.INI.StoredValue['serv_database']);
      DB.Params.Add('User_Name=' + DM_INI.INI.StoredValue['serv_user']);
      DB.Params.Add('Password=' + DM_INI.INI.StoredValue['serv_password']);
      DB.Params.Add('ReadTimeout=1');
      DB.Params.Add('WriteTimeout=1');
      DB.Params.Add('DriverID=MySQL');
      DB.Connected := True;
      bar1.Panels[2].Text := FileVersion + '/3.1.1.3 ' + DM_INI.INI.StoredValue['serv_database'];
   end;



   //ShowMessage(ParamStr(1) + '->' + ParamStr(3) + '>' +ParamStr(4));//só para testes
   log('Rel','Recebido', ParamStr(1) + ' ' + ParamStr(2) + ' ' + ParamStr(3) + ' ' + ParamStr(4) + ' ' + ParamStr(5));

   if ParamStr(1) = C_ST_VAZIO then
      FatalAppExit(0, 'Uso incorreto. (sem parâmetros)');

   try
      if ParamStr(1) <> '-e'  then
      begin
         if ParamStr(1) = '-a'  then //se normal oculta os base e sistema
         begin
            DM.QRelat_Grupo.open('select * from relat_grupo where nome NOT IN ("SISTEMA", "BASE GRAFICO", "BASE MATRICIAL", "BASE") order by nome');
         end
         else
         if BuscaTroca(ParamStr(3), '"', '') = 'SNGPC' then
         begin
            DM.QRelat_Grupo.open('select * from relat_grupo where nome = "SNGPC"');
         end
         else//se chamado do gerencial traz somente SISTEMA
         begin
            DM.QRelat_Grupo.open('select * from relat_grupo where nome = "SISTEMA"');
         end;
      end
      else //se editor exibe tudo
      DM.QRelat_Grupo.open('select * from relat_grupo order by nome');

      while not DM.QRelat_Grupo.Eof do
      begin
         with cmb1.Properties.Items.Add do
         begin
            Description := DM.QRelat_Gruponome.AsString;
            Value       := DM.QRelat_Grupoid.AsInteger;
         end;
         DM.QRelat_Grupo.Next;
      end;
   finally
     ;
   end;

   if ParamStr(1) = '-e' then  //modo editor
      btnEditor.Visible := True
   else                      //modo imprimir/visualizar
   if (ParamStr(1) = '-p') or
      (ParamStr(1) = '-x') or
      (ParamStr(1) = '-v')  then
   begin
      frmGeraRel.BorderStyle := bsNone;
      frmGeraRel.Height := 0;

      //gerarel.exe <-a -v -p -e> arq.ini SISTEMA "RELATORIO XYZ" "id=abc" "data=01/01/2013" "resto=12.4" .. ate 20 parametros
      ////gerarel.exe <-x> "c:\..\autocom.ini" "SISTEMA " "RELATORIO XYZ (sem a extensão)" "C:\Teste\Rel\" "id=abc" "data=01/01/2013" "resto=12.4" .. ate 20 parametros
      // -a modo normal
      //-e modo editor
      //-p modo impressao
      //-v modo visualização
      //-x modo exportação pdf
      //SISTEMA nome da pasta
      //"RELATORIO XYZ" nome do arquivo (entre aspas duplas)

      //PathRel := PathBase + ParamStr(3) + '\' + BuscaTroca(ParamStr(4), '"', '') + '.fr3';

      if ParamStr(3) <> EmptyStr then
      begin
         if not DM.QRelat_Grupo.Locate('nome', BuscaTroca(ParamStr(3), '"', ''), [loCaseInsensitive]) then
            FatalAppExit(0,PWideChar('O grupo "' + ParamStr(3) + '" Não existe.'));

         if frmGeraRel.BorderStyle = bsNone then
            CMB1.ItemIndex := 0;

         CMB1.OnClick(cmb1);

      if not  DM.QRelat.Locate('nome', BuscaTroca(ParamStr(4), '"', ''), [loCaseInsensitive]) then
         FatalAppExit(0,PWideChar(ParamStr(4) + ' Não existe.'));
      end;

      if ParamStr(1) = '-x' then
         j := 6
      else
         j := 5;

      for i := j to 24 do //obtem as variaveis e seus valores nos paramstr 4 a 24
      begin
         if ParamStr(i) <> C_ST_VAZIO then
         begin
            if pos('=', ParamStr(i))=0 then
               FatalAppExit(0,PWideChar('O parâmetro ' + IntToStr(i) + ' ("' + ParamStr(i) + '") está mal formado.'));

            s := BuscaTroca(ParamStr(i), '"', '') ;
            st_parm  := Copy(s,1,pos('=',s)-1);
            st_valor := Trim(Copy(s,pos('=',s)+1, length(s)));

            DM.parmName[i-3]  := st_parm;
            DM.parmValue[i-3] := st_valor;
         end;
      end;

      if ParamStr(1) = '-p' then
         btnPrint.Click
      else
      if ParamStr(1) = '-v' then
         btnShow.Click
      else
      if ParamStr(1) = '-x' then
         DM.Exportar_PDF('', DM.QRelatnome.AsString);

      FatalExit(0); //ENCERRA O APLICATIVO
   end; //fim if ParamStr(3) <> EmptyStr
end;

procedure TfrmGeraRel.FormShow(Sender: TObject);
begin
   GetSkinDLL.GetSkinName;
end;

procedure TfrmGeraRel.tbvCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   if DM.QRelat.Active then
   begin
      btnPrint.Enabled  := not DM.QRelattemplate.IsNull;
      btnShow.Enabled   := not DM.QRelattemplate.IsNull;
   end;
end;

end.
