unit uDM_NF_Entr;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, Winapi.Windows,
  ACBrNFe, Vcl.Dialogs, pcnConversaoNFE, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLite, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, ACBrBase, ACBrDFe, pcnConversao;

type
  TDM_NF_Entr = class(TDataModule)
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
    DScdNF: TDataSource;
    DScdNF_Item: TDataSource;
    DScdNF_Duplicata: TDataSource;
    DScdNF_Referenciada: TDataSource;
    DScdNF_Reboque: TDataSource;
    DScdNF_Lacre: TDataSource;
    DScdNF_Volume: TDataSource;
    QNF_Chave: TFDQuery;
    DScdNF_Chave: TDataSource;
    NFE1: TACBrNFe;
    DSNF_Chave: TDataSource;
    QNF_Item_Med: TFDQuery;
    DSNF_Item_Med: TDataSource;
    DScdNF_Item_Med: TDataSource;
    DScdNF_Guia_Arrec: TDataSource;
    QNF_Guia_Arrec: TFDQuery;
    DSNF_Guia_Arrec: TDataSource;
    cdNF: TFDQuery;
    cdNF_Item: TFDQuery;
    cdNF_Duplicata: TFDQuery;
    cdNF_Reboque: TFDQuery;
    cdNF_Referenciada: TFDQuery;
    cdNF_Volume: TFDQuery;
    cdNF_Lacre: TFDQuery;
    cdNF_Chave: TFDQuery;
    cdNF_Item_Med: TFDQuery;
    cdNF_Guia_Arrec: TFDQuery;
    DB: TFDConnection;
    SQLIteLink: TFDPhysSQLiteDriverLink;
    cdNF_Itemid: TFDAutoIncField;
    cdNF_Itemnf: TIntegerField;
    cdNF_ItemnItem: TIntegerField;
    cdNF_ItemcProd: TStringField;
    cdNF_ItemcEAN: TStringField;
    cdNF_ItemxProd: TStringField;
    cdNF_ItemNCM: TStringField;
    cdNF_ItemEXTIPI: TStringField;
    cdNF_ItemCFOP: TStringField;
    cdNF_ItemuCom: TStringField;
    cdNF_ItemqCom: TFloatField;
    cdNF_ItemvUnCom: TFloatField;
    cdNF_ItemvProd: TFloatField;
    cdNF_ItemcEANTrib: TStringField;
    cdNF_ItemuTrib: TStringField;
    cdNF_ItemqTrib: TFloatField;
    cdNF_ItemvUnTrib: TFloatField;
    cdNF_ItemvOutro: TFloatField;
    cdNF_ItemvFrete: TFloatField;
    cdNF_ItemvSeg: TFloatField;
    cdNF_ItemvDesc: TFloatField;
    cdNF_IteminfAdProd: TMemoField;
    cdNF_ItemICMS_CST: TIntegerField;
    cdNF_ItemICMS_orig: TIntegerField;
    cdNF_ItemICMS_modBC: TIntegerField;
    cdNF_ItemICMS_vBC: TFloatField;
    cdNF_ItemICMS_pICMS: TFloatField;
    cdNF_ItemICMS_vICMS: TFloatField;
    cdNF_ItemICMS_CSOSN: TIntegerField;
    cdNF_ItemICMS_pCredSN: TFloatField;
    cdNF_ItemICMS_vCredICMSSN: TFloatField;
    cdNF_ItemICMS_modBCST: TIntegerField;
    cdNF_ItemICMS_pMVAST: TFloatField;
    cdNF_ItemICMS_vTabelaST: TFloatField;
    cdNF_ItemICMS_pRedBCST: TFloatField;
    cdNF_ItemICMS_vBCST: TFloatField;
    cdNF_ItemICMS_pICMSST: TFloatField;
    cdNF_ItemICMS_vICMSST: TFloatField;
    cdNF_ItemICMS_pRedBC: TFloatField;
    cdNF_ItemIPI_CST: TIntegerField;
    cdNF_ItemIPI_clEnq: TStringField;
    cdNF_ItemIPI_CNPJProd: TStringField;
    cdNF_ItemIPI_cSelo: TStringField;
    cdNF_ItemIPI_qSelo: TIntegerField;
    cdNF_ItemIPI_cEnq: TStringField;
    cdNF_ItemIPI_vBC: TFloatField;
    cdNF_ItemIPI_qUnid: TFloatField;
    cdNF_ItemIPI_vUnid: TFloatField;
    cdNF_ItemIPI_pIPI: TFloatField;
    cdNF_ItemIPI_vIPI: TFloatField;
    cdNF_ItemII_vBc: TFloatField;
    cdNF_ItemII_vDespAdu: TFloatField;
    cdNF_ItemII_vII: TFloatField;
    cdNF_ItemII_vIOF: TFloatField;
    cdNF_ItemPIS_CST: TIntegerField;
    cdNF_ItemPIS_vBC: TFloatField;
    cdNF_ItemPIS_pPIS: TFloatField;
    cdNF_ItemPIS_vPIS: TFloatField;
    cdNF_ItemPIS_qBCProd: TFloatField;
    cdNF_ItemPIS_vAliqProd: TFloatField;
    cdNF_ItemPISST_vBc: TFloatField;
    cdNF_ItemPISST_pPis: TFloatField;
    cdNF_ItemPISST_qBCProd: TFloatField;
    cdNF_ItemPISST_vAliqProd: TFloatField;
    cdNF_ItemPISST_vPIS: TFloatField;
    cdNF_ItemCOFINS_CST: TIntegerField;
    cdNF_ItemCOFINS_vBC: TFloatField;
    cdNF_ItemCOFINS_pCOFINS: TFloatField;
    cdNF_ItemCOFINS_vCOFINS: TFloatField;
    cdNF_ItemCOFINS_qBCProd: TFloatField;
    cdNF_ItemCOFINS_vAliqProd: TFloatField;
    cdNF_ItemCOFINSST_vBC: TFloatField;
    cdNF_ItemCOFINSST_pCOFINS: TFloatField;
    cdNF_ItemCOFINSST_qBCProd: TFloatField;
    cdNF_ItemCOFINSST_vAliqProd: TFloatField;
    cdNF_ItemCOFINSST_vCOFINS: TFloatField;
    cdNF_ItemISSQN_vBC: TFloatField;
    cdNF_ItemISSQN_vAliq: TFloatField;
    cdNF_ItemISSQN_vISSQN: TFloatField;
    cdNF_ItemISSQN_cMunFG: TIntegerField;
    cdNF_ItemISSQN_cListServ: TIntegerField;
    cdNF_ItemISSQN_SitTrib: TIntegerField;
    cdNF_ItemICMS_vBCSTRet: TFloatField;
    cdNF_ItemICMS_vICMSSTRet: TFloatField;
    cdNF_ItemQTD: TFloatField;
    cdNF_ItemICMS_CST_inform: TIntegerField;
    cdNF_ItemICMS_orig_inform: TIntegerField;
    cdNF_ItemICMS_modBC_inform: TIntegerField;
    cdNF_ItemICMS_vBC_inform: TFloatField;
    cdNF_ItemICMS_pICMS_inform: TFloatField;
    cdNF_ItemICMS_vICMS_inform: TFloatField;
    cdNF_ItemICMS_CSOSN_inform: TIntegerField;
    cdNF_ItemICMS_pCredSN_inform: TFloatField;
    cdNF_ItemICMS_vCredICMSSN_inform: TFloatField;
    cdNF_ItemICMS_modBCST_inform: TIntegerField;
    cdNF_ItemICMS_pMVAST_inform: TFloatField;
    cdNF_ItemICMS_vTabelaST_inform: TFloatField;
    cdNF_ItemICMS_pRedBCST_inform: TFloatField;
    cdNF_ItemICMS_vBCST_inform: TFloatField;
    cdNF_ItemICMS_pICMSST_inform: TFloatField;
    cdNF_ItemICMS_vICMSST_inform: TFloatField;
    cdNF_ItemICMS_pRedBC_inform: TFloatField;
    cdNF_ItemIPI_CST_inform: TIntegerField;
    cdNF_ItemIPI_clEnq_inform: TStringField;
    cdNF_ItemIPI_CNPJProd_inform: TStringField;
    cdNF_ItemIPI_cSelo_inform: TStringField;
    cdNF_ItemIPI_qSelo_inform: TIntegerField;
    cdNF_ItemIPI_cEnq_inform: TStringField;
    cdNF_ItemIPI_vBC_inform: TFloatField;
    cdNF_ItemIPI_qUnid_inform: TFloatField;
    cdNF_ItemIPI_vUnid_inform: TFloatField;
    cdNF_ItemIPI_pIPI_inform: TFloatField;
    cdNF_ItemIPI_vIPI_inform: TFloatField;
    cdNF_ItemII_vBc_inform: TFloatField;
    cdNF_ItemII_vDespAdu_inform: TFloatField;
    cdNF_ItemII_vII_inform: TFloatField;
    cdNF_ItemII_vIOF_inform: TFloatField;
    cdNF_ItemPIS_CST_inform: TIntegerField;
    cdNF_ItemPIS_vBC_inform: TFloatField;
    cdNF_ItemPIS_pPIS_inform: TFloatField;
    cdNF_ItemPIS_vPIS_inform: TFloatField;
    cdNF_ItemPIS_qBCProd_inform: TFloatField;
    cdNF_ItemPIS_vAliqProd_inform: TFloatField;
    cdNF_ItemPISST_vBc_inform: TFloatField;
    cdNF_ItemPISST_pPis_inform: TFloatField;
    cdNF_ItemPISST_qBCProd_inform: TFloatField;
    cdNF_ItemPISST_vAliqProd_inform: TFloatField;
    cdNF_ItemPISST_vPIS_inform: TFloatField;
    cdNF_ItemCOFINS_CST_inform: TIntegerField;
    cdNF_ItemCOFINS_vBC_inform: TFloatField;
    cdNF_ItemCOFINS_pCOFINS_inform: TFloatField;
    cdNF_ItemCOFINS_vCOFINS_inform: TFloatField;
    cdNF_ItemCOFINS_qBCProd_inform: TFloatField;
    cdNF_ItemCOFINS_vAliqProd_inform: TFloatField;
    cdNF_ItemCOFINSST_vBC_inform: TFloatField;
    cdNF_ItemCOFINSST_pCOFINS_inform: TFloatField;
    cdNF_ItemCOFINSST_qBCProd_inform: TFloatField;
    cdNF_ItemCOFINSST_vAliqProd_inform: TFloatField;
    cdNF_ItemCOFINSST_vCOFINS_inform: TFloatField;
    cdNF_ItemISSQN_vBC_inform: TFloatField;
    cdNF_ItemISSQN_vAliq_inform: TFloatField;
    cdNF_ItemISSQN_vISSQN_inform: TFloatField;
    cdNF_ItemISSQN_cMunFG_inform: TIntegerField;
    cdNF_ItemISSQN_cListServ_inform: TIntegerField;
    cdNF_ItemISSQN_SitTrib_inform: TIntegerField;
    cdNF_ItemICMS_vBCSTRet_inform: TFloatField;
    cdNF_ItemICMS_vICMSSTRet_inform: TFloatField;
    cdNF_ItemICMS_motDesICMS: TIntegerField;
    cdNF_ItemICMS_motDesICMS_inform: TIntegerField;
    cdNF_ItemvTotTrib: TFloatField;
    cdNF_Itemmd5: TStringField;
    cdNF_Itemhash: TStringField;
    cdNF_Itemcfop_inform: TStringField;
    cdNFid: TFDAutoIncField;
    cdNFIde_cNF: TIntegerField;
    cdNFIde_natOp: TStringField;
    cdNFIde_indPag: TIntegerField;
    cdNFIde_modelo: TIntegerField;
    cdNFIde_serie: TIntegerField;
    cdNFIde_nNF: TIntegerField;
    cdNFIde_dEmi: TDateField;
    cdNFIde_dSaiEnt: TDateField;
    cdNFIde_tpNF: TIntegerField;
    cdNFIde_tpEmis: TIntegerField;
    cdNFIde_tpAmb: TIntegerField;
    cdNFIde_verProc: TStringField;
    cdNFIde_cUF: TIntegerField;
    cdNFIde_cMunFG: TStringField;
    cdNFIde_finNFe: TIntegerField;
    cdNFIde_dhCont: TDateField;
    cdNFIde_xJust: TStringField;
    cdNFEmit_CNPJCPF: TStringField;
    cdNFEmit_IE: TStringField;
    cdNFEmit_xNome: TStringField;
    cdNFEmit_xFant: TStringField;
    cdNFEmit_EnderEmit_fone: TStringField;
    cdNFmit_EnderEmit_CEP: TStringField;
    cdNFEmit_EnderEmit_xLgr: TStringField;
    cdNFEmit_EnderEmit_nro: TStringField;
    cdNFEmit_EnderEmit_xCpl: TStringField;
    cdNFEmit_EnderEmit_xBairro: TStringField;
    cdNFEmit_EnderEmit_cMun: TIntegerField;
    cdNFEmit_EnderEmit_xMun: TStringField;
    cdNFEmit_EnderEmit_UF: TStringField;
    cdNFEmit_enderEmit_cPais: TIntegerField;
    cdNFEmit_enderEmit_xPais: TStringField;
    cdNFEmit_IEST: TStringField;
    cdNFEmit_IM: TStringField;
    cdNFEmit_CNAE: TStringField;
    cdNFEmit_CRT: TIntegerField;
    cdNFDest_CNPJCPF: TStringField;
    cdNFDest_IE: TStringField;
    cdNFDest_ISUF: TStringField;
    cdNFDest_xNome: TStringField;
    cdNFDest_EnderDest_Fone: TStringField;
    cdNFDest_EnderDest_CEP: TStringField;
    cdNFDest_EnderDest_xLgr: TStringField;
    cdNFDest_EnderDest_nro: TStringField;
    cdNFDest_EnderDest_xCpl: TStringField;
    cdNFDest_EnderDest_xBairro: TStringField;
    cdNFDest_EnderDest_cMun: TIntegerField;
    cdNFDest_EnderDest_xMun: TStringField;
    cdNFDest_EnderDest_UF: TStringField;
    cdNFDest_EnderDest_cPais: TIntegerField;
    cdNFDest_EnderDest_xPais: TStringField;
    cdNFRetirada_CNPJCPF: TStringField;
    cdNFRetirada_xLgr: TStringField;
    cdNFRetirada_nro: TStringField;
    cdNFRetirada_xCpl: TStringField;
    cdNFRetirada_xBairro: TStringField;
    cdNFRetirada_cMun: TIntegerField;
    cdNFRetirada_xMun: TStringField;
    cdNFRetirada_UF: TStringField;
    cdNFEntrega_CNPJCPF: TStringField;
    cdNFEntrega_xLgr: TStringField;
    cdNFEntrega_nro: TStringField;
    cdNFEntrega_xCpl: TStringField;
    cdNFEntrega_xBairro: TStringField;
    cdNFEntrega_cMun: TIntegerField;
    cdNFEntrega_xMun: TStringField;
    cdNFEntrega_UF: TStringField;
    cdNFmodFrete: TIntegerField;
    cdNFTransporta_CNPJCPF: TStringField;
    cdNFTransporta_xNome: TStringField;
    cdNFTransporta_IE: TStringField;
    cdNFTransporta_xEnder: TStringField;
    cdNFTransporta_xMun: TStringField;
    cdNFTransporta_UF: TStringField;
    cdNFretvServ: TFloatField;
    cdNFretvBCRet: TFloatField;
    cdNFretpICMSRet: TFloatField;
    cdNFretvICMSRet: TFloatField;
    cdNFretCFOP: TStringField;
    cdNFretcMunFG: TIntegerField;
    cdNFveicplaca: TStringField;
    cdNFveicUF: TStringField;
    cdNFveicRNTC: TStringField;
    cdNFnFat: TStringField;
    cdNFvOrig: TFloatField;
    cdNFvDesc: TFloatField;
    cdNFvLiq: TFloatField;
    cdNFinfAdFisco: TMemoField;
    cdNFinfCpl: TMemoField;
    cdNFICMSTot_vBC: TFloatField;
    cdNFICMSTot_vICMS: TFloatField;
    cdNFICMSTot_vBCST: TFloatField;
    cdNFICMSTot_vST: TFloatField;
    cdNFICMSTot_vProd: TFloatField;
    cdNFICMSTot_vFrete: TFloatField;
    cdNFICMSTot_vSeg: TFloatField;
    cdNFICMSTot_vDesc: TFloatField;
    cdNFICMSTot_vII: TFloatField;
    cdNFICMSTot_vIPI: TFloatField;
    cdNFICMSTot_vPIS: TFloatField;
    cdNFICMSTot_vCOFINS: TFloatField;
    cdNFICMSTot_vOutro: TFloatField;
    cdNFICMSTot_vNF: TFloatField;
    cdNFISSQNtot_vServ: TFloatField;
    cdNFISSQNTot_vBC: TFloatField;
    cdNFISSQNTot_vISS: TFloatField;
    cdNFISSQNTot_vPIS: TFloatField;
    cdNFISSQNTot_vCOFINS: TFloatField;
    cdNFretTrib_vRetPIS: TFloatField;
    cdNFretTrib_vRetCOFINS: TFloatField;
    cdNFretTrib_vRetCSLL: TFloatField;
    cdNFretTrib_vBCIRRF: TFloatField;
    cdNFretTrib_vIRRF: TFloatField;
    cdNFretTrib_vBCRetPrev: TFloatField;
    cdNFretTrib_vRetPrev: TFloatField;
    cdNFmd5: TStringField;
    cdNFhash: TStringField;
    cdNFstatus: TIntegerField;
    cdNFIde_hSaiEnt: TTimeField;
    cdNFinfCpl_Dig: TMemoField;
    cdNF_Item_Medid: TFDAutoIncField;
    cdNF_Item_Meditem: TIntegerField;
    cdNF_Item_Mednlote: TStringField;
    cdNF_Item_Medqlote: TFloatField;
    cdNF_Item_Meddfab: TDateField;
    cdNF_Item_Meddven: TDateField;
    cdNF_Item_Medvpmc: TFloatField;
    cdNF_Itemvr_custo: TFloatField;
    cdNF_Guia_Arrecid: TFDAutoIncField;
    cdNF_Guia_Arrecnf: TIntegerField;
    cdNF_Guia_Arreccod_da: TIntegerField;
    cdNF_Guia_Arrecuf: TStringField;
    cdNF_Guia_Arrecnmro: TStringField;
    cdNF_Guia_Arreccod_aut: TStringField;
    cdNF_Guia_Arrecvalor: TFloatField;
    cdNF_Guia_Arrecdt_venc: TDateField;
    cdNF_Guia_Arrecdt_pag: TDateField;
    cdNF_Duplicataid: TFDAutoIncField;
    cdNF_Duplicatanf: TIntegerField;
    cdNF_DuplicatanDup: TStringField;
    cdNF_DuplicatavDup: TFloatField;
    cdNF_DuplicatadVenc: TDateField;
    cdNF_Reboqueid: TFDAutoIncField;
    cdNF_Reboquenf: TIntegerField;
    cdNF_Reboqueplaca: TStringField;
    cdNF_Reboqueuf: TStringField;
    cdNF_Reboquerntc: TStringField;
    cdNF_Reboquevagao: TStringField;
    cdNF_Reboquebalsa: TStringField;
    cdNF_Referenciadaid: TFDAutoIncField;
    cdNF_Referenciadanf: TIntegerField;
    cdNF_ReferenciadarefNFe: TStringField;
    cdNF_ReferenciadaRefNF_cUF: TIntegerField;
    cdNF_ReferenciadaRefNF_AAMM: TStringField;
    cdNF_ReferenciadaRefNF_CNPJ: TStringField;
    cdNF_ReferenciadaRefNF_modelo: TIntegerField;
    cdNF_ReferenciadaRefNF_serie: TIntegerField;
    cdNF_ReferenciadaRefNF_nNF: TIntegerField;
    cdNF_ReferenciadaRefNFP_cUF: TIntegerField;
    cdNF_ReferenciadaRefNFP_AAMM: TStringField;
    cdNF_ReferenciadaRefNFP_CNPJCPF: TStringField;
    cdNF_ReferenciadaRefNFP_IE: TStringField;
    cdNF_ReferenciadaRefNFP_modelo: TStringField;
    cdNF_ReferenciadaRefNFP_serie: TIntegerField;
    cdNF_ReferenciadaRefNFP_nNF: TIntegerField;
    cdNF_ReferenciadaRefECF_modelo: TIntegerField;
    cdNF_ReferenciadaRefECF_nECF: TStringField;
    cdNF_ReferenciadaRefECF_nCOO: TStringField;
    cdNF_ReferenciadaRefCte: TStringField;
    cdNF_ReferenciadaRefECF_data: TDateField;
    cdNF_ReferenciadaRefECF_Serie: TStringField;
    cdNF_Volumeid: TFDAutoIncField;
    cdNF_Volumenf: TIntegerField;
    cdNF_VolumeqVol: TIntegerField;
    cdNF_Volumeespecie: TStringField;
    cdNF_Volumemarca: TStringField;
    cdNF_VolumenVol: TStringField;
    cdNF_VolumepesoL: TFloatField;
    cdNF_VolumepesoB: TFloatField;
    cdNF_Lacreid: TFDAutoIncField;
    cdNF_Lacrevol: TIntegerField;
    cdNF_Lacrenlacre: TStringField;
    cdNF_Chaveid: TFDAutoIncField;
    cdNF_Chavenf: TIntegerField;
    cdNF_Chavechave: TStringField;
    cdNF_Chaverecibo: TStringField;
    cdNF_Chaveprotocolo: TStringField;
    cdNF_Chavecstat: TIntegerField;
    cdNF_Chavestatus: TStringField;
    cdNF_Itemid_prod: TIntegerField;
    cdNF_Itemvr_venda: TFloatField;
    cdNF_Itemult_custo: TFloatField;
    QNFid: TFDAutoIncField;
    QNFIde_cNF: TIntegerField;
    QNFIde_natOp: TStringField;
    QNFIde_indPag: TIntegerField;
    QNFIde_modelo: TIntegerField;
    QNFIde_serie: TIntegerField;
    QNFIde_nNF: TIntegerField;
    QNFIde_dEmi: TDateField;
    QNFIde_dSaiEnt: TDateField;
    QNFIde_hSaiEnt: TTimeField;
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
    QNF_Itemid: TFDAutoIncField;
    QNF_Itemnf: TIntegerField;
    QNF_ItemnItem: TIntegerField;
    QNF_ItemcProd: TStringField;
    QNF_ItemcEAN: TStringField;
    QNF_ItemxProd: TStringField;
    QNF_ItemNCM: TStringField;
    QNF_ItemEXTIPI: TStringField;
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
    QNF_ItemIPI_cEnq: TStringField;
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
    QNF_ItemCFOP_inform: TStringField;
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
    QNF_DuplicaTFDVenc: TDateField;
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
    QNF_ReferenciadaRefECF_data: TDateField;
    QNF_ReferenciadaRefECF_Serie: TStringField;
    QNF_ReferenciadaRefCte: TStringField;
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
    QNF_Guia_Arrecid: TFDAutoIncField;
    QNF_Guia_Arrecnf: TIntegerField;
    QNF_Guia_Arreccod_da: TIntegerField;
    QNF_Guia_Arrecuf: TStringField;
    QNF_Guia_Arrecnmro: TStringField;
    QNF_Guia_Arreccod_aut: TStringField;
    QNF_Guia_Arrecvalor: TFloatField;
    QNF_Guia_Arrecdt_venc: TDateField;
    QNF_Guia_Arrecdt_pag: TDateField;
    DSNF_Duplicata: TDataSource;
    QNF_ItemPIS_codrec: TIntegerField;
    cdNF_ItemPIS_codrec: TIntegerField;
    QNF_Itemvr_custo: TFloatField;
    QNF_Itemvr_venda: TFloatField;
    QNF_Itemult_custo: TFloatField;
    procedure cdNFIde_finNFeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdNFIde_tpAmbGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdNFIde_tpEmisGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdNF_ItemICMS_CSTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdNF_ItemICMS_CSOSNGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdNF_ItemICMS_modBCGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdNF_ItemICMS_origGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdNF_ItemICMS_modBCSTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdNF_ItemIPI_CSTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
   procedure cdNF_ItemBeforePost(DataSet: TDataSet);
    procedure cdNF_ItemCSTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QNF_ItemICMS_CSTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QNF_ItemICMS_CSOSNGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QNF_ItemPIS_CSTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QNF_ItemCOFINS_CSTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QNF_ItemICMS_modBCSTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdNF_Guia_ArrecAfterInsert(DataSet: TDataSet);
    procedure cdNF_ItemAfterInsert(DataSet: TDataSet);
    procedure cdNF_Item_MedAfterInsert(DataSet: TDataSet);
    procedure cdNF_DuplicataAfterInsert(DataSet: TDataSet);
    procedure cdNF_ReboqueAfterInsert(DataSet: TDataSet);
    procedure cdNF_ReferenciadaAfterInsert(DataSet: TDataSet);
    procedure cdNF_VolumeAfterInsert(DataSet: TDataSet);
    procedure cdNF_LacreAfterInsert(DataSet: TDataSet);
    procedure cdNF_ChaveAfterInsert(DataSet: TDataSet);
    procedure QNF_ItemAfterInsert(DataSet: TDataSet);
    procedure QNF_Item_MedAfterInsert(DataSet: TDataSet);
    procedure QNF_DuplicataAfterInsert(DataSet: TDataSet);
    procedure QNF_ReboqueAfterInsert(DataSet: TDataSet);
    procedure QNF_ReferenciadaAfterInsert(DataSet: TDataSet);
    procedure QNF_VolumeAfterInsert(DataSet: TDataSet);
    procedure QNF_LacreAfterInsert(DataSet: TDataSet);
    procedure QNF_ChaveAfterInsert(DataSet: TDataSet);
    procedure QNF_Guia_ArrecAfterInsert(DataSet: TDataSet);
    procedure cdNF_ChaveBeforePost(DataSet: TDataSet);
    procedure QNFAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DBError(ASender: TObject; const AInitiator: IFDStanObject; var AException: Exception);
    procedure cdNFAfterInsert(DataSet: TDataSet);
    procedure QNFstatusGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QNF_DuplicataAfterPost(DataSet: TDataSet);
    procedure cdNFBeforePost(DataSet: TDataSet);
    procedure cdNF_ItemPIS_CSTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdNF_ItemCOFINS_CSTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    procedure Calcular_Custo_Item;
    procedure Flag_Item_Cadastrado;
    function ValidarCFOP(cfop: string): boolean;

  public
   var
      Procurar, manual: boolean;
    procedure Restaurar_Dados_locais;
    procedure Limpar_CDatasets;
    procedure Processar_Valores_Item;//configura os valores dos campos de uso do sistema QTD, VR CUSTO, ULTIMO CUSTO E VR VENDA
    procedure Carregar_Datasets;
    procedure Fechar_Datasets;
    procedure Salvar_Datasets;
    procedure Processar_valores_inform;
    procedure Gravar_CST_CSOSN;

    function CstToStr(origem, cst: integer): string;
    function CsosnToStr(csosn: integer): string;
    function CstToAcbr(cst: integer): integer;
    function ValidarRegra: boolean;
    procedure Conectar;
    procedure Ajustar_SQL(entrada: boolean);
  end;

