unit uCadSpedTabelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer,
  cxTextEdit, cxMemo, cxDBEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  dxSkinsCore, dxSkinscxPCPainter, cxNavigator;

type
  TfrmCadSpedTabelas = class(Tfrm)
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    DSSpedTabela: TDataSource;
    tbvcst: TcxGridDBColumn;
    tbvtabela: TcxGridDBColumn;
    Panel3: TPanel;
    grd1: TcxGrid;
    tbv1: TcxGridDBTableView;
    tbv1cod: TcxGridDBColumn;
    tbv1pc_aliq_pis: TcxGridDBColumn;
    tbv1pc_aliq_cofins: TcxGridDBColumn;
    tbv1pc_cred_pis: TcxGridDBColumn;
    tbv1pc_cred_cofins: TcxGridDBColumn;
    tbv1unidade: TcxGridDBColumn;
    lv1: TcxGridLevel;
    cxDBMemo1: TcxDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadSpedTabelas: TfrmCadSpedTabelas;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes;

end.
