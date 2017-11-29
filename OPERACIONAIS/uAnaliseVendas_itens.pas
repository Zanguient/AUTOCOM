unit uAnaliseVendas_itens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls;

type
  TfrmAnaliseVendas_itens = class(TfrmCad)
    tbvid: TcxGridDBColumn;
    tbvnItem: TcxGridDBColumn;
    tbvcEAN: TcxGridDBColumn;
    tbvxProd: TcxGridDBColumn;
    tbvuCom: TcxGridDBColumn;
    tbvqCom: TcxGridDBColumn;
    tbvvUnCom: TcxGridDBColumn;
    tbvvProd: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnaliseVendas_itens: TfrmAnaliseVendas_itens;

implementation

{$R *.dfm}

uses uAnaliseVendas;

end.
