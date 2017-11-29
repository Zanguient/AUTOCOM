unit uPesqDest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, ACBrBase, ACBrEnterTab, rxPlacemnt, uDM_Serv,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit,
  cxLabel, DBCtrls, DBAccess, MyAccess, uAutocomConsts, uFuncoes, Easysize,
  dxSkinsCore;

type
  TfrmPesqDest = class(Tfrm)
    g1: TcxGrid;
    tbv: TcxGridDBTableView;
    g1Lvl1: TcxGridLevel;
    DSDest_NF: TMyDataSource;
    tbvcnpj: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvrazaosocial: TcxGridDBColumn;
    tbvcidade: TcxGridDBColumn;
    tbvuf: TcxGridDBColumn;
    lblPesq: TcxLabel;
    edPesq: TcxTextEdit;
    cxLabel1: TcxLabel;
    btnOK: TcxButton;
    procedure tbvcnpjHeaderClick(Sender: TObject);
    procedure edPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbvCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqDest: TfrmPesqDest;
  coluna : TcxGridDBColumn;

implementation

uses udmnfe, uMD5Print;


{$R *.dfm}

procedure TfrmPesqDest.edPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_DOWN then
   begin
      if DM_serv.QDest_NF.Active then
      if not DM_serv.QDest_NF.IsEmpty then
         DM_serv.QDest_NF.Next;
   end
   else
   if key = VK_UP then
   begin
      if DM_serv.QDest_NF.Active then
      if not DM_serv.QDest_NF.IsEmpty then
         DM_serv.QDest_NF.Prior;
   end;
end;

procedure TfrmPesqDest.edPesqPropertiesChange(Sender: TObject);
VAR
   s: string;
begin
   if Trim(edPesq.Text) = C_ST_VAZIO then
      DM_serv.QDest_NF.Close
   else
   if Length(trim(edPesq.Text))=1 then
   begin
      if trim(edPesq.Text) = C_CORINGA then
      begin
         DM_serv.Pesquisar(DM_serv.QDest_NF, C_SQL40 + coluna.DataBinding.FieldName);
      end
      else
      begin
         s := BuscaTroca(C_SQL39, C_SOH, coluna.DataBinding.FieldName);
         s := BuscaTroca(s, C_ETX, edPesq.Text);
         DM_serv.Pesquisar(DM_serv.QDest_NF, s);
      end;
   end
   else
   begin
      if DM_serv.QDest_NF.Active then
         DM_serv.QDest_NF.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
   end;
end;

procedure TfrmPesqDest.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmPesqDest.FormCreate(Sender: TObject);
 var
   i: integer;
begin
   inherited;
   //tbv.Styles.StyleSheet := DM_NFE.CSS.StyleSheets[3];
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

procedure TfrmPesqDest.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_F11 then
      btnok.Click;
end;

procedure TfrmPesqDest.FormShow(Sender: TObject);
var
   s: string;
begin
   inherited;
   DSDest_NF.DataSet.Close;

  if tag = 1 then
     s := 'tipo=''C'''
  else
    if tag = 2 then
     s := 'tipo=''F''';

  DSDest_NF.DataSet.Filter := s;
  DSDest_NF.DataSet.Filtered := tag > 0;

  lblPesq.Caption := C_190 + coluna.Caption;
  edpesq.SetFocus;
end;

procedure TfrmPesqDest.tbvCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   edPesq.SetFocus;
end;

procedure TfrmPesqDest.tbvcnpjHeaderClick(Sender: TObject);
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
