unit uDM_PDV;

interface

uses
  System.SysUtils, System.Classes, vcl.forms, DateUtils, Dialogs, Variants,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Stan.ExprFuncs, Data.DB,
  FireDAC.Phys.SQLite, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass,
  frxDBSet, frxDesgn, uFuncoes, FireDAC.Phys.SQLiteDef, FireDAC.VCLUI.Wait;

type
  Estado_PDV = (epNaoIni, epLivre, epVenda, epPag, epTEF, epDiaFechado, epLogin, epDesativado, epTurno, epTEFAdm);
  TDM_PDV = class(TDataModule)
    DSVendaItem: TDataSource;
    DSVenda: TDataSource;
    DSProd: TDataSource;
    DSCli: TDataSource;
    TPAF_R01: TFDQuery;
    DB: TFDConnection;
    Q1: TFDQuery;
    TOperador: TFDQuery;
    TEmpresa: TFDQuery;
    TEmpresarazao_social: TStringField;
    TEmpresanome_fantasia: TStringField;
    TEmpresacnpj: TStringField;
    TEmpresaie: TStringField;
    TEmpresaim: TStringField;
    TEmpresalogradouro: TStringField;
    TEmpresanumero: TStringField;
    TEmpresacomplem: TStringField;
    TEmpresabairro: TStringField;
    TEmpresacidade: TStringField;
    TEmpresaindativ: TIntegerField;
    TEmpresaperfil: TStringField;
    TEmpresacodmun: TStringField;
    TEmpresacep: TStringField;
    TEmpresauf: TStringField;
    TEmpresatel1: TStringField;
    TEmpresatel2: TStringField;
    TEmpresafax: TStringField;
    TEmpresaemail: TStringField;
    TEmpresanome_resp: TStringField;
    TEmpresacpf_resp: TStringField;
    TEmpresarg_resp: TStringField;
    TEmpresasubst_trib: TStringField;
    TEmpresacontr_ipi: TStringField;
    TEmpresacont_nome: TStringField;
    TEmpresacont_cpf: TStringField;
    TEmpresacont_crc: TStringField;
    TEmpresacont_cep: TStringField;
    TEmpresacont_cnpj: TStringField;
    TEmpresacont_logradouro: TStringField;
    TEmpresacont_nmro: TStringField;
    TEmpresacont_complem: TStringField;
    TEmpresacont_bairro: TStringField;
    TEmpresacont_tel: TStringField;
    TEmpresacont_fax: TStringField;
    TEmpresacont_email: TStringField;
    TEmpresacont_cidade: TStringField;
    TEmpresacont_codmun: TStringField;
    TEmpresacont_uf: TStringField;
    TEmpresadt_atualiz: TSQLTimeStampField;
    TEmpresamd5: TStringField;
    TEmpresacnae_prim: TStringField;
    TEmpresacnae_sec: TStringField;
    TEmpresafarmac_cpf: TStringField;
    TEmpresafarmac_crf: TStringField;
    TEmpresafarmac_crf_uf: TStringField;
    TEmpresafarmac_nome: TStringField;
    TProd: TFDQuery;
    TProdcod_gtin: TStringField;
    TProdcod_interno: TIntegerField;
    TProdcod_aux: TStringField;
    TProdnome: TStringField;
    TProdvrcusto_real: TFloatField;
    TProdvrvenda_vista: TFloatField;
    TProdvrvenda_prz: TFloatField;
    TProdaliq_icms: TIntegerField;
    TProdmg_lucro: TFloatField;
    TProdqt_caixa: TFloatField;
    TProdsigla_unid: TStringField;
    TProdcod_cst: TIntegerField;
    TProdaliq_ecf: TStringField;
    TProdbalanca: TStringField;
    TProdmedic_qtcaixa: TIntegerField;
    TProdmedic_fracao: TIntegerField;
    TProdmedicam_vrms: TFloatField;
    TProdncm: TStringField;
    TProdcst_pis_sai: TIntegerField;
    TProdcst_cofins_sai: TIntegerField;
    TProdproducao_propria: TStringField;
    TFPag: TFDQuery;
    TFPagid: TFDAutoIncField;
    TFPagdescr: TStringField;
    TFPagaprazo: TStringField;
    TFPagtipo: TStringField;
    TFPagnumecf: TIntegerField;
    TFPagindice_tef: TStringField;
    TFPaguso: TStringField;
    TFPagatualizado: TStringField;
    TFPagdt_atualiz: TSQLTimeStampField;
    TCli: TFDQuery;
    TClicnpj: TStringField;
    TClinome: TStringField;
    TClirazaosocial: TStringField;
    TClitel1: TStringField;
    TClitel2: TStringField;
    TClifax: TStringField;
    TClicelular: TStringField;
    TClitipo_tel1: TStringField;
    TClitipo_tel2: TStringField;
    TClisituacao: TStringField;
    TClilogradouro: TStringField;
    TClinmro: TStringField;
    TClicomplem: TStringField;
    TClibairro: TStringField;
    TClicidade: TStringField;
    TCliuf: TStringField;
    TClicep: TStringField;
    TCliendcobranca: TStringField;
    TClilogradourocobranca: TStringField;
    TClinmrocobranca: TStringField;
    TClicomplemcobranca: TStringField;
    TClicidadecobranca: TStringField;
    TClibairrocobranca: TStringField;
    TClicepcobranca: TStringField;
    TCliufcobranca: TStringField;
    TCliie: TStringField;
    TCliim: TStringField;
    TClirg: TStringField;
    TClisuspenso: TStringField;
    TClidevedor: TStringField;
    TCliclientedesde: TDateField;
    TClipai: TStringField;
    TClimae: TStringField;
    TClireferencia: TMemoField;
    TClidatanasc: TDateField;
    TClilimite: TFloatField;
    TClihaver: TFloatField;
    TCliobs: TMemoField;
    TClisaldo: TFloatField;
    TClidianasc: TIntegerField;
    TClimesnasc: TIntegerField;
    TClianonasc: TIntegerField;
    TCliinfoutil: TStringField;
    TCliatualizado: TStringField;
    TCliemail: TStringField;
    TClicidade_cod: TIntegerField;
    TClidt_atualiz: TSQLTimeStampField;
    TCliindicacao: TIntegerField;
    TClicodmun: TStringField;
    TClicodmuncobranca: TStringField;
    TCliusar_endsec_entrega: TStringField;
    TCliusr_endsec_cobranca: TStringField;
    TIBPTax: TFDQuery;
    TVenda: TFDQuery;
    TVenda_Item: TFDQuery;
    TVenda_Itemid: TFDAutoIncField;
    TVenda_Itemvenda: TIntegerField;
    TVenda_ItemnItem: TIntegerField;
    TVenda_ItemcProd: TIntegerField;
    TVenda_ItemcEAN: TStringField;
    TVenda_ItemxProd: TStringField;
    TVenda_ItemNCM: TStringField;
    TVenda_ItemEXTIPI: TStringField;
    TVenda_ItemCFOP: TStringField;
    TVenda_ItemuCom: TStringField;
    TVenda_ItemqCom: TFloatField;
    TVenda_ItemvUnCom: TFloatField;
    TVenda_ItemvProd: TFloatField;
    TVenda_ItemcEANTrib: TStringField;
    TVenda_ItemuTrib: TStringField;
    TVenda_ItemqTrib: TFloatField;
    TVenda_ItemvUnTrib: TFloatField;
    TVenda_ItemvOutro: TFloatField;
    TVenda_ItemvFrete: TFloatField;
    TVenda_ItemvSeg: TFloatField;
    TVenda_ItemvDesc: TFloatField;
    TVenda_IteminfAdProd: TMemoField;
    TVenda_ItemICMS_CST: TIntegerField;
    TVenda_ItemICMS_orig: TIntegerField;
    TVenda_ItemICMS_modBC: TIntegerField;
    TVenda_ItemICMS_vBC: TFloatField;
    TVenda_ItemICMS_pICMS: TFloatField;
    TVenda_ItemICMS_vICMS: TFloatField;
    TVenda_ItemICMS_CSOSN: TIntegerField;
    TVenda_ItemICMS_pCredSN: TFloatField;
    TVenda_ItemICMS_vCredICMSSN: TFloatField;
    TVenda_ItemICMS_modBCST: TIntegerField;
    TVenda_ItemICMS_pMVAST: TFloatField;
    TVenda_ItemICMS_vTabelaST: TFloatField;
    TVenda_ItemICMS_pRedBCST: TFloatField;
    TVenda_ItemICMS_vBCST: TFloatField;
    TVenda_ItemICMS_pICMSST: TFloatField;
    TVenda_ItemICMS_vICMSST: TFloatField;
    TVenda_ItemICMS_pRedBC: TFloatField;
    TVenda_ItemIPI_CST: TIntegerField;
    TVenda_ItemIPI_clEnq: TStringField;
    TVenda_ItemIPI_CNPJProd: TStringField;
    TVenda_ItemIPI_cSelo: TStringField;
    TVenda_ItemIPI_qSelo: TIntegerField;
    TVenda_ItemIPI_cEnq: TStringField;
    TVenda_ItemIPI_vBC: TFloatField;
    TVenda_ItemIPI_qUnid: TFloatField;
    TVenda_ItemIPI_vUnid: TFloatField;
    TVenda_ItemIPI_pIPI: TFloatField;
    TVenda_ItemIPI_vIPI: TFloatField;
    TVenda_ItemII_vBc: TFloatField;
    TVenda_ItemII_vDespAdu: TFloatField;
    TVenda_ItemII_vII: TFloatField;
    TVenda_ItemII_vIOF: TFloatField;
    TVenda_ItemPIS_CST: TIntegerField;
    TVenda_ItemPIS_vBC: TFloatField;
    TVenda_ItemPIS_pPIS: TFloatField;
    TVenda_ItemPIS_vPIS: TFloatField;
    TVenda_ItemPIS_qBCProd: TFloatField;
    TVenda_ItemPIS_vAliqProd: TFloatField;
    TVenda_ItemPISST_vBc: TFloatField;
    TVenda_ItemPISST_pPis: TFloatField;
    TVenda_ItemPISST_qBCProd: TFloatField;
    TVenda_ItemPISST_vAliqProd: TFloatField;
    TVenda_ItemPISST_vPIS: TFloatField;
    TVenda_ItemCOFINS_CST: TIntegerField;
    TVenda_ItemCOFINS_vBC: TFloatField;
    TVenda_ItemCOFINS_pCOFINS: TFloatField;
    TVenda_ItemCOFINS_vCOFINS: TFloatField;
    TVenda_ItemCOFINS_qBCProd: TFloatField;
    TVenda_ItemCOFINS_vAliqProd: TFloatField;
    TVenda_ItemCOFINSST_vBC: TFloatField;
    TVenda_ItemCOFINSST_pCOFINS: TFloatField;
    TVenda_ItemCOFINSST_qBCProd: TFloatField;
    TVenda_ItemCOFINSST_vAliqProd: TFloatField;
    TVenda_ItemCOFINSST_vCOFINS: TFloatField;
    TVenda_ItemISSQN_vBC: TFloatField;
    TVenda_ItemISSQN_vAliq: TFloatField;
    TVenda_ItemISSQN_vISSQN: TFloatField;
    TVenda_ItemISSQN_cMunFG: TIntegerField;
    TVenda_ItemISSQN_cListServ: TIntegerField;
    TVenda_ItemISSQN_SitTrib: TIntegerField;
    TVenda_ItemICMS_vBCSTRet: TFloatField;
    TVenda_ItemICMS_vICMSSTRet: TFloatField;
    TVenda_ItemvTotTrib: TFloatField;
    TVenda_Itemecf_aliq: TStringField;
    TVendaid: TFDAutoIncField;
    TVendatipo: TStringField;
    TVendacliente: TIntegerField;
    TVendaoperador: TIntegerField;
    TVendavendedor: TIntegerField;
    TVendacancelado: TStringField;
    TVendadata: TDateField;
    TVendahora: TStringField;
    TVendacoa: TIntegerField;
    TVendacoo: TIntegerField;
    TVendaccf: TIntegerField;
    TVendanf: TIntegerField;
    TVendacv: TMemoField;
    TVendavalor: TFloatField;
    TVendavr_desconto: TFloatField;
    TVendavr_desc_posvenda: TFloatField;
    TVendavr_pago: TFloatField;
    TVendavr_comissao: TFloatField;
    TVendavr_abat: TFloatField;
    TVendavr_din: TFloatField;
    TVendavr_chq: TFloatField;
    TVendavr_card: TFloatField;
    TVendavr_outros: TFloatField;
    TVendavr_tkt: TFloatField;
    TVendatroco: TFloatField;
    TVendaobs: TMemoField;
    TVendaterminal: TStringField;
    TPAF_R01nmro: TIntegerField;
    TPAF_R01serie: TStringField;
    TPAF_R01mf_adic: TStringField;
    TPAF_R01tipo: TStringField;
    TPAF_R01marca: TStringField;
    TPAF_R01modelo: TStringField;
    TPAF_R01versao_sb: TStringField;
    TPAF_R01data_sb: TDateField;
    TPAF_R01hora_sb: TStringField;
    TECF: TFDQuery;
    TRG: TFDQuery;
    TRGnome: TStringField;
    TRGcodigo: TStringField;
    TRGnumecf: TIntegerField;
    TCNF: TFDQuery;
    TCNFnome: TStringField;
    TCNFcodigo: TStringField;
    TCNFnumecf: TIntegerField;
    TECFestado: TIntegerField;
    TECFestado_ant: TIntegerField;
    TECFgt: TFloatField;
    TECFcro: TIntegerField;
    TECFcrz: TIntegerField;
    TECFcoo_ini: TIntegerField;
    TECFdt_movi: TDateField;
    TECFvr_din: TFloatField;
    TECFvr_tkt: TFloatField;
    TECFvr_chq: TFloatField;
    TECFvr_crt: TFloatField;
    TECFvr_fat: TFloatField;
    TECFvr_sang: TFloatField;
    TECFvr_supri: TFloatField;
    TECFvr_nfiscal: TFloatField;
    TPAF_A2: TFDQuery;
    TPAF_A2id: TFDAutoIncField;
    TPAF_A2ecf: TIntegerField;
    TPAF_A2cod_fpag: TIntegerField;
    TPAF_A2valor: TFloatField;
    TPAF_A2data: TDateField;
    TPAF_A2tipo: TIntegerField;
    TPAF_A2valor_canc: TFloatField;
    SQLIteLink: TFDPhysSQLiteDriverLink;
    TProdorigem: TIntegerField;
    TEmpresaid: TIntegerField;
    TProdid: TIntegerField;
    TCliid: TIntegerField;
    TProdmd5: TStringField;
    TClimd5: TStringField;
    TRGid: TIntegerField;
    TCNFid: TIntegerField;
    TOperadorid: TIntegerField;
    TOperadornome: TStringField;
    TOperadorcomissao: TFloatField;
    TOperadorsenha: TStringField;
    TOperadornomered: TStringField;
    TOperadorendereco: TStringField;
    TOperadorcidade: TStringField;
    TOperadortel: TStringField;
    TOperadordt_cad: TDateField;
    TOperadoracesso: TIntegerField;
    TOperadoratualizado: TStringField;
    TOperadordt_atualiz: TSQLTimeStampField;
    TOperadormd5: TStringField;
    TOperadoruf: TStringField;
    TPAF_R02: TFDQuery;
    TPAF_R02num_ecf: TIntegerField;
    TPAF_R02num_usu: TIntegerField;
    TPAF_R02serie_ecf: TStringField;
    TPAF_R02mf_adic: TStringField;
    TPAF_R02crz: TIntegerField;
    TPAF_R02coo: TIntegerField;
    TPAF_R02cro: TIntegerField;
    TPAF_R02dt_movi: TDateField;
    TPAF_R02dt_em: TDateField;
    TPAF_R02hora_em: TTimeField;
    TPAF_R02venda_bruta: TFloatField;
    TPAF_R02issqn: TStringField;
    TPAF_R03: TFDQuery;
    DSPAF_R03: TDataSource;
    DSPAF_R02: TDataSource;
    TPAF_R03id: TFDAutoIncField;
    TPAF_R03r02: TIntegerField;
    TPAF_R03cod_tot_parcial: TStringField;
    TPAF_R03valor_tot_parcial: TFloatField;
    TPAF_R04: TFDQuery;
    DSPAF_R04: TDataSource;
    TPAF_R04id: TFDAutoIncField;
    TPAF_R04r02: TIntegerField;
    TPAF_R04ccf: TIntegerField;
    TPAF_R04coo: TIntegerField;
    TPAF_R04dt_em: TDateField;
    TPAF_R04subtotal: TFloatField;
    TPAF_R04desconto: TFloatField;
    TPAF_R04tipo_desc: TStringField;
    TPAF_R04acrescimo: TFloatField;
    TPAF_R04tipo_acresc: TStringField;
    TPAF_R04vr_liq: TFloatField;
    TPAF_R04canc: TStringField;
    TPAF_R04canc_acresc_st: TStringField;
    TPAF_R04ordem_desc_acresc: TStringField;
    TPAF_R04nome_cliente: TStringField;
    TPAF_R04cnpj_cliente: TStringField;
    TPAF_R05: TFDQuery;
    DSPAF_R05: TDataSource;
    TPAF_R06: TFDQuery;
    TPAF_R06id: TFDAutoIncField;
    TPAF_R06r02: TIntegerField;
    TPAF_R06coo: TIntegerField;
    TPAF_R06gnf: TIntegerField;
    TPAF_R06grg: TIntegerField;
    TPAF_R06cdc: TIntegerField;
    TPAF_R06denominacao: TStringField;
    TPAF_R06dt_emissao: TDateField;
    TPAF_R06hora_em: TTimeField;
    DSPAF_R06: TDataSource;
    TPAF_R07: TFDQuery;
    DSPAF_R07: TDataSource;
    TPAF_R07id: TFDAutoIncField;
    TPAF_R07r04: TIntegerField;
    TPAF_R07r06: TIntegerField;
    TPAF_R07meio_pag: TStringField;
    TPAF_R07valor: TFloatField;
    TPAF_R07extorno: TStringField;
    TPAF_R07valor_extorno: TFloatField;
    TPAF_R05id: TFDAutoIncField;
    TPAF_R05r04: TIntegerField;
    TPAF_R05item: TIntegerField;
    TPAF_R05codigo: TStringField;
    TPAF_R05nome: TStringField;
    TPAF_R05qtd: TFloatField;
    TPAF_R05unid: TStringField;
    TPAF_R05vrunit: TFloatField;
    TPAF_R05desconto: TFloatField;
    TPAF_R05total: TFloatField;
    TPAF_R05cod_totaliz: TStringField;
    TPAF_R05canc: TStringField;
    TPAF_R05qtd_canc: TFloatField;
    TPAF_R05vr_canc: TFloatField;
    TPAF_R05vr_canc_acresc: TFloatField;
    TPAF_R05iat: TStringField;
    TPAF_R05ippt: TStringField;
    TPAF_R05casas_dec_qtd: TStringField;
    TPAF_R05casas_dec_vrunit: TStringField;
    TPAF_E2: TFDQuery;
    TPAF_E3: TFDQuery;
    TPAF_E3id: TFDAutoIncField;
    TPAF_E3nmro_ecf: TIntegerField;
    TPAF_E3serie: TStringField;
    TPAF_E3mf_adic: TStringField;
    TPAF_E3tipo_ecf: TStringField;
    TPAF_E3marca_ecf: TStringField;
    TPAF_E3mod_ecd: TStringField;
    TPAF_E3data_estoque: TDateField;
    TPAF_E3hora_estoque: TTimeField;
    TPAF_E2id: TFDAutoIncField;
    TPAF_E2e3: TIntegerField;
    TPAF_E2codigo: TStringField;
    TPAF_E2nome: TStringField;
    TPAF_E2unid: TStringField;
    TPAF_E2mensuracao: TStringField;
    TPAF_E2qtd: TFloatField;
    TProdcalculo_por_arredondamento: TStringField;
    TAliq: TFDQuery;
    TAliqid: TFDAutoIncField;
    TAliqcod_ecf: TStringField;
    TAliqcod_paf: TStringField;
    TAliqindice_ecf: TStringField;
    TAliqnumecf: TIntegerField;
    TECFtipo_doc: TStringField;
    TECFcf_totalizado: TBooleanField;
    TECFcnf_totalizado: TBooleanField;
    DSPAF_R01: TDataSource;
    TECFdt_carga: TDateField;
    TPAF_A2r02: TIntegerField;
    TPAF_A2fpag: TStringField;
    TVendapv: TStringField;
    TProdfracionavel: TStringField;
    TVendaserie_d: TIntegerField;
    TECFvenda_bruta: TFloatField;
    TPAF_R02id: TIntegerField;
    TPAF_R01id: TIntegerField;
    TPaf_cancelar: TFDQuery;
    TPaf_cancelarid: TFDAutoIncField;
    TPaf_cancelarcoo: TIntegerField;
    TPaf_cancelarccf: TIntegerField;
    TPAF_R02coo_inicial: TIntegerField;
    TPAF_R02valor_gt: TFloatField;
    TPAF_R05cProd: TIntegerField;
    TOper_CRT: TFDQuery;
    TVendaoper_crt: TStringField;
    TOper_CRTid: TFDAutoIncField;
    TOper_CRTcnpj: TStringField;
    TOper_CRTnome: TStringField;
    TOper_CRTrazaosocial: TStringField;
    TOper_CRTtel1: TStringField;
    TOper_CRTlogradouro: TStringField;
    TOper_CRTnmro: TStringField;
    TOper_CRTcomplem: TStringField;
    TOper_CRTbairro: TStringField;
    TOper_CRTuf: TStringField;
    TOper_CRTcodmun: TStringField;
    TVendatipo_crt: TStringField;
    TPFP: TFDQuery;
    TPFPvenda: TIntegerField;
    TPFPdt_receita: TDateField;
    TPFPcrm: TStringField;
    TPFPuf_crm: TStringField;
    TPFPcpf_farma: TStringField;
    TPFPcod_autoriz: TStringField;
    TPFPhora_envioreq: TTimeField;
    TPFPhora_recreq: TTimeField;
    TPFPhora_evioconfreq: TTimeField;
    TPFPhorarecconf: TTimeField;
    TPFPhora_eviodadosconf: TTimeField;
    TPFPhora_recdadosconf: TTimeField;
    TPFPqtpresc: TFloatField;
    TPFPcpf_cli: TStringField;
    TPFPnome: TStringField;
    TPFPender: TStringField;
    TPFPdt_extorno: TDateTimeField;
    TPFPdt_atualiz: TDateTimeField;
    TPFPcv: TMemoField;
    TPFPid: TFDAutoIncField;
    TVenda_Itemtrn: TStringField;
    TTrn: TFDQuery;
    TTrnid: TFDAutoIncField;
    TTrnvenda: TIntegerField;
    TTrnnsu: TStringField;
    TTrnnsu_adm: TStringField;
    TTrnoperadora: TStringField;
    TTrnvr_liq: TFloatField;
    TTrnvr_rec: TFloatField;
    TTrnlote: TStringField;
    TTrnautoriz: TStringField;
    TTrn_Item: TFDQuery;
    DSTrn: TDataSource;
    TTrn_Itemid: TFDAutoIncField;
    TTrn_Itemtrn: TIntegerField;
    TTrn_ItemcProd: TIntegerField;
    TTrn_Itemvrbrt: TFloatField;
    TTrn_Itemvrliq: TFloatField;
    TTrn_Itemvrdin: TFloatField;
    TTrn_Itemvrbrt_local: TFloatField;
    TTrn_Itemvrliq_local: TFloatField;
    TTrn_Itempc_desc: TFloatField;
    TTrncrt: TStringField;
    TTrn_Itemparcial: TBooleanField;
    TTrn_Itemean: TStringField;
    TTrn_Itemqtd: TFloatField;
    TTrn_Itemcomplem: TStringField;
    TPAF_E2cProd: TIntegerField;
    TProdmedicam_pmc: TFloatField;
    TVendedor: TFDQuery;
    TVendedorid: TFDAutoIncField;
    TVendedornome: TStringField;
    TVendedorcomissao: TFloatField;
    TVendedorsenha: TStringField;
    TVendedornomered: TStringField;
    TVenda_Itemvcomissao: TFloatField;
    TProdvrcotacao: TFloatField;
    TECFecf: TIntegerField;
    TTrnnsu_adm_canc: TStringField;
    TCanc: TFDQuery;
    TCancid: TFDAutoIncField;
    TCanccanc: TStringField;
    TFRVenda: TfrxDBDataset;
    TFRItem: TfrxDBDataset;
    TFRCli: TfrxDBDataset;
    Rep1: TfrxReport;
    TFROper: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    FREmpresa: TfrxDBDataset;
    TProdprecopfp: TCurrencyField;
    TIBPTax_Itens: TFDQuery;
    TIBPTax_Itensid: TIntegerField;
    TIBPTax_Itensncm: TStringField;
    TIBPTax_Itensex: TStringField;
    TIBPTax_Itenstabela: TIntegerField;
    TIBPTax_Itensnome: TStringField;
    TIBPTax_Itensnacional: TFloatField;
    TIBPTax_Itensimportado: TFloatField;
    TIBPTax_Itensestadual: TFloatField;
    TIBPTax_Itensmunicipal: TFloatField;
    TIBPTax_Itensmd5: TStringField;
    TIBPTaxid: TIntegerField;
    TIBPTaxversao: TStringField;
    TIBPTaxitens: TIntegerField;
    TIBPTaxdt_vigencia_ini: TDateField;
    TIBPTaxdt_vigencia_fim: TDateField;
    TIBPTaxchave: TStringField;
    TIBPTaxfonte: TStringField;
    TIBPTaxmd5: TStringField;
    procedure TProdAfterOpen(DataSet: TDataSet);
    procedure TVenda_ItemAfterInsert(DataSet: TDataSet);
    procedure TVendaAfterInsert(DataSet: TDataSet);
    procedure TVendaBeforeDelete(DataSet: TDataSet);
    procedure DBError(ASender: TObject; const AInitiator: IFDStanObject; var AException: Exception);
    procedure DataModuleCreate(Sender: TObject);
    procedure TPAF_R01AfterInsert(DataSet: TDataSet);
    procedure TPAF_R02AfterInsert(DataSet: TDataSet);
    procedure Q1Error(ASender: TObject; const AInitiator: IFDStanObject; var AException: Exception);
    procedure TVendaAfterOpen(DataSet: TDataSet);
    procedure TTrnAfterOpen(DataSet: TDataSet);
    procedure TProdproducao_propriaGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TProdcalculo_por_arredondamentoGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure TProdcod_cstGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TTrnAfterPost(DataSet: TDataSet);
    procedure DBAfterConnect(Sender: TObject);
    procedure TProdCalcFields(DataSet: TDataSet);
    procedure TFPagBeforePost(DataSet: TDataSet);
  private

    { Private declarations }
  public
  {$IFDEF PDV}
   pfpExtornado, modo_pv: boolean;
   IBPTaxF, IBPTaxE, IBPTaxM, IBPTaxI: Currency;
{CARGAS}
   //operadora crt
    procedure Carga_Oper_crt;
    function Load_Oper_crt: boolean;
   //operador
    procedure Carga_Operador;
    function Load_Operador: boolean;
    //empresa
    procedure Carga_Empresa;
    function Load_Empresa: boolean;
    //Fpag
    procedure Carga_FPag;
    function Load_FPag: boolean;
    //Cliente
    procedure Carga_Cli(Limpar_BD_Local: boolean);
    function Load_Cli: boolean;
    //Estoque
    procedure Carga_Prod(Limpar_BD_Local: boolean);
    function Load_Prod: boolean;
    //vendedor
    procedure Carga_Vendedor;
    function Load_Vendedor: boolean;

    function LoadAliq: boolean;

  {$ENDIF}
    //IBPTax
    procedure Carga_IBPTax;
    function Load_IBPTax: boolean;
  {$IFDEF PDV}
    procedure Carga_Venda;//estrutura de TVenda
    function Load_Venda: boolean;

    function Load_CNF: boolean;
    function Load_RG: boolean;

    procedure Carga_Server;//envia os dados ao servidor e limpa as tabelas locais apos a conferencia;
    procedure Carga_Estoque_Cli;
    procedure Apagar_Tabelas;
    procedure Exportar_Dados(r02: integer = 0);
    procedure Exportar_E3;
{CARGAS fim}
{PAF}
   procedure Gravar_coo_ini(coo: string);
   procedure GerarR01;
   procedure GerarR02;
   procedure GerarR03;
   procedure GerarR04(coo, ccf: string; cancelado: boolean = False);
   procedure GerarR05;
   procedure GerarR06(denominacao, coo, gnf, grg, cdc:string);
   procedure GerarR07(r4,r6: integer; fpag: string; Valor: currency);
   procedure Gerar_E02;
   procedure Cancelar_R04;

   procedure Gerar_R02_Vazio;
{PAF Fim}
 {$ENDIF}

    procedure Conectar;
    function IBPTax(ncm: string; origem: integer): currency;
    function Total_IBPTax: currency;
    function Total_venda: currency;
    procedure CFOP_Itens;

 {$IFDEF PDV}
    function Procurar_Operador(login, senha: string): boolean;
    procedure Gravar_Estado_PDV(estado: Estado_PDV);
    function Ler_Estado_PDV: Estado_PDV;
    function Cancelar_Venda(atual: boolean = True): boolean;
    procedure Cancelar_Item;
    function TestaPodeAbrirCupom: boolean;
    procedure Setar_Cliente;//posiciona o cursosr no cliente, conforme o campo na venda
    procedure Limpar_Cliente; //remove cliente eventual
    function  Indice_RG(codigo: string): integer;
    function  Indice_CNF(codigo: string): integer;
    procedure Imprime_Comprovante(tipo: integer);
    procedure Paf_A2_insert(cod, tipo: integer; nome_fpg: string; valor: currency);
    procedure Paf_A2_Delete(tipo: integer);
    procedure Paf_A2_zerar_canc;
    procedure Paf_A2_AjustaR02;
    procedure Load_PAF;
    procedure Calcular_Rateio_Desconto;
    function Comissao: currency; //usado no pdv
    function Permissao(forca:boolean = False): boolean;
 {$ENDIF}
  end;

