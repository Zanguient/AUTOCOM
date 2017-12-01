unit udmnfe;

interface

uses
  SysUtils, Classes, Dialogs, ACBrNFeDANFEClass, ACBrNFeDANFEFR, Forms, ACBrUtil,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, ACBrNFe, IdMessage, IdBaseComponent, IdComponent, uFuncoes,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, DB,
  DBClient, ACBrEAD, uautocomConsts, cxClasses, cxStyles, cxGridTableView, Controls,
  rxPlacemnt, ACBrBase, ACBrValidador, pcnConversaoNFE, DateUtils, ACBRDFEUtil, Windows,
  cxLocalization, FireDAC.Stan.Intf, FireDAC.Stan.Option, pcnConversao,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Stan.ExprFuncs,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Comp.DataSet,
  ACBrNFeDANFEFRDM, ACBrDFe, FireDAC.Phys.SQLiteDef, FireDAC.VCLUI.Wait
  {$IFDEF GER}
   , uCadEstoque, FireDAC.Comp.UI
  {$ENDIF}
  ;

type
  TDM_NFE = class(TDataModule)
    idHandle: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage: TIdMessage;
    NFe1: TACBrNFe;
    IdSMTP: TIdSMTP;
    OD1: TOpenDialog;
    EAD: TACBrEAD;
    Validador: TACBrValidador;
    QNF: TFDQuery;
    QNF_Item: TFDQuery;
    DSNF_Item: TDataSource;
    DSNF: TDataSource;
    QNF_Duplicata: TFDQuery;
    QNF_Reboque: TFDQuery;
    QNF_Referenciada: TFDQuery;
    QNF_Volume: TFDQuery;
    QNF_Lacre: TFDQuery;
    DSNF_Volume: TDataSource;
    QNF_Chave: TFDQuery;
    DSNF_Chave: TDataSource;
    QNF_Item_Med: TFDQuery;
    DSNF_Item_Med: TDataSource;
    DSNF_Duplicata: TDataSource;
    DSNF_Reboque: TDataSource;
    drvSQLite: TFDPhysSQLiteDriverLink;
    DB: TFDConnection;
    DSNF_Lacre: TDataSource;
    DSNF_Referenciada: TDataSource;
    QCfg: TFDQuery;
    Q1: TFDQuery;
    DSCfg: TDataSource;
    QCfgCfg_Certif_NmroSerie: TStringField;
    QCfgCfg_Geral_FormaEmissao: TStringField;
    QCfgCfg_Geral_finNFe: TStringField;
    QCfgCfg_Geral_tpImp: TStringField;
    QCfgCfg_Geral_Salvar: TBooleanField;
    QCfgCfg_Geral_PathSalvar: TStringField;
    QCfgCfg_Geral_PathSchemas: TStringField;
    QCfgCfg_Geral_PathLogs: TStringField;
    QCfgCfg_WebServ_Ambiente: TStringField;
    QCfgCfg_WebServ_Visualizar: TBooleanField;
    QCfgCfg_WebServ_ProxyHost: TStringField;
    QCfgCfg_WebServ_ProxyPort: TStringField;
    QCfgCfg_WebServ_ProxyUser: TStringField;
    QCfgCfg_WebServ_ProxyPass: TStringField;
    QCfgCfg_Arq_PastaMensal: TBooleanField;
    QCfgCfg_Arq_PathNFe: TStringField;
    QCfgCfg_Arq_PathCan: TStringField;
    QCfgCfg_Arq_PathDPEC: TStringField;
    QCfgCfg_Arq_PathInu: TStringField;
    QCfgCfg_Arq_Salvar: TBooleanField;
    QCfgDANFE_TipoDANFE: TStringField;
    QCfgDANFE_Logo: TStringField;
    QCfgDANFE_FastFile: TStringField;
    QCfgDANFE_Email: TStringField;
    QCfgDANFE_Site: TStringField;
    QCfgDANFE_PathPDF: TStringField;
    QCfgDANFE_ImprimirDescPorc: TBooleanField;
    QCfgDANFE_ImprimirTotalLiq: TBooleanField;
    QCfgDANFE_ImprimirDetalEspec: TBooleanField;
    QCfgDANFE_MostrarPreview: TBooleanField;
    QCfgDANFE_MostrarStatus: TBooleanField;
    QCfgDANFE_TamFonte_DemaisCampos: TIntegerField;
    QCfgDANFE_CasasDecimais_qCom: TIntegerField;
    QCfgDANFE_CasasDecimais_vUnCom: TIntegerField;
    QCfgCfg_cNF: TIntegerField;
    QCfgCfg_SeqChave: TIntegerField;
    QCfgCfg_Serie_NF: TIntegerField;
    QCfgCfg_Lote: TIntegerField;
    QCfgCfg_Serv_host: TStringField;
    QCfgCfg_Serv_User: TStringField;
    QCfgCfg_Serv_Password: TStringField;
    QCfgCfg_Serv_Database: TStringField;
    QFEmissao: TFDQuery;
    DSFEmissao: TDataSource;
    QFEmissaonome: TStringField;
    QFEmissaocNF: TIntegerField;
    QFEmissaonNF: TIntegerField;
    QFEmissaoserie: TIntegerField;
    QFEmissaolote: TIntegerField;
    QFEmissaoid: TIntegerField;
    QNFid: TFDAutoIncField;
    QNFIde_cNF: TIntegerField;
    QNFIde_natOp: TStringField;
    QNFIde_indPag: TIntegerField;
    QNFIde_modelo: TIntegerField;
    QNFIde_serie: TIntegerField;
    QNFIde_nNF: TIntegerField;
    QNFIde_tpNF: TIntegerField;
    QNFIde_tpEmis: TIntegerField;
    QNFIde_tpAmb: TIntegerField;
    QNFIde_verProc: TStringField;
    QNFIde_cUF: TIntegerField;
    QNFIde_cMunFG: TStringField;
    QNFIde_finNFe: TIntegerField;
    QNFIde_dhCont: TDateField;
    QNFIde_xJust: TStringField;
    QNFEmit_CNPJCPF: TStringField;
    QNFEmit_IE: TStringField;
    QNFEmit_xNome: TStringField;
    QNFEmit_xFant: TStringField;
    QNFEmit_EnderEmit_fone: TStringField;
    QNFmit_EnderEmit_CEP: TStringField;
    QNFEmit_EnderEmit_xLgr: TStringField;
    QNFEmit_EnderEmit_nro: TStringField;
    QNFEmit_EnderEmit_xCpl: TStringField;
    QNFEmit_EnderEmit_xBairro: TStringField;
    QNFEmit_EnderEmit_cMun: TIntegerField;
    QNFEmit_EnderEmit_xMun: TStringField;
    QNFEmit_EnderEmit_UF: TStringField;
    QNFEmit_enderEmit_cPais: TIntegerField;
    QNFEmit_enderEmit_xPais: TStringField;
    QNFEmit_IEST: TStringField;
    QNFEmit_IM: TStringField;
    QNFEmit_CNAE: TStringField;
    QNFEmit_CRT: TIntegerField;
    QNFDest_CNPJCPF: TStringField;
    QNFDest_IE: TStringField;
    QNFDest_ISUF: TStringField;
    QNFDest_xNome: TStringField;
    QNFDest_EnderDest_Fone: TStringField;
    QNFDest_EnderDest_CEP: TStringField;
    QNFDest_EnderDest_xLgr: TStringField;
    QNFDest_EnderDest_nro: TStringField;
    QNFDest_EnderDest_xCpl: TStringField;
    QNFDest_EnderDest_xBairro: TStringField;
    QNFDest_EnderDest_cMun: TIntegerField;
    QNFDest_EnderDest_xMun: TStringField;
    QNFDest_EnderDest_UF: TStringField;
    QNFDest_EnderDest_cPais: TIntegerField;
    QNFDest_EnderDest_xPais: TStringField;
    QNFRetirada_CNPJCPF: TStringField;
    QNFRetirada_xLgr: TStringField;
    QNFRetirada_nro: TStringField;
    QNFRetirada_xCpl: TStringField;
    QNFRetirada_xBairro: TStringField;
    QNFRetirada_cMun: TIntegerField;
    QNFRetirada_xMun: TStringField;
    QNFRetirada_UF: TStringField;
    QNFEntrega_CNPJCPF: TStringField;
    QNFEntrega_xLgr: TStringField;
    QNFEntrega_nro: TStringField;
    QNFEntrega_xCpl: TStringField;
    QNFEntrega_xBairro: TStringField;
    QNFEntrega_cMun: TIntegerField;
    QNFEntrega_xMun: TStringField;
    QNFEntrega_UF: TStringField;
    QNFmodFrete: TIntegerField;
    QNFTransporta_CNPJCPF: TStringField;
    QNFTransporta_xNome: TStringField;
    QNFTransporta_IE: TStringField;
    QNFTransporta_xEnder: TStringField;
    QNFTransporta_xMun: TStringField;
    QNFTransporta_UF: TStringField;
    QNFretvServ: TFloatField;
    QNFretvBCRet: TFloatField;
    QNFretpICMSRet: TFloatField;
    QNFretvICMSRet: TFloatField;
    QNFretCFOP: TStringField;
    QNFretcMunFG: TIntegerField;
    QNFveicplaca: TStringField;
    QNFveicUF: TStringField;
    QNFveicRNTC: TStringField;
    QNFnFat: TStringField;
    QNFvOrig: TFloatField;
    QNFvDesc: TFloatField;
    QNFvLiq: TFloatField;
    QNFinfAdFisco: TMemoField;
    QNFinfCpl: TMemoField;
    QNFICMSTot_vBC: TFloatField;
    QNFICMSTot_vICMS: TFloatField;
    QNFICMSTot_vBCST: TFloatField;
    QNFICMSTot_vST: TFloatField;
    QNFICMSTot_vProd: TFloatField;
    QNFICMSTot_vFrete: TFloatField;
    QNFICMSTot_vSeg: TFloatField;
    QNFICMSTot_vDesc: TFloatField;
    QNFICMSTot_vII: TFloatField;
    QNFICMSTot_vIPI: TFloatField;
    QNFICMSTot_vPIS: TFloatField;
    QNFICMSTot_vCOFINS: TFloatField;
    QNFICMSTot_vOutro: TFloatField;
    QNFICMSTot_vNF: TFloatField;
    QNFISSQNtot_vServ: TFloatField;
    QNFISSQNTot_vBC: TFloatField;
    QNFISSQNTot_vISS: TFloatField;
    QNFISSQNTot_vPIS: TFloatField;
    QNFISSQNTot_vCOFINS: TFloatField;
    QNFretTrib_vRetPIS: TFloatField;
    QNFretTrib_vRetCOFINS: TFloatField;
    QNFretTrib_vRetCSLL: TFloatField;
    QNFretTrib_vBCIRRF: TFloatField;
    QNFretTrib_vIRRF: TFloatField;
    QNFretTrib_vBCRetPrev: TFloatField;
    QNFretTrib_vRetPrev: TFloatField;
    QNFmd5: TStringField;
    QNFhash: TStringField;
    QNFstatus: TIntegerField;
    QNFIde_hSaiEnt: TTimeField;
    QNF_Itemid: TFDAutoIncField;
    QNF_Itemnf: TIntegerField;
    QNF_ItemnItem: TIntegerField;
    QNF_ItemcProd: TStringField;
    QNF_ItemcEAN: TStringField;
    QNF_ItemxProd: TStringField;
    QNF_ItemNCM: TStringField;
    QNF_ItemCFOP: TStringField;
    QNF_ItemuCom: TStringField;
    QNF_ItemqCom: TFloatField;
    QNF_ItemvUnCom: TFloatField;
    QNF_ItemvProd: TFloatField;
    QNF_ItemcEANTrib: TStringField;
    QNF_ItemuTrib: TStringField;
    QNF_ItemqTrib: TFloatField;
    QNF_ItemvUnTrib: TFloatField;
    QNF_ItemvOutro: TFloatField;
    QNF_ItemvFrete: TFloatField;
    QNF_ItemvSeg: TFloatField;
    QNF_ItemvDesc: TFloatField;
    QNF_IteminfAdProd: TMemoField;
    QNF_ItemICMS_CST: TIntegerField;
    QNF_ItemICMS_orig: TIntegerField;
    QNF_ItemICMS_modBC: TIntegerField;
    QNF_ItemICMS_vBC: TFloatField;
    QNF_ItemICMS_pICMS: TFloatField;
    QNF_ItemICMS_vICMS: TFloatField;
    QNF_ItemICMS_CSOSN: TIntegerField;
    QNF_ItemICMS_pCredSN: TFloatField;
    QNF_ItemICMS_vCredICMSSN: TFloatField;
    QNF_ItemICMS_modBCST: TIntegerField;
    QNF_ItemICMS_pMVAST: TFloatField;
    QNF_ItemICMS_vTabelaST: TFloatField;
    QNF_ItemICMS_pRedBCST: TFloatField;
    QNF_ItemICMS_vBCST: TFloatField;
    QNF_ItemICMS_pICMSST: TFloatField;
    QNF_ItemICMS_vICMSST: TFloatField;
    QNF_ItemICMS_pRedBC: TFloatField;
    QNF_ItemIPI_CST: TIntegerField;
    QNF_ItemIPI_clEnq: TStringField;
    QNF_ItemIPI_CNPJProd: TStringField;
    QNF_ItemIPI_cSelo: TStringField;
    QNF_ItemIPI_qSelo: TIntegerField;
    QNF_ItemIPI_vBC: TFloatField;
    QNF_ItemIPI_qUnid: TFloatField;
    QNF_ItemIPI_vUnid: TFloatField;
    QNF_ItemIPI_pIPI: TFloatField;
    QNF_ItemIPI_vIPI: TFloatField;
    QNF_ItemII_vBc: TFloatField;
    QNF_ItemII_vDespAdu: TFloatField;
    QNF_ItemII_vII: TFloatField;
    QNF_ItemII_vIOF: TFloatField;
    QNF_ItemPIS_CST: TIntegerField;
    QNF_ItemPIS_vBC: TFloatField;
    QNF_ItemPIS_pPIS: TFloatField;
    QNF_ItemPIS_vPIS: TFloatField;
    QNF_ItemPIS_qBCProd: TFloatField;
    QNF_ItemPIS_vAliqProd: TFloatField;
    QNF_ItemPISST_vBc: TFloatField;
    QNF_ItemPISST_pPis: TFloatField;
    QNF_ItemPISST_qBCProd: TFloatField;
    QNF_ItemPISST_vAliqProd: TFloatField;
    QNF_ItemPISST_vPIS: TFloatField;
    QNF_ItemCOFINS_CST: TIntegerField;
    QNF_ItemCOFINS_vBC: TFloatField;
    QNF_ItemCOFINS_pCOFINS: TFloatField;
    QNF_ItemCOFINS_vCOFINS: TFloatField;
    QNF_ItemCOFINS_qBCProd: TFloatField;
    QNF_ItemCOFINS_vAliqProd: TFloatField;
    QNF_ItemCOFINSST_vBC: TFloatField;
    QNF_ItemCOFINSST_pCOFINS: TFloatField;
    QNF_ItemCOFINSST_qBCProd: TFloatField;
    QNF_ItemCOFINSST_vAliqProd: TFloatField;
    QNF_ItemCOFINSST_vCOFINS: TFloatField;
    QNF_ItemISSQN_vBC: TFloatField;
    QNF_ItemISSQN_vAliq: TFloatField;
    QNF_ItemISSQN_vISSQN: TFloatField;
    QNF_ItemISSQN_cMunFG: TIntegerField;
    QNF_ItemISSQN_cListServ: TIntegerField;
    QNF_ItemISSQN_SitTrib: TIntegerField;
    QNF_ItemICMS_vBCSTRet: TFloatField;
    QNF_ItemICMS_vICMSSTRet: TFloatField;
    QNF_ItemQTD: TFloatField;
    QNF_ItemICMS_CST_inform: TIntegerField;
    QNF_ItemICMS_orig_inform: TIntegerField;
    QNF_ItemICMS_modBC_inform: TIntegerField;
    QNF_ItemICMS_vBC_inform: TFloatField;
    QNF_ItemICMS_pICMS_inform: TFloatField;
    QNF_ItemICMS_vICMS_inform: TFloatField;
    QNF_ItemICMS_CSOSN_inform: TIntegerField;
    QNF_ItemICMS_pCredSN_inform: TFloatField;
    QNF_ItemICMS_vCredICMSSN_inform: TFloatField;
    QNF_ItemICMS_modBCST_inform: TIntegerField;
    QNF_ItemICMS_pMVAST_inform: TFloatField;
    QNF_ItemICMS_vTabelaST_inform: TFloatField;
    QNF_ItemICMS_pRedBCST_inform: TFloatField;
    QNF_ItemICMS_vBCST_inform: TFloatField;
    QNF_ItemICMS_pICMSST_inform: TFloatField;
    QNF_ItemICMS_vICMSST_inform: TFloatField;
    QNF_ItemICMS_pRedBC_inform: TFloatField;
    QNF_ItemIPI_CST_inform: TIntegerField;
    QNF_ItemIPI_clEnq_inform: TStringField;
    QNF_ItemIPI_CNPJProd_inform: TStringField;
    QNF_ItemIPI_cSelo_inform: TStringField;
    QNF_ItemIPI_qSelo_inform: TIntegerField;
    QNF_ItemIPI_cEnq_inform: TStringField;
    QNF_ItemIPI_vBC_inform: TFloatField;
    QNF_ItemIPI_qUnid_inform: TFloatField;
    QNF_ItemIPI_vUnid_inform: TFloatField;
    QNF_ItemIPI_pIPI_inform: TFloatField;
    QNF_ItemIPI_vIPI_inform: TFloatField;
    QNF_ItemII_vBc_inform: TFloatField;
    QNF_ItemII_vDespAdu_inform: TFloatField;
    QNF_ItemII_vII_inform: TFloatField;
    QNF_ItemII_vIOF_inform: TFloatField;
    QNF_ItemPIS_CST_inform: TIntegerField;
    QNF_ItemPIS_vBC_inform: TFloatField;
    QNF_ItemPIS_pPIS_inform: TFloatField;
    QNF_ItemPIS_vPIS_inform: TFloatField;
    QNF_ItemPIS_qBCProd_inform: TFloatField;
    QNF_ItemPIS_vAliqProd_inform: TFloatField;
    QNF_ItemPISST_vBc_inform: TFloatField;
    QNF_ItemPISST_pPis_inform: TFloatField;
    QNF_ItemPISST_qBCProd_inform: TFloatField;
    QNF_ItemPISST_vAliqProd_inform: TFloatField;
    QNF_ItemPISST_vPIS_inform: TFloatField;
    QNF_ItemCOFINS_CST_inform: TIntegerField;
    QNF_ItemCOFINS_vBC_inform: TFloatField;
    QNF_ItemCOFINS_pCOFINS_inform: TFloatField;
    QNF_ItemCOFINS_vCOFINS_inform: TFloatField;
    QNF_ItemCOFINS_qBCProd_inform: TFloatField;
    QNF_ItemCOFINS_vAliqProd_inform: TFloatField;
    QNF_ItemCOFINSST_vBC_inform: TFloatField;
    QNF_ItemCOFINSST_pCOFINS_inform: TFloatField;
    QNF_ItemCOFINSST_qBCProd_inform: TFloatField;
    QNF_ItemCOFINSST_vAliqProd_inform: TFloatField;
    QNF_ItemCOFINSST_vCOFINS_inform: TFloatField;
    QNF_ItemISSQN_vBC_inform: TFloatField;
    QNF_ItemISSQN_vAliq_inform: TFloatField;
    QNF_ItemISSQN_vISSQN_inform: TFloatField;
    QNF_ItemISSQN_cMunFG_inform: TIntegerField;
    QNF_ItemISSQN_cListServ_inform: TIntegerField;
    QNF_ItemISSQN_SitTrib_inform: TIntegerField;
    QNF_ItemICMS_vBCSTRet_inform: TFloatField;
    QNF_ItemICMS_vICMSSTRet_inform: TFloatField;
    QNF_ItemICMS_motDesICMS: TIntegerField;
    QNF_ItemICMS_motDesICMS_inform: TIntegerField;
    QNF_ItemvTotTrib: TFloatField;
    QNF_Itemmd5: TStringField;
    QNF_Itemhash: TStringField;
    QNF_Item_Medid: TFDAutoIncField;
    QNF_Item_Meditem: TIntegerField;
    QNF_Item_Mednlote: TStringField;
    QNF_Item_Medqlote: TFloatField;
    QNF_Item_Meddfab: TDateField;
    QNF_Item_Meddven: TDateField;
    QNF_Item_Medvpmc: TFloatField;
    QNF_Duplicataid: TFDAutoIncField;
    QNF_Duplicatanf: TIntegerField;
    QNF_DuplicatanDup: TStringField;
    QNF_DuplicatavDup: TFloatField;
    QNF_Reboqueid: TFDAutoIncField;
    QNF_Reboquenf: TIntegerField;
    QNF_Reboqueplaca: TStringField;
    QNF_Reboqueuf: TStringField;
    QNF_Reboquerntc: TStringField;
    QNF_Reboquevagao: TStringField;
    QNF_Reboquebalsa: TStringField;
    QNF_Referenciadaid: TFDAutoIncField;
    QNF_Referenciadanf: TIntegerField;
    QNF_ReferenciadarefNFe: TStringField;
    QNF_ReferenciadaRefNF_cUF: TIntegerField;
    QNF_ReferenciadaRefNF_AAMM: TStringField;
    QNF_ReferenciadaRefNF_CNPJ: TStringField;
    QNF_ReferenciadaRefNF_modelo: TIntegerField;
    QNF_ReferenciadaRefNF_serie: TIntegerField;
    QNF_ReferenciadaRefNF_nNF: TIntegerField;
    QNF_ReferenciadaRefNFP_cUF: TIntegerField;
    QNF_ReferenciadaRefNFP_AAMM: TStringField;
    QNF_ReferenciadaRefNFP_CNPJCPF: TStringField;
    QNF_ReferenciadaRefNFP_IE: TStringField;
    QNF_ReferenciadaRefNFP_modelo: TStringField;
    QNF_ReferenciadaRefNFP_serie: TIntegerField;
    QNF_ReferenciadaRefNFP_nNF: TIntegerField;
    QNF_ReferenciadaRefECF_modelo: TIntegerField;
    QNF_ReferenciadaRefECF_nECF: TStringField;
    QNF_ReferenciadaRefECF_nCOO: TStringField;
    QNF_ReferenciadaRefCte: TStringField;
    QNF_ReferenciadaRefECF_data: TDateField;
    QNF_ReferenciadaRefECF_Serie: TStringField;
    QNF_Volumeid: TFDAutoIncField;
    QNF_Volumenf: TIntegerField;
    QNF_VolumeqVol: TIntegerField;
    QNF_Volumeespecie: TStringField;
    QNF_Volumemarca: TStringField;
    QNF_VolumenVol: TStringField;
    QNF_VolumepesoL: TFloatField;
    QNF_VolumepesoB: TFloatField;
    QNF_Lacreid: TFDAutoIncField;
    QNF_Lacrevol: TIntegerField;
    QNF_Lacrenlacre: TStringField;
    QNF_Chaveid: TFDAutoIncField;
    QNF_Chavenf: TIntegerField;
    QNF_Chavechave: TStringField;
    QNF_Chaverecibo: TStringField;
    QNF_Chaveprotocolo: TStringField;
    QNF_Chavecstat: TIntegerField;
    QNF_Chavestatus: TStringField;
    QNFinfCpl_Dig: TMemoField;
    QCfgDANFE_FastFile_Events: TStringField;
    QNFvTotTrib: TFloatField;
    QNFid_venda: TMemoField;
    QNF_ItemPIS_codrec: TIntegerField;
    QNF_DuplicatadVenc: TDateField;
    QNFIde_Cons_Final: TIntegerField;
    QNFIde_Presencial: TIntegerField;
    QNF_ItemEXTIPI: TStringField;
    QNF_ItemIPI_cEnq: TStringField;
    QNFIde_dEmi: TDateTimeField;
    QNFIde_dSaiEnt: TDateTimeField;
    QNF_Itembaixa_estoque: TStringField;
    DANFE: TACBrNFeDANFEFR;
    QNFDest_IndIEDest: TIntegerField;
    ADGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure QCfgAfterPost(DataSet: TDataSet);
    procedure QCfgAfterOpen(DataSet: TDataSet);
    procedure NFe1StatusChange(Sender: TObject);
    procedure NFe1GerarLog(const Mensagem: string);
    procedure idHandleStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure idHandleStatusInfo(const AMsg: string);
    procedure DataModuleCreate(Sender: TObject);
    procedure DBError(ASender: TObject; const AInitiator: IFDStanObject; var AException: Exception);
    procedure QFEmissaoAfterOpen(DataSet: TDataSet);
    procedure QNF_ItemBeforePost(DataSet: TDataSet);
    procedure QNFAfterInsert(DataSet: TDataSet);
    procedure QNF_ItemAfterInsert(DataSet: TDataSet);
    procedure QNFAfterPost(DataSet: TDataSet);
    procedure QNF_VolumeBeforeDelete(DataSet: TDataSet);
    procedure QNF_Item_MedAfterInsert(DataSet: TDataSet);
    procedure QNF_DuplicataAfterInsert(DataSet: TDataSet);
    procedure QNF_ReboqueAfterInsert(DataSet: TDataSet);
    procedure QNF_ReferenciadaAfterInsert(DataSet: TDataSet);
    procedure QNF_VolumeAfterInsert(DataSet: TDataSet);
    procedure QNF_LacreAfterInsert(DataSet: TDataSet);
    procedure QNF_ChaveAfterInsert(DataSet: TDataSet);
    procedure QNF_Guia_ArrecAfterInsert(DataSet: TDataSet);
    procedure QNF_ItemAfterPost(DataSet: TDataSet);
    procedure QNF_ChaveBeforePost(DataSet: TDataSet);
  private
    function VerificaErro(Dataset: TDataset): boolean;
    procedure Validar_Emitente;
    procedure Validar_Produto;
    procedure Validar_Destinatario;
    procedure LimparArqXml;
    function CodEstado(const pEstado: String): SmallInt;

  public
   st_MD5: string;
    function Envia_Mail(Email, Conta, Senha, Autentica, Smtp, Auth_SSL,
      Nom_exibe, Porta_smtp, Corpo, Destinatario, Assunto, ArqXML,
      ArqPDF: String; tipo: integer): Boolean;
    procedure Status(Mostrar: Boolean; Msg1, Msg2: String);
    function MD5FromString(const AString: String): String;
    function ConsultarNFe(Nfe: String): Integer;
    procedure ConfigurarNFe;
    procedure Imprimir_NFe;
    procedure Imprimir_Evento;
    procedure Cancelar_NFe_Xml;
    procedure Inserir_Protocolo;
    procedure Gerar_PDF;
    procedure Gerar_NFe(hora, SemDataSaida: boolean);
    procedure Totalizar_NFe;
    procedure Salvar;
    procedure Calcular_vProd;
    function AliquotaInterEstadual(const pEstadoOrigem,  pEstadoDestino: String): Double; overload;
    function AliquotaInterEstadual(const pEstadoOrigem: String): Double; overload;
    procedure Consultar_Cadastro(UF, Documento: string);
    function ValidarDoc(doc, complem: AnsiString; tipo: TACBrValTipoDocto): Boolean;
    procedure Preenche_Info_Compl(completo: boolean = True);
    procedure exportarcampos;
    procedure GravarNF;
    procedure Fechar_Datasets;
    procedure Conectar;
    procedure Abrir_Datasets;
    procedure Zerar_Totais_NF;
    procedure Delete_NF_Local;
    procedure XmlToBD;
    function Converter_CST_CSOSN(CST: boolean; Valor: string): integer;
  end;

  const
        //                                AC AL AM AP BA CE DF ES GO MA MT MS MG PA PB PR PE PI RN RS RJ RO RR SC SP SE TO

  cAliquotaAC: array[0..26] of Integer = (17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaAL: array[0..26] of Integer = (12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaAM: array[0..26] of Integer = (12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaAP: array[0..26] of Integer = (12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaBA: array[0..26] of Integer = (12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaCE: array[0..26] of Integer = (12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaDF: array[0..26] of Integer = (12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaES: array[0..26] of Integer = (12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaGO: array[0..26] of Integer = (12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaMA: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaMT: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaMS: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaMG: array[0..26] of Integer = (07,07,07,07,07,07,07,07,07,07,07,07,18,07,07,12,07,07,07,12,12,07,07,12,12,07,07);
  cAliquotaPA: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaPB: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaPR: array[0..26] of Integer = (07,07,07,07,07,07,07,07,07,07,07,07,12,07,07,18,07,07,07,12,12,07,07,12,12,07,07);
  cAliquotaPE: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12);
  cAliquotaPI: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12);
  cAliquotaRN: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12);
  cAliquotaRS: array[0..26] of Integer = (07,07,07,07,07,07,07,07,07,07,07,07,12,07,07,12,07,07,07,17,12,07,07,12,12,07,07);
  cAliquotaRJ: array[0..26] of Integer = (07,07,07,07,07,07,07,07,07,07,07,07,12,07,07,12,07,07,07,12,18,07,07,12,12,07,07);
  cAliquotaRO: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12);
  cAliquotaRR: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12);
  cAliquotaSC: array[0..26] of Integer = (07,07,07,07,07,07,07,07,07,07,07,07,12,07,07,12,07,07,07,12,12,07,07,17,12,07,07);
  cAliquotaSP: array[0..26] of Integer = (07,07,07,07,07,07,07,07,07,07,07,07,12,07,07,12,07,07,07,12,12,07,07,12,18,07,07);
  cAliquotaSE: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,17,12);
  cAliquotaTO: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,17);


var
  DM_NFE: TDM_NFE;

implementation

uses uValidacao, uStatus, IdAttachmentFile, dmSkins, uDM, uDM_Conn;

{$R *.dfm}

procedure TDM_NFE.XmlToBD;
var
   i, j, cStatus: integer;
   s: string;
   b: boolean;
begin
   DM.QNF.open;

   DM.QNF.Append;

   DM.QNFIde_cNF.Value        := NFe1.NotasFiscais.Items[0].NFe.Ide.cNF;
   DM.QNFIde_natOp.AsString   := NFe1.NotasFiscais.Items[0].NFe.Ide.natOp;
   DM.QNFIde_indPag.Value     := Integer(NFe1.NotasFiscais.Items[0].NFe.Ide.indPag);
   DM.QNFIde_modelo.Value     := NFe1.NotasFiscais.Items[0].NFe.Ide.modelo;
   DM.QNFIde_serie.Value      := NFe1.NotasFiscais.Items[0].NFe.Ide.serie;
   DM.QNFIde_nNF.Value        := NFe1.NotasFiscais.Items[0].NFe.Ide.nNF;
   DM.QNFIde_dEmi.Value       := NFe1.NotasFiscais.Items[0].NFe.Ide.dEmi;
   DM.QNFIde_Cons_Final.value := Integer(NFe1.NotasFiscais.Items[0].NFe.Ide.indFinal);
   DM.QNFIde_Presencial.value := Integer(NFe1.NotasFiscais.Items[0].NFe.Ide.indPres);

   if NFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt > 0 then
      DM.QNFIde_dSaiEnt.Value := NFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt;

   DM.QNFIde_tpNF.Value       := Integer(NFe1.NotasFiscais.Items[0].NFe.Ide.tpNF);
   DM.QNFIde_tpEmis.Value     := Integer(NFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis);
   DM.QNFIde_tpAmb.Value      := Integer(NFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb);
   DM.QNFIde_verProc.AsString := NFe1.NotasFiscais.Items[0].NFe.Ide.verProc;
   DM.QNFIde_cUF.Value        := NFe1.NotasFiscais.Items[0].NFe.Ide.cUF;
   DM.QNFIde_cMunFG.AsString  := IntToStr(NFe1.NotasFiscais.Items[0].NFe.Ide.cMunFG);
   DM.QNFIde_finNFe.Value     := Integer(NFe1.NotasFiscais.Items[0].NFe.Ide.finNFe);
   DM.QNFIde_xJust.AsString   := NFe1.NotasFiscais.Items[0].NFe.Ide.xJust;

   if NFe1.NotasFiscais.Items[0].NFe.Ide.dhCont > 0 then
      DM.QNFIde_dhCont.Value := NFe1.NotasFiscais.Items[0].NFe.Ide.dhCont;


   DM.QNFEmit_CNPJCPF.AsString           := NFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
   DM.QNFEmit_IE.AsString                := NFe1.NotasFiscais.Items[0].NFe.Emit.IE;
   DM.QNFEmit_xNome.AsString             := NFe1.NotasFiscais.Items[0].NFe.Emit.xNome;
   DM.QNFEmit_xFant.AsString             := NFe1.NotasFiscais.Items[0].NFe.Emit.xFant;
   DM.QNFEmit_EnderEmit_xLgr.AsString    := NFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr;
   DM.QNFEmit_EnderEmit_nro.AsString     := NFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;
   DM.QNFEmit_EnderEmit_fone.AsString    := NFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone;
   DM.QNFEmit_EnderEmit_xCpl.AsString    := NFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl;
   DM.QNFEmit_EnderEmit_xBairro.AsString := NFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
   DM.QNFEmit_EnderEmit_cMun.Value       := NFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
   DM.QNFEmit_EnderEmit_xMun.AsString    := NFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
   DM.QNFEmit_EnderEmit_UF.AsString      := NFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
   DM.QNFmit_EnderEmit_CEP.AsString      := IntToStr(NFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP);
   DM.QNFEmit_enderEmit_cPais.Value      := NFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais;
   DM.QNFEmit_enderEmit_xPais.AsString   := NFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xPais;
   DM.QNFEmit_IEST.AsString              := NFe1.NotasFiscais.Items[0].NFe.Emit.IEST;
   DM.QNFEmit_IM.AsString                := NFe1.NotasFiscais.Items[0].NFe.Emit.IM;
   DM.QNFEmit_CNAE.AsString              := NFe1.NotasFiscais.Items[0].NFe.Emit.CNAE;
   DM.QNFEmit_CRT.Value                  := Integer(NFe1.NotasFiscais.Items[0].NFe.Emit.CRT);

   DM.QNFDest_CNPJCPF.AsString           := NFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
   DM.QNFDest_IE.AsString                := NFe1.NotasFiscais.Items[0].NFe.Dest.IE;
   DM.QNFDest_xNome.AsString             := NFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
   DM.QNFDest_EnderDest_xLgr.AsString    := NFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr;
   DM.QNFDest_EnderDest_nro.AsString     := NFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro;
   DM.QNFDest_EnderDest_fone.AsString    := NFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone;
   DM.QNFDest_EnderDest_CEP.AsString     := IntToStr(NFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP);
   DM.QNFDest_EnderDest_xCpl.AsString    := NFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xCpl;
   DM.QNFDest_EnderDest_xBairro.AsString := NFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro;
   DM.QNFDest_EnderDest_cMun.Value       := NFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun;
   DM.QNFDest_EnderDest_xMun.AsString    := NFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun;
   DM.QNFDest_EnderDest_UF.AsString      := NFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF;
   DM.QNFDest_enderDest_cPais.Value      := NFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cPais;
   DM.QNFDest_enderDest_xPais.AsString   := NFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xPais;
   DM.QNFDest_ISUF.AsString              := NFe1.NotasFiscais.Items[0].NFe.Dest.ISUF;

   DM.QNFTransporta_CNPJCPF.AsString := NFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF;
   DM.QNFTransporta_xNome.AsString   := NFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome;
   DM.QNFTransporta_IE.AsString      := NFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.IE;
   DM.QNFTransporta_xEnder.AsString  := NFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xEnder;
   DM.QNFTransporta_xMun.AsString    := NFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun;
   DM.QNFTransporta_UF.AsString      := NFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.UF;

   DM.QNFnFat.AsString := NFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.nFat;
   DM.QNFvOrig.Value   := NFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.vOrig;
   DM.QNFvDesc.Value   := NFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.vDesc;
   DM.QNFvLiq.Value    := NFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.vLiq;

   DM.QNFICMSTot_vBC.Value     := NFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC;
   DM.QNFICMSTot_vICMS.Value   := NFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS;
   DM.QNFICMSTot_vBCST.Value   := NFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST;
   DM.QNFICMSTot_vST.Value     := NFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST;
   DM.QNFICMSTot_vProd.Value   := NFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd;
   DM.QNFICMSTot_vFrete.Value  := NFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
   DM.QNFICMSTot_vSeg.Value    := NFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg;
   DM.QNFICMSTot_vDesc.Value   := NFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc;
   DM.QNFICMSTot_vII.Value     := NFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII;
   DM.QNFICMSTot_vIPI.Value    := NFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI;
   DM.QNFICMSTot_vPIS.Value    := NFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS;
   DM.QNFICMSTot_vCOFINS.Value := NFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS;
   DM.QNFICMSTot_vOutro.Value  := NFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro;
   DM.QNFICMSTot_vNF.Value     := NFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;

   DM.QNFinfCpl.AsString     := NFe1.NotasFiscais.Items[0].NFe.InfAdic.infCpl;
   DM.QNFinfAdFisco.AsString := NFe1.NotasFiscais.Items[0].NFe.InfAdic.infAdFisco;


   s := 'AUTORIZADA'; //ativa
   DM.QNFstatus.Value := 0; //autorizada

   if (NFe1.NotasFiscais.Items[0].NFe.procNFe.cStat in [110, 205])or
      (NFe1.NotasFiscais.Items[0].NFe.procNFe.cStat=301)or
      (NFe1.NotasFiscais.Items[0].NFe.procNFe.cStat=302) then
   begin
     for i := 0 to DM.QNF.FieldCount - 1 do
     begin
        case DM.QNF.Fields[i].DataType of
           ftCurrency: DM.qnf.FieldByName(DM.QNF.Fields[i].FieldName).Value := 0;
           ftFloat:    DM.qnf.FieldByName(DM.QNF.Fields[i].FieldName).Value := 0;
        end;
     end;
     s := 'DENEGADA';  //denegada
     DM.QNFstatus.Value := 4;
   end;

   DM.QNF.Post;
   DM.QNF.Refresh;

   //grava a tabela nf_chave

   DM.QNF_Chave.Append;
   DM.QNF_Chavechave.AsString     := NFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
   DM.QNF_Chaveprotocolo.AsString := NFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
   DM.QNF_Chavecstat.Value        := DM.QNFstatus.Value;
   DM.QNF_Chavestatus.AsString    := s;
   DM.QNF_Chave.Post;

   DM.QNF.Edit;
   DM.QNFstatus.Value := DM.QNF_Chavecstat.Value;
   DM.QNF.Post;

   for i := 0 to NFe1.NotasFiscais.Items[0].NFe.Det.Count - 1 do
   begin
      DM.QNF_Item.Insert;

      DM.QNF_Itemnf.Value           := DM.QNFid.Value;
      DM.QNF_ItemnItem.Value        := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.nItem;
      DM.QNF_ItemcProd.AsString     := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd;
      DM.QNF_ItemcEAN.AsString      := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cEAN;
      DM.QNF_ItemxProd.AsString     := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.xProd;
      DM.QNF_ItemNCM.AsString       := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.NCM;
      DM.QNF_ItemEXTIPI.AsString    := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.EXTIPI;
      DM.QNF_ItemCFOP.AsString      := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP;
      DM.QNF_ItemuCom.AsString      := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.uCom;
      DM.QNF_ItemqCom.Value         := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.qCom;
      DM.QNF_ItemvUnCom.Value       := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vUnCom;
      DM.QNF_ItemvProd.Value        := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vProd;
      DM.QNF_ItemcEANTrib.AsString  := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cEANTrib;
      DM.QNF_ItemuTrib.AsString     := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.uTrib;
      DM.QNF_ItemqTrib.Value        := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.qTrib;
      DM.QNF_ItemvUnTrib.Value      := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vUnTrib;
      DM.QNF_ItemvOutro.Value       := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vOutro;
      DM.QNF_ItemvFrete.Value       := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vFrete;
      DM.QNF_ItemvSeg.Value         := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vSeg;
      DM.QNF_ItemvDesc.Value        := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vDesc;
      DM.QNF_IteminfAdProd.AsString := NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].infAdProd;

      DM.QNF_ItemICMS_CST.Value         := Integer(NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.CST);
      DM.QNF_ItemICMS_orig.Value        := Integer(NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.orig);
      DM.QNF_ItemICMS_modBC.Value       := Integer(NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.modBC);
      DM.QNF_ItemICMS_vBC.Value         := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vBC);
      DM.QNF_ItemICMS_pICMS.Value       := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pICMS);
      DM.QNF_ItemICMS_vICMS.Value       := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMS);
      DM.QNF_ItemICMS_CSOSN.Value       := Integer(NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.CSOSN);
      DM.QNF_ItemICMS_pCredSN.Value     := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pCredSN);
      DM.QNF_ItemICMS_vCredICMSSN.Value := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vCredICMSSN);
      DM.QNF_ItemICMS_modBCST.Value     := Integer(NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.modBCST);
      DM.QNF_ItemICMS_pMVAST.Value      := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pMVAST);
     // DM.QNF_ItemICMS_vTabelaST.Value   := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.);
      DM.QNF_ItemICMS_pRedBCST.Value    := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pRedBCST);
      DM.QNF_ItemICMS_vBCST.Value       := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vBCST);
      DM.QNF_ItemICMS_pICMSST.Value     := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pICMSST);
      DM.QNF_ItemICMS_vICMSST.Value     := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMSST);
      DM.QNF_ItemICMS_pRedBC.Value      := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pRedBC);
      DM.QNF_ItemICMS_pRedBCST.Value    := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pRedBCST);

      DM.QNF_ItemIPI_CST.Value          := integer(NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.CST);
      DM.QNF_ItemIPI_clEnq.AsString     := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.clEnq);
      DM.QNF_ItemIPI_CNPJProd.AsString  := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.CNPJProd);
      DM.QNF_ItemIPI_cSelo.AsString     := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.cSelo);
      DM.QNF_ItemIPI_qSelo.Value        := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.qSelo);
      DM.QNF_ItemIPI_cEnq.AsString      := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.cEnq);
      DM.QNF_ItemIPI_vBC.Value          := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vBC);
      DM.QNF_ItemIPI_qUnid.Value        := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.qUnid);
      DM.QNF_ItemIPI_vUnid.Value        := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vUnid);
      DM.QNF_ItemIPI_pIPI.Value         := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.pIPI);
      DM.QNF_ItemIPI_vIPI.Value         := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vIPI);

      DM.QNF_ItemII_vBc.Value          := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.II.vBc);
      DM.QNF_ItemII_vDespAdu.Value     := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.II.vDespAdu);
      DM.QNF_ItemII_vII.Value          := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.II.vII);
      DM.QNF_ItemII_vIOF.Value         := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.II.vIOF);

      DM.QNF_ItemPIS_CST.Value         := integer(NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.CST);
      DM.QNF_ItemPIS_vBC.Value         := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.vBC);
      DM.QNF_ItemPIS_pPIS.Value        := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.pPIS);
      DM.QNF_ItemPIS_vPIS.Value        := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.vPIS);
      DM.QNF_ItemPIS_qBCProd.Value     := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.qBCProd);
      DM.QNF_ItemPIS_vAliqProd.Value   := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.vAliqProd);

      DM.QNF_ItemPISST_vBc.Value       := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PISST.vBc);
      DM.QNF_ItemPISST_pPis.Value      := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PISST.pPis);
      DM.QNF_ItemPISST_qBCProd.Value   := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PISST.qBCProd);
      DM.QNF_ItemPISST_vAliqProd.Value := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PISST.vAliqProd);
      DM.QNF_ItemPISST_vPIS.Value      := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PISST.vPIS);

      DM.QNF_ItemCOFINS_CST.Value       := integer(NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.CST);
      DM.QNF_ItemCOFINS_vBC.Value       := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.vBC);
      DM.QNF_ItemCOFINS_pCOFINS.Value   := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.pCOFINS);
      DM.QNF_ItemCOFINS_vCOFINS.Value   := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.vCOFINS);
      DM.QNF_ItemCOFINS_qBCProd.Value   := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.qBCProd);
      DM.QNF_ItemCOFINS_vAliqProd.Value := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.vAliqProd);

      DM.QNF_ItemCOFINSST_vBC.Value       := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINSST.vBC);
      DM.QNF_ItemCOFINSST_pCOFINS.Value   := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINSST.pCOFINS);
      DM.QNF_ItemCOFINSST_qBCProd.Value   := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINSST.qBCProd);
      DM.QNF_ItemCOFINSST_vAliqProd.Value := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINSST.vAliqProd);
      DM.QNF_ItemCOFINSST_vCOFINS.Value   := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINSST.vCOFINS);

      DM.QNF_ItemISSQN_vBC.Value       := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ISSQN.vBC);
      DM.QNF_ItemISSQN_vAliq.Value     := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ISSQN.vAliq);
      DM.QNF_ItemISSQN_vISSQN.Value    := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ISSQN.vISSQN);
      DM.QNF_ItemISSQN_cMunFG.Value    := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ISSQN.cMunFG);
      DM.QNF_ItemISSQN_cListServ.AsString := (NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ISSQN.cListServ);
      DM.QNF_ItemISSQN_SitTrib.Value   := Integer(NFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ISSQN.cSitTrib);
      DM.QNF_Item.Post;

