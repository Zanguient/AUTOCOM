unit uDM;

interface

uses
  System.SysUtils, System.Classes, RxPlacemnt, Data.DB,
  IdBaseComponent, IdComponent, IdRawBase, IdRawClient, IdIcmpClient,
  dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.Dialogs, uFuncoes, IdAttachmentFile,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, ACBrBase,
  ACBrEnterTab, cxClasses, dxSkinsForm, cxStyles, Vcl.Forms, cxGridTableView,
  cxDBEdit, ACBrValidador, system.Variants, Datasnap.DBClient, pcnConversaoNFE,
  ACBrBoleto, ACBrBoletoFCFR, Winapi.Windows, Winapi.Messages,
  Vcl.Graphics, Vcl.Controls, FireDAC.Stan.Intf, ACBRUtil,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Comp.ScriptCommands, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.MySQL, FireDAC.Comp.Script, FireDAC.Comp.DataSet,
  ACBrMail, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdMessage, FireDAC.Stan.Util,
  FireDAC.Phys.MySQLDef, uDM_Conn;

type
  TTipoDeb = (tdBoleto, tdCarne, tdECF, tdNF, tdJr);
  TOperador = class
  private
     FNome: string;
     Fid, FAcesso: integer;

  public
      property Nome: string read FNome write Fnome;
      property ID: integer read Fid write Fid;
      property Acesso: integer read FAcesso write FAcesso;
  end;

  TDM = class(TDataModule)
    QEmpresa: TFDQuery;
    QConvenio: TFDQuery;
    QConvenioCNPJ: TStringField;
    QConvenioNOME: TStringField;
    QConvenioRAZAOSOCIAL: TStringField;
    QConvenioTEL1: TStringField;
    QConvenioTEL2: TStringField;
    QConvenioFAX: TStringField;
    QConvenioCELULAR: TStringField;
    QConvenioLOGRADOURO: TStringField;
    QConvenioCOMPLEM: TStringField;
    QConvenioBAIRRO: TStringField;
    QConvenioCIDADE: TStringField;
    QConvenioUF: TStringField;
    QConvenioCEP: TStringField;
    QConvenioIE: TStringField;
    QConvenioIM: TStringField;
    QConvenioOBS: TMemoField;
    QConvenioSUSPENSO: TStringField;
    QConvenioNMRO: TStringField;
    QConveniocodmun: TStringField;
    QOperador: TFDQuery;
    DSOperador: TDataSource;
    QVendedor: TFDQuery;
    QModNF: TFDQuery;
    QModNFmodelo: TStringField;
    QModNFnome: TStringField;
    QModNFcom_itens: TStringField;
    QEstoque_Info_compl: TFDQuery;
    DSEstoque: TDataSource;
    QEstoque_Info_complid: TIntegerField;
    QEstoque_Info_complcst: TIntegerField;
    QEstoque_Info_complicms_pc: TFloatField;
    QEstoque_Info_complreduzir: TStringField;
    QEstoque_Info_compltexto: TMemoField;
    QNCM: TFDQuery;
    QNCMcod_nbm: TStringField;
    QNCMdescr_nbm: TStringField;
    QNCMcod_ncm: TStringField;
    QNCMdescr_ncm: TStringField;
    QInventario: TFDQuery;
    QSped_CST_Tabela: TFDQuery;
    QSped_CST_Tabelacst: TIntegerField;
    QSped_CST_Tabelatabela: TIntegerField;
    QSped_Tabela: TFDQuery;
    dsSped_cst_tabela: TDataSource;
    QSped_Tabelatabela: TIntegerField;
    QSped_Tabelacod: TStringField;
    QSped_Tabelapc_aliq_pis: TFloatField;
    QSped_Tabelapc_aliq_cofins: TFloatField;
    QSped_Tabelaunidade: TStringField;
    QSped_Tabelapc_cred_pis: TFloatField;
    QSped_Tabelapc_cred_cofins: TFloatField;
    QSped_CST_Tabelaid: TIntegerField;
    QSped_Tabelatexto: TMemoField;
    QvwDest_nf: TFDQuery;
    QvwDest_nfcnpj: TStringField;
    QvwDest_nfid: TIntegerField;
    QvwDest_nfnome: TStringField;
    QvwDest_nfrazaosocial: TStringField;
    QvwDest_nftel1: TStringField;
    QvwDest_nflogradouro: TStringField;
    QvwDest_nfnmro: TStringField;
    QvwDest_nfcomplem: TStringField;
    QvwDest_nfbairro: TStringField;
    QvwDest_nfcidade: TStringField;
    QvwDest_nfuf: TStringField;
    QvwDest_nfcep: TStringField;
    QvwDest_nfie: TStringField;
    QvwDest_nfemail: TStringField;
    QvwDest_nftipo: TStringField;
    QvwDest_nfcidade_cod: TStringField;
    dsMod2: TDataSource;
    dsMod: TDataSource;
    dsCSOSN: TDataSource;
    dsCST: TDataSource;
    dsCST2: TDataSource;
    dsCSTPC: TDataSource;
    Qcfop_cst_csosn: TFDQuery;
    dscfop_cst_csosn: TDataSource;
    Qcfop_cst_csosncfop: TIntegerField;
    Qcfop_cst_csosncst: TIntegerField;
    Qcfop_cst_csosncst_pis_ent: TIntegerField;
    Qcfop_cst_csosncst_pis_sai: TIntegerField;
    Qcfop_cst_csosncst_ipi_ent: TIntegerField;
    Qcfop_cst_csosncst_ipi_sai: TIntegerField;
    Qcfop_cst_csosncst_cofins_ent: TIntegerField;
    Qcfop_cst_csosncst_cofins_sai: TIntegerField;
    Qcfop_cst_csosncfop_infor: TIntegerField;
    Qcfop_cst_csosncst_infor: TIntegerField;
    Qcfop_cst_csosncst_pis_ent_infor: TIntegerField;
    Qcfop_cst_csosncst_pis_sai_infor: TIntegerField;
    Qcfop_cst_csosncst_ipi_ent_infor: TIntegerField;
    Qcfop_cst_csosncst_ipi_sai_infor: TIntegerField;
    Qcfop_cst_csosncst_cofins_ent_infor: TIntegerField;
    Qcfop_cst_csosncst_cofins_sai_infor: TIntegerField;
    QCSTIPI: TFDQuery;
    QCSTIPIid: TIntegerField;
    QCSTIPIcst: TStringField;
    QCSTIPInome: TStringField;
    QCSTIPIacbr: TIntegerField;
    QCSTIPIdestaca_valor: TStringField;
    QCSTPIS: TFDQuery;
    QCSTPISid: TIntegerField;
    QCSTPIScst: TStringField;
    QCSTPISnome: TStringField;
    QCSTPISacbr: TIntegerField;
    QCSTPISdestaca_valor: TStringField;
    QCSTCOFINS: TFDQuery;
    QCSTCOFINSid: TIntegerField;
    QCSTCOFINScst: TStringField;
    QCSTCOFINSnome: TStringField;
    QCSTCOFINSacbr: TIntegerField;
    QCSTCOFINSdestaca_valor: TStringField;
    DSIPI: TDataSource;
    DSPIS: TDataSource;
    DSCOFINS: TDataSource;
    QCusto_Oper: TFDQuery;
    QCusto_Operid: TIntegerField;
    QCusto_Operdata: TDateField;
    QCusto_Operreceita: TFloatField;
    QCusto_Operdespesa: TFloatField;
    QCusto_Operpercent: TFloatField;
    DSBancos: TDataSource;
    DSAgencias: TDataSource;
    DSContas: TDataSource;
    DSBoleto: TDataSource;
    DSFinan_bol_Emit: TDataSource;
    QvwBoleto: TFDQuery;
    QvwBoletonumbanco: TIntegerField;
    QvwBoletonomebanco: TStringField;
    QvwBoletoagencia: TStringField;
    QvwBoletoagdig: TIntegerField;
    QvwBoletonumconta: TStringField;
    QvwBoletocondig: TIntegerField;
    QvwBoletoid: TIntegerField;
    QvwBoletoconta: TIntegerField;
    QvwBoletotipo_cobranca: TIntegerField;
    QvwBoletoorientacao_banco: TMemoField;
    QvwBoletocedente_nome: TStringField;
    QvwBoletocedente_logradouro: TStringField;
    QvwBoletocedente_bairro: TStringField;
    QvwBoletocedente_municipio: TStringField;
    QvwBoletocedente_uf: TStringField;
    QvwBoletocedente_cep: TStringField;
    QvwBoletocedente_cnpjcpf: TStringField;
    QvwBoletocedente_complemento: TStringField;
    QvwBoletocedente_tipoinscr: TIntegerField;
    QvwBoletocaract_titulo: TIntegerField;
    QvwBoletocodigo_cedente: TStringField;
    QvwBoletoconvenio: TStringField;
    QvwBoletomodalidade: TStringField;
    QvwBoletoresp_emissao: TIntegerField;
    QvwBoletolayout_remessa: TIntegerField;
    QvwBoletoarquivo_remessa: TStringField;
    QvwBoletoarquivo_retorno: TStringField;
    QvwBoletonmro_res: TStringField;
    QvwBoletomail_host: TStringField;
    QvwBoletomail_port: TIntegerField;
    QvwBoletomail_user: TStringField;
    QvwBoletomail_password: TStringField;
    QvwBoletomail_from: TStringField;
    QvwBoletomail_assunto: TStringField;
    QvwBoletomail_msg: TMemoField;
    QvwBoletomail_ssl: TStringField;
    QvwBoletomail_enviapdf: TStringField;
    QvwBoletomail_pedeconfirma: TStringField;
    QvwBoletomail_aguarda_envio: TStringField;
    QvwBoletomail_nomeremetente: TStringField;
    QvwBoletomail_tls: TStringField;
    QvwBoletopc_juros: TFloatField;
    QvwBoletopc_desc: TFloatField;
    QvwBoletopc_multa: TFloatField;
    QvwBoletodias_juros: TIntegerField;
    QvwBoletodis_desc: TIntegerField;
    QvwBoletodias_protesto: TIntegerField;
    QvwBoletoaceite: TIntegerField;
    QvwBoletocod_instr1: TStringField;
    QvwBoletocod_instr2: TStringField;
    QvwBoletoespecie: TStringField;
    QvwBoletolocal_pag: TStringField;
    QvwBoletonossonumero: TIntegerField;
    DSvwBoleto: TDataSource;
    QvwBoletocarteira: TStringField;
    QFinan_CliDeb: TFDQuery;
    QFinan_CliDebid: TIntegerField;
    QFinan_CliDebcnpj: TStringField;
    QFinan_CliDebnome: TStringField;
    QFinan_CliDebrazaosocial: TStringField;
    DSFinan_CliDeb: TDataSource;
    QFinanDeb: TFDQuery;
    DSFinanDeb: TDataSource;
    QFinanDebid: TIntegerField;
    QFinanDebtipo: TStringField;
    QFinanDebcliente: TIntegerField;
    QFinanDebid_movi: TIntegerField;
    QFinanDebnmro_doc: TStringField;
    QFinanDebdt_process: TDateField;
    QFinanDebdt_vencimento: TDateField;
    QFinanDebdt_baixa: TDateField;
    QFinanDebhora_baixa: TStringField;
    QFinanDebvalor: TFloatField;
    QFinanDebvalor_pg: TFloatField;
    QFinanDebobs: TMemoField;
    QFinanDeboperador: TIntegerField;
    QFinanCred: TFDQuery;
    DSFinanCredito: TDataSource;
    QFinanCredid: TIntegerField;
    QFinanCredtipo: TStringField;
    QFinanCreddt_process: TDateField;
    QFinanCreddt_baixa: TDateField;
    QFinanCredvalor: TFloatField;
    QFinanCredoperador: TIntegerField;
    QFinanCredbaixa: TStringField;
    QFinanCredcliente: TIntegerField;
    QFinanTotDebCred: TFDQuery;
    DSFinanTotDebCred: TDataSource;
    QFinanTotDebCredcliente: TIntegerField;
    QFinanTotDebCredtipo: TStringField;
    QFinanTotDebCredvalor: TFloatField;
    QCaixaConst: TFDQuery;
    DSCaixa: TDataSource;
    QCaixaConstid: TIntegerField;
    QCaixaConsttipo: TStringField;
    QCaixaConstentrada: TStringField;
    QCaixaConstdescricao: TStringField;
    DSFinan_Carne: TDataSource;
    QParcelas: TFDQuery;
    QParcelasid: TIntegerField;
    QParcelasdias: TIntegerField;
    QParcelaspc_juros: TFloatField;
    DSFinan_Banco_Movi: TDataSource;
    Qfinan_centro_custo: TFDQuery;
    Qfinan_centro_custoid: TIntegerField;
    Qfinan_centro_custoplano: TStringField;
    Qfinan_centro_custonivel: TIntegerField;
    Qfinan_centro_custoconta: TStringField;
    Qfinan_centro_custodescricao: TStringField;
    Qfinan_centro_custoabrev: TStringField;
    QCarga: TFDQuery;
    QCargaid: TIntegerField;
    QCargaterminal: TStringField;
    QCargapath: TStringField;
    QCargaFull: TFDQuery;
    QCargaFullid: TIntegerField;
    QCargaFullscript: TMemoField;
    QCargaFullnome_arq: TStringField;
    QVendedorid: TFDAutoIncField;
    QVendedornome: TStringField;
    QVendedorcomissao: TFloatField;
    QVendedorsenha: TStringField;
    QVendedornomered: TStringField;
    QVendedorendereco: TStringField;
    QVendedorcidade: TStringField;
    QVendedoruf: TStringField;
    QVendedortel: TStringField;
    QVendedordt_cad: TDateField;
    QVendedoratualizado: TStringField;
    QVendedorsuspenso: TStringField;
    QOperadorid: TFDAutoIncField;
    QOperadornome: TStringField;
    QOperadorcomissao: TFloatField;
    QOperadorsenha: TStringField;
    QOperadornomered: TStringField;
    QOperadorendereco: TStringField;
    QOperadorcidade: TStringField;
    QOperadoruf: TStringField;
    QOperadortel: TStringField;
    QOperadordt_cad: TDateField;
    QOperadoracesso: TIntegerField;
    QOperadoratualizado: TStringField;
    QSegur: TFDQuery;
    QSegurid: TFDAutoIncField;
    QSeguroperador: TIntegerField;
    QSegurmenu: TStringField;
    QSegurbotao: TIntegerField;
    QSegurcaption: TStringField;
    QSegurchave: TStringField;
    QEmpresaid: TFDAutoIncField;
    QEmpresarazao_social: TStringField;
    QEmpresanome_fantasia: TStringField;
    QEmpresacnpj: TStringField;
    QEmpresaie: TStringField;
    QEmpresaim: TStringField;
    QEmpresalogradouro: TStringField;
    QEmpresanumero: TStringField;
    QEmpresacomplem: TStringField;
    QEmpresabairro: TStringField;
    QEmpresacidade: TStringField;
    QEmpresaindativ: TIntegerField;
    QEmpresaperfil: TStringField;
    QEmpresacodmun: TStringField;
    QEmpresacep: TStringField;
    QEmpresauf: TStringField;
    QEmpresatel1: TStringField;
    QEmpresatel2: TStringField;
    QEmpresafax: TStringField;
    QEmpresaemail: TStringField;
    QEmpresanome_resp: TStringField;
    QEmpresacpf_resp: TStringField;
    QEmpresarg_resp: TStringField;
    QEmpresasubst_trib: TStringField;
    QEmpresacontr_ipi: TStringField;
    QEmpresacont_nome: TStringField;
    QEmpresacont_cpf: TStringField;
    QEmpresacont_crc: TStringField;
    QEmpresacont_cep: TStringField;
    QEmpresacont_cnpj: TStringField;
    QEmpresacont_logradouro: TStringField;
    QEmpresacont_nmro: TStringField;
    QEmpresacont_complem: TStringField;
    QEmpresacont_bairro: TStringField;
    QEmpresacont_tel: TStringField;
    QEmpresacont_fax: TStringField;
    QEmpresacont_email: TStringField;
    QEmpresacont_cidade: TStringField;
    QEmpresacont_codmun: TStringField;
    QEmpresacont_uf: TStringField;
    QEmpresacnae_prim: TStringField;
    QEmpresacnae_sec: TStringField;
    QEmpresafarmac_cpf: TStringField;
    QEmpresafarmac_crf: TStringField;
    QEmpresafarmac_crf_uf: TStringField;
    QEmpresafarmac_nome: TStringField;
    QCST: TFDQuery;
    QInfo_compl: TFDQuery;
    QCSTid: TFDAutoIncField;
    QCSTnome: TStringField;
    QCSTacbr: TIntegerField;
    QCSTcst: TIntegerField;
    QCSTst: TStringField;
    QCSTSimplesNacional: TStringField;
    QAliq: TFDQuery;
    QAliqid: TFDAutoIncField;
    QAliqnome: TStringField;
    QAliqcod_if: TStringField;
    QAliqicms: TFloatField;
    QAliqusa: TStringField;
    QCFOP: TFDQuery;
    QCFOPid: TFDAutoIncField;
    QCFOPcfop: TIntegerField;
    QCFOPdescricao: TStringField;
    QCFOPdescr_completa: TStringField;
    QCFOPcst_pis: TIntegerField;
    QCli: TFDQuery;
    QCliid: TFDAutoIncField;
    QClicnpj: TStringField;
    QClinome: TStringField;
    QClirazaosocial: TStringField;
    QClitel1: TStringField;
    QClitel2: TStringField;
    QClifax: TStringField;
    QClicelular: TStringField;
    QClitipo_tel1: TStringField;
    QClitipo_tel2: TStringField;
    QClisituacao: TStringField;
    QClilogradouro: TStringField;
    QClinmro: TStringField;
    QClicomplem: TStringField;
    QClibairro: TStringField;
    QClicidade: TStringField;
    QCliuf: TStringField;
    QClicep: TStringField;
    QCliendcobranca: TStringField;
    QClilogradourocobranca: TStringField;
    QClinmrocobranca: TStringField;
    QClicomplemcobranca: TStringField;
    QClicidadecobranca: TStringField;
    QClibairrocobranca: TStringField;
    QClicepcobranca: TStringField;
    QCliufcobranca: TStringField;
    QCliie: TStringField;
    QCliim: TStringField;
    QClirg: TStringField;
    QClisuspenso: TStringField;
    QClidevedor: TStringField;
    QCliclientedesde: TDateField;
    QClipai: TStringField;
    QClimae: TStringField;
    QClireferencia: TMemoField;
    QClidatanasc: TDateField;
    QClilimite: TFloatField;
    QCliconvenio: TLongWordField;
    QClihaver: TFloatField;
    QCliobs: TMemoField;
    QClisaldo: TFloatField;
    QCliinfoutil: TStringField;
    QCliemail: TStringField;
    QClicidade_cod: TIntegerField;
    QCliindicacao: TIntegerField;
    QClicodmun: TStringField;
    QClicodmuncobranca: TStringField;
    QCliusar_endsec_entrega: TStringField;
    QCliusr_endsec_cobranca: TStringField;
    QForn: TFDQuery;
    QFornid: TFDAutoIncField;
    QForncnpj: TStringField;
    QFornnome: TStringField;
    QFornrazaosocial: TStringField;
    QForntel1: TStringField;
    QForntel2: TStringField;
    QFornfax: TStringField;
    QForncelular: TStringField;
    QForntipo_tel1: TStringField;
    QForntipo_tel2: TStringField;
    QFornsituacao: TStringField;
    QFornlogradouro: TStringField;
    QFornnmro: TStringField;
    QForncomplem: TStringField;
    QFornbairro: TStringField;
    QForncidade: TStringField;
    QFornuf: TStringField;
    QForncep: TStringField;
    QFornendcobranca: TStringField;
    QFornlogradourocobranca: TStringField;
    QFornnmrocobranca: TStringField;
    QForncomplemcobranca: TStringField;
    QForncidadecobranca: TStringField;
    QFornbairrocobranca: TStringField;
    QForncepcobranca: TStringField;
    QFornufcobranca: TStringField;
    QFornie: TStringField;
    QFornim: TStringField;
    QFornrg: TStringField;
    QFornsuspenso: TStringField;
    QForndevedor: TStringField;
    QFornclientedesde: TDateField;
    QFornpai: TStringField;
    QFornmae: TStringField;
    QFornreferencia: TMemoField;
    QForndatanasc: TDateField;
    QFornlimite: TFloatField;
    QFornhaver: TFloatField;
    QFornobs: TMemoField;
    QFornsaldo: TFloatField;
    QForndianasc: TIntegerField;
    QFornmesnasc: TIntegerField;
    QFornanonasc: TIntegerField;
    QForninfoutil: TStringField;
    QFornatualizado: TStringField;
    QFornemail: TStringField;
    QForncidade_cod: TIntegerField;
    QFornindicacao: TIntegerField;
    QForncodmun: TStringField;
    QForncodmuncobranca: TStringField;
    QFornusar_endsec_entrega: TStringField;
    QFornusr_endsec_cobranca: TStringField;
    QFPag: TFDQuery;
    QFPagid: TFDAutoIncField;
    QFPagdescr: TStringField;
    QFPagaprazo: TStringField;
    QFPagtipo: TStringField;
    QFPagindice_tef: TStringField;
    QFPaguso: TStringField;
    QSessao: TFDQuery;
    QSessaoid: TFDAutoIncField;
    QSessaonome: TStringField;
    QSessaousoint: TStringField;
    QSessaobalanca: TStringField;
    QSessaonatur_receita: TIntegerField;
    QUnidade: TFDQuery;
    QUnidadeid: TFDAutoIncField;
    QUnidadeunidade: TStringField;
    QUnidadenome: TStringField;
    QUnidadefracionavel: TStringField;
    QEstoque: TFDQuery;
    QEstoqueid: TFDAutoIncField;
    QEstoquecod_gtin: TStringField;
    QEstoquecod_interno: TIntegerField;
    QEstoquecod_aux: TStringField;
    QEstoquenome: TStringField;
    QEstoquevrcotacao: TFloatField;
    QEstoquevrcusto: TFloatField;
    QEstoquevrcusto_real: TFloatField;
    QEstoquevrvenda_vista: TFloatField;
    QEstoquepcvenda_pz: TFloatField;
    QEstoquevrvenda_prz: TFloatField;
    QEstoquevrvenda_old: TFloatField;
    QEstoquemg_lucro: TFloatField;
    QEstoqueqt_min: TFloatField;
    QEstoquequant: TFloatField;
    QEstoquequantx: TFloatField;
    QEstoqueqt_caixa: TFloatField;
    QEstoqueunidade: TIntegerField;
    QEstoqueorigem: TIntegerField;
    QEstoquecst: TIntegerField;
    QEstoquealiq_icms: TIntegerField;
    QEstoquebalanca: TStringField;
    QEstoquemedicam_apresentacao: TStringField;
    QEstoquemedicam_principio_atv: TStringField;
    QEstoquemedicam_nomelab: TStringField;
    QEstoquemedicam_portaria: TStringField;
    QEstoquemedicam_registroms: TStringField;
    QEstoquemedicam_pmc: TFloatField;
    QEstoquemedic_qtcaixa: TIntegerField;
    QEstoquemedic_fracao: TIntegerField;
    QEstoquemedic_atualizar_web: TStringField;
    QEstoquesessao: TIntegerField;
    QEstoquesuspenso: TStringField;
    QEstoquereceita: TMemoField;
    QEstoquenutricional: TMemoField;
    QEstoquepromocao: TStringField;
    QEstoquecalculo_por_arredondamento: TStringField;
    QEstoquencm: TStringField;
    QEstoqueproducao_propria: TStringField;
    QEstoquedestinacao: TStringField;
    QEstoqueincide_pis_cofins: TStringField;
    QEstoqueinfo_complem: TIntegerField;
    QEstoquecst_ipi_ent: TIntegerField;
    QEstoquecst_ipi_sai: TIntegerField;
    QEstoqueipi_pc: TFloatField;
    QEstoquecst_pis_sai: TIntegerField;
    QEstoquecst_pis_ent: TIntegerField;
    QEstoquepis_pc: TFloatField;
    QEstoquecst_cofins_ent: TIntegerField;
    QEstoquecst_cofins_sai: TIntegerField;
    QEstoquecofins_pc: TFloatField;
    QEstoquecod_receita: TIntegerField;
    QEstoquedt_ult_alte: TDateField;
    QEstoquemd5: TStringField;
    QEstoqueatualizado: TStringField;
    QEstoquemedicam_vrms: TFloatField;
    QEstoquesped_tabela: TIntegerField;
    QEstoquegrade: TIntegerField;
    QFinan_bol_Emit: TFDQuery;
    QFinan_bol_Emitid: TFDAutoIncField;
    QFinan_bol_Emitdata_process: TDateField;
    QFinan_bol_Emitdt_vencimento: TDateField;
    QFinan_bol_Emitdt_baixa_canc: TDateField;
    QFinan_bol_Emitboleto: TIntegerField;
    QFinan_bol_Emitbaixa: TStringField;
    QFinan_bol_Emitcancelado: TStringField;
    QFinan_bol_Emitnossonmro: TStringField;
    QFinan_bol_Emitvalor: TFloatField;
    QFinan_bol_Emitvalor_pg: TFloatField;
    QFinan_bol_Emitjuros_dias: TFloatField;
    QFinan_bol_Emitmulta: TFloatField;
    QFinan_bol_Emitdesconto: TFloatField;
    QFinan_bol_Emitlinha_dig: TStringField;
    QFinan_bol_Emitsacado_cnpj: TStringField;
    QFinan_bol_Emitsacado_nome: TStringField;
    QFinan_bol_Emitsacado_logradouro: TStringField;
    QFinan_bol_Emitsacado_nmro: TStringField;
    QFinan_bol_Emitsacado_bairro: TStringField;
    QFinan_bol_Emitsacado_municipio: TStringField;
    QFinan_bol_Emitsacado_uf: TStringField;
    QFinan_bol_Emitsacado_cep: TStringField;
    QFinan_bol_Emitsacado_email: TStringField;
    QFinan_bol_Emitinstr: TMemoField;
    QFinan_bol_Emitobs: TMemoField;
    QFinan_bol_Emitdt_atualiz: TSQLTimeStampField;
    QFinan_bol_Emitcod_instr1: TStringField;
    QFinan_bol_Emitcod_instr2: TStringField;
    QFinan_bol_Emitpath_boleto: TStringField;
    QFinan_bol_Emitlinha1: TStringField;
    QFinan_bol_Emitlinha2: TStringField;
    QFinan_bol_Emitimprimir: TStringField;
    QFinan_bol_Emittipo: TStringField;
    QFinan_bol_Emitid_movi: TIntegerField;
    QDebito: TFDQuery;
    QDebitoid: TFDAutoIncField;
    QDebitotipo: TStringField;
    QDebitocliente: TIntegerField;
    QDebitoid_movi: TIntegerField;
    QDebitonmro_doc: TStringField;
    QDebitodt_process: TDateField;
    QDebitodt_vencimento: TDateField;
    QDebitodt_baixa: TDateField;
    QDebitohora_baixa: TStringField;
    QDebitovalor: TFloatField;
    QDebitovalor_pg: TFloatField;
    QDebitoobs: TMemoField;
    QDebitooperador: TIntegerField;
    QFinan_Carne: TFDQuery;
    QFinan_Carneid: TFDAutoIncField;
    QFinan_Carnesacado: TIntegerField;
    QFinan_Carnedata_process: TDateField;
    QFinan_Carnedt_vencimento: TDateField;
    QFinan_Carnedt_baixa_canc: TDateField;
    QFinan_Carnebaixa: TStringField;
    QFinan_Carnecancelado: TStringField;
    QFinan_Carnenmro: TStringField;
    QFinan_Carnevalor: TFloatField;
    QFinan_Carnevalor_pg: TFloatField;
    QFinan_Carnejuros_dias: TFloatField;
    QFinan_Carnemulta: TFloatField;
    QFinan_Carnedesconto: TFloatField;
    QFinan_Carneobs: TMemoField;
    QFinan_Carnedt_atualiz: TSQLTimeStampField;
    QFinan_Carnetipo: TStringField;
    QFinan_Carneid_movi: TIntegerField;
    QCaixa: TFDQuery;
    QCaixaid: TFDAutoIncField;
    QCaixahora: TStringField;
    QCaixadata: TDateField;
    QCaixatipo: TStringField;
    QCaixadescricao: TStringField;
    QCaixavalor: TFloatField;
    QCaixaentrada: TStringField;
    QCaixaid_movi: TIntegerField;
    QCaixaterminal: TStringField;
    QCaixaoperador: TIntegerField;
    QBancos: TFDQuery;
    QBancosid: TFDAutoIncField;
    QBancosnumbanco: TIntegerField;
    QBancosnomebanco: TStringField;
    QAgencias: TFDQuery;
    QAgenciasid: TFDAutoIncField;
    QAgenciasbanco: TIntegerField;
    QAgenciasagencia: TStringField;
    QAgenciasdig: TIntegerField;
    QAgenciasnome: TStringField;
    QBoleto: TFDQuery;
    QBoletoid: TFDAutoIncField;
    QBoletoconta: TIntegerField;
    QBoletotipo_cobranca: TIntegerField;
    QBoletoorientacao_banco: TMemoField;
    QBoletocedente_nome: TStringField;
    QBoletocedente_logradouro: TStringField;
    QBoletocedente_bairro: TStringField;
    QBoletocedente_municipio: TStringField;
    QBoletocedente_uf: TStringField;
    QBoletocedente_cep: TStringField;
    QBoletocedente_cnpjcpf: TStringField;
    QBoletocedente_complemento: TStringField;
    QBoletocedente_tipoinscr: TIntegerField;
    QBoletocaract_titulo: TIntegerField;
    QBoletoconvenio: TStringField;
    QBoletomodalidade: TStringField;
    QBoletoresp_emissao: TIntegerField;
    QBoletolayout_remessa: TIntegerField;
    QBoletoarquivo_remessa: TStringField;
    QBoletoarquivo_retorno: TStringField;
    QBoletonmro_res: TStringField;
    QBoletomail_host: TStringField;
    QBoletomail_port: TIntegerField;
    QBoletomail_user: TStringField;
    QBoletomail_password: TStringField;
    QBoletomail_from: TStringField;
    QBoletomail_assunto: TStringField;
    QBoletomail_msg: TMemoField;
    QBoletomail_ssl: TStringField;
    QBoletomail_enviapdf: TStringField;
    QBoletomail_pedeconfirma: TStringField;
    QBoletomail_aguarda_envio: TStringField;
    QBoletomail_nomeremetente: TStringField;
    QBoletomail_tls: TStringField;
    QBoletopc_juros: TFloatField;
    QBoletopc_desc: TFloatField;
    QBoletopc_multa: TFloatField;
    QBoletodias_juros: TIntegerField;
    QBoletodis_desc: TIntegerField;
    QBoletodias_protesto: TIntegerField;
    QBoletoaceite: TIntegerField;
    QBoletocod_instr1: TStringField;
    QBoletocod_instr2: TStringField;
    QBoletoespecie: TStringField;
    QBoletolocal_pag: TStringField;
    QBoletonossonumero: TIntegerField;
    QBoletocarteira: TStringField;
    QContas: TFDQuery;
    QContasid: TFDAutoIncField;
    QContasagencia: TIntegerField;
    QContasconta: TStringField;
    QContasdig: TIntegerField;
    QContastipo: TStringField;
    QContassaldoinicial: TFloatField;
    QContasnome_proprietario: TStringField;
    QContascnpj: TStringField;
    QContasobs: TStringField;
    QFinan_Banco_Movi: TFDQuery;
    QFinan_Banco_Moviid: TFDAutoIncField;
    QFinan_Banco_Moviconta: TIntegerField;
    QFinan_Banco_Movicod: TStringField;
    QFinan_Banco_Movitipo: TStringField;
    QFinan_Banco_Movivalor: TFloatField;
    QFinan_Banco_Movidata: TDateField;
    QFinan_Banco_Movidocumento: TStringField;
    QFinan_Banco_Movidescricao: TStringField;
    QFinan_Banco_Moviid_movi: TIntegerField;
    cdCST: TFDMemTable;
    cdcsosn: TFDMemTable;
    cdcsosnid: TIntegerField;
    cdcsosncsosn: TStringField;
    cdCST2: TFDMemTable;
    cdCSTid: TIntegerField;
    cdCSTcst: TStringField;
    cdCSTPC: TFDMemTable;
    cdCST2id: TIntegerField;
    cdCST2cst: TStringField;
    cdMod: TFDMemTable;
    cdCSTPCid: TIntegerField;
    cdCSTPCcst: TStringField;
    cdMod2: TFDMemTable;
    cdMod2id: TIntegerField;
    cdMod2modbc: TStringField;
    cdModid: TIntegerField;
    cdModmodbc: TStringField;
    QFinan_Bol_Cli: TFDQuery;
    QFinan_Bol_Cliid: TFDAutoIncField;
    QFinan_Bol_Clicliente: TIntegerField;
    QFinan_Bol_Clidia: TIntegerField;
    QFinan_Bol_Clivalor: TFloatField;
    QFinan_Bol_Clilinha1: TStringField;
    QFinan_Bol_Clilinha2: TStringField;
    QFinan_Bol_Cliimprimir: TStringField;
    QFinan_Bol_CliNome: TStringField;
    QSoftHouse: TFDQuery;
    QSoftHouseid: TFDAutoIncField;
    QSoftHouserazao_social: TStringField;
    QSoftHousenome_fantasia: TStringField;
    QSoftHousecnpj: TStringField;
    QSoftHouseie: TStringField;
    QSoftHouseim: TStringField;
    QSoftHouselogradouro: TStringField;
    QSoftHouselaudo: TStringField;
    QSoftHousecomplem: TStringField;
    QSoftHousebairro: TStringField;
    QSoftHousecidade: TStringField;
    QSoftHousecep: TStringField;
    QSoftHouseuf: TStringField;
    QSoftHousetel1: TStringField;
    QSoftHousetel2: TStringField;
    QSoftHousefax: TStringField;
    QSoftHouseemail: TStringField;
    QSoftHousenome_resp: TStringField;
    QSoftHousecpf_resp: TStringField;
    QSoftHouserg_resp: TStringField;
    QSoftHousenome_soft: TStringField;
    QSoftHouseversao_soft: TStringField;
    QSoftHousemdoutros: TStringField;
    QSoftHousedt_geracao: TDateTimeField;
    QSoftHouseversao_er_paf: TStringField;
    QSoftHousenome_exe: TStringField;
    QSoftHousenome_contato: TStringField;
    QSoftHousemd5: TStringField;
    QSoftHousedt_atualiz: TSQLTimeStampField;
    QVenda: TFDQuery;
    DSVenda: TDataSource;
    QVenda_Item: TFDQuery;
    QVendaid: TFDAutoIncField;
    QVendatipo: TStringField;
    QVendacliente: TIntegerField;
    QVendaoperador: TIntegerField;
    QVendavendedor: TIntegerField;
    QVendacancelado: TStringField;
    QVendadata: TDateField;
    QVendahora: TStringField;
    QVendacoa: TIntegerField;
    QVendacoo: TIntegerField;
    QVendaccf: TIntegerField;
    QVendanf: TIntegerField;
    QVendacv: TMemoField;
    QVendavalor: TFloatField;
    QVendavr_desconto: TFloatField;
    QVendavr_desc_posvenda: TFloatField;
    QVendavr_pago: TFloatField;
    QVendavr_comissao: TFloatField;
    QVendavr_abat: TFloatField;
    QVendavr_din: TFloatField;
    QVendavr_chq: TFloatField;
    QVendavr_card: TFloatField;
    QVendavr_outros: TFloatField;
    QVendavr_tkt: TFloatField;
    QVendatroco: TFloatField;
    QVendaobs: TMemoField;
    QVendaterminal: TStringField;
    QVenda_Itemid: TFDAutoIncField;
    QVenda_Itemvenda: TIntegerField;
    QVenda_ItemnItem: TIntegerField;
    QVenda_ItemcProd: TIntegerField;
    QVenda_ItemcEAN: TStringField;
    QVenda_ItemxProd: TStringField;
    QVenda_ItemNCM: TStringField;
    QVenda_ItemEXTIPI: TStringField;
    QVenda_ItemCFOP: TStringField;
    QVenda_ItemuCom: TStringField;
    QVenda_ItemqCom: TFloatField;
    QVenda_ItemvUnCom: TFloatField;
    QVenda_ItemvProd: TFloatField;
    QVenda_ItemcEANTrib: TStringField;
    QVenda_ItemuTrib: TStringField;
    QVenda_ItemqTrib: TFloatField;
    QVenda_ItemvUnTrib: TFloatField;
    QVenda_ItemvOutro: TFloatField;
    QVenda_ItemvFrete: TFloatField;
    QVenda_ItemvSeg: TFloatField;
    QVenda_ItemvDesc: TFloatField;
    QVenda_IteminfAdProd: TMemoField;
    QVenda_ItemICMS_CST: TIntegerField;
    QVenda_ItemICMS_orig: TIntegerField;
    QVenda_ItemICMS_modBC: TIntegerField;
    QVenda_ItemICMS_vBC: TFloatField;
    QVenda_ItemICMS_pICMS: TFloatField;
    QVenda_ItemICMS_vICMS: TFloatField;
    QVenda_ItemICMS_CSOSN: TIntegerField;
    QVenda_ItemICMS_pCredSN: TFloatField;
    QVenda_ItemICMS_vCredICMSSN: TFloatField;
    QVenda_ItemICMS_modBCST: TIntegerField;
    QVenda_ItemICMS_pMVAST: TFloatField;
    QVenda_ItemICMS_vTabelaST: TFloatField;
    QVenda_ItemICMS_pRedBCST: TFloatField;
    QVenda_ItemICMS_vBCST: TFloatField;
    QVenda_ItemICMS_pICMSST: TFloatField;
    QVenda_ItemICMS_vICMSST: TFloatField;
    QVenda_ItemICMS_pRedBC: TFloatField;
    QVenda_ItemIPI_CST: TIntegerField;
    QVenda_ItemIPI_clEnq: TStringField;
    QVenda_ItemIPI_CNPJProd: TStringField;
    QVenda_ItemIPI_cSelo: TStringField;
    QVenda_ItemIPI_qSelo: TIntegerField;
    QVenda_ItemIPI_cEnq: TStringField;
    QVenda_ItemIPI_vBC: TFloatField;
    QVenda_ItemIPI_qUnid: TFloatField;
    QVenda_ItemIPI_vUnid: TFloatField;
    QVenda_ItemIPI_pIPI: TFloatField;
    QVenda_ItemIPI_vIPI: TFloatField;
    QVenda_ItemII_vBc: TFloatField;
    QVenda_ItemII_vDespAdu: TFloatField;
    QVenda_ItemII_vII: TFloatField;
    QVenda_ItemII_vIOF: TFloatField;
    QVenda_ItemPIS_CST: TIntegerField;
    QVenda_ItemPIS_vBC: TFloatField;
    QVenda_ItemPIS_pPIS: TFloatField;
    QVenda_ItemPIS_vPIS: TFloatField;
    QVenda_ItemPIS_qBCProd: TFloatField;
    QVenda_ItemPIS_vAliqProd: TFloatField;
    QVenda_ItemPISST_vBc: TFloatField;
    QVenda_ItemPISST_pPis: TFloatField;
    QVenda_ItemPISST_qBCProd: TFloatField;
    QVenda_ItemPISST_vAliqProd: TFloatField;
    QVenda_ItemPISST_vPIS: TFloatField;
    QVenda_ItemCOFINS_CST: TIntegerField;
    QVenda_ItemCOFINS_vBC: TFloatField;
    QVenda_ItemCOFINS_pCOFINS: TFloatField;
    QVenda_ItemCOFINS_vCOFINS: TFloatField;
    QVenda_ItemCOFINS_qBCProd: TFloatField;
    QVenda_ItemCOFINS_vAliqProd: TFloatField;
    QVenda_ItemCOFINSST_vBC: TFloatField;
    QVenda_ItemCOFINSST_pCOFINS: TFloatField;
    QVenda_ItemCOFINSST_qBCProd: TFloatField;
    QVenda_ItemCOFINSST_vAliqProd: TFloatField;
    QVenda_ItemCOFINSST_vCOFINS: TFloatField;
    QVenda_ItemISSQN_vBC: TFloatField;
    QVenda_ItemISSQN_vAliq: TFloatField;
    QVenda_ItemISSQN_vISSQN: TFloatField;
    QVenda_ItemISSQN_cMunFG: TIntegerField;
    QVenda_ItemISSQN_cListServ: TIntegerField;
    QVenda_ItemISSQN_SitTrib: TIntegerField;
    QVenda_ItemICMS_vBCSTRet: TFloatField;
    QVenda_ItemICMS_vICMSSTRet: TFloatField;
    QVenda_ItemvTotTrib: TFloatField;
    QVenda_Itemecf_aliq: TStringField;
    TPAF_R01: TFDQuery;
    TPAF_R01id: TFDAutoIncField;
    TPAF_R01nmro: TIntegerField;
    TPAF_R01serie: TStringField;
    TPAF_R01mf_adic: TStringField;
    TPAF_R01tipo: TStringField;
    TPAF_R01marca: TStringField;
    TPAF_R01modelo: TStringField;
    TPAF_R01versao_sb: TStringField;
    TPAF_R01data_sb: TDateField;
    TPAF_R01hora_sb: TStringField;
    TPAF_R02: TFDQuery;
    TPAF_R02id: TFDAutoIncField;
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
    TPAF_R03id: TFDAutoIncField;
    TPAF_R03r02: TIntegerField;
    TPAF_R03cod_tot_parcial: TStringField;
    TPAF_R03valor_tot_parcial: TFloatField;
    DSPAF_R03: TDataSource;
    DSPAF_R02: TDataSource;
    TPAF_R04: TFDQuery;
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
    DSPAF_R04: TDataSource;
    TPAF_R05: TFDQuery;
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
    TPAF_R07id: TFDAutoIncField;
    TPAF_R07r04: TIntegerField;
    TPAF_R07r06: TIntegerField;
    TPAF_R07meio_pag: TStringField;
    TPAF_R07valor: TFloatField;
    TPAF_R07extorno: TStringField;
    TPAF_R07valor_extorno: TFloatField;
    DSPAF_R07: TDataSource;
    DSPAF_R01: TDataSource;
    TPAF_E2: TFDQuery;
    TPAF_E2id: TFDAutoIncField;
    TPAF_E2e3: TIntegerField;
    TPAF_E2codigo: TStringField;
    TPAF_E2nome: TStringField;
    TPAF_E2unid: TStringField;
    TPAF_E2mensuracao: TStringField;
    TPAF_E2qtd: TFloatField;
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
    TPAF_A2: TFDQuery;
    TPAF_A2id: TFDAutoIncField;
    TPAF_A2ecf: TIntegerField;
    TPAF_A2cod_fpag: TIntegerField;
    TPAF_A2valor: TFloatField;
    TPAF_A2data: TDateField;
    TPAF_A2tipo: TIntegerField;
    TPAF_A2valor_canc: TFloatField;
    TPAF_A2r02: TIntegerField;
    TPAF_A2fpag: TStringField;
    TPAF_R01md5: TStringField;
    TPAF_R01hash: TStringField;
    TPAF_R02md5: TStringField;
    TPAF_R02hash: TStringField;
    TPAF_R03md5: TStringField;
    TPAF_R03hash: TStringField;
    TPAF_R04md5: TStringField;
    TPAF_R04hash: TStringField;
    TPAF_R05md5: TStringField;
    TPAF_R05hash: TStringField;
    TPAF_R06md5: TStringField;
    TPAF_R06hash: TStringField;
    TPAF_R07md5: TStringField;
    TPAF_R07hash: TStringField;
    TPAF_E3md5: TStringField;
    TPAF_E3hash: TStringField;
    TPAF_E2md5: TStringField;
    TPAF_E2hash: TStringField;
    TPAF_A2md5: TStringField;
    TPAF_A2hash: TStringField;
    QCaixamd5: TStringField;
    QCaixahash: TStringField;
    QVendamd5: TStringField;
    QVendahash: TStringField;
    QvwEstoque: TFDQuery;
    QvwEstoqueid: TFDAutoIncField;
    QvwEstoquecod_gtin: TStringField;
    QvwEstoquecod_interno: TIntegerField;
    QvwEstoquecod_aux: TStringField;
    QvwEstoquenome: TStringField;
    QvwEstoquevrcotacao: TFloatField;
    QvwEstoquevrcusto: TFloatField;
    QvwEstoquevrcusto_real: TFloatField;
    QvwEstoquevrvenda_vista: TFloatField;
    QvwEstoquepcvenda_pz: TFloatField;
    QvwEstoquevrvenda_prz: TFloatField;
    QvwEstoquevrvenda_old: TFloatField;
    QvwEstoquemg_lucro: TFloatField;
    QvwEstoqueqt_min: TFloatField;
    QvwEstoquequant: TFloatField;
    QvwEstoquequantx: TFloatField;
    QvwEstoqueqt_caixa: TFloatField;
    QvwEstoqueunidade: TIntegerField;
    QvwEstoquesigla_unid: TStringField;
    QvwEstoqueorigem: TIntegerField;
    QvwEstoquecst: TIntegerField;
    QvwEstoquecod_cst: TIntegerField;
    QvwEstoquealiq_icms: TIntegerField;
    QvwEstoquealiq_ecf: TStringField;
    QvwEstoquebalanca: TStringField;
    QvwEstoquegrade: TIntegerField;
    QvwEstoquemedicam_apresentacao: TStringField;
    QvwEstoquemedicam_principio_atv: TStringField;
    QvwEstoquemedicam_nomelab: TStringField;
    QvwEstoquemedicam_portaria: TStringField;
    QvwEstoquemedicam_registroms: TStringField;
    QvwEstoquemedicam_pmc: TFloatField;
    QvwEstoquemedic_qtcaixa: TIntegerField;
    QvwEstoquemedic_fracao: TIntegerField;
    QvwEstoquemedic_atualizar_web: TStringField;
    QvwEstoquesessao: TIntegerField;
    QvwEstoquesuspenso: TStringField;
    QvwEstoquereceita: TMemoField;
    QvwEstoquenutricional: TMemoField;
    QvwEstoquepromocao: TStringField;
    QvwEstoquecalculo_por_arredondamento: TStringField;
    QvwEstoquencm: TStringField;
    QvwEstoqueproducao_propria: TStringField;
    QvwEstoquedestinacao: TStringField;
    QvwEstoqueincide_pis_cofins: TStringField;
    QvwEstoqueinfo_complem: TIntegerField;
    QvwEstoquecst_ipi_ent: TIntegerField;
    QvwEstoquecst_ipi_sai: TIntegerField;
    QvwEstoqueipi_pc: TFloatField;
    QvwEstoquecst_pis_sai: TIntegerField;
    QvwEstoquecst_pis_ent: TIntegerField;
    QvwEstoquepis_pc: TFloatField;
    QvwEstoquecst_cofins_ent: TIntegerField;
    QvwEstoquecst_cofins_sai: TIntegerField;
    QvwEstoquecofins_pc: TFloatField;
    QvwEstoquecod_receita: TIntegerField;
    QvwEstoquedt_ult_alte: TDateField;
    QvwEstoquemd5: TStringField;
    QvwEstoqueatualizado: TStringField;
    QvwEstoquedt_atualiz: TSQLTimeStampField;
    QvwEstoquemedicam_vrms: TFloatField;
    QvwEstoquesped_tabela: TIntegerField;
    QvwEstoqueipi_ent_destaca_valor: TStringField;
    QvwEstoquepis_ent_destaca_valor: TStringField;
    QvwEstoquecofins_ent_destaca_valor: TStringField;
    QvwEstoqueipi_sai_destaca_valor: TStringField;
    QvwEstoquepis_sai_destaca_valor: TStringField;
    QvwEstoquecofins_sai_destaca_valor: TStringField;
    QVendapv: TStringField;
    QVendaserie_d: TIntegerField;
    TPAF_R02coo_inicial: TIntegerField;
    TPAF_R02valor_gt: TFloatField;
    QEmpresaindativ_sped: TIntegerField;
    QEmpresaefd_fiscal_data: TDateField;
    QEmpresaefd_fiscal_pc_tipo: TStringField;
    QEmpresaefd_fiscal_pc_nat: TIntegerField;
    QEmpresaefd_fiscal_pc_nivel: TIntegerField;
    QEmpresaefd_fiscal_pc_cod: TStringField;
    QEmpresaefd_fiscal_pc_nome: TStringField;
    QEmpresaefd_fiscal_cc_data: TDateField;
    QEmpresaefd_fiscal_cc_cod: TStringField;
    QEmpresaefd_fiscal_cc_nome: TStringField;
    QEmpresahash: TStringField;
    TPAF_R05cProd: TIntegerField;
    QEmpresamd5: TStringField;
    QEmpresaefd_fiscal_cod_icms_a_recolher: TStringField;
    QEmpresaefd_fiscal_dia_venc_icms: TIntegerField;
    QEmpresaefd_fiscal_mes_subseq: TStringField;
    QEmpresaefd_fiscal_cod_receita: TIntegerField;
    QOper_CRT: TFDQuery;
    QOper_CRTid: TFDAutoIncField;
    QOper_CRTcnpj: TStringField;
    QOper_CRTnome: TStringField;
    QOper_CRTrazaosocial: TStringField;
    QOper_CRTtel1: TStringField;
    QOper_CRTlogradouro: TStringField;
    QOper_CRTnmro: TStringField;
    QOper_CRTcomplem: TStringField;
    QOper_CRTbairro: TStringField;
    QOper_CRTuf: TStringField;
    QOper_CRTcodmun: TStringField;
    QOper_CRTie: TStringField;
    QOper_CRTcidade: TStringField;
    QVendaoper_crt: TStringField;
    QVendatipo_crt: TStringField;
    QEstoquehash: TStringField;
    QNatOper: TFDQuery;
    QNatOperid: TFDAutoIncField;
    QNatOpernome: TStringField;
    QNatOpertipo: TStringField;
    DSNatoper: TDataSource;
    QvwEstoquefracionavel: TStringField;
    QvwEstoqueacbr_cst: TIntegerField;
    QvwEstoqueicms_st_mod_bc: TIntegerField;
    QvwEstoqueicms_st_ptabela: TFloatField;
    QvwEstoqueicms_st_vtabela: TFloatField;
    QvwEstoqueicms_st_pmva: TFloatField;
    QvwEstoqueicms_st_picms: TFloatField;
    QvwEstoqueicms_st_p_red_bc: TFloatField;
    QEstoqueicms_st_mod_bc: TIntegerField;
    QEstoqueicms_st_ptabela: TFloatField;
    QEstoqueicms_st_vtabela: TFloatField;
    QEstoqueicms_st_pmva: TFloatField;
    QEstoqueicms_st_picms: TFloatField;
    QEstoqueicms_st_p_red_bc: TFloatField;
    QvwEstoqueicms_mod_bc: TIntegerField;
    QEstoqueicms_mod_bc: TIntegerField;
    QEmpresaefd_contr_pis_aliq: TFloatField;
    QEmpresaefd_contr_cofins_aliq: TFloatField;
    QNF: TFDQuery;
    QNFid: TFDAutoIncField;
    QNFIde_cNF: TIntegerField;
    QNFIde_natOp: TStringField;
    QNFIde_indPag: TIntegerField;
    QNFIde_modelo: TIntegerField;
    QNFIde_serie: TIntegerField;
    QNFIde_nNF: TIntegerField;
    QNFIde_dEmi: TDateField;
    QNFIde_tpNF: TIntegerField;
    QNFIde_tpEmis: TIntegerField;
    QNFIde_dSaiEnt: TDateField;
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
    QNFDest_ISUF: TStringField;
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
    QNF_Item: TFDQuery;
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
    DSNF_Item: TDataSource;
    DSNF: TDataSource;
    QNF_Duplicata: TFDQuery;
    QNF_Duplicataid: TFDAutoIncField;
    QNF_Duplicatanf: TIntegerField;
    QNF_DuplicatanDup: TStringField;
    QNF_DuplicatavDup: TFloatField;
    QNF_DuplicatadVenc: TDateField;
    QNF_Reboque: TFDQuery;
    QNF_Reboqueid: TFDAutoIncField;
    QNF_Reboquenf: TIntegerField;
    QNF_Reboqueplaca: TStringField;
    QNF_Reboqueuf: TStringField;
    QNF_Reboquerntc: TStringField;
    QNF_Reboquevagao: TStringField;
    QNF_Reboquebalsa: TStringField;
    QNF_Referenciada: TFDQuery;
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
    QNF_Volume: TFDQuery;
    QNF_Volumeid: TFDAutoIncField;
    QNF_Volumenf: TIntegerField;
    QNF_VolumeqVol: TIntegerField;
    QNF_Volumeespecie: TStringField;
    QNF_Volumemarca: TStringField;
    QNF_VolumenVol: TStringField;
    QNF_VolumepesoL: TFloatField;
    QNF_VolumepesoB: TFloatField;
    QNF_Lacre: TFDQuery;
    QNF_Lacreid: TFDAutoIncField;
    QNF_Lacrevol: TIntegerField;
    QNF_Lacrenlacre: TStringField;
    DSNF_Volume: TDataSource;
    QNF_Chave: TFDQuery;
    QNF_Chaveid: TFDAutoIncField;
    QNF_Chavenf: TIntegerField;
    QNF_Chavechave: TStringField;
    QNF_Chaverecibo: TStringField;
    QNF_Chaveprotocolo: TStringField;
    QNF_Chavecstat: TIntegerField;
    DSNF_Chave: TDataSource;
    QNF_Item_Med: TFDQuery;
    QNF_Item_Medid: TFDAutoIncField;
    QNF_Item_Meditem: TIntegerField;
    QNF_Item_Mednlote: TStringField;
    QNF_Item_Medqlote: TFloatField;
    QNF_Item_Meddfab: TDateField;
    QNF_Item_Meddven: TDateField;
    QNF_Item_Medvpmc: TFloatField;
    DSNF_Item_Med: TDataSource;
    DSNF_Duplicata: TDataSource;
    DSNF_Reboque: TDataSource;
    DSNF_Lacre: TDataSource;
    DSNF_Referenciada: TDataSource;
    QNF_cce: TFDQuery;
    QNF_cceid: TFDAutoIncField;
    QNF_ccenf: TIntegerField;
    QNF_cceseq: TIntegerField;
    QNF_ccetexto: TMemoField;
    QNF_Chavestatus: TStringField;
    QVenda_Itemtrn: TStringField;
    Qtrn: TFDQuery;
    Qtrnid: TFDAutoIncField;
    Qtrnvenda: TIntegerField;
    Qtrnnsu: TStringField;
    Qtrnnsu_adm: TStringField;
    Qtrnoperadora: TStringField;
    Qtrnvr_liq: TFloatField;
    Qtrnvr_rec: TFloatField;
    Qtrnlote: TStringField;
    Qtrnautoriz: TStringField;
    QTrn_Item: TFDQuery;
    DSTrn: TDataSource;
    Qtrncrt: TStringField;
    QTrn_Itemid: TFDAutoIncField;
    QTrn_Itemtrn: TIntegerField;
    QTrn_ItemcProd: TIntegerField;
    QTrn_Itemvrbrt: TFloatField;
    QTrn_Itemvrliq: TFloatField;
    QTrn_Itemvrdin: TFloatField;
    QTrn_Itemvrbrt_local: TFloatField;
    QTrn_Itemvrliq_local: TFloatField;
    QTrn_Itempc_desc: TFloatField;
    QTrn_Itemparcial: TStringField;
    QTrn_Itemean: TStringField;
    QTrn_Itemqtd: TFloatField;
    QTrn_Itemcomplem: TStringField;
    QPFP: TFDQuery;
    QPFPid: TFDAutoIncField;
    QPFPvenda: TIntegerField;
    QPFPdt_receita: TDateField;
    QPFPcrm: TStringField;
    QPFPuf_crm: TStringField;
    QPFPcpf_farma: TStringField;
    QPFPcod_autoriz: TStringField;
    QPFPhora_envioreq: TTimeField;
    QPFPhora_recreq: TTimeField;
    QPFPhora_evioconfreq: TTimeField;
    QPFPhorarecconf: TTimeField;
    QPFPhora_eviodadosconf: TTimeField;
    QPFPhora_recdadosconf: TTimeField;
    QPFPqtpresc: TFloatField;
    QPFPcpf_cli: TStringField;
    QPFPnome: TStringField;
    QPFPender: TStringField;
    QPFPdt_extorno: TDateTimeField;
    QPFPdt_atualiz: TSQLTimeStampField;
    TPAF_E2cProd: TIntegerField;
    TIBPTax: TFDQuery;
    QNFvTotTrib: TFloatField;
    QVenda_ItemvComissao: TFloatField;
    QAssist_cfop_Emit: TFDQuery;
    Qcfop_devol: TFDQuery;
    Qcfop_devolid: TFDAutoIncField;
    Qcfop_devolcfop: TIntegerField;
    Qcfop_devolinterno: TStringField;
    Qcfop_devolind: TStringField;
    Qcfop_devolst: TStringField;
    Qcfop_devolcst: TIntegerField;
    Qcfop_devolcst_ipi: TIntegerField;
    Qcfop_devolcst_pis: TIntegerField;
    QParcelasplano: TStringField;
    DSFinan_apagar: TDataSource;
    QFinan_apagar: TFDQuery;
    QFinan_apagarid: TFDAutoIncField;
    QFinan_apagartipo: TStringField;
    QFinan_apagarfavorec_cod: TIntegerField;
    QFinan_apagarfavorec_nome: TStringField;
    QFinan_apagarfavorec_doc: TStringField;
    QFinan_apagarid_movi: TIntegerField;
    QFinan_apagarnmro_doc: TStringField;
    QFinan_apagardt_process: TDateField;
    QFinan_apagardt_vencimento: TDateField;
    QFinan_apagardt_baixa: TDateField;
    QFinan_apagarhora_baixa: TStringField;
    QFinan_apagarvalor: TFloatField;
    QFinan_apagarvalor_multa: TFloatField;
    QFinan_apagarvalor_juros: TFloatField;
    QFinan_apagarvalor_desc: TFloatField;
    QFinan_apagarvalor_pg: TFloatField;
    QFinan_apagarobs: TMemoField;
    QFinan_apagaroperador: TIntegerField;
    QFinan_apagarcancelado: TStringField;
    QFinan_apagarcc: TStringField;
    Qfinan_ch_terc: TFDQuery;
    DSfinan_ch_terc: TDataSource;
    Qfinan_ch_tercid: TFDAutoIncField;
    Qfinan_ch_tercnmro: TStringField;
    Qfinan_ch_tercdata_em: TDateField;
    Qfinan_ch_tercdt_bompara: TDateField;
    Qfinan_ch_tercdt_devolvido: TDateField;
    Qfinan_ch_tercnome_dono: TStringField;
    Qfinan_ch_tercbanco: TIntegerField;
    Qfinan_ch_tercconta: TStringField;
    Qfinan_ch_tercvalor: TFloatField;
    Qfinan_ch_tercstatus: TStringField;
    Qfinan_ch_tercalinea: TStringField;
    Qfinan_ch_tercdt_baixa: TDateField;
    QFinan_ch_alinea: TFDQuery;
    QFinan_ch_alineaid: TFDAutoIncField;
    QFinan_ch_alineaalinea: TMemoField;
    Qfinan_ch_tercconta_depos: TIntegerField;
    QBancosusa: TStringField;
    QEstoque_perda: TFDQuery;
    QEstoque_perdaid: TFDAutoIncField;
    QEstoque_perdacProd: TIntegerField;
    QEstoque_perdacod_gtin: TStringField;
    QEstoque_perdanome: TStringField;
    QEstoque_perdaqtd: TFloatField;
    QEstoque_perdadata: TDateField;
    QEstoque_perdabaixa: TStringField;
    QBalanca: TFDQuery;
    QBalancaid: TFDAutoIncField;
    QBalancamarca: TStringField;
    QBalancaserie: TStringField;
    QBalancasessao: TStringField;
    QEstoqueteclado: TIntegerField;
    QEstoquevalidade: TIntegerField;
    QEmpresadt_atualiz: TSQLTimeStampField;
    QEmpresaefd_contr_npj: TIntegerField;
    QEmpresaefd_contr_ativ_prep: TIntegerField;
    QBoletocodigo_cedente: TStringField;
    QNF_ItemPIS_codrec: TIntegerField;
    Qtrnnsu_adm_canc: TStringField;
    QRegras_Imposto: TFDQuery;
    QRegras_Impostoid: TFDAutoIncField;
    QRegras_Impostonome: TStringField;
    QRegras_Impostocst: TIntegerField;
    QRegras_Impostoaliq: TIntegerField;
    QRegras_Impostoicp: TStringField;
    QRegras_Impostocst_pis_ent: TIntegerField;
    QRegras_Impostocst_pis_sai: TIntegerField;
    QRegras_Impostocst_cofins_ent: TIntegerField;
    QRegras_Impostocst_cofins_sai: TIntegerField;
    QRegras_Impostomod_bc: TIntegerField;
    QRegras_Impostocst_ipi_sai: TIntegerField;
    QRegras_Impostocst_ipi_ent: TIntegerField;
    QRegras_Impostoaliq_pis: TFloatField;
    QRegras_Impostoaliq_cofins: TFloatField;
    QRegras_Impostoaliq_ipi: TFloatField;
    Qtablet: TFDQuery;
    QTablet_Item: TFDQuery;
    DSTablet: TDataSource;
    Qtabletid: TFDAutoIncField;
    Qtabletcodigo: TStringField;
    QTablet_Itemid: TFDAutoIncField;
    QTablet_Itemtablet: TIntegerField;
    QTablet_Itemproduto: TIntegerField;
    QTablet_Itemqtd: TFloatField;
    QTablet_Itemcancelado: TStringField;
    Qfinan_ch_tercnome_portador: TStringField;
    Qfinan_ch_terctel_portador: TStringField;
    QConvenioid: TFDAutoIncField;
    Qcfop_cst_csosncsosn_infor: TIntegerField;
    Qcfop_cst_csosncsosn: TIntegerField;
    Qcfop_cst_csosnid: TFDAutoIncField;
    QAliqcod_prod: TByteField;
    QInfo_complid: TFDAutoIncField;
    QInfo_complcst: TIntegerField;
    QInfo_complicms_pc: TFloatField;
    QInfo_complreduzir: TStringField;
    QInfo_compltexto: TMemoField;
    QModNFid: TFDAutoIncField;
    QNFIde_Cons_Final: TIntegerField;
    QNF_Itemvr_custo: TFloatField;
    QNF_Itemvr_venda: TFloatField;
    QNF_Itemult_custo: TFloatField;
    QNFIde_Presencial: TIntegerField;
    QPFPcv: TMemoField;
    TIBPTax_Itens: TFDQuery;
    TIBPTaxid: TFDAutoIncField;
    TIBPTaxversao: TStringField;
    TIBPTaxitens: TIntegerField;
    TIBPTaxdt_vigencia_ini: TDateField;
    TIBPTaxdt_vigencia_fim: TDateField;
    TIBPTaxchave: TStringField;
    TIBPTaxfonte: TStringField;
    TIBPTax_Itensid: TFDAutoIncField;
    TIBPTax_Itensncm: TStringField;
    TIBPTax_Itensex: TStringField;
    TIBPTax_Itenstabela: TIntegerField;
    TIBPTax_Itensnome: TStringField;
    TIBPTax_Itensnacional: TFloatField;
    TIBPTax_Itensimportado: TFloatField;
    TIBPTax_Itensestadual: TFloatField;
    TIBPTax_Itensmunicipal: TFloatField;
    dsQCSOSN: TDataSource;
    QCSOSN: TFDQuery;
    QCSOSNid: TFDAutoIncField;
    QCSOSNnome: TStringField;
    QCSOSNacbr: TIntegerField;
    QCSOSNcst: TIntegerField;
    QCSOSNst: TStringField;
    QCSOSNSimplesNacional: TStringField;
    Qcfop_devolcsosn: TIntegerField;
    QDic_nf: TFDQuery;
    QDic_nfID: TFDAutoIncField;
    QDic_nfTEXTO: TMemoField;
    QAssist_cfop_Emitid: TFDAutoIncField;
    QAssist_cfop_Emitcfop: TIntegerField;
    QAssist_cfop_Emitcst: TIntegerField;
    QAssist_cfop_Emitcst_pis_ent: TIntegerField;
    QAssist_cfop_Emitcst_pis_sai: TIntegerField;
    QAssist_cfop_Emitcst_ipi_ent: TIntegerField;
    QAssist_cfop_Emitcst_ipi_sai: TIntegerField;
    QAssist_cfop_Emitcst_cofins_ent: TIntegerField;
    QAssist_cfop_Emitcst_cofins_sai: TIntegerField;
    QAssist_cfop_Emitcfop_infor: TIntegerField;
    QAssist_cfop_Emitcst_infor: TIntegerField;
    QAssist_cfop_Emitcst_pis_ent_infor: TIntegerField;
    QAssist_cfop_Emitcst_pis_sai_infor: TIntegerField;
    QAssist_cfop_Emitcst_ipi_ent_infor: TIntegerField;
    QAssist_cfop_Emitcst_ipi_sai_infor: TIntegerField;
    QAssist_cfop_Emitcst_cofins_ent_infor: TIntegerField;
    QAssist_cfop_Emitcst_cofins_sai_infor: TIntegerField;
    QEstoque_Inicial: TFDQuery;
    DSEstoqueInicial: TDataSource;
    QEstoque_Inicialid: TFDAutoIncField;
    QEstoque_Inicialcod_gtin: TStringField;
    QEstoque_Inicialnome: TStringField;
    QEstoque_Inicialiid: TLargeintField;
    QEstoque_Inicialquant: TFloatField;
    QVwQuant_Estoque: TFDQuery;
    DSVwQuant_Estoque: TDataSource;
    QVwQuant_Estoquequant: TFloatField;
    QNF_Itembaixa_estoque: TStringField;
    QInventariosessao: TStringField;
    QInventarioproduto: TStringField;
    QInventariocod_gtin: TStringField;
    QInventarionome: TStringField;
    QInventarioqtd_entr: TFloatField;
    QInventarioqtd_sai: TFloatField;
    QInventariosaldo: TFloatField;
    QInventariounid: TStringField;
    QInventariofrac: TStringField;
    QInventariocst_csosn: TIntegerField;
    QInventarioacbr_cst: TIntegerField;
    QInventarioaliq_ecf: TStringField;
    QInventarioaliq_icms: TFloatField;
    QInventarioipi_ent_destaca_valor: TStringField;
    QInventariopis_ent_destaca_valor: TStringField;
    QInventariocofins_ent_destaca_valor: TStringField;
    QInventarioipi_sai_destaca_valor: TStringField;
    QInventariopis_sai_destaca_valor: TStringField;
    QInventariocofins_sai_destaca_valor: TStringField;
    QInventarioncm: TStringField;
    QInventariovr_un: TFloatField;
    QInventariovr_estoque: TFloatField;

    procedure DataModuleCreate(Sender: TObject);
    procedure QEmpresaBeforePost(DataSet: TDataSet);
    procedure QConvenioBeforePost(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure QOperadorBeforeEdit(DataSet: TDataSet);
    procedure QOperadorBeforeInsert(DataSet: TDataSet);
    procedure QAliqBeforePost(DataSet: TDataSet);
    procedure QFornBeforePost(DataSet: TDataSet);
    procedure QFPagBeforePost(DataSet: TDataSet);
    procedure QFPagAfterInsert(DataSet: TDataSet);
    procedure QSessaoAfterInsert(DataSet: TDataSet);
    procedure QSessaoBeforePost(DataSet: TDataSet);
    procedure QUnidadeBeforePost(DataSet: TDataSet);
    procedure QUnidadeAfterInsert(DataSet: TDataSet);
    procedure QModNFAfterInsert(DataSet: TDataSet);
    procedure QEstoqueAfterInsert(DataSet: TDataSet);
    procedure QEstoqueBeforePost(DataSet: TDataSet);
    procedure QSped_TabelaAfterInsert(DataSet: TDataSet);
    procedure Qcfopcst_pisGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QCusto_OperBeforePost(DataSet: TDataSet);
    procedure QAgenciasAfterInsert(DataSet: TDataSet);
    procedure QAgenciasBeforeInsert(DataSet: TDataSet);
    procedure QContasBeforeInsert(DataSet: TDataSet);
    procedure QContasAfterInsert(DataSet: TDataSet);
    procedure QBoletoAfterInsert(DataSet: TDataSet);
    procedure QBoletoBeforeEdit(DataSet: TDataSet);
    procedure QFinanDebtipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QFinan_CliDebAfterOpen(DataSet: TDataSet);
    procedure QFinan_CliDebAfterClose(DataSet: TDataSet);
    procedure QFinan_Banco_MoviAfterInsert(DataSet: TDataSet);
    procedure Qfinan_centro_custoBeforeDelete(DataSet: TDataSet);
    procedure QContasBeforePost(DataSet: TDataSet);
    procedure QContasAfterPost(DataSet: TDataSet);
    procedure QBancosBeforeDelete(DataSet: TDataSet);
    procedure QAgenciasBeforeDelete(DataSet: TDataSet);
    procedure QContasBeforeDelete(DataSet: TDataSet);
    procedure QBoletoBeforeDelete(DataSet: TDataSet);
    procedure QEstoqueBeforeDelete(DataSet: TDataSet);
    procedure QEstoqueAfterPost(DataSet: TDataSet);
    procedure SProcError(ASender: TObject; const AInitiator: IFDStanObject;
      var AException: Exception);
    procedure SPError(ASender: TObject; const AInitiator: IFDStanObject;
      var AException: Exception);
    procedure QOperadorBeforeDelete(DataSet: TDataSet);
    procedure Q1Error(ASender: TObject; const AInitiator: IFDStanObject; var AException: Exception);
    procedure QCSTBeforePost(DataSet: TDataSet);
    procedure QcfopBeforePost(DataSet: TDataSet);
    procedure QVendedorBeforePost(DataSet: TDataSet);
    procedure QModNFBeforePost(DataSet: TDataSet);
    procedure QInfo_complBeforePost(DataSet: TDataSet);
    procedure QNCMBeforePost(DataSet: TDataSet);
    procedure QInventarioBeforePost(DataSet: TDataSet);
    procedure QDebitoBeforePost(DataSet: TDataSet);
    procedure QFinan_CliDebBeforePost(DataSet: TDataSet);
    procedure QFinanDebBeforePost(DataSet: TDataSet);
    procedure QFinanCredBeforePost(DataSet: TDataSet);
    procedure QFinanTotDebCredBeforePost(DataSet: TDataSet);
    procedure QCaixaBeforePost(DataSet: TDataSet);
    procedure QCaixaConstBeforePost(DataSet: TDataSet);
    procedure QParcelasBeforePost(DataSet: TDataSet);
    procedure QBancosBeforePost(DataSet: TDataSet);
    procedure QAgenciasBeforePost(DataSet: TDataSet);
    procedure QBoletoBeforePost(DataSet: TDataSet);
    procedure QFinan_CarneBeforePost(DataSet: TDataSet);
    procedure QFinan_bol_EmitBeforePost(DataSet: TDataSet);
    procedure QFinan_Bol_CliBeforePost(DataSet: TDataSet);
    procedure QCSTIPIBeforePost(DataSet: TDataSet);
    procedure QCSTPISBeforePost(DataSet: TDataSet);
    procedure QCSTCOFINSBeforePost(DataSet: TDataSet);
    procedure QOperadorBeforePost(DataSet: TDataSet);
    procedure QEstoque_Info_complBeforePost(DataSet: TDataSet);
    procedure QSped_CST_TabelaBeforePost(DataSet: TDataSet);
    procedure QSped_TabelaBeforePost(DataSet: TDataSet);
    procedure Qcfop_cst_csosnBeforePost(DataSet: TDataSet);
    procedure QCliBeforeDelete(DataSet: TDataSet);
    procedure QCliBeforeOpen(DataSet: TDataSet);
    procedure QCliBeforePost(DataSet: TDataSet);
    procedure QCliAfterInsert(DataSet: TDataSet);
    procedure QClirazaosocialValidate(Sender: TField);
    procedure QVendaAfterInsert(DataSet: TDataSet);
    procedure QVenda_ItemAfterInsert(DataSet: TDataSet);
    procedure TPAF_R03AfterInsert(DataSet: TDataSet);
    procedure TPAF_R04AfterInsert(DataSet: TDataSet);
    procedure TPAF_R05AfterInsert(DataSet: TDataSet);
    procedure TPAF_R06AfterInsert(DataSet: TDataSet);
    procedure TPAF_E2AfterInsert(DataSet: TDataSet);
    procedure QEmpresaAfterPost(DataSet: TDataSet);
    procedure TPAF_R01BeforePost(DataSet: TDataSet);
    procedure DBAfterConnect(Sender: TObject);
    procedure DBError(ASender: TObject; const AInitiator: IFDStanObject; var AException: Exception);
    procedure QOper_CRTBeforePost(DataSet: TDataSet);
    procedure QNFAfterOpen(DataSet: TDataSet);
    procedure QNFAfterClose(DataSet: TDataSet);
    procedure QNFstatusGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QNF_ItemICMS_CSTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QNF_ItemICMS_CSOSNGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QNF_ItemPIS_CSTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QNF_ItemCOFINS_CSTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QAssist_cfop_EmitBeforePost(DataSet: TDataSet);
    procedure QAssist_cfop_Emitcst_pis_entGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QAssist_cfop_Emitcst_ipi_entGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure Qcfop_devolcst_ipiGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Qcfop_devolcst_pisGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QFinan_apagarAfterInsert(DataSet: TDataSet);
    procedure QFinan_apagartipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Qfinan_ch_tercstatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QRegras_ImpostoBeforePost(DataSet: TDataSet);
    procedure QRegras_ImpostoAfterInsert(DataSet: TDataSet);
    procedure QCliAfterPost(DataSet: TDataSet);
    procedure QtabletAfterOpen(DataSet: TDataSet);
    procedure QtabletBeforeClose(DataSet: TDataSet);
    procedure Qcfop_cst_csosncstGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Qcfop_cst_csosncst_pis_entGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure Qcfop_cst_csosncst_cofins_ent_inforGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure Qcfop_cst_csosncsosnGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Qcfop_cst_csosncst_ipi_entGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QCSTcstGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Q1BeforeOpen(DataSet: TDataSet);
    procedure Qfinan_ch_tercBeforePost(DataSet: TDataSet);
    procedure QFinan_apagarBeforePost(DataSet: TDataSet);
    procedure QFinan_ch_alineaBeforePost(DataSet: TDataSet);
    procedure QSoftHouseBeforePost(DataSet: TDataSet);
    procedure Qcfop_cst_csosnError(ASender: TObject;
      const AInitiator: IFDStanObject; var AException: Exception);
    procedure Qcfop_devolBeforePost(DataSet: TDataSet);
    procedure QFinan_CliDebBeforeClose(DataSet: TDataSet);
    procedure QCSOSNNewRecord(DataSet: TDataSet);
    procedure QCSTNewRecord(DataSet: TDataSet);
    procedure QEstoqueAfterOpen(DataSet: TDataSet);
    procedure idHandleStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure idHandleStatusInfo(const AMsg: string);
    procedure IdSMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure IdSMTPStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
  private
    procedure LimpaStr(Dataset: TDataset);
    procedure Log_it(Dataset: TDataset; msg: string = '');


  public
   var
       s_chave: string;
       Operador: TOperador;
       g_int_coringa: integer;//usado para passar dados entre forms
       g_str_coringa: string;//usado para passar dados entre forms
       erro_script: boolean;
       id_Term: string; //id do terminal

    function ExecSQL(s_script: string; raising: boolean=True): boolean;
    //procedure Pesquisar(qQuery: TADQuery; s_script: string);
    procedure GeraChave;
{$IFNDEF ATT}
{$IFNDEF SFL}
    procedure Status(Mostrar: Boolean; Msg1, Msg2: String);
 {$ENDIF}
  {$ENDIF}
    procedure Abrir_Central_Relat(modo,arq_ini: string; pasta: string = C_ST_VAZIO; arquivo: string = C_ST_VAZIO; params: string = C_ST_VAZIO);

    //atualiza as tabelas de cst pi cofins ipi
    procedure Popular_Tab_cst;

    //insere movimento fatura (financeiro)
    procedure Inserir_Carne(id_Sacado, id_Mov: integer; Dt_Venc:TDate; Nmro_Doc, Obs, Tipo: string; Valor, juros_dia, Multa, Desc: Currency);

    //insere movimento banco (financeiro)
    procedure Inserir_Movi_Banco(id_mov, conta: integer; cod, tipo: string; valor: currency; dtbaixa: TDate; nmrodoc, descricao: string);

    //Insere movimento no caixa
    procedure Inserir_Caixa(Tipo, descricao: string; Valor: Currency; id_movi: integer; Data: TDate=0; Hora: TTime=0);

    //envia boleto por e-mail
    procedure Enviar_Boleto(id:integer; email: string; anexo: string = '');

    //mostra o plano de contas associado ao movimento
    procedure Exibir_Plano(operacao:string);

    //exclui um movimento do finan_centro_custo_movi
    procedure Reverter_Plano_de_Contas(cod: string; id_mov: integer);

    //insere um movimento no finan_centro_custo_movi
    procedure Inserir_Plano_de_Contas(cod, documento, descricao: string; data,dt_pg: TDate; valor: currency; id_mov: integer);

    //insere daods em finan_debito
    procedure Insert_Debito(tipo:TTipoDeb; cliente,id_movi: integer; nmro_doc: String; dt_process,dt_vencimento: TDate; valor:Currency; obs: String);

    //autaliza registro em finan_debito
    procedure Update_Debito(id: integer; dt_baixa:TDate; hora_baixa:Ttime; valor_pg:Currency);

    //insere dados em finan_apagar
    procedure Insert_APagar(tipo: string; favorec_cod: integer; favorec_nome,favorec_doc: string;id_movi: integer; nmro_doc: string; dt_vencimento: TDate; valor: currency;obs: string);

    //gera o boleto e dados em finan_boleto_emitido
    procedure Emitir_Boleto(Vencim, DtDoc, DtProc: TDate; NmroDoc, Nome, CNPJCPF, Lograd, Nmro, Bairr, Munic, st_UF,
                            st_CEP: string; VrDoc, VrAbat, VrMoraJuros, VrDesc, Multa: Currency;
                            Linha1, Linha2, Linha3, Linha4, Linha5, Linha6, email: string; Imprimir: boolean; Report: integer;
                            Tipo_Mov: string = 'X'; id_mov: integer=0);

   function Envia_Mail(Email, Conta, Senha, Autentica, Smtp, Auth_SSL, Nom_exibe, Porta_smtp, Corpo, Destinatario, Assunto, ArqPDF: String; tipo: integer) : Boolean;

    //le o arquivo de retorno do banco (boletos)
    procedure LerArqRetorno;

    //conecta ao BD
    function Conectar: boolean;
    // ping no BD
    function pingar(ip:string=''): boolean;
    //converte UF em codigo
    function UF_To_Codigo(UF: string): integer;
    //valida cpf cnpj e outros
    function Validar_Doc(doc, complem: AnsiString; tipo: TACBrValTipoDocto): Boolean;
    //verifica duplicidade de campo em tabela
    function Verificar_Duplicidade(id,tabela,campo,campo2,valor,valor2: string): boolean;
    //testa o login
    function Procurar_Operador(login, senha: string): boolean;
    //gera codigo de barras baseado em sequencia
    function Gerar_CodBarra_Sequencia: string;
    //gera codigo de barras baseado em GTIN
    function Gerar_CodBarra_GTIN: string;
    //gera codigo de barras para balança
    function Gerar_CodBarra_Balanca: string;
    //valida CST
    function Validar_CST(Tipo:Char; CST: Integer):Boolean;
   //converte UN para integer
    function RetornarUnidade(Unid: string): Integer;
    //converte integer para UF
    function Retornar_Sigla_Unidade(Unid: integer): string;
    //convete CST para integer
    function RetornarCST(cst: string): integer;
    //retorana a id da aliq ICMS
    function RetornarAliqICMS(CST: integer; pICMS: currency): integer;
    //calcula custo operacional
    function Calcular_Custo_Oper: currency;
    //PAF atualiza o hash das tabelas
    procedure Atu_Hash;
    //PAF apaga os registros com hash = -1
    procedure Apaga_PAF;

    function Indice(campo: string): currency;

   procedure Calcular_Rateio_Desconto;
   procedure Cadastrar_PDV(num_ecf: string);

   function IBPTax(ncm: string; origem: integer): currency;
   function Comissao: currency; //calcula a comissao - usada no prevenda
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


uses
udm_ini, uAutocomConsts, uTraducao

{$IFNDEF ATT}
{$IFNDEF SFL}
,uRegras_Imposto, uStatus
{$ENDIF}
{$ENDIF}
, uViews
{$IFNDEF PV}
{$IFNDEF ATT}
{$IFNDEF SFL}
, udmnfe
{$ENDIF}
{$ENDIF}
{$ENDIF}
, uDMAux;


{$R *.dfm}

{$IFNDEF ATT}
{$IFNDEF SFL}
procedure TDM.Status(Mostrar: Boolean; Msg1, Msg2: String);
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
{$ENDIF}
{$ENDIF}

function TDM.Comissao: currency;
var
   valor: currency;
begin
   Result := 0;

   if not DM_INI.ini.StoredValue['venda_comissionada'] then //sem comissao
   begin
      exit;
   end;

   QVendedor.OPEN('select * from vendedor where id=' + Texto_Mysql(QVendavendedor.Value));

   if QVendedorcomissao.Value = 0 then //vendedor sem comissao
   begin
      exit;
   end;

   valor := QVenda_ItemvProd.AsCurrency - QVenda_ItemvDesc.AsCurrency;//pega o valor total do item - desconto

   if QVendedorcomissao.Value = 100 then//comissão sobre o produto
   begin
      DMConn.Q1.Open(vwEstoque + WherevwEstoque2 + Texto_Mysql(QVenda_Itemid.Value));

      if DMConn.Q1.Fields[0].AsCurrency = 0 then//produto sem comissao
      begin
         Result := 0;
         exit;
      end
      else
      begin
         if DM_INI.ini.StoredValue['comissao_sobre_lucro'] then //se comissao sobre o lucro
         begin
             Valor := valor - (DMConn.Q1.Fields[1].AsCurrency * QVenda_ItemqCom.Value);//obtem o lucro
             Result := Arredonda((Valor * DMConn.Q1.Fields[0].AsCurrency)/100, 3);
         end
         else//comissao direta
         begin
            Result := Arredonda((Valor * DMConn.Q1.Fields[0].AsCurrency)/100, 3);
         end;
      end;
   end
   else
   begin //comissao fixa no vendedor
      if DM_INI.ini.StoredValue['comissao_sobre_lucro'] then //comissao sobre o lucro
      begin
          Valor := valor - (DMConn.Q1.Fields[1].AsCurrency * QVenda_ItemqCom.Value);//obtem o lucro
          Result := Arredonda((Valor * QVendedorcomissao.Value)/100, 3);
      end
      else //comissao direta
      begin
         Result := Arredonda((Valor * QVendedorcomissao.Value)/100, 3);
      end;
   end;

   if (Result > 0)and(Result < 0.01) then
      Result := 0.01;

   if Result < 0 then
      Result := 0;
end;

function TDM.IBPTax(ncm: string; origem: integer): currency;
var
   i: integer;
   s: string;
begin
   Result := 0;

   for i := 8 downto 4 do
   begin
       s := copy(ncm,1,i);
       TIBPTax_Itens.Open('select * from ibptax_itens where ncm="' + s + '"');

       if not TIBPTax_Itens.IsEmpty then
       begin
         if origem in [0,2,3,4,5] then
            Result := TIBPTax_Itensnacional.AsCurrency + TIBPTax_Itensestadual.AsCurrency + TIBPTax_Itensmunicipal.AsCurrency
         else
            Result := TIBPTax_Itensimportado.AsCurrency + TIBPTax_Itensestadual.AsCurrency + TIBPTax_Itensmunicipal.AsCurrency;

         break;
       end;
   end;

   TIBPTax_Itens.Close;
end;

procedure TDM.idHandleStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
{$IFDEF GER}
//   Status(True, '', AStatusText);
{$endif}
end;

procedure TDM.idHandleStatusInfo(const AMsg: string);
begin
{$IFDEF GER}
 //  Status(True, '', 'OIHandle StatusInfo: ' + AMsg);
{$endif}
end;

procedure TDM.Calcular_Rateio_Desconto; //rateia o desconto no total e ajusta as vBC dos itens
var
   menor_trib: integer;
   desc_calc, vr, n, pe: currency;
begin
   if QVendavr_desconto.Value > 0 then
   begin
      menor_trib := 0;
      desc_calc  := 0;
      n          := QVendavalor.AsCurrency;

      QVenda_Item.DisableControls;
      QVenda_Item.First;
            //define o percentual efetivo
      pe := (QVendavr_desconto.AsCurrency / QVendavalor.AsCurrency)*100;
      pe := Arredonda(pe,2);

      while not QVenda_Item.Eof do
      begin
         if (n > QVenda_ItemICMS_vBC.AsCurrency)and
            (QVenda_ItemICMS_vBC.AsCurrency > 0)and
            (QVenda_Itemecf_aliq.AsString <> 'CANC') then //localiza e marca a menor tributação
         begin
            menor_trib := QVenda_Itemid.Value;
            n          :=  QVenda_ItemICMS_vBC.AsCurrency;
         end;

         if (QVenda_Itemecf_aliq.AsString <> 'CANC') then
         begin
            if (QVenda_ItemICMS_vBC.Value > 0) then//reduz a bc proporcional ao desconto
            begin
               vr := Arredonda((QVenda_ItemICMS_vBC.Value * pe)/100,2);
               QVenda_Item.Edit;
               QVenda_ItemICMS_vBC.AsCurrency   := QVenda_ItemICMS_vBC.Value - vr;
               QVenda_ItemICMS_vICMS.AsCurrency := Arredonda((QVenda_ItemICMS_vBC.AsCurrency *
                                                              QVenda_ItemICMS_pICMS.AsCurrency)/100, 2);
            {$IFDEF PV}
               QVenda_ItemvDesc.Value := vr; //atualiza os campos se for PV
               //QVenda_ItemvProd.Value := QVenda_ItemICMS_vBC.AsCurrency;
               DM.QVenda_ItemvComissao.Value := DM.Comissao;//recalcula a comissao
            {$ENDIF}
               QVenda_Item.Post;
            end;

            if QVenda_ItemICMS_vBC.Value >0 then
               desc_calc := desc_calc + QVenda_ItemICMS_vBC.Value
            else
              desc_calc := desc_calc + QVenda_ItemvProd.Value;
         end;

         QVenda_Item.Next;
      end;
      //no fim verifica a diferença no calculo

      vr := desc_calc - (QVendavalor.Value - QVendavr_desconto.Value);

      if (vr > 0)and(QVenda_Item.Locate('id', menor_trib, [])) then
      begin
         QVenda_Item.Edit;
         QVenda_ItemICMS_vBC.AsCurrency   := QVenda_ItemICMS_vBC.Value - vr;
         QVenda_ItemICMS_vICMS.AsCurrency := Arredonda((QVenda_ItemICMS_vBC.AsCurrency *
                                                        QVenda_ItemICMS_pICMS.AsCurrency)/100, 2);
      {$IFDEF PV}
         QVenda_ItemvDesc.Value := vr; //atualiza os campos se for PV
         //QVenda_ItemvProd.Value := QVenda_ItemICMS_vBC.AsCurrency;
         DM.QVenda_ItemvComissao.Value := DM.Comissao;//recalcula a comissao
      {$ENDIF}
         QVenda_Item.Post;
      end;

      QVenda_Item.EnableControls;
   end;
end;


procedure TDM.LimpaStr(Dataset: TDataset); //retira espaços e convete para caixa alta
var i: integer;//  s:string;
begin
   for i := 0 to dataset.FieldCount - 1 do
   begin
      if(dataset.Fields[i].FieldKind = fkData) and
        (not dataset.Fields[i].ReadOnly) and
        (not VarIsNull(dataset.Fields[i].Value))and
        (dataset.Fields[i].DataType in[ftString, ftWideString]) then
      begin
         dataset.Fields[i].AsString := AnsiUppercase(trim(dataset.Fields[i].AsString));
      end;
   end;
end;



function TDM.Validar_CST(Tipo: Char; CST: Integer): Boolean;
begin
   if (QEstoqueincide_pis_cofins.AsString = 'N')or(QEstoqueincide_pis_cofins.AsString = C_ST_VAZIO) then
   begin
      Result := true;
      exit;
   end;
  //trabalha com o indice do cst
   if tipo = 'E' then
   begin
      if (DM.QEmpresaindativ.Value <> 3)and
         (CST in[17..24]) then
      begin
         ShowMessage('CST entre 60 e 67, somente para empresa na modalidade Lucro Presumido.');
         Result := False;
         exit;
      end
      else
      begin
         Result := CST in [10..32];
      end;
   end
   else
   begin
      Result := CST in [0..9];
   end;
end;

function TDM.Validar_Doc(doc, complem: AnsiString; tipo: TACBrValTipoDocto): Boolean;
begin
   DMAux.Validador.Documento   := String(doc);
   DMAux.Validador.Complemento := String(complem);
   DMAux.Validador.TipoDocto   := tipo;

   Result := DMAux.Validador.Validar;
end;


function TDM.Verificar_Duplicidade(id, tabela, campo, campo2, valor, valor2: string): boolean;
var
   aQuery:TFDQuery;
   s, s1, s2: string;
begin
   aQuery := TFDQuery.Create(self);
   aQuery.Connection := DMConn.DB;

   if id <> C_ST_VAZIO then
      s := ' and id <> ' + Texto_Mysql(id);

   s1 := ' replace(replace(replace(' + campo + ', "/", ""), "-", "") , ".", "")' + '=' + Texto_Mysql(Number(valor));

   if campo2 <> '' then
      s2 := ' and ' + ' replace(replace(replace(' + campo2 + ', "/", ""), "-", "") , ".", "")' + '=' + Texto_Mysql(Number(valor2));


   aQuery.Open('select count(*) from ' + tabela + ' where ' + s1 + s2 + s);
   Result := aQuery.Fields[0].AsInteger > 0;
   FreeAndNil(aQuery);
end;

//converte UF em codigo
function TDM.UF_To_Codigo(UF: string): integer;
const
   c_UF: Array [1..27]  of string = ('AC','AL','AM','AP','BA','CE','DF','ES','GO',
                                     'MA','MG','MS','MT','PA','PB','PE','PI','PR',
                                     'RJ','RN','RO','RR','RS','SC','SE','SP','TO');
   c_Cod: Array [1..27]  of integer = (12,27,13,16,29,23,53,32,52,21,31,50,51,15,
                                       25,26,22,41,33,24,11,14,43,42,28,35,17);
var
   i: integer;
begin
   Result := 0;

   for i := 1 to 27 do
   begin
      if c_uf[i] = UF then
      begin
         Result := c_Cod[i];
         break;
      end;
   end;
end;


procedure TDM.IdSMTPStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
{$IFNDEF ATT}
{$IFNDEF SFL}
   Status(True, '', AStatusText);
{$ENDIF}
{$ENDIF}
end;

procedure TDM.IdSMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
{$IFNDEF ATT}
{$IFNDEF SFL}
   Status(True, '', 'ENVIO CONCLUÍDO.');
{$ENDIF}
{$ENDIF}
end;

function TDM.Indice(campo: string): currency;
begin
   DMConn.Q1.Open('select valor from indices where nome=' + Texto_Mysql(campo));
   Result := DMConn.Q1.Fields[0].AsCurrency;
end;

procedure TDM.Inserir_Caixa(Tipo, descricao: string; Valor: Currency; id_movi: integer; Data: TDate; Hora: TTime);
begin
   if Data = 0 then
      Data := Date;

   if Hora = 0 then
      Hora := Now;

   QCaixaConst.Open;
   //verifica se existe o tipo
   if not QCaixaConst.Locate('tipo', Tipo, []) then
      raise Exception.Create('Tipo "' + Tipo + '" não encontrado em CaixaConst.');

   if not QCaixa.Active then
      QCaixa.Open('select * from caixa limit 1');

   QCaixa.Insert;
   QCaixadata.Value         := Data;
   QCaixahora.AsString      := FormatDateTime('hh:nn', Hora);
   QCaixatipo.AsString      := Tipo;
   QCaixadescricao.AsString := QCaixaConstdescricao.AsString + ' ' + descricao;
   QCaixaentrada.AsString   := QCaixaConstentrada.AsString;
   QCaixaid_movi.Value      := id_movi;
   QCaixaterminal.AsString  := id_Term;
   QCaixavalor.Value        := Valor;
   QCaixaoperador.Value     := Operador.ID;
   QCaixahash.AsString      := id_Term;
   QCaixa.Post;
   QCaixa.Close;
   QCaixaConst.Close;
end;

procedure TDM.Inserir_Carne(id_Sacado, id_Mov: integer; Dt_Venc:TDate; Nmro_Doc, Obs, Tipo: string; Valor, juros_dia, Multa, Desc: Currency);
begin
   if not QFinan_Carne.Active then
      QFinan_Carne.Open('select * from finan_carne_emitido order by id desc limit 1');

   QFinan_Carne.Insert;
   QFinan_Carnesacado.Value        := id_sacado;
   QFinan_Carnedata_process.Value  := Date;
   QFinan_Carnedt_vencimento.Value := dt_venc;
   QFinan_Carnenmro.AsString       := nmro_doc;
   QFinan_Carnevalor.Value         := Valor;
   QFinan_Carnejuros_dias.Value    := juros_dia;
   QFinan_Carnemulta.Value         := Multa;
   QFinan_Carnedesconto.Value      := Desc;
   QFinan_Carneobs.AsString        := Obs;
   QFinan_Carnetipo.AsString       := Tipo;
   QFinan_Carneid_movi.Value       := id_Mov;
   QFinan_Carne.Post;
   QFinan_Carne.Refresh;//para obter o id
end;

procedure TDM.Inserir_Movi_Banco(id_mov,conta: integer; cod, tipo: string; valor: currency; dtbaixa: TDate; nmrodoc, descricao: string);
begin
   if not QFinan_Banco_Movi.Active then
      QFinan_Banco_Movi.Open('select * from finan_banco_movi limit 1');

   QFinan_Banco_Movi.Insert;
   QFinan_Banco_Moviid_movi.Value      := id_mov;
   QFinan_Banco_Moviconta.Value        := conta;
   QFinan_Banco_Movicod.AsString       := cod;
   QFinan_Banco_Movitipo.AsString      := tipo;
   QFinan_Banco_Movidata.Value         := dtbaixa;
   QFinan_Banco_Movidocumento.AsString := nmrodoc;
   QFinan_Banco_Movidescricao.AsString := descricao;
   QFinan_Banco_Movivalor.Value        := Iif(tipo = 'C', valor, Valor*-1);


   QFinan_Banco_Movi.Post;


   //informe ao plano de contas
   DMConn.Q2.Open('select * from finan_centro_custo_assoc where operacao=' + Texto_Mysql('MB' + tipo + InttoStr(conta) + cod));

   if not DMConn.Q2.IsEmpty then
      DM.Inserir_Plano_de_contas(DMConn.Q2.FieldByName('codigo').AsString,
                                 nmrodoc,
                                 DMConn.Q2.FieldByName('descricao').AsString,
                                 dtBaixa,
                                 dtBaixa,
                                 Iif(tipo = 'C', valor, Valor*-1),
                                 id_mov
      );
end;

//exclui o registro de finan_centro_custo_movi
procedure TDM.Reverter_Plano_de_Contas(cod: string; id_mov: integer);
begin
   DMConn.Q2.Open('select codigo from finan_centro_custo_assoc where operacao=' + Texto_Mysql(cod));

   if not DMConn.Q2.IsEmpty then
      ExecSQL('delete from finan_centro_custo_movi where cod=' +
                 Texto_Mysql(DMConn.Q2.Fields[0].AsString) +
                 ' and id_movi=' + Texto_Mysql(id_mov)
      );
end;

procedure TDM.SProcError(ASender: TObject; const AInitiator: IFDStanObject;
  var AException: Exception);
begin
   Log(C_221,'StoredProcedure ERRO', AException.message);
   erro_script := true;
   ShowMessage('Houve um erro ao executar a procedure SQL. Consulte o LOG.');
end;

procedure TDM.TPAF_E2AfterInsert(DataSet: TDataSet);
begin
   TPAF_E2e3.Value := TPAF_E3id.Value;
end;

procedure TDM.TPAF_R01BeforePost(DataSet: TDataSet);
begin
   DataSet.FieldByName('hash').AsString := id_Term; //fica provisoriamente com id_term ate o termino do processo
end;

procedure TDM.TPAF_R03AfterInsert(DataSet: TDataSet);
begin
   TPAF_R03r02.Value := TPAF_R02id.Value;
end;

procedure TDM.TPAF_R04AfterInsert(DataSet: TDataSet);
begin
   TPAF_R04r02.Value := TPAF_R02id.Value;
end;

procedure TDM.TPAF_R05AfterInsert(DataSet: TDataSet);
begin
   TPAF_R05r04.Value := TPAF_R04id.Value;
end;

procedure TDM.TPAF_R06AfterInsert(DataSet: TDataSet);
begin
   TPAF_R06r02.Value := TPAF_R02id.Value;
end;

//insere registro em finan_centro_custo_movi
procedure TDM.Inserir_Plano_de_contas(cod, documento, descricao: string; data, dt_pg: TDate; valor: currency; id_mov: integer);
var
   s: string;
begin
   DMConn.Q1.Open('select max(seq) from finan_centro_custo_movi where cod=' + Texto_Mysql(cod));

   if DMConn.Q1.Fields[0].AsInteger > 0 then
      s := Texto_Mysql(DMConn.Q1.Fields[0].AsInteger+1)
   else
      s := '1';

   ExecSQL('insert into finan_centro_custo_movi set cod=' +
           Texto_Mysql(cod) +
           ',seq=' + s +
           ',data=' + data_My(data) +
           ',dt_pg=' + data_My(dt_pg) +
           ',documento=' + Texto_Mysql(documento) +
           ',descricao=' + Texto_Mysql(descricao) +
           ',valor=' + Texto_Mysql(valor) +
           ',id_movi=' + Texto_Mysql(id_mov)
   );
end;

procedure TDM.Insert_APagar(tipo: string; favorec_cod: integer; favorec_nome,
  favorec_doc: string; id_movi: integer; nmro_doc: string; dt_vencimento: TDate;
  valor: currency; obs: string);
begin
   QFinan_apagar.Open;
   QFinan_apagar.Insert;
   QFinan_apagartipo.AsString          := tipo;
   QFinan_apagarfavorec_cod.Value      := favorec_cod;
   QFinan_apagarfavorec_nome.AsString  := favorec_nome;
   QFinan_apagarfavorec_doc.AsString   := favorec_doc;
   QFinan_apagarid_movi.Value          := id_movi;
   QFinan_apagarnmro_doc.AsString      := nmro_doc;
   QFinan_apagardt_process.Value       := Date;
   QFinan_apagardt_vencimento.Value    := dt_vencimento;
   QFinan_apagarvalor.Value            := valor;
   QFinan_apagarobs.AsString           := obs;
   QFinan_apagaroperador.Value         := DM.Operador.ID;
   QFinan_apagar.Post;
end;

procedure TDM.Insert_Debito(tipo: TTipoDeb; cliente, id_movi: integer;
  nmro_doc: String; dt_process, dt_vencimento: TDate; valor: Currency;
  obs: String);
var
   s: string;
   i: integer;
begin
   case tipo of
      tdBoleto: s := 'B';
      tdCarne:  s := 'C';
      tdECF:    s := 'V';
      tdNF:     s := 'N';
      tdJr:     s := 'J';
   end;

   i := 0;

   Repeat
      QDebito.Close;
      QDebito.Open('select * from finan_debito where cliente=' + Texto_Mysql(cliente) +
                   ' and tipo=' + Texto_Mysql(s) +
                   ' and id_movi=' + Texto_Mysql(id_movi)
      );

      if QDebito.IsEmpty then
      begin
         QDebito.Close;
         QDebito.Open('select * from finan_debito limit 1');
         QDebito.Insert;
         QDebitotipo.AsString       := s;
         QDebitocliente.Value       := cliente;
         QDebitoid_movi.Value       := id_movi;
         QDebitonmro_doc.AsString   := nmro_doc;
         QDebitodt_process.Value    := dt_process;
         QDebitodt_vencimento.Value := dt_vencimento;
         QDebitovalor.Value         := valor;
         QDebitoobs.AsString        := obs;
         QDebitooperador.Value      := Operador.ID;
         QDebito.Post;
      end;

      QDebito.Open('select * from finan_debito where cliente=' + Texto_Mysql(cliente) +
                   ' and tipo=' + Texto_Mysql(s) +
                   ' and id_movi=' + Texto_Mysql(id_movi)
      );
      inc(i);
      Until (not QDebito.IsEmpty)or (i>2);

      if i > 2 then
         Log('Carga_server','Insert_Debito', 'Não foi possível gravar o débito');
end;


procedure TDM.Update_Debito(id: integer; dt_baixa: TDate;
  hora_baixa: Ttime; valor_pg: Currency);
begin
   QDebito.Open('select * from finan_debito where id=' + Texto_Mysql(id));

   if QDebito.IsEmpty then
      raise Exception.Create('Debito ' + IntToStr(id) + ' não encontrado.');

   QDebito.Edit;
   QDebitooperador.Value      := Operador.ID;
   QDebitodt_baixa.Value      := dt_baixa;
   QDebitohora_baixa.AsString := FormatDateTime('hh:nn', hora_baixa);
   QDebitovalor_pg.Value      := valor_pg;
   QDebito.Post;
end;

procedure TDM.QAliqBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);

   if QAliqcod_prod.Value > 255 then
      raise Exception.Create('O código do produto não pode ser maior do que 255');

   if not ValidarCampos(Dataset, ['nome','cod_if','icms','cod_prod'], '') then
      raise Exception.Create('Faça a correção nos campos informados');