var
  DM_NF_Entr: TDM_NF_Entr;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses uDM, uFuncoes, uAutocomConsts, udm_ini, uConverteEmitInform, uDadosItemNF;

{$R *.dfm}

procedure TDM_NF_Entr.Ajustar_SQL(entrada: boolean);
var
   s: string;
begin
   s := iif(entrada, '_entr ', ' ');

  // QNF.SQL.Text              := 'select * from nf' + s ;
   QNF_Item.SQL.Text         := 'select * from nf_item' + s + ' where nf=:id ';
   QNF_Item_Med.SQL.Text     := 'select * from nf_item_med' + s + ' where item=:id ';
   QNF_Duplicata.SQL.Text    := 'select * from nf_duplicata' + s + ' where nf=:id ';
   QNF_Reboque.SQL.Text      := 'select * from nf_reboque' + s + ' where nf=:id ';
   QNF_Referenciada.SQL.Text := 'select * from nf_referenciada' + s + ' where nf=:id ';
   QNF_Volume.SQL.Text       := 'select * from nf_volumes' + s + ' where nf=:id ';
   QNF_Lacre.SQL.Text        := 'select * from nf_vol_lacre' + s + ' where vol=:id ';
   QNF_Chave.SQL.Text        := 'select * from nf_chave' + s + ' where nf=:id ';
 //  QNF_Guia_Arrec.SQL.Text   := 'select * from nf_guia_arrec ' + s + ' where nf=:id ';
