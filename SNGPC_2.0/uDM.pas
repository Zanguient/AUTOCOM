unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ACBrBase,
  ACBrValidador, Vcl.Forms, Vcl.Dialogs,
  Datasnap.DBClient, IdBaseComponent, IdComponent, IdServerIOHandler, IdSSL,
  IdSSLOpenSSL, uAutocomConsts,
  ZipMstr, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Wait,
  FireDAC.Comp.ScriptCommands, FireDAC.Comp.Client, FireDAC.Comp.Script,
  FireDAC.Comp.UI, FireDAC.Phys.MySQL, FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    DB1: TFDConnection;
    Q1: TFDQuery;
    QEmpresa: TFDQuery;
    DSEmpresa: TDataSource;
    QEmpresaid: TIntegerField;
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
    Validador: TACBrValidador;
    QInventInicial: TFDQuery;
    DSInventInicial: TDataSource;
    QInventAtual: TFDQuery;
    DSInventAtual: TDataSource;
    QInventAtualnome: TStringField;
    QInventAtualclasse_terap: TIntegerField;
    QInventAtualunid: TStringField;
    QInventAtualestoque: TIntegerField;
    QInventAtualdt_nf: TDateField;
    QInventAtualdt_entrada: TDateField;
    QInventAtualdt_vencim: TDateField;
    QInventAtualnmro_nf: TIntegerField;
    QInventAtuallote: TStringField;
    QInventAtualregistro_ms: TStringField;
    QInventAtualqtd: TLargeintField;
    QInventAtualean: TIntegerField;
    QProduto: TFDQuery;
    DSProduto: TDataSource;
    QProdutoid: TIntegerField;
    QProdutonome: TStringField;
    QEntrada: TFDQuery;
    DSEntrada: TDataSource;
    QEntradanome: TStringField;
    QEntradaean: TStringField;
    QEntradaarq_xml_entr: TStringField;
    QEntradaclasse_terap: TIntegerField;
    QEntradaunid: TIntegerField;
    QEntradaestoque: TIntegerField;
    QEntradadt_nf: TDateField;
    QEntradadt_entrada: TDateField;
    QEntradadt_saida: TDateField;
    QEntradadt_perda: TDateField;
    QEntradadt_vencim: TDateField;
    QEntradanmro_nf: TIntegerField;
    QEntradalote: TStringField;
    QEntradacnpj_origem: TStringField;
    QEntradacnpj_destino: TStringField;
    QEntradaregistro_ms: TStringField;
    QEntradamotivo_perda: TIntegerField;
    QEntradasngpc: TLargeintField;
    QMedDisp: TFDQuery;
    DSMedDisp: TDataSource;
    QMedDispnome: TStringField;
    QMedDispean: TStringField;
    QMedDispquant: TLargeintField;
    QMedDisplote: TStringField;
    DSSaiMed: TDataSource;
    QPesqEntrada: TFDQuery;
    DSPesqEntr: TDataSource;
    DSPesqSai: TDataSource;
    QPesqSai: TFDQuery;
    QPesqEntradanome: TStringField;
    QPesqEntradaean: TStringField;
    QPesqEntradaarq_xml_entr: TStringField;
    QPesqEntradaclasse_terap: TIntegerField;
    QPesqEntradaunid: TIntegerField;
    QPesqEntradaestoque: TIntegerField;
    QPesqEntradadt_nf: TDateField;
    QPesqEntradadt_entrada: TDateField;
    QPesqEntradadt_vencim: TDateField;
    QPesqEntradanmro_nf: TIntegerField;
    QPesqEntradalote: TStringField;
    QPesqEntradacnpj_origem: TStringField;
    QPesqEntradaregistro_ms: TStringField;
    QPesqEntradaquant: TLargeintField;
    QPesqSainome: TStringField;
    QPesqSaiean: TStringField;
    QPesqSaiarq_xml_entr: TStringField;
    QPesqSaiclasse_terap: TIntegerField;
    QPesqSaiunid: TIntegerField;
    QPesqSaiestoque: TIntegerField;
    QPesqSaidt_saida: TDateField;
    QPesqSaidt_vencim: TDateField;
    QPesqSaisngpc: TLargeintField;
    QPesqSailote: TStringField;
    QPesqSaicnpj_origem: TStringField;
    QPesqSairegistro_ms: TStringField;
    QPesqSaiquant: TLargeintField;
    DSPesqPerda: TDataSource;
    QPesqPerda: TFDQuery;
    QPesqPerdanome: TStringField;
    QPesqPerdaean: TStringField;
    QPesqPerdaarq_xml_entr: TStringField;
    QPesqPerdaclasse_terap: TIntegerField;
    QPesqPerdaunid: TIntegerField;
    QPesqPerdaestoque: TIntegerField;
    QPesqPerdadt_perda: TDateField;
    QPesqPerdadt_vencim: TDateField;
    QPesqPerdamotivo_perda: TIntegerField;
    QPesqPerdalote: TStringField;
    QPesqPerdacnpj_origem: TStringField;
    QPesqPerdaregistro_ms: TStringField;
    QPesqPerdaquant: TLargeintField;
    QPesqRec: TFDQuery;
    DSPesqRec: TDataSource;
    QPesqRecnmro_notif: TStringField;
    QPesqRecdata_prescr: TDateField;
    QPesqRecmedico: TStringField;
    QPesqRecnmro_prof: TStringField;
    QPesqRecconselho_prof: TStringField;
    QPesqRecuf: TStringField;
    QPesqRecuso_medic: TIntegerField;
    QPesqReccomprador: TStringField;
    QPesqRectipo_doc: TStringField;
    QPesqRecdoc: TStringField;
    QPesqRecorgao_exp: TStringField;
    QPesqRecuf_doc: TStringField;
    QPesqRecregistroms: TStringField;
    QPesqReclote: TStringField;
    QPesqRecqtd: TFloatField;
    QPesqRecdata_venda: TDateField;
    QPesqRecpaciente_nome: TStringField;
    QPesqRecpaciente_idade: TIntegerField;
    QPesqRecpaciente_tipo_idade: TIntegerField;
    QPesqRecpaciente_sexo: TIntegerField;
    QPesqRecpaciente_cid: TStringField;
    QPesqRecreceita_img: TStringField;
    QGerados: TFDQuery;
    DSGerados: TDataSource;
    QGeradosdt_ini: TDateField;
    QGeradosdt_fim: TDateField;
    QGeradosxml: TMemoField;
    QGeradosvalidado: TStringField;
    QXMLEnt: TFDQuery;
    QXMLEntnome: TStringField;
    QXMLEntean: TStringField;
    QXMLEntarq_xml_entr: TStringField;
    QXMLEntclasse_terap: TIntegerField;
    QXMLEntunid: TIntegerField;
    QXMLEntestoque: TIntegerField;
    QXMLEntdt_nf: TDateField;
    QXMLEntdt_entrada: TDateField;
    QXMLEntdt_saida: TDateField;
    QXMLEntdt_perda: TDateField;
    QXMLEntdt_vencim: TDateField;
    QXMLEntnmro_nf: TIntegerField;
    QXMLEntlote: TStringField;
    QXMLEntcnpj_origem: TStringField;
    QXMLEntcnpj_destino: TStringField;
    QXMLEntregistro_ms: TStringField;
    QXMLEntmotivo_perda: TIntegerField;
    QXMLEntsngpc: TLargeintField;
    QXMLRec: TFDQuery;
    QXMLRectipo_receita: TIntegerField;
    QXMLRecnmro_notif: TStringField;
    QXMLRecdata_prescr: TDateField;
    QXMLRecmedico: TStringField;
    QXMLRecnmro_prof: TStringField;
    QXMLRecconselho_prof: TStringField;
    QXMLRecuf: TStringField;
    QXMLRecuso_medic: TIntegerField;
    QXMLReccomprador: TStringField;
    QXMLRectipo_doc: TStringField;
    QXMLRecdoc: TStringField;
    QXMLRecorgao_exp: TStringField;
    QXMLRecuf_doc: TStringField;
    QXMLRecregistroms: TStringField;
    QXMLReclote: TStringField;
    QXMLRecqtd: TFloatField;
    QXMLRecdata_venda: TDateField;
    QXMLRecpaciente_nome: TStringField;
    QXMLRecpaciente_idade: TIntegerField;
    QXMLRecpaciente_tipo_idade: TIntegerField;
    QXMLRecpaciente_sexo: TIntegerField;
    QXMLRecpaciente_cid: TStringField;
    QXMLRecreceita_img: TStringField;
    Q2: TFDQuery;
    IdServerIOHandlerSSLOpenSSL1: TIdServerIOHandlerSSLOpenSSL;
    QPerda: TFDQuery;
    DSPerda: TDataSource;
    QPesqCompr: TFDQuery;
    DSPesqCompr: TDataSource;
    QPesqComprcomprador: TStringField;
    QPesqComprtipo_doc: TStringField;
    QPesqComprdoc: TStringField;
    QPesqComprorgao_exp: TStringField;
    QPesqCompruf_doc: TStringField;
    DScdPerda: TDataSource;
    ADPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    ADGUIxWaitCursor1: TFDGUIxWaitCursor;
    SP1: TFDScript;
    Zip: TZipMaster;
    QXMLRecvenda: TLongWordField;
    QPesqRecvenda: TLongWordField;
    cdSaiMed: TFDMemTable;
    cdSaiMednome: TStringField;
    cdSaiMedean: TStringField;
    cdSaiMedlote: TStringField;
    cdSaiMedquant: TIntegerField;
    cdPerda: TFDMemTable;
    cdPerdaid: TIntegerField;
    cdPerdanome: TStringField;
    cdPerdaean: TStringField;
    cdPerdalote: TStringField;
    cdPerdaquant: TIntegerField;
    cdPerdamotivo: TIntegerField;
    QGeradosid: TFDAutoIncField;
    QInventAtualid: TFDAutoIncField;
    QEntradaid: TFDAutoIncField;
    QMedDispid: TFDAutoIncField;
    cdSaiMedid: TIntegerField;
    QPesqEntradaid: TFDAutoIncField;
    QPesqSaiid: TFDAutoIncField;
    QPesqPerdaid: TFDAutoIncField;
    QPesqRecid: TFDAutoIncField;
    QPesqRectipo_receita: TIntegerField;
    QXMLEntid: TFDAutoIncField;
    QXMLRecid: TFDAutoIncField;
    QInventInicialid: TFDAutoIncField;
    QInventInicialproduto: TIntegerField;
    QInventInicialestoque: TIntegerField;
    QInventInicialqtd: TFloatField;
    QInventInicialdescricao: TStringField;
    QInventIniciallote: TStringField;
    QInventInicialvencimento: TDateField;
    QInventInicialregistro_ms: TStringField;
    QInventInicialvalidado: TStringField;
    QInventInicialdt_atualiz: TSQLTimeStampField;
    QInventInicialclasse_terap: TIntegerField;
    QInventInicialunid: TIntegerField;
    QInventInicialdata: TDateField;
    QProdutomedicam_apresentacao: TStringField;
    QProdutomedicam_principio_atv: TStringField;
    QProdutomedicam_nomelab: TStringField;
    QProdutomedicam_portaria: TStringField;
    QProdutomedicam_registroms: TStringField;
    QProdutounidade: TIntegerField;
    QMedDispmedicam_nomelab: TStringField;
    QMedDispmedicam_portaria: TStringField;
    QProdutocod_gtin: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure SP1BeforeExecute(Sender: TObject; var SQL: string;
      var Omit: Boolean);
    procedure DB1AfterConnect(Sender: TObject);
    procedure QInventInicialAfterPost(DataSet: TDataSet);
    procedure QProdutoAfterScroll(DataSet: TDataSet);
    procedure QInventInicialBeforePost(DataSet: TDataSet);
    procedure DSInventInicialStateChange(Sender: TObject);
    procedure QInventInicialBeforeDelete(DataSet: TDataSet);
    procedure QEntradaBeforeDelete(DataSet: TDataSet);
    procedure QInventInicialBeforeEdit(DataSet: TDataSet);
    procedure QPesqSaiAfterOpen(DataSet: TDataSet);
    procedure QGeradosvalidadoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdSaiMedBeforeClose(DataSet: TDataSet);
    procedure cdPerdaBeforeClose(DataSet: TDataSet);
    procedure SP1Error(ASender: TObject; const AInitiator: IFDStanObject;
      var AException: Exception);
  private
    procedure GeraChave;
  public
    procedure Pesquisar(query: TFDQuery = nil; st_sql: string = '');
    procedure ExecSql(st_sql: string);
    procedure Limpar_Tabelas;
    //procedure Abrir_Central_Relat(modo: string; pasta: string = C_ST_VAZIO; arquivo: string = C_ST_VAZIO; params: string = C_ST_VAZIO);
    procedure Abrir_Central_Relat(modo, arq_ini: string; pasta: string = C_ST_VAZIO; arquivo: string = C_ST_VAZIO; params: string = C_ST_VAZIO);
    procedure Programar_Validador(tipodoc: integer);
  end;