end;

procedure TDM.QAssist_cfop_EmitBeforePost(DataSet: TDataSet);
begin
   if not ValidarCampos(Dataset, ['cfop','cst'], '') then
      raise Exception.Create('Faça as correções nos campos informados');

   if CharInSet(QAssist_cfop_Emitcfop.AsString[1], ['5','6']) then
   begin
      if not ValidarCampos(Dataset, ['cst_pis_sai','cst_ipi_sai','cst_cofins_sai'], '') then
         raise Exception.Create('Faça as correções nos campos informados');
   end
   else
   begin
      if not ValidarCampos(Dataset, ['cst_pis_ent','cst_ipi_ent','cst_cofins_ent'], '') then
         raise Exception.Create('Faça as correções nos campos informados');
   end;

   QAssist_cfop_Emitcst_cofins_ent.Value := QAssist_cfop_Emitcst_pis_ent.Value;
   QAssist_cfop_Emitcst_cofins_sai.Value := QAssist_cfop_Emitcst_pis_sai.Value;
end;

procedure TDM.QAssist_cfop_Emitcst_ipi_entGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if sender.Value <=0 then
      text := '--'
   else
      Text := C_ARR_3[sender.AsInteger];
end;

procedure TDM.QAssist_cfop_Emitcst_pis_entGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if sender.Value <=0 then
      text := '--'
   else
      Text := C_ARR_9[sender.AsInteger];
