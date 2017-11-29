unit uPesqProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxDBLabel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPesqProd = class(TfrmCad)
    tbvColumn1: TcxGridDBColumn;
    tbvColumn2: TcxGridDBColumn;
    tbvColumn3: TcxGridDBColumn;
    tbvColumn4: TcxGridDBColumn;
    tbvColumn5: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxLabel5: TcxLabel;
    cxDBLabel6: TcxDBLabel;
    cxLabel6: TcxLabel;
    procedure edPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbvColumn1HeaderClick(Sender: TObject);
  private
    { Private declarations }
  public
    ST_FILTRO: string;
  end;

var
  frmPesqProd: TfrmPesqProd;
   coluna : TcxGridDBColumn;


implementation

{$R *.dfm}

uses uDM_PDV, uAutocomConsts, uDM, udm_ini;

procedure TfrmPesqProd.edPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   if key = 13 then
   begin
      DM.g_int_coringa := 101;
      btnSair.Click;
   end
   else
   if key = 27 then
   begin
      DM.g_int_coringa := 0;
      btnSair.Click;
   end;
end;

procedure TfrmPesqProd.edPesqPropertiesChange(Sender: TObject);
begin
    if (edPesq.Text <> C_ST_VAZIO)and(DS1.DataSet.Active) then
       DS1.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
end;

procedure TfrmPesqProd.FormCreate(Sender: TObject);
begin
  inherited;
   DM.g_int_coringa := 0;
   DS1.DataSet.Open;
   tbv.DataController.ChangeFieldName(0, 'id');
   tbv.DataController.ChangeFieldName(1, 'cod_gtin');
   tbv.DataController.ChangeFieldName(2, 'nome');
   tbv.DataController.ChangeFieldName(3, 'vrcusto_real');
  //ChangeFieldName(4) é definido no onshow
   tbv.Columns[3].Visible := DM_INI.ini.StoredValue['exibir_custo'];
end;

procedure TfrmPesqProd.FormShow(Sender: TObject);
var
   i: integer;
begin
   inherited;
   coluna := tbv.Columns[0];

   if ST_FILTRO <> C_ST_VAZIO then
   begin
      DM_PDV.TProd.Filter   := ST_FILTRO;
      DM_PDV.TProd.Filtered := True;
   end;

  if ST_FILTRO = 'medicam_vrms>0' then
      tbv.DataController.ChangeFieldName(4, 'precopfp')
   else
      tbv.DataController.ChangeFieldName(4, 'vrvenda_vista');

   for i := 0 to tbv.ColumnCount - 1 do
   if tbv.Columns[i].Tag = 1 then
      coluna := tbv.Columns[i];

  (DS1.DataSet as TFDQuery).IndexFieldNames := coluna.DataBinding.FieldName;

  lblPesq.Caption := C_190 + coluna.Caption;
  edpesq.SetFocus;
  bar1.Panels[1].Text := Format('%d registros', [DS1.DataSet.RecordCount]);
end;

procedure TfrmPesqProd.tbvColumn1HeaderClick(Sender: TObject);
var
   i: integer;
begin
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
