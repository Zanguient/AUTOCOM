unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrm, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, DateUtils,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, RxDBComb, DBCtrls, Mask,
  Buttons, ComCtrls, ExtCtrls, ACBrBase, ACBrEnterTab, rxPlacemnt, Menus, XMLIntf,
  cxButtons, cxContainer, cxTextEdit, cxLabel, ShellAPI, cxNavigator, ACBRDFEUtil,
  cxDBNavigator, rxToolEdit, rxCurrEdit, pcnConversao, ACBrCAPICOM_TLB, XMLDoc,
  pcnAuxiliar, dxGDIPlusClasses, Easysize, dxSkinsForm, uViews,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit, cxDBLabel, cxCheckBox,
  dxSkinsCore, dxSkinCaramel, dxSkinscxPCPainter;

type
  TfrmMain = class(Tfrm)
    PG1: TPageControl;
    TabCfg: TTabSheet;
    PGCfg: TPageControl;
    TabCfgDadosCfg: TTabSheet;
    btnGetCert: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    CmbFormaEmissao: TRxDBComboBox;
    cmbFinNFe: TRxDBComboBox;
    cmbTpImp: TRxDBComboBox;
    RxDBComboBox1: TRxDBComboBox;
    TabDados: TTabSheet;
    PGNF: TPageControl;
    TabDadosNFe: TTabSheet;
    TabDadosRef: TTabSheet;
    TabDest: TTabSheet;
    TabItens: TTabSheet;
    PGItem: TPageControl;
    TabItem: TTabSheet;
    TabImposto: TTabSheet;
    PGImposto: TPageControl;
    TabICMS: TTabSheet;
    TabIPI: TTabSheet;
    TabPIS: TTabSheet;
    TabCOFINS: TTabSheet;
    TabISSQN: TTabSheet;
    g1: TcxGrid;
    tbv: TcxGridDBTableView;
    g1Lvl1: TcxGridLevel;
    TabTotais: TTabSheet;
    TabTransp: TTabSheet;
    PGTransp: TPageControl;
    TabTranspDados: TTabSheet;
    TabTranspReboque: TTabSheet;
    TabTranspVolumes: TTabSheet;
    TabCob: TTabSheet;
    TabInfoAdic: TTabSheet;
    TabEmite: TTabSheet;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit46: TDBEdit;
    gpCont: TGroupBox;
    DBEdit50: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit51: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit20: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    cmb_dest_ender_uf: TRxDBComboBox;
    cmbDest_EnderDest_cMun: TRxDBComboBox;
    GroupBox7: TGroupBox;
    cmbRetirada_UF: TRxDBComboBox;
    cmbRetirada_cMun: TRxDBComboBox;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    GroupBox8: TGroupBox;
    cmbEntrega_UF: TRxDBComboBox;
    cmbEntrega_cMun: TRxDBComboBox;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    Shape5: TShape;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    DBEdit99: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit105: TDBEdit;
    DBEdit118: TDBEdit;
    DBEdit119: TDBEdit;
    DBEdit120: TDBEdit;
    DBEdit121: TDBEdit;
    DBEdit122: TDBEdit;
    DBEdit127: TDBEdit;
    DBEdit133: TDBEdit;
    DBEdit138: TDBEdit;
    DBEdit150: TDBEdit;
    DBEdit151: TDBEdit;
    DBEdit152: TDBEdit;
    DBEdit154: TDBEdit;
    RxDBComboBox6: TRxDBComboBox;
    CMBISSQN_cMunFG: TRxDBComboBox;
    RxDBComboBox9: TRxDBComboBox;
    tbvnItem: TcxGridDBColumn;
    tbvcProd: TcxGridDBColumn;
    tbvcEAN: TcxGridDBColumn;
    tbvxProd: TcxGridDBColumn;
    tbvNCM: TcxGridDBColumn;
    tbvCFOP: TcxGridDBColumn;
    tbvuCom: TcxGridDBColumn;
    tbvqCom: TcxGridDBColumn;
    tbvvUnCom: TcxGridDBColumn;
    tbvvProd: TcxGridDBColumn;
    tbvvOutro: TcxGridDBColumn;
    tbvvFrete: TcxGridDBColumn;
    tbvvSeg: TcxGridDBColumn;
    tbvvDesc: TcxGridDBColumn;
    tbvICMS_vBC: TcxGridDBColumn;
    tbvICMS_pICMS: TcxGridDBColumn;
    tbvICMS_vICMS: TcxGridDBColumn;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    DBEdit100: TDBEdit;
    DBEdit126: TDBEdit;
    DBEdit125: TDBEdit;
    DBEdit124: TDBEdit;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    Panel3: TPanel;
    DBEdit129: TDBEdit;
    DBEdit130: TDBEdit;
    DBEdit132: TDBEdit;
    DBEdit131: TDBEdit;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    Panel4: TPanel;
    DBEdit134: TDBEdit;
    DBEdit135: TDBEdit;
    DBEdit136: TDBEdit;
    DBEdit137: TDBEdit;
    DBEdit140: TDBEdit;
    DBEdit141: TDBEdit;
    GroupBox24: TGroupBox;
    GroupBox25: TGroupBox;
    DBEdit142: TDBEdit;
    DBEdit143: TDBEdit;
    GroupBox26: TGroupBox;
    DBEdit144: TDBEdit;
    DBEdit145: TDBEdit;
    Panel7: TPanel;
    GroupBox27: TGroupBox;
    GroupBox28: TGroupBox;
    DBEdit146: TDBEdit;
    DBEdit147: TDBEdit;
    GroupBox29: TGroupBox;
    DBEdit148: TDBEdit;
    DBEdit149: TDBEdit;
    Panel8: TPanel;
    GBICMS: TGroupBox;
    edICMS_vBC: TDBEdit;
    edICMS_pICMS: TDBEdit;
    edICMS_vICMS: TDBEdit;
    edICMS_pRedBC: TDBEdit;
    GBICMSST: TGroupBox;
    cmbICMS_modBCST: TRxDBComboBox;
    edICMS_pMVAST: TDBEdit;
    edICMS_pRedBCST: TDBEdit;
    edICMS_vBCST: TDBEdit;
    edICMS_pICMSST: TDBEdit;
    edICMS_vICMSST: TDBEdit;
    RxDBComboBox10: TRxDBComboBox;
    RxDBComboBox11: TRxDBComboBox;
    TabCfgCalc: TTabSheet;
    GroupBox20: TGroupBox;
    cb_icms_frete: TCheckBox;
    cb_icms_desc: TCheckBox;
    cb_icms_seg: TCheckBox;
    cb_icms_oda: TCheckBox;
    GroupBox21: TGroupBox;
    cb_icms_st_frete: TCheckBox;
    cb_icms_st_desc: TCheckBox;
    cb_icms_st_seg: TCheckBox;
    cb_icms_st_oda: TCheckBox;
    cb_icms_st_ipi: TCheckBox;
    DBEdit102: TDBEdit;
    DBEdit107: TDBEdit;
    DBEdit113: TDBEdit;
    DBEdit114: TDBEdit;
    cmbTransporta_UF: TRxDBComboBox;
    cmbTransporta_xMun: TRxDBComboBox;
    RxDBComboBox15: TRxDBComboBox;
    GroupBox22: TGroupBox;
    DBEdit101: TDBEdit;
    DBEdit115: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit123: TDBEdit;
    DBEdit128: TDBEdit;
    GroupBox23: TGroupBox;
    DBEdit153: TDBEdit;
    DBEdit156: TDBEdit;
    RxDBComboBox16: TRxDBComboBox;
    GrdReboque: TcxGrid;
    tbvReboque: TcxGridDBTableView;
    LvReboque: TcxGridLevel;
    GroupBox30: TGroupBox;
    tbvReboqueplaca: TcxGridDBColumn;
    tbvReboqueuf: TcxGridDBColumn;
    tbvReboquerntc: TcxGridDBColumn;
    btnRebInserir: TcxButton;
    btnRebRemover: TcxButton;
    EdPlaca: TEdit;
    edRntc: TEdit;
    cmbRebUf: TComboBox;
    cmbTraspRetcMunFG: TRxDBComboBox;
    Panel5: TPanel;
    GroupBox31: TGroupBox;
    Panel6: TPanel;
    GrdVol: TcxGrid;
    TbvVol: TcxGridDBTableView;
    LvVol: TcxGridLevel;
    Panel9: TPanel;
    GroupBox32: TGroupBox;
    GrdLacre: TcxGrid;
    TbvLacre: TcxGridDBTableView;
    LvLacre: TcxGridLevel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    btnVolInserir: TcxButton;
    btnVolRemover: TcxButton;
    Panel13: TPanel;
    btnLacreInserir: TcxButton;
    btnLacreRemover: TcxButton;
    EdQtd: TEdit;
    EdEspecie: TEdit;
    EdMarca: TEdit;
    EdNmro: TEdit;
    EdPliq: TCurrencyEdit;
    edPbrt: TCurrencyEdit;
    EdLacre: TEdit;
    TbvVolqVol: TcxGridDBColumn;
    TbvVolespecie: TcxGridDBColumn;
    TbvVolmarca: TcxGridDBColumn;
    TbvVolnVol: TcxGridDBColumn;
    TbvVolpesoL: TcxGridDBColumn;
    TbvVolpesoB: TcxGridDBColumn;
    TbvLacrenlacre: TcxGridDBColumn;
    Panel14: TPanel;
    GrdDup: TcxGrid;
    TbvDup: TcxGridDBTableView;
    LvDup: TcxGridLevel;
    EdDupVenc: TDateEdit;
    EdDupValor: TCurrencyEdit;
    btnDupInserir: TcxButton;
    btnDupRemover: TcxButton;
    TbvDupnDup: TcxGridDBColumn;
    TbvDupdVenc: TcxGridDBColumn;
    TbvDupvDup: TcxGridDBColumn;
    EdDup: TEdit;
    Panel15: TPanel;
    GroupBox33: TGroupBox;
    DBEdit139: TDBEdit;
    DBEdit155: TDBEdit;
    DBEdit157: TDBEdit;
    DBEdit158: TDBEdit;
    cxDBNavigator1: TcxDBNavigator;
    GroupBox34: TGroupBox;
    GroupBox35: TGroupBox;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    GroupBox37: TGroupBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBEdit159: TDBEdit;
    DBEdit160: TDBEdit;
    DBEdit161: TDBEdit;
    Bar1: TStatusBar;
    Panel16: TPanel;
    mmResp: TMemo;
    DBEdit162: TDBEdit;
    DBEdit163: TDBEdit;
    DBEdit164: TDBEdit;
    DBEdit165: TDBEdit;
    DBEdit166: TDBEdit;
    DBEdit167: TDBEdit;
    DBEdit168: TDBEdit;
    DBEdit169: TDBEdit;
    DBEdit174: TDBEdit;
    DBEdit175: TDBEdit;
    GroupBox40: TGroupBox;
    DBEdit181: TDBEdit;
    DBEdit182: TDBEdit;
    DBEdit183: TDBEdit;
    DBEdit184: TDBEdit;
    DBEdit185: TDBEdit;
    DBEdit186: TDBEdit;
    DBEdit187: TDBEdit;
    GroupBox41: TGroupBox;
    DBEdit176: TDBEdit;
    DBEdit177: TDBEdit;
    DBEdit178: TDBEdit;
    DBEdit179: TDBEdit;
    DBEdit180: TDBEdit;
    Shape16: TShape;
    GroupBox42: TGroupBox;
    DBEdit171: TDBEdit;
    DBEdit172: TDBEdit;
    DBEdit173: TDBEdit;
    DBEdit170: TDBEdit;
    GBCredICMSSN: TGroupBox;
    edICMS_pCredSN: TDBEdit;
    edICMS_vCredICMSSN: TDBEdit;
    Panel18: TPanel;
    nav1: TcxDBNavigator;
    edICMS_vTabelaST: TDBEdit;
    cbSublimite: TCheckBox;
    pnlDescItem: TPanel;
    edvDesc: TCurrencyEdit;
    edpDesc: TCurrencyEdit;
    cmbCFOP: TDBComboBox;
    TabCfgEmail: TTabSheet;
    GroupBox43: TGroupBox;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    mmEmailMsg: TMemo;
    EdtEmail: TEdit;
    rgAutenticacao_email: TRadioGroup;
    Shape17: TShape;
    cxDBNavigator2: TcxDBNavigator;
    GrdRef: TcxGrid;
    TbvRef: TcxGridDBTableView;
    LvRef: TcxGridLevel;
    TbvRefrefNFe: TcxGridDBColumn;
    TbvRefRefNF_cUF: TcxGridDBColumn;
    TbvRefRefNF_AAMM: TcxGridDBColumn;
    TbvRefRefNF_CNPJ: TcxGridDBColumn;
    TbvRefRefNF_modelo: TcxGridDBColumn;
    TbvRefRefNF_serie: TcxGridDBColumn;
    TbvRefRefNF_nNF: TcxGridDBColumn;
    TbvRefRefNFP_cUF: TcxGridDBColumn;
    TbvRefRefNFP_AAMM: TcxGridDBColumn;
    TbvRefRefNFP_CNPJCPF: TcxGridDBColumn;
    TbvRefRefNFP_IE: TcxGridDBColumn;
    TbvRefRefNFP_modelo: TcxGridDBColumn;
    TbvRefRefNFP_serie: TcxGridDBColumn;
    TbvRefRefNFP_nNF: TcxGridDBColumn;
    TbvRefRefECF_modelo: TcxGridDBColumn;
    TbvRefRefECF_nECF: TcxGridDBColumn;
    TbvRefRefECF_nCOO: TcxGridDBColumn;
    GroupBox44: TGroupBox;
    DBEdit91: TDBEdit;
    cmb_ref_ecf_mod: TRxDBComboBox;
    btnLimparNF: TcxButton;
    btnImportVendas: TcxButton;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Panel17: TPanel;
    GroupBox36: TGroupBox;
    btnConsultarStatusServiço: TcxButton;
    btnCosultarLog: TcxButton;
    btnConsultarNFe: TcxButton;
    btnConsultarChave: TcxButton;
    btnCancelarNFe: TcxButton;
    btnCancelarNfeChave: TcxButton;
    Panel19: TPanel;
    GroupBox45: TGroupBox;
    btnCadCli: TcxButton;
    btnCadFor: TcxButton;
    btnCadProd: TcxButton;
    Panel20: TPanel;
    GroupBox38: TGroupBox;
    btnImprimirNFe: TcxButton;
    cxButton1: TcxButton;
    GroupBox39: TGroupBox;
    btnEmitir: TcxButton;
    btn_enviar_email: TcxButton;
    cbhora: TCheckBox;
    pnlmail: TPanel;
    edmail: TEdit;
    btnenviarmail: TcxButton;
    btnmailcancelar: TcxButton;
    EdCC: TEdit;
    btnAbrePastaPDF: TcxButton;
    cxButton2: TcxButton;
    btnInserirProt: TcxButton;
    btn_cce: TcxButton;
    cxButton3: TcxButton;
    btnListaNF: TcxButton;
    cbDatSai: TCheckBox;
    GroupBox46: TGroupBox;
    cxButton5: TcxButton;
    bar2: TProgressBar;
    btnAtualizar: TcxButton;
    btnGravarCfg: TcxButton;
    btnFEmissao: TcxButton;
    btnTestar_email: TcxButton;
    btnAlterarNatOp: TcxButton;
    btnDestPesq: TcxButton;
    btnDestContinuar: TcxButton;
    Button5: TcxButton;
    Button6: TcxButton;
    Button7: TcxButton;
    btnCalcularBCIPI: TcxButton;
    btnCalcular: TcxButton;
    Button3: TcxButton;
    Shape1: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape19: TShape;
    Shape20: TShape;
    cxButton4: TcxButton;
    cmbICMS_motDesICMS: TRxDBComboBox;
    mmHint: TMemo;
    btnCadEmpresa: TcxButton;
    cxButton6: TcxButton;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label13: TcxLabel;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label18: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    Label21: TcxLabel;
    Label22: TcxLabel;
    Label23: TcxLabel;
    Label17: TcxLabel;
    Label99: TcxLabel;
    Label234: TcxLabel;
    Label203: TcxLabel;
    Label204: TcxLabel;
    Label205: TcxLabel;
    Label239: TcxLabel;
    Label240: TcxLabel;
    Label241: TcxLabel;
    Label242: TcxLabel;
    Label243: TcxLabel;
    Label244: TcxLabel;
    Label245: TcxLabel;
    Label40: TcxLabel;
    Label41: TcxLabel;
    Label42: TcxLabel;
    Label43: TcxLabel;
    Label44: TcxLabel;
    Label45: TcxLabel;
    Label46: TcxLabel;
    Label48: TcxLabel;
    Label49: TcxLabel;
    Label50: TcxLabel;
    Label51: TcxLabel;
    Label52: TcxLabel;
    Label54: TcxLabel;
    Label55: TcxLabel;
    Label56: TcxLabel;
    Label57: TcxLabel;
    Label58: TcxLabel;
    Label59: TcxLabel;
    Label60: TcxLabel;
    Label61: TcxLabel;
    Label62: TcxLabel;
    Label63: TcxLabel;
    Label64: TcxLabel;
    Label65: TcxLabel;
    Label66: TcxLabel;
    Label67: TcxLabel;
    Label68: TcxLabel;
    Label69: TcxLabel;
    Label70: TcxLabel;
    Label71: TcxLabel;
    Label72: TcxLabel;
    Label248: TcxLabel;
    Label73: TcxLabel;
    Label74: TcxLabel;
    Label75: TcxLabel;
    Label76: TcxLabel;
    Label77: TcxLabel;
    Label78: TcxLabel;
    Label79: TcxLabel;
    Label80: TcxLabel;
    Label81: TcxLabel;
    Label82: TcxLabel;
    Label83: TcxLabel;
    Label84: TcxLabel;
    Label95: TcxLabel;
    Label96: TcxLabel;
    Label85: TcxLabel;
    Label86: TcxLabel;
    Label87: TcxLabel;
    Label88: TcxLabel;
    Label89: TcxLabel;
    Label90: TcxLabel;
    Label91: TcxLabel;
    Label92: TcxLabel;
    Label93: TcxLabel;
    Label94: TcxLabel;
    Label97: TcxLabel;
    Label98: TcxLabel;
    Label101: TcxLabel;
    Label102: TcxLabel;
    Label103: TcxLabel;
    Label104: TcxLabel;
    Label105: TcxLabel;
    Label106: TcxLabel;
    Label107: TcxLabel;
    Label108: TcxLabel;
    Label109: TcxLabel;
    Label110: TcxLabel;
    Label111: TcxLabel;
    Label112: TcxLabel;
    Label113: TcxLabel;
    Label114: TcxLabel;
    Label115: TcxLabel;
    Label237: TcxLabel;
    Label238: TcxLabel;
    Label133: TcxLabel;
    Label134: TcxLabel;
    Label135: TcxLabel;
    Label136: TcxLabel;
    Label137: TcxLabel;
    Label138: TcxLabel;
    Label143: TcxLabel;
    Label141: TcxLabel;
    Label140: TcxLabel;
    Label139: TcxLabel;
    Label142: TcxLabel;
    Label121: TcxLabel;
    Label117: TcxLabel;
    Label118: TcxLabel;
    Label116: TcxLabel;
    Label129: TcxLabel;
    Label119: TcxLabel;
    Label120: TcxLabel;
    Label122: TcxLabel;
    Label132: TcxLabel;
    Label53: TcxLabel;
    Label123: TcxLabel;
    Label124: TcxLabel;
    Label125: TcxLabel;
    Label126: TcxLabel;
    Label127: TcxLabel;
    Label128: TcxLabel;
    Label236: TcxLabel;
    Label232: TcxLabel;
    Label233: TcxLabel;
    Label144: TcxLabel;
    Label149: TcxLabel;
    Label154: TcxLabel;
    Label172: TcxLabel;
    Label173: TcxLabel;
    Label174: TcxLabel;
    Label175: TcxLabel;
    Label145: TcxLabel;
    Label146: TcxLabel;
    Label147: TcxLabel;
    Label148: TcxLabel;
    Label155: TcxLabel;
    Label156: TcxLabel;
    Label157: TcxLabel;
    Label158: TcxLabel;
    Label159: TcxLabel;
    Label160: TcxLabel;
    Label161: TcxLabel;
    Label162: TcxLabel;
    Label163: TcxLabel;
    Label164: TcxLabel;
    Label165: TcxLabel;
    Label166: TcxLabel;
    Label167: TcxLabel;
    Label168: TcxLabel;
    Label169: TcxLabel;
    Label170: TcxLabel;
    Label171: TcxLabel;
    Label130: TcxLabel;
    Label131: TcxLabel;
    Label150: TcxLabel;
    Label151: TcxLabel;
    Label152: TcxLabel;
    Label177: TcxLabel;
    Label178: TcxLabel;
    Label153: TcxLabel;
    Label176: TcxLabel;
    Label179: TcxLabel;
    Label180: TcxLabel;
    Label181: TcxLabel;
    Label182: TcxLabel;
    Label183: TcxLabel;
    Label184: TcxLabel;
    Label185: TcxLabel;
    Label186: TcxLabel;
    Label187: TcxLabel;
    Label188: TcxLabel;
    Label189: TcxLabel;
    Label190: TcxLabel;
    Label191: TcxLabel;
    Label192: TcxLabel;
    Label193: TcxLabel;
    Label194: TcxLabel;
    Label195: TcxLabel;
    Label200: TcxLabel;
    Label201: TcxLabel;
    Label202: TcxLabel;
    Label196: TcxLabel;
    Label197: TcxLabel;
    Label198: TcxLabel;
    Label199: TcxLabel;
    Label206: TcxLabel;
    Label207: TcxLabel;
    Label208: TcxLabel;
    Label209: TcxLabel;
    Label210: TcxLabel;
    Label211: TcxLabel;
    Label212: TcxLabel;
    Label213: TcxLabel;
    Label218: TcxLabel;
    Label219: TcxLabel;
    Label235: TcxLabel;
    Label225: TcxLabel;
    Label226: TcxLabel;
    Label227: TcxLabel;
    Label228: TcxLabel;
    Label229: TcxLabel;
    Label230: TcxLabel;
    Label231: TcxLabel;
    Label220: TcxLabel;
    Label221: TcxLabel;
    Label222: TcxLabel;
    Label223: TcxLabel;
    Label224: TcxLabel;
    Label215: TcxLabel;
    Label216: TcxLabel;
    Label217: TcxLabel;
    Label214: TcxLabel;
    Label47: TcxLabel;
    lblnome: TcxLabel;
    lblcnpj: TcxLabel;
    lblendereco: TcxLabel;
    Label247: TcxLabel;
    DBEdit18: TDBEdit;
    cxButton7: TcxButton;
    cmbProdCST: TcxDBImageComboBox;
    cmbProdCSOSN: TcxDBImageComboBox;
    cmbIdeTpNF: TcxDBImageComboBox;
    cmb_Ide_tpemis: TcxDBImageComboBox;
    CMBIde_tpAmb: TcxDBImageComboBox;
    cmbIde_finNFe: TcxDBImageComboBox;
    cmb_nf_UF: TcxDBImageComboBox;
    cmbIde_indPag: TcxDBImageComboBox;
    cmbPIS_CST: TcxDBImageComboBox;
    cmbCOFINS_CST: TcxDBImageComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    DBEdit19: TDBEdit;
    cxLabel4: TcxLabel;
    DBEdit21: TDBEdit;
    Panel1: TPanel;
    DBMemo4: TDBMemo;
    Panel2: TPanel;
    btnDic: TcxButton;
    btnAddDic: TcxButton;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    DBEdit22: TDBEdit;
    cxLabel7: TcxLabel;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    btnAss_Dev: TcxButton;
    cb_icms_desc_devol: TCheckBox;
    cb_icms_dest: TCheckBox;
    btnAss_Baixa: TcxButton;
    cbConsFinal: TcxDBCheckBox;
    cmbPresencial: TcxDBImageComboBox;
    cxLabel8: TcxLabel;
    cmbUF1: TcxDBImageComboBox;
    cmbUF2: TcxDBImageComboBox;
    DBText1: TDBText;
    DBText2: TDBText;
    cbMovEstoque: TcxDBCheckBox;
    RxDBComboBox2: TRxDBComboBox;
    cxLabel9: TcxLabel;
    procedure btnEscClick(Sender: TObject);
    procedure btnGravarCfgClick(Sender: TObject);
    procedure btnGetCertClick(Sender: TObject);
    procedure btnAlterarNatOpClick(Sender: TObject);
    procedure cmb_dest_ender_ufChange(Sender: TObject);
    procedure cmbRetirada_UFChange(Sender: TObject);
    procedure cmbEntrega_UFChange(Sender: TObject);
    procedure btnDestPesqClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LinkLabel1LinkClick(Sender: TObject; const Link: string;
      LinkType: TSysLinkType);
    procedure DBEdit126Exit(Sender: TObject);
    procedure DBEdit124Exit(Sender: TObject);
    procedure DBEdit130Exit(Sender: TObject);
    procedure DBEdit131Exit(Sender: TObject);
    procedure DBEdit135Exit(Sender: TObject);
    procedure DBEdit137Exit(Sender: TObject);
    procedure DBEdit128Exit(Sender: TObject);
    procedure DBEdit117Exit(Sender: TObject);
    procedure DBEdit156Exit(Sender: TObject);
    procedure DBEdit153Exit(Sender: TObject);
    procedure cmbTransporta_UFChange(Sender: TObject);
    procedure DBEdit143Exit(Sender: TObject);
    procedure DBEdit101Exit(Sender: TObject);
    procedure btnRebInserirClick(Sender: TObject);
    procedure tbvReboqueCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnRebRemoverClick(Sender: TObject);
    procedure btnVolInserirClick(Sender: TObject);
    procedure TbvVolCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnVolRemoverClick(Sender: TObject);
    procedure btnLacreInserirClick(Sender: TObject);
    procedure TbvLacreCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnLacreRemoverClick(Sender: TObject);
    procedure btnDupInserirClick(Sender: TObject);
    procedure TbvDupCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDupRemoverClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnConsultarStatusServiçoClick(Sender: TObject);
    procedure btnCosultarLogClick(Sender: TObject);
    procedure btnConsultarNFeClick(Sender: TObject);
    procedure btnImprimirNFeClick(Sender: TObject);
    procedure btnConsultarChaveClick(Sender: TObject);
    procedure btnCancelarNFeClick(Sender: TObject);
    procedure btnCancelarNfeChaveClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnEmitirClick(Sender: TObject);
    procedure TabTotaisShow(Sender: TObject);
    procedure DBEdit169Exit(Sender: TObject);
    procedure btnCalcularBCIPIClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cmbProdCSTClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure DBEdit93Change(Sender: TObject);
    procedure TabICMSShow(Sender: TObject);
    procedure cmbICMS_modBCSTClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure cmbIdeTpNFdClick(Sender: TObject);
    procedure cmbCFOPEnter(Sender: TObject);
    procedure btnAbrePastaPDFClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btnTestar_emailClick(Sender: TObject);
    procedure btn_enviar_emailClick(Sender: TObject);
    procedure edmailChange(Sender: TObject);
    procedure btnmailcancelarClick(Sender: TObject);
    procedure btnenviarmailClick(Sender: TObject);
    procedure btnCadCliClick(Sender: TObject);
    procedure btnCadForClick(Sender: TObject);
    procedure btnCadProdClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure nav1ButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
      var ADone: Boolean);
    procedure btnLimparNFClick(Sender: TObject);
    procedure cxDBNavigator2ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdSerieEnter(Sender: TObject);
    procedure btnFEmissaoClick(Sender: TObject);
    procedure CmbFormaEmissaoClick(Sender: TObject);
    procedure btnInserirProtClick(Sender: TObject);
    procedure btn_cceClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure TabEmiteShow(Sender: TObject);
    procedure btnListaNFClick(Sender: TObject);
    procedure cbDatSaiMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton5Click(Sender: TObject);
    procedure TabItensShow(Sender: TObject);
    procedure btnImportVendasClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure btnDestContinuarClick(Sender: TObject);
    procedure RxDBComboBox3Enter(Sender: TObject);
    procedure cmbProdCSOSNClick(Sender: TObject);
    procedure btnCadEmpresaClick(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure TabImpostoShow(Sender: TObject);
    procedure edICMS_pICMSExit(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cmb_Ide_tpemisClick(Sender: TObject);
    procedure cmbIdeTpNFClick(Sender: TObject);
    procedure cmbIdeTpNFEnter(Sender: TObject);
    procedure cmbIde_indPagClick(Sender: TObject);
    procedure cmbPIS_CSTClick(Sender: TObject);
    procedure DBEdit145Exit(Sender: TObject);
    procedure DBEdit149Exit(Sender: TObject);
    procedure DBEdit147Exit(Sender: TObject);
    procedure TabInfoAdicShow(Sender: TObject);
    procedure PGNFChanging(Sender: TObject; var AllowChange: Boolean);
    procedure PG1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure btnAss_DevClick(Sender: TObject);
    procedure btnAss_BaixaClick(Sender: TObject);
    procedure cmbPresencialExit(Sender: TObject);
    procedure btnDicClick(Sender: TObject);
    procedure btnAddDicClick(Sender: TObject);
    procedure cbMovEstoqueClick(Sender: TObject);
    procedure cmbCFOPExit(Sender: TObject);
  private
    procedure AbreDatasets;
    procedure Decodifica_Chave_NFe;
    function Calcular_BC_ICMS: currency;
    function Calcular_BC_PIS_COFINS: currency;
    function Calcular_VR_ICMS: currency;
    function Calcular_BC_ICMS_ST: currency;
    function Calcular_VR_ICMS_STSN: currency;
    function Calcular_VR_ICMS_ST_CST10: currency;
    procedure Filtrar_CFOP(faixa: string);
    procedure Verificar_NFs;
    procedure CfgImpostos;
    procedure Converter_Status;
    procedure SplashMsg(msg: string);
  public
    procedure AbreTab(Page: TPageControl; Tab: TTabSheet);
    function ValidarCertificado: Boolean;
    procedure Consultar_NF_Chave(chave: STRING);
    procedure Cancelar_NF_Chave(chave, justificativa, protocolo: string; cnF, nNF, Serie: integer);
    procedure AtivaTabs(seq: string);
    function Validar_Dest(var campo: integer): boolean;
    function Validar_IDE(var campo: integer): boolean;
    procedure Calcular_Impostos_Item;
    procedure PopularMunic(cUF: string; cmb: TRxDBComboBox);
  end;

var
  frmMain: TfrmMain;
  s_xml, s_pdf, nfe, s_chave: string;

implementation

uses uAutocomConsts, udmnfe, uFuncoes, ualterar_natop, uMD5Print, uCadFemissao, ucce,
  uInutilizaNumeracao, uListaNF, uManut, uXML, udm_ini, dmSkins, uSkinDLL, uCadCli,
  uCadEmpresa, uCadEstoque, uCadForn, uCfg, uDM, uPesqCli, uPesqProd,
  uPesqNatOper, uRateio, uSplash, uManiDest, uAssDevol, uVendaNF, uDic_NF,
  uDM_Conn;

{$R *.dfm}

function TfrmMain.ValidarCertificado: Boolean;
var
   DtVencCertificado: TDateTime;
   DiasVencCertificado: Integer;
begin
   Result := True;

{$IFDEF TESTE}
exit;
{$endif}
   // verificar a data de vencimento do certificado
   try
      DM_NFE.NFe1.SSL.CarregarCertificado;
   except
      on E: Exception do
      begin
         Result := False;
         Log('nfe', 'CarregarCertificado', E.Message);
         ShowMessage('Erro ao ler o Certificado.'#13 + E.Message);
      end;
   end;

   if DM_NFE.NFe1.SSL.CertificadoLido then
   begin
      DtVencCertificado   := DM_NFE.NFe1.SSL.CertDataVenc;
      DiasVencCertificado := DaysBetween(NOW, DtVencCertificado);

      if DtVencCertificado < NOW then
      begin
         Result := False;
         Log('nfe', 'ValidarCertificado','ERRO - Certificado expirado');
         Bar1.Panels[1].Text := Format(
               'A data de vencimento "%s" do certificado digital configurado expirou.', [FormatDateTime('dd/mm/yyyy', DtVencCertificado)]);

         ShowMessage(Format(
               'A data de vencimento "%s" do certificado digital configurado expirou.'#13 +
               'Providencie novo certificado digital. Não será possível efetuar o '#13 +
               'envio de NF-e utilizando certificado vencido.', [FormatDateTime('dd/mm/yyyy', DtVencCertificado)]));
      end
      else
      if DiasVencCertificado < 30 then
      begin
         Log('nfe', 'ValidarCertificado', 'ALERTA - Certificado está por vencer.');
         Bar1.Panels[1].Text := Format('Faltam %d dia(s) para o vencimento do certificado digital.',[DiasVencCertificado]);

         ShowMessage(Format(
               'Faltam %d dia(s) para o vencimento do certificado digital.'#13
                  +
                  'Providencie novo certificado antes do vencimento ou não '
                  + 'será possível efetuar a emissão de NF-e, após o vencimento.',
               [DiasVencCertificado]));
      end;
   end;
end;

procedure TfrmMain.Verificar_NFs;
begin
   DMConn.Q1.OPen(C_SQL54);

   if DMConn.Q1.Fields[0].AsInteger > 0 then
   begin
      ShowMessage('EXISTEM ' + DMConn.Q1.Fields[0].AsString + ' NOTAS FISCAIS EMITIDAS SEM A '+#13+#10+
                  'DECLARAÇÃO DA DATA DE SAÍDA.'+#13+#10+
                  'Acesse a opção EMISSÃO / Botão Notas Fiscais e verifique.');
   end;
end;


procedure TfrmMain.AbreDatasets;
begin
   with DM_NFE do
   begin
      Abrir_Datasets;

      if QCfg.IsEmpty then
      begin
         pg1.ActivePage   := TabCfg;
         PGCfg.ActivePage := TabCfgDadosCfg;
      end
      else
      begin
         pg1.ActivePage   := TabDados;
         PGNF.ActivePage  := TabDadosNFe;

         if POS('V310',QCfgCfg_Geral_PathSchemas.AsString)>0 then
            bar1.Panels[1].Text := 'NF-E Versão 3.10'
         else
            bar1.Panels[1].Text := 'NF-E Versão 2.00';
      end;

      if QNFDest_CNPJCPF.asString <> '' then
      begin
         if QNFDest_EnderDest_UF.Value <> C_ST_VAZIO then
         begin
            PopularMunic(cmb_dest_ender_uf.Values[cmb_dest_ender_uf.ItemIndex], cmbDest_EnderDest_cMun);
         end;

         if QNFRetirada_UF.Value <> C_ST_VAZIO then
         begin
            PopularMunic(cmbRetirada_UF.Values[cmbRetirada_UF.ItemIndex], cmbRetirada_cMun);
         end;

         if QNFEntrega_UF.Value <> C_ST_VAZIO then
         begin
            PopularMunic(cmbEntrega_UF.Values[cmbEntrega_UF.ItemIndex], cmbEntrega_cMun);
         end;
      end;

      if QNFTransporta_CNPJCPF.asstring <> '' then
      begin
         if QNFTransporta_UF.Value <> C_ST_VAZIO then
         begin
            PopularMunic(cmbTransporta_UF.Values[cmbTransporta_UF.ItemIndex], cmbTransporta_xMun);
         end;
      end;
   end;
end;

procedure TfrmMain.btnAlterarNatOpClick(Sender: TObject);
begin
   DM.QNatOper.Open('select * from natureza_oper where tipo=' + Texto_Mysql(Clip(cmbIdeTpNF.Text,1)));
   AbreForm(TfrmPesqNatOper, frmPesqNatOper);
   DM_NFE.QNF.Edit;
   DM_NFE.QNFIde_natOp.AsString := AnsiUpperCase(DM.QNatOpernome.AsString);
end;

procedure TfrmMain.Converter_Status;
var
   i: integer;
begin
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
99 - em andam
100 - OK
105 - consultar
}
   i := DM_NFE.QNFstatus.Value;

   case i of
     100: begin
          if (DM_NFE.QNF_ItemCFOP.Value = '5929') or (DM_NFE.QNF_ItemCFOP.Value = '6929') then
             i := 8
          else
          if not DM_NFE.QNF_Referenciada.IsEmpty then
             i := 6
          else
             i := 0;
     end;
     110, 205, 301,302: i := 4;
   end;

   if i in[0,4,6,8] then
   begin
      DM_NFE.QNF.Edit;
      DM_NFE.QNFstatus.Value := i;
      DM_NFE.QNF.Post;
   end;

   DM_NFE.QNF_Chave.Edit;
   DM_NFE.QNF_Chavecstat.Value := i;

   case i of
      0,6,8: DM_NFE.QNF_Chavestatus.Value := 'AUTORIZADA';  
          4: DM_NFE.QNF_Chavestatus.Value := 'DENEGADA';
   end;
   
   DM_NFE.QNF_Chave.Post;
end;

procedure TfrmMain.btnEmitirClick(Sender: TObject);
var
   iLote, iStat: integer;
begin
   if DM_NFE.QNF.IsEmpty then
      raise Exception.Create('Não há NF em andamento.');

{$IFNDEF TESTE}
   if not ValidarCertificado then
      exit;
{$ENDIF}
   DM_NFE.ConfigurarNFe;

   if DM_NFE.QNFstatus.Value = 99 then
   begin
      if not Validar_IDE(iLote) then
         raise Exception.Create('Dados da NF: Preencha o campo ' + DM_NFE.QNF.Fields[iLote].DisplayLabel);

      if not Validar_Dest(iLote) then
         raise Exception.Create('Destinatário: Preencha o campo ' + DM_NFE.QNF.Fields[iLote].DisplayLabel);

      if DM_NFE.QNF_Item.IsEmpty then
      begin
         AbreTab(PG1, TabItens);
         AbreTab(PGItem, TabItem);
         AtivaTabs('12345678');
         raise Exception.Create('Informe ao menos um produto/serviço.');
      end;

      if DM_NFE.qnfICMSTot_vNF.Value <=0 then
         DM_NFE.Totalizar_NFe;

      DM_NFE.Preenche_Info_Compl;

      DM_NFE.Salvar;
      mmResp.Clear;

      DM_NFE.Gerar_NFe(cbhora.Checked, cbDatSai.Checked);

      iLote := DM_NFE.QFEmissaolote.Value;

      DM_NFE.QFEmissao.Edit;
      DM_NFE.QFEmissaolote.Value := DM_NFE.QFEmissaolote.Value + 1;
      DM_NFE.QFEmissao.Post;

//      DM_NFE.NFe1.NotasFiscais.GravarXML('C:\Temp\aaa.xml');
      DM_NFE.NFe1.NotasFiscais.Validar;
    //se validou, prossegue
      try
{$IFNDEF TESTE}
         DM_NFE.NFe1.Enviar(iLote);
{$ENDIF}
      finally
         DM_NFE.Status(False,'','');
      end;

      mmResp.Lines.Add('                      ENVIO DE NF-e');
      mmResp.Lines.Add('--------------------------------------------------------');
      mmResp.Lines.Add('     Ambiente: '+ TpAmbToStr(DM_NFE.NFe1.WebServices.Retorno.TpAmb));
      mmResp.Lines.Add('versão Aplic.: '+ DM_NFE.NFe1.WebServices.Retorno.verAplic);
      mmResp.Lines.Add(' Cód. Retorno: '+ IntToStr(DM_NFE.NFe1.WebServices.Retorno.cStat));
      mmResp.Lines.Add('           UF: '+ IntToStr(DM_NFE.NFe1.WebServices.Retorno.cUF));
      mmResp.Lines.Add('Cód. Mensagem: '+ IntToStr(DM_NFE.NFe1.WebServices.Retorno.cMsg));
      mmResp.Lines.Add('     Mensagem: '+ DM_NFE.NFe1.WebServices.Retorno.xMsg);
      mmResp.Lines.Add('');
      mmResp.Lines.Add(AnsiUpperCase(DM_NFE.NFe1.WebServices.Retorno.xMotivo));
      mmResp.Lines.Add('');
      mmResp.Lines.Add('       Recibo: '+ DM_NFE.NFe1.WebServices.Retorno.Recibo);
      mmResp.Lines.Add('    Protocolo: '+ DM_NFE.NFe1.WebServices.Retorno.Protocolo);

{$IFNDEF TESTE}
      iStat := DM_NFE.NFe1.WebServices.Retorno.cStat;
{$ELSE}
      iStat := 100;
{$ENDIF}
      if istat in [100,150] then
         istat := 0; //no sistema = autorizada

      DM_NFE.QNF.Edit;
      DM_NFE.QNFstatus.Value := iStat;
      DM_NFE.QNF.Post;

      DM_NFE.QNF_Chave.Append;
      DM_NFE.QNF_Chavenf.Value           := DM_NFE.QNFid.Value;
      DM_NFE.QNF_Chavechave.AsString     := Number(DM_NFE.NFe1.NotasFiscais.Items[0].Nfe.infNFe.ID);
      DM_NFE.QNF_Chaverecibo.AsString    := DM_NFE.NFe1.WebServices.Retorno.Recibo;
      DM_NFE.QNF_Chaveprotocolo.AsString := DM_NFE.NFe1.WebServices.Retorno.Protocolo;
      DM_NFE.QNF_Chavecstat.Value        := DM_NFE.QNFstatus.Value;
      DM_NFE.QNF_Chave.Post;
   end;

   if DM_NFE.QNFstatus.Value = 105 then //precisa consultar
   Try
      DM_NFE.Status(True, 'NFE - Consultando NF!', 'Você poderá ser solicitado a informar o PIN do certificado digital');

      if DM_NFE.NFe1.NotasFiscais.Count >0 then//se tem a nota no componente
      begin
         if DM_NFE.NFe1.Consultar then
         begin
            iStat := DM_NFE.NFe1.WebServices.Consulta.cStat;

            if istat in [100,150] then
               istat := 0; //no sistema = autorizada

            DM_NFE.QNF.Edit;
            DM_NFE.QNFstatus.Value := iStat;
            DM_NFE.QNF.Post;

            if DM_NFE.QNF_Chave.IsEmpty then
            begin
               DM_NFE.QNF_Chave.Insert;
               DM_NFE.QNF_Chavenf.Value       := DM_NFE.QNFid.Value;
               DM_NFE.QNF_Chavechave.AsString := Number(DM_NFE.NFe1.NotasFiscais.Items[0].Nfe.infNFe.ID);
               //consut nao traz recibo
               DM_NFE.QNF_Chaveprotocolo.AsString := DM_NFE.NFe1.WebServices.Consulta.Protocolo;
               DM_NFE.QNF_Chave.Post;
            end;
         end
         else
            ShowMessage('Não foi possível consultar a NF no site da SEFAZ. Tente novamente.');
      end
      else //do contrario faz a consulta pela chave
      begin
         DM_NFE.NFe1.WebServices.Consulta.NFeChave := Number(DM_NFE.QNF_Chavechave.AsString);

         if DM_NFE.NFe1.WebServices.Consulta.Executar then
         begin
            istat := DM_NFE.NFe1.WebServices.Consulta.cStat;

            if istat in [100,150] then
               istat := 0;

            DM_NFE.QNF.Edit;
            DM_NFE.QNFstatus.Value := istat;
            DM_NFE.QNF.Post;

            DM_NFE.QNF_Chave.Edit;
           // DM_NFE.QNF_Chaverecibo.AsString    := DM_NFE.NFe1.WebServices.Consulta.Recibo;
            DM_NFE.QNF_Chaveprotocolo.AsString := DM_NFE.NFe1.WebServices.Consulta.Protocolo;
            DM_NFE.QNF_Chavecstat.Value        := DM_NFE.QNFstatus.Value;
            DM_NFE.QNF_Chave.Post;

            mmResp.Lines.Add('                     CONSULTA NF-e');
            mmResp.Lines.Add('--------------------------------------------------------');
            Decodifica_Chave_NFe;
            mmResp.Lines.Add('         Código: ' + IntToStr(DM_NFE.NFe1.WebServices.Consulta.cStat));
            mmResp.Lines.Add(' Identificador : ' + DM_NFE.NFe1.WebServices.Consulta.protNFe.chNFe);
            mmResp.Lines.Add('      Ambiente : ' + TpAmbToStr(DM_NFE.NFe1.WebServices.Consulta.TpAmb));
            mmResp.Lines.Add(' Versão. Aplic.: ' + DM_NFE.NFe1.WebServices.Consulta.verAplic);
            mmResp.Lines.Add('            UF : ' + CodigoParaUF(DM_NFE.NFe1.WebServices.Consulta.cUF));
            mmResp.Lines.Add('  Chave Acesso : ' + DM_NFE.NFe1.WebServices.Consulta.NFeChave);
            mmResp.Lines.Add(' Data de Receb.: ' +iif(DM_NFE.NFe1.WebServices.Consulta.DhRecbto = 0, '',DateTimeToStr(DM_NFE.NFe1.WebServices.Consulta.DhRecbto)));
            mmResp.Lines.Add('');
            mmResp.Lines.Add(AnsiUpperCase(DM_NFE.NFe1.WebServices.Consulta.xMotivo));
            mmResp.Lines.Add('');
            mmResp.Lines.Add('     Protocolo : ' + DM_NFE.NFe1.WebServices.Consulta.Protocolo);
            mmResp.Lines.Add('  Digest Value : ' + DM_NFE.NFe1.WebServices.Consulta.protNFe.digVal);
         end
         else
         ShowMessage('Não foi possível consultar a NF no site da SEFAZ. Tente novamente.');
      end;

   Finally
      DM_NFE.Status(False, '', '');
   End;

   if (DM_NFE.QNFstatus.Value in [0, 110, 205]) or (DM_NFE.QNFstatus.Value=301) or (DM_NFE.QNFstatus.Value=302) then//autorizado/denegado
   begin
      DM_NFE.QFEmissao.Edit;
      DM_NFE.QFEmissaonNF.Value := DM_NFE.QNFIde_nNF.Value + 1;
      DM_NFE.QFEmissao.Post;

      case DM_NFE.QNFstatus.Value of
         110: ShowMessage('NF-e Denegada..');
         205: ShowMessage('NF-e já Denegada na SEFAZ. Esta NF está cancelada.');
         301: ShowMessage('NF-e Denegada. Irregularidade fiscal do emitente.');
         302: ShowMessage('NF-e Denegada. Irregularidade fiscal do destinatário');
      end;

      if (DM_NFE.QNFstatus.Value in [110, 205]) or (DM_NFE.QNFstatus.Value=301) or (DM_NFE.QNFstatus.Value=302) then
         DM_NFE.Zerar_Totais_NF;//denegadas são zeradas

      if DM_NFE.NFe1.WebServices.Retorno.Recibo <> C_ST_VAZIO then
      begin
         DM_NFE.QNF_Chave.Edit;
         DM_NFE.QNF_Chaverecibo.AsString    := DM_NFE.NFe1.WebServices.Retorno.Recibo;
         DM_NFE.QNF_Chaveprotocolo.AsString := DM_NFE.NFe1.WebServices.Retorno.Protocolo;
         Converter_Status;
      end;

      try
         DM_NFE.NFe1.NotasFiscais.ImprimirPDF;
         mmResp.Lines.Add('Arquivo PDF gerado em ' + DM_NFE.DANFE.PathPDF);
      finally
         ;
      end;

      DM_NFE.GravarNF;
   end
   ELSE
   begin
      Log('nfe', 'NF-e ERRO', IntToStr(DM_NFE.NFe1.WebServices.Retorno.cStat) + ' - ' + DM_NFE.NFe1.WebServices.Retorno.xMotivo);
      ShowMessage(DM_NFE.NFe1.WebServices.Retorno.xMotivo);
   end;
end;

procedure TfrmMain.SplashMsg(msg: string);
begin
   if Assigned(frmsplash) then
      frmSplash.Msg(msg);
end;

procedure TfrmMain.btnenviarmailClick(Sender: TObject);
var
   sEmail: string;
begin
   pnlmail.Hide;
   sEmail := edmail.Text;

   if EdCC.Text <> C_ST_VAZIO then
   begin
      if not ValidarEMail(EdCC.Text) then
         raise Exception.Create('Destinatário e-mail cópia incorreto');

      sEmail := sEmail + ';' + EdCC.Text;
   end;

   if DM_NFE.Envia_Mail(EdtEmail.Text,
                        edtSmtpUser.Text,
                        edtSmtpPass.Text,
                        C_ST_VAZIO,
                        edtSmtpHost.Text,
                        C_ST_VAZIO,
                        lblnome.Caption,
                        edtSmtpPort.Text,
                        mmEmailMsg.Lines.Text + C_CR +
                       'Dados para consulta no site SEFAZ' + C_CR +
                       'Chave de Acesso: ' + s_chave + C_CR + C_CR +
                       'Esta mensagem foi enviada automaticamente.' +
                       C_CR + 'Não responda este e-mail.',
                       sEmail,
                       DM_NFE.QNFEmit_xNome.AsString + ' Arquivos NF-e [' + s_chave + '] (pdf e xml)',
                       s_XML,
                       s_PDF,
                       rgAutenticacao_email.ItemIndex) then
      ShowMessage('E-mail enviado.');
end;

procedure TfrmMain.btnEscClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmMain.btnGravarCfgClick(Sender: TObject);
begin
   if DM_NFE.QCfg.State IN[dsInsert, dsEdit] then
   begin
      DM_NFE.QCfg.Post;
      ShowMessage('Alterações gravadas.');
   end;

   DM.Conectar;
   DM_NFE.Conectar;
   AbreDatasets;
end;

procedure TfrmMain.btnImportVendasClick(Sender: TObject);
begin
   AbreForm(TfrmVendaNF, frmVendaNF);
end;

procedure TfrmMain.btnImprimirNFeClick(Sender: TObject);
begin
   mmResp.Clear;
   DM_NFE.ConfigurarNFe;
   DM_NFE.Imprimir_NFe;
end;

procedure TfrmMain.btnInserirProtClick(Sender: TObject);
begin
   mmResp.Clear;
   DM_NFE.ConfigurarNFe;

   if not ValidarCertificado then
      exit;

   DM_NFE.Inserir_Protocolo;
   mmResp.Lines.Add('               INSERIR PROTOCOLO EM XML');
   mmResp.Lines.Add('--------------------------------------------------------');
   mmResp.Lines.Add('         Código: ' + IntToStr(DM_NFE.NFe1.WebServices.Consulta.cStat));
   mmResp.Lines.Add('        Retorno: ' + DM_NFE.NFe1.WebServices.Consulta.xMotivo);
   mmResp.Lines.Add('     Cabeçalho : ' + DM_NFE.NFe1.WebServices.Consulta.CabMsg);
   mmResp.Lines.Add('      Ambiente : ' + TpAmbToStr(DM_NFE.NFe1.WebServices.Consulta.TpAmb));
   mmResp.Lines.Add(' Versão. Aplic.: ' + DM_NFE.NFe1.WebServices.Consulta.verAplic);
   mmResp.Lines.Add('');
   mmResp.Lines.Add('Chave: '+ DM_NFE.NFe1.WebServices.Consulta.NFeChave);
   mmResp.Lines.Add('');
   mmResp.Lines.Add('Protocolo : ' + DM_NFE.NFe1.WebServices.Consulta.Protocolo);
end;

procedure TfrmMain.btnLacreInserirClick(Sender: TObject);
begin
   DM_NFE.QNF_Lacre.InsertRecord([DM_NFE.QNF_Volumeid.Value, Trim(EdLacre.Text)]);
   EdLacre.Clear;
   EdLacre.SetFocus;
end;

procedure TfrmMain.btnLacreRemoverClick(Sender: TObject);
begin
   btnLacreRemover.Enabled := False;
   DM_NFE.QNF_Lacre.Delete;
end;

procedure TfrmMain.btnmailcancelarClick(Sender: TObject);
begin
   pnlmail.Hide;
end;

procedure TfrmMain.btnRebInserirClick(Sender: TObject);
var
   i: integer;
begin
   if not Validar_IDE(i) then
      raise Exception.Create('Informe o campo ' + DM_NFE.QNF.Fields[i].displaylabel);

   if not Validar_Dest(i) then
      raise Exception.Create('Informe o campo ' + DM_NFE.QNF.Fields[i].displaylabel);


   if DM_NFE.QNF_Item.IsEmpty then
   begin
      AbreTab(PG1, TabItens);
      AbreTab(PGItem, TabItem);
      raise Exception.Create('Informe ao menos um produto/serviço.');
   end;

   if DM_NFE.QNF_Reboque.RecordCount < 5 then
      DM_NFE.QNF_Reboque.InsertRecord([EdPlaca.Text, cmbRebUf.Text, edRntc.Text,'',''])
   else
      ShowMessage('Limite de 5 reboques atingido');

   EdPlaca.Clear;
   edRntc.Clear;
   cmbRebUf.Text := C_ST_VAZIO;
   EdPlaca.SetFocus;
end;

procedure TfrmMain.btnRebRemoverClick(Sender: TObject);
begin
   btnRebRemover.Enabled := False;
   DM_NFE.QNF_Reboque.Delete;
end;

procedure TfrmMain.Button3Click(Sender: TObject);
const
   aliq = 'FIN';
var
   n: Currency;
   s: string;
begin
   AbreForm(TfrmPesqProd, frmPesqProd);

   if (DM.QvwEstoque.Active)and(not DM.QvwEstoque.IsEmpty)and(DM_NFE.QNF_Item.State IN[dsEdit, dsInsert]) then
   begin
      with DM_NFE do
      begin
         if ValidaEAN(DM.QvwEstoquecod_gtin.AsString) then
            QNF_ItemcEAN.AsString := DM.QvwEstoquecod_gtin.AsString;

         QNF_ItemcProd.AsString      := DM.QvwEstoqueid.AsString;
         QNF_ItemxProd.AsString      := DM.QvwEstoquenome.AsString;
         QNF_ItemNCM.AsString        := DM.QvwEstoquencm.AsString;
        // QNF_ItemEXTIPI.AsString     := DM.QvwEstoqueextipi.AsString;
         QNF_ItemuCom.AsString       := Clip(DM.QvwEstoquesigla_unid.AsString,2);

         if DM_NFE.QNFEmit_CRT.AsInteger = 0 then
         begin
            QNF_ItemICMS_CST.Value   := integer(cstVazio);
            QNF_ItemICMS_CSOSN.Value := DM.QvwEstoqueacbr_cst.Value;
         end
         else
            QNF_ItemICMS_CST.Value := DM.QvwEstoqueacbr_cst.Value;

         QNF_ItemICMS_orig.Value   := DM.QvwEstoqueorigem.Value; //nacional
         QNF_ItemICMS_modBC.Value  := DM.QvwEstoqueicms_mod_bc.Value;

         n := StrToFloatDef(Number(DM.QvwEstoquealiq_ecf.AsString),0)/100;

         QNF_ItemICMS_pICMS.Value  := n;

         s := '';

         if QNF_ItemvDesc.Value > 0 then
            s := 'Item ' + QNF_ItemnItem.AsString + ': Desc. de ' + FloatToStrF(QNF_ItemvDesc.Value, ffCurrency, 15, 2) + ' '; 

         
         if QNFEmit_CRT.Value >0 then//se nao é SN
         begin
            DMConn.Q1.Open('select icms_pc, texto from estoque_info_complem where id=' + Texto_Mysql(DM.QEstoqueinfo_complem.Value));

            if not DM.QEstoque_Info_compl.IsEmpty then
            begin
               QNF_ItemICMS_pRedBC.Value  := DMConn.Q1.Fields[0].AsCurrency;
               if s <> '' then
                  s := s + DMConn.Q1.Fields[1].AsString
               else
                  s := 'Item ' + QNF_ItemnItem.AsString + ': ' + DMConn.Q1.Fields[1].AsString;
            end;
         end;

         if s <> '' then
            QNF_IteminfAdProd.AsString := s;

         //st
         QNF_ItemICMS_pICMSST.Value   := DM.QvwEstoqueicms_st_picms.Value;
         QNF_ItemICMS_pRedBCST.Value  := DM.QvwEstoqueicms_st_p_red_bc.Value;
         QNF_ItemICMS_modBCST.Value   := DM.QvwEstoqueicms_st_mod_bc.Value;
         QNF_ItemICMS_vTabelaST.Value := DM.QvwEstoqueicms_st_vtabela.Value;
         QNF_ItemICMS_pMVAST.Value    := DM.QvwEstoqueicms_st_pmva.Value;

        // QNF_ItemICMS_pCredSN.Value  := DM.QvwEstoqueicms_picms_cred_sn.Value;

         if DM.QEmpresacontr_ipi.Value = 'S' then
         begin
            QNF_ItemIPI_CST.Value       := DM.QvwEstoquecst_ipi_sai.Value;
           // QNF_ItemIPI_clEnq.AsString  := DM.QvwEstoqueipi_clenq.AsString;
            QNF_ItemIPI_pIPI.Value      := DM.QvwEstoqueipi_pc.Value;
         end;

         QNF_ItemPIS_CST.Value          := DM.QvwEstoquecst_pis_sai.Value;
         QNF_ItemPIS_pPIS.Value         := DM.QvwEstoquepis_pc.Value;

         QNF_ItemCOFINS_CST.Value       := DM.QvwEstoquecst_cofins_sai.Value;
         QNF_ItemCOFINS_pCOFINS.Value   := DM.QvwEstoquecofins_pc.Value;

         QNF_ItemPIS_codrec.Value       := DM.QvwEstoquecod_receita.Value;

         if Number(DM.QEstoquedestinacao.AsString)='09' then //serviços
         begin
            QNF_ItemISSQN_SitTrib.Value := DM.QvwEstoquecst.Value;
            QNF_ItemISSQN_vAliq.Value   := DM.QvwEstoquealiq_icms.Value;
         end;

         if QNFIde_indPag.Value <> 1  then
            QNF_ItemvUnCom.Value := DM.QvwEstoquevrvenda_vista.Value
         else
            QNF_ItemvUnCom.Value := DM.QvwEstoquevrvenda_prz.Value;
      end;

      PGItem.ActivePage := TabItem;
      cmbCFOP.SetFocus;
   end;
end;

procedure TfrmMain.btnFEmissaoClick(Sender: TObject);
begin
   DM_NFE.QFEmissao.Filtered := False;
   AbreForm(TfrmCadFemissao,frmCadFemissao);
   DM_NFE.QFEmissao.Filtered := True;
end;

procedure TfrmMain.btnCalcularClick(Sender: TObject);
begin
   Calcular_Impostos_Item;
end;

procedure TfrmMain.Button5Click(Sender: TObject);
begin
   if DM_NFE.QNF_Item.State in [dsInsert, dsEdit] then
   begin
      pnlDescItem.Show;
      edvDesc.SetFocus;
   end
   else
   ShowMessage('O item precisa estar no modo edição para este comando.');
end;

procedure TfrmMain.Button6Click(Sender: TObject);
begin
   DM_NFE.QNF_ItemvDesc.Value := DM_NFE.QNF_ItemqCom.Value * edvDesc.Value;
   pnlDescItem.Hide;
end;

procedure TfrmMain.Button7Click(Sender: TObject);
begin
   DM_NFE.QNF_ItemvDesc.Value := Percentual(edpDesc.Value, DM_NFE.QNF_ItemqCom.Value * DM_NFE.QNF_ItemvUnCom.Value);
   pnlDescItem.Hide;
end;

procedure TfrmMain.btnAtualizarClick(Sender: TObject);
begin
   DM_NFE.qCfg.EmptyDataSet;
   DM_NFE.qCfg.Close;
   DM_NFE.qCfg.Open;
end;

procedure TfrmMain.btnTestar_emailClick(Sender: TObject);
var
   s, ArqXML, ArqPDF, sChaveDeAcesso, sEmail: String;
begin
   DM_NFE.Status(False, '', '');

   if trim(edtSmtpHost.Text) = EmptyStr then
      s := ('Erro no envio de e-mail. Campo <<Servidor SMTP>> não informado')
   else if trim(edtSmtpUser.Text) = EmptyStr then
      s := ('Erro no envio de e-mail. Campo <<Usuário>> não informado')
   else if trim(edtSmtpPass.Text) = EmptyStr then
      s := ('Erro no envio de e-mail. Campo <<Senha>> não informado')
   else if trim(EdtEmail.Text) = EmptyStr then
      s := ('Erro no envio de e-mail. Campo <<Conta de e-mail>> não informado');

   if s <> EmptyStr then
   begin
      ShowMessage(s);
      exit;
   end;

   sEmail := 'sac@paradigmati.com.br';

   DM_NFE.Status(True, 'Enviando e-mail...', 'Destino ' + sEmail);
 //  sDir := Aqui('TXT', '');
//   sDirXml := Aqui('TXT', '');

   sChaveDeAcesso := '00000000000000000000000000000000000000000000';

   ArqPDF := Aqui('Tmp', 'cd.txt');
   ArqXML := Aqui('Tmp', 'cv.txt');
   DM_NFE.Status(True, '', ArqPDF);
   DM_NFE.Status(True, '', ArqXML);

   if DM_NFE.Envia_Mail(EdtEmail.Text,
                        edtSmtpUser.Text,
                        edtSmtpPass.Text,
                        C_ST_VAZIO,
                        edtSmtpHost.Text,
                        C_ST_VAZIO,
                        DM_NFE.QNFEmit_xFant.AsString,
                        edtSmtpPort.Text,
                        mmEmailMsg.Lines.Text + #13 +
                       'Dados para consulta no site SEFAZ' + #13 + 'Chave de Acesso = ' +
                       sChaveDeAcesso + #13#13 +
                       'Esta mensagem foi enviada automaticamente pelo nosso Sistema Emissor de NF-e.' +
                       #13 + 'Não responda este e-mail.',
                       sEmail,
                       'Arquivo NF-e [' + sChaveDeAcesso + '] (pdf e xml)',
                       ArqXML,
                       ArqPDF,
                       rgAutenticacao_email.ItemIndex) then
   ShowMessage('E-mail enviado.');
end;

function TfrmMain.Calcular_BC_ICMS: currency;
var
   idCST: integer;
   vRedBC, n: currency;
begin
   Result := 0;

   if cmbProdCST.ItemIndex >=0 then
      idCST  := StrToInt(cmbProdCST.Properties.Items[cmbProdCST.ItemIndex].Value)
   else
      idCST := DM_NFE.QNF_ItemICMS_CST.Value;

  if (DM_NFE.QNFEmit_CRT.Value > 0) then
  begin
    if(idCST in [integer(cst30), integer(cst40), integer(cst41), integer(cst50), integer(cst60)]) then
    begin
      Result := 0;
    end
    else
    begin
      n := DM_NFE.QNF_ItemvFrete.Value +
           DM_NFE.QNF_ItemvSeg.Value   +
           DM_NFE.QNF_ItemvOutro.Value -
           DM_NFE.QNF_ItemvDesc.Value;

     if pos('DEVOLU', DM_NFE.QNFIde_natOp.AsString) > 0 then
      n := 0;

      Result := (DM_NFE.QNF_ItemqCom.Value * DM_NFE.QNF_ItemvUnCom.Value) + n;

      if idCST in [integer(cst20), integer(cst51), integer(cst70), integer(cst90)] then
      begin
         vRedBC  := Percentual(DM_NFE.QNF_ItemICMS_pRedBC.Value, Result);
         Result  := (Result - vRedBC);
      end;
    end;
  end
  else  //se simples nacional
  begin
      if (cb_icms_desc_devol.Checked)AND(pos('DEVOLU', DM_NFE.QNFIde_natOp.AsString) > 0) then //se destaca icms devolução
      begin
         if(idCST in [integer(csosn900)]) then  //icms para devolução nao incluir ODA
         begin
            Result := (DM_NFE.QNF_ItemqCom.Value * DM_NFE.QNF_ItemvUnCom.Value){ +
                       DM_NFE.QNF_ItemvFrete.Value +
                       DM_NFE.QNF_ItemvSeg.Value   +
                       DM_NFE.QNF_ItemvOutro.Value -
                       DM_NFE.QNF_ItemvDesc.Value};

         end
         else
         begin
            Result := 0;
         end;
      end;
  end;
end;

function TfrmMain.Calcular_VR_ICMS: currency;
var
   nBC: Currency;
begin
   nBC    := Calcular_BC_ICMS;
   Result := Percentual(DM_NFE.QNF_ItemICMS_pICMS.Value, nBC);
end;

{
Base de cálculo ICMS próprio.: 100,00
MVA Ajustado.................: 50%
Alíquota ICMS................: 17%
Valor ICMS Simples...........: 0
Valor IPI....................: 0,00

Base de cálculo ST = (Base de cálculo + IPI) * ([100 + MVA Ajustado]/100)
Base de cálculo ST = (100 + 0,00)* ([100 + 50]/100)
Base de cálculo ST = 100 * 1,5
Base de cálculo ST = 150,00
}
function TfrmMain.Calcular_BC_ICMS_ST: currency;
var
   BC_ICMS,
   MVA,
   vTABELA,
   vIPI: currency;
begin
   Result  := 0;
   if DM_nfe.QNF_ItemICMS_CST.Value = Integer(cst60) then
      exit;

   BC_ICMS := (DM_NFE.QNF_ItemqCom.Value * DM_NFE.QNF_ItemvUnCom.Value) +
              DM_NFE.QNF_ItemvFrete.Value +
              DM_NFE.QNF_ItemvSeg.Value   +
              DM_NFE.QNF_ItemvOutro.Value -
              DM_NFE.QNF_ItemvDesc.Value;

   MVA     := DM_NFE.QNF_ItemICMS_pMVAST.Value; //ou mva é zero ou vtabela é zero
   vTABELA := DM_NFE.QNF_ItemICMS_vTabelaST.Value;
   vIPI    := DM_NFE.QNF_ItemIPI_vIPI.Value;

   if MVA+vTABELA = 0 then
      Result := 0
   else
   if MVA > 0 then
   begin
      Result := (BC_ICMS + vIPI) * ((100 + MVA)/100);
   end
   else
   if vTABELA > 0 then
   begin
      Result := (vTABELA * DM_NFE.QNF_ItemqCom.Value);
   end;
end;

function TfrmMain.Calcular_BC_PIS_COFINS: currency;
var
   idCST: integer;
  // vRedBC: currency;
begin
   Result := 0;

   if cmbPIS_CST.ItemIndex >=0 then
      idCST  := cmbPIS_CST.Properties.Items[cmbPIS_CST.ItemIndex].Value
   else
      idCST := DM_NFE.QNF_ItemPIS_CST.Value;

   if DM_NFE.QNFEmit_CRT.Value > 0 then
   begin //saidas
      if idCST in [integer(pis04), integer(pis06), integer(pis07), integer(pis08), integer(pis09), integer(pis49)] then
      begin
         Result := 0;
      end
      else
      if idCST in [integer(pis01), integer(pis02), integer(pis03)] then
      begin
         Result := (DM_NFE.QNF_ItemqCom.Value * DM_NFE.QNF_ItemvUnCom.Value) -
         DM_NFE.QNF_ItemvDesc.Value;
      end
      else //entradas
      if idCST in [integer(pis67), integer(pis70)..integer(pis75),integer(pis98),integer(pis99)] then
      begin
         Result := 0;
      end
      else
      if idCST in [integer(pis50)..integer(pis56), integer(pis60)..integer(pis66)] then
      begin
         Result := (DM_NFE.QNF_ItemqCom.Value * DM_NFE.QNF_ItemvUnCom.Value) -
         DM_NFE.QNF_ItemvDesc.Value;
      end;
   end;
end;

procedure TfrmMain.Calcular_Impostos_Item;
var
   s: string;
begin
   if DM_NFE.QNF_Item.State in [dsInsert, dsEdit] then
   begin
      if DM_NFE.QNFEmit_CRT.Value = 0 then//SN
      begin
         DM_NFE.QNF_ItemICMS_vBCST.Value   := Calcular_BC_ICMS_ST;
         DM_NFE.QNF_ItemICMS_vICMSST.Value := Calcular_VR_ICMS_STSN;
      end
      else
      begin
         DM_NFE.QNF_ItemICMS_vBC.Value     := Calcular_BC_ICMS;
         DM_NFE.QNF_ItemICMS_vICMS.Value   := Calcular_VR_ICMS;
         DM_NFE.QNF_ItemICMS_vBCST.Value   := Calcular_BC_ICMS_ST;
         DM_NFE.QNF_ItemICMS_vICMSST.Value := Calcular_VR_ICMS_ST_CST10;


         DM_NFE.QNF_ItemPIS_vBC.Value  := Calcular_BC_PIS_COFINS;
         DM_NFE.QNF_ItemPIS_vPIS.Value := Percentual(DM_NFE.QNF_ItemPIS_pPIS.Value, DM_NFE.QNF_ItemPIS_vBC.Value);

         DM_NFE.QNF_ItemCOFINS_vBC.Value := Calcular_BC_PIS_COFINS;
         DM_NFE.QNF_ItemCOFINS_vCOFINS.Value := Percentual(DM_NFE.QNF_ItemCOFINS_pCOFINS.Value, DM_NFE.QNF_ItemCOFINS_vBC.Value);
      end;

      if DM_NFE.QNF_ItemvDesc.Value > 0 then
         s := 'Item ' + DM_NFE.QNF_ItemnItem.AsString + ': Desc. de ' + FloatToStrF(DM_NFE.QNF_ItemvDesc.Value, ffCurrency, 15, 2) + ' '; 
         
      if DM_NFE.QNFEmit_CRT.Value >0 then//se nao é SN
      begin
         DMConn.Q1.Open('select icms_pc, texto from estoque_info_complem where id=' + Texto_Mysql(DM.QEstoqueinfo_complem.Value));

         if not DM.QEstoque_Info_compl.IsEmpty then
         begin
            DM_NFE.QNF_ItemICMS_pRedBC.Value  := DMConn.Q1.Fields[0].AsCurrency;
            if s <> '' then
               s := s + DMConn.Q1.Fields[1].AsString
            else
               s := 'Item ' + DM_NFE.QNF_ItemnItem.AsString + ': ' + DMConn.Q1.Fields[1].AsString;
         end;
      end;

      if s <> '' then
         DM_NFE.QNF_IteminfAdProd.AsString := s;      
   end;
end;

{
Valor ICMS ST = (Base de calculo ST * Alíquota ICMS) - Valor ICMS Próprio
Valor ICMS ST = (150,00 * 17%) - 17
Valor ICMS ST = 25,50 - 17
Valor ICMS ST = 8,50
}
function TfrmMain.Calcular_VR_ICMS_STSN: currency;
var
   vBC_ICMS,
   vBCST,
   pICMSop,
   vICMSop: Currency;
begin
   if not GBICMSST.Enabled then
   begin
      Result := 0;
      exit;
   end;
   //obter o vr iCMS oper propria
   if cbSublimite.Checked then//se estrapolou o sublimite calcula normalmente
      result := Calcular_VR_ICMS_ST_CST10
   else
   begin
      vBC_ICMS := (DM_NFE.QNF_ItemqCom.Value * DM_NFE.QNF_ItemvUnCom.Value) +
                   DM_NFE.QNF_ItemvFrete.Value +
                   DM_NFE.QNF_ItemvSeg.Value   +
                   DM_NFE.QNF_ItemvOutro.Value -
                   DM_NFE.QNF_ItemvDesc.Value;

      pICMSop := DM_NFE.QNF_ItemICMS_pICMS.Value;
      vICMSop := Percentual(pICMSop, vBC_ICMS);

      //obter a BCST
      vBCST   := Calcular_BC_ICMS_ST;

      Result  := Arredonda(Percentual(DM_NFE.QNF_ItemICMS_pICMSST.Value, vBCST) - vICMSop, 2);
   end;
end;

function TfrmMain.Calcular_VR_ICMS_ST_CST10: currency;
var
   vBC_ICMS,
   vBCST,
   pICMSop,
   vICMSop,
   pICMSd,
   vRedBC: Currency;
begin
   if not GBICMSST.Enabled then
   begin
      Result := 0;
      exit;
   end;
   //obter o vr iCMS oper propria
   vBC_ICMS := (DM_NFE.QNF_ItemqCom.Value * DM_NFE.QNF_ItemvUnCom.Value) +
                DM_NFE.QNF_ItemvFrete.Value +
                DM_NFE.QNF_ItemvSeg.Value   +
                DM_NFE.QNF_ItemvOutro.Value -
                DM_NFE.QNF_ItemvDesc.Value;

   pICMSop := DM_NFE.QNF_ItemICMS_pICMS.Value;
   vICMSop := Percentual(pICMSop, vBC_ICMS);
   pICMSd  := DM_NFE.AliquotaInterEstadual(DM_NFE.QNFEmit_EnderEmit_UF.AsString, DM_NFE.QNFDest_EnderDest_UF.AsString);

   //obter a BCST
   vBCST   := Calcular_BC_ICMS_ST;

   if DM_NFE.QNF_ItemICMS_pRedBCST.Value > 0 then
   begin
      vRedBC := Percentual(DM_NFE.QNF_ItemICMS_pRedBCST.Value, vBCST);
      vBCST  := (vBCST - vRedBC);
   end;

   Result  := Arredonda(Percentual(pICMSd, vBCST) - vICMSop, 2);
end;

procedure TfrmMain.Cancelar_NF_Chave(chave, justificativa, protocolo: string; cnF, nNF, Serie: integer);
begin
   mmResp.Clear;

   if trim(chave) = C_ST_VAZIO then
      raise Exception.Create('Chave não encontrada.');

   if trim(protocolo) = C_ST_VAZIO then
      raise Exception.Create('Protocolo não encontrado.');

   if cnF < 1 then
      raise Exception.Create('cNF não encontrado.');

   if nNF < 1 then
      raise Exception.Create('Nº da NF não encontrado.');

   if Serie < 1 then
      raise Exception.Create('Série de NF não encontrada.');

   DM_NFE.ConfigurarNFe;

   if not ValidarCertificado then
      exit;

   DM_NFE.NFe1.EventoNFe.Evento.Clear;

   with DM_NFE.NFe1.EventoNFe.Evento.Add do
   begin
     infEvento.chNFe    := Chave;
     infEvento.CNPJ     := Copy(chave,7,14);
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCancelamento;
     infEvento.detEvento.xJust := Justificativa;
     infEvento.detEvento.nProt := Protocolo;
   end;

   try
      DM_NFE.NFe1.EnviarEvento(1);

      if DM_NFE.NFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 135 then//se cancelou
      begin
          DM.QNF.Edit;
          DM.QNFstatus.Value := 2;
          DM.QNF.Post;
          
          DM.QNF_Chave.Edit;
          DM.QNF_Chavecstat.Value  := 2;
          DM.QNF_Chavestatus.Value := 'CANCELADA';
          DM.QNF_Chave.Post;
      end;

      mmResp.Lines.Add('           CANCELAR NF-e VIA CHAVE DE ACESSO');
      mmResp.Lines.Add('--------------------------------------------------------');
      mmResp.Lines.Add('         Código: ' + IntToStr(DM_NFE.NFe1.WebServices.EnvEvento.cStat));
      mmResp.Lines.Add('        Retorno: ' + DM_NFE.NFe1.WebServices.EnvEvento.xMotivo);
      mmResp.Lines.Add('     Cabeçalho : ' + DM_NFE.NFe1.WebServices.EnvEvento.CabMsg);
      mmResp.Lines.Add('      Ambiente : ' + TpAmbToStr(DM_NFE.NFe1.WebServices.EnvEvento.TpAmb));
      mmResp.Lines.Add(' Versão. Serv.: ' + DM_NFE.NFe1.WebServices.EnvEvento.VersaoServico);
      mmResp.Lines.Add(' Código retorno: ' + IntToStr(DM_NFE.NFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat));
      mmResp.Lines.Add('');
      mmResp.Lines.Add(AnsiUpperCase(DM_NFE.NFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo));
      mmResp.Lines.Add('');
      mmResp.Lines.Add('     Protocolo : ' + DM_NFE.NFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);
   finally
      DM_NFE.Status(False,'','');
   end;
end;

procedure TfrmMain.btnDestContinuarClick(Sender: TObject);
var
   i:integer;
begin
   if not Validar_Dest(i) then
      raise Exception.Create('Informe o campo ' + DM_NFE.QNF.Fields[i].displaylabel);

   if DM_NFE.QNFIde_indPag.Value = 2 then//outros
      AtivaTabs('12345678')
   else
      AtivaTabs('1234578');
end;

procedure TfrmMain.btnDestPesqClick(Sender: TObject);
var
   i:integer;
begin
   if DM_NFE.QNF.State = dsInsert then
   begin
      DM_NFE.QNF.Post;
   end;

   DM_NFE.QNF.Refresh;

   if not Validar_IDE(i) then
   begin
      PG1.ActivePage := TabDados;
      raise Exception.Create('Dados da NF: Informe o campo ' + DM_NFE.QNF.Fields[i].displaylabel);
   end;

   AbreForm(TfrmPesqCli, frmPesqCli);

   if DM.QvwDest_nf.Active then
   if not DM.QvwDest_nf.IsEmpty then
   if (Application.MessageBox('Deseja associar este Destinatário a NF atual?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idYes) then
   with DM_NFE do
   begin
      QNF.Edit;
      PopularMunic(copy(DM.QvwDest_nfcidade_cod.AsString,1,2), cmbDest_EnderDest_cMun);
      QNFDest_CNPJCPF.AsString           := Number(DM.QvwDest_nfcnpj.AsString);
      QNFDest_IE.AsString                := Number(DM.QvwDest_nfie.AsString);

      //inContribuinte, inIsento, inNaoContribuinte
      if (length(QNFDest_CNPJCPF.AsString)> 11) and (Number(QNFDest_IE.AsString) = EmptyStr) then
         begin
            QNFDest_indIEDest.Value := 1;//inIsento;
         end
         else
         if (length(QNFDest_CNPJCPF.AsString)<= 11) and (Number(QNFDest_IE.AsString) = EmptyStr) then
         begin
            QNFDest_indIEDest.Value := 2; //inNaoContribuinte
         end
         else
         begin
            QNFDest_indIEDest.Value := 0//inContribuinte
         end;

      QNFDest_xNome.AsString             := DM.QvwDest_nfrazaosocial.AsString;
      QNFDest_EnderDest_Fone.AsString    := number(DM.QvwDest_nftel1.AsString);
      QNFDest_EnderDest_CEP.AsString     := Number(DM.QvwDest_nfcep.AsString);
      QNFDest_EnderDest_xLgr.AsString    := DM.QvwDest_nflogradouro.AsString;
      QNFDest_EnderDest_nro.AsString     := DM.QvwDest_nfnmro.AsString;
      QNFDest_EnderDest_xCpl.AsString    := DM.QvwDest_nfcomplem.AsString;
      QNFDest_EnderDest_xBairro.AsString := DM.QvwDest_nfbairro.AsString;
      QNFDest_EnderDest_cMun.Value       := DM.QvwDest_nfcidade_cod.AsInteger;
      QNFDest_EnderDest_xMun.AsString    := DM.QvwDest_nfcidade.AsString;
      QNFDest_EnderDest_UF.AsString      := DM.QvwDest_nfuf.AsString;
      QNF.Post;
   end;
end;


procedure TfrmMain.btnDicClick(Sender: TObject);
begin
   frmDic_NF := TfrmDic_NF.Create(self);
   frmDic_NF.pgCad.ActivePage := frmDic_NF.TabPesq;
   frmDic_NF.ShowModal;

   if not DM.QDic_nf.IsEmpty then
   begin
      DM_NFE.QNF.Edit;

      if DM_NFE.QNFinfCpl_Dig.AsString = C_ST_VAZIO then
         DM_NFE.QNFinfCpl_Dig.AsString := DM.QDic_nfTEXTO.AsString
      else
         DM_NFE.QNFinfCpl_Dig.AsString := DM_NFE.QNFinfCpl_Dig.AsString + C_CRLF + DM.QDic_nfTEXTO.AsString
   end;

   FreeAndNil(frmDic_NF);
end;

procedure TfrmMain.Consultar_NF_Chave(chave: STRING);
begin
  mmResp.Clear;
  DM_NFE.ConfigurarNFe;
  DM_NFE.NFe1.WebServices.Consulta.NFeChave := Number(Chave);

  DM_NFE.NFe1.WebServices.Consulta.Executar;

  mmResp.Lines.Add('            CONSULTA NF-e POR CHAVE DE ACESSO');
  mmResp.Lines.Add('--------------------------------------------------------');
  Decodifica_Chave_NFe;
  mmResp.Lines.Add('         Código: ' + IntToStr(DM_NFE.NFe1.WebServices.Consulta.cStat));
  mmResp.Lines.Add(' Identificador : ' + DM_NFE.NFe1.WebServices.Consulta.protNFe.chNFe);
  mmResp.Lines.Add('      Ambiente : ' + TpAmbToStr(DM_NFE.NFe1.WebServices.Consulta.TpAmb));
  mmResp.Lines.Add(' Versão. Aplic.: ' + DM_NFE.NFe1.WebServices.Consulta.verAplic);
  mmResp.Lines.Add('            UF : ' + CodigoParaUF(DM_NFE.NFe1.WebServices.Consulta.cUF));
  mmResp.Lines.Add('  Chave Acesso : ' + DM_NFE.NFe1.WebServices.Consulta.NFeChave);
  mmResp.Lines.Add(' Data de Receb.: ' + Iif(DM_NFE.NFe1.WebServices.Consulta.DhRecbto = 0, '',DateTimeToStr(DM_NFE.NFe1.WebServices.Consulta.DhRecbto)));
  mmResp.Lines.Add('');
  mmResp.Lines.Add(AnsiUpperCase(DM_NFE.NFe1.WebServices.Consulta.xMotivo));
  mmResp.Lines.Add('');
  mmResp.Lines.Add('     Protocolo : ' + DM_NFE.NFe1.WebServices.Consulta.Protocolo);
  mmResp.Lines.Add('  Digest Value : ' + DM_NFE.NFe1.WebServices.Consulta.protNFe.digVal);

 DM_NFE.Status(False,'','');
end;

procedure TfrmMain.btnAss_DevClick(Sender: TObject);
begin
   AbreForm(TfrmAssDevol,frmAssDevol);
end;

procedure TfrmMain.btnAss_BaixaClick(Sender: TObject);
var
   n: currency;
   s: string;

function CFOP: string;
begin
   DMConn.Q2.Open('select * from cfop_devol where interno="S" and ind="X"');

   Result := DMConn.Q2.FieldByName('cfop').AsString;

   //preenche os demais campos

   with DM_NFE do
   begin
      if DM_NFE.QNFEmit_CRT.AsInteger = 0 then  //SN
      begin
         QNF_ItemICMS_CST.Value   := integer(cstVazio);
         QNF_ItemICMS_CSOSN.Value := DMConn.Q2.FieldByName('csosn').AsInteger;
      end
      else
         QNF_ItemICMS_CST.Value := DMConn.Q2.FieldByName('cst').AsInteger;

      QNF_ItemPIS_CST.Value       := DMConn.Q2.FieldByName('cst_pis').AsInteger;
      QNF_ItemCOFINS_CST.Value    := DMConn.Q2.FieldByName('cst_pis').AsInteger;
      QNF_ItemIPI_CST.Value       := DMConn.Q2.FieldByName('cst_ipi').AsInteger;
      QNF_Itembaixa_estoque.Value := 'N';
   end;
end;

begin
   DMConn.Q3.Open('select cProd, sum(qtd) as qtd from estoque_perda where baixa="N" group BY cProd');

   if DMConn.Q3.IsEmpty then
   begin
      if DM_NFE.QNF.state in [dsinsert] then
         DM_NFE.QNF.Cancel
      else
      begin
         if DM_NFE.QNF.state in [dsedit] then
            DM_NFE.QNF.Cancel;

         if DM_NFE.QNFstatus.AsInteger <> 105 then
            DM_NFE.Delete_NF_Local;
      end;
      AbreDatasets;
      AtivaTabs('129');
      btnImportVendas.Enabled := False;
      btnAss_Dev.Enabled := False;
      btnAss_Baixa.Enabled := False;
      raise Exception.Create('Não há registro de perdas no sistema.');
   end;

   //limpa as tabelas locais de NF
   if DM_NFE.QNF.state in [dsinsert] then
      DM_NFE.QNF.Cancel
   else
   begin
      if DM_NFE.QNF.state in [dsedit] then
         DM_NFE.QNF.Cancel;

      if DM_NFE.QNFstatus.AsInteger <> 105 then
         DM_NFE.Delete_NF_Local;
   end;

   DM.QEmpresa.Open;
   DM.QvwDest_nf.Open(VwDestNF);
   if not DM.QvwDest_nf.Locate('cnpj', Number(DM.QEmpresacnpj.AsString), []) then
      raise Exception.Create('Não foi possível encontrar o CNPJ da empresa.');

   with DM_NFE do
      begin
         QNF.Insert;
         QNFhash.Value           := 'perda';
         QNFIde_tpNF.Value       := 1;//saida
         QNFIde_Cons_Final.Value := 0; //não é cons final
         QNFIde_natOp.AsString   := 'BAIXA DE ESTOQUE DECORR. DE PERDA, ROUBO OU DETER.';
         QNFIde_indPag.Value     := 2;//outras

         frmMain.PopularMunic(copy(DM.QvwDest_nfcidade_cod.AsString,1,2), frmMain.cmbDest_EnderDest_cMun);
         QNFDest_CNPJCPF.AsString           := Number(DM.QvwDest_nfcnpj.AsString);
         QNFDest_IE.AsString                := Number(DM.QvwDest_nfie.AsString);

         if QNFDest_IE.AsString = C_ST_VAZIO then
            QNFDest_IE.AsString := 'ISENTO';

         QNFDest_xNome.AsString             := DM.QvwDest_nfrazaosocial.AsString;
         QNFDest_EnderDest_Fone.AsString    := number(DM.QvwDest_nftel1.AsString);
         QNFDest_EnderDest_CEP.AsString     := Number(DM.QvwDest_nfcep.AsString);
         QNFDest_EnderDest_xLgr.AsString    := DM.QvwDest_nflogradouro.AsString;
         QNFDest_EnderDest_nro.AsString     := DM.QvwDest_nfnmro.AsString;
         QNFDest_EnderDest_xCpl.AsString    := DM.QvwDest_nfcomplem.AsString;
         QNFDest_EnderDest_xBairro.AsString := DM.QvwDest_nfbairro.AsString;
         QNFDest_EnderDest_cMun.Value       := DM.QvwDest_nfcidade_cod.AsInteger;
         QNFDest_EnderDest_xMun.AsString    := DM.QvwDest_nfcidade.AsString;
         QNFDest_EnderDest_UF.AsString      := DM.QvwDest_nfuf.AsString;
        // QNFinfCpl_Dig.AsString             := mmDadosAdic.Text;
         QNF.Post;


      while not DMConn.Q3.Eof do
      begin
         DM.QvwEstoque.Open('select * from vw_estoque where id="' + DMConn.Q3.FieldByName('cProd').AsString + '";');

         if DM.QvwEstoque.IsEmpty then
            raise Exception.Create('Produto "' + DMConn.Q3.FieldByName('cProd').AsString + '" não encontrado.');

         with DM_NFE do
         begin
            QNF_Item.Append;

            if ValidaEAN(DM.QvwEstoquecod_gtin.AsString) then
               QNF_ItemcEAN.AsString := DM.QvwEstoquecod_gtin.AsString;

            QNF_ItemcProd.AsString := DM.QvwEstoqueid.AsString;
            QNF_ItemxProd.AsString := DM.QvwEstoquenome.AsString;
            QNF_ItemNCM.AsString   := DM.QvwEstoquencm.AsString;
           // QNF_ItemEXTIPI.AsString := DM.QvwEstoqueextipi.AsString;
            QNF_ItemuCom.AsString  := Clip(DM.QvwEstoquesigla_unid.AsString,2);

            //inclui o CFOP, QTD e valor de custo
            QNF_ItemCFOP.AsString     := CFOP;
            QNF_ItemqCom.Value        := DMConn.Q3.FieldByName('qtd').Value;
            QNF_ItemvUnCom.Value      := DM.QvwEstoquevrcusto.Value;
            QNF_ItemICMS_orig.Value   := DM.QvwEstoqueorigem.Value; //nacional
            QNF_ItemICMS_modBC.Value  := DM.QvwEstoqueicms_mod_bc.Value;
            s := Number(DM.QvwEstoquealiq_ecf.AsString);
            n := StrToFloatDef(s,0)/100;
            QNF_ItemICMS_pICMS.Value  := n;
            QNF_Item.Post;
         end;

         DMConn.Q3.Next;
      end;
   end;
   ShowMessage('Confira a NF e informe os dados adicionais pertinentes.');
   AtivaTabs('12345678');
   PGItem.ActivePage := frmMain.TabItem;
end;

procedure TfrmMain.cxButton1Click(Sender: TObject);
begin
   mmResp.Clear;
   DM_NFE.ConfigurarNFe;
   DM_NFE.Gerar_PDF;
   mmResp.Text := ('Arquivo PDF gerado em ' + DM_NFE.DANFE.PathPDF);
end;

procedure TfrmMain.btnLimparNFClick(Sender: TObject);
begin
{00 - Doc regular
01 - Escrit extemp de doc regular
02 - Doc canc
03 - Escrit extemp de doc canc
04 - deneg
05 - Nº inut
06 - Doc Fiscal Compl
07 - Escrit extemp de doc complem
08 - Regime Espec Norma Espec
99 em andam
100 - autorizada
outros - cStat}
   if (MessageBox(0, 'Deseja limpar os dados atuais da NF?', 'ATENÇÃO', MB_ICONWARNING or MB_YESNO) = idYes) then
   begin
      if DM_NFE.QNF.state in [dsinsert] then
         DM_NFE.QNF.Cancel
      else
      begin
         if DM_NFE.QNF.state in [dsedit] then
            DM_NFE.QNF.Cancel;

         if DM_NFE.QNFstatus.AsInteger <> 105 then
            DM_NFE.Delete_NF_Local;
      end;
   end;

   AbreDatasets;
   AtivaTabs('129');
   btnImportVendas.Enabled := False;
   btnAss_Dev.Enabled := False;
   btnAss_Baixa.Enabled := False;
end;

procedure TfrmMain.btnCadCliClick(Sender: TObject);
begin
   AbreForm(TfrmCadCli, frmCadCli);
end;

procedure TfrmMain.btnCadEmpresaClick(Sender: TObject);
begin
   AbreForm(TfrmCadEmpresa, frmCadEmpresa);
   AbreDatasets;
end;

procedure TfrmMain.btnCadForClick(Sender: TObject);
begin
   AbreForm(TfrmCadForn, frmCadForn);
end;

procedure TfrmMain.btnCadProdClick(Sender: TObject);
begin
   AbreForm(TfrmCadEstoque, frmCadEstoque);
end;

procedure TfrmMain.cxButton2Click(Sender: TObject);
begin
   sleep(500);
   ShellExecute(0, nil, PWideChar(DM_NFE.QCfgCfg_Arq_PathNFe.AsString), nil, nil, 1);
end;

procedure TfrmMain.cxButton3Click(Sender: TObject);
begin
   mmResp.Clear;
   DM_NFE.ConfigurarNFe;

//   if not ValidarCertificado then
 //     exit;

   frmInut := TfrmInut.Create(self);
   with frmInut do
   try
      if ShowModal = mrOk then
      begin
         DM_NFE.NFe1.WebServices.Inutiliza(Number(DM.QEmpresacnpj.AsString),
                                           frmInut.edJustificativa.Text,
                                           frmInut.edAno.AsInteger,
                                           frmInut.edModelo.AsInteger,
                                           frmInut.edSerie.AsInteger,
                                           frmInut.EdIni.AsInteger,
                                           frmInut.edFim.AsInteger
         );

         mmResp.Lines.Add('                INUTILIZA NUMERAÇÃO');
         mmResp.Lines.Add('--------------------------------------------------------');
         mmResp.Lines.Add('     AMBIENTE: '    + TpAmbToStr(DM_NFE.NFe1.WebServices.Inutilizacao.tpAmb));
         mmResp.Lines.Add('VERSÃO APLIC.: ' + DM_NFE.NFe1.WebServices.Inutilizacao.verAplic);
         mmResp.Lines.Add('  CÓD. STATUS: ' + IntToStr(DM_NFE.NFe1.WebServices.Inutilizacao.cStat));
         mmResp.Lines.Add('           UF: ' + IntToStr(DM_NFE.NFe1.WebServices.Inutilizacao.cUF));
         mmResp.Lines.Add('  DATA RECEB.: ' + DateTimeToStr(DM_NFE.NFe1.WebServices.Inutilizacao.dhRecbto));
         mmResp.Lines.Add('   Nº INICIAL: ' + IntToStr(DM_NFE.NFe1.WebServices.Inutilizacao.NumeroInicial) + ' Nº FINAL: ' + IntToStr(DM_NFE.NFe1.WebServices.Inutilizacao.NumeroFinal));
         mmResp.Lines.Add('');
         mmResp.Lines.Add(AnsiUpperCase(DM_NFE.NFe1.WebServices.Inutilizacao.xMotivo));
         mmResp.Lines.Add('   PROTOCOLO: ' + DM_NFE.NFe1.WebServices.Inutilizacao.Protocolo);
      end;
   finally
      FreeAndNil(frmInut);
      DM_NFE.Status(False, '', '');
   end;
end;

procedure TfrmMain.cxButton4Click(Sender: TObject);
begin
   AtivaTabs('123456789');
   pg1.ActivePage := TabEmite;
end;

procedure TfrmMain.btnListaNFClick(Sender: TObject);
begin
   frmListaNF := TfrmListaNF.Create(Self);
   frmListaNF.ShowModal;
   FreeAndNil(frmListaNF);
end;

procedure TfrmMain.cxButton5Click(Sender: TObject);
begin
   DM_NFE.ConfigurarNFe;

   if not ValidarCertificado then
      exit;

   frmManu := TfrmManu.Create(Self);
   frmManu.ShowModal;
   FreeAndNil(frmManu);
end;

procedure TfrmMain.cxButton6Click(Sender: TObject);
begin
   AbreForm(TfrmCfg,frmCfg);
end;

procedure TfrmMain.cxButton7Click(Sender: TObject);
begin
   AbreForm(TfrmRateio, frmRateio);
end;

procedure TfrmMain.cxButton8Click(Sender: TObject);
begin
   mmResp.Clear;
   DM_NFE.ConfigurarNFe;
   DM_NFE.Imprimir_Evento;
end;

procedure TfrmMain.cxButton9Click(Sender: TObject);
begin
   AbreForm(TfrmManiDest, frmManiDest);
end;

procedure TfrmMain.cmbIde_indPagClick(Sender: TObject);
begin
   AtivaTabs('123');
   btnImportVendas.Enabled := True;
   btnAss_Dev.Enabled      := True;
   btnAss_Baixa.Enabled    := True;
end;

procedure TfrmMain.cmbPresencialExit(Sender: TObject);
begin
   if(DM_NFE.QNFIde_modelo.Value = 55)and( DM_NFE.QNFIde_Presencial.Value = 4) then
   begin
      cmbPresencial.SetFocus;
      raise Exception.Create('O medelo 55 não contempla a opção 4 no campo DESTINATARIO PRESENTE NO ESTABELECIMENTO');
   end;
end;

procedure TfrmMain.cbMovEstoqueClick(Sender: TObject);
begin
   if (cbMovEstoque.focused)and(DM_NFE.QNF_ItemCFOP.AsInteger > 0) and (DM_NFE.QNF_Item.State IN [dsEdit, dsInsert]) then
   begin
      DMConn.Q3.Open('select baixa_estoque from cfop where cfop=' + Texto_Mysql(DM_NFE.QNF_ItemCFOP.AsString));

      if (DMConn.Q3.Fields[0].AsString = 'N') and (cbMovEstoque.Checked) then
      begin
         if (MessageBox(0, 'Este CFOP não baixa estoque. Deseja Forçar esta condição?', 'Atenção', MB_ICONWARNING or MB_YESNO) = idNo) then
         begin
            DM_NFE.QNF_Itembaixa_estoque.Value := 'N';
            DBEdit92.SetFocus;
            exit;
         end;
      end;

      if (DMConn.Q3.Fields[0].AsString = 'S') and (not cbMovEstoque.Checked) then
      begin
         if (MessageBox(0, 'Este CFOP baixa estoque. Deseja Forçar esta condição?', 'Atenção', MB_ICONWARNING or MB_YESNO) = idNo) then
         begin
            DM_NFE.QNF_Itembaixa_estoque.Value := 'S';
            DBEdit92.SetFocus;
            exit;
         end;
      end;
   end;
end;

procedure TfrmMain.cxDBNavigator1ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
var
   i:integer;
begin
   if not Validar_Dest(i) then
      raise Exception.Create('Informe o campo ' + DM_NFE.QNF.Fields[i].displaylabel);

   if DM_NFE.QNF_Item.IsEmpty then
   begin
      AbreTab(PG1, TabItens);
      AbreTab(PGItem, TabItem);
      raise Exception.Create('Informe ao menos um produto/serviço.');
   end;
end;

procedure TfrmMain.cxDBNavigator2ButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
   i: integer;
begin
   if not Validar_IDE(i) then
      raise Exception.Create('Informe o campo ' + DM_NFE.QNF.Fields[i].displaylabel);
end;

procedure TfrmMain.AbreTab(Page: TPageControl; Tab: TTabSheet);
begin
   Page.ActivePage := Tab;
end;

procedure TfrmMain.AtivaTabs(seq: string);
var
   i: integer;
begin
   seq := '.' + seq;

   for i := 0 to PG1.PageCount -1 do
   begin
       pg1.Pages[i].TabVisible := pos(IntToStr(pg1.Pages[i].Tag), seq)>0;
   end;
end;

procedure TfrmMain.btnAbrePastaPDFClick(Sender: TObject);
begin
   sleep(500);
   ShellExecute(0, nil, PWideChar(DM_NFE.QCfgDANFE_PathPDF.AsString), nil, nil, 1);
end;

procedure TfrmMain.btnAddDicClick(Sender: TObject);
begin
   if DM_NFE.QNFinfCpl_Dig.AsString = '' then
      raise Exception.Create('Nenhuma informação complementar informada.');

   DM.QDic_nf.Open;

   if DM.QDic_nf.Locate('TEXTO',  DM_NFE.QNFinfCpl_Dig.AsString, [loCaseInsensitive])  then
      raise Exception.Create('Esta informação complementar já existe.');

   DM.QDic_nf.Insert;
   DM.QDic_nfTexto.AsString := DM_NFE.QNFinfCpl_Dig.AsString;
   DM.QDic_nf.Post;
   DM.QDic_nf.Close;
end;

procedure TfrmMain.Decodifica_Chave_NFe;
var
   s, cnpj, nmro, serie, data: string;
begin
      s := DM_NFE.NFe1.WebServices.Consulta.NFeChave;

      cnpj := Copy(s,7,14);

      insert('-',cnpj,13);
      insert('/',cnpj,9);
      insert('.',cnpj,6);
      insert('.',cnpj,3);

      nmro  := Copy(s,26,9);
      serie := Copy(s,23,3);
      data  := Concat(Copy(s,5,2),'/', Copy(s,3,2));

      mmResp.Lines.Add('          CNPJ : ' + cnpj);
      mmResp.Lines.Add('      Nº da NF : ' + nmro);
      mmResp.Lines.Add('          Série: ' + serie);
      mmResp.Lines.Add('Mês/Ano Emissão: ' + data);
end;


procedure TfrmMain.edICMS_pICMSExit(Sender: TObject);
begin
   if DM_NFE.QNF_Item.State in [dsInsert, dsEdit] then
      Calcular_Impostos_Item;

   mmHint.Clear;
end;

procedure TfrmMain.edmailChange(Sender: TObject);
begin
   btnenviarmail.Enabled := ValidarEMail(edmail.Text);
end;

procedure TfrmMain.btnCalcularBCIPIClick(Sender: TObject);
var
   n: Currency;
begin
{Base de cálculo IPI = Valor das Mercadorias
                    + Valor das Despesas Acessórias
                    + Valor do Seguro

o Frete também incide na base de dados do IPI se o valor do frete,
quando o transporte for realizado ou cobrado por firma coligada, controlada ou
controladora (Lei nº 6.404, de 1974) ou
interligada (Decreto-lei nº 1.950, de 1982) do estabelecimento contribuinte ou
por firma com a qual este tenha relação de interdependência, mesmo quando o frete
seja subcontratado (Lei nº 4.502, de 1964, art. 14, § 3º, e Lei nº 7.798, de 1989, art. 15)”
                    }


   if DM_NFE.QNF_Item.State in[dsInsert, dsEdit] then
   begin
      n := Arredonda(DM_NFE.QNF_ItemqCom.Value * DM_NFE.QNF_ItemvUnCom.Value, 2);
      if (DM_NFE.QNF_ItemvFrete.Value > 0)and
         (MessageBox(0, 'O Frete também incide a base de dados do IPI se:'+#13+#10+'O valor do frete, quando o transporte for realizado ou '+#13+#10+'cobrado por firma coligada, controlada ou '+#13+#10+'controladora (Lei nº 6.404, de 1974) ou '+#13+#10+'interligada (Decreto-lei nº 1.950, de 1982) do '+#13+#10+'estabelecimento contribuinte ou por firma com a qual '+#13+#10+'este tenha relação de interdependência, mesmo quando '+#13+#10+'o frete seja subcontratado (Lei nº 4.502, de 1964, '+#13+#10+'art. 14, § 3º, e Lei nº 7.798, de 1989, art. 15)'+#13+#10+''+#13+#10+'Incluir o valor do frete na composição da BC IPI?', 'ATENÇÃO!', MB_ICONWARNING or MB_YESNO) = idYes) then
         n := n +
              DM_NFE.QNF_ItemvFrete.Value +
              DM_NFE.QNF_ItemvSeg.Value +
              DM_NFE.QNF_ItemvOutro.Value
      else
         n := n +
              DM_NFE.QNF_ItemvSeg.Value +
              DM_NFE.QNF_ItemvOutro.Value;

      DM_NFE.QNF_ItemIPI_vBC.Value := n;
   end;
end;

procedure TfrmMain.btnCancelarNfeChaveClick(Sender: TObject);
var
 UF, Documento : String;
begin
   if not(InputQuery('Consulta Cadastro ', 'UF do Documento a ser Consultado:',    UF)) then
      exit;

   if not(InputQuery('Consulta Cadastro ', 'Documento(CPF/CNPJ)',    Documento)) then
      exit;

   mmResp.Clear;

   if (Number(Documento)= C_ST_VAZIO) or
       (Trim(UF) = C_ST_VAZIO) then
      raise Exception.Create('CNPJ/CPF ou UF não informados no destinatário.');

   DM_NFE.ConfigurarNFe;
   DM_NFE.Consultar_Cadastro(UF, Documento);

   mmResp.Lines.Add('                    CONSULTA CADASTRO');
   mmResp.Lines.Add('--------------------------------------------------------');
   mmResp.Lines.Add(' Código Retorno: ' + IntToStr(DM_NFE.NFe1.WebServices.ConsultaCadastro.cStat)); 
   mmResp.Lines.Add(' INSC. ESTADUAL: ' + DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].IE);
   mmResp.Lines.Add('           CNPJ: ' + DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].CNPJ);
   mmResp.Lines.Add('            CPF: ' + DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].CPF);
   mmResp.Lines.Add('             UF: ' + DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].UF);
   mmResp.Lines.Add('   RAZÃO SOCIAL: ' + DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xNome);   
   mmResp.Lines.Add('  NOME FANTASIA: ' + DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xFant); 
   mmResp.Lines.Add('  REG. APURAÇÃO: ' + DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xRegApur);
   mmResp.Lines.Add('           CNAE: ' + IntToStr(DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].CNAE));
   mmResp.Lines.Add('DATA INI. ATIV.: ' + Iif(DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].dIniAtiv > 0,
                                                           DateToStr(DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].dIniAtiv), 
                                                           C_ST_VAZIO));
   mmResp.Lines.Add('  DATA ULT. SIT: ' + Iif(DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].dUltSit > 0,
                                                           DateToStr(DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].dUltSit),
                                                           C_ST_VAZIO));      
   mmResp.Lines.Add('  DATA DA BAIXA: ' + Iif(DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].dBaixa > 0,
                                                           DateToStr(DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].dBaixa),
                                                           C_ST_VAZIO));
   mmResp.Lines.Add('INSC.EST. ATUAL: ' + DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].IEAtual);
   mmResp.Lines.Add('       ENDEREÇO: ' + DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xLgr +
                                    ' ' + DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].nro);
   mmResp.Lines.Add('    COMPLEMENTO: ' + DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xCpl);
   mmResp.Lines.Add('         BAIRRO: ' + DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xBairro);
   mmResp.Lines.Add('      MUNICÍPIO: ' + DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xMun);
   mmResp.Lines.Add('            CEP: ' + IntToStr(DM_NFE.NFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].CEP));                                         
   mmResp.Lines.Add('');
   mmResp.Lines.Add(DM_NFE.NFe1.WebServices.ConsultaCadastro.xMotivo);
   mmResp.Lines.Add('');