end;

procedure TDM.QBancosBeforeDelete(DataSet: TDataSet);
begin
   DMConn.Q5.Open('select count(*) from finan_banco_agencia where banco=' + Texto_Mysql(QBancosid.value));

   if (DMConn.Q5.Fields[0].AsInteger > 0) then
      raise Exception.Create(C_297);
end;

procedure TDM.QBancosBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
   if not ValidarCampos(Dataset, ['numbanco','nomebanco'], '') then
      raise Exception.Create('Faça as correções nos campos informados');
end;

procedure TDM.QBoletoAfterInsert(DataSet: TDataSet);
begin
   QBoletoconta.Value := QContasid.Value;
end;

procedure TDM.QBoletoBeforeDelete(DataSet: TDataSet);
begin
   DMConn.Q5.Open('select count(*) from finan_boleto_emitido where boleto=' + Texto_Mysql(QBoletoid.value));

   if (DMConn.Q5.Fields[0].AsInteger > 0) then
      raise Exception.Create(C_297);
end;

procedure TDM.QBoletoBeforeEdit(DataSet: TDataSet);
begin
   if DM.QContas.IsEmpty then
      raise Exception.Create('Informe a conta.');
end;

procedure TDM.QBoletoBeforePost(DataSet: TDataSet);
begin
//   LimpaStr(DataSet);
end;