var
  DM_PDV: TDM_PDV;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDM, uAutocomConsts
{$IFDEF PDV}
, uDMecf, updv
{$ENDIF}
, uProgress, udm_ini, uViews;

{$R *.dfm}

{ TDM_PDV }

{$IFDEF PDV}
function TDM_PDV.Comissao: currency;
var
   valor: currency;
begin
   Result := 0;

   if not DM_INI.ini.StoredValue['venda_comissionada'] then //sem comissao
   begin
      exit;
   end;

   DM_PDV.TVendedor.OPEN('select * from vendedor where id=' + Texto_Mysql(DM_PDV.TVendavendedor.Value));

   if TVendedorcomissao.Value = 0 then //vendedor sem comissao
   begin
      exit;
   end;

   valor := DM_PDV.TVenda_ItemvProd.AsCurrency - DM_PDV.TVenda_ItemvDesc.AsCurrency;//pega o valor total do item - desconto

   if TVendedorcomissao.Value = 100 then//comissão sobre o produto
   begin
      if TProdvrcotacao.Value = 0 then//produto sem comissao
      begin
         Result := 0;
         exit;
      end
      else
      begin
         if DM_INI.ini.StoredValue['comissao_sobre_lucro'] then //se comissao sobre o lucro
         begin
             Valor := valor - (TProdvrcusto_real.Value*DM_PDV.TVenda_ItemqCom.Value);//obtem o lucro
             Result := Arredonda((Valor * TProdvrcotacao.Value)/100, 3);
         end
         else//comissao direta
         begin
            Result := Arredonda((Valor * TProdvrcotacao.Value)/100, 3);
         end;
      end;
   end
   else
   begin //comissao fixa no vendedor
      if DM_INI.ini.StoredValue['comissao_sobre_lucro'] then //comissao sobre o lucro
      begin
          Valor := valor - (TProdvrcusto_real.Value*DM_PDV.TVenda_ItemqCom.Value);//obtem o lucro
          Result := Arredonda((Valor * TVendedorcomissao.Value)/100, 3);
      end
      else //comissao direta
      begin
         Result := Arredonda((Valor * TVendedorcomissao.Value)/100, 3);
      end;
   end;

   if (Result > 0)and(Result < 0.01) then
      Result := 0.01;

   if Result < 0 then
      Result := 0;
