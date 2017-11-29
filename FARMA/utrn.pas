unit utrn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Data.DB, cxControls,
  cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, Vcl.Grids, Vcl.DBGrids, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxClasses, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, Math, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinsCore, dxSkinCaramel, dxSkinscxPCPainter;

type
  Tfrmtrn = class(Tfrm)
    T1: TFDMemTable;
    T1operadora: TStringField;
    T1cod_operadora: TStringField;
    T1tipo1: TStringField;
    T1tam_min1: TIntegerField;
    T1tam_max1: TIntegerField;
    T1label1: TStringField;
    T1tipo2: TStringField;
    T1tam_min2: TIntegerField;
    T1tam_max2: TIntegerField;
    T1label2: TStringField;
    T1tipo_prod: TStringField;
    T1label_prod: TStringField;
    T1tam_pro_min: TIntegerField;
    T1tam_pro_max: TIntegerField;
    T1modulo: TStringField;
    DS1: TDataSource;
    btnok: TcxButton;
    T2: TFDMemTable;
    T2codigo: TStringField;
    T2conteudo: TMemoField;
    T3: TFDMemTable;
    T3id: TIntegerField;
    T3item: TIntegerField;
    T3ean: TStringField;
    T3nome: TStringField;
    T3parcial: TBooleanField;
    T3vrbrt: TCurrencyField;
    T3vrvst: TCurrencyField;
    T3vrdesc: TCurrencyField;
    T3aprov: TBooleanField;
    T3qtd: TCurrencyField;
    T3vrliq: TCurrencyField;
    T3status: TIntegerField;
    DS3: TDataSource;
    Memo1: TMemo;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    T3manter: TBooleanField;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    lblPac: TcxLabel;
    lblsub: TcxLabel;
    T3complem: TStringField;
    T3vrbrt_local: TCurrencyField;
    T3vrliq_local: TCurrencyField;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    pnl1: TPanel;
    lbl1: TcxLabel;
    ed1: TcxTextEdit;
    cb1: TcxCheckBox;
    pnl2: TPanel;
    lbl2: TcxLabel;
    ed2: TcxTextEdit;
    cb2: TcxCheckBox;
    cmb1: TcxComboBox;
    cxLabel2: TcxLabel;
    pnl3: TPanel;
    lbl3: TcxLabel;
    ed3: TcxTextEdit;
    cb3: TcxCheckBox;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvid: TcxGridDBColumn;
    tbvitem: TcxGridDBColumn;
    tbvean: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvqtd: TcxGridDBColumn;
    tbvvrbrt: TcxGridDBColumn;
    tbvvrvst: TcxGridDBColumn;
    tbvvrdesc: TcxGridDBColumn;
    tbvvrliq: TcxGridDBColumn;
    tbvparcial: TcxGridDBColumn;
    tbvaprov: TcxGridDBColumn;
    tbvstatus: TcxGridDBColumn;
    tbvmanter: TcxGridDBColumn;
    lv: TcxGridLevel;
    edcrt: TcxMaskEdit;
    Timer1: TTimer;
    cxLabel5: TcxLabel;
    tbvvrliq_local: TcxGridDBColumn;
    cxLabel6: TcxLabel;
    lblDesc: TcxLabel;
    cxLabel7: TcxLabel;
    edNSU: TcxMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure cmb1Click(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure edcrtKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure T3AfterInsert(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure edcrtPropertiesChange(Sender: TObject);
    procedure edNSUPropertiesChange(Sender: TObject);
  private
    procedure Envia_Pre;
    function ProcessarResp: boolean;
    procedure Envia_Efetiv;
    function ProcessarResp_Efetiv: boolean;
    procedure Envia_Confirma(Anular: boolean = False);
    function ProcessarResp_Conf: boolean;
    procedure IncSeq;
    procedure IncNSU;
    procedure Processar_Itens;
    procedure Deletar_Resp;
    function localiza(s: string): boolean;
    procedure Envia_Canc(Nsu_Adm: string);
    function ProcessarResp_Canc(st_nsu: string): boolean;
    procedure Envia_Confirma_Canc(Anular: boolean = False; st_nsu: string='');
    function ProcessarResp_Conf_Canc(st_nsu: string): boolean;
    function NaRede: boolean;
  public
      passo: integer;
      g_nsu_adm: string;
  end;

var
  frmtrn: Tfrmtrn;
  path, path_resp, path_env, nome_arq, st_controle: string;
  continua: boolean;
  vr_continua: string;
  i_tempo: integer;
const
   trn_162 = '001- Operação Anterior anulada.';
   trn_163 = '163-Não foi possível acessar a Rede de Comunicação. Tentar Novamente?';
   trn_164 = '164-Serviço Fora do Ar – Favor aguardar 3 minutos e reiniciar o processo;';
   trn_157 = '157 – Autorizador não responde. Tentar novamente?';


implementation

{$R *.dfm}

uses udm_ini, uAutocomConsts, uFuncoes, uDM, uMD5Print, uDM_PDV, updv, uDMecf;

procedure Tfrmtrn.cmb1Click(Sender: TObject);
begin
   if cmb1.Focused then //configurações dos controles
   begin                //fiz esta merda pela documentação e nao usa
      T1.Locate('operadora', cmb1.Text, []);

      pnl1.Visible := T1tipo1.AsString <> C_ST_VAZIO;
      cb1.Visible  := T1tipo1.AsString = 'F';
      ed1.Visible  := not cb1.Visible;
      lbl1.Visible := ed1.Visible;
      lbl1.Caption := T1label1.AsString;
      ed1.Properties.MaxLength := T1tam_max1.Value;
      cb1.Caption  := T1label1.AsString;

      pnl2.Visible := T1tipo2.AsString <> C_ST_VAZIO;
      cb2.Visible  := T1tipo2.AsString = 'F';
      ed2.Visible  := not cb2.Visible;
      lbl2.Visible := ed2.Visible;
      lbl2.Caption := T1label2.AsString;
      cb2.Caption  := T1label2.AsString;
      ed2.Properties.MaxLength := T1tam_max2.Value;

      pnl3.Visible := T1tipo_prod.AsString <> C_ST_VAZIO;
      cb3.Visible  := T1tipo_prod.AsString = 'F';
      ed3.Visible  := not cb3.Visible;
      lbl3.Caption := T1label_prod.AsString;
      cb3.Caption  := T1label_prod.AsString;
      lbl3.Visible := ed3.Visible;
      ed3.Properties.MaxLength := T1tam_pro_max.Value;
   end;
end;

procedure Tfrmtrn.Deletar_Resp;//apaga o arquivo no servidor trn
begin
   DeleteFiles(path_resp, '*.001');
end;

procedure Tfrmtrn.btnokClick(Sender: TObject);
var
   st_campo, s: string;
   vrsub, vrpac, vrdesc: currency;
   b: boolean;
begin
   if btnok.Tag = 1 then
   begin
      btnok.Tag := 0;
      btnok.Caption := 'OK';
      exit;
      btnok.Enabled := False;
   end;
   //passo 0 indica o inicio do processo com o envio dos dados da pre
   if T3.IsEmpty then
      passo := 0;

   if passo = 0 then
   begin
      if cmb1.Text = C_ST_VAZIO then
         raise Exception.Create('Informe a operadora.');

      if (Number(edcrt.text) = C_ST_VAZIO)and (Number(edNSU.text) = C_ST_VAZIO)then
          raise Exception.Create('Informe o Nº do cartão ou o NSU ADMIN.');
      //componentes auxiliares (nao usa)
      if pnl1.Visible then
      begin
         if ed1.Visible then
         begin
            if T1tipo1.AsString = 'N' then
            begin
               s := ' (somente números)';
               st_campo := Number(ed1.Text);
            end
            else
               st_campo := Trim(ed1.Text);

            if ((T1tam_min1.Value = T1tam_max1.Value)and(T1tam_min1.Value>0))and
               (length(st_campo)< T1tam_min1.Value) then
               raise Exception.Create('Preencha o campo ' + T1label1.AsString +
                                      ' com ' + T1tam_min1.AsString + ' caracteres' + s)
            else

            if ((length(st_campo)< T1tam_min1.Value) and (T1tam_min1.Value > 0))or
               ((length(st_campo)> T1tam_max1.Value) and (T1tam_max1.Value > 0)) then
               raise Exception.Create('O nº de caracteres no campo ' + T1label1.AsString +
                                      ' deve estar entre ' + T1tam_min1.AsString + ' e ' + T1tam_max1.AsString + s);
            ed1.Text := st_campo;
         end;
      end;

      if pnl2.Visible then
      begin
         if ed2.Visible then
         begin
            if T1tipo2.AsString = 'N' then
            begin
               s := ' (somente números)';
               st_campo := Number(ed2.Text);
            end
            else
               st_campo := Trim(ed2.Text);

            if ((T1tam_min2.Value = T1tam_max2.Value)and(T1tam_min2.Value>0))and
               (length(st_campo)< T1tam_min2.Value) then
               raise Exception.Create('Preencha o campo ' + T1label2.AsString +
                                      ' com ' + T1tam_min2.AsString + ' caracteres' + s)
            else

            if ((length(st_campo)< T1tam_min2.Value) and (T1tam_min2.Value > 0))or
               ((length(st_campo)> T1tam_max2.Value) and (T1tam_max2.Value > 0)) then
               raise Exception.Create('O nº de caracteres no campo ' + T1label2.AsString +
                                      ' deve estar entre ' + T1tam_min2.AsString + ' e ' + T1tam_max2.AsString + s);
            ed2.Text := st_campo;
         end;
      end;

      if pnl3.Visible then
      begin
         if ed3.Visible then
         begin
            if T1tipo_prod.AsString = 'N' then
            begin
               s := ' (somente números)';
               st_campo := Number(ed3.Text);
            end
            else
               st_campo := Trim(ed3.Text);

            if ((T1tam_pro_min.Value = T1tam_pro_max.Value)and(T1tam_pro_min.Value>0))and
               (length(st_campo)< T1tam_pro_min.Value) then
               raise Exception.Create('Preencha o campo ' + T1label_prod.AsString +
                                      ' com ' + T1tam_pro_min.AsString + ' caracteres' + s)
            else

            if ((length(st_campo)< T1tam_pro_min.Value) and (T1tam_pro_min.Value > 0))or
               ((length(st_campo)> T1tam_pro_max.Value) and (T1tam_pro_max.Value > 0)) then
               raise Exception.Create('O nº de caracteres no campo ' + T1label_prod.AsString +
                                      ' deve estar entre ' + T1tam_pro_min.AsString + ' e ' + T1tam_pro_max.AsString + s);
            ed3.Text := st_campo;
         end;
      end;

     T3.Open; //T3 armazena os produtos
     T3.DisableControls;

     while not T3.IsEmpty do //limpa a tabela
     T3.Delete;

     IncNSU;  //incrementa o NSU interno
     vr_continua := '0'; //flago para continuação do arquivo com mais de 12 itens

     repeat //verifica se esta online e envia
         repeat
            b := NaRede;
         until (b)or(MessageBox(0, trn_163, 'Atenção!', MB_ICONEXCLAMATION or MB_YESNO) = idNo);

         if b then
         begin
           Envia_Pre; //envia o arquivo inicial e processa a resposta
           if (ProcessarResp)and not(continua) then
              passo := 1;
         end;

     until (not continua)or(not b);

     T3.First;
     vrsub := 0;
     vrpac := 0;
     vrdesc := 0;

     while not T3.Eof do //atualiza os valores subsidio e a vista
     begin
        vrsub  := vrsub + ((T3vrliq.Value - T3vrvst.Value) * T3qtd.Value);
        vrpac  := vrpac + (T3vrvst.Value * T3qtd.Value);
        vrdesc := vrdesc + (Iif(T3vrliq_local.Value <= T3vrliq.Value, (T3vrbrt.Value - T3vrliq_local.Value), (T3vrbrt.Value - T3vrliq.Value)) * T3qtd.Value);
        T3.Next;
     end;

     lblsub.Caption := FloatToStrF(vrsub, ffCurrency, 15, 2);
     lblPac.Caption := FloatToStrF(vrpac, ffCurrency, 15, 2);
     lblDesc.Caption := FloatToStrF(vrdesc, ffCurrency, 15, 2);
     T3.First;
     T3.EnableControls;
   end
   else //se ja enviou processa os itens
   if passo = 1 then
      processar_itens;
end;

procedure Tfrmtrn.edcrtKeyPress(Sender: TObject; var Key: Char);
begin
//   if not CharInSet(key,['0'..'9', #13, #8, #27]) then
  //    key := #0;
end;

procedure Tfrmtrn.edcrtPropertiesChange(Sender: TObject);
begin
   if edcrt.Focused then
      edNSU.Clear;
end;

procedure Tfrmtrn.edNSUPropertiesChange(Sender: TObject);
begin
   if edNSU.Focused then
      edcrt.Clear;
end;

procedure Tfrmtrn.Envia_Confirma_Canc(Anular: boolean = False; st_nsu: string=''); //confirma ou anula um cancelamento
var
   Lista: TStringList;
   nsu: integer;
   s, ss: string;
const Sep = ' = ';
begin
   Lista := TStringList.Create;

   if st_nsu = '' then
      DM_PDV.TTrn.Open('select * from trn where crt="CANCE"')
   else
      DM_PDV.TTrn.Open('select * from trn where nsu_adm=' + Texto_Mysql(st_nsu));//atualiza o dataset

   if DM_PDV.TTrn.IsEmpty then
      raise Exception.Create('TTrn vazio');

   DM_PDV.TTrn.Edit;
   DM_PDV.TTrncrt.Value := '';
   DM_PDV.TTrn.Post;

   if Anular then
   begin
      s  := '0420'; //anula

      //ShowMessage(s + ' - ' + DM_PDV.TTrnnsu_adm_canc.AsString);

      ss := Iif(DM_PDV.TTrnnsu_adm_canc.AsString='',
                Copy(DM_PDV.TTrnnsu_adm.AsString,1,11)+'2',
                Copy(DM_PDV.TTrnnsu_adm_canc.AsString,1,12));  //NSU – Número de Controle da Administradora - opcional
   end
   else
   begin
      s  := '0202';//confirma
      ss := Iif(DM_PDV.TTrnnsu_adm_canc.AsString='',
                Copy(DM_PDV.TTrnnsu_adm.AsString,1,11)+'2',
                Copy(DM_PDV.TTrnnsu_adm_canc.AsString,1,12));  //NSU – Número de Controle da Administradora - opcional
   end;

   Lista.Append('000-000' + sep + s);
   Lista.Append('011-000' + sep + '800400');
   nsu := DM_PDV.Q1.FieldByName('nsu').AsInteger;
   Lista.Append('001-000' + sep + FormatFloat('0', nsu));
   Lista.Append('040-000' + sep + DM_PDV.Q1.FieldByName('operadora').AsString);
   Lista.Append('012-000' + sep + ss);
   Lista.Append('940-000' + sep + '003'); //versao
   Lista.Append('942-000' + sep + st_controle);
   Lista.Append('941-000' + sep + DM_INI.ini.StoredValue['trn_estacao']);
   Lista.Append('023-000' + sep + FormatDateTime('hhnnss', now));
   Lista.Append('022-000' + sep + FormatDateTime('mmdd', date));
   nome_arq := FormatFloat('00000000', DM_INI.ini.StoredValue['trn_seq']) + '_' + DM_INI.ini.StoredValue['trn_estacao']+'.001';
   memo1.Text := 'Enviando requisição. ' + nome_arq;
   IncSeq;

   Lista.SaveToFile(path_env + nome_arq);
   Lista.SaveToFile(Aqui('LOGS\TRN\ENV', nome_arq + '.txt'));

   Deletar_Resp;

   if ProcessarResp_Conf_Canc(DM_PDV.TTrnnsu_adm.AsString) then
      btnSair.Click;
end;

procedure Tfrmtrn.Envia_Confirma(Anular: boolean = False); //confirma a prevenda efetivada
var
   Lista: TStringList;
   nsu: integer;
   s: string;
const Sep = ' = ';
begin
   Lista := TStringList.Create;

   if Anular then
      s := '0420'//anula
   else
      s := '0202'; //confirma

   Lista.Append('000-000' + sep + s);
   Lista.Append('011-000' + sep + '800300');
   nsu := DM_PDV.TTrnnsu.AsInteger;
   Lista.Append('001-000' + sep + FormatFloat('0', nsu));
   Lista.Append('040-000' + sep + DM_PDV.TTrnoperadora.AsString);
   Lista.Append('012-000' + sep + DM_PDV.TTrnnsu_adm.AsString); //NSU – Número de Controle da Administradora - opcional
   Lista.Append('940-000' + sep + '003'); //versao
   Lista.Append('942-000' + sep + st_controle);
   Lista.Append('941-000' + sep + DM_INI.ini.StoredValue['trn_estacao']);
   Lista.Append('023-000' + sep + FormatDateTime('hhnnss', now));
   Lista.Append('022-000' + sep + FormatDateTime('mmdd', date));
   nome_arq := FormatFloat('00000000', DM_INI.ini.StoredValue['trn_seq']) + '_' + DM_INI.ini.StoredValue['trn_estacao']+'.001';
   memo1.Text := 'Enviando requisição. ' + nome_arq;
   IncSeq;

   DM_PDV.TTrn.Edit;
   DM_PDV.TTrncrt.AsString := Iif(anular,'ANULADO','');
   DM_PDV.TTrn.Post;

   Lista.SaveToFile(path_env + nome_arq);
   Lista.SaveToFile(Aqui('LOGS\TRN\ENV', nome_arq + '.txt'));

   Deletar_Resp;

   if ProcessarResp_Conf then //processa a resposta a confimação
      btnSair.Click;
end;

procedure Tfrmtrn.Envia_Efetiv;
var
   Lista: TStringList;
   i, itens, max: integer;
const Sep = ' = ';
begin
   //conta quantos faltam a fazer  o limite é 12 por arquivo
  // Deletar_Resp; //apaga o arq no servidor
   itens    := DM_PDV.TTrn_Item.RecordCount - DM_PDV.TTrn_Item.RecNo + 1;

   continua := itens > 12;
   max      := Iif(itens > 12, 12, itens);
   Lista    := TStringList.Create;

   Lista.Clear;
   Lista.Append('000-000' + sep + '0200');
   Lista.Append('011-000' + sep + '800300');
   Lista.Append('001-000' + sep + DM_PDV.TTrnnsu.AsString);
   Lista.Append('040-000' + sep + DM_PDV.TTrnoperadora.AsString);
   Lista.Append('012-000' + sep + DM_PDV.TTrnnsu_adm.AsString); //NSU – Número de Controle da Administradora - opcional
   Lista.Append('940-000' + sep + '003'); //versao
   Lista.Append('942-000' + sep + st_controle);
   Lista.Append('941-000' + sep + DM_INI.ini.StoredValue['trn_estacao']);
   Lista.Append('023-000' + sep + FormatDateTime('hhnnss', now));
   Lista.Append('022-000' + sep + FormatDateTime('mmdd', date));
   Lista.Append('953-000' + sep + DM_PDV.TTrncrt.AsString);
   Lista.Append('002-000' + sep + DM_PDV.TVendacoo.AsString);
   //se itens > 12 continua = 1
   Lista.Append('900-000' + sep + Iif(itens>12,'1','0'));
   //se itens >12 poe 12. Senão poe a qt informada
   Lista.Append('901-000' + sep + LFill(IntToStr(max), 2, '0'));
   //monta os reg 902 a 014
   for i := 0 to Pred(max) do
   begin
      Lista.Append('902-' + LFill(IntToStr(i),3,'0') + sep + LFill(DM_PDV.TTrn_Itemean.AsString, 13,'0'));
      Lista.Append('906-' + LFill(IntToStr(i),3,'0') + sep + 'U');//sempre U
      Lista.Append('905-' + LFill(IntToStr(i),3,'0') + sep + FormatFloat('0', DM_PDV.TTrn_Itemqtd.Value));
      //os valores aqui devem vir do estoque
      Lista.Append('910-' + LFill(IntToStr(i),3,'0') + sep + FormatFloat('0000000', DM_PDV.TTrn_Itemvrbrt_local.Value*100));
      Lista.Append('911-' + LFill(IntToStr(i),3,'0') + sep + FormatFloat('0000000', DM_PDV.TTrn_Itemvrliq_local.Value*100));
      Lista.Append('914-' + LFill(IntToStr(i),3,'0') + sep + DM_PDV.TTrn_Itemcomplem.AsString);

      if DM_PDV.TTrn_Item.Eof then
         break;

      DM_PDV.TTrn_Item.Next;

      if i = 11 then
         break;
   end;

   nome_arq := FormatFloat('00000000', DM_INI.ini.StoredValue['trn_seq']) + '_' + DM_INI.ini.StoredValue['trn_estacao']+'.001';
   memo1.Text := 'Enviando requisição: ' + nome_arq;
   Lista.SaveToFile(path_env + nome_arq);
   Lista.SaveToFile(Aqui('LOGS\TRN\ENV', nome_arq + '.txt'));
   memo1.Text := 'Aguardando resposta: ' + nome_arq;
   IncSeq;//incrementa o registro de sequencia
   Lista.Free;
end;

procedure Tfrmtrn.Envia_Canc(Nsu_Adm: string); //faz o cancelamento de uma pre efetivada
var
   Lista: TStringList;
   nsu: integer;
const Sep = ' = ';
begin
   Deletar_Resp;
   DM_PDV.Q1.Open('select * from trn where nsu_adm=' + Texto_Mysql(Nsu_Adm)); //puxa pelo nsu_adm

   if DM_PDV.Q1.IsEmpty then
   begin
      ShowMessage('NSU não encontrado.');
      btnSair.Click;
      Exit;
   end;

  { if DM_PDV.Q1.FieldByName('crt').AsString = 'CANCE' then
   begin
      ShowMessage('Esta transação já esta cancelada.');
      btnSair.Click;
      Exit;
   end; }

   if (MessageBox(0, PWideChar('Deseja processar este cancelamento?' + C_CRLF +
                               'NSU:' + Nsu_Adm + C_CRLF +
                               'Operadora: ' + DM_PDV.Q1.FieldByName('operadora').AsString + C_CRLF),
                     'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idNo) then
   begin
      btnSair.Click;
      exit;
   end;

   Lista := TStringList.Create;
   Lista.Append('000-000' + sep + '0200');
   Lista.Append('011-000' + sep + '800400');
   nsu := DM_PDV.Q1.FieldByName('nsu').AsInteger;
   Lista.Append('001-000' + sep + FormatFloat('0', nsu));
   Lista.Append('040-000' + sep + RFill(DM_PDV.Q1.FieldByName('operadora').AsString,20, ' '));
   Lista.Append('012-000' + sep + LFill(Nsu_Adm,12,'0')); //NSU – Número de Controle da Administradora - opcional
   Lista.Append('940-000' + sep + '003'); //versao
   Lista.Append('942-000' + sep + st_controle);
   Lista.Append('941-000' + sep + DM_INI.ini.StoredValue['trn_estacao']);
   Lista.Append('023-000' + sep + FormatDateTime('hhnnss', now));
   Lista.Append('022-000' + sep + FormatDateTime('mmdd', date));
   Lista.Append('900-000' + sep + '0');//ind continuação = 0 sempre
   Lista.Append('901-000' + sep + '00');//itens = 00 sempre

   nome_arq := FormatFloat('00000000', DM_INI.ini.StoredValue['trn_seq']) + '_' + DM_INI.ini.StoredValue['trn_estacao']+'.001';
   memo1.Text := 'Enviando requisição. NSU: ' + nome_arq;
   Lista.SaveToFile(path_env + nome_arq);
   Lista.SaveToFile(Aqui('LOGS\TRN\ENV', nome_arq + '.txt'));
   Lista.Free;
   memo1.Text := 'Aguardando resposta. NSU: ' + nome_arq;

   IncSeq;
   continua := False; //atualiza o reg trn para um valor provisorio, servindo de flag para o ProcessarResp_Canc

   if DM_PDV.TTrn.Locate('id', DM_PDV.Q1.FieldByName('id').AsInteger, []) then
   begin
      DM_PDV.TTrn.Edit;
      DM_PDV.TTrncrt.AsString := 'CANCE';
      DM_PDV.TTrn.Post;
   end;

   if ProcessarResp_Canc(LFill(Nsu_Adm,12,'0')) then //processa a resposta
   begin
      btnSair.Click;
   end;
end;

procedure Tfrmtrn.Envia_Pre;
var
   Lista: TStringList;
   nsu: integer;
   compl1, compl2: string;
const Sep = ' = ';
begin
   if cb1.Visible then //isso vem dos controles aux (nao usados)
   begin
      if cb1.Checked then
         compl1 := '01Y'
      else
         compl1 := '01N';
   end;

   if cb2.Visible then
   begin
      if cb2.Checked then
         compl2 := '01Y'
      else
         compl2 := '01N';
   end;

   if Trim(ed1.Text) <> C_ST_VAZIO then
   begin
      compl1 := FormatFloat('00', length(Trim(ed1.Text))) + Trim(ed1.Text);
   end;

   if Trim(ed2.Text) <> C_ST_VAZIO then
   begin
      compl2 := FormatFloat('00', length(Trim(ed2.Text))) + Trim(ed2.Text);
   end; //---^

   if st_controle = '' then
      raise Exception.Create('CNPJ da empresa não informado.');

   Deletar_Resp;
   T3.Filtered := False;
   Lista := TStringList.Create;
   Lista.Append('000-000' + sep + '0100');
   Lista.Append('011-000' + sep + '800500');
   nsu := ini.StoredValue['nsu'];
   Lista.Append('001-000' + sep + FormatFloat('0', nsu));
   Lista.Append('040-000' + sep + RFill(cmb1.Text,20, ' '));
   Lista.Append('012-000' + sep + LFill(Number(edNSU.Text), 12,'0')); //NSU – Número de Controle da Administradora - opcional
   Lista.Append('940-000' + sep + '003'); //versao
   Lista.Append('942-000' + sep + st_controle);
   Lista.Append('941-000' + sep + DM_INI.ini.StoredValue['trn_estacao']);
   Lista.Append('023-000' + sep + FormatDateTime('hhnnss', now));
   Lista.Append('022-000' + sep + FormatDateTime('mmdd', date));
   Lista.Append('953-000' + sep + Number(edcrt.Text));
   Lista.Append('004-000' + sep + 'REA');
   Lista.Append('949-000' + sep + compl1 + compl2);
   Lista.Append('900-000' + sep + vr_continua);

   nome_arq := FormatFloat('00000000', DM_INI.ini.StoredValue['trn_seq']) + '_' + DM_INI.ini.StoredValue['trn_estacao']+'.001';
   memo1.Text := 'Enviando requisição. NSU: ' + nome_arq;
   Lista.SaveToFile(path_env + nome_arq);
   Lista.SaveToFile(Aqui('LOGS\TRN\ENV', nome_arq + '.txt'));
   Lista.Free;
   memo1.Text := 'Aguardando resposta. NSU: ' + nome_arq;

   IncSeq;
   continua := False;
end;

procedure Tfrmtrn.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin
  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
  end;
  inherited;
end;

function Tfrmtrn.NaRede:boolean; //o path é simplesmente C: ou 192.168.0.1
var
   s: string;
begin
   if pos(':', DM_INI.ini.StoredValue['trn_server']) > 0 then
     s := '' //se local
   else
      s := '\\'; //se em rede

   Result := s = '';//se local, result = True

   if not result then
   begin
      Result := DM.pingar(DM_INI.ini.StoredValue['trn_server']);
   end;
end;

procedure Tfrmtrn.FormCreate(Sender: TObject);
 var
   i: integer;
   s: string;
begin
   inherited;
   i_tempo := DM_INI.INI.StoredValue['trntimout'];//default 30

   if pos(':', DM_INI.ini.StoredValue['trn_server']) > 0 then
     s := ''
   else
      s := '\\';
   //trn_server pode ser por ex.: "C:"(local) ou "F:"(mapeado) ou "192.168.0.1"
   path      := s + DM_INI.ini.StoredValue['trn_server'] + '\TRNCENTR\TCTB_OPR.TXT';
   path_resp := s + DM_INI.ini.StoredValue['trn_server'] + '\TRNCENTR\Resp\';
   path_env  := s + DM_INI.ini.StoredValue['trn_server'] + '\TRNCENTR\Req\';

   for i := 0 to componentcount - 1 do
   begin
       if (Components[i] is TcxGridDBTableView) then
          (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
   end;

   DM.QEmpresa.Open;
   st_controle := Number(DM.QEmpresacnpj.AsString);
end;

procedure Tfrmtrn.FormShow(Sender: TObject);
var
   Lista: TStringList;
   s: string;
   i: integer;
   b: boolean;
begin
   inherited;

   repeat //verifica se esta na rede ou se é local
      b := NaRede;
   until (b)or(MessageBox(0, trn_163, 'Atenção!', MB_ICONEXCLAMATION or MB_YESNO) = idNo);

   if not b then
   begin
      timer1.Tag     := -1;
      btnok.Enabled  := False;
      panel1.Visible := False;
      timer1.Enabled := true;
      exit;
   end;

   T1.Open;

   panel1.Visible := passo <3; //exibe/oculta grid e outros componentes

   if Panel1.Visible then
   begin
      while not T1.IsEmpty do//limpa T1 que armazena as cfg dos componentes conforme a operadora
         T1.Delete;

      if not FileExists(path) then
      begin
         btnSair.Click;
         raise Exception.Create(path + ' não encontrado.');
      end;

      lista := TStringList.Create;
      lista.LoadFromFile(path);
      cmb1.Properties.Items.Clear;

      for i := 0 to Pred(Lista.Count) do
      begin
         s := Lista.Strings[i];
         T1.Append;
         T1operadora.AsString     := Trim(copy(s,1,20)); //Utilizar na Tela Identificação Portador
         T1cod_operadora.AsString := Trim(copy(s,21,8));//Utilizado na formatação das mensagens
         T1tipo1.AsString         := Trim(copy(s,29,1)); //N-Numérico, A - Alfanumérico ou F - Flag (Y/N)
         T1tam_min1.Value         := StrToIntDef(Trim(copy(s,30,2)),0);
         T1tam_max1.Value         := StrToIntDef(Trim(copy(s,32,2)),0);
         T1label1.AsString        := Trim(copy(s,34,20));
         T1tipo2.AsString         := Trim(copy(s,54,1));
         T1tam_min2.Value         := StrToIntDef(Trim(copy(s,55,2)),0);
         T1tam_max2.Value         := StrToIntDef(Trim(copy(s,57,2)),0);
         T1label2.AsString        := Trim(copy(s,59,20));
         T1tipo_prod.AsString     := Trim(copy(s,79,1));
         T1tam_pro_min.Value      := StrToIntDef(Trim(copy(s,80,2)),0);
         T1tam_pro_max.Value      := StrToIntDef(Trim(copy(s,82,2)),0);
         T1label_prod.AsString    := Trim(copy(s,84,20));
         T1modulo.AsString        := Trim(copy(s,104,2)); //00-Não Validar; 10 – Módulo 10; 11 – Módulo 11
         T1.Post;

         cmb1.Properties.Items.Add(T1operadora.AsString);
      end;

      Lista.Free;
   end;

   Timer1.Enabled := passo > 2;
end;

procedure Tfrmtrn.IncNSU; //salva o NSU interno no ini
begin
   ini.StoredValue['nsu'] := ini.StoredValue['nsu'] + 1;

   if ini.StoredValue['nsu'] > 999999 then
      ini.StoredValue['nsu'] := 1;

   ini.SaveFormPlacement;
end;

procedure Tfrmtrn.IncSeq; //salva o sequencial no ini
begin
  DM_INI.ini.StoredValue['trn_seq'] := DM_INI.ini.StoredValue['trn_seq'] + 1;

  if DM_INI.ini.StoredValue['trn_seq'] > 9999999 then
     DM_INI.ini.StoredValue['trn_seq'] := 1;

  DM_INI.ini.SaveFormPlacement;
end;

function Tfrmtrn.localiza(s: string): boolean; //localiza o produto no estoque pelo gtin
var
   i: integer;
   ss: string;
begin
   ss := s;

   if s[1] = '0' then
   begin
      for i := 1 to length(s) do
      begin
          ss := Trim(copy(s,i,length(s)));

         DM_PDV.Q1.Open('select id, nome, vrvenda_vista, medicam_pmc, cod_gtin from estoque where cod_gtin=' + Texto_Mysql(ss));

         if not DM_PDV.Q1.IsEmpty then
           break;
      end;
   end
   else
   DM_PDV.Q1.Open('select id, nome, vrvenda_vista, medicam_pmc, cod_gtin from estoque where cod_gtin=' + Texto_Mysql(s));

   Result := not DM_PDV.Q1.IsEmpty;
end;

function Tfrmtrn.ProcessarResp: boolean; //processa resposta da solicitação da pre
var
   Lista: TstringList;
   i, tempo: integer;
   prefix, sufix, cod, nsu, nsu_adm, msg, Oper, par_compl, s: string;
   aprovado, Aguardando_Resposta, timeout: boolean;
   vrsub, vrpac: currency;
begin
  timeout := False;

  repeat
     Aguardando_Resposta := True;
     continua            := False;
     aprovado            := False;
     tempo               := i_tempo;
     vrsub               := 0;
     vrpac               := 0;
     btnok.Caption       := 'CANCELAR';
     btnok.Tag           := 1;

     T2.Open;
     T2.DisableControls;

     Lista := TStringList.Create;

     while not T2.IsEmpty do
     T2.Delete;

     repeat
        Dec(Tempo);
        sleep(500);
        Application.ProcessMessages;
        memo1.Text := 'Aguardando resposta... ' + InttoStr(tempo);

        if not FileExists(path_resp + nome_arq) then //fica em loop ate o arquivo ser gerado ou o tempo chegar em 0
            continue;
        //o arquivo foi encontrado e continua o processamento
        memo1.Text := 'Baixando arquivo de resposta...';
        Lista.LoadFromFile(path_resp + nome_arq);
           Lista.SaveToFile(Aqui('LOGS\TRN\RESP', nome_arq + '.txt'));

        memo1.Text := 'processando...';
        //grava o arquivo em T2
        for i := 0 to Pred(Lista.Count) do
        begin
           prefix := copy(lista.Strings[i],1,7);//000-000
           sufix  := Trim(copy(lista.Strings[i],11, 300));

           T2.Append;
           T2codigo.AsString   := prefix;
           T2conteudo.AsString := sufix;
           T2.Post;
        end;
        //processa o conteudo de T2
        memo1.Text := 'Lendo retornos...';

        if T2.Locate('codigo','009-000', []) then
        begin
           aprovado := StrToIntDef(T2conteudo.AsString,99) in[0..9];
        end;

        if T2.Locate('codigo','001-000') then
        begin
           nsu := 'NSU:' + T2conteudo.AsString;
        end;

        if T2.Locate('codigo','009-000') then
        begin
           cod := 'CÓD:' + T2conteudo.AsString;
        end;

        if T2.Locate('codigo','012-000') then
        begin
           nsu_adm := 'NSU ADM:' + T2conteudo.AsString;
        end;

        if T2.Locate('codigo','030-000', []) then
        begin
           msg := T2conteudo.AsString;
        end;

        if T2.Locate('codigo','040-000', []) then
        begin
           Oper := 'Oper.:' + T2conteudo.AsString;
        end;

        if T2.Locate('codigo','948-000', []) then  //para tela complementar
        begin
           par_compl := T2conteudo.AsString; //ex: N0909UF/CRM

           if par_compl <> C_ST_VAZIO then
           begin
              pnl3.Visible := Copy(par_compl,1,1) <> C_ST_VAZIO;
              cb3.Visible  := Copy(par_compl,1,1) = 'F';
              ed3.Visible  := not cb3.Visible;
              lbl3.Caption := Trim(Copy(par_compl,6,300));
              cb3.Caption  := lbl3.Caption;
              lbl3.Visible := ed3.Visible;
              ed3.Properties.MaxLength := StrToIntDef(Copy(par_compl,4,2),0);
           end;
        end;

        for i := 0 to 11 do
        begin
           if T2.Locate('codigo','902-' + FormatFloat('000', i), []) then
           begin
              memo1.Text := 'Lendo Item ' + InttoStr(i+1);
              Application.ProcessMessages;
              s := T2conteudo.AsString;

              Localiza(s); //acha na tabela estoque
              T3.Append;          //id, nome, vrvenda_vista, medicam_pmc, cod_gtin
              T3id.Value          := DM_PDV.Q1.Fields[0].AsInteger;
              T3nome.AsString     := DM_PDV.Q1.Fields[1].AsString;
              T3item.Value        := T3.RecordCount+1;
              T3ean.AsString      := DM_PDV.Q1.Fields[4].AsString;
              T3vrbrt_local.Value := Iif(DM_PDV.Q1.Fields[3].AsCurrency < DM_PDV.Q1.Fields[2].AsCurrency, DM_PDV.Q1.Fields[2].AsCurrency, DM_PDV.Q1.Fields[3].AsCurrency);
              T3vrliq_local.Value := DM_PDV.Q1.Fields[2].AsCurrency;

              if T3id.Value < 1 then
                 msg := msg + C_CRLF + 'ITEM ' + T3item.AsString + ' não existe no estoque.';

               //parcial ou total
              if T2.Locate('codigo','906-' + FormatFloat('000', i), []) then
              begin
                 T3parcial.Value := T2conteudo.AsString = 'P';
              end;
              //qtd
              if T2.Locate('codigo','905-' + FormatFloat('000', i), []) then
              begin
                 T3qtd.AsString := T2conteudo.AsString;
              end;
              //preco bruto
              if T2.Locate('codigo','910-' + FormatFloat('000', i), []) then
              begin
                 T3vrbrt.Value := (StrToFloatDef(T2conteudo.AsString,0)/100);
              end;
              //preco liq
              if T2.Locate('codigo','911-' + FormatFloat('000', i), []) then
              begin
                 T3vrliq.Value := (StrToFloatDef(T2conteudo.AsString,0)/100);
              end;
              //preco vista
              if T2.Locate('codigo','912-' + FormatFloat('000', i), []) then
              begin
                 T3vrvst.Value := (StrToFloatDef(T2conteudo.AsString,0)/100);
              end;
              //desconto
              if T2.Locate('codigo','909-' + FormatFloat('000', i), []) then
              begin
                 T3vrdesc.Value := StrToFloatDef(T2conteudo.AsString,0)/100;
              end;
              //status
              if T2.Locate('codigo','919-' + FormatFloat('000', i), []) then
              begin
                 T3status.AsString := T2conteudo.AsString;
              end;

              T3aprov.Value  := T3status.Value = 0;
              T3manter.Value := True;
              T3.Post;
           end;
        end;

        if T2.Locate('codigo','900-000', []) then
        begin
           Continua    := T2conteudo.AsString <> '0';
           vr_continua := T2conteudo.AsString;

           if Continua then
              memo1.Text := 'Continua...'
           else
              memo1.Lines.Clear;
        end
        else
        memo1.Lines.Clear;

        Aguardando_Resposta := False;
     until
        (Aguardando_Resposta = False)or(Tempo<=0)or(btnok.Tag = 0);

     Lista.Free;

     if btnok.tag = 0 then
         ShowMessage('Cancelado pelo Operador.')
     else
      timeout := Tempo <= 0;

      if timeout then
         timeout := (MessageBox(0, trn_157, 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idYes);

  until (btnok.tag = 0) or (not timeout) or(aprovado);

  if msg <> C_ST_VAZIO then
     MessageDlg( {oper + C_CRLF + nsu + C_CRLF +  nsu_adm + C_CRLF + cod + C_CRLF +} msg, mtInformation, [mbOK], 0);

  btnok.Enabled := True;
  btnok.Tag     := 0;
  btnok.Caption := 'OK';
  Result        := Aprovado;

  if Result then
  begin
     Memo1.Text := 'Desmarque a opção M dos itens que serão excluidos da transação. ' +
                   'Atente para as quantidades aprovadas e informe ao cliente.';

    // frmPDV.Popup('Abrindo Venda TRN ' + DM.QVendapv.AsString);
    // frmPDV.ECF.AbreCupom;//abre a venda
  end;
end;


function Tfrmtrn.ProcessarResp_Conf_Canc(st_nsu: string): boolean; //resposta da confirm do cancelamento
var
   Lista: TstringList;
   i, tempo: integer;
   prefix, sufix, cod, nsu, nsu_adm, msg, Oper: string;
   Aguardando_Resposta, aprovado, timeout: boolean;
begin
   timeout := false;

   repeat
     Aguardando_Resposta := True;
     Aprovado            := False;
     tempo               := i_tempo;
     btnok.Caption       := 'CANCELAR';
     btnok.Tag           := 1;

     Lista := TStringList.Create;

     repeat
        Dec(Tempo);
        sleep(500);
        Application.ProcessMessages;
        memo1.Text := 'Aguardando resposta... ' + InttoStr(tempo);

        if not FileExists(path_resp + nome_arq) then
            continue;

        continua := False;

        memo1.Text := 'Baixando arquivo de resposta...';
        Lista.LoadFromFile(path_resp + nome_arq);
        Lista.SaveToFile(Aqui('LOGS\TRN\RESP', nome_arq + '.txt'));

        memo1.Text := 'processando...';
        T2.Open;

        while not T2.IsEmpty do
        T2.Delete;

        for i := 0 to Pred(Lista.Count) do
        begin
           prefix := copy(lista.Strings[i],1,7);//000-000
           sufix  := Trim(copy(lista.Strings[i],11, 300));

           T2.Append;
           T2codigo.AsString   := prefix;
           T2conteudo.AsString := sufix;
           T2.Post;
        end;

        memo1.Text := 'Lendo retornos...';

        if T2.Locate('codigo','009-000', []) then
        begin
           aprovado := StrToIntDef(T2conteudo.AsString,99) in[0..9];

           if (aprovado)and(T2.Locate('codigo','000-000')and(T2conteudo.AsString='0430')) then //se aprovado e anulação
           begin
               msg := trn_162;
           end;
        end;

        if T2.Locate('codigo','001-000') then
        begin
           nsu := 'NSU:' + T2conteudo.AsString;
        end;

        if T2.Locate('codigo','009-000') then
        begin
           cod := 'CÓD:' + T2conteudo.AsString;
        end;

        if T2.Locate('codigo','012-000') then
        begin
           nsu_adm := 'NSU ADM:' + T2conteudo.AsString;

           if msg = trn_162 then//se aprovado e anulação
           begin
               DM_PDV.TTrn.Open('select * from trn where nsu_adm=' + Texto_Mysql(st_nsu));
               DM_PDV.TTrn.Edit;
               DM_PDV.TTrncrt.AsString := 'CANC ANUL';
               DM_PDV.TTrnnsu_adm_canc.AsString := T2conteudo.AsString;
               DM_PDV.TTrn.Post;
           end
           else
           begin
               DM_PDV.TTrn.Open('select * from trn where nsu_adm=' + Texto_Mysql(st_nsu));
               DM_PDV.TTrn.Edit;
               DM_PDV.TTrncrt.AsString := 'CANC VENDA';
               DM_PDV.TTrnnsu_adm_canc.AsString := T2conteudo.AsString;
               DM_PDV.TTrn.Post;
           end;
        end;

        if T2.Locate('codigo','030-000', []) then
        begin
           msg := T2conteudo.AsString;
        end;

        if T2.Locate('codigo','040-000', []) then
        begin
           Oper := 'Oper.:' + T2conteudo.AsString;
        end;

        memo1.Lines.Clear;

        Aguardando_Resposta := False;
     until
        (Aguardando_Resposta = False)or(Tempo<=0)or(btnok.Tag = 0);


     if msg <> C_ST_VAZIO then
        MessageDlg(msg, mtInformation, [mbOK], 0);


     if btnok.tag = 0 then
         ShowMessage('Cancelado pelo Operador.')
     else
      timeout := Tempo <= 0;

      if timeout then
         timeout := (MessageBox(0, trn_157, 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idYes);

  until (btnok.tag = 0) or (not timeout) or(aprovado);

  btnok.Enabled := True;
  btnok.Tag     := 0;
  btnok.Caption := 'OK';
  T2.Close;
  Lista.Free;
  Result        := Aprovado;

  if Result then
     Deletar_Resp;
end;

function Tfrmtrn.ProcessarResp_Conf: boolean; //resposta da confimação/anulação da pre
var
   Lista: TstringList;
   i, tempo: integer;
   prefix, sufix, cod, nsu, nsu_adm, msg, Oper: string;
   Aguardando_Resposta, aprovado, timeout: boolean;
begin
   timeout := False;

   repeat
     Aguardando_Resposta := True;
     Aprovado            := False;
     tempo               := i_tempo;
     btnok.Caption       := 'CANCELAR';
     btnok.Tag           := 1;

     Lista := TStringList.Create;

     repeat
        Dec(Tempo);
        sleep(500);
        Application.ProcessMessages;
        memo1.Text := 'Aguardando resposta... ' + InttoStr(tempo);

        if not FileExists(path_resp + nome_arq) then
            continue;

        continua := False;

        memo1.Text := 'Baixando arquivo de resposta...';
        Lista.LoadFromFile(path_resp + nome_arq);
        Lista.SaveToFile(Aqui('LOGS\TRN\RESP', nome_arq + '.txt'));

        memo1.Text := 'processando...';
        T2.Open;

        while not T2.IsEmpty do
        T2.Delete;

        for i := 0 to Pred(Lista.Count) do
        begin
           prefix := copy(lista.Strings[i],1,7);//000-000
           sufix  := Trim(copy(lista.Strings[i],11, 300));

           T2.Append;
           T2codigo.AsString   := prefix;
           T2conteudo.AsString := sufix;
           T2.Post;
        end;

        memo1.Text := 'Lendo retornos...';

        if T2.Locate('codigo','000-000', []) then
        begin //nao retorna 009-000 como os outros arquivos
           aprovado := (T2conteudo.AsString='0430')or(T2conteudo.AsString='0202');

           if (T2conteudo.AsString='0430') then //se foi uma anulação gera a msg pela aplicação
           begin
              msg := trn_162;
              DM_PDV.TTrn.Edit;
              DM_PDV.TTrncrt.AsString := 'ANULADO';
              DM_PDV.TTrn.Post;
           end
           else
           begin
              DM_PDV.TTrn.Edit;
              DM_PDV.TTrncrt.AsString := 'FINALIZADO';
              DM_PDV.TTrn.Post;
           end;
        end;

        if T2.Locate('codigo','001-000') then
        begin
           nsu := 'NSU:' + T2conteudo.AsString;
        end;

        if T2.Locate('codigo','009-000') then
        begin
           cod := 'CÓD:' + T2conteudo.AsString;
        end;

        if T2.Locate('codigo','012-000') then
        begin
           nsu_adm := 'NSU ADM:' + T2conteudo.AsString;
        end;

        if T2.Locate('codigo','030-000', []) then
        begin
           msg := T2conteudo.AsString;
        end;

        if T2.Locate('codigo','040-000', []) then
        begin
           Oper := 'Oper.:' + T2conteudo.AsString;
        end;

        memo1.Lines.Clear;

        Aguardando_Resposta := False;
     until
        (Aguardando_Resposta = False)or(Tempo<=0)or(btnok.Tag = 0);


     if msg <> C_ST_VAZIO then
        MessageDlg( {oper + C_CRLF + nsu + C_CRLF +  nsu_adm + C_CRLF + cod + C_CRLF +} msg, mtInformation, [mbOK], 0);


     if btnok.tag = 0 then
         ShowMessage('Cancelado pelo Operador.')
     else
      timeout := Tempo <= 0;

      if timeout then
         timeout := (MessageBox(0, trn_157, 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idYes);

  until (btnok.tag = 0) or (not timeout) or(aprovado);

  btnok.Enabled := True;
  btnok.Tag     := 0;
  btnok.Caption := 'OK';
  T2.Close;
  Result        := Aprovado;
end;

function Tfrmtrn.ProcessarResp_Canc(st_nsu: string): boolean; //resposta ao pedido de cancelamento
var
   Lista: TstringList;
   i, linhas, Tempo: integer;
   prefix, sufix, cod, nsu, nsu_adm, msg, Oper: string;
   aprovado, Aguardando_Resposta, timeout: boolean;
begin
   timeout := False;

   repeat
     Aguardando_Resposta := True;
     Aprovado            := False;
     continua            := False;
     tempo               := i_tempo;
     btnok.Caption       := 'CANCELAR';
     btnok.Tag           := 1;
     Lista               := TStringList.Create;

     repeat
        Dec(Tempo);
        sleep(500);
        Application.ProcessMessages;
        memo1.Text := 'Aguardando resposta... ' + InttoStr(tempo);

        if not FileExists(path_resp + nome_arq) then
           continue;

        Aguardando_Resposta := False;

        memo1.Text := 'Baixando arquivo de resposta...';
        Lista.LoadFromFile(path_resp + nome_arq);
        Lista.SaveToFile(Aqui('LOGS\TRN\RESP', nome_arq + '.txt'));

      //  Deletar_Resp;
        memo1.Text := 'processando...';
        T2.Open;
        T2.DisableControls;


        while not T2.IsEmpty do
        T2.Delete;

        for i := 0 to Pred(Lista.Count) do
        begin
           prefix := copy(lista.Strings[i],1,7);//000-000
           sufix  := Trim(copy(lista.Strings[i],11, 300));

           if not T2.Locate('codigo', prefix, []) then
           begin
              T2.Append;
              T2codigo.AsString   := prefix;
              T2conteudo.AsString := sufix;
              T2.Post;
           end;
        end;

        memo1.Text := 'Lendo retornos...';

        if T2.Locate('codigo','009-000', []) then
        begin
           aprovado := StrToIntDef(T2conteudo.AsString,99) in[0..9];
        end;

        if T2.Locate('codigo','001-000') then
        begin
           nsu := 'NSU:' + T2conteudo.AsString;
        end;

        if T2.Locate('codigo','009-000') then
        begin
           cod := 'CÓD:' + T2conteudo.AsString;
        end;

        DM_PDV.TTrn.Open('select * from trn where nsu_adm=' + Texto_Mysql(st_nsu));//atualiza o dataset
        DM_PDV.TTrn.Edit;
        DM_PDV.TTrnnsu_adm_canc.AsString :='';
        DM_PDV.TTrn.Post;

        if T2.Locate('codigo','012-000') then
        begin
           nsu_adm := 'NSU ADM:' + T2conteudo.AsString;

          // if (aprovado) then
         //  begin               //CANC = ainda nao imprimiu cancelamento  Flag para recuperação de crash
           DM_PDV.TTrn.Edit;
           DM_PDV.TTrncrt.Value := 'CANCE';
           DM_PDV.TTrnnsu_adm_canc.AsString := T2conteudo.AsString;
           DM_PDV.TTrn.Post;
           DM_PDV.Q1.Open('select * from trn where nsu_adm=' + Texto_Mysql(st_nsu));//atualiza o dataset
         //  end;
        end;

        if T2.Locate('codigo','030-000', []) then
        begin
           msg := T2conteudo.AsString;
        end;

        if T2.Locate('codigo','040-000', []) then
        begin
           Oper := 'Oper.:' + T2conteudo.AsString;
        end;

        Continua := False;
        memo1.Lines.Clear;

     until (Aguardando_Resposta = False)or(Tempo<=0)or(btnok.Tag = 0);

     if btnok.tag = 0 then
         ShowMessage('Cancelado pelo Operador.')
     else
      timeout := Tempo <= 0;

      if timeout then
         timeout := (MessageBox(0, trn_157, 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idYes);

  until (btnok.tag = 0) or (not timeout) or(aprovado);

  btnok.Enabled := True;
  btnok.Tag     := 0;
  btnok.Caption := 'OK';
  Result        := Aprovado;
  T2.EnableControls;
  IncSeq;

  if (not continua) and(msg <> C_ST_VAZIO) then
      MessageDlg( {oper + C_CRLF + nsu + C_CRLF +  nsu_adm + C_CRLF + cod + C_CRLF +} msg, mtInformation, [mbOK], 0);

  if(not continua)and(Result) then
  begin
     //montagem do comprovante
     Lista.Clear;

     if T2.Locate('codigo','028-000', []) then
     begin
        Linhas := T2conteudo.AsInteger;

        for i := 0 to linhas -1 do
        begin
           if T2.Locate('codigo','029-' + FormatFloat('000',i), []) then
           begin
              Lista.Append(T2conteudo.AsString);
           end;
        end;
        sleep(500);//ShowMessage('1 - ' + DM_PDV.TTrnnsu_adm_canc.AsString);
        if not DM_ECF.Relatorio_Gerencial(Lista, 2, DM_PDV.Indice_RG('convenio')) then //se nao imprimiu, anula
        begin
              DM_PDV.TTrn.Edit;
              DM_PDV.TTrncrt.AsString := 'CANCE';
              DM_PDV.TTrn.Post;

           Envia_Confirma_Canc(True, DM_PDV.TTrnnsu_adm.AsString);
        end
        else //se imprimiu, confirma
        begin
           DM_PDV.TTrn.Edit;
           DM_PDV.TTrncrt.AsString := '';
           DM_PDV.TTrn.Post;
           Envia_Confirma_Canc(False, DM_PDV.TTrnnsu_adm.AsString);
        end;
     end;
  end
  else
  begin
      DM_PDV.TTrn.Edit;
      DM_PDV.TTrncrt.AsString := '';
      DM_PDV.TTrn.Post;
  end;

  Lista.Free;
  T2.Close;
end;

function Tfrmtrn.ProcessarResp_Efetiv: boolean; //rsposta ao pedido de recuperação da pre
var
   Lista: TstringList;
   i, linhas, Tempo: integer;
   prefix, sufix, cod, nsu, nsu_adm, msg, Oper, codAut, s: string;
   aprovado, Aguardando_Resposta, timeout: boolean;
   vrsub, vrpac, totLiq, totRec: currency;
begin
   timeout := False;

   repeat
     Aguardando_Resposta := True;
     Aprovado            := False;
     continua            := False;
     tempo               := i_tempo;
     btnok.Caption       := 'CANCELAR';
     btnok.Tag           := 1;
     Lista               := TStringList.Create;

     repeat
        Dec(Tempo);
        sleep(500);
        Application.ProcessMessages;
        memo1.Text := 'Aguardando resposta... ' + InttoStr(tempo);
        //enquanto o arquivo nao é gerado, refaz o loop, decrementando o tempo
        if not FileExists(path_resp + nome_arq) then
           continue;

        Aguardando_Resposta := False;//o arquivo existe e nao esta mais esperando

        memo1.Text := 'Baixando arquivo de resposta...';
        Lista.LoadFromFile(path_resp + nome_arq);
        Lista.SaveToFile(Aqui('LOGS\TRN\RESP', nome_arq + '.txt'));

    //    Deletar_Resp;//apaga o arquivo de resp no servidor
        memo1.Text := 'processando...';
        T2.Open;
        T2.DisableControls;


        while not T2.IsEmpty do  //limpa T2
        T2.Delete;
        //salva o arquivo em T2, separando prefix e sufix
        for i := 0 to Pred(Lista.Count) do
        begin
           prefix := copy(lista.Strings[i],1,7);//000-000
           sufix  := Trim(copy(lista.Strings[i],11, 300));

           if not T2.Locate('codigo', prefix, []) then
           begin
              T2.Append;
              T2codigo.AsString   := prefix;
              T2conteudo.AsString := sufix;
              T2.Post;
           end;
        end;
        //processa o conteudo de T2
        memo1.Text := 'Lendo retornos...';

        if T2.Locate('codigo','009-000', []) then
        begin
           aprovado := StrToIntDef(T2conteudo.AsString,99) in[0..9];

           if not aprovado then
           begin
              DM_PDV.TTrn.Edit;
              DM_PDV.TTrnlote.AsString := 'REPROV';
              DM_PDV.TTrn.Post;
           end;
        end;

        if T2.Locate('codigo','001-000') then
        begin
           nsu := 'NSU:' + T2conteudo.AsString;
        end;

        if T2.Locate('codigo','009-000') then
        begin
           cod := 'CÓD:' + T2conteudo.AsString;
        end;

        if T2.Locate('codigo','012-000') then
        begin
           nsu_adm := 'NSU ADM:' + T2conteudo.AsString;
        end;

        if T2.Locate('codigo','030-000', []) then
        begin
           msg := T2conteudo.AsString;
        end;

        if T2.Locate('codigo','040-000', []) then
        begin
           Oper := 'Oper.:' + T2conteudo.AsString;
        end;

        if T2.Locate('codigo','014-000', []) then
        begin
           DM_PDV.TTrn.Edit;
           DM_PDV.TTrnlote.AsString := T2conteudo.AsString;
           DM_PDV.TTrn.Post;
        end;

        if T2.Locate('codigo','921-000', []) then
        begin
           DM_PDV.TTrn.Edit;
           DM_PDV.TTrnvr_liq.value := StrToFloatDef(T2conteudo.AsString,0)/100;
           DM_PDV.TTrn.Post;
        end;

        if T2.Locate('codigo','922-000', []) then
        begin
           DM_PDV.TTrn.Edit;
           DM_PDV.TTrnvr_rec.value := StrToFloatDef(T2conteudo.AsString,0)/100;
           DM_PDV.TTrn.Post;
        end;

        if T2.Locate('codigo','013-000', []) then
        begin
           DM_PDV.TTrn.Edit;
           DM_PDV.TTrnautoriz.AsString := T2conteudo.AsString;
           DM_PDV.TTrn.Post;
        end;
        //produtos
        for i := 0 to 11 do
        begin
           if T2.Locate('codigo','902-' + FormatFloat('000', i), []) then
           begin
              memo1.Text := 'Lendo Item ' + InttoStr(i+1);
              Application.ProcessMessages;
              s := T2conteudo.AsString;
              Localiza(s);//localiza o registro na tabela estoque

              if not T3.locate('id', DM_PDV.Q1.Fields[0].AsInteger, []) then  //impede possivel repetição
              begin
                 T3.Append;           //id, nome, vrvenda_vista, medicam_pmc, cod_gtin
                 T3id.Value          := DM_PDV.Q1.Fields[0].AsInteger;
                 T3nome.AsString     := DM_PDV.Q1.Fields[1].AsString;
                 T3vrbrt_local.Value := Iif(DM_PDV.Q1.Fields[3].AsCurrency < DM_PDV.Q1.Fields[2].AsCurrency, DM_PDV.Q1.Fields[2].AsCurrency, DM_PDV.Q1.Fields[3].AsCurrency);
                 T3vrliq_local.Value := DM_PDV.Q1.Fields[2].AsCurrency;
                 T3item.Value        := T3.RecordCount + 1;
                 T3ean.AsString      := DM_PDV.Q1.Fields[4].AsString;
                 T3parcial.Value     := False;
                 //acha o trn_item pelo ean
                 DM_PDV.TTrn_Item.Locate('ean', T2conteudo.AsString, []);

                 //qtd
                 if T2.Locate('codigo','905-' + FormatFloat('000', i), []) then
                 begin
                    T3qtd.AsString := T2conteudo.AsString;
                 end;
                 //preco bruto
                 if T2.Locate('codigo','910-' + FormatFloat('000', i), []) then
                 begin
                    T3vrbrt.Value := StrToFloatDef(T2conteudo.AsString,0)/100;
                 end;
                 //preco liq
                 if T2.Locate('codigo','911-' + FormatFloat('000', i), []) then
                 begin
                    T3vrliq.Value := StrToFloatDef(T2conteudo.AsString,0)/100;
                 end;
                 //preco vista
                 if T2.Locate('codigo','912-' + FormatFloat('000', i), []) then
                 begin
                    T3vrvst.Value := StrToFloatDef(T2conteudo.AsString,0)/100;
                 end;
                 //desconto

                 T3vrdesc.Value := T3vrbrt.Value-T3vrliq.Value;;

                 //status
                 if T2.Locate('codigo','919-' + FormatFloat('000', i), []) then
                 begin
                    T3status.AsString := T2conteudo.AsString;
                 end;

                 T3aprov.Value  := T3status.Value = 0;
                 T3manter.Value := True;
                 T3.Post;
              end;
           end;
        end;

        if T2.Locate('codigo','900-000', []) then//verifica se tem continue
        begin
           Continua    := T2conteudo.AsString <> '0';
           vr_continua := T2conteudo.AsString;

           if Continua then
              memo1.Text := 'Continua...'
           else
           begin
              memo1.Lines.Clear;
              Aguardando_Resposta := False;
           end;
        end
        else
        memo1.Lines.Clear;
     until (Aguardando_Resposta = False)or(Tempo<=0)or(btnok.Tag = 0);

     if btnok.tag = 0 then
         ShowMessage('Cancelado pelo Operador.')
     else
      timeout := Tempo <= 0;

      if timeout then //se timeout pergunta se repete
         timeout := (MessageBox(0, trn_157, 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idYes);

  until (btnok.tag = 0) or (not timeout) or(aprovado);

  btnok.Enabled := True;
  btnok.Tag     := 0;
  btnok.Caption := 'OK';
  Result        := Aprovado;
  T2.EnableControls;
  IncSeq;
  //exibe msg ao operador
  if (not continua) and(msg <> C_ST_VAZIO) then
      MessageDlg( {oper + C_CRLF + nsu + C_CRLF +  nsu_adm + C_CRLF + cod + C_CRLF +} msg, mtInformation, [mbOK], 0);

  if(not continua)and(Result) then
  begin
     //montagem do comprovante
     Lista.Clear;

     if T2.Locate('codigo','028-000', []) then//dados do comprovante
     begin
        Linhas := T2conteudo.AsInteger;

        for i := 0 to linhas -1 do
        begin
           if T2.Locate('codigo','029-' + FormatFloat('000',i), []) then
           begin
              Lista.Append(T2conteudo.AsString);
           end;
           //salva o comprovante na tabela venda
           DM_PDV.TVenda.Edit;
           DM_PDV.TVendacv.AsString := Lista.Text;
           DM_PDV.TVenda.Post;
        end;
     end;
  end;

  Lista.Free;
  T2.Close;
  btnSair.Click;
end;

procedure Tfrmtrn.Processar_Itens;
var
   aliq: string;
   n, desc_item, valor: currency;
   b: boolean;
begin
   if T3.State = dsEdit then
      T3.Post;

   T3.DisableControls;
   T3.Filter   := 'manter=True'; //filtra os produtos mantidos pelo usuario
   T3.Filtered := True;

   if T3.RecordCount = 0 then
   begin
      T3.Filtered := False;
      raise Exception.Create('Nenhum item foi marcado para manter.');
   end;

   frmPDV.Popup('Abrindo Venda TRN ' + DM.QVendapv.AsString);
   frmPDV.ECF.AbreCupom;//abre a venda

   DM_PDV.TTrn.Insert; //cria o registro na tabela trn
   DM_PDV.TTrnvenda.Value  := DM_PDV.TVendaid.Value;
   DM_PDV.TTrncrt.AsString := '';//Number(edcrt.Text); marca para anular em crash
   //preenche trn conforme vai achando os registros em T2
   if T2.Locate('codigo','001-000') then
   begin
      DM_PDV.TTrnnsu.AsString := T2conteudo.AsString;
   end;

   if T2.Locate('codigo','012-000') then
   begin
      DM_PDV.TTrnnsu_adm.AsString := T2conteudo.AsString;
   end;

   if T2.Locate('codigo','040-000', []) then
   begin
      DM_PDV.TTrnoperadora.AsString := T2conteudo.AsString;
   end;

   DM_PDV.TTrn.Post;

   T3.First; //atualiza TTrn_Item (produtos)

   while not T3.Eof do
   begin
      DM_PDV.TProd.Locate('id', T3id.Value, []);

      T3.Edit;
      T3vrbrt_local.Value := Iif(DM_PDV.TProdvrvenda_vista.Value <= DM_PDV.TProdmedicam_pmc.Value, DM_PDV.TProdmedicam_pmc.Value, DM_PDV.TProdvrvenda_vista.Value);//obtem o pmc
      T3vrliq_local.Value := DM_PDV.TProdvrvenda_vista.Value;
      T3.Post;

      DM_PDV.TTrn_Item.Append;
      DM_PDV.TTrn_Itemtrn.Value         := DM_PDV.TTrnid.Value;
      DM_PDV.TTrn_ItemcProd.Value       := T3id.Value;
      DM_PDV.TTrn_Itemvrbrt.Value       := T3vrbrt.Value;
      DM_PDV.TTrn_Itemvrdin.Value       := T3vrvst.Value;
      DM_PDV.TTrn_Itemvrliq.Value       := T3vrliq.Value;
      DM_PDV.TTrn_Itemvrbrt_local.Value := Iif(DM_PDV.TProdvrvenda_vista.Value <= DM_PDV.TProdmedicam_pmc.Value, DM_PDV.TProdmedicam_pmc.Value, DM_PDV.TProdvrvenda_vista.Value);//obtem o pmc
      DM_PDV.TTrn_Itemvrliq_local.Value := T3vrliq_local.Value;
      DM_PDV.TTrn_Itempc_desc.Value     := T3vrdesc.Value;
      DM_PDV.TTrn_Itemqtd.Value         := T3qtd.Value;
      DM_PDV.TTrn_Itemparcial.Value     := False;
      DM_PDV.TTrn_Itemean.AsString      := T3ean.AsString;
      DM_PDV.TTrn_Itemcomplem.AsString  := T3complem.AsString;
      DM_PDV.TTrn_Item.Post;

      T3.Next;
   end;

   DM_PDV.TTrn_Item.First;

   T3.Open;
   T3.DisableControls;
   T3.First;

   while not T3.IsEmpty do//limpa T3
   T3.Delete;

   vr_continua := '0';

   repeat //verifica se esta online e envia
       repeat
          b := NaRede;
       until
          (b)or(MessageBox(0, trn_163, 'Atenção!', MB_ICONEXCLAMATION or MB_YESNO) = idNo);

       if b then //se respondeu nao a msg, b=False pq nao esta na rede
       begin
          Envia_Efetiv; //envia a efetivação e processa a resposta
          if (ProcessarResp_Efetiv)and not(continua) then
             passo := -1;
       end;
   until (not continua)or(not b);//continua é global

   if passo <> -1 then //se nao enviou e processoua resposta, passo <> -1
   begin
      exit;
   end;

   T3.First;
   //faz o registro dos itens no ECF
   while not T3.Eof do
   begin
      DM_PDV.TProd.Locate('id', T3id.Value, []);
      //cfg a aliq
      n := StrToFloatDef(DM_PDV.TProdaliq_ecf.AsString,0);

      if n = 0 then
         aliq := DM_PDV.TProdaliq_ecf.AsString
      else
      begin
         n    := n/100;
         aliq := FloatToStr(n);
      end;
      //informa os valores brt e liq locais
      T3.Edit;
      T3vrbrt_local.Value := Iif(DM_PDV.TProdvrvenda_vista.Value <= DM_PDV.TProdmedicam_pmc.Value, DM_PDV.TProdmedicam_pmc.Value, DM_PDV.TProdvrvenda_vista.Value);//obtem o pmc
      T3vrliq_local.Value := DM_PDV.TProdvrvenda_vista.Value;//aqui o valor praticado
      T3.Post;

      valor := Iif(T3vrliq.Value < T3vrliq_local.Value, T3vrliq.Value, T3vrliq_local.Value);

      //cfg o desconto pela dif do bruto e liq local ou liq trn (o menor)
      desc_item := (T3vrbrt.AsCurrency - valor) * T3qtd.Value;

      frmPDV.ECF.VendeItem(DM_PDV.TProdcod_gtin.AsString,
                           DM_PDV.TProdnome.AsString,
                           aliq,
                           T3qtd.Value,
                           T3vrbrt_local.AsCurrency,
                           desc_item,
                           Copy(DM_PDV.TProdsigla_unid.AsString,1,2),
                           '$'
      );
      //grava o item na tabela trn_item
      DM_PDV.TTrn_Item.Append;
      DM_PDV.TTrn_Itemtrn.Value         := DM_PDV.TTrnid.Value;
      DM_PDV.TTrn_ItemcProd.Value       := T3id.Value;
      DM_PDV.TTrn_Itemvrbrt.Value       := T3vrbrt.Value;
      DM_PDV.TTrn_Itemvrdin.Value       := T3vrvst.Value;
      DM_PDV.TTrn_Itemvrliq.Value       := T3vrliq.Value;
      DM_PDV.TTrn_Itemvrbrt_local.Value := T3vrbrt_local.Value;
      DM_PDV.TTrn_Itemvrliq_local.Value := T3vrliq_local.Value;
      DM_PDV.TTrn_Itempc_desc.Value     := T3vrdesc.Value;
      DM_PDV.TTrn_Itemqtd.Value         := T3qtd.Value;
      DM_PDV.TTrn_Itemparcial.Value     := False;
      DM_PDV.TTrn_Itemean.AsString      := T3ean.AsString;
      DM_PDV.TTrn_Itemcomplem.AsString  := T3complem.AsString;
      DM_PDV.TTrn_Item.Post;

      T3.Next;
   end;

   T3.EnableControls;
   btnSair.Click; //fecha a tela
end;

procedure Tfrmtrn.T3AfterInsert(DataSet: TDataSet);
begin
   T3qtd.Value     := 0;
   T3vrbrt.Value   := 0;
   T3vrvst.Value   := 0;
   T3vrdesc.Value  := 0;
   T3vrbrt_local.Value := 0;
   T3vrliq_local.Value := 0;
end;

procedure Tfrmtrn.Timer1Timer(Sender: TObject);
var
   b: boolean;
begin
   Application.ProcessMessages;
   memo1.Text := 'Comunicando com Trn...';
   timer1.Enabled := False;

   if timer1.tag = -1 then
   begin
      btnSair.Click;
      exit;
   end;

   repeat
      b := NaRede;
   until
      (b)or(MessageBox(0, trn_163, 'Atenção!', MB_ICONEXCLAMATION or MB_YESNO) = idNo);

   if b then
   begin
      if passo = 4 then
         Envia_Confirma(False) //confirma
      else
      if passo = 5 then
         Envia_Confirma(True)//anula
      else
      if passo = 6 then
         Envia_Canc(g_nsu_adm)//cancela(extorna)
      else
      if passo = 7 then
         Envia_Confirma_Canc(True)//anula cancelamento
   end;
end;

end.
