unit uDMecf;

interface

uses
  System.SysUtils, System.Classes, ACBrPAF, ACBrSocket, ACBrIBPTax, ACBrBAL,
  ACBrValidador, ACBrEAD, ACBrAAC, ACBrBase, ACBrECF,ACBrTEFDClass, ACBrUtil,
  ACBrTEFDCliSiTef, ACBrTEFDCliDTEF, ACBrECFClass, ACBrTEFD, forms, dialogs,
  ACBrPAFRegistros, ACBrCNIEE,System.UITypes, ACBrDevice, Windows, dateutils;

type
  TDM_ECF = class(TDataModule)
    AAC: TACBrAAC;
    EAD: TACBrEAD;
    Bal: TACBrBAL;
    IBPTax: TACBrIBPTax;
    PAF: TACBrPAF;
    CNIEE: TACBrCNIEE;
    TEF: TACBrTEFD;

    procedure AACVerificarRecomporValorGT(const NumSerie: string; var ValorGT: Double);
    procedure AACVerificarRecomporNumSerie(const NumSerie: string; const ValorGT: Double; var CRO, CNI: Integer);
{$IFDEF PDV}
    procedure Delay;
{$ENDIF}
    procedure PAFError(const MsnError: AnsiString);
    procedure AACGetChave(var Chave: AnsiString);
    procedure TEFAguardaResp(Arquivo: string; SegundosTimeOut: Integer; var Interromper: Boolean);
    procedure TEFAntesCancelarTransacao(RespostaPendente: TACBrTEFDResp);
    procedure TEFAntesFinalizarRequisicao(Req: TACBrTEFDReq);
    procedure TEFBloqueiaMouseTeclado(Bloqueia: Boolean; var Tratado: Boolean);
    procedure TEFComandaECF(Operacao: TACBrTEFDOperacaoECF; Resp: TACBrTEFDResp; var RetornoECF: Integer);
    procedure TEFComandaECFAbreVinculado(COO, IndiceECF: string; Valor: Double; var RetornoECF: Integer);
    procedure TEFComandaECFImprimeVia(TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
      ImagemComprovante: TStringList; var RetornoECF: Integer);
    procedure TEFComandaECFPagamento(IndiceECF: string; Valor: Double; var RetornoECF: Integer);
    procedure TEFDepoisConfirmarTransacoes(RespostasPendentes: TACBrTEFDRespostasPendentes);
    procedure TEFExibeMsg(Operacao: TACBrTEFDOperacaoMensagem; Mensagem: string; var AModalResult: TModalResult);
    procedure TEFInfoECF(Operacao: TACBrTEFDInfoECF; var RetornoECF: string);
    procedure TEFRestauraFocoAplicacao(var Tratado: Boolean);
    procedure TEFMudaEstadoResp(EstadoResp: TACBrTEFDRespEstado);
    procedure TEFDepoisCancelarTransacoes(RespostasPendentes: TACBrTEFDRespostasPendentes);
    procedure TEFMudaEstadoReq(EstadoReq: TACBrTEFDReqEstado);
    procedure TEFComandaECFSubtotaliza(DescAcre: Double; var RetornoECF: Integer);

    procedure EADGetChavePrivada(var Chave: AnsiString);
  private
    fCancelado: boolean;

    procedure PreencherHeader(Header: TRegistroX1);
    {$IFDEF PDV}
    procedure CapturarCNIEE_Marca_ECF;
    {$ENDIF}
    procedure MsgTEF(Operador: boolean; stMsg: String; subMsg: boolean = False);

  public
    ReducaoZ: TACBrECFDadosRZ; //declare ACBrECFClass no uses
    Relogio: TDateTime;
    i_Operador, i_cro, i_crz: integer;
    cur_Peso: Currency;
    st_Msg: String;

   st_ECF_Serie,
   st_ECF_Num,
   st_ECF_Loja,
   st_ECF_Mod,
   st_ECF_SubMod,
   st_ECF_Versao,
   st_ECF_CNIEE,
   st_ECF_Marca: string;

   dbl_ECF_GT: Double;

   dt_Data_Hr_SB_ECF: TDateTime;

{$IFDEF PDV}
    function Valor_ECF: currency;
    function ValidarGTSerial: boolean;
    function ECF_Ativar: boolean;
    procedure Dados_RedRZ;
    function FILTRO: string;

    procedure ECF_Config;
    procedure ECF_Desativar;
    procedure ECF_Msg(info: string = '');

    procedure Emitir_RZ(Min: integer);
    procedure Imprimir_Fechamento(Total: boolean);
    function Relatorio_Gerencial(texto: TStringList; vias: integer = 2; indice: integer = 1):boolean;
    procedure Fechar_MenuFuscal;
    procedure CallMenuFiscal(Aowner: TComponent = nil);
{$ENDIF}

    function TEF_Ativar: boolean;

    function Carregar_AAC: boolean;
    procedure Configurar_TEF;


  end;

var
  DM_ECF: TDM_ECF;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses udm_ini, uFuncoes, uMD5Print, uAutocomConsts, uDM
{$IFDEF PDV},ucallMenuFiscal,updv, uMsgECF, uDM_PDV, uConcluir, utefMsg, uSplash {$ENDIF};

{$R *.dfm}

{ TDM_ECF }

procedure TDM_ECF.AACGetChave(var Chave: AnsiString);
begin
  Chave := C_CHAVE;
end;

{$IFDEF PDV}
procedure TDM_ECF.Dados_RedRZ;
var
  DadosReducaoStr: String;
begin  // Obtendo os dados da redução Z;
  DadosReducaoStr := String(frmPDV.ECF.DadosUltimaReducaoZ);

  // jogar a classe preenchida para uma variavel isso facilita o acesso aos dados
  ReducaoZ := frmPDV.ECF.DadosReducaoZClass;