end;
{$ENDIF}

procedure TDM_PDV.Conectar;
begin
   DB.Connected                    := False;
   {$IFDEF PDV}
   DB.Params.Values['Database']    := Aqui(C_PATH_ARQ_LOCAL_PDV, 'autocom.pdv');
   {$ELSE IFDEF PV}
   DB.Params.Values['Database']    := Aqui(C_PATH_ARQ_LOCAL_PDV, 'autocom.pv');
   {$ENDIF}
//   DB.Params.Values['LockingMode'] := 'Normal';
//   DB.Params.Values['Synchronous'] := 'Normal';
   DB.Connected                    := True;
end;

procedure TDM_PDV.DataModuleCreate(Sender: TObject);
begin
   if db.Connected then
   begin
     // ShowMessage('ERRO 25');
      raise Exception.Create('ERRO 25');
   end
end;

function TDM_PDV.IBPTax(ncm: string; origem: integer): currency;
var
   i: integer;
   s: string;
begin
   Result := 0;

   if not TIBPTax_Itens.active then
      TIBPTax_Itens.OPen;

   for i := 8 downto 4 do
   begin
       s := copy(ncm,1,i);

       if TIBPTax_Itens.Locate('codigo',s,[]) then
       begin
         if origem in [0,2,3,4,5] then
            Result := TIBPTax_Itensnacional.AsCurrency
         else
            Result := TIBPTax_Itensimportado.AsCurrency;

         break;
       end
       else
       showmessage('O NCM ' + ncm + ' não foi encontrado na tabela IBPT. Providencie a correção para que o imposto seja corretamente calculado.');
   end;
end;

 {$IFDEF PDV}
procedure TDM_PDV.Apagar_Tabelas;
begin
   DB.ExecSQL('delete from venda where coa=0'); //vai manter o registro em andamento (coa=-1) e as PV(coa>0)
   DB.ExecSQL('delete from paf_r01;');           //os itens vão via trigger
   DB.ExecSQL('delete from paf_r02;');
   DB.ExecSQL('delete from paf_r03;');
   DB.ExecSQL('delete from paf_E3;'); //e2 vai via trigger
   DB.ExecSQL('delete from paf_A2;');
end;

procedure TDM_PDV.Calcular_Rateio_Desconto; //rateia o desconto no total e ajusta as vBC dos itens
var                                         //passiveis de icms (aliq > 0)
   menor_trib: integer;
   desc_calc, vr, n, pe: currency;
begin
   if TVendavr_desconto.Value > 0 then
   begin
      menor_trib := 0;
      desc_calc  := 0;
      n          := TVendavalor.AsCurrency;

      TVenda_Item.DisableControls;
      TVenda_Item.First;
            //define o percentual efetivo
      pe := (TVendavr_desconto.AsCurrency / TVendavalor.AsCurrency)*100;
      pe := Arredonda(pe,2);

      while not TVenda_Item.Eof do
      begin
         if (n > TVenda_ItemICMS_vBC.AsCurrency)and
            (TVenda_ItemICMS_vBC.AsCurrency > 0)and
            (DM_PDV.TVenda_Itemecf_aliq.AsString <> 'CANC') then //localiza e marca a menor tributação
         begin
            menor_trib := TVenda_Itemid.Value;
            n          :=  TVenda_ItemICMS_vBC.AsCurrency;
         end;

         if (DM_PDV.TVenda_Itemecf_aliq.AsString <> 'CANC') then
         begin
            if (TVenda_ItemICMS_vBC.Value > 0) then//reduz a bc proporcional ao desconto
            begin
               vr := Arredonda((TVenda_ItemICMS_vBC.Value * pe)/100,2);
               TVenda_Item.Edit;
               TVenda_ItemICMS_vBC.AsCurrency   := TVenda_ItemICMS_vBC.Value - vr;
               TVenda_ItemICMS_vICMS.AsCurrency := Arredonda((TVenda_ItemICMS_vBC.AsCurrency *
                                                              TVenda_ItemICMS_pICMS.AsCurrency)/100, 2);
               TVenda_Item.Post;
            end;

            if TVenda_ItemICMS_vBC.Value >0 then
               desc_calc := desc_calc + TVenda_ItemICMS_vBC.Value
            else
              desc_calc := desc_calc + TVenda_ItemvProd.Value;
         end;

         TVenda_Item.Next;
      end;
      //no fim verifica a diferença no calculo

      vr := desc_calc - (TVendavalor.Value - TVendavr_desconto.Value);

      if (vr > 0)and(TVenda_Item.Locate('id', menor_trib, [])) then
      begin
         TVenda_Item.Edit;
         TVenda_ItemICMS_vBC.AsCurrency   := TVenda_ItemICMS_vBC.Value - vr;
         TVenda_ItemICMS_vICMS.AsCurrency := Arredonda((TVenda_ItemICMS_vBC.AsCurrency *
                                                        TVenda_ItemICMS_pICMS.AsCurrency)/100, 2);
        //recalcula o IBPTAX
        TVenda_ItemvTotTrib.AsCurrency    :=  Arredonda((TVenda_ItemICMS_vBC.AsCurrency *
                                                         IBPTax(DM_PDV.TVenda_ItemNCM.AsString,
                                                         TVenda_ItemICMS_orig.AsInteger))/100, 3);
         TVenda_Item.Post;
      end;

      TVenda_Item.EnableControls;
   end;
end;

procedure TDM_PDV.Cancelar_Item;
begin
   if TTrn_Item.Locate('cProd', TVenda_ItemcProd.Value, []) then
      TTrn_Item.Delete;

   TVenda_Item.Edit;
   TVenda_Itemecf_aliq.AsString := 'CANC';
   TVenda_Item.Post;
end;

procedure TDM_PDV.Cancelar_R04;//cancela r04 e extorna r07 é disparado pelo ecf.depoiscancela ou pelo Exportar_Dados
var
   i_coo, i_ccf: integer;
begin
   TPaf_cancelar.Open; //obtem os dados de TPaf_cancelar
   TPaf_cancelar.First;
   TPAF_R02.Open;
   TPAF_R02.Last;

   while not TPaf_cancelar.Eof do
   begin
      if DM_PDV.TECFcf_totalizado.Value = True then
         i_coo := TPaf_cancelarcoo.Value -1
      else
         i_coo := TPaf_cancelarcoo.Value;

      i_ccf := TPaf_cancelarccf.Value;

      //atualiza a bd local se existir
      Q1.Open('select id from paf_r04 where coo=' + Texto_Mysql(i_coo) +
               ' and ccf=' + Texto_Mysql(i_ccf)
      );

      if Q1.Fields[0].AsString <> C_ST_VAZIO then
      begin
         DB.ExecSQL('update paf_r05 set r04=' + Texto_Mysql(Q1.Fields[0].AsInteger) + ' where r04=-1');
         DB.ExecSQL('update paf_r04 set canc="S" where id=' + Texto_Mysql(Q1.Fields[0].AsInteger));
         DB.ExecSQL('update paf_r07 set extorno="S",valor_extorno=valor where r04=' + Texto_Mysql(Q1.Fields[0].AsInteger));
      end
      else
      if DM.Conectar then
      begin
         //atualiza a bd remota
         DM.Q1.Open('select id from paf_r04 where r02=' +
                     Texto_Mysql(TPAF_R02id.Value) +
                    ' and coo=' + Texto_Mysql(i_coo) +
                    ' and ccf=' + Texto_Mysql(i_ccf)
         );

         if DM.Q1.Fields[0].AsString <> C_ST_VAZIO then
         begin
            DM.DB.ExecSQL('update paf_r04 set hash=' + Texto_Mysql(DM.id_Term)+ ',canc="S" where id=' + Texto_Mysql(DM.Q1.Fields[0].AsInteger));
            DM.DB.ExecSQL('update paf_r07 set hash=' + Texto_Mysql(DM.id_Term)+ ',extorno="S",valor_extorno=valor where r04=' + Texto_Mysql(DM.Q1.Fields[0].AsInteger));
            DM.Atu_Hash;
         end;
      end;
      TPaf_cancelar.Next;
   end;
  //apaga a tabela local...
   while not TPaf_cancelar.IsEmpty do
   TPaf_cancelar.Delete;
end;

function TDM_PDV.Cancelar_Venda(atual: boolean): boolean;
begin
   TVenda.Last;
   Limpar_Cliente;

   if TVendacancelado.AsString = 'S' then
   begin
      Result := False;
      Exit;
   end;
                  //-1 indica venda nao concluida
   if ((atual)and(TVendacoa.value=-1))or(not atual) then
   begin
      TVenda.Edit;
      TVendacoa.AsInteger := 0;
      TVendacancelado.AsString := 'S';
      TVenda.Post;

      TVenda_Item.DisableControls;
      TVenda_Item.First;

      while not TVenda_Item.Eof do
      begin
         Cancelar_Item;
         TVenda_Item.Next;
      end;

      TVenda_Item.EnableControls;
   end;
   Result := True;
end;

procedure TDM_PDV.Carga_Estoque_Cli;
var
   b, b1, b3: boolean;
   i: integer;
   s: string;
begin
  if Number(DM_ECF.st_ECF_Num)='' then
     exit;

  b3 := False;

   DM.Q1.Open('select group_concat(id_reg) from pdv_alterados where num_ecf="' + DM_ECF.st_ECF_Num +
              '" and tabela="estoque";'
   );

   s := DM.Q1.Fields[0].AsString;

   if s <> '' then
   begin
     b3 := true;
     frmPDV.Popup('Recebendo atualização do servidor...');
     DM_ECF.TEF.BloquearMouseTeclado(True);
     AbreForm(Tfrmprogress,frmprogress, False);

     DM.Q1.Open('select id,cod_gtin,cod_interno,cod_aux,nome,vrcusto_real,vrvenda_vista,vrvenda_prz,medicam_pmc,aliq_icms,' +
                'mg_lucro,qt_caixa,sigla_unid,cod_cst,aliq_ecf,balanca,medic_qtcaixa,medic_fracao,medicam_vrms,ncm,' +
                'cst_pis_sai,cst_cofins_sai,origem, producao_propria, fracionavel, md5, suspenso from vw_estoque where ' +
                'destinacao="00 Mercadoria para Revenda" and id in("' + s + '")'
     );

     DM.Q1.FetchAll;
     TProd.Close;
     TProd.Open;
     TProd.IndexFieldNames := 'id';
     frmprogress.bar1.Properties.Max := DM.Q1.RecordCount;

     i  := 0;
     b1 := False;

     try
        while not DM.Q1.Eof do
        begin
           inc(i);
           frmprogress.bar1.Position := i;
           Application.ProcessMessages;
           b := TProd.Locate('id', DM.Q1.FieldByName('id').AsInteger, []);

           if b then //se localizou
           begin
              if DM.Q1.FieldByName('suspenso').AsString = 'S' then //se suspenso deleta
              begin
                 TProd.Delete;
                 DM.Q1.Next;
                 Continue;//retoma o loop
              end;

              b1 := TProdmd5.AsString = DM.Q1.FieldByName('md5').AsString;
           end;

           if (not b) then
              TProd.Append
           else
           if not b1 then
              TProd.Edit;

           if TProd.State in [dsEdit, dsInsert] then
           begin
              TProd.CopyRecord(DM.Q1);
              TProd.Post;
           end;

           DM.Q1.Next;
        end;
     finally
        frmprogress.btnSair.Click;

        if Assigned(frmprogress) then
           FreeAndNil(frmprogress);

        Log('Carga_Robo','Prod', IntToStr(DM.Q1.RecordCount) + ' Registros');
     end;
   end;

   DM.Q1.Open('select group_concat(id_reg) from pdv_alterados where num_ecf="' + DM_ECF.st_ECF_Num +
              '" and tabela="cliente";'
   );

   s := DM.Q1.Fields[0].AsString;

   if s <> '' then
   begin
     b3 := true;
     frmPDV.Popup('Recebendo atualização do servidor...');
     DM_ECF.TEF.BloquearMouseTeclado(True);
     AbreForm(Tfrmprogress,frmprogress, False);

     DM.Q1.Open('select * from cliente where id in(' + s + ')');

     DM.Q1.FetchAll;
     TCli.Close;
     TCli.Open;
     TCli.IndexFieldNames := 'id';
     frmprogress.bar1.Properties.Max := DM.Q1.RecordCount;
     i := 0;
    // b := False;
     b1 := False;

     try
        while not DM.Q1.Eof do
        begin
           inc(i);
           frmprogress.bar1.Position := i;
           Application.ProcessMessages;

           b := TCli.Locate('id', DM.Q1.FieldByName('id').AsInteger, []);

           if b then
           begin
              if DM.Q1.FieldByName('suspenso').AsString = 'S' then //se suspenso deleta
              begin
                 TCli.Delete;
                 DM.Q1.Next;
                 Continue;//retoma o loop
              end;
              b1 := TClimd5.AsString = DM.Q1.FieldByName('md5').AsString;
           end;

           if (not b) then
              TCli.Append
           else
              if not b1 then
                 TCli.Edit;

           if TCli.State in [dsEdit, dsInsert] then
           begin
              TCli.CopyRecord(DM.Q1);
              TCli.Post;
           end;

           DM.Q1.Next;
        end;
     finally
        frmprogress.btnSair.Click;

        if Assigned(frmprogress) then
           FreeAndNil(frmprogress);

        Log('Carga_Robo','CLI', IntToStr(DM.Q1.RecordCount) + ' Registros');
     end;
   end;

   if b3 then
      DM.ExecSQL('delete from pdv_alterados where num_ecf="' + DM_ECF.st_ECF_Num +'";');
end;

procedure TDM_PDV.Carga_Cli(Limpar_BD_Local: boolean);
var
   b, b1: boolean;
   i: integer;
