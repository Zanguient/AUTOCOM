unit uGestaoAPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls,
  cxPCdxBarPopupMenu, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxLabel, cxCheckBox, cxMemo, cxCurrencyEdit, cxTextEdit, cxDropDownEdit,
  cxRadioGroup, cxMaskEdit, cxCalendar, cxGroupBox, cxPC, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmGestaoAPagar = class(Tfrm)
    pgDetBol: TcxPageControl;
    TabPesqBol: TcxTabSheet;
    rcb1: TcxRadioGroup;
    btnExibir1: TcxButton;
    pgOpcBol: TcxPageControl;
    TabDataBol: TcxTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    Dt1: TcxDateEdit;
    Dt2: TcxDateEdit;
    rbem: TcxRadioButton;
    rbven: TcxRadioButton;
    rbbx: TcxRadioButton;
    TabSacBol: TcxTabSheet;
    Label10: TLabel;
    cmb1: TcxComboBox;
    TabnmroBol: TcxTabSheet;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edPesqNmro: TcxTextEdit;
    edPesqValor: TcxCurrencyEdit;
    TabBaixaBol: TcxTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    dt_Baixa: TcxDateEdit;
    edMulta: TcxCurrencyEdit;
    mmObs: TcxMemo;
    cbMaos: TcxCheckBox;
    Panel5: TPanel;
    Panel6: TPanel;
    btnCanc: TcxButton;
    btnBaixa: TcxButton;
    Panel7: TPanel;
    cxLabel1: TcxLabel;
    Label1: TLabel;
    edJuros: TcxCurrencyEdit;
    Label2: TLabel;
    edDesc: TcxCurrencyEdit;
    Panel1: TPanel;
    edValor: TcxCurrencyEdit;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    tbvid: TcxGridDBColumn;
    tbvtipo: TcxGridDBColumn;
    tbvfavorec_nome: TcxGridDBColumn;
    tbvfavorec_doc: TcxGridDBColumn;
    tbvid_movi: TcxGridDBColumn;
    tbvnmro_doc: TcxGridDBColumn;
    tbvdt_process: TcxGridDBColumn;
    tbvdt_vencimento: TcxGridDBColumn;
    tbvdt_baixa: TcxGridDBColumn;
    tbvhora_baixa: TcxGridDBColumn;
    tbvvalor: TcxGridDBColumn;
    tbvvalor_multa: TcxGridDBColumn;
    tbvvalor_juros: TcxGridDBColumn;
    tbvvalor_desc: TcxGridDBColumn;
    tbvvalor_pg: TcxGridDBColumn;
    tbvcancelado: TcxGridDBColumn;
    tbvcc: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnCancClick(Sender: TObject);
    procedure btnBaixaClick(Sender: TObject);
    procedure tbvCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnExibir1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edMultaPropertiesChange(Sender: TObject);
    procedure TabPesqBolShow(Sender: TObject);
    procedure TabBaixaBolShow(Sender: TObject);
    procedure TabSacBolShow(Sender: TObject);
    procedure TabnmroBolShow(Sender: TObject);
    procedure edDescPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGestaoAPagar: TfrmGestaoAPagar;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, udm_ini, uFuncoes, uMD5Print, uCadPlanoContas, uAssoc,
  ubaixa_cp;

procedure TfrmGestaoAPagar.btnBaixaClick(Sender: TObject);
begin
  if (dt_Baixa.Date <=0)or(dt_baixa.Date > Date) then
     raise exception.Create(C_236);

  if (mmObs.Text = C_ST_VAZIO)and(MessageBox(0, C_248, C_237, MB_ICONQUESTION or MB_OKCANCEL) = idCancel) then
     exit;

    if edValor.Value < 0 then
     raise exception.Create('O valor a pagar não pode ser negativo.');

  if edValor.Value < DM.QFinan_apagarvalor.Value - edDesc.Value then
     raise exception.Create('O valor a pagar não pode ser menor que o valor da conta.');

  frmbaixa_cp := Tfrmbaixa_cp.Create(Self);
  frmbaixa_cp.edvr_apagar.Value := edValor.Value;
  frmbaixa_cp.ShowModal;
  DM.QFinan_apagar.Refresh;
end;

procedure TfrmGestaoAPagar.btnCancClick(Sender: TObject);
begin
  if (dt_Baixa.Date <=0)or(dt_baixa.Date > Date) then
     raise exception.Create(C_236);

  if (mmObs.Text = C_ST_VAZIO)and(MessageBox(0, C_248, C_237, MB_ICONQUESTION or MB_OKCANCEL) = idCancel) then
     exit;
