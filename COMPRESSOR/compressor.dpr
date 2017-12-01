program compressor;

uses
  Vcl.Forms,
  uCompressor in 'uCompressor.pas' {Form1},
  uFuncoes in '..\COMUM\uFuncoes.pas',
  uAutocomConsts in '..\COMUM\uAutocomConsts.pas',
  uMD5Print in '..\COMUM\uMD5Print.pas',
  uViews in '..\COMUM\uViews.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
