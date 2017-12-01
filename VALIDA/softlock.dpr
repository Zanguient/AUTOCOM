library softlock;

uses
  System.SysUtils,
  System.Classes,
  soap_server in '..\COMUM\soap_server.pas',
  uAutocomConsts in '..\COMUM\uAutocomConsts.pas',
  uFuncoes in '..\COMUM\uFuncoes.pas',
  uMD5Print in '..\COMUM\uMD5Print.pas',
  Soap.InvokeRegistry,
  Soap.Rio,
  Soap.SOAPHTTPClient,
  Data.DB,
  Dialogs,
  WinAPI.Windows,
  uTraducao in '..\COMUM\uTraducao.pas',
  uLibera in 'uLibera.pas' {frmLibera},
  uViews in '..\COMUM\uViews.pas',
  udm_ini in '..\DATAMODULES\udm_ini.pas' {DM_INI: TDataModule},
  uDM in '..\DATAMODULES\uDM.pas' {DM: TDataModule},
  uDM_Conn in '..\DATAMODULES\uDM_Conn.pas' {DMConn: TDataModule},
  uDMAux in '..\DATAMODULES\uDMAux.pas' {DMAux: TDataModule};

{$R *.res}

//faz a validação via soap
function Validar_Soap(codigo:string): integer;
var
 PRIO: THTTPRIO;
 ser: server_validaPortType;
begin
   Result := 0;
   try
      PRIO   := THTTPRIO.Create(nil);
//      ShowMessage('1');
      ser    := Getserver_validaPortType(false, '' ,PRIO);
//      ShowMessage('R ' + IntToStr(ser.valida(codigo)));
      Result := ser.valida(codigo);
      Log('softlock', '', 'Webservice lido.');
   except
      Log('softlock', 'ERRO', 'Erro ao ler webservice.');
   end;
end;
//exports Validar_Soap;

//faz o cadastro via soap
function cadastrar(cnpj, razao, reset:string): string;
var
 PRIO: THTTPRIO;
 ser: server_validaPortType;
 cadastro: arrCadastro;
begin
   cadastro := arrCadastro.Create;
   cadastro.cnpj  := cnpj;
   cadastro.reset := reset;
   cadastro.razao := razao;
   Log('softlock', 'CADASTRO WEB', 'Tentando efetuar o cadastro.');
   PRIO   := THTTPRIO.Create(nil);
   ser    := Getserver_validaPortType(false, '' ,PRIO);
   Result := ser.cadastrar(cadastro);
   Log('softlock', 'CADASTRO WEB', '(' + Result + ').');
   ShowMessage(Result);
end;

//abre a tela de liberação manual
function LibManual(s: string): integer;
begin
   Result := -1;
   if not fileexists(DirWindowsSystem + '\koplin.dll') then
   begin
      ShowMessage('Erro 26 - Uso não autorizado');
      exit;
   end;
   frmLibera := TfrmLibera.Create(nil);
   frmLibera.Label3.Caption := s;
   Result    := frmLibera.ShowModal;
end;
//exports LibManual;

//faz a verificação da licença
function Validar: integer;
var
   data, cont, cod, s, reset, razao, cnpj: string;
   inicio, meio, fim: string;
   dias, i, j: integer;
   lista: TStringList;