procedure TDM.QCaixaBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
end;

procedure TDM.QCaixaConstBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
end;

procedure TDM.QcfopBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
   if not ValidarCampos(Dataset, ['cfop','descricao','descr_completa'], '') then
      raise Exception.Create('Faça a correção nos campos informados');
end;

procedure TDM.Qcfopcst_pisGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if sender.Value <=0 then
      text := '--'
   else
      Text := C_ARR_9[sender.AsInteger];
end;

procedure TDM.Qcfop_cst_csosnBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
   //verifica por registro com duplicidade
   DMConn.Q1.Open('select id from cfop_cst_csosn where cfop='
                  + Texto_Mysql(Qcfop_cst_csosncfop.Value)
                  + ' and cst='
                  + Texto_Mysql(Qcfop_cst_csosncst.Value)
                  + ' and csosn='
                  + Texto_Mysql(Qcfop_cst_csosncsosn.Value)
                  + ' and cst_pis_sai='
                  + Texto_Mysql(Qcfop_cst_csosncst_pis_sai.Value)
                  + ' and cst_ipi_sai='
                  + Texto_Mysql(Qcfop_cst_csosncst_ipi_sai.Value)
                  + ' and cst_cofins_sai='
                  + Texto_Mysql(Qcfop_cst_csosncst_cofins_sai.Value)
   );

   if Qcfop_cst_csosn.State = dsInsert then
   begin
      if DMConn.Q1.Fields[0].AsInteger > 0 then
         raise Exception.Create('Esta regra já existe.');
   end
   else
   if Qcfop_cst_csosn.State = dsedit then
   begin
      if DMConn.Q1.Fields[0].AsInteger <> Qcfop_cst_csosnid.Value then
         raise Exception.Create('Esta regra já existe.');
   end;
