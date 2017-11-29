unit uCadOper_CRT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxDBLabel, FireDAC.Comp.Client;

type
  TfrmCadOper_CRT = class(TfrmCad)
    EDID: TcxDBLabel;
    Label6: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label5: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label1: TcxLabel;
    EDCNPJ: TcxDBTextEdit;
    Label2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label8: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label9: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label10: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label11: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label40: TcxLabel;
    cxDBComboBox1: TcxDBComboBox;
    Label14: TcxLabel;
    cmbCidade: TcxDBTextEdit;
    lblCodCidCont: TcxDBLabel;
    Label37: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    tbvcnpj: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvrazaosocial: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
    procedure dbNavButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure tbvcnpjHeaderClick(Sender: TObject);
    procedure cmbCidadeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadOper_CRT: TfrmCadOper_CRT;
  coluna : TcxGridDBColumn;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, uPesqCidade;

procedure TfrmCadOper_CRT.cmbCidadeKeyPress(Sender: TObject; var Key: Char);
begin
   if DS1.Dataset.State in [dsInsert, dsEdit] then
   begin
      if key<> #13 then
      begin
         if not ValidaUF(DM.QOper_CRTuf.AsString) then
         begin
            exit;
         end;

         frmPesqCidade    := TfrmPesqCidade.Create(self);
         frmPesqCidade.UF := DM.QOper_CRTuf.AsString;

         if frmPesqCidade.ShowModal = mrOk then
         begin
            DM.QOper_CRTcidade.AsString := frmPesqCidade.cdCidadecidade.AsString;
            DM.QOper_CRTcodmun.AsString := frmPesqCidade.cdCidadecod.AsString;
         end;
      end;
   end;
end;

procedure TfrmCadOper_CRT.dbNavButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
   if AButtonIndex in [6,9] then
      cxDBTextEdit6.SetFocus;
end;

procedure TfrmCadOper_CRT.edPesqPropertiesChange(Sender: TObject);
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
         dm.QOper_CRT.Open(C_SQL84 + coluna.DataBinding.FieldName);
      end
      else
      begin
         s := BuscaTroca(C_SQL85, C_SOH, coluna.DataBinding.FieldName);
         s := BuscaTroca(s, C_ETX, edPesq.Text);
         dm.QOper_CRT.Open(s);
      end;
   end
   else
   begin
      if DS1.DataSet.Active then
         DS1.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
   end;
end;

procedure TfrmCadOper_CRT.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QOper_CRT.Open;
end;

procedure TfrmCadOper_CRT.TabPesqShow(Sender: TObject);
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

procedure TfrmCadOper_CRT.tbvcnpjHeaderClick(Sender: TObject);
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
