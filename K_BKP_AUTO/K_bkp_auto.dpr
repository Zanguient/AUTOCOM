program K_bkp_auto;

uses
  Forms,
  uBkp in 'uBkp.pas' {Form1},
  uMD5Print in '..\COMUM\uMD5Print.pas',
  uFuncoes in '..\COMUM\uFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Módulo Auto Backp';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
