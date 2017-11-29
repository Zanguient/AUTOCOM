unit FuncFRR;

interface

uses SysUtils, Classes, fs_iinterpreter, Variants, uFuncoes, extensos, uDM;

const
  FR_GROUP = 'EXTRAS';

type
  TFastReportMyFunctions = class(TfsRTTIModule)
  private
    function CallMethod(Instance: TObject; ClassType: TClass;
             const MethodName: String; var Params: Variant): Variant;
  public
    constructor Create(AScript: TfsScript); override;
  end;

implementation


{ TFastReportMyFunctions }

uses uCompo_Adic;

constructor TFastReportMyFunctions.Create;
begin                           //Registra as classes e Funções...
  inherited Create(AScript);

  with AScript do
  begin
    AddClass(TfrxcxDateEditControl, 'TfrxDialogControl');
    AddClass(TfrxcxCurrencyEdit, 'TfrxDialogControl');

    AddMethod('function Number(valor: string): string', CallMethod, FR_GROUP, 'Extrai os numeros de uma string');
    AddMethod('function LFill(aString: string; aTamanho: Integer;  aCaracter: Char): string', CallMethod, FR_GROUP, 'Acrescenta caractere a esquerda');
    AddMethod('function RFill(aString: string; aTamanho: integer; aCaracter: Char): string', CallMethod, FR_GROUP, 'Acrescenta caractere a direita');
    AddMethod('function Arredonda(Valor: Currency;CasasDecimais: integer): Currency', CallMethod, FR_GROUP, 'Arredonda um currency');
    AddMethod('function Extenso(Numero: Real): String', CallMethod, FR_GROUP, 'Retorna o valor por extenso');
    AddMethod('function Divide(X, Y: Real): Real', CallMethod, FR_GROUP, 'Divide X por Y, retorna 0 se Y for nulo ou 0.');
    AddMethod('function Nz(Value: Variant; ValueIfNull: Variant): Variant', CallMethod, FR_GROUP, 'Retorna Value se este não é nulo, se for retorna ValueIfNull');
    AddMethod('function Ceil(const X: Extended): Integer', CallMethod, FR_GROUP, 'Retorna a parte inteira do valor X arredondado para cima se houver decimais');
    AddMethod('function PriMaiuscula(Texto: String): String', CallMethod, FR_GROUP, 'Converte a primeira letra do texto para maiúscula e as restantes para minuscula');
    AddMethod('function FormataCNPJ_CPF(DOC : string): string', CallMethod, FR_GROUP, 'Formata uma cadeia de strings referente ao CPF ou CNPJ');
    AddMethod('function Sobrenome(S : string) : string', CallMethod, FR_GROUP, 'Retorna o Sobrenome de um nome especificado');
    AddMethod('function PrimeiroNome(Nome : String) : String', CallMethod, FR_GROUP, 'Retorna o primeiro nome de uma pessoa');
    AddMethod('function NUMEROROMANO(num:integer):string', CallMethod, FR_GROUP, 'Converte um valor integer em Romano');
    AddMethod('function StrToBoolean(s: string): boolean', CallMethod, FR_GROUP, 'Converte um valor String em Booleano. Se a String for TRUE, T, YES, Y, ON, O ou 1; então retorna True. Senão retorna False.');
    AddMethod('function AbreviaNome(Nome: String; tam: integer): String', CallMethod, FR_GROUP, 'Abrevia nomes. Ex: José Francisco Manoel da Siva vira José F. M. da Silva.');
    AddMethod('function DifHora(Inicio,Fim : String):String', CallMethod, FR_GROUP, 'Retorna a diferença entre duas horas');
    AddMethod('function DifDias(DataVenc:TDateTime, CallMethod, FR_GROUP,  DataAtual:TDateTime): String', CallMethod, FR_GROUP, 'Retorna a diferenca de dias entre duas datas');
    AddMethod('function NomedoMes(dData:TDatetime):string', CallMethod, FR_GROUP, 'Retorna o nome do mes em extenso, de uma determinada data');
    AddMethod('function IdadeN(Nascimento:TDateTime) : String', CallMethod, FR_GROUP, 'Retorna a idade de uma pessoa a partir da data de nascimento');
    AddMethod('function ProximoDiaUtil(dData : TDateTime) : TDateTime', CallMethod, FR_GROUP, 'Retorna o próximo dia útil caso a data informada caia em um fim de semana');
    AddMethod('function Replicate(Caracter:String; Quant:Integer): String', CallMethod, FR_GROUP, 'Repete o mesmo caractere várias vezes');
    AddMethod('function DataExtenso(Data:TDateTime): String', CallMethod, FR_GROUP, 'Para exibir uma data por extenso.');
    AddMethod('function IdadeAtual(Nasc : TDate): Integer', CallMethod, FR_GROUP, 'Retorna a idade atual de uma pessoa a partir da data de nascimento. Esta função retorna a idade em formato integer');
    AddMethod('function roundx(dValIni: Double, CallMethod, FR_GROUP,  iCasas:Integer): Double', CallMethod, FR_GROUP, 'Faz o arredondamento conforme o número de casas decimais');
    AddMethod('function Preenche(X, Y: String, CallMethod, FR_GROUP, Z:Integer):String', CallMethod, FR_GROUP, 'Preenche a variável Y com Z vezes com o caractere X');
    AddMethod('function idade(Nascimento,DataAtual:string):Integer', CallMethod, FR_GROUP, 'Retorna a idade de uma pessoa');
    AddMethod('function TiraAcento(Str:String): string', CallMethod, FR_GROUP, 'Troca os caracteres acentuados por não acentuados');
    AddMethod('function Impar(i:Integer): Boolean', CallMethod, FR_GROUP, 'Retorna True se impar');
    AddMethod('function FileExists(FileName:string): Boolean', CallMethod, FR_GROUP, 'Retorna True se impar');
    AddMethod('function ExecSQL(asql:string):boolean', CallMethod, FR_GROUP, 'Executa Script DML');
    AddMethod('function DecimalSep(separator:char):boolean', CallMethod, FR_GROUP, 'Altera o DecimalSeparator');
  end;
