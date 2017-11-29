(*
Unit responsável por conter todas as funções de uso geral
*)
unit uFuncoes;

interface

uses
Windows, Dialogs, Messages, SysUtils, Classes, Controls, StdCtrls, Registry,
shellapi, Forms, Variants, ExtCtrls, DateUtils, Graphics, math, uMD5Print,
TlHelp32, System.Types, wininet, ShlObj, ActiveX, Data.DB;

VAR
   g_path: string;

const
   C_ST_VAZIO = '';
   // {USER NAME} = Current user name
   CSIDL_INTERNET = $0001; //
   CSIDL_PROGRAMS = $0002; // C:\Documents and Settings\{USER NAME}\Start Menu\Programs\
   CSIDL_CONTROLS = $0003; //         CSIDL_PRINTERS = $0004; //
   CSIDL_PERSONAL = $0005; // C:\Documents and Settings\{USER NAME}\My Documents\
   CSIDL_FAVORITES = $0006; // C:\Documents and Settings\{USER NAME}\Favorites\
   CSIDL_STARTUP = $0007; // C:\Documents and Settings\{USER NAME}\Start Menu\Programs\Startup\
   CSIDL_RECENT = $0008; // C:\Documents and Settings\{USER NAME}\Recent\
   CSIDL_SENDTO = $0009; // C:\Documents and Settings\{USER NAME}\SendTo\
   CSIDL_BITBUCKET = $000a; //
   CSIDL_STARTMENU = $000b; // C:\Documents and Settings\{USER NAME}\Start Menu\
   CSIDL_DESKTOPDIRECTORY = $0010; // C:\Documents and Settings\{USER NAME}\Desktop\
   CSIDL_DRIVES = $0011; //
   CSIDL_NETWORK = $0012; //
   CSIDL_NETHOOD = $0013; // C:\Documents and Settings\{USER NAME}\NetHood\
   CSIDL_FONTS = $0014; // C:\WINDOWS\Fonts\
   CSIDL_TEMPLATES = $0015; // C:\Documents and Settings\{USER NAME}\Templates\
   CSIDL_COMMON_STARTMENU = $0016; // C:\Documents and Settings\All Users\Start Menu\
   CSIDL_COMMON_PROGRAMS = $0017; // C:\Documents and Settings\All Users\Start Menu\Programs\
   CSIDL_COMMON_STARTUP = $0018; // C:\Documents and Settings\All Users\Start Menu\Programs\Startup\
   CSIDL_COMMON_DESKTOPDIRECTORY = $0019; // C:\Documents and Settings\All Users\Desktop\
   CSIDL_APPDATA = $001a; // C:\Documents and Settings\{USER NAME}\Application Data\
   CSIDL_PRINTHOOD = $001b; // C:\Documents and Settings\{USER NAME}\PrintHood\
   CSIDL_ALTSTARTUP = $001d; //
   CSIDL_COMMON_ALTSTARTUP = $001e; //
   CSIDL_COMMON_FAVORITES = $001f; // C:\Documents and Settings\All Users\Favorites\
   CSIDL_INTERNET_CACHE = $0020; // C:\Documents and Settings\{USER NAME}\Local Settings\Temporary Internet Files\
   CSIDL_COOKIES = $0021; // C:\Documents and Settings\{USER NAME}\Cookies\
   CSIDL_HISTORY = $0022; // C:\Documents and Settings\{USER NAME}\Local Settings\History\
   CSIDL_COMMON_APPDATA = $0023; // C:\Documents and Settings\All Users\Application Data\
   CSIDL_WINDOWS = $0024; // C:\WINDOWS\
   CSIDL_SYSTEM = $0025; // C:\WINDOWS\SYSTEM32\
   CSIDL_PROGRAM_FILES = $0026; // C:\Program Files\
   CSIDL_MYPICTURES = $0027; // C:\Documents and Settings\{USER NAME}\My Documents\My Pictures\
   CSIDL_PROFILE = $0028; // C:\Documents and Settings\{USER NAME}\
   CSIDL_SYSTEMX86 = $0029; // C:\WINDOWS\SYSTEM32\
   CSIDL_PROGRAM_FILESX86 = $002A; //
   CSIDL_PROGRAM_FILES_COMMON = $002B; // C:\Program Files\Common Files\
   CSIDL_PROGRAM_FILES_COMMONX86 = $002C; //
   CSIDL_COMMON_TEMPLATES = $002D; // C:\Documents and Settings\All Users\Templates\
   CSIDL_COMMON_DOCUMENTS = $002E; // C:\Documents and Settings\All Users\Documents\
   CSIDL_COMMON_ADMINTOOLS = $002F; // C:\Documents and Settings\All Users\Start Menu\Programs\Administrative Tools\
   CSIDL_ADMINTOOLS = $0030; //
   CSIDL_CONNECTIONS = $0031; //
   CSIDL_COMMON_MUSIC = $0035; // C:\Documents and Settings\All Users\Documents\My Music\
   CSIDL_COMMON_PICTURES = $0036; // C:\Documents and Settings\All Users\Documents\My Pictures\
   CSIDL_COMMON_VIDEO = $0037; // C:\Documents and Settings\All Users\Documents\My Videos\
   CSIDL_RESOURCES = $0038; // C:\WINDOWS\Resources\
   CSIDL_RESOURCES_LOCALIZED = $0039; //
   CSIDL_COMMON_OEM_LINKS = $003A; //
   CSIDL_CDBURN_AREA = $003B; // C:\Documents and Settings\{USER NAME}\Local Settings\Application Data\Microsoft\CD Burning\
   CSIDL_COMPUTERSNEARME = $003D; //

   CSIDL_FLAG_PER_USER_INIT = $00800;
   CSIDL_FLAG_NO_ALIAS = $001000;
   CSIDL_FLAG_DONT_VERIFY = $004000;
   CSIDL_FLAG_CREATE = $008000;
   CSIDL_FLAG_MASK = $00FF00;

{FUNÇÕES DE MANIPULAÇÃO DE ARQUIVOS}
function DirWindowsSystem: string;
function DirWindows: string;
function DirProgramFiles:string;
Function Aqui(Dir,Arquivo:String):string;
function Arquivos(Const AMask: string): TStringList;
function GetSubDirs(const sRootDir: string): TStrings;
function DeleteFiles(aPath, afile: string): boolean;
function Find_File(aPath, afile:string): string;
Procedure DeletaArqTipo(vMasc:String);

{FUNÇÕES DE INTERAÇÃO E INFORMAÇÕES}
function PCName: string;                                                        //retorna o nome do pc
Function FileVersion():string;                                                  //retorna a versao do aplicativo
Function ExecFile(F, modo,parametro: String; Aguardar: Boolean=False):Boolean;
function ExecFileWaiting (Arquivo : String; Estado : Integer) : Cardinal;

{COMPLEMENTO VCL}
function FormatNbr(numero, zeros: Integer): string;                              //coloca zeros a esquerda do numero
function TiraAcento(Str:String): string;
function InputSenha(const ACaption, APrompt: string; var Value: string): Boolean;
function data_My(data:TDAte):string;                                              //retorna data no formato yyyy-mm-dd

{FUNÇÕES DA DATA}
function DifHora(Inicio,Fim : String):String;                                   {Retorna a diferença entre duas horas}
function DifDias(DataVenc:TDateTime; DataAtual:TDateTime): String;              {Retorna a diferenca de dias entre duas datas}
function NomedoMes(dData:TDatetime):string;                                     {Retorna o nome do mee, em extenso, de uma determinada data}
function IdadeExtenso(Nascimento:TDateTime) : String;                                 // Retorna a idade de uma pessoa a partir da data de nascimento
function DataExtenso(Data:TDateTime): String;                                   {Para exibir uma data por extenso no Delphi, coloque a seguinte rotina}
function IdadeAtual(Nasc : TDateTime): Integer;                                 // Retorna a idade Atual de uma pessoa a partir da data de nascimento
function idade(Nascimento : TDate):Integer;                            // Retorna a idade de uma pessoa
function ProximoDiaUtil(dData : TDateTime) : TDateTime;
function GetFileDate(Arquivo: String): String;
function Ultimodiames(data: TDate): TDate;
function DomingoDePascoa(ano: integer):TDateTime;
function DomingoDeCarnaval(ano: integer):TDateTime;
function InicioHorarioVerao(ano: integer):TDateTime;
function TerminoHorarioVerao(ano: integer):TDateTime;
function NoHorarioVerao(Data: TDateTime): boolean;

{FUNÇÕES DE VALIDAÇÃO}
Procedure ChecaUF(sender:TObject);
function ValidaUF(UF: string): Boolean;                                              //valida UF
Function ValidarEMail(const EMailIn: String):Boolean;
function ValidaEAN(const vEAN:String):Boolean;

{FUNÇÕES NUMÉRICAS }
function RoundNbr(number:Currency; Truncar:Boolean = False):Currency;           //arrendonda ou trunca um numero
function Divide(X, Y: currency): currency;
function Ceil(const X: Extended): Integer;                                      //valor arredondado para baixo
function NumeroRomano(num:integer):string;                                      // Converte um valor integer em Romano
function roundx(dValIni: Double; iCasas:Integer): Double;                       // Faz o arredondamento conforme o número de casas decimais
function Impar(i:Integer): Boolean;
function Percent(v1, v2:currency):currency;
function RestoDivisao(valor:currency):currency;

