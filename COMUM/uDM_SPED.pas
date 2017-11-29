unit uDM_SPED;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.Script, FireDAC.Comp.DataSet, ACBrSpedFiscal, ACBrEFDBlocos,
  ACBrValidador, vcl.Forms, DateUtils, Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client;

type
  TDM_Sped = class(TDataModule)
    Q1: TFDQuery;
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    Q0150: TFDQuery;
    DS0150: TDataSource;
    Q0175: TFDQuery;
    Q0175campo: TStringField;
    Q0175data: TDateField;
    Q0175valor_anter: TStringField;
    Q0190: TFDQuery;
    Q0190unid: TStringField;
    Q0200: TFDQuery;
    Q0200id: TIntegerField;
    Q0200cod_gtin: TStringField;
    Q0200nome: TStringField;
    Q0200sigla_unid: TStringField;
    Q0200icms: TFloatField;
    Q0200ncm: TStringField;
    Q0200destinacao: TStringField;
    QC100: TFDQuery;
    QC100chave: TStringField;
    QC100id: TIntegerField;
    QC100Ide_cNF: TIntegerField;
    QC100Ide_natOp: TStringField;
    QC100Ide_indPag: TIntegerField;
    QC100Ide_modelo: TIntegerField;
    QC100Ide_serie: TIntegerField;
    QC100Ide_nNF: TIntegerField;
    QC100Ide_dEmi: TDateField;
    QC100Ide_dSaiEnt: TDateField;
    QC100Ide_tpNF: TIntegerField;
    QC100Ide_tpEmis: TIntegerField;
    QC100Ide_tpAmb: TIntegerField;
    QC100Ide_verProc: TStringField;
    QC100Ide_cUF: TIntegerField;
    QC100Ide_cMunFG: TStringField;
    QC100Ide_finNFe: TIntegerField;
    QC100Ide_dhCont: TDateField;
    QC100Ide_xJust: TStringField;
    QC100Emit_CNPJCPF: TStringField;
    QC100Emit_IE: TStringField;
    QC100Emit_xNome: TStringField;
    QC100Emit_xFant: TStringField;
    QC100Emit_EnderEmit_fone: TStringField;
    QC100mit_EnderEmit_CEP: TStringField;
    QC100Emit_EnderEmit_xLgr: TStringField;
    QC100Emit_EnderEmit_nro: TStringField;
    QC100Emit_EnderEmit_xCpl: TStringField;
    QC100Emit_EnderEmit_xBairro: TStringField;
    QC100Emit_EnderEmit_cMun: TIntegerField;
    QC100Emit_EnderEmit_xMun: TStringField;
    QC100Emit_EnderEmit_UF: TStringField;
    QC100Emit_enderEmit_cPais: TIntegerField;
    QC100Emit_enderEmit_xPais: TStringField;
    QC100Emit_IEST: TStringField;
    QC100Emit_IM: TStringField;
    QC100Emit_CNAE: TStringField;
    QC100Emit_CRT: TIntegerField;
    QC100Dest_CNPJCPF: TStringField;
    QC100Dest_IE: TStringField;
    QC100Dest_ISUF: TStringField;
    QC100Dest_xNome: TStringField;
    QC100Dest_EnderDest_Fone: TStringField;
    QC100Dest_EnderDest_CEP: TStringField;
    QC100Dest_EnderDest_xLgr: TStringField;
    QC100Dest_EnderDest_nro: TStringField;
    QC100Dest_EnderDest_xCpl: TStringField;
    QC100Dest_EnderDest_xBairro: TStringField;
    QC100Dest_EnderDest_cMun: TIntegerField;
    QC100Dest_EnderDest_xMun: TStringField;
    QC100Dest_EnderDest_UF: TStringField;
    QC100Dest_EnderDest_cPais: TIntegerField;
    QC100Dest_EnderDest_xPais: TStringField;
    QC100Retirada_CNPJCPF: TStringField;
    QC100Retirada_xLgr: TStringField;
    QC100Retirada_nro: TStringField;
    QC100Retirada_xCpl: TStringField;
    QC100Retirada_xBairro: TStringField;
    QC100Retirada_cMun: TIntegerField;
    QC100Retirada_xMun: TStringField;
    QC100Retirada_UF: TStringField;
    QC100Entrega_CNPJCPF: TStringField;
    QC100Entrega_xLgr: TStringField;
    QC100Entrega_nro: TStringField;
    QC100Entrega_xCpl: TStringField;
    QC100Entrega_xBairro: TStringField;
    QC100Entrega_cMun: TIntegerField;
    QC100Entrega_xMun: TStringField;
    QC100Entrega_UF: TStringField;
    QC100modFrete: TIntegerField;
    QC100Transporta_CNPJCPF: TStringField;
    QC100Transporta_xNome: TStringField;
    QC100Transporta_IE: TStringField;
    QC100Transporta_xEnder: TStringField;
    QC100Transporta_xMun: TStringField;
    QC100Transporta_UF: TStringField;
    QC100retvServ: TFloatField;
    QC100retvBCRet: TFloatField;
    QC100retpICMSRet: TFloatField;
    QC100retvICMSRet: TFloatField;
    QC100retCFOP: TStringField;
    QC100retcMunFG: TIntegerField;
    QC100veicplaca: TStringField;
    QC100veicUF: TStringField;
    QC100veicRNTC: TStringField;
    QC100nFat: TStringField;
    QC100vOrig: TFloatField;
    QC100vDesc: TFloatField;
    QC100vLiq: TFloatField;
    QC100infAdFisco: TMemoField;
    QC100infCpl: TMemoField;
    QC100ICMSTot_vBC: TFloatField;
    QC100ICMSTot_vICMS: TFloatField;
    QC100ICMSTot_vBCST: TFloatField;
    QC100ICMSTot_vST: TFloatField;
    QC100ICMSTot_vProd: TFloatField;
    QC100ICMSTot_vFrete: TFloatField;
    QC100ICMSTot_vSeg: TFloatField;
    QC100ICMSTot_vDesc: TFloatField;
    QC100ICMSTot_vII: TFloatField;
    QC100ICMSTot_vIPI: TFloatField;
    QC100ICMSTot_vPIS: TFloatField;
    QC100ICMSTot_vCOFINS: TFloatField;
    QC100ICMSTot_vOutro: TFloatField;
    QC100ICMSTot_vNF: TFloatField;
    QC100ISSQNtot_vServ: TFloatField;
    QC100ISSQNTot_vBC: TFloatField;
    QC100ISSQNTot_vISS: TFloatField;
    QC100ISSQNTot_vPIS: TFloatField;
    QC100ISSQNTot_vCOFINS: TFloatField;
    QC100retTrib_vRetPIS: TFloatField;
    QC100retTrib_vRetCOFINS: TFloatField;
    QC100retTrib_vRetCSLL: TFloatField;
    QC100retTrib_vBCIRRF: TFloatField;
    QC100retTrib_vIRRF: TFloatField;
    QC100retTrib_vBCRetPrev: TFloatField;
    QC100retTrib_vRetPrev: TFloatField;
    QC100md5: TStringField;
    QC100hash: TStringField;
    QC100tipo: TStringField;
    QC112: TFDQuery;
    DSC100: TDataSource;
    QC112id: TFDAutoIncField;
    QC112nf: TIntegerField;
    QC112cod_da: TIntegerField;
    QC112uf: TStringField;
    QC112nmro: TStringField;
    QC112cod_aut: TStringField;
    QC112valor: TFloatField;
    QC112dt_venc: TDateField;
    QC112dt_pag: TDateField;
    QC113E: TFDQuery;
    QC113Eid: TFDAutoIncField;
    QC113Enf: TIntegerField;
    QC113ErefNFe: TStringField;
    QC113ERefNF_cUF: TIntegerField;
    QC113ERefNF_AAMM: TStringField;
    QC113ERefNF_CNPJ: TStringField;
    QC113ERefNF_modelo: TIntegerField;
    QC113ERefNF_serie: TIntegerField;
    QC113ERefNF_nNF: TIntegerField;
    QC113ERefNFP_cUF: TIntegerField;
    QC113ERefNFP_AAMM: TStringField;
    QC113ERefNFP_CNPJCPF: TStringField;
    QC113ERefNFP_IE: TStringField;
    QC113ERefNFP_modelo: TStringField;
    QC113ERefNFP_serie: TIntegerField;
    QC113ERefNFP_nNF: TIntegerField;
    QC113ERefECF_modelo: TIntegerField;
    QC113ERefECF_nECF: TStringField;
    QC113ERefECF_nCOO: TStringField;
    QC113ERefCte: TStringField;
    QC114: TFDQuery;
    QC114id: TFDAutoIncField;
    QC114nf: TIntegerField;
    QC114RefECF_modelo: TIntegerField;
    QC114RefECF_nECF: TStringField;
    QC114RefECF_nCOO: TStringField;
    QC113S: TFDQuery;
    QC113Sid: TFDAutoIncField;
    QC113Snf: TIntegerField;
    QC113SrefNFe: TStringField;
    QC113SRefNF_cUF: TIntegerField;
    QC113SRefNF_AAMM: TStringField;
    QC113SRefNF_CNPJ: TStringField;
    QC113SRefNF_modelo: TIntegerField;
    QC113SRefNF_serie: TIntegerField;
    QC113SRefNF_nNF: TIntegerField;
    QC113SRefNFP_cUF: TIntegerField;
    QC113SRefNFP_AAMM: TStringField;
    QC113SRefNFP_CNPJCPF: TStringField;
    QC113SRefNFP_IE: TStringField;
    QC113SRefNFP_modelo: TStringField;
    QC113SRefNFP_serie: TIntegerField;
    QC113SRefNFP_nNF: TIntegerField;
    QC113SRefECF_modelo: TIntegerField;
    QC113SRefECF_nECF: TStringField;
    QC113SRefECF_nCOO: TStringField;
    QC113SRefCte: TStringField;
    QC114RefECF_data: TDateField;
    QC114RefECF_Serie: TStringField;
    QC170E: TFDQuery;
    QC170Eid: TFDAutoIncField;
    QC170Enf: TIntegerField;
    QC170EnItem: TIntegerField;
    QC170EcProd: TStringField;
    QC170EcEAN: TStringField;
    QC170ExProd: TStringField;
    QC170ENCM: TStringField;
    QC170EEXTIPI: TStringField;
    QC170ECFOP: TStringField;
    QC170EuCom: TStringField;
    QC170EqCom: TFloatField;
    QC170EvUnCom: TFloatField;
    QC170EvProd: TFloatField;
    QC170EcEANTrib: TStringField;
    QC170EuTrib: TStringField;
    QC170EqTrib: TFloatField;
    QC170EvUnTrib: TFloatField;
    QC170EvOutro: TFloatField;
    QC170EvFrete: TFloatField;
    QC170EvSeg: TFloatField;
    QC170EvDesc: TFloatField;
    QC170EinfAdProd: TMemoField;
    QC170EICMS_CST: TIntegerField;
    QC170EICMS_orig: TIntegerField;
    QC170EICMS_modBC: TIntegerField;
    QC170EICMS_vBC: TFloatField;
    QC170EICMS_pICMS: TFloatField;
    QC170EICMS_vICMS: TFloatField;
    QC170EICMS_CSOSN: TIntegerField;
    QC170EICMS_pCredSN: TFloatField;
    QC170EICMS_vCredICMSSN: TFloatField;
    QC170EICMS_modBCST: TIntegerField;
    QC170EICMS_pMVAST: TFloatField;
    QC170EICMS_vTabelaST: TFloatField;
    QC170EICMS_pRedBCST: TFloatField;
    QC170EICMS_vBCST: TFloatField;
    QC170EICMS_pICMSST: TFloatField;
    QC170EICMS_vICMSST: TFloatField;
    QC170EICMS_pRedBC: TFloatField;
    QC170EIPI_CST: TIntegerField;
    QC170EIPI_clEnq: TStringField;
    QC170EIPI_CNPJProd: TStringField;
    QC170EIPI_cSelo: TStringField;
    QC170EIPI_qSelo: TIntegerField;
    QC170EIPI_cEnq: TStringField;
    QC170EIPI_vBC: TFloatField;
    QC170EIPI_qUnid: TFloatField;
    QC170EIPI_vUnid: TFloatField;
    QC170EIPI_pIPI: TFloatField;
    QC170EIPI_vIPI: TFloatField;
    QC170EII_vBc: TFloatField;
    QC170EII_vDespAdu: TFloatField;
    QC170EII_vII: TFloatField;
    QC170EII_vIOF: TFloatField;
    QC170EPIS_CST: TIntegerField;
    QC170EPIS_vBC: TFloatField;
    QC170EPIS_pPIS: TFloatField;
    QC170EPIS_vPIS: TFloatField;
    QC170EPIS_qBCProd: TFloatField;
    QC170EPIS_vAliqProd: TFloatField;
    QC170EPISST_vBc: TFloatField;
    QC170EPISST_pPis: TFloatField;
    QC170EPISST_qBCProd: TFloatField;
    QC170EPISST_vAliqProd: TFloatField;
    QC170EPISST_vPIS: TFloatField;
    QC170ECOFINS_CST: TIntegerField;
    QC170ECOFINS_vBC: TFloatField;
    QC170ECOFINS_pCOFINS: TFloatField;
    QC170ECOFINS_vCOFINS: TFloatField;
    QC170ECOFINS_qBCProd: TFloatField;
    QC170ECOFINS_vAliqProd: TFloatField;
    QC170ECOFINSST_vBC: TFloatField;
    QC170ECOFINSST_pCOFINS: TFloatField;
    QC170ECOFINSST_qBCProd: TFloatField;
    QC170ECOFINSST_vAliqProd: TFloatField;
    QC170ECOFINSST_vCOFINS: TFloatField;
    QC170EISSQN_vBC: TFloatField;
    QC170EISSQN_vAliq: TFloatField;
    QC170EISSQN_vISSQN: TFloatField;
    QC170EISSQN_cMunFG: TIntegerField;
    QC170EISSQN_cListServ: TIntegerField;
    QC170EISSQN_SitTrib: TIntegerField;
    QC170EQTD: TFloatField;
    QC170EICMS_CST_inform: TIntegerField;
    QC170EICMS_orig_inform: TIntegerField;
    QC170EICMS_modBC_inform: TIntegerField;
    QC170EICMS_vBC_inform: TFloatField;
    QC170EICMS_pICMS_inform: TFloatField;
    QC170EICMS_vICMS_inform: TFloatField;
    QC170EICMS_CSOSN_inform: TIntegerField;
    QC170EICMS_pCredSN_inform: TFloatField;
    QC170EICMS_vCredICMSSN_inform: TFloatField;
    QC170EICMS_modBCST_inform: TIntegerField;
    QC170EICMS_pMVAST_inform: TFloatField;
    QC170EICMS_vTabelaST_inform: TFloatField;
    QC170EICMS_pRedBCST_inform: TFloatField;
    QC170EICMS_vBCST_inform: TFloatField;
    QC170EICMS_pICMSST_inform: TFloatField;
    QC170EICMS_vICMSST_inform: TFloatField;
    QC170EICMS_pRedBC_inform: TFloatField;
    QC170EIPI_CST_inform: TIntegerField;
    QC170EIPI_clEnq_inform: TStringField;
    QC170EIPI_CNPJProd_inform: TStringField;
    QC170EIPI_cSelo_inform: TStringField;
    QC170EIPI_qSelo_inform: TIntegerField;
    QC170EIPI_cEnq_inform: TStringField;
    QC170EIPI_vBC_inform: TFloatField;
    QC170EIPI_qUnid_inform: TFloatField;
    QC170EIPI_vUnid_inform: TFloatField;
    QC170EIPI_pIPI_inform: TFloatField;
    QC170EIPI_vIPI_inform: TFloatField;
    QC170EII_vBc_inform: TFloatField;
    QC170EII_vDespAdu_inform: TFloatField;
    QC170EII_vII_inform: TFloatField;
    QC170EII_vIOF_inform: TFloatField;
    QC170EPIS_CST_inform: TIntegerField;
    QC170EPIS_vBC_inform: TFloatField;
    QC170EPIS_pPIS_inform: TFloatField;
    QC170EPIS_vPIS_inform: TFloatField;
    QC170EPIS_qBCProd_inform: TFloatField;
    QC170EPIS_vAliqProd_inform: TFloatField;
    QC170EPISST_vBc_inform: TFloatField;
    QC170EPISST_pPis_inform: TFloatField;
    QC170EPISST_qBCProd_inform: TFloatField;
    QC170EPISST_vAliqProd_inform: TFloatField;
    QC170EPISST_vPIS_inform: TFloatField;
    QC170ECOFINS_CST_inform: TIntegerField;
    QC170ECOFINS_vBC_inform: TFloatField;
    QC170ECOFINS_pCOFINS_inform: TFloatField;
    QC170ECOFINS_vCOFINS_inform: TFloatField;
    QC170ECOFINS_qBCProd_inform: TFloatField;
    QC170ECOFINS_vAliqProd_inform: TFloatField;
    QC170ECOFINSST_vBC_inform: TFloatField;
    QC170ECOFINSST_pCOFINS_inform: TFloatField;
    QC170ECOFINSST_qBCProd_inform: TFloatField;
    QC170ECOFINSST_vAliqProd_inform: TFloatField;
    QC170ECOFINSST_vCOFINS_inform: TFloatField;
    QC170EISSQN_vBC_inform: TFloatField;
    QC170EISSQN_vAliq_inform: TFloatField;
    QC170EISSQN_vISSQN_inform: TFloatField;
    QC170EISSQN_cMunFG_inform: TIntegerField;
    QC170EISSQN_cListServ_inform: TIntegerField;
    QC170EISSQN_SitTrib_inform: TIntegerField;
    QC170EICMS_vBCSTRet_inform: TFloatField;
    QC170EICMS_vICMSSTRet_inform: TFloatField;
    QC170ECFOP_inform: TStringField;
    QC170Emd5: TStringField;
    QC170Ehash: TStringField;
    QC170S: TFDQuery;
    QC170Sid: TFDAutoIncField;
    QC170Snf: TIntegerField;
    QC170SnItem: TIntegerField;
    QC170ScProd: TStringField;
    QC170ScEAN: TStringField;
    QC170SxProd: TStringField;
    QC170SNCM: TStringField;
    QC170SEXTIPI: TStringField;
    QC170SCFOP: TStringField;
    QC170SuCom: TStringField;
    QC170SqCom: TFloatField;
    QC170SvUnCom: TFloatField;
    QC170SvProd: TFloatField;
    QC170ScEANTrib: TStringField;
    QC170SuTrib: TStringField;
    QC170SqTrib: TFloatField;
    QC170SvUnTrib: TFloatField;
    QC170SvOutro: TFloatField;
    QC170SvFrete: TFloatField;
    QC170SvSeg: TFloatField;
    QC170SvDesc: TFloatField;
    QC170SinfAdProd: TMemoField;
    QC170SICMS_CST: TIntegerField;
    QC170SICMS_orig: TIntegerField;
    QC170SICMS_modBC: TIntegerField;
    QC170SICMS_vBC: TFloatField;
    QC170SICMS_pICMS: TFloatField;
    QC170SICMS_vICMS: TFloatField;
    QC170SICMS_CSOSN: TIntegerField;
    QC170SICMS_pCredSN: TFloatField;
    QC170SICMS_vCredICMSSN: TFloatField;
    QC170SICMS_modBCST: TIntegerField;
    QC170SICMS_pMVAST: TFloatField;
    QC170SICMS_vTabelaST: TFloatField;
    QC170SICMS_pRedBCST: TFloatField;
    QC170SICMS_vBCST: TFloatField;
    QC170SICMS_pICMSST: TFloatField;
    QC170SICMS_vICMSST: TFloatField;
    QC170SICMS_pRedBC: TFloatField;
    QC170SIPI_CST: TIntegerField;
    QC170SIPI_clEnq: TStringField;
    QC170SIPI_CNPJProd: TStringField;
    QC170SIPI_cSelo: TStringField;
    QC170SIPI_qSelo: TIntegerField;
    QC170SIPI_cEnq: TStringField;
    QC170SIPI_vBC: TFloatField;
    QC170SIPI_qUnid: TFloatField;
    QC170SIPI_vUnid: TFloatField;
    QC170SIPI_pIPI: TFloatField;
    QC170SIPI_vIPI: TFloatField;
    QC170SII_vBc: TFloatField;
    QC170SII_vDespAdu: TFloatField;
    QC170SII_vII: TFloatField;
    QC170SII_vIOF: TFloatField;
    QC170SPIS_CST: TIntegerField;
    QC170SPIS_vBC: TFloatField;
    QC170SPIS_pPIS: TFloatField;
    QC170SPIS_vPIS: TFloatField;
    QC170SPIS_qBCProd: TFloatField;
    QC170SPIS_vAliqProd: TFloatField;
    QC170SPISST_vBc: TFloatField;
    QC170SPISST_pPis: TFloatField;
    QC170SPISST_qBCProd: TFloatField;
    QC170SPISST_vAliqProd: TFloatField;
    QC170SPISST_vPIS: TFloatField;
    QC170SCOFINS_CST: TIntegerField;
    QC170SCOFINS_vBC: TFloatField;
    QC170SCOFINS_pCOFINS: TFloatField;
    QC170SCOFINS_vCOFINS: TFloatField;
    QC170SCOFINS_qBCProd: TFloatField;
    QC170SCOFINS_vAliqProd: TFloatField;
    QC170SCOFINSST_vBC: TFloatField;
    QC170SCOFINSST_pCOFINS: TFloatField;
    QC170SCOFINSST_qBCProd: TFloatField;
    QC170SCOFINSST_vAliqProd: TFloatField;
    QC170SCOFINSST_vCOFINS: TFloatField;
    QC170SISSQN_vBC: TFloatField;
    QC170SISSQN_vAliq: TFloatField;
    QC170SISSQN_vISSQN: TFloatField;
    QC170SISSQN_cMunFG: TIntegerField;
    QC170SISSQN_cListServ: TIntegerField;
    QC170SISSQN_SitTrib: TIntegerField;
    QC170SICMS_vBCSTRet: TFloatField;
    QC170SICMS_vICMSSTRet: TFloatField;
    QC170SQTD: TFloatField;
    QC170SICMS_CST_inform: TIntegerField;
    QC170SICMS_orig_inform: TIntegerField;
    QC170SICMS_modBC_inform: TIntegerField;
    QC170SICMS_vBC_inform: TFloatField;
    QC170SICMS_pICMS_inform: TFloatField;
    QC170SICMS_vICMS_inform: TFloatField;
    QC170SICMS_CSOSN_inform: TIntegerField;
    QC170SICMS_pCredSN_inform: TFloatField;
    QC170SICMS_vCredICMSSN_inform: TFloatField;
    QC170SICMS_modBCST_inform: TIntegerField;
    QC170SICMS_pMVAST_inform: TFloatField;
    QC170SICMS_vTabelaST_inform: TFloatField;
    QC170SICMS_pRedBCST_inform: TFloatField;
    QC170SICMS_vBCST_inform: TFloatField;
    QC170SICMS_pICMSST_inform: TFloatField;
    QC170SICMS_vICMSST_inform: TFloatField;
    QC170SICMS_pRedBC_inform: TFloatField;
    QC170SIPI_CST_inform: TIntegerField;
    QC170SIPI_clEnq_inform: TStringField;
    QC170SIPI_CNPJProd_inform: TStringField;
    QC170SIPI_cSelo_inform: TStringField;
    QC170SIPI_qSelo_inform: TIntegerField;
    QC170SIPI_cEnq_inform: TStringField;
    QC170SIPI_vBC_inform: TFloatField;
    QC170SIPI_qUnid_inform: TFloatField;
    QC170SIPI_vUnid_inform: TFloatField;
    QC170SIPI_pIPI_inform: TFloatField;
    QC170SIPI_vIPI_inform: TFloatField;
    QC170SII_vBc_inform: TFloatField;
    QC170SII_vDespAdu_inform: TFloatField;
    QC170SII_vII_inform: TFloatField;
    QC170SII_vIOF_inform: TFloatField;
    QC170SPIS_CST_inform: TIntegerField;
    QC170SPIS_vBC_inform: TFloatField;
    QC170SPIS_pPIS_inform: TFloatField;
    QC170SPIS_vPIS_inform: TFloatField;
    QC170SPIS_qBCProd_inform: TFloatField;
    QC170SPIS_vAliqProd_inform: TFloatField;
    QC170SPISST_vBc_inform: TFloatField;
    QC170SPISST_pPis_inform: TFloatField;
    QC170SPISST_qBCProd_inform: TFloatField;
    QC170SPISST_vAliqProd_inform: TFloatField;
    QC170SPISST_vPIS_inform: TFloatField;
    QC170SCOFINS_CST_inform: TIntegerField;
    QC170SCOFINS_vBC_inform: TFloatField;
    QC170SCOFINS_pCOFINS_inform: TFloatField;
    QC170SCOFINS_vCOFINS_inform: TFloatField;
    QC170SCOFINS_qBCProd_inform: TFloatField;
    QC170SCOFINS_vAliqProd_inform: TFloatField;
    QC170SCOFINSST_vBC_inform: TFloatField;
    QC170SCOFINSST_pCOFINS_inform: TFloatField;
    QC170SCOFINSST_qBCProd_inform: TFloatField;
    QC170SCOFINSST_vAliqProd_inform: TFloatField;
    QC170SCOFINSST_vCOFINS_inform: TFloatField;
    QC170SISSQN_vBC_inform: TFloatField;
    QC170SISSQN_vAliq_inform: TFloatField;
    QC170SISSQN_vISSQN_inform: TFloatField;
    QC170SISSQN_cMunFG_inform: TIntegerField;
    QC170SISSQN_cListServ_inform: TIntegerField;
    QC170SISSQN_SitTrib_inform: TIntegerField;
    QC170SICMS_vBCSTRet_inform: TFloatField;
    QC170SICMS_vICMSSTRet_inform: TFloatField;
    QC170SICMS_motDesICMS: TIntegerField;
    QC170SICMS_motDesICMS_inform: TIntegerField;
    QC170SvTotTrib: TFloatField;
    QC170Smd5: TStringField;
    QC170Shash: TStringField;
    QC190E: TFDQuery;
    QC190S: TFDQuery;
    QC300: TFDQuery;
    QC310: TFDQuery;
    QC310nmro_nf: TIntegerField;
    QC320: TFDQuery;
    QC320cfop: TStringField;
    QC320aliq: TFloatField;
    QC320vr_oper: TFloatField;
    QC320bc: TFloatField;
    QC320vr_icms: TFloatField;
    DSC300: TDataSource;
    QC321: TFDQuery;
    QC350: TFDQuery;
    QC350nmro_nf: TIntegerField;
    QC350serie: TStringField;
    QC350cnpj_cliente: TStringField;
    QC350dt_movi: TDateField;
    QC350vr_merc: TFloatField;
    QC350vr_desc: TFloatField;
    QC350vr_doc: TFloatField;
    QC350vpis: TFloatField;
    QC350vcofins: TFloatField;
    QC350id: TIntegerField;
    QC370: TFDQuery;
    DSC350: TDataSource;
    QC370item: TIntegerField;
    QC370qtd: TFloatField;
    QC370unid: TStringField;
    QC370total: TFloatField;
    QC370desconto: TFloatField;
    QC390: TFDQuery;
    QC390cst: TLargeintField;
    QC390cfop: TStringField;
    QC390aliq: TFloatField;
    QC390vr_oper: TFloatField;
    QC390bc: TFloatField;
    QC390vr_icms: TFloatField;
    QC400: TFDQuery;
    QC400id: TFDAutoIncField;
    QC400nmro: TIntegerField;
    QC400serie: TStringField;
    QC400mf_adic: TStringField;
    QC400tipo: TStringField;
    QC400marca: TStringField;
    QC400modelo: TStringField;
    QC400versao_sb: TStringField;
    QC400data_sb: TDateField;
    QC400hora_sb: TStringField;
    DSC400: TDataSource;
    QC405: TFDQuery;
    QC405id: TFDAutoIncField;
    QC405num_ecf: TIntegerField;
    QC405num_usu: TIntegerField;
    QC405serie_ecf: TStringField;
    QC405mf_adic: TStringField;
    QC405crz: TIntegerField;
    QC405coo: TIntegerField;
    QC405coo_inicial: TIntegerField;
    QC405cro: TIntegerField;
    QC405dt_movi: TDateField;
    QC405dt_em: TDateField;
    QC405hora_em: TTimeField;
    QC405venda_bruta: TFloatField;
    QC405valor_gt: TFloatField;
    QC405issqn: TStringField;
    QC410: TFDQuery;
    DSC405: TDataSource;
    QC410vpis: TFloatField;
    QC410vcofins: TFloatField;
    QC420: TFDQuery;
    QC420id: TFDAutoIncField;
    QC420r02: TIntegerField;
    QC420cod_tot_parcial: TStringField;
    QC420valor_tot_parcial: TFloatField;
    QC425: TFDQuery;
    QC460: TFDQuery;
    QC460cod_mod: TStringField;
    QC460cod_sit: TStringField;
    QC460coo: TIntegerField;
    QC460dt_em: TDateField;
    QC460vr_liq: TFloatField;
    QC460vpis: TFloatField;
    QC460vcofins: TFloatField;
    QC460ccf: TIntegerField;
    QC470: TFDQuery;
    DSC460: TDataSource;
    QC460id: TIntegerField;
    QC470qtd: TFloatField;
    QC470qtd_canc: TFloatField;
    QC470unid: TStringField;
    QC470total: TFloatField;
    QC470aliq: TFloatField;
    QC470cfop: TStringField;
    QC470vpis: TFloatField;
    QC470vcofins: TFloatField;
    QC490: TFDQuery;
    QC490cst: TLargeintField;
    QC490cfop: TStringField;
    QC490aliq: TFloatField;
    QC490vr_oper: TFloatField;
    QC490bc: TFloatField;
    QC490vr_icms: TFloatField;
    QC460cnpj_cliente: TStringField;
    QC460nome_cliente: TStringField;
    QC470cst: TIntegerField;
    QC190EICMS_CSOSN: TLargeintField;
    QC190EICMS_CST: TLargeintField;
    QC190ECFOP: TStringField;
    QC190EICMS_pICMS: TFloatField;
    QC190EvProd: TFloatField;
    QC190EvBC: TFloatField;
    QC190EICMS_vICMS: TFloatField;
    QC190EICMS_vBCST: TFloatField;
    QC190EICMS_vICMSST: TFloatField;
    QC190EvRedBC: TFloatField;
    QC190EIPI_vIPI: TFloatField;
    QC190SICMS_CSOSN: TLargeintField;
    QC190SICMS_CST: TLargeintField;
    QC190SCFOP: TStringField;
    QC190SICMS_pICMS: TFloatField;
    QC190SvProd: TFloatField;
    QC190SvBC: TFloatField;
    QC190SICMS_vICMS: TFloatField;
    QC190SICMS_vBCST: TFloatField;
    QC190SICMS_vICMSST: TFloatField;
    QC190SvRedBC: TFloatField;
    QC190SIPI_vIPI: TFloatField;
    QC470cProd: TIntegerField;
    QC370codigo: TIntegerField;
    QC190EvTotal: TFloatField;
    QC190SvTotal: TFloatField;
    Q1600: TFDQuery;
    Q1600oper_crt: TStringField;
    Q1600vr_cred: TFloatField;
    Q1600vr_deb: TFloatField;
    Q0150Emit_CNPJCPF: TStringField;
    Q0150Emit_IE: TStringField;
    Q0150Emit_xNome: TStringField;
    Q0150Emit_EnderEmit_xLgr: TStringField;
    Q0150Emit_EnderEmit_nro: TStringField;
    Q0150Emit_EnderEmit_xCpl: TStringField;
    Q0150Emit_EnderEmit_xBairro: TStringField;
    Q0150Emit_EnderEmit_cMun: TStringField;
    QC321codigo: TIntegerField;
    QC321qtd: TFloatField;
    QC321unid: TStringField;
    QC321total: TFloatField;
    QC321desconto: TFloatField;
    QC321bc: TFloatField;
    QC321aliq: TFloatField;
    QC321vr_icms: TFloatField;
    QC321vpis: TFloatField;
    QC321vcofins: TFloatField;
    QC300dt_movi: TDateField;
    QC300nmro_nf_ini: TIntegerField;
    QC300nmro_nf_fin: TIntegerField;
    QC300serie: TStringField;
    QC300vr_doc: TFloatField;
    QC300vpis: TFloatField;
    QC300vcofins: TFloatField;
    QC320id: TFDAutoIncField;
    DSC320: TDataSource;
    QC425codigo: TIntegerField;
    QC425unid: TStringField;
    QC425qtd: TFloatField;
    QC425vritem: TFloatField;
    QC425vpis: TFloatField;
    QC425vcofins: TFloatField;
    QC100status: TIntegerField;
    QC320idr5: TIntegerField;
    QC320cst: TLargeintField;
  private
    function CFOP_Vetado(CFOP: integer):boolean;//retorna se o cfop pode ou nao ser utilizado
    function Retorna_COD_PART(valor: string): string;
    function Retorna_COD_NAT(valor: string): string;
    function Retorna_COD_UN(valor: string):string;
    function Retorna_COD_OBS(valor: string): String;
    function Apropria_Credito: boolean;
  public
    procedure Gerar_Bloco0(Dt_Inicial, Dt_Fim: TDate; Arq: string = ''; Concomitante: Boolean = False; LineBuffer: integer=1000;
                           Versao_layout: integer=106; Cod_Finalid: integer=0; motivo: string = '01');
    procedure Gerar_BlocoC(Concomitante: Boolean);
    procedure Gerar_BlocoD(Concomitante: Boolean);
    procedure Gerar_BlocoE(Concomitante: Boolean);
    procedure Gerar_BlocoG(Concomitante: Boolean);
    procedure Gerar_BlocoH(Concomitante: Boolean; motivo: integer = 0);
    procedure Gerar_Bloco1(Concomitante: Boolean);
    procedure Gravar_Blocos;
  end;

