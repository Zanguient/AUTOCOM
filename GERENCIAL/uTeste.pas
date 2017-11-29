unit uTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Data.DB,
  Vcl.Grids, Vcl.DBGrids, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  Vcl.DBCtrls, cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxDBLookupComboBox, cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  Tfrmteste = class(Tfrm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBMemo1: TDBMemo;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvid: TcxGridDBColumn;
    tbvcst: TcxGridDBColumn;
    tbvicms_pc: TcxGridDBColumn;
    tbvreduzir: TcxGridDBColumn;
    tbvtexto: TcxGridDBColumn;
    lv: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmteste: Tfrmteste;

implementation

{$R *.dfm}

uses uDM;

procedure Tfrmteste.FormCreate(Sender: TObject);
begin
  inherited;
DM.QInfo_compl.Open;
end;

end.
