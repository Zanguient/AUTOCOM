unit uTesteVL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uVLink, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  VidaLink: TVidaLink;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
   VidaLink := TVidaLink.Create('C:\VL');
   VidaLink.TempoResp   := 2;//segundos
   VidaLink.NumECF      := 1;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   VidaLink.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
   i: Integer;
begin
  if VidaLink.HostAtivo then
  begin
     ShowMessage('OK = Ativo');
  end;

  VidaLink.Consultar;
  if true then
  begin
     ShowMessage(VidaLink.Consulta.NomeConveniado);
     for i := 0 to VidaLink.Itens.Count - 1 do
     Memo1.Lines.add(VidaLink.Itens[i].EAN);
  end;

  //fechamento da venda
  VidaLink.NumCOO := 6587;
  VidaLink.Itens.Clear;
  VidaLink.ItemVendido('123456789012', 1);
  VidaLink.ItemVendido('123456789013', 1);
  VidaLink.ItemVendido('123456789014', 2);
  VidaLink.ItemVendido('123456789015', 3);
  VidaLink.Venda;
  VidaLink.GetComprovante;
end;

end.
