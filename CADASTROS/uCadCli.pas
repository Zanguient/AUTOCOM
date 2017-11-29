unit uCadCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls,cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxCheckBox, cxDBEdit, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxDBLabel, cxMemo, cxSpinEdit, cxCalc, cxCurrencyEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, FireDAC.Comp.Client;

type
  TfrmCadCli = class(TfrmCad)
    EDCNPJ: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    EDID: TcxDBLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    cmbCidade: TcxDBTextEdit;
    lblCodCidCont: TcxDBLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    pgCadCli: TcxPageControl;
    TabCadCliCobranca: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBComboBox2: TcxDBComboBox;
    edCidadeCobranca: TcxDBTextEdit;
    cxDBLabel1: TcxDBLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    cxDBTextEdit20: TcxDBTextEdit;
    cmbConvenio: TcxDBLookupComboBox;
    cmbIndicacao: TcxDBLookupComboBox;
    cxDBCalcEdit1: TcxDBCurrencyEdit;
    DSConvenio: TDataSource;
    tbvid: TcxGridDBColumn;
    tbvcnpj: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvrazaosocial: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBComboBox;
    cxDBTextEdit25: TcxDBComboBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label34: TcxLabel;
    Label35: TcxLabel;
    Label36: TcxLabel;
    Label37: TcxLabel;
    Label38: TcxLabel;
    Label39: TcxLabel;
    Label40: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    Label21: TcxLabel;
    Label18: TcxLabel;
    Label22: TcxLabel;
    Label23: TcxLabel;
    Label24: TcxLabel;
    Label25: TcxLabel;
    Label26: TcxLabel;
    Label27: TcxLabel;
    Label28: TcxLabel;
    Label29: TcxLabel;
    Label30: TcxLabel;
    Label31: TcxLabel;
    Label32: TcxLabel;
    procedure cmbCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edCidadeCobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxDBTextEdit2PropertiesChange(Sender: TObject);
    procedure dbNavButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
      var ADone: Boolean);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
    procedure tbvidHeaderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCli: TfrmCadCli;
  coluna : TcxGridDBColumn;


implementation

{$R *.dfm}

uses uDM, uFuncoes, uPesqCidade, uAutocomConsts;

procedure TfrmCadCli.cmbCidadeKeyPress(Sender: TObject; var Key: Char);
begin
   if DS1.Dataset.State in [dsInsert, dsEdit] then
   begin
      if key<> #13 then
      begin
         if not ValidaUF(DM.QCliuf.AsString) then  //verifica se tem uma uf valida
         begin
            exit;
         end;

         frmPesqCidade    := TfrmPesqCidade.Create(self);
         frmPesqCidade.UF := DM.QCliuf.AsString;

         if frmPesqCidade.ShowModal = mrOk then
         begin
            DM.QClicidade.AsString := frmPesqCidade.cdCidadecidade.AsString;
            DM.QClicodmun.AsString := frmPesqCidade.cdCidadecod.AsString;
         end;
      end;
   end;
end;

procedure TfrmCadCli.cxDBTextEdit2PropertiesChange(Sender: TObject);
begin
   if (DS1.DataSet.State in[dsEdit, dsInsert])and
      (copy(TcxDBTextEdit(sender).Text,1,1)='I') then
      DM.QCliIE.AsString := C_227;
end;

procedure TfrmCadCli.dbNavButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
   if AButtonIndex in [6,9] then
      cxDBTextEdit6.SetFocus;
end;

procedure TfrmCadCli.edCidadeCobrancaKeyPress(Sender: TObject; var Key: Char);
begin
   if DS1.Dataset.State in [dsInsert, dsEdit] then
   begin
      if key<> #13 then
      begin
         if not ValidaUF(DM.QCliufcobranca.AsString) then
         begin
            exit;
         end;

         frmPesqCidade    := TfrmPesqCidade.Create(self);
         frmPesqCidade.UF := DM.QCliufcobranca.AsString;

         if frmPesqCidade.ShowModal = mrOk then
         begin
            DM.QClicidadecobranca.AsString := frmPesqCidade.cdCidadecidade.AsString;
            DM.QClicodmuncobranca.AsString := frmPesqCidade.cdCidadecod.AsString;
         end;
      end;
   end;
end;

procedure TfrmCadCli.edPesqPropertiesChange(Sender: TObject);
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
         dm.QCli.Open(C_SQL23 + coluna.DataBinding.FieldName);
      end
      else
      begin
         s := BuscaTroca(C_SQL59, C_SOH, coluna.DataBinding.FieldName);
         s := BuscaTroca(s, C_ETX, edPesq.Text);
         DM.QCli.Open(s);
      end;
   end
   else
   begin
      if DS1.DataSet.Active then
         DS1.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
   end;
end;

procedure TfrmCadCli.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QCli.Open;
   DM.QConvenio.Open;
end;

procedure TfrmCadCli.FormShow(Sender: TObject);
begin
  inherited;
   pgCad.ActivePage := TabCad;
   pgCadCli.ActivePage := TabCadCliCobranca;
end;

procedure TfrmCadCli.TabPesqShow(Sender: TObject);
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
end;

procedure TfrmCadCli.tbvidHeaderClick(Sender: TObject);
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