var
  DM: TDM;
  chave: string;

implementation

uses uFuncoes, uMain, uSNGPCConsts;

{$R *.dfm}

procedure TDM.Abrir_Central_Relat(modo, arq_ini: string; pasta: string = C_ST_VAZIO; arquivo: string = C_ST_VAZIO; params: string = C_ST_VAZIO);
const
   c_modo = '-a-v-p-e-x';
   c_modo1 = '-p-v-x';
begin
      //gerarel.exe <-a -v -p -e> <arquivo ini de conexao> <SISTEMA> <"RELATORIO XYZ"> <"id=abc" "valor=123" "resto=12.4" .. ate 20>
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

      pasta   := ' ' + pasta + ' ';
      arquivo := QuotedDuoStr(arquivo);

      if params <> C_ST_VAZIO then
         params := ' ' + params;

      arq_ini := ' ' + QuotedDuoStr(arq_ini);
   end
   else
      arq_ini := ' ' + QuotedDuoStr(arq_ini) + ' ';

   log('Rel','Enviado', modo + pasta + arquivo + params);


   killtask('GERAREL.exe'); //se estiver aberto mata o processo
   //-v "Z:\E\PROJETOSXE5\bin\SNGPC2.0\INI\autocom.ini" SNGPC "INVENTÁRIO ATUAL"

   ExecFile(Aqui('', 'gerarel'), 'open', modo + arq_ini + pasta + arquivo + params, False);
