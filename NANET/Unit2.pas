unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, wininet;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    RG1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
  private
    function NaNet(endereco: string): boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
   nanet(edit1.Text);
end;

function TForm2.NaNet(endereco: string): boolean;
var lnTickCount: cardinal; url: string; I: INTEGER;
begin
   Application.ProcessMessages;

   case RG1.itemindex of
     0: url := 'http://service.datasus.org';
     1: url := 'http://google.com';
     2: url := 'http://google.com.br';
     3: url := 'http://registro.br/';
     4: url := edit1.Text;
   end;

   lnTickCount := GetTickCount;
   i           := 0;
   result      := false;

   repeat
      Application.ProcessMessages;
      if i = 0 then
      begin
         i := 1;
         Button1.Caption := 'Conectando: ' + IntToStr(lnTickCount);
         Application.ProcessMessages;
         result :=  InternetCheckConnection(PWideChar(url), 1, 0);
      end;
   until
   ((GetTickCount - lnTickCount) >= 5000)or(result);

   if Result then
      Button1.Caption := 'OK'
   else
      Button1.Caption := 'Falha';
end;

end.
