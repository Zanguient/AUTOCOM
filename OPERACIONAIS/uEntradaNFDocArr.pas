unit uEntradaNFDocArr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Data.DB, cxControls, cxContainer, cxEdit,
  cxNavigator, cxDBNavigator, cxDropDownEdit, cxImageComboBox, cxDBEdit, cxMaskEdit, cxCalendar, cxCurrencyEdit,
  cxTextEdit;

type
  TfrmDocArr = class(Tfrm)
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dbNav: TcxDBNavigator;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDocArr: TfrmDocArr;

implementation

{$R *.dfm}

uses uDM_NF_Entr;

procedure TfrmDocArr.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
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
