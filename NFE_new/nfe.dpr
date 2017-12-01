program nfe;

uses
  Forms,
  uMain in 'uMain.pas' {frmMain},
  uValidacao in 'uValidacao.pas' {frmValidacao},
  uStatus in 'uStatus.pas' {frmStatus},
  uCadFemissao in 'uCadFemissao.pas' {frmCadFemissao},
  uAutocomConsts in '..\COMUM\uAutocomConsts.pas',
  uFuncoes in '..\COMUM\uFuncoes.pas',
  uMD5Print in '..\COMUM\uMD5Print.pas',
  ucce in 'ucce.pas' {frmcce},
  uInutilizaNumeracao in 'uInutilizaNumeracao.pas' {frmInut},
  uListaNF in 'uListaNF.pas' {frmListaNF},
  uManut in 'uManut.pas' {frmManu},
  uXML in 'uXML.pas',
  Vcl.Themes,
  Vcl.Styles,
  dmSkins in '..\BASE\dmSkins.pas' {DMSkin: TDataModule},
  uSkinDLL in '..\BASE\uSkinDLL.pas',
  uFrm in '..\BASE\uFrm.pas' {frm},
  uCfg in '..\GERENCIAL\uCfg.pas' {frmCfg},
  uCadCli in '..\CADASTROS\uCadCli.pas',
  uCadEmpresa in '..\CADASTROS\uCadEmpresa.pas',
  uCadEstoque in '..\CADASTROS\uCadEstoque.pas',
  uCadForn in '..\CADASTROS\uCadForn.pas',
  ufrmCad in '..\BASE\ufrmCad.pas' {frmCad},
  uTraducao in '..\COMUM\uTraducao.pas',
  uCadSpedTabelas in '..\CADASTROS\uCadSpedTabelas.pas' {frmCadSpedTabelas},
  uReplica in '..\OPERACIONAIS\uReplica.pas' {frmReplica},
  uPesqCli in 'uPesqCli.pas' {frmPesqCli},
  uPesqProd in 'uPesqProd.pas' {frmPesqProd},
  uPesqNatOper in 'uPesqNatOper.pas' {frmPesqNatOper},
  uRateio in 'uRateio.pas' {frmRateio},
  uSplash in '..\COMUM\uSplash.pas' {frmsplash},
  uManiDest in 'uManiDest.pas' {frmManiDest},
  uDetNF in 'uDetNF.pas' {frmDetNF},
  uAssDevol in 'uAssDevol.pas' {frmAssDevol},
  uVendaNF in 'uVendaNF.pas' {frmVendaNF},
  uRegras_Imposto in '..\OPERACIONAIS\uRegras_Imposto.pas' {frmRegras_Imposto},
  uDic_NF in 'uDic_NF.pas' {frmDic_NF},
  uConverteEmitInform in '..\OPERACIONAIS\uConverteEmitInform.pas' {frmConverteEmitInform},
  uDadosItemNF in '..\OPERACIONAIS\uDadosItemNF.pas' {frmdadosItemNF},
  uViews in '..\COMUM\uViews.pas',
  uPesqCidade in '..\GERENCIAL\uPesqCidade.pas' {frmPesqCidade},
  uPesqNCM in '..\GERENCIAL\uPesqNCM.pas' {frmPesqNCM},
  udm_ini in '..\DATAMODULES\udm_ini.pas' {DM_INI: TDataModule},
  uDM in '..\DATAMODULES\uDM.pas' {DM: TDataModule},
  uDM_NF_Entr in '..\DATAMODULES\uDM_NF_Entr.pas' {DM_NF_Entr: TDataModule},
  udmnfe in '..\DATAMODULES\udmnfe.pas' {DM_NFE: TDataModule},
  uDM_Conn in '..\DATAMODULES\uDM_Conn.pas' {DMConn: TDataModule},
  uDMAux in '..\DATAMODULES\uDMAux.pas' {DMAux: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'PARADIGMA T.I. EMISSOR NF-E';
  frmSplash :=TfrmSplash.Create(nil);
  frmSplash.Show;
  frmSplash.Update;
  Application.CreateForm(TDMSkin, DMSkin);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDMAux, DMAux);
  Application.CreateForm(TDMAux, DMAux);
  Application.Run;
end.
