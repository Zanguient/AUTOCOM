unit uCadBal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel, cxGridCustomView, cxGrid,
  cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls, cxDBLookupComboBox,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBEdit;

type
  TfrmCadBal = class(TfrmCad)
    tbvid: TcxGridDBColumn;
    tbvmarca: TcxGridDBColumn;
    tbvserie: TcxGridDBColumn;
    tbvsessao: TcxGridDBColumn;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBLookupComboBox;
    DSSessao: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadBal: TfrmCadBal;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadBal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   inherited;
   DM.QSessao.Open('select * from sessao');
   DM.QSessao.Close;
end;

procedure TfrmCadBal.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QSessao.Open('select * from sessao where balanca = "S" order by nome');
   DM.QBalanca.Open('select * from balanca order by marca, serie');
end;

end.
