unit uCompressor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ListExe: TCheckListBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Panel3: TPanel;
    Memo2: TMemo;
    Memo1: TMemo;
    edbd: TEdit;
    edtab: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edcol: TEdit;
    Label4: TLabel;
    edtip: TEdit;
    Label5: TLabel;
    eddef: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure Comprimir;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uFuncoes;

procedure TForm1.Button1Click(Sender: TObject);
begin
   Comprimir;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   memo1.Lines.SaveToFile(Aqui('FTP_UPLOAD',FormatDateTime('yymmddhhnnss', now)+ '.sql'));
   sleep(2000);
   ShowMessage('Gravado');
end;

procedure TForm1.Button3Click(Sender: TObject);
var
   s: string;
begin
   s := ('DROP PROCEDURE IF EXISTS ajuste;'#13) +
        ('CREATE PROCEDURE ajuste()'#13'BEGIN'#13) +
        ('IF NOT EXISTS'#13'(SELECT * FROM information_schema.COLUMNS'#13'WHERE TABLE_SCHEMA=' +
        QuotedStr('%BD') + ' AND TABLE_NAME=' +
        QuotedStr('%TAB') + ' AND COLUMN_NAME=' +
        QuotedStr('%COL') + ')'#13'THEN'#13) +
        ('ALTER TABLE %TAB ADD COLUMN %COL %TIP %DEF;'#13'end if;'#13'END;'#13'call ajuste;');

   s := FindReplaceStr('%BD', edbd.Text, s);
   s := FindReplaceStr('%TAB', edtab.Text, s);
   s := FindReplaceStr('%COL', edcol.Text, s);
   s := FindReplaceStr('%TIP', edtip.Text, s);
   s := FindReplaceStr('%DEF', eddef.Text, s);

   memo1.Lines.Text := s;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   DeleteFiles(Aqui('FTP_UPLOAD',''), '*.sql');
end;

procedure TForm1.Comprimir;
var
   Comando,Origem, Dest, Arq, s: string;
   i: integer;
begin
  Origem := Aqui('','');
  Dest   := Aqui('FTP_UPLOAD','');
  DeleteFiles(Dest,'*.exe');
  DeleteFiles(Dest,'*.dll');

  for i := 0 to ListExe.Items.Count -1 do
  begin
     if ListExe.Checked[i] then
     begin
        Arq  := Origem + ListExe.Items[i];
        memo2.Lines.Text := 'Iniciando compressão de ' + Arq;
        Application.ProcessMessages;
        Comando := 'upx ' + QuotedDuoStr(Arq);
        Log('compressor','COMANDO', COMANDO);
        ExecFileWaiting(Comando, 0);
        memo2.Lines.Add('Gerando arquivo de Upload...');
        s := Dest + AnsiLowerCase(Copy(ListExe.Items[i],1,pos('.',ListExe.Items[i])-1)) + '_' +
                                  FormatDateTime('yymmddhhnnss', now) +
                                  Copy(ListExe.Items[i],pos('.',ListExe.Items[i]),4);
        CopyFile(PWideChar(Arq),
                 PWideChar(s),
                 False);
     end;
  end;
  ShowMessage('Pronto.');
end;

procedure TForm1.FormCreate(Sender: TObject);
var
   i: integer;
   l: TStringList;
begin
   l := Arquivos('*.exe');
   for i := 0 to Pred(l.Count) do
      ListExe.Items.Append(l.Strings[i]+'.exe');// := Arquivos('*.exe');
   l := Arquivos('*.dll');
   for i := 0 to Pred(l.Count) do
      ListExe.Items.Append(l.Strings[i]+'.dll');
end;

end.