{FUNÇÕES DIVERSAS}
Function Nz(Value: Variant; ValueIfNull: Variant): Variant;                     //Retorna ValueIfNull se o valor for nulo senão retorna Value
function PriMaiuscula(Texto: String): String;                                   //Primeira em Maiúscula
function FormataCNPJ_CPF(DOC : string): string;
function Sobrenome(S : string) : string;                                        // Retorna o Sobrenome de um nome especificado
function PrimeiroNome (Nome : String) : String;                                 // Para pegar o primeiro nome de uma pessoa
function AbreviaNome(Nome: string; tam: integer): String;                                     // Abrevia nomes
function Replicate( Caracter:String; Quant:Integer ): String;                   {Repete o mesmo caractere várias vezes}
function Preenche(X, Y: String; Z:Integer):String;                              // Preenche a variável Y com Z vezes com o caractere X
function StrToBoolean(s: string): boolean;                                      // Converte um valor String em Booleano
function Encoder(const Key, Source: string): string;
function Decoder(const Key, Source: string): string;
function Number(valor: string): string;
function NumberSQL(campo:string): string;
function IsNumber(s:String):boolean;//verifica se é somente numeros
function AlfaNumerico(s:String):String;
function SoPalavras(s:String):String;
Function FormatDig(digitos, s:string):string;
function BuscaTroca(Text,Busca,Troca : string) : string;
Procedure FindReplace (const busca, troca: String; Var Texto:TStringList);
function FindReplaceStr (const busca, troca: String; Var Texto:string): string;
function getEAN(Nr : String) : String;
function InverteStr(s: string): string;
function RFill(Str: string; Tamanho: Integer = 0; Caracter: Char = ' '): string;
function LFill(Str: string; Tamanho: Integer = 0; Caracter: Char = '0'): string;
function Igual_a(StrOrigem, strDestino: String):String;//retorna a parte igual das strings
function SomenteChar(const s: string): string;
function Formatar_CNPJ_CPF(doc: string): string;
function Formatar_Float(valor: currency; const decimal: string = '.'): string;

Procedure TryDeleteFile(const AFile: String; WaitTime: Integer = 100);
function ArqDeletado(const AFile: String; WaitTime: Integer = 100):Boolean;
function ArqExiste(const AFile: String; WaitTime: Integer = 100):Boolean;
function TamArq(const FileName: string): int64; //retorna em kb
function Arredonda(Valor: Currency;CasasDecimais: integer): Currency;
function Modulo11(Numero: string): string;
procedure RunDosInMemo(const DosApp: String; var Saida: TStringList; const ReturnData: Boolean);
procedure RunDosNoMemo(DosApp:String;AMemo:TMemo);
Function GerarMD5File:String;
procedure AlterarDtHrSys(datahora: TDatetime);
Procedure ShowFormDLL(v_App: TApplication; v_Arquivo, v_Funcao, v_Opcao: String);
function Explode(str, separador: string): TStringList;
function IsRunningProcess(exeFileName: string): Boolean;
procedure Log(Arq_Log, Titulo, Linha: string); //gera um log dos eventos
function Clip(Str: string; tam:integer): string;
function RetornaPercentual(const pValorTotal, pValor: Currency): Currency;
function Percentual(const pPercentual: Double; const pValor: Currency): Currency;
function GetFileList(const Path: string): TStrings;
function GetFileListFiltro(const Path: string; Filtro: string): TStrings;
function ValidarNCM(ncm:string; Permite_vazio: Boolean = False): boolean;
function Ping(Ip: String; Tempo: Integer): Boolean;
function QuotedDuoStr(str: string): string;
function FIleToByteArray( const FileName : string ) : TByteDynArray;
function NaNet: boolean;
function GetSpecialFolder( folderID: integer ): string;
function iif(ACondicao: Boolean; ATrue, AFalse: Variant): Variant;
function Texto_Mysql(str: string): string; overload;
function Texto_Mysql(i: integer): string; overload;
function Texto_Mysql(n: currency): string; overload;
function Texto_Mysql(v: variant): string; overload;
procedure AbreForm(aClasseForm: TComponentClass; var aForm; Modal: Boolean = True);
function NCM_Invalido(ncm: string): boolean;
procedure Abrir_Arquivo(F: String);
function Valida_modulo(modulo: integer; const NumCard:string): boolean;
function Valida_modulo11(NumCard : String): boolean;//valida PIS tambem
function TiraZerosLeft(s:string):string;
function killtask(ExeFileName: string): Integer;
function ValidarCampos(Dataset: TDataset; campos: array of string; msg: string): boolean;//faz a validação dos campos informados
procedure TrimAppMemorySize;//libera memoria applicação

implementation

procedure TrimAppMemorySize;
var
   MainHandle : THandle;
begin
   try
      MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
      SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
      CloseHandle(MainHandle) ;
   except
   end;
   Application.ProcessMessages;
end;

function DomingoDePascoa(ano: integer):TDateTime;
var
 n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12: Integer;
 mes, dia: Word;
 begin
  n1  := ano mod 19;
  n2  := trunc(ano/100);
  n3  := ano mod 100;
  n4  := trunc(n2/4);
  n5  := n2 mod 4;
  n6  := trunc((n2+8)/25);
  n7  := trunc((n2-n6+1)/3);
  n8  := (19*n1+n2-n4-n7+15) mod 30;
  n9  := trunc(n3/4);
  n10 := n3 mod 4;
  n11 := (32+2*n5+2*n9-n8-n10) mod 7;
  n12 := trunc((n1+11*n8+22*n11)/451);

  mes := trunc((n8+n11-7*n12+114)/31);
  dia := (n8+n11-7*n12+114) mod 31;

  Result := IncDay(EncodeDate(ano,mes,dia));
end;

function DomingoDeCarnaval(ano: integer):TDateTime;
begin
    Result := DomingoDePascoa(ano) - 49;
end;

function InicioHorarioVerao(ano: integer):TDateTime;
var
   data, primeiroDeOutubro, terceiroDomingoDeOutubro : TDateTime;
   i: integer;
begin
    //1º dia de outubro
    data := encodedate(ano,10,1);
    //primeiro domingo De Outubro
    repeat
    i := DayOfTheWeek(data);
    if i <> DaySunday then
      data := data + 1
    until i = DaySunday;

    Result := data + 14; //terceiro Domingo De Outubro
end;

function TerminoHorarioVerao(ano: integer):TDateTime;
var
   data: TDateTime;
   i: integer;
begin
   data := encodedate(ano,2,1);
    //primeiro domingo De fev
    repeat
    i := DayOfTheWeek(data);
    if i <> DaySunday then
      data := data + 1
    until i = DaySunday;

    //terceiro dom de fev
    data := data + 14;
    //se nao for carnaval aumenta em 1 semana
    if data = DomingoDeCarnaval(ano) then
      Result := Data
    else
      Result := Data + 7;
end;

function NoHorarioVerao(Data: TDateTime): boolean;
var
   b : boolean;
begin
   //se estamos  nos meses 1,2 ou 3  ve sae ja acabou

   b := MonthOf(Data) < 4;
   Result := false;

   if b then
   begin
      b := Data < TerminoHorarioVerao(YearOf(Data));

      Result := b;
      exit;
   end
   else
   begin//se estamos nos meses 10,11 e 12   ve se ja começou
      b := MonthOf(data) > 9;

      if b then
      begin
         Result := data >= InicioHorarioVerao(YearOf(data));
      end;
   end;
end;

