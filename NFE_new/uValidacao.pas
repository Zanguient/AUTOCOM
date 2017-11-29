unit uValidacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, ACBrBase, ACBrEnterTab, rxPlacemnt, Easysize,
  dxSkinsCore;

type
  TfrmValidacao = class(Tfrm)
    ListaErros: TListBox;
    lblerro: TLabel;
    procedure btnEscClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmValidacao: TfrmValidacao;

implementation

{$R *.dfm}

procedure TfrmValidacao.btnEscClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmValidacao.FormShow(Sender: TObject);
begin
   inherited;
   lblerro.Caption := 'TOTAL DE ERROS: ' + IntToStr(ListaErros.Count);
end;

end.
