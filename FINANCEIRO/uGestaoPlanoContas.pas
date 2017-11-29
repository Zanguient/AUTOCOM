unit uGestaoPlanoContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls, cxDBLabel, cxCurrencyEdit,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TfrmGestaoPlanoContas = class(TfrmCad)
    Q1: TFDQuery;
    Q1id: TFDAutoIncField;
    Q1cod: TStringField;
    Q1seq: TIntegerField;
    Q1data: TDateField;
    Q1dt_pg: TDateField;
    Q1documento: TStringField;
    Q1descricao: TStringField;
    Q1valor: TFloatField;
    Q1id_movi: TIntegerField;
    tbvid: TcxGridDBColumn;
    tbvcod: TcxGridDBColumn;
    tbvseq: TcxGridDBColumn;
    tbvdata: TcxGridDBColumn;
    tbvdt_pg: TcxGridDBColumn;
    tbvdocumento: TcxGridDBColumn;
    tbvdescricao: TcxGridDBColumn;
    tbvvalor: TcxGridDBColumn;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label6: TLabel;
    cxDBCalcEdit1: TcxDBCurrencyEdit;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    Q2: TFDQuery;
    DS2: TDataSource;
    Q2id: TFDAutoIncField;
    Q2tipo: TStringField;
    Q2plano: TStringField;
    Q2nivel: TIntegerField;
    Q2conta: TStringField;
    Q2descricao: TStringField;
    Q2abrev: TStringField;
    cxButton1: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure Q1AfterClose(DataSet: TDataSet);
    procedure Q1AfterOpen(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure tbvcodHeaderClick(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
    procedure Q1BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGestaoPlanoContas: TfrmGestaoPlanoContas;
  coluna : TcxGridDBColumn;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uCadPlanoContas, uFuncoes;

procedure TfrmGestaoPlanoContas.cxButton1Click(Sender: TObject);
begin
   if Q1.State in [dsInsert, dsEdit] then
   begin
      ShowMessage('Você deverá informar o plano de conta que será associado a esta operação.' );

      frmCadPlanoContas := TfrmCadPlanoContas.Create(Self);
      frmCadPlanoContas.btnAss.Tag := 100;
      frmCadPlanoContas.ShowModal;

      if DM.g_str_coringa <> C_ST_VAZIO then
      begin
         Q1cod.AsString := DM.g_str_coringa;
      end;
   end;
end;

procedure TfrmGestaoPlanoContas.edPesqPropertiesChange(Sender: TObject);
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
         Q1.Open('select * from finan_centro_custo_movi order by ' + coluna.DataBinding.FieldName);
      end
      else
      begin
         s := BuscaTroca(C_SQL53, C_SOH, coluna.DataBinding.FieldName);
         s := BuscaTroca(s, C_ETX, edPesq.Text);
         Q1.Open(s);
      end;
   end
   else
   begin
      if DS1.DataSet.Active then
         DS1.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
   end;
end;

procedure TfrmGestaoPlanoContas.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'AUTOCOM GERENCIAL GESTÃO DO PLANO DE CONTAS' + C_117;
   Q1.Open('select * from finan_centro_custo_movi order by id desc limit 1');
end;

procedure TfrmGestaoPlanoContas.Q1AfterClose(DataSet: TDataSet);
begin
   q2.Close;
end;

procedure TfrmGestaoPlanoContas.Q1AfterOpen(DataSet: TDataSet);
begin
   Q2.Open;
end;

procedure TfrmGestaoPlanoContas.Q1BeforePost(DataSet: TDataSet);
begin
   if ((Q2tipo.Value='D')and(Q1valor.Value>0))or((Q2tipo.Value='C')and(Q1valor.Value<0)) then
      Q1valor.Value := Q1valor.Value * -1;
end;

procedure TfrmGestaoPlanoContas.TabPesqShow(Sender: TObject);
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

procedure TfrmGestaoPlanoContas.tbvcodHeaderClick(Sender: TObject);
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