{  // dados gerais
  ReducaoZ.DataDaImpressora;
  ReducaoZ.DataDoMovimento;
  ReducaoZ.NumeroDeSerie;
  ReducaoZ.NumeroDeSerieMFD;
  ReducaoZ.NumeroDoECF;
  ReducaoZ.NumeroDaLoja;
  ReducaoZ.NumeroCOOInicial;
  ReducaoZ.COO - 1; // COO Final

  // CONTADORES
  ReducaoZ.COO;
  ReducaoZ.GNF;
  ReducaoZ.CRO;
  ReducaoZ.CRZ;
  ReducaoZ.CCF;
  ReducaoZ.CFD;
  ReducaoZ.CDC;
  ReducaoZ.NCN;
  ReducaoZ.GRG;
  ReducaoZ.GNFC;
  ReducaoZ.CCDC;
  ReducaoZ.CFC;

  // TOTALIZADORES GERAIS
  ReducaoZ.ValorGrandeTotal;
  ReducaoZ.ValorVendaBruta;
  ReducaoZ.VendaLiquida;
  ReducaoZ.TotalTroco;

  // ICMS
  ReducaoZ.TotalICMS;
  ReducaoZ.CancelamentoICMS;
  ReducaoZ.DescontoICMS;
  ReducaoZ.AcrescimoICMS;
  ReducaoZ.SubstituicaoTributariaICMS;
  ReducaoZ.IsentoICMS;
  ReducaoZ.NaoTributadoICMS;

  // ISSQN
  ReducaoZ.TotalISSQN;
  ReducaoZ.CancelamentoISSQN;
  ReducaoZ.DescontoISSQN;
  ReducaoZ.AcrescimoISSQN;
  ReducaoZ.SubstituicaoTributariaISSQN;
  ReducaoZ.IsentoISSQN;
  ReducaoZ.NaoTributadoISSQN;

  // OPERAÇÕES NÃO FISCAIS
  ReducaoZ.TotalOperacaoNaoFiscal;
  ReducaoZ.CancelamentoOPNF;
  ReducaoZ.DescontoOPNF;
  ReducaoZ.AcrescimoOPNF;

  // Todas as Aliquotas, de ICMS e ISSQN na ordem original de programação no ECF
  for I := 0 to ReducaoZ.TodasAliquotas.Count - 1 do
  begin
    with ReducaoZ.TodasAliquotas[I] do
    begin
      Sequencia;
      Indice;
      Tipo;
      Aliquota;
      Total;
    end;
  end;

  // ICMS ********************************************************************
  for I := 0 to ReducaoZ.ICMS.Count - 1 do
  begin
    with ReducaoZ.ICMS[I] do
    begin
      Sequencia;
      Indice;
      Tipo;
      Aliquota;
      Total;
    end;
  end;

  // ISSQN *******************************************************************
  for I := 0 to ReducaoZ.ISSQN.Count - 1 do
  begin
    with ReducaoZ.ISSQN[I] do
    begin
      Sequencia;
      Indice;
      Tipo;
      Aliquota;
      Total;
    end;
  end;

  // TOTALIZADORES NÃO FISCAIS ***********************************************
  for I := 0 to ReducaoZ.TotalizadoresNaoFiscais.Count - 1 do
  begin
    with ReducaoZ.TotalizadoresNaoFiscais[I] do
    begin
      Indice;
      Descricao;
      PermiteVinculado;
      FormaPagamento;
      Total;
      Contador;
    end;
  end;

  // MEIOS DE PAGAMENTO ******************************************************
  for I := 0 to ReducaoZ.MeiosDePagamento.Count - 1 do
  begin
    with ReducaoZ.MeiosDePagamento[I] do
    begin
      Indice;
      Descricao;
      PermiteVinculado;
      Data;
      TipoDoc;
    end;
  end;

  // RELATÓRIO GERENCIAL *****************************************************
  for I := 0 to ReducaoZ.RelatorioGerencial.Count - 1 do
  begin
    with ReducaoZ.RelatorioGerencial[I] do
    begin
      Indice;
      Descricao;
      Contador;
    end;
  end; }
end;


procedure TDM_ECF.Delay;
var
   i: integer;
begin
   i := 0;
   repeat
      if (frmPDV.ECF.AguardandoResposta) then
      begin
         Inc(i);
         sleep(1000);
      end
      else
         i := 5;
   until
       i = 5;
end;

//exibe a tela de msg do ecf
procedure TDM_ECF.ECF_Msg(info: string);
begin
   //Application.ProcessMessages;
   if Assigned(frmMsg)and(info = C_ST_VAZIO) then
   begin
      if frmMsg.tag > 3 then
      begin
         frmMsg.Close;
         FreeAndNil(frmMsg);
      end;
      exit;
   end;

   if info <> C_ST_VAZIO then
   try
      if not Assigned(frmMsg) then
         frmMsg := TfrmMsg.Create(self);

         frmMsg.pnlMsg.Caption := info;
         frmMsg.Show;
   except
   ;
   end;
end;

procedure TDM_ECF.Emitir_RZ(Min: integer);
var
   dt_aj: TDateTime;
begin
   dt_aj := Relogio;

   if Min <> 0 then
   begin
      IncMinute(dt_aj, Min);
      frmPDV.ECF.ReducaoZ(dt_aj);
   end
   else
   frmPDV.ECF.ReducaoZ(0);
end;


function TDM_ECF.ValidarGTSerial: boolean;
var
   i: integer;
begin
   Result := true;
   exit;

   //----------------------------
   i := AAC.VerificarGTECF(st_ECF_Serie, dbl_ECF_GT);
   Result := i = 0;

   case i of
      -1: ShowMessage('ERRO ECF - Nº de série não confere com arquivo PAF.');
      -2: ShowMessage('ERRO ECF - Valor do GT e CRO ou Venda Bruta ou CRZ não conferem com os dados da última Red. Z.');
   end;

   if not Result then
      st_Msg := 'Erro na conferência do GT/Serial do ECF.'
   else
   begin
      if i_cro > DM_PDV.TECFcro.Value then
      begin
         DM_PDV.TECF.Edit;
         DM_PDV.TECFcro.Value := i_cro;
         DM_PDV.TECF.Post;
         ShowMessage('O valor do GT será recomposto.');
      end;
   end;
end;

function TDM_ECF.Valor_ECF: currency;
begin
   Result := DM_PDV.TECFvr_din.Value + DM_PDV.TECFvr_supri.Value + DM_PDV.TECFvr_nfiscal.Value - DM_PDV.TECFvr_sang.Value;
end;


function TDM_ECF.ECF_Ativar: boolean;
var
   i: integer;
begin
   if frmPDV.ECF.Ativo then
   begin
      Result := true;
      exit;
   end;

   try
      st_Msg := 'Impressora fiscal desligada, desconectada, sem papel ou em erro';

      try
         frmPDV.ECF.Ativar;
         frmPDV.ECF.Device.ProcessMessages  := not DM_INI.INI.StoredValue['Aguarda_ECF'];
         frmPDV.ECF.AguardaImpressao        := DM_INI.INI.StoredValue['Aguarda_ECF'];
      except
         ;
      end;

      Result := frmPDV.ECF.Ativo;

      if Result then
      begin
         st_Msg := C_ST_VAZIO;

         frmPDV.SplashMsg('Lendo serial do ECF...');
         st_ECF_Serie := frmPDV.ECF.NumSerie;

         frmPDV.SplashMsg('Lendo Nº do ECF...');
         st_ECF_Num := frmPDV.ECF.NumECF;

         if StrToIntDef(st_ECF_Num,0)>0 then
         if not DM_PDV.TECF.Locate('ecf',StrToIntDef(st_ECF_Num,0), []) then
         begin
            DM_PDV.TECF.Insert;
            DM_PDV.TECFecf.Value        := StrToIntDef(st_ECF_Num,0);
            DM_PDV.TECFestado.Value     := 0;
            DM_PDV.TECFestado_ant.Value := 0;
            DM_PDV.TECF.Post;
         end;

         DM_PDV.TECF.Filter   := 'ecf=' + IntToStr(StrToIntDef(st_ECF_Num,99));
         DM_PDV.TECF.Filtered := True;
         frmPDV.SplashMsg('Lendo modelo do ECF...');
         st_ECF_Mod := (frmPDV.ECF.ModeloStr);

         i := pos(' ', st_ECF_Mod)-1;

         if i <0 then
         i := Length(Trim(st_ECF_Mod));

         frmPDV.SplashMsg('Lendo marca e submodelo do ECF...');
         st_ECF_Marca  := Copy(st_ECF_Mod, 1, i);
         st_ECF_SubMod := Trim(frmPDV.ECF.SubModeloECF);

       //  SHOWMESAGE(st_ECF_Marca + ' ' + frmPDV.ECF.SubModeloECF);

         frmPDV.SplashMsg('Lendo versão e GT do ECF...');
         st_ECF_Versao := Trim(frmPDV.ECF.NumVersao);
         dbl_ECF_GT    := frmPDV.ECF.GrandeTotal;

         frmPDV.SplashMsg('Lendo CRO e CRZ do ECF...');
         i_cro := StrToIntDef(frmPDV.ECF.NumCRO, DM_PDV.TECFcro.Value);
         i_crz := StrToIntDef(frmPDV.ECF.NumCRZ, DM_PDV.TECFcrz.Value);

         DM.id_Term := st_ECF_Num;

         try
            dt_Data_Hr_SB_ECF := frmPDV.ECF.DataHoraSB;
         except
            ;
         end;

         frmPDV.SplashMsg('Lendo CNIEE do ECF...');
         CapturarCNIEE_Marca_ECF;

         frmPDV.SplashMsg('Lendo Dados da última RZ...');


         if DM_ECF.i_crz > 0 then//se existe redução anterior
            DM_ECF.Dados_RedRZ; //pega os dados iniciais da impressora

         Relogio := frmPDV.ECF.DataHora;
         frmPDV.SplashMsg('Hora do ECF: ' + FormatDateTime('dd/mm/yyyy hh:nn:ss', Relogio));

         frmPDV.SplashMsg('Validando GT e serial do ECF...');
      end;

      if Result then
         Result := ValidarGTSerial;

      if Result then
      begin
        if frmPDV.ECF.Estado in [estRelatorio] then
        try
           frmPDV.SplashMsg('Fechando relatório...');
           frmPDV.ECF.FechaRelatorio;
        finally
           ;
        end
        else
        if frmPDV.ECF.Estado in [estNaoFiscal] then
        try
           frmPDV.SplashMsg('Fechando relat. NF...');
           frmPDV.ECF.FechaNaoFiscal;
        finally
           ;
        end
        else
        if frmPDV.ECF.Estado in [estRequerX] then
        try
           frmPDV.SplashMsg('Emitindo LX pendente...');
           frmPDV.ECF.LeituraX;
        finally
           ;
        end;

        st_Msg := C_ST_VAZIO;

     //  sleep(1000);
 //       frmPDV.ECF.IdentificaPAF(AAC.IdentPAF.Paf.Nome + ' v' +
