unit uPesqCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmPesqCli = class(TfrmCad)
    tbvid: TcxGridDBColumn;
    tbvcnpj: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvrazaosocial: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvidHeaderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqCli: TfrmPesqCli;
   coluna : TcxGridDBColumn;


implementation

{$R *.dfm}

uses uAutocomConsts, uDM;

procedure TfrmPesqCli.edPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   if key = 13 then
      btnSair.Click;
end;

procedure TfrmPesqCli.edPesqPropertiesChange(Sender: TObject);
begin
    if (edPesq.Text <> C_ST_VAZIO)and(DS1.DataSet.Active) then
       DS1.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
end;

procedure TfrmPesqCli.FormCreate(Sender: TObject);
begin
   inherited;
   DS1.DataSet.Open;
end;

procedure TfrmPesqCli.FormShow(Sender: TObject);
var
   i: integer;
begin
   inherited;
   coluna := tbv.Columns[0];

   for i := 0 to tbv.ColumnCount - 1 do
   if tbv.Columns[i].Tag = 1 then
      coluna := tbv.Columns[i];

  (DS1.DataSet as TFDQuery).IndexFieldNames := coluna.DataBinding.FieldName;

  lblPesq.Caption     := C_190 + coluna.Caption;
  bar1.Panels[1].Text := Format('%d registros', [DS1.DataSet.RecordCount]);
  edpesq.SetFocus;
end;

procedure TfrmPesqCli.tbvidHeaderClick(Sender: TObject);
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