end;
{
procedure TDM.Abrir_Central_Relat(modo: string; pasta: string = C_ST_VAZIO; arquivo: string = C_ST_VAZIO; params: string = C_ST_VAZIO);
const
   c_modo = '-a-v-p-e';
   c_modo1 = '-p-v';
begin
      //gerarel.exe <-a -v -p -e> SISTEMA "RELATORIO XYZ" "id=abc" "valor=123" "resto=12.4" .. ate 20
      // -a modo normal
      //-e modo editor
      //-p modo impressao
      //-v modo visualização
      //SISTEMA nome da pasta
      //"RELATORIO XYZ" nome do arquivo (entre aspas duplas)

   if Pos(modo, c_modo)=0  then
     raise Exception.Create('AbrirRelatório: Parâmetro modo inválido');

   if (Pos(modo, c_modo1)>0) then
   begin
      if Trim(pasta) = C_ST_VAZIO then
         raise Exception.Create('AbrirRelatório: Parâmetro pasta incorreto.');

      if Trim(arquivo) = C_ST_VAZIO then
         raise Exception.Create('AbrirRelatório: Parâmetro arquivo incorreto.');

      pasta   := ' ' + pasta + ' ';
      arquivo := '"' + arquivo + '"';

      if params <> C_ST_VAZIO then
         params := ' '+ params;
   end;

   ExecFile(Aqui('', 'gerarel'), 'open', modo + pasta + arquivo + params);
end;
  }

