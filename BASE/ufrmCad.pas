unit ufrmCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, Vcl.Menus, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData,
  dxSkinsdxStatusBarPainter, cxContainer, cxLabel, cxTextEdit, dxStatusBar,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC,
  Easysize, ACBrBase, ACBrEnterTab, dxSkinsCore, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinCaramel, dxBarBuiltInMenu;

type
  TfrmCad = class(Tfrm)
    pgCad: TcxPageControl;
    TabCad: TcxTabSheet;
    TabPesq: TcxTabSheet;
    dbNav: TcxDBNavigator;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    DS1: TDataSource;
    pnlPesq: TPanel;
    edPesq: TcxTextEdit;
    lblPesq: TcxLabel;
    pnlbasebotton: TPanel;
    Bar1: TdxStatusBar;
    btnReset: TcxButton;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle1: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnResetClick(Sender: TObject);
    procedure DS1StateChange(Sender: TObject);
    procedure pgCadPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure edPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TabCadShow(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
    procedure edPesqEnter(Sender: TObject);
    procedure edPesqExit(Sender: TObject);
    procedure tbvCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private

  public
    b_ComPesquisa: boolean;//usado no onchange de DS1, setado no onshow do form
  end;

var
  frmCad: TfrmCad;

implementation

{$R *.dfm}

uses uFuncoes, uMD5Print, uAutocomConsts;


procedure TfrmCad.DS1StateChange(Sender: TObject);
begin
  if Assigned(DS1.DataSet) then
  begin
     case DS1.DataSet.State of
        dsInactive: Bar1.Panels[0].Text := 'FECHADO';
        dsBrowse:   Bar1.Panels[0].Text := 'ABERTO';
        dsEdit:     Bar1.Panels[0].Text := 'MODO EDIÇÃO';
        dsInsert:   Bar1.Panels[0].Text := 'MODO INSERÇÃO';
        dsOpening:  Bar1.Panels[0].Text := 'ABRINDO...';
     end;

     btnSair.Enabled := not (DS1.DataSet.State in [dsEdit,dsInsert]);
     if TabCad.Visible then
        TabPesq.TabVisible := (b_ComPesquisa) and{ not (DS1.DataSet.State in[dsInsert,dsInsert]);//}btnSair.Enabled;
  end;
end;

procedure TfrmCad.edPesqEnter(Sender: TObject);
begin
   inherited;
   KeyPreview := False;
end;

procedure TfrmCad.edPesqExit(Sender: TObject);
begin
   inherited;
   KeyPreview := True;
end;

procedure TfrmCad.edPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmCad.FormShow(Sender: TObject);
var
   i: integer;
begin
  inherited;

  for i := 0 to ComponentCount - 1 do //ajusta a grid
  begin
      if (Components[i] is TcxGridDBTableView) then
      begin
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
      end;
  end;
end;

procedure TfrmCad.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin //grava as cfg da grid
   for i := 0 to ComponentCount - 1 do
   begin
       if (Components[i] is TcxGridDBTableView) then
          (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
   end;
   inherited;
end;

procedure TfrmCad.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  canclose := btnSair.Enabled;

  if not CanClose then
     ShowMessage('Conclua a operação.')
  else
     inherited;
end;

procedure TfrmCad.btnResetClick(Sender: TObject);
var
   i,j: integer;
begin //apaga as cfg da grid
   for i := 0 to ComponentCount - 1 do
   begin
       if (Components[i] is TcxGridDBTableView) then
       begin
          DeletaArqTipo(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
          for j := 0 to (Components[i] as TcxGridDBTableView).ColumnCount -1 do
          (Components[i] as TcxGridDBTableView).Columns[j].Width := 50;
       end;
   end;
end;

procedure TfrmCad.FormCreate(Sender: TObject);
begin
   inherited;
   TabPesq.TabVisible := true;
   b_ComPesquisa      := True;

   if TabCad.TabVisible then
      pgCad.ActivePage := TabCad;
end;

procedure TfrmCad.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   case key of
      VK_F5: if DS1.DataSet <> nil then Ds1.DataSet.Append;
      VK_F6: if DS1.DataSet <> nil then Ds1.DataSet.Delete;
      VK_F7: if DS1.DataSet <> nil then Ds1.DataSet.Edit;
      VK_F8: if (DS1.DataSet <> nil)and(Ds1.DataSet.State in [dsInsert, dsEdit]) then Ds1.DataSet.Post;
      VK_F9: if DS1.DataSet <> nil then Ds1.DataSet.Cancel;
   end;
end;

procedure TfrmCad.pgCadPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
  if (TabPesq.TabVisible) then
     AllowChange := btnSair.Enabled;

  if not AllowChange then
     ShowMessage(C_222);
end;

procedure TfrmCad.TabCadShow(Sender: TObject);
begin
   inherited;
   if not Ds1.DataSet.Active then
      DS1.DataSet.Active := True;

   b_ComPesquisa := TabPesq.TabVisible;
   bar1.Panels[1].Text := '';
end;

procedure TfrmCad.TabPesqShow(Sender: TObject);
begin
   inherited;
   if pnlPesq.Visible then
      bar1.Panels[1].Text := C_228;
end;

procedure TfrmCad.tbvCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin //tenta focar o edpesq
   if (pgCad.ActivePage = TabPesq)and
      (pnlPesq.Visible) then
   try
      edPesq.SetFocus
   finally
     ;
   end;
end;

end.