begin
   AbreForm(Tfrmprogress,frmprogress, False);
   frmPDV.Popup('');
   frmPDV.Popup('Carga Cliente...');

   if not Limpar_BD_Local then
   begin
     DM.Q2.Open('select group_concat(id) from cliente where suspenso="S"');

     //remove os suspensos da base local
     if DM.Q2.Fields[0].AsString <> C_ST_VAZIO then
        DB.ExecSQL('delete from cliente where id in(' + DM.Q2.Fields[0].AsString + ')');
   end
   else
   begin
      DB.ExecSQL('delete from cliente;');
   end;

   DM.Q1.Open('select * from cliente where suspenso="N"');
   DM.Q1.FetchAll;
   TCli.Close;
   TCli.Open;

   frmprogress.bar1.Properties.Max := DM.Q1.RecordCount;
   i := 0;
  // b := False;
   b1 := False;

   try
      while not DM.Q1.Eof do
      begin
         inc(i);
         frmprogress.bar1.Position := i;
         Application.ProcessMessages;

         b := TCli.Locate('id', DM.Q1.FieldByName('id').AsInteger, []);

         if b then
            b1 := TClimd5.AsString = DM.Q1.FieldByName('md5').AsString;

         if (not b) then
            TCli.Append
         else
            if not b1 then
               TCli.Edit;

         if TCli.State in [dsEdit, dsInsert] then
         begin
            TCli.CopyRecord(DM.Q1);
            TCli.Post;
         end;

         DM.Q1.Next;
      end;

   finally
      TCli.Close;
      frmprogress.btnSair.Click;

      if Assigned(frmprogress) then
         FreeAndNil(frmprogress);

      Q1.Open('select count(*) from cliente');
      Log('Carga_INI','CLI', Q1.Fields[0].AsString + ' Registros');
   end;
end;

procedure TDM_PDV.Carga_Empresa;
begin
   DM.Q1.Open('select * from empresa limit 1');
   DB.ExecSQL('delete from empresa;');//apaga a tabela local
   TEmpresa.Open;

   try
      while not DM.Q1.Eof do
      begin
         TEmpresa.Append;
         TEmpresa.CopyRecord(DM.Q1);
         TEmpresa.Post;
         DM.Q1.Next;
      end;

   finally
      Log('Carga_INI','Empresa', IntToStr(TEmpresa.RecordCount) + ' Registros');
   end;
end;

procedure TDM_PDV.Carga_FPag;
begin
 //  DM.Q1.Open('select * from fpag');
//   TFPag.Open;
//   frmPDV.Popup('Carga FPag...');
  // TFPag.CopyDataSet(DM.Q1,[coRestart, coEdit, coAppend]);
 //  Log('Carga_INI','FPag', IntToStr(TFPag.RecordCount) + ' Registros');
end;

{$ENDIF}

procedure TDM_PDV.CFOP_Itens;
var
   s, s1, s3, s4: string;
begin
   if (TCliufcobranca.AsString = TEmpresauf.AsString)or(TCliuf.AsString = C_ST_VAZIO) then
   begin
      s  := '5102';
      s1 := '5405';
      s3 := '5101';
      s4 := '5401';
   end
   else
   begin
      s  := '6102';
      s1 := '6405';
      s3 := '6101';
      s4 := '6401';
   end;

   try
      //cfop de item adquir. de 3º
      DB.ExecSQL('update venda_item set CFOP= case when ICMS_cst in (10,60,70,500) then' +
                  Texto_Mysql(s1) + ' else ' +
                  Texto_Mysql(s) +
                  ' end where cfop="N" and venda=' + Texto_Mysql(TVendaid.Value)
      );
      //cfop produção propria
      DB.ExecSQL('update venda_item set CFOP= case when ICMS_cst in (10,60,70,500) then' +
                  Texto_Mysql(s4) + ' else ' +
                  Texto_Mysql(s3) +
                  ' end where cfop="S" and venda=' + Texto_Mysql(TVendaid.Value)
      );
   finally
      ;
   end;
end;

procedure TDM_PDV.Carga_IBPTax;
var
   b, b1: boolean;
   i: integer;
begin
   AbreForm(Tfrmprogress,frmprogress, False);
 {$IFDEF PDV}
   frmPDV.Popup('Carga IBPTax...');
 {$ENDIF}
   DM.Q1.Open('select * from ibptax');
   DM.Q1.FetchAll;
   TIBPTax.Open;

   frmprogress.bar1.Properties.Max := DM.Q1.RecordCount;
   i := 0;
 //  b := False;
   b1 := False;

   try
      while not DM.Q1.Eof do
      begin
         inc(i);
         frmprogress.bar1.Position := i;
         Application.ProcessMessages;

         b := TIBPTax.Locate('id', DM.Q1.FieldByName('id').AsInteger, []);

         if b then
            b1 := TIBPTaxmd5.AsString = DM.Q1.FieldByName('md5').AsString;

         if (not b) then
            TIBPTax.Append
         else
            if not b1 then
               TIBPTax.Edit;

         if TIBPTax.State in [dsEdit, dsInsert] then
         begin
            TIBPTax.CopyRecord(DM.Q1);
            TIBPTax.Post;
         end;
         DM.Q1.Next;
      end;
   finally
      Log('Carga_INI','IBPTax', IntToStr(TIBPTax.RecordCount) + ' Registros');
   end;

 {$IFDEF PDV}
   frmPDV.Popup('Carga IBPTax_Itens...');
 {$ENDIF}
   DM.Q1.Open('select * from ibptax_itens');
   DM.Q1.FetchAll;
   TIBPTax_Itens.Open;

   frmprogress.bar1.Properties.Max := DM.Q1.RecordCount;
   i := 0;
 //  b := False;
   b1 := False;

   try
      while not DM.Q1.Eof do
      begin
         inc(i);
         frmprogress.bar1.Position := i;
         Application.ProcessMessages;

         b := TIBPTax_Itens.Locate('id', DM.Q1.FieldByName('id').AsInteger, []);

         if b then
            b1 := TIBPTax_Itensmd5.AsString = DM.Q1.FieldByName('md5').AsString;

         if (not b) then
            TIBPTax_Itens.Append
         else
            if not b1 then
               TIBPTax_Itens.Edit;

         if TIBPTax_Itens.State in [dsEdit, dsInsert] then
         begin
            TIBPTax_Itens.CopyRecord(DM.Q1);
            TIBPTax_Itens.Post;
         end;

         DM.Q1.Next;
      end;
   finally
      frmprogress.btnSair.Click;

      if Assigned(frmprogress) then
         FreeAndNil(frmprogress);

      Log('Carga_INI','IBPTax_Itens', IntToStr(TIBPTax_Itens.RecordCount) + ' Registros');
   end;
end;

{$IFDEF PDV}

procedure TDM_PDV.Carga_Operador;
var
   i: integer;
begin
   frmPDV.Popup('Carga Operador...');
   AbreForm(Tfrmprogress,frmprogress, False);
   DM.Q1.Open('select * from operador');
   DB.ExecSQL('delete from operador');//apaga a tabela local

   frmprogress.bar1.Properties.Max := DM.Q1.RecordCount;
   i := 0;
   TOperador.Open;

   try
      while not DM.Q1.Eof do
      begin
         inc(i);
         frmprogress.bar1.Position := i;
         Application.ProcessMessages;
         TOperador.Append;
         TOperador.CopyRecord(DM.Q1);
         TOperador.Post;
         DM.Q1.Next;
      end;
   finally
      frmprogress.btnSair.Click;

      if Assigned(frmprogress) then
         FreeAndNil(frmprogress);

      Log('Carga_INI','Operador', IntToStr(TOperador.RecordCount) + ' Registros');
   end;
end;

procedure TDM_PDV.Carga_Vendedor;
var
   i: integer;
begin
   frmPDV.Popup('Carga Vendedor...');
   AbreForm(Tfrmprogress,frmprogress, False);
   DM.Q1.Open('select id,nome,comissao,senha,nomered from vendedor');
   DB.ExecSQL('delete from vendedor;');//apaga a tabela local

   frmprogress.bar1.Properties.Max := DM.Q1.RecordCount;
   i := 0;
   TVendedor.Open;

   try
      while not DM.Q1.Eof do
      begin
         inc(i);
         frmprogress.bar1.Position := i;
         Application.ProcessMessages;
         TVendedor.Append;
         TVendedor.CopyRecord(DM.Q1);
         TVendedor.Post;
         DM.Q1.Next;
      end;
   finally
      frmprogress.btnSair.Click;

      if Assigned(frmprogress) then
         FreeAndNil(frmprogress);

      Log('Carga_INI','Vendedor', IntToStr(TVendedor.RecordCount) + ' Registros');
   end;
end;


procedure TDM_PDV.Carga_Oper_crt;
var
   i: integer;
begin
   frmPDV.Popup('Carga Operadora CRT...');
   AbreForm(Tfrmprogress,frmprogress, False);
   DM.Q1.Open('select * from oper_crt');
   DB.ExecSQL('delete from oper_crt');//apaga a tabela local

   frmprogress.bar1.Properties.Max := DM.Q1.RecordCount;
   i := 0;
   TOper_CRT.Open;

   try
      while not DM.Q1.Eof do
      begin
         inc(i);
         frmprogress.bar1.Position := i;
         Application.ProcessMessages;
         TOper_CRT.Append;
         TOper_CRT.CopyRecord(DM.Q1);
         TOper_CRT.Post;
         DM.Q1.Next;
      end;
   finally
      frmprogress.btnSair.Click;

      if Assigned(frmprogress) then
         FreeAndNil(frmprogress);

      Log('Carga_INI','Operadora CRT', IntToStr(TOperador.RecordCount) + ' Registros');
   end;
end;

procedure TDM_PDV.Carga_Prod(Limpar_BD_Local: boolean);
var
   b, b1: boolean;
   i: integer;
   s: string;
begin

//repeat
   AbreForm(Tfrmprogress,frmprogress, False);
   frmPDV.Popup('');
   frmPDV.Popup('Carga Produto...');
   application.processmessages;

   if not Limpar_BD_Local then
   begin
      DM.Q2.Open('select group_concat(id) from estoque where suspenso="S"');
      //remove os suspensos da base local
      if DM.Q2.Fields[0].AsString <> C_ST_VAZIO then
      begin
        if Copy(DM.Q2.Fields[0].AsString, length(DM.Q2.Fields[0].AsString),1)=',' then
         s := Copy(DM.Q2.Fields[0].AsString,1,length(DM.Q2.Fields[0].AsString)-1);//remove a ultima virgula do group concat
         s := 'delete from estoque where id in(' + s + ')';                       //ela retorna algo como 1,2,3,
         Log('Carga_INI','Prod', s);
         DB.ExecSQL(s);
      end;
   end
   else
   begin
      DB.ExecSQL('delete from estoque');
   end;

   TProd.Close;
   TProd.Open;

   DM.Q1.Open(vwEstoque + WherevwEstoque1);

   DM.Q1.FetchAll;

   TProd.IndexFieldNames := 'id';

   frmprogress.bar1.Properties.Max := DM.Q1.RecordCount;

   i  := 0;
  // b1 := False;

   try
      while not DM.Q1.Eof do
      begin
         inc(i);
         frmprogress.bar1.Position := i;
         Application.ProcessMessages;
         b := TProd.Locate('id', DM.Q1.FieldByName('id').AsInteger, []);

         if b then
         begin
            b1 := TProdmd5.AsString = DM.Q1.FieldByName('md5').AsString;

            if not b1 then
               TProd.Edit;
         end
         else
            TProd.Append;

         if TProd.State in [dsEdit, dsInsert] then
         begin
            TProd.CopyRecord(DM.Q1);
            TProd.Post;
         end;

         DM.Q1.Next;
      end;
   finally
      frmprogress.btnSair.Click;

      if Assigned(frmprogress) then
         FreeAndNil(frmprogress);

      TProd.Close;

      Q1.Open('select count(*) from estoque');

  //    b := Q1.Fields[0].AsInteger >0;

      Log('Carga_INI','Prod', Q1.Fields[0].AsString + ' Registros');
   end;
//until b;

end;

procedure TDM_PDV.Carga_Server;
var
   i: integer;

  { procedure Baixar_Estoque(id: integer; qtd: currency);
   var
      b: boolean;
   begin
   //SÓ BAIXA SE NAO HOUVER CANCELAMENTO DO ITEM OU CUPOM

       TCanc.Open(); //tCanc busca os cupons cancelados
       b := TCanccanc.Value = 'S';

       if not b then  //busca as vendas canceladas
          b := TVenda_Itemecf_aliq.Value = 'CANC';

       if not b then
       begin
          DM.DB.ExecSQL('update estoque set hash=' + Texto_Mysql(DM.id_Term) + ', quant=quant-' +
                        Texto_Mysql(qtd) +
                        ' where id=' + Texto_Mysql(id)
          );
          //grava o rollback do estoque
          DM.DB.ExecSQL('insert into estoque_atu set estoque=' + Texto_Mysql(id)+
                        ',qtd=' + Texto_Mysql(qtd) +
                        ',terminal=' + Texto_Mysql(DM_ECF.st_ECF_Num)
          );
       end
       else
       Log('Carga_server', 'Baixar_Estoque', 'Venda ' + TVendaid.AsString + ' venda ou item cancelado e nao baixado.');
   end;  }