end;

procedure TfrmMain.btnCancelarNFeClick(Sender: TObject);
begin
   mmResp.Clear;
   DM_NFE.ConfigurarNFe;
   DM_NFE.Cancelar_NFe_Xml;
(*
• cStat = 101 - Cancelamento de NF-e homologado;
• cStat = 151 - Cancelamento de NF-e homologado fora de prazo.
*)
   if DM_NFE.NFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat in [{135}101, 151]  then//se cancelou
   begin
      DMConn.Q1.Open('select nf from nf_chave where chave=' + Texto_Mysql(DM_NFE.NFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.chNFe));
      if DMConn.Q1.Fields[0].AsInteger > 0 then
      begin
         DM.QNF.Open('select * from nf where id=' + Texto_Mysql(DMConn.Q1.Fields[0].AsInteger));
         DM.QNF.Edit;
         DM.QNFstatus.Value := 2;
         DM.QNF.Post;

         DM.QNF_Chave.Edit;
         DM.QNF_Chavecstat.Value  := 2;
         DM.QNF_Chavestatus.Value := 'CANCELADA';
         DM.QNF_Chave.Post;
      end;
   end;

   mmResp.Lines.Add('               CANCELAR NF-e VIA XML');
   mmResp.Lines.Add('--------------------------------------------------------');
   mmResp.Lines.Add('         Código: ' + IntToStr(DM_NFE.NFe1.WebServices.EnvEvento.cStat));
   mmResp.Lines.Add('        Retorno: ' + DM_NFE.NFe1.WebServices.EnvEvento.xMotivo);
   mmResp.Lines.Add('     Cabeçalho : ' + DM_NFE.NFe1.WebServices.EnvEvento.CabMsg);
   mmResp.Lines.Add('      Ambiente : ' + TpAmbToStr(DM_NFE.NFe1.WebServices.EnvEvento.TpAmb));
   mmResp.Lines.Add(' Versão. Serv. : ' + DM_NFE.NFe1.WebServices.EnvEvento.VersaoServico);
   mmResp.Lines.Add(' Código retorno: ' + IntToStr(DM_NFE.NFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat));
   mmResp.Lines.Add('');
   mmResp.Lines.Add(AnsiUpperCase(DM_NFE.NFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo));
   mmResp.Lines.Add('');
   mmResp.Lines.Add('     Protocolo : ' + DM_NFE.NFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);
