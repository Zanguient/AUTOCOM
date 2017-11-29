unit uPesqNCM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, FireDAC.Comp.Client, dxSkinsCore,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, dxSkinCaramel, dxBarBuiltInMenu;

type
  TfrmPesqNCM = class(TfrmCad)
    tbvcod_nbm: TcxGridDBColumn;
    tbvdescr_nbm: TcxGridDBColumn;
    tbvcod_ncm: TcxGridDBColumn;
    tbvdescr_ncm: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
    procedure tbvcod_nbmHeaderClick(Sender: TObject);
    procedure edPesqPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqNCM: TfrmPesqNCM;
  coluna : TcxGridDBColumn;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes;

procedure TfrmPesqNCM.edPesqPropertiesChange(Sender: TObject);
var
   s: string;
begin
   if Trim(edPesq.Text) = C_ST_VAZIO then
      DS1.DataSet.Close
   else
   begin
      if coluna.Index in[0,2] then
      begin
         s := BuscaTroca(C_SQL71, C_SOH, coluna.DataBinding.FieldName);
         s := BuscaTroca(s, C_ETX, edPesq.Text);
         DM.QNCM.Open(s);
      end
      else
      begin
         s := BuscaTroca(C_SQL70, C_SOH, coluna.DataBinding.FieldName);
         s := BuscaTroca(s, C_ETX, edPesq.Text);
         DM.Qncm.Open(s);
      end;
   end;
end;

procedure TfrmPesqNCM.FormShow(Sender: TObject);
begin
   inherited;
   pgCad.ActivePage  := TabPesq;
   TabCad.TabVisible := False;
   edPesq.SetFocus;
end;

procedure TfrmPesqNCM.TabPesqShow(Sender: TObject);
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

procedure TfrmPesqNCM.tbvcod_nbmHeaderClick(Sender: TObject);
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