begin
   if not DM.Conectar then
   begin
      ShowMessage('Carga: Não foi possível conectar com o servidor.');
      exit;
   end;

   Log('Carga_server','Inicio', '........................');
   DM.Apaga_PAF; //remove os paf com hash=DM.Id_Term (processo nao terminado)
   
   AbreForm(Tfrmprogress,frmprogress, False);

   //passo 1 - venda e itens...
   Log('Carga_server','Venda', 'Abrindo tabelas locais');
   TVenda.Open('select * from venda where coa=0 and tipo="ECF"');//mantem a possivel venda em andamento
   TVenda.First;
   TVenda_Item.Open;
   TTrn.Open;
   TTrn_Item.Open;
   TPFP.Open;

   Log('Carga_server','Venda', 'Abrindo tabelas remota');
   DM.QVenda.Open;
   DM.QVenda_Item.Open;
   DM.Qtrn.Open;
   DM.QTrn_Item.Open;
   DM.QPFP.Open;

   frmprogress.bar1.Properties.Max := TVenda.RecordCount;

   Log('Carga_server','Venda', 'Inicio loop');

   while not TVenda.Eof do
   begin
      if TVendaTipo.AsString <> 'FOI' then
      begin
         frmprogress.bar1.Position := TVenda.RecNo;
         frmprogress.Caption := 'Progresso: Venda';
         Application.ProcessMessages;

         DM.QVenda.Insert;

         for i := 0 to Pred(TVenda.FieldCount) do
         begin
            if TVenda.Fields[i].FieldName <> 'id' then
               DM.QVenda.FieldByName(TVenda.Fields[i].FieldName).Value := TVenda.Fields[i].Value;
         end;

         DM.QVenda.Post;

         while not TVenda_Item.Eof do
         begin
            if TVenda_ItemNCM.AsString <> 'FOI' then
            begin
               DM.QVenda_Item.Insert;

               for i := 0 to Pred(TVenda_Item.FieldCount) do
               begin
                  if (TVenda_Item.Fields[i].FieldName <> 'id')and(TVenda_Item.Fields[i].FieldName <> 'venda') then
                     DM.QVenda_Item.FieldByName(TVenda_Item.Fields[i].FieldName).Value := TVenda_Item.Fields[i].Value;
               end;

               DM.QVenda_Itemvenda.Value := DM.QVendaid.Value;
               DM.QVenda_Item.Post;
            //   Baixar_Estoque(TVenda_ItemcProd.Value, TVenda_ItemqCom.Value); //baixa o estoque
               //marca como baixado...
               TVenda_Item.edit;
               TVenda_ItemNCM.Value := 'FOI';
               TVenda_Item.Post;
            end;
            TVenda_Item.Next;
         end;

         //atualiza o hash dos registros alterados
      //   DM.ExecSQL('call pr_hash("ESTOQUE",' + Texto_Mysql(_C) +',' + Texto_Mysql(DM.id_Term) +');');

         //gera o debito ao cliente
         if DM.QVendavr_outros.Value > 0 then
         begin
            Log('Carga_server','Debito', 'COO: ' +  DM.QVendacoo.AsString  + ' - id venda: ' + DM.QVendaid.AsString);
            DM.Insert_Debito(tdECF,
                             DM.QVendacliente.Value,
                             DM.QVendaid.Value,
                             'V' + Formatfloat('000000', DM.QVendacoo.Value) + '/01',
                             DM.QVendadata.Value,
                             DM.QVendadata.Value + DM_INI.ini.StoredValue['dias_fat'],//28 dias por default
                             DM.QVendavr_outros.Value,
                             'VENDA EFETUADA NO TERMINAL ' + DM.QVendaterminal.AsString + ' OPER.: ' + dm.QVendaoperador.AsString
            );
         end;

         Log('Carga_server','Caixa', 'Inicio');
         //insere o caixa
         if TVendacancelado.Value = 'N' then
         begin
            if TVendavr_din.Value > 0 then
               DM.Inserir_Caixa('VVS','CUPOM ' + LFill(TVendacoo.AsString,6,'0'), TVendavr_din.Value, DM.QVendaid.Value, TVendadata.Value, StrToTimeDef(TVendahora.AsString, 0));

            if TVendavr_tkt.Value > 0 then
               DM.Inserir_Caixa('VTK','CUPOM ' + LFill(TVendacoo.AsString,6,'0'), TVendavr_tkt.Value, DM.QVendaid.Value, TVendadata.Value, StrToTimeDef(TVendahora.AsString, 0));

            if TVendavr_chq.Value > 0 then
               DM.Inserir_Caixa('VCH','CUPOM ' + LFill(TVendacoo.AsString,6,'0'), TVendavr_chq.Value, DM.QVendaid.Value, TVendadata.Value, StrToTimeDef(TVendahora.AsString, 0));

            if TVendavr_card.Value > 0 then
               DM.Inserir_Caixa('VCT','CUPOM ' + LFill(TVendacoo.AsString,6,'0'), TVendavr_card.Value, DM.QVendaid.Value, TVendadata.Value, StrToTimeDef(TVendahora.AsString, 0));

            if TVendavr_outros.Value > 0 then
               DM.Inserir_Caixa('VPZ','CUPOM ' + LFill(TVendacoo.AsString,6,'0'), TVendavr_outros.Value, DM.QVendaid.Value, TVendadata.Value, StrToTimeDef(TVendahora.AsString, 0));

            if TVendatroco.Value > 0 then
               DM.Inserir_Caixa('TRC','CUPOM ' + LFill(TVendacoo.AsString,6,'0'), TVendatroco.Value, DM.QVendaid.Value, TVendadata.Value, StrToTimeDef(TVendahora.AsString, 0));
         end;

         Log('Carga_server','Caixa', 'Fim');
         Log('Carga_server','Trn', 'Inicio');

         while not TTrn.Eof do
         begin
             DM.Qtrn.Insert;

            for i := 0 to Pred(Ttrn.FieldCount) do
            begin
               if (Ttrn.Fields[i].FieldName <> 'id')and(Ttrn.Fields[i].FieldName <> 'venda') then
                  DM.Qtrn.FieldByName(Ttrn.Fields[i].FieldName).Value := Ttrn.Fields[i].Value;
            end;

            DM.Qtrnvenda.Value := DM.QVendaid.Value;
            DM.Qtrn.Post;
            DM.Qtrn.Refresh;

            while not TTrn_Item.Eof do
            begin
             DM.QTrn_Item.Insert;

               for i := 0 to Pred(TTrn_Item.FieldCount) do
               begin
                  if (TTrn_Item.Fields[i].FieldName <> 'id')and(TTrn_Item.Fields[i].FieldName <> 'trn') then
                     DM.QTrn_Item.FieldByName(TTrn_Item.Fields[i].FieldName).Value := TTrn_Item.Fields[i].Value;
               end;

               DM.QTrn_Itemtrn.Value := DM.Qtrnid.Value;
               DM.QTrn_Item.Post;
               TTrn_Item.Next;
            end;

            TTrn.Next;
         end;

         Log('Carga_server','Trn', 'Fim');

         if not TPFP.IsEmpty then
         begin
            Log('Carga_server','PFP', 'Inicio');
            DM.QPFP.Insert;

            for i := 0 to Pred(TPFP.FieldCount) do
            begin
               if (TPFP.Fields[i].FieldName <> 'id')and(TPFP.Fields[i].FieldName <> 'venda') then
                  DM.QPFP.FieldByName(TPFP.Fields[i].FieldName).Value := TPFP.Fields[i].Value;
            end;

            DM.QPFPvenda.Value := DM.QVendaid.Value;
            DM.QPFP.Post;
            Log('Carga_server','PFP', 'Fim');
         end;
         //MARCA COMO FEITO
         TVenda.edit;
         TVendatipo.Value := 'FOI';
         TVenda.Post;
      end;
      TVenda.Next;
      TrimAppMemorySize;
   end;

   frmprogress.bar1.Position := 0;
   TVenda.Open('select * from venda order by id desc limit 1');  //volta o sql original em TVenda

   //PASSO 2 registros paf

   TPAF_R01.Open;
   TPAF_R01.First;

   DM.TPAF_A2.Open('select * from paf_a2 limit 1');

   TPAF_R02.Open;
   TPAF_R02.First;
   TPAF_R02.FetchAll;
   DM.TPAF_R01.Open;
   DM.TPAF_R02.Open('select * from paf_r02 where crz=0 and num_ecf=' + Texto_Mysql(StrToInt(DM_ECF.st_ECF_Num)));

   TPAF_R03.Open;
   TPAF_R03.FetchAll;
   TPAF_R03.First;
   DM.TPAF_R03.Open;

   Log('Carga_server','R01', 'Inicio');
   //R01
   while not TPAF_R01.Eof do
   begin
      if not DM.TPAF_R01.Locate('nmro', TPAF_R01nmro.Value, []) then
      begin
         DM.TPAF_R01.Insert;

         for i := 0 to Pred(TPAF_R01.FieldCount) do
         begin
            if (TPAF_R01.Fields[i].FieldName <> 'id') then
               DM.TPAF_R01.FieldByName(TPAF_R01.Fields[i].FieldName).Value := TPAF_R01.Fields[i].Value;
         end;

         DM.TPAF_R01.Post;
      end;
      TPAF_R01.Next;
   end;

   //R02
   frmprogress.bar1.Properties.Max := TPAF_R02.RecordCount;

   while not TPAF_R02.Eof do
   begin
      Log('Carga_server','R02', 'Inicio');
      frmprogress.Caption := 'Progresso: R02 ' + TPAF_R02id.AsString;;
      frmprogress.bar1.Position := TPAF_R02.RecNo;
      Application.ProcessMessages;

      DM.TPAF_R02.Edit;//aqui edita o r02 ja existente

      for i := 0 to Pred(TPAF_R02.FieldCount) do
      begin
         if (TPAF_R02.Fields[i].FieldName <> 'id') then
            DM.TPAF_R02.FieldByName(TPAF_R02.Fields[i].FieldName).Value := TPAF_R02.Fields[i].Value;
      end;

      DM.TPAF_R02.Post;
   //   DM.TPAF_R02.Open('select * from paf_r02 where crz=' + Texto_Mysql(TPAF_R02crz.Value) +
   //                    ' and num_ecf=' + Texto_Mysql(DM_ECF.st_ECF_Num)); //DM.TPAF_R02.Refresh; //recupera a id

     //R03
      while not TPAF_R03.Eof do
      begin
         if TPAF_R03cod_tot_parcial.AsString <> 'FOI' then
         begin
            Log('Carga_server','R03', 'Inicio');
            frmprogress.Caption := 'Progresso: R03 ' + TPAF_R03id.AsString;
            frmprogress.bar1.Position := TPAF_R03.RecNo;
            Application.ProcessMessages;

            DM.TPAF_R03.Insert;

            for i := 0 to Pred(TPAF_R03.FieldCount) do
            begin
               if (TPAF_R03.Fields[i].FieldName <> 'id') then
                  DM.TPAF_R03.FieldByName(TPAF_R03.Fields[i].FieldName).Value := TPAF_R03.Fields[i].Value;

               DM.TPAF_R03r02.Value := DM.TPAF_R02id.Value;
            end;

            DM.TPAF_R03.Post;
         end;
         //marca como exportado
         TPAF_R03.Edit;
         TPAF_R03cod_tot_parcial.Value := 'FOI';
         TPAF_R03.Post;
         TPAF_R03.Next;
      end;

      Exportar_Dados;  //envia os r04..07 e cancelamentos de CF remanescentes

      Log('Carga_server','A2', 'Inicio');
      //A2
      Q1.Open('select  ecf,cod_fpag,fpag,sum(valor) as valor,data,tipo, ' +
              'sum(valor_canc) as valor_canc from paf_a2 where r02=' +
              Texto_Mysql(TPAF_R02id.Value) +
              ' group by cod_fpag'
      );

      while not Q1.Eof do
      begin
         DM.TPAF_A2.Insert;

         Log('Carga_server','A2', Q1.FieldByName('fpag').AsString + ' = ' + Q1.FieldByName('valor').AsString);

         for i := 0 to Pred(Q1.FieldCount) do
         begin
            if (Q1.Fields[i].FieldName <> 'id') then
               DM.TPAF_A2.FieldByName(Q1.Fields[i].FieldName).Value := Q1.Fields[i].Value;
         end;

         DM.TPAF_A2r02.Value := DM.TPAF_R02id.Value;
         DM.TPAF_A2.Post;
         Q1.Next;
      end;

      TPAF_R02.Next;
      TrimAppMemorySize;
   end;

   frmprogress.bar1.Properties.Max := 10;
   frmprogress.bar1.Position := 4;
   frmprogress.Caption := 'Progresso: Fim da carga';
   Log('Carga_server','Final DA CARGA', 'Final DA CARGA');
   frmprogress.Caption := 'Progresso: Apagar duplicados';
   //DM.DB.ExecSQL('call pr_paf_r02_dup');//remove duplicados
   Log('Carga_server','Verificado duplicidade', 'DUPL');
   frmprogress.Caption := 'Progresso: HASH';
   DM.Atu_Hash;//ATUALIZA OS HASHS DAS TABELAS
    Log('Carga_server','Atualizado HASH', 'HASH');

   frmprogress.bar1.Position := 6;
   Application.ProcessMessages;

   //apaga o rollback
   Log('Carga_server','Final', 'Rollback');
   frmprogress.Caption := 'Progresso: rollback';
   DM.DB.ExecSQL('delete from estoque_atu where terminal=' + Texto_Mysql(DM_ECF.st_ECF_Num) + ';');
   frmprogress.bar1.Position := 8;
   Application.ProcessMessages;

   //limpa as tabelas locais...
   Log('Carga_server','Final', 'Apagar_Tabelas');
   frmprogress.Caption := 'Progresso: Apagando tabelas';
   Apagar_Tabelas;
   frmprogress.bar1.Position := 10;
   frmprogress.btnSair.Click;

   if Assigned(frmprogress) then
      FreeAndNil(frmprogress);
   Log('Carga_server','Final', '-------------------------FIM');
end;

procedure TDM_PDV.Carga_Venda;
begin
   TVenda.Open('select * from venda where coa <> 0');
   TVenda_Item.Open;
end;


procedure TDM_PDV.GerarR01;//IDENTIFICAÇÃO DO ECF, DO USUÁRIO, DO PAF-ECF E DA EMPRESA DESENVOLVEDORA
begin
   TPAF_R01.Open('select * from paf_r01 where nmro=' + Texto_Mysql(StrToIntDef(DM_ECF.st_ECF_Num,1)));

   if TPAF_R01.IsEmpty then
      TPAF_R01.Append
   else
      TPAF_R01.Edit;

   TPAF_R01nmro.AsString      := DM_ECF.st_ECF_Num;
   TPAF_R01serie.AsString     := DM_ECF.st_ECF_Serie;
   TPAF_R01mf_adic.AsString   := '';
   TPAF_R01tipo.AsString      := 'ECF-IF';
   TPAF_R01marca.AsString     := DM_ECF.st_ECF_Marca;
   TPAF_R01modelo.AsString    := DM_ECF.st_ECF_SubMod;
   TPAF_R01versao_sb.AsString := DM_ECF.st_ECF_Versao;
   TPAF_R01data_sb.Value      := DM_ECF.dt_Data_Hr_SB_ECF;
   TPAF_R01hora_sb.AsString   := FormatDateTime('hh:nn', DM_ECF.dt_Data_Hr_SB_ECF);
   TPAF_R01.Post;//os demais dados sao obtidos do arquivo paf e da tabela empresa

   Gerar_R02_Vazio; //que gera o R01 na base remota
end;

procedure TDM_PDV.Gerar_R02_Vazio;
var
   i: integer;
begin
   if not DM.Conectar then //se nao esta em rede, sai
      exit;

   if not TPAF_R02.Active then
      TPAF_R02.Open('select * from paf_r02 where crz=0 and num_ecf=' + Texto_Mysql(StrToInt(DM_ECF.st_ECF_Num)));

   //se ja existe, sai
   if not TPAF_R02.IsEmpty then
      exit;

   //gera o R01 na base remota
   DM.TPAF_R01.Open('select * from paf_r01 where nmro=' + Texto_Mysql(DM_ECF.st_ECF_Num));

   if DM.TPAF_R01.IsEmpty then
   begin
      DM.TPAF_R01.insert;

      for i := 0 to Pred(TPAF_R01.FieldCount) do
      begin
         if TPAF_R01.Fields[i].FieldName <> 'id' then
            DM.TPAF_R01.FieldByName(TPAF_R01.Fields[i].FieldName).Value := TPAF_R01.Fields[i].Value;
      end;

      DM.TPAF_R01.Post;
   end;
   //atualiza o id da base local
   TPAF_R01.Edit;
   TPAF_R01id.Value := DM.TPAF_R01id.Value;
   TPAF_R01.Post;

   //cria o registro na base local com crz = 0
   TPAF_R02.Append;
   TPAF_R02num_ecf.AsString   := DM_ECF.st_ECF_Num;
   TPAF_R02num_usu.Value      := 1;
   TPAF_R02serie_ecf.AsString := DM_ECF.st_ECF_Serie;
   TPAF_R02crz.Value          := 0;
   TPAF_R02.Post;

   //cria o registro na base remota
   DM.TPAF_R02.Open('select * from paf_r02 where crz=0 and num_ecf=' + Texto_Mysql(StrToInt(DM_ECF.st_ECF_Num)));
   DM.TPAF_R02.Insert;

   for i := 0 to Pred(TPAF_R02.FieldCount) do
   begin
      if TPAF_R02.Fields[i].FieldName <> 'id' then
         DM.TPAF_R02.FieldByName(TPAF_R02.Fields[i].FieldName).Value := TPAF_R02.Fields[i].Value;
   end;

   DM.TPAF_R02.Post;

   //atualiza o id da base local com o id da base remota
   TPAF_R02.Edit;
   TPAF_R02id.Value := DM.TPAF_R02id.Value;
   TPAF_R02.Post;

   //atualiza r02 dos filhos na base local (se ja existirem estarao com r02=-1)
   DB.ExecSQL('update paf_r04 set r02=' + Texto_Mysql(TPAF_R02id.Value) + ' where r02=-1;');
   DB.ExecSQL('update paf_r06 set r02=' + Texto_Mysql(TPAF_R02id.Value) + ' where r02=-1;');
   DB.ExecSQL('update paf_a2 set r02='  + Texto_Mysql(TPAF_R02id.Value) + ' where r02=-1;');
end;

