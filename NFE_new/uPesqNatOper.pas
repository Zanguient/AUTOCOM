unit uPesqNatOper;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls;

type
  TfrmPesqNatOper = class(TfrmCad)
    tbvnome: TcxGridDBColumn;
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqNatOper: TfrmPesqNatOper;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes;

procedure TfrmPesqNatOper.edPesqPropertiesChange(Sender: TObject);
begin
   DM.QNatOper.Locate('nome', edPesq.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmPesqNatOper.FormShow(Sender: TObject);
begin
   inherited;
   TabPesq.TabVisible := True;
   pgCad.ActivePage := TabPesq;
end;

end.
