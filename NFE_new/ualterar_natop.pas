unit ualterar_natop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, ACBrBase, ACBrEnterTab, rxPlacemnt, Easysize,
  dxSkinsCore;

type
  TfrmAlterar_NatOp = class(Tfrm)
    Memo1: TMemo;
    cxButton1: TcxButton;
    procedure btnEscClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Arq: string;
  end;

var
  frmAlterar_NatOp: TfrmAlterar_NatOp;

implementation

{$R *.dfm}

procedure TfrmAlterar_NatOp.btnEscClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmAlterar_NatOp.cxButton1Click(Sender: TObject);
begin
   Memo1.Lines.SaveToFile(Arq);
end;

procedure TfrmAlterar_NatOp.FormShow(Sender: TObject);
begin
   Memo1.Lines.LoadFromFile(Arq);
end;

end.