//                                 AAC.IdentPAF.Paf.Versao,
  //                               C_51 +
 //                                AAC.IdentPAF.ArquivoListaAutenticados.MD5
 //       );
      end
      else
      frmPDV.ECF.Ativo := False;
   except
      raise;
   end;
end;

procedure TDM_ECF.CapturarCNIEE_Marca_ECF;
var
  aECF: TACBrCNIEERegistro;
  Arq: string;
begin
   CNIEE.URLDownload := DM_INI.INI.StoredValue['url_cniee'];
   Arq :=  Aqui(C_TXT_FILE, 'cniee.bin');
   CNIEE.Arquivo := Arq;

   if not FileExists(Arq) then
   try
      Log('PDV', 'CapturarCNIEE_Marca_ECF', 'Fazendo o download do arquivo.');
      CNIEE.DownloadTabela;
   except
      on E: exception do
      begin
         Log('PDV_Err', 'CapturarCNIEE_Marca_ECF', E.Message);
      end;
   end;

   Log('PDV', 'CapturarCNIEE_Marca_ECF', 'Abrindo tabela.');
   CNIEE.AbrirTabela;
 //  CNIEE.Exportar('cniee.CSV', exCSV);
    Application.ProcessMessages;
   aECF := CNIEE.BuscarECF(st_ECF_Marca, st_ECF_SubMod, st_ECF_Versao);

   if aECF <> nil then
     // ShowMessage('CNIEE NÃO ENCONTRADO.')
 //  else
   begin
      st_ECF_CNIEE := aECF.CodMarca + aECF.CodModelo + aECF.CodVersao;
      st_ECF_Marca := aECF.DescrMarca;
   end;
end;


function TDM_ECF.Relatorio_Gerencial(texto: TStringList; vias,  indice: integer):boolean;
var
   Est: TACBrECFEstado;
   i: integer;
   retentar: boolean;
   j: integer;

   function msg: boolean;
   begin
      DM_ECF.TEF.BloquearMouseTeclado(False);
      Result := MessageBox(0, 'Falha durante a impressão. Tentar novamente?', 'Atenção!', MB_ICONEXCLAMATION or MB_YESNO) = idYes;
   end;
   //essa rotina é necessária para gerar relatorios não TEF, usando o ECF.rotinas relatorio
begin
   retentar            := frmPDV.ECF.ReTentar;
   frmPDV.ECF.ReTentar := False;
   frmPDV.ECF.Device.ProcessMessages := True;
   Est := estDesconhecido;

   repeat
      frmPDV.ECF.BloqueiaMouseTeclado := True;
      DM_ECF.TEF.BloquearMouseTeclado(True);
      Result := frmPDV.ECF.EmLinha;

      if not Result then
         continue;

      try
         Est    := frmPDV.ECF.Estado;
      except
         Result := False;
         continue;
      end;

      if Est = estRelatorio then
      try
         frmPDV.ECF.FechaRelatorio;
      except
         Result := False;
         continue;
      end;

      try
        frmPDV.ECF.AbreRelatorioGerencial(indice);
      except
         Result := False;
         continue;
      end;

      for i := 1 to vias do
      begin
         if not Result then
            break;
         try
            frmPDV.ECF.LinhaRelatorioGerencial(AnsiString(texto.Text));

            if i < vias then
            begin
               frmPDV.ECF.LinhaRelatorioGerencial(C_CRLF + C_CRLF + C_CRLF + C_CRLF + C_CRLF);

               for j := 5 downto 1 do
               begin
                  ECF_Msg('Destaque a 1ª via. (' + IntToStr(j) + ' seg.)');
                  Application.ProcessMessages;
                  sleep(1000);
               end;
            end;
         except
            Result := False;
         end;
      end;

      if not result then
         continue;

      try
         frmPDV.ECF.FechaRelatorio;
      except
         Result := False;
         frmPDV.ECF.ReTentar := retentar;
      end;

   until (result)or not(msg);

   DM_ECF.TEF.BloquearMouseTeclado(False);
   frmPDV.ECF.Device.ProcessMessages := not DM_INI.INI.StoredValue['Aguarda_ECF'];
   frmPDV.ECF.ReTentar := retentar;
end;

procedure TDM_ECF.ECF_Config;
begin
   with frmPDV.ECF do
   begin
      Desativar;
      DescricaoGrande            := True;
      ArqLOG                     := Aqui(C_52,'ECF.txt');
      Modelo                     := TACBrECFModelo(DM_INI.INI.StoredValue['ecf_modelo']);
      Device.Porta               := DM_INI.INI.StoredValue['porta_serial_ecf'];
      Device.Baud                := DM_INI.INI.StoredValue['porta_serial_ecf_velocidade'];
      IntervaloAposComando       := DM_INI.INI.StoredValue['ecf_delay_comandos'];
      LinhasEntreCupons          := DM_INI.INI.StoredValue['ecf_linhas_entre_cupons'];
      BloqueiaMouseTeclado       := True;//este dois devem ser false na finalização para que o TEF assuma
      ReTentar                   := True;
      MaxLinhasBuffer            := 3;
      LinhasEntreCupons          := DM_INI.INI.StoredValue['ecf_linhas_entre_cupons'];
      Device.ProcessMessages     := not DM_INI.INI.StoredValue['Aguarda_ECF'];
      AguardaImpressao           := DM_INI.INI.StoredValue['Aguarda_ECF'];
   end;
end;

procedure TDM_ECF.ECF_Desativar;
begin
  frmPDV.ECF.Desativar;
end;

{$ENDIF}

procedure TDM_ECF.AACVerificarRecomporNumSerie(const NumSerie: string; const ValorGT: Double; var CRO, CNI: Integer);
var
  OK: Boolean;
  VendaBruta: Double;
