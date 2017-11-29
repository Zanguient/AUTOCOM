unit uCadSessao;

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
  TfrmCadSessao = class(TfrmCad)
    tbvid: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvusoint: TcxGridDBColumn;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    tbvnatur_receita: TcxGridDBColumn;
    tbvbalanca: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadSessao: TfrmCadSessao;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, udm_ini;

procedure TfrmCadSessao.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QSessao.Open;
end;

procedure TfrmCadSessao.FormShow(Sender: TObject);
begin
   inherited;
   pgCad.ActivePage := TabPesq;
   TabCad.TabVisible := False;
   tbvbalanca.Visible := dm_ini.ini.StoredValue['prefix_cod_balanca'] > 0;
end;

procedure TfrmCadSessao.TabPesqShow(Sender: TObject);
begin
//  inherited;
end;

end.
