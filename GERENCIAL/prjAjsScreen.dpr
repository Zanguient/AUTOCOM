program prjAjsScreen;

uses
  Vcl.Forms,
  frmAjusteScreen in 'frmAjusteScreen.pas' {frmAjs},
  uFuncoes in '..\COMUM\uFuncoes.pas',
  uMD5Print in '..\COMUM\uMD5Print.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmAjs, frmAjs);
  Application.Run;
end.