var
  DM_Sped: TDM_Sped;
  VL_TOT_DEB, VL_TOT_CRED: currency;  //utilizados no bloco E

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uAutocomConsts, uDM, uFuncoes, uMD5Print, udm_ini;

{$R *.dfm}
      

function TDM_Sped.Apropria_Credito: boolean;
begin
   Result := DM.QEmpresaindativ.Value = 0; //industrial ou equiparado
end;

function TDM_Sped.CFOP_Vetado(CFOP: integer): boolean;
const
   vetado: array[0..71] of integer =(1000, 1100, 1150, 1200, 1250, 1300, 1350, 1400, 1450, 1500, 1550, 1600, 1900, 2000,
                                     2100, 2150, 2200, 2250, 2300, 2350, 2400, 2500, 2550, 2600, 2900, 3000, 3100, 3200,
                                     3250, 3300, 3350, 3500, 3550, 3650, 3900, 5000, 5100, 5150, 5200, 5250, 5300, 5350,
                                     5400, 5450, 5500, 5550, 5600, 5650, 5900, 6000, 6100, 6150, 6200, 6250, 6300, 6350,
                                     6400, 6500, 6550, 6600, 6650, 6900, 7000, 7100, 7200, 7250, 7300, 7350, 7500, 7550,
                                     7650, 7900);
