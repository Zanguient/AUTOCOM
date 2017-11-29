unit uTabRG;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxDropDownEdit;

type
  TfrmTabRelGer = class(TfrmCad)
    tbvid: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvcodigo: TcxGridDBColumn;
    tbvnumecf: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTabRelGer: TfrmTabRelGer;

implementation

{$R *.dfm}

uses uDM_PDV;

end.