end;

procedure TDM.Qcfop_cst_csosncsosnGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   text := C_ARR_4[sender.AsInteger];
end;

procedure TDM.Qcfop_cst_csosncstGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   Text := C_ARR_5[sender.AsInteger];
end;

procedure TDM.Qcfop_cst_csosncst_cofins_ent_inforGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := C_ARR_9[sender.AsInteger];
end;

procedure TDM.Qcfop_cst_csosncst_ipi_entGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := C_ARR_3[sender.AsInteger];
end;

procedure TDM.Qcfop_cst_csosncst_pis_entGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   Text := C_ARR_9[sender.AsInteger];
end;

procedure TDM.Qcfop_cst_csosnError(ASender: TObject;
  const AInitiator: IFDStanObject; var AException: Exception);
begin
;
end;

procedure TDM.Qcfop_devolBeforePost(DataSet: TDataSet);
begin
   if not ValidarCampos(Dataset, ['cfop','interno','ind','st','cst','csosn','cst_ipi','cst_pis'], '') then
      raise Exception.Create('Faça a correção nos campos informados');
end;

procedure TDM.Qcfop_devolcst_ipiGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if sender.Value <=0 then
      text := '--'
   else
      Text := C_ARR_3[sender.AsInteger];
end;

procedure TDM.Qcfop_devolcst_pisGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if sender.Value <=0 then
      text := '--'
   else
      Text := C_ARR_9[sender.AsInteger];
end;

procedure TDM.QCliAfterInsert(DataSet: TDataSet);
begin
   QClisuspenso.Value := 'N';
   QClilimite.Value   := 0;
end;

procedure TDM.QCliAfterPost(DataSet: TDataSet);
begin
    DMConn.DB.ExecSQL('call atu_pdv_cli(' + Texto_Mysql(QCliId.AsString)+');');
end;

procedure TDM.QCliBeforeDelete(DataSet: TDataSet);
var
   i: integer;
begin //função mysql que retorna a contagem dos registros em tabelas dependentes
   DMConn.Q5.Open('select fn_dep_cli(' + Texto_Mysql(QCliid.value) + ')');

   i := DMConn.Q5.Fields[0].AsInteger;

   if i > 0 then
      raise Exception.Create(C_297);

   ExecSQL('delete from finan_bol_cli where cliente=' + Texto_Mysql(QCliid.value));
end;

procedure TDM.QCliBeforeOpen(DataSet: TDataSet);
begin
   if DM_INI.INI.StoredValue['nao_permite_cad_incompleto'] then
   begin
       DataSet.FieldByName('bairro').Required   := True;
       DataSet.FieldByName('cep').Required      := True;
       DataSet.FieldByName('datanasc').Required := True;
       DataSet.FieldByName('cnpj').Required     := True;
       DataSet.FieldByName('ie').Required       := True;
   end;
end;

procedure TDM.QCliBeforePost(DataSet: TDataSet);
   var s: string;
   b: boolean;
begin
   LimpaStr(DataSet);
   b := false;

   if QCliclientedesde.Value = 0 then
      QCliclientedesde.Value := Date;
   //coloca razao no nome se este = vazio
   if Trim(QClinome.AsString) = C_ST_VAZIO then
      QClinome.AsString := QClirazaosocial.AsString;
   //valida o cpf/cnpj e verifica se ja existe
   if Number(QCliCNPJ.AsString) <> C_ST_VAZIO then
   begin
      if Validar_Doc(QClicnpj.AsAnsiString, C_ST_VAZIO, docCPF) then
      begin
         QClicnpj.AsAnsiString := AnsiString(DMAux.Validador.Formatar);
         //para CPF é possivel ter mais de uma IE, assim, verifica a combinação
         if (Verificar_Duplicidade(QCliid.AsString, 'cliente', 'cnpj', 'ie', QClicnpj.AsString, QCliie.AsString)) then
         begin
            s := s + (C_298) + C_CRLF;
         end;
         b := true;
      end
      else
      if not Validar_Doc(QClicnpj.AsAnsiString, C_ST_VAZIO, docCNPJ) then
      begin
         s := s + ('CNPJ/CPF inválido.') + C_CRLF;
      end
      else
      if not b then
         QClicnpj.AsAnsiString := AnsiString(DMAux.Validador.Formatar);

      if (not b)and (Verificar_Duplicidade(QCliid.AsString, 'cliente', 'cnpj', '', QClicnpj.AsString, '')) then
         s := s + (C_225) + C_CRLF;
   end;
   //valida a UF
   if not Validar_Doc(QCliuf.AsAnsiString, C_ST_VAZIO, docUF) then
   begin
     s := s + (DMAux.Validador.MsgErro) + C_CRLF;
   end;
   //valida a IE
   if Validar_Doc(QCliie.AsAnsiString, QCliuf.AsAnsiString, docInscEst) then
      QCliie.AsAnsiString := AnsiString(DMAux.Validador.Formatar)
      else
      s := s + (DMAux.Validador.MsgErro) + C_CRLF;

   if not ValidarCampos(QCli, ['razaosocial','logradouro','nmro','bairro', 'codmun', 'uf','cep'], s) then
      raise Exception.Create('Faça as correções nos campos informados.');

   //preenche os dados de cobrança se vazios
   if (Trim(QClilogradouro.AsString) <> C_ST_VAZIO)and
      (Trim(QClilogradourocobranca.AsString) = C_ST_VAZIO) then
   begin
      QClilogradourocobranca.AsString := QClilogradouro.AsString;
      QClinmrocobranca.AsString       := QClinmro.AsString;
      QClicomplemcobranca.AsString    := QClicomplem.AsString;
      QClibairrocobranca.AsString     := QClibairro.AsString;
      QCliufcobranca.AsString         := QCliuf.AsString;
      QClicidadecobranca.AsString     := QClicidade.AsString;
      QClicodmuncobranca.AsString     := QClicodmun.AsString;
      QClicepcobranca.AsString        := QClicep.AsString;
    end;
end;

procedure TDM.QClirazaosocialValidate(Sender: TField);
begin
   if Trim(TField(Sender).AsString) = C_ST_VAZIO then
      raise Exception.Create(TField(sender).DisplayLabel +  ': Valor incorreto.');
end;

procedure TDM.Q1BeforeOpen(DataSet: TDataSet);
begin
   Log_it(Dataset, '');
end;

procedure TDM.Q1Error(ASender: TObject; const AInitiator: IFDStanObject; var AException: Exception);
begin
   Log('SERV_Err', (ASender as TFDQuery).Name, (ASender as TFDQuery).SQL.Text + #13 +
                    AException.Message + ' ' + AInitiator.Name + ' ');
   raise Exception.Create(AException.Message);
end;

procedure TDM.QAgenciasAfterInsert(DataSet: TDataSet);
begin
   QAgenciasbanco.Value := QBancosid.Value;
end;

procedure TDM.QAgenciasBeforeDelete(DataSet: TDataSet);
begin
   DMConn.Q5.Open('select count(*) from finan_banco_conta where agencia=' + Texto_Mysql(QAgenciasid.value));

   if (DMConn.Q5.Fields[0].AsInteger > 0) then
      raise Exception.Create(C_297);
end;

procedure TDM.QAgenciasBeforeInsert(DataSet: TDataSet);
begin
   if DM.QBancos.IsEmpty then
      raise Exception.Create('Informe o banco.');
end;

procedure TDM.QAgenciasBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
   if not ValidarCampos(Dataset, ['banco','agencia','nome'], '') then
      raise Exception.Create('Faça as correções nos campos informados');
end;

procedure TDM.QContasAfterInsert(DataSet: TDataSet);
begin
   QContasagencia.Value := QAgenciasid.Value;
end;

procedure TDM.QContasAfterPost(DataSet: TDataSet);
begin
   if DataSet.Tag = 1 then
   begin
      DataSet.Tag := 0;
      DMConn.Q1.Open('select * from finan_banco_codigos where conta=' + Texto_Mysql(QContasid.Value));

      DMConn.Q1.Insert;
      DMConn.Q1.FieldByName('cod').Value     := 'EBL';
      DMConn.Q1.FieldByName('conta').Value   := QContasid.Value;
      DMConn.Q1.FieldByName('tipo').Value    := 'D';
      DMConn.Q1.FieldByName('conta').Value   := 'Extorno Boleto';
      DMConn.Q1.FieldByName('sistema').Value := 'S';
      DMConn.Q1.Post;

      DMConn.Q1.Insert;
      DMConn.Q1.FieldByName('cod').Value     := 'BOL';
      DMConn.Q1.FieldByName('conta').Value   := QContasid.Value;
      DMConn.Q1.FieldByName('tipo').Value    := 'C';
      DMConn.Q1.FieldByName('conta').Value   := 'Crédito Recebimento Boleto';
      DMConn.Q1.FieldByName('sistema').Value := 'S';
      DMConn.Q1.Post;

      DMConn.Q1.Insert;
      DMConn.Q1.FieldByName('cod').Value     := 'TBC';
      DMConn.Q1.FieldByName('conta').Value   := QContasid.Value;
      DMConn.Q1.FieldByName('tipo').Value    := 'C';
      DMConn.Q1.FieldByName('conta').Value   := 'Transferência bancária (crédito)';
      DMConn.Q1.FieldByName('sistema').Value := 'S';
      DMConn.Q1.Post;

      DMConn.Q1.Insert;
      DMConn.Q1.FieldByName('cod').Value     := 'TBR';
      DMConn.Q1.FieldByName('conta').Value   := QContasid.Value;
      DMConn.Q1.FieldByName('tipo').Value    := 'D';
      DMConn.Q1.FieldByName('conta').Value   := 'Transferência bancária (débito)';
      DMConn.Q1.FieldByName('sistema').Value := 'S';
      DMConn.Q1.Post;
   end;
end;

procedure TDM.QContasBeforeDelete(DataSet: TDataSet);
begin
   DMConn.Q5.Open('select count(*) from finan_banco_boleto where conta=' + Texto_Mysql(QContasid.value));
   DMConn.Q4.Open('select count(*) from finan_banco_movi where conta=' + Texto_Mysql(QContasid.value));

   if (DMConn.Q5.Fields[0].AsInteger > 0)or(DMConn.Q4.Fields[0].AsInteger > 0) then
      raise Exception.Create(C_297);

   ExecSQL('delete from finan_banco_codigos where conta=' + Texto_Mysql(QContasid.value));
end;

procedure TDM.QContasBeforeInsert(DataSet: TDataSet);
begin
   if DM.QAgencias.IsEmpty then
      raise Exception.Create('Informe a agência.');
end;

procedure TDM.QContasBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
   if DataSet.State = dsInsert then
      DataSet.Tag := 1;

   if not ValidarCampos(Dataset, ['agencia','conta','dig','tipo','saldoinicial','nome_proprietario','cnpj'], '') then
      raise Exception.Create('Faça as correções nos campos informados');
end;

procedure TDM.QConvenioBeforePost(DataSet: TDataSet);  //valida os dados
var
   s: string;