procedure TDM.GeraChave;
var
   aQuery:TFDQuery;
begin
   aQuery := TFDQuery.Create(self);
   aQuery.Connection := DB1;

   if DB1.Connected then
      ExecSQL('SELECT @chave:=' + 'M' + 'D' + '5' +'("' + 'k' + 'o' + 'p' + 'l' + 'i' + 'n' + '");');

   Pesquisar(aQuery, 'select @chave;');

   chave  := aQuery.Fields[0].AsString;
   FreeAndNil(aQuery);
end;

procedure TDM.Limpar_Tabelas;
begin
   ExecSQL(SNGPC_SQL17 + SNGPC_SQL48);
end;

procedure TDM.cdPerdaBeforeClose(DataSet: TDataSet);
begin
   while not dataset.IsEmpty do
      DataSet.Delete;
end;

procedure TDM.cdSaiMedBeforeClose(DataSet: TDataSet);
begin
   while not dataset.IsEmpty do
      DataSet.Delete;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
   if DB1.Connected then
   begin
      ShowMessage('Erro 24');
      Application.Terminate;
   end;
end;

procedure TDM.DB1AfterConnect(Sender: TObject);
begin
   GeraChave;
end;

procedure TDM.DSInventInicialStateChange(Sender: TObject);
begin
   frmMain.CfgBtnInventInicial;