end;

procedure TfrmMain.btnConsultarChaveClick(Sender: TObject);
var
 vChave : String;
begin
   mmResp.Clear;

  if not(InputQuery('WebServices Consultar', 'Chave da NF-e:', vChave)) then
    exit;

   Consultar_NF_Chave(vChave);
end;

procedure TfrmMain.btnConsultarNFeClick(Sender: TObject);
begin
   mmResp.Clear;
   DM_NFE.ConfigurarNFe;

   if not ValidarCertificado then
      exit;

   if DM_NFE.ConsultarNFe(C_ST_VAZIO) > -1 then
   begin
      mmResp.Lines.Add('                     CONSULTA NF-e');
      mmResp.Lines.Add('--------------------------------------------------------');
      Decodifica_Chave_NFe;
      mmResp.Lines.Add('         Código: ' + IntToStr(DM_NFE.NFe1.WebServices.Consulta.cStat));
      mmResp.Lines.Add(' Identificador : ' + DM_NFE.NFe1.WebServices.Consulta.protNFe.chNFe);
      mmResp.Lines.Add('      Ambiente : ' + TpAmbToStr(DM_NFE.NFe1.WebServices.Consulta.TpAmb));
      mmResp.Lines.Add(' Versão. Aplic.: ' + DM_NFE.NFe1.WebServices.Consulta.verAplic);
      mmResp.Lines.Add('            UF : ' + CodigoParaUF(DM_NFE.NFe1.WebServices.Consulta.cUF));
      mmResp.Lines.Add('  Chave Acesso : ' + DM_NFE.NFe1.WebServices.Consulta.NFeChave);
      mmResp.Lines.Add(' Data de Receb.: ' + Iif(DM_NFE.NFe1.WebServices.Consulta.DhRecbto = 0, '',DateTimeToStr(DM_NFE.NFe1.WebServices.Consulta.DhRecbto)));
      mmResp.Lines.Add('');
      mmResp.Lines.Add(AnsiUpperCase(DM_NFE.NFe1.WebServices.Consulta.xMotivo));
      mmResp.Lines.Add('');
      mmResp.Lines.Add('     Protocolo : ' + DM_NFE.NFe1.WebServices.Consulta.Protocolo);
      mmResp.Lines.Add('  Digest Value : ' + DM_NFE.NFe1.WebServices.Consulta.protNFe.digVal);
   end
   else
      mmResp.Text := 'Consulta NF-e Retornou -1 (erro).';