procedure TDM_PDV.GerarR02;//RELAÇÃO DE REDUÇÕES Z
begin
   DB.ExecSQL('delete from paf_r02 where crz=' + Texto_Mysql(DM_ECF.ReducaoZ.CRZ));
   TPAF_R02.Open('select * from paf_r02 where crz=0');

   if TPAF_R02.IsEmpty then
      TPAF_R02.Append
   else
      TPAF_R02.Edit;

   TPAF_R02num_ecf.AsString   := DM_ECF.st_ECF_Num;
   TPAF_R02num_usu.Value      := 1;
   TPAF_R02serie_ecf.AsString := DM_ECF.st_ECF_Serie;
   TPAF_R02mf_adic.AsString   := '';
   TPAF_R02crz.Value          := DM_ECF.ReducaoZ.CRZ;
   TPAF_R02coo.Value          := DM_ECF.ReducaoZ.COO;
   TPAF_R02coo_inicial.Value  := TECFcoo_ini.Value;
   TPAF_R02cro.Value          := DM_ECF.ReducaoZ.CRO;
   TPAF_R02dt_movi.Value      := DM_ECF.ReducaoZ.DataDoMovimento;
   TPAF_R02dt_em.Value        := DM_ECF.ReducaoZ.DataHoraEmissao;
   TPAF_R02hora_em.Value      := DM_ECF.ReducaoZ.DataHoraEmissao;
   TPAF_R02venda_bruta.Value  := DM_ECF.ReducaoZ.ValorVendaBruta;
   TPAF_R02valor_gt.Value     := DM_ECF.ReducaoZ.ValorGrandeTotal;
   TPAF_R02issqn.AsString     := '';
   TPAF_R02.Post;
   DB.ExecSQL('update paf_r04 set r02=' + Texto_Mysql(TPAF_R02id.Value) + ' where r02=-1;');
   DB.ExecSQL('update paf_r06 set r02=' + Texto_Mysql(TPAF_R02id.Value) + ' where r02=-1;');
   DB.ExecSQL('update paf_a2 set r02=' + Texto_Mysql(TPAF_R02id.Value) + ' where r02<=0;');
end;

procedure TDM_PDV.GerarR03; //DETALHE DA REDUÇÃO Z
var
   i: integer;
begin
   DB.ExecSQL('delete from paf_r03 where r02=' + Texto_Mysql(TPAF_R02id.Value));
   TPAF_R03.Open('select * from paf_r03 where r02=' + Texto_Mysql(TPAF_R02id.Value));
   //ICMS
   for i := 0 to Pred(DM_ECF.ReducaoZ.TodasAliquotas.Count) do
   begin
      if DM_ECF.ReducaoZ.TodasAliquotas[i].Total > 0 then
      begin
         TPAF_R03.Append;
         TPAF_R03r02.Value                := TPAF_R02id.Value;
         TPAF_R03cod_tot_parcial.AsString := DM_ECF.ReducaoZ.TodasAliquotas[i].Indice +
                                             DM_ECF.ReducaoZ.TodasAliquotas[i].Tipo +
                                             LFill(Floattostr(DM_ECF.ReducaoZ.TodasAliquotas[i].Aliquota*100),4,'0');
         TPAF_R03valor_tot_parcial.Value  := DM_ECF.ReducaoZ.TodasAliquotas[i].Total;
         TPAF_R03.Post;
      end;
   end;

   if DM_ECF.ReducaoZ.SubstituicaoTributariaICMS >0 then
   begin
      TPAF_R03.Append;
      TPAF_R03r02.Value                := TPAF_R02id.Value;
      TPAF_R03cod_tot_parcial.AsString := 'F1';
      TPAF_R03valor_tot_parcial.Value  := DM_ECF.ReducaoZ.SubstituicaoTributariaICMS;
      TPAF_R03.Post;
   end;

   if DM_ECF.ReducaoZ.IsentoICMS >0 then
   begin
      TPAF_R03.Append;
      TPAF_R03r02.Value                := TPAF_R02id.Value;
      TPAF_R03cod_tot_parcial.AsString := 'I1';
      TPAF_R03valor_tot_parcial.Value  := DM_ECF.ReducaoZ.IsentoICMS;
      TPAF_R03.Post;
   end;

   if DM_ECF.ReducaoZ.NaoTributadoICMS >0 then
   begin
      TPAF_R03.Append;
      TPAF_R03r02.Value                := TPAF_R02id.Value;
      TPAF_R03cod_tot_parcial.AsString := 'N1';
      TPAF_R03valor_tot_parcial.Value  := DM_ECF.ReducaoZ.NaoTributadoICMS;
      TPAF_R03.Post;
   end;

   if DM_ECF.ReducaoZ.SubstituicaoTributariaISSQN >0 then
   begin
      TPAF_R03.Append;
      TPAF_R03r02.Value                := TPAF_R02id.Value;
      TPAF_R03cod_tot_parcial.AsString := 'FS1';
      TPAF_R03valor_tot_parcial.Value  := DM_ECF.ReducaoZ.SubstituicaoTributariaISSQN;
      TPAF_R03.Post;
   end;

   if DM_ECF.ReducaoZ.IsentoISSQN >0 then
   begin
      TPAF_R03.Append;
      TPAF_R03r02.Value                := TPAF_R02id.Value;
      TPAF_R03cod_tot_parcial.AsString := 'IS1';
      TPAF_R03valor_tot_parcial.Value  := DM_ECF.ReducaoZ.IsentoISSQN;
      TPAF_R03.Post;
   end;

   if DM_ECF.ReducaoZ.NaoTributadoISSQN >0 then
   begin
      TPAF_R03.Append;
      TPAF_R03r02.Value                := TPAF_R02id.Value;
      TPAF_R03cod_tot_parcial.AsString := 'NS1';
      TPAF_R03valor_tot_parcial.Value  := DM_ECF.ReducaoZ.NaoTributadoISSQN;
      TPAF_R03.Post;
   end;

   if DM_ECF.ReducaoZ.TotalOperacaoNaoFiscal >0 then
   begin
      TPAF_R03.Append;
      TPAF_R03r02.Value                := TPAF_R02id.Value;
      TPAF_R03cod_tot_parcial.AsString := 'OPNF';
      TPAF_R03valor_tot_parcial.Value  := DM_ECF.ReducaoZ.TotalOperacaoNaoFiscal;
      TPAF_R03.Post;
   end;

   if DM_ECF.ReducaoZ.DescontoICMS >0 then
   begin
      TPAF_R03.Append;
      TPAF_R03r02.Value                := TPAF_R02id.Value;
      TPAF_R03cod_tot_parcial.AsString := 'DT';
      TPAF_R03valor_tot_parcial.Value  := DM_ECF.ReducaoZ.DescontoICMS;
      TPAF_R03.Post;
   end;

   if DM_ECF.ReducaoZ.DescontoISSQN >0 then
   begin
      TPAF_R03.Append;
      TPAF_R03r02.Value                := TPAF_R02id.Value;
      TPAF_R03cod_tot_parcial.AsString := 'DS';
      TPAF_R03valor_tot_parcial.Value  := DM_ECF.ReducaoZ.DescontoISSQN;
      TPAF_R03.Post;
   end;

   if DM_ECF.ReducaoZ.AcrescimoICMS >0 then
   begin
      TPAF_R03.Append;
      TPAF_R03r02.Value                := TPAF_R02id.Value;
      TPAF_R03cod_tot_parcial.AsString := 'AT';
      TPAF_R03valor_tot_parcial.Value  := DM_ECF.ReducaoZ.AcrescimoICMS;
      TPAF_R03.Post;
   end;

   if DM_ECF.ReducaoZ.AcrescimoISSQN >0 then
   begin
      TPAF_R03.Append;
      TPAF_R03r02.Value                := TPAF_R02id.Value;
      TPAF_R03cod_tot_parcial.AsString := 'AS';
      TPAF_R03valor_tot_parcial.Value  := DM_ECF.ReducaoZ.AcrescimoISSQN;
      TPAF_R03.Post;
   end;

   if DM_ECF.ReducaoZ.CancelamentoICMS >0 then
   begin
      TPAF_R03.Append;
      TPAF_R03r02.Value                := TPAF_R02id.Value;
      TPAF_R03cod_tot_parcial.AsString := 'Can-T';
      TPAF_R03valor_tot_parcial.Value  := DM_ECF.ReducaoZ.CancelamentoICMS;
      TPAF_R03.Post;
   end;

   if DM_ECF.ReducaoZ.CancelamentoISSQN >0 then
   begin
      TPAF_R03.Append;
      TPAF_R03r02.Value                := TPAF_R02id.Value;
      TPAF_R03cod_tot_parcial.AsString := 'Can-S';
      TPAF_R03valor_tot_parcial.Value  := DM_ECF.ReducaoZ.CancelamentoISSQN;
      TPAF_R03.Post;
   end;
end;

procedure TDM_PDV.GerarR04(coo, ccf: string; cancelado: boolean);//CUPOM FISCAL, NOTA FISCAL DE VENDA A CONSUMIDOR
var
   b: boolean;
   i: integer;
begin
   if not TPAF_R02.Active then
      TPAF_R02.Open('select * from paf_r02 where crz=0 and num_ecf=' + Texto_Mysql(StrToInt(DM_ECF.st_ECF_Num)));

   //se ainda nao gerou o r02 a referencia será -1. qdo r02 for criado, atualiza
   if not TPAF_R02.IsEmpty then
      i := TPAF_R02id.Value
   else
      i := -1;

   TPAF_R04.Open('select * from paf_r04 where r02=' + Texto_Mysql(i) + ' and ccf=' + ccf);


   if TPAF_R04.IsEmpty then
      TPAF_R04.Insert
   else
      TPAF_R04.Edit;

   b := TPAF_R04.State = dsInsert;

   if b then
   begin
      TPAF_R04r02.Value   := i;
      TPAF_R04ccf.Value   := StrToIntDef(ccf,0);
      TPAF_R04coo.Value   := StrToIntDef(coo,0);
      TPAF_R04dt_em.Value := Trunc(DM_ECF.Relogio);
   end;

   TPAF_R04subtotal.Value           := Iif(TECFcf_totalizado.Value, TVendavalor.AsCurrency, 0);
   TPAF_R04desconto.Value           := TVendavr_desconto.AsCurrency;
   TPAF_R04tipo_desc.AsAnsiString   := Iif(TVendavr_desconto.AsCurrency > 0,'V','');//sempre valor
   TPAF_R04acrescimo.Value          := 0;
   TPAF_R04tipo_acresc.Value        := '';
   TPAF_R04vr_liq.Value             := Iif(TECFcf_totalizado.Value, frmPDV.ECF.Subtotal, 0);
   TPAF_R04canc.AsString            := Iif(cancelado, 'S', 'N');
   TPAF_R04canc_acresc_st.Value     := '';
   TPAF_R04ordem_desc_acresc.AsAnsiString  := Iif(TVendavr_desconto.AsCurrency > 0,'D','');

   if (not cancelado)and(TCliid.Value > 1) then
   begin
      TPAF_R04nome_cliente.AsString := TClirazaosocial.AsString;
      TPAF_R04cnpj_cliente.AsString := Number(TClicnpj.AsString);
   end;

   TPAF_R04.Post; //vincula os r04 ao r05

   if not b then
   begin
      DB.ExecSQL('update paf_r05 set r04=' + Texto_Mysql(TPAF_R04id.Value) + ' where r04=-1;');
      DB.ExecSQL('update paf_r07 set r04=' + Texto_Mysql(TPAF_R04id.Value) + ' where r04=-1;');
      //Exportar_Dados;
   end;
end;

procedure TDM_PDV.GerarR05;//DETALHE DO CUPOM FISCAL, DA NOTA FISCAL DE VENDA A CONSUMIDOR
function Converte(aliq: string): string;
begin
   if pos('FF', aliq) > 0 then
      Result := 'F1'
   else
   if pos('II', aliq) > 0 then
      Result := 'I1'
   else
   if pos('NN', aliq) > 0 then
      Result := 'N1'
   else
   begin
      DM_PDV.TAliq.Open('select * from aliquota where numecf=' + Texto_Mysql(DM_ECF.st_ECF_Num));
      DM_PDV.TAliq.Locate('cod_ecf', aliq, []);
      Result := DM_PDV.TAliqcod_paf.AsString;
   end;
end;

begin
   TPAF_R05.Open;
   TPAF_R05.Insert;
   TPAF_R05r04.Value                 := -1;//referencia inicial - ao gerar r04, atualiza
   TPAF_R05item.Value                := TVenda_ItemnItem.Value;
   TPAF_R05codigo.AsString           := DM_PDV.TVenda_ItemcEAN.AsString;
   TPAF_R05cProd.Value               := DM_PDV.TVenda_ItemcProd.Value;
   TPAF_R05nome.AsString             := DM_PDV.TVenda_ItemxProd.AsString;
   TPAF_R05qtd.AsCurrency            := DM_PDV.TVenda_ItemqCom.AsCurrency;
   TPAF_R05unid.AsString             := DM_PDV.TVenda_ItemuCom.AsString;
   TPAF_R05vrunit.AsCurrency         := DM_PDV.TVenda_ItemvUnCom.AsCurrency;
   TPAF_R05desconto.AsCurrency       := DM_PDV.TVenda_ItemvDesc.AsCurrency;
   TPAF_R05total.AsCurrency          := DM_PDV.TVenda_ItemvProd.AsCurrency;
   TPAF_R05cod_totaliz.AsString      := Converte(DM_PDV.TVenda_Itemecf_aliq.AsString);
   TPAF_R05canc.Value                := 'N';
   TPAF_R05qtd_canc.Value            := 0;
   TPAF_R05vr_canc.Value             := 0;
   TPAF_R05vr_canc_acresc.Value      := 0;
   TPAF_R05iat.AsString              := iif(TProdcalculo_por_arredondamento.AsString = 'S','A','T');
   TPAF_R05ippt.AsString             := iif(TProdproducao_propria.AsString = 'S','P','T');
   TPAF_R05casas_dec_qtd.AsString    := '3';
   TPAF_R05casas_dec_vrunit.AsString := '3';
   TPAF_R05.Post;
end;

procedure TDM_PDV.GerarR06(denominacao, coo, gnf, grg, cdc: string);//DEMAIS DOCUMENTOS EMITIDOS PELO ECF
var
   i: integer;
begin
   if not TPAF_R02.Active then
      TPAF_R02.Open('select * from paf_r02 where crz=0 and num_ecf=' + Texto_Mysql(StrToInt(DM_ECF.st_ECF_Num)));

   //se ainda nao gerou o r02 a referencia será -1. qdo r02 for criado, atualiza
   if not TPAF_R02.IsEmpty then
      i := TPAF_R02id.Value
   else
      i := -1;

   TPAF_R06.Open;
   TPAF_R06.Insert;
   TPAF_R06r02.Value := i;
   TPAF_R06coo.Value := StrToIntDef(coo,0);
   TPAF_R06gnf.Value := StrToIntDef(gnf,0);
   TPAF_R06grg.Value := StrToIntDef(grg,0);
   TPAF_R06cdc.Value := StrToIntDef(cdc,0);
   TPAF_R06denominacao.AsString := denominacao;
   TPAF_R06dt_emissao.Value     := Trunc(DM_ECF.Relogio);
   TPAF_R06hora_em.Value        := Frac(DM_ECF.Relogio);
   TPAF_R06.Post;
   DB.ExecSQL('update paf_r07 set r06=' + Texto_Mysql(TPAF_R06id.Value) + ' where r06=-1;');
  // Exportar_Dados;
end;

