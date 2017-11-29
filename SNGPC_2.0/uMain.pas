unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Easysize, TypInfo, Vcl.Menus, ShellAPI,
  Vcl.StdCtrls, Vcl.ExtCtrls, RxPlacemnt,cxGroupBox, Vcl.Mask, Vcl.DBCtrls, Data.DB,
   ACBrBase, ACBrEnterTab, sngpc_h, sngpc_p, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxControls, cxPCdxBarPopupMenu, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxLabel,
  Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom, Xml.XMLDoc, dxStatusBar, FireDac.Stan.Param,
  cxProgressBar, cxSpinEdit, cxRadioGroup, cxCurrencyEdit, cxCalendar,
  cxDropDownEdit, cxDBEdit, cxDBLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxNavigator, cxDBNavigator, cxCheckBox, cxTextEdit, cxMaskEdit,
  dxGDIPlusClasses, cxPC, cxButtons, Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TfrmMain = class(TForm)
    cxButton1: TcxButton;
    PgMain: TcxPageControl;
    TabCadEmpresa: TcxTabSheet;
    TabCfg: TcxTabSheet;
    TabInvent: TcxTabSheet;
    TabEntrada: TcxTabSheet;
    TabSaida: TcxTabSheet;
    TabGerar: TcxTabSheet;
    TabInicio: TcxTabSheet;
    Bar1: TdxStatusBar;
    FR: TFormResizer;
    Edit1: TEdit;
    Ini: TFormStorage;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    edHost: TcxTextEdit;
    cxLabel1: TcxLabel;
    edDB: TcxTextEdit;
    cxLabel2: TcxLabel;
    edUser: TcxTextEdit;
    cxLabel3: TcxLabel;
    edSenha: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    cxGroupBox10: TcxGroupBox;
    Image1: TImage;
    cxGroupBox11: TcxGroupBox;
    cxLabel5: TcxLabel;
    btnGravarCfg: TcxButton;
    cxGroupBox12: TcxGroupBox;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    DBEdit17: TcxDBTextEdit;
    DBEdit18: TcxDBTextEdit;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label6: TcxLabel;
    Label5: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label13: TcxLabel;
    Label14: TcxLabel;
    Label12: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    cxGroupBox13: TcxGroupBox;
    cxDBNavigator1: TcxDBNavigator;
    PgInvent: TcxPageControl;
    TabInventAtual: TcxTabSheet;
    TabInventInicial: TcxTabSheet;
    GrdInventAtual: TcxGrid;
    TbvInventAtual: TcxGridDBTableView;
    TbvInventAtualid: TcxGridDBColumn;
    TbvInventAtualproduto: TcxGridDBColumn;
    TbvInventAtualdescricao: TcxGridDBColumn;
    TbvInventAtualregistro_ms: TcxGridDBColumn;
    TbvInventAtualqtd: TcxGridDBColumn;
    TbvInventAtuallote: TcxGridDBColumn;
    TbvInventAtualclasse_terap: TcxGridDBColumn;
    LvInventAtual: TcxGridLevel;
    GrdInventInicial: TcxGrid;
    TbvInventInicial: TcxGridDBTableView;
    LvInventInicial: TcxGridLevel;
    PnlInvent: TcxGroupBox;
    TbvInventInicialid: TcxGridDBColumn;
    TbvInventInicialproduto: TcxGridDBColumn;
    TbvInventInicialqtd: TcxGridDBColumn;
    TbvInventInicialdescricao: TcxGridDBColumn;
    TbvInventIniciallote: TcxGridDBColumn;
    TbvInventInicialregistro_ms: TcxGridDBColumn;
    TbvInventInicialclasse_terap: TcxGridDBColumn;
    cxGroupBox14: TcxGroupBox;
    cxLabel6: TcxLabel;
    Shape1: TShape;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    Shape2: TShape;
    cxLabel9: TcxLabel;
    Shape3: TShape;
    cxGroupBox15: TcxGroupBox;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    EnterTab: TACBrEnterTab;
    cxDBLabel1: TcxDBLabel;
    cmb2: TcxComboBox;
    cxLabel14: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel15: TcxLabel;
    Grd4: TcxGrid;
    Tbv4: TcxGridDBTableView;
    Lv4: TcxGridLevel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel16: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel17: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    edPesq: TcxTextEdit;
    lblPesq: TcxLabel;
    Tbv4id: TcxGridDBColumn;
    Tbv4nome: TcxGridDBColumn;
    Tbv4apresentacao: TcxGridDBColumn;
    Tbv4NOMELAB: TcxGridDBColumn;
    Tbv4PORTARIA: TcxGridDBColumn;
    Tbv4ean: TcxGridDBColumn;
    Tbv4registroms: TcxGridDBColumn;
    cmbInventPortaria: TcxComboBox;
    gbInvent: TcxGroupBox;
    cxDBNavigator2: TcxDBNavigator;
    cmbInventUnid: TcxComboBox;
    cmbInventClasse: TcxComboBox;
    cxGroupBox16: TcxGroupBox;
    edNF: TcxTextEdit;
    cxLabel22: TcxLabel;
    DtEm: TcxDateEdit;
    DtEnt: TcxDateEdit;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    GpTabMedic: TcxGroupBox;
    lblPesqEntr: TcxLabel;
    edPesqEntr: TcxTextEdit;
    cmbClasseEntr: TcxComboBox;
    cxLabel25: TcxLabel;
    cmbPortariaEntr: TcxComboBox;
    cxLabel26: TcxLabel;
    cmbUnidEntr: TcxComboBox;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    GdEntrada: TcxGrid;
    TbvEntrada: TcxGridDBTableView;
    LvEntrada: TcxGridLevel;
    btnExcluirEntr: TcxButton;
    btnRegistrarEntr: TcxButton;
    edLoteEntr: TcxTextEdit;
    edRegMSEntr: TcxTextEdit;
    edQtdEntr: TcxCurrencyEdit;
    edCNPJEntr: TcxTextEdit;
    cxLabel31: TcxLabel;
    cxButton2: TcxButton;
    GrdTabProd: TcxGrid;
    tbvTabProd: TcxGridDBTableView;
    LvTabProd: TcxGridLevel;
    cxLabel32: TcxLabel;
    dtVencimEntr: TcxDateEdit;
    TbvEntradadt_entrada: TcxGridDBColumn;
    TbvEntradadt_vencim: TcxGridDBColumn;
    TbvEntradalote: TcxGridDBColumn;
    TbvEntradaregistro_ms: TcxGridDBColumn;
    TbvEntradaean: TcxGridDBColumn;
    TbvEntradanome: TcxGridDBColumn;
    btnInventExcluir: TcxButton;
    btnInventConcluir: TcxButton;
    btnInventEnviar: TcxButton;
    btnInventValidar: TcxButton;
    btnInventVoltar: TcxButton;
    lblInventStatus: TcxLabel;
    XMLDocument1: TXMLDocument;
    TbvEntradasngpc: TcxGridDBColumn;
    cxGroupBox3: TcxGroupBox;
    cmbTipoReceita: TcxComboBox;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    edNmroReceita: TcxTextEdit;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    edNmroProf: TcxTextEdit;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    cmbUFProf: TcxComboBox;
    cmbConselho: TcxComboBox;
    cxLabel39: TcxLabel;
    edNomePrescr: TcxTextEdit;
    cxLabel40: TcxLabel;
    edNomeComprador: TcxTextEdit;
    cxLabel41: TcxLabel;
    cmbDocComprador: TcxComboBox;
    cxLabel42: TcxLabel;
    cmbUFComprador: TcxComboBox;
    cxLabel43: TcxLabel;
    edNmroDocComprador: TcxTextEdit;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cmbOrgao: TcxComboBox;
    btnComprPac: TcxButton;
    edNomePac: TcxTextEdit;
    cxLabel46: TcxLabel;
    edIdadePAc: TcxCurrencyEdit;
    cxLabel47: TcxLabel;
    cmbIdadePAc: TcxComboBox;
    cxLabel48: TcxLabel;
    cxLabel49: TcxLabel;
    cmbSexoPac: TcxComboBox;
    cxLabel50: TcxLabel;
    edCIDPac: TcxTextEdit;
    btnDigitRec: TcxButton;
    btnVisRec: TcxButton;
    btnMedic: TcxButton;
    dtPrescrReceita: TcxDateEdit;
    dtSaidaReceita: TcxDateEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    lblArqReceita: TcxLabel;
    TabSaiMed: TcxTabSheet;
    cxGroupBox17: TcxGroupBox;
    cxGroupBox18: TcxGroupBox;
    cxLabel51: TcxLabel;
    edMedSaiQtd: TcxCurrencyEdit;
    cxLabel52: TcxLabel;
    lblDispon: TcxLabel;
    btnMedSaiInserir: TcxButton;
    GdMedDispSai: TcxGrid;
    tbvMedDispSai: TcxGridDBTableView;
    LvMedDispSai: TcxGridLevel;
    edPesqSaiMed: TcxTextEdit;
    tbvTabProdid: TcxGridDBColumn;
    tbvTabProdnome: TcxGridDBColumn;
    tbvTabProdapresentacao: TcxGridDBColumn;
    tbvTabProdNOMELAB: TcxGridDBColumn;
    tbvTabProdPORTARIA: TcxGridDBColumn;
    tbvTabProdean: TcxGridDBColumn;
    tbvTabProdregistroms: TcxGridDBColumn;
    tbvMedDispSaiid: TcxGridDBColumn;
    tbvMedDispSainome: TcxGridDBColumn;
    tbvMedDispSaiNOMELAB: TcxGridDBColumn;
    tbvMedDispSaiPORTARIA: TcxGridDBColumn;
    tbvMedDispSaiean: TcxGridDBColumn;
    tbvMedDispSaiquant: TcxGridDBColumn;
    tbvMedDispSailote: TcxGridDBColumn;
    cbDescr: TcxRadioButton;
    cbLote: TcxRadioButton;
    GdSaiMed: TcxGrid;
    tbvSaiMed: TcxGridDBTableView;
    lvSaiMed: TcxGridLevel;
    tbvSaiMedid: TcxGridDBColumn;
    tbvSaiMednome: TcxGridDBColumn;
    tbvSaiMedean: TcxGridDBColumn;
    tbvSaiMedlote: TcxGridDBColumn;
    tbvSaiMedquant: TcxGridDBColumn;
    btnMedSaiRemover: TcxButton;
    btnMedSaiConcluir: TcxButton;
    TabPesq: TcxTabSheet;
    cxGroupBox9: TcxGroupBox;
    cxGroupBox19: TcxGroupBox;
    pgPesq: TcxPageControl;
    TabPesq2: TcxTabSheet;
    edPesqMovi: TcxTextEdit;
    lblPesqMovi: TcxLabel;
    TabPesq1: TcxTabSheet;
    cxLabel53: TcxLabel;
    dt1: TcxDateEdit;
    Dt2: TcxDateEdit;
    cxLabel54: TcxLabel;
    btnPesqMovi: TcxButton;
    GpPesq: TcxRadioGroup;
    pgPesqMovi: TcxPageControl;
    TabPesqEntr: TcxTabSheet;
    TabPesqSai: TcxTabSheet;
    TabPesqPerdas: TcxTabSheet;
    Panel2: TPanel;
    GrdPesqEntr: TcxGrid;
    tbvPesqEntr: TcxGridDBTableView;
    lvPesqEntr: TcxGridLevel;
    tbvPesqEntrnome: TcxGridDBColumn;
    tbvPesqEntrean: TcxGridDBColumn;
    tbvPesqEntrdt_entrada: TcxGridDBColumn;
    tbvPesqEntrdt_vencim: TcxGridDBColumn;
    tbvPesqEntrnmro_nf: TcxGridDBColumn;
    tbvPesqEntrlote: TcxGridDBColumn;
    tbvPesqEntrcnpj_origem: TcxGridDBColumn;
    tbvPesqEntrregistro_ms: TcxGridDBColumn;
    tbvPesqEntrquant: TcxGridDBColumn;
    tbvPesqEntrdt_nf: TcxGridDBColumn;
    Panel1: TPanel;
    GrdPesqSai: TcxGrid;
    tbvPesqSai: TcxGridDBTableView;
    lvPesqSai: TcxGridLevel;
    pnlPesqSai: TPanel;
    tbvPesqSainome: TcxGridDBColumn;
    tbvPesqSaiean: TcxGridDBColumn;
    tbvPesqSaidt_saida: TcxGridDBColumn;
    tbvPesqSaidt_vencim: TcxGridDBColumn;
    tbvPesqSailote: TcxGridDBColumn;
    tbvPesqSairegistro_ms: TcxGridDBColumn;
    tbvPesqSaiquant: TcxGridDBColumn;
    grdPesqPerda: TcxGrid;
    tbvPesqPerda: TcxGridDBTableView;
    lvPesqPerda: TcxGridLevel;
    Panel4: TPanel;
    tbvPesqPerdaean: TcxGridDBColumn;
    tbvPesqPerdanome: TcxGridDBColumn;
    tbvPesqPerdadt_perda: TcxGridDBColumn;
    tbvPesqPerdadt_vencim: TcxGridDBColumn;
    tbvPesqPerdamotivo_perda: TcxGridDBColumn;
    tbvPesqPerdalote: TcxGridDBColumn;
    tbvPesqPerdaregistro_ms: TcxGridDBColumn;
    tbvPesqPerdaquant: TcxGridDBColumn;
    cxLabel55: TcxLabel;
    cxDBLabel2: TcxDBLabel;
    cxLabel56: TcxLabel;
    cxDBLabel3: TcxDBLabel;
    cxLabel58: TcxLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxLabel59: TcxLabel;
    cxDBLabel8: TcxDBLabel;
    cxLabel60: TcxLabel;
    cxDBLabel9: TcxDBLabel;
    cxButton4: TcxButton;
    btnPesqDelEntr: TcxButton;
    btnPesqDelSai: TcxButton;
    btpPesqDelPerda: TcxButton;
    Panel3: TPanel;
    cxLabel57: TcxLabel;
    DtIni: TcxDateEdit;
    DtFim: TcxDateEdit;
    cxLabel61: TcxLabel;
    edInterv: TcxSpinEdit;
    cxLabel62: TcxLabel;
    btnGerar: TcxButton;
    btnLog: TcxButton;
    btnEnviar: TcxButton;
    bar2: TcxProgressBar;
    OD1: TOpenDialog;
    Panel5: TPanel;
    GrdGer: TcxGrid;
    tbvGer: TcxGridDBTableView;
    tbvGerid: TcxGridDBColumn;
    tbvGerdt_ini: TcxGridDBColumn;
    tbvGerdt_fim: TcxGridDBColumn;
    tbvGervalidado: TcxGridDBColumn;
    lvGer: TcxGridLevel;
    Panel6: TPanel;
    btnDel: TcxButton;
    Image2: TImage;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    cxLabel63: TcxLabel;
    cxLabel64: TcxLabel;
    cxLabel65: TcxLabel;
    cxLabel66: TcxLabel;
    tbvPesqPerdaclasse_terap: TcxGridDBColumn;
    tbvPesqSaiclasse_terap: TcxGridDBColumn;
    tbvPesqEntrclasse_terap: TcxGridDBColumn;
    TabClose: TcxTabSheet;
    Image3: TImage;
    cxLabel67: TcxLabel;
    TabRel: TcxTabSheet;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Button1: TcxButton;
    Button2: TcxButton;
    Button3: TcxButton;
    Button4: TcxButton;
    Button5: TcxButton;
    Button6: TcxButton;
    Button7: TcxButton;
    Button8: TcxButton;
    Button9: TcxButton;
    cxButton5: TcxButton;
    Panel10: TPanel;
    cxLabel68: TcxLabel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cmbstatus: TcxComboBox;
    cbDebug: TcxCheckBox;
    cxButton8: TcxButton;
    cbHomo: TcxCheckBox;
    TabPerda: TcxTabSheet;
    cxGroupBox20: TcxGroupBox;
    grdPerda: TcxGrid;
    tbvPerda: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    lvPerda: TcxGridLevel;
    btnMedPerdaRemover: TcxButton;
    cxGroupBox21: TcxGroupBox;
    cxLabel69: TcxLabel;
    edMedPerQtd: TcxCurrencyEdit;
    cxLabel70: TcxLabel;
    lblDispon2: TcxLabel;
    btnMedPerInserir: TcxButton;
    grdMedPerda: TcxGrid;
    tbvMedPerda: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    lvMedPerda: TcxGridLevel;
    edPesqPerMed: TcxTextEdit;
    cbDescr2: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cmbMotivo: TcxComboBox;
    cxLabel72: TcxLabel;
    cxLabel71: TcxLabel;
    DtPerda: TcxDateEdit;
    cxButton10: TcxButton;
    btnMedPerConcluir: TcxButton;
    cxGroupBox22: TcxGroupBox;
    cxLabel73: TcxLabel;
    edValMCE: TcxTextEdit;
    edValAM: TcxTextEdit;
    cxLabel74: TcxLabel;
    Panel11: TPanel;
    cxLabel75: TcxLabel;
    cxButton9: TcxButton;
    btnAlterarStatusInvent: TcxButton;
    cmbStatusInvent: TcxComboBox;
    cxButton11: TcxButton;
    cxDBLabel4: TcxDBLabel;
    rel_path: TcxTextEdit;
    cxLabel76: TcxLabel;
    lblPaciente: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnGravarCfgClick(Sender: TObject);
    procedure TabCadEmpresaShow(Sender: TObject);
    procedure TabInventInicialShow(Sender: TObject);
    procedure TbvInventInicialCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TabInventAtualShow(Sender: TObject);
    procedure TbvInventAtualCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cmb2Exit(Sender: TObject);
    procedure cmb2Click(Sender: TObject);
    procedure edPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Tbv4eanHeaderClick(Sender: TObject);
    procedure cxDBNavigator2ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure TabInventShow(Sender: TObject);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure PgInventPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure PgMainPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure cmbInventClasseClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure DtEmEnter(Sender: TObject);
    procedure TabEntradaShow(Sender: TObject);
    procedure btnRegistrarEntrClick(Sender: TObject);
    procedure edPesqEntrPropertiesChange(Sender: TObject);
    procedure btnExcluirEntrClick(Sender: TObject);
    procedure TbvEntradaCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnInventValidarClick(Sender: TObject);
    procedure btnInventVoltarClick(Sender: TObject);
    procedure btnInventConcluirClick(Sender: TObject);
    procedure btnInventEnviarClick(Sender: TObject);
    procedure btnInventExcluirClick(Sender: TObject);
    procedure btnDigitRecClick(Sender: TObject);
    procedure btnVisRecClick(Sender: TObject);
    procedure cmbTipoReceitaClick(Sender: TObject);
    procedure cmbUFProfEnter(Sender: TObject);
    procedure btnMedicClick(Sender: TObject);
    procedure edNmroProfEnter(Sender: TObject);
    procedure btnComprPacClick(Sender: TObject);
    procedure TabSaiMedShow(Sender: TObject);
    procedure tbvMedDispSaiCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edMedSaiQtdPropertiesEditValueChanged(Sender: TObject);
    procedure edPesqSaiMedPropertiesChange(Sender: TObject);
    procedure btnMedSaiRemoverClick(Sender: TObject);
    procedure tbvSaiMedCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnMedSaiInserirClick(Sender: TObject);
    procedure cbDescrClick(Sender: TObject);
    procedure btnMedSaiConcluirClick(Sender: TObject);
    procedure TabSaidaShow(Sender: TObject);
    procedure GpPesqClick(Sender: TObject);
    procedure btnPesqMoviClick(Sender: TObject);
    procedure edPesqMoviPropertiesChange(Sender: TObject);
    procedure tbvPesqSaiCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edPesqMoviEnter(Sender: TObject);
    procedure dt1Enter(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
    procedure tbvPesqEntrCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnPesqDelEntrClick(Sender: TObject);
    procedure btnPesqDelSaiClick(Sender: TObject);
    procedure tbvPesqPerdaCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btpPesqDelPerdaClick(Sender: TObject);
    procedure TabGerarShow(Sender: TObject);
    procedure edIntervClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure btnLogClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure tbvPesqPerdaCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tbvPesqSaiCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tbvPesqEntrCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TabCloseShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure edPesqPerMedPropertiesChange(Sender: TObject);
    procedure cbDescr2Click(Sender: TObject);
    procedure btnMedPerInserirClick(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure edNomeCompradorPropertiesChange(Sender: TObject);
    procedure TabPerdaShow(Sender: TObject);
    procedure TabPerdaHide(Sender: TObject);
    procedure btnMedPerdaRemoverClick(Sender: TObject);
    procedure edMedPerQtdPropertiesEditValueChanged(Sender: TObject);
    procedure tbvMedPerdaCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnMedPerConcluirClick(Sender: TObject);
    procedure tbvPerdaCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton9Click(Sender: TObject);
    procedure cmbStatusInventClick(Sender: TObject);
    procedure btnAlterarStatusInventClick(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
  private
    procedure Conectar;
    function GerarXML_Invent(data:TDate): boolean;
    function XMLGerado(data: Tdate): boolean;
    procedure Add_Entrada_Medicamentos(node: IXMLNode);
    procedure Add_Perda_Medicamentos(node: IXMLNode);
    procedure Add_Saida_Medicamentos(node: IXMLNode);
    function FindNode(nome: string; Root: IXMLNode): IXMLNode;
    procedure GerarXML;
    function Verifica_xml(arq: string = ''): boolean;
    procedure Ajustar;
    function GerarXML_Invent_Atual(data: TDate): boolean;
  public
    procedure CfgBtnInventInicial;
  end;

var
  frmMain: TfrmMain;

  coluna : TcxGridDBColumn;

  dias: Integer;
  Data: TDate;

implementation

{$R *.dfm}

uses uFuncoes, uMD5Print, uShadow, uScanner, uPesqCompr, uSNGPCConsts,
  uAutocomConsts, uSNGPC_ws, uSkinDLL, dmSkins, udm_ini, uDM;

function TfrmMain.GerarXML_Invent_Atual(data:TDate): boolean;
var
   sxml, szip: string;
   NCorpo, NMedicamento, NData, NItem: IXMLNode;
   XMLDoc: TXMLDocument;
begin
   // Cria o documento
   XMLDoc := TXMLDocument.Create(Application);
   result := False;

   with XMLDoc do
   begin
      Active := True;
      Version := '1.0';
      Encoding := 'ISO-8859-1';
      AddChild('mensagemSNGPCInventario','urn:sngpc-schema');

      with DocumentElement do
      begin
         AddChild('cabecalho');
         ChildNodes.Last.AddChild('cnpjEmissor').NodeValue     := Number(dm.QEmpresacnpj.AsString);
         ChildNodes.Last.AddChild ('cpfTransmissor').NodeValue := Number(dm.QEmpresacpf_resp.AsString);
         ChildNodes.Last.AddChild('data').NodeValue            := FormatDateTime('yyyy-mm-dd', data);
      end;

      NCorpo := DocumentElement.AddChild('corpo');

   // *************************** MEDICAMENTO *********************************

      NMedicamento := NCorpo.AddChild('medicamentos');

      DM.QInventAtual.DisableControls;
      DM.QInventAtual.First;

      while not DM.QInventAtual.Eof do
      begin
         NData := NMedicamento.AddChild('entradaMedicamentos');
         NItem := NData.AddChild('medicamentoEntrada');
         //versao 2.0. classeTerapeutica - 1 Antimicrobiano; 2 Sujeito a controle especial
         NItem.ChildNodes['classeTerapeutica'].NodeValue     := DM.QInventAtualclasse_terap.AsString;
         NItem.ChildNodes['registroMSMedicamento'].NodeValue := DM.QInventAtualregistro_ms.AsString;
         NItem.ChildNodes['numeroLoteMedicamento'].NodeValue := DM.QInventAtuallote.AsString;
         NItem.ChildNodes['quantidadeMedicamento'].NodeValue := DM.QInventAtualqtd.AsString;
         //versao 2.0 unidadeMedidaMedicamento - 1 caixa, 2 frascos
         if DM.QInventAtualunid.AsString = 'CX' then
            NItem.ChildNodes['unidadeMedidaMedicamento'].NodeValue := '1'
         else
            NItem.ChildNodes['unidadeMedidaMedicamento'].NodeValue := '2';

         DM.QInventAtual.Next;
      end;

      DM.QInventAtual.EnableControls;
      NMedicamento := NCorpo.AddChild('insumos');
      sxml := FormatDateTime('"INVENTARIO_INI"_dd_mm_yy', data) + '.xml';
      SaveToFile(Aqui(SNGPC_PATH, sxml));
   end;

   XMLDoc.Active := False;
   XMLDoc.Free;

   szip := FormatDateTime('"INVENTARIO_INI"_dd_mm_yy', data) + '.zip';

   try
      DM.zip.Clear;
      DM.zip.ZipFileName := Aqui(SNGPC_PATH, szip);
      DM.zip.Dll_Load    := true;
      DM.zip.FSpecArgs.Add(Aqui(SNGPC_PATH, sxml));
      DM.zip.Add;
      DM.zip.Dll_Load    := False;
      DeleteFile(Aqui(SNGPC_PATH, sxml));
      result := FileExists(Aqui(SNGPC_PATH, szip));
   except
       on E: exception do
         ShowMessage(E.Message);
   end;

   frm_ws             := Tfrm_ws.Create(Self);
   frm_ws.st_arq_path := Aqui(SNGPC_PATH, szip);
   frm_ws.ShowModal;
   FreeAndNil(frm_ws);
end;

function TfrmMain.GerarXML_Invent(data:TDate): boolean;
var
   sxml, szip: string;
   NCorpo, NMedicamento, NData, NItem: IXMLNode;
   XMLDoc: TXMLDocument;
begin
   // Cria o documento
   XMLDoc := TXMLDocument.Create(Application);
   result := False;

   with XMLDoc do
   begin
      Active := True;
      Version := '1.0';
      Encoding := 'ISO-8859-1';
      AddChild('mensagemSNGPCInventario','urn:sngpc-schema');

      with DocumentElement do
      begin
         AddChild('cabecalho');
         ChildNodes.Last.AddChild('cnpjEmissor').NodeValue     := Number(dm.QEmpresacnpj.AsString);
         ChildNodes.Last.AddChild ('cpfTransmissor').NodeValue := Number(dm.QEmpresacpf_resp.AsString);
         ChildNodes.Last.AddChild('data').NodeValue            := FormatDateTime('yyyy-mm-dd', data);
      end;

      NCorpo := DocumentElement.AddChild('corpo');

   // *************************** MEDICAMENTO *********************************

      NMedicamento := NCorpo.AddChild('medicamentos');


      DM.Pesquisar(DM.QEntrada, SNGPC_SQL1 );

      while not DM.QEntrada.Eof do
      begin
         NData := NMedicamento.AddChild('entradaMedicamentos');
         NItem := NData.AddChild('medicamentoEntrada');
         //versao 2.0. classeTerapeutica - 1 Antimicrobiano; 2 Sujeito a controle especial
         NItem.ChildNodes['classeTerapeutica'].NodeValue     := DM.QEntradaclasse_terap.AsString;
         NItem.ChildNodes['registroMSMedicamento'].NodeValue := DM.QEntradaregistro_ms.AsString;
         NItem.ChildNodes['numeroLoteMedicamento'].NodeValue := DM.QEntradalote.AsString;
         NItem.ChildNodes['quantidadeMedicamento'].NodeValue := DM.QEntradasngpc.AsString;
         //versao 2.0 unidadeMedidaMedicamento - 1 caixa, 2 frascos
         NItem.ChildNodes['unidadeMedidaMedicamento'].NodeValue := DM.QEntradaunid.AsString;
         DM.QEntrada.Next;
      end;

      NMedicamento := NCorpo.AddChild('insumos');
      sxml := FormatDateTime('"INVENTARIO_INI"_dd_mm_yy', data) + '.xml';
      SaveToFile(Aqui(SNGPC_PATH, sxml));
   end;

   XMLDoc.Active := False;
   XMLDoc.Free;

   szip := FormatDateTime('"INVENTARIO"_dd_mm_yy', data) + '.zip';
   try
      DM.zip.Clear;
      DM.zip.ZipFileName := Aqui(SNGPC_PATH, szip);
      DM.zip.Dll_Load    := true;
      DM.zip.FSpecArgs.Add(Aqui(SNGPC_PATH, sxml));
      DM.zip.Add;
      DM.zip.Dll_Load    := False;
      DeleteFile(Aqui(SNGPC_PATH, sxml));
      result := FileExists(Aqui(SNGPC_PATH, szip));
   except
       on E: exception do
         ShowMessage(E.Message);
   end;
end;

procedure TfrmMain.GpPesqClick(Sender: TObject);
begin
   DM.QPesqEntrada.Close;
   DM.QPesqSai.Close;
   DM.QPesqPerda.Close;
   TabPesqEntr.Caption   := TabPesqEntr.Hint;
   TabPesqSai.Caption    := TabPesqSai.Hint;
   TabPesqPerdas.Caption := TabPesqPerdas.Hint;

   if GpPesq.ItemIndex = 0 then
   begin
      pgPesq.ActivePageIndex := 1;
      if PgMain.ActivePage = TabPesq then
         dt1.SetFocus;
   end
   else
   begin
      pgPesq.ActivePageIndex := 0;

      if PgMain.ActivePage = TabPesq then
         edPesqMovi.SetFocus;

      lblPesqMovi.Caption := GpPesq.Properties.Items[GpPesq.ItemIndex].Caption;
   end;
end;

procedure TfrmMain.btnAlterarStatusInventClick(Sender: TObject);
begin
   if cmbStatusInvent.Text = C_ST_VAZIO then
      raise Exception.Create(SNGPC_C77);

   panel11.Hide;

   {
      SNGPC_SQL21 = 'update sngpc_invent set validado="V"; replace into sngpc_invent_bkp(select * from sngpc_invent);';
      SNGPC_SQL22 = 'update sngpc_invent set validado="N",data=null; replace into sngpc_invent_bkp(select * from sngpc_invent);';
     //// SNGPC_SQL23 = 'update sngpc_invent set validado="C",data=null; replace into sngpc_invent_bkp(select * from sngpc_invent);';
      SNGPC_SQL24 = 'update sngpc_invent set validado="T"; replace into sngpc_invent_bkp(select * from sngpc_invent);';
   }

   if (MessageBox(0, SNGPC_C43, C_237, MB_ICONWARNING or MB_YESNO) = idNo) then
      exit;

   if cmbStatusInvent.Text[1] = 'E' then//enviado
   begin
       DM.ExecSQL(SNGPC_SQL24);
   end
   else
   if cmbStatusInvent.Text[1] = 'C' then //concluido
      dm.ExecSQL(SNGPC_SQL23)
   else
   if cmbStatusInvent.Text[1] = 'A' then //aceito
   begin
      if (MessageBox(0, SNGPC_C42, C_237, MB_ICONWARNING or MB_YESNO) = idNo) then
         exit;

      dm.ExecSQL(SNGPC_SQL21);
   end
   else
   if cmbStatusInvent.Text[1] = 'P' then  //em processamento
      DM.ExecSQL(SNGPC_SQL17 + SNGPC_SQL22);

   DM.QInventInicial.Refresh;
   CfgBtnInventInicial;
end;

procedure TfrmMain.btnComprPacClick(Sender: TObject);
begin
   edNomePac.Text := edNomeComprador.Text;
   edIdadePAc.SetFocus;
end;

procedure TfrmMain.btnDigitRecClick(Sender: TObject);
var
   s, spath: string;
begin
   if dtSaidaReceita.Date <= 0 then
      raise Exception.Create(SNGPC_C1);

   if dtPrescrReceita.Date <= 0 then
      raise Exception.Create(SNGPC_C2);

   if Number(edNmroProf.Text) = C_ST_VAZIO then
      raise Exception.Create(SNGPC_C3);

   if Number(edNmroReceita.Text) = C_ST_VAZIO then
      raise Exception.Create(SNGPC_C4);

   if Trim(edNomePrescr.Text) = C_ST_VAZIO then
      raise Exception.Create(SNGPC_C5);

   if FileExists(lblArqReceita.Caption) then
   begin
      if (MessageBox(0, SNGPC_C6, C_237, MB_ICONWARNING or MB_YESNO) = idNo) then
         exit;

      s := lblArqReceita.Caption;
   end;

   if s = EmptyStr then
   begin
      s := MD5_Str(edNmroProf.Text +
                   edNmroReceita.Text +
                   edNomePrescr.Text +
                   dtPrescrReceita.Text +
                   dtSaidaReceita.Text) + '.jpg';
   end;

   spath := Aqui(SNGPC_PATHREC + FormatDateTime('yyyymm', dtSaidaReceita.Date), s);

   frmScanner := TfrmScanner.Create(self);
   frmScanner.sPath := spath;
   frmScanner.ShowModal;
   FreeAndNil(frmScanner);

   if not FileExists(spath) then
      ShowMessage(SNGPC_C7)
   else
      lblArqReceita.Caption := spath;
end;

procedure TfrmMain.btnEnviarClick(Sender: TObject);
var
   s: string;
begin
   if DM.QGerados.IsEmpty then
      exit;

   DM.QGerados.First;
   frm_ws             := Tfrm_ws.Create(Self);
   s                  := FormatDateTime('yy-mm-dd', DM.QGeradosdt_fim.AsDateTime);
   frm_ws.st_arq_path :=  Aqui(SNGPC_PATH, s + '.zip');
   frm_ws.ShowModal;
   FreeAndNil(frm_ws);
end;

procedure TfrmMain.btnExcluirEntrClick(Sender: TObject);
var
   s: string;
begin
   btnExcluirEntr.Enabled := False;

   if (MessageBox(0, SNGPC_C8, C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;

   s := BuscaTroca(SNGPC_SQL5, C_SOH, Number(edNF.Text));
   s := BuscaTroca(s, C_STX, Number(edCNPJEntr.Text));
   s := BuscaTroca(s, C_ETX, DM.QEntradaestoque.AsString);
   s := BuscaTroca(s, C_EOT, DM.QEntradalote.AsString);
   s := BuscaTroca(s, C_ENQ, Number(edNF.Text));
   s := BuscaTroca(s, C_ACK, Number(edCNPJEntr.Text));
   s := BuscaTroca(s, C_BEL, DM.QEntradaestoque.AsString);
   s := BuscaTroca(s, C_BS,  DM.QEntradalote.AsString);

   DM.ExecSql(s);

   DM.QEntrada.Refresh;
end;

procedure TfrmMain.btnGerarClick(Sender: TObject);
var
   s: string;
begin
   if DtIni.Date <> Data + 1 then
      raise Exception.Create(SNGPC_C9);

   if (DtFim.Date < DtIni.Date) or (DtFim.Date - DtIni.Date > 7) then
      raise Exception.Create(SNGPC_C10);

   if DtFim.Date >= Date then
      raise Exception.Create(SNGPC_C11);

   if not DM.QEmpresa.Active then
      DM.QEmpresa.Open;

   DM.QGerados.First;

   if (DM.QGeradosvalidado.AsString = 'G') then
      raise Exception.Create(SNGPC_C12);

   s := BuscaTroca(SNGPC_SQL2, C_SOH, data_My(dtini.Date));
   DM.Pesquisar(DM.Q1, s );

   if DM.Q1.Fields[0].AsInteger > 0 then
   begin
      Showmessage(SNGPC_C13);
      DtIni.SetFocus;
      exit;
   end;

   s := BuscaTroca(SNGPC_SQL2, C_SOH, data_My(DtFim.Date));
   DM.Pesquisar(DM.Q1, s );

   if DM.Q1.Fields[0].AsInteger > 0 then
   begin
      Showmessage(SNGPC_C14);
      DtIni.SetFocus;
      exit;
   end;

   if not DM.QGerados.IsEmpty then
   if DM.QGerados.Locate('dt_ini;dt_fim',VarArrayOf([DtIni.Date, DtFim.Date]),[]) then
      raise Exception.Create(SNGPC_C15);

   s := BuscaTroca(SNGPC_SQL3, C_SOH, data_My(DtIni.Date));
   s := BuscaTroca(s, C_STX, data_My(DtFim.Date));
   DM.Pesquisar(DM.Q1, s );

   if Not DM.Q1.IsEmpty then
   begin
      if not (MessageBox(0, SNGPC_C16, C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
         exit;

      s := BuscaTroca(SNGPC_SQL4, C_SOH, data_My(DtIni.Date));
      s := BuscaTroca(s, C_STX, data_My(DtFim.Date));
      DM.ExecSQL(s);
   end;

   if (DM.QGeradosvalidado.AsString = 'E') then
   if (MessageBox(0, SNGPC_C17, C_237, MB_ICONWARNING or MB_YESNO) = idYes) then
   begin
      DM.QGerados.Edit;
      DM.QGeradosvalidado.Value := 'V';
      DM.QGerados.Post;
   end
   else
   begin
      ShowMessage(SNGPC_C18);
      exit;
   end;

   bar2.Show;

   GerarXML;

   //verifica o conteudo do xml e compara com o BD onde o campo arq_xml_xxx = '-'
   if Verifica_xml(Aqui(SNGPC_PATH, FormatDateTime('yy-mm-dd', DtFim.date) + '.xml')) then
   begin
      DM.QGerados.Open;  //grava a geração no BD
      DM.QGerados.Insert;
      DM.QGeradosdt_ini.Value := DtIni.Date;
      DM.QGeradosdt_fim.Value := DtFim.Date;
      DM.QGeradosvalidado.Value := 'G';
      DM.QGerados.Post;
      bar2.Hide;
      s := (C_03);
   end
   else
   begin
      bar2.Hide;
      s := (SNGPC_C19);
   end;

   DM.zip.Clear;
   DM.zip.ZipFileName := Aqui(SNGPC_PATH, FormatDateTime('yy-mm-dd', DtFim.date) + '.zip');
   DM.zip.Dll_Load    := true;
   DM.zip.FSpecArgs.Add(Aqui(SNGPC_PATH, FormatDateTime('yy-mm-dd', DtFim.date) + '.xml'));
   DM.zip.Add;

   DM.QGerados.Edit;
   DM.QGeradosxml.AsString := DM.zip.ZipFileName;
   DM.QGerados.Post;

   DM.zip.Dll_Load    := False;
   DeleteFile(Aqui(SNGPC_PATH, FormatDateTime('yy-mm-dd', DtFim.date) + '.xml'));

   ShowMessage(s);
   DM.Q1.close;
   DtIni.Clear;
   DtFim.Clear;
   bar2.Hide;
   Ajustar;
end;

procedure TfrmMain.btnGravarCfgClick(Sender: TObject);
begin
   ini.SaveFormPlacement;
   ShowMessage('Gravado.');
end;

procedure TfrmMain.btnRegistrarEntrClick(Sender: TObject);
var
   i, j: Integer;
   s, st_sql: string;
begin
   i := 0;

   if Number(edNF.Text) = '' then
      raise Exception.Create(SNGPC_C20);

   if (DtEm.Date <= 0)or(DtEm.Date > DtEnt.Date) then
      raise Exception.Create(c_238);

   if (DtEnt.Date <= 0)or(DtEm.Date > DtEnt.Date) then
      raise Exception.Create(C_239);

   DM.Programar_Validador(1);//cnpj

   DM.Validador.Documento := AnsiString(Number(edCNPJEntr.Text));

   if DM.Validador.Validar then
      edCNPJEntr.Text := String(DM.Validador.Formatar)
   else
     raise Exception.Create(DM.Validador.MsgErro);

   if (dtVencimEntr.Date = 0)or (dtVencimEntr.Date < DtEnt.Date) then
      raise Exception.Create(C_240)
   else
   if edQtdEntr.Value <= 0 then
      raise Exception.Create(C_241)
   else
   if (Trim(edLoteEntr.Text) = EmptyStr) then
      raise Exception.Create(C_242)
   else
   if (length(number(edRegMSEntr.Text))< 13) then
      raise Exception.Create(SNGPC_C21)
   else
   if (cmbClasseEntr.ItemIndex < 0) then
      raise Exception.Create(SNGPC_C22)
   else
   if (cmbUnidEntr.ItemIndex < 0) then
      raise Exception.Create(C_243)
   else
   if (cmbClasseEntr.ItemIndex = 0)and (cmbPortariaEntr.Text <> 'AM') then
      raise Exception.Create(SNGPC_C23)
   else
   if (cmbClasseEntr.ItemIndex = 1)and (pos(cmbPortariaEntr.Text, dcb)=0) then
      raise Exception.Create(SNGPC_C24);

   DM.QEntrada.Open;
   DM.QEntrada.DisableControls;
   DM.QEntrada.First;

   while not DM.QEntrada.Eof do
   begin
       if (DM.QEntradalote.AsString = Trim(edLoteEntr.Text)) and
          (DM.QEntradaregistro_ms.AsString = Trim(edRegMSEntr.Text)) then
       begin
          ShowMessage('Não é permitido dois medicamentos diferentes com o mesmo lote.');
          i := 1;
          break;
       end;
      DM.QEntrada.Next;
   end;

   DM.QEntrada.EnableControls;

   if i= 1 then
      exit;

   s := BuscaTroca(SNGPC_SQL6, C_SOH, data_My(DtEnt.Date));
   DM.Pesquisar(DM.Q1, s);

   if (dm.q1.fields[0].AsInteger > 0) then
      raise Exception.Create(SNGPC_C25);


   st_sql := BuscaTroca(SNGPC_SQL7, C_SOH, Number(edNF.Text));
   st_sql := BuscaTroca(st_sql, C_STX, Trim(edLoteEntr.Text));
   st_sql := BuscaTroca(st_sql, C_ETX, Number(dm.QEmpresacnpj.AsString));
   st_sql := BuscaTroca(st_sql, C_EOT, Number(edCNPJEntr.Text));
   st_sql := BuscaTroca(st_sql, C_ENQ, Number(edRegMSEntr.Text));

   DM.Pesquisar(DM.Q1, st_sql);

   s := edNF.Hint;

   if s = '' then
      s := '0';

   if not DM.QEmpresa.Active then
      DM.QEmpresa.Open;

   if DM.Q1.IsEmpty then
   begin
      j := Trunc(edQtdEntr.Value);

      for i := 1 to j do
      begin
         st_sql := BuscaTroca(SNGPC_SQL8, C_SOH, DM.QProdutoid.AsString);
         st_sql := BuscaTroca(st_sql, C_STX, DM.QProdutoid.AsString);
         st_sql := BuscaTroca(st_sql, C_ETX, data_My(dtVencimEntr.Date));
         st_sql := BuscaTroca(st_sql, C_EOT, data_My(DtEm.Date));
         st_sql := BuscaTroca(st_sql, C_ENQ, data_My(DtEnt.Date));
         st_sql := BuscaTroca(st_sql, C_ACK, Number(edNF.Text));
         st_sql := BuscaTroca(st_sql, C_BEL, edLoteEntr.Text);
         st_sql := BuscaTroca(st_sql, C_BS, Number(edCNPJEntr.Text));
         st_sql := BuscaTroca(st_sql, C_HT, Number(dm.QEmpresacnpj.AsString));
         st_sql := BuscaTroca(st_sql, C_VT, Number(edRegMSEntr.Text));
         st_sql := BuscaTroca(st_sql, C_FF, s);
         st_sql := BuscaTroca(st_sql, C_CR, IntToStr(cmbClasseEntr.ItemIndex + 1));
         st_sql := BuscaTroca(st_sql, C_LF, IntToStr(cmbUnidEntr.ItemIndex + 1));

         dm.ExecSQL(st_sql);
      end;

      if (Length(Number(DM.QProdutomedicam_PORTARIA.AsString)) < 2)or(pos('-',DM.QProdutomedicam_PORTARIA.AsString) > 0) then
      begin
         st_sql := BuscaTroca(SNGPC_SQL9, C_SOH, cmbPortariaEntr.Text);
         st_sql := BuscaTroca(st_sql, C_STX, DM.QProdutoid.AsString);
         DM.ExecSQL(st_sql);
      end;

      if Length(DM.QProdutomedicam_registroms.Value) < 13 then
      begin
         st_sql := BuscaTroca(SNGPC_SQL10, C_SOH, edRegMSEntr.Text);
         st_sql := BuscaTroca(st_sql, C_STX, DM.QProdutoid.AsString);
         DM.ExecSQL(st_sql);
      end;

      //verificação da entrada

      st_sql := BuscaTroca(SNGPC_SQL11, C_SOH, DM.QProdutoid.AsString);
      st_sql := BuscaTroca(st_sql, C_STX, data_My(dtVencimEntr.Date));
      st_sql := BuscaTroca(st_sql, C_ETX, data_My(DtEm.Date));
      st_sql := BuscaTroca(st_sql, C_EOT, data_My(DtEnt.Date));
      st_sql := BuscaTroca(st_sql, C_ENQ, Number(edNF.Text));
      st_sql := BuscaTroca(st_sql, C_ACK, Trim(edLoteEntr.Text));
      st_sql := BuscaTroca(st_sql, C_BEL, Number(edCNPJEntr.Text));
      st_sql := BuscaTroca(st_sql, C_BS,  Number(DM.QEmpresacnpj.asstring));
      st_sql := BuscaTroca(st_sql, C_HT,  Number(edRegMSEntr.Text));
      st_sql := BuscaTroca(st_sql, C_VT, s);

      dm.Pesquisar(DM.Q1, 'select count(*) from ' + st_sql);

      if DM.q1.fields[0].asinteger <> j then
      begin
         dm.ExecSQL('delete from' + st_sql);
         ShowMessage('Houve um erro no lançamento. Repita a operação.');
         exit;
      end;
   end
   else
      ShowMessage(SNGPC_C26);

   st_sql := BuscaTroca(SNGPC_SQL12, C_SOH, edNF.Text);
   st_sql := BuscaTroca(st_sql, C_STX, Number(edCNPJEntr.Text));
   DM.Pesquisar(DM.QEntrada, st_sql);

   DM.QEntrada.Last;
   btnExcluirEntr.Enabled := False;
   edQtdEntr.Clear;
   edLoteEntr.Clear;
   edRegMSEntr.Clear;
   cmbPortariaEntr.ItemIndex := -1;
   edPesqEntr.Clear;
   dtVencimEntr.Clear;
   edPesqEntr.SetFocus;
   DM.QProduto.Close;
   edPesqEntr.SetFocus;
end;

procedure TfrmMain.btnVisRecClick(Sender: TObject);
var
   s: string;
begin
   s := lblArqReceita.Caption;

   if not FileExists(s) then
      ShowMessage(SNGPC_C27)
   else
   begin
      ShellExecute(0, nil, PWideChar(s), nil, nil, 1);
   end;
end;

procedure TfrmMain.btpPesqDelPerdaClick(Sender: TObject);
VAR
   st_sql: STRING;
begin
   if XMLGerado(DM.QPesqPerdadt_perda.Value) then
      exit;

   if (MessageBox(0, SNGPC_C28, C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;

   st_sql := BuscaTroca(SNGPC_SQL13, C_SOH, DM.QPesqPerdaestoque.AsString);
   st_sql := BuscaTroca(st_sql, C_STX, DM.QPesqPerdaregistro_ms.AsString);
   st_sql := BuscaTroca(st_sql, C_ETX, DM.QPesqPerdalote.AsString);
   st_sql := BuscaTroca(st_sql, C_EOT, data_My(DM.QPesqPerdadt_perda.value));
   st_sql := BuscaTroca(st_sql, C_ENQ, DM.QPesqPerdaquant.AsString);

   DM.ExecSql(st_sql);

   DM.QPesqPerda.Refresh;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
//gerarel.exe <-a -v -p -e> <arquivo ini de conexao> <SISTEMA> <"RELATORIO XYZ"> <"id=abc" "valor=123" "resto=12.4" .. ate 20>
   DM.Abrir_Central_Relat('-e', Aqui(C_INI_FILE, 'autocom.ini'), 'SNGPC');
end;

procedure TfrmMain.Button9Click(Sender: TObject);
begin
//gerarel.exe <-a -v -p -e> <arquivo ini de conexao> <SISTEMA> <"RELATORIO XYZ"> <"id=abc" "valor=123" "resto=12.4" .. ate 20>
  DM.Abrir_Central_Relat('-v', Aqui(C_INI_FILE, 'autocom.ini'), 'SNGPC', TcxButton(sender).Hint);
end;

procedure TfrmMain.cbDescr2Click(Sender: TObject);
begin
   edPesqPerMed.SetFocus;
end;

procedure TfrmMain.cbDescrClick(Sender: TObject);
begin
   edPesqSaiMed.SetFocus;
end;

procedure TfrmMain.CfgBtnInventInicial;
begin
{
N - em aberto para alterações
C - concluido
T - transmitido
V - validado
}
//N ou vazio
   btnInventExcluir.Enabled  := not DM.QInventInicial.IsEmpty;
   btnInventConcluir.Enabled := not DM.QInventInicial.IsEmpty;
   btnInventEnviar.Enabled   := False;
   btnInventValidar.Enabled  := False;
   btnInventVoltar.Enabled   := False;

   if DM.QInventInicial.IsEmpty then
      lblInventStatus.Caption := SNGPC_C29
   else
      lblInventStatus.Caption := SNGPC_C30;

   if DM.QInventInicial.State in[dsInsert, dsEdit] then
   begin
      btnInventExcluir.Enabled  := False;
      btnInventConcluir.Enabled := False;
      btnInventEnviar.Enabled   := False;
      btnInventValidar.Enabled  := False;
      btnInventVoltar.Enabled   := False;
   end
   else
   if DM.QInventInicialvalidado.AsString = 'C' then
   begin
    //  btnInventExcluir.Enabled  := not DM.QInventInicial.IsEmpty;
      btnInventConcluir.Enabled := False;
      btnInventEnviar.Enabled   := True;
      //btnInventValidar.Enabled  := False;
      btnInventVoltar.Enabled   := True;
      lblInventStatus.Caption   := SNGPC_C31;
   end
   else
   if DM.QInventInicialvalidado.AsString = 'T' then
   begin
      btnInventConcluir.Enabled := False;
      btnInventValidar.Enabled  := True;
      btnInventVoltar.Enabled   := True;
      lblInventStatus.Caption   := SNGPC_C32;
   end
   else
   if DM.QInventInicialvalidado.AsString = 'V' then
   begin
      btnInventExcluir.Enabled  := True;
      btnInventConcluir.Enabled := False;
      lblInventStatus.Caption := SNGPC_C33;
   end;
end;

procedure TfrmMain.cmb2Click(Sender: TObject);
begin
   frmshadow.AlphaBlendValue := StrToInt(Trim(cmb2.Text));
end;

procedure TfrmMain.cmb2Exit(Sender: TObject);
begin
   if StrToIntDef(cmb2.Text, 300) > 255 then
      cmb2.Text := '255';
end;

procedure TfrmMain.cmbInventClasseClick(Sender: TObject);
var
   b: boolean;
begin
   if cmbInventClasse.ItemIndex = 0 then
      cmbInventPortaria.ItemIndex := 16
   else
   if cmbInventPortaria.ItemIndex = 16 then
      cmbInventPortaria.ItemIndex := -1;

   b := cmbConselho.ItemIndex <> 1;

   edNomePac.Enabled   := b;
   edIdadePAc.Enabled  := b;
   cmbIdadePAc.Enabled := b;
   cmbSexoPac.Enabled  := b;
   edCIDPac.Enabled    := b;
   lblPaciente.Visible := not b;
end;

procedure TfrmMain.cmbStatusInventClick(Sender: TObject);
begin
   btnAlterarStatusInvent.Enabled := True;
end;

procedure TfrmMain.cmbTipoReceitaClick(Sender: TObject);
VAR
   st_sql: STRING;
begin
   dias := StrToInt(Number(edValMCE.Text));//validade receita controlados

   if cmbTipoReceita.ItemIndex = 4 then
      dias := StrToInt(Number(edValAM.Text));//validade receita antimicrobianos

   if cmbTipoReceita.ItemIndex in[0,4] then //auto numeração
   begin
      st_sql := BuscaTroca(SNGPC_SQL14, C_SOH, IntToStr(cmbTipoReceita.ItemIndex + 1));

      dm.Pesquisar(DM.Q1, st_sql);

      if dm.q1.fields[0].AsInteger = 0 then
         edNmroReceita.Text := '000001'
      else
         edNmroReceita.Text := Format('%.6d', [dm.q1.fields[0].AsInteger]);
   end
   else
   begin
      edNmroReceita.Text := C_ST_VAZIO;
   end;
end;

procedure TfrmMain.cmbUFProfEnter(Sender: TObject);
VAR
   st_sql: STRING;
begin
   st_sql := BuscaTroca(SNGPC_SQL15, C_SOH, edNmroProf.Text);

   dm.Pesquisar(DM.Q1, st_sql);

   if not dm.q1.IsEmpty then
   begin
      edNomePrescr.Text := DM.q1.fields[0].AsString;
      cmbConselho.Text  := DM.q1.fields[1].AsString;
      cmbUFProf.Text    := DM.q1.fields[2].AsString;
      edNomeComprador.SetFocus;
   end;
end;

procedure TfrmMain.Conectar;
begin
   try

      DM.DB1.Params.Clear;

      DM.DB1.Params.Add('Server=' + edHost.Text);
      DM.DB1.Params.Add('Database=' + edDB.Text);
      DM.DB1.Params.Add('User_Name=' + edUser.Text);
      DM.DB1.Params.Add('Password=' + edSenha.Text);
      DM.DB1.Params.Add('ReadTimeout=1');
      DM.DB1.Params.Add('WriteTimeout=1');
      DM.DB1.Params.Add('DriverID=MySQL');

      DM.DB1.Connected := true;
      DM.QEmpresa.Open;
      Bar1.Panels[3].Text := DM.QEmpresanome_fantasia.AsString;
      bar1.Panels[1].Text := edDB.Text;
      bar1.Panels[2].Text := edHost.Text;
      DM.cdSaiMed.Open;
   except
      On E:Exception do
      begin
         ShowMessage('Erro de conexão: ' + E.Message);
         PgMain.ActivePage := TabCfg;
      end;
   end;
   if not DM.DB1.Connected then
      ShowMessage('Não foi possível conectar ao servidor.');
end;

procedure TfrmMain.btnMedPerInserirClick(Sender: TObject);
begin
   DM.cdPerda.Append;
   DM.cdPerdaid.Value      := DM.QMedDispid.Value;
   DM.cdPerdanome.AsString := DM.QMedDispnome.AsString;
   DM.cdPerdaean.AsString  := DM.QMedDispean.AsString;
   DM.cdPerdalote.AsString := DM.QMedDisplote.AsString;
   DM.cdPerdaquant.Value   := Trunc(edMedPerQtd.Value);
   DM.cdPerda.Post;

   edPesqPerMed.Clear;
   edMedPerQtd.Clear;
   lblDispon2.Clear;

   btnMedPerInserir.Enabled  := False;
   btnMedPerConcluir.Enabled := True;
   edMedPerQtd.Enabled       := False;
   edPesqPerMed.SetFocus;
end;

procedure TfrmMain.cxButton10Click(Sender: TObject);
begin
   GerarXML_Invent_Atual(date);
end;

procedure TfrmMain.cxButton11Click(Sender: TObject);
var
   i: integer;
   st_sql: string;
   d: Tdate;
begin
   DM.Pesquisar(DM.QInventInicial, 'select * from sngpc_invent where estoque not in (select estoque from sngpc_movi)');
   DM.Pesquisar(DM.Q1, 'select max(data) from sngpc_invent');
   d := DM.Q1.Fields[0].AsDateTime;
   DM.QInventInicial.DisableControls;

   while not DM.QInventInicial.Eof do
   begin
      for i := 1 to DM.QInventInicialqtd.AsInteger do
      BEGIN
         st_sql := BuscaTroca(SNGPC_SQL8a, C_SOH, DM.QInventInicialproduto.AsString);
         st_sql := BuscaTroca(st_sql, C_STX, data_My(DM.QInventInicialvencimento.AsDateTime));
         st_sql := BuscaTroca(st_sql, C_ETX, data_My(d));
         st_sql := BuscaTroca(st_sql, C_EOT, DM.QInventIniciallote.AsString);
         st_sql := BuscaTroca(st_sql, C_ENQ, Number(DM.QEmpresacnpj.AsString));
         st_sql := BuscaTroca(st_sql, C_ACK, Number(DM.QEmpresacnpj.AsString));
         st_sql := BuscaTroca(st_sql, C_BEL, DM.QInventInicialregistro_ms.AsString);
         st_sql := BuscaTroca(st_sql, C_BS,  DM.QInventInicialunid.AsString);
         st_sql := BuscaTroca(st_sql, C_HT,  DM.QInventInicialclasse_terap.AsString);

         DM.ExecSQL(st_sql);
      END;
      DM.QInventInicial.Next;
   end;
   ShowMessage('OK');
end;

procedure TfrmMain.cxButton2Click(Sender: TObject);
begin
   if Number(edNF.Text) = C_ST_VAZIO then
      raise Exception.Create(C_244);

   if (DtEm.Date <= 0)or(DtEm.Date > DtEnt.Date) then
      raise Exception.Create(C_238);

   if (DtEnt.Date <= 0)or(DtEm.Date > DtEnt.Date) then
      raise Exception.Create(C_239);

   DM.Programar_Validador(1);//cnpj

   DM.Validador.Documento := AnsiString(Number(edCNPJEntr.Text));

   if DM.Validador.Validar then
      edCNPJEntr.Text := String(DM.Validador.Formatar)
   else
     raise Exception.Create(DM.Validador.MsgErro);

   ShowMessage(C_245);
   GpTabMedic.Show;
   edPesqEntr.SetFocus;
end;

procedure TfrmMain.cxButton5Click(Sender: TObject);
begin
   PANEL10.Show;
   cmbstatus.SetFocus;
end;

procedure TfrmMain.cxButton6Click(Sender: TObject);
begin
   panel10.Hide;
end;

procedure TfrmMain.cxButton7Click(Sender: TObject);
begin
   if cmbstatus.Text = C_ST_VAZIO then
      raise Exception.Create(SNGPC_C34);

   DM.QGerados.First;

   if (MessageBox(0, SNGPC_C35, C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;

   DM.QGerados.Edit;
   DM.QGeradosvalidado.AsString := Copy(cmbstatus.Text,1,1);
   DM.QGerados.Post;
   panel10.Hide;
end;

procedure TfrmMain.cxButton8Click(Sender: TObject);
const
     C_Link = 'https://sngpc.anvisa.gov.br/';
begin
   sleep(500);
   ShellExecute(0, nil, PWideChar(C_Link), nil, nil, 1);
end;

procedure TfrmMain.cxButton9Click(Sender: TObject);
begin
   Panel11.Hide;
end;

procedure TfrmMain.btnMedPerConcluirClick(Sender: TObject);
VAR
   st_sql: STRING;
begin
      DM.cdPerda.DisableControls;
      DM.cdPerda.First;

      while not DM.cdPerda.Eof do
      begin
         st_sql := BuscaTroca(SNGPC_SQL16, C_SOH, data_My(DtPerda.Date));
         st_sql := BuscaTroca(st_sql, C_STX, Number(cmbMotivo.Text));
         st_sql := BuscaTroca(st_sql, C_ETX, DM.cdPerdaid.AsString);
         st_sql := BuscaTroca(st_sql, C_EOT, DM.cdPerdalote.AsString);
         st_sql := BuscaTroca(st_sql, C_ENQ, DM.cdPerdaquant.AsString);

         DM.ExecSql(st_sql);

         DM.cdPerda.Next;
      end;

      DM.cdPerda.EnableControls;
      DM.cdPerda.Close;
      DM.cdPerda.Open;
      ShowMessage('Perda computada.');
end;

procedure TfrmMain.btnMedPerdaRemoverClick(Sender: TObject);
begin
   DM.cdPerda.Delete;
   btnMedPerdaRemover.Enabled := False;
   btnMedPerInserir.Enabled   := not DM.cdPerda.IsEmpty;
   btnMedPerConcluir.Enabled  := btnMedPerInserir.Enabled;
   edPesqPerMed.SetFocus;
end;

procedure TfrmMain.btnDelClick(Sender: TObject);
var
   stPath,
   stArq:String;
begin
   btnDel.Enabled := False;
   DM.QGerados.First;

   if DM.QGeradosvalidado.Value = 'V' then
   begin
      ShowMessage(SNGPC_C36);
      exit;
   end;

   if not DM.QGerados.IsEmpty then
   begin
      if (MessageBox(0, C_247, C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      begin
         btnDel.Enabled := True;
         exit;
      end;

      stPath := Aqui(SNGPC_PATH, '');
      stArq  := FormatDateTime('yy-mm-dd', DM.QGeradosdt_fim.Value)+'.zip';

      if FileExists(stPath + stArq) then
         DeleteFiles(stPath, stArq);

      stArq  := FormatDateTime('yy-mm-dd', DM.QGeradosdt_fim.Value)+'.xml.txt';

      if FileExists(stPath + stArq) then
         DeleteFiles(stPath, stArq);

      DM.QGerados.Delete;
      Ajustar;
   end;
end;

procedure TfrmMain.btnInventConcluirClick(Sender: TObject);
var
   s, st_sql:String;
   i: integer;
begin
   if (MessageBox(0, SNGPC_C37, C_237, MB_ICONWARNING or MB_YESNO) = idNo) then
      exit;

   s := datetostr(date);
   s := InputBox(SNGPC_C38, SNGPC_C39, s);

   if (StrToDateDef(s,0) = 0)or (StrToDateDef(s,0) > date) then
      raise Exception.Create(C_236);

   DM.QInventInicial.First;
   DM.QInventInicial.DisableControls;

   DM.ExecSQL(SNGPC_SQL17);

   while not DM.QInventInicial.Eof do
   begin
      for i := 1 to DM.QInventInicialqtd.AsInteger do
      BEGIN
         st_sql := BuscaTroca(SNGPC_SQL8a, C_SOH, DM.QInventInicialproduto.AsString);
         st_sql := BuscaTroca(st_sql, C_STX, data_My(DM.QInventInicialvencimento.AsDateTime));
         st_sql := BuscaTroca(st_sql, C_ETX, data_My(strtodate(s)));
         st_sql := BuscaTroca(st_sql, C_EOT, DM.QInventIniciallote.AsString);
         st_sql := BuscaTroca(st_sql, C_ENQ, Number(DM.QEmpresacnpj.AsString));
         st_sql := BuscaTroca(st_sql, C_ACK, Number(DM.QEmpresacnpj.AsString));
         st_sql := BuscaTroca(st_sql, C_BEL, DM.QInventInicialregistro_ms.AsString);
         st_sql := BuscaTroca(st_sql, C_BS,  DM.QInventInicialunid.AsString);
         st_sql := BuscaTroca(st_sql, C_HT,  DM.QInventInicialclasse_terap.AsString);

         DM.ExecSQL(st_sql);
      END;
      DM.QInventInicial.Next;
   end;

   DM.QInventInicial.First;

   st_sql := BuscaTroca(SNGPC_SQL20, C_SOH, data_My(StrToDate(s)) );

   dm.ExecSQL(st_sql);

   if not GerarXML_Invent(strtodate(s)) then
   begin
      DM.ExecSQL(SNGPC_SQL17);
      DM.ExecSQL(SNGPC_SQL18);
      ShowMessage(SNGPC_C40);
   end;

   DM.QInventInicial.EnableControls;
   DM.QInventInicial.Refresh;
   CfgBtnInventInicial;
end;

procedure TfrmMain.btnInventEnviarClick(Sender: TObject);
var
   szip: string;
begin
   szip := FormatDateTime('"INVENTARIO"_dd_mm_yy', DM.QInventInicialdata.Value) + '.zip';
   frm_ws             := Tfrm_ws.Create(Self);
   frm_ws.st_arq_path := Aqui(SNGPC_PATH, szip);
   frm_ws.ShowModal;
   FreeAndNil(frm_ws);

   DM.QInventInicial.Refresh;
   CfgBtnInventInicial;
end;

procedure TfrmMain.btnInventExcluirClick(Sender: TObject);
var
   s: string;
begin
   if DM.QInventInicialvalidado.Value = 'V' then
      raise Exception.Create('Inventário validado não pode ser excluído.');
   if (MessageBox(0, SNGPC_C41, C_237, MB_ICONWARNING or MB_YESNO) = idNo) then
      exit;

   s := '';

   if InputBox('Senha', 'Informe a senha:', s) = 'suporte198' then
   begin
      DM.Limpar_Tabelas;
      DM.QInventInicial.Refresh;
      DM.QInventAtual.Refresh;
      CfgBtnInventInicial;
      ShowMessage('Inventário excluído.');
   end
   else
   ShowMessage(C_192);
end;

procedure TfrmMain.btnInventValidarClick(Sender: TObject);
begin
   if (MessageBox(0, SNGPC_C42, C_237, MB_ICONWARNING or MB_YESNO) = idNo) then
      exit;

   dm.ExecSQL(SNGPC_SQL21);

   DM.ExecSql('TRUNCATE table sngpc_gerados;  insert into sngpc_gerados (dt_ini,dt_fim,validado) values(' +
               data_My(DM.QInventInicialdata.Value) + ',' +
               data_My(DM.QInventInicialdata.Value) + ',"V");');

   DM.QInventInicial.Refresh;
   CfgBtnInventInicial;
end;

procedure TfrmMain.btnInventVoltarClick(Sender: TObject);
begin
   panel11.Show;
end;

procedure TfrmMain.btnLogClick(Sender: TObject);
begin
   od1.InitialDir := Aqui(SNGPC_PATH,'');
   if od1.Execute then
      ShellExecute(0, nil, PWideChar(od1.FileName), nil, nil, 1);
end;

procedure TfrmMain.btnMedicClick(Sender: TObject);
begin
   if dtSaidaReceita.Date <= 0 then
      raise Exception.Create(SNGPC_C1);

   if dtPrescrReceita.Date <= 0 then
      raise Exception.Create(SNGPC_C2);

   if Number(edNmroProf.Text) = C_ST_VAZIO then
      raise Exception.Create(SNGPC_C3);

   if Number(edNmroReceita.Text) = C_ST_VAZIO then
      raise Exception.Create(SNGPC_C4);

   if Trim(edNomePrescr.Text) = C_ST_VAZIO then
      raise Exception.Create(SNGPC_C5);

   if dtSaidaReceita.Date - dtPrescrReceita.Date > dias then
      raise Exception.Create(SNGPC_C44);

   if (cmbConselho.Text <> 'CRM') and (cmbConselho.Text <> 'CRO')and
      (cmbConselho.Text <> 'COREM')and (cmbConselho.Text <> 'CRMV') then
      raise Exception.Create(SNGPC_C78);

   if Trim(edNomeComprador.Text) = C_ST_VAZIO then
      raise Exception.Create(SNGPC_C45);

   if cmbDocComprador.ItemIndex = -1 then
      raise Exception.Create(SNGPC_C46);

   if cmbUFComprador.ItemIndex = -1 then
      raise Exception.Create(SNGPC_C47);

   if cmbUFProf.ItemIndex = -1 then
      raise Exception.Create(SNGPC_C80);

   if Trim(edNmroDocComprador.Text) = C_ST_VAZIO then
      raise Exception.Create(SNGPC_C49);

   if cmbOrgao.ItemIndex = -1 then
      raise Exception.Create(SNGPC_C50);

   if cmbTipoReceita.ItemIndex = 4 then
   begin
      if Trim(edNomePac.Text) = C_ST_VAZIO then
         raise Exception.Create(SNGPC_C51);

      if Number(edIdadePAc.Text) = C_ST_VAZIO then
         raise Exception.Create(SNGPC_C52);

      if cmbIdadePAc.ItemIndex = -1 then
         raise Exception.Create(SNGPC_C53);

      if cmbSexoPac.ItemIndex = -1 then
         raise Exception.Create(SNGPC_C54);

      if (cmbIdadePAc.ItemIndex=1)and(edIdadePAc.Value > 11) then
         raise Exception.Create(SNGPC_C79);
   end;

   if not FileExists(lblArqReceita.Caption) then
      if (MessageBox(0, SNGPC_C55, C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
         exit;

   PgMain.ActivePage := TabSaiMed;
end;

procedure TfrmMain.btnMedSaiConcluirClick(Sender: TObject);
VAR
   st_sql: STRING;
   s, ss: string;
begin
   if (MessageBox(0, C_249, C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;

   DM.cdSaiMed.DisableControls;
   DM.cdSaiMed.First;

   if cmbConselho.Text='CRMV' then
      ss := '2'
   else
      ss := '1';


   while not DM.cdSaiMed.Eof do
   begin
      s := Number(edIdadePac.Text);

      if s = C_ST_VAZIO then
         s := '0';

      DM.Pesquisar(DM.Q1, 'select * from sngpc_seq where tipo=1');

      if dm.Q1.IsEmpty then
         DM.ExecSql('insert into sngpc_seq set tipo=1, seq=1;');

      DM.Pesquisar(DM.Q1, 'select * from sngpc_seq where tipo=5');

      if dm.Q1.IsEmpty then
         DM.ExecSql('insert into sngpc_seq set tipo=5, seq=1;');

      DM.ExecSql('insert into sngpc_sai set tipo_receita=''' +
                 Copy(cmbTipoReceita.Text,1,1) + ''',nmro_notif=''' +
                 Trim(edNmroReceita.Text) + ''',data_prescr=' +
                 data_My(dtPrescrReceita.Date) + ',medico=''' +
                 Trim(TiraAcento(edNomePrescr.Text)) + ''',nmro_prof=''' +
                 Trim(edNmroProf.Text) + ''',conselho_prof=''' +
                 cmbConselho.Text + ''',uf=''' +
                 cmbUFProf.Text + ''',uso_medic=' + Texto_Mysql(ss) + ',comprador=''' +
                 Trim(TiraAcento(edNomeComprador.Text)) + ''',tipo_doc=''' +
                 Number(cmbDocComprador.Text) + ''',doc=''' +
                 Trim(edNmroDocComprador.Text) + ''',orgao_exp=''' +
                 Trim(Copy(cmbOrgao.Text,1, pos('-',cmbOrgao.Text)-1)) + ''',uf_doc=''' +
                 cmbUFComprador.Text + ''',paciente_nome=''' +
                 Trim(TiraAcento(edNomePac.Text)) + ''',paciente_idade=''' +
                 s + ''',paciente_tipo_idade=''' +
                 IntToStr(cmbIdadePac.ItemIndex + 1) + ''',paciente_sexo=''' +
                 IntToStr(cmbSexoPac.ItemIndex + 1) + ''',paciente_cid=''' +
                 Trim(edCIDPac.Text) + ''',receita_img=''' +
                 lblArqReceita.Caption + ''';'
      );

      st_sql := BuscaTroca(SNGPC_SQL25, C_SOH, data_My(dtSaidaReceita.Date));
      st_sql := BuscaTroca(st_sql, C_STX, DM.cdSaiMedid.AsString);
      st_sql := BuscaTroca(st_sql, C_ETX, DM.cdSaiMedlote.AsString);
      st_sql := BuscaTroca(st_sql, C_EOT, DM.cdSaiMedquant.AsString);

      DM.ExecSql(st_sql);

      DM.cdSaiMed.Next;
   end;

   //verifica se a receita é auto incr. e procede conforme

   if StrToInt(Copy(cmbTipoReceita.Text,1,1)) in[1,5] then
   begin
      st_sql := BuscaTroca(SNGPC_SQL51, C_SOH, Number(edNmroReceita.Text));
      st_sql := BuscaTroca(st_sql, C_STX, Number(Copy(cmbTipoReceita.Text,1,1)));
      DM.ExecSql(st_sql);
   end;

   DM.cdSaiMed.EnableControls;
   DM.cdSaiMed.Close;
   DM.cdSaiMed.Open;
   ShowMessage('Saida computada.');
   PgMain.ActivePage := TabSaida;
end;

procedure TfrmMain.btnMedSaiInserirClick(Sender: TObject);
begin
   DM.cdSaiMed.Append;
   DM.cdSaiMedid.Value      := DM.QMedDispid.Value;
   DM.cdSaiMednome.AsString := DM.QMedDispnome.AsString;
   DM.cdSaiMedean.AsString  := DM.QMedDispean.AsString;
   DM.cdSaiMedlote.AsString := DM.QMedDisplote.AsString;
   DM.cdSaiMedquant.Value   := Trunc(edMedSaiQtd.Value);
   DM.cdSaiMed.Post;

   edPesqSaiMed.Clear;
   edMedSaiQtd.Clear;
   lblDispon.Clear;

   btnMedSaiInserir.Enabled := False;
   edMedSaiQtd.Enabled      := False;
   edPesqSaiMed.SetFocus;
   btnMedSaiConcluir.Enabled := True;
end;

procedure TfrmMain.btnMedSaiRemoverClick(Sender: TObject);
begin
   DM.cdSaiMed.Delete;
   btnMedSaiRemover.Enabled  := False;
   btnMedSaiConcluir.Enabled := not DM.cdSaiMed.IsEmpty;
   edPesqSaiMed.SetFocus;
end;

procedure TfrmMain.btnPesqDelEntrClick(Sender: TObject);
VAR
   st_sql: STRING;
begin
   if XMLGerado(DM.QPesqEntradadt_entrada.Value) then
      exit;

   if DM.QPesqEntradanmro_nf.Value =0 then
      raise Exception.Create(SNGPC_C56);

   st_sql := BuscaTroca(SNGPC_SQL26, C_SOH, DM.QPesqEntradaestoque.AsString);
   st_sql := BuscaTroca(st_sql, C_STX, DM.QPesqEntradaregistro_ms.AsString);
   st_sql := BuscaTroca(st_sql, C_ETX, DM.QPesqEntradalote.AsString);
   st_sql := BuscaTroca(st_sql, C_EOT, data_My(DM.QPesqEntradadt_entrada.value));

   DM.ExecSql(st_sql + ' and dt_saida is not null');

   if DM.Q1.Fields[0].Value >0 then
      raise Exception.Create('Existem saidas computadas para este movimento.');

   DM.Pesquisar(DM.Q1, st_sql + ' and dt_perda is not null');

   if DM.Q1.Fields[0].Value >0 then
      raise Exception.Create('Existem perdas computadas para este movimento.');

   if (MessageBox(0, 'Deseja excluir esta movimentação?', C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;


   st_sql := BuscaTroca(SNGPC_SQL27, C_SOH, DM.QPesqEntradaestoque.AsString);
   st_sql := BuscaTroca(st_sql, C_STX, DM.QPesqEntradaregistro_ms.AsString);
   st_sql := BuscaTroca(st_sql, C_ETX, DM.QPesqEntradalote.AsString);
   st_sql := BuscaTroca(st_sql, C_EOT, data_My(DM.QPesqEntradadt_entrada.value));
   st_sql := BuscaTroca(st_sql, C_ENQ, DM.QPesqEntradaquant.AsString);

   DM.ExecSql(st_sql);

   DM.QPesqEntrada.Refresh;
end;

procedure TfrmMain.btnPesqDelSaiClick(Sender: TObject);
var
   st_sql: string;
begin
   if XMLGerado(DM.QPesqSaidt_saida.Value) then
      exit;

   if (MessageBox(0, SNGPC_C28, C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;

   DeleteFile(DM.QPesqRecreceita_img.AsString);

   st_sql := BuscaTroca(SNGPC_SQL28, C_SOH, DM.QPesqSaisngpc.AsString);
   st_sql := BuscaTroca(st_sql, C_STX, DM.QPesqSaisngpc.AsString);
   st_sql := BuscaTroca(st_sql, C_ETX, DM.QPesqSaisngpc.AsString);

   DM.ExecSql(st_sql);

   DM.QPesqSai.Refresh;
end;

procedure TfrmMain.btnPesqMoviClick(Sender: TObject);
var
   s, st_sql: string;
begin
   pnlPesqSai.Visible := False;

   s := data_My(dt1.Date) + ' and ' + data_My(dt2.Date);

   st_sql := BuscaTroca(SNGPC_SQL29, C_SOH, s);
   DM.Pesquisar(DM.QPesqEntrada, st_sql);

   st_sql := BuscaTroca(SNGPC_SQL29s, C_SOH, s);
   DM.Pesquisar(DM.QPesqSai, st_sql);

   st_sql := BuscaTroca(SNGPC_SQL29p, C_SOH, s);
   DM.Pesquisar(DM.QPesqPerda, st_sql);

   TabPesqEntr.Caption   := TabPesqEntr.Hint   + ' (' + IntToStr(DM.QPesqEntrada.RecordCount) + ')';
   TabPesqSai.Caption    := TabPesqSai.Hint    + ' (' + IntToStr(DM.QPesqSai.RecordCount)     + ')';
   TabPesqPerdas.Caption := TabPesqPerdas.Hint + ' (' + IntToStr(DM.QPesqPerda.RecordCount)   + ')';
end;

procedure TfrmMain.cxDBNavigator2ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
   case AButtonIndex of
      6,9:begin
         PnlInvent.Show;
         edPesq.Clear;
         edPesq.SetFocus;
      end;
       11: begin
         PnlInvent.Hide;
       end;
   end;
end;

procedure TfrmMain.dt1Enter(Sender: TObject);
begin
   pnlPesqSai.Visible := False;
   TabPesqEntr.Caption   := TabPesqEntr.Hint;
   TabPesqSai.Caption    := TabPesqSai.Hint;
   TabPesqPerdas.Caption := TabPesqPerdas.Hint;
end;

procedure TfrmMain.tbvSaiMedCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnMedSaiRemover.Enabled := not DM.cdSaiMed.IsEmpty;
end;

procedure TfrmMain.tbvMedDispSaiCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   if not DM.QMedDisp.IsEmpty then
   begin
      edMedSaiQtd.Clear;
      edMedSaiQtd.Enabled := true;
      edMedSaiQtd.SetFocus;
   end;
end;

procedure TfrmMain.tbvMedPerdaCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   if not DM.QMedDisp.IsEmpty then
   begin
      edMedPerQtd.Clear;
      edMedPerQtd.Enabled := true;
      edMedPerQtd.SetFocus;
   end;
end;

procedure TfrmMain.tbvPerdaCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnMedPerdaRemover.Enabled := not DM.cdPerda.IsEmpty;
end;

procedure TfrmMain.tbvPesqEntrCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnPesqDelEntr.Enabled := not DM.QPesqEntrada.IsEmpty;
end;

procedure TfrmMain.tbvPesqEntrCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
   if AViewInfo.GridRecord.Values[tbvPesqEntrclasse_terap.Index]=0 then //erro
    begin
       ACanvas.Canvas.Brush.Color := $008695EA;
       ACanvas.Canvas.Font.Color := clBlack;
    end
   else
   if AViewInfo.GridRecord.Values[tbvPesqEntrclasse_terap.Index]=1 then//ab
    begin
       ACanvas.Canvas.Brush.Color := $00FFD2D2;
       ACanvas.Canvas.Font.Color := clBlack;
    end
   else
   if AViewInfo.GridRecord.Values[tbvPesqEntrclasse_terap.Index]=2 then //contr
    begin
       ACanvas.Canvas.Brush.Color := $0088F78B;
       ACanvas.Canvas.Font.Color := clBlack;
    end;
end;

procedure TfrmMain.tbvPesqPerdaCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btpPesqDelPerda.Enabled := not DM.QPesqPerda.IsEmpty;
end;

procedure TfrmMain.tbvPesqPerdaCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
   if AViewInfo.GridRecord.Values[tbvPesqPerdaclasse_terap.Index]=0 then //erro
    begin
       ACanvas.Canvas.Brush.Color := $008695EA;
       ACanvas.Canvas.Font.Color := clBlack;
    end
   else
   if AViewInfo.GridRecord.Values[tbvPesqPerdaclasse_terap.Index]=1 then//ab
    begin
       ACanvas.Canvas.Brush.Color := $00FFD2D2;
       ACanvas.Canvas.Font.Color := clBlack;
    end
   else
   if AViewInfo.GridRecord.Values[tbvPesqPerdaclasse_terap.Index]=2 then //contr
    begin
       ACanvas.Canvas.Brush.Color := $0088F78B;
       ACanvas.Canvas.Font.Color := clBlack;
    end;
end;

procedure TfrmMain.tbvPesqSaiCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   pnlPesqSai.Visible    := not DM.QPesqSai.IsEmpty;
   btnPesqDelSai.Enabled := not DM.QPesqSai.IsEmpty;
   DM.QPesqRec.Close;
   DM.QPesqRec.Open;
end;

procedure TfrmMain.tbvPesqSaiCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
   if AViewInfo.GridRecord.Values[tbvPesqSaiclasse_terap.Index]=0 then //erro
    begin
       ACanvas.Canvas.Brush.Color := $008695EA;
       ACanvas.Canvas.Font.Color := clBlack;
    end
   else
   if AViewInfo.GridRecord.Values[tbvPesqSaiclasse_terap.Index]=1 then//ab
    begin
       ACanvas.Canvas.Brush.Color := $00FFD2D2;
       ACanvas.Canvas.Font.Color := clBlack;
    end
   else
   if AViewInfo.GridRecord.Values[tbvPesqSaiclasse_terap.Index]=2 then //contr
    begin
       ACanvas.Canvas.Brush.Color := $0088F78B;
       ACanvas.Canvas.Font.Color := clBlack;
    end;
end;

procedure TfrmMain.DtEmEnter(Sender: TObject);
var
   st_sql: string;
begin
   edNF.Hint := '';

   if Number(edNF.Text) <> EmptyStr then
   begin
      st_sql := BuscaTroca(SNGPC_SQL30, C_SOH, edNF.Text);
      DM.Pesquisar(DM.Q1, st_sql);

      if DM.Q1.IsEmpty then
      begin
          ShowMessage(SNGPC_C57)
      end
      else
      begin
         edNF.Hint   := DM.q1.FieldByName('id').AsString;
         DtEm.Date   := DM.q1.FieldByName('Ide_dEmi').AsDateTime;
         DtEnt.Date := DM.q1.FieldByName('Ide_dSaiEnt').AsDateTime;

     //    st_sql := BuscaTroca(SNGPC_SQL31, C_SOH, DM.q1.FieldByName('Emit_CNPJCPF').AsString);
      //   DM.Pesquisar(DM.Q1, st_sql);

         edCNPJEntr.Text := DM.q1.FieldByName('Emit_CNPJCPF').AsString;

         DM.Programar_Validador(1);//cnpj
         DM.Validador.Documento := Ansistring(Number(edCNPJEntr.Text));

         if DM.Validador.Validar then
            edCNPJEntr.Text := String(DM.Validador.Formatar)
         else
           raise Exception.Create(DM.Validador.MsgErro);
      end;
   end;
end;

procedure TfrmMain.edIntervClick(Sender: TObject);
begin
   if DtIni.Date > 0 then
      DtFim.Date := DtIni.Date + edInterv.Value;
end;

procedure TfrmMain.edMedPerQtdPropertiesEditValueChanged(Sender: TObject);
var
   i: integer;
begin
   if edMedperQtd.Value > 0 then
   begin
      DM.cdPerda.DisableControls;
      DM.cdPerda.First;
      i := 0;

      while not DM.cdPerda.Eof do
      begin
         if (DM.cdPerdaid.Value = DM.QMedDispid.Value)and(DM.cdPerdalote.Value = DM.QMedDisplote.Value) then
         begin
            i :=DM.cdPerdaid.Value;
            break;
         end;
         DM.cdPerda.Next;
      end;

      DM.cdPerda.EnableControls;

      if i > 0 then
      begin
         edPesqPerMed.Clear;
         edMedPerQtd.Clear;
         lblDispon2.Clear;

         btnMedPerInserir.Enabled  := False;
         btnMedPerConcluir.Enabled := not DM.cdPerda.IsEmpty;
         edMedPerQtd.Enabled       := False;
         edPesqPerMed.SetFocus;
         raise Exception.Create(SNGPC_C58);
      end;

      btnMedPerInserir.Enabled := edMedPerQtd.Value <= DM.QMedDispquant.AsInteger;


      if btnMedPerInserir.Enabled then
         lblDispon2.Caption := SNGPC_C59
      else
        lblDispon2.Caption := SNGPC_C60;
   end;
end;

procedure TfrmMain.edMedSaiQtdPropertiesEditValueChanged(Sender: TObject);
var
   i: integer;
begin
   if edMedSaiQtd.Value > 0 then
   begin
      DM.cdSaiMed.DisableControls;
      DM.cdSaiMed.First;
      i := 0;

      while not DM.cdSaiMed.Eof do
      begin
         if (DM.cdSaiMedid.Value = DM.QMedDispid.Value)and(DM.cdPerdalote.Value = DM.QMedDisplote.Value) then
         begin
            i :=DM.cdSaiMedid.Value;
            break;
         end;
         DM.cdSaiMed.Next;
      end;

      DM.cdSaiMed.EnableControls;

      if i > 0 then
         raise Exception.Create(SNGPC_C58);

      btnMedSaiInserir.Enabled := edMedSaiQtd.Value <= DM.QMedDispquant.AsInteger;

      if btnMedSaiInserir.Enabled then
         lblDispon.Caption := SNGPC_C59
      else
        lblDispon.Caption := SNGPC_C60;
   end;
end;

procedure TfrmMain.edNmroProfEnter(Sender: TObject);
begin
   if dtSaidaReceita.Date - dtPrescrReceita.Date > dias then
   begin
      raise Exception.Create(SNGPC_C44);
   end;
end;

procedure TfrmMain.edNomeCompradorPropertiesChange(Sender: TObject);
var
   i: integer;
begin
   if trim(edNomeComprador.Text) = '?' then
   begin
      edNomeComprador.Clear;
      frmPesqCompr := TfrmPesqCompr.Create(Self);

      if frmPesqCompr.ShowModal = mrOk then
      begin
         edNomeComprador.Text := DM.QPesqComprcomprador.AsString;
         edNmroDocComprador.Text := DM.QPesqComprdoc.AsString;

         for i := 0 to cmbUFComprador.Properties.Items.Count - 1 do
         begin
            if cmbUFComprador.Properties.Items[i] = DM.QPesqCompruf_doc.AsString then
            begin
               cmbUFComprador.ItemIndex := i;
               break;
            end;
         end;

         for i := 0 to cmbOrgao.Properties.Items.Count - 1 do
         begin
            if Trim(Copy(cmbOrgao.Properties.Items[i],1, pos('-',cmbOrgao.Properties.Items[i])-1)) = DM.QPesqComprorgao_exp.AsString then
            begin
               cmbOrgao.ItemIndex := i;
               break;
            end;
         end;

         for i := 0 to cmbDocComprador.Properties.Items.Count - 1 do
         begin
            if Trim(Number(cmbDocComprador.Properties.Items[i])) = DM.QPesqComprtipo_doc.AsString then
            begin
               cmbDocComprador.ItemIndex := i;
               break;
            end;
         end;
      end;
      FreeAndNil(frmPesqCompr);
   end;
end;

procedure TfrmMain.edPesqEntrPropertiesChange(Sender: TObject);
var
   s: string;
begin
   if edNF.Hint <> '' then
      s := ' join nf_item_entr i on i.cProd = e.id and i.nf="' + edNF.Hint + '"';

   if TcxTextEdit(sender).Focused then
   begin
      if length(TcxTextEdit(sender).Text) = 0 then //fecha o dataset se edpesq vazio
      begin
         DM.QProduto.Close;
      end
      else
      if coluna.DataBinding.FieldName = 'cod_gtin' then//ocorrencia exata do gtin
      begin
           if length(TcxTextEdit(sender).Text) in [8, 13, 14] then
           DM.Pesquisar( DM.QProduto,
                        'select ' + campos + ' from estoque e ' + s + ' where cod_gtin' +
                        '="' + TcxTextEdit(sender).Text + '";'
           );
      end
      else
      if length(TcxTextEdit(sender).Text) <= 3 then //nos 3 1ºs caracteres faz a pesquisa
      begin
           DM.Pesquisar( DM.QProduto,
                        'select ' + campos + ' from estoque e ' + s + ' where ' +
                        coluna.DataBinding.FieldName +
                        ' like "' + TcxTextEdit(sender).Text + '%" order by ' +
                        coluna.DataBinding.FieldName);
      end
      else
      begin   //faz o locate
         DM.QProduto.Locate(coluna.DataBinding.FieldName,
                            TEdit(sender).Text,
                            [locaseinsensitive, loPartialKey]);
      end;
   end;
end;

procedure TfrmMain.edPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key in [VK_UP, VK_DOWN] then
   begin
      if DM.QProduto.Active then
      if not DM.QProduto.IsEmpty then
      begin
         if key = VK_UP then DM.QProduto.Prior
      else
         if key = VK_DOWN then DM.QProduto.Next;
      end;
   end;
end;

procedure TfrmMain.edPesqMoviEnter(Sender: TObject);
begin
   pnlPesqSai.Visible := False;
end;

procedure TfrmMain.edPesqMoviPropertiesChange(Sender: TObject);
var
   s, st_sql: string;
begin
   if length(Trim(edPesqMovi.Text)) > 2 then
   begin
      case GpPesq.ItemIndex of
        1: s := 'm.lote like "' + edPesqMovi.Text + '%"';
        2: s := 'p.nome like "' + edPesqMovi.Text + '%"';
        3: s := 'm.registro_ms like "' + edPesqMovi.Text + '%"';
        4: s := 'sngpc in (select id from sngpc_sai where nmro_notif like "' + edPesqMovi.Text + '%")';
      end;

      st_sql := BuscaTroca(SNGPC_SQL32, C_SOH, s);
      DM.Pesquisar(DM.QPesqEntrada, st_sql);

      st_sql := BuscaTroca(SNGPC_SQL32s, C_SOH, s);
      DM.Pesquisar(DM.QPesqSai, st_sql);

      st_sql := BuscaTroca(SNGPC_SQL32p, C_SOH, s);
      DM.Pesquisar(DM.QPesqPerda, st_sql);

      TabPesqEntr.Caption   := TabPesqEntr.Hint   + ' (' + IntToStr(DM.QPesqEntrada.RecordCount) + ')';
      TabPesqSai.Caption    := TabPesqSai.Hint    + ' (' + IntToStr(DM.QPesqSai.RecordCount)     + ')';
      TabPesqPerdas.Caption := TabPesqPerdas.Hint + ' (' + IntToStr(DM.QPesqPerda.RecordCount)   + ')';
   end
   else
   begin
      DM.QPesqEntrada.Close;
      DM.QPesqSai.Close;
      DM.QPesqPerda.Close;
      TabPesqEntr.Caption   := TabPesqEntr.Hint;
      TabPesqSai.Caption    := TabPesqSai.Hint;
      TabPesqPerdas.Caption := TabPesqPerdas.Hint;
   end;
end;

procedure TfrmMain.edPesqPerMedPropertiesChange(Sender: TObject);
var
   s: string;
begin
   if length(TcxTextEdit(sender).Text) = 0 then //fecha o dataset se edpesq vazio
   begin
      DM.QMedDisp.Close;
   end
   ELSE
   begin
      if length(TcxTextEdit(sender).Text) > 2 then
      begin

         if cbDescr2.Checked then
         begin
            s := BuscaTroca(SNGPC_SQL35, C_SOH, 'e.nome');
            s := BuscaTroca(s, C_STX,  edPesqPerMed.Text);
            DM.Pesquisar(DM.QMedDisp, s);
         end
         else
         begin
            s := BuscaTroca(SNGPC_SQL35, C_SOH, 's.lote');
            s := BuscaTroca(s, C_STX,  edPesqPerMed.Text);
            DM.Pesquisar(DM.QMedDisp, s);
         end;
      end;
   end;

   edMedPerQtd.Clear;
   edMedPerQtd.Enabled := False;
   lblDispon2.Caption := C_ST_VAZIO;
end;

procedure TfrmMain.edPesqPropertiesChange(Sender: TObject);
begin
   if TcxTextEdit(sender).Focused then
   begin
      if length(TcxTextEdit(sender).Text) = 0 then //fecha o dataset se edpesq vazio
      begin
         DM.QProduto.Close;
      end
      else
      if coluna.DataBinding.FieldName = 'ean' then//ocorrencia exata do ean
      begin
           if length(TcxTextEdit(sender).Text) > 12 then
           DM.Pesquisar(DM.QProduto,
                        'select ' + campos + ' from estoque where cod_gtin' +
                        '="' + TcxTextEdit(sender).Text + '";'
           );
      end
      else
      if length(TcxTextEdit(sender).Text) <= 3 then //nos 3 1ºs caracteres faz a pesquisa
      begin
           DM.Pesquisar( DM.QProduto,
                        'select ' + campos + ' from estoque where ' +
                        coluna.DataBinding.FieldName +
                        ' like "' + TcxTextEdit(sender).Text + '%" order by ' +
                        coluna.DataBinding.FieldName);
      end
      else
      begin   //faz o locate
         DM.QProduto.Locate(coluna.DataBinding.FieldName,
                            TEdit(sender).Text,
                            [locaseinsensitive, loPartialKey]);
      end;
   end;
end;

procedure TfrmMain.edPesqSaiMedPropertiesChange(Sender: TObject);
var
   s, st_sql: string;
begin
   if length(TcxTextEdit(sender).Text) = 0 then //fecha o dataset se edpesq vazio
   begin
      DM.QMedDisp.Close;
   end
   ELSE
   begin
      if length(edPesqSaiMed.Text) > 2 then
      begin
         if cmbTipoReceita.ItemIndex = 4 then
            s := ' and classe_terap="1" '//antimicrob
         else
            s := ' and classe_terap="2" '; //control.

         if cbDescr.Checked then
         begin
            st_sql := BuscaTroca(SNGPC_SQL36, C_SOH, 'nome');
            st_sql := BuscaTroca(st_sql, C_STX, edPesqSaiMed.Text);
            st_sql := BuscaTroca(st_sql, C_ETX, s);
            DM.Pesquisar(DM.QMedDisp, st_sql + ',s.lote');
         end
         else
         begin
            st_sql := BuscaTroca(SNGPC_SQL47, C_SOH, 'lote');
            st_sql := BuscaTroca(st_sql, C_STX, edPesqSaiMed.Text);
            st_sql := BuscaTroca(st_sql, C_ETX, s);
            DM.Pesquisar(DM.QMedDisp, st_sql);
         end;
      end;
   end;

   edMedSaiQtd.Clear;
   edMedSaiQtd.Enabled := False;
   lblDispon.Caption := C_ST_VAZIO;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin
   ini.StoredValue['w']    := width;
   ini.StoredValue['h']    := height;
   ini.StoredValue['dias'] := edInterv.Value;

   ini.SaveFormPlacement;
  for i := 0 to frmMain.ComponentCount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE,
          MD5_Str(Application.ExeName +
                  TForm(sender).Name +
                  (Components[i] as TcxGridDBTableView).Name) + '.grd'));
  end;

  frmshadow.Close;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
   i: integer;
begin
   ini.inifilename := Aqui(C_INI_FILE, SNGPC_ININAME);
   ini.Active := True;
   ini.RestoreFormPlacement;

  for i := 0 to frmMain.ComponentCount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
      begin
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE,
          MD5_Str(Application.ExeName +
                  TForm(sender).Name +
                  (Components[i] as TcxGridDBTableView).Name) + '.grd'));
      end;
  end;

   image1.Picture := frmshadow.Image1.Picture;
   image2.Picture := Image1.Picture;
   image3.Picture := Image1.Picture;
   FR.InitializeForm;
   PgMain.ActivePage    := TabInicio;
   PgInvent.ActivePage  := TabInventAtual;
   TabSaiMed.TabVisible := False;
   TabPesq1.TabVisible  := False;
   TabPesq2.TabVisible  := False;

   if ini.StoredValue['w'] > 798 then
      width := ini.StoredValue['w'];

   if ini.StoredValue['h'] > 598 then
      height := ini.StoredValue['h'];

   i := ini.StoredValue['dias'];

   edInterv.Value := i;
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
   FR.ResizeAll;
   frmMain.Font.Size := Edit1.Font.Size;
//   DMSkin.Style_Control.Style.Font.Size := Edit1.Font.Size;

   if WindowState = wsMinimized then
      frmshadow.WindowState := wsMinimized;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
   GetSkinDLL.GetSkinName;
   Conectar;
end;

procedure TfrmMain.PgInventPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
   if Assigned(DM) then
   begin
      AllowChange := not (DM.QInventInicial.State in[dsInsert, dsEdit]);

      if not AllowChange then
         ShowMessage(C_250);
   end;
end;

procedure TfrmMain.PgMainPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
   if Assigned(DM) then
   begin
      AllowChange := (not (DM.QInventInicial.State in[dsInsert, dsEdit])) and
                     (not (DM.QEmpresa.State in[dsInsert, dsEdit]));

      if not AllowChange then
         ShowMessage(C_250);
   end;
end;

procedure TfrmMain.TabCadEmpresaShow(Sender: TObject);
begin
   DBEdit1.SetFocus;
end;

procedure TfrmMain.TabCloseShow(Sender: TObject);
begin
   if (MessageBox(0, C_251, C_237, MB_ICONQUESTION or MB_YESNO) = idYes) then
      close;
end;

procedure TfrmMain.TabEntradaShow(Sender: TObject);
var
   i: integer;
begin
   coluna := Nil;

   for i := 0 to tbvTabProd.ColumnCount -1 do
   if  tbvTabProd.Columns[i].Tag = 1 then
      coluna := tbvTabProd.Columns[i];

   DM.QEntrada.Close;
   lblPesq.Caption     := C_190 + Trim(Copy(coluna.Caption, 1, 10));
   lblPesqEntr.Caption := lblPesq.Caption;
   GpTabMedic.Hide;
   edPesqEntr.Clear;
   edNF.Clear;
   DtEm.Clear;
   DtEnt.Clear;
   edCNPJEntr.Clear;
   edNF.SetFocus;
end;

procedure TfrmMain.TabGerarShow(Sender: TObject);
begin
   Ajustar;
   Panel10.Hide;
end;

procedure TfrmMain.TabInventAtualShow(Sender: TObject);
begin
   DM.QInventAtual.Close;
   DM.QInventAtual.Open;
   gbInvent.Visible := False;
end;

procedure TfrmMain.TabInventInicialShow(Sender: TObject);
var
   i: integer;
begin
   coluna := Nil;

   for i := 0 to tbv4.ColumnCount -1 do
   if tbv4.Columns[i].Tag = 1 then
      coluna := tbv4.Columns[i];

   DM.QInventInicial.Close;
   DM.QInventInicial.Open;
   gbInvent.Visible  := True;
   PnlInvent.Visible := false;

   lblPesq.Caption     := C_190 + Trim(Copy(coluna.Caption, 1, 10));
   lblPesqEntr.Caption := lblPesq.Caption;
   CfgBtnInventInicial;
end;

procedure TfrmMain.TabInventShow(Sender: TObject);
var
   i: integer;
begin
   for i := 0 to tbv4.ColumnCount -1 do
   if tbv4.Columns[i].Tag = 1 then
   begin
      coluna := TcxGridDBColumn(tbv4.Columns[i]);
      lblPesq.Caption := C_190 + Trim(Copy(coluna.Caption, 1, 10));
   end;
end;

procedure TfrmMain.TabPerdaHide(Sender: TObject);
begin
   DM.cdPerda.Close;
end;

procedure TfrmMain.TabPerdaShow(Sender: TObject);
begin
   DM.cdPerda.Open;
end;

procedure TfrmMain.TabPesqShow(Sender: TObject);
begin
   pgPesqMovi.ActivePageIndex := 0;
end;


procedure TfrmMain.TabSaidaShow(Sender: TObject);
var
   Lista: TStringList;
begin
   cmbTipoReceita.SetFocus;
   Lista := TStringList.Create;
   DM.Pesquisar(DM.Q1, SNGPC_SQL37);

   while not DM.Q1.Eof do
   begin
      Lista.Append(DM.Q1.Fields[0].AsString);
      DM.Q1.Next;
   end;


   DM.Q1.Close;
   edNmroProf.Properties.LookupItems := Lista;
   Lista.Free;

   cmbTipoReceita.Clear;
   edNmroReceita.Clear;
   dtPrescrReceita.Clear;
   dtSaidaReceita.Clear;
   edNmroProf.Clear;
   cmbUFProf.Clear;
   cmbConselho.Clear;
   edNomePrescr.Clear;
   edNomeComprador.Clear;
   cmbDocComprador.Clear;
   cmbUFComprador.Clear;
   edNmroDocComprador.Clear;
   cmbOrgao.Clear;
   edNomePac.Clear;
   edIdadePac.Clear;
   cmbIdadePac.Clear;
   cmbSexoPac.Clear;
   edCIDPac.Clear;
   cmbTipoReceita.SetFocus;
end;

procedure TfrmMain.TabSaiMedShow(Sender: TObject);
begin
   DM.DSSaiMed.dataset.Close;//limpa o dataset
   DM.DSSaiMed.dataset.Open;
   edPesqSaiMed.SetFocus;
end;

procedure TfrmMain.Tbv4eanHeaderClick(Sender: TObject);
var
   i: integer;
begin
   if PgMain.ActivePage = TabInvent then
   begin
      for i := 0 to tbv4.ColumnCount -1 do
          tbv4.Columns[i].Tag := 0;
   end;

   if PgMain.ActivePage = TabEntrada then
   begin
      for i := 0 to tbvTabProd.ColumnCount -1 do
          tbv4.Columns[i].Tag := 0;
   end;

   coluna := TcxGridDBColumn(Sender);
   lblPesq.Caption     := C_190 + Trim(Copy(coluna.Caption, 1, 10));
   lblPesqEntr.Caption := lblPesq.Caption;
   TcxGridDBColumn(Sender).Tag := 1;
end;

procedure TfrmMain.TbvInventAtualCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
   if AViewInfo.GridRecord.Values[TbvInventAtualclasse_terap.Index]=0 then //erro
    begin
       ACanvas.Canvas.Brush.Color := $008695EA;
       ACanvas.Canvas.Font.Color := clBlack;
    end
   else
   if AViewInfo.GridRecord.Values[TbvInventAtualclasse_terap.Index]=1 then//ab
    begin
       ACanvas.Canvas.Brush.Color := $00FFD2D2;
       ACanvas.Canvas.Font.Color := clBlack;
    end
   else
   if AViewInfo.GridRecord.Values[TbvInventAtualclasse_terap.Index]=2 then //contr
    begin
       ACanvas.Canvas.Brush.Color := $0088F78B;
       ACanvas.Canvas.Font.Color := clBlack;
    end;
end;

procedure TfrmMain.TbvInventInicialCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   if AViewInfo.GridRecord.Values[TbvInventInicialclasse_terap.Index]=0 then //erro
    begin
       ACanvas.Canvas.Brush.Color := $008695EA;
       ACanvas.Canvas.Font.Color := clBlack;
    end
   else
   if AViewInfo.GridRecord.Values[TbvInventInicialclasse_terap.Index]=1 then//ab
    begin
       ACanvas.Canvas.Brush.Color := $00FFD2D2;
       ACanvas.Canvas.Font.Color := clBlack;
    end
   else
   if AViewInfo.GridRecord.Values[TbvInventInicialclasse_terap.Index]=2 then //contr
    begin
       ACanvas.Canvas.Brush.Color := $0088F78B;
       ACanvas.Canvas.Font.Color := clBlack;
    end;
end;

procedure TfrmMain.TbvEntradaCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnExcluirEntr.Enabled := not DM.QEntrada.IsEmpty;
end;

function TfrmMain.XMLGerado(data: Tdate): boolean;
begin
   DM.Pesquisar(DM.Q1, SNGPC_SQL38 + data_My(data));
   Result := DM.Q1.Fields[0].AsInteger > 0;

   if Result then
      ShowMessage(SNGPC_CMSG);
end;

function TfrmMain.Verifica_xml(arq: string = ''): boolean;
var
   xml: IXmlDocument;
   Lista: TStringList;
   NodePai,NodeSec,NodeTerc, NodeTmp: IXMLNode;
   numeroNotaFiscal, dataNotaFiscal, cnpjOrigem, cnpjDestino,
   registroMSMedicamento, numeroLoteMedicamento, quantidadeMedicamento,
   dataRecebimentoMedicamento, s, notificacao, doc_med, classe, unid, st_sql, tipo_rec : string;
   i, j, erros, passo: integer;
   b, b_e, b_s, b_p: boolean;
begin
   Result := False;
   erros  := 0;
   b      := False;
   b_e    := b;
   b_s    := b;
   b_p    := b;
   passo  := -1;

   if not FileExists(arq) then
      raise Exception.Create(arq + ' não encontrado.');

   Application.ProcessMessages;

   xml := TXmlDocument.Create(arq);
   xml.Active := True;

   Lista := TStringList.Create;
   Lista.Append(xml.FileName);
   Lista.Append('');
   //le o cabeçalho
   NodePai := xml.DocumentElement.childNodes.FindNode('cabecalho');
   Lista.Append('Data Inicial: ' +  NodePai.ChildValues['dataInicio'] + ' Data Final: ' + NodePai.ChildValues['dataFim']);
   Lista.Append('');

   //le o node medicamentos
   NodePai := xml.DocumentElement.childNodes.FindNode('corpo').ChildNodes.FindNode('medicamentos');

   //entradaMedicamentos

   for i := 0 to NodePai.ChildNodes.Count - 1 do
   begin
      NodeSec := Nil; //percorre o node medicamentos

      if SameText(NodePai.ChildNodes.Nodes[i].NodeName, 'entradaMedicamentos') then
         NodeSec := NodePai.ChildNodes.Nodes[i];

      if passo < 0 then
      begin
         passo := 0;
         Lista.Append('-----------------------------------------------');
         Lista.Append('ENTRADAS');
         Lista.Append('-----------------------------------------------');
      end;

      if NodeSec <> nil then //se encontra o node  entradaMedicamentos
      begin                  //faz o node da nf
         NodeTerc := FindNode('notaFiscalEntradaMedicamento', NodeSec);

         if NodeTerc = nil then
            exit;
         b_e := True;
         // pega os dados dentro da tag <notaFiscalEntradaMedicamento>
         numeroNotaFiscal := NodeTerc.ChildValues['numeroNotaFiscal'];
         dataNotaFiscal   := NodeTerc.ChildValues['dataNotaFiscal'];
         cnpjOrigem       := NodeTerc.ChildValues['cnpjOrigem'];
         cnpjDestino      := NodeTerc.ChildValues['cnpjDestino'];
         dataRecebimentoMedicamento := NodeSec.ChildValues['dataRecebimentoMedicamento'];

         Lista.Append('-----------------------------------------------');
         Lista.Append('NF "' + numeroNotaFiscal +
                      '" emit. em "' + dataNotaFiscal +
                      '" Rec. em: "' + dataRecebimentoMedicamento +
                      '" Orig.: "' + cnpjOrigem +
                      '" Dest.: "' + cnpjDestino + '"'
         );
          //percorre o node entradaMedicamentos
         for j := 0 to NodeSec.ChildNodes.Count - 1 do
         begin
            Application.ProcessMessages;
            NodeTmp := Nil;
            if SameText(NodeSec.ChildNodes.Nodes[j].NodeName, 'medicamentoEntrada') then
               NodeTmp := NodeSec.ChildNodes.Nodes[j];

            if NodeTmp <> nil then //se acha o node medicamentoEntrada
            begin
               registroMSMedicamento := NodeTmp.ChildValues['registroMSMedicamento'];
               numeroLoteMedicamento := NodeTmp.ChildValues['numeroLoteMedicamento'];
               quantidadeMedicamento := NodeTmp.ChildValues['quantidadeMedicamento'];
                              classe := NodeTmp.ChildValues['classeTerapeutica'];
                                unid := NodeTmp.ChildValues['unidadeMedidaMedicamento'];

               DM.Pesquisar(DM.Q1, 'select count(*) from sngpc_movi where ' +
                                   'dt_entrada="' + dataRecebimentoMedicamento + '" and ' +
                                   'registro_ms="' + registroMSMedicamento + '" and ' +
                                   'nmro_nf="' + numeroNotaFiscal + '" and ' +
                                   'lote="' + numeroLoteMedicamento + '";'
               );

               b := DM.q1.Fields[0].AsInteger = StrToInt(quantidadeMedicamento);

               if b then
                  s := ' - VALIDADO'
               else
               begin
                  s := ' - ERRO! (Esperado ' + quantidadeMedicamento + '. Encontrado ' + DM.q1.Fields[0].AsString + ')';
                  inc(erros);
               end;

               b := StrToIntDef(classe, 0) in[1,2];

               if not b then
               begin
                  s := ' - ERRO! classe Terapeutica deve ser 1 ou 2. Encontrado ' + classe;
                  inc(erros);
               end;

               b := StrToIntDef(unid, 0) in[1,2];

               if not b then
               begin
                  s := ' - ERRO! Unidade deve ser 1 ou 2. Encontrado ' + unid;
                  inc(erros);
               end;

               Lista.Append('    * REG. MS ' + registroMSMedicamento +
                            ' LOTE ' + numeroLoteMedicamento +
                            ' QTD ' + quantidadeMedicamento + s);
            end;
        end;
      end;

     //saidas

      NodeSec := Nil; //percorre o node medicamentos

      if SameText(NodePai.ChildNodes.Nodes[i].NodeName, 'saidaMedicamentoVendaAoConsumidor') then
      begin
         b_s := true;

         if passo = 0 then
         begin
            passo := 1;
            Lista.Append('-----------------------------------------------');
            Lista.Append('SAÍDAS');
            Lista.Append('-----------------------------------------------');
         end;

         NodeSec := NodePai.ChildNodes.Nodes[i];

         if NodeSec <> nil then //se encontra o node  entradaMedicamentos
         begin                  //faz o node da nf
            dataRecebimentoMedicamento := NodeSec.ChildValues['dataVendaMedicamento'];
            tipo_rec := NodeSec.ChildValues['tipoReceituarioMedicamento'];

            Lista.Append('Tipo Rec.: ' + NodeSec.ChildValues['tipoReceituarioMedicamento'] +
                         ' Nº Rec.: ' + NodeSec.ChildValues['numeroNotificacaoMedicamento'] +
                         ' Data Rec.: ' + NodeSec.ChildValues['dataPrescricaoMedicamento'] +
                         ' Data Saida: ' + dataRecebimentoMedicamento
            );
            notificacao := NodeSec.ChildValues['numeroNotificacaoMedicamento'];

            NodeTerc := FindNode('prescritorMedicamento', NodeSec);

            if NodeTerc = nil then
               exit;

            Lista.Append('Prescritor: ' + NodeTerc.ChildValues['nomePrescritor'] +
                         ' Reg. Prof.: ' + NodeTerc.ChildValues['numeroRegistroProfissional'] +
                         ' - ' + NodeTerc.ChildValues['conselhoProfissional'] +
                         ' / ' + NodeTerc.ChildValues['UFConselho']
            );

            doc_med := NodeTerc.ChildValues['numeroRegistroProfissional'];

            NodeTerc := nil;
            NodeTerc := FindNode('compradorMedicamento', NodeSec);

            if NodeTerc = nil then
               exit;

            if NodeTerc.ChildValues['nomeComprador'] <> null then
            try
               Lista.Append('Comprador: ' + NodeTerc.ChildValues['nomeComprador'] +
                            ' Doc.: ' + NodeTerc.ChildValues['numeroDocumento'] +
                            ' - ' + NodeTerc.ChildValues['orgaoExpedidor'] +
                            ' / ' + NodeTerc.ChildValues['UFEmissaoDocumento']
               );
            finally
               ;
            end;

            for j := 0 to NodeSec.ChildNodes.Count - 1 do
            begin
               Application.ProcessMessages;
               NodeTmp := Nil;
               if SameText(NodeSec.ChildNodes.Nodes[j].NodeName, 'medicamentoVenda') then
                  NodeTmp := NodeSec.ChildNodes.Nodes[j];

               if NodeTmp <> nil then //se acha o node medicamentoVenda
               begin
                  registroMSMedicamento := NodeTmp.ChildValues['registroMSMedicamento'];
                  numeroLoteMedicamento := NodeTmp.ChildValues['numeroLoteMedicamento'];
                  quantidadeMedicamento := NodeTmp.ChildValues['quantidadeMedicamento'];
                                   unid := NodeTmp.ChildValues['unidadeMedidaMedicamento'];

                  st_sql := BuscaTroca(SNGPC_SQL39, C_SOH, dataRecebimentoMedicamento);
                  st_sql := BuscaTroca(st_sql, C_STX, registroMSMedicamento);
                  st_sql := BuscaTroca(st_sql, C_ETX, numeroLoteMedicamento);
                  st_sql := BuscaTroca(st_sql, C_EOT, notificacao);
                  st_sql := BuscaTroca(st_sql, C_ENQ, doc_med);
                  st_sql := BuscaTroca(st_sql, C_ACK, tipo_rec);
                  DM.Pesquisar(DM.Q1, st_sql);

                  b := DM.q1.Fields[0].AsInteger = StrToInt(quantidadeMedicamento);

                  if b then
                     s := ' - VALIDADO'
                  else
                  begin
                     s := ' - ERRO! (Esperado ' + quantidadeMedicamento + '. Encontrado ' + DM.q1.Fields[0].AsString + ')';

                     if DM.q1.Fields[0].AsInteger = 0 then
                        s := s + SNGPC_C61;
                     inc(erros);
                  end;

                  b := StrToIntDef(unid, 0) in[1,2];

                  if not b then
                  begin
                     s := SNGPC_C62 + unid;
                     inc(erros);
                  end;


                  Lista.Append('    * REG. MS ' + registroMSMedicamento +
                               ' LOTE ' + numeroLoteMedicamento +
                               ' QTD ' + quantidadeMedicamento + s);
               end;
            end;
            Lista.Append('-----------------------------------------------');
         end;
      end;

//      perdas
      NodeSec := Nil; //percorre o node medicamentos

      if SameText(NodePai.ChildNodes.Nodes[i].NodeName, 'saidaMedicamentoPerda') then
      begin
         if passo < 2 then
         begin
            passo := 2;
            Lista.Append('-----------------------------------------------');
            Lista.Append('PERDAS');
            Lista.Append('-----------------------------------------------');
         end;

         b_p := True;
         NodeSec := NodePai.ChildNodes.Nodes[i];

         if NodeSec <> nil then //se encontra o node  entradaMedicamentos
         begin                  //faz o node da nf
            dataRecebimentoMedicamento := NodeSec.ChildValues['dataPerdaMedicamento'];

            Lista.Append('Motivo: ' + NodeSec.ChildValues['motivoPerdaMedicamento'] +
                         ' Data: ' + dataRecebimentoMedicamento
            );


            NodeTerc := FindNode('medicamentoPerda', NodeSec);

            if NodeTerc = nil then
               exit;

            registroMSMedicamento := NodeTerc.ChildValues['registroMSMedicamento'];
            numeroLoteMedicamento := NodeTerc.ChildValues['numeroLoteMedicamento'];
            quantidadeMedicamento := NodeTerc.ChildValues['quantidadeMedicamento'];
                           classe := NodeSec.ChildValues['motivoPerdaMedicamento'];
                             unid := NodeTerc.ChildValues['unidadeMedidaMedicamento'];

            DM.Pesquisar(DM.Q1, 'select count(*) from sngpc_movi where ' +
                         'dt_perda="' + dataRecebimentoMedicamento + '" and ' +
                         'registro_ms="' + registroMSMedicamento + '" and ' +
                         'lote="' + numeroLoteMedicamento + '";'
            );

            b := DM.q1.Fields[0].AsInteger = StrToInt(quantidadeMedicamento);

            if b then
               s := ' - VALIDADO'
            else
            begin
               s := ' - ERRO! (Esperado ' + quantidadeMedicamento + '. Encontrado ' + DM.q1.Fields[0].AsString + ')';
               inc(erros);
            end;

            b := StrToIntDef(classe,0) in[1..9];

            if not b then
            begin
               s := SNGPC_C63 + classe + ')';
               inc(erros);
            end;

            b := StrToIntDef(unid, 0) in[1,2];

            if not b then
            begin
               s := SNGPC_C62 + unid;
               inc(erros);
            end;

            Lista.Append('    * REG. MS ' + registroMSMedicamento +
                         ' LOTE ' + numeroLoteMedicamento +
                         ' QTD ' + quantidadeMedicamento + s);
            Lista.Append('-----------------------------------------------');
         end;
      end;
      //loop fim
   end;

   if not b_e then
      Lista.Append('NENHUMA ENTRADA COMPUTADA');
   if not b_s then
      Lista.Append('NENHUMA SAÍDA COMPUTADA');
   if not b_p then
      Lista.Append('NENHUMA PERDA COMPUTADA');

  lista.SaveToFile(arq + '.txt');
  Result := Erros = 0;
end;


function TfrmMain.FindNode(nome: string; Root: IXMLNode): IXMLNode;
var
  i: Integer;
begin
  Result := nil;
  i := 0;
  while (i < Root.ChildNodes.Count) and (Result = nil) do
    if SameText(Root.ChildNodes.Nodes[i].NodeName, nome) then
      Result := Root.ChildNodes.Nodes[i]
    else
    begin
      Result := FindNode(nome, Root.ChildNodes.Nodes[i]);
      Inc(i);
    end;
end;


procedure TfrmMain.GerarXML;
var
   NCorpo, NMedicamento: IXMLNode;
   XMLDoc: TXMLDocument;
begin
   // Cria o documento
   XMLDoc := TXMLDocument.Create(Application);

   if not DM.QEmpresa.Active then
      DM.QEmpresa.Open;

   with XMLDoc do
   begin
      Active := True;
      Version := '1.0';
      Encoding := 'ISO-8859-1';
      AddChild('mensagemSNGPC','urn:sngpc-schema');

      with DocumentElement do
      begin
         AddChild('cabecalho');
         ChildNodes.Last.AddChild('cnpjEmissor').NodeValue     := Number(DM.QEmpresacnpj.AsString);
         ChildNodes.Last.AddChild ('cpfTransmissor').NodeValue := Number(DM.QEmpresacpf_resp.AsString);
         ChildNodes.Last.AddChild('dataInicio').NodeValue      := FormatDateTime('yyyy-mm-dd', DtIni.Date);
         ChildNodes.Last.AddChild('dataFim').NodeValue         := FormatDateTime('yyyy-mm-dd', DtFim.Date);
      end;

      NCorpo := DocumentElement.AddChild('corpo');

   // *************************** MEDICAMENTO *********************************

      NMedicamento := NCorpo.AddChild('medicamentos');

      Add_Entrada_Medicamentos(NMedicamento);
      Add_Saida_Medicamentos(NMedicamento);
     // Add_Transf_Medicamentos(NMedicamento);
      Add_Perda_Medicamentos(NMedicamento);

      //Add_Entrada_Insumos(NMedicamento);
      //Add_Saida_Insumos(NMedicamento);
     // Add_Transf_Insumos(NMedicamento);
    //  Add_Perda_Insumos(NMedicamento);

   // *************************************************************************

  //    NMedicamento.AddChild('entradaMedicamentoTransformacao');
  //    NMedicamento.AddChild('saidaMedicamentoTransformacaoVendaAoConsumidor');
 //     NMedicamento.AddChild('saidaMedicamentoTransformacaoTransferencia');
 //     NMedicamento.AddChild('saidaMedicamentoTransformacaoPerda');

      NCorpo.AddChild('insumos');

      SaveToFile(Aqui(SNGPC_PATH, FormatDateTime('yy-mm-dd', DtFim.date) + '.xml'));
   end;
   XMLDoc.Active := False;
   XMLDoc.Free;
end;

procedure TfrmMain.Add_Entrada_Medicamentos(node: IXMLNode);
var
   NData, NItem: IXMLNode;
   lt, st_sql: string;
begin
   st_sql := BuscaTroca(SNGPC_SQL40, C_SOH, data_My(DtIni.Date));
   st_sql := BuscaTroca(st_sql, C_STX, data_My(DtFim.Date));

   DM.Pesquisar(DM.Q1, st_sql);

   if DM.Q1.IsEmpty  then
   begin
     exit;
   end
   else
   begin
      while not DM.Q1.Eof do
      begin
         NData := node.AddChild('entradaMedicamentos');
         DM.QXMLEnt.Close;
         DM.QXMLEnt.Params[0].AsInteger := DM.q1.Fields[0].AsInteger;
         DM.QXMLEnt.Params[1].AsDate    := DtIni.Date;
         DM.QXMLEnt.Params[2].AsDate    := DtFim.Date;
         DM.QXMLEnt.Open;

         if Number(DM.QXMLEntcnpj_destino.AsString) = '' then
            raise Exception.Create('Houve um erro (cnpj_destino). Feche o Aplicativo e reabra-o. Se o erro persistir, contate o suporte técnico.');

         if DM.q1.Fields[0].asinteger = 0 then
            raise Exception.Create('Falta o Nº de uma NF');

         if DM.QXMLEntdt_nf.Value <= 0 then
            raise Exception.Create('Falta a data de entrada na NF Nº ' + DM.q1.Fields[0].AsString);

         if Number(DM.QXMLEntcnpj_origem.AsString) = '' then
            raise Exception.Create('Falta o CNPJ na NF Nº ' + DM.q1.Fields[0].AsString);


         with NData do
         begin
            ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['numeroNotaFiscal'].NodeValue := DM.q1.Fields[0].AsString;
            // [tipoOperacaoNotaFiscal]// 1 Compra// 2 Transferência// 3 Venda
            ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['tipoOperacaoNotaFiscal'].NodeValue := '1';
            ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['dataNotaFiscal'].NodeValue := FormatDateTime('yyyy-mm-dd', DM.QXMLEntdt_nf.Value);
            ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['cnpjOrigem'].NodeValue     := Number(DM.QXMLEntcnpj_origem.AsString);
            ChildNodes['notaFiscalEntradaMedicamento'].ChildNodes['cnpjDestino'].NodeValue    := Number(DM.QXMLEntcnpj_destino.AsString);

            while not DM.QXMLEnt.Eof do
            begin
               if(lt <> DM.QXMLEntlote.asstring) then
               begin
                  lt := DM.QXMLEntlote.AsString;
                  NItem := NData.AddChild('medicamentoEntrada');
                  //versao 2.0. classeTerapeutica - 1 Antimicrobiano; 2 Sujeito a controle especial
                  NItem.ChildNodes['classeTerapeutica'].NodeValue     := DM.QXMLEntclasse_terap.AsString;
                  NItem.ChildNodes['registroMSMedicamento'].NodeValue := DM.QXMLEntregistro_ms.AsString;
                  NItem.ChildNodes['numeroLoteMedicamento'].NodeValue := DM.QXMLEntlote.AsString;
                  NItem.ChildNodes['quantidadeMedicamento'].NodeValue := DM.QXMLEntsngpc.AsString;
                  //versao 2.0 unidadeMedidaMedicamento - 1 caixa, 2 frascos
                  NItem.ChildNodes['unidadeMedidaMedicamento'].NodeValue := DM.QXMLEntunid.AsString;
               end;
               DM.QXMLEnt.Next;
            end;
            if DM.QXMLEntdt_entrada.Value <= 0 then
               raise Exception.Create('NF Nº ' + DM.q1.Fields[0].AsString + '-> Falta a data de entrada da NF.');
            ChildNodes['dataRecebimentoMedicamento'].NodeValue := FormatDateTime('yyyy-mm-dd', DM.QXMLEntdt_entrada.Value);
         end;
         DM.Q1.Next;
      end;
   end;
end;

procedure TfrmMain.Add_Saida_Medicamentos(node: IXMLNode);
var
   NData, NItem: IXMLNode;
   st_sql: string;
begin
   st_sql := BuscaTroca(SNGPC_SQL41, C_SOH, data_My(DtIni.Date));
   st_sql := BuscaTroca(st_sql, C_STX, data_My(DtFim.Date));
   DM.Pesquisar(DM.Q1, st_sql);

   if DM.Q1.fields[0].AsInteger > 0 then
      raise Exception.Create(DM.Q1.fields[0].AsString + SNGPC_C64);

   st_sql := BuscaTroca(SNGPC_SQL42, C_SOH, data_My(DtIni.Date));
   st_sql := BuscaTroca(st_sql, C_STX, data_My(DtFim.Date));
   DM.Pesquisar(DM.Q2, st_sql);

   if DM.Q2.isempty  then
   begin
      exit;
   end
   else
   while not DM.Q2.Eof do
   begin
      if DM.Q2.fields[0].AsString = EmptyStr then
         raise Exception.Create(SNGPC_C65);

      NData := node.AddChild('saidaMedicamentoVendaAoConsumidor');


      DM.Pesquisar(DM.QXMLRec, SNGPC_SQL43 + QuotedDuoStr(DM.Q2.fields[0].AsString));

      if DM.QXMLRecdata_prescr.Value > DtFim.Date then
         raise Exception.Create('Receita Nº ' + DM.QXMLRecnmro_notif.AsString +
                                'com data fora do período: ' +
                                 FormatDateTime('dd/mm/yyyy', DM.QXMLRecdata_prescr.Value)
         );

      st_sql := BuscaTroca(SNGPC_SQL44, C_SOH, DM.QXMLRecid.AsString);
      st_sql := BuscaTroca(st_sql, C_STX, data_My(DtIni.Date));
      st_sql := BuscaTroca(st_sql, C_ETX, data_My(DtFim.Date));
      DM.Pesquisar(DM.Q1, st_sql);

      with NData do
      begin
         ChildNodes['tipoReceituarioMedicamento'].NodeValue   := DM.QXMLRectipo_receita.AsString;
         ChildNodes['numeroNotificacaoMedicamento'].NodeValue := DM.QXMLRecnmro_notif.AsString;
         ChildNodes['dataPrescricaoMedicamento'].NodeValue    := FormatDateTime('yyyy-mm-dd', DM.QXMLRecdata_prescr.Value);

         ChildNodes['prescritorMedicamento'].ChildNodes['nomePrescritor'].NodeValue             := Trim(TiraAcento(DM.QXMLRecmedico.AsString));
         ChildNodes['prescritorMedicamento'].ChildNodes['numeroRegistroProfissional'].NodeValue := DM.QXMLRecnmro_prof.AsString;
         ChildNodes['prescritorMedicamento'].ChildNodes['conselhoProfissional'].NodeValue       := DM.QXMLRecconselho_prof.AsString;
         ChildNodes['prescritorMedicamento'].ChildNodes['UFConselho'].NodeValue                 := DM.QXMLRecuf.AsString;

         // [usoMedicamento] // 1 Humano// 2 Veterinario
         ChildNodes['usoMedicamento'].NodeValue := DM.QXMLRecuso_medic.AsString;


         ChildNodes['compradorMedicamento'].ChildNodes['nomeComprador'].NodeValue      := Trim(TiraAcento(DM.QXMLReccomprador.AsString));
         ChildNodes['compradorMedicamento'].ChildNodes['tipoDocumento'].NodeValue      := DM.QXMLRectipo_doc.AsString;
         ChildNodes['compradorMedicamento'].ChildNodes['numeroDocumento'].NodeValue    := DM.QXMLRecdoc.AsString;
         ChildNodes['compradorMedicamento'].ChildNodes['orgaoExpedidor'].NodeValue     := DM.QXMLRecorgao_exp.AsString;
         ChildNodes['compradorMedicamento'].ChildNodes['UFEmissaoDocumento'].NodeValue := DM.QXMLRecuf_doc.AsString;

         //2.0 paciente

         if (DM.QXMLRectipo_receita.AsInteger = 5) and(DM.QXMLRecconselho_prof.AsString <> 'CRMV') then
         begin
            ChildNodes['pacienteMedicamento'].ChildNodes['nome'].NodeValue         := Trim(TiraAcento(DM.QXMLRecpaciente_nome.AsString));
            ChildNodes['pacienteMedicamento'].ChildNodes['idade'].NodeValue        := DM.QXMLRecpaciente_idade.AsString;
            ChildNodes['pacienteMedicamento'].ChildNodes['unidadeIdade'].NodeValue := DM.QXMLRecpaciente_tipo_idade.AsString;
            ChildNodes['pacienteMedicamento'].ChildNodes['sexo'].NodeValue         := DM.QXMLRecpaciente_sexo.AsString;
            ChildNodes['pacienteMedicamento'].ChildNodes['cid'].NodeValue          := DM.QXMLRecpaciente_cid.AsString;
         end;

         while not DM.q1.eof do
         begin
            NItem := NData.AddChild('medicamentoVenda');

            NItem.ChildNodes['usoProlongado'].NodeValue         := DM.Q1.FieldByName('uso_prolong').asstring;// S/N/nulo
            NItem.ChildNodes['registroMSMedicamento'].NodeValue := DM.Q1.FieldByName('registro_ms').asstring;
            NItem.ChildNodes['numeroLoteMedicamento'].NodeValue := DM.Q1.FieldByName('lote').asstring;
            NItem.ChildNodes['quantidadeMedicamento'].NodeValue := DM.Q1.FieldByName('qtd').asstring;
            NItem.ChildNodes['unidadeMedidaMedicamento'].NodeValue := DM.Q1.FieldByName('unid').asstring; // unidadeMedidaMedicamento 1 caixa, 2 frasco
            DM.Q1.Next;
         end;
         ChildNodes['dataVendaMedicamento'].NodeValue :=  FormatDateTime('yyyy-mm-dd', DM.Q1.FieldByName('dt_saida').AsDateTime);
      end;
      DM.Q2.Next;
   end;
end;

procedure TfrmMain.Ajustar;
begin
   DM.QGerados.Close;
   DM.QGerados.Open;
   DtIni.Clear;
   DtFim.Clear;
   bar2.Hide;

   if DM.QGerados.IsEmpty then
   begin
      DM.Pesquisar(DM.Q1, SNGPC_SQL45);
      Data := DM.Q1.Fields[0].AsDateTime;
   end
   else
   begin
      DM.QGerados.First;
      Data := DM.QGeradosdt_fim.Value;
   end;

   if data + 1 >= date then
      exit;

   DtIni.Date := Data + 1;
   DtFim.Date := DtIni.Date + edInterv.Value;

   if DtFim.Date >= date then
      DtFim.Date := Date - 1;

   DtIni.SetFocus;
end;

procedure TfrmMain.Add_Perda_Medicamentos(node: IXMLNode);
var
   NData: IXMLNode;
   st_sql: string;
begin
   st_sql := BuscaTroca(SNGPC_SQL46, C_SOH, data_My(DtIni.Date));
   st_sql := BuscaTroca(st_sql, C_STX, data_My(DtFim.Date));
   DM.Pesquisar(DM.Q1, st_sql);

   if DM.Q1.IsEmpty then
      exit;

   while not DM.Q1.Eof do
   begin
      NData := node.AddChild('saidaMedicamentoPerda');
      with NData do
      begin
         ChildNodes['motivoPerdaMedicamento'].NodeValue := DM.Q1.FieldByName('motivo_perda').AsString;
         ChildNodes['medicamentoPerda'].ChildNodes['registroMSMedicamento'].NodeValue := DM.Q1.FieldByName('registro_ms').AsString;
         ChildNodes['medicamentoPerda'].ChildNodes['numeroLoteMedicamento'].NodeValue := DM.Q1.FieldByName('lote').AsString;
         ChildNodes['medicamentoPerda'].ChildNodes['quantidadeMedicamento'].NodeValue := DM.Q1.FieldByName('qtd').AsString;
         // unidadeMedidaMedicamento 1 caixa, 2 frascos
         ChildNodes['medicamentoPerda'].ChildNodes['unidadeMedidaMedicamento'].NodeValue := DM.Q1.FieldByName('unid').AsString;
         ChildNodes['dataPerdaMedicamento'].NodeValue  :=  FormatDateTime('yyyy-mm-dd', DM.Q1.FieldByName('dt_perda').AsDateTime);
      end;
      DM.Q1.Next;
   end;
end;




end.
