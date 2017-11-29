unit uCadModeloNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxCheckBox;

type
  TfrmCadModeloNF = class(TfrmCad)
    tbvid: TcxGridDBColumn;
    tbvmodelo: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvcom_itens: TcxGridDBColumn;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadModeloNF: TfrmCadModeloNF;

implementation

{$R *.dfm}

uses uDM, uFuncoes;

procedure TfrmCadModeloNF.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QModNF.Open;
end;

procedure TfrmCadModeloNF.FormShow(Sender: TObject);
begin
   inherited;
   pgCad.ActivePage := TabPesq;
   TabCad.TabVisible := False;
end;

procedure TfrmCadModeloNF.TabPesqShow(Sender: TObject);
begin
//  inherited;
end;

end.
