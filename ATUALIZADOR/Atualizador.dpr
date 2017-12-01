program Atualizador;

uses
  Vcl.Forms,
  uFuncoes in '..\COMUM\uFuncoes.pas',
  uAutocomConsts in '..\COMUM\uAutocomConsts.pas',
  uDM in '..\GERENCIAL\uDM.pas' {DM: TDataModule},
  uAtu in '..\COMUM\uAtu.pas' {frmAtu},
  uMD5Print in '..\COMUM\uMD5Print.pas',
  uTraducao in '..\COMUM\uTraducao.pas',
  dmSkins in '..\BASE\dmSkins.pas' {DMSkin: TDataModule},
  uSkinDLL in '..\BASE\uSkinDLL.pas',
  uFrm in '..\BASE\uFrm.pas' {frm},
  uViews in '..\COMUM\uViews.pas',
  uStatus in '..\NFE_new\uStatus.pas' {frmStatus},
  uRegras_Imposto in '..\GERENCIAL\OPERACIONAIS\uRegras_Imposto.pas',
  ufrmCad in '..\BASE\ufrmCad.pas' {frmCad},
  udm_ini in '..\DATAMODULES\udm_ini.pas' {DM_INI: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMSkin, DMSkin);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmAtu, frmAtu);
  Application.CreateForm(TDM_INI, DM_INI);
  Application.Run;
end.
