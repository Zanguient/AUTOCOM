unit uPesqProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxDBLabel, FireDAC.Stan.Intf, uFuncoes,
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
    procedure edPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbvColumn1HeaderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqProd: TfrmPesqProd;
   coluna : TcxGridDBColumn;


implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uViews, udm_ini;

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
VAR
   s: string;
   i: integer;
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
               dm.QvwEstoque.Open(vwEstoque1 + WherevwEstoque3 + ' order by e.' + coluna.DataBinding.FieldName);
            end
            else
            begin
               s := vwEstoque1 + WherevwEstoque3 + ' and e.' + coluna.DataBinding.FieldName + ' like ' + Texto_Mysql(edPesq.Text + '%');
               log('nfe','pesq_prod', s);
               dm.QvwEstoque.Open(s);
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
         i :=  DM_INI.INI.StoredValue['tam_min_cod_item'];

         if Length(trim(edPesq.Text))=1 then
         begin
            if trim(edPesq.Text) = C_CORINGA then
               ShowMessage('Pesquisa por este campo requer informação específica.');
         end
         else//faz a busca a aprtir do menor tamanho do cod gtin configurado no aplicativo
         if Length(edPesq.Text)in [i, 8, 13,14] then
         begin
            s := vwEstoque1 + WherevwEstoque3 + ' and e.' +
                 coluna.DataBinding.FieldName + ' = ' + Texto_Mysql(edPesq.Text) +
                 ' order by e.' + coluna.DataBinding.FieldName;
            DM.QvwEstoque.Open(s);
         end;
      end;
   end;
//    if (edPesq.Text <> C_ST_VAZIO)and(DS1.DataSet.Active) then
  //     DS1.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
end;

procedure TfrmPesqProd.FormCreate(Sender: TObject);
begin
  inherited;
   DM.g_int_coringa := 0;
   tbv.DataController.ChangeFieldName(0, 'id');
   tbv.DataController.ChangeFieldName(1, 'cod_gtin');
   tbv.DataController.ChangeFieldName(2, 'nome');
   tbv.DataController.ChangeFieldName(3, 'vrcusto_real');
   tbv.DataController.ChangeFieldName(4, 'vrvenda_vista');
end;

procedure TfrmPesqProd.FormShow(Sender: TObject);
var
   i: integer;
begin
   inherited;
   coluna := tbv.Columns[0];

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