begin
{$IFDEF PDV}
   if assigned(ReducaoZ) then
   begin
     VendaBruta := ReducaoZ.ValorVendaBruta;   //obtem da ultima RZ do ECF

     OK := DM_PDV.TECFvenda_bruta.Value = VendaBruta;//compara com o BD

     if OK then
        OK := i_cro = DM_PDV.TECFcro.Value; //compara o CRO do ECF com o gravado no BD

      if OK then
         OK := i_crz = DM_PDV.TECFcrz.Value;

     // setar os parametros se os valores (CRZ, CRO e Venda Bruta) forem iguais
     if OK then
     begin
       CRO := i_cro;
       CNI := StrToIntDEf(st_ECF_CNIEE, 010101); // codigo nacional de identificação do ECF conforme tabela
       showmessage('Em virtude de perda/alteração nos dados do arquivo criptografado, o aplicativo está efetuando a sua recuperação (Serial).');
     end;
   end;
{$ENDIF}
end;

procedure TDM_ECF.AACVerificarRecomporValorGT(const NumSerie: string; var ValorGT: Double);
var
  OK: Boolean;
  VendaBruta: Double;
begin
{$IFDEF PDV}
   if assigned(ReducaoZ) then
   begin
     VendaBruta := ReducaoZ.ValorVendaBruta;   //obtem da ultima VB do ECF

     OK := DM_PDV.TECFvenda_bruta.Value = VendaBruta; //compara com o BD

     if OK then
        OK := i_cro >= DM_PDV.TECFcro.Value;   //compara o CRO do ECF com o gravado no BD

      if OK then
         OK := i_crz = DM_PDV.TECFcrz.Value;

     // setar os parametros se os valores (CRZ, CRO e Venda Bruta) forem iguais
     if OK then
     begin
        ValorGT := frmPDV.ECF.GrandeTotal;
        showmessage('Em virtude de perda/alteração nos dados do arquivo criptografado, o aplicativo está efetuando a sua recuperação (GT).');
     end;
   end;
{$ENDIF}
end;

{$IFDEF PDV}
procedure TDM_ECF.CallMenuFiscal(Aowner: TComponent);
begin
   if Assigned(frmCall_MenuFiscal) then
   try
      frmCall_MenuFiscal.Close;
   except
      ;
   end;

   if Assigned(frmCall_MenuFiscal) then
   try
      FreeAndNil(frmCall_MenuFiscal);
   except
      ;
   end;


   frmCall_MenuFiscal := TfrmCall_MenuFiscal.Create(self);

   //esta função nao deixa o frmCall_MenuFiscal assumir o foco
   SetWindowPos(frmCall_MenuFiscal.Handle, HWND_TOP, 0, 0, 0, 0,
      SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE or SWP_SHOWWINDOW);

   frmCall_MenuFiscal.Visible := True;
   if (frmCall_MenuFiscal.Top < 0) or (frmCall_MenuFiscal.Top > screen.Height)then
      frmCall_MenuFiscal.Top := 0;

   if (frmCall_MenuFiscal.Left < 0) or (frmCall_MenuFiscal.Left > screen.Width)then
      frmCall_MenuFiscal.Left := 0;
end;
{$ENDIF}

procedure TDM_ECF.Configurar_TEF;
begin
   TEF.Identificacao.NomeAplicacao   := AAC.IdentPAF.Paf.Nome;
   TEF.Identificacao.RazaoSocial     := AAC.IdentPAF.Empresa.RazaoSocial;
   TEF.Identificacao.SoftwareHouse   := AAC.IdentPAF.Empresa.RazaoSocial;
   TEF.Identificacao.VersaoAplicacao := AAC.IdentPAF.Paf.Versao;
   TEF.SuportaSaque          := False;
   TEF.SuportaDesconto       := True;
   TEF.GPAtual               := TACBrTEFDTipo(DM_INI.INI.StoredValue['tef_gp']);
   TEF.AutoAtivarGP          := DM_INI.INI.StoredValue['tef_auto_ativar_gp'];
   TEF.EsperaSleep           := DM_INI.INI.StoredValue['tef_sleep'];
   TEF.EsperaSTS             := DM_INI.INI.StoredValue['tef_sts'];
   TEF.AutoEfetuarPagamento  := False;//DM_INI.INI.StoredValue['tef_pag_aut'];
   TEF.AutoFinalizarCupom    := False;//DM_INI.INI.StoredValue['tef_fin_cf_auto'];
   TEF.ExibirMsgAutenticacao := DM_INI.INI.StoredValue['tef_msg_aut'];
   TEF.CHQEmGerencial        := DM_INI.INI.StoredValue['tef_chq_rg'];

   TEF.ArqLOG                := Aqui(C_52, 'tef_log.txt');
   TEF.PathBackup            := Aqui(C_209, C_ST_VAZIO);

   TEF.TEFDial.AutoAtivarGP  := TEF.AutoAtivarGP;
   TEF.TEFDisc.AutoAtivarGP  := TEF.AutoAtivarGP;
   TEF.TEFGPU.AutoAtivarGP   := TEF.AutoAtivarGP;
   TEF.TEFHiper.AutoAtivarGP := TEF.AutoAtivarGP;
   TEF.AutoFinalizarCupom    := DM_INI.INI.StoredValue['tef_fin_cf_auto'];
   TEF.AutoEfetuarPagamento  := DM_INI.INI.StoredValue['tef_pag_aut'];
end;


procedure TDM_ECF.EADGetChavePrivada(var Chave: AnsiString);
begin
   CHAVE := '-----BEGIN RSA PRIVATE KEY-----' + sLineBreak +
            'MIICXAIBAAKBgQDaru4YCxUN9Iljw5YbCNS7Gqlo/ytX0wUxrC1Oyp1tydQjBgKA' + sLineBreak +
            'u7WTet2LMtATm69s3sy2pOR1Si+NlufKxX2h2guaIjqpV4QVeYz5/Nl74IvIv+Co' + sLineBreak +
            'WQCiPv57MR4+vBrjm5Ule0WRivnh7Zq1OupISVZZFhLudW+lAarpWQM3rQIDAQAB' + sLineBreak +
            'AoGAIQp5MuzJu5gNAiPVFDSbX8HBgvm65MQfbsfi+JqoeqQaB0irLCQwZR4VRyjg' + sLineBreak +
            'Q3YsZTismZQEaKxSzwPT9dEtD/WqeggsbJRBgdfGPn21WFgeWUx/8DRh/aEVOpru' + sLineBreak +
            'g2tYiQ1sjH4j/B6pfDctyVp/s6OzhKAbFon5ErMR0qnheIkCQQD8SlEpSg/mLb8O' + sLineBreak +
            'nr4mqJRnK5l8ZohpOaYJCkEUrcn7joRQ/vXKom1POdm78eOCoGOwTOOwt3vqEFOt' + sLineBreak +
            'uPpU6iRTAkEA3eYbqRfGDEzSK6OqcEgEB7TX9e/KgkHkS2PesH+Y2NoGgw+LS+Z0' + sLineBreak +
            '+4pjsp2wQhyK5u3Wt7vCqZQ/fENGdbGz/wJAYZVJQUQxVCHbpYcHG6LXC/TUQEbU' + sLineBreak +
            'eobezt5Vf+8ckh101nNXlNIwn5VLv6N3EX6CMJ3878x4tHcuNqK2yQNrmwJAfZI9' + sLineBreak +
            'bvg8JDPI79cjmXy3gyDs4Yk8QXBGX/95QspCVd0zuDEws9gLtVlASBECcLc0R7Cq' + sLineBreak +
            'RLllVI/HSWvM0MeqQwJBAPjuV96eZ3vNApPIXxR8Fvs112BawOPc8jexOWCLRqX3' + sLineBreak +
            'Qdusfa+XhmM3BN/XqjpFdaisViLarNC7U8Z2aS2G2z4=' + sLineBreak +
            '-----END RSA PRIVATE KEY-----';
