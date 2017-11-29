unit uEntradaNFTransp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, cxDBEdit, cxNavigator, cxDBNavigator, Data.DB;

type
  TfrmNFTransp = class(Tfrm)
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    Label34: TcxLabel;
    Label35: TcxLabel;
    Label36: TcxLabel;
    Label37: TcxLabel;
    Label38: TcxLabel;
    Label39: TcxLabel;
    dbNav: TcxDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNFTransp: TfrmNFTransp;

implementation

{$R *.dfm}

uses uDM_NF_Entr;

end.
