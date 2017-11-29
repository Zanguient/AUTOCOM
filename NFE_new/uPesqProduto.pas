unit uPesqProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, DBAccess, MyAccess, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLabel, cxTextEdit, StdCtrls, cxButtons, ExtCtrls, ACBrBase,
  ACBrEnterTab, rxPlacemnt, uFuncoes, Easysize;

type
  TfrmPesqProduto = class(Tfrm)
    g1: TcxGrid;
    tbv: TcxGridDBTableView;
    g1Lvl1: TcxGridLevel;
    DSProduto: TMyDataSource;
    tbvid: TcxGridDBColumn;
    tbvgtin: TcxGridDBColumn;
    tbvcod_fabr: TcxGridDBColumn;
    tbvxprod: TcxGridDBColumn;
    tbvvr_custo_nf: TcxGridDBColumn;
    tbvvrunit: TcxGridDBColumn;
    tbvvrunitpz: TcxGridDBColumn;
    lblPesq: TcxLabel;
    edPesq: TcxTextEdit;
    cxLabel1: TcxLabel;
    btnCadastro: TcxButton;
    btnok: TcxButton;
    procedure btnCadastroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure tbvidHeaderClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqProduto: TfrmPesqProduto;
  coluna : TcxGridDBColumn;


implementation

uses uAutocomConsts, uDM_Serv, uCadProduto, udmnfe, uMD5Print;

{$R *.dfm}

procedure TfrmPesqProduto.btnCadastroClick(Sender: TObject);
begin
   frmCadProduto := TfrmCadProduto.Create(Self);
   frmCadProduto.ShowModal;
   FreeAndNil(frmCadProduto);
end;

procedure TfrmPesqProduto.edPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  s: string;
begin
   if key = VK_DOWN then
   begin
      if DSProduto.DataSet.Active then
      if not DSProduto.DataSet.IsEmpty then
         DSProduto.DataSet.Next;
   end
   else
   if key = VK_UP then
   begin
      if DSProduto.DataSet.Active then
      if not DSProduto.DataSet.IsEmpty then
         DSProduto.DataSet.Prior;
   end
   else
   if key = VK_RETURN then
   begin
      if(coluna.DataBinding.FieldName = 'gtin')and(Trim(edPesq.Text) <> C_ST_VAZIO) then
      begin
         s := BuscaTroca(C_SQL42, C_SOH, edPesq.Text);
         DM_serv.Pesquisar(DM_serv.QProduto, s);
         DM_serv.Pesquisar(DM_serv.QProduto, s);
      end;
      edPesq.SetFocus;
   end;
end;

procedure TfrmPesqProduto.edPesqPropertiesChange(Sender: TObject);
var
   s: string;
begin
   if Trim(edPesq.Text) = C_ST_VAZIO then
      DSProduto.DataSet.Close
   else
   begin
      if coluna.DataBinding.FieldName <> 'gtin' then
      begin
         if Length(trim(edPesq.Text))=1 then
         begin
            if trim(edPesq.Text) = C_CORINGA then
            begin
               DM_serv.Pesquisar(DM_serv.QProduto, C_SQL43 + coluna.DataBinding.FieldName);
            end
            else
            begin
               s := BuscaTroca(C_SQL41, C_SOH, coluna.DataBinding.FieldName);
               s := BuscaTroca(s, C_ETX, edPesq.Text);
               DM_serv.Pesquisar(DM_serv.QProduto, s);
            end;
         end
         else
         begin
            if DSProduto.DataSet.Active then
               DSProduto.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
         end;
      end;
   end;
end;

procedure TfrmPesqProduto.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin
  inherited;
  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
  end;
end;

procedure TfrmPesqProduto.FormCreate(Sender: TObject);
 var
   i: integer;
begin
   inherited;
  // tbv.Styles.StyleSheet := DM_NFE.CSS.StyleSheets[3];
   coluna := tbv.Columns[0];
   edPesq.Tag := edPesq.Width;

   for i := 0 to tbv.ColumnCount - 1 do
   if tbv.Columns[i].Tag = 1 then
      coluna := tbv.Columns[i];

  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
  end;
end;

procedure TfrmPesqProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if key = VK_F2 then
      btnCadastro.Click
   else
   if key = VK_F11 then
      btnok.Click;
end;

procedure TfrmPesqProduto.FormShow(Sender: TObject);
begin
  inherited;
  lblPesq.Caption := C_190 + coluna.Caption;
  edpesq.SetFocus;
end;

procedure TfrmPesqProduto.tbvCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   edPesq.SetFocus;
end;

procedure TfrmPesqProduto.tbvidHeaderClick(Sender: TObject);
var
   i: integer;
begin
  DM_serv.QDest_NF.close;

  for i := 0 to tbv.ColumnCount - 1 do
      tbv.Columns[i].Tag := 0;

  coluna := TcxGridDBColumn(Sender);
  TcxGridDBColumn(Sender).Tag := 1;
  lblPesq.Caption := C_190 + coluna.Caption;
  edpesq.SetFocus;
end;

end.
