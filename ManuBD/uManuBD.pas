unit uManuBD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, uFrm, uFuncoes, db;

type
  TfrmManuBD = class(Tfrm)
    Memo1: TMemo;
    Panel1: TPanel;
    Bar1: TProgressBar;
    Timer1: TTimer;
    sd1: TSaveDialog;
    cb1: TCheckBox;
    procedure Panel1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure bkp;
    procedure memoLinesAdd(linha: string);
  private
  public
    abkp: boolean;
    bd  : string;
  end;

var
  frmManuBD: TfrmManuBD;

implementation

uses uDM1;

{$R *.dfm}

procedure TfrmManuBD.memoLinesAdd(linha: string);
begin
   if cb1.Checked then
      exit;
   memo1.Lines.Add(linha);
end;

procedure TfrmManuBD.bkp;
var lista:TStringList; i: integer; s, ss:string;
begin
   try
      screen.Cursor := -11;
      lista := TStringList.Create;
      memo1.clear;
      memolinesadd('INICIANDO CÓPIA DE SEGURANÇA...');
      DM1.Conectar(DM1.DB1); //conecta no servidor
      memolinesadd('AGUARDE...');
      cb1.Checked := true;
      memolinesadd('');
      memolinesadd('');
      DecimalSeparator := '.';
      DM1.Pesquisa(DM1.DB1,DM1.Q1,'SHOW TABLES');

      while not dm1.Q1.Eof do
      begin
         if pos('vw_', dm1.Q1.Fields[0].AsString) <= 0 then //nao mexe com as views
         begin
            panel1.Caption := 'TABELA ' + dm1.Q1.Fields[0].AsString + '. AGUARDE...';
            Application.ProcessMessages;
            memolinesadd('ESTRUTURA DA TABELA ' + dm1.Q1.Fields[0].AsString);
            lista.Add('DROP TABLE IF EXISTS ' + dm1.Q1.Fields[0].AsString + ';');
            dm1.Pesquisa(dm1.DB1, dm1.Q2, 'SHOW create table ' + dm1.Q1.Fields[0].AsString);
            lista.Add(dm1.Q2.Fields[1].AsString + ';');

            if (dm1.Q1.Fields[0].AsString = 'estoque') then
            begin
               dm1.Pesquisa(dm1.DB1, dm1.Q2, 'select AES_DECRYPT(ean,@chave) as cod_barra, * from ' + dm1.Q1.Fields[0].AsString);

               if not dm1.q2.IsEmpty then
               while not dm1.Q2.Eof do
               begin
                  s := '';
                  bar1.Max := DM1.Q2.RecordCount;
                  bar1.Position := 0;
                  application.ProcessMessages;
                  bar1.Position := bar1.Position + 1;

                  for i := 0 to dm1.Q2.Fields.Count - 1 do
                  begin
                     if dm1.Q2.Fields[i].DataType = ftDate then
                     begin
                        if dm1.Q2.Fields[i].AsDateTime < StrToDate('01/01/1900')then
                           s := s + dm1.Q2.Fields[i].FieldName + ' = NULL,'
                        else
                           s := s + dm1.Q2.Fields[i].FieldName + ' = "' +
                                formatdatetime('yyyy-mm-dd', dm1.Q2.Fields[i].AsDateTime) + '",'
                     end
                     else
                     begin
                        if (TRIM(dm1.Q2.Fields[i].AsString) = '')and
                           (dm1.Q2.Fields[i].FieldName <> 'id') then
                           s := s + dm1.Q2.Fields[i].FieldName + ' = NULL,'
                        else
                        begin
                           ss := dm1.Q2.Fields[i].AsString;
                           ss  := FindReplaceStr('\', '\\', ss);
                           ss := FindReplaceStr('"','\"', ss);
                           ss := FindReplaceStr('''','\''', ss);
                           ss := BuscaTroca(ss,'€','C');
                           s  := s + dm1.Q2.Fields[i].FieldName + ' = "' + trim(ss) + '",';
                        end;
                     end;
                  end;
                  delete(s, length(s), 1);
                  lista.Add('insert into ' + dm1.Q1.Fields[0].AsString + ' set ' + s + ';');
                  memolinesadd(dm1.Q2.Fields[0].AsString);
               end;
            end
            else
            if (dm1.Q1.Fields[0].AsString = 'farma_unipreco') then
            begin

            end
            else
            if (dm1.Q1.Fields[0].AsString = 'balanco') then
            begin

            end
            else
            begin
               dm1.Pesquisa(dm1.DB1, dm1.Q2, 'select * from ' + dm1.Q1.Fields[0].AsString);

               if not dm1.q2.IsEmpty then
               while not dm1.Q2.Eof do
               begin
                  s := '';
                  bar1.Max := DM1.Q2.RecordCount;
                  bar1.Position := 0;
                  application.ProcessMessages;
                  bar1.Position := bar1.Position + 1;

                  for i := 0 to dm1.Q2.Fields.Count - 1 do
                  begin
                     if dm1.Q2.Fields[i].DataType = ftDate then
                     begin
                        if dm1.Q2.Fields[i].AsDateTime < StrToDate('01/01/1900')then
                           s := s + dm1.Q2.Fields[i].FieldName + ' = NULL,'
                        else
                           s := s + dm1.Q2.Fields[i].FieldName + ' = "' +
                                formatdatetime('yyyy-mm-dd', dm1.Q2.Fields[i].AsDateTime) + '",'
                     end
                     else
                     begin
                        if (TRIM(dm1.Q2.Fields[i].AsString) = '')and
                           (dm1.Q2.Fields[i].FieldName <> 'id') then
                           s := s + dm1.Q2.Fields[i].FieldName + ' = NULL,'
                        else
                        begin
                           ss := dm1.Q2.Fields[i].AsString;
                           ss  := FindReplaceStr('\', '\\', ss);
                           ss := FindReplaceStr('"','\"', ss);
                           ss := FindReplaceStr('''','\''', ss);
                           ss := BuscaTroca(ss,'€','C');
                           s  := s + dm1.Q2.Fields[i].FieldName + ' = "' + trim(ss) + '",';
                        end;
                     end;
                  end;
                  delete(s, length(s), 1);
                  lista.Add('insert into ' + dm1.Q1.Fields[0].AsString + ' set ' + s + ';');
                  memolinesadd(dm1.Q2.Fields[0].AsString);
                  dm1.Q2.Next;
               end;
            end;
         end;
         dm1.Q1.Next;
      end;

      sd1.FileName := FormatDateTime('yyyy-mm-dd', date)+ '.sql';
      panel1.Caption := '';
      if sd1.Execute then
      begin
         lista.SaveToFile(sd1.FileName);
         memolinesadd('Fim do back-up');
      end
      else
      memolinesadd('Usuário abortou o back-up.');
   finally
      DecimalSeparator := ',';
      screen.Cursor    := -0;
   end;
end;

procedure TfrmManuBD.Panel1Click(Sender: TObject);
begin
   close;
end;

procedure TfrmManuBD.Timer1Timer(Sender: TObject);
const delim = '''';  delim2 = ''', ';
var lista:TStringList; i: integer;
begin
   timer1.Tag := timer1.Tag + 1;
   if timer1.tag < 1 then
      exit;
   timer1.Enabled := false;
   screen.Cursor  := -11;
   lista          := TStringList.Create;
	memo1.lines.add('INICIANDO PROCESSO DE VARREDURA...');
//LISTA AS BASES EXISTENTES
   bd := dm1.DB1.Database;
   DM1.Conectar(DM1.DB1);
   memo1.lines.add('');
   memo1.lines.add('');
   memo1.lines.add('');

   DM1.Pesquisa(DM1.DB1,DM1.Q3,'select "' + bd + '"');
   //lista.Clear;

   while not DM1.q3.eof do
   begin
      lista.Add(DM1.Q3.Fields[0].asstring);
      dm1.Q3.Next;
   end;

//LOOP QUE VARRE AS BASES
   for i := 0 to lista.Count - 1 do
   begin
      Application.ProcessMessages;
      with dm1.DB1 do
      begin
         Disconnect;
         Database := lista.Strings[i];
         Connect;
      end;

      memo1.lines.add('');
      memo1.lines.add('VERIFICANDO BASE ' + lista.Strings[i]);
      memo1.lines.add('');
      DM1.Pesquisa(DM1.DB1,DM1.Q1,'SHOW FULL TABLES WHERE table_type <> "VIEW"');
      bar1.Max := DM1.Q1.RecordCount;
      bar1.Position := 0;

//LOOP QUE VARRE AS TABELAS
      While not DM1.q1.Eof do
      begin
         Application.ProcessMessages;
         bar1.Position := bar1.Position + 1;
         memo1.lines.add('Verificando Tabela '+ DM1.Q1.Fields[0].value);
         DM1.Pesquisa(DM1.DB1,DM1.Q2,'check table ' +
         lista.Strings[i] + '.' + DM1.Q1.Fields[0].value);

//se encontrar problemas na tabela
         If DM1.Q2.Fields[3].value <> 'OK' then
         begin
            memo1.lines.add('Tabela '+ DM1.Q1.Fields[0].value +
                            ' com problemas - ' + DM1.Q2.Fields[3].value);
            memo1.Tag:=1;

//TENTA TRES VEZES RECUPERAR A TABELA
            repeat
               memo1.lines.add('Tentativa '+ IntToStr(memo1.Tag)+
                               ' de corrigir Tabela '+ DM1.Q1.Fields[0].value);
               DM1.Pesquisa(DM1.DB1,dm1.Q2,'REPAIR TABLE '+DM1.Q1.Fields[0].value);
               memo1.lines.add('Tentativa de corrigir Tabela '+
                              DM1.Q1.Fields[0].value + ' retornou - ' +
                              DM1.Q2.Fields[3].value);
               DM1.Pesquisa(DM1.DB1,dm1.Q2,'OPTIMIZE TABLE '+DM1.Q1.Fields[0].value);
               memo1.lines.add('Tentativa de otimizar Tabela '+
                              DM1.Q1.Fields[0].value + ' retornou - ' +
                              DM1.Q2.Fields[3].value);
               DM1.Pesquisa(DM1.DB1,dm1.Q2,'check table ' + DM1.Q1.Fields[0].value);
               memo1.lines.add('Tabela ' + DM1.Q1.Fields[0].value + ' retornou '    + DM1.Q2.Fields[3].value);
               memo1.Tag := memo1.Tag+1;
            until
               (DM1.Q2.Fields[3].value = 'OK') or (memo1.Tag = 4);

            If(memo1.Tag > 0)then
            begin
               If DM1.Q2.Fields[3].value = 'OK' then
                  memo1.lines.add('Tabela ' + DM1.Q1.Fields[0].value + ' corrigida');

            end
            else
            begin
               memo1.lines.add('++++++++++++++++++++++++++++++++++');
               memo1.lines.add('ERRO! Tabela '+
                              DM1.Q1.Fields[0].value +
                              ' não foi corrigida');
               memo1.lines.add('++++++++++++++++++++++++++++++++++');
               Memo1.Lines.Add(DM1.Q1.Fields[0].Value+' - '+
                               DM1.Q2.Fields[3].value);
            end;
            memo1.Tag := 0;
         end;

         DM1.Q1.Next; //FIM DO LOOP QUE VARRE AS TABELAS
      end;
      //FIM DO LOOP QUE VARRE AS BASES
      memo1.lines.add('');
   end;

   if abkp then
      bkp;

   lista.Free;
	DM1.DB1.Disconnect;
   //dm1.Conectar(dm1.DB1);
  // dm1.DB1.Database := bd;
   memo1.lines.savetofile(aqui('logs', 'paradigma_sweep.log'));
   screen.Cursor := 0;
   close;
end;

end.