end;


procedure TDM_ECF.PAFError(const MsnError: AnsiString);
begin
   Log('PAF_Erro', 'ERRO', String(MsnError));
   ShowMessage('PAF - ' + String(MsnError));
end;

procedure TDM_ECF.PreencherHeader(Header: TRegistroX1);
begin
     Header.UF          := AAC.IdentPAF.Empresa.Uf;
     Header.CNPJ        := Number(AAC.IdentPAF.Empresa.CNPJ);
     Header.IE          := iIF(Number(AAC.IdentPAF.Empresa.IE)='','ISENTO', Number(AAC.IdentPAF.Empresa.IE));
     Header.IM          := Number(AAC.IdentPAF.Empresa.IM);
     Header.RAZAOSOCIAL := AAC.IdentPAF.Empresa.RazaoSocial;
end;

function TDM_ECF.Carregar_AAC: boolean;
const
  _PATH_AAC = 'LIB\32\';
begin
   Result := False;
   AAC.NomeArquivoAux := Aqui(_PATH_AAC + 'AAC', C_116);

   if not FileExists(AAC.NomeArquivoAux) then
   begin
      MessageDlg(C_87, mtWarning, [mbOK], 0);
      exit;
   end;

   AAC.AbrirArquivo;
   AAC.IdentPAF.VersaoER             := '02.01';
   AAC.IdentPAF.Paf.PerfilRequisitos := 'X';
   AAC.IdentPAF.NumeroLaudo          := 'POL3582013';
  with AAC.IdentPAF.OutrosArquivos do
  begin
     Clear;
     Add(AAC.IdentPAF.Paf.PrincipalExe.Nome);
     Add(_PATH_AAC + 'libeay32.dll');            // OpenSSL 0.9.8.1
     Add(_PATH_AAC + 'ssleay32.dll');            // OpenSSL 0.9.8.1
     Add(_PATH_AAC + 'BemaFI32.dll');            // ECF: Bematech
     Add(_PATH_AAC + 'BemaMFD.dll');             // ECF: Bematech
     Add(_PATH_AAC + 'BemaMFD2.dll');            // ECF: Bematech
     Add(_PATH_AAC + 'sign_bema.dll');           // ECF: Bematech
     //Add('BemaMFD2_MP4000THFI.dll'); // ECF: Bematech
     Add(_PATH_AAC + 'AX6R32.DLL');              // ECF: Bematech
     Add(_PATH_AAC + 'Bematech.dll');            // ECF: Bematech
     Add(_PATH_AAC + 'DAO350.DLL');              // ECF: Bematech
     Add(_PATH_AAC + 'MSJET35.dll');             // ECF: Bematech
     Add(_PATH_AAC + 'swmfd.dll');               // ECF: Sweda
     Add(_PATH_AAC + 'CONVECF.dll');             // ECF: Sweda
     Add(_PATH_AAC + 'DarumaFrameWork.dll');     // ECF: Daruma
     Add(_PATH_AAC + 'LeituraMFDBin.dll');       // ECF: Daruma
     Add(_PATH_AAC + 'lebin.dll');               // ECF: Daruma
     Add(_PATH_AAC + 'QrCode_DarumaFramework.dll'); // ECF: Daruma
     Add(_PATH_AAC + 'DLLG2.dll');               // ECF: DataRegis/TermoPrinter
     Add(_PATH_AAC + 'DLLG2_Gerador.dll');       // ECF: DataRegis/TermoPrinter
     Add(_PATH_AAC + 'HIME.dll');                // ECF: DataRegis/TermoPrinter ?
     Add(_PATH_AAC + 'elgin.dll');               // ECF: Elgin
     Add(_PATH_AAC + 'ATO17.dll');               // ECF: Elgin/Urano
     Add(_PATH_AAC + 'leitura.dll');             // ECF: Elgin/Urano
     Add(_PATH_AAC + 'InterfaceEpson.dll');      // ECF: Epson
     Add('prevenda.exe');            // prevenda
  end ;

  PAF.Path := Aqui(C_DIRFISCO, C_ST_VAZIO);
  // registro P1
  Self.PreencherHeader(PAF.PAF_N.RegistroN1); // preencher header do arquivo

  PAF.PAF_N.RegistroN1.RAZAOSOCIAL := AAC.IdentPAF.Empresa.RazaoSocial;
  PAF.PAF_N.RegistroN1.UF          := AAC.IdentPAF.Empresa.Uf;
  PAF.PAF_N.RegistroN1.CNPJ        := AAC.IdentPAF.Empresa.CNPJ;
  PAF.PAF_N.RegistroN1.IE          := iIF(Number(AAC.IdentPAF.Empresa.IE)='','ISENTO', Number(AAC.IdentPAF.Empresa.IE));
  PAF.PAF_N.RegistroN1.IM          := AAC.IdentPAF.Empresa.IM;
  PAF.PAF_N.RegistroN2.NOME        := AAC.IdentPAF.Paf.Nome;
  PAF.PAF_N.RegistroN2.VERSAO      := AAC.IdentPAF.Paf.Versao;
  PAF.PAF_N.RegistroN2.LAUDO       := AAC.IdentPAF.NumeroLaudo;

  PAF.SaveToFile_N(C_88);

  // Carregar o MD5 do arquivo de autenticados
  AAC.IdentPAF.ArquivoListaAutenticados.Nome := C_88;
  AAC.IdentPAF.ArquivoListaAutenticados.MD5  := EAD.MD5FromFile(Aqui(C_DIRFISCO, C_88));
  AAC.SalvarArquivo;
  Result := True;
end;


procedure TDM_ECF.TEFAguardaResp(Arquivo: string; SegundosTimeOut: Integer; var Interromper: Boolean);
var
  Msg : String ;
begin
{$IFDEF PDV}
  Msg := 'Aguardando: '+Arquivo+' '+IntToStr(SegundosTimeOut) ;

  if Msg <> '' then
     frmPDV.Popup(Msg);

  Application.ProcessMessages;

  if fCancelado then
     Interromper := True;
{$ENDIF}
end;

procedure TDM_ECF.TEFAntesCancelarTransacao(RespostaPendente: TACBrTEFDResp);
var
   Est: TACBrECFEstado;
begin
{$IFDEF PDV}
   Est := frmPDV.ECF.Estado;

   case Est of
      estVenda, estPagamento : begin
                                  frmPDV.ECF.CancelaCupom;
                                  //DM_PDV.Cancelar_Venda;
                                 // DM_PDV.Gravar_Estado_PDV(epDesativado);
                                  //frmPDV.Verificar_Status_PDV;
                                  //frmConcluir.btnSair.Click;
                               end;

      estRelatorio :  frmPDV.ECF.FechaRelatorio;
   else
      if not ( Est in [estLivre, estDesconhecido, estNaoInicializada] ) then
         frmPDV.ECF.CorrigeEstadoErro( False ) ;
   end;
{$ENDIF}
end;