function killtask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(
                        OpenProcess(PROCESS_TERMINATE,
                                    BOOL(0),
                                    FProcessEntry32.th32ProcessID),
                                    0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;


function TiraZerosLeft(s:string):string;
var
   i, j: integer;
begin
   j := 1;

   for i  := 1 to length(s) do
   begin
      if s[i] <> '0' then
         break;
      inc(j);
   end;

   Result := Number(Copy(s,j,length(s)));
end;

function Valida_modulo(modulo: integer; const NumCard:string): boolean;
var
   Valor,
   Soma,
   Multiplicador,
   Tamanho,
   i : Integer;
begin
   Result := False;
   Multiplicador := 2;
   Soma := 0;
   Tamanho := Length(NumCard);

   for i := 1 to Pred(Tamanho) do
   begin
      Valor := StrToInt (Copy (NumCard, i, 1)) * Multiplicador;
      Soma := Soma + (Valor div modulo) + (Valor mod modulo);

      if Multiplicador = 1 then
         Multiplicador := 2
      else
         Multiplicador := 1;
   end;

   if IntToStr ((modulo - (Soma mod modulo)) mod modulo) = Copy (NumCard, Tamanho, 1) Then
   Result := True;
end;

function Valida_modulo11(NumCard : String): boolean;//valida PIS tambem
var
   i,
   wsoma,
   Wm11,
   Wdv,
   wdigito,
   Tamanho : Integer;
begin
   if Trim(NumCard) <> '' Then
   begin
      wdv := strtoint(copy(NumCard, 11, 1));
      wsoma := 0;
      wm11 := 2;

      for i := 1 to 10 do
      begin
         wsoma := wsoma + (wm11 * strtoint(copy(NumCard,11 - i, 1)));
         if wm11 < 9 then
         wm11 := wm11 + 1
         else
         wm11 := 2;
      end;

      wdigito := 11 - (wsoma MOD 11);

      if wdigito > 9 then
      wdigito := 0;

      Result :=  wdv = wdigito;
   end;
end;


function NCM_Invalido(ncm: string): boolean;
const
    ncm_inv = '|111111|222222|333333|444444|555555|666666|777777|888888|999999|000000';
begin
   if ncm = C_ST_VAZIO then
   begin
      Result := False;
      exit;
   end;

   Result := Length(Number(ncm)) < 8;

   if not Result then
      Result := pos(copy(ncm,1,6), ncm_inv) >0;
end;

procedure AbreForm(aClasseForm: TComponentClass; var aForm; Modal: Boolean);
begin
   try
      if (Tform(aForm) <> nil)and(Tform(aForm).Showing) then
         FreeAndNil(Tform(aForm));

      Application.CreateForm(aClasseForm, aForm);

      if Modal then
         Tform(aForm).ShowModal
      else
         Tform(aForm).Show
   except
      raise;
   end;
end;

function Texto_Mysql(str: string): string;
var
   i: integer;
begin
   for i := Length(Str) downto 1 do
   if pos('''', Str) > 0 then
      insert('\',Str, i);

   Result := QuotedStr(Trim(Str));
end;

function Texto_Mysql(i: integer): string; overload;
begin
   Result := QuotedStr(IntToStr(i));
end;

function Texto_Mysql(n: currency): string; overload;
begin
   FormatSettings.DecimalSeparator := '.';
   Result := FloatToStr(n);
   FormatSettings.DecimalSeparator := ',';
   Result := QuotedStr(Result);
end;

function Texto_Mysql(v: variant): string; overload;
begin
   Result := 'ERRO';
   try
      Result := v
   finally
      Result := QuotedStr(Trim(Result));
   end;
end;

function iif(ACondicao: Boolean; ATrue, AFalse: Variant): Variant;
begin
   if Acondicao then
      Result := Atrue
   else
      Result := Afalse;
end;

function GetSpecialFolder( folderID: integer ): string;
var
   pidl: PItemIDList;
   buf : array[0..MAX_PATH] of WideChar;
begin
   result := '';

   if Succeeded( ShGetSpecialFolderLocation(GetActiveWindow, folderID, pidl) ) then
   begin
      if ShGetPathfromIDList( pidl, buf ) then
      result := buf;
      CoTaskMemFree(pidl);
   end;

   if (result <> '') and (result[Length(result)] <> '\') then
      result := result +'\';
end;

function NaNet: boolean;
var lnTickCount: cardinal; url: string; i: integer;
begin
   Application.ProcessMessages;
   randomize;
   i := random(3); //seta um dos sites abaixo...

   case i of
     0: url := 'http://google.com.br';
     1: url := 'http://google.com';
     2: url := 'http://google.com.br';
     3: url := 'http://registro.br/';
   end;

   lnTickCount := GetTickCount;
   i           := 0;
   result      := false;

   repeat
      Application.ProcessMessages;
      if i = 0 then
      begin
         i := 1;
         Application.ProcessMessages;
         result :=  InternetCheckConnection(PWideChar(url), 1, 0);
      end;
   until
   ((GetTickCount - lnTickCount) >= 2000)or(result);
end;

function FIleToByteArray( const FileName : string ) : TByteDynArray;
const
   BLOCK_SIZE=1024;
var
   BytesRead, BytesToWrite, Count : integer;
   F : FIle of Byte;
   pTemp : Pointer;
begin
   AssignFile( F, FileName );
   Reset(F);

   try
      Count := FileSize( F );
      SetLength(Result, Count );
      pTemp := @Result[0];
      BytesRead := BLOCK_SIZE;

      while (BytesRead = BLOCK_SIZE ) do
      begin
         BytesToWrite := Min(Count, BLOCK_SIZE);
         BlockRead(F, pTemp^, BytesToWrite , BytesRead );
         pTemp := Pointer(LongInt(pTemp) + BLOCK_SIZE);
         Count := Count-BytesRead;
      end;
   finally
      CloseFile( F );
   end;
end;

function QuotedDuoStr(str: string): string;
var
  I: Integer;
begin
  Result := str;

  for I := Length(Result) downto 1 do
    if Result[I] = '"' then Insert('"', Result, I);
  Result := '"' + Result + '"';
end;

function Ping(Ip: String; Tempo: Integer): Boolean;
 var
   Lista : TStringList;
begin
   Lista := TStringList.Create;
   RunDosInMemo('ping ' + ip + ' -n 1 -w '+ IntToStr(Tempo), Lista, True);
   Result :=  Pos('Recebidos = 1', Lista.Text) > 0;

   if not result then
      Log('ping','Erro ao conectar', Lista.Text);

   Lista.Free;
end;

function ValidarNCM(ncm:string; Permite_vazio: Boolean): boolean;
   const
      ncm_inv = '11111111.22222222.33333333.44444444.55555555.66666666.77777777.88888888.99999999.00000000';
   var
      i: integer;
begin
   Result := (Trim(ncm) = C_ST_VAZIO) and (Permite_vazio);

   if not Result then
   begin
      Result := (ncm ='99');//99 = serviços

      if not result then
      begin
         Result := (Length(ncm)= 8);
      end;

      if Result then
      begin
         i := pos(ncm, ncm_inv);
         Result := i <= 0;
      end;
   end;
end;

function ValidarCampos(Dataset: TDataset; campos: array of string; msg: string): boolean;
var
   i: integer;
begin
   for i := Low(campos) to High(campos) do
   begin
      case Dataset.FieldByName(campos[i]).DataType of
         ftString, ftFixedChar, ftWideString, ftFixedWideChar, ftMemo: if Dataset.FieldByName(campos[i]).AsString = '' then
                                                                  msg := msg + Dataset.FieldByName(campos[i]).DisplayLabel + ' Incorreto.' + #10#13;
         ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftLargeint, ftLongWord: if Dataset.FieldByName(campos[i]).Value <0 then
                                                                                        msg := msg + Dataset.FieldByName(campos[i]).DisplayLabel + ' Incorreto.' + #10#13;
         ftDate, ftTime, ftDateTime:  if Dataset.FieldByName(campos[i]).Value <= 0 then
                                         msg := msg + Dataset.FieldByName(campos[i]).DisplayLabel + ' Incorreto.' + #10#13;
      end;
   end;

   Result := msg = '';

   if not Result then
      ShowMessage(dataset.Name + ':' + #10#13 + msg);
end;


function GetFileList(const Path: string): TStrings;
var
   srSearch: TSearchRec;
   sSearchPath: string;
   sltSub, slt: TStrings;
begin
  sltSub := TStringList.Create;
  slt    := TStringList.Create;
  slt.BeginUpdate;
  try
    sSearchPath := PAth;
    if FindFirst(sSearchPath + '*.*', faAnyFile, srSearch) = 0 then
      repeat
        if ((srSearch.Attr and faDirectory) <> faDirectory) and
          (srSearch.Name <> '.') and
          (srSearch.Name <> '..') then
        begin
          slt.Add(AnsiUpperCase(srSearch.Name));
          sltSub.Add(AnsiUpperCase(srSearch.Name));
        end;
      until (FindNext(srSearch) <> 0);

    SysUtils.FindClose(srSearch);
  finally
    slt.EndUpdate;
    Result := slt;
    FreeAndNil(sltSub);
  //FreeAndNil(slt);
  end;
end;

function GetFileListFiltro(const Path: string; Filtro: string): TStrings;
var
   srSearch: TSearchRec;
   sSearchPath: string;
   sltSub, slt: TStrings;
begin
  sltSub := TStringList.Create;
  slt    := TStringList.Create;
  slt.BeginUpdate;
  try
    sSearchPath := PAth;
    if FindFirst(sSearchPath + Filtro, faAnyFile, srSearch) = 0 then
      repeat
        if ((srSearch.Attr and faDirectory) <> faDirectory) and
          (srSearch.Name <> '.') and
          (srSearch.Name <> '..') then
        begin
          slt.Add(AnsiUpperCase(srSearch.Name));
          sltSub.Add(AnsiUpperCase(srSearch.Name));
        end;
      until (FindNext(srSearch) <> 0);

    SysUtils.FindClose(srSearch);
  finally
    slt.EndUpdate;
    Result := slt;
    FreeAndNil(sltSub);
    //FreeAndNil(slt);
  end;
end;

function Valida_EAN(st_EAN: String): Boolean; //Funciona com EAN8 e EAN13
var
  i, j: Integer;
  s: String;
begin
  j := 0;
  s := '';

  for i := Length(st_EAN)-1 downto 1 do //Inverte, retirando o dígito
    s := s + st_EAN[i];

  for i := 1 to Length(s) do   //Multiplica as posições impares por 3,fazendo o somatório
    if i mod 2 = 0 then
      j := j + StrToInt(s[i])
    else
      j := j+StrToInt(s[i])*3;

  j := 10-Round(Frac(j/10)*10);    //10 menos o resto da divisão

  Result:= j = StrToInt(Copy(st_EAN, Length(st_EAN), 1));
end;

function Percentual(const pPercentual: Double; const pValor: Currency): Currency;
begin
  Result := 0;

  if pValor > 0 then
    Result := Arredonda((pValor * pPercentual) / 100, 2);
end;

function RetornaPercentual(const pValorTotal, pValor: Currency): Currency;//em %
var
   n, m: currency;
begin
  Result := 0;

  n := pValor;
  m := pValorTotal;

  if m > 0 then
    Result := Arredonda(((n/m)*100), 2);
end;

function Clip(Str: string; tam:integer): string;
begin
   Result := Trim(Copy(Str,1,tam));
end;


procedure Log(Arq_Log,Titulo, Linha: string); //gera um log dos eventos
var
   Lista: TstringList;
begin
   Lista := TStringList.Create;

   Arq_Log := Aqui('Logs', Arq_Log + '.txt');

   try
      Try
         if TamArq(Arq_Log) > 2000000 then
            DeleteFile(PWideChar(Arq_Log)); // mata arquivo > 2M

         if FileExists(Arq_Log) then
            Lista.LoadFromFile(Arq_Log);

         Lista.Append(FormatDateTime('dd/mm/yyyy hh:nn:ss:zzz', now) + '- ' + Titulo + ': ' + Linha);
         Lista.SaveToFile(Arq_Log);
      except
         on E: exception do
         begin
            ShowMessage('Log Erro: ' + E.Message);
         end;
      End;
   finally
      Lista.Free;
   end;
end;

function Formatar_Float(valor: currency; const decimal: string = '.'): string;
begin
    Result := FloatToStr(Valor);
    Result := buscaTroca(Result, ',', decimal);
end;

function Formatar_CNPJ_CPF(doc: string): string;
begin
   doc := Number(doc);

   if length(doc) = 11 then //cpf
   begin
      insert('-', doc, 10);
      insert('.', doc, 7);
      insert('.', doc, 4);
   end
   else
   if length(doc) = 14 then //cnpj
   begin
      insert('-', doc, 13);
      insert('/', doc, 9);
      insert('.', doc, 6);
      insert('.', doc, 3);
   end
   else
   doc := '-';

   Result := doc;
end;

function IsRunningProcess(exeFileName: string): Boolean;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := False;
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function Explode(str, separador: string): TStringList;
var
  p: integer;
begin
  Result := TStringList.Create;

  p := Pos(separador, str);
  while (p > 0) do
  begin
    Result.Add(Copy(str, 1, p-1));
    Delete(str, 1, p + Length(separador) - 1);
    p := Pos(separador, str);
  end;

  if (str <> C_ST_VAZIO) then
    Result.Add(str);
end;

function SomenteChar(const s: string): string;
var
  i: integer;
begin
  result := C_ST_VAZIO;
  for i := 1 to length(s) do
    if pos(s[i], '0123456789aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVxXyYwWzZ +-!(),.?$%&<>{[}]') > 0 then
      result := result + s[i];
end;

Procedure ShowFormDLL(v_App: TApplication; v_Arquivo, v_Funcao, v_Opcao: String);
type TShowFrm = function( vApp: TApplication; vOpcao:String): Boolean; stdcall;
var  ShowFrm : TShowFrm;
     LibHandle : THandle;
     tPonteiro : TFarProc;
Begin
   //Apresenta Erro caso nao seja chamado assim: ShowFormDLL(Application,Trim(ExtractFilePath(Application.ExeName)+('PG001.Dll')),'ShowFrm',C_ST_VAZIO);
   try
      LibHandle := LoadLibrary(PChar(v_Arquivo));
      if (LibHandle > 0) then
      try
         tPonteiro := GetProcAddress(LibHandle, PAnsiChar(AnsiString(v_Funcao)));
         if (tPonteiro <> nil) then
         begin
            ShowFrm := TShowFrm(tPonteiro) ;
            Try
              ShowFrm(v_App, v_Opcao); //ShowFrm(v_App,v_Opcao);
            Finally
              //FreeMemory(tPonteiro);
            End;
         end
         else
             Raise Exception.Create('Ponto de entrada não encontrado na biblioteca de vínculo dinâmico.');//v_Arquivo
      except
         Raise  Exception.Create ('Falha na comunicação! Tente novamente.');
      end;
   finally
     //application.BringToFront;
     //SetForegroundWindow(Application.Handle);
     //Application.ProcessMessages;
   end;
end;

function ValidaEAN(const vEAN:String):Boolean;
var
   Temp1, Temp2, Digito: Integer;
   Temp3, Temp4: String;
begin
   Result := False;
   Temp2  := 0;
   Temp3  := C_ST_VAZIO;

   if ((Length(vEan) <> 8) and
      (Length(vEan) <> 12) and
      (Length(vEan) <> 13) and
      (Length(vEan) <> 18)) then
      Exit;

   if not isnumber(vEAN) then
      exit;

   Temp4 := '31313131313131313';
   Temp4 := Copy(Temp4,(Length(Temp4)-Length(vEan)),Length(vEan)-1);
   Digito := StrToInt(Copy(vEan,Length(vEan),1));
   Temp3 := Copy(vEan,1,Length(vEan)-1);

   for Temp1 := 1 to Length(Temp3) do
   Temp2 := Temp2+StrToInt(Temp3[Temp1])*StrToInt(Temp4[Temp1]);

   Temp2:=10-Round(Frac(Temp2/10)*10);
   if Temp2 = 10 then
   Temp2 := 0;
   Result := (Temp2 = Digito);
end;

procedure AlterarDtHrSys(datahora: TDatetime);
var
SystemTime : TSystemTime;
begin
   With SystemTime do
   begin
      //Definindo o dia do sistema
      wYear  := YearOf(datahora);
      wMonth := MonthOf(datahora);
      wDay   := DayOf(datahora);
      //Definindo a hora do sistema
      wHour   := HourOf(datahora); //hora
      wMinute := MinuteOf(datahora); //minutos
      wSecond := SecondOf(datahora); //segundos
   end;
   SetLocalTime(SystemTime); //Colocar a hora e data do sistema
end;

function DirProgramFiles:string;
var
  Reg: TRegistry;
begin
  Reg:=TRegistry.Create;

  Reg.RootKey := HKEY_LOCAL_MACHINE;

  if Reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion',False) = False then
     result := C_ST_VAZIO//Seta os valores padrão se não existir a chave . Muito improvável
  else
     begin
       try
       Result := IncludeTrailingPathDelimiter(Reg.ReadString('ProgramFilesDir'));
       except
       Result := ExtractFileDrive(GetCurrentDir)+'Arquivos de Programas\';
       end;
     end;

  Reg.Free;
end;

function GerarMD5File: String;
var Arquivo : TextFile;
    NomeArq, ArqTexto, aMD5 : String;
    F: TSearchRec;
    Ret: Integer;
begin
  Result := C_ST_VAZIO;
  try
    // Apaga arquivo anterior
    ArqTexto := ExtractFilePath(Application.ExeName)+'ArqMD5.txt';
    if FileExists(ArqTexto) then
       DeleteFile(ArqTexto);
    // cria o arquivo TXT na mesma pasta do sistema
    AssignFile(Arquivo,ArqTexto);
    ReWrite(Arquivo);
    // lista todos os arquivo exe da pasta do aplicativo e gera o MD5
    Ret := FindFirst(ExtractFilePath(Application.ExeName)+'\*.exe', faAnyFile, F);
    try
      while Ret = 0 do
      begin
        if F.Attr and faDirectory <> faDirectory then
        begin
          NomeArq := ExtractFilePath(Application.ExeName)+'\'+F.Name;
          aMD5    := MD5Print(MD5File(NomeArq));
          WriteLn(Arquivo,NomeArq+' - '+aMD5);
        end;
        Ret := FindNext(F);
      end;
    finally
      FindClose(F);
    end;
    Closefile(Arquivo);
    // gera MD5 do arquivo texto
  finally
    Result := MD5Print(MD5File(ArqTexto));
  end;
end;


function RestoDivisao(valor:currency):currency;
var
   i: Integer;
begin
        i := Trunc(Valor);
  Result  := Valor - i;
end;

function Modulo11(Numero: String): String;
var
   i,j,k : Integer;
   Soma : Integer;
   Digito : Integer;
   CNPJ : Boolean;
begin
   Result := C_ST_VAZIO;
   Try
      Soma := 0; k:= 2;

      for i := Length(Numero) downto 1 do
      begin
         Soma := Soma + (StrToInt(Numero[i])*k);
         inc(k);
         if k > 9 then k := 2;
      end;

      Digito := 11 - Soma mod 11;

      if Digito >= 10 then
      Digito := 0;

      Result := Result + Chr(Digito + Ord('0'));
   except
      Result := 'X';
   end;
end;

Function ValidarEMail(const EMailIn: String):Boolean;
const
   CaraEsp: array[1..40] of string[1] =( '!','#','$','%','¨','&','*','(',')','+','=','§','¬','¢','¹','²','³','£','´','`','ç','Ç',',',';',':','<','>','~','^','?','/',C_ST_VAZIO,'|','[',']','{','}','º','ª','°');
var
   i,cont : integer;
   EMail  : ShortString;
begin
	EMail  := EMailIn;
	Result := True;
	cont := 0;

   if Trim(EMail) = C_ST_VAZIO  then
   begin
      Result :=False;
      exit;
   end;

	if Trim(EMail) <> C_ST_VAZIO then
	if (Pos('@', EMail)<>0) and (Pos('.', EMail)<>0) then    // existe @ .
	begin
		if (Pos('@', EMail)=1) or (Pos('@', EMail)= Length(EMail)) or (Pos('.', EMail)=1) or (Pos('.', EMail)= Length(EMail)) or (Pos(' ', EMail)<>0) then
		   Result := False
		else                                   // @ seguido de . e vice-versa
		if (abs(Pos('@', EMail) - Pos('.', EMail)) = 1) then
		   Result := False
		else
		begin
			for i := 1 to 40 do            // se existe Caracter Especial
			if Pos(CaraEsp[i], EMail)<>0 then
			   Result := False;

			for i := 1 to length(EMail) do
			begin                                 // se existe apenas 1 @
				if EMail[i] = '@' then
				cont := cont + 1;                    // . seguidos de .
				if (EMail[i] = '.') and (EMail[i+1] = '.') then
				Result := false;
			end;
			// . no f, 2ou+ @, . no i, - no i, _ no i
			if (cont >=2) or ( EMail[length(EMail)]= '.' ) or
            ( EMail[1]= '.' ) or ( EMail[1]= '_' )      or
            ( EMail[1]= '-' )  then
				Result := false;
			// @ seguido de COM e vice-versa
			if (abs(Pos('@', EMail) - Pos('com', EMail)) = 1) then
				Result := False;
			// @ seguido de - e vice-versa
			if (abs(Pos('@', EMail) - Pos('-', EMail)) = 1) then
				Result := False;
			// @ seguido de _ e vice-versa
			if (abs(Pos('@', EMail) - Pos('_', EMail)) = 1) then
				Result := False;
		end;
	end
	else
	Result := False;
end;

function Igual_a(StrOrigem, strDestino: String):String;
var
   i: Integer;
begin
   Result := C_ST_VAZIO;

   if odd(length(StrOrigem)) then
      StrOrigem := StrOrigem + ' ';

   if odd(length(strDestino)) then
      strDestino := strDestino + ' ';

   for i := 1 to length(StrOrigem) do
   if odd(i) then
   if strDestino[i] + strDestino[i+1]  = StrOrigem[i] + StrOrigem[i+1] then
      Result := Result + StrOrigem[i] + StrOrigem[i+1];

   Result := Trim(Result);
end;

function Arredonda(Valor: Currency;CasasDecimais: integer): Currency;
var
   Pwr: Currency;
begin
   Pwr := power(10, CasasDecimais);
   Result := Round(Valor * Pwr) / Pwr;
end;

function TamArq(const FileName: string): int64; //retorna em kb
var
  fHandle: DWORD;
begin
  fHandle := CreateFile(PWideChar(fileName), 0, 0, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);

  if fHandle = INVALID_HANDLE_VALUE then
    Result := -1
  else
  try
    Int64Rec(Result).Lo := GetFileSize(fHandle, @Int64Rec(Result).Hi);
  finally
    CloseHandle(fHandle);
  end;
end;


Procedure TryDeleteFile(const AFile: String; WaitTime: Integer = 100);
Var
   dtFim : TDateTime ;
begin
  dtFim := IncMilliSecond(now,WaitTime) ;
  repeat
     SysUtils.DeleteFile( AFile ) ;
  until
    (not FileExists( AFile )) or (now > dtFim) ;

  if FileExists( AFile ) then
     raise Exception.Create('Erro ao apagar: ' + AFile);
end ;

function ArqDeletado(const AFile: String; WaitTime: Integer = 100):Boolean;
Var
    dtFim : TDateTime ;
begin
  dtFim := IncMilliSecond(now,WaitTime);
  repeat
     Result := not FileExists( AFile );
  until
     (Result) or (now > dtFim) ;
end ;

function ArqExiste(const AFile: String; WaitTime: Integer = 100):Boolean;
Var
   dtFim : TDateTime ;
begin
  dtFim := IncMilliSecond(now,WaitTime);
  repeat
     Result := FileExists( AFile );
  until
     (Result) or (now > dtFim) ;
end;

function Ultimodiames(data: TDate): TDate;
var
   y,
   m,
   d: word;
begin
   if data > 0 then
   begin
      DecodeDate(data, y, m, d);
      if m = 12 then
      begin
         inc(y);
         m := 1;
      end
      else
         inc(m);
      result := encodedate(y,m,1)-1;
   end
   else
   begin
     DecodeDate(Date, y, m, d);
     result := encodedate(y,m,1)-1;
   end;
end;

function InverteStr(s: string): string;
var
   i: integer;
begin
   for i := length(s) downto 1 do
       result := result + s[i];
end;

function RFill(Str: string; Tamanho: Integer = 0; Caracter: Char = ' '): string;
begin
  Str := Trim(Str);
  Result := iif((Tamanho > 0) and (Length(Str) > Tamanho),
                 Copy(Str, 1, Tamanho),
                 Str + StringOfChar(Caracter, Tamanho - Length(Str))
  );
end;

function LFill(Str: string; Tamanho: Integer = 0; Caracter: Char = '0'): string;
begin
  Str := Trim(Str);
  Result := iif((Tamanho > 0) and (Length(Str) > Tamanho),
                Copy(Str, 1, Tamanho),
                StringOfChar(Caracter, Tamanho - length(Str)) + Str
  );
end;

function getEAN(Nr: String) : String;
var
   i,
   fak,
   sum : Integer;
   tmp : String;
begin
  sum := 0;
  tmp := copy(nr,1,Length(Nr)-1);
  fak := Length(tmp);

   for i:=1 to length(tmp) do
   begin
      sum := iif((fak mod 2) = 0, sum + (StrToInt(tmp[i])*1), sum + (StrToInt(tmp[i])*3));
      dec(fak);
   end;

   Result := iif((sum mod 10)=0, tmp+'0', tmp+IntToStr(10-(sum mod 10)));
end;

function GetFileDate(Arquivo: String): String;
var
   i: integer;
begin
   i := FileOpen(Arquivo, 0);
   try
      Result := DateTimeToStr(FileDateToDateTime(FileGetDate(i)));
   finally
      FileClose(i);
   end;
end;

function BuscaTroca(Text,Busca,Troca : string) : string;  { Substitui um caractere dentro da string}
var
   i : integer;
begin
   for i := length(Text) downto 1 do
   begin
      if Copy(Text,i,1) = Busca then
      begin
         Delete(Text,i,1);
         Insert(Troca,Text,i);
      end;
   end;
   Result := Text;
end;

Procedure FindReplace (const busca, troca: String; Var Texto:TStringList);
Var
   i,
   Posicao: Integer;
   Linha: string;
Begin
  For i:= 0 to Texto.count - 1 do
  begin
    Linha := Texto.Strings[i];
    Repeat
      Posicao:=Pos(busca, Linha);

      If Posicao > 0 then
      Begin
        Delete(Linha, Posicao, Length(busca));
        Insert(troca, Linha, Posicao);
        Texto.Strings[i] := Linha;
      end;
    until Posicao = 0;
  end;
End;

function FindReplaceStr (const busca, troca: String; Var Texto:string): string;
Var
   i: Integer;
Begin
   i := Pos(busca, texto);
   while i > 0 do
   begin
     Delete(Texto, i, Length(busca));
     Insert(troca, texto, i);
     i := Pos(busca, texto);
   end;

   result := texto;
end;


Function FormatDig(digitos, s:string):string;
var
   i: integer;
begin
   result := s;
   if StrToFloatDef(s, 0) > 0 then
   begin
      i := StrToIntdef(s, 0);

      if (i > 0) and(Length(s) < 8) then
         result := Format('%.' + digitos + 'd',[(i)]);
   end;
end;


{FUNÇÕES DE MANIPULAÇÃO DE ARQUIVOS}

Procedure DeletaArqTipo(vMasc:String);
Var
   Dir : TsearchRec;
   i: Integer;
Begin
  i := FindFirst(vMasc, faArchive, Dir);

  While i = 0 do
  Begin
     DeleteFile( ExtractFilePath(vMasc) + Dir.Name );
     i := FindNext(Dir);
  End;

  FindClose(Dir);
End;

function GetSubDirs(const sRootDir: string): TStrings;
var
   srSearch: TSearchRec;
   sSearchPath: string;
   sltSub,
   slt: TStrings;
begin
  sltSub := TStringList.Create;
  slt    := TStringList.Create;
  slt.BeginUpdate;
  try
    sSearchPath := sRootDir;
    if FindFirst(sSearchPath + '*', faDirectory, srSearch) = 0 then
      repeat
        if ((srSearch.Attr and faDirectory) = faDirectory) and
          (srSearch.Name <> '.') and
          (srSearch.Name <> '..') then
        begin
          slt.Add(AnsiUpperCase(srSearch.Name));
          sltSub.Add(AnsiUpperCase(srSearch.Name));
        end;
      until (FindNext(srSearch) <> 0);

    FindClose(srSearch);
  finally
    slt.EndUpdate;
    Result := slt;
    FreeAndNil(sltSub);
  end;
end;


function Arquivos(Const AMask: string): TStringList;
var
   SearchRec : TSearchRec;
   i : integer;
begin
   Result := TStringList.create;
   i := FindFirst( AMask, faAnyFile, SearchRec );
   If i = 0 then
   begin
     while (i = 0) do
     begin
        Result.Add(Copy(SearchRec.Name, 1, Length(SearchRec.Name)-4));
        i := FindNext( SearchRec );
     end;
     FindClose( SearchRec );
  end;
end;


Function Aqui(Dir, Arquivo:String):String;
begin
   if g_path = emptystr then
   begin
      If dir <> C_ST_VAZIO then
      ForceDirectories(ExtractFilePath(ParamStr(0)) + dir);

      If dir <> C_ST_VAZIO then
         dir:=dir + '\';

      Result := ExtractFilePath(ParamStr(0))+ dir + arquivo;
   end
   else
   begin
      dir := g_path + dir + '\';
      ForceDirectories(dir);
      Result := dir + arquivo;
   end;
end;

function DirWindows: string;
var
   WinPath: array[0..MAX_PATH + 1] of char;
begin
   GetWindowsDirectory(WinPath,MAX_PATH);
   result := WinPath;
   result := result + '\';
end;

function DirWindowsSystem: String;
var
   WinPath: array[0..MAX_PATH + 1] of char;
Begin
   GetSystemDirectory(WinPath, MAX_PATH);
   Result := WinPath;
   Result := Result + '\';
end;

{FUNÇÕES DE INTERAÇÃO E INFORMAÇÕES}
function PCName: string;
var
   w: DWord;
begin
   w := MAX_COMPUTERNAME_LENGTH + 1;
   SetLength(Result, w);
   Windows.GetComputerName(PChar(Result), w);
   Result := string(PChar(Result));
end;

Function FileVersion():string;                                                   //retorna a versão do aplicativo
var
   VerInfoSize,
   VerValueSize,
   Dummy: DWORD;
   VerInfo: Pointer;
   Prog : string;
   VerValue: PVSFixedFileInfo;
   V1,
   V2,
   V3,
   V4: Word;
begin
   Prog := Application.Exename;
   VerInfoSize := GetFileVersionInfoSize(PWideChar(prog), Dummy);
   GetMem(VerInfo, VerInfoSize);

   if VerInfo <> nil then
   begin
      GetFileVersionInfo(PWideChar(prog), 0, VerInfoSize, VerInfo);
      VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
      with VerValue^ do
      begin
      V1 := dwFileVersionMS shr 16;
      V2 := dwFileVersionMS and $FFFF;
      V3 := dwFileVersionLS shr 16;
      V4 := dwFileVersionLS and $FFFF;
      end;
      FreeMem(VerInfo, VerInfoSize);
      result := Copy (IntToStr (100 + v1), 3, 2) + '.' +
      Copy (IntToStr (100 + v2), 3, 2) + '.' +
      Copy (IntToStr (100 + v3), 3, 2) + '.' +
      Copy (IntToStr (100 + v4), 3, 2);
   end
   else
      Result := '?.?.?.?';
end;

function ExecFileWaiting (Arquivo : String; Estado : Integer) : Cardinal;
var 
   Programa : array [0..512] of WideChar;
   CurDir : array [0..255] of WideChar;
   WorkDir : String;
   StartupInfo : TStartupInfo;
   ProcessInfo : TProcessInformation;
begin 
   StrPCopy (Programa, Arquivo);
   GetDir (0, WorkDir);
   StrPCopy (CurDir, WorkDir);
   FillChar (StartupInfo, Sizeof (StartupInfo), #0);
   StartupInfo.cb          := sizeof (StartupInfo);
   StartupInfo.dwFlags     := STARTF_USESHOWWINDOW;
   StartupInfo.wShowWindow := Estado;

   if not CreateProcess (nil, Programa, nil, nil, false,
                         CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, nil,
                         StartupInfo, ProcessInfo) then
   Result := 0
   else
   begin
      WaitForSingleObject (ProcessInfo.hProcess, Infinite);
      GetExitCodeProcess (ProcessInfo.hProcess, Result);
   end;
end;

procedure Abrir_Arquivo(F: String);
var
   r: String;
   HAndle: THandle;
begin
   case ShellExecute(Handle, nil, PWideChar(F), nil, nil, SW_SHOWNORMAL) of
      ERROR_FILE_NOT_FOUND: r := 'O arquivo especificado não foi encontrado.';
      ERROR_PATH_NOT_FOUND: r := 'O caminho especificado não foi encontrado.';
      ERROR_BAD_FORMAT: r := 'Arquivo inválido.';
      SE_ERR_ACCESSDENIED: r := 'Acesso negado.';
      SE_ERR_ASSOCINCOMPLETE: r := 'Nome incompleto ou inválido.';
      SE_ERR_DDEBUSY: r := 'Outra transação já está sendo executada.';
      SE_ERR_DDEFAIL: r := 'A transação falhou.';
      SE_ERR_DDETIMEOUT: r := 'Tempo excedido.';
      SE_ERR_DLLNOTFOUND: r := 'Dll não encontrada.';
      SE_ERR_NOASSOC: r := 'Não existe um programa associado ou capaz de abrir este arquivo.';
      SE_ERR_OOM: r := 'Memória insuficiente para completar a operação.';
      SE_ERR_SHARE: r := 'Ocorreu um erro de violação de compartilhamento';
   else
      Exit;
   end;

   ShowMessage(r);
end;

Function ExecFile(F, modo, parametro: String; Aguardar: Boolean=False):Boolean;
var
   StartInfo: TStartUpInfo;
   ProcInfo : TProcessInformation;
   C: Cardinal;
begin
  FillChar(StartInfo, SizeOf(TStartUpInfo), #0);
  FillChar(ProcInfo, SizeOf(TProcessInformation), #0);
  StartInfo.cb           := SizeOf(TStartUpInfo);
  StartInfo.dwFlags      := STARTF_USESHOWWINDOW;
  StartInfo.wShowWindow  := SW_NORMAL;

  if parametro <> C_ST_VAZIO then
     F := F + ' ' + parametro;

  UniqueString(F);
  Result := CreateProcess(Nil,pchar(F),Nil, Nil, false,
                          CREATE_NEW_PROCESS_GROUP+HIGH_PRIORITY_CLASS,
                          NIL, NIL, STARTINFO, PROCINFO);
  if not Result then
     ShowMessage('Não foi possivel executar ' + F)
  else
  if Aguardar then
  begin
      WaitForSingleObject (PROCINFO.hProcess, Infinite);
      GetExitCodeProcess (PROCINFO.hProcess, C);
  end;
end;

{COMPLEMENTO VCL}
function FormatNbr(numero, zeros: Integer): string;
begin
   Result := Format('%.' + IntToStr(zeros) + 'd', [numero]);
end;

function TiraAcento(Str:String): String;                                        {Remove caracteres acentuados de uma string}
Const
   ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
   SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
   i: Integer;
Begin
For i := 1 to Length(Str) do
  Begin
     if Pos(Str[i], ComAcento) <> 0 Then
        Str[i] := SemAcento[Pos(Str[i],ComAcento)];
  end;
   Result := Str;
end;

function InputSenha(const ACaption, APrompt: string; var Value: string): Boolean;
var
   Form: TForm;
   Prompt: TLabel;
   Edit: TEdit;
   DialogUnits: TPoint;
   ButtonTop,
   ButtonWidth,
   ButtonHeight: Integer;

   function GetAvCharSize(Canvas: TCanvas): TPoint;
   var I: Integer; Buffer: array[0..51] of Char;
   begin
      for I := 0 to 25 do
         Buffer[I] := Chr(I + Ord('A'));
      for I := 0 to 25 do
         Buffer[I + 26] := Chr(I + Ord('a'));
      GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
      Result.X := Result.X div 52;
   end;
begin
   Result := False;
   Form := TForm.Create(Application);
   with Form do
   try
      Canvas.Font := Font;
      DialogUnits := GetAvCharSize(Canvas);
      BorderStyle := bsDialog;
      Caption     := ACaption;
      ClientWidth := MulDiv(180, DialogUnits.X, 4);
      Position    := poScreenCenter;
      Prompt      := TLabel.Create(Form);

      with Prompt do
      begin
         Parent               := Form;
         Caption              := APrompt;
         Left                 := MulDiv(8, DialogUnits.X, 4);
         Top                  := MulDiv(8, DialogUnits.Y, 8);
         Constraints.MaxWidth := MulDiv(164, DialogUnits.X, 4);
         WordWrap             := True;
      end;

      Edit := TEdit.Create(Form);
      with Edit do
      begin
         Parent       := Form;
         Left         := Prompt.Left;
         Top          := Prompt.Top + Prompt.Height + 5;
         Width        := MulDiv(164, DialogUnits.X, 4);
         MaxLength    := 255;
         PasswordChar := '#';
         SelectAll;
      end;

      ButtonTop    := Edit.Top + Edit.Height + 15;
      ButtonWidth  := MulDiv(50, DialogUnits.X, 4);
      ButtonHeight := MulDiv(14, DialogUnits.Y, 8);

      with TButton.Create(Form) do
      begin
         Parent := Form;
         Caption := 'OK';
         ModalResult := mrOk;
         Default := True;
         SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,
         ButtonHeight);
      end;

      with TButton.Create(Form) do
      begin
         Parent      := Form;
         Caption     := 'Cancelar';
         ModalResult := mrCancel;
         Cancel      := True;
         SetBounds(MulDiv(92, DialogUnits.X, 4), Edit.Top + Edit.Height + 15,
         ButtonWidth, ButtonHeight);
         Form.ClientHeight := Top + Height + 13;
      end;

      if ShowModal = mrOk then
      If Edit.Text = Value Then
         Result := True
      else
         Application.MessageBox('Acesso negado', 'Acesso negado');
   finally
      Form.Free;
   end;
end;

function data_My(data:TDAte):String;
begin
   Result := QuotedStr(FormatDateTime('yyyy-mm-dd',data));
end;

{FUNÇÕES DE VALIDAÇÃO}
Procedure ChecaUF(sender:TObject);
const
   Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
var
   Posicao : integer;
   Sigla : string;
begin
   With sender as TCustomEdit do
   begin
      Sigla := text;
      if Sigla <> C_ST_VAZIO then
      begin
         Posicao := Pos(UpperCase(Sigla),Estados);
         if (Posicao = 0) or ((Posicao mod 2) = 0) then
         Begin
           ShowMessage('Sigla incorreta');
           SetFocus;
         end;
      end;
   end;
end;

function ValidaUF(UF: string): boolean;
const
   Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
var
   Posicao : integer;
begin
   Result := False;

   if length(UF) < 2 then
   Begin
     ShowMessage('Sigla da UF incorreta');
     exit;
   end;

   Posicao := Pos(UpperCase(UF),Estados);
   if (Posicao = 0) or ((Posicao mod 2) = 0) then
   Begin
     ShowMessage('Sigla da UF incorreta');
   end
   else
   Result := True;

end;


{FUNÇÕES NUMÉRICAS }
function Percent(v1, v2: currency): currency;
var
   n: currency;
begin
  if v1 > v2 then //inverte os valores
  begin
     n  := v1;
     v1 := v2;
     v2 := n;
  end;

   Result := iif(v1=0,0, iif(v2=0, 0, ((v2/v1)-1) * 100));
end;

function Impar(i:Integer): Boolean;
begin
   Result := odd(i);
end;


function RoundNbr(number:Currency; Truncar:Boolean = False):Currency;
begin
   if truncar then
      Result := trunc(number*100)/100
   else
      Result := Round(number*100)/100;
end;


function Nz(Value: Variant; ValueIfNull: Variant): Variant;                     { retorna V se não é nulo, se é retorna ValueIfNull }
begin
  if (Value=null) then
   begin
      Result := ValueIfNull
   end
  else
   Result := Value;
end;

function Ceil(const X: Extended): Integer;                                      {Retorna a parte inteira do valor X arredondado para baixo se houver decimais}
begin
  Result := Math.Ceil(X);
end;

function PriMaiuscula(Texto: String): String;                                    {Converte a primeira letra do texto para maiuscula e as restantes para minuscula}
begin
  if (Texto = null) or (Texto = C_ST_VAZIO) then
    Result := C_ST_VAZIO
  else
  begin
    Texto := UpperCase(Copy(Texto,1,1))+LowerCase(Copy(Texto,2,Length(Texto)));
    Result := Texto;
  end;
end;


function FormataCNPJ_CPF(DOC : string): string;                                 // Formata uma cadeia de strings referente ao CPF
begin
   if length(doc) = 11 then
      Result := Copy(doc,1,3) + '.' + Copy(doc,4,3) + '.' + Copy(doc,7,3) +
                '-' + Copy(doc,10,2)
   else
   if length(doc) = 14 then
      Result := Copy(doc,1,2) + '.' + Copy(doc,3,3) + '.' + Copy(doc,6,3) + '/' +
                Copy(doc,9,4) + '-' + Copy(doc,13,2)
   else
      Result := doc;
end;


function Sobrenome(S : string) : string;                                        // Retorna o Sobrenome de um nome especificado
var
   i,
   Size: Integer;
begin
  i := Pos(#32, S);

  if i = 0 then
  begin
     Result := S;
     Exit;
  end
  else
  begin
     Size := (Length(S) - i);
     Move(S[i + 1], S[1], Size);
     SetLength(S, Size);
     Result := S;
  end;
end;

function PrimeiroNome (Nome : String) : String;                                 // Para pegar o primeiro nome de uma pessoa
var
   PNome : String;
begin
   PNome := C_ST_VAZIO;

   if pos (' ', Nome) <> 0 then
      PNome := copy (Nome, 1, pos (' ', Nome) - 1);

   Result := PNome;
end;

function NUMEROROMANO(num:integer):string;                                      // Converte um valor integer em Romano
var
   i,
   j,
   n: integer;
   digit,
   pivot:string;
begin
   if (num < 1) or (num > 9999) then
   begin
      Result := 'Erro!';
      exit;
   end;

   result := C_ST_VAZIO;
   digit  := 'IXCM';
   pivot  := 'VLD';

   for i := 1 to 3 do
   begin
      n   := num MOD 10;
      num := num Div 10;
      case n of
         1..3: begin
                  for j := 1 to n do
                  begin
                     result := digit[i] + result;
                  end;
               end;
         4: result := digit[i] + pivot[i] + result;
         5..8: begin
                  for j := 6 to n do
                  begin
                     Result := digit[i] + result;
                  end;
                  Result := pivot[i] + result;
               end;
         9: Result := Copy(digit,i,2) + result;
      end;
   end;

   for i := 1 to num do
   begin
      Result := 'M' + result;
   end;
end;

function StrToBoolean(s: string): boolean;                                      // Converte um valor String em Booleano
begin
   result := ((uppercase(s) = 'TRUE') or (uppercase(s) = 'T') or
              (uppercase(s) = 'YES')  or (uppercase(s) = 'Y') or
              (uppercase(s) = 'ON')   or (uppercase(s) = 'S') or
              (uppercase(s) = 'SIM')  or (s = '1'));
end;

function AbreviaNome(Nome: String; tam: integer): String;                        // Abrevia nomes que, em alguns casos, não
var                                                                              // cabem em um determinado componente na tela
  Nomes: array[1..20] of string;                                                // ou ficam muito grandes para serem impresso
  i,
  TotalNomes: Integer;                                                       // em um relatório.
begin                                                                           // Ex: O nome José Francisco Manoel da Siva é
  Nome := Trim(Nome);                                                           // abreviado, por esta função, para José F. M. da Silva.
  Result := Nome;

  if length(nome) < tam then
     exit;

  Nome := Nome + #32;                                                            {Insere um espaço para garantir que todas as letras sejam testadas}
  i := Pos(#32, Nome);                                                           {Pega a posição do primeiro espaço}

  if i > 0 then
  begin
    TotalNomes := 0; 
    while i > 0 do                                                              {Separa todos os nomes}
    begin 
      Inc(TotalNomes); 
      Nomes[TotalNomes] := Copy(Nome, 1, i - 1); 
      Delete(Nome, 1, i); 
      i := Pos(#32, Nome); 
    end;

    if TotalNomes > 3 then                                                      {Abreviar a partir do segundo nome, exceto o último.}
    begin 
      for i := 3 to TotalNomes - 1 do                                           {Contém mais de 3 letras? (ignorar de, da, das, do, dos, etc.)}
      begin 
        if Length(Nomes[i]) > 3 then                                             {Pega apenas a primeira letra do nome e coloca um ponto após.}
          Nomes[i] := Nomes[i][1] + '.';
      end;

      Result := C_ST_VAZIO;

      for i := 1 to TotalNomes do 
        Result := Result + Trim(Nomes[i]) + #32; 

      Result := Trim(Result);
    end; 
  end; 
end; 

function DifHora(Inicio,Fim : String):String;                                   {Retorna a diferença entre duas horas}
var
   dtIni,
   dtFim : TDateTime;
begin
   dtini := StrTotime(Inicio);
   dtFim := StrToTime(Fim);

   If (Inicio > Fim) then
      Result := TimeToStr((StrTotime('23:59:59')- dtini) + dtFim)
   else
      Result := TimeToStr(dtFim - dtini);
end;

function DifDias(DataVenc:TDateTime; DataAtual:TDateTime): String;              {Retorna a diferenca de dias entre duas datas}
Var
   Data: TDateTime;
   dia,
   mes,
   ano: Word;
begin
   if DataAtual < DataVenc then
      Result := 'Erro'
   else
   begin
      Data := DataAtual - DataVenc;
      DecodeDate( Data, ano, mes, dia);
      Result := FloatToStr(Data);
   end;
end;

function NomedoMes(dData:TDatetime):string;                                     {Retorna o nome do mes, em extenso, de uma determinada data}
var
   y,
   m,
   d:word;
   cMes:array[1..12] of string;
begin
   cMes[01] := 'Janeiro';  cMes[02] := 'Fevereiro';   cMes[03] := 'Março';
   cMes[04] := 'Abril';    cMes[05] := 'Maio';        cMes[06] := 'Junho';
   cMes[07] := 'Julho';    cMes[08] := 'Agosto';      cMes[09] := 'Setembro';
   cMes[10] := 'Outubro';  cMes[11] := 'Novembro';    cMes[12] := 'Dezembro';

   decodedate(dData,y,m,d);

   if m in [1..12] then
      Result := cMes[m]
   else
      Result := C_ST_VAZIO;
end;

function IdadeExtenso(Nascimento:TDateTime) : String;                                 // Retorna a idade de uma pessoa a partir da data de nascimento
type
   Data = record Ano, Mes, Dia : Word;
End;
Const
   Qdm:String = '312831303130313130313031';                                      // Qtde dia no mes
Var
   Dth : Data;                                                                   // Data de hoje
   Dtn : Data;                                                                   // Data de nascimento
   anos,
   meses,
   dias,
   nrd : Shortint;                                            // Usadas para calculo da idade
   aanos,
   ameses,
   adias: string;
begin
   if Nascimento <= 0 then
   begin
     result := 'DATA DE NASCIMENTO NÃO INFORMADA';
     exit;
   end;

   DecodeDate(Date,Dth.Ano,Dth.Mes,Dth.Dia);
   DecodeDate(Nascimento,Dtn.Ano,Dtn.Mes,Dtn.Dia);
   anos := Dth.Ano - Dtn.Ano;
   meses := Dth.Mes - Dtn.Mes;

   if meses <= 0 then
   begin
      Dec(anos);
      meses := meses+12;
   end;

   dias := Dth.Dia - Dtn.Dia;

   if dias < 0 then
   begin
      nrd := StrToInt(Copy(Qdm,(Dth.Mes-1)*2-1,2));
      if ((Dth.Mes-1)=2) and ((Dth.Ano Div 4)=0) then
      begin
         Inc(nrd);
      end;
      dias := dias+nrd;
      meses := meses-1;
      if meses < 0 then
         meses := 0;
   end;

   if (meses = 12) and (anos = 0) then
   begin
     anos  := 1;
     meses := 0;
   end;

   aanos := IntToStr(anos) + ' Anos ';
   case anos of
    0: aanos := ' ';
    1: aanos := 'Um Ano '
   end;

   ameses := IntToStr(meses) + ' Meses ';
   case meses of
    0: aMeses := ' ';
    1: aMeses := 'Um Mês '
   end;

   aDias := IntToStr(dias) + ' Dias ';
   case dias of
    0: aDias := ' ';
    1: aDias := 'um Dia '
   end;

   if (dias > 0) and ((meses > 0)or(anos > 0))  then
      aDias := 'e ' + adias;

   if meses > 0 then
   begin
     if (dias = 0) and (anos > 0)  then
        aMeses := 'e ' + aMeses
     else
     if (dias > 0) and (anos > 0)  then
        aMeses := ', ' + aMeses;
   end;

   Result := aanos + ameses + aDias;
end;

function ProximoDiaUtil(dData : TDateTime) : TDateTime;                         // Retorna o próximo dia útil caso a data informada caia em um fim de semana
begin
   if DayOfWeek(dData) = 7 then
      dData := dData + 2
   else
   if DayOfWeek(dData) = 1 then
      dData := dData + 1;
   Result := dData;
end;

function Replicate( Caracter:String; Quant:Integer ): String;                   {Repete o mesmo caractere várias vezes}
var
   I : Integer;
begin
   Result := C_ST_VAZIO;
   for I := 1 to Quant do
       Result := Result + Caracter;
end;

function DataExtenso(Data:TDateTime): String;                                   {Para exibir uma data por extenso }
var
  NoDia : Integer;
  DiaDaSemana : array [1..7] of String;
  Meses : array [1..12] of string;
  y,
  m,
  d : Word;
begin
  DiaDasemana[1] := 'Domingo';
  DiaDasemana[2] := 'Segunda-feira';
  DiaDasemana[3] := 'Terça-feira';
  DiaDasemana[4] := 'Quarta-feira';
  DiaDasemana[5] := 'Quinta-feira';
  DiaDasemana[6] := 'Sexta-feira';
  DiaDasemana[7] := 'Sábado';

  Meses[1]  := 'Janeiro';
  Meses[2]  := 'Fevereiro';
  Meses[3]  := 'Março';
  Meses[4]  := 'Abril';
  Meses[5]  := 'Maio';
  Meses[6]  := 'Junho';
  Meses[7]  := 'Julho';
  Meses[8]  := 'Agosto';
  Meses[9]  := 'Setembro';
  Meses[10] := 'Outubro';
  Meses[11] := 'Novembro';
  Meses[12] := 'Dezembro';

  DecodeDate (Data, y, m, d);
  NoDia := DayOfWeek (Data);

  Result := DiaDaSemana[NoDia] + ', ' + InttoStr (d) + ' de ' + Meses [m] +
            ' de ' + inttostr (y);
end;

function IdadeAtual(Nasc : TDateTime): Integer;                                 // Retorna a idade Atual de uma pessoa a partir da data de nascimento
Var
   AuxIdade,
   Meses : String;
   MesesFloat : Real;
   IdadeInc,
   IdadeReal : Integer;// Esta função retorna a idade em formato integer
begin
  AuxIdade := Format('%0.2f', [(Date - Nasc) / 365.6]);
  Meses    := FloatToStr(Frac(StrToFloat(AuxIdade)));
  if AuxIdade = '0' then
  begin
     Result := 0;
     Exit;
  end;
  if Meses[1] = '-' then
  begin
     Meses := FloatToStr(StrToFloat(Meses) * -1);
  end;
  Delete(Meses, 1, 2);
  if Length(Meses) = 1 then
  begin
     Meses := Meses + '0';
  end;
  if (Meses <> '0') And (Meses <> C_ST_VAZIO) then
  begin
     MesesFloat := Round(((365.6 * StrToInt(Meses)) / 100) / 30.47)
  end
  else
  begin
     MesesFloat := 0;
  end;
  if MesesFloat <> 12 then
  begin
     IdadeReal := Trunc(StrToFloat(AuxIdade));
  end
  else
  begin
     IdadeInc := Trunc(StrToFloat(AuxIdade));
     Inc(IdadeInc);
     IdadeReal := IdadeInc;
  end;
  Result := IdadeReal;
end;

function roundx(dValIni: Double; iCasas:Integer): Double;                       // Faz o arredondamento conforme o número de casas decimais
var
   dDNum:Double;
begin
  if dValIni >=0 then
     dDNum:=((dValIni * power(10,iCasas))+0.5)
  else
     dDNum := ((dValIni * power(10,iCasas))-0.5);

  dDNum := Int(dDNum);
  roundx := dDNum/Power(10, iCasas);
end;

function Preenche(X, Y: String; Z:Integer):String;                              // Preenche a variável Y com Z vezes com o caractere X
var
   Cont: Integer;
begin
  for Cont := Length(X) to z do
     X := X + Y;
 Result := Copy(X, 1, Z)
end;

function idade(Nascimento : TDate):Integer;       // Retorna a idade de uma pessoa em anos
begin
   Result := YearOf(Date) - YearOf(Nascimento);
end;

function Divide(X, Y: currency): currency;                                      { retorna o valor X divido por B, so que se Y for nulo ou zero, sempre retorna zero, evitando erros }
begin
  if (Y = null) or ( Y = 0) then
       result := 0
  else
       result := X / Y;
end;

function Encoder(const Key, Source: string): string;
var
   I: Integer;
   C: Byte;
begin
  Result := C_ST_VAZIO;

  if source = result then
    exit;

  for I := 1 to Length(Source) do
  begin
    if Length(Key) > 0 then
      C := Byte(Key[1 + ((I - 1) mod Length(Key))]) xor Byte(Source[I])
    else
      C := Byte(Source[I]);
    Result := Result + AnsiLowerCase(IntToHex(C, 2));
  end;
end;

function Decoder(const Key, Source: string): string;
var
   I: Integer;
   C: Char;
begin
  Result := C_ST_VAZIO;
  if source = result then
    exit;
  for I := 0 to Length(Source) div 2 - 1 do
  begin
    C := Chr(StrToIntDef('$' + Copy(Source, (I * 2) + 1, 2), Ord(' ')));
    if Length(Key) > 0 then
      C := Chr(Byte(Key[1 + (I mod Length(Key))]) xor Byte(C));
    Result := Result + C;
  end;
end;

function DeleteFiles(aPath, afile:string): boolean;
var
   SearchRec : TSearchRec;
begin
  if copy(aPath, length(apath) - 1, 1) <> '\' then
     aPath := aPath + '\';
  try
    FindFirst(aPath + afile, faAnyFile, SearchRec);

    repeat
      DeleteFile(aPath + SearchRec.name);
    until FindNext(SearchRec) <> 0;

  finally
    FindClose(SearchRec);
  end;
  Result := True;
end;

function Find_File(aPath, afile:string): string;
var
   SearchRec : TSearchRec;
begin
  if copy(aPath, length(apath) - 1, 1) <> '\' then
     aPath := aPath + '\';
  try
    FindFirst(aPath + afile, faAnyFile, SearchRec);

    repeat
      result := (aPath + SearchRec.name);
    until FindNext(SearchRec) <> 0;
  finally
    FindClose(SearchRec);
  end;
end;

function Number(valor: string): string;
var
   i: integer;
begin
  Result := C_ST_VAZIO;
  for i := 1 to length(valor) do
  if CharInSet(valor[i], ['0'..'9']) then
     result := result + valor[i];
end;

function NumberSQL(campo:string): string;
begin
   Result := 'Replace(Replace(Replace(Replace(' + campo + ',".",""),"-",""),"/",""),",","")';
end;

function IsNumber(s:String):boolean;  //verifica se so tem numeros
var
   i: integer;
begin
  Result := True;

  for i := 1 to length(s) do
  if not CharInSet(s[i],['0'..'9']) then
  begin
     Result := False;
     Break;
  end;
end;

function AlfaNumerico(s:String):String;
var
   i: integer;
begin
  Result := C_ST_VAZIO;
  for i := 1 to length(s) do
  if CharInSet(s[i],['0'..'9', 'a'..'z', 'A'..'Z']) then
     result := result + s[i];
end;

function SoPalavras(s:String):String;
var
   i: integer;
begin
  Result := C_ST_VAZIO;
  for i := 1 to length(s) do
  if not CharInSet(s[i], ['0'..'9', ',','.','-','/','\','+', '|',';',':']) then
     result := result + s[i];
end;

procedure RunDosNoMemo(DosApp:String;AMemo:TMemo);
const
  ReadBuffer = 2400;
var
  Security : TSecurityAttributes;
  ReadPipe,WritePipe : THandle;
  start : TStartUpInfo;
  ProcessInfo : TProcessInformation;
  Buffer : PAnsichar;
  BytesRead : DWord;
  Apprunning : DWord;
begin
  With Security do
  begin
    nlength := SizeOf(TSecurityAttributes) ;
    binherithandle := true;
    lpsecuritydescriptor := nil;
  end;

  if Createpipe (ReadPipe, WritePipe, @Security, 0) then
  begin
    Buffer := AllocMem(ReadBuffer + 1) ;
    FillChar(Start,Sizeof(Start),#0) ;
    start.cb := SizeOf(start) ;
    start.hStdOutput := WritePipe;
    start.hStdInput := ReadPipe;
    start.dwFlags := STARTF_USESTDHANDLES +
                        STARTF_USESHOWWINDOW;
    start.wShowWindow := SW_HIDE;

    if CreateProcess(nil,
          PChar(DosApp),
          @Security,
          @Security,
          true,
          NORMAL_PRIORITY_CLASS,
          nil,
          nil,
          start,
          ProcessInfo)
    then
    begin
    repeat
      Application.ProcessMessages;
      Apprunning := WaitForSingleObject
                  (ProcessInfo.hProcess,100) ;
    until (Apprunning <> WAIT_TIMEOUT) ;
      Repeat
        BytesRead := 0;
        ReadFile(ReadPipe,Buffer[0],
        ReadBuffer,BytesRead,nil) ;
        Buffer[BytesRead]:= #0;
        OemToAnsi(Buffer,Buffer) ;
        AMemo.Text := AMemo.text + String(Buffer) ;
        Application.ProcessMessages;
      until (BytesRead < ReadBuffer) ;
    end;
    FreeMem(Buffer) ;
    CloseHandle(ProcessInfo.hProcess) ;
    CloseHandle(ProcessInfo.hThread) ;
    CloseHandle(ReadPipe) ;
    CloseHandle(WritePipe) ;
  end;
end;


procedure RunDosInMemo(const DosApp: String; var Saida: TStringList; const ReturnData: Boolean);
const
  ReadBuffer = 2400;
  DOS_TIME_OUT = 2000;
var
  Security: TSecurityAttributes;
  ReadPipe, WritePipe: THandle;
  start: TStartupInfo;
  ProcessInfo: TProcessInformation;
  Buffer: PAnsiChar;
  BytesRead: DWord;
  AppRunning: DWord;
  TickInicial, TickAtual: Cardinal;
begin
  with Security do
  begin
    nlength := SizeOf(TSecurityAttributes);
    binherithandle := True;
    lpsecuritydescriptor := nil;
  end;

  if CreatePipe(ReadPipe, WritePipe, @Security, 0) then
  begin
    Buffer := AllocMem(ReadBuffer + 1);
    try
      Screen.Cursor := crHourGlass;

      FillChar(start, Sizeof(start), #0);

      start.cb := SizeOf(start);
      start.hStdOutput := WritePipe;
      start.hStdInput := ReadPipe;
      start.dwFlags := STARTF_USESTDHANDLES + STARTF_USESHOWWINDOW;
      start.wShowWindow := SW_HIDE;

      if CreateProcess(
        nil,
        PChar(DosApp),
        @Security,
        @Security,
        True,
        NORMAL_PRIORITY_CLASS,
        nil,
        nil,
        start,
        ProcessInfo
      ) then
      begin
        TickInicial := GetTickCount;

        repeat
          AppRunning := WaitForSingleObject(ProcessInfo.hProcess, DOS_TIME_OUT);
          Application.ProcessMessages;

          TickAtual := GetTickCount;
          if (TickAtual - TickInicial) >= DOS_TIME_OUT then
          begin
            raise EFilerError.Create(
              'Ocorreu o seguinte erro:'#13#13 +
              Format('Não foi possível concluir o comando "%s".', [DosApp])
            );
          end;
        until (AppRunning <> WAIT_TIMEOUT);

        Saida.Clear;
        if ReturnData then
        begin
          repeat
            BytesRead := 0;
            ReadFile(ReadPipe, Buffer[0], ReadBuffer, BytesRead, nil);
            Buffer[BytesRead]:= #0;
            OemToAnsi(Buffer, Buffer) ;
            Saida.Add(String(Buffer));
          until (BytesRead < ReadBuffer);
        end;
      end;
    finally
      Screen.Cursor := crDefault;

      FreeMem(Buffer);
      CloseHandle(ProcessInfo.hProcess);
      CloseHandle(ProcessInfo.hThread);
      CloseHandle(ReadPipe);
      CloseHandle(WritePipe);
    end;
  end;
end;




end.

