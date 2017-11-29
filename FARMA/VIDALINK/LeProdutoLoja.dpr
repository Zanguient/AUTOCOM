library LeProdutoLoja;

uses
  FastShareMem in '..\..\COMUM\FastShareMem.pas',
  SysUtils,
  Classes,
  Forms,
  Variants,
  dialogs,
  udm_ini in '..\..\COMUM\udm_ini.pas' {DM_INI: TDataModule},
  uFuncoes in '..\..\COMUM\uFuncoes.pas',
  uMD5Print in '..\..\COMUM\uMD5Print.pas',
  uDM in '..\..\GERENCIAL\uDM.pas' {DM: TDataModule},
  uAutocomConsts in '..\..\COMUM\uAutocomConsts.pas',
  uConsts in '..\..\COMUM\uConsts.pas',
  uTraducao in '..\..\COMUM\uTraducao.pas';

{$R *.res}

function PathDLL: string;
var
   i:integer;
begin
   Result := GetModuleName(HInstance);
   i := Pos('LeProdutoLoja.dll', Result) -1;
   Result := Copy(Result, 1 , i);
end;


function LeProdLoja( sCateg, sKey : pAnsiChar; byTrataPeso, byDeciPeso, byArredonda,
                     byDescr40 : Byte; ptrBuffProd, prtBuffAssoc : pAnsiChar ): ShortInt; stdcall;
var
  str_ptrBuffProd : String;
begin
//g_path está na unit Function e muda o path da função Aqui
  g_path := PathDLL; //obtém o path onde está a dll
  Log('LeProdutoLoja','LeProdLoja', 'Recebi ' + String(sKey));

   Try
      DM     := TDM.Create(Application);
      DM_INI := TDM_INI.Create(Application);
      DM_INI.ini.inifilename := Aqui(C_INI_FILE, 'autocom.ini');
      DM_INI.ini.Active      := True;
      DM_INI.ini.RestoreFormPlacement;
      DM.Conectar;
      Log('LeProdutoLoja','LeProdLoja', 'Conectado a ' + DM.DB.Params.Values['Server']);

      str_ptrBuffProd := 'select nome, vrvenda_vista, medicam_pmc from estoque where cod_gtin = ' + Texto_Mysql(String(sKey));

      DM.Q1.OPen(str_ptrBuffProd);
      Log('LeProdutoLoja','LeProdLoja', String(sKey) + ' ' + DM.Q1.FieldByName('vrvenda_vista'). AsString);

      If not (DM.Q1.isempty) then
      begin
        str_ptrBuffProd := StringOfChar(' ',7) +
                           (Format('%-35s',[Copy(DM.Q1.FieldByName('nome').AsString,1,35)])) +
                           StringOfChar(' ' ,12) +
                           (LFill(CurrToStr(DM.Q1.FieldByName('medicam_pmc').AsCurrency  * 100),10,'0') )+
                           (LFill(CurrToStr(DM.Q1.FieldByName('vrvenda_vista').AsCurrency  * 100),10,'0') );

        StrPLCopy(ptrBuffProd, AnsiString(str_ptrBuffProd), 75);
        Log('LeProdutoLoja','LeProdLoja', DM.Q1.FieldByName('nome').AsString);
        Result:= 0;
      end
      else
      begin
        Result:= 1;
        Log('LeProdutoLoja','LeProdLoja', 'Nenhum produto encontrado');
      end;
      DM.DB.Connected := False;
      FreeAndNil(DM);
      FreeAndNil(DM_ini);
   except
      on E: Exception do
      begin
         DM.DB.Connected := False;
         FreeAndNil(DM);
         FreeAndNil(DM_ini);
         Log('LeProdutoLoja','LeProdLoja', 'Erro ' + E.message);
      end;
   end;
end;

exports
  LeProdLoja;
begin
end.


