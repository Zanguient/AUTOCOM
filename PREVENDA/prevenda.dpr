program prevenda;

uses
  Vcl.Forms,
  uSkinDLL in '..\BASE\uSkinDLL.pas',
  ufrmCad in '..\BASE\ufrmCad.pas' {frmCad},
  uFrm in '..\BASE\uFrm.pas' {frm},
  uclasse in '..\BASE\uclasse.pas',
  dmSkins in '..\BASE\dmSkins.pas' {DMSkin: TDataModule},
  uTraducao in '..\COMUM\uTraducao.pas',
  uMD5Print in '..\COMUM\uMD5Print.pas',
  uFuncoes in '..\COMUM\uFuncoes.pas',
  udm_ini in '..\COMUM\udm_ini.pas' {DM_INI: TDataModule},
  uAutocomConsts in '..\COMUM\uAutocomConsts.pas',
  FastShareMem in '..\COMUM\FastShareMem.pas',
  Extensos in '..\COMUM\Extensos.pas',
  uDM in '..\GERENCIAL\uDM.pas' {DM: TDataModule},
  uCfg in '..\GERENCIAL\uCfg.pas' {frmCfg},
  upv in 'upv.pas' {frmPV},
  uPesqCli in 'uPesqCli.pas' {frmPesqCli},
  uPesqProd in 'uPesqProd.pas' {frmPesqProd},
  uItem in 'uItem.pas' {frmItem},
  uCancelar in 'uCancelar.pas' {frmCancelar},
  uConcluir in 'uConcluir.pas' {frmConcluir},
  uEmpresa in '..\COMUM\uEmpresa.pas' {frmEmpresa},
  uScanner in '..\FARMA\uScanner.pas' {frmScanner},
  uMenuConv in 'uMenuConv.pas' {frmMenu_Convenio},
  uOpcoes in 'uOpcoes.pas' {frmOpc},
  uDM_PDV in '..\PTI\uDM_PDV.pas' {DM_PDV: TDataModule},
  uProgress in '..\PTI\uProgress.pas' {frmprogress},
  uVendedor in '..\PTI\uVendedor.pas' {frmVendedor},
  uParcelas in 'uParcelas.pas' {frmParcelas},
  uViews in '..\COMUM\uViews.pas',
  uStatus in '..\NFE_new\uStatus.pas' {frmStatus},
  uRegras_Imposto in '..\GERENCIAL\OPERACIONAIS\uRegras_Imposto.pas' {frmRegras_Imposto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPV, frmPV);
  Application.CreateForm(Tfrm, frm);
  Application.CreateForm(TDMSkin, DMSkin);
  Application.CreateForm(TDM_PDV, DM_PDV);
  Application.CreateForm(Tfrmprogress, frmprogress);
  Application.CreateForm(TfrmVendedor, frmVendedor);
  Application.CreateForm(TfrmParcelas, frmParcelas);
  Application.CreateForm(TfrmStatus, frmStatus);
  Application.CreateForm(TfrmStatus, frmStatus);
  Application.CreateForm(TfrmRegras_Imposto, frmRegras_Imposto);
  Application.Run;
end.