end;

function TFastReportMyFunctions.CallMethod(Instance: TObject; ClassType: TClass;    //Retorno de Funções no FAST-REPORT
  const MethodName: String; var Params: Variant): Variant;
var MethodName_Upper: String;
begin
  MethodName_Upper := UpperCase(MethodName);
  if MethodName_Upper = 'EXTENSO' then
    Result := Extenso(Params[0])
  else if MethodName_Upper = 'DIVIDE' then
    Result := divide(Params[0], Params[1])
  else if MethodName_Upper = 'NZ' then
    Result := Nz(Params[0], Params[1])
  else if MethodName_Upper = 'CEIL' then
    Result := Ceil(Params[0])
  else if MethodName_Upper = 'PRIMAIUSCULA' then
    Result := PriMaiuscula(Params[0])
  else if MethodName_Upper = 'FORMATACNPJ_CPF' then
    Result := FormataCNPJ_CPF(Params[0])
  else if MethodName_Upper = 'SOBRENOME' then
    Result := Sobrenome(Params[0])
  else if MethodName_Upper = 'PRIMEIRONOME' then
    Result := PrimeiroNome(Params[0])
  else if MethodName_Upper = 'NUMEROROMANO' then
    Result := NumeroRomano(Params[0])
  else if MethodName_Upper = 'STRTOBOOLEAN' then
    Result := StrToBoolean(Params[0])
  else if MethodName_Upper = 'ABREVIANOME' then
    Result := AbreviaNome(Params[0], Params[1])
  else if MethodName_Upper = 'DIFHORA' then
    Result := DifHora(Params[0], Params[1])
  else if MethodName_Upper = 'DIFDIAS' then
    Result := DifDias(Params[0], Params[1])
  else if MethodName_Upper = 'NOMEDOMES' then
    Result := NomeDoMes(Params[0])
  else if MethodName_Upper = 'IDADEN' then
    Result := IdadeExtenso(Params[0])
  else if MethodName_Upper = 'PROXIMODIAUTIL' then
    Result := ProximoDiaUtil(Params[0])
  else if MethodName_Upper = 'REPLICATE' then
    Result := Replicate(Params[0], Params[1])
  else if MethodName_Upper = 'DATAEXTENSO' then
    Result := DataExtenso(Params[0])
  else if MethodName_Upper = 'IDADE' then
    Result := Idade(Params[0])
  else if MethodName_Upper = 'IDADEATUAL' then
    Result := IdadeAtual(Params[0])
  else if MethodName_Upper = 'ROUNDX' then
    Result := RoundX(Params[0], Params[1])
  else if MethodName_Upper = 'PREENCHE' then
    Result := Preenche(Params[0], Params[1], Params[2])
    else if MethodName_Upper = 'TIRAACENTO' then
    Result := TiraAcento(Params[0])
    else if MethodName_Upper = 'IMPAR' then
    Result := Impar(Params[0])
    else if MethodName_Upper = 'FILEEXISTS' then
    Result := FileExists(Params[0])
    else if MethodName_Upper = 'EXECSQL' then
    Result := DM.ExecSQL(Params[0])
    else if MethodName_Upper = 'DECIMALSEP' then
    Result := DM.DecimalSep(Params[0]);
end;


initialization
  fsRTTIModules.Add(TFastReportMyFunctions);

end.