{$IFDEF GER}
//baixa do estoque
   {   b := DM.QNF_ItemcEAN.AsString = EmptyStr;

      if not b then
      begin
         DM.QEstoque.Open('select * from estoque where cod_gtin=' + Texto_Mysql(DM.QNF_ItemcEAN.AsString));
         b := DM.QEstoque.IsEmpty;
      end;

      if ((b)and(MessageBox(0, PWideChar('O produto ' + DM.QNF_ItemxProd.AsString + ' não foi localizado na tabela de produtos.'#13 +
                              'Deseja associar o produto para dar baixa no estoque?'),
                           'Atenção!', MB_ICONQUESTION or MB_YESNO) = idYes))  then //não achou o produto
      begin
         frmCadEstoque := TfrmCadEstoque.Create(Self);
         frmCadEstoque.TabCad.TabVisible := False;
         frmCadEstoque.btnReplicar.Hide;
         frmCadEstoque.btnAssociar.Show;
         frmCadEstoque.TabPesq.TabVisible := True;
         frmCadEstoque.pgCad.ActivePage := frmCadEstoque.TabPesq;

         if frmCadEstoque.ShowModal = mrOk then
         if DM.QEstoque.Active then
         if not DM.QEstoque.IsEmpty then
         begin
            DM.QEstoque.Edit;
            DM.QEstoquequant.Value := IIf(DM.QEstoquequant.Value - DM.QNF_ItemqCom.Value < 0, 0, DM.QEstoquequant.Value - DM.QNF_ItemqCom.Value);
            DM.QEstoque.Post;
         end;
         FreeAndNil(frmCadEstoque);
      end
      else
      if not b then //achou o produto
      begin
         DM.QEstoque.Edit;
         DM.QEstoquequant.Value := IIf(DM.QEstoquequant.Value - DM.QNF_ItemqCom.Value < 0, 0, DM.QEstoquequant.Value - DM.QNF_ItemqCom.Value);
         DM.QEstoque.Post;
      end; }
{$ENDIF}
   end;

   for i := 0 to NFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count -1 do
   begin
      DM.QNF_Duplicata.Insert;
      DM.QNF_Duplicatanf.Value      := DM.QNFid.Value;
      DM.QNF_DuplicatanDup.AsString := NFe1.NotasFiscais.Items[0].NFe.Cobr.Dup[i].nDup;
      DM.QNF_DuplicatavDup.Value    := NFe1.NotasFiscais.Items[0].NFe.Cobr.Dup[i].vDup;
      DM.QNF_DuplicatadVenc.Value   := NFe1.NotasFiscais.Items[0].NFe.Cobr.Dup[i].dVenc;
      DM.QNF_Duplicata.Post;
   end;


   for i := 0 to NFe1.NotasFiscais.Items[0].NFe.Transp.Reboque.Count -1 do
   begin
      DM.QNF_Reboque.Insert;
      DM.QNF_Reboquenf.Value       := DM.QNFid.Value;
      DM.QNF_Reboqueplaca.AsString := NFe1.NotasFiscais.Items[0].NFe.Transp.Reboque[i].placa;
      DM.QNF_Reboqueuf.AsString    := NFe1.NotasFiscais.Items[0].NFe.Transp.Reboque[i].UF;
      DM.QNF_Reboquerntc.AsString  := NFe1.NotasFiscais.Items[0].NFe.Transp.Reboque[i].RNTC;
      DM.QNF_Reboque.Post;
   end;

   for i := 0 to NFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Count -1 do
   begin
      DM.QNF_referenciada.Insert;
      DM.QNF_Referenciadanf.Value := DM.QNFid.Value;
      DM.QNF_ReferenciadarefNFe.AsString     := NFe1.NotasFiscais.Items[0].NFe.Ide.NFref[i].refNFe;
      DM.QNF_ReferenciadaRefNF_cUF.Value     := NFe1.NotasFiscais.Items[0].NFe.Ide.NFref[i].RefNF.cUF;
      DM.QNF_ReferenciadaRefNF_AAMM.AsString := NFe1.NotasFiscais.Items[0].NFe.Ide.NFref[i].RefNF.AAMM;
      DM.QNF_ReferenciadaRefNF_CNPJ.AsString := NFe1.NotasFiscais.Items[0].NFe.Ide.NFref[i].RefNF.CNPJ;
      DM.QNF_ReferenciadaRefNF_modelo.Value  := NFe1.NotasFiscais.Items[0].NFe.Ide.NFref[i].RefNF.modelo;
      DM.QNF_ReferenciadaRefNF_serie.Value   := NFe1.NotasFiscais.Items[0].NFe.Ide.NFref[i].RefNF.serie;
      DM.QNF_ReferenciadaRefNF_nNF.Value     := NFe1.NotasFiscais.Items[0].NFe.Ide.NFref[i].RefNF.nNF;
      DM.QNF_referenciada.Post;
   end;

   for i := 0 to NFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Count -1 do
   begin
      DM.QNF_Volume.Insert;
      DM.QNF_Volumenf.Value         := DM.QNFid.Value;
      DM.QNF_VolumeqVol.Value       := NFe1.NotasFiscais.Items[0].NFe.Transp.Vol[i].qVol;
      DM.QNF_Volumeespecie.AsString := NFe1.NotasFiscais.Items[0].NFe.Transp.Vol[i].esp;
      DM.QNF_Volumemarca.AsString   := NFe1.NotasFiscais.Items[0].NFe.Transp.Vol[i].marca;
      DM.QNF_VolumenVol.AsString    := NFe1.NotasFiscais.Items[0].NFe.Transp.Vol[i].nVol;
      DM.QNF_VolumepesoL.Value      := NFe1.NotasFiscais.Items[0].NFe.Transp.Vol[i].pesoL;
      DM.QNF_VolumepesoB.Value      := NFe1.NotasFiscais.Items[0].NFe.Transp.Vol[i].pesoB;
      DM.QNF_Volume.Post;
      DM.QNF_Volume.Refresh;

      for j := 0 to NFe1.NotasFiscais.Items[0].NFe.Transp.Vol[i].Lacres.Count -1 do
      begin
         DM.QNF_Lacre.Insert;
         DM.QNF_Lacrevol.Value       := DM.QNF_Volumeid.Value;
         DM.QNF_Lacrenlacre.AsString := NFe1.NotasFiscais.Items[0].NFe.Transp.Vol[i].Lacres[j].nLacre;
         DM.QNF_Lacre.Post;
      end;
   end;

   DM.QNF.Close;