end;

procedure TDM.ExecSql(st_sql: string);
begin
   SP1.SQLScripts.Clear;
    with SP1.SQLScripts.Add do
    begin
       SQL.Text := st_sql;
    end;
   sp1.ExecuteAll;
end;

procedure TDM.Pesquisar(query: TFDQuery=nil; st_sql: string='');
var
   b: boolean;
begin
   b := False;

   if query = nil then
   begin
      query := TFDQuery.Create(nil);
      query.Connection := DB1;
      b := true;
   end;

   query.Close;
   query.SQL.Text := st_sql;

   if assigned(frmMain) then
   if frmMain.cbdebug.checked then
      Log('SQL', 'SQL', st_sql);

   try
      query.Open;
   except
      on E: exception do
      begin
         Log('SQL', 'ERRO', st_sql + ' - '#13 + E.Message);
         ShowMessage('Erro SQL: ' + E.message);
      end;
   end;

   if b then
      FreeAndNil(query);
end;

procedure TDM.Programar_Validador(tipodoc: integer);
begin{docCPF, docCNPJ, docUF, docInscEst, docNumCheque, docPIS, docCEP, docCartaoCredito, docSuframa, docGTIN}
   Validador.TipoDocto := TACBrValTipoDocto(tipodoc);
end;

procedure TDM.QEntradaBeforeDelete(DataSet: TDataSet);
begin
   ExecSQL(SNGPC_SQL49 + QuotedDuoStr(QEntradaid.AsString) + ';');
end;

procedure TDM.QGeradosvalidadoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if QGeradosvalidado.AsString = 'G' then
      text := 'Gerado'
   else
   if QGeradosvalidado.AsString = 'V' then
      text := 'Validado'
   else
   if QGeradosvalidado.AsString = 'E' then
      text := 'Enviado';
end;

procedure TDM.QInventInicialAfterPost(DataSet: TDataSet);
begin
   QProduto.Close;
end;

procedure TDM.QInventInicialBeforeDelete(DataSet: TDataSet);
begin
   if (QInventInicialvalidado.AsString = 'C')OR
      (QInventInicialvalidado.AsString = 'T')OR
      (QInventInicialvalidado.AsString = 'V') then
      raise Exception.Create(SNGPC_C66);

 ExecSQL(SNGPC_SQL49 + QuotedDuoStr(QInventInicialid.AsString) + ';');
end;

procedure TDM.QInventInicialBeforeEdit(DataSet: TDataSet);
begin
   if (QInventInicialvalidado.AsString = 'C')OR
   (QInventInicialvalidado.AsString = 'T')OR
   (QInventInicialvalidado.AsString = 'V') then
   raise Exception.Create(SNGPC_C66);

end;

procedure TDM.QInventInicialBeforePost(DataSet: TDataSet);
var
   s: string;
begin
   if QInventInicialproduto.Value <=0 then
   begin
      if not QProduto.Active then
         raise Exception.Create(SNGPC_C67);

      if QProduto.IsEmpty then
         raise Exception.Create(SNGPC_C67);
   end;

   s := BuscaTroca(SNGPC_SQL50, C_SOH, QProdutoid.AsString);
   s := BuscaTroca(s, C_STX, QInventIniciallote.AsString);
   Pesquisar(Q1, s);

   if not Q1.IsEmpty then
      raise Exception.Create(SNGPC_C68);

   QInventInicialclasse_terap.Value := frmMain.cmbInventClasse.ItemIndex + 1;
   QInventInicialunid.Value         := frmMain.cmbInventUnid.ItemIndex + 1;
   QInventInicialproduto.Value      := QProdutoid.Value;
   QInventInicialestoque.Value      := QProdutoid.Value;
   QInventInicialdescricao.AsString := QProdutonome.AsString;

   if frmMain.cmbInventPortaria.Text  = '' then
      raise Exception.Create(SNGPC_C69);

   if QInventInicialqtd.Value <=0 then
      raise Exception.Create(SNGPC_C70);

   if QInventIniciallote.AsString = '' then
      raise Exception.Create(SNGPC_C71);

   if QInventInicialvencimento.Value <=0 then
      raise Exception.Create(SNGPC_C72);

   if QInventInicialregistro_ms.AsString = '' then
      raise Exception.Create(SNGPC_C73);

   if Length(Number(QInventInicialregistro_ms.AsString)) < 13 then
      raise Exception.Create(SNGPC_C74);

   if QInventInicialclasse_terap.Value <=0 then
      raise Exception.Create(SNGPC_C75);

   if QInventInicialunid.Value <=0 then
      raise Exception.Create(SNGPC_C76);

   if (Length(Number(QProdutomedicam_PORTARIA.AsString)) < 2)or(pos('-',QProdutomedicam_PORTARIA.AsString) > 0) then
   begin
       ExecSQL('update estoque set medicam_portaria = "' + frmMain.cmbInventPortaria.Text + '" where id="' + QProdutoid.AsString + '";');
   end;

   if Length(QProdutomedicam_registroms.Value) < 13 then
   begin
      ExecSQL( 'update estoque set medicam_registroms = "' + number(QInventInicialregistro_ms.AsString) + '" where id = "' + QProdutoid.AsString + '";');
   end;
end;

procedure TDM.QPesqSaiAfterOpen(DataSet: TDataSet);
begin
   QPesqRec.Close;
   QPesqRec.Open;
end;

procedure TDM.QProdutoAfterScroll(DataSet: TDataSet);
begin
   if QInventInicial.State in [dsEdit, dsInsert] then
   begin
      with frmMain do
      begin
         if QProdutomedicam_PORTARIA.AsString = 'AM' then
         begin
            cmbInventPortaria.Text    := 'AM';
            cmbInventClasse.ItemIndex := 0;
         end
         else
         if pos(QProdutomedicam_PORTARIA.AsString, dcb) >0 then
         begin
            cmbInventPortaria.Text    := BuscaTroca(QProdutomedicam_PORTARIA.AsString, '-','');
            cmbInventClasse.ItemIndex := 1;
         end
         else
         begin
            cmbInventPortaria.text    := '';
            cmbInventClasse.ItemIndex := -1;
         end;
      end;
      QInventInicialregistro_ms.AsString := QProdutomedicam_registroms.AsString;
   end
   else
   if frmMain.PgMain.ActivePage = frmmain.TabEntrada then
   begin
      with frmMain do
      begin
         if QProdutomedicam_PORTARIA.AsString = 'AM' then
         begin
            cmbPortariaEntr.Text    := 'AM';
            cmbClasseEntr.ItemIndex := 0;
         end
         else
         if pos(QProdutomedicam_PORTARIA.AsString, dcb) >0 then
         begin
            cmbPortariaEntr.Text    := BuscaTroca(QProdutomedicam_PORTARIA.AsString, '-','');
            cmbClasseEntr.ItemIndex := 1;
         end
         else
         begin
            cmbPortariaEntr.text    := '';
            cmbClasseEntr.ItemIndex := -1;
         end;
      end;
      frmMain.edRegMSEntr.Text := QProdutomedicam_registroms.AsString;
   end;
end;

procedure TDM.SP1BeforeExecute(Sender: TObject; var SQL: string;
  var Omit: Boolean);
begin
   if (frmMain.cbdebug.checked)and(pos('koplin', SQL)<=0) then
      Log('SP', 'SP', sql);
end;


procedure TDM.SP1Error(ASender: TObject; const AInitiator: IFDStanObject;
  var AException: Exception);
begin
   Log('SP', 'SP',AException.Message);
end;


end.
