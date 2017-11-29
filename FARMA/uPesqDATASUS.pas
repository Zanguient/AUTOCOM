unit uPesqDATASUS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrm, rxPlacemnt, Menus, cxLookAndFeelPainters, DB, StdCtrls, ExtCtrls,
  cxGraphics, cxLookAndFeels, cxControls, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, DBClient, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxButtons, ACBrBase, ACBrEnterTab, cxNavigator, Easysize;

type
  TfrmPesqDATASUS = class(Tfrm)
    Panel1: TPanel;
    btnClose: TcxButton;
    DS1: TDataSource;
    DS2: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    lblPags: TLabel;
    Label3: TLabel;
    lblPag: TLabel;
    lbltipo: TLabel;
    Label2: TLabel;
    lbltotal: TLabel;
    lblperiodo: TLabel;
    g1: TcxGrid;
    g1Level1: TcxGridLevel;
    g1Level2: TcxGridLevel;
    g1DBTableView1: TcxGridDBTableView;
    g1DBTableView2: TcxGridDBTableView;
    g1DBTableView1id: TcxGridDBColumn;
    g1DBTableView1coo: TcxGridDBColumn;
    g1DBTableView1codsolicit: TcxGridDBColumn;
    g1DBTableView1autoriz: TcxGridDBColumn;
    g1DBTableView1dt_solic: TcxGridDBColumn;
    g1DBTableView1dt_autor: TcxGridDBColumn;
    g1DBTableView1dt_receb: TcxGridDBColumn;
    g1DBTableView1cpf: TcxGridDBColumn;
    g1DBTableView1crm: TcxGridDBColumn;
    g1DBTableView1uf: TcxGridDBColumn;
    g1DBTableView2id: TcxGridDBColumn;
    g1DBTableView2ean: TcxGridDBColumn;
    g1DBTableView2apres: TcxGridDBColumn;
    g1DBTableView2status: TcxGridDBColumn;
    g1DBTableView2t1: TcxGridDBColumn;
    lblMsg: TLabel;
    T1: TClientDataSet;
    T1id: TAutoIncField;
    T1coo: TStringField;
    T1codsolicit: TStringField;
    T1autoriz: TStringField;
    T1dt_solic: TDateField;
    T1dt_autor: TDateField;
    T1dt_receb: TDateField;
    T1cpf: TStringField;
    T1crm: TStringField;
    T1uf: TStringField;
    T2: TClientDataSet;
    T2id: TAutoIncField;
    T2ean: TStringField;
    T2apres: TStringField;
    T2status: TStringField;
    T2t1: TIntegerField;
    procedure T2AfterInsert(DataSet: TDataSet);
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqDATASUS: TfrmPesqDATASUS;

implementation

{$R *.dfm}

procedure TfrmPesqDATASUS.btnCloseClick(Sender: TObject);
begin
   close;
end;

procedure TfrmPesqDATASUS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // inherited;
   T1.close;
   t2.close;
end;

procedure TfrmPesqDATASUS.FormShow(Sender: TObject);
begin
  inherited;
   T1.First;
   t2.First;
end;

procedure TfrmPesqDATASUS.T2AfterInsert(DataSet: TDataSet);
begin
   t2t1.Value := T1id.Value;
end;

end.
