program Gerencial;

uses
  Vcl.Forms,
  Windows,
  SysUtils,
  uMain in 'uMain.pas' {frmMain},
  uCfg in 'uCfg.pas' {frmCfg},
  Extensos in '..\COMUM\Extensos.pas',
  FastShareMem in '..\COMUM\FastShareMem.pas',
  uAutocomConsts in '..\COMUM\uAutocomConsts.pas',
  uFuncoes in '..\COMUM\uFuncoes.pas',
  uMD5Print in '..\COMUM\uMD5Print.pas',
  uFrm in '..\BASE\uFrm.pas' {frm},
  ufrmCad in '..\BASE\ufrmCad.pas' {frmCad},
  uCadEmpresa in '..\CADASTROS\uCadEmpresa.pas' {frmCadEmpresa},
  uPesqCidade in 'uPesqCidade.pas' {frmPesqCidade},
  uCadConvenio in '..\CADASTROS\uCadConvenio.pas' {frmCadConvenio},
  uCadCli in '..\CADASTROS\uCadCli.pas' {frmCadCli},
  uTraducao in '..\COMUM\uTraducao.pas',
  uCadOperador in '..\CADASTROS\uCadOperador.pas' {frmCadOperador},
  uCadAliq in '..\CADASTROS\uCadAliq.pas' {frmCadAliq},
  uCadCST in '..\CADASTROS\uCadCST.pas' {frmCadCST},
  uCadCFOP in '..\CADASTROS\uCadCFOP.pas' {frmCadCFOP},
  uCadForn in '..\CADASTROS\uCadForn.pas' {frmCadForn},
  uCadFPag in '..\CADASTROS\uCadFPag.pas' {frmCadFPag},
  uCadSessao in '..\CADASTROS\uCadSessao.pas' {frmCadSessao},
  uCadUnidade in '..\CADASTROS\uCadUnidade.pas' {frmCadUnid},
  uCadVendedor in '..\CADASTROS\uCadVendedor.pas' {frmCadVendedor},
  uEntradaNF in '..\OPERACIONAIS\uEntradaNF.pas' {frmEntradaNF},
  uCadModeloNF in '..\CADASTROS\uCadModeloNF.pas' {frmCadModeloNF},
  uCadEstoque in '..\CADASTROS\uCadEstoque.pas' {frmCadEstoque},
  uPesqNCM in 'uPesqNCM.pas' {frmPesqNCM},
  uBalanco in '..\OPERACIONAIS\uBalanco.pas' {frmBalanco},
  uInventarioExportacao in '..\BASE\uInventarioExportacao.pas',
  uAnaliseBalanco in '..\OPERACIONAIS\uAnaliseBalanco.pas' {frmCadAnaliseInvent},
  uCadSpedTabelas in '..\CADASTROS\uCadSpedTabelas.pas' {frmCadSpedTabelas},
  uDetProd in '..\OPERACIONAIS\uDetProd.pas' {frmDetProd},
  uAssCadProdNF in '..\OPERACIONAIS\uAssCadProdNF.pas' {frmAss},
  uPesqNF in '..\OPERACIONAIS\uPesqNF.pas' {frmPesqNF},
  uListaEmitentes in '..\OPERACIONAIS\uListaEmitentes.pas' {frmListaEmit},
  uDadosItemNF in '..\OPERACIONAIS\uDadosItemNF.pas' {frmdadosItemNF},
  uReplica in '..\OPERACIONAIS\uReplica.pas' {frmReplica},
  uConverteEmitInform in '..\OPERACIONAIS\uConverteEmitInform.pas' {frmConverteEmitInform},
  uPrecificacao in '..\OPERACIONAIS\uPrecificacao.pas' {frmPrecificacao},
  uCustoOper in '..\OPERACIONAIS\uCustoOper.pas' {frmCustoOper},
  dmSkins in '..\BASE\dmSkins.pas' {DMSkin: TDataModule},
  uSkinDLL in '..\BASE\uSkinDLL.pas',
  uFinan in '..\FINANCEIRO\uFinan.pas' {frmFinan},
  uCadBan in '..\FINANCEIRO\uCadBan.pas' {frmCadban},
  uBoletoLote in '..\FINANCEIRO\uBoletoLote.pas' {frmBolLote},
  uBoletoAvulso in '..\FINANCEIRO\uBoletoAvulso.pas' {frmBoletoAvulso},
  uEnvioBol in '..\FINANCEIRO\uEnvioBol.pas' {frmEnvioBol},
  uEmpresa in '..\COMUM\uEmpresa.pas' {frmEmpresa},
  uGestaoReceber in '..\FINANCEIRO\uGestaoReceber.pas' {frmGestaoReceber},
  uParcelas in '..\FINANCEIRO\uParcelas.pas' {frmParcelas},
  uParcelamento in '..\FINANCEIRO\uParcelamento.pas' {frmParcelamento},
  uMoviBanc in '..\FINANCEIRO\uMoviBanc.pas' {frmMovBanc},
  uCadMovim in '..\FINANCEIRO\uCadMovim.pas' {frmCadMovi},
  uCadPlanoContas in '..\FINANCEIRO\uCadPlanoContas.pas' {frmCadPlanoContas},
  uAssoc in '..\FINANCEIRO\uAssoc.pas' {frmAssoc},
  uCadPlanoContaAssoc in '..\FINANCEIRO\uCadPlanoContaAssoc.pas' {frmCadPlanoContasAssoc},
  uTeste in 'uTeste.pas' {frmteste},
  uCadInfCompEstoque in '..\CADASTROS\uCadInfCompEstoque.pas' {frmCadInfCompEstoque},
  uCadOper_CRT in '..\CADASTROS\uCadOper_CRT.pas' {frmCadOper_CRT},
  uPesqNatOper in '..\NFE_new\uPesqNatOper.pas' {frmPesqNatOper},
  uEntradaNFTotais in '..\OPERACIONAIS\uEntradaNFTotais.pas' {frmEntradaNF_Totais},
  uEntradaNFTransp in '..\OPERACIONAIS\uEntradaNFTransp.pas' {frmNFTransp},
  uEntradaNFVolumes in '..\OPERACIONAIS\uEntradaNFVolumes.pas' {frmVolumes},
  uEntradaNFDuplic in '..\OPERACIONAIS\uEntradaNFDuplic.pas' {frmDuplic},
  uEntradaNFDocArr in '..\OPERACIONAIS\uEntradaNFDocArr.pas' {frmDocArr},
  uDetNF_Entr in 'uDetNF_Entr.pas' {frmDetNF_Entr},
  uCadAssCfopEmissao in '..\OPERACIONAIS\uCadAssCfopEmissao.pas' {frmCadAssCfopEmissao},
  ucfop_devol in '..\OPERACIONAIS\ucfop_devol.pas' {frmAss_CFOP_Devol},
  uAnaliseVendas in '..\OPERACIONAIS\uAnaliseVendas.pas' {frmAnaliseVendas},
  uAnaliseVendas_itens in '..\OPERACIONAIS\uAnaliseVendas_itens.pas' {frmAnaliseVendas_itens},
  uSintegra in '..\FISCAL\uSintegra.pas' {frmSintegra},
  uProgress in '..\PTI\uProgress.pas' {frmprogress},
  uSpedFiscal in '..\FISCAL\uSpedFiscal.pas' {frmSpedFiscal},
  uLancar_apagar in '..\FINANCEIRO\uLancar_apagar.pas' {frmLancar_apagar},
  uGestaoAPagar in '..\FINANCEIRO\uGestaoAPagar.pas' {frmGestaoAPagar},
  ubaixa_cp in '..\FINANCEIRO\ubaixa_cp.pas' {frmbaixa_cp},
  uLanca_chq_terc in '..\FINANCEIRO\uLanca_chq_terc.pas' {frmLanca_chq_terc},
  uChqTroca in '..\FINANCEIRO\uChqTroca.pas' {frmChqTroca},
  uchq_dev in '..\FINANCEIRO\uchq_dev.pas' {frmChqDev},
  Uchq_dep in '..\FINANCEIRO\Uchq_dep.pas' {frmchq_dep},
  uGestaoPlanoContas in '..\FINANCEIRO\uGestaoPlanoContas.pas' {frmGestaoPlanoContas},
  uEstoque_perda in '..\OPERACIONAIS\uEstoque_perda.pas' {frmEstoque_perda},
  uQuita in '..\FINANCEIRO\uQuita.pas' {frmQuita},
  uBalancaCom in '..\OPERACIONAIS\uBalancaCom.pas',
  uIntegraBalanca in '..\OPERACIONAIS\uIntegraBalanca.pas' {frmIntBal},
  uSpedpis in '..\FISCAL\uSpedpis.pas' {frmSpedPIS},
  uRegras_Imposto in '..\OPERACIONAIS\uRegras_Imposto.pas' {frmRegras_Imposto},
  uAtuIPBTax in '..\FISCAL\uAtuIPBTax.pas' {frmAtuIPBTax},
  uCadBal in '..\CADASTROS\uCadBal.pas' {frmCadBal},
  uAtuFarma in '..\FARMA\uAtuFarma.pas' {frmAtu_Farma},
  uManut in '..\NFE_new\uManut.pas' {frmManu},
  udmnfe in '..\NFE_new\udmnfe.pas' {DM_NFE: TDataModule},
  uValidacao in '..\NFE_new\uValidacao.pas' {frmValidacao},
  uStatus in '..\NFE_new\uStatus.pas' {frmStatus},
  uEstoque_Inicial in '..\CADASTROS\uEstoque_Inicial.pas' {frmCad_Estoque_Inicial},
  uViews in '..\COMUM\uViews.pas',
  udm_ini in '..\DATAMODULES\udm_ini.pas' {DM_INI: TDataModule},
  uDM in '..\DATAMODULES\uDM.pas' {DM: TDataModule},
  uDM_NF_Entr in '..\DATAMODULES\uDM_NF_Entr.pas' {DM_NF_Entr: TDataModule},
  uDM_Conn in '..\DATAMODULES\uDM_Conn.pas' {DMConn: TDataModule},
  uDM_Sintegra in '..\DATAMODULES\uDM_Sintegra.pas' {DM_Sintegra: TDataModule},
  uDM_SPED in '..\DATAMODULES\uDM_SPED.pas' {DM_Sped: TDataModule},
  uDM_SPED_PIS in '..\DATAMODULES\uDM_SPED_PIS.pas' {DM_SPED_PIS: TDataModule},
  uDMecf in '..\DATAMODULES\uDMecf.pas' {DM_ECF: TDataModule};

{$R *.res}

  Var
    MutexHandle: THandle;

begin
   MutexHandle := CreateMutex(nil, True, Pchar('Gerencialx'));

   if MutexHandle <> 0 then
   begin
      if GetLastError = ERROR_ALREADY_EXISTS then
      begin
        MessageBox(0, 'O Autocom Gerencial já está em execução!','', mb_IconHand);
        CloseHandle(MutexHandle);
        Halt;
      end
   end;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'AUTOCOM GERENCIAL';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM_ECF, DM_ECF);
  Application.Run;
  CloseHandle(MutexHandle);
end.


