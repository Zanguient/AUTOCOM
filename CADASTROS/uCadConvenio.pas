unit uCadConvenio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxMemo, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxDBLabel, cxCheckBox, cxControls, FireDAC.Comp.Client,
  dxSkinsCore, dxSkinCaramel, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter,
  dxBarBuiltInMenu;

type
  TfrmCadConvenio = class(TfrmCad)
    EDCNPJ: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    EDID: TcxDBLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    lblCodCidCont: TcxDBLabel;
    cmbCidade: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBCheckBox1: TcxDBCheckBox;
    tbvCNPJ: TcxGridDBColumn;
    tbvNOME: TcxGridDBColumn;
    tbvRAZAOSOCIAL: TcxGridDBColumn;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label13: TcxLabel;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
    procedure cmbCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure tbvCNPJHeaderClick(Sender: TObject);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure cxDBTextEdit9PropertiesChange(Sender: TObject);
    procedure dbNavButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadConvenio: TfrmCadConvenio;
  coluna : TcxGridDBColumn;

implementation

{$R *.dfm}

uses uDM, uPesqCidade, uFuncoes, uAutocomConsts;

procedure TfrmCadConvenio.cmbCidadeKeyPress(Sender: TObject; var Key: Char);
begin
   if DS1.Dataset.State in [dsInsert, dsEdit] then
   begin
      if key<> #13 then
      begin
         if not ValidaUF(DM.QConveniouf.AsString) then
         begin
            exit;
         end;

         frmPesqCidade    := TfrmPesqCidade.Create(self);
         frmPesqCidade.UF := DM.QConveniouf.AsString;

         if frmPesqCidade.ShowModal = mrOk then
         begin
            DM.QConveniocidade.AsString := frmPesqCidade.cdCidadecidade.AsString;
            DM.QConveniocodmun.AsString := frmPesqCidade.cdCidadecod.AsString;
         end;
      end;
   end;
end;

procedure TfrmCadConvenio.cxDBTextEdit9PropertiesChange(Sender: TObject);
begin
   if (DS1.DataSet.State in[dsEdit, dsInsert])and
      (copy(TcxDBTextEdit(sender).Text,1,1)='I') then
      DM.QConvenioIE.AsString := C_227;
end;

procedure TfrmCadConvenio.dbNavButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
   if AButtonIndex in [6,9] then
      EDCNPJ.SetFocus;
end;

procedure TfrmCadConvenio.edPesqPropertiesChange(Sender: TObject);
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
         dm.QConvenio.Open(C_SQL56 + coluna.DataBinding.FieldName);
      end
      else
      begin
         s := BuscaTroca(C_SQL57, C_SOH, coluna.DataBinding.FieldName);
         s := BuscaTroca(s, C_ETX, edPesq.Text);
         dm.QConvenio.Open(s);
      end;
   end
   else
   begin
      if DS1.DataSet.Active then
         DS1.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
   end;
end;

procedure TfrmCadConvenio.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QConvenio.Open;
end;

procedure TfrmCadConvenio.TabPesqShow(Sender: TObject);
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

procedure TfrmCadConvenio.tbvCNPJHeaderClick(Sender: TObject);
var
   i: integer;
begin
  ds1.DataSet.close;

  for i := 0 to tbv.ColumnCount - 1 do
      tbv.Columns[i].Tag := 0;

  coluna := TcxGridDBColumn(Sender);
  TcxGridDBColumn(Sender).Tag := 1;
  (DS1.DataSet as TFDQuery).IndexFieldNames := coluna.DataBinding.FieldName;
  lblPesq.Caption := C_190 + coluna.Caption;
  edpesq.SetFocus;
end;

end.