end;

procedure TDM_NFE.Conectar;
begin
   DB.Connected                    := False;
  // drvSQLite.VendorLib             := Aqui('LIB\32',
   DB.Params.Values['Database']    := Aqui(C_PATH_ARQ_LOCAL_NFS, 'autocom.nfe');
   DB.Connected                    := True;
end;

function TDM_NFE.Envia_Mail(Email, Conta, Senha, Autentica, Smtp, Auth_SSL,
   Nom_exibe, Porta_smtp, Corpo, Destinatario, Assunto, ArqXML, ArqPDF: String;
   tipo: integer) : Boolean;
begin
   Result      := True;
   IdSMTP.Host := Smtp;
   { Configuraçao da Autenticação }
   if tipo = 0 then { Sem Autenticação }
   begin
      IdSMTP.IOHandler := nil;
      IdSMTP.AuthType := satNone;
      IdSMTP.Username := '';
      IdSMTP.Password := '';
      IdSMTP.UseTLS := utNoTLSSupport;
   end
   else if tipo = 1 then { Default }
   begin
      IdSMTP.IOHandler := nil;
      IdSMTP.AuthType := satDefault;
      IdSMTP.Username := Conta;
      IdSMTP.Password := Senha;
      IdSMTP.UseTLS := utNoTLSSupport;
   end
   else if tipo = 2 then { SSL }
   begin
      IdSMTP.IOHandler := idHandle;
      IdSMTP.AuthType := satDefault;
      IdSMTP.Username := Conta;
      IdSMTP.Password := Senha;
      IdSMTP.UseTLS := utUseImplicitTLS;
      { Configuramos o IOHandle }
      idHandle.SSLOptions.Method := sslvSSLv23;
   end
   else if tipo = 3 then { TLS }
   begin
      IdSMTP.IOHandler := idHandle;
      IdSMTP.AuthType := satDefault;
      IdSMTP.Username := Conta;
      IdSMTP.Password := Senha;
      IdSMTP.UseTLS := utUseRequireTLS;
      { Configuramos o IOHandle }
      idHandle.SSLOptions.Method := sslvSSLv3;
   end;

   IdSMTP.Port := StrToInt(Porta_smtp);
   { Configuraçao da Autenticação FIM }

   IdMessage.From.Name    := Nom_exibe; // Nome do Remetente
   IdMessage.From.Address := Email; // E-mail do Remetente = email valido...
   IdMessage.Recipients.EMailAddresses := Destinatario; // destinatario
   IdMessage.Priority     := mpHighest;
   IdMessage.Subject      := Assunto; // Assunto do E-mail

   try
      if trim(ArqXML) <> '' then
      begin
         TIdAttachmentFile.Create(IdMessage.MessageParts, TFileName(ArqXML));
      end;

      if trim(ArqPDF) <> '' then
      begin
         TIdAttachmentFile.Create(IdMessage.MessageParts, TFileName(ArqPDF));
      end;

      IdMessage.Body.Clear;
      IdMessage.Body.Add(Corpo);

      IdSMTP.Connect;

      if IdSMTP.AuthType <> satNone then
         IdSMTP.Authenticate;

      IdSMTP.Send(IdMessage);
      IdMessage.MessageParts.Clear;
      IdSMTP.Disconnect();
      Status(False,'','');
   except
      on E: Exception do
      begin
         IdMessage.MessageParts.Clear;
        // IdSMTP.Disconnect();
         Status(False,'','');
         ShowMessage('Erro no envio do e-mail: ' + E.Message);
         Result := False;
      end;
   end;
