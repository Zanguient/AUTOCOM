library aacXE10;

uses
  SysUtils,
  Classes,
  Forms,
  uAAC in 'uAAC.pas' {frmaac},
  uFuncoes in '..\COMUM\uFuncoes.pas',
  uMD5Print in '..\COMUM\uMD5Print.pas',
  uAutocomConsts in '..\COMUM\uAutocomConsts.pas',
  uViews in '..\COMUM\uViews.pas';

{$R *.res}

   procedure ShowAAC; stdcall;
   begin
      frmaac := Tfrmaac.Create(Application);
      frmaac.ShowModal;
      FreeAndNil(frmaac);
   end;

exports
   ShowAAC;

begin
end.
