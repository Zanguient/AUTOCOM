program TesteLogoban;

uses
  Vcl.Forms,
  uTesteLogoban in 'uTesteLogoban.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
