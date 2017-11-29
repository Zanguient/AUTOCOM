unit uListaVL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData,
  cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons,
  Vcl.DBCtrls, cxNavigator;

type
  TfrmListaVL = class(TForm)
    Panel1: TPanel;
    btnf11: TcxButton;
    cxButton1: TcxButton;
    g1: TcxGrid;
    tbv: TcxGridDBTableView;
    g1Lvl1: TcxGridLevel;
    tbvItem: TcxGridDBColumn;
    tbvEAN: TcxGridDBColumn;
    tbvQtd: TcxGridDBColumn;
    tbvvrVenda: TcxGridDBColumn;
    tbvprocessado: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TDBText;
    cxDBTextEdit2: TDBText;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaVL: TfrmListaVL;

implementation

{$R *.dfm}

uses uDMVLink;

procedure TfrmListaVL.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if DMVLink.TVLItens.State in [dsEdit] then
      DMVLink.TVLItens.Post;

   Canclose :=  DMVLink.TVLItens.State in [dsbrowse];
end;

end.
