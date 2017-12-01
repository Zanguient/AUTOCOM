program Atualizador;

uses
  Vcl.Forms,
  uFuncoes in '..\COMUM\uFuncoes.pas',
  uAutocomConsts in '..\COMUM\uAutocomConsts.pas',
  uAtu in '..\COMUM\uAtu.pas' {frmAtu},
  uMD5Print in '..\COMUM\uMD5Print.pas',
  uTraducao in '..\COMUM\uTraducao.pas',
  dmSkins in '..\BASE\dmSkins.pas' {DMSkin: TDataModule},
  uSkinDLL in '..\BASE\uSkinDLL.pas',
  uFrm in '..\BASE\uFrm.pas' {frm},
  uViews in '..\COMUM\uViews.pas',
  uStatus in '..\NFE_new\uStatus.pas' {frmStatus},
  ufrmCad in '..\BASE\ufrmCad.pas' {frmCad},
  udm_ini in '..\DATAMODULES\udm_ini.pas' {DM_INI: TDataModule},
  uDM in '..\DATAMODULES\uDM.pas' {DM: TDataModule},
  uDM_Conn in '..\DATAMODULES\uDM_Conn.pas' {DMConn: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMSkin, DMSkin);
  Application.CreateForm(TfrmAtu, frmAtu);
  Application.Run;
end.
