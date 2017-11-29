unit uFarmaPop2; //VERSAO HOMOLOGAÇÃO NOVA

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, SOAPConn, XSBuiltIns, uFuncoes,
  InvokeRegistry, Rio, SOAPHTTPClient, ServicoSolicitacaoWS1, DBClient, ExtCtrls,
  Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit,cxTextEdit, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmFarmaPop2 = class(TForm)
    HTTPRIO1: THTTPRIO;
    lista: TListBox;
    Panel1: TPanel;
    btnConfirmar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    btnEnviar: TBitBtn;
    DataSource1: TDataSource;
    G1: TDBGrid;
    btnCancelar: TBitBtn;
    edVend: TcxTextEdit;
    EdSenha: TcxTextEdit;
    T1: TFDMemTable;
    T1inAutorizacaoMedicamento: TStringField;
    T1coCodigoBarra: TStringField;
    T1dsUnidApresentacao: TStringField;
    T1qtprescrita: TFloatField;
    T1qtAutorizada: TFloatField;
    T1vlPrecoSubsidiadoPaciente: TFloatField;
    T1vlPrecoVenda: TFloatField;
    T1vlPrecoSubsidiadoMS: TFloatField;
    T1qtsolicitada: TFloatField;
    btnItem: TBitBtn;
    T1id_prod: TIntegerField;
    PopupMenu1: TPopupMenu;
    Remover1: TMenuItem;
    T1qtd: TCurrencyField;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure EdSenhaChange(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure G1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure T1AfterInsert(DataSet: TDataSet);
    procedure btnItemClick(Sender: TObject);
    procedure EdSenhaPropertiesChange(Sender: TObject);
    procedure Remover1Click(Sender: TObject);
  private
   wDataSUS               : ServicoSolicitacaoWS ;
   Autorizacao            : AutorizacaoDTO;
   Usuariofarma           : UsuarioFarmaciaDTO;
   usuario                : UsuarioDTO;
   Medicamentos           : ArrayOfMedicamentoDTO;
   Solicitacao            : SolicitacaoDTO;
   confirmacao            : ConfirmacaoDTO;
   ConfirmacaoAutorizacao : ConfirmacaoAutorizacaoDTO;
   Recebimento            : RecebimentoDTO;
   ConfirmacaoRecebimento : ConfirmacaoRecebimentoDTO;
   Estorno                : EstornoDTO;
   ConfirmacaoEstorno     : ConfirmacaoEstornoDTO;
   Pesquisa               : PesquisaDTO;
   ItemPesquisa           : ItemPesquisaDTO;
   RetornoPesquisa        : RetornoPesquisaDTO;
  public
    nmroAutDataSUS: string;
    procedure PFPUsuario;
    procedure PFPAbreMedicamento(itens: integer);
    procedure PFPLancaMedicamento(CodBarra: string; qtPrescr,qtSolic, vrvenda: Real);
    function  PFPAutorizacao(id, cnpj, cpf, crm, ufcrm: string; dtReceita: TDateTime): boolean;
    function PFPConfirmacaoAutorizacao(coSolicitacaoFarmacia, COO: String): boolean;
    function PFPConfirmaRecebimento: boolean;
    procedure PFPAbreEstorno(itens: integer);
    procedure PFPEstornoItens(codBarra: string; qtd: double);
    function PFPEstorno(var alista:TSTringList; id, cnpj: string):boolean;
    procedure PFPPesquisa(dt_ini, dt_fin: TDate; tipo, cnpj: string);
    procedure ErrorMsg(Sender : TObject; E: exception);
  end;

var
  frmFarmaPop2: TfrmFarmaPop2;
  aItem: integer;

implementation

uses uPesqDATASUS, udm_ini, uDM_PDV, upv, uPesqProd, uDM, uDMecf, updv, uQtdMed, uConcluir;


{$R *.dfm}

procedure TfrmFarmaPop2.EdSenhaChange(Sender: TObject);
begin
   btnEnviar.Enabled := (Trim(edVend.Text) <> EmptyStr) and (Trim(EdSenha.Text) <> EmptyStr)
end;

procedure TfrmFarmaPop2.EdSenhaPropertiesChange(Sender: TObject);
begin
   btnEnviar.Enabled := (Trim(edVend.Text) <> C_ST_VAZIO)and(Length(EdSenha.Text)>5);
end;

procedure TfrmFarmaPop2.ErrorMsg(Sender: TObject; E: exception);
begin
   application.showException(E);
   Close;
end;

procedure TfrmFarmaPop2.PFPUsuario;
begin
   Usuariofarma    := UsuarioFarmaciaDTO.Create;
   usuario         := UsuarioDTO.Create;
   lista.Clear;

   with Usuariofarma do
   begin
      senhaFarmacia   := Number(DM_INI.ini.StoredValue['pfp_senha']);//'lima1111';
      usuarioFarmacia := Trim(DM_INI.ini.StoredValue['pfp_usuario']);//'48874020';
      usuarioVendedor := Trim(edVend.Text);
      senhaVendedor   := Trim(EdSenha.Text);
   end;

   with usuario do
   begin
      senhaFarmacia   := Number(DM_INI.ini.StoredValue['pfp_senha']);//'lima1111';
      usuarioFarmacia := Trim(DM_INI.ini.StoredValue['pfp_usuario']);//'48874020';
      usuarioVendedor := Trim(edVend.Text);
      senhaVendedor   := Trim(EdSenha.Text);
   end;
end;

procedure TfrmFarmaPop2.Remover1Click(Sender: TObject);
begin
   if not T1.IsEmpty then
      T1.Delete;
end;

procedure TfrmFarmaPop2.T1AfterInsert(DataSet: TDataSet);
begin
   T1qtprescrita.Value  := 0;
   T1qtAutorizada.Value := 0;
   T1vlPrecoSubsidiadoPaciente.Value := 0;
   T1vlPrecoVenda.Value := 0;
   T1qtsolicitada.Value := 0;
end;

procedure TfrmFarmaPop2.PFPAbreMedicamento(itens: integer);
begin
  SetLength(Medicamentos, itens);
  aItem := 0;
end;

procedure TfrmFarmaPop2.PFPLancaMedicamento(CodBarra: string; qtPrescr,
  qtSolic, vrvenda: Real);
begin
   Medicamentos[aItem]               := MedicamentoDTO.Create;
   Medicamentos[aItem].coCodigoBarra := CodBarra;
   Medicamentos[aItem].qtPrescrita   := qtPrescr;
   Medicamentos[aItem].qtSolicitada  := qtSolic;
   Medicamentos[aItem].vlPrecoVenda  := vrvenda;
//   Medicamentos[aItem]. .dsUnidApresentacao := '30';
   inc(aItem);
end;


procedure TfrmFarmaPop2.PFPPesquisa(dt_ini, dt_fin: TDate; tipo, cnpj: string);
var
   i,j: integer;
begin
   PFPUsuario;
   Pesquisa        := PesquisaDTO.Create;
   RetornoPesquisa := RetornoPesquisaDTO.Create;
   ItemPesquisa    := ItemPesquisaDTO.Create;

   Pesquisa.nuCnpj                := number(cnpj);
   Pesquisa.nuCnpjMatriz          := number(cnpj);
   Pesquisa.dataInicio            := TXSDateTime.Create;
   Pesquisa.dataFim               := TXSDateTime.Create;
   Pesquisa.dataInicio.AsDateTime := dt_ini;
   Pesquisa.dataFim.AsDateTime    := dt_fin;
   Pesquisa.statusTransacao       := tipo;//'2F' 3F ou E
  // pesquisa.numeroPagina          := 1;

   lista.Items.Add('Iniciando comunicação com o DATASUS...');
   Application.ProcessMessages;

  try
     RetornoPesquisa := wDataSUS.pesquisarAutorizacoes(Pesquisa, Usuariofarma);
   except
      on E: exception do
      begin
         ShowMessage(E.Message);
         if edVend.Enabled then
         begin
            edVend.Clear;
            EdSenha.Clear;
            edVend.SetFocus;
         end;
         exit;
      end;
   End;

  lista.Items.Add(RetornoPesquisa.codigoRetorno + ' -> ' + RetornoPesquisa.mensagemRetorno);
  lista.Items.Add(Usuariofarma.usuarioFarmacia + ' - ' + Usuariofarma.senhaFarmacia);

   frmPesqDATASUS := TfrmPesqDATASUS.Create(nil);

   with frmPesqDATASUS do
   begin
     // lista.Items.Append('Código de retorno: ' + RetornoPesquisa.codigoRetorno);
     // lista.Items.Append('             CNPJ: ' + RetornoPesquisa.nuCnpj);

//preenchimento do cabeçalho do form
      lblMsg.Caption  := RetornoPesquisa.mensagemRetorno;
      lblPags.Caption := inttostr(RetornoPesquisa.numeroPagina);
      lblPag.Caption  := inttostr(RetornoPesquisa.quantidadePaginas);

      if tipo = '2F' then
         lbltipo.Caption := 'TRASANÇÕES NÃO CONCLUÍDAS.'
      else
      if tipo = '3F' then
         lbltipo.Caption := 'TRASANÇÕES CONCLUÍDAS.'
      else
      if tipo = 'E' then
         lbltipo.Caption := 'ESTORNOS.';

      lbltotal.Caption := inttostr(RetornoPesquisa.totalTransacoes);
      lblperiodo.Caption := 'Período entre ' + Datetostr(dt_ini) + ' e ' + datetostr(dt_fin);

      T1.Open;
      T2.Open;
//preenchimento de T1
      for i := 0 to Length(RetornoPesquisa.arrItemPesquisaDTO)-1 do
         with RetornoPesquisa.arrItemPesquisaDTO[i] do
      begin
         ItemPesquisa := RetornoPesquisa.arrItemPesquisaDTO[i];
         T1.insert;
         T1codsolicit.AsString := ItemPesquisa.coSolicitacaoFarmacia;
         T1autoriz.AsString    := ItemPesquisa.nuAutorizacao;

         if Assigned(ItemPesquisa.dtSolicitacao) then
            T1dt_solic.Value := dtSolicitacao.AsDateTime;

         if Assigned(ItemPesquisa.dtAutorizacao) then
            T1dt_autor.Value := ItemPesquisa.dtAutorizacao.AsDateTime;

         if Assigned(ItemPesquisa.dtRecebimento) then
            T1dt_receb.Value := ItemPesquisa.dtRecebimento.AsDateTime;

         T1cpf.AsString := ItemPesquisa.nuCpf;
         T1crm.AsString := ItemPesquisa.nuCrm;
         T1uf.AsString  := ItemPesquisa.sgUfCrm;
         T1coo.AsString := ItemPesquisa.nuCupomFiscal;
         T1.Post;

         medicamentos :=  ItemPesquisa.arrMedicamentoDTO;
//preenchimento de T2
         for j := 0 to Length(Medicamentos)-1 do
         with Medicamentos[j] do
         begin
           T2.insert;
           T2ean.AsString    := coCodigoBarra;
           T2apres.AsString  := dsUnidApresentacao;
           T2status.AsString := statusTransacao;
           t2.Post;
         end;
      end;
      ShowModal;
   end;

   if Assigned(frmPesqDATASUS) then
      FreeAndNil(frmPesqDATASUS);
   Close;
end;

function TfrmFarmaPop2.PFPAutorizacao(id, cnpj, cpf, crm, ufcrm: string; dtReceita: TDateTime): boolean;
var
   i: integer;
   s: string;
   slista, slLista:TStringList;
begin
  // result := false;
   Autorizacao := AutorizacaoDTO.Create;
   Solicitacao := SolicitacaoDTO.Create;

   slLista := TStringList.Create;
   sLista  := TStringList.Create;

   s := 'gbasmsb.exe --solicitacao ' +
         number(cpf) + ' ' +
         Number(cnpj) + ' ' +
         Number(crm) + ' ' +
         ufcrm + ' ' +
         FormatDateTime('dd/mm/yyyy',dtReceita);

   RunDosInMemo(Aqui('PFP', s), slLista, True);
   sLista.Add('Enviado: ' + s);

   sLista.Add('Retorno: ' + slLista.Text);

   sLista.SaveToFile(Aqui('Logs','PFP.log'));
   sLista.Free;

   RunDosInMemo(Aqui('PFP',s), slLista, True);

   with Solicitacao do
   begin
      arrMedicamentoDTO           := Medicamentos;
      coSolicitacaoFarmacia       := id;
      dtEmissaoReceita            := TXSDateTime.Create;
      dtEmissaoReceita.AsDateTime := dtReceita;
      nuCnpj                      := Number(cnpj);//'02076851000143'; 11.279.640/0001-07
      nuCpf                       := number(cpf);//'00106379151';
      nuCrm                       := Number(crm);//'26085';
      sgUfCrm                     := ufcrm;//'MG';
      //campos novos
      dnaEstacao                  := Trim(slLista.Text);
   end;

   slLista.Free;
   s := EmptyStr;
   Lista.Items.Clear;

   lista.Items.Add('Iniciando comunicação com o DATASUS...');
   Application.ProcessMessages;

   Try
      Autorizacao := wDataSUS.executarSolicitacao(Solicitacao, Usuariofarma);
   except
      on E: exception do
      begin
         ShowMessage(E.Message);
         if edVend.Enabled then
         begin
            edVend.Clear;
            EdSenha.Clear;
            edVend.SetFocus;
         end;
         exit;
      end;
   End;

   Lista.Items.Add('CÓD AUTORIZ.: '  + Autorizacao.inAutorizacaoSolicitacao +
                   '. Nº AUTORIZ.: ' + Autorizacao.nuAutorizacao +
                   '. ID: '          + Autorizacao.coSolicitacaoFarmacia +
                   '. ('             + Autorizacao.descMensagemErro + ')'
   );

   Lista.Items.Add('===========================================================');
   Lista.Items.Add('[CNPJ FARMÁCIA: ' + Solicitacao.nuCnpj +
                   '.  CPF BENEF.: ' + Solicitacao.nuCpf + ']'
   );

   Lista.Items.Add('===========================================================');

   nmroAutDataSUS := Autorizacao.nuAutorizacao;

   result := Autorizacao.inAutorizacaoSolicitacao = '00S'; //autorizou todos

//   if not result then
  //    result := Autorizacao.inAutorizacaoSolicitacao = '01S'; //autorizou parte

   Medicamentos := Autorizacao.arrMedicamentoDTO;

   T1.First;

   for i := 0 to Length(Medicamentos)-1 do //atualiza a tabela
   with Medicamentos[i] do
   begin
      T1.edit;
      T1qtAutorizada.Value              := qtAutorizada;
      T1vlPrecoSubsidiadoPaciente.Value := vlPrecoSubsidiadoPaciente;
      T1dsUnidApresentacao.AsString     := dsUnidApresentacao;
      T1vlPrecoSubsidiadoMS.Value       := vlPrecoSubsidiadoMS;
      T1vlPrecoVenda.Value              := vlPrecoVenda;
      T1qtprescrita.Value               := qtPrescrita;
      T1.Post;

      lista.Items.Add('ITEM ' + T1inAutorizacaoMedicamento.AsString + ' - ' +
                                  inAutorizacaoMedicamento);

      if T1qtAutorizada.Value = 0 then
      s := s + coCodigoBarra + ' - ' + inAutorizacaoMedicamento + #13;

      if not T1.Eof then
         T1.Next;
   end;

   Lista.Items.Add('===========================================================');

   if s <> '' then
      showmessage(s);

   btnConfirmar.Enabled := Result;
end;


function TfrmFarmaPop2.PFPConfirmacaoAutorizacao(coSolicitacaoFarmacia, COO: String): boolean;
begin
  // result := false;
   confirmacao                       := ConfirmacaoDTO.Create;
   ConfirmacaoAutorizacao            := ConfirmacaoAutorizacaoDTO.Create;
   Confirmacao.coSolicitacaoFarmacia := coSolicitacaoFarmacia;
   Confirmacao.nuCupomFiscal         := COO;
   Confirmacao.nuAutorizacao         := Autorizacao.nuAutorizacao;
   Lista.Items.Add('Confirmando Autorização: Aguarde...');
   Application.ProcessMessages;

   try
      ConfirmacaoAutorizacao := wDataSUS.confirmarAutorizacao(Confirmacao, Usuariofarma);
   except
      on E: exception do
      begin
         ShowMessage(E.Message);
         if edVend.Enabled then
         begin
            edVend.Clear;
            EdSenha.Clear;
            edVend.SetFocus;
         end;
         exit;
      end;
   End;

   Lista.Items.Clear;
   lista.Items.Add('INICIANDO FASE 2...');
   lista.Items.Add('==========================================================');
   lista.Items.Add(ConfirmacaoAutorizacao.inAutorizacaoSolicitacao + ' ) ' +
                   ConfirmacaoAutorizacao.nuAutorizacao);

   lista.Items.Add(ConfirmacaoAutorizacao.descMensagemErro);
   lista.Items.Add(Confirmacao.descMensagem);
   lista.Items.Add('==========================================================');
   Result := ConfirmacaoAutorizacao.inAutorizacaoSolicitacao = '00A';//Pré-autorização confirmada com sucesso

   if not Result then
      Result := ConfirmacaoAutorizacao.inAutorizacaoSolicitacao = '01A';//Pré-autorização parcialmente confirmada
end;

Function TfrmFarmaPop2.PFPConfirmaRecebimento;
var
   CV: TStringList;
    s: String;
begin
   Lista.Items.Clear;
   lista.Items.Add('INICIANDO FASE 3...');
   lista.Items.Add('==========================================================');
   btnCancelar.Enabled       := False;
   ConfirmacaoRecebimento    := ConfirmacaoRecebimentoDTO.Create;
   Recebimento               := RecebimentoDTO.Create;
   Recebimento.nuAutorizacao := ConfirmacaoAutorizacao.nuAutorizacao;
   Recebimento.nuCupomFiscal := Confirmacao.nuCupomFiscal;

   T1.First;
   aitem := 0;

   T1.First;
   while not t1.Eof do
   begin
      if T1qtAutorizada.Value > 0 then
         inc(aitem);
      t1.Next;
   end;

   T1.First;
   PFPAbreMedicamento(aitem);
   aitem := 0;

   while not t1.Eof do
   begin
      if T1qtAutorizada.Value > 0 then
      begin
         Medicamentos[aItem]                           := MedicamentoDTO.Create;
         Medicamentos[aItem].coCodigoBarra             := T1coCodigoBarra.AsString;
         Medicamentos[aItem].qtAutorizada              := T1qtAutorizada.Value;
         Medicamentos[aItem].vlPrecoSubsidiadoMS       := T1vlPrecoSubsidiadoMS.Value;
         Medicamentos[aItem].vlPrecoSubsidiadoPaciente := T1vlPrecoSubsidiadoPaciente.Value;
         inc(aitem);
      end;
      t1.Next;
   end;

   Recebimento.arrMedicamentoDTO := Medicamentos;
   Lista.Items.Add('Confirmando Recebimento: Aguarde...');
   Application.ProcessMessages;

   DM_PDV.TPFP.Edit;
   DM_PDV.TPFPhora_eviodadosconf.Value := now;
   DM_PDV.TPFP.Post;

   try
      ConfirmacaoRecebimento := wDataSUS.confirmarRecebimento(Recebimento, Usuariofarma);
   except
      on E: exception do
      begin
         ShowMessage(E.Message);
         if edVend.Enabled then
         begin
            edVend.Clear;
            EdSenha.Clear;
            edVend.SetFocus;
         end;
         exit;
      end;
   End;


   aitem  := Pos('00RV',String(ConfirmacaoRecebimento.statusRecebimento));
   Result := aitem > 0;

   btnCancelar.Enabled := not Result;

   lista.Items.Add(ConfirmacaoRecebimento.statusRecebimento);
   lista.Items.Add(ConfirmacaoRecebimento.codigoRetorno + ' ) ' +
                   ConfirmacaoRecebimento.nuAutorizacao);
   lista.Items.Add(ConfirmacaoRecebimento.mensagemRetorno);

   if not Result then
   exit;

   DM_PDV.TPFP.Edit;
   DM_PDV.TPFPhora_recdadosconf.Value := now;
   DM_PDV.TPFP.Post;

   DeleteFiles(Aqui('TXT', ''),'pfpcv.txt');
   CV := TStringList.Create;
   s  := ConfirmacaoRecebimento.cupomVinculado;

   FindReplaceStr('@',#13#10, s);
   CV.Text := s;
   CV.Delete(0); //tira a linha 0 - [inicio]
//   CV.Delete(CV.Count);

   DM_PDV.TVenda.Edit;
   DM_PDV.TVendacv.AsString := CV.Text;
   DM_PDV.TVenda.Post;

  // CV.SaveToFile(Aqui('TXT','pfpcv.txt'));
   CV.free;
end;

procedure TfrmFarmaPop2.PFPAbreEstorno(itens: integer);
begin
   Estorno            := EstornoDTO.Create;
   Medicamentos       := Estorno.arrMedicamentoDTO;
   SetLength(Medicamentos, itens);
   aItem := 0;
end;


procedure TfrmFarmaPop2.PFPEstornoItens(codBarra: string; qtd: double);
begin
   Medicamentos[aItem]               := MedicamentoDTO.Create;
   Medicamentos[aItem].coCodigoBarra := codBarra;
   Medicamentos[aItem].qtDevolvida   := qtd;
   lista.Items.Add(Medicamentos[aItem].coCodigoBarra + ' '+
                   FloattoStr(Medicamentos[aItem].qtDevolvida));
   inc(aitem);
end;

function TfrmFarmaPop2.PFPEstorno(var alista:TSTringList; id, cnpj: string): boolean;
var
   i: integer;
   s: string;
begin
   //result := false;
   Estorno.nuAutorizacao     := id;
   Estorno.nuCnpj            := cnpj;
   Estorno.arrMedicamentoDTO := Medicamentos;

   Application.ProcessMessages;
   lista.Items.Add('Comunicando com o DATASUS...');

   try
      ConfirmacaoEstorno := wDataSUS.executarEstorno(Estorno, Usuariofarma);
   except
      on E: exception do
      begin
         ShowMessage(E.Message);
         if edVend.Enabled then
         begin
            edVend.Clear;
            EdSenha.Clear;
            edVend.SetFocus;
         end;
         exit;
      end;
   End;

   lista.Items.Add(ConfirmacaoEstorno.nuEstorno + ' ' +
                   ConfirmacaoEstorno.inSituacaoEstorno + ' ' +
                   ConfirmacaoEstorno.descMensagemErro + '.');

   Medicamentos :=  ConfirmacaoEstorno.arrMedicamentoDTO;

   for i := 0 to Length(Medicamentos)-1 do
   with Medicamentos[i] do
   begin
      lista.Items.Add(inAutorizacaoMedicamento + '- '+
                      Medicamentos[i].statusTransacao + ' ' +
                      FloattostrF(Medicamentos[i].qtEstornada,FFNUMBER,15,3)
      );

      if Medicamentos[i].qtEstornada = 0 then
         s := s + Medicamentos[i].coCodigoBarra + ' ' +
                  ConfirmacaoEstorno.inSituacaoEstorno + ' - ' +
                  ConfirmacaoEstorno.descMensagemErro  + #13;

      alista.Add(Medicamentos[i].coCodigoBarra +  '                 ' +
                 FloattostrF(Medicamentos[i].qtEstornada,FFNUMBER,15,3));
   end;

   result := ((ConfirmacaoEstorno.inSituacaoEstorno = '00E') or
              (ConfirmacaoEstorno.inSituacaoEstorno = '01E'));

   if not Result then
      s := ConfirmacaoEstorno.inSituacaoEstorno + ' - ' +
           ConfirmacaoEstorno.descMensagemErro + s;

   if trim(s) <> '' then
      ShowMessage(s);
end;


procedure TfrmFarmaPop2.btnConfirmarClick(Sender: TObject);
var
   n, n_TotalMS, n_TotalPAC: currency;
   Erro: Boolean;
   aliq: string;
   cupom: integer;
begin
   n_TotalMS  := 0;
   n_TotalPAC := 0;

   DM_PDV.TVenda_Item.DisableControls;
   DM_PDV.TVenda_Item.First;

   DM_PDV.TPFP.Edit;
   DM_PDV.TPFPhora_evioconfreq.Value := now;
   DM_PDV.TPFP.Post;

   cupom := StrToInt(frmPDV.ECF.NumCupom) + 1;
   Log('PFP', 'Confirmar', format('%.6d', [DM_PDV.TPFPid.AsInteger]) + ' ' + IntToStr(cupom));
   //confirmação negada
   if not PFPConfirmacaoAutorizacao(format('%.6d', [DM_PDV.TPFPid.AsInteger]), IntToStr(cupom)) then
   begin
      exit;
   end
   else
   begin //confirmação aprovada
      DM_PDV.TPFP.Edit;
      DM_PDV.TPFPhorarecconf.Value := now;
      DM_PDV.TPFP.Post;

      frmPDV.ECF.AbreCupom; //abre o cupom

      DM_PDV.TPFP.Edit;
      DM_PDV.TPFPvenda.Value := DM_PDV.TVendaid.Value;
      DM_PDV.TPFP.Post;

      T1.DisableControls;
      T1.First;
      frmPDV.Popup('Registrando Itens...');

      while not T1.Eof do
      begin
         Erro := False;

         frmPDV.Popup('Abrindo CF PFP ' + DM.QVendapv.AsString);

         Application.ProcessMessages;
         T1.DisableControls;
         T1.First;
         frmPDV.Popup('Registrando Itens...');

         //registra os itens no cupom
         while not T1.Eof do
         begin
            try
               if not DM_PDV.TProd.Locate('id', T1id_prod.Value, []) then
               begin
                  Log('PFP','Item', 'ID ' + T1id_prod.AsString + ' não encontrado na base local.');
                  raise Exception.Create('PFP - Produto ' + T1id_prod.AsString + ' não encontrado na base local.');
               end;

               n := StrToFloatDef(DM_PDV.TProdaliq_ecf.AsString,0);

               if n = 0 then
                  aliq := DM_PDV.TProdaliq_ecf.AsString
               else
               begin
                  n    := n/100;
                  aliq := FloatToStr(n);
               end;

               frmPDV.ECF.VendeItem(T1coCodigoBarra.AsString,
                                    DM_PDV.TProdnome.AsString,
                                    aliq,
                                    T1qtd.AsCurrency,
                                    (T1vlPrecoVenda.Value),
                                    DM.QVenda_ItemvDesc.AsCurrency,
                                    Copy(DM_PDV.TProdsigla_unid.AsString,1,2),
                                   '$',
                                   'D'
               );

            except
               On E: Exception do
               begin
                  frmPDV.Popup(DM_PDV.TProdnome.AsString + ' ERRO: ' + E.Message);
                  log('PDV_Err','PFP-VendeItem-EXCEPTION', E.Message);
                  erro := True;
               end;
            end;

            if erro then
               break;

            n_TotalMS  := n_TotalMS + T1vlPrecoSubsidiadoMS.Value;
            n_TotalPAC := n_TotalPAC + T1vlPrecoSubsidiadoPaciente.Value;

            T1.Next;
         end;//fim do loop QVenda_Item

         T1.EnableControls;

         if Erro then
         begin
            btnCancelar.Click;
            exit;
         end;

       //  PFPConfirmaRecebimento; //envia a 3a perna ao datasus
         DM_PDV.TVenda_Item.EnableControls;
      //conclui a venda
         n_Total := 0;

         //grava um cliente com id negativo
         DM_PDV.TCli.Append;
         DM_PDV.TCliid.Value             := 0- DM_PDV.TCli.RecordCount;
         DM_PDV.TClirazaosocial.AsString := Trim(DM_PDV.TPFPnome.AsString);
         DM_PDV.TClicnpj.AsString        := Number(DM_PDV.TPFPcpf_cli.AsString);
         DM_PDV.TClilogradouro.AsString  := Trim(DM_PDV.TPFPender.AsString);
         DM_PDV.TCli.Post;

         DM_PDV.TVenda.Edit;
         DM_PDV.TVendacliente.AsInteger := DM_PDV.TCliid.AsInteger;
         DM_PDV.TVendavr_din.Value      := n_TotalPAC;//parte paga pelo paciente
         DM_PDV.TVendavr_tkt.Value      := n_TotalMS; //parte MS
         DM_PDV.TVendacoa.Value         := DM_PDV.TPFPid.Value;
         DM_PDV.TVenda.Post;
         btnCancelar.Click;

         frmConcluir :=  TfrmConcluir.Create(self);
         frmConcluir.Show;
      end;
   end;
end;

procedure TfrmFarmaPop2.btnItemClick(Sender: TObject);
begin
   frmPesqProd := TfrmPesqProd.Create(Self);
   frmPesqProd.ST_FILTRO := 'medicam_vrms>0';
   frmPesqProd.ShowModal;

   if Assigned(frmPesqProd) then
      FreeAndNil(frmPesqProd);

   if DM_PDV.TProd.Active then
   if not DM_PDV.TProd.IsEmpty then
   begin
      frmQtdMed := TfrmQtdMed.Create(Self);
      frmQtdMed.ShowModal;

      if Assigned(frmQtdMed) then
         FreeAndNil(frmQtdMed);
   end;

   edVend.Enabled  := T1.RecordCount > 0;
   EdSenha.Enabled := edVend.Enabled;

   if edVend.Enabled then
      edVend.SetFocus;
end;

procedure TfrmFarmaPop2.BitBtn2Click(Sender: TObject);
//var
  // Item: Integer;
begin
   {PFPUsuario;
   item := 1;
   PFPAbreMedicamento(item);

   PFPLancaMedicamento('7896523206486', 2, 30, 4);
  // PFPLancaMedicamento('7899095200067', 1, 30, 5);

   if PFPAutorizacao('000006','11279640000107', '00106383183', '26085', 'MG', date) then
         //11279640000107
   if PFPConfirmacaoAutorizacao('000006','000001') then
      PFPConfirmaRecebimento;
                            //'2F' 3F ou E
   }
   PFPPesquisa(date - 10, date, '2F', '11.279.640.0001/07');
end;


procedure TfrmFarmaPop2.btnEnviarClick(Sender: TObject);
var
   b: boolean;
begin
   if (Trim(edVend.Text)='')or(Trim(EdSenha.Text) = '') then
      raise Exception.Create('Informe corretamente Vendedor e Senha');

   btnEnviar.Enabled := False;
   btnItem.Enabled   := False;
   G1.Tag := 1;
   PFPUsuario;//configura o usuario PFP
   PFPAbreMedicamento(T1.RecordCount);//prepara o array medicamento

   T1.First;

   while not T1.Eof do  // lanca os medicamentos no array
   begin
      PFPLancaMedicamento(T1coCodigoBarra.AsString,
                          T1qtprescrita.Value,
                          T1qtsolicitada.Value,
                          T1vlPrecoVenda.Value
      );
      T1.Next;
   end;

   T1.First;

   DM_PDV.Tpfp.Open;//abre a tabela pfp e faz o pedido de autorização
   DM_PDV.TPFP.Refresh;//recupera o id
   DM_PDV.TPFP.Edit;
   DM_PDV.TPFPhora_envioreq.Value := now;
   DM_PDV.TPFP.Post;
   DM_PDV.TPFP.Refresh;

   if not PFPAutorizacao(format('%.6d', [DM_PDV.Tpfpid.Value]),
                         DM_PDV.TEmpresacnpj.AsString,
                         DM_PDV.Tpfpcpf_cli.AsString,
                         DM_PDV.Tpfpcrm.AsString,
                         DM_PDV.Tpfpuf_crm.AsString,
                         DM_PDV.Tpfpdt_receita.Value) then
   begin
      exit;
   end
   else //autorização liberada  - grava o  nmroAutDataSUS
   begin
      b := False;

      T1.First;

      while not t1.Eof do
      begin
         if T1qtAutorizada.Value <> T1qtsolicitada.Value then
         begin
            b := True;
            Break;
         end;
         T1.Next;
      end;

      if (b) then
      begin
         ShowMessage(PWideChar('O medicamento em azul (' + T1coCodigoBarra.AsString + ') não foi autorizado em sua totalidade.'));
         T1.First;
         btnConfirmar.Enabled := False;
         exit;
      end;

      DM_PDV.TPFP.Edit;
      DM_PDV.TPFPhora_recreq.Value    := now;
      DM_PDV.TPFPcod_autoriz.AsString := nmroAutDataSUS;
      DM_PDV.TPFP.Post;
   end;

   btnConfirmar.Enabled := True;
end;

procedure TfrmFarmaPop2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if Assigned(Autorizacao) then
      Autorizacao.Free;
   if Assigned(usuario) then
      usuario.Free;
   if Assigned(Solicitacao) then
      Solicitacao.Free;
   if Assigned(confirmacao) then
      confirmacao.Free;
   if Assigned(ConfirmacaoAutorizacao) then
      ConfirmacaoAutorizacao.Free;
   if Assigned(Recebimento) then
      Recebimento.Free;
   if Assigned(ConfirmacaoRecebimento) then
      ConfirmacaoRecebimento.Free;
   if Assigned(Estorno) then
      Estorno.Free;
   if Assigned(ConfirmacaoEstorno) then
      ConfirmacaoEstorno.Free;
   if Assigned(Pesquisa) then
      Pesquisa.Free;
   if Assigned(ItemPesquisa) then
      ItemPesquisa.Free;
//   if Assigned(RetornoPesquisa) then
  //    RetornoPesquisa.Free;
   wDatasus    := nil;
   frmFarmaPop2 := nil;
end;

procedure TfrmFarmaPop2.FormCreate(Sender: TObject);
begin
   if DM_INI.ini.StoredValue['pfp_homologacao'] then
   begin {homologação}
      ShowMessage('Modo Homologação!');

      HTTPRIO1.URL          := 'https://200.214.130.41:9443/farmaciahomologa/services/ServicoSolicitacaoWS';
      HTTPRIO1.WSDLLocation := 'https://200.214.130.41:9443/farmaciahomologa/services/ServicoSolicitacaoWS?wsdl';
   end
  else
   begin{produção}
      HTTPRIO1.URL          := 'https://200.214.130.55:9443/farmaciapopular/services/ServicoSolicitacaoWS';
      HTTPRIO1.WSDLLocation := 'https://200.214.130.55:9443/farmaciapopular/services/ServicoSolicitacaoWS?wsdl';
   end;

   HTTPRIO1.Service := 'ServicoSolicitacaoWSService';
   HTTPRIO1.Port    := 'ServicoSolicitacaoWS';

   wDaTaSUS := HTTPRIO1 AS ServicoSolicitacaoWS;
   Application.OnException := ErrorMsg;
end;


procedure TfrmFarmaPop2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f2 then
      edVend.SetFocus;

   if key = vk_f8 then
   if btnItem.Enabled then
      btnItem.Click;

   if key = vk_f9 then
   if btnEnviar.Enabled then
      btnEnviar.Click;

   if key = vk_f10 then
   if btnConfirmar.Enabled then
      btnConfirmar.Click;
end;

procedure TfrmFarmaPop2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)and(tag < 3) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
end;

procedure TfrmFarmaPop2.FormShow(Sender: TObject);
begin
   if not FileExists(Aqui('PFP','gbasmsb.exe')) then
      raise Exception.Create(' Falta ' + Aqui('PFP','gbasmsb.exe'));

   T1.Open;
end;

procedure TfrmFarmaPop2.G1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if G1.Tag = 0 then
      g1.Canvas.Font.Color:= clBlack
   else
   If T1qtAutorizada.Value = 0 then
      g1.Canvas.Font.Color:= clRed
   else
   If T1qtAutorizada.Value < T1qtsolicitada.Value then
   begin
      g1.Canvas.Font.Color := clblue;
      g1.Canvas.Font.Style := [fsBold];
   end
   else
      g1.Canvas.Font.Color:= clgreen;

   G1.DefaultDrawDataCell(Rect, G1.columns[datacol].field, State);
end;

end.