end;

procedure TDM_NF_Entr.Conectar;
begin
   DB.Connected                    := False;
   DB.Params.Values['Database']    := Aqui(C_PATH_ARQ_LOCAL_NFE, 'autocom.nfentr');
   DB.Connected                    := True;
end;


procedure TDM_NF_Entr.Calcular_Custo_Item; //calcula o custo do item real
var
   n: currency;
begin
   n := Arredonda((cdNF_ItemIPI_vIPI.Value +
                   cdNF_ItemICMS_vICMSST.Value +
                   cdNF_ItemvOutro.Value +
                   cdNF_ItemvFrete.Value +
                   cdNF_ItemvSeg.Value +
                   cdNF_ItemvProd.Value -
                   cdNF_ItemvDesc.Value)/cdNF_ItemQTD.Value, 2);

   cdNF_ItemVR_CUSTO.Value := n;
end;

procedure TDM_NF_Entr.cdNFAfterInsert(DataSet: TDataSet);
begin
   cdNFstatus.Value := 0;//autorizada por padrão
end;

procedure TDM_NF_Entr.cdNFBeforePost(DataSet: TDataSet);
begin
   if cdNFIde_serie.Value <=0 then
      cdNFIde_serie.Value := 1;
end;

procedure TDM_NF_Entr.cdNFIde_finNFeGetText(Sender: TField; var Text: string; //converte acbr em texto
  DisplayText: Boolean);
