unit uEstoque_Inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, cxClasses, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls, cxCheckBox,
  cxCurrencyEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uDM_INI,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmCad_Estoque_Inicial = class(TfrmCad)
    tbvcod_gtin: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvquant: TcxGridDBColumn;
    edNewQtd: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    cbSomar: TcxCheckBox;
    btn_InserirQtd: TcxButton;
    procedure btn_InserirQtdClick(Sender: TObject);
    procedure tbvcod_gtinHeaderClick(Sender: TObject);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure edNewQtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbSomarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure Gravar;
  public
    { Public declarations }
  end;

var
  frmCad_Estoque_Inicial: TfrmCad_Estoque_Inicial;
  coluna : TcxGridDBColumn;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, uViews;

procedure TfrmCad_Estoque_Inicial.btn_InserirQtdClick(Sender: TObject);
begin
   if edNewQtd.Value = 0 then
      exit;

   Gravar;
   edNewQtd.Clear;
   edNewQtd.SetFocus;
end;

procedure TfrmCad_Estoque_Inicial.cbSomarClick(Sender: TObject);
begin
   edNewQtd.SetFocus;
end;

procedure TfrmCad_Estoque_Inicial.edNewQtdKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if ds1.DataSet.Active then
   if not ds1.DataSet.IsEmpty then
   begin
      if Key= VK_UP then
         DS1.DataSet.Prior
      else
      if key = VK_DOWN then
         DS1.DataSet.Next
      else
      if key = VK_PRIOR  then
         DS1.DataSet.MoveBy(-20)
      else
      if key = VK_NEXT then
         DS1.DataSet.MoveBy(20);
   end;
end;

procedure TfrmCad_Estoque_Inicial.edPesqPropertiesChange(Sender: TObject);
VAR
   s: string;
begin
   if Trim(edPesq.Text) = C_ST_VAZIO then
      DS1.DataSet.Close
   else
   begin
      if coluna.DataBinding.FieldName <> 'cod_gtin' then//se nao é gtin
      begin
         if Length(trim(edPesq.Text))=1 then
         begin
            if trim(edPesq.Text) = C_CORINGA then
            begin
               dm.QEstoque_Inicial.Open(C_SQL85b + ' order by ' + coluna.DataBinding.FieldName);
            end
            else
            begin
               s := BuscaTroca(C_SQL85c, C_SOH, coluna.DataBinding.FieldName);
               s := BuscaTroca(s, C_ETX, edPesq.Text);
               dm.QEstoque_Inicial.Open(s);
            end;
         end
         else
         begin
            if DS1.DataSet.Active then
               DS1.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
         end;
      end
      else//se é gtin
      begin
         if Length(trim(edPesq.Text))=1 then
         begin
            if trim(edPesq.Text) = C_CORINGA then
               ShowMessage('Pesquisa por este campo requer informação específica.');
         end
         else//faz a busca a aprtir do menor tamanho do cod gtin configurado no aplicativo
         if Length(edPesq.Text) >= DM_INI.INI.StoredValue['tam_min_cod_item'] then
         begin
            s := BuscaTroca(C_SQL85a, C_ETX, edPesq.Text);
            DM.QEstoque_Inicial.Open(s);
         end;
      end;
   end;
end;

procedure TfrmCad_Estoque_Inicial.FormShow(Sender: TObject);
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

procedure TfrmCad_Estoque_Inicial.Gravar;
var
   n: currency;
begin
   if cbSomar.Checked then
      n := DM.QEstoque_Inicialquant.Value + edNewQtd.Value
   else
      n := edNewQtd.Value;

   if DM.QEstoque_Inicialiid.Value > 0 then
   begin
      DM.ExecSQL('update estoque_inicial set quant = ' + Texto_Mysql(n) + ' where id = ' + Texto_Mysql(DM.QEstoque_Inicialiid.Value));
   end
   else
   begin
    //  if n < 0 then
      //   raise Exception.Create('A quantidade informada não pode ser menor do que zero.');

      DM.ExecSQL('insert into estoque_inicial set estoque = ' + Texto_Mysql(DM.QEstoque_Inicialid.Value) + ', quant = ' + Texto_Mysql(n));
   end;

   DM.QEstoque_Inicial.Refresh;
end;


procedure TfrmCad_Estoque_Inicial.tbvcod_gtinHeaderClick(Sender: TObject);
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
