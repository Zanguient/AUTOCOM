unit uCustoOper;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxControls, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter,
  dxSkinsCore, dxSkinCaramel, dxBarBuiltInMenu;

type
  TfrmCustoOper = class(TfrmCad)
    tbvid: TcxGridDBColumn;
    tbvdata: TcxGridDBColumn;
    tbvreceita: TcxGridDBColumn;
    tbvdespesa: TcxGridDBColumn;
    tbvpercent: TcxGridDBColumn;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmCustoOper: TfrmCustoOper;

implementation

{$R *.dfm}

uses uDM, udm_ini, uFuncoes;



procedure TfrmCustoOper.FormCreate(Sender: TObject);
begin
  inherited;
  pgCad.ActivePage := TabPesq;
  TabCad.TabVisible := False;
  DM.QCusto_Oper.Open;
end;

procedure TfrmCustoOper.FormShow(Sender: TObject);
begin
   inherited;
   panel4.Caption := 'Custo Operacional m�dio: '  + FloatToStrF(DM.Calcular_Custo_Oper, ffNumber, 15, 2) + ' %';
end;

procedure TfrmCustoOper.Panel4Click(Sender: TObject);
begin
   if not (DM.QCusto_Oper.State in [dsInsert, dsEdit]) then
      panel4.Caption := 'Custo Operacional m�dio: '  + FloatToStrF(DM.Calcular_Custo_Oper, ffNumber, 15, 2) + ' %';
end;

end.

