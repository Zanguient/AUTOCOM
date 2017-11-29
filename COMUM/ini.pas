unit ini;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
Inifiles, uFuncoes;

   type
      Tini = class(Tinifile)
      private
         Fsecao: string;
      public
         property secao: string read Fsecao write Fsecao;
         function GravaStr(campo: string; valor: string; codifica: boolean = false): boolean;
         function LeStr(campo: string; default:string; decodifica: boolean = false): string;
         function GravaInt(campo: string; valor: integer): boolean;
         function LeInt(campo: string;  default: integer = 0): integer;
         function GravaBool(campo: string; valor: boolean): boolean;
         function LeBool(campo: string;  default: boolean = false): boolean;
      end;


implementation


function Tini.GravaStr(campo, valor: string; codifica: boolean = false): boolean;
begin
    if codifica then
    begin
       valor := Encoder('ini', valor);
    end;

    WriteString(secao, campo, valor);
    result := true;
end;

function Tini.LeStr(campo, default: string; decodifica: boolean = false): string;
var
   s: string;
   b: boolean;
begin
   if decodifica then
   begin
      result := decoder('ini', ReadString(secao, campo, default));
   end
   else
      result := ReadString(secao, campo, default);
end;

function Tini.GravaBool(campo: string; valor: boolean): boolean;
begin
   if valor  then
       WriteInteger(secao, campo, 1)
   else
      WriteInteger(secao, campo, 0);
   result := true;
end;

function Tini.GravaInt(campo: string; valor: integer): boolean;
begin
    WriteInteger(secao, campo, valor);
    result := true;
end;

function Tini.LeBool(campo: string; default: boolean): boolean;
begin
   if default then
      result := ReadInteger(secao, campo, 1) = 1
   else
      result := ReadInteger(secao, campo, 0) = 1;
end;

function Tini.LeInt(campo: string; default: integer = 0): integer;
begin
  result := ReadInteger(secao, campo, default);
end;

end.