begin
   if not (sender.AsInteger in [0..2]) then
   begin
      Text := C_259;
      Exit;
   end;

   Text := C_ARR_8[sender.AsInteger];
end;

procedure TDM_NF_Entr.Limpar_CDatasets; //limpa todos os cdset's
begin
   if NOT cdNF.IsEmpty then
      cdNF.Delete;
end;

procedure TDM_NF_Entr.Carregar_Datasets;
begin
   cdNF.Open;
   cdNF_Item.Open;
   cdNF_Item_Med.Open;
   cdNF_Duplicata.Open;
   cdNF_Reboque.Open;
   cdNF_Referenciada.Open;
   cdNF_Volume.Open;
   cdNF_Lacre.Open;
   cdNF_Chave.Open;
   cdNF_Guia_Arrec.Open;
end;

procedure TDM_NF_Entr.Gravar_CST_CSOSN;
var
   i: integer;
begin
   if not DM.QEmpresa.Active then
      DM.QEmpresa.Open;
   i := 0;

   if DM.QEmpresaindativ.Value > 1 then //regime normal
   begin
      if cdNFEmit_CRT.Value < 2 then //emitente é SN
      begin
         case TpcnCSOSNIcms(cdNF_ItemICMS_CSOSN.Value) of
             csosnVazio: i := Integer(cstVazio);
             csosn101: i := Integer(cst00);
             csosn102: i := Integer(cst40);
             csosn103: i := Integer(cst00);
             csosn201: i := Integer(cst60);
             csosn202: i := Integer(cst30);
             csosn203: i := Integer(cst30);
             csosn300: i := Integer(cst40);
             csosn400: i := Integer(cst40);
             csosn500: i := Integer(cst60);
             csosn900: i := Integer(cst90);
         end;
      end
      else//emitente é regime normal Para venda use 00, 40, 41 ou 60
      begin
         i := cdNF_ItemICMS_CST.Value;

         case TpcnCSTIcms(cdNF_ItemICMS_CST.Value) of
            cst60, cst10, cst70: i := Integer(cst60);
            cst50, cst51, cst90: i := Integer(cst40);
         end;
      end;
   end
   else //informante é SN
   begin
      if cdNFEmit_CRT.Value > 1 then //emitente é regime normal
      begin
         case TpcnCSTIcms(cdNF_ItemICMS_CST.Value) of
                           cst00, cst20: i:=  Integer(csosn202);
             cst40, cst41, cst50, cst51: i:= Integer(csosn400);
                                  cst30: i := Integer(csosn203);
                     cst10, cst70,cst60: i := Integer(csosn500);
                                  cst90: i:= Integer(csosn900);

         end;
      end
      else //emitente é SN
      begin
          i := cdNF_ItemICMS_CSOSN.Value;
      end;
   end;

   DM.QEstoquecst.Value := i;
