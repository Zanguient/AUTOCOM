unit utefMsg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TfrmTEFMessage = class(Tfrm)
    pMensagemOperador: TPanel;
    pMensagemCliente: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTEFMessage: TfrmTEFMessage;

implementation

{$R *.dfm}

procedure TfrmTEFMessage.FormShow(Sender: TObject);
begin
  inherited;

  if hint = EmptyStr then
  BEGIN
     if pMensagemOperador.Visible then
        self.hint := 'MENSAGEM OPERADOR'
      else
        self.hint := 'MENSAGEM CLIENTE';
  END;

  self.Caption := self.Caption + ' ' + self.Hint;
end;

end.