end;

procedure TfrmMain.btnCosultarLogClick(Sender: TObject);
begin
   mmResp.Clear;
   DM_NFE.OD1.Title      := 'Selecione o arquivo';
   DM_NFE.OD1.InitialDir := Aqui(C_52,'');
   DM_NFE.OD1.DefaultExt := C_211;
   DM_NFE.OD1.Filter     := C_210;

   if DM_NFE.OD1.Execute then
      mmResp.Lines.LoadFromFile(DM_NFE.OD1.FileName);
end;

procedure TfrmMain.btnConsultarStatusServiçoClick(Sender: TObject);
begin
   mmResp.Clear;
   DM_NFE.ConfigurarNFe;

   if not ValidarCertificado then
      exit;

   DM_NFE.NFe1.WebServices.StatusServico.Executar;
   mmResp.Clear;
   mmResp.Lines.Add('                CONSULTA STATUS SERVIÇO');
   mmResp.Lines.Add('--------------------------------------------------------');
   mmResp.Lines.Add('     AMBIENTE: '    + TpAmbToStr(DM_NFE.NFe1.WebServices.StatusServico.tpAmb));
   mmResp.Lines.Add('VERSÃO APLIC.: ' + DM_NFE.NFe1.WebServices.StatusServico.verAplic);
   mmResp.Lines.Add('  CÓD. STATUS: ' + IntToStr(DM_NFE.NFe1.WebServices.StatusServico.cStat));
   mmResp.Lines.Add('           UF: ' + IntToStr(DM_NFE.NFe1.WebServices.StatusServico.cUF));
   mmResp.Lines.Add('   DATA RECB.: ' + DateTimeToStr(DM_NFE.NFe1.WebServices.StatusServico.dhRecbto));
   mmResp.Lines.Add('  TEMPO MÉDIO: ' + IntToStr(DM_NFE.NFe1.WebServices.StatusServico.TMed));
   mmResp.Lines.Add(Iif(DM_NFE.NFe1.WebServices.StatusServico.dhRetorno = 0,
                                    '',
                                    ' DATA RETORNO: ' + DateTimeToStr(DM_NFE.NFe1.WebServices.StatusServico.dhRetorno)));
   mmResp.Lines.Add('');
   mmResp.Lines.Add(AnsiUpperCase(DM_NFE.NFe1.WebServices.StatusServico.xMotivo));
   mmResp.Lines.Add('');
   mmResp.Lines.Add('   OBSERVAÇÃO: ' + DM_NFE.NFe1.WebServices.StatusServico.xObs);
   DM_NFE.Status(False, '', '');
