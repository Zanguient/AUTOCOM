unit uCadUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxCheckBox, dxSkinsCore,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter;

type
  TfrmCadUnid = class(TfrmCad)
    tbvid: TcxGridDBColumn;
    tbvunidade: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvfracionavel: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUnid: TfrmCadUnid;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes;

procedure TfrmCadUnid.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QUnidade.Open;
end;

procedure TfrmCadUnid.FormShow(Sender: TObject);
begin
   inherited;
   pgCad.ActivePage := TabPesq;
   TabCad.TabVisible := False;
end;

procedure TfrmCadUnid.TabPesqShow(Sender: TObject);
begin
//  inherited;
end;

end.