var
   i: integer;
begin
   Result := False;

   for i := low(vetado) to High(vetado) do
   begin
      if CFOp = vetado[i] then
      begin
         Result := True;
         break;
      end;
   end;
end;


procedure TDM_Sped.Gerar_Bloco0(Dt_Inicial, Dt_Fim: TDate; Arq: string; Concomitante: Boolean; LineBuffer: integer;
                                Versao_layout: integer; Cod_Finalid: integer; motivo: string);
var
  i: integer;
begin // Alimenta o componente com informações para gerar todos os registros do Bloco 0.
   DM.QEmpresa.Open;
   Log('Sped_F','Bloco0', 'Iniciando... Perfil ' + DM.QEmpresaperfil.AsString + ' Versão ' + IntToStr(Versao_layout));
   VL_TOT_DEB  := 0; //utilizados no bloco E
   VL_TOT_CRED := 0;

  with ACBrSPEDFiscal1 do
  begin
     CancelaGeracao;
     DT_INI := Dt_Inicial;
     DT_FIN := Dt_Fim;

     if Arq = '' then
     begin
        Path   := AnsiString(Aqui('SPED FISCAL\' + FormatDateTime('yyyymm', Dt_Fim), ''));
        Arquivo:= AnsiString(Number(DM.QEmpresacnpj.AsString) + '_spedfiscal.txt');
     end
     else
     begin
        Path   := AnsiString(Aqui(C_DIRFISCO,''));
        Arquivo:= AnsiString(Arq);
     end;

     Log('Sped_F','Bloco0', path + ' ' + arquivo + Iif(Concomitante, ' Concomitante', ' Não concomitante'));

     if Concomitante then
     begin
        LinhasBuffer := LineBuffer;
     end;

     IniciaGeracao;
  end;

  with ACBrSPEDFiscal1.Bloco_0 do
  begin
    Log('Sped_F','Bloco0','Registro0000 - abertura');
    // Dados da Empresa
    with Registro0000New do
    begin
      case Versao_layout of
         100: COD_VER := vlVersao100;
         101: COD_VER := vlVersao101;
         102: COD_VER := vlVersao102;
         103: COD_VER := vlVersao103;
         104: COD_VER := vlVersao104;
         105: COD_VER := vlVersao105;
         106: COD_VER := vlVersao106;
         107: COD_VER := vlVersao107;//008 - 2014
      end;

      if Yearof(Dt_Fim) = 2013 then
         COD_VER := vlVersao106
      else
      if Yearof(Dt_Fim) = 2014 then
         COD_VER := vlVersao107;

      COD_FIN  := TACBrCodFinalidade(Cod_Finalid);//0:orig, 1: subst
      DT_INI   := Dt_Inicial;
      DT_FIN   := Dt_Fim;
      NOME     := DM.QEmpresarazao_social.AsString;
      CNPJ     := Number(DM.QEmpresacnpj.AsString);
      CPF      := '';
      UF       := DM.QEmpresauf.AsString;
      IE       := Number(DM.QEmpresaie.AsString);
      COD_MUN  := DM.QEmpresacodmun.AsInteger;
      IM       := DM.QEmpresaim.AsString;
      SUFRAMA  := '';
      IND_ATIV := TACBrAtividade(DM.QEmpresaindativ_sped.Value);
      
      if DM.QEmpresaperfil.Value = 'A' then
         IND_PERFIL := pfPerfilA
      else
      if DM.QEmpresaperfil.Value = 'B' then
         IND_PERFIL := pfPerfilB
      else
      if DM.QEmpresaperfil.Value = 'C' then
         IND_PERFIL := pfPerfilC;         
    end;

      with Registro0001New do
      begin
         IND_MOV := imComDados;
         Log('Sped_F','Bloco0','Registro0001 dados compl. empresa');

         // FILHO - Dados complementares da Empresa
         with Registro0005New do
         begin
           FANTASIA  := Clip(DM.QEmpresanome_fantasia.AsString,60);
           CEP       := Number(DM.QEmpresacep.AsString);
           ENDERECO  := Clip(DM.QEmpresalogradouro.AsString,60);
           NUM       := Clip(DM.QEmpresanumero.AsString,10);
           COMPL     := Clip(DM.QEmpresacomplem.AsString,60);
           BAIRRO    := Clip(DM.QEmpresabairro.AsString,60);
           FONE      := Number(DM.QEmpresatel1.AsString);
           FAX       := Number(DM.QEmpresafax.AsString);
           EMAIL     := DM.QEmpresaemail.AsString;
         end;

         // FILHO - Dados do contador.
         if DM.QEmpresacont_codmun.AsString = '' then
            raise Exception.Create('Dados do contador incorretos.');
         with Registro0100New do
         begin
           Log('Sped_F','Bloco0','Registro0100 - contador');
           NOME      := Clip(DM.QEmpresacont_nome.AsString,100);
           CPF       := Number(DM.QEmpresacont_cpf.AsString); // Deve ser uma informação valida
           CRC       := DM.QEmpresacont_crc.AsString;
           CNPJ      := Number(DM.QEmpresacont_cnpj.AsString);
           CEP       := Number(DM.QEmpresacont_cep.AsString);
           ENDERECO  := Clip(DM.QEmpresacont_logradouro.AsString,60);
           NUM       := Clip(DM.QEmpresacont_nmro.AsString,10);
           COMPL     := Clip(DM.QEmpresacont_complem.AsString,60);
           BAIRRO    := Clip(DM.QEmpresacont_bairro.AsString,60);
           FONE      := Number(DM.QEmpresacont_tel.AsString);
           FAX       := DM.QEmpresacont_fax.AsString;
           EMAIL     := DM.QEmpresacont_email.AsString;
           COD_MUN   := DM.QEmpresacont_codmun.AsInteger;
         end;

         //TABELA DE IDENTIFICAÇÃO DO ITEM
         Q0200.Close;
         Q0200.Params[0].AsDate := DT_INI;
         Q0200.Params[1].AsDate := DT_FIN;
         Q0200.Open;

         Log('Sped_F','Bloco0','Registro0200 - Tabela de Itens');

         while not Q0200.Eof do
         begin
            with Registro0200New do
            begin
              COD_ITEM   := Q0200id.AsString;
              DESCR_ITEM := Q0200nome.AsString;
              COD_BARRA  := Iif(ValidaEAN(Q0200cod_gtin.AsString), Q0200cod_gtin.AsString, '');
              UNID_INV   := Retorna_COD_UN(Q0200sigla_unid.AsString);
              COD_NCM    := Q0200ncm.AsString;
              COD_GEN    := Clip(Q0200ncm.AsString,2);
              ALIQ_ICMS  := Q0200icms.Value;

              i := StrToInt(Clip(Q0200destinacao.AsString,2));

              case i of
                 0:TIPO_ITEM  := tiMercadoriaRevenda;
                 1:TIPO_ITEM  := tiMateriaPrima;
                 2:TIPO_ITEM  := tiEmbalagem;
                 3:TIPO_ITEM  := tiProdutoProcesso;
                 4:TIPO_ITEM  := tiProdutoAcabado;
                 5:TIPO_ITEM  := tiSubproduto;
                 6:TIPO_ITEM  := tiProdutoIntermediario;
                 7:TIPO_ITEM  := tiMaterialConsumo;
                 8:TIPO_ITEM  := tiAtivoImobilizado;
                 9:TIPO_ITEM  := tiServicos;
                 10:TIPO_ITEM  := tiOutrosInsumos;
                 99:TIPO_ITEM  := tiOutras;
              end;
            end;
            Q0200.Next;
         end;
      
            {with Registro0400New do
            begin
              COD_NAT := '12020';
              DESCR_NAT := 'DESCRIÇÃO DA NATUREZA DE OPERAÇÃO 12020';
            end;

            with Registro0450New do
            begin
              COD_INF := '000001';
              TXT := 'INFORMAÇÃO COMPLEMENTAR DO DOCUMENTO FISCAL';
            end;
            }
           { with Registro0460New do //nao usa é dos livros fiscais
            begin
              COD_OBS := '000001';
              TXT := 'TEXTO DE OBSERVAÇÃO DO DOCUMENTO FISCAL ';
            end;
           }

         with Registro0500New do
         begin
            Log('Sped_F','Bloco0','Registro0500 - Plano de contas');
            DT_ALT     := DM.QEmpresaefd_fiscal_data.Value;
            COD_NAT_CC := Iif(DM.QEmpresaefd_fiscal_pc_nat.AsInteger = 5, '9', IntToStr(DM.QEmpresaefd_fiscal_pc_nat.AsInteger+1));
            IND_CTA    := DM.QEmpresaefd_fiscal_pc_tipo.AsString;
            NIVEL      := DM.QEmpresaefd_fiscal_pc_nivel.AsString;
            COD_CTA    := DM.QEmpresaefd_fiscal_pc_cod.AsString;
            NOME_CTA   := DM.QEmpresaefd_fiscal_pc_nome.AsString;
         end;

         with Registro0600New do
         begin
            Log('Sped_F','Bloco0','Registro0600 - centro de custos');
            DT_ALT   := DM.QEmpresaefd_fiscal_cc_data.Value;
            COD_CCUS := DM.QEmpresaefd_fiscal_cc_cod.AsString;
            CCUS     := DM.QEmpresaefd_fiscal_cc_nome.AsString;
         end;
      end;

      if Concomitante then
      begin
         ACBrSPEDFiscal1.WriteBloco_0;
      end;
   end;
end;


procedure TDM_Sped.Gerar_Bloco1(Concomitante: Boolean);
begin   // Alimenta o componente com informações para gerar todos os registros do Bloco 1.
   Log('Sped_F','Bloco1','Iniciando');
   Q1600.Close;
   Q1600.Params[0].AsDate := ACBrSPEDFiscal1.DT_INI;
   Q1600.Params[1].AsDate := ACBrSPEDFiscal1.DT_FIN;
   Q1600.Open;

  with ACBrSPEDFiscal1.Bloco_1 do
  begin
    with Registro1001New do
    begin
      IND_MOV := imComDados;
      Log('Sped_F','Bloco1','Registro1001');

      with Registro1010New do
      begin
        Log('Sped_F','Bloco1','Registro1010 - parametros');
        IND_EXP   := 'N'; // Reg. 1100 - Ocorreu averbação (conclusão) de exportação no período:
        IND_CCRF  := 'N'; // Reg. 1200 – Existem informações acerca de créditos de ICMS a serem controlados, definidos pela Sefaz:
        IND_COMB  := 'N'; // Reg. 1300 – É comercio varejista de combustíveis:
        IND_USINA := 'N'; // Reg. 1390 – Usinas de açúcar e/álcool – O estabelecimento é produtor de açúcar e/ou álcool carburante:
        IND_VA    := 'N'; // Reg. 1400 – Existem informações a serem prestadas neste registro e o registro é obrigatório em sua Unidade da Federação:
        IND_EE    := 'N'; // Reg. 1500 - A empresa é distribuidora de energia e ocorreu fornecimento de energia elétrica para consumidores de outra UF:
        IND_CART  := Iif(Q1600.IsEmpty,'N', 'S'); // Reg. 1600 - Realizou vendas com Cartão de Crédito ou de débito:
        IND_FORM  := 'N'; // Reg. 1700 - É obrigatório em sua unidade da federação o controle de utilização de documentos  fiscais em papel:
        IND_AER   := 'N'; // Reg. 1800 – A empresa prestou serviços de transporte aéreo de cargas e de passageiros:
      end;

      if not Q1600.IsEmpty then
      begin
         Log('Sped_F','Bloco1','Registro1600 - vendas com cartao');
         while not Q1600.Eof do
         begin
            with Registro1600New do
            begin
               COD_PART    := Retorna_COD_PART(Q1600oper_crt.AsString);
               TOT_CREDITO := Q1600vr_cred.Value;
               TOT_DEBITO  := Q1600vr_deb.Value;
            end;
            Q1600.Next;
         end;
      end;
    end;
  end;

  if Concomitante then
  begin
    ACBrSPEDFiscal1.WriteBloco_1;
  end;
end;

procedure TDM_Sped.Gerar_BlocoC(Concomitante: Boolean);
var
   i: integer;
begin   // Alimenta o componente com informações para gerar todos os registros do Bloco C.
   QC100.Close;
   QC100.Params[0].AsDate := ACBrSPEDFiscal1.DT_INI;
   QC100.Params[1].AsDate := ACBrSPEDFiscal1.DT_FIN;
   QC100.Open;
   Log('Sped_F','BlocoC','Iniciando...');

   with ACBrSPEDFiscal1.Bloco_C do
   begin
      with RegistroC001New do
      begin
         Log('Sped_F','BlocoC','RegistroC100 - NF');
         if QC100.IsEmpty then
         IND_MOV := imSemDados
         else
         IND_MOV := imComDados;

         while not QC100.Eof do
         begin
            with RegistroC100New do
            begin
               IND_OPER := IIf(QC100tipo.Value='E', tpEntradaAquisicao, tpSaidaPrestacao);
               IND_EMIT := IIf(Number(QC100Emit_CNPJCPF.AsString) = Number(DM.QEmpresacnpj.AsString), edEmissaoPropria, edTerceiros);
               COD_PART := IIf(QC100status.AsInteger in[2,3,4,5], '', Retorna_COD_PART(QC100Emit_CNPJCPF.AsString));
               COD_MOD  := format('%.2d',[QC100Ide_modelo.Value]);
               COD_SIT  := TACBrSituacaoDocto(QC100status.AsInteger);
               SER      := format('%.3d',[QC100Ide_serie.Value]);
               NUM_DOC  := format('%.9d',[QC100Ide_nNF.Value]);
               CHV_NFE  := IIf(QC100status.AsInteger in[5,6,7], '',QC100chave.AsString);
               DT_DOC   := QC100Ide_dEmi.Value;
               DT_E_S   := QC100Ide_dSaiEnt.Value;
               IND_PGTO := TACBrTipoPagamento(QC100Ide_indPag.Value);

{
00 - Doc regular
01 - Escrit extemp de doc regular
02 - Doc canc
03 - Escrit extemp de doc canc
04 - deneg
05 - Nº inut
06 - Doc Fiscal Compl
07 - Escrit extemp de doc complem
08 - Regime Espec Norma Espec
99 em andam
105 em proc
100 OK
}

               if not (QC100status.AsInteger in[2,3,4,5,6,7]) then
               begin
                  //nf-e = mfContaEmitente, mfContaDestinatario, mfContaTerceiros, mfSemFrete
                  //sped = tfPorContaTerceiros,tfPorContaEmitente,tfPorContaDestinatario,tfSemCobrancaFrete, tfNenhum
                  case QC100modFrete.Value of
                     0: IND_FRT := tfPorContaEmitente;
                     1: IND_FRT := tfPorContaDestinatario;
                     2: IND_FRT := tfPorContaTerceiros;
                     3: IND_FRT := tfSemCobrancaFrete;
                     4: IND_FRT := tfNenhum;
                  end;

                  VL_DOC     := QC100ICMSTot_vNF.Value;
                  IND_PGTO   := TACBrTipoPagamento(QC100Ide_indPag.Value);
                  VL_DESC    := QC100ICMSTot_vDesc.Value;
                  VL_ABAT_NT := 0;
                  VL_MERC    := QC100ICMSTot_vProd.Value;
                  VL_SEG     := QC100ICMSTot_vSeg.Value;
                  VL_OUT_DA  := QC100ICMSTot_vOutro.Value;

                  if (Apropria_Credito)or(IND_EMIT = edEmissaoPropria) then
                  begin
                     Log('Sped_F','BlocoC','RegistroC100 - apropriação crédito ou Em. pr.');
                     VL_BC_ICMS    := QC100ICMSTot_vBC.Value;
                     VL_ICMS       := QC100ICMSTot_vICMS.Value;
                     VL_BC_ICMS_ST := QC100ICMSTot_vBCST.Value;
                     VL_ICMS_ST    := QC100ICMSTot_vST.Value;
                     VL_IPI        := QC100ICMSTot_vIPI.Value;//Iif(DM.QEmpresacontr_ipi.Value='S', QC100ICMSTot_vIPI.Value,0);
                     VL_PIS        := QC100ICMSTot_vPIS.Value;
                     VL_COFINS     := QC100ICMSTot_vCOFINS.Value;
                     VL_PIS_ST     := QC100retTrib_vRetPIS.Value;
                     VL_COFINS_ST  := QC100retTrib_vRetCOFINS.Value;
                  end;
               end;

              //informações complementares - canceladas nao entram
               if (QC100status.Value in [0,6,8]) and(QC100infCpl.AsString <> C_ST_VAZIO) then
               begin
                  i := ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0450.Count + 1;

                  with ACBrSPEDFiscal1.Bloco_0.Registro0450New do
                  begin
                     Log('Sped_F','Bloco0','Registro0450 - Registro de inf compl.');
                     COD_INF := format('%.6d',[i]);
                     TXT     := Clip(buscaTroca(QC100infCpl.AsString, #10, ''),255);
                     TXT     := buscaTroca(TXT, #13, ' ');
                     TXT     := buscaTroca(TXT, '|', ' ');
                  end;


                  //INFORMAÇÃO COMPLEMENTAR DA NOTA FISCAL
                  with RegistroC110New do
                  begin
                     Log('Sped_F','BlocoC','RegistroC110 - inf compl ds NF');
                     COD_INF   := format('%.6d',[i]);
                     TXT_COMPL := Trim(Copy(QC100infCpl.AsString, 256, 255)); // se o texto de  Registro0450 for > 250, completa aqui
                     TXT_COMPL := buscaTroca(TXT_COMPL, #10, '');
                     TXT_COMPL := buscaTroca(TXT_COMPL, #13, '');
                     TXT_COMPL := buscaTroca(TXT_COMPL, '|', ' ');

                     // Gera o registro de GUIAS DE ARRECADAÇÃO

                     if IND_OPER = tpEntradaAquisicao then
                     begin
                        QC112.Close;
                        QC112.Open;
                        QC112.First;
                        Log('Sped_F','BlocoC','RegistroC112 - guias de arrec.');

                        while not QC112.Eof do
                        begin
                           with RegistroC112New do
                           begin
                              COD_DA  := TACBrDoctoArrecada(QC112cod_da.Value);
                              UF      := QC112uf.AsString;
                              NUM_DA  := QC112nmro.AsString;
                              COD_AUT := QC112cod_aut.AsString;
                              VL_DA   := QC112valor.Value;
                              DT_VCTO := QC112dt_venc.Value;
                              DT_PGTO := QC112dt_pag.Value;
                           end;
                           QC112.Next;
                        end;
                     end;

   // Gera o registro de referenciados (menos ECF -> RefECF_modelo <=0)
                     if IND_OPER = tpEntradaAquisicao then
                     begin
                        QC113E.Close;
                        QC113E.Open;
                        QC113E.First;
                     {· para documentos emitidos por terceiros: campos IND_EMIT, COD_PART, COD_MOD, SER e NUM_DOC.
                     · para documentos de emissão própria:      campos IND_EMIT, COD_MOD, SER e NUM_DOC.}
                        Log('Sped_F','BlocoC','RegistroC113 - referenciados entr');

                        while not QC113E.Eof do
                        begin
                           with RegistroC113New do
                           begin
                              if QC113ERefNF_nNF.Value > 0 then //nf 01, 55 etc (normal)
                              begin
                                 IND_OPER := tpEntradaAquisicao; //0=entr 1=saida
                                 IND_EMIT := IIf(Number(QC100Emit_CNPJCPF.AsString) = Number(DM.QEmpresacnpj.AsString), edEmissaoPropria, edTerceiros);
                                 COD_PART := IIf(Number(QC100Emit_CNPJCPF.AsString) = Number(DM.QEmpresacnpj.AsString), '', Number(QC100Emit_CNPJCPF.AsString));
                                 SER      := FormatFloat('000',QC113ERefNF_serie.Value);
                                 SUB      := '';
                                 NUM_DOC  := QC113ERefNF_nNF.AsString;
                                 DT_DOC   := QC100Ide_dEmi.Value;
                              end //nf 01, 55 etc fim
                              else
                              if QC113ERefNFP_nNF.Value > 0 then //mod 04 produtor rural
                              begin
                                 IND_OPER := tpEntradaAquisicao; //0=entr 1=saida
                                 IND_EMIT := IIf(Number(QC100Emit_CNPJCPF.AsString) = Number(DM.QEmpresacnpj.AsString), 0, 1);
                                 COD_PART := IIf(Number(QC100Emit_CNPJCPF.AsString) = Number(DM.QEmpresacnpj.AsString), '', Number(QC100Emit_CNPJCPF.AsString));
                                 SER      := FormatFloat('000',QC113ERefNFP_serie.Value);
                                 SUB      := '';
                                 NUM_DOC  := QC113ERefNFP_nNF.AsString;
                                 DT_DOC   := QC100Ide_dEmi.Value;
                              end;//mod 04 fim
                           end;
                           QC113E.Next;
                        end; //qc113E loop fim
                     end //nf entrada fim
                     else
                     begin //nf de saida
                        QC113S.Close;
                        QC113S.Open;
                        QC113S.First;
                        {· para documentos emitidos por terceiros: campos IND_EMIT, COD_PART, COD_MOD, SER e NUM_DOC.
                        · para documentos de emissão própria:      campos IND_EMIT, COD_MOD, SER e NUM_DOC.}
                        Log('Sped_F','BlocoC','RegistroC113 - referenciados saidas');

                        while not QC113S.Eof do
                        begin
                           with RegistroC113New do
                           begin
                              if QC113SRefNF_nNF.Value > 0 then//01, 55 nf normal
                              begin
                                 IND_OPER := tpSaidaPrestacao; //0=entr 1=saida
                                 IND_EMIT := IIf(Number(QC100Emit_CNPJCPF.AsString) = Number(DM.QEmpresacnpj.AsString), 0, 1);
                                 COD_PART := IIf(Number(QC100Emit_CNPJCPF.AsString) = Number(DM.QEmpresacnpj.AsString), '', Number(QC100Emit_CNPJCPF.AsString));
                                 SER      := FormatFloat('000',QC113SRefNF_serie.Value);
                                 SUB      := '';
                                 NUM_DOC  := QC113SRefNF_nNF.AsString;
                                 DT_DOC   := QC100Ide_dEmi.Value;
                              end
                              else
                              if QC113SRefNFP_nNF.Value > 0 then//nf mod 04 produtor rural
                              begin
                                 IND_OPER := tpSaidaPrestacao; //0=entr 1=saida
                                 IND_EMIT := IIf(Number(QC100Emit_CNPJCPF.AsString) = Number(DM.QEmpresacnpj.AsString), 0, 1);
                                 COD_PART := IIf(Number(QC100Emit_CNPJCPF.AsString) = Number(DM.QEmpresacnpj.AsString), '', Number(QC100Emit_CNPJCPF.AsString));
                                 SER      := FormatFloat('000',QC113SRefNFP_serie.Value);
                                 SUB      := '';
                                 NUM_DOC  := QC113SRefNFP_nNF.AsString;
                                 DT_DOC   := QC100Ide_dEmi.Value;
                              end;
                           end;
                           QC113S.Next;
                        end;//qc113 loop fim

                     // Gera o registro de referenciados (ECF)

                        QC114.Close;
                        QC114.Open;
                        QC114.First;
                        Log('Sped_F','BlocoC','RegistroC114 - referenciados ecf');

                        while not QC114.Eof do
                        begin
                           with RegistroC114New do
                           begin
                              COD_MOD := '2D';
                              ECF_FAB := QC114RefECF_Serie.AsString;
                              ECF_CX  := QC114RefECF_nECF.AsString;
                              NUM_DOC := QC114RefECF_nCOO.AsString;
                              DT_DOC  := QC114RefECF_data.Value;
                           end;
                           QC114.Next;
                        end; //qc114 loop fim
                     end;
                  end;
               end;//nf saida fim

               { Gera o registro de importação apenas para notas de entrada
               if IND_OPER = tpEntradaAquisicao then
               begin
               with RegistroC120New do
               begin
               COD_DOC_IMP := diSimplificadaImport;
               NUM_DOC__IMP := '1024879531';
               PIS_IMP := 0.00;
               COFINS_IMP := 0.00;
               NUM_ACDRAW := '';
               end;
               end; }

               { Gera registros específicos para notas emitidas por terceiros e de prestação
               if (IND_EMIT = edTerceiros) and (IND_OPER = tpSaidaPrestacao) then
               begin
               with RegistroC130New do
               begin
               VL_SERV_NT := 10.12;
               VL_BC_ISSQN := 10.12;
               VL_ISSQN := 10.12;
               VL_BC_IRRF := 10.12;
               VL_IRRF := 10.12;
               VL_BC_PREV := 10.12;
               VL_PREV := 10.12;
               end;
               end;  }


               // REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).
               if IND_OPER = tpEntradaAquisicao then //entradas
               begin
                  QC170E.Close;
                  QC170E.Open;
                  QC170E.First;
                  Log('Sped_F','BlocoC','RegistroC170 - itens NF entr');
                  while not QC170E.Eof do
                  begin
                     with RegistroC170New do // Inicio Adicionar os Itens:
                     begin
                        NUM_ITEM     := QC170EnItem.AsString;
                        COD_ITEM     := QC170EcProd.AsString;
                        DESCR_COMPL  := QC170ExProd.AsString;
                        QTD          := QC170EqCom.Value;
                        UNID         := Retorna_COD_UN(QC170EuCom.AsString);
                        VL_ITEM      := QC170EvProd.Value;
                        VL_DESC      := QC170EvDesc.Value;
                        IND_MOV      := mfSim;
                        CFOP         := QC170ECFOP_inform.AsString;
                        COD_NAT      := Retorna_COD_NAT(QC100Ide_natOp.AsString);
                        COD_CTA      := DM.QEmpresaefd_fiscal_pc_cod.AsString;

                        if QC170EICMS_CSOSN_inform.Value > 0 then
                           CST_ICMS := C_ARR_4[QC170EICMS_CSOSN_inform.Value]
                        else
                           CST_ICMS := C_ARR_5[QC170EICMS_CST_inform.Value];

                        if Apropria_Credito then
                        begin
                           VL_BC_ICMS       := QC170EICMS_vBC.Value;
                           ALIQ_ICMS        := QC170EICMS_pICMS.Value;
                           VL_ICMS          := QC170EICMS_vICMS.Value;
                           VL_BC_ICMS_ST    := QC170EICMS_vBCST.Value;
                           ALIQ_ST          := QC170EICMS_pICMSST.Value;
                           VL_ICMS_ST       := QC170EICMS_vICMSST.Value;
                           IND_APUR         := iaMensal;

                           if DM.QEmpresacontr_ipi.Value = 'S' then
                           begin
                              CST_IPI   := C_ARR_3[QC170EIPI_CST.Value];
                              COD_ENQ   := ''; //QC170EIPI_clEnq.AsString; //Campo 21 - Não preencher.
                              VL_BC_IPI := QC170EIPI_vBC.Value;
                              ALIQ_IPI  := QC170EIPI_pIPI.Value;
                              VL_IPI    := QC170EIPI_vIPI.Value;
                           end;

                           CST_PIS          := C_ARR_9[QC170EPIS_CST.Value];
                           VL_BC_PIS        := QC170EPIS_vBC.Value;
                           ALIQ_PIS_PERC    := QC170EPIS_pPIS.Value;
                           QUANT_BC_PIS     := QC170EPIS_qBCProd.Value;
                           ALIQ_PIS_R       := QC170EPIS_vAliqProd.Value;
                           VL_PIS           := QC170EPIS_vPIS.Value;

                           CST_COFINS       := C_ARR_9[QC170ECOFINS_CST.Value];
                           VL_BC_COFINS     := QC170ECOFINS_vBC.Value;
                           ALIQ_COFINS_PERC := QC170ECOFINS_pCOFINS.Value;
                           QUANT_BC_COFINS  := QC170ECOFINS_qBCProd.Value;
                           ALIQ_COFINS_R    := QC170ECOFINS_vAliqProd.Value;
                           VL_COFINS        := QC170ECOFINS_vCOFINS.Value;
                        end;
                     end;
                     QC170E.Next;
                  end;//qc170 loop fim
               end //entradas fim
               else
               if QC100status.AsInteger in[0,6,8] then //saidas - canceladas nao entram
               begin
                 { QC170S.Close;
                  QC170S.Open;
                  QC170S.First;
                  Log('Sped_F','BlocoC','RegistroC170 - itens NF saidas');

                  if (IND_EMIT = edEmissaoPropria)and(IND_OPER = tpSaidaPrestacao) then
                  while not QC170S.Eof do
                  begin
                     with RegistroC170New do // Inicio Adicionar os Itens:
                     begin
                        NUM_ITEM     := QC170SnItem.AsString;
                        COD_ITEM     := QC170ScProd.AsString;
                        DESCR_COMPL  := QC170SxProd.AsString;
                        QTD          := QC170SqCom.Value;
                        UNID         := Retorna_COD_UN(QC170SuCom.AsString);
                        VL_ITEM      := QC170SvProd.Value;
                        VL_DESC      := QC170SvDesc.Value;
                        IND_MOV      := mfSim;
                        CFOP         := QC170SCFOP.AsString;
                        COD_NAT      := Retorna_COD_NAT(QC100Ide_natOp.AsString);
                        COD_CTA      := DM.QEmpresaefd_fiscal_pc_cod.AsString;

                        if QC170SICMS_CSOSN.Value > 0 then
                           CST_ICMS := C_ARR_4[QC170SICMS_CSOSN.Value]
                        else
                           CST_ICMS := C_ARR_5[QC170SICMS_CST.Value];

                        VL_BC_ICMS       := QC170SICMS_vBC.Value;
                        ALIQ_ICMS        := QC170SICMS_pICMS.Value;
                        VL_ICMS          := QC170SICMS_vICMS.Value;
                        VL_BC_ICMS_ST    := QC170SICMS_vBCST.Value;
                        ALIQ_ST          := QC170SICMS_pICMSST.Value;
                        VL_ICMS_ST       := QC170SICMS_vICMSST.Value;
                        IND_APUR         := iaMensal;

                        if DM.QEmpresacontr_ipi.Value = 'S' then
                        begin
                           CST_IPI   := C_ARR_3[QC170SIPI_CST.Value];
                           COD_ENQ   := ''; //QC170SIPI_clEnq.AsString; //Campo 21 - Não preencher.
                           VL_BC_IPI := QC170SIPI_vBC.Value;
                           ALIQ_IPI  := QC170SIPI_pIPI.Value;
                           VL_IPI    := QC170SIPI_vIPI.Value;
                        end;

                        CST_PIS          := C_ARR_9[QC170SPIS_CST.Value];
                        VL_BC_PIS        := QC170SPIS_vBC.Value;
                        ALIQ_PIS_PERC    := QC170SPIS_pPIS.Value;
                        QUANT_BC_PIS     := QC170SPIS_qBCProd.Value;
                        ALIQ_PIS_R       := QC170SPIS_vAliqProd.Value;
                        VL_PIS           := QC170SPIS_vPIS.Value;

                        CST_COFINS       := C_ARR_9[QC170SCOFINS_CST.Value];
                        VL_BC_COFINS     := QC170SCOFINS_vBC.Value;
                        ALIQ_COFINS_PERC := QC170SCOFINS_pCOFINS.Value;
                        QUANT_BC_COFINS  := QC170SCOFINS_qBCProd.Value;
                        ALIQ_COFINS_R    := QC170SCOFINS_vAliqProd.Value;
                        VL_COFINS        := QC170SCOFINS_vCOFINS.Value;
                     end; // Fim dos Itens;
                     QC170S.Next;
                  end;//QC170S loop fim}
               end;//saidas fim

               // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55).

               if (IND_OPER = tpEntradaAquisicao)and(QC100status.Value in [0,6,8]) then //entradas
               begin
                  QC190E.Close;
                  QC190E.Open;
                  QC190E.First;
                  Log('Sped_F','BlocoC','RegistroC190 - analitico NF entr');

                  while not QC190E.Eof do
                  begin
                     with RegistroC190New do
                     begin
                        if QC190EICMS_CSOSN.Value > 0 then
                           CST_ICMS := C_ARR_4[QC190EICMS_CSOSN.Value]
                        else
                           CST_ICMS := C_ARR_5[QC190EICMS_CST.Value];

                        CFOP           := QC190ECFOP.AsString;
                        VL_OPR         := QC190EvTotal.Value;

                        if Apropria_Credito then
                        begin
                           VL_BC_ICMS     := QC190EvBC.Value;
                           VL_RED_BC      := QC190EvRedBC.Value;
                           ALIQ_ICMS      := QC190EICMS_pICMS.Value;
                           VL_ICMS        := QC190EICMS_vICMS.Value;
                           VL_BC_ICMS_ST  := QC190EICMS_vBCST.Value;
                           VL_ICMS_ST     := QC190EICMS_vICMSST.Value;
                           VL_IPI         := QC190EIPI_vIPI.Value;
                           VL_TOT_CRED    := VL_TOT_CRED + QC190EICMS_vICMS.Value;  //usado no bloco E
                        end;

                        COD_OBS        := '';

                        //OBSERVAÇOES DO LANÇAMENTO FISCAL
                        if QC100infAdFisco.AsString <> C_ST_VAZIO then
                        begin
                           with RegistroC195New do
                           begin
                              COD_OBS   := Retorna_COD_OBS('Substituição Tributária destacada na NF');
                              TXT_COMPL := QC100infAdFisco.AsString;
                           end;
                           COD_OBS := Retorna_COD_OBS('Substituição Tributária destacada na NF');
                        end;
                     end;

                     QC190E.Next;
                  end;//QC190E loop fim
               end //entradas fim
               else
               if (IND_OPER = tpSaidaPrestacao)and(QC100status.Value in [0,6,8]) then //saidas - canceladas nao entram
               begin
                  QC190S.Close;
                  QC190S.Open;
                  QC190S.First;
                  Log('Sped_F','BlocoC','RegistroC190 - analitico NF saidas');

                  while not QC190S.Eof do
                  begin
                     with RegistroC190New do
                     begin
                        if QC190SICMS_CSOSN.Value > 0 then
                        CST_ICMS := C_ARR_4[QC190SICMS_CSOSN.Value]
                        else
                        CST_ICMS := C_ARR_5[QC190SICMS_CST.Value];

                        CFOP           := QC190SCFOP.AsString;
                        ALIQ_ICMS      := QC190SICMS_pICMS.Value;
                        VL_OPR         := QC190SvTotal.Value;
                        VL_BC_ICMS     := QC190SvBC.Value;
                        VL_ICMS        := QC190SICMS_vICMS.Value;
                        VL_BC_ICMS_ST  := QC190SICMS_vBCST.Value;
                        VL_ICMS_ST     := QC190SICMS_vICMSST.Value;
                        VL_RED_BC      := QC190SvRedBC.Value;
                        VL_IPI         := Iif(DM.QEmpresacontr_ipi.Value='S', QC190SIPI_vIPI.Value, 0);
                        COD_OBS        := '';
                        VL_TOT_DEB := VL_TOT_DEB + QC190SICMS_vICMS.Value;  //usado no bloco E
                     end; // Fim dos Itens;
                     QC190S.Next;
                  end;
               end;//saidas fim

               if Concomitante then
               begin             // Grava registros na memoria para o TXT, e limpa memoria
                  ACBrSPEDFiscal1.WriteBloco_C(False); // False, NAO fecha o Bloco
                  Application.ProcessMessages;
               end;
               QC100.Next;
            end;//fim do loop QC100
         end;//c100 fim

         //notas fiscais serie D
         //C300 320 321 - PERFIL B

         if Bloco_0.Registro0000.IND_PERFIL = pfPerfilB then
         begin
            QC300.Close;
            QC300.Params[0].AsDate := ACBrSPEDFiscal1.DT_INI;
            QC300.Params[1].AsDate := ACBrSPEDFiscal1.DT_FIN;
            QC300.Open;

            if (ACBrSPEDFiscal1.Bloco_C.RegistroC001.IND_MOV = imSemDados)and
               (not QC300.RecordCount > 0) then
               ACBrSPEDFiscal1.Bloco_C.RegistroC001.IND_MOV := imComDados;


            //C300 RESUMO DIÁRIO DAS NOTAS FISCAIS DE VENDA A CONSUMIDOR
            Log('Sped_F','BlocoC','RegistroC300 - resumo diario NF serie D');

            while not QC300.Eof do
            begin
               with RegistroC300New do
               begin
                  COD_MOD     := '02';
                  SER         := DM_INI.ini.StoredValue['nfmod2_serie'];
                  SUB         := DM_INI.ini.StoredValue['nfmod2_subserie'];
                  NUM_DOC_INI := FormatFloat('000000', QC300nmro_nf_ini.Value);
                  NUM_DOC_FIN := FormatFloat('000000', QC300nmro_nf_fin.Value);
                  DT_DOC      := QC300dt_movi.Value;
                  VL_DOC      := QC300vr_doc.Value;
                  VL_PIS      := QC300vpis.Value;
                  VL_COFINS   := QC300vcofins.Value;
                  COD_CTA     := DM.QEmpresaefd_fiscal_pc_cod.AsString;
               end;//fim C300 resumo diario

               //DOCUMENTOS CANCELADOS DE NOTAS FISCAIS DE VENDA A CONSUMIDOR

               QC310.Close;
               QC310.Open;
               Log('Sped_F','BlocoC','RegistroC310 - serie D cancelados');

               while not QC310.Eof do
               begin
                  with RegistroC310New do
                  begin
                     NUM_DOC_CANC := FormatFloat('000000', QC310nmro_nf.Value);
                  end;
                  QC310.Next;
               end;

               QC300.Next;
            end;//fim QC300 loop

            //REGISTRO ANALÍTICO DO RESUMO DIÁRIO DAS NOTAS FISCAIS DE VENDA A CONSUMIDOR

            QC320.Close;
            Log('Sped_F','BlocoC','RegistroC320 - analitico serie D');
            QC320.Params[0].AsDate := ACBrSPEDFiscal1.DT_INI;
            QC320.Params[1].AsDate := ACBrSPEDFiscal1.DT_FIN;
            QC320.Open;

            while not QC320.Eof do
            begin
               with RegistroC320New do
               begin
                  CST_ICMS   := FormatFloat('000', QC320cst.AsInteger);
                  CFOP       := QC320cfop.AsString;
                  ALIQ_ICMS  := QC320aliq.Value;
                  VL_OPR     := QC320vr_oper.Value;
                  VL_BC_ICMS := QC320bc.Value;
                  VL_ICMS    := QC320vr_icms.Value;
                  VL_RED_BC  := 0;
                  COD_OBS    := '';
                  VL_TOT_DEB := VL_TOT_DEB + QC320vr_ICMS.Value;  //usado no bloco E
               end;

               //ITENS DO RESUMO DIÁRIO DOS DOCUMENTOS NOTAS FISCAIS DE VENDA A CONSUMIDOR

               QC321.Close;
               QC321.Open;
               Log('Sped_F','BlocoC','RegistroC321 - resumo diario serie D');

               while not QC321.Eof do
               begin
                  with RegistroC321New do
                  begin
                     COD_ITEM   := QC321codigo.AsString;
                     QTD        := QC321qtd.Value;
                     UNID       := Clip(QC321unid.AsString,2);
                     VL_ITEM    := QC321total.Value;
                     VL_DESC    := QC321desconto.Value;
                     VL_BC_ICMS := QC321bc.Value;
                     VL_ICMS    := QC321vr_icms.Value;
                     VL_PIS     := QC321vpis.Value;
                     VL_COFINS  := QC321vcofins.Value;
                  end;
                  QC321.Next;
               end;
               QC320.Next;
            end;
         end //perfil B fim
         else
         if Bloco_0.Registro0000.IND_PERFIL <> pfPerfilB then //C350 370 390 - PERFIL A ou C
         begin
            //NOTA FISCAL DE VENDA A CONSUMIDOR
            QC350.Close;
            QC350.Params[0].AsDate := ACBrSPEDFiscal1.DT_INI;
            QC350.Params[1].AsDate := ACBrSPEDFiscal1.DT_FIN;
            QC350.Open;
            Log('Sped_F','BlocoC','RegistroC350 - NF serie D');

            if (ACBrSPEDFiscal1.Bloco_C.RegistroC001.IND_MOV = imSemDados)and
               (not QC350.RecordCount > 0) then
               ACBrSPEDFiscal1.Bloco_C.RegistroC001.IND_MOV := imComDados;

            while not QC350.Eof do
            begin
               with RegistroC350New do
               begin
                  SER       := QC350serie.AsString;
                  SUB_SER   := '';
                  NUM_DOC   := FormatFloat('000000', QC350nmro_nf.Value);
                  CNPJ_CPF  := Number(QC350cnpj_cliente.AsString);
                  DT_DOC    := QC350dt_movi.Value;
                  VL_MERC   := QC350vr_merc.Value;
                  VL_DESC   := QC350vr_desc.Value;
                  VL_PIS    := QC350vpis.Value;
                  VL_COFINS := QC350vcofins.Value;
                  COD_CTA   := DM.QEmpresaefd_fiscal_pc_cod.AsString;
               end;//C350 fim

               //ITENS DO DOCUMENTO
               QC370.Close;
               QC370.Open;
               Log('Sped_F','BlocoC','RegistroC370 - itens Serie D');

               while not QC370.Eof do
               begin
                  with RegistroC370New do
                  begin
                     NUM_ITEM := FormatFloat('000', QC370item.Value);
                     COD_ITEM := QC370codigo.AsString;
                     QTD      := QC370qtd.Value;
                     UNID     := Retorna_COD_UN(QC370unid.AsString);
                     VL_ITEM  := QC370total.Value;
                     VL_DESC  := QC370desconto.Value;
                  end;//C370 fim
                  QC370.Next;
               end;
               //REGISTRO ANALÍTICO DAS NOTAS FISCAIS DE VENDA A CONSUMIDOR

               QC390.Close;
               QC390.Open;
               Log('Sped_F','BlocoC','RegistroC390 - analitico serie D');

               while not QC390.Eof do
               begin
                  with RegistroC390New do
                  begin
                     CST_ICMS   := FormatFloat('000', QC390cst.value);
                     CFOP       := QC390cfop.AsString;
                     ALIQ_ICMS  := QC390aliq.Value;
                     VL_OPR     := QC390vr_oper.Value;
                     VL_BC_ICMS := QC390bc.Value;
                     VL_ICMS    := QC390vr_icms.Value;
                     VL_RED_BC  := 0;
                     COD_OBS    := '';
                     VL_TOT_DEB := VL_TOT_DEB + QC390vr_icms.Value;  //usado no bloco E
                  end;
                  QC390.Next;
               end;

               QC350.Next;
            end; //QC350 loop fim
         end;//perfil A ou C fim

         //REGISTRO C400 - EQUIPAMENTO ECF (CÓDIGO 02 e 2D).

         QC400.Close;//lista todos os ECF
         QC400.Open;

         QC405.Close;
         QC405.Params[0].AsDate := ACBrSPEDFiscal1.DT_INI;
         QC405.Params[1].AsDate := ACBrSPEDFiscal1.DT_FIN;

         while not QC400.Eof do
         begin
            QC405.Close;//obtem todas as RZ do ECF
            QC405.Open;
            QC405.First;

            if QC405.IsEmpty then  //se nao tem reduçoes z deste ECF, pula
            begin
               QC400.Next;
               continue;
            end;

            if (ACBrSPEDFiscal1.Bloco_C.RegistroC001.IND_MOV = imSemDados) then
               ACBrSPEDFiscal1.Bloco_C.RegistroC001.IND_MOV := imComDados;

            Log('Sped_F','BlocoC','RegistroC400 - ECF');

            With RegistroC400New do
            begin
               COD_MOD := '2D';
               ECF_MOD := Clip(QC400modelo.AsString,20);
               ECF_FAB := QC400serie.AsString;
               ECF_CX  := FormatFloat('000', QC400nmro.value);

               //REDUÇÃO Z
               Log('Sped_F','BlocoC','RegistroC405 - Red Z');

               while not QC405.Eof do
               begin
                  With RegistroC405New do
                  begin
                     DT_DOC      := QC405dt_movi.Value;
                     CRO         := QC405cro.Value;
                     CRZ         := QC405crz.Value;
                     NUM_COO_FIN := QC405coo.Value;
                     GT_FIN      := QC405valor_gt.Value;
                     VL_BRT      := QC405venda_bruta.Value;

                     if QC405venda_bruta.Value > 0 then//so gera estes se houver venda bruta
                     begin
                        //PIS E COFINS TOTALIZADOS NO DIA  - filho de 405

                        QC410.Close;
                        QC410.Open;
                        Log('Sped_F','BlocoC','RegistroC410 - pis cofins');

                        while not QC410.Eof do
                        begin
                           With RegistroC410New do
                           begin
                              VL_PIS    := QC410vpis.Value;
                              VL_COFINS := QC410vcofins.Value;
                           end;
                           QC410.Next;
                        end;

                        // REGISTRO DOS TOTALIZADORES PARCIAIS DA REDUÇÃO Z  - filho de 405

                        QC420.Close;
                        QC420.Open;
                        Log('Sped_F','BlocoC','RegistroC420 - totalizadores');

                        while not QC420.Eof do
                        begin
                           With RegistroC420New do
                           begin
                              COD_TOT_PAR  := QC420cod_tot_parcial.AsString;
                              VLR_ACUM_TOT := QC420valor_tot_parcial.Value;

                              if number(Copy(QC420cod_tot_parcial.AsString,4,4))<>'' then
                              begin
                                 NR_TOT  := StrToInt(Copy(QC420cod_tot_parcial.AsString,1,2));
                                 //DESCR_NR_TOT := 'Totalizador ' + Copy(QC420cod_tot_parcial.AsString,4,4);
                              end;

                              { Gera este registro somente para empresas do pergil B de apresentação }
                              if Bloco_0.Registro0000.IND_PERFIL = pfPerfilB then
                              begin
                                 //RESUMO DE ITENS DO MOVIMENTO DIÁRIO - filho de 420
                                 QC425.Close;
                                 QC425.Params[1].AsString := QC420cod_tot_parcial.AsString;
                                 QC425.Open;
                                 Log('Sped_F','BlocoC','RegistroC425 ' + QC420cod_tot_parcial.AsString);

                                 while not QC425.Eof do
                                 begin
                                    With RegistroC425New do
                                    begin
                                       COD_ITEM  := QC425codigo.AsString;
                                       QTD       := QC425qtd.Value;
                                       UNID      := Retorna_COD_UN(QC425unid.AsString);
                                       VL_ITEM   := QC425vritem.Value;
                                       VL_PIS    := QC425vpis.Value;
                                       VL_COFINS := QC425vcofins.Value;
                                    end;
                                    QC425.Next;
                                 end;//c425 loop fim
                              end;//perfilB fim
                           end;
                           QC420.Next;
                        end;//C420 loop fim
                     end;

                     if Bloco_0.Registro0000.IND_PERFIL <> pfPerfilB then
                     begin
                        //DOCUMENTO FISCAL EMITIDO POR ECF
                        QC460.Close;
                        QC460.Open;
                        Log('Sped_F','BlocoC','RegistroC460 - CF ecf');

                        while not QC460.Eof do
                        begin
                           with REgistroC460New do
                           begin
                              COD_MOD   := QC460cod_mod.AsString;
                              COD_SIT   := TACBrSituacaoDocto(QC460cod_sit.AsInteger);
                              NUM_DOC   := FormatFloat('000000', QC460coo.Value);

                              if QC460cod_sit.AsInteger <> 2 then //2=cancelado
                              begin
                                 DT_DOC    := QC460dt_em.Value;
                                 VL_DOC    := QC460vr_liq.Value;
                                 VL_PIS    := QC460vpis.Value;
                                 VL_COFINS := QC460vcofins.Value;
                                 CPF_CNPJ  := Number(QC460cnpj_cliente.AsString);
                                 NOM_ADQ   := Clip(QC460nome_cliente.AsString,60);

                                 //ITENS DO DOCUMENTO FISCAL EMITIDO POR ECF

                                 QC470.Close;
                                 QC470.Open;
                                 Log('Sped_F','BlocoC','RegistroC470 - itens CF ecf');

                                 while not QC470.Eof do
                                 begin
                                    with RegistroC470New do
                                    begin
                                       COD_ITEM  := QC470cProd.AsString;
                                       QTD       := QC470qtd.Value;
                                       QTD_CANC  := QC470qtd_canc.Value;
                                       UNID      := Retorna_COD_UN(QC470unid.AsString);
                                       VL_ITEM   := QC470total.Value;
                                       CST_ICMS  := FormatFloat('000', QC470cst.Value);
                                       CFOP      := QC470cfop.AsString;
                                       ALIQ_ICMS := QC470aliq.Value;
                                       VL_PIS    := QC470vpis.Value;
                                       VL_COFINS := QC470vcofins.Value;
                                    end;
                                    QC470.Next;
                                 end;//qc470 loop fim
                              end;
                           end;//C460 fim
                           QC460.Next;
                        end;//qc460 loop fim
                     end;//<> perfil B fim
                  end;//C405 fim


                  // REGISTRO ANALÍTICO DO MOVIMENTO DIÁRIO - filho 405

                  QC490.Close;
                  QC490.Open;
                  Log('Sped_F','BlocoC','RegistroC490 - analitico ECF');

                  while not QC490.Eof do
                  begin
                     with RegistroC490New do
                     begin
                        CST_ICMS   := FormatFloat('000', QC490cst.Value);;
                        CFOP       := QC490cfop.AsString;
                        ALIQ_ICMS  := QC490aliq.Value;
                        VL_OPR     := QC490vr_oper.Value;
                        VL_BC_ICMS := QC490bc.Value;
                        VL_ICMS    := QC490vr_icms.Value;
                        COD_OBS    := '';
                        VL_TOT_DEB := VL_TOT_DEB + QC490vr_icms.Value;
                     end;
                     QC490.Next;
                  end;

                  QC405.Next;
               end;//qc405 loop fim
            end;
            QC400.Next;
         end;//qc400 loop fim
      end;//C001 fim
   end;

   if Concomitante then
   begin
      ACBrSPEDFiscal1.WriteBloco_C(True); // True, fecha o Bloco
   end;
end;

procedure TDM_Sped.Gerar_BlocoD(Concomitante: Boolean);
begin
  // Alimenta o componente com informações para gerar todos os registros do Bloco D.
  with ACBrSPEDFiscal1.Bloco_D do
  begin
    with RegistroD001New do
    begin
      Log('Sped_F','BlocoD','sem dados');
      IND_MOV := imSemDados;
     {
      with RegistroD100New do
      begin
        IND_OPER := tpEntradaAquisicao;
        IND_EMIT := edTerceiros;
        COD_PART := '000001';
        COD_MOD := '57';
        COD_SIT := sdRegular;
        SER := '1';
        NUM_DOC := '012345';
        CHV_CTE := '';
        DT_DOC := DT_FIN - 1; //StrToDate('30/11/2011');
        DT_A_P := DT_FIN - 1; //StrToDate('30/11/2011');
        TP_CT_e := '1';
        VL_DOC := 100.00;
        VL_DESC := 0.00;
        IND_FRT := tfPorContaEmitente;
        VL_SERV := 100.00;
        VL_BC_ICMS := 100.00;
        VL_ICMS := 17.00;
        VL_NT := 10.10;
        COD_INF := '000001';
        COD_CTA := '111';
      end;

      with RegistroD190New do
      begin
        CST_ICMS := '000';
        CFOP := '1252';
        ALIQ_ICMS := 17.00;
        VL_OPR := 100.00;
        VL_BC_ICMS := 100.00;
        VL_ICMS := 17.00;
        VL_RED_BC := 0.00;
        COD_OBS := '000001';
      end;}
    end;//D001new fim
  end;//BlocoD fim

  if Concomitante then
  begin
    ACBrSPEDFiscal1.WriteBloco_D;
  end;
end;

procedure TDM_Sped.Gerar_BlocoE(Concomitante: Boolean);
var
   y,m,d: word;
   data: TDate;
begin
  with ACBrSPEDFiscal1.Bloco_E do
  begin
    with RegistroE001New do
    begin
      IND_MOV := imComDados;
      Log('Sped_F','BlocoE','RegistroE001');

      with RegistroE100New do
      begin
        DT_INI := ACBrSPEDFiscal1.DT_INI;
        DT_FIN := ACBrSPEDFiscal1.DT_FIN;
        Log('Sped_F','BlocoE','RegistroE100');

        with RegistroE110New do
        begin
          VL_TOT_DEBITOS     := VL_TOT_DEB;
          VL_AJ_DEBITOS      := 0.00;
          VL_TOT_AJ_DEBITOS  := 0.00;
          VL_ESTORNOS_CRED   := 0;
          VL_TOT_CREDITOS    := VL_TOT_CRED;
          VL_AJ_CREDITOS     := 0;
          VL_TOT_AJ_CREDITOS := 0;
          VL_ESTORNOS_DEB    := 0;
          VL_SLD_CREDOR_ANT  := 0;
          VL_TOT_DED         := 0.00;
          VL_SLD_CREDOR_TRANSPORTAR := 0;
          VL_SLD_APURADO     := (VL_TOT_DEBITOS + VL_AJ_DEBITOS + VL_TOT_AJ_DEBITOS + VL_ESTORNOS_CRED) - (VL_TOT_CREDITOS + VL_AJ_CREDITOS + VL_TOT_AJ_CREDITOS + VL_ESTORNOS_DEB + VL_SLD_CREDOR_ANT);

          if VL_SLD_APURADO <0 then
          begin
            VL_SLD_CREDOR_TRANSPORTAR := ABS(VL_SLD_APURADO);
            VL_SLD_APURADO            := 0;
          end;

          VL_ICMS_RECOLHER   := VL_SLD_APURADO - VL_TOT_DED;

          if VL_ICMS_RECOLHER < 0 then
          begin
             VL_SLD_CREDOR_TRANSPORTAR := ABS(VL_ICMS_RECOLHER);
             VL_ICMS_RECOLHER          := 0;
          end;


          DEB_ESP := 0;

          // with RegistroE111New do begin
          // COD_AJ_APUR    := 'RS009999';
          // DESCR_COMPL_AJ := '';
          // VL_AJ_APUR     := 1.00;
          //
          // with RegistroE112New do begin
          // NUM_DA    := '123';
          // NUM_PROC  := '123';
          // IND_PROC  := opOutros;
          // PROC      := 'DESCRIÇÃO RESUMIDA';
          // TXT_COMPL := 'COMPLEMENTO';
          // end;
          //
          // with RegistroE113New do begin
          // COD_PART := '000001';
          // COD_MOD  := '01';
          // SER      := 'SERI';
          // SUB      := '';
          // NUM_DOC  := '123456789';
          // DT_DOC   := Now;
          // COD_ITEM := '000001';
          // VL_AJ_ITEM := 0;
          // end;
          // end;

          { Rio Grande do Sul não possui as tabelas do registro E115, então este não precisa ser gerado }
          // with RegistroE115New do begin
          // COD_INF_ADIC   := 'RS000001';
          // VL_INF_ADIC    := 0;
          // DESCR_COMPL_AJ := '';
          // end;

          //prepara a data de vencimento
          DecodeDate(ACBrSPEDFiscal1.DT_FIN, y,m,d);

          if DM.QEmpresaefd_fiscal_mes_subseq.Value = 'S' then//incrementa o mes
             m := m + 1;

          if m=13 then//corrige o mes e ano
          begin
             m := 1;
             inc(y);
          end;

          d := DM.QEmpresaefd_fiscal_dia_venc_icms.Value;//acerta o dia

          data := EncodeDate(y,m,d);//faz uma pre montagem da data

          if d = 31 then //corrige o ultimo dia
             d := DaysInMonth(data);

          data := EncodeDate(y,m,d);//remonta a data

          Log('Sped_F','BlocoE','RegistroE116');

          with RegistroE116New do
          begin
            COD_OR    := DM.QEmpresaefd_fiscal_cod_icms_a_recolher.AsString;
            VL_OR     := VL_TOT_DEB;
            DT_VCTO   := Data;
            COD_REC   := DM.QEmpresaefd_fiscal_cod_receita.AsString; //ICMS comercio
            NUM_PROC  := '';
            IND_PROC  := opNenhum;
            PROC      := '';
            TXT_COMPL := '';
            MES_REF   := FormatDateTime('mmyyyy', ACBrSPEDFiscal1.DT_FIN);
          end;
        end;
      end;

   (*   { Gera um registro E200 e filhos para cada estado onde o contribuinte possui inscrição estadual }
      for I := Low(ESTADOS) to High(ESTADOS) do
      begin
        with RegistroE200New do
        begin
          DT_INI := StrToDate('01/11/2011');
          DT_FIN := StrToDate('30/11/2011');
          UF := ESTADOS[I];

          with RegistroE210New do
          begin
            IND_MOV_ST := mstSemOperacaoST;
            VL_SLD_CRED_ANT_ST := 0;
            VL_DEVOL_ST := 0;
            VL_RESSARC_ST := 0;
            VL_OUT_CRED_ST := 0;
            VL_AJ_CREDITOS_ST := 0;
            VL_SLD_DEV_ANT_ST := 0.00;
            VL_DEDUCOES_ST := 0;
            VL_ICMS_RECOL_ST := 0.00;
            VL_SLD_CRED_ST_TRANSPORTAR := 0;
            VL_OUT_DEB_ST := 0.00;
            DEB_ESP_ST := 0;

            // with RegistroE220New do begin
            // COD_AJ_APUR    := 'RS109999';
            // DESCR_COMPL_AJ := '';
            // VL_AJ_APUR     := 0.00;
            //
            // with RegistroE230New do begin
            // NUM_DA    := '123';
            // NUM_PROC  := '123';
            // IND_PROC  := opOutros;
            // PROC      := 'DESCRIÇÃO RESUMIDA';
            // TXT_COMPL := 'COMPLEMENTO';
            // end;
            //
            // with RegistroE240New do begin
            // COD_PART   := '000001';
            // COD_MOD    := '01';
            // SER        := 'SERI';
            // SUB        := '';
            // NUM_DOC    := '123456789';
            // DT_DOC     := Now;
            // COD_ITEM   := '000001';
            // VL_AJ_ITEM := 0;
            // end;
            // end;

            with RegistroE250New do
            begin
              COD_OR := '000';
              VL_OR := 0;
              DT_VCTO := Now;
              COD_REC := '123';
              NUM_PROC := '1020304050';
              IND_PROC := opOutros;
              PROC := 'DESCRIÇÃO RESUMIDA';
              TXT_COMPL := '';
              MES_REF := '112011';
            end;
          end;
        end;
      end;

      with RegistroE500New do
      begin
        IND_APUR := iaMensal;
        DT_INI := StrToDate('01/11/2011');
        DT_FIN := StrToDate('30/11/2011');

        with RegistroE510New do
        begin
          CFOP := '5120';
          CST_IPI := '50';
          VL_CONT_IPI := 0;
          VL_BC_IPI := 0;
          VL_IPI := 0;
        end;

        with RegistroE520New do
        begin
          VL_SD_ANT_IPI := 0;
          VL_DEB_IPI := 0;
          VL_CRED_IPI := 0;
          VL_OD_IPI := 10.00;
          VL_OC_IPI := 0;
          VL_SC_IPI := 0;
          VL_SD_IPI := 10.00;

          with RegistroE530New do
          begin
            IND_AJ := ajDebito;
            VL_AJ := 10;
            COD_AJ := '001';
            IND_DOC := odOutros;
            NUM_DOC := '123';
            DESCR_AJ := 'DESCRIÇÃO DETALHADA';
          end;
        end;
        { fim registro E500 }
      end;*)
    end;
  end;

  if Concomitante then
  begin
    ACBrSPEDFiscal1.WriteBloco_E;
  end;
end;

procedure TDM_Sped.Gerar_BlocoG(Concomitante: Boolean);
begin
  // Alimenta o componente com informações para gerar todos os registros do Bloco G.
  with ACBrSPEDFiscal1.Bloco_G do
  begin
    with RegistroG001New do
    begin
      IND_MOV := imSemDados;
      Log('Sped_F','BlocoG','Sem dados');
     (* With RegistroG110New do
      begin
        DT_INI := Now;
        DT_FIN := Now;
        SALDO_IN_ICMS := 44.00;
        SOM_PARC := 4.40;
        VL_TRIB_EXP := 10.999;
        VL_TOTAL := 10.999;
        IND_PER_SAI := 1.00;
        ICMS_APROP := 4.40;
        SOM_ICMS_OC := 10.999;

        With RegistroG125New do
        begin
          COD_IND_BEM := '000001';
          DT_MOV := StrToDate('01/11/2011');
          TIPO_MOV := mbcSI;
          VL_IMOB_ICMS_OP := 10.999;
          VL_IMOB_ICMS_ST := 10.999;
          VL_IMOB_ICMS_FRT := 10.999;
          VL_IMOB_ICMS_DIF := 10.999;
          NUM_PARC := 10;
          VL_PARC_PASS := 4.40;

          With RegistroG126New do
          begin
            DT_INI := StrToDate('01/10/2011');;
            DT_FIN := StrToDate('30/10/2011');;
            NUM_PARC := 1234;
            VL_PARC_PASS := 10.999;
            VL_TRIB_OC := 10.999;
            VL_TOTAL := 10.999;
            IND_PER_SAI := 1.00;
            VL_PARC_APROP := 10.999;
          end;

          With RegistroG130New do
          begin
            IND_EMIT := edEmissaoPropria;
            COD_PART := '000001';
            COD_MOD := '55';
            SERIE := '1';
            NUM_DOC := '000068849';
            CHV_NFE_CTE := '35100260318797000100550010000688490882775007';
            DT_DOC := Now;

            With RegistroG140New do
            begin
              NUM_ITEM := '9999';
              COD_ITEM := '000001';
            end;
          end;
        end;
      end; *)
    end;
  end;

  if Concomitante then
  begin
    ACBrSPEDFiscal1.WriteBloco_G;
  end;
end;

procedure TDM_Sped.Gerar_BlocoH(Concomitante: Boolean; motivo: integer);
var
   y,m,d: word;
   st_mes, st_ano: string;
   data: TDate;
begin
  // Alimenta o componente com informações para gerar todos os registros do Bloco H.
  with ACBrSPEDFiscal1.Bloco_H do
  begin
    with RegistroH001New do
    begin
      IND_MOV := imComDados;
      Log('Sped_F','BlocoH','Com dados');

      DecodeDate(ACBrSPEDFiscal1.DT_FIN, y,m,d);

      if m < 3 then
         dec(y,1);

      if m = 1 then
         m := 11
      else
      if m = 2 then
         m := 12;

      d := DaysInAMonth(y,m);
     // y := 2013;
    //  m := 10;

      st_ano := IntToStr(y);
      st_mes := FormatFloat('00', m);

      DM.Q1.Open('select data, sum(vrcusto*quant) as valor from balanco where month(data)=' + st_mes + ' and year(data)=' + st_ano);
      Log('Sped_F','BlocoH','RegistroH005 - ' + st_mes +'/'+st_ano + ' valor: ' + DM.Q1.FieldByName('valor').AsString);

      data := DM.Q1.FieldByName('data').AsDateTime;

      if data <=0 then
         data := EncodeDate(y,m,d);

      with RegistroH005New do
      begin
        DT_INV  := data;
        VL_INV  := DM.Q1.FieldByName('valor').AsCurrency;
        MOT_INV := TACBrMotivoInventario(motivo);// miFinalPeriodo;

        if DM.Q1.FieldByName('valor').AsCurrency > 0 then
        begin
           DM.Q2.Open('select b.cod_interno, b.nome, b.cod_gtin, b.ncm, b.quant, b.vrcusto, sum(b.quant*b.vrcusto) as total,b.destinacao,' +
                      'u.unidade,a.icms from balanco b, unidade u, aliquota a WHERE b.unidade=u.id and b.aliq_icms=a.id ' +
                      'and month(data)=' + st_mes + ' and year(data)=' + st_ano + ' group by cod_interno'
           );

          while not DM.Q2.Eof do
          begin
             Log('Sped_F','BlocoH','RegistroH010 - ' + DM.Q2.FieldByName('cod_gtin').AsString);
             with RegistroH010New do
             begin
               COD_ITEM  := DM.Q2.FieldByName('cod_interno').AsString;
               UNID      := Retorna_COD_UN(Clip(DM.Q2.FieldByName('unidade').AsString,2));
               QTD       := DM.Q2.FieldByName('quant').AsCurrency;
               VL_UNIT   := DM.Q2.FieldByName('vrcusto').AsCurrency;
               VL_ITEM   := DM.Q2.FieldByName('total').AsCurrency;
               IND_PROP  := piInformante;
               COD_PART  := '';
               TXT_COMPL := '';
               COD_CTA   := DM.QEmpresaefd_fiscal_pc_cod.AsString;
             end;

             if not ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0200.LocalizaRegistro(DM.Q2.FieldByName('cod_interno').AsString) then
             with ACBrSPEDFiscal1.Bloco_0.Registro0200New do
             begin
                 COD_ITEM   := DM.Q2.FieldByName('cod_interno').AsString;
                 DESCR_ITEM := DM.Q2.FieldByName('nome').AsString;
                 COD_BARRA  := Iif(ValidaEAN(DM.Q2.FieldByName('cod_gtin').AsString), Q0200cod_gtin.AsString, '');
                 UNID_INV   := Retorna_COD_UN(Clip(DM.Q2.FieldByName('unidade').AsString,2));
                 COD_NCM    := DM.Q2.FieldByName('ncm').AsString;
                 COD_GEN    := Clip(DM.Q2.FieldByName('ncm').AsString,2);
                 ALIQ_ICMS  := DM.Q2.FieldByName('icms').AsCurrency;

                 d := StrToInt(Clip(DM.Q2.FieldByName('destinacao').AsString,2));

                 case d of
                    0:TIPO_ITEM  := tiMercadoriaRevenda;
                    1:TIPO_ITEM  := tiMateriaPrima;
                    2:TIPO_ITEM  := tiEmbalagem;
                    3:TIPO_ITEM  := tiProdutoProcesso;
                    4:TIPO_ITEM  := tiProdutoAcabado;
                    5:TIPO_ITEM  := tiSubproduto;
                    6:TIPO_ITEM  := tiProdutoIntermediario;
                    7:TIPO_ITEM  := tiMaterialConsumo;
                    8:TIPO_ITEM  := tiAtivoImobilizado;
                    9:TIPO_ITEM  := tiServicos;
                    10:TIPO_ITEM  := tiOutrosInsumos;
                    99:TIPO_ITEM  := tiOutras;
                end;
             end;

             DM.Q2.Next;
          end;
        end;
      end;
    end;
  end;

  if Concomitante then
  begin
    ACBrSPEDFiscal1.WriteBloco_H;
  end;
end;

procedure TDM_Sped.Gravar_Blocos;
begin
   try
      ACBrSPEDFiscal1.WriteBloco_0;
      ACBrSPEDFiscal1.WriteBloco_C(True);
      ACBrSPEDFiscal1.WriteBloco_D;
      ACBrSPEDFiscal1.WriteBloco_E;
      ACBrSPEDFiscal1.WriteBloco_G;
      ACBrSPEDFiscal1.WriteBloco_H;
      ACBrSPEDFiscal1.WriteBloco_1;
      ACBrSPEDFiscal1.WriteBloco_9;
      Log('Sped_F','Gravar','Arquivo gerado em ' + String(ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo));
   except
      on E: Exception do
      begin
         Log('Sped_F','Gravar','ERRO ' + E.Message);
         ShowMessage(E.Message);
      end;
   end;
end;

function TDM_Sped.Retorna_COD_PART(valor: string): string;
var
   i: integer;
begin
   Result := '';
   Valor := Number(valor);

   Repeat
      for i := 0 to Pred(ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0150.Count) do
      begin
         if ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0150.Items[i].CNPJ = valor then
         begin
            Result := ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0150.Items[i].COD_PART;
            break;
         end;
      end;

      if Result = '' then
      begin
         Q0150.Close;
         Q0150.Params[0].AsString := valor;
         Q0150.Open;

         Q0175.Close;
         Q0175.Params[0].AsDate := ACBrSPEDFiscal1.DT_INI;
         Q0175.Params[1].AsDate := ACBrSPEDFiscal1.DT_FIN;
         Q0175.Open;

         if not Q0150.IsEmpty then
         with ACBrSPEDFiscal1.Bloco_0.Registro0150New do
         begin
            COD_PART := Number(Q0150Emit_CNPJCPF.AsString);
            NOME     := Clip(Q0150Emit_xNome.AsString,100);
            COD_PAIS := '1058';
            IE       := Number(Q0150Emit_IE.AsString);
            COD_MUN  := Q0150Emit_EnderEmit_cMun.AsInteger;
            SUFRAMA  := '';
            ENDERECO := Clip(Q0150Emit_EnderEmit_xLgr.AsString,60);
            NUM      := Clip(Q0150Emit_EnderEmit_nro.AsString,10);
            COMPL    := Clip(Q0150Emit_EnderEmit_xCpl.AsString,60);
            BAIRRO   := Clip(Q0150Emit_EnderEmit_xBairro.AsString,60);

            if DM.Validar_Doc(Q0150Emit_CNPJCPF.AsAnsiString, '', docCNPJ) then
               CNPJ := Number(Q0150Emit_CNPJCPF.AsString)
            else
               CPF := Number(Q0150Emit_CNPJCPF.AsString);

            // ALTERAÇÃO DE PARTICIPANTE
            while not Q0175.Eof do
            begin
               with ACBrSPEDFiscal1.Bloco_0.Registro0175New do
               begin
                  DT_ALT   := Q0175data.Value;
                  NR_CAMPO := Q0175campo.AsString;
                  CONT_ANT := Q0175valor_anter.AsString;
               end;
               Q0175.Next;
            end;//fim loop Q0175
         end;
      end;

   until Result <> '';
end;

function TDM_Sped.Retorna_COD_UN(valor: string): string; //UNIDADES DE MEDIDA
var
   i: integer;
begin
   Result := '';
   valor := Clip(valor,2);

   repeat
      for i := 0 to Pred(ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0190.Count) do
      begin
         if ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0190.Items[i].UNID = valor then
         begin
            Result := Valor;
            break;
         end;
      end;

      if Result = '' then
      with ACBrSPEDFiscal1.Bloco_0.Registro0190New do
      begin
         UNID  := Valor;
         DESCR := valor + '.';
      end;

   until Result <> '';
end;

function TDM_Sped.Retorna_COD_NAT(valor: string): string;
var
   i: integer;
begin
   Result := '';
   valor := Clip(valor,100);
   repeat
      for i := 0 to Pred(ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0400.Count) do
      begin
         if ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0400.Items[i].DESCR_NAT = valor then
         begin
            Result := ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0400.Items[i].COD_NAT;
            break;
         end;
      end;

      if Result = '' then
      with ACBrSPEDFiscal1.Bloco_0.Registro0400New do
      begin
         COD_NAT   := FormatFloat('0000', ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0400.Count);
         DESCR_NAT := valor;
      end;

   until Result <> '';
end;

function TDM_Sped.Retorna_COD_OBS(valor: string): String;
var
   i: integer;
begin
   Result := '';
   valor := Trim(valor);
   repeat
      for i := 0 to Pred(ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0460.Count) do
      begin
         if ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0460.Items[i].TXT = valor then
         begin
            Result := ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0460.Items[i].COD_OBS;
            break;
         end;
      end;

      if Result = '' then
      with ACBrSPEDFiscal1.Bloco_0.Registro0460New do
      begin
         COD_OBS   := FormatFloat('0000', ACBrSPEDFiscal1.Bloco_0.Registro0001.Registro0460.Count);
         TXT := valor;
      end;

   until Result <> '';
end;

end.
