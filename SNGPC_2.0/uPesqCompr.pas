unit uPesqCompr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxLabel, cxTextEdit, cxNavigator;

type
  TfrmPesqCompr = class(TForm)
    Panel1: TPanel;
    btnFechar: TcxButton;
    grdPerda: TcxGrid;
    tbv: TcxGridDBTableView;
    lvPerda: TcxGridLevel;
    edPesq: TcxTextEdit;
    lblPesqMovi: TcxLabel;
    tbvcomprador: TcxGridDBColumn;
    tbvdoc: TcxGridDBColumn;
    cxButton1: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edPesqPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqCompr: TfrmPesqCompr;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes;

procedure TfrmPesqCompr.edPesqPropertiesChange(Sender: TObject);
begin
   dm.QPesqCompr.Locate('comprador', edPesq.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmPesqCompr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
   Release;
end;

procedure TfrmPesqCompr.FormShow(Sender: TObject);
begin
   DM.QPesqCompr.Open;
end;

end.