end;

procedure TfrmMain.btnDupInserirClick(Sender: TObject);
var
   i: integer;
begin
   if not Validar_IDE(i) then
      raise Exception.Create('Informe o campo ' + DM_NFE.QNF.Fields[i].displaylabel);

   if not Validar_Dest(i) then
      raise Exception.Create('Informe o campo ' + DM_NFE.QNF.Fields[i].displaylabel);

   DM_NFE.QNF_Duplicata.InsertRecord([Trim(EdDup.Text), EdDupVenc.Date, EdDupValor.Value]);
end;

procedure TfrmMain.btnDupRemoverClick(Sender: TObject);
begin
   btnDupRemover.Enabled := False;
   DM_NFE.QNF_Duplicata.Delete;
end;

procedure TfrmMain.TbvVolCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnVolRemover.Enabled   :=  not DM_NFE.QNF_Volume.IsEmpty;
   btnLacreInserir.Enabled := not DM_NFE.QNF_Volume.IsEmpty;;
end;

procedure TfrmMain.btnVolInserirClick(Sender: TObject);
begin
   DM_NFE.QNF_Volume.Insert;
   DM_NFE.QNF_VolumeqVol.Value       := StrToIntDef(EdQtd.Text,1);
   DM_NFE.QNF_Volumeespecie.AsString := Trim(EdEspecie.Text);
   DM_NFE.QNF_Volumemarca.AsString   := Trim(EdMarca.Text);
   DM_NFE.QNF_VolumenVol.AsString    := Trim(EdNmro.Text);
   DM_NFE.QNF_VolumepesoL.Value      := EdPliq.Value;
   DM_NFE.QNF_VolumepesoB.Value      := edPbrt.Value;
   DM_NFE.QNF_Volume.Post;

   EdQtd.Clear;
   EdEspecie.Clear;
   EdMarca.Clear;
   EdNmro.Clear;
   EdPliq.Clear;
   edPbrt.Clear;
   EdQtd.SetFocus;