begin
   LimpaStr(DataSet);

   if Number(QConvenioCNPJ.AsString) <> C_ST_VAZIO then
   begin
      if Validar_Doc(Qconveniocnpj.AsAnsiString, C_ST_VAZIO, docCPF) then
         Qconveniocnpj.AsAnsiString := AnsiString(DMAux.Validador.Formatar)
      else
      if not Validar_Doc(Qconveniocnpj.AsAnsiString, C_ST_VAZIO, docCNPJ) then
      begin
         s := s + (DMAux.Validador.MsgErro) + C_CRLF;
      end
      else
         Qconveniocnpj.AsAnsiString := AnsiString(DMAux.Validador.Formatar);

      if (Verificar_Duplicidade(QConvenioid.AsString, 'convenio', 'cnpj', '', Qconveniocnpj.AsString, '')) then
         s := s + (C_225) + C_CRLF;
   end;

   if not Validar_Doc(QConveniouf.AsAnsiString, C_ST_VAZIO, docUF) then
   begin
     s := s + (DMAux.Validador.MsgErro) + C_CRLF;
   end;

   if Validar_Doc(QConvenioie.AsAnsiString, QConveniouf.AsAnsiString, docInscEst) then
      QConvenioie.AsAnsiString := AnsiString(DMAux.Validador.Formatar)
      else
      s := s + (DMAux.Validador.MsgErro) + C_CRLF;

   if not ValidarCampos(Dataset, ['NOME','RAZAOSOCIAL','LOGRADOURO','NMRO','UF' ,'codmun'], s) then
      raise Exception.Create('Faça a correção nos campos informados');
end;

procedure TDM.QCSOSNNewRecord(DataSet: TDataSet);
begin
   QCSOSNSimplesNacional.Value := 'S';
end;

procedure TDM.QCSTBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
   if not ValidarCampos(Dataset, ['nome','acbr','cst','st','SimplesNacional'], '') then
      raise Exception.Create('Faça a correção nos campos informados');
end;

procedure TDM.QCSTCOFINSBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);

   if not ValidarCampos(Dataset, ['cst','nome','acbr','destaca_valor'],'') then
      raise Exception.Create('Faça a correção nos campos informados.');
end;

procedure TDM.QCSTcstGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if sender.AsString = '' then
      Text := '--'
   else
      Text := Format('%.2d', [sender.AsInteger]);
end;

procedure TDM.QCSTIPIBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
   if not ValidarCampos(Dataset, ['cst','nome','acbr','destaca_valor'],'') then
      raise Exception.Create('Faça a correção nos campos informados.');
end;

procedure TDM.QCSTNewRecord(DataSet: TDataSet);
begin
   QCSTSimplesNacional.Value := 'N';
end;

procedure TDM.QCSTPISBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);

   if not ValidarCampos(Dataset, ['cst','nome','acbr','destaca_valor'],'') then
      raise Exception.Create('Faça a correção nos campos informados.');
end;

procedure TDM.QCusto_OperBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);

   if not ValidarCampos(Dataset, ['data','receita','despesa'], '') then
      raise Exception.Create('Faça a correção dos campos informados.');

   QCusto_Operpercent.Value := RetornaPercentual(QCusto_Operreceita.Value, QCusto_Operdespesa.Value);
end;

procedure TDM.QDebitoBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
end;

procedure TDM.QEmpresaAfterPost(DataSet: TDataSet);
begin
   DMConn.DB.ExecSQL('call pr_hash("EMPRESA",' + Texto_Mysql(_C) +',' + Texto_Mysql(id_Term) + ');');
end;

procedure TDM.QEmpresaBeforePost(DataSet: TDataSet); //valida os dados
const
   cod = '000,003,004,005,006,090';
var
   s: string;
begin
   LimpaStr(DataSet);
   QEmpresahash.AsString := id_Term;
 //empresa
   if Validar_Doc(QEmpresacnpj.AsAnsiString, C_ST_VAZIO, docCPF) then
      QEmpresacnpj.AsAnsiString := AnsiString(DMAux.Validador.Formatar)
   else
   if not Validar_Doc(QEmpresacnpj.AsAnsiString, C_ST_VAZIO, docCNPJ) then
   begin
      s := s + QEmpresacnpj.DisplayLabel + ': ' + (DMAux.Validador.MsgErro) + C_CRLF;
   end
   else
      QEmpresacnpj.AsAnsiString := AnsiString(DMAux.Validador.Formatar);

   if not Validar_Doc(QEmpresauf.AsAnsiString, C_ST_VAZIO, docUF) then
   begin
     s := s + QEmpresauf.DisplayLabel + ': ' + (DMAux.Validador.MsgErro) + C_CRLF;
   end;

   if Validar_Doc(QEmpresaie.AsAnsiString, QEmpresauf.AsAnsiString, docInscEst) then
      QEmpresaie.AsAnsiString := AnsiString(DMAux.Validador.Formatar)
      else
      s := s + QEmpresaie.DisplayLabel + ': ' + (DMAux.Validador.MsgErro) + C_CRLF;

  //contador
   if Number(QEmpresacont_cnpj.AsString) <> C_ST_VAZIO then
   begin
      if not Validar_Doc(QEmpresacont_cnpj.AsAnsiString, C_ST_VAZIO, docCNPJ) then
      begin
         s := s + QEmpresacont_cnpj.DisplayLabel + ': ' + (DMAux.Validador.MsgErro) + C_CRLF;
      end
      else
         QEmpresacont_cnpj.AsAnsiString := AnsiString(DMAux.Validador.Formatar);

      if not Validar_Doc(QEmpresacont_uf.AsAnsiString, C_ST_VAZIO, docUF) then
      begin
        s := s + QEmpresacont_uf.DisplayLabel + ': ' + (DMAux.Validador.MsgErro) + C_CRLF;
      end;

      if not Validar_Doc(QEmpresacont_cpf.AsAnsiString, C_ST_VAZIO, docCPF) then
      begin
         s := s + QEmpresacont_cpf.DisplayLabel + ': ' + (DMAux.Validador.MsgErro) + C_CRLF;
      end
      else
         QEmpresacont_cpf.AsAnsiString := AnsiString(DMAux.Validador.Formatar);
   end;

  //farmacêutico
   if Number(QEmpresafarmac_cpf.AsString) <> C_ST_VAZIO then
   begin
      if not Validar_Doc(QEmpresafarmac_crf_uf.AsAnsiString, C_ST_VAZIO, docUF) then
      begin
        s := s + QEmpresafarmac_crf_uf.DisplayLabel + ': ' + DMAux.Validador.MsgErro + C_CRLF;
      end;

      if not Validar_Doc(QEmpresafarmac_cpf.AsAnsiString, C_ST_VAZIO, docCPF) then
      begin
         s := s + QEmpresafarmac_cpf.DisplayLabel + ': ' + DMAux.Validador.MsgErro + C_CRLF;
      end
      else
         QEmpresafarmac_cpf.AsAnsiString := AnsiString(DMAux.Validador.Formatar);
   end;

   if pos(QEmpresaefd_fiscal_cod_icms_a_recolher.AsString, cod) <0  then
      s := s + ('Cód. Obr. - Valores válidos: [000, 003, 004, 005, 006, 090]') + C_CRLF;

   if not ValidarCampos(QEmpresa,['razao_social','nome_fantasia','cnpj','ie','logradouro','numero','bairro','cep','uf',
                                    'nome_resp','cpf_resp','rg_resp','cont_nome','cont_crc','cont_cep','cont_logradouro',
                                    'cont_nmro','cont_bairro','cont_tel','cont_email','cont_uf','cont_codmun','codmun'], s) then
      raise Exception.Create('Faça a correção nos campos informados');

end;

procedure TDM.QEstoqueAfterInsert(DataSet: TDataSet);
var
   i: integer;
begin
   QEstoquecst.Value               := 1;
   QEstoquesuspenso.Value          := 'N';
   QEstoqueincide_pis_cofins.Value := 'N';
   QEstoqueproducao_propria.Value  := 'N';
   QEstoquepromocao.Value          := 'N';
   QEstoquedestinacao.Value        := '00 Mercadoria para Revenda';
   QEstoquebalanca.Value           := 'N';
   QEstoquecalculo_por_arredondamento.Value := 'S';
   QEstoqueicms_mod_bc.Value       := 3;//vr da oper

   QEstoquecst_ipi_ent.Value    := 3; //99
   QEstoquecst_pis_ent.Value    := 32;//99
   QEstoquecst_cofins_ent.Value := 32;//99
   QEstoquecst_ipi_sai.Value    := 11;//49
   QEstoquecst_pis_sai.Value    := 9;//49
   QEstoquecst_cofins_sai.Value := 9;//49

   for i := 0 to Dataset.FieldCount - 1 do
       if DataSet.Fields[i].DataType in[ftCurrency, ftFloat] then
          DataSet.Fields[i].AsCurrency := 0;
end;

procedure TDM.QEstoqueAfterOpen(DataSet: TDataSet);
begin
if not QVwQuant_Estoque.Active then
   QVwQuant_Estoque.Open;
end;

procedure TDM.QEstoqueAfterPost(DataSet: TDataSet);
begin
    DMConn.DB.ExecSQL('call pr_hash("ESTOQUE",' + Texto_Mysql(_C) +',' + Texto_Mysql(id_Term) +');');
    DMConn.DB.ExecSQL('call atu_pdv(' + Texto_Mysql(QEstoqueId.AsString)+');');
end;

procedure TDM.QEstoqueBeforeDelete(DataSet: TDataSet);
var
   i: integer;
begin //função mysql que retorna a contagem dos registros em tabelas dependentes
   DMConn.Q5.Open('select fn_dep_estoque(' + Texto_Mysql(QEstoqueid.value) + ')');

   i := DMConn.Q5.Fields[0].AsInteger;

   if i > 0 then
      raise Exception.Create(C_297);

   ExecSQL('delete from inventario where codigo=' + Texto_Mysql(QCliid.value));
end;

procedure TDM.QEstoqueBeforePost(DataSet: TDataSet);
var
   s: string;
begin
   if QEstoque.Tag = 0 then
   begin
      if not ValidarNCM(Number(QEstoquencm.AsString), DM_INI.ini.StoredValue['validarncm']) then
         s := s + ('NCM incorreto.') + C_CRLF;

      if QEstoqueorigem.Value <0 then
         s := s + ('Origem não informada.') + C_CRLF;

      if (Verificar_Duplicidade(QEstoqueid.AsString, 'estoque', 'cod_gtin','', DM.QEstoquecod_gtin.AsString,'')) then
         s := s + ('Já existe um produto com este código GTIN.') + C_CRLF;

      if not Validar_CST('E', QEstoquecst_ipi_ent.AsInteger) then
         s := s + (QEstoquecst_ipi_ent.DisplayLabel +  ': Valor incorreto (' + C_ARR_9[QEstoquecst_ipi_ent.AsInteger] + ').') + C_CRLF;

      if not Validar_CST('S', QEstoquecst_ipi_sai.AsInteger) then
         s := s + (QEstoquecst_ipi_sai.DisplayLabel +  ': Valor incorreto (' + C_ARR_9[QEstoquecst_ipi_sai.AsInteger] + ').') + C_CRLF;

      if not Validar_CST('E', QEstoquecst_pis_ent.AsInteger) then
         s := s + (QEstoquecst_pis_ent.DisplayLabel +  ': Valor incorreto (' + C_ARR_9[QEstoquecst_pis_ent.AsInteger] + ').') + C_CRLF;

      if not Validar_CST('S', QEstoquecst_pis_sai.AsInteger) then
         s := s + (QEstoquecst_pis_sai.DisplayLabel +  ': Valor incorreto (' + C_ARR_9[QEstoquecst_pis_sai.AsInteger] + ').') + C_CRLF;

      if not Validar_CST('E', QEstoquecst_pis_ent.AsInteger) then
         s := s + (QEstoquecst_pis_ent.DisplayLabel +  ': Valor incorreto (' + C_ARR_9[QEstoquecst_pis_ent.AsInteger] + ').') + C_CRLF;

      if not Validar_CST('S', QEstoquecst_cofins_sai.AsInteger) then
         s := s + (QEstoquecst_cofins_sai.DisplayLabel +  ': Valor incorreto (' + C_ARR_9[QEstoquecst_cofins_sai.AsInteger] + ').') + C_CRLF;

      if (Trim(QEstoquemedicam_portaria.AsString) <> C_ST_VAZIO)and
         (Length(Number(QEstoquemedicam_registroms.AsString)) < 13) then
         s := s + (QEstoquemedicam_registroms.DisplayLabel +  ': Valor incorreto. O Registro M.S deve ter 13 dígitos.') + C_CRLF;

      if (QEstoquemedicam_vrms.Value > 0) and
         (QEstoquemedic_qtcaixa.Value < 1) then
         s := s + (QEstoquemedic_qtcaixa.DisplayLabel +  ': Valor incorreto. Informe a Quantidade farmacotécnica por embalagem. (Ex: "30" cpm)') + C_CRLF;

      if not ValidarCampos(Dataset, ['sessao', 'cod_gtin', 'nome', 'unidade','destinacao', 'cst', 'aliq_icms', 'icms_mod_bc'], s) then
         raise Exception.Create('Faça a correção nos campos informados.');
   end;

   QEstoquehash.AsString := id_Term;
   LimpaStr(DataSet);
end;

procedure TDM.QEstoque_Info_complBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
end;

procedure TDM.QFinanCredBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
end;

procedure TDM.QFinanDebBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
end;

procedure TDM.QFinanDebtipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
const
   texto: Array [0..4] of String = ('Boleto','Fatura','Cupom','N.Fiscal', 'Crédito');
   valor: Array [0..4] of String = ('B','C','V','N','Z');
var
   i: integer;
begin
   for i := Low(Valor) to High(Valor) do
   begin
      if Sender.AsString = Valor[i] then
      begin
         Text := Texto[i];
      end;
   end;
end;

procedure TDM.QFinanTotDebCredBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
end;

procedure TDM.QFinan_apagarAfterInsert(DataSet: TDataSet);
begin
   DM.QFinan_apagarcancelado.Value := 'N';
end;

procedure TDM.QFinan_apagarBeforePost(DataSet: TDataSet);
begin
   LimpaStr(Dataset);

   if not ValidarCampos(Dataset, ['tipo','favorec_nome','favorec_doc','nmro_doc','dt_process','dt_vencimento','valor'], '') then
      raise Exception.Create('Faça a correção nos campos informados');
end;

procedure TDM.QFinan_apagartipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
  var
  i: integer;
const c ='BFD$CO';
begin
   for i := 1 to 6 do
   begin
      if c[i]= Sender.AsString then
         break;
   end;
      
   case i of
      1: text := 'Boleto';
      2: text := 'Fatura';
      3: text := 'Duplicata'; 
      4: text := 'Dinheiro';
      5: text := 'Cheque';
      6: text := 'Outros';
      else
         text := 'Outros';
   end;
end;

procedure TDM.QFinan_Banco_MoviAfterInsert(DataSet: TDataSet);
begin
   QFinan_Banco_Moviconta.Value := QContasid.Value;
end;

procedure TDM.QFinan_Bol_CliBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
end;

procedure TDM.QFinan_bol_EmitBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
end;

procedure TDM.QFinan_CarneBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
end;

procedure TDM.Qfinan_centro_custoBeforeDelete(DataSet: TDataSet);
begin
   DMConn.Q4.Open('select count(*) from finan_centro_custo where plano like ' + Texto_Mysql(Qfinan_centro_custoplano.AsString +'%'));
   DMConn.Q5.Open('select count(*) from finan_centro_custo_movi where cod=' + Texto_Mysql(Qfinan_centro_custoplano.AsString));

   if (DMConn.Q5.Fields[0].AsInteger > 0)or(DMConn.Q4.Fields[0].AsInteger > 1) then
      raise Exception.Create(C_297);
end;

procedure TDM.QFinan_ch_alineaBeforePost(DataSet: TDataSet);
begin
   LimpaStr(Dataset);

   if not ValidarCampos(Dataset, ['alinea'], '') then
      raise Exception.Create('Faça as correções nos campos informados');
end;

procedure TDM.Qfinan_ch_tercBeforePost(DataSet: TDataSet);
begin
   LimpaStr(Dataset);

   if not ValidarCampos(Dataset, ['nmro','data_em','dt_bompara','nome_dono','nome_portador','tel_portador','banco','conta','valor','status'], '') then
      raise Exception.Create('Faça as correções nos campos informados');
end;

procedure TDM.Qfinan_ch_tercstatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
  var
  i: integer;
const c ='CDPAO';
begin
   for i := 1 to 4 do
   begin
      if c[i]= Sender.AsString then
         break;
   end;
//C=CUSTODIADO D=DEPOSITFDO P=PAGO A 3º A=DEVOLVIDO
   case i of
      1: text := 'CUSTODIADO';
      2: text := 'DEPOSITADO';
      3: text := 'PAGO A 3º'; 
      4: text := 'DEVOLVIDO';
      else
         text := 'OUTRO';
   end;
end;

procedure TDM.QFinan_CliDebAfterClose(DataSet: TDataSet);
begin
   QFinanDeb.Close;
   QFinanCred.Close;
   QFinanTotDebCred.Close;
end;

procedure TDM.QFinan_CliDebAfterOpen(DataSet: TDataSet);
begin
   QFinanDeb.Open;
   QFinanCred.Open;
   QFinanTotDebCred.Open;
end;

procedure TDM.QFinan_CliDebBeforeClose(DataSet: TDataSet);
begin
   QFinanTotDebCred.Close;
   QFinanCred.Close;
   QFinanDeb.Close;
end;

procedure TDM.QFinan_CliDebBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
end;

procedure TDM.QFornBeforePost(DataSet: TDataSet);
var
   s: string;
begin
   LimpaStr(DataSet);

   if Number(QFornCNPJ.AsString) <> C_ST_VAZIO then
   begin
      if Validar_Doc(QForncnpj.AsAnsiString, C_ST_VAZIO, docCPF) then
         QForncnpj.AsAnsiString := AnsiString(DMAux.Validador.Formatar)
      else
      if not Validar_Doc(QForncnpj.AsAnsiString, C_ST_VAZIO, docCNPJ) then
      begin
         s := s + (DMAux.Validador.MsgErro) + C_CRLF;
      end
      else
         QForncnpj.AsAnsiString := AnsiString(DMAux.Validador.Formatar);

      if (Verificar_Duplicidade(QFornid.AsString, 'fornecedor', 'cnpj', '', QForncnpj.AsString, '')) then
         s := s + (C_225) + C_CRLF;
   end;

   if not Validar_Doc(QFornuf.AsAnsiString, C_ST_VAZIO, docUF) then
   begin
     s := s + (DMAux.Validador.MsgErro) + C_CRLF;
   end;

   if Validar_Doc(QFornie.AsAnsiString, QFornuf.AsAnsiString, docInscEst) then
      QFornie.AsAnsiString := AnsiString(DMAux.Validador.Formatar)
      else
      s := s + (DMAux.Validador.MsgErro) + C_CRLF;

   if not ValidarCampos(Dataset, ['razaosocial','logradouro','nmro','bairro', 'codmun', 'uf','cep'], s) then
      raise Exception.Create('Faça a correção nos campos informados');


   if Trim(QFornnome.AsString) = C_ST_VAZIO then
      QFornnome.AsString := QFornrazaosocial.AsString;

   if (Trim(QFornlogradouro.AsString) <> C_ST_VAZIO)and
      (Trim(QFornlogradourocobranca.AsString) = C_ST_VAZIO) then
   begin
      QFornlogradourocobranca.AsString := QFornlogradouro.AsString;
      QFornnmrocobranca.AsString       := QFornnmro.AsString;
      QForncomplemcobranca.AsString    := QForncomplem.AsString;
      QFornbairrocobranca.AsString     := QFornbairro.AsString;
      QFornufcobranca.AsString         := QFornuf.AsString;
      QForncidadecobranca.AsString     := QForncidade.AsString;
      QForncodmuncobranca.AsString     := QForncodmun.AsString;
      QForncepcobranca.AsString        := QForncep.AsString;
    end;
end;

procedure TDM.QFPagAfterInsert(DataSet: TDataSet);
begin
   QFPagaprazo.AsString := 'N';
   QFPagtipo.AsString   := 'DIN';
   QFPaguso.AsString    := '-';
end;

procedure TDM.QFPagBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
   QFPaguso.AsString := AnsiLowerCase(QFPaguso.AsString);
   if not ValidarCampos(Dataset, ['descr','aprazo','tipo','indice_tef','uso'], '') then
      raise Exception.Create('Faça a correção nos campos informados');
end;

procedure TDM.QInfo_complBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);

   if not ValidarCampos(Dataset, ['cst','icms_pc','reduzir','texto'], '') then
      raise Exception.Create('Faça a correção nos campos informados');
end;

procedure TDM.QInventarioBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
end;

procedure TDM.QModNFAfterInsert(DataSet: TDataSet);
begin
   QModNFcom_itens.AsString := 'N';
end;

procedure TDM.QModNFBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
   if not ValidarCampos(Dataset, ['modelo','nome','com_itens'], '') then
      raise Exception.Create('Faça a correção nos campos informados');
end;

procedure TDM.QNCMBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);

   if not ValidarCampos(Dataset, ['cod_nbm','descr_nbm','cod_ncm','descr_ncm'], '') then
      raise Exception.Create('Faça a correção nos campos informados');
end;

procedure TDM.QNFAfterClose(DataSet: TDataSet);
begin
   QNF_Item.Close;
   QNF_Item_Med.Close;
   QNF_Duplicata.Close;
   QNF_Reboque.Close;
   QNF_Referenciada.Close;
   QNF_Volume.Close;
   QNF_Lacre.Close;
   QNF_Chave.Close;
   QNF_cce.Close;
end;

procedure TDM.QNFAfterOpen(DataSet: TDataSet);
begin
   QNF_Item.Open;
   QNF_Item_Med.Open;
   QNF_Duplicata.Open;
   QNF_Reboque.Open;
   QNF_Referenciada.Open;
   QNF_Volume.Open;
   QNF_Lacre.Open;
   QNF_Chave.Open;
   QNF_cce.Open;
end;

procedure TDM.QNFstatusGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TDM.QNF_ItemCOFINS_CSTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := C_ARR_9[sender.AsInteger];
end;

procedure TDM.QNF_ItemICMS_CSOSNGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := C_ARR_4[sender.AsInteger];
end;

procedure TDM.QNF_ItemICMS_CSTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := C_ARR_5[sender.AsInteger];
end;

procedure TDM.QNF_ItemPIS_CSTGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := C_ARR_9[sender.AsInteger];
end;

procedure TDM.QOperadorBeforeDelete(DataSet: TDataSet);
begin
   if Operador.FAcesso < QOperadoracesso.Value then
      raise Exception.Create(C_223);

   ExecSQL('delete from segur where operador=' + Texto_Mysql(QOperadorid.Value) + ';');
end;

procedure TDM.QOperadorBeforeEdit(DataSet: TDataSet);
begin
   if Operador.FAcesso < QOperadoracesso.Value then
      raise Exception.Create(C_223);
end;

procedure TDM.QOperadorBeforeInsert(DataSet: TDataSet);
begin
   if Operador.FAcesso < 3 then
      raise Exception.Create(C_224);
end;

procedure TDM.QOperadorBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
   if not ValidarCampos(QOperador, ['nome','senha','nomered','acesso'], '') then
      raise Exception.Create('Faça as correções nos campos informados.');
end;

