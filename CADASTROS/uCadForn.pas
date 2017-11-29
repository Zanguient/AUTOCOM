unit uCadForn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxMemo, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxDBLabel, FireDAC.Comp.Client, cxCurrencyEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxCalendar;

type
  TfrmCadForn = class(TfrmCad)
    tbvCNPJ: TcxGridDBColumn;
    tbvNOME: TcxGridDBColumn;
    tbvRAZAOSOCIAL: TcxGridDBColumn;
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
    Label16: TcxLabel;
    Label20: TcxLabel;
    Label21: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    Label17: TcxLabel;
    Label22: TcxLabel;
    Label19: TcxLabel;
    Label18: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBComboBox2: TcxDBComboBox;
    edCidadeCobranca: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxTabSheet1: TcxTabSheet;
    Label27: TcxLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxTabSheet2: TcxTabSheet;
    Label30: TcxLabel;
    Label31: TcxLabel;
    Label32: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    cxDBTextEdit20: TcxDBTextEdit;
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
    procedure cmbCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure dbNavButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
      var ADone: Boolean);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
    procedure tbvCNPJHeaderClick(Sender: TObject);
    procedure edCidadeCobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit2PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadForn: TfrmCadForn;
  coluna : TcxGridDBColumn;


implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, uPesqCidade;

procedure TfrmCadForn.cmbCidadeKeyPress(Sender: TObject; var Key: Char);
begin
   if DS1.Dataset.State in [dsInsert, dsEdit] then
   begin
      if key<> #13 then
      begin
         if not ValidaUF(DM.QFornuf.AsString) then
         begin
            exit;
         end;

         frmPesqCidade    := TfrmPesqCidade.Create(self);
         frmPesqCidade.UF := DM.QFornuf.AsString;

         if frmPesqCidade.ShowModal = mrOk then
         begin
            DM.QForncidade.AsString := frmPesqCidade.cdCidadecidade.AsString;
            DM.QForncodmun.AsString := frmPesqCidade.cdCidadecod.AsString;
         end;
      end;
   end;
end;


procedure TfrmCadForn.cxDBTextEdit2PropertiesChange(Sender: TObject);
begin
   if (DS1.DataSet.State in[dsEdit, dsInsert])and
      (copy(TcxDBTextEdit(sender).Text,1,1)='I') then
      DM.QFornIE.AsString := C_227;
end;

procedure TfrmCadForn.dbNavButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
   if AButtonIndex in [6,9] then
      cxDBTextEdit6.SetFocus;
end;

procedure TfrmCadForn.edCidadeCobrancaKeyPress(Sender: TObject; var Key: Char);
begin
   if DS1.Dataset.State in [dsInsert, dsEdit] then
   begin
      if key<> #13 then
      begin
         if not ValidaUF(DM.Qfornufcobranca.AsString) then
         begin
            exit;
         end;

         frmPesqCidade    := TfrmPesqCidade.Create(self);
         frmPesqCidade.UF := DM.Qfornufcobranca.AsString;

         if frmPesqCidade.ShowModal = mrOk then
         begin
            DM.Qforncidadecobranca.AsString := frmPesqCidade.cdCidadecidade.AsString;
            DM.Qforncodmuncobranca.AsString := frmPesqCidade.cdCidadecod.AsString;
         end;
      end;
   end;
end;

procedure TfrmCadForn.edPesqPropertiesChange(Sender: TObject);
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
         dm.QForn.Open(C_SQL63 + coluna.DataBinding.FieldName);
      end
      else
      begin
         s := BuscaTroca(C_SQL64, C_SOH, coluna.DataBinding.FieldName);
         s := BuscaTroca(s, C_ETX, edPesq.Text);
         dm.QForn.Open(s);
      end;
   end
   else
   begin
      if DS1.DataSet.Active then
         DS1.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
   end;
end;

procedure TfrmCadForn.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QForn.Open;
end;

procedure TfrmCadForn.TabPesqShow(Sender: TObject);
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

procedure TfrmCadForn.tbvCNPJHeaderClick(Sender: TObject);
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
  edpesq.SetFocus;
end;

end.