end;

procedure TDM_NFE.exportarcampos;
var
   i,j: integer;
   s: string;
   lista: TStringList;
begin
   lista := TStringList.Create;

   for i := 0 to ComponentCount - 1 do
   begin
      if (Components[i] is TClientDataSet) then
      begin
         LISTA.Append('========================================= ' +(Components[i] as TClientDataSet).Name);
         s := '';

         for j := 0 to (Components[i] as TClientDataSet).FieldCount - 1 do
         begin
            case (Components[i] as TClientDataSet).Fields[j].DataType of
               ftString: s := s + (Components[i] as TClientDataSet).Fields[j].FieldName + ' VARCHAR(' + iNTtOsTR((Components[i] as TClientDataSet).Fields[j].Size) + ') DEFAULT NULL, ';
               ftInteger: s := s + (Components[i] as TClientDataSet).Fields[j].FieldName + ' integer(11) DEFAULT 0, ';
               ftCurrency: s := s + (Components[i] as TClientDataSet).Fields[j].FieldName + ' double(16,3) DEFAULT 0, ';
               ftFloat: s := s + (Components[i] as TClientDataSet).Fields[j].FieldName + ' double(16,3) DEFAULT 0, ';
               ftBoolean: s := s + (Components[i] as TClientDataSet).Fields[j].FieldName + ' CHAR(1) DEFAULT "N", ';
               ftMemo: s := s + (Components[i] as TClientDataSet).Fields[j].FieldName + ' longtext, ';
               ftDate: s := s + (Components[i] as TClientDataSet).Fields[j].FieldName + ' date, ';
               ftDateTime: s := s + (Components[i] as TClientDataSet).Fields[j].FieldName + ' datetime, ';
            end;
         end;
         LISTA.Append(s);
      end;

   end;

   lista.SaveToFile(Aqui('Tmp', 'campos.txt'));
   ShowMessage('ok');
   lista.Free;

end;

procedure TDM_NFE.Fechar_Datasets;
var
   i: integer;
begin
   for i := 0 to ComponentCount - 1 do
   begin
      if (Components[i] is TDataSet) then
      if (Components[i] as TDataSet).Active then
         (Components[i] as TDataSet).Close;
   end;
end;

function TDM_NFE.AliquotaInterEstadual(const pEstadoOrigem, pEstadoDestino: String): Double;
var
  lEstadoDestino: SmallInt;
begin
  lEstadoDestino := CodEstado(pEstadoDestino);

  if pEstadoOrigem = 'AC' then Result := cAliquotaAC[lEstadoDestino] else
  if pEstadoOrigem = 'AL' then Result := cAliquotaAL[lEstadoDestino] else
  if pEstadoOrigem = 'AM' then Result := cAliquotaAM[lEstadoDestino] else
  if pEstadoOrigem = 'AP' then Result := cAliquotaAP[lEstadoDestino] else
  if pEstadoOrigem = 'BA' then Result := cAliquotaBA[lEstadoDestino] else
  if pEstadoOrigem = 'CE' then Result := cAliquotaCE[lEstadoDestino] else
  if pEstadoOrigem = 'DF' then Result := cAliquotaDF[lEstadoDestino] else
  if pEstadoOrigem = 'ES' then Result := cAliquotaES[lEstadoDestino] else
  if pEstadoOrigem = 'GO' then Result := cAliquotaGO[lEstadoDestino] else
  if pEstadoOrigem = 'MA' then Result := cAliquotaMA[lEstadoDestino] else
  if pEstadoOrigem = 'MT' then Result := cAliquotaMT[lEstadoDestino] else
  if pEstadoOrigem = 'MS' then Result := cAliquotaMS[lEstadoDestino] else
  if pEstadoOrigem = 'MG' then Result := cAliquotaMG[lEstadoDestino] else
  if pEstadoOrigem = 'PA' then Result := cAliquotaPA[lEstadoDestino] else
  if pEstadoOrigem = 'PB' then Result := cAliquotaPB[lEstadoDestino] else
  if pEstadoOrigem = 'PR' then Result := cAliquotaPR[lEstadoDestino] else
  if pEstadoOrigem = 'PE' then Result := cAliquotaPE[lEstadoDestino] else
  if pEstadoOrigem = 'PI' then Result := cAliquotaPI[lEstadoDestino] else
  if pEstadoOrigem = 'RN' then Result := cAliquotaRN[lEstadoDestino] else
  if pEstadoOrigem = 'RS' then Result := cAliquotaRS[lEstadoDestino] else
  if pEstadoOrigem = 'RJ' then Result := cAliquotaRJ[lEstadoDestino] else
  if pEstadoOrigem = 'RO' then Result := cAliquotaRO[lEstadoDestino] else
  if pEstadoOrigem = 'RR' then Result := cAliquotaRR[lEstadoDestino] else
  if pEstadoOrigem = 'SC' then Result := cAliquotaSC[lEstadoDestino] else
  if pEstadoOrigem = 'SP' then Result := cAliquotaSP[lEstadoDestino] else
  if pEstadoOrigem = 'SE' then Result := cAliquotaSE[lEstadoDestino] else
  if pEstadoOrigem = 'TO' then Result := cAliquotaTO[lEstadoDestino] else Result := 0;
end;

procedure TDM_NFE.Consultar_Cadastro(UF, Documento: string);
begin
  Documento :=  Number(Documento);

  NFe1.WebServices.ConsultaCadastro.UF  := UF;

  if Length(Documento) > 11 then
     NFe1.WebServices.ConsultaCadastro.CNPJ := Documento
  else
     NFe1.WebServices.ConsultaCadastro.CPF := Documento;

  NFe1.WebServices.ConsultaCadastro.Executar;

  Status(False, '','');

  ShowMessage(NFe1.WebServices.ConsultaCadastro.xMotivo + #13 +
              NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xNome);
end;

function TDM_NFE.Converter_CST_CSOSN(CST: boolean; Valor: string): integer;
var
   i: integer;
begin
   if CST then
   begin
      for i := Low(C_ARR_5) to High(C_ARR_5) do
      if C_ARR_5[i]=Valor then
      begin
         Result := i;
         exit;
      end;
   end
   else
   begin
      for i := Low(C_ARR_4) to High(C_ARR_4) do
      if C_ARR_4[i]=Valor then
      begin
         Result := i;
         exit;
      end;
   end
end;

procedure TDM_NFE.DataModuleCreate(Sender: TObject);
begin
// VERIFICA SE EXISTE O ARQUIVO DENTRO DA PASTA
  if FileExists(Aqui('Txt','gridptbr.ini')) then
  with DMSkin do
  begin
    cxLocalizer1.LoadFromFile(Aqui('Txt','gridptbr.ini'));
    cxLocalizer1.LanguageIndex := 1; // MUDA DE LINGUAGEM
    cxLocalizer1.Active := TRUE;     // ATIVA O COMPONENTE
  end;

   if db.Connected then
   begin
      raise Exception.Create('ERRO 25');
   end
end;

procedure TDM_NFE.DBError(ASender: TObject; const AInitiator: IFDStanObject; var AException: Exception);
begin
   Log('NFE_Err', (ASender as TFDConnection).Name,AException.Message);
   raise Exception.Create(AException.Message);
end;

