unit uEstoque_perda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls, cxCurrencyEdit;

type
  TfrmEstoque_perda = class(TfrmCad)
    tbvcod_gtin: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvqtd: TcxGridDBColumn;
    tbvdata: TcxGridDBColumn;
    Panel1: TPanel;
    edcod: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edqtd: TcxCurrencyEdit;
    btnCadNCM: TcxButton;
    btnDel: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure tbvCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCadNCMClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoque_perda: TfrmEstoque_perda;

implementation

{$R *.dfm}

uses uDM, uFuncoes, uAutocomConsts;

procedure TfrmEstoque_perda.btnCadNCMClick(Sender: TObject);
begin
   if edqtd.Value <=0 then
      raise Exception.Create('Informe a quantidade.');


   DM.QEstoque.Open('select * from estoque where cod_gtin=' + Texto_Mysql(Trim(edcod.Text)));

   if DM.QEstoque.IsEmpty then
      raise Exception.Create('Produto não encontrado.');

   DM.QEstoque_perda.Append;
   DM.QEstoque_perdacProd.Value       := DM.QEstoque.FieldByName('id').AsInteger;
   DM.QEstoque_perdacod_gtin.AsString := Trim(edcod.Text);
   DM.QEstoque_perdanome.AsString     := DM.QEstoque.FieldByName('nome').AsString;
   DM.QEstoque_perdaqtd.Value         := edqtd.Value;
   DM.QEstoque_perdadata.Value        := Date;
   DM.QEstoque_perdabaixa.Value       := 'N';
   DM.QEstoque_perda.Post;
  { //baixa o estoque
   DM.QEstoque.Edit;
   DM.QEstoquequant.Value := DM.QEstoquequant.Value - edqtd.Value;
   DM.QEstoque.Post;}
   TabPesq.TabVisible := True;
   pgCad.ActivePage := TabPesq;
end;

procedure TfrmEstoque_perda.btnDelClick(Sender: TObject);
begin
   DM.QEstoque.Open('select * from estoque where id=' + DM.QEstoque_perdaid.AsString);

   if DM.QEstoque.IsEmpty then
      raise Exception.Create('Produto não encontrado.');

   //repoe o estoque
   DM.QEstoque.Edit;
   DM.QEstoquequant.Value := DM.QEstoquequant.Value + DM.QEstoque_perdaqtd.Value;
   DM.QEstoque.Post;
   DM.QEstoque_perda.Delete;
end;

procedure TfrmEstoque_perda.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'AUTOCOM GERENCIAL GESTÃO DE PERDAS' + C_117;
   DM.QEstoque_perda.Open;
end;

procedure TfrmEstoque_perda.tbvCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnDel.Enabled := not DM.QEstoque_perda.IsEmpty;
end;

end.
