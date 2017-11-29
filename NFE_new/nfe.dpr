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
  udmnfe in 'udmnfe.pas' {DM_NFE: TDataModule},
  ucce in 'ucce.pas' {frmcce},
  uInutilizaNumeracao in 'uInutilizaNumeracao.pas' {frmInut},
  uListaNF in 'uListaNF.pas' {frmListaNF},
  uManut in 'uManut.pas' {frmManu},
  uXML in 'uXML.pas',
  Vcl.Themes,
  Vcl.Styles,
  udm_ini in '..\COMUM\udm_ini.pas' {DM_INI: TDataModule},
  dmSkins in '..\BASE\dmSkins.pas' {DMSkin: TDataModule},
  uSkinDLL in '..\BASE\uSkinDLL.pas',
  uFrm in '..\BASE\uFrm.pas' {frm},
  uCfg in '..\GERENCIAL\uCfg.pas' {frmCfg},
  uDM in '..\GERENCIAL\uDM.pas' {DM: TDataModule},
  uCadCli in '..\GERENCIAL\CADASTROS\uCadCli.pas',
  uCadEmpresa in '..\GERENCIAL\CADASTROS\uCadEmpresa.pas',
  uCadEstoque in '..\GERENCIAL\CADASTROS\uCadEstoque.pas',
  uCadForn in '..\GERENCIAL\CADASTROS\uCadForn.pas',
  ufrmCad in '..\BASE\ufrmCad.pas' {frmCad},
  uTraducao in '..\COMUM\uTraducao.pas',
  uPesqCidade in '..\GERENCIAL\uPesqCidade.pas' {frmPesqCidade},
  uPesqNCM in '..\GERENCIAL\uPesqNCM.pas' {frmPesqNCM},
  uCadSpedTabelas in '..\GERENCIAL\CADASTROS\uCadSpedTabelas.pas' {frmCadSpedTabelas},
  uReplica in '..\GERENCIAL\OPERACIONAIS\uReplica.pas' {frmReplica},
  uPesqCli in 'uPesqCli.pas' {frmPesqCli},
  uPesqProd in 'uPesqProd.pas' {frmPesqProd},
  uPesqNatOper in 'uPesqNatOper.pas' {frmPesqNatOper},
  uRateio in 'uRateio.pas' {frmRateio},
  uSplash in '..\COMUM\uSplash.pas' {frmsplash},
  uManiDest in 'uManiDest.pas' {frmManiDest},
  uDetNF in 'uDetNF.pas' {frmDetNF},
  uAssDevol in 'uAssDevol.pas' {frmAssDevol},
  uDM_NF_Entr in '..\GERENCIAL\uDM_NF_Entr.pas' {DM_NF_Entr: TDataModule},
  uVendaNF in 'uVendaNF.pas' {frmVendaNF},
  uRegras_Imposto in '..\GERENCIAL\OPERACIONAIS\uRegras_Imposto.pas' {frmRegras_Imposto},
  uDic_NF in 'uDic_NF.pas' {frmDic_NF},
  uConverteEmitInform in '..\GERENCIAL\OPERACIONAIS\uConverteEmitInform.pas' {frmConverteEmitInform},
  uDadosItemNF in '..\GERENCIAL\OPERACIONAIS\uDadosItemNF.pas' {frmdadosItemNF},
  uViews in '..\COMUM\uViews.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'PARADIGMA T.I. EMISSOR NF-E';
  frmSplash :=TfrmSplash.Create(nil);
  frmSplash.Show;
  frmSplash.Update;
  Application.CreateForm(TDMSkin, DMSkin);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDM_INI, DM_INI);
  Application.CreateForm(TDM_NFE, DM_NFE);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