procedure TDM_PDV.GerarR07(r4, r6: integer; fpag: string; Valor: currency);
begin
   TPAF_R07.Open;
   TPAF_R07.Append;
   TPAF_R07r04.Value           := r4;
   TPAF_R07r06.Value           := r6;
   TPAF_R07meio_pag.AsString   := fpag;
   TPAF_R07valor.Value         := Valor;
   TPAF_R07valor_extorno.Value := 0;
   TPAF_R07extorno.AsString    := 'N';
   TPAF_R07.Post;
end;

procedure TDM_PDV.Gerar_E02;
begin
   if not DM.Conectar then
      exit;

   TPAF_E3.Open;
   TPAF_E2.Open;

   if (TPAF_E3data_estoque.Value < DM_ECF.Relogio) then
   begin
      frmPDV.Popup('Gerando Arquivo de estoque...');
      AbreForm(Tfrmprogress,frmprogress, False);
      TPAF_E3.Append;
      TPAF_E3nmro_ecf.AsString  := DM_ECF.st_ECF_Num;
      TPAF_E3serie.AsString     := DM_ECF.st_ECF_Serie;
      TPAF_E3mf_adic.AsString   := '';
      TPAF_E3tipo_ecf.AsString  := 'ECF-IF';
      TPAF_E3marca_ecf.AsString := DM_ECF.st_ECF_Marca;
      TPAF_E3mod_ecd.AsString   := DM_ECF.st_ECF_SubMod;
      TPAF_E3data_estoque.Value := DM_ECF.Relogio;
      TPAF_E3hora_estoque.Value := TimeOf(DM_ECF.Relogio);
      TPAF_E3.Post;
      //busca os dados da tabela do estoque no server
      DM.Q1.Open('select * from vw_estoque where suspenso="N" and quant<>0');
      DM.Q1.First;
      DM.Q1.FetchAll;
      frmprogress.bar1.Properties.Max := DM.Q1.RecordCount;

      try
         while not DM.Q1.Eof do
         begin
            frmprogress.bar1.Position := DM.Q1.RecNo;
            TPAF_E2.Insert;
            TPAF_E2e3.Value            := TPAF_E3id.Value;
            TPAF_E2cProd.Value         := DM.Q1.FieldByName('id').AsInteger;
            TPAF_E2codigo.AsString     := DM.Q1.FieldByName('cod_gtin').AsString;
            TPAF_E2nome.AsString       := DM.Q1.FieldByName('nome').AsString;
            TPAF_E2mensuracao.AsString := Iif(DM.Q1.FieldByName('quant').AsCurrency > 0,'+','-');
            TPAF_E2unid.AsString       := DM.Q1.FieldByName('sigla_unid').AsString;
            TPAF_E2qtd.Value           := Iif(DM.Q1.FieldByName('quant').AsCurrency > 0,
                                              DM.Q1.FieldByName('quant').AsCurrency,
                                              DM.Q1.FieldByName('quant').AsCurrency * -1);
            TPAF_E2.Post;
            Application.ProcessMessages;
            DM.Q1.Next;
         end;
         TPAF_E2.ApplyUpdates;

         Exportar_E3;
      finally
         frmprogress.btnSair.Click;

         if Assigned(frmprogress) then
            FreeAndNil(frmprogress);
      end;
   end;
end;

procedure TDM_PDV.Gravar_coo_ini(coo: string);//grava o COO do 1º documento no dia
var
   i,j, k,l: integer;
begin
   try
      i := Trunc(TECFdt_movi.Value);
      j := Trunc(DM_ECF.Relogio);
      k := StrToIntDef(DM_ECF.st_ECF_Num,0);
      l := StrToIntDef(TECFecf.AsString,0);

   if (i <> j)or (k <> l) then
   begin
      TECF.Edit;
      TECFcro.Value     := DM_ECF.i_cro;
      TECFcrz.Value     := DM_ECF.i_crz;
     // TECFecf.AsString  := DM_ECF.st_ECF_Num;
      TECFcoo_ini.Value := StrToIntDef(coo,0);
      TECFdt_movi.Value := Trunc(DM_ECF.Relogio);
      TECF.Post;

      GerarR01;
      Gerar_E02;//deve ser gerado somente ao emitir o 1º documento no dia
   end;
   except
      on E: exception do
      begin
      Log('PDV_Err','Gravar coo ini',e.Message);
      end;
   end;
end;

procedure TDM_PDV.Gravar_Estado_PDV(estado: Estado_PDV);
begin//epnaoini, eplivre, epvenda, eppag, eptef
   TECF.Open;
   TECF.Edit;
   TECFecf.Value     := StrToIntDef(DM_ECF.st_ECF_Num, 0);
   TECFestado.Value  := Integer(estado);

   if estado = epTEF then
      TECFestado_ant.Value := 1 //flag p/ cancelar o cupom em crash com tef
   else
   if estado = epPag then
      TECFestado_ant.Value := 0;

   if TECFcro.Value < DM_ECF.i_cro then
   begin
      if frmPDV.ECF.EmLinha then
         TECFgt.Value := frmPDV.ECF.GrandeTotal;

      TECFcro.Value     := DM_ECF.i_cro;
      TECFcrz.Value     := DM_ECF.i_crz;
   end;
   TECF.Post;
end;


procedure TDM_PDV.Imprime_Comprovante(tipo: integer);
var
   comprovante: TStringList;
   descricao, docs, st_indice: string;
   valor, total: currency;
   i: integer;
begin
   st_indice   := format('%.2d', [DM_PDV.Indice_CNF('receb')]);

   if st_indice = '00' then
   begin
      DM_ECF.TEF.BloquearMouseTeclado(False);
      raise Exception.Create('CNF "receb" não cadastrado.');
   end;

   comprovante := TStringList.Create;
   total       := 0;

   if tipo = 0 then //sangria
   begin
      comprovante.LoadFromFile(Aqui(C_TXT_FILE, 'sangria.txt'));
      valor := StrToFloat(Number(comprovante.Strings[3]))/100;
      frmPDV.ECF.Sangria(valor, 'CRÉDITO EXTORNADO: ' + AnsiString(comprovante.Strings[0] + #10 +
                                                                   comprovante.Strings[1] + #10 +
                                                                   comprovante.Strings[2])
      );
      DeleteFile(Aqui(C_TXT_FILE, 'sangria.txt'));
      //a edição do TECF é feita no evento do ECF
   end
   else
   if tipo = 1 then// credito
   begin
      comprovante.LoadFromFile(Aqui(C_TXT_FILE, 'crédito.txt'));

      frmPDV.ECF.AbreNaoFiscal(comprovante.Strings[0],comprovante.Strings[1], comprovante.Strings[2]);
      valor     := StrToFloat(Number(comprovante.Strings[3]))/100;

      frmPDV.ECF.RegistraItemNaoFiscal(st_indice, valor);
      frmPDV.ECF.SubtotalizaNaoFiscal;
      frmPDV.ECF.EfetuaPagamentoNaoFiscal('01', Valor);
      frmPDV.ECF.FechaNaoFiscal('COMPROVANTE DE CRÉDITO AO CLIENTE.');

      DeleteFile(Aqui(C_TXT_FILE, 'crédito.txt'));

      TECF.Edit;
      TECFvr_din.Value := DM_PDV.TECFvr_din.Value + Valor;
      TECF.Post;
   end
   else
   if tipo = 2 then// quitação
   begin
      comprovante.LoadFromFile(Aqui(C_TXT_FILE, 'quitação.txt'));

      frmPDV.ECF.AbreNaoFiscal(comprovante.Strings[0],comprovante.Strings[1], comprovante.Strings[2]);

      for i := 3 to Pred(comprovante.Count) do
      begin
         valor := StrToFloat(Trim(copy(comprovante.Strings[i], 1, pos('|', comprovante.Strings[i])-1)))/100;
         descricao := Trim(copy(comprovante.Strings[i], pos('|', comprovante.Strings[i]) + 1, length(comprovante.Strings[i])));
         docs := docs + ' ' + descricao;

         if valor >0 then
         begin
            frmPDV.ECF.RegistraItemNaoFiscal(st_indice, valor, AnsiString(descricao));
            total := total + valor;
         end;
      end;

      frmPDV.ECF.SubtotalizaNaoFiscal;
      frmPDV.ECF.EfetuaPagamentoNaoFiscal('01', Total);
      frmPDV.ECF.FechaNaoFiscal(AnsiString(docs));

      TECF.Edit;
      TECFvr_din.Value := DM_PDV.TECFvr_din.Value + Total;
      TECF.Post;
      DeleteFile(Aqui(C_TXT_FILE, 'quitação.txt'));
   end;

   comprovante.Free;
end;

function TDM_PDV.Indice_CNF(codigo: string): integer;
begin
   Result := 0;
   TCNF.Open;

   if TCNF.Locate('codigo', codigo, []) then
      Result := TCNFid.Value;
end;

function TDM_PDV.Indice_RG(codigo: string): integer;
begin
   Result := 1;
   TRG.Open;

   if TRG.Locate('codigo', codigo, []) then
      Result := TRGid.Value;
end;

function TDM_PDV.Ler_Estado_PDV: Estado_PDV;
begin
   if TECF.IsEmpty then
      Result := epNaoIni
   else
   Result := Estado_PDV(TECFestado.Value);
end;

function TDM_PDV.LoadAliq: boolean;
begin
   TAliq.Open;
   Result := not TAliq.IsEmpty;

   if not Result then
      ShowMessage('As alíquotas não estão cadastradas neste PDV.');
end;

function TDM_PDV.Load_Cli: boolean;
begin
   TCli.Open;
   Result := not TCli.IsEmpty;
end;

function TDM_PDV.Load_Empresa: boolean;
begin
   TEmpresa.Open;
   Result := not TEmpresa.IsEmpty;
end;

function TDM_PDV.Load_FPag: boolean;
begin
   if frmPDV.ECF.Ativo then
   begin
      TFPag.Filter := 'numecf=' + Texto_Mysql(StrToInt(frmPDV.ECF.NumECF));
      TFPag.Filtered := True;
   end;

   TFPag.Open;
   Result := not TFPag.IsEmpty;

   if not Result then
      ShowMessage('As F.Pag não estão cadastradas neste PDV.');
end;

{$ENDIF}

function TDM_PDV.Load_IBPTax: boolean;
begin
   TIBPTax.Open;
   Result := not TIBPTax.IsEmpty;
end;

