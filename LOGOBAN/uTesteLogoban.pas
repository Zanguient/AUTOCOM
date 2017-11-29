unit uTesteLogoban;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
   MyHandle :THandle;
   Bmp : TBitmap;
begin
   {nome da dll construida acima}
   MyHandle := LoadLibrary('LIB\32\logoban.DLL');
   Bmp := TBitmap.Create;
   {Bitmap1 é o nome do bitmap criado no ficheiro image.res}
   Bmp.Handle := LoadBitmap(MyHandle, 'CL756');
   //bmp.SaveToFile();
   {Carrega o Bitmap1 para o glyph do SpeedButton1}
   //image1.Picture.Bitmap.Handle := LoadBitmap(MyHandle,'CL001');
   //Canvas.Draw(0,0,Bmp); {Desenha o bitmap no canvas da form}
   Image1.picture.bitmap := Bmp; {Carrega o bitmap para o componente Timage}
   Bmp.Free;
end;

end.
