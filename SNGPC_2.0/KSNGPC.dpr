program KSNGPC;


uses
  Vcl.Forms,
  dmSkins in '..\BASE\dmSkins.pas' {DMSkin: TDataModule},
  uSkinDLL in '..\BASE\uSkinDLL.pas',
  udm_ini in '..\COMUM\udm_ini.pas',
  uDM in 'uDM.pas' {DM: TDataModule},
  uMain in 'uMain.pas' {frmMain},
  uFuncoes in '..\COMUM\uFuncoes.pas',
  uMD5Print in '..\COMUM\uMD5Print.pas',
  uShadow in 'uShadow.pas' {frmshadow},
  uSNGPC_ws in 'uSNGPC_ws.pas' {frm_ws},
  uScanner in 'uScanner.pas' {frmScanner},
  uAutocomConsts in '..\COMUM\uAutocomConsts.pas',
  uTraducao in '..\COMUM\uTraducao.pas',
  uPesqCompr in 'uPesqCompr.pas' {frmPesqCompr},
  uSNGPCConsts in '..\COMUM\uSNGPCConsts.pas',
  sngpc_p in 'sngpc_p.pas',
  uViews in '..\COMUM\uViews.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'K-SNGPC 2.0';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrmshadow, frmshadow);
  Application.CreateForm(TDMSkin, DMSkin);
  Application.CreateForm(TDM_INI, DM_INI);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