end;

procedure TfrmGestaoAPagar.btnExibir1Click(Sender: TObject);
var
   filtro: String;
begin
   filtro := C_ST_VAZIO;

   if pgOpcBol.ActivePage = TabDataBol then
   begin
      if (Dt1.Date <=0) or (Dt1.Date > Dt2.Date) then
         raise Exception.Create(C_264);

      if rcb1.ItemIndex <0 then
         raise Exception.Create('Informe o Filtro.');

      if rbven.Checked then
         filtro := 'dt_vencimento between ' + data_my(Dt1.Date) + ' and ' + data_My(Dt2.Date)
      else
      if rbem.Checked then
         filtro := 'dt_process between ' + data_my(Dt1.Date) + ' and ' + data_My(Dt2.Date)
      else
         filtro := 'dt_baixa between ' + data_my(Dt1.Date) + ' and ' + data_My(Dt2.Date);

      filtro := filtro + 'and ' + rcb1.Properties.Items[rcb1.ItemIndex].Value;
   end
   else
   if pgOpcBol.ActivePage = TabSacBol then
   begin
      if cmb1.Text <> C_ST_VAZIO then
         filtro := 'favorec_nome=' + Texto_Mysql(cmb1.Text) + ' and ' + rcb1.Properties.Items[rcb1.ItemIndex].Value;
   end
   else
   if pgOpcBol.ActivePage = TabnmroBol then
   begin
      if Trim(edPesqNmro.Text) = C_ST_VAZIO then
      begin
         FormatSettings.DecimalSeparator := '.';
         filtro                          := 'valor=' + Texto_Mysql(edPesqValor.Value) + ' and ' + rcb1.Properties.Items[rcb1.ItemIndex].Value;
         FormatSettings.DecimalSeparator := ',';
      end
      else
      begin
         filtro := 'nmro_doc=' + Texto_Mysql(edPesqNmro.Text);
      end;
   end;

   if filtro = C_ST_VAZIO then
      exit;

   DM.QFinan_apagar.Open('select * from finan_apagar where ' + filtro);
end;

procedure TfrmGestaoAPagar.edDescPropertiesChange(Sender: TObject);
begin
   edValor.Value := DM.QFinan_apagarvalor.Value + edMulta.Value + edJuros.Value - edDesc.Value;
end;

procedure TfrmGestaoAPagar.edMultaPropertiesChange(Sender: TObject);
begin
   edValor.Value := DM.QFinan_apagarvalor.Value + edMulta.Value + edJuros.Value - edDesc.Value;
end;

procedure TfrmGestaoAPagar.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin //grava as cfg da grid
   for i := 0 to ComponentCount - 1 do
   begin
       if (Components[i] is TcxGridDBTableView) then
          (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
   end;
end;

procedure TfrmGestaoAPagar.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'AUTOCOM GERENCIAL GESTÃO DE CONTAS A PAGAR' + C_117;
   DM.Q1.Open(C_SQL105);

   while not DM.Q1.Eof do
   begin
      cmb1.Properties.Items.Append(DM.Q1.Fields[0].AsString);
      DM.Q1.Next;
   end;

   DM.Q1.Close;
   pgDetBol.ActivePage := TabPesqBol;
end;

procedure TfrmGestaoAPagar.FormShow(Sender: TObject);
var
   i: integer;
begin
  inherited;

  for i := 0 to ComponentCount - 1 do //ajusta a grid
  begin
      if (Components[i] is TcxGridDBTableView) then
      begin
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
      end;
  end;
end;

procedure TfrmGestaoAPagar.TabBaixaBolShow(Sender: TObject);
begin
   dt_Baixa.SetFocus;
end;

procedure TfrmGestaoAPagar.TabnmroBolShow(Sender: TObject);
begin
   edPesqNmro.SetFocus;
end;

procedure TfrmGestaoAPagar.TabPesqBolShow(Sender: TObject);
begin
   pgOpcBol.ActivePage := TabDataBol;
   dt1.SetFocus;
end;

procedure TfrmGestaoAPagar.TabSacBolShow(Sender: TObject);
begin
   cmb1.SetFocus;
end;

procedure TfrmGestaoAPagar.tbvCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnCanc.Enabled  := DM.QFinan_apagarcancelado.Value = 'N';
   btnBaixa.Enabled := (DM.QFinan_apagarcancelado.Value = 'N')and(DM.QFinan_apagarvalor_pg.Value <=0);
   edValor.Value    := DM.QFinan_apagarvalor.Value;
   edMulta.Clear;
   edJuros.Clear;
   edDesc.Clear;
end;

end.