end;


procedure TDM_NF_Entr.cdNFIde_tpAmbGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   case sender.asinteger of
      0: Text := 'Produção';
      1: Text := 'Homologação';
   end;
end;

procedure TDM_NF_Entr.cdNFIde_tpEmisGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   if not (sender.AsInteger in [0..8]) then
   begin
      Text := C_259;
      Exit;
   end;

   Text := C_ARR_7[sender.AsInteger];
end;

procedure TDM_NF_Entr.cdNF_ChaveAfterInsert(DataSet: TDataSet);
begin
   cdNF_Chavenf.Value := cdNFid.Value;
end;

procedure TDM_NF_Entr.cdNF_ChaveBeforePost(DataSet: TDataSet);
begin
   case cdNF_Chavecstat.Value of
      100: cdNF_Chavecstat.Value := 0;
      205,301,302: cdNF_Chavecstat.Value := 4;
   end;

   case cdNF_Chavecstat.Value of
      0: cdNF_Chavestatus.Value := 'AUTORIZADA';
      4: cdNF_Chavestatus.Value := 'DENEGADA';
   end;
end;

procedure TDM_NF_Entr.cdNF_DuplicataAfterInsert(DataSet: TDataSet);
begin
   cdNF_Duplicatanf.Value := cdNFid.Value;
end;

procedure TDM_NF_Entr.cdNF_Guia_ArrecAfterInsert(DataSet: TDataSet);
begin
   cdNF_Guia_Arrecnf.Value := cdNFid.Value;
end;

procedure TDM_NF_Entr.cdNF_ItemAfterInsert(DataSet: TDataSet);
begin
   cdNF_Itemnf.Value := cdNFid.Value;
end;

procedure TDM_NF_Entr.cdNF_ItemBeforePost(DataSet: TDataSet);
begin
   if (DataSet.State in [dsEdit, dsInsert]) and (cdNF_ItemQTD.Value<=0) then
      raise Exception.Create('Informe a quantidade.');

   if DataSet.State = dsInsert then //se esta no modo insert
   begin
      if Procurar then
         Flag_Item_Cadastrado;//rotina que verifica se o item existe no BD do sistema e insere os valores de venda e ultimo custo
   end;

   if (DataSet.State in [dsEdit, dsInsert])and(DataSet.Tag<>2) then //se esta no modo edit  ou insert
   begin
      Processar_valores_inform;
      Calcular_Custo_Item;
   end;
end;

procedure TDM_NF_Entr.cdNF_ItemCOFINS_CSTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := C_ARR_9[sender.AsInteger];
end;

procedure TDM_NF_Entr.cdNF_ItemCSTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   Text := CstToStr(0, sender.AsInteger); //converte acbr para cst
end;

procedure TDM_NF_Entr.cdNF_ItemICMS_CSOSNGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   text := C_ARR_4[sender.AsInteger];
end;

procedure TDM_NF_Entr.cdNF_ItemICMS_CSTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   Text := C_ARR_5[sender.AsInteger];
end;

procedure TDM_NF_Entr.cdNF_ItemICMS_modBCGetText(Sender: TField;  var Text: string; DisplayText: Boolean);
begin
   if not (sender.AsInteger in [0..3]) then
   begin
      Text := C_259;
      Exit;
   end;

   Text := C_ARR_6[sender.AsInteger];
end;

procedure TDM_NF_Entr.cdNF_ItemICMS_modBCSTGetText(Sender: TField;  var Text: string; DisplayText: Boolean);
begin
   if (not (sender.AsInteger in [0..5]))or(cdNF_ItemICMS_vBCST.Value = 0) then
   begin
      Text := C_259;
      Exit;
   end;

   Text := C_ARR_1[sender.AsInteger];
end;

procedure TDM_NF_Entr.cdNF_ItemICMS_origGetText(Sender: TField;  var Text: string; DisplayText: Boolean);
begin
   if not (sender.AsInteger in [0..13]) then
   begin
      Text := C_259;
      Exit;
   end;

   Text := C_ARR_2[sender.AsInteger];
end;

procedure TDM_NF_Entr.cdNF_ItemIPI_CSTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   Text := C_ARR_3[sender.AsInteger];
end;

procedure TDM_NF_Entr.cdNF_ItemPIS_CSTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   Text := C_ARR_9[sender.AsInteger];
end;

procedure TDM_NF_Entr.cdNF_Item_MedAfterInsert(DataSet: TDataSet);
begin
   cdNF_Item_Meditem.Value := cdNF_Itemid.Value;
end;

procedure TDM_NF_Entr.cdNF_LacreAfterInsert(DataSet: TDataSet);
begin
   cdNF_LacreVol.Value := cdNF_Volumeid.Value;
end;

procedure TDM_NF_Entr.cdNF_ReboqueAfterInsert(DataSet: TDataSet);
begin
   cdNF_Reboquenf.Value := cdNFid.Value;
end;

procedure TDM_NF_Entr.cdNF_ReferenciadaAfterInsert(DataSet: TDataSet);
begin
   cdNF_Referenciadanf.Value := cdNFid.Value;
end;

procedure TDM_NF_Entr.cdNF_VolumeAfterInsert(DataSet: TDataSet);
begin
   cdNF_Volumenf.Value := cdNFid.Value;
end;

function TDM_NF_Entr.CsosnToStr(csosn: integer): string;
begin
   if not (csosn in [0..10]) then
   begin
      Result := 'ERR';
      Exit;
   end;

   Result := C_ARR_4[csosn];
end;

function TDM_NF_Entr.CstToStr(origem, cst: integer): string;
begin
   if not (cst in [0..19]) then
   begin
      Result := 'ERR';
      Exit;
   end;

   Result := C_ARR_5[cst];
end;

procedure TDM_NF_Entr.DataModuleCreate(Sender: TObject);
begin
   if db.Connected then
   begin
     // ShowMessage('ERRO 25');
      raise Exception.Create('ERRO 25');
   end
end;

procedure TDM_NF_Entr.DBError(ASender: TObject; const AInitiator: IFDStanObject; var AException: Exception);
begin
   Log('NFEntr_Err', 'DB', AException.Message);
