unit uAnaliseBalanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, FireDAC.Comp.Client, cxCheckComboBox,
  cxRadioGroup, dxSkinsCore, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter;

type
  TfrmCadAnaliseInvent = class(TfrmCad)
    tbvsessao: TcxGridDBColumn;
    tbvproduto: TcxGridDBColumn;
    tbvcod_gtin: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvvr_un: TcxGridDBColumn;
    tbvqtd_entr: TcxGridDBColumn;
    tbvqtd_sai: TcxGridDBColumn;
    tbvsaldo: TcxGridDBColumn;
    tbvvr_estoque: TcxGridDBColumn;
    tbvunid: TcxGridDBColumn;
    tbvcst_csosn: TcxGridDBColumn;
    tbvaliq_icms: TcxGridDBColumn;
    tbvncm: TcxGridDBColumn;
    procedure tbvidHeaderClick(Sender: TObject);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure tbvCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAnaliseInvent: TfrmCadAnaliseInvent;
  coluna : TcxGridDBColumn;
  data: TDate;

implementation

{$R *.dfm}

uses uDM, uFuncoes, uMain, uAutocomConsts, uBalanco;

procedure TfrmCadAnaliseInvent.edPesqPropertiesChange(Sender: TObject);
VAR
   s: string;
begin
   if Trim(edPesq.Text) = C_ST_VAZIO then //fecha o dataset
      DS1.DataSet.Close
   else
   if Length(trim(edPesq.Text))=1 then //verifica se pesquisa por tudo
   begin
      if trim(edPesq.Text) = C_CORINGA then
      begin
         s := BuscaTroca(C_SQL72, C_SOH, data_My(data));
         dm.QInventario.Open(s + coluna.DataBinding.FieldName);
      end
      else
      begin //monta o script sql
         s := BuscaTroca(C_SQL73, C_EOT, data_My(data));
         s := BuscaTroca(s, C_SOH, coluna.DataBinding.FieldName);
         s := BuscaTroca(s, C_ETX, edPesq.Text);
         dm.QInventario.Open(s);
      end;
   end
   else
   begin   //apenas faz o locate
      if DS1.DataSet.Active then
         DS1.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
   end;
end;

procedure TfrmCadAnaliseInvent.FormCreate(Sender: TObject);
begin
   inherited;
   pgCad.ActivePage  := TabPesq;
   TabCad.TabVisible := False;
   data := DM.QInventario.Params[0].AsDate;
end;

procedure TfrmCadAnaliseInvent.FormShow(Sender: TObject);
var
   i: integer;
begin
   inherited;
   coluna := tbv.Columns[0]; //define a coluna inicialmente

   for i := 0 to tbv.ColumnCount - 1 do //procura por coluna com tag = 1
   if tbv.Columns[i].Tag = 1 then
      coluna := tbv.Columns[i];

  lblPesq.Caption := C_190 + coluna.Caption; //configura o lblpesq
  edpesq.SetFocus;
  bar1.Panels[1].Text := 'INVENTARIO DE ' + DateToStr(data);
end;

procedure TfrmCadAnaliseInvent.tbvCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
//  inherited;
end;

procedure TfrmCadAnaliseInvent.tbvidHeaderClick(Sender: TObject);
var
   i: integer;
begin
//  ds1.DataSet.close; //fecha o dataset
  for i := 0 to tbv.ColumnCount - 1 do //zera o tag de todas as colunas
      tbv.Columns[i].Tag := 0;

  coluna := TcxGridDBColumn(Sender); //dedine a var coluna pela coluna selecionada
  TcxGridDBColumn(Sender).Tag := 1;//muda a tag
  (DS1.DataSet as TFDQuery).IndexFieldNames := coluna.DataBinding.FieldName;//indexa a coluna
  lblPesq.Caption := C_190 + coluna.Caption;//configura o lblpesq
  edpesq.SetFocus;
end;

end.

