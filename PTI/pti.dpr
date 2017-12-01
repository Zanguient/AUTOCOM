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
  dmSkins in '..\BASE\dmSkins.pas' {DMSkin: TDataModule},
  uSkinDLL in '..\BASE\uSkinDLL.pas',
  uMenu in 'uMenu.pas' {frmMenu},
  ucallMenuFiscal in 'ucallMenuFiscal.pas' {frmCall_MenuFiscal},
  uMenuFisc in 'uMenuFisc.pas' {frmMenuFisc},
  uMsgECF in 'uMsgECF.pas' {frmMsg},
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
  uRegras_Imposto in '..\OPERACIONAIS\uRegras_Imposto.pas' {frmRegras_Imposto},
  udm_ini in '..\DATAMODULES\udm_ini.pas' {DM_INI: TDataModule},
  uDM in '..\DATAMODULES\uDM.pas' {DM: TDataModule},
  uDM_Conn in '..\DATAMODULES\uDM_Conn.pas' {DMConn: TDataModule},
  uDM_PDV in '..\DATAMODULES\uDM_PDV.pas' {DM_PDV: TDataModule},
  uDMecf in '..\DATAMODULES\uDMecf.pas' {DM_ECF: TDataModule},
  udmnfe in '..\DATAMODULES\udmnfe.pas' {DM_NFE: TDataModule},
  uValidacao in '..\NFE_new\uValidacao.pas' {frmValidacao},
  uDM_Sintegra in '..\DATAMODULES\uDM_Sintegra.pas' {DM_Sintegra: TDataModule},
  uDM_SPED in '..\DATAMODULES\uDM_SPED.pas' {DM_Sped: TDataModule},
  uDMAux in '..\DATAMODULES\uDMAux.pas' {DMAux: TDataModule};

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
     Application.CreateForm(TfrmPDV, frmPDV);
  Application.CreateForm(TDMConn, DMConn);
  Application.CreateForm(TDM_PDV, DM_PDV);
  Application.CreateForm(TDM_ECF, DM_ECF);
  Application.CreateForm(TDM_NFE, DM_NFE);
  Application.CreateForm(TfrmValidacao, frmValidacao);
  Application.CreateForm(TDM_Sintegra, DM_Sintegra);
  Application.CreateForm(TDM_Sped, DM_Sped);
  Application.CreateForm(TDMAux, DMAux);
  Application.Run;
     CloseHandle(MutexHandle);
  End;
end.