end;

function TDM_NF_Entr.CstToAcbr(cst: integer): integer; //converte cst em codigo ACBR
var
  i: integer;
begin
   Result := 999;//exibe "ERR" por estar fora da faixa

   for i := 0 to 19 do //procura o CST no array e retorna sua posição
   if cst = StrToIntDef(C_ARR_5[i], 999) then
      Result := i;
end;


procedure TDM_NF_Entr.Fechar_Datasets;
begin
   cdNF.Close;
   cdNF_Item.Close;
   cdNF_Item_Med.Close;
   cdNF_Duplicata.Close;
   cdNF_Reboque.Close;
   cdNF_Referenciada.Close;
   cdNF_Volume.Close;
   cdNF_Lacre.Close;
   cdNF_Chave.Close;
   cdNF_Guia_Arrec.Close;
end;

procedure TDM_NF_Entr.Flag_Item_Cadastrado;//rotina q verifica se o item da NF existe no BD
var
   i: integer;
   s: string;
begin
   i := 0;

   if cdNF_ItemcEAN.AsString <> C_ST_VAZIO then//procura no cadastro de estoque pelo GTIN
   begin
      s := DM_NF_Entr.cdNF_ItemcEAN.AsString;

      if Length(s) = 14 then //remove o 0 no inicio, se houver
         s := copy(s,2,13);

      DM.Q1.Open('select count(*) from estoque where cod_gtin=' + Texto_Mysql(s));

      if DM.Q1.Fields[0].AsInteger > 1 then
         raise Exception.Create('Há mais de um produto cadastrado com o código ' + s);

      DM.Q1.Open('select fn_id_prod(' + Texto_Mysql(s) + ');');//localiza o id do produto
      i := DM.Q1.Fields[0].AsInteger;
   end;

   if i= 0 then  //se nao achou, procura na tabela prod_nf_forn
   begin
      try
         DM.Q1.Open('select fn_id_prod_forn('  +
                             Texto_Mysql(DM_NF_Entr.cdNF_ItemcProd.AsString) + ',' +
                             Texto_Mysql(cdNFEmit_CNPJCPF.AsString) + ');'

         );
         i := DM.Q1.Fields[0].AsInteger;
      except
         i := 0;
      end;
   end;

   cdNF_Itemid_prod.Value := i;

   if i > 0 then // se achou
   begin
      DM.Q1.Open('select * from vw_estoque where id=' + Texto_Mysql(i));

      //insere os valores de venda e ultimo custo
      cdNF_ItemVR_VENDA.Value   := DM.Q1.FieldByName('vrvenda_vista').AsCurrency;
      cdNF_ItemULT_CUSTO.Value  := DM.Q1.FieldByName('vrcusto_real').AsCurrency;
      cdNF_ItemPIS_codrec.Value := DM.Q1.FieldByName('cod_receita').AsInteger;
   end;
end;

procedure TDM_NF_Entr.Processar_valores_inform;
var
   i,j: integer;
   s: string;
