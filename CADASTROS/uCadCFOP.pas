unit uCadCFOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, FireDAC.Comp.Client, cxCheckBox, cxMemo,
  cxDBEdit, cxMaskEdit, cxSpinEdit, cxDBLabel, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxControls;

type
  TfrmCadCFOP = class(TfrmCad)
    EDID: TcxDBLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBTextEdit1: TcxDBMemo;
    cxDBTextEdit2: TcxDBMemo;
    tbvid: TcxGridDBColumn;
    tbvcfop: TcxGridDBColumn;
    tbvdescricao: TcxGridDBColumn;
    tbvdescr_completa: TcxGridDBColumn;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBSpinEdit5: TcxDBLookupComboBox;
    tbvcst_pis: TcxGridDBColumn;
    procedure tbvcfopHeaderClick(Sender: TObject);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCFOP: TfrmCadCFOP;
  coluna : TcxGridDBColumn;

implementation

{$R *.dfm}

uses uDM, uFuncoes, uAutocomConsts;

procedure TfrmCadCFOP.edPesqPropertiesChange(Sender: TObject);
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
         dm.Qcfop.Open(C_SQL61 + coluna.DataBinding.FieldName);
      end
      else
      begin //monta o script sql
         s := BuscaTroca(C_SQL62, C_SOH, coluna.DataBinding.FieldName);
         s := BuscaTroca(s, C_ETX, edPesq.Text);
         DM.Qcfop.Open(s);
      end;
   end
   else
   begin   //apenas faz o locate
      if DS1.DataSet.Active then
         DS1.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
   end;
end;

procedure TfrmCadCFOP.FormCreate(Sender: TObject);
begin
   inherited;
   DM.Qcfop.Open;
end;

procedure TfrmCadCFOP.TabPesqShow(Sender: TObject);
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
end;

procedure TfrmCadCFOP.tbvcfopHeaderClick(Sender: TObject);
var
   i: integer;
begin
  ds1.DataSet.close; //fecha o dataset

  for i := 0 to tbv.ColumnCount - 1 do //zera o tag de todas as colunas
      tbv.Columns[i].Tag := 0;

  coluna := TcxGridDBColumn(Sender); //fedine a var coluna pela coluna selecionada
  TcxGridDBColumn(Sender).Tag := 1;//muda a tag
  (DS1.DataSet as TFDQuery).IndexFieldNames := coluna.DataBinding.FieldName;//indexa a coluna
  lblPesq.Caption := C_190 + coluna.Caption;//configura o lblpesq
  edpesq.SetFocus;
end;

end.
