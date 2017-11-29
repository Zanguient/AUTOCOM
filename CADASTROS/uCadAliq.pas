unit uCadAliq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxCheckBox;

type
  TfrmCadAliq = class(TfrmCad)
    Panel4: TPanel;
    cxLabel1: TcxLabel;
    tbvid: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvcod_if: TcxGridDBColumn;
    tbvicms: TcxGridDBColumn;
    tbvusa: TcxGridDBColumn;
    tbvcod_prod: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAliq: TfrmCadAliq;

implementation

{$R *.dfm}

uses uDM, uFuncoes;

procedure TfrmCadAliq.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QAliq.Open;
end;

procedure TfrmCadAliq.FormShow(Sender: TObject);
begin
  inherited;   //mostra somente o tabpesq
   pgCad.ActivePage := TabPesq;
   TabCad.TabVisible := False;
end;

procedure TfrmCadAliq.TabPesqShow(Sender: TObject);
begin
  inherited;  //nao roda a rotina no form pai
end;

end.
