unit uGestaoReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, Data.DB, cxDBData, cxContainer, cxCurrencyEdit, cxDropDownEdit,
  cxGroupBox, cxRadioGroup, cxCheckBox, cxMaskEdit, cxCalendar, cxTextEdit,
  cxMemo, cxDBEdit, cxLabel, cxDBLabel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,FireDAC.Comp.Client,
  cxImageComboBox, cxNavigator, Vcl.ComCtrls, dxCore, cxDateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, dxSkinsCore,
  dxSkinCaramel, dxSkinscxPCPainter, dxBarBuiltInMenu;

type
  TfrmGestaoReceber = class(Tfrm)
    pgMain: TcxPageControl;
    TabBol: TcxTabSheet;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    tbvid: TcxGridDBColumn;
    tbvnossonmro: TcxGridDBColumn;
    tbvdata_process: TcxGridDBColumn;
    tbvdt_vencimento: TcxGridDBColumn;
    tbvdt_baixa_canc: TcxGridDBColumn;
    tbvbaixa: TcxGridDBColumn;
    tbvcancelado: TcxGridDBColumn;
    tbvvalor: TcxGridDBColumn;
    tbvjuros_dias: TcxGridDBColumn;
    tbvmulta: TcxGridDBColumn;
    tbvdesconto: TcxGridDBColumn;
    tbvvalor_pg: TcxGridDBColumn;
    tbvsacado_cnpj: TcxGridDBColumn;
    tbvsacado_nome: TcxGridDBColumn;
    pgDetBol: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBMemo1: TcxDBMemo;
    TabPesqBol: TcxTabSheet;
    rcb1: TcxRadioGroup;
    btnExibir1: TcxButton;
    TabBaixaBol: TcxTabSheet;
    Label11: TLabel;
    dt_Baixa: TcxDateEdit;
    edValor: TcxCurrencyEdit;
    Label12: TLabel;
    pgOpcBol: TcxPageControl;
    TabDataBol: TcxTabSheet;
    TabSacBol: TcxTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    Dt1: TcxDateEdit;
    Dt2: TcxDateEdit;
    Label10: TLabel;
    cmb1: TcxComboBox;
    rbem: TcxRadioButton;
    rbven: TcxRadioButton;
    rbbx: TcxRadioButton;
    Q1: TFDQuery;
    DS1: TDataSource;
    Q1nomebanco: TStringField;
    Q1agencia: TStringField;
    Q1conta: TStringField;
    Q1id: TIntegerField;
    TabnmroBol: TcxTabSheet;
    edPesqNmro: TcxTextEdit;
    Label16: TLabel;
    edPesqValor: TcxCurrencyEdit;
    Label17: TLabel;
    Label18: TLabel;
    mmObs: TcxMemo;
    Label19: TLabel;
    TabDeb: TcxTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    GrdCliDeb: TcxGrid;
    TbvCliDeb: TcxGridDBTableView;
    LvCliDeb: TcxGridLevel;
    TbvCliDebid: TcxGridDBColumn;
    TbvCliDebcnpj: TcxGridDBColumn;
    TbvCliDebnome: TcxGridDBColumn;
    TbvCliDebrazaosocial: TcxGridDBColumn;
    Panel3: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel9: TcxDBLabel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    GrdDeb: TcxGrid;
    TbvDeb: TcxGridDBTableView;
    LvDeb: TcxGridLevel;
    TbvDebid: TcxGridDBColumn;
    TbvDebtipo: TcxGridDBColumn;
    TbvDebnmro_doc: TcxGridDBColumn;
    TbvDebdt_vencimento: TcxGridDBColumn;
    TbvDebvalor: TcxGridDBColumn;
    cxSR1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GrdCred: TcxGrid;
    TbvCred: TcxGridDBTableView;
    LvCred: TcxGridLevel;
    TbvCredid: TcxGridDBColumn;
    TbvCredtipo: TcxGridDBColumn;
    TbvCreddt_process: TcxGridDBColumn;
    TbvCredvalor: TcxGridDBColumn;
    GrdDem: TcxGrid;
    tbvDem: TcxGridDBTableView;
    lvDem: TcxGridLevel;
    tbvDemvalor: TcxGridDBColumn;
    tbvDemtipo: TcxGridDBColumn;
    pmCred: TPopupMenu;
    CreditarNovoValor1: TMenuItem;
    ExtornarCrdito1: TMenuItem;
    pnlNewCred: TPanel;
    edNewCred: TcxCurrencyEdit;
    Label20: TLabel;
    Panel4: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    pmDeb: TPopupMenu;
    QuitarDbitos1: TMenuItem;
    BaixarDoc1: TMenuItem;
    Imprimir1: TMenuItem;
    TabCarne: TcxTabSheet;
    lblPesq: TcxLabel;
    edPesq: TcxTextEdit;
    GrdCarne: TcxGrid;
    tbvCarne: TcxGridDBTableView;
    LvCarne: TcxGridLevel;
    pgDetCarne: TcxPageControl;
    TabDetCarne: TcxTabSheet;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    cxDBLabel10: TcxDBLabel;
    cxDBLabel11: TcxDBLabel;
    cxDBLabel12: TcxDBLabel;
    cxDBLabel13: TcxDBLabel;
    cxDBLabel14: TcxDBLabel;
    cxDBLabel15: TcxDBLabel;
    cxDBLabel16: TcxDBLabel;
    cxDBMemo2: TcxDBMemo;
    TabPesqCarne: TcxTabSheet;
    rcb2: TcxRadioGroup;
    btnExibirCarne: TcxButton;
    pgOpcCarne: TcxPageControl;
    TabDataCarne: TcxTabSheet;
    Label28: TLabel;
    Label29: TLabel;
    Dt3: TcxDateEdit;
    Dt4: TcxDateEdit;
    rbemcarne: TcxRadioButton;
    rbvenccarne: TcxRadioButton;
    rbbxcarne: TcxRadioButton;
    TabSacCarne: TcxTabSheet;
    Label30: TLabel;
    TabNmroCarne: TcxTabSheet;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    edPesqNmroCarne: TcxTextEdit;
    edPesqValorCarne: TcxCurrencyEdit;
    TabBaixaCarne: TcxTabSheet;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Dt_BAixaCarne: TcxDateEdit;
    btnCancCarne: TcxButton;
    btnbxCarne: TcxButton;
    edValorCarne: TcxCurrencyEdit;
    mmObsCarne: TcxMemo;
    tbvCarneid: TcxGridDBColumn;
    tbvCarnedata_process: TcxGridDBColumn;
    tbvCarnedt_vencimento: TcxGridDBColumn;
    tbvCarnedt_baixa_canc: TcxGridDBColumn;
    tbvCarnebaixa: TcxGridDBColumn;
    tbvCarnecancelado: TcxGridDBColumn;
    tbvCarnenmro: TcxGridDBColumn;
    tbvCarnevalor: TcxGridDBColumn;
    tbvCarnevalor_pg: TcxGridDBColumn;
    cbMaos: TcxCheckBox;
    pmBol: TPopupMenu;
    DesfazerBaixa1: TMenuItem;
    DScmb2: TDataSource;
    cmb2: TcxImageComboBox;
    QCliCarne: TFDQuery;
    QCliCarneid: TIntegerField;
    QCliCarnecnpj: TStringField;
    QCliCarnenome: TStringField;
    QCliCarnerazaosocial: TStringField;
    QCliCarnetel1: TStringField;
    QCliCarnetel2: TStringField;
    QCliCarnefax: TStringField;
    QCliCarnecelular: TStringField;
    QCliCarnetipo_tel1: TStringField;
    QCliCarnetipo_tel2: TStringField;
    QCliCarnesituacao: TStringField;
    QCliCarnelogradouro: TStringField;
    QCliCarnenmro: TStringField;
    QCliCarnecomplem: TStringField;
    QCliCarnebairro: TStringField;
    QCliCarnecidade: TStringField;
    QCliCarneuf: TStringField;
    QCliCarnecep: TStringField;
    QCliCarneendcobranca: TStringField;
    QCliCarnelogradourocobranca: TStringField;
    QCliCarnenmrocobranca: TStringField;
    QCliCarnecomplemcobranca: TStringField;
    QCliCarnecidadecobranca: TStringField;
    QCliCarnebairrocobranca: TStringField;
    QCliCarnecepcobranca: TStringField;
    QCliCarneufcobranca: TStringField;
    QCliCarneie: TStringField;
    QCliCarneim: TStringField;
    QCliCarnerg: TStringField;
    QCliCarnesuspenso: TStringField;
    QCliCarnedevedor: TStringField;
    QCliCarneclientedesde: TDateField;
    QCliCarnepai: TStringField;
    QCliCarnemae: TStringField;
    QCliCarnereferencia: TMemoField;
    QCliCarnedatanasc: TDateField;
    QCliCarnelimite: TFloatField;
    QCliCarnehaver: TFloatField;
    QCliCarneobs: TMemoField;
    QCliCarnesaldo: TFloatField;
    QCliCarnedianasc: TIntegerField;
    QCliCarnemesnasc: TIntegerField;
    QCliCarneanonasc: TIntegerField;
    QCliCarneinfoutil: TStringField;
    QCliCarneatualizado: TStringField;
    QCliCarneemail: TStringField;
    QCliCarnecidade_cod: TIntegerField;
    QCliCarneindicacao: TIntegerField;
    QCliCarnecodmun: TStringField;
    QCliCarnecodmuncobranca: TStringField;
    QCliCarneusar_endsec_entrega: TStringField;
    QCliCarneusr_endsec_cobranca: TStringField;
    DSCliCarne: TDataSource;
    pmFat: TPopupMenu;
    DesfazerBaixaCarne: TMenuItem;
    Panel5: TPanel;
    Panel6: TPanel;
    btnCanc: TcxButton;
    btnBaixa: TcxButton;
    btnBaixaArq: TcxButton;
    btnGerarNovo: TcxButton;
    Panel7: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    ExibirPlanodeconta1: TMenuItem;
    cxLabel4: TcxLabel;
    ExibirAssociao1: TMenuItem;
    cxDBLabel17: TcxDBLabel;
    cxDBLabel18: TcxDBLabel;
    Enviarporemail1: TMenuItem;
    Parcelar1: TMenuItem;
    tbBaixaArq: TcxTabSheet;
    cmbBoleto: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    btnLerArq: TcxButton;
    Memo1: TMemo;
    cxButton3: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnExibir1Click(Sender: TObject);
    procedure cmb1Click(Sender: TObject);
    procedure Dt1PropertiesChange(Sender: TObject);
    procedure rbemClick(Sender: TObject);
    procedure TabBolShow(Sender: TObject);
    procedure edPesqNmroPropertiesChange(Sender: TObject);
    procedure edPesqValorPropertiesChange(Sender: TObject);
    procedure tbvSelectionChanged(Sender: TcxCustomGridTableView);
    procedure btnBaixaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure TabDebShow(Sender: TObject);
    procedure TbvCliDebidHeaderClick(Sender: TObject);
    procedure pmCredPopup(Sender: TObject);
    procedure CreditarNovoValor1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure ExtornarCrdito1Click(Sender: TObject);
    procedure btnCancClick(Sender: TObject);
    procedure btnGerarNovoClick(Sender: TObject);
    procedure BaixarDoc1Click(Sender: TObject);
    procedure TabCarneShow(Sender: TObject);
    procedure btnExibirCarneClick(Sender: TObject);
    procedure tbvCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure pmBolPopup(Sender: TObject);
    procedure DesfazerBaixa1Click(Sender: TObject);
    procedure rcb1PropertiesChange(Sender: TObject);
    procedure rcb2PropertiesChange(Sender: TObject);
    procedure cmb2PropertiesChange(Sender: TObject);
    procedure Dt3PropertiesChange(Sender: TObject);
    procedure rbemcarneClick(Sender: TObject);
    procedure TabNmroCarneShow(Sender: TObject);
    procedure TabDetCarneShow(Sender: TObject);
    procedure btnbxCarneClick(Sender: TObject);
    procedure DesfazerBaixaCarneClick(Sender: TObject);
    procedure btnCancCarneClick(Sender: TObject);
    procedure cxLabel1Click(Sender: TObject);
    procedure cxLabel2Click(Sender: TObject);
    procedure cxLabel3Click(Sender: TObject);
    procedure ExibirPlanodeconta1Click(Sender: TObject);
    procedure cxLabel4Click(Sender: TObject);
    procedure ExibirAssociao1Click(Sender: TObject);
    procedure Enviarporemail1Click(Sender: TObject);
    procedure Parcelar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure QuitarDbitos1Click(Sender: TObject);
    procedure tbvCarneCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnBaixaArqClick(Sender: TObject);
    procedure tbBaixaArqEnter(Sender: TObject);
    procedure btnLerArqClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGestaoReceber: TfrmGestaoReceber;
  coluna : TcxGridDBColumn;
implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, uMD5Print, uBoletoAvulso, udm_ini,
  uCadPlanoContas, uAssoc, uEnvioBol, uParcelamento, uQuita;

procedure TfrmGestaoReceber.BaixarDoc1Click(Sender: TObject);
begin
   if DM.QFinanDebtipo.AsString = 'B' then
   begin
      pgMain.ActivePage := TabBol;
      DM.QFinan_bol_Emit.Locate('id', DM.QFinanDebid_movi.Value, []);
   end
   else
   if DM.QFinanDebtipo.AsString = 'C' then
   begin
      pgMain.ActivePage := TabCarne;
      DM.QFinan_Carne.Locate('id', DM.QFinanDebid_movi.Value, []);
   end;
end;

procedure TfrmGestaoReceber.btnBaixaArqClick(Sender: TObject);
begin
   pgDetBol.ActivePage := tbBaixaArq;
end;

procedure TfrmGestaoReceber.btnBaixaClick(Sender: TObject);
var
  i, ARowIndex: integer;
  s: string;
  ARowInfo: TcxRowInfo;
  b, b1: boolean;
  Dif: Currency;
begin
  if (dt_Baixa.Date <=0)or(dt_baixa.Date > Date) then
     raise exception.Create(C_236);

  if (mmObs.Text = C_ST_VAZIO)and(MessageBox(0, C_248, C_237, MB_ICONQUESTION or MB_OKCANCEL) = idCancel) then
     exit;

  b     := False;
  b1    := False;
  dif   := 0;

  i := tbv.DataController.GetSelectedCount;

  if i > 1 then
   cbMaos.Clear;

  if i = 1 then
  begin
     if edValor.Value <= 0 then
        raise exception.Create(C_92);

     dif := DM.QFinan_bol_Emitvalor.Value - edValor.Value;

     if dif < 0 then //pagou a maior...
     begin
        if (MessageBox(0, PWideChar('O valor informado é maior do que o valor do boleto.'+
                           C_CRLF + 'Deseja computar o valor de ' +
                           FloatToStrF(0-Dif, ffcurrency,15,2) +
                           ' como juros?'), C_237,
                           MB_ICONQUESTION or MB_OKCANCEL) = idCancel) then
        exit;
     end
     else
     if dif > 0 then //pagou a menor...
     begin
        if (MessageBox(0, PWideChar('O valor informado é menor do que o valor do boleto.'+
                           C_CRLF + 'Deseja computar o valor de ' +
                           FloatToStrF(Dif, ffcurrency,15,2) +
                           ' como desconto?'), C_237,
                           MB_ICONQUESTION or MB_OKCANCEL) = idCancel) then
        exit;
     end;
  end;

  with tbv.DataController do
  begin
    for i := 0 to Pred(GetSelectedCount) do
    begin
      ARowIndex := GetSelectedRowIndex(i); // retorna o índice da linha selecionada
      ARowInfo  := GetRowInfo(ARowIndex); // retorna informação da linha selecionada
      s         := s + (VarToStr(Values[ARowInfo.RecordIndex, Tbvid.index])) + ',';
      b         := (VarToStr(Values[ARowInfo.RecordIndex, Tbvbaixa.index])) = 'S';
      b1        := (VarToStr(Values[ARowInfo.RecordIndex, Tbvcancelado.index])) = 'S';
    end;

    if b then
      raise exception.Create(C_260)
    else
    if b1 then
      raise exception.Create(C_261);
  end;

  delete(s,length(s), 1);

  if (MessageBox(0, PWideChar(C_262 + s + '?'), C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
   exit;

   DM.QFinan_bol_Emit.DisableControls;
   DM.QFinan_bol_Emit.Open(C_SQL92 + s + ')');

   while not DM.QFinan_bol_Emit.Eof do
   begin //baixa o boleto
      DM.QFinan_bol_Emit.Edit;
      DM.QFinan_bol_Emitdt_baixa_canc.Value := dt_Baixa.Date;
      DM.QFinan_bol_Emitvalor_pg.Value      := DM.QFinan_bol_Emitvalor.Value - dif; //a operação é inversa
      DM.QFinan_bol_Emitbaixa.Value         := 'S';

      if Dif < 0 then  //juros
         DM.QFinan_bol_Emitmulta.Value := 0-Dif
      else    //desconto
         DM.QFinan_bol_Emitdesconto.Value := Dif;

      DM.QFinan_bol_Emit.Post;
      //entra no caixa se foi recebido em mãos (um boleto selecionado)
      if cbMaos.Checked then
      begin
         DM.Inserir_Caixa('QBL', DM.QFinan_bol_Emitnossonmro.AsString, DM.QFinan_bol_Emitvalor_pg.Value, DM.QFinan_bol_Emitid.Value);
         //informe ao plano de contas
         DM.Q2.Open('select * from finan_centro_custo_assoc where operacao=''BC''');

         if not DM.Q2.IsEmpty then
            DM.Inserir_Plano_de_contas(DM.Q2.FieldByName('codigo').AsString,
                                       DM.QFinan_bol_Emitnossonmro.AsString,
                                       DM.Q2.FieldByName('descricao').AsString,
                                       dt_Baixa.Date,
                                       dt_Baixa.Date,
                                       DM.QFinan_bol_Emitvalor_pg.Value,
                                       DM.QFinan_bol_Emitid.Value
            );
      end
      else
      begin //entra na conta bancária
         DM.Q1.Open(C_SQL93 + QuotedStr(DM.QFinan_bol_Emitboleto.AsString));

         DM.Inserir_Movi_Banco(DM.QFinan_bol_Emitid.Value,
                               DM.Q1.Fields[0].AsInteger,
                               'BOL',
                               'C',
                               DM.QFinan_bol_Emitvalor_pg.Value,
                               dt_Baixa.Date,
                               DM.QFinan_bol_Emitnossonmro.AsString,
                               'Recebimento boleto nº ' + DM.QFinan_bol_Emitnossonmro.AsString
         );
      end;
      //quita o débito
      DM.Q3.Open(C_SQL94 + QuotedStr(DM.QFinan_bol_Emitid.AsString));

      if not DM.Q3.IsEmpty then
      begin
         DM.Q3.Edit;
         DM.Q3.FieldByName('dt_baixa').AsDateTime      := dt_Baixa.Date;
         DM.Q3.FieldByName('hora_baixa').AsString      := FormatDateTime('hh:nn', now);
         DM.Q3.FieldByName('valor_pg').AsCurrency      := DM.QFinan_bol_Emitvalor_pg.AsCurrency;
         DM.Q3.FieldByName('operador').AsInteger       := DM.Operador.ID;
         DM.Q3.FieldByName('obs').AsString             := DM.QFinanDebobs.AsString + mmObs.Text;
         DM.Q3.Post;
      end;
      DM.QFinan_bol_Emit.Next;
   end;

   DM.QFinan_bol_Emit.EnableControls;
   DM.QFinan_bol_Emit.Open(C_SQL95);
   mmObs.Lines.Clear;
   edValor.Clear;
   cbMaos.Clear;
   ShowMessage(C_263);
end;

procedure TfrmGestaoReceber.btnbxCarneClick(Sender: TObject);
var
  i, ARowIndex: integer;
  s: string;
  ARowInfo: TcxRowInfo;
  b, b1: boolean;
  Dif: Currency;
  comprovante: TStringList;
begin
  if (Dt_BAixaCarne.Date <=0)or(Dt_BAixaCarne.Date > Date) then
     raise exception.Create(C_236);

  if (mmObsCarne.Text = C_ST_VAZIO)and(MessageBox(0, C_248, C_237, MB_ICONQUESTION or MB_OKCANCEL) = idCancel) then
     exit;

  b     := False;
  b1    := False;
  dif   := 0;

  i := tbvCarne.DataController.GetSelectedCount;

  if i = 1 then
  begin
     if edValorCarne.Value <= 0 then
        raise exception.Create(C_92);

     dif := DM.QFinan_Carnevalor.Value - edValorCarne.Value;

     if dif < 0 then //pagou a maior...
     begin
        if (MessageBox(0, PWideChar('O valor informado é maior do que o valor da fatura.'+
                           C_92 + 'Deseja computar o valor de ' +
                           FloatToStrF(0-Dif, ffcurrency,15,2) +
                           ' como multa?'), 'ATENÇÃO',
                           MB_ICONQUESTION or MB_OKCANCEL) = idCancel) then
        exit;
     end
     else
     if dif > 0 then //pagou a menor...
     begin
        if (MessageBox(0, PWideChar('O valor informado é menor do que o valor da fatura.'+
                           C_92 + 'Deseja computar o valor de ' +
                           FloatToStrF(Dif, ffcurrency,15,2) +
                           ' como desconto?'), 'ATENÇÃO',
                           MB_ICONQUESTION or MB_OKCANCEL) = idCancel) then
        exit;
     end;
  end;

  with tbvCarne.DataController do
  begin
    for i := 0 to Pred(GetSelectedCount) do
    begin
      ARowIndex := GetSelectedRowIndex(i); // retorna o índice da linha selecionada
      ARowInfo  := GetRowInfo(ARowIndex); // retorna informação da linha selecionada
      s         := s + (VarToStr(Values[ARowInfo.RecordIndex, TbvCarneid.index])) + ',';
      b         := (VarToStr(Values[ARowInfo.RecordIndex, TbvCarnebaixa.index])) = 'S';
      b1        := (VarToStr(Values[ARowInfo.RecordIndex, TbvCarnecancelado.index])) = 'S';
    end;

    if s = '' then
      raise Exception.Create('Selecione ao menos um registro.');

    if b then
      raise exception.Create(C_260);

    if b1 then
      raise exception.Create(C_261);
  end;

  delete(s,length(s), 1);

  if (MessageBox(0, PWideChar(C_262 + s + '?'), C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
   exit;

   DM.QFinan_Carne.DisableControls;
   DM.QFinan_Carne.Open(C_SQL96 + s + ')');

   comprovante := TStringList.Create;
   comprovante.Append(QCliCarnecnpj.AsString);//CNPJ
   comprovante.Append(QCliCarnerazaosocial.AsString);//razao social
   comprovante.Append(QCliCarnelogradourocobranca.AsString + ' ' + QCliCarnenmrocobranca.AsString);//endereço

   while not DM.QFinan_Carne.Eof do
   begin //baixa a fatura
      DM.QFinan_Carne.Edit;
      DM.QFinan_Carnedt_baixa_canc.Value := Dt_BAixaCarne.Date;
      DM.QFinan_Carnevalor_pg.Value      := DM.QFinan_Carnevalor.Value - dif; //a operação é inversa
      DM.QFinan_Carnebaixa.Value         := 'S';

      if Dif < 0 then  //juros
         DM.QFinan_Carnemulta.Value := 0-Dif
      else    //desconto
         DM.QFinan_Carnedesconto.Value := Dif;

      DM.QFinan_Carne.Post;
      //entra no caixa
      DM.Inserir_Caixa('QFT', DM.QFinan_Carnenmro.AsString, DM.QFinan_Carnevalor_pg.Value, DM.QFinan_Carneid.Value);
      //informe ao plano de contas
      DM.Q2.Open('select * from finan_centro_custo_assoc where operacao=''BF''');

      if not DM.Q2.IsEmpty then
         DM.Inserir_Plano_de_contas(DM.Q2.FieldByName('codigo').AsString,
                                    DM.QFinan_Carnenmro.AsString,
                                    DM.Q2.FieldByName('descricao').AsString,
                                    Dt_BAixaCarne.Date,
                                    Dt_BAixaCarne.Date,
                                    DM.QFinan_Carnevalor_pg.Value,
                                    DM.QFinan_Carneid.Value
         );
      //quita o débito
      DM.Q3.Open(C_SQL97 + QuotedStr(DM.QFinan_Carneid.AsString));

      if not DM.Q3.IsEmpty then
      begin
         DM.Q3.Edit;
         DM.Q3.FieldByName('dt_baixa').AsDateTime      := Dt_BAixaCarne.Date;
         DM.Q3.FieldByName('hora_baixa').AsString      := FormatDateTime('hh:nn', now);
         DM.Q3.FieldByName('valor_pg').AsCurrency      := DM.QFinan_Carnevalor_pg.AsCurrency;
         DM.Q3.FieldByName('operador').AsInteger       := DM.Operador.ID;
         DM.Q3.FieldByName('obs').AsString             := DM.QFinanDebobs.AsString + mmObsCarne.Text;
         DM.Q3.Post;
      end;

      comprovante.Append(Number(FloatToStr(DM.QFinan_Carnevalor_pg.Value * 100)) + '|' +DM.QFinan_Carnenmro.AsString);
      DM.QFinan_Carne.Next;
   end;

   comprovante.SaveToFile(Aqui(C_TXT_FILE, 'quitação.txt'));
   comprovante.Free;
   DM.QFinan_Carne.EnableControls;
   DM.QFinan_Carne.Open(C_SQL98);
   mmObsCarne.Lines.Clear;
   edValorCarne.Clear;
   ShowMessage(C_263);
end;

procedure TfrmGestaoReceber.btnCancCarneClick(Sender: TObject);
var
  i, ARowIndex: integer;
  s: string;
  ARowInfo: TcxRowInfo;
  b, b1: boolean;
begin
  if (Dt_BAixaCarne.Date <=0)or(Dt_BAixaCarne.Date > Date) then
     raise exception.Create(C_236);

  if (mmObsCarne.Text = C_ST_VAZIO)and(MessageBox(0, C_248, C_237, MB_ICONQUESTION or MB_OKCANCEL) = idCancel) then
     exit;

  b     := False;
  b1    := False;

  with tbvCarne.DataController do
  begin
    for i := 0 to Pred(GetSelectedCount) do
    begin
      ARowIndex := GetSelectedRowIndex(i); // retorna o índice da linha selecionada
      ARowInfo  := GetRowInfo(ARowIndex); // retorna informação da linha selecionada
      s         := s + (VarToStr(Values[ARowInfo.RecordIndex, tbvCarneid.index])) + ',';
      b         := (VarToStr(Values[ARowInfo.RecordIndex, tbvCarnebaixa.index])) = 'S';
      b1        := (VarToStr(Values[ARowInfo.RecordIndex, tbvCarnecancelado.index])) = 'S';
    end;

    if b then
      raise exception.Create(C_260)
    else
    if b1 then
      raise exception.Create(C_261);
  end;

  delete(s,length(s), 1);

  if (MessageBox(0, PWideChar(C_266 + s + '?'), C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
   exit;

   DM.QFinan_Carne.DisableControls;
   DM.QFinan_Carne.Open(C_SQL96 + s + ')');

   while not DM.QFinan_Carne.Eof do
   begin //baixa o boleto
      DM.QFinan_Carne.Edit;
      DM.QFinan_Carnedt_baixa_canc.Value := Dt_BAixaCarne.Date;
      DM.QFinan_Carnevalor_pg.Value      := 0;
      DM.QFinan_Carnecancelado.Value     := 'S';
      DM.QFinan_Carne.Post;

      //Baixa o débito

      DM.Q3.Open(C_SQL97 + QuotedStr(DM.QFinan_Carneid.AsString));

      if not DM.Q3.IsEmpty then
      begin
         DM.Q3.Edit;
         DM.Q3.FieldByName('dt_baixa').AsDateTime      := Dt_BAixaCarne.Date;
         DM.Q3.FieldByName('hora_baixa').AsString      := FormatDateTime('hh:nn', now);
         DM.Q3.FieldByName('valor_pg').AsCurrency      := DM.QFinan_Carnevalor_pg.AsCurrency;
         DM.Q3.FieldByName('operador').AsInteger       := DM.Operador.ID;
         DM.Q3.FieldByName('obs').AsString             := DM.QFinanDebobs.AsString + mmObsCarne.Text;
         DM.Q3.Post;
      end;

      DM.QFinan_Carne.Next;
   end;

   DM.QFinan_Carne.EnableControls;
   DM.QFinan_Carne.Open(C_SQL98);
   mmObsCarne.Lines.Clear;
   ShowMessage(C_267);
end;

procedure TfrmGestaoReceber.btnCancClick(Sender: TObject);
var
  i, ARowIndex: integer;
  s: string;
  ARowInfo: TcxRowInfo;
  b, b1: boolean;
begin
  if (dt_Baixa.Date <=0)or(dt_baixa.Date > Date) then
     raise exception.Create(C_236);

  if (mmObs.Text = C_ST_VAZIO)and(MessageBox(0, C_248, C_237, MB_ICONQUESTION or MB_OKCANCEL) = idCancel) then
     exit;

  b     := False;
  b1    := False;

  with tbv.DataController do
  begin
    for i := 0 to Pred(GetSelectedCount) do
    begin
      ARowIndex := GetSelectedRowIndex(i); // retorna o índice da linha selecionada
      ARowInfo  := GetRowInfo(ARowIndex); // retorna informação da linha selecionada
      s         := s + (VarToStr(Values[ARowInfo.RecordIndex, Tbvid.index])) + ',';
      b         := (VarToStr(Values[ARowInfo.RecordIndex, Tbvbaixa.index])) = 'S';
      b1        := (VarToStr(Values[ARowInfo.RecordIndex, Tbvcancelado.index])) = 'S';
    end;

    if b then
      raise exception.Create(C_260)
    else
    if b1 then
      raise exception.Create(C_261);
  end;

  delete(s,length(s), 1);

  if (MessageBox(0, PWideChar(C_266 + s + '?'), C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
   exit;

   DM.QFinan_bol_Emit.DisableControls;
   DM.QFinan_bol_Emit.Open(C_SQL92 + s + ')');

   while not DM.QFinan_bol_Emit.Eof do
   begin //baixa o boleto
      DM.QFinan_bol_Emit.Edit;
      DM.QFinan_bol_Emitdt_baixa_canc.Value := dt_Baixa.Date;
      DM.QFinan_bol_Emitvalor_pg.Value      := 0;
      DM.QFinan_bol_Emitcancelado.Value     := 'S';
      DM.QFinan_bol_Emit.Post;

      //Baixa o débito
      DM.Q3.Open(C_SQL94 + QuotedStr(DM.QFinan_bol_Emitid.AsString));

      if not DM.Q3.IsEmpty then
      begin
         DM.Q3.Edit;
         DM.Q3.FieldByName('dt_baixa').AsDateTime      := dt_Baixa.Date;
         DM.Q3.FieldByName('hora_baixa').AsString      := FormatDateTime('hh:nn', now);
         DM.Q3.FieldByName('valor_pg').AsCurrency      := 0;
         DM.Q3.FieldByName('operador').AsInteger       := DM.Operador.ID;
         DM.Q3.FieldByName('obs').AsString             := DM.QFinanDebobs.AsString + mmObs.Text;
         DM.Q3.Post;
      end;

      DM.QFinan_bol_Emit.Next;
   end;

   DM.QFinan_bol_Emit.EnableControls;
   DM.QFinan_bol_Emit.Open(C_SQL95);
   mmObs.Lines.Clear;
   ShowMessage(C_267);
end;

procedure TfrmGestaoReceber.btnExibir1Click(Sender: TObject);
var
   filtro: String;
begin
   filtro := C_ST_VAZIO;

   if pgOpcBol.ActivePage = TabDataBol then
   begin
      if (Dt1.Date <=0) or (Dt1.Date > Dt2.Date) then
         raise Exception.Create(C_264);

      if rbven.Checked then
         filtro := 'dt_vencimento between ' + data_my(Dt1.Date) + ' and ' + data_My(Dt2.Date)
      else
      if rbem.Checked then
         filtro := 'data_process between ' + data_my(Dt1.Date) + ' and ' + data_My(Dt2.Date)
      else
         filtro := 'dt_baixa_canc between ' + data_my(Dt1.Date) + ' and ' + data_My(Dt2.Date);

      filtro := filtro + 'and ' + rcb1.Properties.Items[rcb1.ItemIndex].Value;
   end
   else
   if pgOpcBol.ActivePage = TabSacBol then
   begin
      if cmb1.Text <> C_ST_VAZIO then
         filtro := 'sacado_nome=' + Texto_Mysql(cmb1.Text) + ' and ' + rcb1.Properties.Items[rcb1.ItemIndex].Value;
   end
   else
   if pgOpcBol.ActivePage = TabnmroBol then
   begin
      if Trim(edPesqNmro.Text) = C_ST_VAZIO then
      begin
         FormatSettings.DecimalSeparator := '.';
         filtro           := 'valor=' + Texto_Mysql(edPesqValor.Value) + ' and ' + rcb1.Properties.Items[rcb1.ItemIndex].Value;
         FormatSettings.DecimalSeparator := ',';
      end
      else
      begin
         filtro := 'nossonmro=' + Texto_Mysql(edPesqNmro.Text);
      end;
   end;

   if filtro = C_ST_VAZIO then
      exit;

   DM.QFinan_bol_Emit.Open('select * from finan_boleto_emitido where ' + filtro);
end;

procedure TfrmGestaoReceber.btnExibirCarneClick(Sender: TObject);
var
   filtro: String;
begin
   filtro := C_ST_VAZIO;

   if pgOpcCarne.ActivePage = TabDataCarne then
   begin
      if (Dt3.Date <=0) or (Dt3.Date > Dt4.Date) then
         raise Exception.Create('Período incorreto.');

      if rbven.Checked then
         filtro := 'dt_vencimento between ' + data_my(Dt3.Date) + ' and ' + data_My(Dt4.Date)
      else
      if rbem.Checked then
         filtro := 'data_process between ' + data_my(Dt3.Date) + ' and ' + data_My(Dt4.Date)
      else
         filtro := 'dt_baixa_canc between ' + data_my(Dt3.Date) + ' and ' + data_My(Dt4.Date);

      filtro := filtro + 'and ' + rcb2.Properties.Items[rcb2.ItemIndex].Value;
   end
   else
   if pgOpcCarne.ActivePage = TabSacCarne then
   begin
      if cmb2.Text <> C_ST_VAZIO then
         filtro := 'sacado=' + Texto_Mysql(cmb2.Properties.Items[cmb2.ItemIndex].Value) + ' and ' + rcb2.Properties.Items[rcb2.ItemIndex].Value;
   end
   else
   if pgOpcCarne.ActivePage = TabNmroCarne then
   begin
      if Trim(edPesqNmroCarne.Text) = C_ST_VAZIO then
      begin
         FormatSettings.DecimalSeparator := '.';
         filtro           := 'valor=' + Texto_Mysql(edPesqValorCarne.Value) + ' and ' + rcb2.Properties.Items[rcb2.ItemIndex].Value;
         FormatSettings.DecimalSeparator := ',';
      end
      else
      begin
         filtro := 'nmro=' + Texto_Mysql(edPesqNmroCarne.Text);
      end;
   end;

   if filtro = C_ST_VAZIO then
      exit;

   DM.QFinan_Carne.Open('select * from finan_carne_emitido where ' + filtro);
end;

procedure TfrmGestaoReceber.cmb1Click(Sender: TObject);
begin
   if DM.QFinan_bol_Emit.Active then
      DM.QFinan_bol_Emit.Close;
end;

procedure TfrmGestaoReceber.cmb2PropertiesChange(Sender: TObject);
begin
   DM.QFinan_Carne.Close;
end;

procedure TfrmGestaoReceber.CreditarNovoValor1Click(Sender: TObject);
begin
   pnlNewCred.Show;
   edNewCred.Clear;
   edNewCred.SetFocus;
end;

procedure TfrmGestaoReceber.cxButton1Click(Sender: TObject);
begin
   pnlNewCred.Hide;
end;

procedure TfrmGestaoReceber.cxButton2Click(Sender: TObject);
var
   comprovante: TStringList;
begin
   if edNewCred.Value <=0 then
    raise Exception.Create(C_202);

   if (MessageBox(0, 'Confirma o novo crédito?', C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;

   DM.QFinanCred.Insert;
   DM.QFinanCredtipo.Value       := 'M';//R = remanescente, M=Manual
   DM.QFinanCreddt_process.Value := Date;
   DM.QFinanCredvalor.Value      := edNewCred.Value;
   DM.QFinanCredoperador.Value   := DM.Operador.ID;
   DM.QFinanCredcliente.Value    := DM.QFinan_CliDebid.Value;
   DM.QFinanCred.Post;

   comprovante := TStringList.Create;
   comprovante.Append(DM.QFinan_CliDebcnpj.AsString);//CNPJ
   comprovante.Append(DM.QFinan_CliDebrazaosocial.AsString);//razao social
   comprovante.Append(''); //endereço
   comprovante.Append(Number(FloatToStr(DM.QFinanCredvalor.Value * 100)));
   comprovante.SaveToFile(Aqui(C_TXT_FILE, 'crédito.txt'));
   comprovante.Free;

   pnlNewCred.Hide;
   DM.QFinanDeb.Refresh;
   DM.QFinanCred.Refresh;
   DM.QFinanTotDebCred.Refresh;

   DM.Inserir_Caixa('CRC', '(manual)', DM.QFinanCredvalor.Value, DM.QFinanCredid.Value);

   //informe ao plano de contas
   DM.Q2.Open('select * from finan_centro_custo_assoc where operacao=''CR''');

   if not DM.Q2.IsEmpty then
      DM.Inserir_Plano_de_contas(DM.Q2.FieldByName('codigo').AsString,
                                 LFill(DM.QFinanCredid.AsString,6,'0') + '-' + LFill(DM.QFinanCredcliente.AsString, 4,'0'),
                                 DM.Q2.FieldByName('descricao').AsString,
                                 Date,
                                 Date,
                                 DM.QFinanCredvalor.Value,
                                 DM.QFinanCredid.Value
      );
end;

procedure TfrmGestaoReceber.cxButton3Click(Sender: TObject);
begin
   pgDetBol.ActivePage := tabBaixaBol;
end;

procedure TfrmGestaoReceber.cxLabel1Click(Sender: TObject);
begin
   ShowMessage('Você informará a associação para recebimento em cash.' + C_CR +
               'Para recebimento via operação bancária, faça a associação na tela'  + C_CR +
               'CADASTRO MOVIM. BANC.' + C_CR +
               'no registro de código "BOL", referente a conta geradora dos boletos.'
   );

   frmCadPlanoContas := TfrmCadPlanoContas.Create(Self);
   frmCadPlanoContas.btnAss.Tag := 100;//PARA TESTE
   frmCadPlanoContas.ShowModal;

   if DM.g_str_coringa <> C_ST_VAZIO then
   begin
      frmAssoc := TfrmAssoc.Create(Self);
      frmAssoc.Operacao := 'BC';//baixa de boleto cash
      frmAssoc.Showmodal;
   end;
end;

procedure TfrmGestaoReceber.cxLabel2Click(Sender: TObject);
begin
   ShowMessage('Você deverá informar o plano de conta que será associado a esta operação.');

   frmCadPlanoContas := TfrmCadPlanoContas.Create(Self);
   frmCadPlanoContas.btnAss.Tag := 100;
   frmCadPlanoContas.ShowModal;

   if DM.g_str_coringa <> C_ST_VAZIO then
   begin
      frmAssoc := TfrmAssoc.Create(Self);
      frmAssoc.Operacao := 'BF';//baixa de fatura
      frmAssoc.Showmodal;
   end;
end;

procedure TfrmGestaoReceber.cxLabel3Click(Sender: TObject);
begin
   ShowMessage('Você deverá informar o plano de conta que será associado a esta operação.' );

   frmCadPlanoContas := TfrmCadPlanoContas.Create(Self);
   frmCadPlanoContas.btnAss.Tag := 100;
   frmCadPlanoContas.ShowModal;

   if DM.g_str_coringa <> C_ST_VAZIO then
   begin
      frmAssoc := TfrmAssoc.Create(Self);
      frmAssoc.Operacao := 'CR';//credito concedido
      frmAssoc.Showmodal;
   end;
end;

procedure TfrmGestaoReceber.cxLabel4Click(Sender: TObject);
begin
   DM.Exibir_Plano('CR');
end;

procedure TfrmGestaoReceber.btnGerarNovoClick(Sender: TObject);
begin
   if tbv.DataController.GetSelectedCount <> 1 then
      raise Exception.Create('Apenas um boleto pode ser processado de cada vez.');

   DM.Q1.Open('select * from finan_boleto_emitido where id=' + Texto_Mysql(DM.QFinan_bol_Emitid.Value));

   mmObs.Lines.Text := 'BOLETO CANCELADO E SUBSTITUIDO.';
   dt_Baixa.Date := Date;
   btnCanc.Click; //cancela o boleto atual e abre a tela do boleto avulso para gerar novo documento

   frmBoletoAvulso := TfrmBoletoAvulso.Create(self);

   with frmBoletoAvulso do
   begin
      edcnpj.Text       := DM.Q1.FieldByName('sacado_cnpj').AsString;
      ednome.Text       := DM.Q1.FieldByName('sacado_nome').AsString;
      edlogradouro.Text := DM.Q1.FieldByName('sacado_logradouro').AsString;
      edbairro.Text     := DM.Q1.FieldByName('sacado_bairro').AsString;
      ednmro.Text       := DM.Q1.FieldByName('sacado_nmro').AsString;
      edmunic.Text      := DM.Q1.FieldByName('sacado_municipio').AsString;
      eduf.Text         := DM.Q1.FieldByName('sacado_uf').AsString;
      edCep.Text        := DM.Q1.FieldByName('sacado_cep').AsString;
      edmail.Text       := DM.Q1.FieldByName('sacado_email').AsString;
      dtDoc.Date        := Date;
      edValor.Value     := DM.Q1.FieldByName('valor').AsCurrency;
      edInstr1.Text     := DM.Q1.FieldByName('linha1').AsString;
      edInstr2.Text     := DM.Q1.FieldByName('linha2').AsString;
      btnCad.Tag        := DM.QFinan_CliDebid.AsInteger; //associa a tag do botão para gerar o débito se for cliente...
      ShowModal;
   end;
   DM.QFinan_bol_Emit.Open(C_SQL95);
end;

procedure TfrmGestaoReceber.btnLerArqClick(Sender: TObject);
var
   i: integer;
begin
   if cmbBoleto.Text = C_ST_VAZIO then
      raise Exception.Create('Informe o boleto a gerar.');

   DM.LerArqRetorno;

   for i := 0 to DM.Boleto1.ListadeBoletos.Count - 1 do
   begin
      with DM.Boleto1.ListadeBoletos[i] do
      begin
         if Trim(DescricaoMotivoRejeicaoComando.Text) <> '' then
            Memo1.Lines.Add(NumeroDocumento + ' - ' + SeuNumero + '- ' + DescricaoMotivoRejeicaoComando.Text);

      //   memo1.Lines.Add(NumeroDocumento + ' - ' + SeuNumero + ' - ' + FloatToStr(ValorDocumento)+ ' - ' +
         //                FloatToStr(ValorRecebido) + ' - ' + DateToStr(DataOcorrencia)+ ' - ' + DateToStr(DataCredito));

         if DM.QFinan_bol_Emit.Locate('nossonmro', InttoStr(StrToInt(SeuNumero)), []) then
         begin
            DM.QFinan_bol_Emit.Edit;
            DM.QFinan_bol_Emitbaixa.Value := 'P';

            if ValorRecebido > 0 then
            begin
               DM.QFinan_bol_Emitbaixa.Value              := 'S';
               DM.QFinan_bol_Emitvalor_pg.Value           := ValorRecebido;
               DM.QFinan_bol_Emitmulta.Value              := ValorMoraJuros;
               DM.QFinan_bol_Emitdesconto.Value           := ValorDesconto + ValorAbatimento;
               DM.QFinan_bol_Emitdt_baixa_canc.AsDateTime := DataCredito;
            end;
            DM.QFinan_bol_Emit.Post;
         end;
      end;
   end;
end;

procedure TfrmGestaoReceber.DesfazerBaixa1Click(Sender: TObject);
begin
   if (MessageBox(0, C_265, C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;

   //reverte debito

   DM.Q3.Open(C_SQL94 + QuotedStr(DM.QFinan_bol_Emitid.AsString));

   if not DM.Q3.IsEmpty then
   begin
      DM.Q3.Edit;
      DM.Q3.FieldByName('dt_baixa').AsVariant       := null;
      DM.Q3.FieldByName('hora_baixa').AsString      := C_ST_VAZIO;
      DM.Q3.FieldByName('valor_pg').AsCurrency      := 0;
      DM.Q3.FieldByName('operador').AsInteger       := DM.Operador.ID;
      DM.Q3.Post;
   end;

   //reverte o caixa

   DM.Q1.Open(C_SQL99 + QuotedStr(DM.QFinan_bol_Emitid.AsString));

   if not DM.Q1.IsEmpty then
   begin
      DM.Inserir_Caixa('EQB', DM.QFinan_bol_Emitnossonmro.AsString, DM.QFinan_bol_Emitvalor_pg.Value, DM.QFinan_bol_Emitid.Value)
   end;

   //reverte o banco

   DM.Q1.Open(C_SQL100 + QuotedStr(DM.QFinan_bol_Emitid.AsString));

   if not DM.Q1.IsEmpty then
   begin
      DM.Q1.Open(C_SQL93 + QuotedStr(DM.QFinan_bol_Emitboleto.AsString));

      DM.Inserir_Movi_Banco(DM.QFinan_bol_Emitid.Value,
                            DM.Q1.Fields[0].AsInteger,
                            'EBL',
                            'D',
                            DM.QFinan_bol_Emitvalor_pg.Value,
                            Date,
                            DM.QFinan_bol_Emitnossonmro.AsString,
                            'Estorno Receb. Boleto nº ' + DM.QFinan_bol_Emitnossonmro.AsString
      );

      //reverte o PLANO DE CONTAS
      DM.Reverter_Plano_de_Contas('MBC' + DM.Q1.Fields[0].AsString + 'BOL', DM.QFinan_bol_Emitid.Value);
   end;

   //reverte o PLANO DE CONTAS
   DM.Reverter_Plano_de_Contas('BC', DM.QFinan_bol_Emitid.Value);

   //reverte o boleto

   DM.QFinan_bol_Emit.Edit;
   DM.QFinan_bol_Emitdt_baixa_canc.AsVariant := null;
   DM.QFinan_bol_Emitbaixa.Value     := 'N';
   DM.QFinan_bol_Emitcancelado.Value := 'N';
   DM.QFinan_bol_Emit.Post;
   DM.QFinan_bol_Emit.Refresh;
   ShowMessage(C_268);
end;

procedure TfrmGestaoReceber.DesfazerBaixaCarneClick(Sender: TObject);
begin
   if (MessageBox(0, C_265, C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;

   //reverte debito

   DM.Q3.Open(C_SQL97 + QuotedStr(DM.QFinan_Carneid.AsString));

   if not DM.Q3.IsEmpty then
   begin
      DM.Q3.Edit;
      DM.Q3.FieldByName('dt_baixa').AsVariant       := null;
      DM.Q3.FieldByName('hora_baixa').AsString      := C_ST_VAZIO;
      DM.Q3.FieldByName('valor_pg').AsCurrency      := 0;
      DM.Q3.FieldByName('operador').AsInteger       := DM.Operador.ID;
      DM.Q3.Post;
   end;

   //reverte o caixa

   DM.Q1.Open('select * from caixa where tipo=''QFT'' and id_movi=' + Texto_Mysql(DM.QFinan_Carneid.value));

   if not DM.Q1.IsEmpty then
   begin
      DM.Inserir_Caixa('EQF', DM.QFinan_Carnenmro.AsString, DM.QFinan_Carnevalor_pg.Value, DM.QFinan_Carneid.Value)
   end;

   //reverte o PLANO DE CONTAS
   DM.Reverter_Plano_de_Contas('BF', DM.QFinan_Carneid.Value);

   //reverte o carnê

   DM.QFinan_Carne.Edit;
   DM.QFinan_Carnedt_baixa_canc.AsVariant := null;
   DM.QFinan_Carnebaixa.Value     := 'N';
   DM.QFinan_Carnecancelado.Value := 'N';
   DM.QFinan_Carne.Post;
   DM.QFinan_Carne.Refresh;
   ShowMessage(C_268);
end;

procedure TfrmGestaoReceber.Dt1PropertiesChange(Sender: TObject);
begin
   if DM.QFinan_bol_Emit.Active then
      DM.QFinan_bol_Emit.Close;
end;

procedure TfrmGestaoReceber.Dt3PropertiesChange(Sender: TObject);
begin
   DM.QFinan_Carne.Close;
end;

procedure TfrmGestaoReceber.edPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if DM.DSFinan_CliDeb.DataSet.Active then
   if not DM.DSFinan_CliDeb.DataSet.IsEmpty then
   begin
      if Key= VK_UP then
         DM.DSFinan_CliDeb.DataSet.Prior
      else
      if key = VK_DOWN then
         DM.DSFinan_CliDeb.DataSet.Next;
   end;
end;

procedure TfrmGestaoReceber.edPesqNmroPropertiesChange(Sender: TObject);
begin
   if edPesqNmro.Focused then
      edPesqValor.Clear;
end;

procedure TfrmGestaoReceber.edPesqPropertiesChange(Sender: TObject);
var
   s: string;
begin
   if Trim(edPesq.Text) = C_ST_VAZIO then
      DM.DSFinan_CliDeb.DataSet.Close
   else
   if Length(trim(edPesq.Text))=1 then
   begin
      if trim(edPesq.Text) = C_CORINGA then
      begin
         dm.QFinan_CliDeb.Open(C_SQL79 + coluna.DataBinding.FieldName);
      end
      else
      begin
         s := BuscaTroca(C_SQL80, C_SOH, coluna.DataBinding.FieldName);
         s := BuscaTroca(s, C_ETX, edPesq.Text);
         dm.QFinan_CliDeb.Open(s);
      end;
   end
   else
   begin
      if DM.DSFinan_CliDeb.DataSet.Active then
         DM.DSFinan_CliDeb.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
   end;
end;

procedure TfrmGestaoReceber.edPesqValorPropertiesChange(Sender: TObject);
begin
   if edPesqValor.Focused then
      edPesqNmro.Clear;
end;

procedure TfrmGestaoReceber.Enviarporemail1Click(Sender: TObject);
begin
      //preenche a tabela de envio de email
      if DM.QFinan_bol_Emitsacado_email.AsString <> C_ST_VAZIO then
      begin
         frmEnvioBol := TfrmEnvioBol.Create(Self);
         with frmEnvioBol do
         begin
            cd1.Append;
            cd1id.Value       := DM.QFinan_bol_Emitid.Value;
            cd1nome.Value     := DM.QFinan_bol_Emitsacado_nome.Value;
            cd1email.AsString := DM.QFinan_bol_Emitsacado_email.AsString;
            cd1enviar.Value   := True;
            cd1.Post;
            path_bol          :=  DM.QFinan_bol_Emitpath_boleto.AsString;
            ShowModal;
         end;
      end
   else
      ShowMessage(C_25);
end;

procedure TfrmGestaoReceber.ExibirAssociao1Click(Sender: TObject);
begin
   DM.Exibir_Plano('BC');
end;

procedure TfrmGestaoReceber.ExibirPlanodeconta1Click(Sender: TObject);
begin
   DM.Exibir_Plano('BF');
end;

procedure TfrmGestaoReceber.ExtornarCrdito1Click(Sender: TObject);
var
   comprovante : TStringList;
begin
   if (MessageBox(0, 'Confirma o estorno?', C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;

   DM.QFinanCred.Edit;
   DM.QFinanCreddt_baixa.Value := Date;
   DM.QFinanCredoperador.Value := DM.Operador.ID;
   DM.QFinanCredbaixa.Value    := 'E';//B=baixa, C=Cancelamento, E=estorno
   DM.QFinanCred.Post;

   DM.Inserir_Caixa('ECC', '(manual)', DM.QFinanCredvalor.Value, DM.QFinanCredid.Value);
   //reverte o PLANO DE CONTAS
   DM.Reverter_Plano_de_Contas('CR', DM.QFinanCredid.Value);

   comprovante := TStringList.Create;
   comprovante.Append(DM.QFinan_CliDebcnpj.AsString);//CNPJ
   comprovante.Append(DM.QFinan_CliDebrazaosocial.AsString);//razao social
   comprovante.Append('');//endereço
   comprovante.Append(Number(FloatToStr(DM.QFinanCredvalor.Value * 100)));
   comprovante.SaveToFile(Aqui(C_TXT_FILE, 'sangria.txt'));
   comprovante.Free;

   DM.QFinanDeb.Refresh;
   DM.QFinanCred.Refresh;
   DM.QFinanTotDebCred.Refresh;

end;

procedure TfrmGestaoReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
   i: integer;
begin //grava as cfg da grid
   for i := 0 to ComponentCount - 1 do
   begin
       if (Components[i] is TcxGridDBTableView) then
          (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
   end;
   DM.QFinan_CliDeb.Close;
end;

procedure TfrmGestaoReceber.FormCreate(Sender: TObject);
begin
  inherited;
  CAPTION := 'AUTOCOM GERENCIAL GESTÃO DE CONTAS A RECEBER' + C_117;

  if DM_INI.ini.StoredValue['finan_boleto'] then
  begin
     DM.Q1.Open(C_SQL101);

     while not DM.Q1.Eof do
     begin
        cmb1.Properties.Items.Append(DM.Q1.Fields[0].AsString);
        DM.Q1.Next;
     end;

     DM.Q1.Close;
     Q1.Open;
  end;

  if DM_INI.ini.StoredValue['finan_carne'] then
  begin
     DM.Q1.Open(C_SQL102);

     while not DM.Q1.Eof do
     begin
        with cmb2.Properties.Items.Add do
        begin
           Description := DM.Q1.Fields[1].AsString;
           Value       := DM.Q1.Fields[0].AsInteger;
        end;
        DM.Q1.Next;
     end;

     DM.Q1.Close;
     Q1.Open;
  end;

  TabBol.TabVisible   := DM_INI.ini.StoredValue['finan_boleto'];
  TabCarne.TabVisible := DM_INI.ini.StoredValue['finan_carne'];
  BaixarDoc1.Visible  := (TabBol.TabVisible)or(TabCarne.TabVisible);
end;

procedure TfrmGestaoReceber.FormShow(Sender: TObject);
var
   i: integer;
begin
  inherited;
  tbBaixaArq.TabVisible := False;

  for i := 0 to ComponentCount - 1 do //ajusta a grid
  begin
      if (Components[i] is TcxGridDBTableView) then
      begin
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
      end;
  end;
end;

procedure TfrmGestaoReceber.Imprimir1Click(Sender: TObject);
begin
   if DM.QFinanDebtipo.AsString = 'C' then
   begin
      DM.Q1.Open('select id_movi, tipo from finan_carne_emitido where id=' + Texto_Mysql(DM.QFinanDebid_movi.AsString));
      DM.Abrir_Central_Relat('-v',
                             'SISTEMA',
                             'FATURA',
                             QuotedDuoStr('id_cli=' + DM.QFinanDebcliente.AsString) + ' ' + //id cliente
                             QuotedDuoStr('id_movim=' + DM.Q1.Fields[0].AsString) + ' ' + //id movi
                             QuotedDuoStr('tipo_movi=' + DM.Q1.Fields[1].AsString)  //tipo movi
      );
   end
   else
   ShowMessage('Apenas faturas podem ser impressas por aqui.');
end;

procedure TfrmGestaoReceber.Parcelar1Click(Sender: TObject);
begin
   if (DM.QFinanDebtipo.Value = 'C') or (DM.QFinanDebtipo.Value = 'B') then
   begin
      ShowMessage('Este débito não pode ser parcelado.');
      exit;
   end;

   frmParcelamento := TfrmParcelamento.Create(Self);
   frmParcelamento.edValor.Value := DM.QFinanDebvalor.Value;
   frmParcelamento.Tipo_Movi     := DM.QFinanDebtipo.AsString;
   frmParcelamento.id_cli        := DM.QFinanDebcliente.Value;
   frmParcelamento.id_movim      := DM.QFinanDebid_movi.Value;
   frmParcelamento.nmro_doc      := Copy(DM.QFinanDebnmro_doc.AsString,1, pos('/',DM.QFinanDebnmro_doc.AsString)-1);
   frmParcelamento.ShowModal;
   FreeAndNil(frmParcelamento);
   DM.QFinanDeb.Refresh;
end;

procedure TfrmGestaoReceber.pmBolPopup(Sender: TObject);
begin
   DesfazerBaixa1.Enabled := (rcb1.ItemIndex <> 1)and(dm.QFinan_bol_Emit.Active)and(not dm.QFinan_bol_Emit.IsEmpty);
end;

procedure TfrmGestaoReceber.pmCredPopup(Sender: TObject);
begin
   CreditarNovoValor1.Enabled := not DM.QFinan_CliDeb.IsEmpty;
   ExtornarCrdito1.Enabled    := not DM.QFinanCred.IsEmpty;
end;

procedure TfrmGestaoReceber.QuitarDbitos1Click(Sender: TObject);
begin
   if (not DM.QFinanTotDebCred.Locate('tipo','V',[])) and (not DM.QFinanTotDebCred.Locate('tipo','N',[])) then
   begin
      ShowMessage('Não existe débito do tipo "Cupom" ou "N.Fiscal" para quitar.');
      exit;
   end;
   frmQuita := TfrmQuita.Create(self);

   if DM.QFinanTotDebCred.Locate('tipo','Z',[]) then
      frmQuita.haver := DM.QFinanTotDebCredvalor.Value * -1;

   frmQuita.id_cli := DM.QFinan_CliDebid.Value;

   DM.QFinanDeb.DisableControls;
   DM.QFinanDeb.First;

   while not DM.QFinanDeb.Eof do
   begin
      if (DM.QFinanDebtipo.Value = 'N')or (DM.QFinanDebtipo.Value = 'V') then
      begin
         frmQuita.T1.Append;
         frmQuita.T1id.Value     := DM.QFinanDebid.Value;
         frmQuita.T1doc.Value    := DM.QFinanDebnmro_doc.Value;
         frmQuita.T1data.Value   := DM.QFinanDebdt_vencimento.Value;
         frmQuita.T1valor.Value  := DM.QFinanDebvalor.Value;
         frmQuita.T1quitar.Value := False;
         frmQuita.T1haver.Value  := 0;
         frmQuita.T1.Post;
      end;
      DM.QFinanDeb.Next;
   end;

   DM.QFinanDeb.First;
   DM.QFinanDeb.EnableControls;

   frmQuita.ShowModal;
   edPesq.Clear;
end;

procedure TfrmGestaoReceber.rbemcarneClick(Sender: TObject);
begin
   DM.QFinan_Carne.Close;
end;

procedure TfrmGestaoReceber.rbemClick(Sender: TObject);
begin
   if DM.QFinan_bol_Emit.Active then
      DM.QFinan_bol_Emit.Close;
end;

procedure TfrmGestaoReceber.rcb1PropertiesChange(Sender: TObject);
begin
   if DM.QFinan_bol_Emit.Active then
      DM.QFinan_bol_Emit.Close;

   TabBaixaBol.TabVisible := rcb1.ItemIndex = 1;
   rbbx.Visible           := rcb1.ItemIndex <> 1;
end;

procedure TfrmGestaoReceber.rcb2PropertiesChange(Sender: TObject);
begin
   TabBaixaCarne.TabVisible := rcb2.ItemIndex = 1;
   rbbxcarne.Visible        := rcb2.ItemIndex <> 1;
   DM.QFinan_Carne.Close;
end;

procedure TfrmGestaoReceber.TabBolShow(Sender: TObject);
begin
   DM.QFinan_bol_Emit.Open(C_SQL95);
   pgDetBol.ActivePage   := TabPesqBol;
   pgOpcBol.ActivePage   := TabDataBol;
   pgDetCarne.ActivePage := TabPesqCarne;
   pgOpcCarne.ActivePage := TabDataCarne;
end;

procedure TfrmGestaoReceber.TabCarneShow(Sender: TObject);
begin
   DM.QFinan_Carne.Open(C_SQL98);
end;

procedure TfrmGestaoReceber.TabDebShow(Sender: TObject);
var
   i: integer;
begin
   inherited;
   coluna := TbvCliDeb.Columns[0];

   for i := 0 to TbvCliDeb.ColumnCount - 1 do
   if TbvCliDeb.Columns[i].Tag = 1 then
      coluna := TbvCliDeb.Columns[i];

  lblPesq.Caption := C_190 + coluna.Caption;
  edpesq.SetFocus;
  DM.QFinan_CliDeb.Close;
  edPesq.Clear;
end;

procedure TfrmGestaoReceber.TabDetCarneShow(Sender: TObject);
begin
   QCliCarne.Open;
end;

procedure TfrmGestaoReceber.TabNmroCarneShow(Sender: TObject);
begin
   DM.QFinan_Carne.Close;
end;

procedure TfrmGestaoReceber.tbBaixaArqEnter(Sender: TObject);
begin
   DM.DSvwBoleto.DataSet.Open;
end;

procedure TfrmGestaoReceber.tbvCarneCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   DesfazerBaixaCarne.Enabled := DM.QFinan_Carnedt_baixa_canc.Value > 0;
end;

procedure TfrmGestaoReceber.tbvCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   edValor.Clear;
end;

procedure TfrmGestaoReceber.TbvCliDebidHeaderClick(Sender: TObject);
var
   i: integer;
begin
  DM.DSFinan_CliDeb.DataSet.close;

  for i := 0 to tbv.ColumnCount - 1 do
      tbv.Columns[i].Tag := 0;

  coluna := TcxGridDBColumn(Sender);
  TcxGridDBColumn(Sender).Tag := 1;
  lblPesq.Caption := C_190 + coluna.Caption;
  (DM.DSFinan_CliDeb.DataSet as TFDQuery).IndexFieldNames := coluna.DataBinding.FieldName;
  edPesq.Clear;
  edpesq.SetFocus;
end;

procedure TfrmGestaoReceber.tbvSelectionChanged(Sender: TcxCustomGridTableView);
begin
    edValor.Enabled := tbv.DataController.GetSelectedCount = 1;
    cbMaos.Enabled  := edValor.Enabled;

    if not cbMaos.Enabled then
       cbMaos.Checked := False;
end;


end.
