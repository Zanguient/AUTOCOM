program pti;

uses
  FastShareMem in '..\COMUM\FastShareMem.pas',
  Windows,
  Dialogs,
  SysUtils,
  Vcl.Forms,
  updv in 'updv.pas' {Form1},
  Extensos in '..\COMUM\Extensos.pas',
  uAutocomConsts in '..\COMUM\uAutocomConsts.pas',
  uFuncoes in '..\COMUM\uFuncoes.pas',
  uMD5Print in '..\COMUM\uMD5Print.pas',
  uFrm in '..\BASE\uFrm.pas' {frm},
  ufrmCad in '..\BASE\ufrmCad.pas' {frmCad},
  uTraducao in '..\COMUM\uTraducao.pas',
  udm_ini in '..\COMUM\udm_ini.pas' {DM_INI: TDataModule},
  dmSkins in '..\BASE\dmSkins.pas' {DMSkin: TDataModule},
  uSkinDLL in '..\BASE\uSkinDLL.pas',
  uMenu in 'uMenu.pas' {frmMenu},
  uDM in '..\GERENCIAL\uDM.pas' {DM: TDataModule},
  ucallMenuFiscal in 'ucallMenuFiscal.pas' {frmCall_MenuFiscal},
  uDMecf in 'uDMecf.pas' {DM_ECF: TDataModule},
  uMenuFisc in 'uMenuFisc.pas' {frmMenuFisc},
  uMsgECF in 'uMsgECF.pas' {frmMsg},
  uDM_PDV in 'uDM_PDV.pas' {DM_PDV: TDataModule},
  uFPag in 'uFPag.pas' {frmFPgto},
  uPesqCli in 'uPesqCli.pas' {frmPesqCli},
  uPesqProd in 'uPesqProd.pas' {frmPesqProd},
  uAbreDia in 'uAbreDia.pas' {frmAbreDia},
  uAnalise in 'uAnalise.pas' {frmDados},
  uCancelar in 'uCancelar.pas' {frmCancelar},
  uConcluir in 'uConcluir.pas' {frmConcluir},
  uclasse in '..\BASE\uclasse.pas',
  utefMsg in 'utefMsg.pas' {frmTEFMessage},
  uCliEvent in 'uCliEvent.pas' {frmCliEvent},
  uProdNotFound in 'uProdNotFound.pas' {frmProdNotFound},
  uTabRG in 'uTabRG.pas' {frmTabRelGer},
  uProgress in 'uProgress.pas' {frmprogress},
  uPV in 'uPV.pas' {frmpv},
  uSplash in '..\COMUM\uSplash.pas' {frmsplash},
  uDesconto in 'uDesconto.pas' {frmDesconto},
  uSerieD in 'uSerieD.pas' {frmSerieD},
  uDM_Sintegra in '..\COMUM\uDM_Sintegra.pas' {DM_Sintegra: TDataModule},
  uDM_SPED in '..\COMUM\uDM_SPED.pas' {DM_Sped: TDataModule},
  uMenuConv in '..\FARMA\uMenuConv.pas' {frmMenu_Convenio},
  upfp in '..\FARMA\upfp.pas' {frmpfp},
  uScanner in '..\FARMA\uScanner.pas' {frmScanner},
  uFarmaPop2 in '..\FARMA\uFarmaPop2.pas' {frmFarmaPop2},
  ServicoSolicitacaoWS1 in '..\FARMA\ServicoSolicitacaoWS1.pas',
  uPesqDATASUS in '..\FARMA\uPesqDATASUS.pas' {frmPesqDATASUS},
  uQtdMed in '..\FARMA\uQtdMed.pas' {frmQtdMed},
  utrn in '..\FARMA\utrn.pas' {frmtrn},
  uExtornoPFP in '..\FARMA\uExtornoPFP.pas' {frmExtorno},
  uVendedor in 'uVendedor.pas' {frmVendedor},
  uDMVLink in '..\FARMA\VIDALINK\uDMVLink.pas',
  uListaVL in '..\FARMA\VIDALINK\uListaVL.pas' {frmListaVL},
  uVLink in '..\FARMA\VIDALINK\uVLink.pas',
  uViews in '..\COMUM\uViews.pas',
  uCfg in '..\GERENCIAL\uCfg.pas' {frmCfg},
  uStatus in '..\NFE_new\uStatus.pas' {frmStatus},
  uRegras_Imposto in '..\GERENCIAL\OPERACIONAIS\uRegras_Imposto.pas' {frmRegras_Imposto};

{$R *.res}
{$R UAC.res}

  Var
    MutexHandle: THandle;
    s, s2: string;
Begin
   s  := ExtractFilePath(Application.ExeName);
   s2 := ExtractFileName(Application.ExeName);

  if (FileExists(s + C_ALTER))and(s2<>C_ALTER) then
  Begin
    Try
      ExecFileWaiting(s + C_ALTER, SW_MAXIMIZE);
    finally
       Application.Terminate;
    End;
  End
  Else
  Begin
     MutexHandle := CreateMutex(nil, True, PWideChar('AUTOCOM PDV'+ paramstr(1)));
     if MutexHandle <> 0 then
     begin
        if GetLastError = ERROR_ALREADY_EXISTS then
        begin
           MessageBox(0, 'Este programa já está em execução!','', mb_IconHand);
           CloseHandle(MutexHandle);
           Halt;
        end;
     end;
     Application.Initialize;
     Application.MainFormOnTaskbar := True;
     Application.Title := 'AUTOCOM PDV.';
     frmSplash :=TfrmSplash.Create(nil);
     frmSplash.Show;
     frmSplash.Update;
     Application.CreateForm(TDMSkin, DMSkin);
  Application.CreateForm(TfrmPDV, frmPDV);
  Application.CreateForm(TDM_Sintegra, DM_Sintegra);
  Application.CreateForm(TDM_Sped, DM_Sped);
  Application.CreateForm(TfrmCfg, frmCfg);
  Application.CreateForm(TfrmStatus, frmStatus);
  Application.CreateForm(TfrmRegras_Imposto, frmRegras_Imposto);
  Application.Run;
     CloseHandle(MutexHandle);
  End;
end.
