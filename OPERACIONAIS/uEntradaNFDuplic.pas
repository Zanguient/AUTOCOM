unit uEntradaNFDuplic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Data.DB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit,
  cxNavigator, cxDBNavigator, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxCurrencyEdit, cxTextEdit;

type
  TfrmDuplic = class(Tfrm)
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBCalcEdit24: TcxDBCurrencyEdit;
    cxDBCalcEdit23: TcxDBCurrencyEdit;
    cxDBCalcEdit25: TcxDBCurrencyEdit;
    btnGravar: TcxButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBCurrencyEdit1: TcxDBDateEdit;
    dbNav: TcxDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cxDBCalcEdit25Enter(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDuplic: TfrmDuplic;

implementation

{$R *.dfm}

uses uDM_NF_Entr;

procedure TfrmDuplic.btnGravarClick(Sender: TObject);
begin
   if DM_NF_Entr.cdNFvLiq.Value <0 then
      raise Exception.Create('O valor está incorreto.');

   Panel1.Enabled := DM_NF_Entr.cdNFvLiq.Value > 0;
end;

procedure TfrmDuplic.cxDBCalcEdit25Enter(Sender: TObject);
begin
   DM_NF_Entr.cdNFvLiq.Value :=  DM_NF_Entr.cdNFvOrig.Value - DM_NF_Entr.cdNFvDesc.Value;
end;

procedure TfrmDuplic.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F5: if dbNav.DataSource.DataSet <> nil then dbNav.DataSource.DataSet.Append;
      VK_F6: if dbNav.DataSource.DataSet <> nil then dbNav.DataSource.DataSet.Delete;
      VK_F7: if dbNav.DataSource.DataSet <> nil then dbNav.DataSource.DataSet.Edit;
      VK_F8: if (dbNav.DataSource.DataSet <> nil)and(dbNav.DataSource.DataSet.State in [dsInsert, dsEdit]) then dbNav.DataSource.DataSet.Post;
      VK_F9: if dbNav.DataSource.DataSet <> nil then dbNav.DataSource.DataSet.Cancel;
   end;
end;

procedure TfrmDuplic.FormShow(Sender: TObject);
begin
   inherited;
   Panel1.Enabled := DM_NF_Entr.cdNFvLiq.Value > 0;
end;

end.