end;

procedure TfrmMain.btnVolRemoverClick(Sender: TObject);
begin
   btnVolRemover.Enabled := False;
   DM_NFE.QNF_Volume.Delete;
end;

procedure TfrmMain.btn_cceClick(Sender: TObject);
begin
  //DM_serv.ExecSQL(c_SQL45);
  frmcce := Tfrmcce.Create(self);
  frmcce.ShowModal;
  FreeAndNil(frmcce);
end;

procedure TfrmMain.btn_enviar_emailClick(Sender: TObject);
var
   cnpj: string;
begin
   if not ValidarEMail(EdtEmail.Text) then
      raise Exception.Create('Não há conta de e-mail configurada no emissor.');

   with DM_NFE do
   begin
      ConfigurarNFe;
      NFe1.NotasFiscais.Clear;

      OD1.Title := 'Selecione a NFE';
      s_xml := NFe1.Configuracoes.Arquivos.PathNFe + FormatDateTime('yyyymm', date) + '\NFe\';
      ForceDirectories(s_xml);
      DM_NFE.OD1.InitialDir := s_xml;
      DM_NFE.OD1.DefaultExt := C_212;
      DM_NFE.OD1.Filter     := C_213;

      if OD1.Execute then
      begin
         nfe := OD1.FileName;
         NFe1.NotasFiscais.LoadFromFile(nfe);

         s_chave := Number(NFe1.NotasFiscais.Items[0].Nfe.infNFe.ID);
         cnpj    := Number(NFe1.NotasFiscais.Items[0].Nfe.Dest.CNPJCPF);

         DMConn.Q1.Open('SELECT DISTINCT cnpj, nome, razaosocial,cidade, uf, email ' +
                                       'FROM vw_dest_nf where cnpj=' + Texto_Mysql(cnpj)
         );

         if DMConn.Q1.Fields[0].AsString = C_ST_VAZIO then
         begin
            s_xml := 'Não foi encontrado o cadastro do CNPJ ' + cnpj;
            Log('nfe', 'btn_enviar_emailClick', s_xml);
            raise Exception.Create(s_xml);
         end;

         s_pdf   := DM_NFE.QCfgDANFE_PathPDF.AsString +
                    IntToStr(YearOf(NFe1.NotasFiscais.Items[0].Nfe.Ide.dSaiEnt)) +
                    format('%.2d',[MonthOf(NFe1.NotasFiscais.Items[0].Nfe.Ide.dSaiEnt)] ) + '\' +
                    s_chave + '-nfe.pdf';

         s_xml := nfe;

         if not FileExists(s_pdf) then
         begin
            s_xml := s_pdf + #13 + 'não foi encontrado.';
            Log('nfe', 'btn_enviar_emailClick', s_xml);
            raise Exception.Create(s_xml);
         end;

         lblnome.Caption := DMConn.Q1.FieldByName('razaosocial').AsString;
         lblcnpj.Caption := DMConn.Q1.FieldByName('cnpj').AsString;
         lblendereco.Caption := DMConn.Q1.FieldByName('cidade').AsString + ' ' + DMConn.Q1.FieldByName('uf').AsString;
         edmail.Text     := DMConn.Q1.FieldByName('email').AsString;
         pnlmail.Show;
      end;
   end;
