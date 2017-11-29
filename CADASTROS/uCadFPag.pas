unit uCadFPag;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus,cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxCheckBox, cxDropDownEdit;

type
  TfrmCadFPag = class(TfrmCad)
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    tbvid: TcxGridDBColumn;
    tbvdescr: TcxGridDBColumn;
    tbvaprazo: TcxGridDBColumn;
    tbvtipo: TcxGridDBColumn;
    tbvindice_tef: TcxGridDBColumn;
    tbvuso: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFPag: TfrmCadFPag;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes;

procedure TfrmCadFPag.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QFPag.Open;
end;

procedure TfrmCadFPag.FormShow(Sender: TObject);
begin
   inherited;
   pgCad.ActivePage := TabPesq;
   TabCad.TabVisible := False;
end;

procedure TfrmCadFPag.TabPesqShow(Sender: TObject);
begin
//  inherited;
end;

end.
