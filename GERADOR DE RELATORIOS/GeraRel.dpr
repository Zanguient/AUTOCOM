program GeraRel;

uses
  Vcl.Forms,
  Windows,
  SysUtils,
  Extensos in '..\COMUM\Extensos.pas',
  FastShareMem in '..\COMUM\FastShareMem.pas',
  uAutocomConsts in '..\COMUM\uAutocomConsts.pas',
  uFuncoes in '..\COMUM\uFuncoes.pas',
  uMD5Print in '..\COMUM\uMD5Print.pas',
  uTraducao in '..\COMUM\uTraducao.pas',
  uDM in 'uDM.pas' {DM: TDataModule},
  uVisual in 'uVisual.pas' {frmVisual},
  uprn in 'uprn.pas' {frmprn},
  uGeraRel in 'uGeraRel.pas' {frmGeraRel},
  FuncFRR in 'FuncFRR.pas',
  uCompo_Adic in 'uCompo_Adic.pas',
  udm_ini in '..\COMUM\udm_ini.pas' {DM_INI: TDataModule},
  dmSkins in '..\BASE\dmSkins.pas' {DMSkin: TDataModule},
  uSkinDLL in '..\BASE\uSkinDLL.pas',
  uViews in '..\COMUM\uViews.pas';

{$R *.res}

  Var
    MutexHandle: THandle;

begin
   MutexHandle := CreateMutex(nil, True, Pchar('GeraRel'));

   if MutexHandle <> 0 then
   begin
      if GetLastError = ERROR_ALREADY_EXISTS then
      begin
        MessageBox(0, 'Este módulo já está em execução!','', mb_IconHand);
        CloseHandle(MutexHandle);
        Halt;
      end
   end;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMSkin, DMSkin);
  Application.CreateForm(TfrmGeraRel, frmGeraRel);
  Application.Run;
  CloseHandle(MutexHandle);
end.