procedure TDM_ECF.TEFAntesFinalizarRequisicao(Req: TACBrTEFDReq);
begin
{$IFDEF PDV}
  // if Req.Header = 'CRT' then Req.GravaInformacao(777,777,'TESTE REDES');
   frmPDV.Popup('Enviando: ' + Req.Header + ' ID: ' + IntToStr( Req.ID ) );
{$ENDIF}
end;

procedure TDM_ECF.TEFBloqueiaMouseTeclado(Bloqueia: Boolean; var Tratado: Boolean);
begin
{$IFDEF PDV}
   if frmConcluir <> nil then
      frmConcluir.Enabled := not Bloqueia ;
{$ENDIF}
   Tratado := False ;  { Deixa executar o código de Bloqueio do ACBrTEFD }
end;

procedure TDM_ECF.TEFComandaECF(Operacao: TACBrTEFDOperacaoECF; Resp: TACBrTEFDResp; var RetornoECF: Integer);
Var
   Est : TACBrECFEstado;
   Rodape: TStringList;
   i: integer;
begin
{$IFDEF PDV}
  if not frmPdv.ECF.EmLinha then
  begin
     RetornoECF := 0;
     exit;
  end;

  try
    Est := frmPdv.ECF.Estado;

    case Operacao of
      opeAbreGerencial :
         frmPdv.ECF.AbreRelatorioGerencial ;

      opeCancelaCupom :
         if Est = estNaoFiscal then
            frmPdv.ECF.CancelaNaoFiscal
         else
            frmPdv.ECF.CancelaCupom;

      opeFechaCupom :
         if Est = estNaoFiscal then
         begin
             frmPdv.ECF.FechaNaoFiscal(C_ST_VAZIO);
         end
         else
         begin
           Rodape := TStringList.Create;

            if DM_INI.ini.StoredValue['ecf_rodape_linha1'] <> C_ST_VAZIO then
               Rodape.Add(DM_INI.ini.StoredValue['ecf_rodape_linha1']);

            if DM_INI.ini.StoredValue['ecf_rodape_linha2'] <> C_ST_VAZIO then
               Rodape.Add(DM_INI.ini.StoredValue['ecf_rodape_linha2']);

            if DM_INI.ini.StoredValue['ecf_rodape_linha3'] <> C_ST_VAZIO then
               Rodape.Add(DM_INI.ini.StoredValue['ecf_rodape_linha3']);

            frmPdv.ECF.FechaCupom(AnsiString(Rodape.Text));
            Rodape.Free;
         end;

   {   opeSubTotalizaCupom :
         if Est = estNaoFiscal then
            frmPdv.ECF.SubtotalizaNaoFiscal( 0, '' )
         else
            frmPdv.ECF.SubtotalizaCupom(frmConcluir.total.VrDesc *(-1), '');}

      opeFechaGerencial, opeFechaVinculado :
        frmPdv.ECF.FechaRelatorio ;

      opePulaLinhas :
        begin
          frmPdv.ECF.PulaLinhas( frmPdv.ECF.LinhasEntreCupons );
          frmPdv.ECF.CortaPapel( True );
          Sleep(200);
        end;

      opeImprimePagamentos :
        begin
            with frmConcluir do
            begin
               for i := 0 to Pred(Total.Fpag.Count) do
               if (Total.Fpag.Items[i].Indice <> '00')and(Total.Fpag.Items[i].Valor > 0) then
                     frmPDV.ECF.EfetuaPagamento(Total.Fpag.Items[i].Indice, Total.Fpag.Items[i].Valor);
              { TFPag.DisableControls;
               TFPag.First;
               while not TFPag.Eof do
               begin
                  if (TFPagecf.AsString <> '00')and(TFPagvalor.Value > 0) then
                     frmPDV.ECF.EfetuaPagamento(TFPagecf.AsString, TFPagvalor.Value);

                  TFPag.Next;
               end;
               TFPag.EnableControls;  }
            end;
        end;
    end;

    RetornoECF := 1 ;
  except
    RetornoECF := 0 ;
  end;
{$ENDIF}
end;

procedure TDM_ECF.TEFComandaECFAbreVinculado(COO, IndiceECF: string; Valor: Double; var RetornoECF: Integer);
begin
{$IFDEF PDV}
  try
     frmPDV.Popup( 'Abre Vinculado, COO:' + COO +
                   ' Indice ECF: ' + IndiceECF +
                   ' Valor: '+FormatFloat('0.00',Valor)
     );

     frmPdv.ECF.AbreCupomVinculado( COO, IndiceECF, Valor );
     RetornoECF := 1 ;
  except
     RetornoECF := 0 ;
  end;
{$ENDIF}
end;

procedure TDM_ECF.TEFComandaECFImprimeVia(TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
  ImagemComprovante: TStringList; var RetornoECF: Integer);
begin
{$IFDEF PDV}
  { *** Se estiver usando ACBrECF... Lembre-se de configurar ***
    ACBrECF1.MaxLinhasBuffer   := 3; // Os homologadores permitem no máximo
                                     // Impressao de 3 em 3 linhas
    ACBrECF1.LinhasEntreCupons := 7; // (ajuste conforme o seu ECF)

    NOTA: ACBrECF nao possui comando para imprimir a 2a via do CCD }
  frmPDV.Popup(Iif(TipoRelatorio = trGerencial, 'Imprimindo Gerencial',' Imprimindo Vinculado') + ' Via: ' + IntToStr(Via));
  frmPDV.ECF.BloqueiaMouseTeclado := False;//este dois devem ser false para que o TEF assuma
  frmPDV.ECF.ReTentar             := False;
  try
     case TipoRelatorio of
       trGerencial :
         frmPdv.ECF.LinhaRelatorioGerencial( AnsiString(ImagemComprovante.Text) ) ;

       trVinculado :
         frmPdv.ECF.LinhaCupomVinculado( AnsiString(ImagemComprovante.Text) )
     end;

    // frmPDV.ECF.BloqueiaMouseTeclado := True;
   //  frmPDV.ECF.ReTentar             := True;
     RetornoECF := 1 ;
  except
    // frmPDV.ECF.BloqueiaMouseTeclado := True;
    // frmPDV.ECF.ReTentar             := True;
     RetornoECF := 0 ;
  end;
{$ENDIF}
end;

procedure TDM_ECF.TEFComandaECFPagamento(IndiceECF: string; Valor: Double; var RetornoECF: Integer);
var
   Est : TACBrECFEstado ;
begin
{$IFDEF PDV}
  try
     Est := frmPdv.ECF.Estado;

     if Est = estNaoFiscal then
        frmPdv.ECF.EfetuaPagamentoNaoFiscal(IndiceECF, Valor)
     else
        frmPdv.ECF.EfetuaPagamento(IndiceECF, Valor);

     RetornoECF := 1 ;
  except
     RetornoECF := 0 ;
  end;
{$ENDIF}
end;

procedure TDM_ECF.TEFComandaECFSubtotaliza(DescAcre: Double; var RetornoECF: Integer);
var
   Est : TACBrECFEstado ;
begin
{$IFDEF PDV}
   try
   Est := frmPdv.ECF.Estado;

   if Est = estNaoFiscal then
      frmPdv.ECF.SubtotalizaNaoFiscal(0, '' )
   else
   begin
      frmPdv.ECF.SubtotalizaCupom( DescAcre + (frmConcluir.Total.VrDesc *(-1)), '');
      frmConcluir.Total.VrDesc := (DescAcre + (frmConcluir.Total.VrDesc *(-1)))* -1;//atualiza o desconto para gravar na venda
   end;

      RetornoECF := 1 ;
   except
      RetornoECF := 0 ;
   end;
{$ENDIF}
end;

