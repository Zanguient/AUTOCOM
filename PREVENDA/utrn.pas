unit utrn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, uADStanIntf, uADStanOption, uADStanParam,
  uADStanError, uADDatSManager, uADPhysIntf, uADDAptIntf, Data.DB, uADCompDataSet, uADCompClient, cxControls,
  cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, Vcl.Grids, Vcl.DBGrids, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxClasses, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid;

type
  Tfrmtrn = class(Tfrm)
    T1: TADMemTable;
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
    cxLabel1: TcxLabel;
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TcxLabel;
    ed1: TcxTextEdit;
    cb1: TcxCheckBox;
    lbl2: TcxLabel;
    ed2: TcxTextEdit;
    cb2: TcxCheckBox;
    btnok: TcxButton;
    cmb1: TcxComboBox;
    cxLabel2: TcxLabel;
    pnl3: TPanel;
    lbl3: TcxLabel;
    ed3: TcxTextEdit;
    cb3: TcxCheckBox;
    T2: TADMemTable;
    T2codigo: TStringField;
    T2conteudo: TMemoField;
    T3: TADMemTable;
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
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    DS3: TDataSource;
    tbvid: TcxGridDBColumn;
    tbvitem: TcxGridDBColumn;
    tbvean: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvparcial: TcxGridDBColumn;
    tbvvrbrt: TcxGridDBColumn;
    tbvvrvst: TcxGridDBColumn;
    tbvvrdesc: TcxGridDBColumn;
    tbvaprov: TcxGridDBColumn;
    tbvqtd: TcxGridDBColumn;
    tbvvrliq: TcxGridDBColumn;
    tbvstatus: TcxGridDBColumn;
    Memo1: TMemo;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    T3manter: TBooleanField;
    tbvmanter: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    lblPac: TcxLabel;
    lblsub: TcxLabel;
    T3complem: TStringField;
    edcrt: TcxMaskEdit;
    T3vrbrt_local: TCurrencyField;
    T3vrliq_local: TCurrencyField;
    procedure FormShow(Sender: TObject);
    procedure cmb1Click(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure edcrtKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure T3AfterInsert(DataSet: TDataSet);
  private
    procedure Envia_Pre(continua: boolean = False);
    function ProcessarResp: boolean;
    procedure Envia_Efetiv(Operadora,nsu_adm, crt, coo: string);
    function ProcessarResp_Efetiv: boolean;
    procedure Envia_Confirma(Operadora, nsu_adm: string; Anular: boolean = False);
    function ProcessarResp_Anul: boolean;
    procedure IncSeq;
    procedure IncNSU;
  public
    { Public declarations }
  end;

var
  frmtrn: Tfrmtrn;
  path_resp, path_env, nome_arq: string;

implementation

{$R *.dfm}

uses udm_ini, uAutocomConsts, uFuncoes, uDM, uMD5Print, updv;

procedure Tfrmtrn.cmb1Click(Sender: TObject);
begin
   if cmb1.Focused then
   begin
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

procedure Tfrmtrn.btnokClick(Sender: TObject);
var
   st_campo, s: string;
begin
   if btnok.Tag = 1 then
   begin
      btnok.Tag := 0;
      btnok.Caption := 'OK';
      exit;
      btnok.Enabled := False;
   end;

   if cmb1.Text = C_ST_VAZIO then
      raise Exception.Create('Informe a operadora.');

   if Number(edcrt.text) = C_ST_VAZIO then
       raise Exception.Create('Nº do cartão incorreto.');

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

   Envia_Pre;
end;

procedure Tfrmtrn.edcrtKeyPress(Sender: TObject; var Key: Char);
begin
   if not CharInSet(key,['0'..'9', #13, #8, #27]) then
      key := #0;
end;

procedure Tfrmtrn.Envia_Confirma(Operadora, nsu_adm: string; Anular: boolean = False);
var
   Lista: TStringList;
   nsu: integer;
   i, tot: integer;
   s: string;
const Sep = ' = ';
begin
   Lista := TStringList.Create;

   if Anular then
      s := '0420'
   else
      s := '0202';

   Lista.Append('000-000' + sep + s);
   Lista.Append('011-000' + sep + '800300');
   nsu := ini.StoredValue['nsu'];
   Lista.Append('001-000' + sep + FormatFloat('0', nsu));
   Lista.Append('040-000' + sep + RFill(Operadora,5, ' '));
   Lista.Append('012-000' + sep + RFill(nsu_adm,12, ' ')); //NSU – Número de Controle da Administradora - opcional
   Lista.Append('940-000' + sep + '003'); //versao
   Lista.Append('942-000' + sep + Number(DM.QEmpresacnpj.AsString));
   Lista.Append('941-000' + sep + DM_INI.ini.StoredValue['trn_estacao']);
   Lista.Append('023-000' + sep + FormatDateTime('hhnnss', now));
   Lista.Append('022-000' + sep + FormatDateTime('mmdd', date));
   nome_arq := FormatFloat('00000000', nsu) + '_' + DM_INI.ini.StoredValue['trn_estacao']+'.001';
   memo1.Text := 'Enviando requisição. NSU: ' + nome_arq;
   IncSeq;
   incNSU;
   Lista.SaveToFile(path_env + nome_arq);
end;

procedure Tfrmtrn.Envia_Efetiv(Operadora,nsu_adm, crt, coo: string);
var
   Lista: TStringList;
   nsu: integer;
   i, tot: integer;
const Sep = ' = ';
begin
   T3.DisableControls;
   T3.Filter   := 'manter=True';
   T3.Filtered := True;

   if T3.RecordCount = 0 then
   begin
      T3.Filtered := False;
      raise Exception.Create('Nenhum item foi marcado para manter.');
   end;

   T3.First;
   tot := T1.RecordCount;
   Lista := TStringList.Create;

   //neste ponto abrir o cupom fiscal, inserir os itens e obter o coo

   repeat
      Lista.Clear;
      Lista.Append('000-000' + sep + '0200');
      Lista.Append('011-000' + sep + '800300');
      nsu := ini.StoredValue['nsu'];
      Lista.Append('001-000' + sep + FormatFloat('0', nsu));
      Lista.Append('040-000' + sep + RFill(Operadora,5, ' '));
      Lista.Append('012-000' + sep + RFill(nsu_adm,12, ' ')); //NSU – Número de Controle da Administradora - opcional
      Lista.Append('940-000' + sep + '003'); //versao
      Lista.Append('942-000' + sep + Number(DM.QEmpresacnpj.AsString));
      Lista.Append('941-000' + sep + DM_INI.ini.StoredValue['trn_estacao']);
      Lista.Append('023-000' + sep + FormatDateTime('hhnnss', now));
      Lista.Append('022-000' + sep + FormatDateTime('mmdd', date));
      Lista.Append('953-000' + sep + Number(crt));
      Lista.Append('002-000' + sep + LFill(coo, 4, '0'));
      Lista.Append('900-000' + sep + Iif(tot>12,'1','0'));
      Lista.Append('901-000' + sep + LFill(Iif(tot>12, 12, tot), 2, '0'));


      i := 0;

      while not T3.Eof do
      begin
         Lista.Append('902-' + LFill(IntToStr(i),3,'0') + sep + T3ean.AsString);
         Lista.Append('906-' + LFill(IntToStr(i),3,'0') + sep + Iif(T3parcial.Value,'P','U'));
         Lista.Append('905-' + LFill(IntToStr(i),3,'0') + sep + FormatFloat('0', T3qtd.Value));
         //os valores aqui devem vir do estoque - são alterados logo apos a inserção no ECF
         Lista.Append('910-' + LFill(IntToStr(i),3,'0') + sep + FormatFloat('0000000', T3vrbrt.Value*100));
         Lista.Append('911-' + LFill(IntToStr(i),3,'0') + sep + FormatFloat('0000000', T3vrliq.Value*100));
         Lista.Append('914-' + LFill(IntToStr(i),3,'0') + sep + T3complem.AsString);

         if i = 11 then
            i := 0
         else
            inc(i);

         Dec(tot);
         T3.Next;
      end;

      nome_arq := FormatFloat('00000000', DM_INI.ini.StoredValue['trn_seq']) + '_' + DM_INI.ini.StoredValue['trn_estacao']+'.001';
      memo1.Text := 'Enviando requisição. NSU: ' + nome_arq;
      Lista.SaveToFile(path_env + nome_arq);
      memo1.Text := 'Aguardando resposta. NSU: ' + nome_arq;
   until tot>0;

   IncSeq;
   Lista.Free;
end;


procedure Tfrmtrn.Envia_Pre(continua: boolean = False);
var
   Lista: TStringList;
   nsu: integer;
   compl1, compl2: string;
const Sep = ' = ';
begin
   if cb1.Visible then
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
   end;

   T3.Filtered := False;
   Lista := TStringList.Create;
   Lista.Append('000-000' + sep + '0100');
   Lista.Append('011-000' + sep + '800500');
   nsu := ini.StoredValue['nsu'];
   Lista.Append('001-000' + sep + FormatFloat('0', nsu));
   Lista.Append('040-000' + sep + RFill(cmb1.Text,20, ' '));
   Lista.Append('012-000' + sep + ''); //NSU – Número de Controle da Administradora - opcional
   Lista.Append('940-000' + sep + '003'); //versao
   Lista.Append('942-000' + sep + Number(DM.QEmpresacnpj.AsString));
   Lista.Append('941-000' + sep + DM_INI.ini.StoredValue['trn_estacao']);
   Lista.Append('023-000' + sep + FormatDateTime('hhnnss', now));
   Lista.Append('022-000' + sep + FormatDateTime('mmdd', date));
   Lista.Append('953-000' + sep + Number(edcrt.Text));
   Lista.Append('004-000' + sep + 'REA');
   Lista.Append('949-000' + sep + compl1 + compl2);
   Lista.Append('900-000' + sep + Iif(continua,'1','0'));

   nome_arq := FormatFloat('00000000', DM_INI.ini.StoredValue['trn_seq']) + '_' + DM_INI.ini.StoredValue['trn_estacao']+'.001';
   memo1.Text := 'Enviando requisição. NSU: ' + nome_arq;
   Lista.SaveToFile(path_env + nome_arq);
   Lista.Free;
   memo1.Text := 'Aguardando resposta. NSU: ' + nome_arq;

   IncSeq;

   ProcessarResp;
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

procedure Tfrmtrn.FormCreate(Sender: TObject);
 var
   i: integer;
begin
   inherited;

  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
  end;

   DM.QEmpresa.Open;
end;

procedure Tfrmtrn.FormShow(Sender: TObject);
var
   Lista: TStringList;
   s, path: string;
   i: integer;
begin
   inherited;
   T1.Open;

   while not T1.IsEmpty do
      T1.Delete;

   path      := DM_INI.ini.StoredValue['trn_server'] + 'TCTB_OPR.TXT';
   path_resp := DM_INI.ini.StoredValue['trn_server'] + 'Resp\';
   path_env  := DM_INI.ini.StoredValue['trn_server'] + 'Req\';

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

procedure Tfrmtrn.IncNSU;
begin
   ini.StoredValue['nsu'] := DM_INI.ini.StoredValue['nsu'] + 1;

   if ini.StoredValue['nsu'] > 999999 then
      ini.StoredValue['nsu'] := 1;

   ini.SaveFormPlacement;
end;

procedure Tfrmtrn.IncSeq;
begin
  DM_INI.ini.StoredValue['trn_seq'] := DM_INI.ini.StoredValue['trn_seq'] + 1;

  if DM_INI.ini.StoredValue['trn_seq'] > 9999999 then
     DM_INI.ini.StoredValue['trn_seq'] := 1;

  DM_INI.ini.SaveFormPlacement;
end;

function Tfrmtrn.ProcessarResp: boolean;
var
   Lista: TstringList;
   i, tempo: integer;
   prefix, sufix, cod, nsu, nsu_adm, msg, Oper, par_compl: string;
   aprovado, continua, Aguardando_Resposta: boolean;
   vrsub, vrpac: currency;
begin
  Aguardando_Resposta := True;
  tempo               := 320;
  btnok.Caption       := 'CANCELAR';
  btnok.Tag           := 1;

  T2.Open;
  T3.Open;
  T2.DisableControls;
  T3.DisableControls;

  while not T2.IsEmpty do
  T2.Delete;

  while not T3.IsEmpty do
  T3.Delete;

  repeat
     Dec(Tempo);
     sleep(500);
     Application.ProcessMessages;
     memo1.Text := 'Aguardando resposta... ' + InttoStr(tempo);

     if not FileExists(path_resp + nome_arq) then
         continue;

     continua := False;

     Repeat
        memo1.Text := 'Baixando arquivo de resposta...';
        Lista      := TStringList.Create;
        Lista.LoadFromFile(path_resp + nome_arq);
        aprovado   := False;

        DeleteFiles(path_resp, nome_arq);
        memo1.Text := 'processando...';

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
              DM.Q1.Open('select id, nome, vrvenda_vista from estoque where cod_gtin=' + Texto_Mysql(T2conteudo.AsString));
              T3.Append;
              T3id.Value          := DM.Q1.Fields[0].AsInteger;
              T3nome.AsString     := DM.Q1.Fields[1].AsString;
              T3item.Value        := i+1;
              T3ean.AsString      := T2conteudo.AsString;
              T3vrbrt_local.Value := DM.Q1.Fields[2].AsCurrency;

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
           Continua := T2conteudo.AsString = '1';

           if Continua then
              memo1.Text := 'Continua...'
           else
              memo1.Lines.Clear;
        end
        else
        memo1.Lines.Clear;
     until not Continua;

     if msg <> C_ST_VAZIO then
        MessageDlg( oper + C_CRLF + nsu + C_CRLF +  nsu_adm + C_CRLF + cod + C_CRLF + msg, mtInformation, [mbOK], 0);

     Aguardando_Resposta := False;
  until
     (Aguardando_Resposta = False)or(Tempo<=0)or(btnok.Tag = 0);

  T2.EnableControls;
  T3.First;
  vrsub := 0;
  vrpac := 0;

  while not T3.Eof do
  begin
     vrsub := vrsub + (T3vrliq.Value - T3vrvst.Value);
     vrpac := vrpac + T3vrvst.Value;
     T3.Next;
  end;

  lblsub.Caption := FloatToStrF(vrsub, ffCurrency, 15, 2);
  lblPac.Caption := FloatToStrF(vrpac, ffCurrency, 15, 2);
  T3.First;
  T3.EnableControls;
  Lista.Free;
  T2.Close;

  if btnok.tag = 0 then
      ShowMessage('Cancelado pelo Operador.')
  else
  if Tempo <= 0 then
      ShowMessage('Tempo esgotado.');

  btnok.Enabled := True;
  btnok.Tag     := 0;
  btnok.Caption := 'OK';
  Result        := Aprovado;
  memo1.Tag     := 1;//indica que o proximo clique no btnok faz a efetivação

  if Result then
     Memo1.Text := 'Desmarque a opção M dos itens que serão excluidos da transação. ' +
                   'Atente para as quantidades aprovadas e informe ao cliente.';
end;

function Tfrmtrn.ProcessarResp_Anul: boolean;
var
   Lista: TstringList;
   i, tempo: integer;
   prefix, sufix, cod, nsu, nsu_adm, msg, Oper, par_compl: string;
   aprovado, continua, Aguardando_Resposta: boolean;
   vrsub, vrpac: currency;
begin
  Aguardando_Resposta := True;
  tempo               := 320;
  btnok.Caption       := 'CANCELAR';
  btnok.Tag           := 1;

  repeat
     Dec(Tempo);
     sleep(500);
     Application.ProcessMessages;
     memo1.Text := 'Aguardando resposta... ' + InttoStr(tempo);
     Result := False;

     if not FileExists(path_resp + nome_arq) then
         continue;

     continua := False;

     memo1.Text := 'Baixando arquivo de resposta...';
     Lista := TStringList.Create;
     Lista.LoadFromFile(path_resp + nome_arq);
     aprovado := False;
     Result := False;

     //DeleteFiles(path_resp, nome_arq);
     memo1.Text := 'processando...';

     for i := 0 to Pred(Lista.Count) do
     begin
        prefix := copy(lista.Strings[i],1,7);//000-000
        sufix  := Trim(copy(lista.Strings[i],11, 300));

        if prefix = '030-000' then
           ShowMessage(sufix)
        else
        if prefix = '009-000' then
           Result := StrToIntDef(sufix,100) in[0..9];
     end;
   until (Aguardando_Resposta = False)or(Tempo<=0)or(btnok.Tag = 0);

   if btnok.tag = 0 then
      ShowMessage('Cancelado pelo Operador.')
   else
   if Tempo <= 0 then
      ShowMessage('Tempo esgotado.');

   btnok.Enabled := True;
   btnok.Tag     := 0;
   btnok.Caption := 'OK';
end;

function Tfrmtrn.ProcessarResp_Efetiv: boolean;
var
   Lista: TstringList;
   i, linhas, Tempo: integer;
   prefix, sufix, cod, nsu, nsu_adm, msg, Oper, lote, codAut: string;
   aprovado, continua, Aguardando_Resposta: boolean;
   vrsub, vrpac, totLiq, totRec: currency;
begin
  Aguardando_Resposta := True;
  tempo               := 320;
  btnok.Caption       := 'CANCELAR';
  btnok.Tag           := 1;

  repeat
     Dec(Tempo);
     sleep(500);
     Application.ProcessMessages;
     memo1.Text := 'Aguardando resposta... ' + InttoStr(tempo);

     if not FileExists(path_resp + nome_arq) then
        continue;

     continua := False;

     Repeat
        memo1.Text := 'Baixando arquivo de resposta...';
        Lista := TStringList.Create;
        Lista.LoadFromFile(path_resp + nome_arq);
        aprovado := False;

        //DeleteFiles(path_resp, nome_arq);
        memo1.Text := 'processando...';
     //   T2.Open;
        T3.Open;
        T2.DisableControls;
        T3.DisableControls;

      //  while not T2.IsEmpty do
     //   T2.Delete;

        while not T3.IsEmpty do
        T3.Delete;

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
           Lote := T2conteudo.AsString;
        end;

        if T2.Locate('codigo','921-000', []) then
        begin
           totLiq := StrToFloatDef(T2conteudo.AsString,0)/100;
        end;

        if T2.Locate('codigo','922-000', []) then
        begin
           totRec := StrToFloatDef(T2conteudo.AsString,0)/100;
        end;

        if T2.Locate('codigo','013-000', []) then
        begin
           codAut := T2conteudo.AsString;
        end;

        for i := 0 to 11 do
        begin
           if T2.Locate('codigo','902-' + FormatFloat('000', i), []) then
           begin
              memo1.Text := 'Lendo Item ' + InttoStr(i+1);
              Application.ProcessMessages;
              DM.Q1.Open('select id, nome, from estoque where cod_gtin=' + Texto_Mysql(T2conteudo.AsString));
              T3.Append;
              T3id.Value      := DM.Q1.Fields[0].AsInteger;
              T3nome.AsString := DM.Q1.Fields[1].AsString;
              T3item.Value    := i+1;
              T3ean.AsString  := T2conteudo.AsString;
              T2conteudo.AsString := 'U';

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
              //se nao foi aprovado poe o valor do estoque
              if not T3aprov.Value then
               T3vrlocal.Value := DM.Q1.Fields[2].AsCurrency;
              T3.Post;
           end;
        end;

        if T2.Locate('codigo','900-000', []) then
        begin
           Continua := T2conteudo.AsString = '1';

           if Continua then
              memo1.Text := 'Continua...'
           else
              memo1.Lines.Clear;
        end
        else
        memo1.Lines.Clear;
     until not Continua;
  until (Aguardando_Resposta = False)or(Tempo<=0)or(btnok.Tag = 0);

  if btnok.tag = 0 then
      ShowMessage('Cancelado pelo Operador.')
  else
  if Tempo <= 0 then
      ShowMessage('Tempo esgotado.');

  btnok.Enabled := True;
  btnok.Tag := 0;
  btnok.Caption := 'OK';
  Result := Aprovado;
  T2.EnableControls;
  T3.First;
  T3.EnableControls;
  vrsub := 0;
  vrpac := 0;


  if msg <> C_ST_VAZIO then
      MessageDlg( oper + C_CRLF + nsu + C_CRLF +  nsu_adm + C_CRLF + cod + C_CRLF + msg, mtInformation, [mbOK], 0);

  if Result then
  begin
     DM_INI.ini.StoredValue['trn_seq'] := DM_INI.ini.StoredValue['trn_seq'] + 1;
     DM_INI.ini.SaveFormPlacement;
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
     end;
  end;
  Lista.Free;
  T2.Close;
end;

procedure Tfrmtrn.T3AfterInsert(DataSet: TDataSet);
begin
   T3qtd.Value     := 0;
   T3vrbrt.Value   := 0;
   T3vrvst.Value   := 0;
   T3vrdesc.Value  := 0;
   T3vrlocal.Value := 0;
end;

end.