end;

procedure TfrmMain.DBEdit101Exit(Sender: TObject);
begin
   DM_NFE.QNFretvICMSRet.Value := Arredonda((DM_NFE.QNFretvBCRet.Value * DM_NFE.QNFretpICMSRet.Value)/100,2);
end;

procedure TfrmMain.DBEdit117Exit(Sender: TObject);
begin
   if DM_NFE.QNF_ItemCOFINS_qBCProd.Value > 0 then
   begin
      DM_NFE.QNF_ItemCOFINS_vCOFINS.Value := Arredonda((DM_NFE.QNF_ItemCOFINS_qBCProd.Value * DM_NFE.QNF_ItemCOFINS_vAliqProd.Value),2);
      DM_NFE.QNF_ItemCOFINS_vBC.Value  := 0;
      DM_NFE.QNF_ItemCOFINS_pCOFINS.Value := 0;
   end;
end;

procedure TfrmMain.DBEdit124Exit(Sender: TObject);
begin
   if DM_NFE.QNF_ItemIPI_vUnid.Value > 0 then
   begin
      DM_NFE.QNF_ItemIPI_vIPI.Value := Arredonda((DM_NFE.QNF_ItemIPI_vUnid.Value * DM_NFE.QNF_ItemIPI_qUnid.Value),2);
      DM_NFE.QNF_ItemIPI_vBC.Value  := 0;
      DM_NFE.QNF_ItemIPI_pIPI.Value := 0;
   end;
end;

procedure TfrmMain.DBEdit126Exit(Sender: TObject);
begin
   if DM_NFE.QNF_ItemIPI_vBC.Value > 0 then
   begin
      DM_NFE.QNF_ItemIPI_vIPI.Value  := Arredonda((DM_NFE.QNF_ItemIPI_vBC.Value * DM_NFE.QNF_ItemIPI_pIPI.Value)/100,2);
      DM_NFE.QNF_ItemIPI_vUnid.Value := 0;
      DM_NFE.QNF_ItemIPI_qUnid.Value := 0;
   END;
end;

procedure TfrmMain.DBEdit128Exit(Sender: TObject);
begin
   if DM_NFE.QNF_ItemCOFINS_vBC.Value > 0 then
   begin
      DM_NFE.QNF_ItemCOFINS_vCOFINS.Value      := Arredonda((DM_NFE.QNF_ItemCOFINS_vBC.Value * DM_NFE.QNF_ItemCOFINS_pCOFINS.Value)/100,2);
      DM_NFE.QNF_ItemCOFINS_qBCProd.Value   := 0;
      DM_NFE.QNF_ItemCOFINS_vAliqProd.Value := 0;
   end;
end;

procedure TfrmMain.DBEdit130Exit(Sender: TObject);
begin
   if DM_NFE.QNF_ItemPIS_vBC.Value > 0 then
   begin
      DM_NFE.QNF_ItemPIS_vPIS.Value      := Arredonda((DM_NFE.QNF_ItemPIS_vBC.Value * DM_NFE.QNF_ItemPIS_pPIS.Value)/100,2);
      DM_NFE.QNF_ItemPIS_qBCProd.Value   := 0;
      DM_NFE.QNF_ItemPIS_vAliqProd.Value := 0;
   end;
end;

procedure TfrmMain.DBEdit131Exit(Sender: TObject);
begin
   if DM_NFE.QNF_ItemPIS_qBCProd.Value > 0 then
   begin
      DM_NFE.QNF_ItemPIS_vPIS.Value := Arredonda((DM_NFE.QNF_ItemPIS_qBCProd.Value * DM_NFE.QNF_ItemPIS_vAliqProd.Value),2);
      DM_NFE.QNF_ItemPIS_vBC.Value  := 0;
      DM_NFE.QNF_ItemPIS_pPIS.Value := 0;
   end;
end;

procedure TfrmMain.DBEdit135Exit(Sender: TObject);
begin
   if DM_NFE.QNF_ItemPISST_vBc.Value > 0 then
   begin
      DM_NFE.QNF_ItemPISST_vPIS.Value      := Arredonda((DM_NFE.QNF_ItemPISST_vBc.Value * DM_NFE.QNF_ItemPISST_pPIS.Value)/100,2);
      DM_NFE.QNF_ItemPISST_qBCProd.Value   := 0;
      DM_NFE.QNF_ItemPISST_vAliqProd.Value := 0;
   end;
end;

procedure TfrmMain.DBEdit137Exit(Sender: TObject);
begin
   if DM_NFE.QNF_ItemPISST_qBCProd.Value > 0 then
   begin
      DM_NFE.QNF_ItemPISST_vPIS.Value := Arredonda((DM_NFE.QNF_ItemPISST_qBCProd.Value * DM_NFE.QNF_ItemPISST_vAliqProd.Value),2);
      DM_NFE.QNF_ItemPISST_vBC.Value  := 0;
      DM_NFE.QNF_ItemPISST_pPIS.Value := 0;
   end;
end;

procedure TfrmMain.DBEdit143Exit(Sender: TObject);
begin
   if DM_NFE.QNF_ItemCOFINS_qBCProd.Value > 0 then
   begin
      DM_NFE.QNF_ItemCOFINS_vCOFINS.Value := Arredonda((DM_NFE.QNF_ItemCOFINS_qBCProd.Value * DM_NFE.QNF_ItemCOFINS_vAliqProd.Value),2);
      DM_NFE.QNF_ItemCOFINS_vBC.Value     := 0;
      DM_NFE.QNF_ItemCOFINS_pCOFINS.Value := 0;
   end;
end;

procedure TfrmMain.DBEdit145Exit(Sender: TObject);
begin
   if DM_NFE.QNF_ItemCOFINS_vBC.Value > 0 then
   begin
      DM_NFE.QNF_ItemCOFINS_vCOFINS.Value   := Arredonda((DM_NFE.QNF_ItemCOFINS_vBC.Value * DM_NFE.QNF_ItemCOFINS_pCOFINS.Value)/100,2);
      DM_NFE.QNF_ItemCOFINS_qBCProd.Value   := 0;
      DM_NFE.QNF_ItemCOFINS_vAliqProd.Value := 0;
   end;
end;

procedure TfrmMain.DBEdit147Exit(Sender: TObject);
begin
   if DM_NFE.QNF_ItemCOFINSST_qBCProd.Value > 0 then
   begin
      DM_NFE.QNF_ItemCOFINSST_vCOFINS.Value := Arredonda((DM_NFE.QNF_ItemCOFINSST_qBCProd.Value * DM_NFE.QNF_ItemCOFINSST_vAliqProd.Value),2);
      DM_NFE.QNF_ItemCOFINSST_vBC.Value     := 0;
      DM_NFE.QNF_ItemCOFINSST_pCOFINS.Value := 0;
   end;
end;

procedure TfrmMain.DBEdit149Exit(Sender: TObject);
begin
   if DM_NFE.QNF_ItemCOFINSST_vBC.Value > 0 then
   begin
      DM_NFE.QNF_ItemCOFINSST_vCOFINS.Value   := Arredonda((DM_NFE.QNF_ItemCOFINSST_vBC.Value * DM_NFE.QNF_ItemCOFINSST_pCOFINS.Value)/100,2);
      DM_NFE.QNF_ItemCOFINSST_qBCProd.Value   := 0;
      DM_NFE.QNF_ItemCOFINSST_vAliqProd.Value := 0;
   end;
end;

procedure TfrmMain.DBEdit153Exit(Sender: TObject);
begin
   if DM_NFE.QNF_ItemCOFINSST_qBCProd.Value > 0 then
   begin
      DM_NFE.QNF_ItemCOFINSST_vCOFINS.Value := Arredonda((DM_NFE.QNF_ItemCOFINSST_qBCProd.Value * DM_NFE.QNF_ItemCOFINSST_vAliqProd.Value),2);
      DM_NFE.QNF_ItemCOFINSST_vBC.Value  := 0;
      DM_NFE.QNF_ItemCOFINSST_pCOFINS.Value := 0;
   end;
end;

procedure TfrmMain.DBEdit156Exit(Sender: TObject);
begin
   if DM_NFE.QNF_ItemCOFINSST_vBc.Value > 0 then
   begin
      DM_NFE.QNF_ItemCOFINSST_vCOFINS.Value      := Arredonda((DM_NFE.QNF_ItemCOFINSST_vBc.Value * DM_NFE.QNF_ItemCOFINSST_pCOFINS.Value)/100,2);
      DM_NFE.QNF_ItemCOFINSST_qBCProd.Value   := 0;
      DM_NFE.QNF_ItemCOFINSST_vAliqProd.Value := 0;
   end;
end;

procedure TfrmMain.DBEdit169Exit(Sender: TObject);
begin
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
   DM_NFE.QNFICMSTot_vNF.Value := DM_NFE.QNFICMSTot_vProd.Value -
                                     DM_NFE.QNFICMSTot_vDesc.Value +
                                     DM_NFE.QNFICMSTot_vSeg.Value +
                                     DM_NFE.QNFICMSTot_vFrete.Value +
                                     DM_NFE.QNFICMSTot_vOutro.Value +
                                     DM_NFE.QNFICMSTot_vII.Value +
                                     DM_NFE.QNFICMSTot_vIPI.Value +
                                     DM_NFE.QNFICMSTot_vST.Value;
end;

procedure TfrmMain.EdSerieEnter(Sender: TObject);
begin
   mmHint.Lines.Text := TControl(sender).Hint;
end;

procedure TfrmMain.DBEdit93Change(Sender: TObject);
begin
   if TDBEdit(sender).Focused then
   begin
      DM_NFE.Calcular_vProd;
      Calcular_Impostos_Item;
   end;
end;

procedure TfrmMain.Filtrar_CFOP(faixa: string);
begin
   if cmbIdeTpNF.ItemIndex <0 then
      exit;

   if cmbIdeTpNF.Properties.Items[cmbIdeTpNF.ItemIndex].Value = 0 then //entrada
   begin
      if True then

      if DM_NFE.QNFEmit_EnderEmit_UF.Value = DM_NFE.QNFDest_EnderDest_UF.Value then
         cmbCFOP.Items.LoadFromFile(Aqui('DAT\nfe_data\cfop', '1000.txt'))
      else
         cmbCFOP.Items.LoadFromFile(Aqui('DAT\nfe_data\cfop', '2000.txt'))
   end
   else
   begin
      if DM_NFE.QNFEmit_EnderEmit_UF.Value = DM_NFE.QNFDest_EnderDest_UF.Value then
         cmbCFOP.Items.LoadFromFile(Aqui('DAT\nfe_data\cfop', '5000.txt'))
      else
         cmbCFOP.Items.LoadFromFile(Aqui('DAT\nfe_data\cfop', '6000.txt'))
   end;   
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin
  inherited;
  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
  end;
  FreeAndNil(DM_INI);
  FreeAndNil(DM);
  FreeAndNil(DMConn);
  FreeAndNil(DM_NFE);
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
   data: TDate;
   i: integer;
   b: boolean;