const c_cod = 'ABCDEF0123456789';
begin
   Log('softlock', '', 'INICIANDO.........................................');
   Result := 0;
   DM_INI := TDM_INI.Create(nil);
   DM_INI.ini.inifilename := Aqui(C_INI_FILE, 'autocom.ini');
   DM_INI.ini.Active      := True;
   DM_INI.ini.RestoreFormPlacement;
   DMConn := TDMConn.Create(nil);
   DM := TDM.Create(nil);

   if not DM.Conectar then
   begin
      FreeAndNil(DM);
      FreeAndNil(DMConn);
      Log('softlock', '', 'Não foi possivel conectar ao BD...');
      Showmessage('SoftLock - Não foi possivel conectar ao BD.');
      Result := -1;
      exit;
   end;

   DMConn.Q1.Open('select * from valida limit 1');

   if DMConn.Q1.IsEmpty then
   begin
      //O arquivo é gerado tão logo gere um novo registro em valida. Se ja existe é pq apagaram o registro...
      if FileExists(Aqui(C_TXT_FILE, 'sftlk.dat')) then
      begin
         Log('softlock', '', 'Detectada fraude.');
         Showmessage('O registro de licença foi corrompido. Contate o suporte.');
         DMConn.DB.Connected := False;
         FreeAndNil(DM);
         FreeAndNil(DMConn);
         exit;
      end;

      Log('softlock', '', 'Gerando novo registro...');
      //gera a str data
      data := MD5_Str(DateToStr(date));
      //gera a str cont
      randomize;
      dias := random(99999);
      cont := MD5_Str(IntToStr(dias));
      cod := '';
     //gera o cod
      for i := 1 to 5 do
      begin
         j := random(14);
         cod := cod + c_cod[j+1];
      end;

      Log('softlock', '', 'Codigo: ' + cod);
      //insere o valor padrão 30 na str cont
      //45 '3' 391c9c82bfdcbb4947278c0401 '0' 41
      inicio := Copy(cont, 1,2);
      meio   := Copy(cont, 4, length(cont)-6);
      fim    := copy(cont, length(cont)-1, 2);
      cont := Concat(inicio, '3', meio, '0', fim);
      //insere o registro na tabela valida
      inicio := 'insert into valida set cod=' + Texto_Mysql(cod) +
                ',acesso=' + Texto_Mysql(data) +
                ',cont=' + Texto_Mysql(cont) + ';';
      DM.execSQL(inicio);
      Log('softlock', '', 'Novo registro gravado.');
      Lista := TStringList.Create;

      //tenta fazer o cadastro web
      try
         cnpj := '';
         razao := '';

         cnpj := Number(InputBox('CADASTRO WEB', 'INFORME O CNPJ(SOMENTE NºS)', cnpj));

         if cnpj <> '' then
            razao := AnsiUpperCase(InputBox('CADASTRO WEB', 'INFORME A RAZÃO SOCIAL', razao));

         if razao <> '' then
            cadastrar(cnpj,razao,cod);

         Lista.Append(cnpj);
         Lista.Append(razao);
      finally
         ;
      end;

      Lista.Append(cod);
      Lista.SaveToFile(Aqui(C_TXT_FILE, 'sftlk.dat'));
     //recarrega a tabela
      DMConn.Q1.Close;
      DMConn.Q1.Open;
   end;

   //faz a verificação: 1º via webservice, senao via banco de dados...

   data   := DMConn.Q1.FieldByName('acesso').AsString;
   cont   := DMConn.Q1.FieldByName('cont').AsString;
   cod    := DMConn.Q1.FieldByName('cod').AsString;
   reset  := cod;
   inicio := Copy(cont, 3,1);
   fim    := copy(cont, length(cont)-2, 1);
   s      := MD5_Str(DateToStr(date));

   if s <> data then //se a data mudou, verifica e decrementa o contador se for o caso
   begin
      data   := s;
      Result := 0;

      if NaNet then //via webservice (mandatário)
      begin
         try
            Log('softlock', '', 'Lendo webservice...');
            Result := Validar_Soap(cod) * 5; //será 5 ou 0 - 10 considera valido
         except
            Log('softlock', 'ERRO', 'Conectou na net mas nao consegui ler o webservice...');
            DMConn.DB.Connected := False;
            FreeAndNil(DM);
            FreeAndNil(DMConn);
         end;

         if Result > 0 then
         begin
            Log('softlock', '', 'Validado. Dias restantes: ' + IntToStr(Result));
            Log('softlock', '', 'Atualizando registro...');
            meio   := Copy(MD5_Str(cont), 1, 26);
            inicio := Copy(MD5_Str(meio), 1, 2);
            fim    := Copy(MD5_Str(cont), 1, 2);
            cont   := Concat(inicio, '0', meio, '5', fim);//5 dias como default

            DM.execSQL('update valida set cont=' + Texto_Mysql(cont) + ', acesso='  + Texto_Mysql(data) + ';');
            Log('softlock', '', 'Registro atualizado...');
         end
         else
         begin
            Log('softlock', '', 'Licença expirada');
            Log('softlock', '', 'Atualizando registro...');
            meio   := Copy(MD5_Str(cont), 1, 26);
            inicio := Copy(MD5_Str(meio), 1, 2);
            fim    := Copy(MD5_Str(cont), 1, 2);
            cont   := Concat(inicio, '0', meio, '0', fim);//zero

            DM.execSQL('update valida set cont=' + Texto_Mysql(cont) + ', acesso='  + Texto_Mysql(data) + ';');
            Log('softlock', '', 'Registro atualizado...');
         end;

         DMConn.DB.Connected := False;
         FreeAndNil(DM);
         FreeAndNil(DMConn);
         Log('softlock', '', 'FIM..............................................');
         exit;
      end;

      cod  := Copy(cont,3,1) + copy(cont, length(cont)-2, 1);
      dias := StrToInt(cod)-1;

      if dias < 0 then
         dias := 0;

      cod  := FormatFloat('00', dias);
      //insere os dias restantes na string cont
      Log('softlock', '', 'Atualizando registro...');
      meio   := Copy(MD5_Str(cont), 1, 26);
      inicio := Copy(MD5_Str(meio), 1, 2);
      fim    := Copy(MD5_Str(cont), 1, 2);
      cont   := Concat(inicio, copy(cod, 1, 1), meio, copy(cod, 2, 1), fim);

      DM.execSQL('update valida set cont=' + Texto_Mysql(cont) + ', acesso='  + Texto_Mysql(data) + ';');
      Log('softlock', '', 'Registro atualizado...');
   end
   else
   dias := StrToInt(Concat(inicio, fim));

   Result := dias;

   if Result >= 5 then
      Log('softlock', '', 'Validado. Dias restantes: ' + IntToStr(Result))
   else
   if (Result > 0) and (Result < 5) then
   begin
      Log('softlock', 'AVISO EMITIDO!', 'Validado. Dias restantes: ' + IntToStr(Result));

      if (MessageBox(0, PWideChar('A Licença expirará em ' + FormatFloat('00', Result) + ' dia(s).' + #13+#10+
                        'Deseja solicitar agora o novo reset ?'), 'Atenção', MB_ICONWARNING or MB_YESNO) = idYes) then
         LibManual(reset);
   end
   else
   begin
      Log('softlock', '', 'Licença expirada');
      Showmessage('Licença expirada. Solicite novo reset.');
      LibManual(reset);
   end;

   DMConn.DB.Connected := False;
   FreeAndNil(DM);
   FreeAndNil(DMConn);

   Log('softlock', '', 'FIM..............................................');
end;
exports Validar;

begin
end.
