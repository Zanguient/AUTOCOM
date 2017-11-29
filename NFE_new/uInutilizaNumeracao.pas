unit uInutilizaNumeracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm, Easysize, ACBrBase, ACBrEnterTab,
  RxPlacemnt, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.ComCtrls,
  dxSkinsCore, Vcl.ExtCtrls;

type
  TfrmInut = class(Tfrm)
    edJustificativa: TEdit;
    Label1: TLabel;
    edModelo: TCurrencyEdit;
    Label2: TLabel;
    edAno: TCurrencyEdit;
    Label3: TLabel;
    edSerie: TCurrencyEdit;
    Label4: TLabel;
    EdIni: TCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    edFim: TCurrencyEdit;
    bar1: TStatusBar;
    btnmailcancelar: TcxButton;
    btnok: TcxButton;
    procedure edFimChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInut: TfrmInut;

implementation

{$R *.dfm}

procedure TfrmInut.edFimChange(Sender: TObject);
var
   b: boolean;
begin
   b := edFim.Value < EdIni.Value;
   bar1.SimpleText := '';

   if b then
      bar1.SimpleText := ('Valores incorretos')
   else
   begin
      b := abs(edFim.Value - EdIni.Value) > 1000;
      if b then
         bar1.SimpleText := ('O limite é de 1000 na faixa de numeração.');
   end;

   btnok.Enabled := not b;
end;

end.