procedure TDM_ECF.TEFDepoisCancelarTransacoes(RespostasPendentes: TACBrTEFDRespostasPendentes);
var
  I : Integer;
begin
{$IFDEF PDV}
  for I := 0 to RespostasPendentes.Count-1  do
  begin
     with RespostasPendentes[I] do
     begin
        frmPDV.Popup('Cancelado: ' + Header + ' ID: ' + IntToStr( ID ) );
        //DM_PDV.ExecSQL('update r07 set rede=' + QuotedStr(rede) + ' where rede="-";');
     end;
  end;

  TEF.BloquearMouseTeclado(False);

  if Assigned(frmConcluir) then
  begin
     frmConcluir.Cancelar;
  end
  else
  try
   // DM_PDV.Cancelar_Venda;
    frmPDV.ECF.CancelaCupom;
  finally
     ;
  end;
{$ENDIF}
end;

procedure TDM_ECF.TEFDepoisConfirmarTransacoes(RespostasPendentes: TACBrTEFDRespostasPendentes);
var
  I : Integer;
begin
{$IFDEF PDV}
  for I := 0 to RespostasPendentes.Count-1  do
  begin
     with RespostasPendentes[I] do
     begin
        frmPDV.Popup('Confirmado: ' + Header + ' ID: ' + IntToStr( ID ) );

       // DM_PDV.ExecSQL('update r07 set rede=' + QuotedStr(rede) + ' where rede="-";');
        DM_ECF.TEF.BloquearMouseTeclado(False);
     //   ShowMessage('Operação concluída.');
       { ShowMessage( '  Rede: '  + Rede +
                     '   NSU: '  + NSU  +
                     ' Valor: '  + FormatFloat('###,###,##0.00', ValorTotal)
        ) ;}
     end;
  end;
   DM_PDV.Gravar_Estado_PDV(epLivre);
   frmPDV.Verificar_Status_PDV;
{$ENDIF}
end;

procedure TDM_ECF.MsgTEF(Operador: boolean; stMsg: String; subMsg: boolean);
begin
{$IFDEF PDV}
   if stMsg = EmptyStr then
   begin
      if Assigned(frmTEFMessage) then
         FreeAndNil(frmTEFMessage);
      exit;
   end;

   if not Assigned(frmTEFMessage) then
   begin
      frmTEFMessage := TfrmTEFMessage.Create(self);
   end;

   with frmTEFMessage do
   begin
      if subMsg then
      begin
         frmTEFMessage.hint := stMsg;
      end
      else
      begin
         pMensagemOperador.Caption := stMsg;
         pMensagemCliente.Caption  := stMsg;
      end;

      pMensagemOperador.Visible  := Operador;
      pMensagemCliente.Visible   := not Operador;
      Application.ProcessMessages;
      Show;
   end;
{$ENDIF}
end;

procedure TDM_ECF.TEFExibeMsg(Operacao: TACBrTEFDOperacaoMensagem; Mensagem: string; var AModalResult: TModalResult);
var
   Fim : TDateTime;
  // OldMensagem : String;
begin
{$IFDEF PDV}
 // Application.BringToFront;
  case Operacao of

    opmOK :
       AModalResult := MessageBox(0, PWideChar(Mensagem), 'ATENÇÃO!', MB_ICONINFORMATION or MB_OK or MB_SETFOREGROUND or MB_TOPMOST or MB_TASKMODAL); //MessageDlg( Mensagem, mtInformation, [mbOK], 0);

    opmYesNo :
       AModalResult := MessageBox(0, PWideChar(Mensagem), 'ATENÇÃO!', MB_ICONQUESTION or MB_YESNO or MB_SETFOREGROUND or MB_TOPMOST or MB_TASKMODAL);//MessageDlg( Mensagem, mtConfirmation, [mbYes,mbNo], 0);

    opmExibirMsgOperador, opmRemoverMsgOperador : MsgTEF(True, Mensagem);

    opmExibirMsgCliente, opmRemoverMsgCliente   : MsgTEF(False, Mensagem);

    opmDestaqueVia :
       begin
        // OldMensagem := lMensagemOperador.Caption ;
         try
            MsgTEF(True, Mensagem);

            { Aguardando 3 segundos }
            Fim := IncSecond( now, 3)  ;
            repeat
               sleep(200) ;
               MsgTEF(True, Mensagem + ' ' + IntToStr(SecondsBetween(Fim,now)));
               Application.ProcessMessages;
            until (now > Fim) ;

         finally
            MsgTEF(True, EmptyStr) ;
         end;
       end;
  end;
  Application.ProcessMessages;
end;

procedure TDM_ECF.Fechar_MenuFuscal;
begin
   if Assigned(frmCall_MenuFiscal) then
   try
      frmCall_MenuFiscal.Close;
   except
      ;
   end;

   if Assigned(frmCall_MenuFiscal) then
   try
      FreeAndNil(frmCall_MenuFiscal);
   except
      ;
   end;
end;

function TDM_ECF.FILTRO: string;
begin
   if (DM_INI.INI.StoredValue['tef_gp'] = 'Nenhum')or
      (frmConcluir.Total.crt + frmConcluir.Total.Chq = 0) then
      Result  := C_ST_VAZIO
   else
   if (frmConcluir.Total.Chq > 0)and (not frmConcluir.cbF2.Checked) then
       Result  := C_ST_VAZIO
   else
   if frmConcluir.cbF2.Checked then
      Result := C_CHQ
   else
      Result := C_CRT;
end;

procedure TDM_ECF.Imprimir_Fechamento(Total: boolean);
var
   lista, Lista1: TStringList;
   linha, s: string;
   i: integer;
   vr_nf, vr_sangria: currency;
