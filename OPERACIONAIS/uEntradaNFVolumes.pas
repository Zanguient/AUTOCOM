unit uEntradaNFVolumes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Data.DB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, cxDBEdit, cxNavigator, cxDBNavigator;

type
  TfrmVolumes = class(Tfrm)
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    Label34: TcxLabel;
    Label35: TcxLabel;
    Label36: TcxLabel;
    Label37: TcxLabel;
    Label38: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    dbNav: TcxDBNavigator;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVolumes: TfrmVolumes;

implementation

{$R *.dfm}

uses uDM_NF_Entr;

procedure TfrmVolumes.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F5: if dbNav.DataSource.DataSet <> nil then dbNav.DataSource.DataSet.Append;
      VK_F6: if dbNav.DataSource.DataSet <> nil then dbNav.DataSource.DataSet.Delete;
      VK_F7: if dbNav.DataSource.DataSet <> nil then dbNav.DataSource.DataSet.Edit;
      VK_F8: if (dbNav.DataSource.DataSet <> nil)and(dbNav.DataSource.DataSet.State in [dsInsert, dsEdit]) then dbNav.DataSource.DataSet.Post;
      VK_F9: if dbNav.DataSource.DataSet <> nil then dbNav.DataSource.DataSet.Cancel;
   end;
end;

end.
