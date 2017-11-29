unit uOpcoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TfrmOpc = class(Tfrm)
    btnF2: TcxButton;
    btnF1: TcxButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpc: TfrmOpc;

implementation

{$R *.dfm}

procedure TfrmOpc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
     VK_F1: btnF1.Click;
     VK_F2: btnF2.Click;
     else
     inherited;
  end;

end;

end.
