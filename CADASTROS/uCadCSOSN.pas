unit uCadCSOSN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinSpringTime,
  dxSkinTheAsphaltWorld, cxControls, dxSkinsdxStatusBarPainter,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, cxDBLabel,
  Vcl.StdCtrls, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, cxLabel,
  cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxMemo, cxDBEdit, cxMaskEdit, cxSpinEdit;

type
  TfrmCadCSOSN = class(TfrmCad)
    Label1: TLabel;
    EDID: TcxDBLabel;
    Label2: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    tbvid: TcxGridDBColumn;
    tbvcsosn: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCSOSN: TfrmCadCSOSN;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes;

procedure TfrmCadCSOSN.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QCSOSN.Open;
end;

end.