begin
   b := False;

   canclose := (MessageBox(0, 'Deseja encerrar?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idYes);

   if not CanClose then
      exit;

   for i := 0 to DM_NFE.ComponentCount - 1 do
   begin
      if (DM_NFE.Components[i] is TDataSet) then
         b := (DM_NFE.Components[i] as TDataSet).State in [dsEdit, dsInsert];
      if b then
         Break;
   end;

   if b then
   if (MessageBox(0, 'Deseja gravar as informações adicionadas para uso posterior?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idYes) then
      DM_NFE.Salvar;

   DM_NFE.Fechar_Datasets;


   data := StrToDateDef(ini.StoredValue['data_atu'], 0);

{$IFDEF TESTE}
   Showmessage('Compilado modo Teste');
{$endif}

   if (DM_INI.ini.StoredValue['cbAtu'])and(NaNet)and(Trunc(data) <> date) then
   begin
      killtask('Atualizador.exe');
      ExecFile('Atualizador.exe','open','-n -start');
      ini.StoredValue['data_atu'] := date;
   end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
   i: integer;
begin
  inherited;
   CAPTION := 'MÓDULO EMISSOR DE NF-e ' + C_117;
   SplashMsg('Carregando ini...');
   DM_INI := TDM_INI.Create(Self);
   DM_NFE := TDM_NFE.Create(Self);
   DMConn := TDMConn.Create(Self);
   DM     := TDM.Create(Self);
   DM_INI.INI.IniFileName := Aqui(C_INI_FILE, 'autocom.ini');
   DM_INI.INI.Active := true;
   DM_INI.INI.RestoreFormPlacement;
   DM_NFE.st_MD5 := ParamStr(1);
   SplashMsg('MD5:' + DM_NFE.st_MD5);

   if ParamStr(1) <> '' then//se foi chamado do PDV
   begin
      btnCadEmpresa.Hide;
      btnCadCli.Hide;
      btnCadFor.Hide;
      btnCadProd.Hide;

   end;
   
  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
      begin
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
      end
      else
      if (Components[i] is TcxButton) and((Components[i] as TcxButton).Name <> 'btnEmitir') then
      begin
         (Components[i] as TcxButton).LookAndFeel := btnEmitir.LookAndFeel;
      end
      else
      if (Components[i] is TLabel) then
      begin
        if (Components[i] as TLabel).Tag = 0 then
           (Components[i] as TLabel).Font.Color := clWhite;
      end;
  end;

  //preenche os combobox

  cmbUF1.Properties.Items.Clear;
  cmbUF2.Properties.Items.Clear;

  for i := low(DFeUF) to High(DFeUF) do
  begin
     with cmbUF1.Properties.Items.Add do
     begin
        Description := DFeUF[i];
        Value       := UFtoCUF(DFeUF[i]);
     end;

     with cmbUF2.Properties.Items.Add do
     begin
        Description := DFeUF[i];
        Value       := UFtoCUF(DFeUF[i]);
     end;
  end;

  cmbProdCST.Properties.Items.Clear;

  for i := low(C_ARR_5) to High(C_ARR_5) do
  begin
     with cmbProdCST.Properties.Items.Add do
     begin
        Description := C_ARR_5[i];
        Value       := i;
     end;
  end;

  cmbProdCSOSN.Properties.Items.Clear;

  for i := low(C_ARR_4) to High(C_ARR_4) do
  begin
     with cmbProdCSOSN.Properties.Items.Add do
     begin
        Description := C_ARR_4[i];
        Value       := i;
     end;
  end;

  cmb_Ide_tpemis.Properties.Items.Clear;

  for i := low(C_ARR_7) to High(C_ARR_7) do
  begin
     with cmb_Ide_tpemis.Properties.Items.Add do
     begin
        Description := C_ARR_7[i];
        Value       := i;
     end;
  end;

  cmbIde_finNFe.Properties.Items.Clear;

  for i := low(C_ARR_8) to High(C_ARR_8) do
  begin
     with cmbIde_finNFe.Properties.Items.Add do
     begin
        Description := C_ARR_8[i];
        Value       := i;
     end;
  end;

  cmb_nf_UF.Properties.Items.Clear;

  for i := low(C_ARR_10) to High(C_ARR_10) do
  begin
     with cmb_nf_UF.Properties.Items.Add do
     begin
        Description := C_ARR_11[i];
        Value       := C_ARR_10[i];
     end;
  end;

  cmbPIS_CST.Properties.Items.Clear;

  for i := low(C_ARR_9) to High(C_ARR_9) do
  begin
     with cmbPIS_CST.Properties.Items.Add do
     begin
        Description := C_ARR_9[i];
        Value       := i;
     end;
  end;

  cmbCOFINS_CST.Properties.Items.Clear;

  for i := low(C_ARR_9) to High(C_ARR_9) do
  begin
     with cmbCOFINS_CST.Properties.Items.Add do
     begin
        Description := C_ARR_9[i];
        Value       := i;
     end;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  GetSkinDLL.GetSkinName;
  SplashMsg('Conectando BD remoto...');
  DM.Conectar;
  SplashMsg('Conectando BD local...');
  DM_NFE.Conectar;
  SplashMsg('Abrindo datasets...');
  AbreDatasets;
  SplashMsg('Verificando NFs...');
  Verificar_NFs;
  SplashMsg('Concluindo...');

  if DM_NFE.QNF.IsEmpty then
     AtivaTabs('129')
  else
  if DM_NFE.QNFDest_CNPJCPF.AsString = C_ST_VAZIO then
     AtivaTabs('1239')
  else
  if DM_NFE.QNF_Item.IsEmpty then
     AtivaTabs('1239')
  else
  begin
     AtivaTabs('123456789');
  end;
  
  frmSplash.hide;
  FreeAndNil(frmSplash);  
end;


procedure TfrmMain.LinkLabel1LinkClick(Sender: TObject; const Link: string;
  LinkType: TSysLinkType);
begin
   sleep(500);
   ShellExecute(0, nil, PWideChar(Link), nil, nil, 1);
end;

function TfrmMain.Validar_IDE(var campo:integer): boolean;
var
   i: integer;
begin
   Result := True;

   for i := 1 to 12 do
   begin
      if (not i in[10])and(DM_NFE.QNF.Fields[i].asstring = '') then
      begin
         AbreTab(PG1, TabDados);
         AbreTab(PGNF, TabDadosNFe);
         Result := False;
         campo  := i;
         Break;
      end;
   end;
end;

function TfrmMain.Validar_Dest(var campo:integer): boolean;
var
   i: integer;
begin
   Result := True;

   for i := 37 to 48 do
   begin
      if (not i in[40,44])and(DM_NFE.QNF.Fields[i].asstring = '') then
      begin
         AbreTab(PG1, TabDest);
         Result := False;
         campo  := i;
         Break;
      end;
   end;
end;

procedure TfrmMain.nav1ButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
   i: integer;
begin
   pnlDescItem.Hide;
   
   if not Validar_IDE(i) then
      raise Exception.Create('Informe o campo ' + DM_NFE.QNF.Fields[i].displaylabel);

   if not Validar_Dest(i) then
      raise Exception.Create('Informe o campo ' + DM_NFE.QNF.Fields[i].displaylabel);

   CfgImpostos;

   if AButtonIndex = 10 then
      DM_NFE.QNF_Item.Tag := 100;//flag para calcular o total
end;


procedure TfrmMain.PG1Changing(Sender: TObject; var AllowChange: Boolean);
var
   s: string;
begin
   if DM_NFE.QNF_Item.State in [dsEdit, dsInsert] then
      s := 'Item: Conclua a operação.'
   else
   if DM_NFE.QNF_Referenciada.State in [dsEdit, dsInsert] then
      s := 'Referenciadas: Conclua a operação.';

  AllowChange := s = '';

  if not AllowChange then
     ShowMessage(s);

  mmHint.Lines.Clear;
end;

procedure TfrmMain.PGNFChanging(Sender: TObject; var AllowChange: Boolean);
begin
   AllowChange := not (DM_NFE.QNF_Referenciada.State in [dsEdit, dsInsert]);

   if not AllowChange then
      ShowMessage('Referenciadas: Conclua a operação.');
end;

//preenche o combobox informado em <cmb> com a lista de cidades da <cUF> informada
procedure TfrmMain.PopularMunic(cUF: string; cmb: TRxDBComboBox);
var
   lista: TStringList;
   i: integer;
begin
   if Trim(cUF) = C_ST_VAZIO then
      raise Exception.Create('Falta a UF');

   Lista := TStringList.Create;
   Lista.LoadFromFile(Aqui('DAT\nfe_data\MunIBGE', cUF + '.txt'));

   with cmb do
   begin
      Clear;
      for i := 0 to Lista.Count - 1 do
      begin
          Values.Insert(i, Number(Copy(Lista.Strings[i],1,8)));
          Items.Insert(i, Trim(Copy(Lista.Strings[i],9,60)));//  + ' (' + Copy(Lista.Strings[i],1,8) + ')');
      end;
   end;
end;

procedure TfrmMain.cmb_Ide_tpemisClick(Sender: TObject);
var
   s: string;
begin
   gpCont.Visible := cmb_Ide_tpemis.ItemIndex > 0;
   mmHint.Lines.Text := TControl(sender).Hint;

   if DM_NFE.QNF.State in[dsInsert, dsEdit] then
   with DM_NFE do
   begin
      s := IntToStr(cmb_Ide_tpemis.Properties.Items[cmb_Ide_tpemis.ItemIndex].Value);
      QFEmissao.Filter   := 'id=' + s;
      QFEmissao.Filtered := True;
      QNFIde_cNF.Value   := QCfgCfg_cNF.Value;
      QNFIde_serie.Value := QFEmissaoserie.Value;
      QNFIde_nNF.Value   := QFEmissaonNF.Value;// TCfgCfg_SeqChave.Value;
      QNFIde_cNF.Value   := QFEmissaocNF.Value;
      QNFIde_nNF.Value   := QFEmissaonNF.Value;
      QNFIde_serie.Value := QFEmissaoserie.Value;
   end;
end;

procedure TfrmMain.RxDBComboBox3Enter(Sender: TObject);
begin
   mmHint.Lines.Text := TControl(sender).Hint;
end;

procedure TfrmMain.cmbICMS_modBCSTClick(Sender: TObject);
begin
   edICMS_pMVAST.Enabled := StrToInt(cmbICMS_modBCST.Values[cmbICMS_modBCST.ItemIndex]) = 4;
   edICMS_vTabelaST.Enabled := not edICMS_pMVAST.Enabled;

   if DM_NFE.QNF_Item.State in [dsInsert, dsEdit] then
   begin
      Calcular_Impostos_Item;
   end;
end;

procedure TfrmMain.TabEmiteShow(Sender: TObject);
begin
   pnlmail.Left := (TabEmite.Width - pnlmail.Width) div 2;
   pnlmail.top  := (TabEmite.Height - pnlmail.Height) div 2;
   mmResp.Clear;
   mmHint.Clear;
end;

procedure TfrmMain.TabICMSShow(Sender: TObject);
begin
   CfgImpostos;
end;

procedure TfrmMain.TabImpostoShow(Sender: TObject);
begin
   TabIPI.TabVisible := DM.QEmpresacontr_ipi.Value = 'S';
end;

procedure TfrmMain.TabInfoAdicShow(Sender: TObject);
begin
   if DM_NFE.QNFICMSTot_vNF.Value > 0 then
      DM_NFE.Preenche_Info_Compl(False);
end;

procedure TfrmMain.TabItensShow(Sender: TObject);
begin
   Filtrar_CFOP('');
   CfgImpostos;
end;

procedure TfrmMain.TabTotaisShow(Sender: TObject);
begin
   mmHint.Clear;
   DM_NFE.Totalizar_NFe;
end;

procedure TfrmMain.TbvDupCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnDupRemover.Enabled := not DM_NFE.QNF_Duplicata.IsEmpty;
end;

procedure TfrmMain.TbvLacreCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnLacreRemover.Enabled := not DM_NFE.QNF_Lacre.IsEmpty;
end;

procedure TfrmMain.tbvReboqueCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnRebRemover.Enabled := not DM_NFE.QNF_Reboque.IsEmpty;
end;

procedure TfrmMain.cmbTransporta_UFChange(Sender: TObject);
begin
   PopularMunic(TRxDBComboBox(sender).Values[TRxDBComboBox(sender).ItemIndex], cmbTransporta_xMun);
   PopularMunic(TRxDBComboBox(sender).Values[TRxDBComboBox(sender).ItemIndex], cmbTraspRetcMunFG);
end;

procedure TfrmMain.cmbRetirada_UFChange(Sender: TObject);
begin
   PopularMunic(TRxDBComboBox(sender).Values[TRxDBComboBox(sender).ItemIndex], cmbRetirada_cMun);
end;

procedure TfrmMain.cbDatSaiMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if cbDatSai.Checked then
      ShowMessage(C_215);
end;

procedure TfrmMain.CfgImpostos;
begin
//SN
   edICMS_pCredSN.Enabled     := False;
   edICMS_vCredICMSSN.Enabled := False;
//ICMS
   edICMS_pICMS.Enabled  := False;
   edICMS_pRedBC.Enabled := False;
   edICMS_vBC.Enabled    := False;
   edICMS_vICMS.Enabled  := False;
//ST
   edICMS_pRedBCST.Enabled  := False;
   edICMS_pMVAST.Enabled    := False;
   edICMS_vTabelaST.Enabled := False;
   edICMS_vBCST.Enabled     := False;
   edICMS_pICMSST.Enabled   := False;
   edICMS_vICMSST.Enabled   := False;

   GBICMS.Enabled       := False;
   GBICMSST.Enabled     := False;
   GBCredICMSSN.Enabled := DM_NFE.QNFEmit_CRT.Value < 2;
   cmbProdCST.Enabled   := not GBCredICMSSN.Enabled;
   cmbProdCSOSN.Enabled := not cmbProdCST.Enabled;


   if DM_NFE.QNFEmit_CRT.Value >= 2 then //regime normal
   BEGIN
      GBICMS.Enabled       := (DM_NFE.QNFEmit_CRT.Value = 2)and(cmbProdCST.ItemIndex in[integer(cst00), integer(cst10), integer(cst20), integer(cst40), integer(cst41), integer(cst45), integer(cst50), integer(cst51), integer(cst70), integer(cst90), integer(cstPart10), integer(cstPart90), integer(cstRep41), integer(cstICMSOutraUF)]);
      GBICMSST.Enabled     := (DM_NFE.QNFEmit_CRT.Value = 2)and(cmbProdCST.ItemIndex in[integer(cst10), integer(cst30), integer(cst40), integer(cst60), integer(cst70), integer(cst90), integer(cstPart10), integer(cstPart90), integer(cstRep41)]);
      //icms
      edICMS_pRedBC.Enabled      := cmbProdCST.ItemIndex in [integer(cst20), integer(cst51), integer(cst70), integer(cst90)];
      edICMS_vBC.Enabled         := (cmbProdCST.ItemIndex in[integer(cst00), integer(cst10), integer(cst20), integer(cst51), integer(cst70), integer(cst90), integer(cstPart10), integer(cstPart90), integer(cstICMSOutraUF)]);
      edICMS_pICMS.Enabled       := (cmbProdCST.ItemIndex in[integer(cst00), integer(cst10), integer(cst20), integer(cst51), integer(cst70), integer(cst90), integer(cstPart10), integer(cstPart90), integer(cstICMSOutraUF)]);
      edICMS_vICMS.Enabled       := (cmbProdCST.ItemIndex in[integer(cst00), integer(cst10), integer(cst20), integer(cst40), integer(cst41), integer(cst50), integer(cst51), integer(cst70), integer(cst90), integer(cstPart10), integer(cstPart90), integer(cstICMSOutraUF)]);
      edICMS_pRedBCST.Enabled    := cmbProdCST.ItemIndex in [integer(cst10), integer(cst30), integer(cst70), integer(cst90)];
      cmbICMS_motDesICMS.Enabled := cmbProdCST.ItemIndex in [integer(cst40), integer(cst41), integer(cst50)];
     //st
      edICMS_pRedBCST.Enabled  := cmbProdCST.ItemIndex in [integer(cst30), integer(cst70), integer(cst90), integer(cstPart10), integer(cstPart90)];
      edICMS_pMVAST.Enabled    := cmbProdCST.ItemIndex in [integer(cst10), integer(cst30), integer(cst70), integer(cst90), integer(cstPart10), integer(cstPart90)];
      edICMS_vTabelaST.Enabled := cmbProdCST.ItemIndex in [integer(cst10), integer(cst30), integer(cst70), integer(cst90), integer(cstPart10), integer(cstPart90)];
      edICMS_vBCST.Enabled     := cmbProdCST.ItemIndex in [integer(cst10), integer(cst30), integer(cst60), integer(cst70), integer(cst90), integer(cstPart10), integer(cstPart90)];
      edICMS_pICMSST.Enabled   := cmbProdCST.ItemIndex in [integer(cst10), integer(cst30), integer(cst60), integer(cst70), integer(cst90), integer(cstPart10), integer(cstPart90)];
      edICMS_vICMSST.Enabled   := cmbProdCST.ItemIndex in [integer(cst10), integer(cst30), integer(cst60), integer(cst70), integer(cst90), integer(cstPart10), integer(cstPart90)];
   END;

   if DM_NFE.QNFEmit_CRT.Value < 2 then //SN
   BEGIN
      GBICMS.Enabled   := (cmbProdCSOSN.ItemIndex in[integer(csosn900)]);
      GBICMSST.Enabled := (cmbProdCSOSN.ItemIndex in[integer(csosn201), integer(csosn202), integer(csosn203), integer(csosn500), integer(csosn900)]);

      edICMS_pCredSN.Enabled     := (cmbProdCSOSN.ItemIndex in[integer(csosn101), integer(csosn201), integer(csosn900)]);
      edICMS_vCredICMSSN.Enabled := (cmbProdCSOSN.ItemIndex in[integer(csosn101), integer(csosn201), integer(csosn900)]);
      //icms
      edICMS_pRedBC.Enabled   := (cmbProdCSOSN.ItemIndex in[integer(csosn900)]);
      edICMS_vBC.Enabled      := (cmbProdCSOSN.ItemIndex in[integer(csosn900)]);
      edICMS_pICMS.Enabled    := (cmbProdCSOSN.ItemIndex in[integer(csosn900)]);
      edICMS_vICMS.Enabled    := (cmbProdCSOSN.ItemIndex in[integer(csosn900)]);
      edICMS_pRedBCST.Enabled := (cmbProdCSOSN.ItemIndex in[integer(csosn900)]);
     //st
      edICMS_pRedBCST.Enabled  := (cmbProdCSOSN.ItemIndex in[integer(csosn201), integer(csosn202), integer(csosn203), integer(csosn500), integer(csosn900)]);
      edICMS_pMVAST.Enabled    := (cmbProdCSOSN.ItemIndex in[integer(csosn201), integer(csosn202), integer(csosn203), integer(csosn500), integer(csosn900)]);
      edICMS_vTabelaST.Enabled := (cmbProdCSOSN.ItemIndex in[integer(csosn201), integer(csosn202), integer(csosn203), integer(csosn500), integer(csosn900)]);
      edICMS_vBCST.Enabled     := (cmbProdCSOSN.ItemIndex in[integer(csosn201), integer(csosn202), integer(csosn203), integer(csosn500), integer(csosn900)]);
      edICMS_pICMSST.Enabled   := (cmbProdCSOSN.ItemIndex in[integer(csosn201), integer(csosn202), integer(csosn203), integer(csosn500), integer(csosn900)]);
      edICMS_vICMSST.Enabled   := (cmbProdCSOSN.ItemIndex in[integer(csosn201), integer(csosn202), integer(csosn203), integer(csosn500), integer(csosn900)]);
   END;
end;

procedure TfrmMain.cmbCFOPEnter(Sender: TObject);
begin
   Filtrar_CFOP('');
end;

procedure TfrmMain.cmbCFOPExit(Sender: TObject);
begin
   if DM_NFE.QNF_Item.State IN [dsEdit, dsInsert] then
   begin
      if DM_NFE.QNF_ItemCFOP.Value <> '' then
      begin
         DMConn.Q3.Open('select baixa_estoque from cfop where cfop=' + Texto_Mysql(DM_NFE.QNF_ItemCFOP.AsString));
         DM_NFE.QNF_Itembaixa_estoque.AsString := DMConn.Q3.Fields[0].AsString;
      end;
   end;
end;

procedure TfrmMain.cmbEntrega_UFChange(Sender: TObject);
begin
   PopularMunic(TRxDBComboBox(sender).Values[TRxDBComboBox(sender).ItemIndex], cmbEntrega_cMun);
   PopularMunic(TRxDBComboBox(sender).Values[TRxDBComboBox(sender).ItemIndex], CMBISSQN_cMunFG);
end;

procedure TfrmMain.CmbFormaEmissaoClick(Sender: TObject);
begin
   DM_NFE.QFEmissao.Locate('id', strToInt(CmbFormaEmissao.Values[CmbFormaEmissao.ItemIndex]), []);
end;

procedure TfrmMain.cmb_dest_ender_ufChange(Sender: TObject);
begin
   PopularMunic(TRxDBComboBox(sender).Values[TRxDBComboBox(sender).ItemIndex], cmbDest_EnderDest_cMun);
end;

procedure TfrmMain.cmbIdeTpNFClick(Sender: TObject);
begin
   Filtrar_CFOP('');
   AtivaTabs('12');
   DBEDIT18.SetFocus;
end;

procedure TfrmMain.cmbIdeTpNFdClick(Sender: TObject);
begin
   Filtrar_CFOP('');
   AtivaTabs('12');
   DBEDIT18.SetFocus;
end;

procedure TfrmMain.cmbIdeTpNFEnter(Sender: TObject);
begin
   mmHint.Lines.Text := TControl(sender).Hint;
end;

procedure TfrmMain.cmbPIS_CSTClick(Sender: TObject);
begin
   DM_NFE.QNF_ItemPIS_vBC.Value  := Calcular_BC_PIS_COFINS;
   DM_NFE.QNF_ItemPIS_vPIS.Value := Percentual(DM_NFE.QNF_ItemPIS_pPIS.Value, DM_NFE.QNF_ItemPIS_vBC.Value);

   DM_NFE.QNF_ItemCOFINS_CST.Value     := DM_NFE.QNF_ItemPIS_CST.Value;
   DM_NFE.QNF_ItemCOFINS_vBC.Value     := Calcular_BC_PIS_COFINS;
   DM_NFE.QNF_ItemCOFINS_vCOFINS.Value := Percentual(DM_NFE.QNF_ItemCOFINS_pCOFINS.Value, DM_NFE.QNF_ItemCOFINS_vBC.Value);
end;

procedure TfrmMain.cmbProdCSOSNClick(Sender: TObject);
begin
   CfgImpostos;

   if DM_NFE.QNF_Item.State in [dsInsert, dsEdit] then
   begin
      Calcular_Impostos_Item;
   end;
end;

procedure TfrmMain.cmbProdCSTClick(Sender: TObject);
begin
   CfgImpostos;

   if DM_NFE.QNF_Item.State in [dsInsert, dsEdit] then
   begin
      Calcular_Impostos_Item;
   end;
end;

procedure TfrmMain.btnGetCertClick(Sender: TObject);
begin
   DM_NFE.QCfg.Edit;
   DM_NFE.QCfgCfg_Certif_NmroSerie.AsString := DM_NFE.NFe1.SSL.SelecionarCertificado;
   DM_NFE.QCfg.Post;
end;

end.
