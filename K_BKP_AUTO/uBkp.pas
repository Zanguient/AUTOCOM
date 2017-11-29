unit uBkp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, shellAPI, ExtCtrls, ComCtrls, RXShell, rxPlacemnt, uFuncoes;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Button1: TButton;
    tray1: TRxTrayIcon;
    ini1: TFormStorage;
    Button2: TButton;
    pg1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    T1: TDateTimePicker;
    T2: TDateTimePicker;
    T3: TDateTimePicker;
    TabSheet2: TTabSheet;
    rg1: TRadioGroup;
    cmb1: TComboBox;
    Panel1: TPanel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    Button3: TButton;
    Memo1: TMemo;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure tray1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
  private
    procedure bkp;
    procedure deleteold(apath:string);
    procedure CopiarZipar(destino:String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  banco: string;
  lastBkp: integer;

const
   Linha1 = '';//'cd C:\Arquivos de programas\MySQL\MySQL Server 4.1\bin';
   Linha2 = 'mysqldump -u root -c --add-drop-table ';

implementation

{$R *.dfm}

function CreateProcessSimple(cmd: string): boolean;
var
  SUInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
begin
  FillChar(SUInfo, SizeOf(SUInfo), #0);
  SUInfo.cb      := SizeOf(SUInfo);
  SUInfo.dwFlags := STARTF_USESHOWWINDOW;
  SUInfo.wShowWindow := SW_HIDE;

  Result := CreateProcess(nil,
                          PChar(cmd),
                          nil,
                          nil,
                          false,
                          CREATE_NEW_CONSOLE or
                          NORMAL_PRIORITY_CLASS,
                          nil,
                          nil,
                          SUInfo,
                          ProcInfo);

  if (Result) then
  begin
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);

    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;
end;

procedure TForm1.bkp;
var
   p1,p2,p3, nome:string;
   a,b,c:boolean;
begin
   if not FileExists(ini1.StoredValue['comando']) then
      raise Exception.Create(ini1.StoredValue['comando'] + ' não encontrado.');

   Memo1.Lines.Clear;

   p1 := edit2.text + '\' + formatdatetime('ddd_hh', now);

   if Trim(edit3.Text) <> EmptyStr then
      p2 := edit3.text + '\' + formatdatetime('ddd_hh', now);

   if Trim(edit4.Text) <> EmptyStr then
      p3 := edit4.text + '\' + formatdatetime('ddd_hh', now);

   forcedirectories(p1);

   if p2 <> '' then
      forcedirectories(p2);

   if p3 <> '' then
      forcedirectories(p3);

   a := DirectoryExists(p1);
   b := DirectoryExists(p2);
   c := DirectoryExists(p3);

   tray1.Hint := 'Paradigma T.I. - Executando Back-up';

   if a then
   begin
      Tray1.Animated := True;
      memo1.Lines.Add('Passo 1 Executando cópia de segurança em ' + p1 );
      Application.ProcessMessages;
      copiarzipar(p1);//'C:\bkp 0\sex');// CreateProcessSimple('cmd.exe /c "' + Linha2 + banco + ' > "' + p1 + '""') ;
      memo1.Lines.Add('Passo 1 Executado');
      Tray1.Animated := False;
   end;

   if b then
   begin
      Tray1.Animated := True;
      memo1.Lines.Add('Passo 2 Executando cópia de segurança em ' + p2);
      Application.ProcessMessages;
      copiarzipar(p2);// CreateProcessSimple('cmd.exe /c "' + Linha2 + banco + ' > "' + p2 + '""') ;
      memo1.Lines.Add('Passo 2 Executado');
      Tray1.Animated := False;
   end;

   if c then
   begin
      Tray1.Animated := True;
      memo1.Lines.Add('Passo 3 Executando cópia de segurança em ' + p3);
      Application.ProcessMessages;
      copiarzipar(p3);  //  CreateProcessSimple('cmd.exe /c "' + Linha2 + banco + ' > "' + p3 + '""') ;
      memo1.Lines.Add('Passo 3 Executado');
      Tray1.Animated := False;
   end;

   Tray1.Icon := Tray1.Icons[1];
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
   T: TTime;
   i, h, m:integer;
   s, ss:string;
begin
   if timer1.Tag = 2 then
      form1.Hide;

   timer1.Enabled := false;

   if rg1.itemindex = 0 then
   begin
      T := now;
      if  T <  t1.Time then
         tray1.Hint := 'Paradigma T.I. - Backup Automático'#13'Próximo as ' +
                      FORMATDATETIME('HH:MM', t1.Time)
      else
      if  T <  t2.Time then
         tray1.Hint := 'Paradigma T.I. - Backup Automático'#13'Próximo as ' +
                       FORMATDATETIME('HH:MM', t2.Time)
      else
      if  T <  t3.Time then
         tray1.Hint := 'Paradigma T.I. - Backup Automático'#13'Próximo as ' +
                       FORMATDATETIME('HH:MM', t3.Time)
      else
      if  T >  t3.Time then
         tray1.Hint := 'Paradigma T.I. - Backup Automático'#13'Próximo amanhã as ' +
                       FORMATDATETIME('HH:MM', t1.Time);

      if (FORMATDATETIME('HH:MM', NOW) = FORMATDATETIME('HH:MM', t1.Time)) or
         (FORMATDATETIME('HH:MM', NOW) = FORMATDATETIME('HH:MM', t2.Time)) or
         (FORMATDATETIME('HH:MM', NOW) = FORMATDATETIME('HH:MM', t3.Time)) then
      begin
         if timer1.Tag = 0 then
         begin
            bkp;
            timer1.Tag := 1;
         end;
      end
      else
         timer1.Tag := 0;
   end
   else
   begin
      if LastBkp = 0 then //faz um bkp ao fechar o form
         bkp;

      inc(LastBkp);

      i := strtoint(copy(cmb1.Text,1,1)) * 3600; //pega o nº de horas
      h := (i-lastbkp)div 3600;
      m := ((i-lastbkp-h)mod 3600)div 60;

      s := inttostr(h) + 'horas ';
      if h = 1  then
         s := inttostr(h) + 'hora '
      else
      if h = 0 then
         s := '';

      ss := 'e ' + inttostr(m) + 'minutos';

      if m = 1  then
         ss := 'e ' + inttostr(m) + 'minuto'
      else
      if m = 0 then
         ss := 'instantes';

      tray1.Hint := 'Paradigma T.I. - Backup Automático'#13'Próximo em ' +
                     s + ss + '.'#13#13#13;

      if LastBkp >= i then
      begin
         LastBkp := 1;
         Bkp;
      end;
   end;
   timer1.Enabled := true;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   ini1.SaveFormPlacement;
   panel1.Hide;
   form1.Hide;
   timer1.Enabled := true;
end;

procedure TForm1.tray1DblClick(Sender: TObject);
begin
   form1.Show;
   timer1.Enabled := false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   timer1.Tag := 2;
   T1.Date := date;
   T2.Date := date;
   T3.Date := date;
   LastBkp := 0;
   ini1.IniFileName := aqui('INI','bkp.ini');
   ini1.Active  := True;
   ini1.RestoreFormPlacement;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   ini1.RestoreFormPlacement;
  // banco := edit1.Text;
   LastBkp := 0;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   bkp;
   ShowMessage('Feito!');
end;

procedure TForm1.rg1Click(Sender: TObject);
begin
   PG1.ActivePageIndex := rg1.ItemIndex;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   timer1.Enabled := false;
   action := cafree;
   release;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   Panel1.Show;
end;

procedure TForm1.CopiarZipar(destino:String);
var
  SR: TSearchRec;
  I: integer;
  Origem, arq_o, arq_d, s: string;
const
    c_path : array[0..10] of string =
    ('NFE\GERADAS\', 'SNGPC\', 'TXT\', 'REL\', 'Arquivos Sintegra\', 'NFE_RECEBIDAS\','SPED FISCAL\','SPED PIS_COFINS\','INI\','FISCO\','DAT\') ;

begin
 //copia dos dados
  origem  := ini1.StoredValue['pathbd'];
  if DirectoryExists(origem) then
  begin
    ForceDirectories(destino + '\tmp');
    memo1.Lines.Add('Listando dados...');
    I := FindFirst(origem + '*.*', faAnyFile, SR);

    while I = 0 do begin
      if (SR.Attr and faDirectory) <> faDirectory then
      begin
        arq_o := origem + SR.Name;
        arq_d := destino + '\tmp\' + SR.Name;

        if not CopyFile(PChar(arq_o), PChar(arq_d), False) then
          memo1.lines.add('Erro ao copiar ' + arq_o + ' para ' + arq_d);
      end;

      I := FindNext(SR);
    end;

    //winrar.exe a "C:\bkp 0\sex.rar" "C:\bkp 0\sex"
    s := '"' + ini1.StoredValue['comando'] + '"';
    memo1.Lines.Add('Compactando arquivo...');

    if pos ('rar',s) > 0 then //a para rar  -a para zip
    begin
        s := s + ' a "' + destino + '-BD.rar"' + ' ' +  '"' + destino + '\tmp\"';
    end
    else
    begin
        s := s + ' -a "' + destino + '-BD.zip"' + ' ' +  '"' + destino + '\tmp\"';
    end;

    CreateProcessSimple(s);
  end;

  for i := 0 to 10 do
  begin
     origem  := Aqui(c_path[i], '');

     //winrar.exe a -r "C:\bkp 0\sex.rar" "C:\bkp 0\sex"
     s := '"' + ini1.StoredValue['comando'] + '"';

     memo1.Lines.Add(c_path[i] + ': Listando dados...');

     memo1.Lines.Add('Compactando arquivo...');

     if pos ('rar',s) > 0 then //a para rar  -a para zip
     begin
         s := s + ' a -r "' + destino + '-' + BuscaTroca(c_path[i],'\','') + '.rar"' + ' ' +  '"' + origem + '*.*"';
     end
     else
     begin
         s := s + ' -a -r "' + destino + '-' + BuscaTroca(c_path[i],'\','') + '.zip"' + ' ' +  '"' + origem + '"*.*';
     end;

     CreateProcessSimple(s);
  end;

  memo1.Lines.Add('Removendo temporários...');

  try
    deleteold(destino + '\tmp');

    RmDir(destino + '\tmp\');
    sleep(200);
    RmDir(destino + '\');
  finally
    ;
  end;

  memo1.Lines.Add('Terminado.');
end;

procedure TForm1.deleteold(apath:string);
var lista: TStringList;
    SearchRec : TSearchRec;
    intControl, FHandle, i : integer;
    data, hoje: tdate;
begin
   if not DirectoryExists(apath) then
      exit;

   intControl := FindFirst( apath + '\*.*', faAnyFile, SearchRec );
   lista      := TStringList.Create;

   if intControl = 0 then
   while (intControl = 0) do
   begin
     lista.Add(apath + '\' + SearchRec.Name );
     intControl := FindNext( SearchRec );
   end;

   FindClose( SearchRec );
   lista.SaveToFile('ultimdel.txt');

   for I := 0 to lista.Count - 1 do
   begin
      if FileExists(lista.Strings[i]) then
      DeleteFile(lista.Strings[i]);
   end;
   lista.Free;
end;

end.