begin
    if cdNF_Item.Tag = -100 then
      exit;

   cdNF_Item.DisableControls;

   //prenche os campos *_inform com os dados do emitente
   if cdNF_Item.Tag = 0 then //se o usuario nao estiver editando (tag=1)
   for i := 0 to cdNF_Item.FieldCount - 1 do
   begin
      for j := 0 to cdNF_Item.FieldCount - 1 do
      begin
         if (cdNF_Item.Fields[i].FieldName <> 'CFOP')and
            (cdNF_Item.Fields[i].FieldName <> 'CFOP_inform') and
            (cdNF_Item.Fields[j].FieldName = cdNF_Item.Fields[i].FieldName + '_inform') then
            cdNF_Item.Fields[j].Value := cdNF_Item.Fields[i].Value;
      end;

      if DM.qempresaindativ.Value = 0 then//SN
         cdNF_ItemICMS_CST_inform.Value := 17 //"--"
      else
         cdNF_ItemICMS_CSOSN_inform.Value := 0;//"--"

   end;

   //coloca os valores do ponto de vista do informante, seguindo as regras, se possivel

   //verifica se existe na tabela de conversão cfop_cst_csosn
   s := BuscaTroca(C_SQL87, C_SOH, DM_NF_Entr.cdNF_ItemICMS_CST.AsString);
   s := BuscaTroca(s, C_ENQ, DM_NF_Entr.cdNF_ItemCFOP.AsString);
   s := BuscaTroca(s, C_ETX, DM_NF_Entr.cdNF_ItemPIS_CST.AsString);
   s := BuscaTroca(s, C_EOT, DM_NF_Entr.cdNF_ItemIPI_CST.AsString);
   s := BuscaTroca(s, C_STX, DM_NF_Entr.cdNF_ItemCOFINS_CST.AsString);
   s := BuscaTroca(s, C_HT, DM_NF_Entr.cdNF_ItemICMS_CSOSN.AsString);

   DM.Qcfop_cst_csosn.Open(s);

   if (not DM.Qcfop_cst_csosn.IsEmpty) and (DM.Qcfop_cst_csosncfop_infor.AsInteger = 0) then
   begin
      ShowMessage('A regra de entrada encontrada possui incoerência nas informações (CFOP Informante). Verifique as regras de Entrada.');
      frmConverteEmitInform := TfrmConverteEmitInform.Create(self);
      frmConverteEmitInform.ShowModal;

      if manual then
      begin
         cdNF_Item.Cancel;
         frmdadosItemNF.Close;
      end
      else
         Limpar_CDatasets;
      Abort;
   end;

   if (DM.Qcfop_cst_csosn.IsEmpty) then
   begin
      ShowMessage('Regra de entrada não encontrada. Verifique as regras de Entrada.');
      frmConverteEmitInform := TfrmConverteEmitInform.Create(self);
      frmConverteEmitInform.ShowModal;

      if manual then
      begin
         cdNF_Item.Cancel;
         frmdadosItemNF.Close;
      end
      else
         Limpar_CDatasets;
      Abort;
   end;

   if cdNF_Item.Tag = 0 then //se o usuario nao estiver editando (tag=1)
   begin
      if not DM.Qcfop_cst_csosn.IsEmpty then
      begin
         DM_NF_Entr.cdNF_ItemCFOP_inform.AsInteger       := DM.Qcfop_cst_csosncfop_infor.Value;
         DM_NF_Entr.cdNF_ItemIPI_CST_inform.AsInteger    := DM.Qcfop_cst_csosncst_ipi_ent_infor.Value;
         DM_NF_Entr.cdNF_ItemPIS_CST_inform.AsInteger    := DM.Qcfop_cst_csosncst_pis_ent_infor.Value;
         DM_NF_Entr.cdNF_ItemCOFINS_CST_inform.AsInteger := DM.Qcfop_cst_csosncst_cofins_ent_infor.Value;
         DM_NF_Entr.cdNF_ItemICMS_CST_inform.AsInteger   := DM.Qcfop_cst_csosncst_infor.Value;
         DM_NF_Entr.cdNF_ItemICMS_CSOSN_inform.AsInteger := DM.Qcfop_cst_csosncsosn_infor.Value;

         if DM_INI.ini.StoredValue['debug'] then
            log('nf_entr','DADOS CONVERTIDOS (CFOP, IPI, PIS, COFINS)',
                 DM.Qcfop_cst_csosncfop_infor.AsString + '|' +
                 DM.Qcfop_cst_csosncst_ipi_ent_infor.AsString  + '|' +
                 DM.Qcfop_cst_csosncst_pis_ent_infor.AsString + '|' +
                 DM.Qcfop_cst_csosncst_cofins_ent_infor.AsString);
      end
      else  //procura no vw_estoque
      begin
         if cdNF_Itemid_prod.Value > 0 then
         begin
            DM.Q1.Open('select * from vw_estoque where id=' + QuotedStr(cdNF_Itemid_prod.AsString));//pesquisa o estoque
            cdNF_ItemICMS_orig_inform.Value  := DM.Q1.FieldByName('origem').Value;

            if DM.QEmpresaindativ.Value > 1 then
            begin
               cdNF_ItemICMS_CST_inform.Value   := DM.Q1.FieldByName('acbr_cst').Value;
               cdNF_ItemICMS_CSOSN_inform.Value := Integer(csosnVazio);
            end
            else
            begin
               cdNF_ItemICMS_CSOSN_inform.Value := DM.Q1.FieldByName('acbr_cst').Value;
               cdNF_ItemICMS_CST_inform.Value   := integer(cstVazio);
            end;

            cdNF_ItemIPI_CST_inform.Value    := DM.Q1.FieldByName('cst_ipi_ent').Value;
            cdNF_ItemPIS_CST_inform.Value    := DM.Q1.FieldByName('cst_pis_ent').Value;
            cdNF_ItemCOFINS_CST_inform.Value := DM.Q1.FieldByName('cst_cofins_ent').Value;

            if DM_INI.ini.StoredValue['debug'] then
               log('nf_entr','INFORMADO DADOS DO PRODUTO (ORIG, CST, IPI, PIS, COFINS)',
                    cdNF_ItemICMS_orig_inform.AsString + '|' +
                    cdNF_ItemICMS_CST_inform.AsString  + '|' +
                    cdNF_ItemIPI_CST_inform.AsString + '|' +
                    cdNF_ItemPIS_CST_inform.AsString + '|' +
                    cdNF_ItemCOFINS_CST_inform.AsString);
         end;
      end;
   end;

   //uma vez ajusTFDos os CST's, ajusta os valores BC e aliq, conforme os cst's ipi/pis/cofins

   cdNF_Item.Tag := 0;
   if cdNF_Itemid_prod.Value > 0 then
   begin
      DM.Q2.Open(C_SQL89 + QuotedStr(cdNF_ItemIPI_CST_inform.AsString));//pesquisa o cst ipi
      DM.Q1.Open('select * from vw_estoque where id=' + QuotedStr(cdNF_Itemid_prod.AsString));//pesquisa o estoque

      if DM.Q2.FieldByName('destaca_valor').AsString = 'S' then
      begin
         cdNF_ItemIPI_vBC_inform.Value  := cdNF_ItemIPI_vBC.Value;
         cdNF_ItemIPI_pIPI_inform.Value := cdNF_ItemIPI_pIPI.Value;
         cdNF_ItemIPI_vIPI_inform.Value := cdNF_ItemIPI_vIPI.Value;
      end
      else
      begin
         cdNF_ItemIPI_vBC_inform.Value  := 0;
         cdNF_ItemIPI_pIPI_inform.Value := 0;
         cdNF_ItemIPI_vIPI_inform.Value := 0;
      end;

      //pis
      DM.Q2.Open(C_SQL90 + QuotedStr(cdNF_ItemPIS_CST_inform.AsString));//pesquisa o cst pis
      if DM.Q2.FieldByName('destaca_valor').AsString = 'S' then
      begin
         cdNF_ItemPIS_vBC_inform.Value  := cdNF_ItemPIS_vBC.Value;
         cdNF_ItemPIS_pPIS_inform.Value := DM.Q1.FieldByName('pis_pc').AsCurrency;
         cdNF_ItemPIS_vPIS_inform.Value := Arredonda((cdNF_ItemPIS_vBC_inform.Value * cdNF_ItemPIS_pPIS_inform.Value)/100,2);
      end
      else
      begin
         cdNF_ItemPIS_vBC_inform.Value  := 0;
         cdNF_ItemPIS_pPIS_inform.Value := 0;
         cdNF_ItemPIS_vPIS_inform.Value := 0;
      end;

      //cofins
      DM.Q2.Open(C_SQL91 + QuotedStr(cdNF_ItemCOFINS_CST_inform.AsString));//pesquisa o cst cofins
      if DM.Q2.FieldByName('destaca_valor').AsString = 'S' then
      begin
         cdNF_ItemCOFINS_vBC_inform.Value     := cdNF_ItemCOFINS_vBC.Value;
         cdNF_ItemCOFINS_pCOFINS_inform.Value := DM.Q1.FieldByName('cofins_pc').AsCurrency;
         cdNF_ItemCOFINS_vCOFINS_inform.Value := Arredonda((cdNF_ItemCOFINS_vBC_inform.Value * cdNF_ItemCOFINS_pCOFINS_inform.Value)/100,2);
      end
      else
      begin
         cdNF_ItemCOFINS_vBC_inform.Value     := 0;
         cdNF_ItemCOFINS_pCOFINS_inform.Value := 0;
         cdNF_ItemCOFINS_vCOFINS_inform.Value := 0;
      end;
   end;

  { if (cdNF_ItemICMS_CST_inform.Value=8)or(cdNF_ItemICMS_CSOSN_inform.Value > 0) then //cst 60 e SN nao destaca imposto
   begin
      cdNF_ItemICMS_vBCST.Value   := 0;
      cdNF_ItemICMS_pICMSST.Value := 0;
      cdNF_ItemICMS_vICMSST.Value := 0;
   end; }

   //grava log com os dados do item
   if DM_INI.ini.StoredValue['debug'] then
      for i := 0 to cdNF_Item.FieldCount - 1 do
          log('nf_entr',cdNF_Item.Fields[i].FieldName , cdNF_Item.Fields[i].ASSTRING);

   log('nf_entr','FIM', '--------------------------------------------------');
   cdNF_Item.EnableControls;
end;

procedure TDM_NF_Entr.Processar_Valores_Item;
begin
   cdNF_ItemQTD.Value := cdNF_ItemqCom.Value;//associa a qtd ao qcom. este valor pode ser ediTFDo, alterando o vr custo
end;

procedure TDM_NF_Entr.QNFAfterOpen(DataSet: TDataSet);
begin
   QNF_Item.Open;
   QNF_Item_Med.Open;
   QNF_Duplicata.Open;
   QNF_Reboque.Open;
   QNF_Referenciada.Open;
   QNF_Volume.Open;
   QNF_Lacre.Open;
   QNF_Chave.Open;
   QNF_Guia_Arrec.Open;
end;

procedure TDM_NF_Entr.QNFstatusGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  case Sender.AsInteger of
     99: Text := 'PROCESSANDO';
0,6,7,8: Text := 'AUTORIZADA';
      2: Text := 'CANCELADA';
      4: Text := 'DENEGADA';
    else
      Text := Sender.AsString;
  end;
end;

procedure TDM_NF_Entr.QNF_ChaveAfterInsert(DataSet: TDataSet);
begin
   QNF_Chavenf.Value := QNFid.Value;
end;

procedure TDM_NF_Entr.QNF_DuplicataAfterInsert(DataSet: TDataSet);
begin
   QNF_Duplicatanf.Value := QNFid.Value;
end;

procedure TDM_NF_Entr.QNF_DuplicataAfterPost(DataSet: TDataSet);
begin
   DM.Insert_APagar('D',
                     0,
                     QNFEmit_xNome.AsString,
                     QNFEmit_CNPJCPF.AsString,
                     QNF_Duplicataid.Value,
                     QNFIde_nNF.AsString + '/' + QNF_DuplicatanDup.AsString,
                     QNF_DuplicaTFDVenc.Value,
                     QNF_DuplicatavDup.Value,
                     'Duplicata referente a NF nº ' + QNFIde_nNF.AsString +
                     ', emitida em ' + QNFIde_dEmi.AsString);
end;

procedure TDM_NF_Entr.QNF_Guia_ArrecAfterInsert(DataSet: TDataSet);
begin
   QNF_Guia_Arrecnf.Value := QNFid.Value;
end;

procedure TDM_NF_Entr.QNF_ItemAfterInsert(DataSet: TDataSet);
begin
   QNF_Itemnf.Value := QNFid.Value;