procedure TDM_NFE.Delete_NF_Local;
begin
   if DM_NFE.QNF.Active then
   begin
      DMConn.Q1.Open('select id from nf where Ide_nNF=' + Texto_Mysql(DM_NFE.QNFIde_nNF.Value) +
                 ' and Ide_serie=' + Texto_Mysql(DM_NFE.QNFIde_serie.Value)
      );

      if (DM_NFE.QNFstatus.Value in [0, 99, 100, 150]) then
         DM_NFE.QNF.Delete
      else
      if (DMConn.Q1.Fields[0].AsInteger>0) then
      begin
         DM_NFE.QNF.Edit;
         DM_NFE.QNFstatus.Value := 105;
         DM_NFE.QNF.Post;
         ShowMessage('A NF exibida está pendente de consulta na SEFAZ para conclusão.'#13'Reemita a NF para concluir o processo.');
      end;
   end;
end;

procedure TDM_NFE.Abrir_Datasets;
var
   i: integer;
begin
   DM.Conectar;
   DM.QEmpresa.Open;
   QCfg.Open;
   QFEmissao.Open;
   DM.QNatOper.Open;
   QNF.Open;
   QNF.Last;
   QNF_Item.Open;
   QNF_Item_Med.Open;
   QNF_Duplicata.Open;
   QNF_Reboque.Open;
   QNF_Referenciada.Open;
   QNF_Volume.Open;
   QNF_Lacre.Open;
   QNF_Chave.Open;
end;

function TDM_NFE.AliquotaInterEstadual(const pEstadoOrigem: String): Double;
begin
  Result := AliquotaInterEstadual(pEstadoOrigem, pEstadoOrigem);
end;

function TDM_NFE.CodEstado(const pEstado: String): SmallInt;
begin
  if pEstado = 'AC' then Result := 00 else
  if pEstado = 'AL' then Result := 01 else
  if pEstado = 'AM' then Result := 02 else
  if pEstado = 'AP' then Result := 03 else
  if pEstado = 'BA' then Result := 04 else
  if pEstado = 'CE' then Result := 05 else
  if pEstado = 'DF' then Result := 06 else
  if pEstado = 'ES' then Result := 07 else
  if pEstado = 'GO' then Result := 08 else
  if pEstado = 'MA' then Result := 09 else
  if pEstado = 'MT' then Result := 10 else
  if pEstado = 'MS' then Result := 11 else
  if pEstado = 'MG' then Result := 12 else
  if pEstado = 'PA' then Result := 13 else
  if pEstado = 'PB' then Result := 14 else
  if pEstado = 'PR' then Result := 15 else
  if pEstado = 'PE' then Result := 16 else
  if pEstado = 'PI' then Result := 17 else
  if pEstado = 'RN' then Result := 18 else
  if pEstado = 'RS' then Result := 19 else
  if pEstado = 'RJ' then Result := 20 else
  if pEstado = 'RO' then Result := 21 else
  if pEstado = 'RR' then Result := 22 else
  if pEstado = 'SC' then Result := 23 else
  if pEstado = 'SP' then Result := 24 else
  if pEstado = 'SE' then Result := 25 else
  if pEstado = 'TO' then Result := 26 else Result := 0;
end;

function TDM_NFE.MD5FromString(const AString: String): String;
begin
  Result := AString + _C;
  Result := EAD.MD5FromString(Result);
end;

procedure TDM_NFE.Salvar;
var
   i: integer;
begin
   for i := 0 to ComponentCount - 1 do
   begin
      if (Components[i] is TDataSet) then
      if (Components[i] as TDataSet).State in [dsEdit, dsInsert] then
         (Components[i] as TDataSet).Post;
   end;
end;

procedure TDM_NFE.Status(Mostrar: Boolean; Msg1, Msg2: String);
begin
   if Mostrar then
   begin
      if not Assigned(frmStatus) then
         frmStatus := TfrmStatus.Create(application);

      if Msg1 <> C_ST_VAZIO then
         frmStatus.LBlStatus.Caption := Msg1;

      if Msg2 <> C_ST_VAZIO then
         frmStatus.mmLog.Lines.Add(Msg2);

      frmStatus.Show;
      frmStatus.BringToFront;
      application.ProcessMessages;
   end
   else if Assigned(frmStatus) then
   begin
      frmStatus.close;
      FreeAndNil(frmStatus);
   end;
   application.ProcessMessages;
end;

procedure TDM_NFE.NFe1GerarLog(const Mensagem: string);
begin
   Log('nfe', 'NF-e', Mensagem);
   Status(Mensagem <> C_ST_VAZIO, '', Mensagem);
   application.ProcessMessages;
end;

procedure TDM_NFE.LimparArqXml;
begin
   try
      DeleteFiles(NFe1.Configuracoes.Arquivos.PathSalvar, '*.xml');
   finally
      ;
   end;
end;


procedure TDM_NFE.Imprimir_Evento;
begin
  OD1.Title      := 'Selecione o Evento';
  OD1.DefaultExt := '*.XML';
  OD1.Filter     := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OD1.InitialDir := NFe1.Configuracoes.Arquivos.PathNFe;

  if OD1.Execute then
  begin
    NFe1.EventoNFe.Evento.Clear;
    NFe1.EventoNFe.LerXML(OD1.FileName) ;
    NFe1.ImprimirEvento;
  end;
end;

procedure TDM_NFE.Imprimir_NFe;
begin
  OD1.Title      := 'Selecione a NFE';
  OD1.DefaultExt := C_212;
  OD1.Filter     := C_213;
  OD1.InitialDir := NFe1.Configuracoes.Arquivos.PathNFe;

  if OD1.Execute then
  begin
    NFe1.NotasFiscais.Clear;
    NFe1.NotasFiscais.LoadFromFile(OD1.FileName);

     if NFe1.NotasFiscais.Items[0].NFe.procNFe.nProt = '' then

   {  if NFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
     begin
       NFe1.WebServices.ConsultaDPEC.NFeChave := NFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
       NFe1.WebServices.ConsultaDPEC.Executar;
       NFe1.DANFE.ProtocoloNFe := NFe1.WebServices.ConsultaDPEC.nRegDPEC + ' ' +
                                  DateTimeToStr(NFe1.WebServices.ConsultaDPEC.dhRegDPEC);
     end; }

     if (MessageBox(0, C_216, 'ATENÇÃO', MB_ICONWARNING or MB_YESNO) = idNo) then
         exit;

    NFe1.NotasFiscais.Imprimir;
  end;
end;


procedure TDM_NFE.Inserir_Protocolo;
var
  NomeArq : String;
begin
  OD1.Title      := 'Selecione a NFE';
  OD1.DefaultExt := C_212;
  OD1.Filter     := C_213;
  OD1.InitialDir := NFe1.Configuracoes.Arquivos.PathNFe;

  if OD1.Execute then
  begin
    NFe1.NotasFiscais.Clear;
    NFe1.NotasFiscais.LoadFromFile(OD1.FileName);
    NFe1.Consultar;
    NomeArq := OD1.FileName;
    Status(False, '', '');

    if pos(UpperCase('-nfe.xml'),UpperCase(NomeArq)) > 0 then
       NomeArq := StringReplace(NomeArq,'-nfe.xml','-procNfe.xml',[rfIgnoreCase]);

    NFe1.NotasFiscais.Items[0].GravarXML(NomeArq);
    ShowMessage('Arquivo gravado em: '+ NomeArq);
  end;
end;

function TDM_NFE.ConsultarNFe(Nfe: String): Integer;
var
   s: string;
begin
   Result := -1;

   NFe1.NotasFiscais.Clear;
   LimparArqXml;


   if trim(Nfe) = C_ST_VAZIO then
   begin
      OD1.Title             := 'Selecione a NFE';
      s := NFe1.Configuracoes.Arquivos.PathNFe + FormatDateTime('yyyymm', date) + '\NFe\';
      ForceDirectories(s);
      OD1.InitialDir := s;
      OD1.DefaultExt := C_212;
      OD1.Filter     := C_213;

      if OD1.Execute then
      begin
         Nfe := OD1.FileName;
      end
      else
      begin
         exit;
      end;
   end;

   NFe1.NotasFiscais.Clear;
   NFe1.NotasFiscais.LoadFromFile(Nfe);

   Try
      Status(True, 'NFE - Consultando NF!', 'Você poderá ser solicitado a informar o PIN do certificado digital');

      if NFe1.Consultar then
         Try
            Result := NFe1.WebServices.Consulta.cStat;
         except
            ;
         End;
   Finally
      Status(False, '', '');
   End;
end;

procedure TDM_NFE.Gerar_NFe(hora, SemDataSaida: boolean);
var
   y,m,d,h,n,s,l: word;
   i: integer;
   ncm: string;
   IBPTaxF, IBPTaxE, IBPTaxM: currency;
begin
   NFe1.NotasFiscais.Clear;
   IBPTaxF := 0;
   IBPTaxE := 0;
   IBPTaxM := 0;

   with NFe1.NotasFiscais.Add.NFe do
      begin
        Ide.cNF       := QNFIde_cNF.Value;  //|Caso não seja preenchido será gerado um número aleatório pelo componente
        Ide.serie     := QNFIde_serie.Value;//|estes valores sao gravados no before post de TIde,
        Ide.nNF       := QNFIde_nNF.Value;  //| oriundos de TFEmissao
        Ide.natOp     := Clip(QNFIde_natOp.AsString, QNFIde_natOp.Size);
        Ide.indPag    := TpcnIndicadorPagamento(QNFIde_indPag.Value);
        Ide.modelo    := QNFIde_modelo.Value;
        Ide.dEmi      := now;//QNFIde_dEmi.Value; - usa data hora corrente q é convertida em UTC pelo componente
//versão 3.10
        Ide.indFinal  := TpcnConsumidorFinal(QNFIde_Cons_Final.Value);//0= Nao 1 = Sim
        Ide.indPres   := TpcnPresencaComprador(QNFIde_Presencial.Value);

        if QNFEmit_EnderEmit_UF.AsString = QNFDest_EnderDest_UF.AsString then
           Ide.idDest := doInterna
        else
           Ide.idDest := doInterestadual;//não uso exportação
//----
           DecodeDateTime(Ide.dEmi, y,m,d,h,n,s,l);
           Ide.dSaiEnt   := EncodeDateTime(y,m,d,h,n,s,l);

     //   if (hora)and(not SemDataSaida) then
        Ide.hSaiEnt   := HourOf(Ide.dEmi);

        Ide.tpNF      := TpcnTipoNFe(QNFIde_tpNF.value);
        Ide.finNFe    := TpcnFinalidadeNFe(QNFIde_finNFe.Value);
        Ide.tpEmis    := TpcnTipoEmissao(QNFIde_tpEmis.Value);
        Ide.tpAmb     := TpcnTipoAmbiente(QNFIde_tpAmb.Value);
        Ide.tpImp     := TpcnTipoImpressao(QCfgCfg_Geral_tpImp.AsInteger);
        Ide.verProc   := QNFIde_verProc.AsString;
        Ide.cUF       := UFtoCUF(QNFEmit_EnderEmit_UF.AsString);
        Ide.cMunFG    := QNFEmit_EnderEmit_cMun.Value;

        if Ide.tpEmis <> teNormal then
        begin
           Ide.dhCont := now;
           Ide.xJust  := QNFIde_xJust.AsString;
           NFe1.Configuracoes.Geral.FormaEmissao := TpcnTipoEmissao(QNFIde_tpEmis.AsInteger);
        end;

   //Para NFe referenciada use os campos abaixo

        if not QNF_Referenciada.IsEmpty then
        begin
           QNF_Referenciada.First;
           while not QNF_Referenciada.Eof do
           begin
              with Ide.NFref.Add do
               begin
                 RefNFe       := QNF_ReferenciadarefNFe.AsString; //NFe Eletronica
                 RefCTe       := QNF_ReferenciadaRefCte.AsString;    //CT-e

                 RefNF.cUF    := QNF_ReferenciadaRefNF_cUF.Value;             // |
                 RefNF.AAMM   := number(QNF_ReferenciadaRefNF_AAMM.AsString); // |
                 RefNF.CNPJ   := Number(QNF_ReferenciadaRefNF_CNPJ.AsString); // |
                 RefNF.modelo := QNF_ReferenciadaRefNF_modelo.Value;          // |- NFe Modelo 1/1A
                 RefNF.serie  := QNF_ReferenciadaRefNF_serie.Value;           // |
                 RefNF.nNF    := QNF_ReferenciadaRefNF_nNF.Value;             // |

                 RefNFP.cUF     := QNF_ReferenciadaRefNFP_cUF.Value;                // |
                 RefNFP.AAMM    := number(QNF_ReferenciadaRefNFP_AAMM.AsString);    // |
                 RefNFP.CNPJCPF := Number(QNF_ReferenciadaRefNFP_CNPJCPF.AsString); // |
                 RefNFP.IE      := Number(QNF_ReferenciadaRefNFP_IE.AsString);      // |- NF produtor Rural
                 RefNFP.modelo  := QNF_ReferenciadaRefNFP_modelo.AsString;          // |
                 RefNFP.serie   := QNF_ReferenciadaRefNFP_serie.Value;              // |
                 RefNFP.nNF     := QNF_ReferenciadaRefNFP_nNF.Value;                // |

                 RefECF.modelo  := TpcnECFModRef(QNF_ReferenciadaRefECF_modelo.Value); // |
                 RefECF.nECF    := QNF_ReferenciadaRefECF_nECF.AsString;               // |- Cupom Fiscal
                 RefECF.nCOO    := QNF_ReferenciadaRefECF_nCOO.AsString;               // |
               end;
               QNF_Referenciada.Next;
           end;
        end;

         Emit.CNPJCPF           := Number(QNFEmit_CNPJCPF.AsString);
         Emit.IE                := Number(QNFEmit_IE.AsString);
         Emit.xNome             := Clip(QNFEmit_xNome.AsString, QNFEmit_xNome.Size);
         Emit.xFant             := Clip(QNFEmit_xFant.AsString, QNFEmit_xFant.Size);

         Emit.EnderEmit.fone    := Number(QNFEmit_EnderEmit_fone.AsString);
         Emit.EnderEmit.CEP     := StrToIntDef(Number(QNFmit_EnderEmit_CEP.AsString), 0);
         Emit.EnderEmit.xLgr    := Clip(QNFEmit_EnderEmit_xLgr.AsString, QNFEmit_EnderEmit_xLgr.Size);
         Emit.EnderEmit.nro     := Clip(QNFEmit_EnderEmit_nro.AsString, QNFEmit_EnderEmit_nro.Size);
         Emit.EnderEmit.xCpl    := Clip(QNFEmit_EnderEmit_xCpl.AsString, QNFEmit_EnderEmit_xCpl.Size);
         Emit.EnderEmit.xBairro := Clip(QNFEmit_EnderEmit_xBairro.AsString, QNFEmit_EnderEmit_xBairro.Size);
         Emit.EnderEmit.cMun    := QNFEmit_EnderEmit_cMun.Value;
         Emit.EnderEmit.xMun    := Clip(QNFEmit_EnderEmit_xMun.AsString, QNFEmit_EnderEmit_xMun.Size);
         Emit.EnderEmit.UF      := QNFEmit_EnderEmit_UF.AsString;
         Emit.enderEmit.cPais   := 1058;
         Emit.enderEmit.xPais   := 'BRASIL';

         Emit.IEST              := Number(QNFEmit_IEST.AsString);
         Emit.IM                := Number(QNFEmit_IM.AsString);   // Preencher no caso de existir serviços na nota
         Emit.CNAE              := Number(QNFEmit_CNAE.AsString); // Verifique na cidade do emissor da NFe se é permitida a inclusão de serviços na NFe
         Emit.CRT               := TpcnCRT(QNFEmit_CRT.Value);    // (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

         Dest.CNPJCPF           := Number(QNFDest_CNPJCPF.AsString);
         Dest.indIEDest         := TpcnindIEDest(QNFDest_IndIEDest.AsInteger);

         if Dest.indIEDest = inIsento then
            Dest.IE := ''
         else
            Dest.IE := Number(QNFDest_IE.AsString);

         Dest.ISUF              := QNFDest_ISUF.AsString;
         Dest.xNome             := Clip(QNFDest_xNome.AsString, QNFDest_xNome.Size);
         Dest.EnderDest.Fone    := Number(QNFDest_EnderDest_Fone.AsString);
         Dest.EnderDest.CEP     := StrToIntDef(Number(QNFDest_EnderDest_CEP.AsString), 0);
         Dest.EnderDest.xLgr    := Clip(QNFDest_EnderDest_xLgr.AsString, QNFDest_EnderDest_xLgr.Size);
         Dest.EnderDest.nro     := Clip(QNFDest_EnderDest_nro.AsString, QNFDest_EnderDest_nro.Size);
         Dest.EnderDest.xCpl    := Clip(QNFDest_EnderDest_xCpl.AsString, QNFDest_EnderDest_xCpl.Size);
         Dest.EnderDest.xBairro := Clip(QNFDest_EnderDest_xBairro.AsString, QNFDest_EnderDest_xBairro.Size);
         Dest.EnderDest.cMun    := QNFDest_EnderDest_cMun.Value;
         Dest.EnderDest.xMun    := Clip(QNFDest_EnderDest_xMun.AsString, QNFDest_EnderDest_xMun.Size);
         Dest.EnderDest.UF      := QNFDest_EnderDest_UF.AsString;
         Dest.EnderDest.cPais   := QNFDest_EnderDest_cPais.Value;
         Dest.EnderDest.xPais   := Clip(QNFDest_EnderDest_xPais.AsString, QNFDest_EnderDest_xPais.Size);

   //Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
         Retirada.CNPJCPF := Number(QNFRetirada_CNPJCPF.AsString);
         Retirada.xLgr    := Clip(QNFRetirada_xLgr.AsString, QNFRetirada_xLgr.Size);
         Retirada.nro     := Clip(QNFRetirada_nro.AsString, QNFRetirada_nro.Size);
         Retirada.xCpl    := Clip(QNFRetirada_xCpl.AsString, QNFRetirada_xCpl.Size);
         Retirada.xBairro := Clip(QNFRetirada_xBairro.AsString, QNFRetirada_xBairro.Size);
         Retirada.cMun    := QNFRetirada_cMun.Value;
         Retirada.xMun    := Clip(QNFRetirada_xMun.AsString, QNFRetirada_xMun.Size);
         Retirada.UF      := QNFRetirada_UF.AsString;

   //Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
         Entrega.CNPJCPF := Number(QNFEntrega_CNPJCPF.AsString);
         Entrega.xLgr    := Clip(QNFEntrega_xLgr.AsString, QNFEntrega_xLgr.Size);
         Entrega.nro     := Clip(QNFEntrega_nro.AsString, QNFEntrega_nro.Size);
         Entrega.xCpl    := Clip(QNFEntrega_xCpl.AsString, QNFEntrega_xCpl.Size);
         Entrega.xBairro := Clip(QNFEntrega_xBairro.AsString, QNFEntrega_xBairro.Size);
         Entrega.cMun    := QNFEntrega_cMun.Value;
         Entrega.xMun    := Clip(QNFEntrega_xMun.AsString, QNFEntrega_xMun.Size);
         Entrega.UF      := QNFEntrega_UF.AsString;

   //Adicionando Produtos

         QNF_Item.DisableControls;
         QNF_Item.First;

         while not QNF_Item.Eof do
         begin
            with Det.Add do
             begin
               Prod.nItem    := QNF_ItemnItem.Value;
               Prod.cProd    := Clip(QNF_ItemcProd.AsString, QNF_ItemcProd.Size);

               if QNF_ItemcEAN.AsString <> '' then
                  Prod.cEAN     := Clip(QNF_ItemcEAN.AsString, QNF_ItemcEAN.Size);

               Prod.xProd    := Clip(QNF_ItemxProd.AsString, QNF_ItemxProd.Size);
               Prod.NCM      := Number(QNF_ItemNCM.AsString);
               Prod.EXTIPI   := QNF_ItemEXTIPI.AsString;
               Prod.CFOP     := QNF_ItemCFOP.AsString;
               Prod.uCom     := QNF_ItemuCom.AsString;
               Prod.qCom     := QNF_ItemqCom.Value;
               Prod.vUnCom   := QNF_ItemvUnCom.Value;
               Prod.vProd    := QNF_ItemvProd.Value;

               if QNF_ItemcEANTrib.AsString <> '' then
                  Prod.cEANTrib := Clip(QNF_ItemcEANTrib.AsString, QNF_ItemcEANTrib.Size);

               Prod.uTrib    := QNF_ItemuTrib.AsString;
               Prod.qTrib    := QNF_ItemqTrib.Value;
               Prod.vUnTrib  := QNF_ItemvUnTrib.Value;

               Prod.vOutro   := QNF_ItemvOutro.Value;
               Prod.vFrete   := QNF_ItemvFrete.Value;
               Prod.vSeg     := QNF_ItemvSeg.Value;
               Prod.vDesc    := QNF_ItemvDesc.Value;
              // n_DescItem    := n_DescItem + QNF_ItemvDesc.Value;

               if QNF_IteminfAdProd.AsString <> '' then
                  infAdProd     := Clip(QNF_IteminfAdProd.AsString, 500);

            with Imposto do
             begin
               with ICMS do
                begin
                  CST          := TpcnCSTIcms(QNF_ItemICMS_CST.Value);
                  ICMS.orig    := TpcnOrigemMercadoria(QNF_ItemICMS_orig.Value);
                  ICMS.modBC   := TpcnDeterminacaoBaseIcms(QNF_ItemICMS_modBC.Value);
                  if CST in [cst40, cst41, cst50] then
                     ICMS.motDesICMS := TpcnMotivoDesoneracaoICMS(QNF_ItemICMS_motDesICMS.Value);

                  //if QNFEmit_CRT.Value <> Integer(crtSimplesNacional) then
                 // begin
                     ICMS.vBC     := QNF_ItemICMS_vBC.Value;
                     ICMS.pICMS   := QNF_ItemICMS_pICMS.Value;
                     ICMS.vICMS   := QNF_ItemICMS_vICMS.Value;
                 // end;

                  CSOSN            := TpcnCSOSNIcms(QNF_ItemICMS_CSOSN.Value);
                  ICMS.pCredSN     := QNF_ItemICMS_pCredSN.Value;
                  ICMS.vCredICMSSN := QNF_ItemICMS_vCredICMSSN.Value;

                  ICMS.modBCST    := TpcnDeterminacaoBaseIcmsST(QNF_ItemICMS_modBCST.Value);
                  ICMS.pMVAST     := QNF_ItemICMS_pMVAST.Value;
                  ICMS.pRedBCST   := QNF_ItemICMS_pRedBCST.Value;
                  ICMS.pRedBC     := QNF_ItemICMS_pRedBC.Value;

                  if CST = cst60 then
                  begin
                     ICMS.vBCSTRet   := 0;
                     ICMS.vICMSSTRet := 0;
                  end
                  else
                  begin
                     ICMS.vBCST      := QNF_ItemICMS_vBCST.Value;
                     ICMS.pICMSST    := QNF_ItemICMS_pICMSST.Value;
                     ICMS.vICMSST    := QNF_ItemICMS_vICMSST.Value;
                  end;

                  ICMS.pBCOp       :=0;
                  ICMS.UFST        := '';

                  //preparação do IBPTax
                  if Ide.indFinal = cfConsumidorFinal then
                  begin
                     for i := 8 downto 4 do
                     begin
                         ncm := copy(Number(QNF_ItemNCM.AsString), 1, i);

                         DM.TIBPTax_Itens.Open('select * from ibptax_itens where ncm like"' + ncm + '%" limit 1');

                         if not DM.TIBPTax_Itens.IsEmpty then
                         begin
                           if  (ICMS.orig in [oeNacional,
                                             oeNacionalConteudoImportacaoSuperior40,
                                             oeNacionalProcessosBasicos,
                                             oeNacionalConteudoImportacaoInferiorIgual40,
                                             oeNacionalConteudoImportacaoSuperior70])  then
                              IBPTaxF := IBPTaxF + (QNF_ItemvProd.Value * DM.TIBPTax_Itensnacional.AsCurrency)/100
                           else
                              IBPTaxF := IBPTaxF + (QNF_ItemvProd.Value * DM.TIBPTax_Itensimportado.AsCurrency)/100;

                           IBPTaxE := IBPTaxE + (QNF_ItemvProd.Value * DM.TIBPTax_Itensestadual.AsCurrency)/100;
                           IBPTaxM := IBPTaxM + (QNF_ItemvProd.Value * DM.TIBPTax_Itensmunicipal.AsCurrency)/100;
                           break;
                         end;
                     end;
                   end;
                end;

               if QNF_ItemIPI_vBC.Value > 0 then
               with IPI do
                begin
                  CST      := TpcnCstIpi(QNF_ItemIPI_CST.Value);
                  clEnq    := QNF_ItemIPI_clEnq.AsString;
                  CNPJProd := Number(QNF_ItemIPI_CNPJProd.AsString);
                  cSelo    := QNF_ItemIPI_cSelo.AsString;
                  qSelo    := QNF_ItemIPI_qSelo.Value;
                  cEnq     := QNF_ItemIPI_cEnq.AsString;

                  vBC    := QNF_ItemIPI_vBC.Value;
                  qUnid  := QNF_ItemIPI_qUnid.Value;
                  vUnid  := QNF_ItemIPI_vUnid.Value;
                  pIPI   := QNF_ItemIPI_pIPI.Value;
                  vIPI   := QNF_ItemIPI_vIPI.Value;
                end;

               if QNF_ItemII_vBc.Value > 0 then
               with II do
                begin
                  vBc      := QNF_ItemII_vBc.Value;
                  vDespAdu := QNF_ItemII_vDespAdu.Value;
                  vII      := QNF_ItemII_vII.Value;
                  vIOF     := QNF_ItemII_vIOF.Value;
                end;

               with PIS do
                begin
                  CST           := TpcnCstPis(QNF_ItemPIS_CST.Value);
                  PIS.vBC       := QNF_ItemPIS_vBC.Value;
                  PIS.pPIS      := QNF_ItemPIS_pPIS.Value;
                  PIS.qBCProd   := QNF_ItemPIS_qBCProd.Value;
                  PIS.vAliqProd := QNF_ItemPIS_vAliqProd.Value;
                  PIS.vPIS      := QNF_ItemPIS_vPIS.Value;
                end;

               with PISST do
                begin
                  vBc       := QNF_ItemPISST_vBc.Value;
                  pPis      := QNF_ItemPISST_pPIS.Value;
                  qBCProd   := QNF_ItemPISST_qBCProd.Value;
                  vAliqProd := QNF_ItemPISST_vAliqProd.Value;
                  vPIS      := QNF_ItemPISST_vPIS.Value;
                end;

               with COFINS do
                begin
                  CST            := TpcnCstCofins(QNF_ItemCOFINS_CST.Value);
                  COFINS.vBC     := QNF_ItemCOFINS_vBC.Value;
                  COFINS.pCOFINS := QNF_ItemCOFINS_pCOFINS.Value;
                  COFINS.vCOFINS := QNF_ItemCOFINS_vCOFINS.Value;

                  COFINS.qBCProd   := QNF_ItemCOFINS_qBCProd.Value;
                  COFINS.vAliqProd := QNF_ItemCOFINS_vAliqProd.Value;
                end;

               if QNF_ItemCOFINSST_vBC.Value > 0 then
               with COFINSST do
                begin
                  vBC       := QNF_ItemCOFINSST_vBC.Value;
                  pCOFINS   := QNF_ItemCOFINSST_pCOFINS.Value;
                  qBCProd   := QNF_ItemCOFINSST_qBCProd.Value;
                  vAliqProd := QNF_ItemCOFINSST_vAliqProd.Value;
                  vCOFINS   := QNF_ItemCOFINSST_vCOFINS.Value;
                end;
   //Grupo para serviços
               if QNF_ItemISSQN_vBC.Value > 0 then
               with ISSQN do
                begin
                  vBC       := QNF_ItemISSQN_vBC.Value;
                  vAliq     := QNF_ItemISSQN_vAliq.Value;
                  vISSQN    := QNF_ItemISSQN_vISSQN.Value;
                  cMunFG    := QNF_ItemISSQN_cMunFG.Value;
                  cListServ := QNF_ItemISSQN_cListServ.AsString; // Preencha este campo usando a tabela disponível
                                  // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
                end;
                vTotTrib    :=  QNF_ItemvTotTrib.AsCurrency;
             end ;
             QNF_Item.Next;
          end;

          QNF_Item.EnableControls;

         Total.ICMSTot.vBC     := QNFICMSTot_vBC.Value;
         Total.ICMSTot.vICMS   := QNFICMSTot_vICMS.Value;
         Total.ICMSTot.vBCST   := QNFICMSTot_vBCST.Value;
         Total.ICMSTot.vST     := QNFICMSTot_vST.Value;
         Total.ICMSTot.vProd   := QNFICMSTot_vProd.Value;
         Total.ICMSTot.vFrete  := QNFICMSTot_vFrete.Value;
         Total.ICMSTot.vSeg    := QNFICMSTot_vSeg.Value;
         Total.ICMSTot.vDesc   := QNFICMSTot_vDesc.Value;
         Total.ICMSTot.vII     := QNFICMSTot_vII.Value;
         Total.ICMSTot.vIPI    := QNFICMSTot_vIPI.Value;
         Total.ICMSTot.vPIS    := QNFICMSTot_vPIS.Value;
         Total.ICMSTot.vCOFINS := QNFICMSTot_vCOFINS.Value;
         Total.ICMSTot.vOutro  := QNFICMSTot_vOutro.Value;
         Total.ICMSTot.vNF     := QNFICMSTot_vNF.Value;
         Total.ICMSTot.vTotTrib:= Arredonda(QNFvTotTrib.value,2);

         Total.ISSQNtot.vServ   := QNFISSQNTot_vServ.Value;
         Total.ISSQNTot.vBC     := QNFISSQNTot_vBC.Value;
         Total.ISSQNTot.vISS    := QNFISSQNTot_vISS.Value;
         Total.ISSQNTot.vPIS    := QNFISSQNTot_vPIS .Value;
         Total.ISSQNTot.vCOFINS := QNFISSQNTot_vCOFINS.Value;

         Total.retTrib.vRetPIS    := QNFretTrib_vRetPIS.Value;
         Total.retTrib.vRetCOFINS := QNFretTrib_vRetCOFINS.Value;
         Total.retTrib.vRetCSLL   := QNFretTrib_vRetCSLL.Value;
         Total.retTrib.vBCIRRF    := QNFretTrib_vBCIRRF.Value;
         Total.retTrib.vIRRF      := QNFretTrib_vIRRF.Value;
         Total.retTrib.vBCRetPrev := QNFretTrib_vBCRetPrev.Value;
         Total.retTrib.vRetPrev   := QNFretTrib_vRetPrev.Value;

         Transp.modFrete           := TpcnModalidadeFrete(QNFmodFrete.Value);
         Transp.Transporta.CNPJCPF := Number(QNFTransporta_CNPJCPF.AsString);
         Transp.Transporta.xNome   := Clip(QNFTransporta_xNome.AsString, QNFTransporta_xNome.Size);
         Transp.Transporta.IE      := QNFTransporta_IE.AsString;
         Transp.Transporta.xEnder  := Clip(QNFTransporta_xEnder.AsString, QNFTransporta_xEnder.Size);
         Transp.Transporta.xMun    := Clip(QNFTransporta_xMun.AsString, QNFTransporta_xMun.Size);
         Transp.Transporta.UF      := QNFTransporta_UF.AsString;

         Transp.retTransp.vServ    := QNFretvServ.Value;
         Transp.retTransp.vBCRet   := QNFretvBCRet.Value;
         Transp.retTransp.pICMSRet := QNFretpICMSRet.Value;
         Transp.retTransp.vICMSRet := QNFretvICMSRet.Value;
         Transp.retTransp.CFOP     := QNFretCFOP.AsString;
         Transp.retTransp.cMunFG   := QNFretcMunFG.Value;

         Transp.veicTransp.placa := QNFveicplaca.AsString;
         Transp.veicTransp.UF    := QNFveicUF.AsString;
         Transp.veicTransp.RNTC  := QNFveicRNTC.AsString;
   //Dados do Reboque
         QNF_Reboque.DisableControls;
         QNF_Reboque.First;

         while not QNF_Reboque.Eof do
         begin
            with Transp.Reboque.Add do
            begin
               placa := QNF_Reboqueplaca.AsString;
               UF    := QNF_Reboqueuf.AsString;
               RNTC  := QNF_Reboquerntc.AsString;
            end;
            QNF_Reboque.Next;
         end;

         QNF_Reboque.EnableControls;

         QNF_Volume.DisableControls;
         QNF_Volume.First;

         while not QNF_Volume.Eof do
         begin
            with Transp.Vol.Add do
             begin
               qVol  := QNF_VolumeqVol.Value;
               esp   := QNF_Volumeespecie.AsString;
               marca := QNF_Volumemarca.AsString;
               nVol  := QNF_VolumenVol.AsString;
               pesoL := QNF_VolumepesoL.Value;
               pesoB := QNF_VolumepesoB.Value;

               //Lacres do volume. Pode ser adicionado vários
               QNF_Lacre.DisableControls;
               QNF_Lacre.First;

               while not QNF_Lacre.Eof do
               begin
                  Lacres.Add.nLacre := QNF_Lacrenlacre.AsString;
                  QNF_Lacre.Next;
               end;
              QNF_Lacre.EnableControls;
             end;
             QNF_Volume.Next;
         end;

         Cobr.Fat.nFat  := QNFnFat.AsString;
         Cobr.Fat.vOrig := QNFvOrig.Value ;
         Cobr.Fat.vDesc := QNFvDesc.Value ;
         Cobr.Fat.vLiq  := QNFvLiq.Value ;

         QNF_Duplicata.DisableControls;
         QNF_Duplicata.First;

         while not QNF_Duplicata.Eof do
         begin
         with Cobr.Dup.Add do
          begin
            nDup  := QNF_DuplicatanDup.AsString;
            dVenc := QNF_DuplicatadVenc.Value;
            vDup  := QNF_DuplicatavDup.Value;
          end;
          QNF_Duplicata.Next;
         end;

         QNF_Duplicata.EnableControls;

         InfAdic.infAdFisco :=  QNFinfAdFisco.AsString;
         InfAdic.infCpl     :=  QNFinfCpl.AsString;

         if (IBPTaxF + IBPTaxE) > 0 then
         begin
            DM.TIBPTax.Open;
            InfAdic.infCpl := InfAdic.infCpl +
                              ' Trib. aprox.: ' +
                              FloatToStrF(IBPTaxF, ffCurrency,15,2) + ' Federal e ' +
                              FloatToStrF(IBPTaxE, ffCurrency,15,2) + ' Estadual. ' +
                              'Fonte: ' + DM.TIBPTaxfonte.AsString + ' (' + DM.TIBPTaxchave.AsString + ').';
         end;

         {
         with InfAdic.obsFisco.Add do
          begin
            xCampo := 'ObsFisco';
            xTexto := 'Texto';
          end;  }
   //Processo referenciado
   {     with InfAdic.procRef.Add do
          begin
            nProc := '';
            indProc := ipSEFAZ;
          end;                 }

         exporta.UFembarq   := '';
         exporta.xLocEmbarq := '';

         compra.xNEmp := '';
         compra.xPed  := '';
         compra.xCont := '';
      end;
   end;
end;


procedure TDM_NFE.Gerar_PDF;
begin
  OD1.Title      := 'Selecione a NFE';
  OD1.DefaultExt := C_212;
  OD1.Filter     := C_213;
  OD1.InitialDir := NFe1.Configuracoes.Arquivos.PathSalvar;
  NFe1.NotasFiscais.Clear;

  if OD1.Execute then
  begin
     NFe1.NotasFiscais.LoadFromFile(OD1.FileName);

     if NFe1.NotasFiscais.Items[0].NFe.procNFe.nProt = '' then

     if (MessageBox(0, C_217, 'ATENÇÃO', MB_ICONWARNING or MB_YESNO) = idNo) then
        exit;

     NFe1.NotasFiscais.ImprimirPDF;
  end;
end;

procedure TDM_NFE.GravarNF;
var
   i: integer;
   s: string;
begin
   DMConn.DB.ExecSQL('delete from nf where Ide_nNF=' +
                  Texto_Mysql(DM_NFE.QNFIde_nNF.Value) +
                 ' and Ide_serie=' +
                 Texto_Mysql(DM_NFE.QNFIde_serie.Value)
   );

   DM.QNF.Open('select * from nf order by id desc limit 1');

   DM_NFE.QNF_Item.DisableControls;
   DM_NFE.QNF_Item_Med.DisableControls;
   DM_NFE.QNF_Duplicata.DisableControls;
   DM_NFE.QNF_Reboque.DisableControls;
   DM_NFE.QNF_Referenciada.DisableControls;
   DM_NFE.QNF_Volume.DisableControls;
   DM_NFE.QNF_Lacre.DisableControls;
   DM_NFE.QNF_Chave.DisableControls;

   DM_NFE.QNF_Item.First;
   DM_NFE.QNF_Duplicata.First;
   DM_NFE.QNF_Reboque.First;
   DM_NFE.QNF_Referenciada.First;
   DM_NFE.QNF_Volume.First;
   DM_NFE.QNF_Lacre.First;
   DM_NFE.QNF_Chave.First;
   //da baixa nas perdas se gerou nota de perda
   if DM_NFE.QNFhash.Value = 'perda' then
   begin
      DM.ExecSQL('update estoque_perda set baixa="S" where baixa="N";')
   end;

   DM.QNF.Append;

   for i := 0 to Pred(DM_NFE.QNF.FieldCount) do
   begin
      if (DM_NFE.QNF.Fields[i].FieldName <> 'id')and
         (DM_NFE.QNF.Fields[i].FieldName <> 'infCpl_Dig')and
         (DM_NFE.QNF.Fields[i].FieldName <> 'id_venda') and
         (DM_NFE.QNF.Fields[i].FieldName <> 'hash')then
         DM.QNF.FieldByName(DM_NFE.QNF.Fields[i].FieldName).Value := DM_NFE.QNF.Fields[i].Value;
   end;

   DM.QNF.Post;
   DM.QNF.Refresh; //recupera o id

   while not DM_NFE.QNF_Item.Eof do  //itens
   begin
      DM.QNF_Item.Insert;

      //faz a baixa das perdas na primeira passada, pois a NF foi de perda.
      if (DM_NFE.QNF_Item.Bof)and(DM_NFE.QNF_ItemCFOP.Value = '5927') then
         DMConn.DB.ExecSQL('update estoque_perda set baixa = "S" where baixa = "N";');

      for i := 0 to Pred(DM_NFE.QNF_Item.FieldCount) do
      begin
         if (DM_NFE.QNF_Item.Fields[i].FieldName <> 'id')and (DM_NFE.QNF_Item.Fields[i].FieldName <> 'nf') then
            DM.QNF_Item.FieldByName(DM_NFE.QNF_Item.Fields[i].FieldName).Value := DM_NFE.QNF_Item.Fields[i].Value;
      end;

      DM.QNF_Itemnf.Value := DM.QNFid.Value;
      DM.QNF_Item.Post;
      DM.QNF_Item.Refresh;//recupera o id

      DM_NFE.QNF_Item_Med.First;

      while not DM_NFE.QNF_Item_Med.Eof do  //itens mdicamentos
      begin
         DM.QNF_Item_Med.Insert;

         for i := 0 to Pred(DM_NFE.QNF_Item_Med.FieldCount) do
         begin
            if (DM_NFE.QNF_Item_Med.Fields[i].FieldName <> 'id')and (DM_NFE.QNF_Item_Med.Fields[i].FieldName <> 'item') then
               DM.QNF_Item_Med.FieldByName(DM_NFE.QNF_Item_Med.Fields[i].FieldName).Value := DM_NFE.QNF_Item_Med.Fields[i].Value;
         end;

         DM.QNF_Item_Meditem.Value := DM.QNF_Itemid.Value;
         DM.QNF_Item_Med.Post;
         DM_NFE.QNF_Item_Med.Next;
      end;
      DM_NFE.QNF_Item.Next;
   end;

   while not DM_NFE.QNF_Duplicata.Eof do  //duplicatas
   begin
      DM.QNF_Duplicata.Insert;

      for i := 0 to Pred(DM_NFE.QNF_Duplicata.FieldCount) do
      begin
         if (DM_NFE.QNF_Duplicata.Fields[i].FieldName <> 'id')and (DM_NFE.QNF_Duplicata.Fields[i].FieldName <> 'nf') then
            DM.QNF_Duplicata.FieldByName(DM_NFE.QNF_Duplicata.Fields[i].FieldName).Value := DM_NFE.QNF_Duplicata.Fields[i].Value;
      end;

      DM.QNF_Duplicatanf.Value := DM.QNFid.Value;
      DM.QNF_Duplicata.Post;
      DM_NFE.QNF_Duplicata.Next;
   end;

   while not DM_NFE.QNF_Reboque.Eof do  //reboques
   begin
      DM.QNF_Reboque.Insert;

      for i := 0 to Pred(DM_NFE.QNF_Reboque.FieldCount) do
      begin
         if (DM_NFE.QNF_Reboque.Fields[i].FieldName <> 'id')and (DM_NFE.QNF_Reboque.Fields[i].FieldName <> 'nf') then
            DM.QNF_Reboque.FieldByName(DM_NFE.QNF_Reboque.Fields[i].FieldName).Value := DM_NFE.QNF_Reboque.Fields[i].Value;
      end;

      DM.QNF_Reboquenf.Value := DM.QNFid.Value;
      DM.QNF_Reboque.Post;
      DM_NFE.QNF_Reboque.Next;
   end;

   while not DM_NFE.QNF_Referenciada.Eof do  //referenciadas
   begin
      DM.QNF_Referenciada.Insert;

      for i := 0 to Pred(DM_NFE.QNF_Referenciada.FieldCount) do
      begin
         if (DM_NFE.QNF_Referenciada.Fields[i].FieldName <> 'id')and (DM_NFE.QNF_Referenciada.Fields[i].FieldName <> 'nf') then
            DM.QNF_Referenciada.FieldByName(DM_NFE.QNF_Referenciada.Fields[i].FieldName).Value := DM_NFE.QNF_Referenciada.Fields[i].Value;
      end;

      DM.QNF_Referenciadanf.Value := DM.QNFid.Value;
      DM.QNF_Referenciada.Post;
      DM_NFE.QNF_Referenciada.Next;
   end;

   while not DM_NFE.QNF_Volume.Eof do  //duplicatas
   begin
      DM.QNF_Volume.Insert;

      for i := 0 to Pred(DM_NFE.QNF_Volume.FieldCount) do
      begin
         if (DM_NFE.QNF_Volume.Fields[i].FieldName <> 'id')and (DM_NFE.QNF_Volume.Fields[i].FieldName <> 'nf') then
            DM.QNF_Volume.FieldByName(DM_NFE.QNF_Volume.Fields[i].FieldName).Value := DM_NFE.QNF_Volume.Fields[i].Value;
      end;

      DM.QNF_Volumenf.Value := DM.QNFid.Value;
      DM.QNF_Volume.Post;
      DM.QNF_Volume.Refresh;//recupera o id

      DM_NFE.QNF_Lacre.First;

      while not DM_NFE.QNF_Lacre.Eof do  //itens mdicamentos
      begin
         DM.QNF_Lacre.Insert;

         for i := 0 to Pred(DM_NFE.QNF_Lacre.FieldCount) do
         begin
            if (DM_NFE.QNF_Lacre.Fields[i].FieldName <> 'id')and (DM_NFE.QNF_Lacre.Fields[i].FieldName <> 'vol') then
               DM.QNF_Lacre.FieldByName(DM_NFE.QNF_Lacre.Fields[i].FieldName).Value := DM_NFE.QNF_Lacre.Fields[i].Value;
         end;

         DM.QNF_Lacrevol.Value := DM.QNF_Volumeid.Value;
         DM.QNF_Lacre.Post;
         DM_NFE.QNF_Lacre.Next;
      end;
      DM_NFE.QNF_Volume.Next;
   end;

   while not DM_NFE.QNF_Chave.Eof do  //chave
   begin
      DM.QNF_Chave.Insert;

      for i := 0 to Pred(DM_NFE.QNF_Chave.FieldCount) do
      begin
         if (DM_NFE.QNF_Chave.Fields[i].FieldName <> 'id')and (DM_NFE.QNF_Chave.Fields[i].FieldName <> 'nf') then
            DM.QNF_Chave.FieldByName(DM_NFE.QNF_Chave.Fields[i].FieldName).Value := DM_NFE.QNF_Chave.Fields[i].Value;
      end;

      DM.QNF_Chavenf.Value := DM.QNFid.Value;
      DM.QNF_Chave.Post;
      DM_NFE.QNF_Chave.Next;
   end;

   if DM_NFE.QNFid_venda.AsString <> '' then
   begin
      DM.ExecSQL('update venda set nf=' + Texto_Mysql(DM.QNFid.Value) + ' where id in(' + DM_NFE.QNFid_venda.AsString + ');');

      //muda o debito para refletir o nNF em nmro_doc
      DM.ExecSQL('update finan_debito set nmro_doc=Concat("N' +
                 FormatFloat('000000', DM.QNFIde_nNF.Value) +
                 '",substr(nmro_doc,8,3)) where substr(nmro_doc,1,1)="V" ' +
                 'and id_movi in(' + DM_NFE.QNFid_venda.AsString + ');');
   end;

   DM_NFE.Delete_NF_Local;
   DM_NFE.QNF_Item.EnableControls;
   DM_NFE.QNF_Item_Med.EnableControls;
   DM_NFE.QNF_Duplicata.EnableControls;
   DM_NFE.QNF_Reboque.EnableControls;
   DM_NFE.QNF_Referenciada.EnableControls;
   DM_NFE.QNF_Volume.EnableControls;
   DM_NFE.QNF_Lacre.EnableControls;
   DM_NFE.QNF_Chave.EnableControls;
   DM.QNF.Close;
end;

procedure TDM_NFE.idHandleStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
   Status(True, '', AStatusText);
end;

procedure TDM_NFE.idHandleStatusInfo(const AMsg: string);
begin
   Status(True, '', 'OIHandle StatusInfo: ' + AMsg);
end;

procedure TDM_NFE.NFe1StatusChange(Sender: TObject);
var
   s: String;
begin
   case NFe1.Status of
      stIdle:
         Begin
            Status(False, '', '');
            exit;
         End;

      stNFeStatusServico : s := 'Verificando Status do servico...';
      stNFeRecepcao      : s := 'Enviando dados da NFe...';
      stNfeRetRecepcao   : s := 'Recebendo dados da NFe...';
      stNfeConsulta      : s := 'Consultando NFe...';
      stNfeCancelamento  : s := 'Enviando cancelamento de NFe...';
      stNfeInutilizacao  : s := 'Enviando pedido de Inutilização...';
      stNFeRecibo        : s := 'Consultando Recibo de Lote...';
      stNFeCadastro      : s := 'Consultando Cadastro...';
      stNFeEvento        : s := 'Evento em andamento...';
      //stNFeEnvDPEC       : s := 'Enviando DPEC...';
      //stNFeConsultaDPEC  : s := 'Consultando DPEC...';
      stNFeEmail         : s := 'Enviando Email...';
   end;

   if s <> C_ST_VAZIO then
      Log('nfe', 'NF-e', s);

   Status(s <> C_ST_VAZIO, s, '');
   application.ProcessMessages;
end;

procedure TDM_NFE.Preenche_Info_Compl(completo: boolean);
var
   s: string;
begin
   QNF.Edit;
   QNFinfCpl.Clear;//apaga o texto existente

   if st_MD5 <> C_ST_VAZIO then
      QNFinfCpl.AsString := 'MD-5:' + st_MD5 + C_CR; //MD5

   if (QNFEmit_CRT.Value = 0)and(Trim(QNFinfCpl.AsString) = C_ST_VAZIO) then//texto do SN
   begin
      QNFinfCpl.AsString := QNFinfCpl.AsString + C_218;
   end;

   if not QNF_Referenciada.IsEmpty then//cupons fiscais referenciados
   begin
      QNF_Referenciada.First;

      while not QNF_Referenciada.Eof do //cria a linha dos cupons referenciados se for ecf
      begin
         if QNF_ReferenciadaRefECF_modelo.Value = 2 then
            s := s + format('%.0d - ECF %.2d, ',[QNF_ReferenciadaRefECF_nCOO.AsInteger, QNF_ReferenciadaRefECF_nECF.AsInteger]);
         QNF_Referenciada.Next;
      end;

      if QNF_ReferenciadaRefECF_modelo.Value = 2 then
         s := 'NF Emit. em subst. ao(s) CF: ' + s;

      QNFinfCpl.AsString := QNFinfCpl.AsString + s;
   end;

   s := C_ST_VAZIO;
   QNF_Item.DisableControls;  //Info Compl do item
   QNF_Item.First;

   while not QNF_Item.Eof do
   begin
      if QNF_IteminfAdProd.AsString <> C_ST_VAZIO then
         s := s + QNF_IteminfAdProd.AsString + ' ';
      QNF_Item.Next;
   end;

   if Trim(s) <> C_ST_VAZIO then
      QNFinfCpl.AsString := QNFinfCpl.AsString + s + C_CR;

   if completo then
      QNFinfCpl.AsString := QNFinfCpl.AsString + QNFinfCpl_Dig.AsString;//digitado pelo usuario

   QNF_Item.EnableControls;
   QNF.Post;
end;

procedure TDM_NFE.QCfgAfterOpen(DataSet: TDataSet);
begin //se esta vazio, carrega valores default;
   if DataSet.IsEmpty then
   begin
      QCfg.Insert;
      QCfgCfg_Geral_FormaEmissao.Value   := '0';//normal
      QCfgCfg_Geral_Salvar.Value         := true;
      QCfgCfg_Geral_PathSalvar.AsString  := Aqui('NFE\GERADAS\XML', '');

      if date >= StrToDate('01/12/2014') then
         QCfgCfg_Geral_PathSchemas.AsString := Aqui('NFE\Schemas\V300\', '')//Versão 3.10
      else
         QCfgCfg_Geral_PathSchemas.AsString := Aqui('NFE\Schemas\V200\', '');//Versão 2.00

      QCfgCfg_Geral_PathLogs.AsString    := Aqui('NFE\Logs', '');

      QCfgCfg_WebServ_Ambiente.Value     := '1'; //homologação
      QCfgCfg_WebServ_Visualizar.Value   := True;

      QCfgCfg_Arq_PastaMensal.Value      := True;
      QCfgCfg_Arq_PathNFe.AsString       := Aqui('NFE\GERADAS\XML', '');
      QCfgCfg_Arq_PathCan.AsString       := Aqui('NFE\GERADAS\CAN', '');
      QCfgCfg_Arq_PathDPEC.AsString      := Aqui('NFE\GERADAS\DPEC', '');
      QCfgCfg_Arq_PathInu.AsString       := Aqui('NFE\GERADAS\INU', '');
      QCfgCfg_Arq_Salvar.Value           := True;

      QCfgCfg_cNF.Value                  := 1;
      QCfgCfg_SeqChave.Value             := 1;
      QCfgCfg_Lote.Value                 := 1;
      QCfgCfg_Serie_NF.Value             := 1;

      QCfgCfg_Serv_host.Value            := '127.0.0.1';
      QCfgCfg_Serv_User.Value            := 'root';
      QCfgCfg_Serv_Database.Value        := 'autocom';

      QCfgDANFE_TipoDANFE.Value          := '1';//retrato
      QCfgDANFE_FastFile.AsString        := Aqui('NFE\Report', 'DANFE.fr3');
      QCfgDANFE_FastFile_Events.AsString := Aqui('NFE\Report', 'EVENTOS.fr3');
      QCfgDANFE_PathPDF.AsString         := Aqui('NFE\GERADAS\PDF', '');

      QCfgDANFE_ImprimirDescPorc.Value   := True;
      QCfgDANFE_ImprimirTotalLiq.Value   := True;
      QCfgDANFE_ImprimirDetalEspec.Value := True;
      QCfgDANFE_MostrarPreview.Value     := true;
      QCfgDANFE_MostrarStatus.Value      := False;

      QCfgDANFE_TamFonte_DemaisCampos.Value := 10;
      QCfgDANFE_CasasDecimais_qCom.Value    := 2;
      QCfgDANFE_CasasDecimais_vUnCom.Value  := 2;
      QCfg.Post;
   end;
end;

procedure TDM_NFE.QFEmissaoAfterOpen(DataSet: TDataSet);
var
   i: integer;
begin
   if DataSet.IsEmpty then
   begin
      for i := Low(C_ARR_7) to High(C_ARR_7) do
      begin
         QFEmissao.Append;
         QFEmissaoid.Value      := i;
         QFEmissaocNF.Value     := 1;
         QFEmissaonNF.Value     := 1;
         QFEmissaolote.Value    := 1;
         QFEmissaoserie.Value   := 1;
         QFEmissaonome.AsString := C_ARR_7[i];

         case i of
            2: QFEmissaoserie.Value := 900;
         end;
         QFEmissao.Post;
      end;
   end;
end;


procedure TDM_NFE.Calcular_vProd;
begin
   if QNF_Item.State in [dsInsert, dsEdit] then
   begin
      QNF_ItemvProd.Value := (QNF_ItemqCom.Value * QNF_ItemvUnCom.Value);
      QNF_ItemvTotTrib.AsCurrency := Arredonda((QNF_ItemvProd.AsCurrency *
                                                DM.IBPTax(QNF_ItemNCM.AsString,
                                                QNF_ItemICMS_orig.AsInteger))/100, 2);
   end;
end;


procedure TDM_NFE.Cancelar_NFe_Xml;
var
  vAux: String;
begin
  OD1.Title      := 'Selecione a NFE';
  OD1.DefaultExt := C_212;
  OD1.Filter     := C_213;
  OD1.InitialDir := NFe1.Configuracoes.Arquivos.PathNFe;

  if OD1.Execute then
  begin
    NFe1.NotasFiscais.Clear;
    NFe1.NotasFiscais.LoadFromFile(OD1.FileName);

    if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa', vAux)) then
       exit;

    if Length(vAux) < 15 then
      raise Exception.Create('A justificativa precisa ter ao menos 15 caracteres.');


    NFe1.EventoNFe.Evento.Clear;
    NFe1.EventoNFe.idLote := 1;

    with NFe1.EventoNFe.Evento.Add do
    begin
       infEvento.dhEvento := now;
       infEvento.tpEvento := teCancelamento;
       infEvento.detEvento.xJust := AnsiUpperCase(vAux);
    end;

    NFe1.EnviarEvento(1);
    Status(False,'','');
  end
  else
  raise Exception.Create('Operação abortada');
end;

procedure TDM_NFE.ConfigurarNFe;
var
   s: string;
begin
   NFe1.Configuracoes.Certificados.NumeroSerie := QCfgCfg_Certif_NmroSerie.Value;

   NFe1.Configuracoes.Geral.FormaEmissao       := TpcnTipoEmissao(QCfgCfg_Geral_FormaEmissao.AsInteger);
   NFe1.Configuracoes.Geral.Salvar             := QCfgCfg_Geral_Salvar.value;
   NFe1.Configuracoes.Arquivos.PathSalvar      := QCfgCfg_Geral_PathSalvar.AsString+'WS\';
   NFe1.Configuracoes.Arquivos.PathSchemas     := QCfgCfg_Geral_PathSchemas.AsString;

   //ajustes para versao 3.10
   NFe1.Configuracoes.Geral.ModeloDF := moNFe; // moNFe ou moNFCe

   if POS('V310',QCfgCfg_Geral_PathSchemas.AsString)>0 then //se ajusta em função do path informado.
      NFe1.Configuracoes.Geral.VersaoDF  := ve310   // Versão 3.10
   else
       NFe1.Configuracoes.Geral.VersaoDF := ve200; //Versão 2.10

   NFe1.Configuracoes.Arquivos.SepararPorMes   := QCfgCfg_Arq_PastaMensal.Value;
   NFe1.Configuracoes.Arquivos.PathNFe         := QCfgCfg_Arq_PathNFe.AsString;
   NFe1.Configuracoes.Arquivos.PathEvento      := QCfgCfg_Arq_PathCan.AsString;
  // NFe1.Configuracoes.Arquivos.PathDPEC        := QCfgCfg_Arq_PathDPEC.AsString;
   NFe1.Configuracoes.Arquivos.PathInu         := QCfgCfg_Arq_PathInu.AsString;
   NFe1.Configuracoes.Arquivos.Salvar          := QCfgCfg_Arq_Salvar.Value;

   NFe1.Configuracoes.WebServices.Salvar       := QCfgCfg_Arq_Salvar.Value;
   NFe1.Configuracoes.WebServices.UF           := DM.QEmpresauf.AsString;//QNFEmit_EnderEmit_UF.AsString;
   NFe1.Configuracoes.WebServices.Ambiente     := TpcnTipoAmbiente(QCfgCfg_WebServ_Ambiente.AsInteger);
   NFe1.Configuracoes.WebServices.Visualizar   := QCfgCfg_WebServ_Visualizar.Value;
   NFe1.Configuracoes.WebServices.ProxyHost    := QCfgCfg_WebServ_ProxyHost.AsString;
   NFe1.Configuracoes.WebServices.ProxyPort    := QCfgCfg_WebServ_ProxyPort.AsString;
   NFe1.Configuracoes.WebServices.ProxyUser    := QCfgCfg_WebServ_ProxyUser.AsString;
   NFe1.Configuracoes.WebServices.ProxyPass    := QCfgCfg_WebServ_ProxyPass.AsString;

   DANFE.FastFile  := QCfgDANFE_FastFile.AsString;
   DANFE.FastFileEvento := QCfgDANFE_FastFile_Events.AsString;
   DANFE.Email     := QCfgDANFE_Email.AsString;
   DANFE.Site      := QCfgDANFE_Site.AsString;
   DANFE.TipoDANFE := TpcnTipoImpressao(QCfgCfg_Geral_tpImp.AsInteger);
   DANFE.Logo      := QCfgDANFE_Logo.AsString;

   DANFE.ImprimirDescPorc               := QCfgDANFE_ImprimirDescPorc.Value;
   DANFE.ImprimirTotalLiquido           := QCfgDANFE_ImprimirTotalLiq.Value;
   DANFE.ImprimirDetalhamentoEspecifico := QCfgDANFE_ImprimirDetalEspec.Value;

   DANFE.MostrarPreview := QCfgDANFE_MostrarPreview.Value;
   DANFE.MostrarStatus  := QCfgDANFE_MostrarStatus.Value;

   DANFE.TamanhoFonte_DemaisCampos := QCfgDANFE_TamFonte_DemaisCampos.Value;
   DANFE.CasasDecimais._qCom       := QCfgDANFE_CasasDecimais_qCom.Value;
   DANFE.CasasDecimais._vUnCom     := QCfgDANFE_CasasDecimais_vUnCom.Value;

   if NFe1.Configuracoes.Arquivos.SepararPorMes then
   begin
      s := DM_NFE.QCfgDANFE_PathPDF.AsString + FormatDateTime('yyyymm', date);
      ForceDirectories(s);
      DANFE.PathPDF := s;
   end
   else
      DANFE.PathPDF := NFe1.Configuracoes.Arquivos.PathSalvar;

   NFe1.DANFE := DANFE;
end;


procedure TDM_NFE.QCfgAfterPost(DataSet: TDataSet);
begin
   QFEmissao.Open;
   QFEmissao.Locate('id', QCfgCfg_Geral_FormaEmissao.AsInteger, []);

   if not QNF.IsEmpty then
   begin
      QNF.Edit;
      QNFIde_cNF.Value    := QFEmissaocNF.Value;
      QNFIde_serie.Value  := QFEmissaoserie.Value;
      QNFIde_nNF.Value    := QFEmissaonNF.Value;
      QNFIde_tpEmis.Value := QFEmissaoid.Value;
   end;
end;

procedure TDM_NFE.QNFAfterInsert(DataSet: TDataSet);
begin
   QNFIde_Cons_Final.Value         := 1;//consumidor final - por padrão
   QNFIde_Presencial.Value         := 5;//nao presencial, outros - por padrão
   QNFEmit_CNPJCPF.AsString        := Number(DM.QEmpresacnpj.AsString);
   QNFEmit_IE.AsString             := Number(DM.QEmpresaie.AsString);
   QNFEmit_CRT.Value               := dm.QEmpresaindativ.Value;

   if QNFEmit_CRT.Value>2 then
      QNFEmit_CRT.Value := 2;

   QNFEmit_xNome.AsString          := DM.QEmpresarazao_social.AsString;
   QNFEmit_xFant.AsString          := DM.QEmpresanome_fantasia.AsString;
   QNFEmit_EnderEmit_fone.AsString := Number(DM.QEmpresatel1.AsString);
   QNFmit_EnderEmit_CEP.AsString   := Number(DM.QEmpresacep.AsString);
   QNFEmit_EnderEmit_xLgr.AsString := DM.QEmpresalogradouro.AsString;
   QNFEmit_EnderEmit_nro.AsString  := DM.QEmpresanumero.AsString;
   QNFEmit_EnderEmit_xCpl.AsString := DM.QEmpresacomplem.AsString;
   QNFEmit_EnderEmit_cMun.Value    := DM.QEmpresacodmun.AsInteger;
   QNFEmit_EnderEmit_xMun.AsString := DM.QEmpresacidade.AsString;
   QNFEmit_EnderEmit_xBairro.AsString := DM.QEmpresabairro.AsString;
   QNFEmit_EnderEmit_UF.AsString   := DM.QEmpresauf.AsString;
   QNFEmit_enderEmit_cPais.Value   := 1058;
   QNFEmit_enderEmit_xPais.Value   := 'BRASIL';

   QNFDest_EnderDest_cPais.Value   := 1058;
   QNFDest_EnderDest_xPais.Value   := 'BRASIL';
   QNFstatus.Value                 := 99; //em andamento

   QFEmissao.Locate('id', QCfgCfg_Geral_FormaEmissao.AsInteger, []);
   QNFIde_cNF.Value       := QCfgCfg_cNF.Value;
   QNFIde_modelo.Value    := 55;
   QNFIde_serie.Value     := QFEmissaoserie.Value;
   QNFIde_nNF.Value       := QFEmissaonNF.Value;// QCfgCfg_SeqChave.Value;
   QNFIde_dEmi.Value      := Now;
   QNFIde_dSaiEnt.Value   := Now;
   QNFIde_tpEmis.Value    := QCfgCfg_Geral_FormaEmissao.AsInteger;// 0;//normal
   QNFIde_tpAmb.Value     := QCfgCfg_WebServ_Ambiente.AsInteger;
   QNFIde_verProc.Value   := '1.0.3.1';
   QNFIde_cUF.Value       := StrToInt(Copy(QNFEmit_EnderEmit_cMun.AsString, 1, 2));
   QNFIde_cMunFG.AsString := QNFEmit_EnderEmit_cMun.AsString;
   QNFIde_finNFe.Value    := QCfgCfg_Geral_finNFe.AsInteger;// 0;//normal
end;

procedure TDM_NFE.Zerar_Totais_NF;
var
   i: integer;
begin
   QNF.Edit;
   for i := 90 to 116 do
      QNF.Fields[i].AsCurrency := 0;

   QNF.Post;
end;

procedure TDM_NFE.Totalizar_NFe;
var
   i: integer;
   b: boolean;
begin
   QNF_Item.DisableControls;
   QNF_Item.First;
   Zerar_Totais_NF;
   QNF.Edit;

   while not QNF_Item.Eof do
   begin
      QNFICMSTot_vBC.Value   := QNFICMSTot_vBC.Value + QNF_ItemICMS_vBC.Value;
      QNFICMSTot_vICMS.Value := QNFICMSTot_vICMS.Value + QNF_ItemICMS_vICMS.Value;

      b := QNF_ItemICMS_CSOSN.Value = integer(csosn500);

      if not(b)and not (QNF_ItemICMS_CST.Value in[Integer(cst60), integer(cstvazio)]) then //060
      begin
         QNFICMSTot_vBCST.Value := QNFICMSTot_vBCST.Value + QNF_ItemICMS_vBCST.Value;
         QNFICMSTot_vST.Value   := QNFICMSTot_vST.Value + QNF_ItemICMS_vICMSST.Value;
      end
      else
      begin
         ;
      end;

      QNFICMSTot_vBCST.Value  := QNFICMSTot_vBCST.Value + QNF_ItemICMS_vBCST.Value;
      QNFICMSTot_vST.Value    := QNFICMSTot_vST.Value + QNF_ItemICMS_vICMSST.Value;

      QNFICMSTot_vProd.Value   := QNFICMSTot_vProd.Value + QNF_ItemvProd.Value;
      QNFICMSTot_vFrete.Value  := QNFICMSTot_vFrete.Value + QNF_ItemvFrete.Value;
      QNFICMSTot_vSeg.Value    := QNFICMSTot_vSeg.Value + QNF_ItemvSeg.Value;
      QNFICMSTot_vDesc.Value   := QNFICMSTot_vDesc.Value + QNF_ItemvDesc.Value;
      QNFICMSTot_vII.Value     := QNFICMSTot_vII.Value + QNF_ItemII_vII.Value;
      QNFICMSTot_vIPI.Value    := QNFICMSTot_vIPI.Value + QNF_ItemIPI_vIPI.Value;
      QNFICMSTot_vPIS.Value    := QNFICMSTot_vPIS.Value + QNF_ItemPIS_vPIS.Value;
      QNFICMSTot_vCOFINS.Value := QNFICMSTot_vCOFINS.Value + QNF_ItemCOFINS_vCOFINS.Value;
      QNFICMSTot_vOutro.Value  := QNFICMSTot_vOutro.Value + QNF_ItemvOutro.Value;

{
(+) vProd (valor total dos produtos: Qtd x Vlr Unit)
(-) vDesc (valor total dos descontos)
(+) vST (valor total do ICMS ST)
(+) vFrete (valor total de frete)
(+) vSeg (valor total de seguro)
(+) vOutro (valor total de outras despesas)
(+) vII (valor total de importação)
(+) vIPI (valor total do IPI)
(+) vServ (valor total dos serviços)
}

      QNFICMSTot_vNF.Value     := QNFICMSTot_vNF.Value -
                                     QNF_ItemvDesc.Value        +
                                     QNF_ItemvProd.Value        +
                                     QNF_ItemvFrete.Value       +
                                     QNF_ItemvSeg.Value         +
                                     QNF_ItemvOutro.Value       +
                                     QNF_ItemIPI_vIPI.Value     +
                                     QNF_ItemII_vII.Value       +
                                     QNF_ItemICMS_vICMSST.Value;


      if QNF_ItemISSQN_vBC.Value > 0 then
      begin
         QNFISSQNtot_vServ.Value := QNFISSQNtot_vServ.Value + (QNF_ItemvProd.Value - QNF_ItemvDesc.Value);
         QNFISSQNTot_vBC.Value   := QNFISSQNTot_vBC.Value + QNF_ItemISSQN_vBC.Value;
         QNFISSQNTot_vISS.Value  := QNFISSQNTot_vISS.Value + QNF_ItemISSQN_vISSQN.Value;
      end;

      QNFvTotTrib.value := Arredonda(QNFvTotTrib.value + QNF_ItemvTotTrib.value,2);

      QNF_Item.Next;
   end;

   QNF_Item.EnableControls;
end;


procedure TDM_NFE.QNF_ChaveAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('nf').AsInteger := QNFid.Value;
end;

procedure TDM_NFE.QNF_ChaveBeforePost(DataSet: TDataSet);
begin
  case QNF_Chavecstat.AsInteger of
     99: QNF_Chavestatus.Value := 'PROCESSANDO';
  0,6,8: QNF_Chavestatus.Value := 'AUTORIZADA';
      3: QNF_Chavestatus.Value := 'CANCELADA';
      4: QNF_Chavestatus.Value := 'DENEGADA';
    else
      QNF_Chavestatus.Value := QNF_Chavecstat.AsString;
  end;
end;

procedure TDM_NFE.QNF_DuplicataAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('nf').AsInteger := QNFid.Value;
end;

procedure TDM_NFE.QNF_Guia_ArrecAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('nf').AsInteger := QNFid.Value;
end;

procedure TDM_NFE.QNF_ItemAfterInsert(DataSet: TDataSet);
var
   i: integer;
begin
   for i := 0 to QNF_Item.FieldCount - 1 do
   with QNF_Item.Fields[i] do
   begin
      if DataType in[ftFloat, ftCurrency]  then
         Value := 0;
   end;

   DataSet.FieldByName('nf').AsInteger := QNFid.Value;

   QNF_ItemnItem.Value := QNF_Item.RecordCount + 1;

   if QNFEmit_CRT.Value < 2 then
      QNF_ItemICMS_CST.Value   := integer(cstVazio)
   else
      QNF_ItemICMS_CSOSN.Value := integer(csosnVazio);

   QNF_ItemPIS_CST.Value       := integer(pis99);
   QNF_ItemCOFINS_CST.Value    := integer(cof99);
   QNF_ItemISSQN_SitTrib.Value := integer(ISSQNcSitTribVazio);
   QNF_ItemIPI_CST.Value       := integer(ipi99);
end;

procedure TDM_NFE.QNF_ItemAfterPost(DataSet: TDataSet);
begin
   if QNF_Item.Tag = 100 then
   begin
      QNF_Item.Tag := 0;
      Totalizar_NFe;
   end;
end;

procedure TDM_NFE.QNF_ItemBeforePost(DataSet: TDataSet);
begin
   if VerificaErro(Dataset) then
      raise Exception.Create('Corrija os erros antes de gravar.');

   QNF_ItemuTrib.Value   := QNF_ItemuCom.Value;
   QNF_ItemqTrib.Value   := QNF_ItemqCom.Value;
   QNF_ItemvUnTrib.Value := QNF_ItemvUnCom.Value;

   Calcular_vProd;
end;


procedure TDM_NFE.QNF_Item_MedAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('nf').AsInteger := QNFid.Value;
end;

procedure TDM_NFE.QNF_LacreAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('vol').AsInteger := QNF_Volumeid.Value;
end;

procedure TDM_NFE.QNF_ReboqueAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('nf').AsInteger := QNFid.Value;
end;

procedure TDM_NFE.QNF_ReferenciadaAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('nf').AsInteger := QNFid.Value;
end;

procedure TDM_NFE.QNF_VolumeAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('nf').AsInteger := QNFid.Value;
end;

procedure TDM_NFE.QNF_VolumeBeforeDelete(DataSet: TDataSet);
begin
   while not QNF_Lacre.IsEmpty do
      QNF_Lacre.Delete;
end;


procedure TDM_NFE.QNFAfterPost(DataSet: TDataSet);
begin
   qFEmissao.Locate('id', QCfgCfg_Geral_FormaEmissao.AsInteger, []);
end;

function TDM_NFE.ValidarDoc(doc, complem: AnsiString; tipo: TACBrValTipoDocto): Boolean;
begin
   Validador.Documento   := doc;
   Validador.Complemento := complem;
   Validador.TipoDocto   := tipo;

   Result := Validador.Validar;
end;

procedure TDM_NFE.Validar_Destinatario;
begin
   if ValidarDoc(QNFDest_CNPJCPF.AsAnsiString, '', docCPF) then
      QNFDest_CNPJCPF.AsAnsiString := Validador.Formatar
   else
   if not ValidarDoc(QNFDest_CNPJCPF.AsAnsiString, '', docCNPJ) then
   begin
      frmValidacao.ListaErros.Items.Append('Destinatário: ' + Validador.MsgErro);
   end
   else
      QNFDest_CNPJCPF.AsAnsiString := Validador.Formatar;

   if not ValidarDoc(QNFDest_EnderDest_UF.AsAnsiString, '', docUF) then
   begin
      frmValidacao.ListaErros.Items.Append('Destinatário: ' + Validador.MsgErro);
   end;

   if ValidarDoc(QNFDest_IE.AsAnsiString, QNFDest_EnderDest_UF.AsAnsiString, docInscEst) then
      QNFDest_IE.AsAnsiString := Validador.Formatar
      else
      frmValidacao.ListaErros.Items.Append('Destinatário: ' + Validador.MsgErro);

   if Length(Trim(QNFDest_xNome.AsString)) < 1 then
   begin
      frmValidacao.ListaErros.Items.Append('Destinatário: Razão Social inválida');
   end;

   if not ValidarDoc(QNFDest_EnderDest_CEP.AsAnsiString, QNFDest_EnderDest_UF.AsAnsiString, docCEP) then
   begin
      frmValidacao.ListaErros.Items.Append('Destinatário: ' + Validador.MsgErro);
   end;

   if Length(Trim(QNFDest_EnderDest_xLgr.AsString)) < 1 then
   begin
      frmValidacao.ListaErros.Items.Append('Destinatário: Logradouro inválido');
   end;

   if Length(Trim(QNFDest_EnderDest_nro.AsString)) < 1 then
   begin
      frmValidacao.ListaErros.Items.Append('Destinatário: Nº inválido. Informe S/N para nº inexistente.;');
   end;

   if Length(Trim(QNFDest_EnderDest_xBairro.AsString)) < 1 then
   begin
      frmValidacao.ListaErros.Items.Append('Destinatário: Bairro inválido.');
   end;

   if QNFDest_EnderDest_cMun.AsInteger < 1 then
   begin
      frmValidacao.ListaErros.Items.Append('Destinatário: Município inválido. (' + QNFDest_EnderDest_cMun.AsString + ')');
   end;

end;

procedure TDM_NFE.Validar_Emitente;
begin
   if ValidarDoc(QNFEmit_CNPJCPF.AsAnsiString, '', docCPF) then
      QNFEmit_CNPJCPF.AsAnsiString := Validador.Formatar
   else
   if not ValidarDoc(QNFEmit_CNPJCPF.AsAnsiString, '', docCNPJ) then
   begin
      frmValidacao.ListaErros.Items.Append('Emitente: ' + Validador.MsgErro);
   end
   else
      QNFEmit_CNPJCPF.AsAnsiString := Validador.Formatar;

   if not ValidarDoc(QNFEmit_EnderEmit_UF.AsAnsiString, '', docUF) then
   begin
      frmValidacao.ListaErros.Items.Append('Emitente: ' + Validador.MsgErro);
   end;

   if ValidarDoc(QNFEmit_IE.AsAnsiString, QNFEmit_EnderEmit_UF.AsAnsiString, docInscEst) then
      QNFEmit_IE.AsAnsiString := Validador.Formatar
      else
      frmValidacao.ListaErros.Items.Append('Emitente: ' + Validador.MsgErro);

   if Length(Trim(QNFEmit_xNome.AsString)) < 1 then
   begin
      frmValidacao.ListaErros.Items.Append('Emitente: Razão Social inválida');
   end;

   if Length(Trim(QNFEmit_xFant.AsString)) < 1 then
   begin
      frmValidacao.ListaErros.Items.Append('Emitente: Nome fantasia inválido');
   end;

   if not ValidarDoc(QNFmit_EnderEmit_CEP.AsAnsiString, QNFEmit_EnderEmit_UF.AsAnsiString, docCEP) then
   begin
      frmValidacao.ListaErros.Items.Append('Emitente: ' + Validador.MsgErro);
   end;

   if Length(Trim(QNFEmit_EnderEmit_xLgr.AsString)) < 1 then
   begin
      frmValidacao.ListaErros.Items.Append('Emitente: Logradouro inválido');
   end;

   if Length(Trim(QNFEmit_EnderEmit_nro.AsString)) < 1 then
   begin
      frmValidacao.ListaErros.Items.Append('Emitente: Nº inválido. Informe S/N para nº inexistente.;');
   end;

   if Length(Trim(QNFEmit_EnderEmit_xBairro.AsString)) < 1 then
   begin
      frmValidacao.ListaErros.Items.Append('Emitente: Bairro inválido.');
   end;

   if QNFEmit_EnderEmit_cMun.AsInteger < 1 then
   begin
      frmValidacao.ListaErros.Items.Append('Emitente: Município inválido. (' + QNFEmit_EnderEmit_cMun.AsString + ')');
   end;

   if (Length(Trim(QNFEmit_IM.AsString)) > 0) and
      (number(QNFEmit_CNAE.AsString) = C_ST_VAZIO) then
   begin
      frmValidacao.ListaErros.Items.Append('Emitente: Informe o CNAE se Inscr. Municipal for informado.');
   end;

   if not(QNFEmit_CRT.AsInteger in [0,1,2]) then
   begin
      frmValidacao.ListaErros.Items.Append('Emitente: CRT inválido.');
   end;
end;

procedure TDM_NFE.Validar_Produto;
begin
   if QNF_ItemqCom.Value <=0 then
   begin
      frmValidacao.ListaErros.Items.Append('Item: Quantidade incorreta.');
   end;
   if QNF_ItemvUnCom.Value <=0 then
   begin
      frmValidacao.ListaErros.Items.Append('Item: VR. UNIT. incorreto.');
   end;
   if Number(QNF_ItemCFOP.AsString) = C_ST_VAZIO then
   begin
      frmValidacao.ListaErros.Items.Append('Item: CFOP incorreto.');
   end;
   if not(Length(Number(QNF_ItemNCM.AsString)) in[2,8]) then
   begin
      frmValidacao.ListaErros.Items.Append('Item: NCM incorreto.');
   end;

   if Trim(QNF_ItemcEAN.AsString) <> C_ST_VAZIO then
   begin
      Validador.TipoDocto := docGTIN;
      Validador.Documento := QNF_ItemcEAN.Value;

      if not Validador.Validar then
      begin
         frmValidacao.ListaErros.Items.Append('Item: ' + Validador.MsgErro);
      end;
   end;
end;

function TDM_NFE.VerificaErro(Dataset: TDataset): boolean;
begin
   frmValidacao := TfrmValidacao.Create(Self);

  // if Dataset = QNF then
    //  Validar_Emitente
  // else
   if Dataset = QNF_Item then
      Validar_Produto;
  // else
  // if Dataset = QNF then
  //    Validar_Destinatario;


   Result := frmValidacao.ListaErros.Items.Count > 0;

   if Result then
      frmValidacao.ShowModal;

   FreeAndNil(frmValidacao);
end;



end.
