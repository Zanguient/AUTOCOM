unit uLanca_chq_terc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxDBEdit,
  cxDBLabel, cxMaskEdit, cxCalendar, cxImageComboBox, FireDAC.Comp.Client,
  cxGroupBox, cxRadioGroup, Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TfrmLanca_chq_terc = class(TfrmCad)
    tbvid: TcxGridDBColumn;
    tbvnmro: TcxGridDBColumn;
    tbvdata_em: TcxGridDBColumn;
    tbvdt_bompara: TcxGridDBColumn;
    tbvdt_devolvido: TcxGridDBColumn;
    tbvnome_dono: TcxGridDBColumn;
    tbvnome_portador: TcxGridDBColumn;
    tbvtel_portador: TcxGridDBColumn;
    tbvbanco: TcxGridDBColumn;
    tbvconta: TcxGridDBColumn;
    tbvvalor: TcxGridDBColumn;
    tbvstatus: TcxGridDBColumn;
    tbvalinea: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label5: TLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBSpinEdit1: TcxDBLabel;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label9: TLabel;
    Label10: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBCalcEdit1: TcxDBCurrencyEdit;
    cxDBSpinEdit2: TcxDBLookupComboBox;
    cxDBTextEdit6: TcxDBImageComboBox;
    cxTabSheet1: TcxTabSheet;
    GRD1: TcxGrid;
    tbv1: TcxGridDBTableView;
    lv1: TcxGridLevel;
    Panel1: TPanel;
    rg1: TcxRadioGroup;
    RG2: TcxRadioGroup;
    dtBx: TcxDateEdit;
    Label14: TLabel;
    btnBaixa: TcxButton;
    tbv1id: TcxGridDBColumn;
    tbv1nmro: TcxGridDBColumn;
    tbv1data_em: TcxGridDBColumn;
    tbv1dt_bompara: TcxGridDBColumn;
    tbv1dt_devolvido: TcxGridDBColumn;
    tbv1dt_baixa: TcxGridDBColumn;
    tbv1nome_dono: TcxGridDBColumn;
    tbv1nome_portador: TcxGridDBColumn;
    tbv1tel_portador: TcxGridDBColumn;
    tbv1banco: TcxGridDBColumn;
    tbv1conta: TcxGridDBColumn;
    tbv1valor: TcxGridDBColumn;
    tbv1status: TcxGridDBColumn;
    tbv1alinea: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure dbNavButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
      var ADone: Boolean);
    procedure tbvnmroHeaderClick(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure TabCadShow(Sender: TObject);
    procedure btnBaixaClick(Sender: TObject);
  private
    procedure Deposito;
    procedure Troca;
    procedure Devolucao;
  public
    { Public declarations }
  end;

var
  frmLanca_chq_terc: TfrmLanca_chq_terc;
  coluna : TcxGridDBColumn;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, uMD5Print, uChqTroca, uchq_dev, Uchq_dep;

procedure TfrmLanca_chq_terc.btnBaixaClick(Sender: TObject);
begin
   if rg2.ItemIndex = 1 then
      raise Exception.Create('Use a tela "GESTÃO DE CONTAS A PAGAR" para este tipo de baixa.');

   if (dtBx.Date <=0)or(dtBx.Date > date) then
      raise Exception.Create('Data da baixa incorreta.');

   if rg2.ItemIndex <0 then
      raise Exception.Create('Informe a forma de baixa.');

   case rg2.ItemIndex of
      0: Deposito;
      2: Troca;
      3: Devolucao;
   end;

end;

procedure TfrmLanca_chq_terc.cxTabSheet1Show(Sender: TObject);
begin
   rg1.ItemIndex := 0;
   dm.Qfinan_ch_terc.Open('select * from finan_chq_terceiro where status=' +
                          Texto_Mysql(rg1.Properties.Items[rg1.ItemIndex].Value) +
                          ' order by nmro');
end;

procedure TfrmLanca_chq_terc.dbNavButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
   if AButtonIndex in [6,9] then
      cxDBTextEdit1.SetFocus;
end;

procedure TfrmLanca_chq_terc.Deposito;
var
   i: integer;
begin
   i := tbv1.DataController.GetSelectedCount;

   if i = 0 then
      raise Exception.Create('Selecione um ou mais cheques.');

   if rg1.ItemIndex<> 0 then
      raise Exception.Create('Somente cheques custodiados podem ser depositados.');

   frmchq_dep := Tfrmchq_dep.Create(Self);
   frmchq_dep.ShowModal;
end;

procedure TfrmLanca_chq_terc.Devolucao;
var
   i: integer;
begin
   i := tbv1.DataController.GetSelectedCount;

   if i > 1 then
      raise Exception.Create('Selecione apenas um cheque.');

   if i = 0 then
      raise Exception.Create('Selecione o cheque.');

   if DM.Qfinan_ch_tercstatus.Value <> 'D' then
      raise Exception.Create('Somente cheque depositado pode ser devolvido.');

   frmChqDev := TfrmChqDev.Create(Self);
   frmChqDev.ShowModal;
end;

procedure TfrmLanca_chq_terc.Troca;
var
   i: integer;
begin
   i := tbv1.DataController.GetSelectedCount;

   if i > 1 then
      raise Exception.Create('Selecione apenas um cheque.');

   if i = 0 then
      raise Exception.Create('Selecione o cheque.');

   if (DM.Qfinan_ch_tercstatus.Value <> 'C')and(DM.Qfinan_ch_tercstatus.Value <> 'A') then
      raise Exception.Create('Somente cheques custodiados ou devolvidos podem ser trocados.');

   frmChqTroca := TfrmChqTroca.Create(self);
   frmChqTroca.ShowModal;
end;

procedure TfrmLanca_chq_terc.edPesqPropertiesChange(Sender: TObject);
VAR
   s: string;
begin
   if Trim(edPesq.Text) = C_ST_VAZIO then
      DS1.DataSet.Close
   else
   if Length(trim(edPesq.Text))=1 then
   begin
      if trim(edPesq.Text) = C_CORINGA then
      begin
         dm.Qfinan_ch_terc.Open('select * from finan_chq_terceiro order by ' + coluna.DataBinding.FieldName);
      end
      else
      begin
         s := BuscaTroca(C_SQL55, C_SOH, coluna.DataBinding.FieldName);
         s := BuscaTroca(s, C_ETX, edPesq.Text);
         DM.Qfinan_ch_terc.Open(s);
      end;
   end
   else
   begin
      if DS1.DataSet.Active then
         DS1.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
   end;
end;

procedure TfrmLanca_chq_terc.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'AUTOCOM GERENCIAL LANÇAMENTO DE CHEQUES DE 3º' + C_117;
   DM.Qfinan_ch_terc.Open('select * from finan_chq_terceiro order by id desc limit 1');
   DM.QBancos.Open('select * from finan_banco_banco order by nomebanco');
end;

procedure TfrmLanca_chq_terc.rg1Click(Sender: TObject);
begin
   if rg1.Properties.Items[rg1.ItemIndex].Value <> '*' then
      dm.Qfinan_ch_terc.Open('select * from finan_chq_terceiro where status=' +
                              Texto_Mysql(rg1.Properties.Items[rg1.ItemIndex].Value) +
                              ' order by nmro')
   else
   dm.Qfinan_ch_terc.Open('select * from finan_chq_terceiro order by nmro');
end;

procedure TfrmLanca_chq_terc.TabCadShow(Sender: TObject);
begin
   if DM.Qfinan_ch_terc.IsEmpty then
      DM.Qfinan_ch_terc.Open('select * from finan_chq_terceiro order by id desc limit 1');
end;

procedure TfrmLanca_chq_terc.TabPesqShow(Sender: TObject);
var
   i: integer;
begin
   inherited;
   coluna := tbv.Columns[0];

   for i := 0 to tbv.ColumnCount - 1 do
   if tbv.Columns[i].Tag = 1 then
      coluna := tbv.Columns[i];

  lblPesq.Caption := C_190 + coluna.Caption;
  edpesq.SetFocus;
  DM.Qfinan_ch_terc.Close;
end;

procedure TfrmLanca_chq_terc.tbvnmroHeaderClick(Sender: TObject);
var
   i: integer;
begin
  ds1.DataSet.close;

  for i := 0 to tbv.ColumnCount - 1 do
      tbv.Columns[i].Tag := 0;

  coluna := TcxGridDBColumn(Sender);
  TcxGridDBColumn(Sender).Tag := 1;
  lblPesq.Caption := C_190 + coluna.Caption;
  (DS1.DataSet as TFDQuery).IndexFieldNames := coluna.DataBinding.FieldName;
  edPesq.Clear;
  edpesq.SetFocus;
end;



end.