end;

procedure TDM_NF_Entr.QNF_ItemCOFINS_CSTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if not (sender.AsInteger in [0..32]) then
   begin
      Text := '--';
      Exit;
   end;

   Text := C_ARR_9[sender.AsInteger];
end;

procedure TDM_NF_Entr.QNF_ItemICMS_CSOSNGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := CsosnToStr(sender.AsInteger); //converte acbr para csosn
end;

procedure TDM_NF_Entr.QNF_ItemICMS_CSTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if not (sender.AsInteger in [0..19]) then
   begin
      Text := '--';
      Exit;
   end;

   Text := C_ARR_5[sender.AsInteger];
end;

procedure TDM_NF_Entr.QNF_ItemICMS_modBCSTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if not (sender.AsInteger in [0..5]) then
   begin
      Text := '--';
      Exit;
   end;

   Text := C_ARR_1[sender.AsInteger];
end;

procedure TDM_NF_Entr.QNF_ItemPIS_CSTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if not (sender.AsInteger in [0..32]) then
   begin
      Text := '--';
      Exit;
   end;

   Text := C_ARR_9[sender.AsInteger];
end;

procedure TDM_NF_Entr.QNF_Item_MedAfterInsert(DataSet: TDataSet);
begin
   QNF_Item_Meditem.Value := QNF_Itemid.Value;
end;

procedure TDM_NF_Entr.QNF_LacreAfterInsert(DataSet: TDataSet);
begin
   QNF_LacreVol.Value := QNF_Volumeid.Value;
end;

procedure TDM_NF_Entr.QNF_ReboqueAfterInsert(DataSet: TDataSet);
begin
   QNF_Reboquenf.Value := QNFid.Value;
end;

procedure TDM_NF_Entr.QNF_ReferenciadaAfterInsert(DataSet: TDataSet);
begin
   QNF_Referenciadanf.Value := QNFid.Value;
end;

procedure TDM_NF_Entr.QNF_VolumeAfterInsert(DataSet: TDataSet);
begin
   QNF_Volumenf.Value := QNFid.Value;
end;

procedure TDM_NF_Entr.Restaurar_Dados_locais;//faz o bkp dos xml
var
   lista: TStrings;
   i: integer;
   s: string;
begin
   DeletaArqTipo(Aqui(C_PATH_ARQ_LOCAL_NFE,'*.xml'));
   DeletaArqTipo(Aqui(C_PATH_ARQ_LOCAL_NFE,'*.dat'));

   Lista := GetFileList(Aqui(C_PATH_ARQ_LOCAL_NFE + '\bkp',''));

   for i := 0 to Lista.Count -1 do
   begin
      s := Lista.Strings[i];
      CopyFile(PWideChar(Aqui(C_PATH_ARQ_LOCAL_NFE + '\bkp', s)),
               PWideChar(Aqui(C_PATH_ARQ_LOCAL_NFE, s)),
               False
      );
   end;
end;

procedure TDM_NF_Entr.Salvar_Datasets;
begin
   if cdNF.State in [dsInsert, dsEdit] then cdNF.Post;
   if cdNF_Item.State in [dsInsert, dsEdit] then cdNF_Item.Post;
   if cdNF_Item_Med.State in [dsInsert, dsEdit] then cdNF_Item_Med.Post;
   if cdNF_Duplicata.State in [dsInsert, dsEdit] then cdNF_Duplicata.Post;
   if cdNF_Reboque.State in [dsInsert, dsEdit] then cdNF_Reboque.Post;
   if cdNF_Referenciada.State in [dsInsert, dsEdit] then cdNF_Referenciada.Post;
   if cdNF_Volume.State in [dsInsert, dsEdit] then cdNF_Volume.Post;
   if cdNF_Lacre.State in [dsInsert, dsEdit] then cdNF_Lacre.Post;
   if cdNF_Chave.State in [dsInsert, dsEdit] then cdNF_Chave.Post;
   if cdNF_Guia_Arrec.State in [dsInsert, dsEdit] then cdNF_Guia_Arrec.Post;
end;

function TDM_NF_Entr.ValidarCFOP(cfop: string): boolean;
begin
   DM.Q6.Open('select id from cfop where cfop = '+ Texto_Mysql(cfop));
   Result := not DM.Q6.Fields[0].IsNull;
   DM.Q6.Close;
end;

function TDM_NF_Entr.ValidarRegra: boolean;
var
   s: string;
begin
   s := EmptyStr;

   if not ValidarCFOP(cdNF_ItemCFOP.AsString) then
      s := s + 'CFOP "' + cdNF_ItemCFOP.AsString + '" INVÁLIDO.' + C_CRLF;

   if (cdNF_ItemICMS_CST.AsInteger + cdNF_ItemICMS_CSOSN.AsInteger) =0 then
      s := s + 'Informe o CST ou o CSOSN.' + C_CRLF;

   if s <> EmptyStr then
   begin
      Result := False;
      ShowMessage(s);
      Exit;
   end;

   Result := (cdNF_ItemPIS_CST.AsInteger > 0) and (cdNF_ItemCOFINS_CST.AsInteger > 0) and (cdNF_ItemIPI_CST.AsInteger > 0);

   if not Result then
   begin
      if cdNF_ItemICMS_CST.AsInteger > 0 then
         s := ' cst = ' + Texto_Mysql(cdNF_ItemICMS_CST.AsInteger)
      else
         s := ' csosn = ' + Texto_Mysql(cdNF_ItemICMS_CSOSN.AsString);

      frmConverteEmitInform := TfrmConverteEmitInform.Create(self);
      DM.Qcfop_cst_csosn.Open('select * from cfop_cst_csosn where ' + s + 'order by cfop, csosn, cst');
      frmConverteEmitInform.ShowModal;

      if DM.Qcfop_cst_csosn.IsEmpty then
      begin
         Result := False;
         ShowMessage('A regra não foi gravada. O item não será concluído.');
         Exit;
      end;

      //Completa os dados do EMITENTE
      cdNF_ItemPIS_CST.AsInteger    := DM.Qcfop_cst_csosncst_pis_sai.Value;
      cdNF_ItemCOFINS_CST.AsInteger := DM.Qcfop_cst_csosncst_cofins_sai.Value;
      cdNF_ItemIPI_CST.AsInteger    := DM.Qcfop_cst_csosncst_ipi_sai.Value;
      //grava os dados convertidos
      DM_NF_Entr.cdNF_ItemCFOP_inform.AsInteger       := DM.Qcfop_cst_csosncfop_infor.Value;
      DM_NF_Entr.cdNF_ItemIPI_CST_inform.AsInteger    := DM.Qcfop_cst_csosncst_ipi_ent_infor.Value;
      DM_NF_Entr.cdNF_ItemPIS_CST_inform.AsInteger    := DM.Qcfop_cst_csosncst_pis_ent_infor.Value;
      DM_NF_Entr.cdNF_ItemCOFINS_CST_inform.AsInteger := DM.Qcfop_cst_csosncst_cofins_ent_infor.Value;
      DM_NF_Entr.cdNF_ItemICMS_CST_inform.AsInteger   := DM.Qcfop_cst_csosncst_infor.Value;
      DM_NF_Entr.cdNF_ItemICMS_CSOSN_inform.AsInteger := DM.Qcfop_cst_csosncsosn_infor.Value;

      if DM_INI.ini.StoredValue['debug'] then
         log('nf_entr','DADOS CONVERTIDOS COM BASE EM ENTRADA DE USUÁRIO (CFOP, IPI, PIS, COFINS)',
              DM.Qcfop_cst_csosncfop_infor.AsString + '|' +
              DM.Qcfop_cst_csosncst_ipi_ent_infor.AsString  + '|' +
              DM.Qcfop_cst_csosncst_pis_ent_infor.AsString + '|' +
              DM.Qcfop_cst_csosncst_cofins_ent_infor.AsString);
      Result := True;
   end;
end;

end.
