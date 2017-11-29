program TesteVL;

uses
  Forms,
  uTesteVL in 'uTesteVL.pas' {Form1},
  uVLink in 'uVLink.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
