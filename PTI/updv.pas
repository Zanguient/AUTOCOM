unit updv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, DateUtils, ACBrTEFDClass,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize, Data.DB,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, uVLink,
  cxPCdxBarPopupMenu, cxContainer, cxEdit, cxTextEdit, dxGDIPlusClasses,
  cxImage, cxPC, dxStatusBar, cxLabel, ACBrECF, ACBrRFD, ACBrDevice,
  ACBrECFClass, ACBrConsts, Vcl.Grids, Vcl.DBGrids, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCurrencyEdit, cxDBLabel, FireDac.Stan.Param,
  dxSkinsCore, dxSkinCaramel, dxSkinscxPCPainter, dxBarBuiltInMenu,
  dxSkinsdxStatusBarPainter;

type
  ModoTela = (moDesativado, moLivre, moInicial, moVenda, moPgto, moTEF, moDiaNaoAberto, moDiaFechado, moTEFAdm);

  TfrmPDV = class(Tfrm)
    Panel1: TPanel;
    dspItem: TPanel;
    pg1: TcxPageControl;
    pg2: TcxPageControl;
    TabLogin: TcxTabSheet;
    TabIni: TcxTabSheet;
    pnlLogin: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edLogin: TcxTextEdit;
    edSenha: TcxTextEdit;
    btnLogin: TcxButton;
    btnF1: TcxButton;
    btnF10: TcxButton;
    btnF11: TcxButton;
    btnF8: TcxButton;
    bar1: TdxStatusBar;
    lblAviso: TcxLabel;
    imgEmpresa: TcxImage;
    lblFone: TcxLabel;
    dspTotal: TPanel;
    pnlpopup: TPanel;
    mPopup: TMemo;
    tmRelogio: TTimer;
    ECF: TACBrECF;
    TabItens: TcxTabSheet;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    TabVenda: TcxTabSheet;
    tmInativo: TTimer;
    tmIntegracao: TTimer;
    Panel2: TPanel;
    edCod: TcxTextEdit;
    cxLabel1: TcxLabel;
    pnlQtd: TPanel;
    cxLabel3: TcxLabel;
    edQtd: TcxCurrencyEdit;
    pnlDetItem: TPanel;
    cxLabel4: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    dblblvrcusto: TcxDBLabel;
    lblVrCusto: TcxLabel;
    cxDBLabel3: TcxDBLabel;
    cxLabel6: TcxLabel;
    lblccd: TcxLabel;
    cxImage2: TcxImage;
    cxLabel7: TcxLabel;
    tbvnItem: TcxGridDBColumn;
    tbvcEAN: TcxGridDBColumn;
    tbvxProd: TcxGridDBColumn;
    tbvuCom: TcxGridDBColumn;
    tbvqCom: TcxGridDBColumn;
    tbvvProd: TcxGridDBColumn;
    tbvvDesc: TcxGridDBColumn;
    tbvecf_aliq: TcxGridDBColumn;
    tbvvUnCom: TcxGridDBColumn;
    cxImage1: TcxImage;
    tmPV: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnF1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnLoginClick(Sender: TObject);
    procedure edSenhaPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabLoginShow(Sender: TObject);
    procedure tmRelogioTimer(Sender: TObject);
    procedure ECFChangeEstado(const EstadoAnterior, EstadoAtual: TACBrECFEstado);
    procedure ECFDepoisSuprimento(const Valor: Double; const Obs: AnsiString; const DescricaoCNF, DescricaoFPG: string);
    procedure ECFDepoisSangria(const Valor: Double; const Obs: AnsiString; const DescricaoCNF, DescricaoFPG: string);
    procedure ECFAntesReducaoZ(Sender: TObject);
    procedure ECFDepoisReducaoZ(Sender: TObject);
    procedure tmInativoTimer(Sender: TObject);
    procedure TabVendaShow(Sender: TObject);
    procedure edCodEnter(Sender: TObject);
    procedure btnF10Click(Sender: TObject);
    procedure edCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCodExit(Sender: TObject);
    procedure edQtdEnter(Sender: TObject);
    procedure edQtdExit(Sender: TObject);
    procedure ECFDepoisAbreCupom(const CPF_CNPJ, Nome, Endereco: string);
    procedure ECFDepoisCancelaCupom(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ECFDepoisVendeItem(const Codigo, Descricao, AliquotaICMS: string; const Qtd, ValorUnitario,
      ValorDescontoAcrescimo: Double; const Unidade, TipoDescontoAcrescimo, DescontoAcrescimo: string);
    procedure ECFAntesVendeItem(const Codigo, Descricao, AliquotaICMS: string; const Qtd, ValorUnitario,
      ValorDescontoAcrescimo: Double; const Unidade, TipoDescontoAcrescimo, DescontoAcrescimo: string);
    procedure ECFErrorVendeItem(var Tratado: Boolean);
    procedure ECFMsgPoucoPapel(Sender: TObject);
    procedure edQtdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCodKeyPress(Sender: TObject; var Key: Char);
    procedure ECFDepoisCancelaItemVendido(const NumItem: Integer);
    procedure btnF11Click(Sender: TObject);
    procedure ECFDepoisEfetuaPagamento(const CodFormaPagto: string; const Valor: Double; const Observacao: AnsiString;
      const ImprimeVinculado: Boolean);
    procedure ECFDepoisFechaCupom(const Observacao: AnsiString; const IndiceBMP: Integer);
    procedure ECFAntesAbreCupom(const CPF_CNPJ, Nome, Endereco: string);
    procedure tmIntegracaoTimer(Sender: TObject);
    procedure ECFDepoisFechaNaoFiscal(const Observacao: AnsiString; const IndiceBMP: Integer);
    procedure ECFDepoisAbreNaoFiscal(const CPF_CNPJ, Nome, Endereco: string);
    procedure ECFDepoisEfetuaPagamentoNaoFiscal(const CodFormaPagto: string; const Valor: Double;
      const Observacao: AnsiString; const ImprimeVinculado: Boolean);
    procedure ECFDepoisCancelaNaoFiscal(Sender: TObject);
    procedure ECFDepoisAbreCupomVinculado(Sender: TObject);
    procedure ECFDepoisFechaRelatorio(Sender: TObject);
    procedure ECFDepoisSubtotalizaCupom(const DescontoAcrescimo: Double; const MensagemRodape: AnsiString);
    procedure ECFDepoisSubtotalizaNaoFiscal(const DescontoAcrescimo: Double; const MensagemRodape: AnsiString);
    procedure btnF8Click(Sender: TObject);
    procedure ECFDepoisLeituraX(Sender: TObject);
    procedure ECFDepoisAbreRelatorioGerencial(const Indice: Integer);
    procedure ECFAntesEfetuaPagamento(const CodFormaPagto: string;
      const Valor: Double; const Observacao: AnsiString;
      const ImprimeVinculado: Boolean);
    procedure tmPVTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edQtdClick(Sender: TObject);

  private
    procedure CfgTab(page1, page2: TcxPageControl; tab1, tab2:TcxTabSheet);
    procedure CfgBtn(chave: string = '000000000000');
    procedure Configurar_Fonte;
    procedure Vende_Item(qtd: currency = 0);
    procedure VendeTablet(codigo: string);
    procedure TrataErros(Sender: TObject; E: Exception);
    procedure Carregar;
    procedure Display(Item: string; Total: currency); 
    procedure Gerar_Req_XXVI;
    procedure No_Tab(var Msg: TMsg; var Handled: Boolean);

  public
      var
         h_proporc: double;  //proporção heigth atual x heigth original
         i_modoTela, i_serieD, Est_Vende_item: integer;
         g_desc_item, g_qtd: Currency;//recebe o desconto do item
         vidaLink: TVidaLink;

      procedure Modo_Tela(modo: ModoTela);
      procedure Verificar_Status_PDV(por_login: boolean = False);
      procedure Popup(msg: string);
      procedure Carga_Inicial(Limpar_BD_Local: boolean = False);
      procedure SplashMsg(msg: string);
  end;

var
  frmPDV: TfrmPDV;
  height_orig: integer;
  n_Total: Currency;


implementation

{$R *.dfm}


uses udm_ini, uAutocomConsts, uFuncoes, uMD5Print, dmSkins, uSkinDLL, uMenu,
  uDM, uDMecf, uDM_PDV, uPesqProd, uConcluir, uProdNotFound, MMSystem, uPV, uSplash, uDesconto, uMenuFisc, uMenuConv,
  upfp, uFarmaPop2, utrn, uVendedor, uViews, uDM_Conn;

procedure TfrmPDV.TrataErros(Sender : TObject; E : Exception);
var
   som: string;
begin
   Popup(C_ST_VAZIO);
   log('PDV_Err','EXCEPTION', e.Message);
   Popup('ERRO -' + E.Message);
   som := Aqui(C_INI_FILE,'beep.wav');
   try
      SndPlaySound(PWideChar(som), SND_ASYNC);
   except
      ;
   end;
end;

procedure TfrmPDV.btnLoginClick(Sender: TObject);
var
   i:integer;
  // data: TDate;
begin
   btnLogin.Enabled := False;
   i := 0;
   n_Total := 0;
   Display('Processando...', 0);
  TrimAppMemorySize;

 //  data := StrToDateDef(ini.StoredValue['data_atu'], 0);

 {  if (DM_INI.ini.StoredValue['cbAtu'])and(NaNet)and(Trunc(data) <> date) then
   begin
      killtask('Atualizador.exe');
      ExecFile('Atualizador.exe','open','-n -start');
      ini.StoredValue['data_atu'] := date;
   end;  }

   if not FileExists(Aqui('DAT\PDV', Formatdatetime('yymmdd".bkp"', now))) then
      CopyFile(PWideChar(Aqui('DAT\PDV','autocom.pdv')), PWideChar(Aqui('DAT\PDV', Formatdatetime('yymmdd".bkp"', now))), false);

   DM_PDV.Conectar;
   DM_PDV.TECF.Open;
   DM_ECF.CallMenuFiscal;

   if DM.Conectar then//se esta em rede faz a carga full
   begin
      if Trunc(DM_PDV.TECFdt_carga.Value) <> Trunc(DM_ECF.Relogio) then
      begin
         Carga_Inicial;
         DM_PDV.TECF.Edit;
         DM_PDV.TECFdt_carga.Value := DM_ECF.Relogio;
         DM_PDV.TECF.Post;
      end;
      bar1.Panels[0].Text := DMConn.DB.Params.Values['Server'];
   end
   else  //se esta offline
   begin
      bar1.Panels[0].Text := DMConn.DB.Params.Values['Server'] + '(off)';
   end;//offline fim

   Carregar;//carrega as tabelas locais

   if not ECF.Ativo then
   if not DM_ECF.ECF_Ativar then
   begin
      DM_ECF.st_Msg := 'Última tentativa de comunicação com o ECF falhou.';
      DM_PDV.Gravar_Estado_PDV(epDesativado);
      Verificar_Status_PDV(true);
      exit;
   end;

   if not ECF.EmLinha then
   begin
     // ECF.Ativo := False;
      DM_PDV.Gravar_Estado_PDV(epDesativado);
      Verificar_Status_PDV(true);
      exit;
   end;

   if not DM_ECF.ValidarGTSerial then
   begin
      ECF.Ativo := False;
      DM_PDV.Gravar_Estado_PDV(epDesativado);
      Verificar_Status_PDV(true);
      exit;
   end;

   if not DM_PDV.Load_Operador then inc(i); //carrega operador e empresa das tabelas locais
   if not DM_PDV.Load_Empresa then inc(i);

   if i > 0 then //se nao houver operador ou empresa, sai
   begin
      edLogin.Clear;
      edSenha.Clear;
      edLogin.SetFocus;
      showmessage('Faltam dados de operador ou empresa.');
      DM_PDV.Gravar_Estado_PDV(epDesativado);
      Modo_Tela(moDesativado);
      Exit;
   end;
//   DM_PDV.Gerar_E02;//para teste
   if DM_ECF.TEF.GPAtual <> gpnenhum then
      Bar1.Panels[1].Text := 'F2-TEF ADM'
   else
      bar1.Panels[1].Text := DMConn.DB.Params.Values['Database'];
   //valida o login
   if not DM_PDV.Procurar_Operador(edLogin.Text, edSenha.Text) then
   begin
      edLogin.Clear;
      edSenha.Clear;
      edLogin.SetFocus;
   end
   else
   begin
      edLogin.Clear;
      edSenha.Clear;
      pnlLogin.Hide;
      bar1.Panels[2].Text := DM.Operador.Nome;

      Popup('LENDO DADOS DO ECF...');
      Application.ProcessMessages;
      Display('Aguarde...',0);
      CfgBtn;

      if not ECF.EmLinha then
      begin
         DM_ECF.st_Msg := 'Última tentativa de comunicação com o ECF falhou.';
         DM_PDV.Gravar_Estado_PDV(epDesativado);
         Verificar_Status_PDV;
         exit;
      end;

      Popup(C_ST_VAZIO);

      if DM_PDV.TEmpresa.IsEmpty then
      begin
         ShowMessage(C_226);
      end
      else
      begin
         bar1.Panels[4].Text := DM.id_Term + '-' + DM_ECF.st_ECF_Num + '/' + DM_ECF.st_ECF_Loja + ' ' + DM_PDV.TEmpresanome_fantasia.AsString;
         ECF.InfoRodapeCupom.MinasLegal := DM_PDV.TEmpresauf.AsString = 'MG';

         if DM.Conectar then
            DM.Cadastrar_PDV(DM_ECF.st_ECF_Num);//faz o cadastramento do ecf na tabela pdv do servidor
      end;

  //    tmPV.Enabled := True;  p/teste
//      Gerar_Req_XXVI;     para teste
      Verificar_Status_PDV(True);//procede conforme situação do PDV. por_login =true para diferenciar origem do comando

      if NoHorarioVerao(DM_ECF.Relogio) then//se estamos no HV
      begin //se nao estamos no HV
         if not (ECF.HorarioVerao) then//se o ecf não está esta no HV
         if (ECF.Estado <> estBloqueada) then
         if not (ECF.Estado = estRequerZ) then
         if SecondsBetween(DM_ECF.Relogio, ecf.DataHoraUltimaReducaoZ) > 3600 {0.0416666666715173} then //se ja passou 1 hora da redução z
         begin
            if (Application.MessageBox('Deseja Alterar o horário do ECF para entrar no Horário de verão?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idYes) then
            begin
               ECF.MudaHorarioVerao;
               DM_ECF.Relogio := ECF.DataHora;
               ShowMessage('ECF entrou no horário de verão.');
            end;
         end;
      end;
   end;
   WindowState := wsMaximized;
end;

procedure TfrmPDV.Button1Click(Sender: TObject);
begin
   DM_PDV.Paf_A2_zerar_canc;
   ECF.TimeOut := ECF.Tag;
   Popup('Lendo dados da Redução Z...');

   DM_ECF.Dados_RedRZ;
   try
      DM_PDV.Gravar_COO_ini(IntToStr(DM_ECF.ReducaoZ.COO));

      DM_PDV.TECF.Edit;
      DM_PDV.TECFcf_totalizado.Value  := False;
      DM_PDV.TECFcnf_totalizado.Value := False;
      DM_PDV.TECFtipo_doc.Value       := 'RZ';
      DM_PDV.TECFvenda_bruta.Value    := DM_ECF.ReducaoZ.ValorVendaBruta;
      DM_PDV.TECF.Post;

      DM_PDV.GerarR02;
      Log('PDV','GerarR02', 'OK');
      DM_PDV.GerarR03;
      Log('PDV','GerarR03', 'OK');
      DM_PDV.Carga_Server;//envia a carga para o servidor
      Log('PDV','Carga_Server', 'OK');
      Gerar_Req_XXVI;
      Log('PDV','Gerar_Req_XXVI', 'OK');
      DM_ECF.Delay;
   except
      on E: exception do
      begin
      Log('PDV_Err','DepoisReducaoZ', e.Message);
      end;
   end;

   //cancelamento das pré-vendas se a redZ foi emitida no dia seguinte e o ecf esta apto a emitir cupom
   tmPV.Enabled := true;
end;

procedure TfrmPDV.Carga_Inicial(Limpar_BD_Local: boolean);
begin
   Log('Carga_INI','INICIO','-------------------------------------------------');

   if Number(DM_ECF.st_ECF_Num) <> '' then
      DM.ExecSQL('delete from pdv_alterados where num_ecf="' + DM_ECF.st_ECF_Num +'";');

   DM_PDV.Carga_Operador;//carrega sempre
   DM_PDV.Carga_Vendedor;//carrega sempre
   DM_PDV.Carga_Oper_crt;//carrega sempre
   DM_PDV.Carga_Empresa;//carrega sempre
   DM_PDV.Carga_Cli(Limpar_BD_Local);//carrega sempre
   DM_PDV.Carga_Prod(Limpar_BD_Local);

   if not DM_PDV.Load_IBPTax then
      DM_PDV.Carga_IBPTax;

   if not DM_PDV.Load_FPag then
      DM_PDV.Carga_FPag;

   DM_PDV.Load_Venda;//apenas abre TVenda
   DM_PDV.Load_CNF;
   DM_PDV.load_RG;

   Log('Carga_INI','FIM','----------------------------------------------------');
end;

procedure TfrmPDV.Carregar;
begin
   DM_PDV.Load_Cli;//carrega clientes
   DM_PDV.Load_FPag;//carrega fpag
   DM_PDV.Load_Vendedor; //carrega vendedor
   DM_PDV.Load_Prod;//carrega produtos
   DM_PDV.Load_IBPTax;//carrega IBPTax
   DM_PDV.Load_Venda;//Carrega venda e venda_item
   DM_PDV.Load_CNF;//carrega CNF
   DM_PDV.load_RG; //carrega RG
   DM_PDV.Load_PAF;//carrega tabelas PAF
   DM_PDV.LoadAliq;
end;

procedure TfrmPDV.CfgBtn(chave: string);
var
   i, j: integer;
begin
   chave := RFill(chave,12,'0');
   for i := 0 to componentCount -1 do
   begin
      if (Components[i] is TcxButton) then
      begin
          for j := 1 to 12 do
          if (Components[i] as TcxButton).tag = j then
             (Components[i] as TcxButton).Enabled := chave[j] = '1';
      end;
   end;
end;

procedure TfrmPDV.CfgTab(page1, page2: TcxPageControl; tab1, tab2: TcxTabSheet);
begin
   page1.ActivePage  := tab1;
   page2.ActivePage  := tab2;
   tmInativo.Tag     := 0;
   tmInativo.Enabled := (Pg1.ActivePage = TabVenda);
end;

//mostra o display
procedure TfrmPDV.Display(Item: string; Total: currency);
begin
   DspItem.Caption := Item;

   if Total = 0 then
      DspTotal.Caption := '- - -'
   else
   if Total > 0 then
      DspTotal.Caption := FloatToStrF(Total, ffNumber,15,2);

   Configurar_Fonte;
end;

procedure TfrmPDV.ECFAntesAbreCupom(const CPF_CNPJ, Nome, Endereco: string);
var
   s: string;
begin
   DM_PDV.Paf_A2_AjustaR02; //coloca o valor do R02 nos registros A2

   //para gerar crash se abrir e nao gravar no bd (DepoisAbreCupom)
   Est_Vende_item := DM_PDV.TECFestado_ant.Value;
   DM_PDV.TECF.edit;
   DM_PDV.TECFestado_ant.Value := -200;//indica inicio da abertura do cupom
   DM_PDV.TECF.Post;
      
   TabVenda.Enabled := False;

   if DM_PDV.modo_pv then
   if DM.QVendavendedor.Value > 0 then
      DM_PDV.TVendedor.Open('select * from vendedor where id=' + Texto_Mysql(DM.QVendavendedor.Value));

   if (DM_INI.ini.StoredValue['venda_comissionada'])and(DM_PDV.TVendedor.Active)and(not DM_PDV.TVendedor.IsEmpty) then
      s := ' VND: ' + DM_PDV.TVendedornomered.AsString;

   frmPDV.ECF.IdentificaOperador(Clip(DM.Operador.Nome, 10) + s);  //o limite são 20 carac no ACBR
   DM_ECF.Delay;
   frmPDV.ECF.InfoRodapeCupom.PreVenda := C_ST_VAZIO;
   frmPDV.ECF.BloqueiaMouseTeclado := True;
   frmPDV.ECF.ReTentar             := True;
end;

procedure TfrmPDV.ECFAntesEfetuaPagamento(const CodFormaPagto: string;
  const Valor: Double; const Observacao: AnsiString;
  const ImprimeVinculado: Boolean);
begin
   DM_PDV.Gravar_Estado_PDV(epPag);
end;

procedure TfrmPDV.ECFAntesReducaoZ(Sender: TObject);
begin
   if (ECF.Estado <> estRequerZ) then
   begin
      //cancelamento das pré-vendas do dia anterior
      if (DM_INI.ini.StoredValue['paf_pre_venda_caixa']) and (DM.Conectar) then
      begin
         DMConn.Q1.Open('select count(*) from venda where tipo="PV" and data<' + Texto_Mysql(Trunc(DM_ECF.Relogio)));

         if DMConn.Q1.Fields[0].AsInteger >0 then
         begin
            frmpv := Tfrmpv.Create(self);
            frmpv.Popular_T1(-1);
            frmpv.btnGerar.Click;

            if Assigned(frmpv) then
               FreeAndNil(frmpv);
         end;
      end;
      DM_ECF.Imprimir_Fechamento(True); //imprime o fechamento de caixa final
   end;

   ECF.Tag     := ECF.TimeOut;
   ECF.TimeOut := 600;
   Popup('Emitindo a Redução Z. Aguarde...');
   TrimAppMemorySize;
end;

procedure TfrmPDV.ECFAntesVendeItem(const Codigo, Descricao, AliquotaICMS: string; const Qtd, ValorUnitario,
  ValorDescontoAcrescimo: Double; const Unidade, TipoDescontoAcrescimo, DescontoAcrescimo: string);

begin
   if not Assigned(frmpv) then
   begin
      if (DM_PDV.TProdvrvenda_vista.AsCurrency <=0) then
         raise Exception.Create('item sem valor unitário.');

      if (DM_PDV.TProdnome.AsString = C_ST_VAZIO) then
         raise Exception.Create('item sem descrição.');         

      if (DM_PDV.TProdsigla_unid.AsString = C_ST_VAZIO) then
         raise Exception.Create('item sem unidade de medida.');

      if (DM_PDV.TProdfracionavel.Value = 'N')and(Trunc(qtd)<(qtd)) then
         raise Exception.Create('Este item não permite fracionamento.');

      if (DM_PDV.TProdaliq_ecf.AsString <> 'ISS')and
         (NCM_Invalido(DM_PDV.TProdncm.AsString)) then
         raise Exception.Create('NCM deste item incorreto.');

      if DM_INI.ini.StoredValue['naoVendeSemEstoque'] then
      begin
         Popup('Verificando estoque...');
         if DM.Conectar then
         begin
            DMConn.Q1.Open(vwEstoqueQuantByID + DM_PDV.TProdid.AsString);
            if (DMConn.Q1.Fields[0].AsCurrency - Qtd) <0 then
            begin
               raise Exception.Create('Estoque insuficiente (' + FloatToStrF(DMConn.Q1.Fields[0].AsCurrency, ffnumber,15,2) + ').');
            end;
         end;
      end;

      TabVenda.Enabled := True;
      Est_Vende_item := DM_PDV.TECFestado_ant.Value;
      DM_PDV.TECF.edit;//para gerar crash se vender a nao gravar no bd
      DM_PDV.TECFestado_ant.Value := -100;//indica venda de item iniciada e nao terminada
      DM_PDV.TECF.Post;
   end;
end;

procedure TfrmPDV.ECFChangeEstado(const EstadoAnterior, EstadoAtual: TACBrECFEstado);
const st_Estado: Array [0..9] of string = ('Desativado','Desconhecido','Livre','Venda',
                                           'Pagamento','Relatório', 'Bloqueado',
                                           'Red Z Pendente', 'LX Pendente','CNF Aberto');
begin
  case EstadoAtual of
    estNaoInicializada: DM_PDV.Gravar_Estado_PDV(epDesativado);
    estDesconhecido:    DM_PDV.Gravar_Estado_PDV(epDesativado);
  //  estLivre:           Modo_Tela(moLivre);
    estVenda:           DM_PDV.Gravar_Estado_PDV(epVenda);
    estPagamento:       DM_PDV.Gravar_Estado_PDV(epPag);
  //  estRelatorio: sEstAtual := 'estRelatorio';
    estBloqueada:       DM_PDV.Gravar_Estado_PDV(epDesativado);
 {     estRequerX:         begin
                             ECF.LeituraX;
                             Modo_Tela(moInicial);
                          end;
 }  // estNaoFiscal: sEstAtual       := 'estNaoFiscal';
  end;
  Bar1.Panels[3].Text := st_Estado[Integer(EstadoAnterior)] + '/' + st_Estado[Integer(EstadoAtual)];
end;

procedure TfrmPDV.ECFDepoisAbreCupom(const CPF_CNPJ, Nome, Endereco: string);
var
  s,s1: string;
begin
   DM_ECF.Fechar_MenuFuscal;
   TabVenda.Enabled := True;
   DM_PDV.TVenda.Append;
   DM_PDV.TVendacoa.AsInteger     := -1; //flag para indicar venda nao concluida
   DM_PDV.TVendacliente.AsInteger := DM_PDV.TCliid.AsInteger;

   if DM_INI.ini.StoredValue['venda_comissionada'] then
      DM_PDV.TVendavendedor.Value := DM_PDV.TVendedorid.Value;

   DM_PDV.TVendatipo.AsString     := 'ECF';
   DM_PDV.TVendacoo.AsString      := ECF.NumCOO;
   DM_ECF.Delay;
   DM_PDV.TVendaccf.AsString      := ECF.NumCCF;
   DM_ECF.Delay;
   DM_PDV.TVendaterminal.AsString := ECF.NumECF;
   DM_ECF.Delay;
   DM_PDV.TVendadata.AsDateTime   := Trunc(DM_ECF.Relogio);
   DM_PDV.TVendahora.AsString     := FormatDateTime('hh:nn',DM_ECF.Relogio);
   DM_PDV.TVendaserie_d.Value     := i_serieD; //recebe o nº da NF serie D
   DM_PDV.TVenda.Post;

   DM_PDV.Paf_A2_zerar_canc;
   DM_PDV.Gravar_Estado_PDV(epVenda);

   DM_PDV.TECF.Edit;
   DM_PDV.TECFcf_totalizado.Value  := False;
   DM_PDV.TECFcnf_totalizado.Value := False;
   DM_PDV.TECFtipo_doc.Value := 'CF';
   DM_PDV.TECF.Post;

   DM_PDV.TECF.edit;//desfaz o crash
   DM_PDV.TECFestado_ant.Value := Est_Vende_item;//indica inicio da abertura do cupom
   DM_PDV.TECF.Post;

   DM_PDV.Gravar_coo_ini(DM_PDV.TVendacoo.AsString);

   DM_ECF.Delay;
   s  := DM_PDV.TVendacoo.AsString;
   s1 := DM_PDV.TVendaccf.AsString;
   DM_PDV.GerarR04(s, s1 , True); //cria o r04, inicialmente cancelado

   Verificar_Status_PDV;

   if i_serieD > 0 then
   begin
      i_serieD := 0;
   end;
end;

procedure TfrmPDV.ECFDepoisAbreCupomVinculado(Sender: TObject);
var
   st_coo,st_gnf, st_grg : string;
begin
   try
      DM_ECF.Delay;
      st_coo := ECF.NumCOO;
      DM_ECF.Delay;
      st_gnf := ECF.NumGNF;
      DM_ECF.Delay;
      st_grg := ECF.NumCDC;

      DM_PDV.Gravar_coo_ini(st_coo);
      DM_PDV.GerarR06('CC', st_coo, st_gnf, '0', st_grg);
      //gerar o r07 todo
   finally
      DM_PDV.TECF.Edit;
      DM_PDV.TECFtipo_doc.Value := 'CV';
      DM_PDV.TECF.Post;
   end;
end;

procedure TfrmPDV.ECFDepoisAbreNaoFiscal(const CPF_CNPJ, Nome, Endereco: string);
var
   st_coo{,st_gnf} : string;
begin
   DM_PDV.TECF.Edit;
   DM_PDV.TECFcf_totalizado.Value  := False;
   DM_PDV.TECFcnf_totalizado.Value := False;
   DM_PDV.TECFtipo_doc.Value       := 'CN';
   DM_PDV.TECF.Post;

   try
      DM_ECF.Delay;
      st_coo  := ECF.NumCOO;
   finally
      DM_PDV.Gravar_coo_ini(st_coo);
      DM_PDV.Paf_A2_zerar_canc;
   end;
end;

procedure TfrmPDV.ECFDepoisAbreRelatorioGerencial(const Indice: Integer);
begin
   DM_PDV.TECF.Edit;
   DM_PDV.TECFtipo_doc.Value := 'RG';
   DM_PDV.TECF.Post;
end;

procedure TfrmPDV.ECFDepoisCancelaCupom(Sender: TObject);
var
   st_coo,st_ccf : string;
begin
   try
      DM_ECF.Delay;
      st_coo := ECF.NumCOO;
      DM_ECF.Delay;
      st_ccf := ECF.NumCCF;
      DM_PDV.Cancelar_Venda;
      //grava os dados na tabela TPaf_cancelar
      DM_PDV.TPaf_cancelar.Open;
      DM_PDV.TPaf_cancelar.Append;
      DM_PDV.TPaf_cancelarcoo.AsString := st_coo;
      DM_PDV.TPaf_cancelarccf.AsString := st_ccf;
      DM_PDV.TPaf_cancelar.Post;
      //tenta fazer o cancelamento, que ficara pendente  se nao for possivel no momento
      DM_PDV.Cancelar_R04;

      if DM_PDV.TTrn.Active then
      if not DM_PDV.TTrn.IsEmpty then
         DM_PDV.TTrn.Delete;

      if (DM_INI.ini.StoredValue['modo_convenio_vl'])and(Assigned(vidaLink)) then
      begin
         vidaLink.Limpar;
         FreeAndNil(vidaLink);
      end;

   finally
      i_serieD := 0;
      n_Total  := 0;
      //refaz o total do ecf
      DM_PDV.TECF.Edit;//-vrdin + troco

      DM_PDV.TECFvr_din.Value := DM_PDV.TECFvr_din.Value -
                                 DM_PDV.TVendavr_din.AsCurrency +
                                 DM_PDV.TVendatroco.AsCurrency;

      DM_PDV.TECFcf_totalizado.Value  := False;
      DM_PDV.TECFcnf_totalizado.Value := False;
      DM_PDV.TECFestado_ant.Value     := 0;
      DM_PDV.TECF.Post;

      DM_PDV.Paf_A2_Delete(1);//apaga as entradas do pafA2 tipo 1
      DM_PDV.Gravar_coo_ini(st_coo);
      DM_PDV.Gravar_Estado_PDV(epLivre);
      DM_PDV.Limpar_Cliente;
      Verificar_Status_PDV;
      Popup('Venda cancelada.');
   end;
end;

procedure TfrmPDV.ECFDepoisCancelaItemVendido(const NumItem: Integer);
begin
   n_Total := 0;
   if DM_PDV.TPAF_R05.Locate('item', numitem, []) then
   begin
      DM_PDV.TPAF_R05.Edit;
      DM_PDV.TPAF_R05canc.Value := 'S';
      DM_PDV.TPAF_R05.Post;
   end;
   Popup('Item ' + IntToStr(NumItem) + ' cancelado');
  // Verificar_Status_PDV; - nao precisa! Ao sair do F1 ja faz a verificação
end;

procedure TfrmPDV.ECFDepoisCancelaNaoFiscal(Sender: TObject);
var
   st_coo: string;
begin
   DM_ECF.Delay;
   st_coo  := ECF.NumCOO;
   DM_PDV.Gravar_COO_ini(st_coo);
   DM_PDV.Paf_A2_Delete(2);//apaga as entradas do pafA2 tipo 1
end;

procedure TfrmPDV.ECFDepoisEfetuaPagamento(const CodFormaPagto: string; const Valor: Double;
  const Observacao: AnsiString; const ImprimeVinculado: Boolean);
begin
   DM_PDV.Gravar_Estado_PDV(epPag);
   DM_PDV.TFPag.Locate('indice_tef', CodFormaPagto, []);
   DM_PDV.Paf_A2_insert(StrToInt(CodFormaPagto), 1, DM_PDV.TFPagdescr.AsString, Valor);
   DM_PDV.GerarR07(-1, 0, DM_PDV.TFPagdescr.AsString, Valor);
end;

procedure TfrmPDV.ECFDepoisEfetuaPagamentoNaoFiscal(const CodFormaPagto: string; const Valor: Double;
  const Observacao: AnsiString; const ImprimeVinculado: Boolean);
begin
   if not DM_PDV.TFPag.Active then
      DM_PDV.TFPag.Open;

   DM_PDV.TFPag.Locate('indice_tef', CodFormaPagto, []);
   DM_PDV.Paf_A2_insert(StrToInt(CodFormaPagto), 2, DM_PDV.TFPagdescr.AsString, Valor);
   DM_PDV.GerarR07(0, -1, CodFormaPagto, Valor);
end;

procedure TfrmPDV.ECFDepoisFechaCupom(const Observacao: AnsiString; const IndiceBMP: Integer);
var
   st_coo,st_ccf : string;
   valor, perc: currency;
   b: boolean;
begin
   try
      DM_PDV.TVenda.Edit;
      DM_PDV.TVendacoa.AsInteger := 0;

      if Assigned(frmConcluir) then
      begin
         if not DM_PDV.TTrn.IsEmpty then
         begin
            DM_PDV.TTrn.Edit;
            DM_PDV.TTrncrt.Value := ''; //indica q o cupom foi concluido
            DM_PDV.TTrn.Post;
         end;

         DM_PDV.TVendavalor.AsCurrency       := frmConcluir.Total.Valor;
         DM_PDV.TVendavr_desconto.AsCurrency := frmConcluir.Total.VrDesc;
         DM_PDV.TVendavr_pago.AsCurrency     := frmConcluir.Total.VrPago - frmConcluir.Total.Fat;
         DM_PDV.TVendavr_din.AsCurrency      := frmConcluir.Total.Din;
         DM_PDV.TVendavr_chq.AsCurrency      := frmConcluir.Total.Chq;
         DM_PDV.TVendavr_card.AsCurrency     := frmConcluir.Total.Crt;
         DM_PDV.TVendavr_tkt.AsCurrency      := frmConcluir.Total.Tkt;
         DM_PDV.TVendavr_outros.AsCurrency   := frmConcluir.Total.Fat;
         DM_PDV.TVendatroco.AsCurrency       := frmConcluir.Total.Troco;
         DM_PDV.TVendavendedor.AsInteger     := frmConcluir.Total.Vendedor;

         //processamento da comissão
         DM_PDV.Q1.Open('select sum(vComissao) from venda_item where venda=' + Texto_Mysql(DM_PDV.TVendaid.Value));
         valor := DM_PDV.Q1.Fields[0].AsCurrency;

         //se tem desconto no total, recalcula a comissão
         if frmConcluir.Total.VrDesc >0 then
         begin
            perc := RetornaPercentual(frmConcluir.Total.Valor,frmConcluir.Total.VrDesc);
            valor := valor - Percentual(perc, Valor);
         end;

         DM_PDV.TVendavr_comissao.AsCurrency := DM_PDV.TVendavr_comissao.AsCurrency - valor;

         if frmConcluir.cmbOperadora.ItemIndex > 0 then  //grava o cnpj a operadora
            DM_PDV.TVendaoper_crt.AsString := frmConcluir.cmbOperadora.Properties.Items[frmConcluir.cmbOperadora.ItemIndex].Value;

         if frmConcluir.rbDeb.Checked then
            DM_PDV.TVendatipo_crt.Value := 'D'
         else
         if frmConcluir.rbCre.Checked then
            DM_PDV.TVendatipo_crt.Value := 'C';

         if DM_PDV.TVendacliente.AsInteger <= 0 then //considera o cliente eventual como consumidor final
            DM_PDV.TVendacliente.AsInteger := 1;

         DM_PDV.TVenda.Post;
         DM_ECF.Delay;
         st_coo := ECF.NumCOO;
         DM_ECF.Delay;
         st_ccf := ECF.NumCCF;
         DM_PDV.GerarR04(st_coo, st_ccf);//edita o r04 e exporta ao servidor
      end;
   finally
      i_serieD := 0;

      DM_PDV.CFOP_Itens;//registra os CFOP's.
      //refaz o total da tabela TECF
      DM_PDV.TECF.Edit;             //vrdin - troco
      DM_PDV.TECFvr_din.Value := DM_PDV.TECFvr_din.Value +
                                 DM_PDV.TVendavr_din.AsCurrency -
                                 DM_PDV.TVendatroco.AsCurrency;

      DM_PDV.TECFvr_tkt.Value := DM_PDV.TECFvr_tkt.Value + DM_PDV.TVendavr_tkt.AsCurrency;
      DM_PDV.TECFvr_crt.Value := DM_PDV.TECFvr_crt.Value + DM_PDV.TVendavr_card.AsCurrency;
      DM_PDV.TECFvr_chq.Value := DM_PDV.TECFvr_chq.Value + DM_PDV.TVendavr_chq.AsCurrency;
      DM_PDV.TECFvr_fat.Value := DM_PDV.TECFvr_fat.Value + DM_PDV.TVendavr_outros.AsCurrency;
      DM_PDV.TECF.Post;

      DM_PDV.Calcular_Rateio_Desconto;

      if ECF.Modelo = ecfNaoFiscal then
      begin
         DM_ECF.TEF.BloquearMouseTeclado(False);

         Repeat
         if (Application.MessageBox('Deseja Imprimir?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idYes) then
         begin
             DM_PDV.Rep1.Report.LoadFromFile(Aqui('REL\SISTEMA','CUPOM_PDV.fr3'));
             if DM_PDV.Rep1.PrepareReport(True) then
                DM_PDV.Rep1.Print;
             b := False;
         end
         else
            b := True;
         Until b;
      end;

      DM_PDV.Limpar_Cliente;
      n_Total := 0;

      if (DM_INI.ini.StoredValue['modo_convenio_vl'])and(vidaLink <> nil) then
         vidalink.Limpar;

      if DM_PDV.Ler_Estado_PDV <> epTEF then
      begin
         DM_PDV.Gravar_Estado_PDV(epLivre);
         Verificar_Status_PDV;
      end;
   end;
   TrimAppMemorySize;
end;

procedure TfrmPDV.ECFDepoisFechaNaoFiscal(const Observacao: AnsiString; const IndiceBMP: Integer);
var
   st_coo,st_gnf, st_grg, st_cdc : string;
begin
   try
      DM_ECF.Delay;
      st_coo := ECF.NumCOO;
      DM_ECF.Delay;
      st_gnf := ECF.NumGNF;

      if DM_PDV.TECFtipo_doc.Value = 'CC' then
      begin
         DM_ECF.Delay;
         st_cdc := ECF.NumCDC;
      end;

      DM_PDV.Gravar_coo_ini(st_coo);
      DM_PDV.GerarR06(DM_PDV.TECFtipo_doc.AsString, st_coo, st_gnf, st_grg, st_cdc);

      if (DM_INI.ini.StoredValue['modo_convenio_vl'])and(vidaLink <> nil) then
         vidalink.Limpar;

   finally
      DM_PDV.Gravar_Estado_PDV(epLivre);
   end;
end;

procedure TfrmPDV.ECFDepoisFechaRelatorio(Sender: TObject);
var
   st_coo,st_gnf, st_grg, st_cdc : string;
begin
   if DM_PDV.TECFtipo_doc.AsString = 'RG' then
   try
      DM_ECF.Delay;
      st_coo := ECF.NumCOO;
      DM_ECF.Delay;
      st_gnf := ECF.NumGNF;
      DM_ECF.Delay;
      st_grg := ECF.NumGRG;

      DM_PDV.Gravar_coo_ini(st_coo);
      DM_PDV.GerarR06(DM_PDV.TECFtipo_doc.AsString, st_coo, st_gnf, st_grg, st_cdc);
   except
      on E: exception do
      begin
      Log('PDV_Err','Gravar_coo_ini',e.Message);
      end;
   end;
end;

procedure TfrmPDV.ECFDepoisLeituraX(Sender: TObject);
var
   st_coo: string;
begin
   DM_ECF.Delay;
   st_coo  := ECF.NumCOO;
   DM_PDV.Gravar_COO_ini(st_coo);
end;

procedure TfrmPDV.ECFDepoisReducaoZ(Sender: TObject);
begin
   DM_PDV.Paf_A2_zerar_canc;
   ECF.TimeOut := ECF.Tag;
   Popup('Lendo dados da Redução Z...');

   //acerta o relogio, caso a redz tenha efetuado correção no RTC do ECF
   DM_ECF.Relogio := ECF.DataHora;

   DM_ECF.Dados_RedRZ;
   TrimAppMemorySize;
   try
      DM_PDV.Gravar_COO_ini(IntToStr(DM_ECF.ReducaoZ.COO));

      DM_PDV.TECF.Edit;
      DM_PDV.TECFcf_totalizado.Value  := False;
      DM_PDV.TECFcnf_totalizado.Value := False;
      DM_PDV.TECFtipo_doc.Value       := 'RZ';
      DM_PDV.TECFvenda_bruta.Value    := DM_ECF.ReducaoZ.ValorVendaBruta;
      DM_PDV.TECF.Post;

      DM_PDV.GerarR02;
      Log('PDV','GerarR02', 'OK');
      DM_PDV.GerarR03;
      Log('PDV','GerarR03', 'OK');
      DM_PDV.Carga_Server;//envia a carga para o servidor
      Log('PDV','Carga_Server', 'OK');
      Gerar_Req_XXVI;
      Log('PDV','Gerar_Req_XXVI', 'OK');
      DM_ECF.Delay;
   except
      on E: exception do
      begin
      Log('PDV_Err','DepoisReducaoZ', e.Message);
      end;
   end;

   if NoHorarioVerao(DM_ECF.Relogio) then//se estamos no HV
   begin
      if not (ECF.HorarioVerao) then//se o ecf nao esta no HV
      begin
         DM_ECF.Delay;
         if not (ECF.Estado = estRequerZ) then
         begin
            if (Application.MessageBox('Deseja Alterar o horário do ECF para sair do Horário de verão?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idYes) then
            begin
               DM_ECF.Delay;
               ECF.MudaHorarioVerao;
               DM_ECF.Relogio := ECF.DataHora;
               ShowMessage('ECF saiu do horário de verão.');
            end;
         end;
      end;
   end;
   //cancelamento das pré-vendas se a redZ foi emitida no dia seguinte e o ecf esta apto a emitir cupom
   tmPV.Enabled := true;
   TrimAppMemorySize;
end;

procedure TfrmPDV.ECFDepoisSangria(const Valor: Double; const Obs: AnsiString; const DescricaoCNF,
  DescricaoFPG: string);
var
   st_coo,st_gnf:string;
begin
   try
      DM_ECF.Delay;
      st_coo := ECF.NumCOO;
      DM_ECF.Delay;
      st_gnf := ECF.NumGNF;

      DM_PDV.TECF.Edit;
      DM_PDV.TECFvr_sang.Value  := DM_PDV.TECFvr_sang.Value + Valor;
      DM_PDV.TECFtipo_doc.Value := 'SA';
      DM_PDV.TECF.Post;

      DM_PDV.Gravar_COO_ini(st_coo);
      DM_PDV.GerarR06('CN', st_coo, st_gnf, '0', '0'); //SUPRIMENTO E SANGRIA NAO GERAM R07
   finally
      Modo_Tela(moLivre);
      Popup('Sangria efetuada.');
   end;
end;

procedure TfrmPDV.ECFDepoisSubtotalizaCupom(const DescontoAcrescimo: Double; const MensagemRodape: AnsiString);
begin
   DM_PDV.TECF.Edit;
   DM_PDV.TECFcf_totalizado.Value  := True;
   DM_PDV.TECFcnf_totalizado.Value := False;
   DM_PDV.TECF.Post;
end;

procedure TfrmPDV.ECFDepoisSubtotalizaNaoFiscal(const DescontoAcrescimo: Double; const MensagemRodape: AnsiString);
begin
   DM_PDV.TECF.Edit;
   DM_PDV.TECFcf_totalizado.Value  := False;
   DM_PDV.TECFcnf_totalizado.Value := True;
   DM_PDV.TECF.Post;
end;

procedure TfrmPDV.ECFDepoisSuprimento(const Valor: Double; const Obs: AnsiString; const DescricaoCNF,
  DescricaoFPG: string);
var
   st_coo,st_gnf:string;
begin
   try
      DM_ECF.Delay;
      st_coo  := ECF.NumCOO;
      DM_ECF.Delay;
      st_gnf := ECF.NumGNF;
      DM_ECF.Delay;
      DM_PDV.TECF.Edit;
      DM_PDV.TECFvr_supri.Value := DM_PDV.TECFvr_supri.Value + Valor;
      DM_PDV.TECFtipo_doc.Value := 'SU';
      DM_PDV.TECF.Post;
      DM_PDV.Gravar_COO_ini(st_coo);
      DM_PDV.GerarR06('CN', st_coo, st_gnf, '0', '0'); //SUPRIMENTO E SANGRIA NAO GERAM R07
   finally
      Modo_Tela(moLivre);
      Popup('Suprimento efetuado.');
   end;
end;

procedure TfrmPDV.ECFDepoisVendeItem(const Codigo, Descricao, AliquotaICMS: string; const Qtd, ValorUnitario,
  ValorDescontoAcrescimo: Double; const Unidade, TipoDescontoAcrescimo, DescontoAcrescimo: string);
var
   valor: Currency;
begin
   if qtd <> 1 then   //arrendonda ou trunca conforme cfg
   begin
      if DM_PDV.TProdcalculo_por_arredondamento.Value = 'N' then
      begin  //trunca
         valor := ((ValorUnitario * qtd )- ValorDescontoAcrescimo )*100;
         valor := trunc(valor)/100;
      end
      else
      begin//arredonda
         valor := ((ValorUnitario * qtd) - ValorDescontoAcrescimo)*100;
         valor := Arredonda(valor/100,2);
      end;
   end
   else
     Valor := (ValorUnitario - ValorDescontoAcrescimo);

   DM_PDV.TVenda_Item.Append;
   DM_PDV.TVenda_ItemcProd.Value      := DM_PDV.TProdid.Value;
   DM_PDV.TVenda_ItemcEAN.AsString    := codigo;
   DM_PDV.TVenda_ItemuCom.AsString    := Unidade;
   DM_PDV.TVenda_ItemqCom.Value       := Qtd;
   DM_PDV.TVenda_ItemvUnCom.Value     := ValorUnitario;
   DM_PDV.TVenda_ItemvDesc.Value      := ValorDescontoAcrescimo;
   DM_PDV.TVenda_ItemvProd.AsCurrency := Valor;
   DM_PDV.TVenda_Itemvcomissao.Value  := DM_PDV.Comissao;//calcula a comissão se existir

   DM_PDV.TVenda_ItemxProd.AsString    := DM_PDV.TProdnome.AsString;
   DM_PDV.TVenda_ItemNCM.AsString      := DM_PDV.TProdncm.AsString;
   DM_PDV.TVenda_Itemecf_aliq.AsString := DM_PDV.TProdaliq_ecf.AsString;

   if DM_PDV.TVenda_Itemecf_aliq.AsString = 'ISS' then
   begin
      DM_PDV.TVenda_ItemISSQN_SitTrib.Value     := DM_PDV.TProdcod_cst.Value;
      DM_PDV.TVenda_ItemISSQN_vBC.AsCurrency    := DM_PDV.TVenda_ItemvProd.AsCurrency;
      DM_PDV.TVenda_ItemISSQN_vAliq.AsCurrency  := StrToFloatDef(DM_PDV.TProdaliq_ecf.AsString,0)/100;
      DM_PDV.TVenda_ItemISSQN_vISSQN.AsCurrency := Arredonda((DM_PDV.TVenda_ItemISSQN_vBC.AsCurrency *
                                                              DM_PDV.TVenda_ItemISSQN_vAliq.AsCurrency)/100, 2);
   end
   else
   begin
      DM_PDV.TVenda_ItemICMS_CST.Value        := DM_PDV.TProdcod_cst.Value;
      DM_PDV.TVenda_ItemICMS_orig.AsString    := DM_PDV.TProdorigem.AsString;
      DM_PDV.TVenda_ItemICMS_modBC.Value      := 3;//DM_PDV.TProdicms_mod_bc.Value;
      DM_PDV.TVenda_ItemICMS_vBC.AsCurrency   := DM_PDV.TVenda_ItemvProd.AsCurrency;
      DM_PDV.TVenda_ItemICMS_pICMS.AsCurrency := StrToFloatDef(DM_PDV.TProdaliq_ecf.AsString,0)/100;
      DM_PDV.TVenda_ItemICMS_vICMS.AsCurrency := Arredonda((DM_PDV.TVenda_ItemICMS_vBC.AsCurrency *
                                                            DM_PDV.TVenda_ItemICMS_pICMS.AsCurrency)/100, 2);
   end;

   DM_PDV.TVenda_ItemPIS_CST.Value       := DM_PDV.TProdcst_pis_sai.Value;
   DM_PDV.TVenda_ItemCOFINS_CST.Value    := DM_PDV.TProdcst_cofins_sai.Value;
  // DM_PDV.TVenda_ItemvTotTrib.AsCurrency := Arredonda((DM_PDV.TVenda_ItemvProd.AsCurrency *
  //                                                     DM_PDV.IBPTax(DM_PDV.TVenda_ItemNCM.AsString,
  //                                                     DM_PDV.TVenda_ItemICMS_orig.AsInteger))/100, 3);
   if DM_PDV.TProdproducao_propria.Value = 'S' then //flag para ajustar o cfop
      DM_PDV.TVenda_ItemCFOP.Value := 'S'
   else
      DM_PDV.TVenda_ItemCFOP.Value := 'N';

   DM_PDV.TVenda_Item.Post;

   DM_PDV.TECF.edit;//para desfazer o crash gerado no AntesVendeItem
   DM_PDV.TECFestado_ant.Value := Est_Vende_item;//Indica venda item concluida
   DM_PDV.TECF.Post;

   DM_PDV.GerarR05;
   TabVenda.Enabled := True;

 //  lblccd.Visible := DM_INI.ini.StoredValue['ccd'];
   Modo_Tela(moVenda);

   edCod.SetFocus;
   edCod.Clear;
   edQtd.Clear;
end;

procedure TfrmPDV.ECFErrorVendeItem(var Tratado: Boolean);
begin
   TabVenda.Enabled := True;
   lblccd.Visible   := DM_INI.ini.StoredValue['ccd'];
   pnlQtd.Visible   := not lblccd.Visible;
   edCod.SetFocus;
   edCod.Clear;
   edQtd.Clear;
   raise Exception.Create('Erro no ECF ao vender item');
end;

procedure TfrmPDV.ECFMsgPoucoPapel(Sender: TObject);
begin
   Popup('ATENÇÃO! O PAPEL DA IMPRESSORA ESTÁ ACABANDO.');
end;

procedure TfrmPDV.Configurar_Fonte;
var
   i, j, fnt: integer;
   const
      a1: array[1..6] of integer = (14,19,30,40,60,74); //1024
      a2: array[1..6] of integer = (17,23,39,55,75,84); //1280
      a3: array[1..6] of integer = (18,25,42,62,82,95); //1400 ou maior
      a4: array[1..6] of integer = (70,50,30,20,14,12);//tamanho da fonte
begin
   i   := length(DspItem.Caption); //tamanho do texto
   fnt := a1[6]; //default da fonte (a menor)

   if Width < 1025 then
   begin
      for j := 1 to 6 do
      begin
         if i < a1[j] then
         begin
            fnt := a4[j];
            break;
         end;
      end;

      if i >= a1[6] then
      begin
         DspItem.Caption := copy(DspItem.Caption,1,a1[6]-4)+'...';
         fnt := a4[6];
      end;
   end
   else
   if Width < 1281 then
   begin
      for j := 1 to 6 do
      begin
         if i < a2[j] then
         begin
            fnt := a4[j];
            break;
         end;
      end;

      if i >= a2[6] then
      begin
         DspItem.Caption := copy(DspItem.Caption,1,a2[6]-4)+'...';
         fnt := a4[6];
      end;
   end
   else
   if Width > 1399 then
   begin
      for j := 1 to 6 do
      begin
         if i < a3[j] then
         begin
            fnt := a4[j];
            break;
         end;
      end;

      if i >= a3[6] then
      begin
         DspItem.Caption := copy(DspItem.Caption,1,a3[6]-4)+'...';
         fnt := a4[6];
      end;
   end;

   DspItem.Font.Size := fnt;
end;

procedure TfrmPDV.edCodEnter(Sender: TObject);
begin
   frmPDV.KeyPreview := False;
   edCod.Clear;
   edQtd.Clear;
   lblccd.Visible := (DM_INI.ini.StoredValue['ccd']);
   pnlQtd.Visible   := not lblccd.Visible;
   pnlDetItem.Hide;
end;

procedure TfrmPDV.edCodExit(Sender: TObject);
begin
   frmPDV.KeyPreview := True;
end;

procedure TfrmPDV.edCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
   cod, st_qtd: string;
   qtd: currency;
   i: integer;
   b: boolean;

   procedure reinicia;
   begin
      TabVenda.Enabled := true;
      edCod.SetFocus;
      edCod.Clear;
      edQtd.Clear;
    //  lblccd.Visible := (DM_INI.ini.StoredValue['ccd']);
   end;
begin
   case key of
      VK_F1    : if btnF1.Enabled then btnF1.Click;

      VK_F2    : if (DM_PDV.Ler_Estado_PDV = epLivre)and( DM_ECF.TEF.GPAtual <> gpNenhum) then
                 try
                    DM_PDV.Gravar_Estado_PDV(epTEFAdm);
                    Verificar_Status_PDV;
                    DM_ECF.TEF.ADM(DM_ECF.TEF.GPAtual);
                 finally
                    DM_PDV.Gravar_Estado_PDV(epLivre);
                    ECF.BloqueiaMouseTeclado := True;
                    Popup('');
                    Verificar_Status_PDV;
                 end;

      VK_F3    : if (ECF.EmLinha) then
                 begin
                    ECF.AbreGaveta;
                    Popup('Abre gaveta!');
                 end;

      VK_F8    : if btnF8.Enabled then btnF8.Click;
      VK_F10   : if btnF10.Enabled then btnF10.Click;
      VK_F11   : if btnF11.Enabled then btnF11.Click;
   end;

   //TECLA ENTER e codigo em branco, abre a pesquisa
   if (key=VK_RETURN)and(edCod.Text = C_ST_VAZIO) then
   begin
      frmPesqProd := TfrmPesqProd.Create(Self);
      frmPesqProd.ShowModal;

      if DM.g_int_coringa = 101 then//flag do  frmPesqProd indicando enter
      begin
         if (DM_PDV.TVenda.IsEmpty)and(DM_PDV.TestaPodeAbrirCupom) then
            ECF.AbreCupom;

         lblccd.Visible := False;
         pnlQtd.Visible   := not lblccd.Visible;
         edCod.Text     := DM_PDV.TProdcod_gtin.AsString;
         Display(DM_PDV.TProdnome.AsString, -1);
         edQtd.SetFocus;
         pnlDetItem.Show;
     end
     else
     edCod.SetFocus;
   end
   else //tecla ENTER e código preenchido
   if (key=VK_RETURN)and(edCod.Text <> C_ST_VAZIO) then
   begin
      cod := edCod.Text;
      qtd := 1;
      g_desc_item := 0;

      if Length(cod) < DM_INI.ini.StoredValue['tam_min_cod_item'] then
         cod := LFill(cod, DM_INI.ini.StoredValue['tam_min_cod_item']);

      if Length(cod) > DM_INI.ini.StoredValue['tam_max_cod_item'] then
      begin
         ShowMessage('Tamanho do código excede o máx. permitido.');
         Exit;
      end;

      if (DM_INI.ini.StoredValue['prefix_cod_balanca']>0) and
         (copy(cod,1,1)=DM_INI.ini.StoredValue['prefix_cod_balanca']) then
      begin
         i      := DM_INI.ini.StoredValue['tam_cod_balanca'];
         st_qtd := Number(copy(cod, i+3, length(cod)));
         cod    := copy(cod,1, i+2);
         qtd    := StrToFloatDef(st_qtd, 0)/1000; //2000001000523 =  2000001 - 0,523
         lblccd.Visible := True;//força a passar direto
         pnlQtd.Visible   := not lblccd.Visible;
      end
      else
      if (DM_INI.ini.StoredValue['tablet'])and(cod[1] ='T') then //rotina do modo tablet
      begin
         if not DM.Conectar then
         begin
            popup('ERRO ao conectar com o servidor BD.');
            Reinicia;
            Exit;
         end;

         //faz a localização dos itens e a venda dos mesmos no cupom
         VendeTablet(cod);
         //dá continuidade a venda
         Reinicia;
         exit;
      end;

      if DM_PDV.TProd.Locate('cod_gtin', cod, []) then
      begin
         if (DM_PDV.Ler_Estado_PDV = epLivre)and(DM_PDV.TestaPodeAbrirCupom) then
         begin
            b := lblccd.Visible;
            ECF.AbreCupom;
            lblccd.Visible := b;
            pnlQtd.Visible   := not lblccd.Visible;
         end;

         edCod.Text := cod;

         if not lblccd.Visible then
         begin
            Display(DM_PDV.TProdnome.AsString, -1);
            edQtd.SetFocus;
            pnlDetItem.Show;
         end
         else
         begin
            edQtd.Value := qtd;
            Vende_Item;
         end;
      end
      else
      begin
         frmProdNotFound := TfrmProdNotFound.Create(Self);
         frmProdNotFound.ShowModal;

         if Assigned(frmProdNotFound) then
            FreeAndNil(frmProdNotFound);

         Reinicia;
      end;
   end
   else
   if key in [VK_UP, VK_DOWN] then //NAVEGAÇÃO NO Venda_item
   begin
      if DM_PDV.TVenda_Item.Active then
      if not DM_PDV.TVenda_Item.IsEmpty then
      begin
         if key = VK_UP then DM_PDV.TVenda_Item.Prior
      else
         if key = VK_DOWN then DM_PDV.TVenda_Item.Next;
      end;
   end
   else
   if key = 27 then
   begin
      reinicia;
      if ECF.Estado = estVenda then
         begin
         if DM_PDV.TVenda_Item.IsEmpty then
            display('VENDA ABERTA', 0)
         else
         begin
            DM_PDV.TVenda_Item.Last;
            display(DM_PDV.TVenda_ItemxProd.AsString, DM_PDV.Total_venda);
         end;
      end;
   end;
end;

procedure TfrmPDV.edCodKeyPress(Sender: TObject; var Key: Char);
begin
	If (key = #32)and(DM_INI.ini.StoredValue['ccd']) then //barra de espaço ativa/desativa modo CCD
   begin
		lblCCD.visible := (not lblCCD.visible)and(edCod.Text <> '');
      pnlQtd.Visible := not lblccd.Visible;
      key := #0;
   end;
   if key = #9 then //inibe o tab
      key := #0;
end;

procedure TfrmPDV.edQtdClick(Sender: TObject);
begin
   edCod.SetFocus;  //inibe o clique do mouse
   edCod.Clear;
   edQtd.Clear;
   lblccd.Visible := (DM_INI.ini.StoredValue['ccd']);
   pnlQtd.Visible   := not lblccd.Visible;
end;

procedure TfrmPDV.edQtdEnter(Sender: TObject);
begin
   frmPDV.KeyPreview := False;
end;

procedure TfrmPDV.edQtdExit(Sender: TObject);
begin
   frmPDV.KeyPreview := True;
end;

procedure TfrmPDV.edQtdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if key = 68{D} then
   begin
      edQtd.Tag := 1;
   end;

   if key = 13 then
   begin
      g_qtd := edQtd.Value;

      if (g_qtd <= 0)or(g_qtd > DM_INI.ini.StoredValue['max_quant']) then
      begin
         ShowMessage('Quantidade incorreta ou superior a máx. permitida.');
         edCod.SetFocus;
         edCod.Clear;
         edQtd.Clear;
         lblccd.Visible := (DM_INI.ini.StoredValue['ccd']);
         pnlQtd.Visible   := not lblccd.Visible;
         exit;
      end;

      if edqtd.tag = 1 then
      begin
         edQtd.Tag := 0;
         g_desc_item := 0;

         frmDesconto := TfrmDesconto.Create(Self);
         frmDesconto.ShowModal;

         if Assigned(frmDesconto) then
            FreeAndNil(frmDesconto);
      end;

      if (edqtd.tag = 1)and(g_desc_item = 0) then
      begin
         edqtd.tag := 0;
         ShowMessage('Operador não informou o desconto. Se desejar informar o desconto, tecle D seguido de ENTER.');
         edQtd.SetFocus;
         exit;
      end;

      if (DM_PDV.Ler_Estado_PDV = epLivre)and(DM_PDV.TestaPodeAbrirCupom) then
      begin
         ECF.AbreCupom;
      end;
      
      Vende_Item(g_qtd);
   end
   else
   if key = 27 then
      edCod.SetFocus;
end;

procedure TfrmPDV.edSenhaPropertiesChange(Sender: TObject);
begin
   btnLogin.Enabled := (Trim(edLogin.Text) <> C_ST_VAZIO)and(Trim(edSenha.Text) <> C_ST_VAZIO);
end;

procedure TfrmPDV.btnF10Click(Sender: TObject);
var
   Est: TACBrECFEstado;
   i: integer;
   vDesc, valor, n: Currency;
   Aliq: String;
begin
   try
      Est := ECF.Estado;
   except
      DM_PDV.Gravar_Estado_PDV(epLogin);
      Verificar_Status_PDV(True);
      exit;
   end;

   if Est = estRelatorio then
      ecf.FechaRelatorio
   else
   if Est = estNaoFiscal then
      ECF.CancelaNaoFiscal
   else
   if Est = estPagamento then
   begin
      ECF.CancelaCupom;
   end;

   DM_PDV.TVendedor.Close;

   if (Est = estLivre) and not(DM_PDV.modo_pv) and
      ( (DM_INI.ini.StoredValue['modo_farmacia_popular']) or
      (DM_INI.ini.StoredValue['modo_convenio_trn']) or
      (DM_INI.ini.StoredValue['modo_convenio_vl']) or
      (DM_INI.ini.StoredValue['modo_convenio_epharma']) ) then
   begin
      frmMenu_Convenio := TfrmMenu_Convenio.Create(self);

      if Assigned(vidaLink) then
         FreeAndNil(vidaLink);

      case frmMenu_Convenio.ShowModal of
          mrOk    : ini.StoredValue['modo'] := 0;//normal
          mrCancel: ini.StoredValue['modo'] := 1; //trn
          mrAbort : ini.StoredValue['modo'] := 2;//pfp
          mrNo    : ini.StoredValue['modo'] := 3;//vidalink
          mrClose : ini.StoredValue['modo'] := -1;//nada
      end;

      FreeAndNil(frmMenu_Convenio);

      if ini.StoredValue['modo'] = -1 then
      begin
          ini.StoredValue['modo'] := 0;
          ShowMessage('Abortado pelo operador.');
          exit;
      end;

      if not DM_PDV.Load_Prod then
      begin
          ini.StoredValue['modo'] := 0;
          ShowMessage('Tabela de produtos está vazia.');
          exit;
      end;

      if ini.StoredValue['modo'] = 3 then//vidalink
      begin
         if DM_INI.ini.StoredValue['venda_comissionada'] then
         begin
            DM_PDV.TVendedor.Open;
            frmVendedor := TfrmVendedor.create(self);
            frmVendedor.ShowModal;

            if not DM_PDV.TVendedor.Active then
            exit;

            if DM_PDV.TVendedor.IsEmpty then
            exit;
         end;

         if vidaLink = nil then
            vidaLink := TVidaLink.Create(DM_INI.INI.StoredValue['pathvl']);

         if Assigned(vidaLink.Consulta) then
            vidaLink.Consulta.Clear;

         vidaLink.Comprovante.Clear;
         vidaLink.TempoResp := 8;

         if not vidaLink.HostAtivo then
         exit;

         if not vidaLink.Consultar then
         begin
            frmPDV.VidaLink.ClearDatasets;
            exit;
         end;

         if not VidaLink.Listar then
            Exit;

         Popup('Iniciando Venda VidaLink ' + vidaLink.Consulta.NumAut);
         ECF.AbreCupom;//abre a venda
         vidaLink.NumECF := DM_PDV.TVendaterminal.AsInteger;
         vidaLink.NumCOO := DM_PDV.TVendacoo.AsInteger;
         Popup('Efetuando venda VidaLink ' + vidaLink.Consulta.NumAut);

         for i := 0 to Pred(vidaLink.Itens.Count) do
         begin
            if vidaLink.Itens[i].Processado then
            begin
               if DM_PDV.TProd.Locate('cod_gtin', vidaLink.Itens[i].EAN, []) then
               begin
                  valor := vidaLink.Itens[i].vrVenda + vidaLink.Itens[i].vrSubsidio;
                  vDesc := DM_PDV.TProdvrvenda_vista.AsCurrency - valor;

                  if vDesc < 0 then
                  vDesc := 0;

                  //cfg a aliq
                  n := StrToFloatDef(DM_PDV.TProdaliq_ecf.AsString,0);

                  if n = 0 then
                     aliq := DM_PDV.TProdaliq_ecf.AsString
                  else
                  begin
                     n    := n/100;
                     aliq := FloatToStr(n);
                  end;

                  frmPDV.ECF.VendeItem(DM_PDV.TProdcod_gtin.AsString,
                                       DM_PDV.TProdnome.AsString,
                                       Aliq,
                                       vidaLink.Itens[i].Qtd,
                                       valor,
                                       vDesc,
                                       Copy(DM_PDV.TProdsigla_unid.AsString,1,2),
                                       '$'
                  );
               end;
            end;
         end;

         //confirma a venda com a vidalink
         if not frmPDV.vidaLink.Venda then
         begin
            if DM_PDV.Cancelar_Venda(True) then
               ECF.CancelaCupom;
            exit;
         end;

         //pega a resposta e o comprovante
         Popup('Obtendo comprovante VidaLink ' + vidaLink.Consulta.NumAut);
         if not vidaLink.GetComprovante  then
         begin
            if DM_PDV.Cancelar_Venda(True) then
               ECF.CancelaCupom;
            exit;
         end;
        //salva o comprovante na tabela venda
         DM_PDV.TVenda.Edit;
         DM_PDV.TVendacv.AsString := vidaLink.Comprovante.Text;
         DM_PDV.TVenda.Post;
         btnF11.Click;
         exit;
     end
     else
     if ini.StoredValue['modo'] = 2 then//PFP
     begin
         if DM_INI.ini.StoredValue['pfp_senha']=C_ST_VAZIO then
            raise Exception.Create('Não foi configurado usuário e senha do PFP.');

         frmpfp := Tfrmpfp.Create(Self);
         frmpfp.ShowModal;

         if Assigned(frmpfp) then
            FreeAndNil(frmpfp);

         if DM_PDV.TPFP.IsEmpty then
            raise Exception.Create('Dados da receita não informados.');

         frmFarmaPop2 := TfrmFarmaPop2.Create(Self);
         frmFarmaPop2.ShowModal;

         if Assigned(frmFarmaPop2) then
            FreeAndNil(frmFarmaPop2);

         exit;
     end
     else
     if ini.StoredValue['modo'] = 1 then//trn
     begin
         if DM_INI.ini.StoredValue['venda_comissionada'] then
         begin
            DM_PDV.TVendedor.Open;
            frmVendedor := TfrmVendedor.create(self);
            frmVendedor.ShowModal;

            if not DM_PDV.TVendedor.Active then
               exit;

            if DM_PDV.TVendedor.IsEmpty then
               exit;
         end;

         frmtrn := Tfrmtrn.Create(self);
         frmtrn.ShowModal;

         if Assigned(frmtrn) then
            FreeAndNil(frmtrn);

         if DM_PDV.TTrnlote.AsString = 'REPROV' then
         begin
            if DM_PDV.Cancelar_Venda(True) then
               ECF.CancelaCupom;
            exit;
         end;

         exit;
     end;
  end
  else
   if DM_INI.ini.StoredValue['venda_comissionada'] then
   begin
      DM_PDV.TVendedor.Close;
      frmVendedor := TfrmVendedor.create(self);
      frmVendedor.ShowModal;

      if not DM_PDV.TVendedor.Active then
         exit;

      if DM_PDV.TVendedor.IsEmpty then
         exit;
   end;

   ECF.AbreCupom;
end;

procedure TfrmPDV.btnF11Click(Sender: TObject);
begin
   if DM_PDV.TTrn.Active then
   if (not DM_PDV.TTrn.IsEmpty)and
      ((DM_PDV.TTrnvr_liq.Value = 0)) then
   begin
      if DM_PDV.TTrnlote.AsString = 'REPROV' then
      begin
         if DM_PDV.Cancelar_Venda(True) then
            ECF.CancelaCupom;
         exit;
      end;
   end;

   display('FINALIZAÇÃO', DM_PDV.Total_venda);
   frmConcluir := TfrmConcluir.Create(self);
   frmConcluir.ShowModal;

   if Assigned(frmConcluir) then
     FreeAndNil(frmConcluir);

   display(DM_PDV.TVenda_ItemxProd.AsString, DM_PDV.Total_venda);

  // DM_ECF.CallMenuFiscal;
   n_Total := 0;

   if DM_PDV.TTrn.Active then
   if (not DM_PDV.TTrn.IsEmpty)and
   (DM_PDV.TTrncrt.Value='ANULADO') THEN
      DM_PDV.Gravar_Estado_PDV(epTEF);

   Verificar_Status_PDV;
   Application.BringToFront; //volta o foco apos a conclusão
end;

procedure TfrmPDV.btnF1Click(Sender: TObject);
begin
   frmMenu := TfrmMenu.Create(Self);
   tmIntegracao.Enabled := False;

   case i_modoTela of   //moDesativado, moLivre, moInicial, moVenda, moPgto, moTEF, moDiaNaoAberto, moDiaFechado
      Integer(moDiaNaoAberto): frmMenu.CfgBtn('111101001');
      Integer(moDiaFechado):   frmMenu.CfgBtn('111110001');
      Integer(moDesativado):   frmMenu.CfgBtn('111110001');
      Integer(moInicial):
                           begin
                              frmMenu.CfgBtn('11');
                              DM.g_int_coringa := 100;
                           end;
      Integer(moVenda):        frmMenu.CfgBtn('111100001001');
      Integer(moPgto):         frmMenu.CfgBtn('111100001001');
      Integer(moLivre):        frmMenu.CfgBtn('111111111001');
   end;

   if not ECF.Ativo then
      frmMenu.CfgBtn('111110001')
   else
   if not ECF.EmLinha then
      frmMenu.CfgBtn('111110001');

   if (i_modoTela in [Integer(moDiaFechado), Integer(moDesativado)])or
      (not ECF.Ativo)or(not ECF.EmLinha) then
      ShowMessage('Emissão de documentos pelo ECF desabilitadas.');

   frmMenu.ShowModal;
   FreeAndNil(frmMenu);

   if DM.g_int_coringa = 100 then //se entrou no menu cfg, pede login
      Modo_Tela(moInicial)
   else
      Verificar_Status_PDV;

   if i_serieD > 0 then
      Display('NF Série D Nº ' + format('%.6d', [i_serieD]), -1);

   DM.g_int_coringa := 0;
end;

procedure TfrmPDV.btnF8Click(Sender: TObject);
begin
   if not DM.Conectar then
   begin
      ShowMessage('Não foi possível conectar com o servidor.');
      exit;
   end;

   frmpv := Tfrmpv.Create(Self);
   frmpv.ShowModal;

   if Assigned(frmpv) then
      FreeAndNil(frmpv);

   DM_ECF.CallMenuFiscal;
   Verificar_Status_PDV;
end;

procedure TfrmPDV.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin //grava as cfg da grid
   for i := 0 to ComponentCount - 1 do
   begin
       if (Components[i] is TcxGridDBTableView) then
          (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
   end;

   ini.StoredValue['w'] := width;
   ini.StoredValue['h'] := height;
   ini.SaveFormPlacement;
   DM_INI.INI.SaveFormPlacement;

   if Assigned(vidaLink) then
   begin
      FreeAndNil(vidaLink);
   end;

   FreeAndNil(DM);
   FreeAndNil(DM_INI);
   FreeAndNil(DMConn);
   FreeAndNil(DM_ECF);
   action := cafree;
   Release;
end;

procedure TfrmPDV.FormCreate(Sender: TObject);
var
   w,h,i: integer;
begin

   //obtem o width e height original

   w := width;
   h := Height;
   height_orig := h;//var global usado no rezise

   Application.OnException := TrataErros;
   Application.OnMessage   := No_Tab;
   CAPTION := 'AUTOCOM PDV - ' + C_117;
   frmSplash.Msg('Carregando Ini...');
   DM_INI := TDM_INI.Create(self);

   DMConn := TDMConn.Create(self);

   frmSplash.Msg('Carregando módulo de dados...');
   DM     := TDM.Create(self);

   frmSplash.Msg('Carregando módulo ECF');
   DM_ECF := TDM_ECF.Create(self);

   frmSplash.Msg('Carregando base local');
   DM_PDV := TDM_PDV.Create(self);
   DM_PDV.Conectar;//liga-se a base local
   DM_PDV.TECF.Open;
   DM_ECF.Relogio := now;

   frmSplash.Msg('Configurando aplicativo...');
   //ini do frmMain
   ini.inifilename := Aqui(C_DAT_FILE, MD5_Str(Application.ExeName + TForm(sender).Name) + '.fr');
   ini.Active      := True;
   ini.RestoreFormPlacement;

   DM_INI.ini.inifilename := Aqui(C_INI_FILE, 'autocom.ini');
   DM_INI.ini.Active      := True;
   DM_INI.ini.RestoreFormPlacement;

   FR.InitializeForm;
   lblFone.Caption := DM_INI.ini.StoredValue['paradigma_fone'];
   //le as dimensoes no ini
   width  := INI.StoredValue['w'];
   Height := INI.StoredValue['h'];

   //ajusta caso seja menor que o original
   if width < w then
      width := w;

   if Height < h then
      Height := h;

   //calcula a proporção entre o height original e o atual para dimensionar os demais forms ao abri-los
   h_proporc := Arredonda(Percent(height,h),2) - DM_INI.INI.StoredValue['fatt'];

   for i := 0 to pg1.PageCount -1 do
      pg1.Pages[i].TabVisible := False;

   for i := 0 to pg2.PageCount -1 do
      pg2.Pages[i].TabVisible := False;

   CfgTab(pg1, pg2, TabLogin, TabIni);

   if FileExists(Aqui(C_LOGO_FILE, 'empresa.png')) then
      imgEmpresa.Picture.LoadFromFile(Aqui(C_LOGO_FILE, 'empresa.png'));

   frmSplash.Msg('Carregando arquivo criptografado...');

   if not DM_ECF.Carregar_AAC then
   begin
      DM_PDV.Gravar_Estado_PDV(epDesativado);
      //Modo_Tela(moDesativado);
      exit;
   end;

   frmSplash.Msg('Configurando TEF...');
   DM_ECF.Configurar_TEF;

   if not DM_ECF.TEF_Ativar then
   begin
      Application.Terminate;
      exit;
   end;

   edCod.Properties.MaxLength := DM_INI.ini.StoredValue['tam_max_cod_item'];
   dblblvrcusto.Visible       := DM_INI.ini.StoredValue['exibir_custo'];
   lblvrcusto.Visible         := dblblvrcusto.Visible;
   
   DM_ECF.ECF_Config;
   frmSplash.Msg('Abrindo ECF...');

   if not DM_ECF.ECF_Ativar then
   begin
      DM_PDV.Gravar_Estado_PDV(epDesativado);
      //Modo_Tela(moDesativado);
      tmRelogio.Enabled   := True;
      popup(DM_ECF.st_Msg);
      exit;
   end
   else
   begin
      frmPDV.ECF.IdentificaPAF('','');  //este recurso apaga md5 duplicado no cupom
      DM_ECF.Delay;
      frmPDV.ECF.IdentificaPAF(DM_ECF.AAC.IdentPAF.Paf.Nome + ' v' +
                               DM_ECF.AAC.IdentPAF.Paf.Versao,
                               C_51 +
                               DM_ECF.AAC.IdentPAF.ArquivoListaAutenticados.MD5
      );
      DM_ECF.Delay;
      DM.id_Term := ECF.NumECF;
   end;

   if DM_ECF.TEF.GPAtual <> gpnenhum then
      Bar1.Panels[1].Text := 'F2-TEF ADM';
end;

procedure TfrmPDV.Popup(msg: string);
begin
  if msg =C_ST_VAZIO then
  begin
     pnlpopup.Hide;
     exit;
  end;

  mPopup.Lines := explode(msg, C_CR);

  if mPopup.Lines.Count < 3 then
     pnlpopup.Height := mPopup.Tag div 2
  else
     pnlpopup.Height := mPopup.Tag;

  pnlpopup.Top := bar1.Top - pnlpopup.Height - 2;
  pnlpopup.Show;
  pnlpopup.Tag := 0;
end;

procedure TfrmPDV.SplashMsg(msg: string);
begin
   if Assigned(frmsplash) then
      frmSplash.Msg(msg);
end;

procedure TfrmPDV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
      VK_F1    : if btnF1.Enabled then btnF1.Click;

      VK_F2    : if (DM_PDV.Ler_Estado_PDV = epLivre)and( DM_ECF.TEF.GPAtual <> gpNenhum) then
                 try
                    DM_PDV.Gravar_Estado_PDV(epTEFAdm);
                    Verificar_Status_PDV;
                    DM_ECF.TEF.ADM(DM_ECF.TEF.GPAtual);
                 finally
                    DM_PDV.Gravar_Estado_PDV(epLivre);
                    ECF.BloqueiaMouseTeclado := True;//este dois devem ser false na finalização para que o TEF assuma
                    ECF.ReTentar             := True;
                    Popup('');
                    Verificar_Status_PDV;
                 end;

      VK_F3    : if (ECF.EmLinha) then
                 begin
                    ECF.AbreGaveta;
                    Popup('Abre gaveta!');
                 end;

      VK_F8    : if btnF8.Enabled then btnF8.Click;
      VK_F10   : if btnF10.Enabled then btnF10.Click;
      VK_F11   : if btnF11.Enabled then btnF11.Click;
   end;
end;

procedure TfrmPDV.FormResize(Sender: TObject);
var
   Lista : TStringList;
begin
   inherited;
   if FileExists(Aqui('INI', 'fonte.ini')) then
   begin
      Lista := TStringList.Create;
      Lista.LoadFromFile(Aqui('INI', 'fonte.ini'));
      edit1.Text := lista.Strings[0];
      Lista.Free;
   end;

   DMSkin.DSC1.Style.Font.Size := StrToIntDef(Edit1.text,8);

   if height_orig <=0 then
      height_orig := Height;
   h_proporc := Arredonda(Percent(Height,height_orig),2); //anota a nova proporção entre o height original e o redimensionado
end;

procedure TfrmPDV.FormShow(Sender: TObject);
var
   i: integer;
begin
  inherited;
  SplashMsg('Ajustando telas...');
  for i := 0 to ComponentCount - 1 do //ajusta a grid
  begin
      if (Components[i] is TcxGridDBTableView) then
      begin
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
      end;
  end;

  GetSkinDLL.GetSkinName;

  Popup(C_48 + DM_ECF.PAF.Path + C_49 +
        C_51 + DM_ECF.PAF.AAC.IdentPAF.ArquivoListaAutenticados.MD5 + C_CRLF +
        C_50 + DM_ECF.PAF.AAC.IdentPAF.Paf.PrincipalExe.MD5);

  //tmRelogio.Enabled := True;
  Modo_Tela(moInicial);
  frmSplash.hide;
  FreeAndNil(frmSplash);
end;

procedure TfrmPDV.Gerar_Req_XXVI;
begin
   frmMenuFisc := TfrmMenuFisc.Create(self);
   frmMenuFisc.Gerar_REQUISITO_XXVI(DM_ECF.ReducaoZ.DataDoMovimento);
   FreeAndNil(frmMenuFisc);
end;

procedure TfrmPDV.Modo_Tela(modo: ModoTela);
begin
   i_modoTela := Integer(Modo);
   tmIntegracao.Enabled := False;

   case modo of
      moDesativado: begin
                       CfgTab(pg1, pg2, TabLogin, TabIni);
                       lblAviso.Show;
                       pnlLogin.Hide;
                       Display('PDV DESATIVADO', 0);
                       CfgBtn('10001');
                       DM_ECF.CallMenuFiscal;
                    end;

      moInicial, moDiaFechado: begin
                    //DM_ECF.ECF_Desativar;
                    pnlLogin.Visible := True;
                    CfgTab(pg1, pg2, TabLogin, TabIni);
                    lblAviso.Show;
                    bar1.Panels[4].Text := C_ST_VAZIO;//DM_ECF.st_Msg;
                    DM_ECF.st_Msg := C_ST_VAZIO;
                    Display('FAÇA O LOGIN!', 0);
                    CfgBtn('10001');
                 end;

      moDiaNaoAberto: begin
                         lblAviso.Show;
                         pnlLogin.Hide;
                         Display('SEM MOVIMENTO NO DIA', 0);

                         if (DM_ECF.i_crz > 0)and(Assigned(DM_ECF.ReducaoZ)) then
                            Popup('Data do último movimento: ' + FormatDateTime('dd/mm/yyyy', DM_ECF.ReducaoZ.DataDoMovimento));
                         DM_ECF.CallMenuFiscal;
                      end;

      moVenda: begin
                  CfgTab(pg1, pg2, TabVenda, TabItens);
                  pnlLogin.Hide;

                  if DM_PDV.TVenda_Item.IsEmpty then
                     Display('VENDA ABERTA', 0)
                  else
                  begin
                     if n_Total <=0 then //se é o primeiro item ou retomou a venda
                     begin
                        n_Total := DM_PDV.Total_venda;
                     end
                     else//acrescenta o novo item
                     begin
                        n_Total := n_Total + DM_PDV.TVenda_ItemvProd.AsCurrency;
                     end;

                     Display(DM_PDV.TVenda_ItemxProd.AsString, n_Total);
                  end;

                  if DM_PDV.TVenda_Item.RecordCount > 0 then
                     CfgBtn('10010')
                  else
                     CfgBtn('1');

                 // btnF8.Enabled := DM_INI.ini.StoredValue['paf_pre_venda_caixa'];

                  if TabVenda.Enabled then
                     edCod.SetFocus;

                  edCod.Clear;
                  edQtd.Clear;
                  DM_ECF.Fechar_MenuFuscal;
               end;

      moLivre: begin
                  pnlLogin.Hide;
                  lblAviso.Hide;
                  DM_PDV.Limpar_Cliente; //retira o cliente eventual

                  begin
                     if DM_INI.ini.StoredValue['f10_iniciar_venda'] then
                     begin
                        CfgTab(pg1, pg2, TabLogin, TabIni);

                        if DM_INI.ini.StoredValue['paf_pre_venda_caixa'] then
                           CfgBtn('11101')
                        else
                           CfgBtn('10101');
                     end
                     else
                     begin
                        CfgTab(pg1, pg2, TabVenda, TabIni);

                        if DM_INI.ini.StoredValue['paf_pre_venda_caixa'] then
                           CfgBtn('11001')
                        else
                           CfgBtn('10001');

                        edCod.SetFocus;
                     end;
                  end;
                  Display('CAIXA LIVRE', 0);
                  tmIntegracao.Enabled := True;
                  DM_ECF.CallMenuFiscal;
               end;

      moTEFAdm: begin
                   ECF.BloqueiaMouseTeclado := False;//este dois devem ser false na finalização para que o TEF assuma
                   ECF.ReTentar             := False;
                   Display('TEF', 0);
                   pnlLogin.Visible := False;
                   CfgTab(pg1, pg2, TabLogin, TabIni);
                   lblAviso.Hide;
                   CfgBtn;
                end;
   end;
end;

procedure TfrmPDV.No_Tab(var Msg: TMsg; var Handled: Boolean);
begin
//   If not ((Screen.ActiveControl is TCustomMemo) or
 //  (Screen.ActiveControl is TCustomGrid) or
 //  (Screen.ActiveForm.ClassName = \'TMessageForm\')) then
 //  begin
      If Msg.message = WM_KEYDOWN then
      begin
         Case Msg.wParam of
           // VK_RETURN,VK_DOWN : Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
          //  VK_UP : Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
            VK_TAB: Msg.message:=0;
         end;
      end;
  // end;
end;

procedure TfrmPDV.TabLoginShow(Sender: TObject);
begin
   edLogin.Clear;
   edSenha.Clear;
   if pnlLogin.Visible then
      edLogin.SetFocus;
end;

procedure TfrmPDV.TabVendaShow(Sender: TObject);
begin
   edCod.SetFocus;
end;

procedure TfrmPDV.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   if AViewInfo.GridRecord.Values[tbvecf_aliq.Index]='CANC' then //item cancelado
    begin
       ACanvas.Canvas.Brush.Color := $008695EA;
       ACanvas.Canvas.Font.Color := clBlack;
    end
end;

procedure TfrmPDV.tmInativoTimer(Sender: TObject);
begin
   //rotina para verificar inatividade do operador e pedir novo login
   tmInativo.Enabled := False;
   tmInativo.Tag     := tmInativo.tag + 1;

   if (DM_INI.INI.StoredValue['minutos_inativo']>0)and(tmInativo.Tag = DM_INI.INI.StoredValue['minutos_inativo']) then
   begin
      Modo_Tela(moInicial);
      bar1.Panels[4].Text := 'PDV sem uso por mais de ' +
                              IntToStr(DM_INI.INI.StoredValue['minutos_inativo']) +
                             ' minutos. Login requerido.';
   end
   else
   tmInativo.Enabled := True;
end;

procedure TfrmPDV.tmIntegracaoTimer(Sender: TObject);
var
  old_modo: boolean;
begin
   old_modo             := tmIntegracao.Enabled;
   tmIntegracao.Enabled := False;

   try
      if (DM_PDV.Ler_Estado_PDV = epLivre) then
      begin
         try
            DM_PDV.Carga_Estoque_Cli;
         finally
            DM_ECF.TEF.BloquearMouseTeclado(False);
         end;
      end;

      if (DM_PDV.Ler_Estado_PDV = epLivre)and
         (ECF.EmLinha)and
         (DM_PDV.TestaPodeAbrirCupom) then
      begin
         if FileExists(Aqui(C_TXT_FILE, 'crédito.txt')) then
         begin
            Popup('Emitindo CNF crédito...');
            try
              DM_ECF.TEF.BloquearMouseTeclado(True);
              DM_PDV.Imprime_Comprovante(1);
            finally
               DM_ECF.TEF.BloquearMouseTeclado(False);
            end;
         end
         else
         if FileExists(Aqui(C_TXT_FILE, 'sangria.txt')) then
         begin
            Popup('Emitindo Sangria...');
            try
              DM_ECF.TEF.BloquearMouseTeclado(True);
              DM_PDV.Imprime_Comprovante(0);
            finally
               DM_ECF.TEF.BloquearMouseTeclado(False);
            end;
         end
         else
         if FileExists(Aqui(C_TXT_FILE, 'quitação.txt')) then
         begin
              Popup('Emitindo CNF recebimento...');
            try
              DM_ECF.TEF.BloquearMouseTeclado(True);
              DM_PDV.Imprime_Comprovante(2);
            finally
               DM_ECF.TEF.BloquearMouseTeclado(False);
            end;
         end;
      end;
   except
      tmIntegracao.Enabled := old_modo;
   end;
   tmIntegracao.Enabled := old_modo;
end;

procedure TfrmPDV.tmPVTimer(Sender: TObject);
begin
   tmPV.Enabled := False;
   ECF.Tag     := ECF.TimeOut;
   ECF.TimeOut := 600;

   if (DM_INI.ini.StoredValue['paf_pre_venda_caixa']) then
   begin
      if (DM_PDV.TestaPodeAbrirCupom)and(DM.Conectar) then
      try
         Display('Processando PV pendente.',0);
         Log('PDV','prevenda pendente', 'inicio...');
         //verifica sem tem pv com 2 ou mais dias
         DMConn.Q1.Open('select count(*) from venda where tipo="PV" and data<' + Texto_Mysql(DM_ECF.Relogio -1));

         if DMConn.Q1.fields[0].AsInteger > 0 then
         begin
            frmpv := Tfrmpv.Create(self);
            frmpv.Popular_T1(-2); //preenche a tabela com as PV com data < (atual - 1)
             Log('PDV','prevenda pendente', 'popular T1');
            frmpv.btnGerar.Click;  //gera as PV, cancelando em seguida
             Log('PDV','prevenda pendente', 'Gerar');
            if Assigned(frmpv) then
               FreeAndNil(frmpv);
            Log('PDV','prevenda pendente', 'OK...');
         end;
      except
         on E: exception do
         begin
         Log('PDV_Err','prevenda pendente', e.Message);
         end;
      end;
   end;

   ECF.TimeOut := ECF.Tag;   //se a redZ foi a do dia, fecha o PDV
   if not DM_PDV.TestaPodeAbrirCupom then
   begin
      DM_PDV.Gravar_Estado_PDV(epDiaFechado);
      Verificar_Status_PDV;
   end;
end;

procedure TfrmPDV.tmRelogioTimer(Sender: TObject);
begin
   tmRelogio.Enabled := False;
   DM_ECF.Relogio := IncSecond(DM_ECF.Relogio,1);
   caption := 'PDV - ' + c_Caption + DateTimeToStr(DM_ECF.Relogio);

   if (pnlpopup.tag<6)and(pnlpopup.Visible) then
      pnlpopup.tag := pnlpopup.tag + 1;

   if pnlpopup.tag = 6 then
   begin
      pnlpopup.hide;
   end;

   tmRelogio.Enabled := true;
end;

procedure TfrmPDV.VendeTablet(codigo: string);
begin
   DM.Qtablet.Close;
   DM.Qtablet.Params[0].AsString := codigo;
   DM.Qtablet.Open;

   if DM.QTablet_Item.IsEmpty then //QTablet_Item despreza os cancelados na query
   begin
      try
         DM.ExecSQL('delete from tablet_itens where tablet=' + Texto_Mysql(DM.Qtabletid.Value));
      finally
         Popup('TABLET VAZIO');
         Display('TABLET VAZIO', -1);
      end;
      exit;
   end;

   if (DM_PDV.Ler_Estado_PDV = epLivre)and(DM_PDV.TestaPodeAbrirCupom) then
   begin
      lblccd.Visible := false;
      pnlQtd.Visible   := not lblccd.Visible;
      ECF.AbreCupom;
   end;

   //processa os itens - abro novamente o dataset pq ele pode ser fechado em outro evento
   DM.Qtablet.Close;
   DM.Qtablet.Params[0].AsString := codigo;
   DM.Qtablet.Open;
   DM.QTablet_Item.First;
   DM_PDV.TProd.Open;

   while not DM.QTablet_Item.Eof do
   begin
      if DM_PDV.TProd.Locate('id', DM.QTablet_Itemproduto.Value, []) then
      begin
         Vende_Item(DM.QTablet_Itemqtd.Value);
      end;
      DM.QTablet_Item.Next;
   end;

   lblccd.Visible := True;
   pnlQtd.Visible := not lblccd.Visible;
   DM.ExecSQL('delete from tablet_itens where tablet=' + Texto_Mysql(DM.Qtabletid.Value));
   DM.Qtablet.Close;
end;

procedure TfrmPDV.Vende_Item(qtd: currency);
var
   aliq: string;
   n: currency;
begin
   TabVenda.Enabled := False;

   if edQtd.Value >0 then
      qtd := edQtd.Value;

   try
      n := StrToFloatDef(DM_PDV.TProdaliq_ecf.AsString,0);

      if n = 0 then
         aliq := DM_PDV.TProdaliq_ecf.AsString
      else
      begin
         n    := n/100;
         aliq := FloatToStr(n);
      end;

      if not DM_PDV.TTrn.IsEmpty then //venda de item complementar ao trn
      begin
         n := g_desc_item;
         if DM_PDV.TProdmedicam_pmc.Value > DM_PDV.TProdvrvenda_vista.Value then
            g_desc_item := Arredonda(((DM_PDV.TProdmedicam_pmc.Value - DM_PDV.TProdvrvenda_vista.Value)*edQtd.Value) - n,2);
      end;

      try
         ECF.ArredondaItemMFD := DM_PDV.TProdcalculo_por_arredondamento.AsString = 'S';
         ECF.VendeItem(DM_PDV.TProdcod_gtin.AsString,
                       DM_PDV.TProdnome.AsString,
                       aliq,
                       qtd,
                       //informa o valor liquido ou o pmc se for trn e tiver desconto
                       Iif(DM_PDV.TTrn.IsEmpty, DM_PDV.TProdvrvenda_vista.AsCurrency,
                           Iif(g_desc_item>0,DM_PDV.TProdmedicam_pmc.AsCurrency, DM_PDV.TProdvrvenda_vista.AsCurrency)),
                       g_desc_item,
                       Copy(DM_PDV.TProdsigla_unid.AsString,1,2),
                       '$'
         );
      except
         on E:exception do
         begin
            ShowMessage('Vende Item: ' + e.Message);
            DM_PDV.Gravar_Estado_PDV(epLogin);
            Verificar_Status_PDV(True);
            exit;
         end;
      end;
   finally
      TabVenda.Enabled := True;
      g_desc_item      := 0;
   end;
end;


procedure TfrmPDV.Verificar_Status_PDV(por_login: boolean);
var
   Est: TACBrECFEstado;
   dt: TDateTime;
   crash: boolean;
begin
   CfgBtn('1');
   crash :=  (DM_PDV.Ler_Estado_PDV = epPag) or (DM_PDV.TECFestado_ant.Value <= -100);

   if (DM_INI.ini.StoredValue['paf_pre_venda_caixa'])and(not crash)and(DM.Conectar) then
   begin
      DM_PDV.Q1.Open('select count(*) from venda where coa<0 and pv<>"0"');
      crash := DM_PDV.Q1.Fields[0].AsInteger > 0;
   end;

   if por_login then
      DM_PDV.Gravar_Estado_PDV(epDesativado);

   if ECF.EmLinha then
   begin
      Est := ECF.Estado;

      try
         DM_ECF.Delay;
         dt  := ECF.DataMovimento;
      except
         dt := 0;
      end;

      //se tem venda anterior pendurada
      if (Trunc(dt) < Trunc(DM_ECF.Relogio))and not
         (Est in [estRequerZ, estBloqueada])and
         (TimeOf(DM_ECF.Relogio)>= StrToTime('02:00')) then
      begin
         if estVenda in [Est] then
         try
            DM_PDV.Cancelar_Venda;
            frmPDV.ECF.CancelaCupom;
         except;
            ;
         end;
         DM_PDV.Gravar_Estado_PDV(epnaoini);
      end;
      //se tem z pendente --- Por algum motivo bizarro, o ECF esta retornando esta flag, indevidamente. Dai,
      if (estRequerZ in [Est])and //se requer Z foi detectado verifico se a data do movimento é menor que a atual
         (Trunc(dt) > 0) and
         (Trunc(dt) < Trunc(DM_ECF.Relogio)) then//e ai faço a redz
      begin
         Log('PDV_Err','ReducaoZ pendente', DateTimeToStr(dt));
         ShowMessage('Uma redução Z está pendente no ECF e será emitida agora.');
         DM_PDV.Cancelar_Venda(True);
         DM_ECF.Emitir_RZ(0);
         DM_PDV.Gravar_Estado_PDV(epnaoini);
         Log('PDV_Err','ReducaoZ pendente', 'RZ Emitida. ' + DateTimeToStr(dt));
      end;
      //se o turno foi fechado
      if (DM.Operador.ID <=0)or
         ((DM_PDV.TECFvr_din.Value + DM_PDV.TECFvr_crt.Value +
          DM_PDV.TECFvr_chq.Value + DM_PDV.TECFvr_fat.Value+ DM_PDV.TECFvr_sang.Value +
          DM_PDV.TECFvr_supri.Value + DM_PDV.TECFvr_nfiscal.Value = 0)and
          (Est = estLivre)) then
          DM_PDV.Gravar_Estado_PDV(epNaoIni);

      //crash

      if DM_INI.ini.StoredValue['modo_convenio_trn'] then
      begin
         DM_PDV.Q1.Open('select * from trn where crt in ("CANCE")'); //verifica se tem cancelamento trn pendente de anulação

         if (not DM_PDV.Q1.IsEmpty) then
         begin
            frmtrn := Tfrmtrn.Create(self);
            frmtrn.passo := 7;//anula o cancelamento
            frmtrn.ShowModal;

            if Assigned(frmtrn) then
               FreeAndNil(frmtrn);
         end;

         DM_PDV.Q1.Open('select * from trn where crt="CANC"'); //verifica se tem venda trn pendente de anulação

         if not DM_PDV.Q1.IsEmpty then
         begin
            crash := True;
            frmtrn := Tfrmtrn.Create(self);
            frmtrn.passo := 5;  //anula a venda trn
            frmtrn.ShowModal;

            if Assigned(frmtrn) then
               FreeAndNil(frmtrn);
         end;
      end;

      if (estPagamento in [Est])or     //houve um crash durante ao processamento das FPAG
         (DM_PDV.TECFestado_ant.Value = 1)or //houve crash com TEF, cancela a venda
         (DM_PDV.Ler_Estado_PDV = epTEF) or //ou durante a emissao dos comprovantes TEF
         (crash) then //ou cupom parou na finalização
      try
         DM_PDV.Cancelar_Venda;

         if Est in[estVenda, estPagamento]  then
            frmPDV.ECF.CancelaCupom;

         if DM_PDV.TECFestado_ant.Value = 1 then
         begin
            DM_PDV.TECF.Edit;
            DM_PDV.TECFestado_ant.Value := 0;
            DM_PDV.TECF.Post;
         end;

         ShowMessage('A venda foi cancelada em virtude de um crash no sistema.');
      finally;
         DM_PDV.Gravar_Estado_PDV(epLivre);
      end
      else  //se tem nao fiscal aberto
      if (estNaoFiscal in [Est]) then
      try                                    //neste caso cancela nao fiscal
         frmPDV.ECF.CancelaNaoFiscal;
         ShowMessage('Cupom não fiscal cancelado em virtude de um crash no sistema.');
      finally;
         DM_PDV.Gravar_Estado_PDV(epLivre);
      end
      else //fecha eventual relatorio aberto
      if (estRelatorio in [Est]) then
      try
         frmPDV.ECF.FechaRelatorio;
      finally;
         DM_PDV.Gravar_Estado_PDV(epLivre);
      end
      else//se a venda esta aberta
      if estVenda in [Est] then
         DM_PDV.Gravar_Estado_PDV(epVenda)
      else //se esta desativado e o movimento é de hoje
      if ( (DM_PDV.TECFdt_movi.Value <= Trunc(DM_ECF.Relogio))or(dt = Trunc(DM_ECF.Relogio)) )and
         (DM_PDV.Ler_Estado_PDV = epDesativado) then
      begin //verifica se o ecf esta livre e muda o estado do PDV
         try
            DM_PDV.TestaPodeAbrirCupom;
            DM_PDV.Gravar_Estado_PDV(Iif(por_login, epLivre, epLogin))
         except
            on E: exception do
               Popup(E.Message);
         end;
      end;
   end
   else
   begin
      DM_PDV.Gravar_Estado_PDV(epLogin);
      Popup('ECF desligado ou sem condições de operar.');
   end;

   //ajusta a tela conforme o estado do PDV
   case DM_PDV.Ler_Estado_PDV of
       epnaoini: Modo_Tela(moDiaNaoAberto);
       epLivre:  Modo_Tela(moLivre);
       epVenda:  Modo_Tela(moVenda);
       epTEF:;
       epTEFAdm: Modo_Tela(moTEFAdm);
       epDiaFechado: Modo_Tela(moDiaFechado);
       epDesativado: Modo_Tela(moDesativado);
       epLogin: Modo_Tela(moInicial);
   end;
end;

end.