procedure TDM.QOper_CRTBeforePost(DataSet: TDataSet);
begin
    LimpaStr(DataSet);
   //valida o cpf/cnpj e verifica se ja existe
   if Number(QCliCNPJ.AsString) <> C_ST_VAZIO then
   begin
      if not Validar_Doc(QOper_CRTcnpj.AsAnsiString, C_ST_VAZIO, docCNPJ) then
      begin
         raise Exception.Create('CNPJ/CPF inválido.');
      end
      else
         QOper_CRTcnpj.AsAnsiString := AnsiString(DMAux.Validador.Formatar);

      if (Verificar_Duplicidade(QOper_CRTid.AsString, 'oper_crt', 'cnpj', '', QOper_CRTcnpj.AsString, '')) then
         raise Exception.Create(C_225);
   end;
   //valida a UF
   if not Validar_Doc(QOper_CRTuf.AsAnsiString, C_ST_VAZIO, docUF) then
   begin
     raise Exception.Create(DMAux.Validador.MsgErro);
   end;
   //valida a IE
   if Validar_Doc(QOper_CRTie.AsAnsiString, QOper_CRTuf.AsAnsiString, docInscEst) then
      QOper_CRTie.AsAnsiString := AnsiString(DMAux.Validador.Formatar)
      else
      raise Exception.Create(DMAux.Validador.MsgErro);

   if not ValidarCampos(Dataset, ['nome','razaosocial','logradouro','nmro','bairro','codmun'], '') then
      raise Exception.Create('Faça as correções nos campos informados');
end;

procedure TDM.QParcelasBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
end;

procedure TDM.QRegras_ImpostoAfterInsert(DataSet: TDataSet);
var
   i: integer;
begin
   QRegras_Impostocst_ipi_ent.Value    := 3; //n trib
   QRegras_Impostocst_pis_ent.Value    := 32;//99
   QRegras_Impostocst_cofins_ent.Value := 32;//99
   QRegras_Impostocst_ipi_sai.Value    := 1;//n trib
   QRegras_Impostocst_pis_sai.Value    := 9;//49
   QRegras_Impostocst_cofins_sai.Value := 9;//49
   QRegras_Impostoicp.Value            := 'N';

   for i := 0 to Dataset.FieldCount - 1 do
       if DataSet.Fields[i].DataType in[ftCurrency, ftFloat] then
          DataSet.Fields[i].AsCurrency := 0;
end;

procedure TDM.QRegras_ImpostoBeforePost(DataSet: TDataSet);
begin
   {$IFDEF GER}
   if Assigned(frmRegras_Imposto) then
      QRegras_Impostonome.AsString := frmRegras_Imposto.nome;
   {$ENDIF}
end;

procedure TDM.QSessaoAfterInsert(DataSet: TDataSet);
begin
   QSessaousoint.AsString  := 'N';
   QSessaobalanca.AsString := 'N';
end;

procedure TDM.QSessaoBeforePost(DataSet: TDataSet);
begin
   LimpaStr(Dataset);
   if not ValidarCampos(Dataset, ['nome','usoint'], '') then
      raise Exception.Create('Faça a correção nos campos informados');
end;

procedure TDM.QSoftHouseBeforePost(DataSet: TDataSet);
begin
   LimpaStr(Dataset);

   if not ValidarCampos(Dataset, ['razao_social','nome_fantasia','cnpj','ie','im','logradouro','laudo','complem',
                                 'bairro','cidade','cep','uf','tel1','tel2','fax','email','nome_resp','cpf_resp',
                                 'rg_resp','nome_soft','versao_soft','mdoutros','dt_geracao','versao_er_paf',
                                 'nome_exe','nome_contato'], '') then
      raise Exception.Create('Faça as correções nos campos informados');
end;

procedure TDM.QSped_CST_TabelaBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
end;

procedure TDM.QSped_TabelaAfterInsert(DataSet: TDataSet);
begin
   QSped_Tabelatabela.Value := QSped_CST_Tabelatabela.Value;
end;

procedure TDM.QSped_TabelaBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
end;

procedure TDM.QtabletAfterOpen(DataSet: TDataSet);
begin
   QTablet_Item.Open;
end;

procedure TDM.QtabletBeforeClose(DataSet: TDataSet);
begin
   QTablet_Item.Close;
end;

procedure TDM.QUnidadeAfterInsert(DataSet: TDataSet);
begin
   QUnidadefracionavel.AsString := 'N';
end;

procedure TDM.QUnidadeBeforePost(DataSet: TDataSet);
begin
   LimpaStr(Dataset);
   if not ValidarCampos(Dataset, ['unidade','nome','fracionavel'], '') then
      raise Exception.Create('Faça a correção nos campos informados');

   if QUnidadenome.Value = QUnidadeunidade.Value then
      raise Exception.Create('Descrição e sigla da unidade não podem ser iguais.');
end;

procedure TDM.QVendaAfterInsert(DataSet: TDataSet);
var
   i: integer;
begin
   for i := 0 to Pred(DataSet.Fields.Count) do
   begin
      if DataSet.Fields[i] is TFloatField then
         DataSet.Fields[i].AsCurrency := 0
      else
      if(DataSet.Fields[i] is TIntegerField)and(DataSet.Fields[i].FieldName<> 'id') then
         DataSet.Fields[i].AsInteger := 0;
   end;
end;

procedure TDM.QVenda_ItemAfterInsert(DataSet: TDataSet);
var
   i: integer;
begin
   for i := 0 to Pred(DataSet.Fields.Count) do
   begin
      if DataSet.Fields[i] is TFloatField then
         DataSet.Fields[i].AsCurrency := 0
      else
      if(DataSet.Fields[i] is TIntegerField)and(DataSet.Fields[i].FieldName<> 'id') then
         DataSet.Fields[i].AsInteger := 0;
   end;
end;

procedure TDM.QVendedorBeforePost(DataSet: TDataSet);
begin
   LimpaStr(DataSet);
   if not ValidarCampos(QVendedor, ['nome','senha','nomered'], '') then
      raise Exception.Create('Faça as correções nos campos informados.');
end;

function TDM.RetornarAliqICMS(CST: integer; pICMS: currency): integer;
var
   aQuery:TFDQuery;
begin
   aQuery := TFDQuery.Create(self);
   aQuery.Connection := DMConn.DB;

   if CST in[10,60,70] then
   begin
      aQuery.Open('select id from aliquota where cod_if="FF"');
      Result := aQuery.Fields[0].AsInteger;
   end
   else
   if CST in[40] then
   begin
      aQuery.Open('select id from aliquota where cod_if="II"');
      Result := aQuery.Fields[0].AsInteger;
   end
   else
   if CST in[41] then
   begin
      aQuery.Open('select id from aliquota where cod_if="NN"');
      Result := aQuery.Fields[0].AsInteger;
   end
   else
   if CST in[0,20,51] then
   begin
      aQuery.Open('select id from aliquota where cod_if=' +  Texto_Mysql(format('%.4d',[Trunc(pICMS*100)])));
      Result := aQuery.Fields[0].AsInteger;
   end
   else
   Result := 0;
end;

function TDM.RetornarCST(cst: string): integer;
var
   aQuery:TFDQuery;
begin
   aQuery := TFDQuery.Create(self);
   aQuery.Connection := DMConn.DB;
   aQuery.Open('select id from cst where cst=' + Texto_Mysql(cst) + '');
   Result := aQuery.Fields[0].AsInteger;
   FreeAndNil(aQuery);
end;

function TDM.RetornarUnidade(Unid: string): Integer;
var
   aQuery:TFDQuery;
begin
   aQuery := TFDQuery.Create(self);
   aQuery.Connection := DMConn.DB;
   aQuery.Open('select id from unidade where unidade like' + Texto_Mysql(Unid + '%'));
   Result := aQuery.Fields[0].AsInteger;
   FreeAndNil(aQuery);
end;

function TDM.Retornar_Sigla_Unidade(Unid: integer): string;
var
   aQuery:TFDQuery;
begin
   aQuery := TFDQuery.Create(self);
   aQuery.Connection := DMConn.DB;
   aQuery.Open(C_SQL13 + Texto_Mysql(Unid));
   Result := aQuery.Fields[0].AsString;
   FreeAndNil(aQuery);
end;


procedure TDM.DataModuleCreate(Sender: TObject);
var
   i: integer;
begin
   if DMConn.DB.Connected then
   begin
      ShowMessage('ERRO 24');
      raise Exception.Create('ERRO 24');
   end;
{$IFNDEF VLDLL}
   Operador := TOperador.Create;

   //preenche os cdset's com a propriedades do acbr
  for i := Low(C_ARR_3) to High(C_ARR_3) do//ipi
  begin
     cdCST2.AppendRecord([i, C_ARR_3[i]]);
  end;

  for i := Low(C_ARR_5) to High(C_ARR_5) do//icms
  begin
     cdCST.AppendRecord([i, C_ARR_5[i]]);
  end;

  for i := Low(C_ARR_4) to High(C_ARR_4) do//csosn
  begin
     cdCSOSN.AppendRecord([i, C_ARR_4[i]]);
  end;

  for i := Low(C_ARR_6) to High(C_ARR_6) do //modBCicms
  begin
     cdMod.AppendRecord([i, C_ARR_6[i]]);
  end;

  for i := Low(C_ARR_1) to High(C_ARR_1) do //modBCICMSST
  begin
     cdMod2.AppendRecord([i, C_ARR_1[i]]);
  end;

  for i := Low(C_ARR_9) to High(C_ARR_9) do //CST pis cofins
  begin
     cdCSTPC.AppendRecord([i, C_ARR_9[i]]);
  end;
{$ENDIF}
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
   DMConn.DB.Connected := False;
{$IFNDEF VLDLL}
   FreeAndNil(Operador);
{$ENDIF}
end;


procedure TDM.DBAfterConnect(Sender: TObject);
begin
   DMConn.DB.ExecSQL('set @chave:="k";');
end;

procedure TDM.DBError(ASender: TObject; const AInitiator: IFDStanObject; var AException: Exception);
begin
   Log('SERV_Err', 'DB', AException.Message);
end;

function TDM.pingar(ip:string): boolean;
begin
   Application.ProcessMessages;
   if ip = '' then
      ip := DMConn.DB.Params.Values['Server'];

   Result := Ping(ip, 300);
end;

procedure TDM.Popular_Tab_cst;
var
   i: integer;
begin
   ExecSQL('truncate table cst_ipi; truncate table cst_pis; truncate table cst_cofins;');
   DMConn.Q1.Open('select * from cst_ipi');

   for i := Low(C_ARR_3) to High(C_ARR_3) do
   begin
      DMConn.Q1.Insert;
      DMConn.Q1.FieldByName('acbr').AsInteger := i;
      DMConn.Q1.FieldByName('cst').AsString := C_ARR_3[i];
      DMConn.Q1.post;
   end;

   DMConn.Q1.Open('select * from cst_pis');

   for i := Low(C_ARR_9) to High(C_ARR_9) do
   begin
      DMConn.Q1.Insert;
      DMConn.Q1.FieldByName('acbr').AsInteger := i;
      DMConn.Q1.FieldByName('cst').AsString := C_ARR_9[i];
      DMConn.Q1.post;
   end;

   DMConn.Q1.Open('select * from cst_cofins');

   for i := Low(C_ARR_9) to High(C_ARR_9) do
   begin
      DMConn.Q1.Insert;
      DMConn.Q1.FieldByName('acbr').AsInteger := i;
      DMConn.Q1.FieldByName('cst').AsString := C_ARR_9[i];
      DMConn.Q1.post;
   end;
end;


function TDM.Procurar_Operador(login, senha: string): boolean;
begin
   QOperador.Open('select * from operador where nomered=' + Texto_Mysql(login) + 'and senha=' + Texto_Mysql(senha));
   Result := not QOperador.IsEmpty;

   if result then
   begin
      Operador.Nome   := QOperadornome.AsString;
      Operador.ID     := QOperadorid.Value;
      Operador.Acesso := QOperadoracesso.Value;
   end
   else
      ShowMessage(C_82);
end;



procedure TDM.Abrir_Central_Relat(modo, arq_ini: string; pasta: string = C_ST_VAZIO; arquivo: string = C_ST_VAZIO; params: string = C_ST_VAZIO);
const
   c_modo = '-a-v-p-e-x';
   c_modo1 = '-p-v-x';
begin
      //gerarel.exe <-a -v -p -e> SISTEMA "RELATORIO XYZ" "id=abc" "valor=123" "resto=12.4" .. ate 20
      //gerarel.exe <-x> SISTEMA "RELATORIO XYZ (sem a extensão)" "PATHARQ" "id=abc" "data=01/01/2013" "resto=12.4" .. ate 20 parametros
      // -a modo normal
      //-e modo editor
      //-p modo impressao
      //-v modo visualização
      //-x modo exportação PDF
      //SISTEMA nome da pasta
      //PATHARQ caminho completo do arquivo a ser exportado (somente -x)
      //"RELATORIO XYZ" nome do arquivo (entre aspas duplas)

   if Pos(modo, c_modo)=0  then
     raise Exception.Create('Parâmetro modo inválido');

   if (Pos(modo, c_modo1)>0) then
   begin
      if Trim(pasta) = C_ST_VAZIO then
         raise Exception.Create('Parâmetro modo informado necessita uma pasta informada.');

      if Trim(arquivo) = C_ST_VAZIO then
         raise Exception.Create('Parâmetro modo informado necessita um relatorio informado.');

      pasta   := ' ' + QuotedDuoStr(pasta) + ' ';
      arquivo := QuotedDuoStr(arquivo);

      if params <> C_ST_VAZIO then
         params := ' ' + params;

      arq_ini := ' ' + QuotedDuoStr(arq_ini);
   end
   else
      arq_ini := ' ' + QuotedDuoStr(arq_ini) + ' ';

   log('Rel','Enviado', modo + arq_ini + pasta + arquivo + params);


   killtask('GERAREL.exe'); //se estiver aberto mata o processo

   ExecFile(Aqui('', 'gerarel'), 'open', modo + arq_ini + pasta + arquivo + params, False);
end;

procedure TDM.SPError(ASender: TObject; const AInitiator: IFDStanObject; var AException: Exception);
var
   i: integer;
begin
   for i := 0 to Pred(DMConn.SP.SQLScripts.Count) do
   if pos('koplin', DMConn.SP.SQLScripts[i].SQL.Text)<=0 then
      Log(C_220,'SCRIPT ERRO', DMConn.SP.SQLScripts[i].SQL.Text + C_CRLF + AException.Message);

   ShowMessage('Houve um erro ao executar o script SQL. Consulte o LOG.');
end;

procedure TDM.Apaga_PAF;
begin//faz o rollback das tabelas paf e venda e do estoque
   Log('Carga_server','ApagaPaf', 'Inicio');
   ExecSQL('call pr_apaga_paf(' + Texto_Mysql(id_Term)+ ');');

   Log('Carga_server','DelVenda', 'Inicio');
   ExecSQL('delete from venda where hash=' + Texto_Mysql(id_Term)+ ';');
   sleep(500);
   Log('Carga_server','Rollback Estoque', 'Inicio');
   DMConn.Q5.Open('select estoque, sum(qtd) as qtd from estoque_atu where terminal=' + Texto_Mysql(id_Term) + ' group by estoque');

   Log('Carga_server','Rollback Estoque', Texto_Mysql(DMConn.Q5.FieldCount) +' registros');

   while not DMConn.Q5.Eof do
   begin
      ExecSQL('update estoque set quant=quant+' + Texto_Mysql(DMConn.Q5.Fields[1].AsCurrency) +
                 ' where id=' + Texto_Mysql(DMConn.Q5.Fields[1].AsInteger) + ';');
      DMConn.Q5.Next;
   end;
end;