procedure TDM_PDV.Q1Error(ASender: TObject; const AInitiator: IFDStanObject; var AException: Exception);
begin
   Log('PDV_Err', (ASender as TFDQuery).Name, (ASender as TFDQuery).SQL.Text + #13 + AException.Message);
   raise Exception.Create(AException.Message);
end;

{$IFDEF PDV}
function TDM_PDV.Load_Operador: boolean;
begin
   TOperador.Open;
   Result := not TOperador.IsEmpty;
end;

function TDM_PDV.Load_Oper_crt: boolean;
begin
   TOper_CRT.Open;
   Result := not TOper_CRT.IsEmpty;
end;

function TDM_PDV.Load_Prod: boolean;
begin
   if not TProd.Active then
      TProd.Open;
   Result := not TProd.IsEmpty;
end;

function TDM_PDV.Load_Vendedor: boolean;
begin
   TVendedor.Open;
   Result := not TVendedor.IsEmpty;
end;

function TDM_PDV.Load_RG: boolean;
begin
   Result := False;

   if frmPDV.ECF.Ativo then
   begin
      TRG.Filter := 'numecf=' + Texto_Mysql(StrToInt(frmPDV.ECF.NumECF));
      TRG.Filtered := True;
      TRG.Open;
      Result := not TRG.IsEmpty;
   end;
end;

procedure TDM_PDV.Load_PAF;
begin
   ;
end;

function TDM_PDV.Load_CNF: boolean;
begin
   Result := False;

   if frmPDV.ECF.Ativo then
   begin
      TCNF.Filter := 'numecf=' + Texto_Mysql(StrToInt(frmPDV.ECF.NumECF));
      TCNF.Filtered := True;
      TCNF.Open;
      Result := not TCNF.IsEmpty;
   end;
end;

function TDM_PDV.Load_Venda: boolean;
begin
   TVenda.Open;
   TVenda.Last;
   TVenda_Item.Open;
   Result := True;
end;

{A2  tipo
   1 Cupom Fiscal
   2 Comprovante Não Fiscal
   3 Nota Fiscal
}

//remove a entrada A2, cancelando os valores do tipo informado
procedure TDM_PDV.Paf_A2_Delete(tipo: integer);
begin
   TPaf_A2.Open;
   TPaf_A2.First;

   while not TPaf_A2.Eof do
   begin
      if (TPaf_A2tipo.Value = tipo)and(TPAF_A2r02.Value <0) then
      begin
         TPaf_A2.Edit;
         TPaf_A2valor.Value := TPaf_A2valor.Value - TPaf_A2valor_canc.Value;
         TPaf_A2valor_canc.Value := 0;
         TPaf_A2.Post;
      end;
      TPaf_A2.Next;
   end;
end;

//Insere a entrada A2
procedure TDM_PDV.Paf_A2_insert(cod, tipo: integer; nome_fpg: string; valor: currency);
begin
   TPaf_A2.Open;

   TPaf_A2.insert;
   TPaf_A2ecf.AsString     := DM_ECF.st_ECF_Num;
   TPaf_A2tipo.Value       := tipo;
   TPAF_A2data.Value       := Trunc(DM_ECF.Relogio);
   TPAF_A2r02.Value        := -1;//valor inicial
   TPAF_A2cod_fpag.Value   := cod;
   TPAF_A2fpag.AsString    := nome_fpg;
   TPaf_A2valor.Value      := TPaf_A2valor.Value + valor; //soma ao valor existente
   TPaf_A2valor_canc.Value := valor; //grava o valor como referencia para abater se cancelar
   TPaf_A2.Post;
end;

//zera os valores cancelaveis
procedure TDM_PDV.Paf_A2_zerar_canc;
begin
   TPaf_A2.Open;
   TPaf_A2.First;

   while not TPaf_A2.Eof do
   begin
      TPaf_A2.Edit;
      TPaf_A2valor_canc.Value := 0;
      TPaf_A2.Post;
      TPaf_A2.Next;
   end;
end;

//Ajusta o A2 , tirando o -1 e colocando o id de R02
procedure TDM_PDV.Paf_A2_AjustaR02;
begin
   try
   TPaf_A2.Close;
   TPaf_A2.Open;

   if not TPaf_A2.IsEmpty then
   begin
      TPaf_A2.First;
      TPAF_R02.Open('select * from paf_r02 where crz=0 and num_ecf=' + Texto_Mysql(StrToInt(DM_ECF.st_ECF_Num)));

      while not TPaf_A2.Eof do
      begin
         if TPAF_A2r02.Value <0 then
         begin
            TPaf_A2.Edit;
            TPAF_A2r02.Value := TPAF_R02id.Value;
            TPaf_A2.Post;
         end;

         TPaf_A2.Next;
      end;
   end;
   except
      on E: exception do
      begin
      Log('PDV_Err','Paf_A2_AjustaR02',e.Message);
      end;
   end;
end;

function TDM_PDV.Permissao(forca:boolean): boolean;
var
   s: string;
begin
   if (not DM_INI.ini.StoredValue['operacoes_supervisionadas'])and (not Forca) then
   begin
      Result := False;
      Exit;
   end;

   s := '';

   s := InputBox('Permissão de supervisor', 'Senha supervisor', s);

   Q1.Open('select * from operador where senha=' + Texto_Mysql(s) + ' and acesso > 7');

   Result := not Q1.IsEmpty;

   if Result then
      ShowMessage('Autorizado.')
   else
      ShowMessage('Negado. Usuário não foi encontrado ou não tem nível de supervisão.')
end;

function TDM_PDV.Procurar_Operador(login, senha: string): boolean;
begin
   TOperador.Open;
    //by Koplin - 25/10/14 - correção erro nao acha login case insentive
   Result := TOperador.Locate('nomered;senha', VarArrayOf([login, senha]), [loCaseInsensitive]);

   if result then
   begin
      DM.Operador.Nome   := TOperadornome.AsString;
      DM.Operador.ID     := TOperadorid.AsInteger;
      DM.Operador.Acesso := TOperadoracesso.AsInteger;
   end
   else
      ShowMessage(C_82);
end;




procedure TDM_PDV.Setar_Cliente;
begin
   DM_PDV.TCli.DisableControls;

   if TVenda.IsEmpty then
      TCli.Locate('id',1,[])//seta o cliente consumidor final por padrão
   else
   begin
      TVenda.Last;
      if TVendacoa.AsInteger > 0 then
         TCli.Locate('id', TVendacliente.AsInteger,[])
      else
         TCli.Locate('id',1,[]);
   end;

   DM_PDV.TCli.EnableControls;
end;

procedure TDM_PDV.Limpar_Cliente;
begin
   if not TCli.Active then
      TCli.Open();

   DM_PDV.TCli.DisableControls;
   DM_PDV.TCli.Filter := 'id<1';
   DM_PDV.TCli.Filtered := True;

   try
      while not DM_PDV.TCli.IsEmpty do
         DM_PDV.TCli.Delete;
   finally
     DM_PDV.TCli.Filtered := False;
     TCli.Locate('id',1,[]);
     DM_PDV.TCli.EnableControls;
   end;
end;

function TDM_PDV.TestaPodeAbrirCupom: boolean;
begin
   try
      DM_ECF.Delay;
      frmPDV.ECF.TestaPodeAbrirCupom;
      Result := True;
   except
      on E: exception do
      begin
         Result := False;
         Log('ECF','Pode Abrir Cupom', E.Message);
      end;
   End;
end;



{$ENDIF}

function TDM_PDV.Total_venda: currency;
begin
   TVenda_Item.DisableControls;
   TVenda_Item.First;
   Result := 0;

   while not TVenda_Item.Eof do
   begin
      if TVenda_Itemecf_aliq.AsString <> 'CANC' then
         Result := Result + TVenda_ItemvProd.AsCurrency;
      TVenda_Item.Next;
   end;

   TVenda_Item.EnableControls;
end;

procedure TDM_PDV.TFPagBeforePost(DataSet: TDataSet);
begin
{$IFNDEF PV}
   if assigned(frmPDV) then
      DM_PDV.TFPagnumecf.AsString := frmPDV.ECF.NumECF;
{$ENDIF}
end;

function TDM_PDV.Total_IBPTax: currency;
var
   s: string;
   i: integer;
   IBPTaxF, IBPTaxE, IBPTaxM: Currency;
begin
   TVenda_Item.DisableControls;
   TVenda_Item.First;
   IBPTaxF := 0;
   IBPTaxE := 0;
   IBPTaxM := 0;

   while not TVenda_Item.Eof do
   begin
      if TVenda_Itemecf_aliq.AsString <> 'CANC' then
      begin
         //Result := Result + TVenda_ItemvTotTrib.AsCurrency;

         for i := 8 downto 4 do
         begin
             s := copy(TVenda_ItemNCM.AsString, 1, i);
             DM.Q1.Open('select * from ibptax_itens where NCM="' + s + '"');

             if not DM.Q1.IsEmpty then
                Break;
         end;

         if not DM.Q1.IsEmpty then
         begin
            if TVenda_ItemICMS_orig.Value in [0,2,3,4,5] then
               IBPTaxF := IBPTaxF + (TVenda_ItemvProd.Value *  DM.Q1.FieldByName('nacional').AsCurrency)/100
            else
               IBPTaxF := IBPTaxF + (TVenda_ItemvProd.Value *  DM.Q1.FieldByName('importado').AsCurrency)/100;

            IBPTaxE := IBPTaxE + (TVenda_ItemvProd.Value *  DM.Q1.FieldByName('estadual').AsCurrency)/100;
            IBPTaxM := IBPTaxM + (TVenda_ItemvProd.Value *  DM.Q1.FieldByName('municipal').AsCurrency)/100;
         end;
      end;
      TVenda_Item.Next;
   end;
   Result := IBPTaxF + IBPTaxE + IBPTaxM;
   TVenda_Item.EnableControls;
end;

procedure TDM_PDV.DBAfterConnect(Sender: TObject);
begin
   DB.ExecSQL('PRAGMA auto_vacuum; PRAGMA integrity_check;');
end;

procedure TDM_PDV.DBError(ASender: TObject; const AInitiator: IFDStanObject; var AException: Exception);
begin
   Log('SERV_Err', (ASender as TFDConnection).Name,AException.Message);
   raise Exception.Create(AException.Message);
end;

  {$IFDEF PDV}
procedure TDM_PDV.Exportar_Dados(r02: integer);
var
   s: string;
begin
   //tenta enviar os dados para o servidor e apagar os locais
   //if not DM.Conectar then
     // exit;

   if r02>0 then
      s := ' where r02=' + Texto_Mysql(r02)
   else
      s := C_ST_VAZIO;

   DM.TPAF_R04.Open('select * from paf_r04 limit 1');
   DM.TPAF_R07.Open('select * from paf_r07 limit 1');
   DM.TPAF_R05.Open('select * from paf_r05 limit 1');
   TPAF_R04.Open('select * from paf_r04'  + s);
   TFPag.Open('select * from fpag');

   while not TPAF_R04.Eof do
   begin
      DM.TPAF_R04.Insert;
      DM.TPAF_R04.CopyRecord(TPAF_R04);
      DM.TPAF_R04r02.Value := DM.TPAF_R02id.Value;
      DM.TPAF_R04.Post;

      TPAF_R05.Open('select * from paf_r05 where r04=' + Texto_Mysql(TPAF_R04id.Value));

      while not TPAF_R05.Eof do
      begin
         DM.TPAF_R05.Insert;
         DM.TPAF_R05.CopyRecord(TPAF_R05);
         DM.TPAF_R05r04.Value := DM.TPAF_R04id.Value;
         DM.TPAF_R05.Post;

         TPAF_R05.Next;
      end;

      TPAF_R07.Open('select * from paf_r07 where r04=' + Texto_Mysql(TPAF_R04id.Value));

      while not TPAF_R07.Eof do
      begin
         DM.TPAF_R07.Insert;
         DM.TPAF_R07.CopyRecord(TPAF_R07);
         DM.TPAF_R07r04.Value := DM.TPAF_R04id.Value;

         if TFPag.Locate('indice_tef', TPAF_R07meio_pag.AsString, []) then
            DM.TPAF_R07meio_pag.Value := TFPagdescr.Value;

         DM.TPAF_R07.Post;
         TPAF_R07.Next;
      end;

      TPAF_R04.Next;
   end;//r04 loop fim

   DM.TPAF_R06.Open('select * from paf_r06 limit 1');
   TPAF_R06.Open('select * from paf_r06');

   while not TPAF_R06.Eof do
   begin
      DM.TPAF_R06.Insert;
      DM.TPAF_R06.CopyRecord(TPAF_R06);
      DM.TPAF_R06r02.Value := DM.TPAF_R02id.Value;
      DM.TPAF_R06.Post;

      TPAF_R07.Open('select * from paf_r07 where r06=' + Texto_Mysql(TPAF_R06id.Value));

      while not TPAF_R07.Eof do
      begin
         DM.TPAF_R07.Insert;
         DM.TPAF_R07.CopyRecord(TPAF_R07);
         DM.TPAF_R07r06.Value := DM.TPAF_R06id.Value;

         if TFPag.Locate('indice_tef', TPAF_R07meio_pag.AsString, []) then
            DM.TPAF_R07meio_pag.Value := TFPagdescr.Value;

         DM.TPAF_R07.Post;
         TPAF_R07.Next;
      end;

      TPAF_R06.Next;
   end;

   TPAF_R04.First; //apaga os registros 4,5 e 7 da base local

   while not TPAF_R04.IsEmpty do
   begin
      TPAF_R04.Delete;
      TPAF_R04.Next;
   end;

   TPAF_R06.First;//apaga os registros 6 e 7 da base local

   while not TPAF_R06.IsEmpty do
   begin
      TPAF_R06.Delete;
      TPAF_R06.Next;
   end;

   Cancelar_R04; //se houver cancelamentos pendentes de r04, efetua
   DM.Atu_Hash;
end;

procedure TDM_PDV.Exportar_E3;
var
   i: integer;
begin
  //registros E3 e E2
   TPAF_E3.Open;
   TPAF_E3.FetchAll;
   TPAf_E3.First;
   Log('Export_E3','E3', 'Inicio');

   while not TPAf_E3.Eof do //E3
   begin
      //verifica se ja foi gerado por outro ecf e se o deste é anterior
      DM.TPAF_E3.Open('select * from paf_e3 where data_estoque =' +
                      data_My(TPAF_E3data_estoque.Value) +
                      ' and hora_estoque <=' +
                      Texto_Mysql(FormatDateTime('hh:nn:ss', TPAF_E3hora_estoque.Value)));

      if DM.TPAF_E3.IsEmpty then
      begin
         //elimina os registros
         Log('Export_E3','E2', 'removendo data server');
         DM.ExecSQL('delete from paf_e3;');//ja remove os e02 via trigger

         //insere o novo registro E3
         DM.TPAf_E3.Insert;

         for i := 0 to Pred(TPAf_E3.FieldCount) do
         begin
            if (TPAf_E3.Fields[i].FieldName <> 'id') then
               DM.TPAf_E3.FieldByName(TPAf_E3.Fields[i].FieldName).Value := TPAf_E3.Fields[i].Value;
         end;

         DM.TPAf_E3.Post;

         Log('Export_E3','E2', 'transferindo dados...');
         //dentro do E3 faz o E2
         TPAF_E2.Open('select * from paf_e2 where e3=' + Texto_Mysql(TPAF_E3id.Value));
         TPAF_E2.FetchAll;
         DM.TPAF_E2.Open;

         while not TPAf_E2.Eof do //E2
         begin
            Application.ProcessMessages;
            DM.TPAf_E2.Insert;

            for i := 0 to Pred(TPAf_E2.FieldCount) do
            begin
               if (TPAf_E2.Fields[i].FieldName <> 'id')and(TPAf_E2.Fields[i].FieldName <> 'e3') then
                  DM.TPAf_E2.FieldByName(TPAf_E2.Fields[i].FieldName).Value := TPAf_E2.Fields[i].Value;
            end;

            DM.TPAF_E2e3.Value := DM.TPAF_E3id.Value;
            DM.TPAf_E2.Post;

            TPAf_E2.Next;
         end;
      end;
      TPAf_E3.Next;
   end;

   Log('Export_E3','E2', 'Atualizando hash...');
   DM.Atu_Hash;
   Log('Export_E3','E2', 'removendo data local');
   DB.ExecSQL('delete from paf_e3;');//remove o local. o e02 exclui junto, via trigger
   Log('Export_E3','E2', 'FIM');
end;
 {$ENDIF}

procedure TDM_PDV.TPAF_R01AfterInsert(DataSet: TDataSet);
begin
   Q1.Open('select max(id) from paf_r01');
   if Q1.Fields[0].AsString <> '' then
      TPAF_R01id.Value := Q1.Fields[0].AsInteger + 1
   else
      TPAF_R01id.Value := 1;
end;

procedure TDM_PDV.TPAF_R02AfterInsert(DataSet: TDataSet);
begin
   TPAF_R02id.Value := TPAF_R02.RecordCount +1;
end;

procedure TDM_PDV.TProdAfterOpen(DataSet: TDataSet);
var
   i: integer;
begin
   for i := 0 to Pred(DataSet.Fields.Count) do
   begin
      if DataSet.Fields[i] is TFloatField then
         TFloatField(DataSet.Fields[i]).DisplayFormat := '#,##0.00'
      else
      if DataSet.Fields[i] is TIntegerField then
         TIntegerField(DataSet.Fields[i]).DisplayFormat := '000';
   end;
end;

procedure TDM_PDV.TProdCalcFields(DataSet: TDataSet);
begin
   if DM_INI.ini.StoredValue['modo_farmacia_popular'] then
      TProdprecopfp.Value := TProdmedicam_vrms.Value * TProdmedic_qtcaixa.Value;
end;

procedure TDM_PDV.TProdcalculo_por_arredondamentoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := Iif(sender.AsString = 'N', 'T','A');
end;

procedure TDM_PDV.TProdcod_cstGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   text := FormatFloat('0', TProdorigem.AsInteger) + FormatFloat('00', Sender.AsInteger);
end;

procedure TDM_PDV.TProdproducao_propriaGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   Text := Iif(sender.AsString = 'N', 'T','P');
end;

procedure TDM_PDV.TTrnAfterOpen(DataSet: TDataSet);
var
   lista: tstringList;
begin
   if FileExists(Aqui('DAT','trn.txt')) then
   begin
      lista := TStringList.Create;
      lista.LoadFromFile(Aqui('DAT','trn.txt'));
      if lista.Count>0 then
      begin
         if ttrn.Locate('id', StrToIntDef(lista.Strings[0], 0), []) then
         begin
            TTrn.Edit;
            TTrncrt.AsString := lista.Strings[1];
            TTrnnsu_adm.AsString := lista.Strings[2];
            TTrnnsu_adm_canc.AsString := lista.Strings[3];
            TTrn.Post;
         end;
         DeleteFile(Aqui('DAT','trn.txt'));
      end;
      Lista.Free;
   end;
   TTrn_Item.Open;
end;

procedure TDM_PDV.TTrnAfterPost(DataSet: TDataSet);
var
   lista: tstringList;
begin
   lista := TStringList.Create;
   lista.Add(ttrnid.AsString);
   lista.Add(ttrncrt.AsString);
   lista.Add(TTrnnsu_adm.AsString);
   lista.Add(TTrnnsu_adm_canc.AsString);
   lista.SaveToFile(Aqui('DAT','trn.txt'));
   Lista.Free;
end;

procedure TDM_PDV.TVendaAfterInsert(DataSet: TDataSet);
var
   i: integer;
begin
   for i := 0 to Pred(DataSet.Fields.Count) do
   begin
      if DataSet.Fields[i] is TFloatField then
         DataSet.Fields[i].AsCurrency := 0;
   end;

   DataSet.FieldByName('cliente').AsInteger  := 1;
   DataSet.FieldByName('tipo').AsString      := 'ECF';
   DataSet.FieldByName('operador').AsInteger := DM.Operador.ID;
   DataSet.FieldByName('vendedor').AsInteger := 0;
   DataSet.FieldByName('nf').AsInteger       := 0;
   DataSet.FieldByName('cancelado').AsString := 'N';
   DataSet.FieldByName('terminal').AsString  := DM.id_Term;// DM_ECF.st_ECF_Num;
end;

procedure TDM_PDV.TVendaAfterOpen(DataSet: TDataSet);
begin
   TPFP.Open;
   TTrn.Open;
end;

procedure TDM_PDV.TVendaBeforeDelete(DataSet: TDataSet);
begin
   TVenda_Item.DisableControls;
   TVenda_Item.EmptyDataSet;
   TVenda_Item.EnableControls;
end;

procedure TDM_PDV.TVenda_ItemAfterInsert(DataSet: TDataSet);
var
   i: integer;
begin
   for i := 0 to Pred(DataSet.Fields.Count) do
   begin
      if DataSet.Fields[i] is TFloatField then
         DataSet.Fields[i].AsCurrency := 0;
   end;

   DataSet.FieldByName('venda').AsInteger := TVenda.FieldByName('id').AsInteger;
   DataSet.FieldByName('nitem').AsInteger := TVenda_Item.RecordCount + 1;
end;


end.