begin
   if not DM_INI.ini.StoredValue['emitir_fech_caixa'] then
      exit;

   Lista  := TStringList.Create;
   Lista1 := TStringList.Create;
   vr_nf  := 0;

   Lista.LoadFromFile(Aqui(C_TXT_FILE, 'fc.txt'));

   //titulo
   if Total then
      FindReplace('$tipo', 'FINAL', Lista)
   else
      FindReplace('$tipo', 'PARCIAL', Lista);

   //dinheiro
   Linha := C_Linha100;//100 espaços
   s     := FloatToStrF(DM_PDV.TECFvr_din.Value, ffNumber, 15, 2) + '(+)';

   Insert('DINHEIRO:', linha,1);
   Insert(s, linha, 48 - length(s));
   FindReplace('$din', Copy(linha,1,48), Lista);

   //ticket
   Linha := C_Linha100;//100 espaços
   s     := FloatToStrF(DM_PDV.TECFvr_tkt.Value, ffNumber, 15, 2) + '(+)';

   Insert('TICKET:', linha,1);
   Insert(s, linha, 48 - length(s));
   FindReplace('$tkt', Copy(linha,1,48), Lista);

   //cheque
   Linha := C_Linha100;//100 espaços
   s     := FloatToStrF(DM_PDV.TECFvr_chq.Value, ffNumber, 15, 2) + '(+)';

   Insert('CHEQUE:', linha,1);
   Insert(s, linha, 48 - length(s));
   FindReplace('$chq', Copy(linha,1,48), Lista);

   //cartão
   Linha := C_Linha100;//100 espaços
   s     := FloatToStrF(DM_PDV.TECFvr_crt.Value, ffNumber, 15, 2) + '(+)';

   Insert('CARTAO:', linha,1);
   Insert(s, linha, 48 - length(s));
   FindReplace('$crt', Copy(linha,1,48), Lista);

   //nao fiscal
   Linha := C_Linha100;//100 espaços
   s     := FloatToStrF(DM_PDV.TECFvr_nfiscal.Value, ffNumber, 15, 2) + '(+)';

   Insert('OP.NÃO FISCAL:', linha,1);
   Insert(s, linha, 48 - length(s));
   FindReplace('$nf', Copy(linha,1,48), Lista);

   //SUPRIMENTO
   Linha := C_Linha100;//100 espaços
   s     := FloatToStrF(DM_PDV.TECFvr_supri.Value, ffNumber, 15, 2) + '(+)';

   Insert('SUPRIMENTO:', linha,1);
   Insert(s, linha, 48 - length(s));
   FindReplace('$sup', Copy(linha,1,48), Lista);

   //sangria
   Linha := C_Linha100;//100 espaços
   s     := FloatToStrF(DM_PDV.TECFvr_sang.Value, ffNumber, 15, 2) + '(-)';

   Insert('SANGRIA:', linha,1);
   Insert(s, linha, 48 - length(s));
   FindReplace('$san', Copy(linha,1,48), Lista);

   //subtotal
   Linha := C_Linha100;//100 espaços
   s     := FloatToStrF(DM_PDV.TECFvr_din.Value +
                        DM_PDV.TECFvr_crt.Value +
                        DM_PDV.TECFvr_chq.Value +
                        DM_PDV.TECFvr_tkt.Value +
                        DM_PDV.TECFvr_nfiscal.Value +
                        DM_PDV.TECFvr_supri.Value -
                        DM_PDV.TECFvr_sang.Value, ffNumber, 15, 2) + '(=)';

   Insert('SUBTOTAL:', linha,1);
   Insert(s, linha, 48 - length(s));
   FindReplace('$st', Copy(linha,1,48), Lista);

   //fatura
   Linha := C_Linha100;//100 espaços
   s     := FloatToStrF(DM_PDV.TECFvr_fat.Value, ffNumber, 15, 2) + '(+)';

   Insert('PRAZO:', linha,1);
   Insert(s, linha, 48 - length(s));
   FindReplace('$fat', Copy(linha,1,48), Lista);

   //total
   Linha := C_Linha100;//100 espaços
   s     := FloatToStrF(DM_PDV.TECFvr_fat.Value +
                        DM_PDV.TECFvr_din.Value +
                        DM_PDV.TECFvr_crt.Value +
                        DM_PDV.TECFvr_chq.Value +
                        DM_PDV.TECFvr_tkt.Value +
                        DM_PDV.TECFvr_nfiscal.Value +
                        DM_PDV.TECFvr_supri.Value -
                        DM_PDV.TECFvr_sang.Value, ffNumber, 15, 2) + '(=)';

   Insert('TOTAL:', linha,1);
   Insert(s, linha, 48 - length(s));
   FindReplace('$tot', Copy(linha,1,48), Lista);

   //impressão do gerencial fechamento
   try
      frmPDV.ECF.RelatorioGerencial(Lista, 1, DM_PDV.Indice_RG('fechamento'));
   finally
      Lista.Free;
      Lista1.Free;
   end;
{$ENDIF}
end;

procedure TDM_ECF.TEFInfoECF(Operacao: TACBrTEFDInfoECF; var RetornoECF: string);
var
   ASubTotal: Double;
begin
{$IFDEF PDV}
   try
      if not frmPdv.ECF.Ativo then
         frmPdv.ECF.Ativar ;
   except
      { Para CliSiTEF ou V&SPague aplique o IF abaixo em sua aplicação, que
        permite saber se o Cupom foi concluido mesmo com o ECF desligado }

      if (not DM_ECF.TEF.TEF.Inicializado) and   { Está na inicialização ? }
         (Operacao = ineEstadoECF) and          { Quer Saber o estado do ECF ? (mas se chegou aqui é pq o ECF já está com problemas) }
         (DM_ECF.TEF.GPAtual in [gpCliSiTef,gpVeSPague]) then
      begin
         { Leia o último Documento Gravado no seu Banco de Dados, e verifique
           se o Cupom já foi finalizado,ou se já foi aberto um CCD ou Gerencial...
           Exemplo:

           Documento.Le(0);

           if (Documento.Finalizado) or (pos(Documento.Denominacao,'CC|RG') > 0) then
              RetornoECF := 'R'
           else
              RetornoECF := 'O' ;
         }

         //RetornoECF := 'O';    // Executará CancelarTransacoesPendentes;
         RetornoECF := 'R';    // Executará ConfirmarESolicitarImpressaoTransacoesPendentes;
         exit ;
      end ;

      raise ;
   end;

   case Operacao of
     ineSubTotal :
       begin
         ASubTotal := frmPdv.ECF.Subtotal ;
         ASubTotal := ASubTotal - frmPdv.ECF.TotalPago;

         RetornoECF := FloatToStr( ASubTotal ) ;
       end;

     ineTotalAPagar : begin
                         if FILTRO = C_CRT then
                            RetornoECF := FloatToStr( frmConcluir.Total.Din +//nao entra o crt
                                                      frmConcluir.Total.Tkt +
                                                      frmConcluir.Total.Fat +
                                                      frmConcluir.Total.Chq )
                         else
                         if FILTRO = C_CHQ then
                            RetornoECF := FloatToStr( frmConcluir.Total.Din +//nao entra o chq
                                                      frmConcluir.Total.Tkt +
                                                      frmConcluir.Total.Fat +
                                                      frmConcluir.Total.crt )
                         else
                            RetornoECF := FloatToStr( frmConcluir.Total.Din +//todos
                                                      frmConcluir.Total.Tkt +
                                                      frmConcluir.Total.Fat +
                                                      frmConcluir.Total.crt +
                                                      frmConcluir.Total.chq );
                      end;

     ineEstadoECF :
       begin
         Case frmPdv.ECF.Estado of
           estLivre     : RetornoECF := 'L' ;
           estVenda     : RetornoECF := 'V' ;
           estPagamento : RetornoECF := 'P' ;
           estRelatorio : RetornoECF := 'R' ;
           estNaoFiscal : RetornoECF := 'N' ;
         else
           RetornoECF := 'O' ;
         end;
       end;
   end;
{$ENDIF}
end;

procedure TDM_ECF.TEFMudaEstadoReq(EstadoReq: TACBrTEFDReqEstado);
begin
   fCancelado := False ;
end;

procedure TDM_ECF.TEFMudaEstadoResp(EstadoResp: TACBrTEFDRespEstado);
begin
  if EstadoResp = respNenhum then
  begin
     MsgTEF(True, EmptyStr);
  end;
//  self.enabled := not (EstadoResp = respAguardandoResposta);
end;

procedure TDM_ECF.TEFRestauraFocoAplicacao(var Tratado: Boolean);
begin
   Application.ProcessMessages;
   Application.BringToFront;
   Application.NormalizeAllTopMosts;
   Tratado := False; { Deixa executar o código de Foco do ACBrTEFD }
end;

function TDM_ECF.TEF_Ativar: boolean;
begin
{$IFDEF PDV}
   Result := True;

   if (TEF.GPAtual <> gpNenhum) then //ativa o modulo TEF
   try
      TEF.Inicializar(TEF.GPAtual);
      Result := True;
   except
      on E: exception do
      begin
         ShowMessage(E.message);
         Result := False;
      end;
   end;
{$ENDIF}
end;

end.
