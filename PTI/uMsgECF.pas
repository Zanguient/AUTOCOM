unit uMsgECF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TfrmMsg = class(Tfrm)
    Timer1: TTimer;
    pnlMsg: TPanel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMsg: TfrmMsg;

implementation

{$R *.dfm}

uses updv;

procedure TfrmMsg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  inherited;

end;

procedure TfrmMsg.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TfrmMsg.FormShow(Sender: TObject);
begin
//  inherited;
   Timer1.Enabled := True;
   top := frmpdv.Top + 100;
end;

procedure TfrmMsg.Timer1Timer(Sender: TObject);
begin
   frmMsg.Tag := frmMsg.Tag + 1;
   if frmMsg.Tag >= 3 then
   begin
      timer1.Enabled := False;
      Close;
   end;
end;

end.