procedure TDM.Atu_Hash; //atualiza somente os registros novos que estao com o hash = id_term
begin
   Log('HASH','HASH', '"R01",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term));
   ExecSQL('call pr_hash("R01",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term) + ');');
   Log('HASH','HASH', '"R02",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term));
   ExecSQL('call pr_hash("R02",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term) + ');');
   Log('HASH','HASH', '"R03",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term));
   ExecSQL('call pr_hash("R03",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term) + ');');
   Log('HASH','HASH', '"R04",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term));
   ExecSQL('call pr_hash("R04",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term) + ');');
   Log('HASH','HASH', '"R05",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term));
   ExecSQL('call pr_hash("R05",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term) + ');');
   Log('HASH','HASH', '"R06",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term));
   ExecSQL('call pr_hash("R06",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term) + ');');
   Log('HASH','HASH', '"R07",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term));
   ExecSQL('call pr_hash("R07",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term) + ');');
   Log('HASH','HASH', '"E3",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term));
   ExecSQL('call pr_hash("E3",'  + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term) + ');');
   Log('HASH','HASH', '"E2",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term));
   ExecSQL('call pr_hash("E2",'  + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term) + ');');
   Log('HASH','HASH', '"A2",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term));
   ExecSQL('call pr_hash("A2",'  + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term) + ');');
   Log('HASH','HASH', '"CAIXA",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term));
   ExecSQL('call pr_hash("CAIXA",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term) + ');');
   Log('HASH','HASH', '"VENDA",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term));
   ExecSQL('call pr_hash("VENDA",' + Texto_Mysql(_C) + ',' + Texto_Mysql(DM.id_Term) + ');');
end;

procedure TDM.Cadastrar_PDV(num_ecf: string); //faz o cadastramento do ecf na tabela pdv do servidor
begin
   if StrToIntDef(num_ecf,0)=0 then
      exit;

   DMConn.Q1.Open('select * from pdv where num_ecf=' + Texto_Mysql(StrToInt(num_ecf)));

   if DMConn.Q1.IsEmpty then
   begin
      ExecSQL('insert into pdv set num_ecf=' + Texto_Mysql(StrToInt(num_ecf)));
   end;
end;

function TDM.Calcular_Custo_Oper: currency;
var
   i: integer;
begin
  QCusto_Oper.First;
  Result := 0;
  QCusto_Oper.DisableControls;

  for i := 1 to DM_INI.ini.StoredValue['meses_custo_oper'] do
  begin
     if QCusto_Oper.Eof then
        break;

     Result := Result + DM.QCusto_Operpercent.Value;
     DM.QCusto_Oper.Next;
  end;

  Result := Result/DM_INI.ini.StoredValue['meses_custo_oper'];
  DM.QCusto_Oper.First;
  DM.QCusto_Oper.EnableControls;
end;


function TDM.Conectar: boolean;
begin
  if DMConn.DB.Connected then
  begin
    Result := True;
    exit;
  end;

   DMConn.DB.Params.Clear;
   DMConn.drvMySQL.VendorLib := Aqui('LIB\32', 'libmysql.dll');
   DMConn.DB.Params.Add('Server=' + DM_INI.INI.StoredValue['serv_host']);
   DMConn.DB.Params.Add('Database=' + DM_INI.INI.StoredValue['serv_database']);
   DMConn.DB.Params.Add('User_Name=' + DM_INI.INI.StoredValue['serv_user']);
   DMConn.DB.Params.Add('Password=' + DM_INI.INI.StoredValue['serv_password']);
   DMConn.DB.Params.Add('ReadTimeout=1');
   DMConn.DB.Params.Add('WriteTimeout=1');
   DMConn.DB.Params.Add('DriverID=MySQL');

   Result := DM_INI.INI.StoredValue['serv_host'] = '127.0.0.1';

   if not Result then
      Result := pingar;

   if Result then
   try
      DMConn.DB.Connected := True;
      Result := true;
   except
      on E: exception do
      begin
         ShowMessage(C_189 + #13 + 'Erro: ' + E.Message);
         Log('Conect_Erro','CONECTAR', E.Message);
         Result := False;
      end;
   end;
end;


{procedure TDM.Pesquisar(qQuery: TFDQuery; s_script: string);
begin
   qQuery.close;
   qQuery.SQL.Text := s_script;

   if pos('koplin',s_script)<=0 then
      Log(C_220,'SQL', s_script);

   qQuery.Open;
end; }

procedure TDM.Log_it(Dataset: TDataset; msg: string);
begin
   if Dataset is TFDQuery then
   begin
      with (Dataset as TFDQuery) do
      begin
         if pos('koplin',SQL.Text)<=0 then
            Log(C_220,'SQL', SQL.Text + C_CRLF + msg);
      end;
   end
end;

procedure TDM.LerArqRetorno;
begin
   if QvwBoleto.IsEmpty then
      raise Exception.Create('Nenhum boleto cadastrado encontrado.');

   DMAux.Boleto1.ListadeBoletos.Clear;
   DMAux.Boleto1.Banco.TipoCobranca   := TACBrTipoCobranca(QvwBoletotipo_cobranca.Value);
   //BoletoReport1.FastReportFile := Aqui(C_BOL_REPORT_FILE, IntToStr(Report) + '.fr3');
   //BoletoReport1.DirLogo        := Aqui(C_TMP_FILE,'');
   DMAux.Boleto1.DataArquivo          := now;
   DMAux.Boleto1.DirArqRemessa        := Aqui('BOLETOS\REMESSA','');
   DMAux.Boleto1.DirArqRetorno        := Aqui('BOLETOS\RETORNO','');
   DMAux.Boleto1.NomeArqRemessa       := LFill(IntToStr(QvwBoletonossonumero.Value + 1), 12, '0')+'.rem';
   DMAux.OD1.InitialDir               := DMAux.Boleto1.DirArqRetorno;
   DMAux.OD1.Filter                   := 'Arquivos de retorno|*.ret|Todos os Arquivos|*.*';
   DMAux.OD1.DefaultExt               := '.ret';

   if DMAux.OD1.Execute then
   begin
      DMAux.Boleto1.NomeArqRetorno  := ExtractFileName(DMAux.OD1.Filename);
   end
   else
      exit;

   with DMAux.Boleto1.Cedente do
   begin
      Nome              := QvwBoletocedente_nome.AsString;
      CodigoCedente     := QvwBoletocodigo_cedente.AsString;
      CodigoTransmissao := '';
      Agencia           := QvwBoletoagencia.AsString;
      AgenciaDigito     := QvwBoletoagdig.AsString;
      Conta             := QvwBoletonumconta.AsString;
      ContaDigito       := QvwBoletocondig.AsString;
      Modalidade        := QvwBoletomodalidade.AsString;
      Convenio          := QvwBoletoconvenio.AsString;
      ResponEmissao     := TACBrResponEmissao(QvwBoletoresp_emissao.Value);
      CaracTitulo       := TACBrCaracTitulo(QvwBoletocaract_titulo.Value);
      CNPJCPF           := Number(QvwBoletocedente_cnpjcpf.AsString);
      TipoInscricao     := TACBrPessoaCedente(QvwBoletocedente_tipoinscr.Value);
      Logradouro        := QvwBoletocedente_logradouro.AsString;
      NumeroRes         := QvwBoletonmro_res.AsString;
      Complemento       := QvwBoletocedente_complemento.AsString;
      Bairro            := QvwBoletocedente_bairro.AsString;
      Cidade            := QvwBoletocedente_municipio.AsString;
      UF                := QvwBoletocedente_uf.AsString;
      CEP               :=Number(QvwBoletocedente_cep.AsString);
   end;

   DMAux.boleto1.LerRetorno;
end;


procedure TDM.Emitir_Boleto(Vencim, DtDoc, DtProc: TDate; NmroDoc,
  //dados do sacado
  Nome, CNPJCPF, Lograd, Nmro, Bairr, Munic, st_UF,
  st_CEP: string;
  //dados contabeis
  VrDoc, VrAbat, VrMoraJuros, VrDesc, Multa: Currency;
  //linhas digiTFDas do boleto
  Linha1, Linha2, Linha3, Linha4,Linha5, Linha6,
  //se preenchido envia o e-mail
  email: string;
  //se imprime e layout do boleto (0,1 ou 2)
  Imprimir: boolean; Report: integer;
  //recebe dados da origem do movimento
  Tipo_Mov: string = 'X'; id_mov: integer=0);
var
  Titulo : TACBrTitulo;
  AStringList: TStringList;
  dllHandle :THandle;
  Bmp : TBitmap;
  s, snmro: string;
  tam, n_nmro: integer;
begin
   if QvwBoleto.IsEmpty then
      raise Exception.Create('Nenhum boleto cadastrado encontrado.');

   s := Aqui(C_TMP_FILE, format('%.3d',[QvwBoletonumbanco.Value]) +'.bmp');

   if not FileExists(s) then //carrega a logo da dll
   begin
      dllHandle := LoadLibrary('logoban.dll');
      Bmp := TBitmap.Create;
      Bmp.Handle := LoadBitmap(dllHandle, PWideChar('CL' + format('%.3d',[QvwBoletonumbanco.Value])));
      Bmp.SaveToFile(s);
      Bmp.Free;
      FreeLibrary(dllHandle);
   end;

   DMAux.Boleto1.ListadeBoletos.Clear;

   DMAux.Boleto1.Banco.TipoCobranca   := TACBrTipoCobranca(QvwBoletotipo_cobranca.Value);
   DMAux.BoletoReport1.FastReportFile := Aqui(C_BOL_REPORT_FILE, IntToStr(Report) + '.fr3');
   DMAux.BoletoReport1.DirLogo        := Aqui(C_TMP_FILE,'');
   DMAux.Boleto1.DataArquivo          := now;
   DMAux.Boleto1.DirArqRemessa        := Aqui('BOLETOS\REMESSA\','');
   DMAux.Boleto1.DirArqRetorno        := Aqui('BOLETOS\RETORNO\','');
   DMAux.Boleto1.NomeArqRemessa       := LFill(IntToStr(QvwBoletonossonumero.Value + 1), 12, '0')+'.rem';
   DMAux.Boleto1.NomeArqRetorno       := LFill(IntToStr(QvwBoletonossonumero.Value + 1), 12, '0')+'.ret';
   tam := 1;
   //o tamanho do noso numero influencia erros na geração do boleto
   //isso foi detecTFDo no boleto CEF e CEF-SICOB
   //assim esta rotina garante um tamanho minimo para o nosso numero
   case DMAux.Boleto1.Banco.TipoCobranca of
     // cobNenhum: ;
      cobBancoDoBrasil: tam := 1;
     // cobSantander: ;
      cobCaixaEconomica: tam := 1;
      cobCaixaSicob: tam := 1;
     // cobBradesco: ;
     // cobItau: ;
     // cobBancoMercantil: ;
     // cobSicred: ;
      cobBancoob: tam := 7; //o max é 7
     // cobBanrisul: ;
     // cobBanestes: ;
     // cobHSBC: ;
     // cobBancoDoNordeste: ;
     // cobBRB: ;
     // cobBicBanco: ;
     // cobBradescoSICOOB: ;
   end;

   with DMAux.Boleto1.Cedente do
   begin
      Nome              := QvwBoletocedente_nome.AsString;
      CodigoCedente     := QvwBoletocodigo_cedente.AsString;
      CodigoTransmissao := '';
      Agencia           := QvwBoletoagencia.AsString;
      AgenciaDigito     := QvwBoletoagdig.AsString;
      Conta             := QvwBoletonumconta.AsString;
      ContaDigito       := QvwBoletocondig.AsString;
      Modalidade        := QvwBoletomodalidade.AsString;
      Convenio          := QvwBoletoconvenio.AsString;
      ResponEmissao     := TACBrResponEmissao(QvwBoletoresp_emissao.Value);
      CaracTitulo       := TACBrCaracTitulo(QvwBoletocaract_titulo.Value);
      CNPJCPF           := Number(QvwBoletocedente_cnpjcpf.AsString);
      TipoInscricao     := TACBrPessoaCedente(QvwBoletocedente_tipoinscr.Value);
      Logradouro        := QvwBoletocedente_logradouro.AsString;
      NumeroRes         := QvwBoletonmro_res.AsString;
      Complemento       := QvwBoletocedente_complemento.AsString;
      Bairro            := QvwBoletocedente_bairro.AsString;
      Cidade            := QvwBoletocedente_municipio.AsString;
      UF                := QvwBoletocedente_uf.AsString;
      CEP               :=Number(QvwBoletocedente_cep.AsString);
   end;

   Titulo := DMAux.Boleto1.CriarTituloNaLista;

  with Titulo do
  begin
     Vencimento        := Vencim;
     Datadocumento     := DtDoc;
     n_nmro            := QvwBoletonossonumero.Value + 1;
     snmro             := LFill(IntToStr(n_nmro), tam, '0');
     NossoNumero       := snmro;

     if length(NmroDoc) < 4 then
        NumeroDocumento   := NmroDoc + FormatFloat('000', n_nmro)
     else
        NumeroDocumento := NmroDoc;

     EspecieDoc        := QvwBoletoespecie.AsString;
     Aceite            := TACBrAceiteTitulo(QvwBoletoaceite.Value);
     DataProcessamento := DtProc;
     Carteira          := QvwBoletocarteira.AsString;
     Sacado.NomeSacado := Nome;
     Sacado.CNPJCPF    := Number(CNPJCPF);
     Sacado.Pessoa     := Iif(length(Sacado.CNPJCPF) = 14, pJuridica, pFisica);
     Sacado.Logradouro := Lograd;
     Sacado.Numero     := Nmro;
     Sacado.Bairro     := Bairr;
     Sacado.Cidade     := Munic;
     Sacado.UF         := st_UF;
     Sacado.CEP        := Number(st_CEP);
     LocalPagamento    := QvwBoletolocal_pag.AsString;
     ValorDocumento    := VrDoc;
     ValorAbatimento   := VrAbat;
     //converte o % em R$
     ValorMoraJuros    := Percentual(VrDoc,VrMoraJuros);
     ValorDesconto     := Percentual(VrDoc,VrDesc);
     ValorAbatimento   := 0;//Percentual(VrDoc,VrAbat);
     PercentualMulta   := Percentual(VrDoc,Multa);

     DataMoraJuros     := Vencimento + QvwBoletodias_juros.Value;
     DataDesconto      := Vencimento - QvwBoletodis_desc.Value;
     DataAbatimento    := 0;//StrToDateDef(edtDataAbatimento.Text, 0);

     if QvwBoletodias_protesto.Value > 0 then
        DataProtesto := Vencimento + QvwBoletodias_protesto.Value;

     Instrucao1        := QvwBoletocod_instr1.AsString;
     Instrucao2        := QvwBoletocod_instr2.AsString;

     AStringList := TStringList.Create;

     if DataProtesto <> 0 then
         AStringList.Add('Sujeito a protesto a partir de ' + FormatDateTime('dd/mm/yyyy',DataProtesto));

      if ValorAbatimento <> 0 then
      begin
         if DataAbatimento <> 0 then
            AStringList.Add('Conceder abatimento de ' +
                             FormatCurr('R$ #,##0.00',ValorAbatimento) +
                             ' para pagamento ate ' + FormatDateTime('dd/mm/yyyy',DataAbatimento))
         else
            AStringList.Add('Conceder abatimento de ' +
                             FormatCurr('R$ #,##0.00',ValorAbatimento) +
                             ' para pagamento ate ' + FormatDateTime('dd/mm/yyyy',Vencimento));
      end;

      if ValorDesconto <> 0 then
      begin
         if DataDesconto <> 0 then
            AStringList.Add('Conceder desconto de '                       +
                             FormatCurr('R$ #,##0.00',ValorDesconto)       +
                             ' para pagamento até ' +
                             FormatDateTime('dd/mm/yyyy',DataDesconto))
         else
            AStringList.Add('Conceder desconto de '                 +
                             FormatCurr('R$ #,##0.00',ValorDesconto) +
                             ' por dia de antecipaçao');
      end;

      if ValorMoraJuros <> 0 then
      begin
         if DataMoraJuros <> 0 then
            AStringList.Add('Cobrar juros de '                               +
                             FormatCurr('R$ #,##0.00',ValorMoraJuros)         +
                             ' por dia de atraso para pagamento a partir de ' +
                             FormatDateTime('dd/mm/yyyy',DataMoraJuros))
         else
            AStringList.Add('Cobrar juros de '                       +
                             FormatCurr('R$ #,##0.00',ValorMoraJuros) +
                             ' por dia de atraso');
      end;

      if PercentualMulta <> 0 then
         AStringList.Add('Cobrar Multa de ' +
                         FormatCurr('R$ #,##0.00', PercentualMulta) +
                         ' após o vencimento.');

     //carrega a var AStringList com os dados digiTFDos
     if Linha1 <> C_ST_VAZIO then
        AStringList.Add(Linha1);
     if Linha2 <> C_ST_VAZIO then
        AStringList.Add(Linha2);
     if Linha3 <> C_ST_VAZIO then
        AStringList.Add(Linha3);
     if Linha4 <> C_ST_VAZIO then
        AStringList.Add(Linha4);
     if Linha5 <> C_ST_VAZIO then
        AStringList.Add(Linha5);
     if Linha6 <> C_ST_VAZIO then
        AStringList.Add(Linha6);

     Mensagem.Text := Trim(AStringList.Text);
     //usa a var AStringList para carregar a msg padrão do e-mail
     AStringList.Text := QvwBoletomail_msg.AsString;

     OcorrenciaOriginal.Tipo := toRemessaRegistrar;
     //seta o local de armazenamento dos arquivos (..\BOLETOS\YYYYMM\)
     DMAux.BoletoReport1.NomeArquivo := Aqui('BOLETOS\' + FormatDateTime('yyyymm', DataDocumento), Format('%.6d', [StrToInt(NossoNumero)]) + '_' + Trim(Copy(Sacado.NomeSacado,1,20)) + '.pdf');
     //gera o boleto
     DMAux.Boleto1.GerarPDF;

     //grava os dados no BD

     QFinan_bol_Emit.Open('select * from finan_boleto_emitido order by id desc limit 1');
     QFinan_bol_Emit.Insert;
     QFinan_bol_Emitdata_process.Value         := DtProc;
     QFinan_bol_Emitboleto.Value               := QvwBoletoid.Value;
     QFinan_bol_Emitdt_vencimento.Value        := Vencimento;
     QFinan_bol_Emitnossonmro.AsString         := IntToStr(QvwBoletonossonumero.Value + 1);
     QFinan_bol_Emitvalor.Value                := ValorDocumento;
     QFinan_bol_Emitjuros_dias.Value           := ValorMoraJuros;
     QFinan_bol_Emitmulta.Value                := PercentualMulta;
     QFinan_bol_Emitdesconto.Value             := ValorDesconto;
     QFinan_bol_Emitlinha_dig.AsString         := LinhaDigitada;// Boleto1.Banco.BancoClass.LinhaDigitada;// .ListaDeBoletos[0].LinhaDigitada;
     QFinan_bol_Emitsacado_cnpj.AsString       := Sacado.CNPJCPF;
     QFinan_bol_Emitsacado_nome.AsString       := Sacado.NomeSacado;
     QFinan_bol_Emitsacado_logradouro.AsString := Sacado.Logradouro;
     QFinan_bol_Emitsacado_nmro.AsString       := Sacado.Numero;
     QFinan_bol_Emitsacado_bairro.AsString     := Sacado.Bairro;
     QFinan_bol_Emitsacado_municipio.AsString  := Sacado.Cidade;
     QFinan_bol_Emitsacado_uf.AsString         := Sacado.UF;
     QFinan_bol_Emitsacado_cep.AsString        := Sacado.CEP;
     QFinan_bol_Emitinstr.AsString             := AStringList.Text;
     QFinan_bol_Emitcod_instr1.AsString        := QvwBoletocod_instr1.AsString;
     QFinan_bol_Emitcod_instr2.AsString        := QvwBoletocod_instr2.AsString;
     QFinan_bol_Emitpath_boleto.AsString       := FormatDateTime('yyyymm', DataDocumento) + '\' +
                                                  Format('%.6d', [StrToInt(NossoNumero)]) + '_' +
                                                  Trim(Copy(Sacado.NomeSacado,1,20)) + '.pdf';
     QFinan_bol_Emitsacado_email.AsString      := AnsiLowerCase(email);
     QFinan_bol_Emitlinha1.AsString            := Linha1;
     QFinan_bol_Emitlinha2.AsString            := Linha2;
     QFinan_bol_Emittipo.AsString              := Tipo_Mov; //recebe dados da origem do movimento
     QFinan_bol_Emitid_movi.Value              := id_mov;   //recebe dados da origem do movimento
     QFinan_bol_Emit.Post;
     QFinan_bol_Emit.Refresh; //atualiza o dataset para obter o id

     AStringList.Free;
     DMAux.Boleto1.GerarRemessa(QFinan_bol_Emitid.Value);
     //incrementa o nossonumero na tabela finan_banco_boleto e atualiza QvwBoleto
     ExecSQL('update finan_banco_boleto set nossonumero=' + Texto_Mysql(NossoNumero) +
             ' where id=' + Texto_Mysql(DM.QvwBoletoid.Value)
     );
     QvwBoleto.Refresh;

     if Imprimir then
        DMAux.Boleto1.Imprimir;
  end;
end;

function TDM.Envia_Mail(Email, Conta, Senha, Autentica, Smtp, Auth_SSL,
   Nom_exibe, Porta_smtp, Corpo, Destinatario, Assunto, ArqPDF: String;
   tipo: integer) : Boolean;
begin
   Result      := True;

   if DMAux.IdSMTP.Connected then
      DMAux.IdSMTP.Disconnect();

   DMAux.IdSMTP.Host := Smtp;
   { Configuraçao da Autenticação }
   if tipo = 0 then { Sem Autenticação }
   begin
      DMAux.IdSMTP.IOHandler := nil;
      DMAux.IdSMTP.AuthType := satNone;
      DMAux.IdSMTP.Username := '';
      DMAux.IdSMTP.Password := '';
      DMAux.IdSMTP.UseTLS := utNoTLSSupport;
   end
   else if tipo = 1 then { Default }
   begin
      DMAux.IdSMTP.IOHandler := nil;
      DMAux.IdSMTP.AuthType := satDefault;
      DMAux.IdSMTP.Username := Conta;
      DMAux.IdSMTP.Password := Senha;
      DMAux.IdSMTP.UseTLS := utUseExplicitTLS;
   end
   else if tipo = 2 then { SSL }
   begin
      DMAux.IdSMTP.IOHandler := DMAux.idHandle;
      DMAux.IdSMTP.AuthType := satDefault;
      DMAux.IdSMTP.Username := Conta;
      DMAux.IdSMTP.Password := Senha;
      DMAux.IdSMTP.UseTLS := utUseExplicitTLS;
      { Configuramos o IOHandle }
      DMAux.idHandle.SSLOptions.Method := sslvSSLv23;
   end
   else if tipo = 3 then { TLS }
   begin
      DMAux.IdSMTP.IOHandler := DMAux.idHandle;
      DMAux.IdSMTP.AuthType := satDefault;
      DMAux.IdSMTP.Username := Conta;
      DMAux.IdSMTP.Password := Senha;
      DMAux.IdSMTP.UseTLS := utUseRequireTLS;
      { Configuramos o IOHandle }
      DMAux.idHandle.SSLOptions.Method := sslvSSLv3;
   end;

   DMAux.IdSMTP.Port := StrToInt(Porta_smtp);
   { Configuraçao da Autenticação FIM }

   DMAux.IdMessage.From.Name    := Nom_exibe; // Nome do Remetente
   DMAux.IdMessage.From.Address := Email; // E-mail do Remetente = email valido...
   DMAux.IdMessage.Recipients.EMailAddresses := Destinatario; // destinatario
   DMAux.IdMessage.Priority     := mpHighest;
   DMAux.IdMessage.Subject      := Assunto; // Assunto do E-mail

   try
      if trim(ArqPDF) <> '' then
      begin
         TIdAttachmentFile.Create(DMAux.IdMessage.MessageParts, TFileName(ArqPDF));
      end;

      DMAux.IdMessage.Body.Clear;
      DMAux.IdMessage.Body.Add(Corpo);

      DMAux.IdSMTP.Connect;

      if DMAux.IdSMTP.AuthType <> satNone then
         DMAux.IdSMTP.Authenticate;

      DMAux.IdSMTP.Send(DMAux.IdMessage);
      DMAux.IdMessage.MessageParts.Clear;
      DMAux.IdSMTP.Disconnect();
      {$IFDEF GER}
      Status(False,'','');
      {$endif}
   except
      on E: Exception do
      begin
         DMAux.IdMessage.MessageParts.Clear;
        {$IFDEF GER}
         Status(False,'','');
         {$endif}
         ShowMessage('Erro no envio do e-mail: ' + E.Message);
         Result := False;
      end;
   end;
end;

procedure TDM.Enviar_Boleto(id:integer; email: string; anexo: string);
var
   AStringList, aFileList: TStringList;
   b: boolean;
   aTipo: integer;
begin
   QFinan_bol_Emit.OPen('select * from finan_boleto_emitido where id=' + Texto_Mysql(id));//localiza o boleto emitido

   if QFinan_bol_Emit.IsEmpty then
   begin
      log('boleto_mail','ERRO', 'Boleto id ' + Texto_Mysql(id) + ' não encontrado.');
      exit;
   end;

   AStringList := TStringList.Create;
   aFileList   := TStringList.Create;

   QvwBoleto.Open('select * from vw_finan_boleto');//abre a tabela de cadastro de boleto do cedente

   if not QvwBoleto.Locate('id', QFinan_bol_Emitboleto.Value, []) then//localiza o boleto do cedente
   begin
      log('boleto_mail','ERRO', 'vw_finan_boleto id ' + QFinan_bol_Emitboleto.AsString + ' não encontrado.');
      exit;
   end;

   AStringList.Text := QvwBoletomail_msg.AsString;//carrega o texto do e-mail
   aFileList.Clear;
   aFileList.Text   := Aqui('BOLETOS\', QFinan_bol_Emitpath_boleto.AsString);//carrega o path do pdf
   //troca os coringas pelas informações
   FindReplace('%v', FormatDateTime('dd/mm/yyyy', QFinan_bol_Emitdt_vencimento.Value), AStringList);
   FindReplace('%c', QFinan_bol_Emitlinha_dig.AsString, AStringList);
   FindReplace('%n', Number(QFinan_bol_Emitlinha_dig.AsString), AStringList);
   FindReplace('%r', QFinan_bol_Emitlinha1.asstring, AStringList);
   FindReplace('%f', QFinan_bol_Emitsacado_nome.AsString + ' (' + QFinan_bol_Emitsacado_cnpj.AsString + ')', AStringList);

   if QvwBoletomail_tls.AsString = 'S' then
      atipo := 3
   else
   if QvwBoletomail_ssl.AsString = 'S' then
      atipo := 2
   else
   atipo := 1;

   repeat
      b := DM.Envia_Mail(QvwBoletomail_from.AsString,
                       QvwBoletomail_user.AsString,
                       QvwBoletomail_password.AsString,
                       '',
                       QvwBoletomail_host.AsString,
                       '',
                       'Cobrança Paradigma T.I.',
                       QvwBoletomail_port.AsString,
                       AStringList.Text,
                       email,
                       QvwBoletomail_assunto.AsString,
                       Aqui('BOLETOS\', QFinan_bol_Emitpath_boleto.AsString),
                       aTipo);
   until (b) or (MessageBox(0, 'Tentar novamente?', 'Atenção!', MB_ICONQUESTION or MB_YESNO) = idNo);


 {  mail1.Host     := QvwBoletomail_host.AsString;
   mail1.Username := QvwBoletomail_user.AsString;
   mail1.Port     := QvwBoletomail_port.AsString;
   mail1.From     := QvwBoletomail_from.AsString;
   mail1.SetSSL   := StrToBoolean(QvwBoletomail_ssl.AsString);
   mail1.SetTLS   := StrToBoolean(QvwBoletomail_tls.AsString);
   mail1.ReadingConfirmation := StrToBoolean(QvwBoletomail_pedeconfirma.AsString);
   mail1.Subject  := QvwBoletomail_nomeremetente.AsString;

   Boleto1.EnviarEmail(
                       email, //to
                       QvwBoletomail_assunto.AsString,
                       AStringList,//mensagem
                       false,//pdf
                       nil, //CC
                       aFileList, //anexos
   );  }

   AStringList.Free;
   aFileList.Free;
end;

function TDM.ExecSQL(s_script: string; raising: boolean=True):boolean;
begin
   erro_script := false;
   Result := True;

   with DMConn.DB do
   try
      if pos('koplin',s_script)<=0 then
         Log(C_221,'SCRIPT', s_script);

      ExecSQL(s_script);
   except
      on E: Exception do
      begin
        Result := false;
        Log(C_221,'SCRIPT ERRO', s_script);
      end;
   end;
end;

procedure TDM.Exibir_Plano(operacao: string);
var
   i: integer;
   s, s1: string;
begin
   DMConn.Q1.Open('select b.nivel from finan_centro_custo_assoc a, ' +
           'finan_centro_custo b where a.codigo=b.plano and a.operacao=' +
            Texto_Mysql(operacao));

   if DMConn.Q1.IsEmpty then
   begin
      ShowMessage('Nenhum plano de contas associado a esta operação.');
      exit;
   end;

   s1 := C_ST_VAZIO;
   s  := s1;

   for i := 1 to DMConn.Q1.Fields[0].AsInteger do
   begin
      DMConn.Q1.Open('select b.plano, b.conta from finan_centro_custo_assoc a, finan_centro_custo b ' +
              'where substr(REPLACE(a.codigo,".",""),1,' + IntToStr(i) +
              ') = substr(REPLACE(b.plano,".",""),1,' + IntToStr(i) + ') ' +
              'and nivel=' + Texto_Mysql(i) +
              'and a.operacao=' + Texto_Mysql(operacao)
      );

      s := s + s1 + DMConn.Q1.FieldByName('plano').AsString + ' - ' + DMConn.Q1.FieldByName('conta').AsString + C_CR;
      s1 := s1 + '    ';
   end;

   ShowMessage(s);
end;


procedure TDM.GeraChave;
var
   aQuery:TFDQuery;
begin
   aQuery := TFDQuery.Create(self);
   aQuery.Connection := DMConn.DB;
   ExecSQL(C_SQL20);

   aQuery.Open(C_SQL21);
   s_chave  := aQuery.Fields[0].AsString;
   aQuery.Free;
end;

function TDM.Gerar_CodBarra_Balanca: string;
var
 //  tam : integer;
 //  prefix: string;
   aQuery:TFDQuery;
begin
   aQuery := TFDQuery.Create(self);
   aQuery.Connection := DMConn.DB;
 //  tam := DM_INI.Ini.StoredValue['tam_cod_balanca'];
 //  prefix := DM_INI.Ini.StoredValue['prefix_cod_balanca'];
//   prefix := RFill()

   aQuery.Open(C_SQL66);
   Result := aQuery.Fields[0].AsString;// 123 = 00123
   aQuery.Free;
end;

function TDM.Gerar_CodBarra_GTIN: string;
var
   prefix, s: string;
   part1, part2 : integer;
begin
   Randomize;
   part1  := random(9999);
   part2  := random(9999);
   prefix := DM_INI.INI.StoredValue['prefix_gtin'];
   s      := prefix + Format('%.4d',[part1]) + Format('%.4d',[part2]) + '0';
   Result := getEAN(s);
end;

function TDM.Gerar_CodBarra_Sequencia: string;
var
   tam : integer;
   aQuery:TFDQuery;
begin
   aQuery := TFDQuery.Create(self);
   aQuery.Connection := DMConn.DB;
   tam := DM_INI.Ini.StoredValue['tam_min_cod_item'];

   aQuery.Open(C_SQL65);
   Result := aQuery.Fields[0].AsString;

   if length(Result) < tam then
      Result := LFill(Result, tam, '0');
   aQuery.Free;
end;


end.
