program skindll;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1},
  dmSkins in 'dmSkins.pas' {DMSkin},
  uSkinDLL in 'uSkinDLL.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMSkin, DMSkin);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
