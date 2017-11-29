unit uLibera;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  dxGDIPlusClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxImage;

type
  TfrmLibera = class(TForm)
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    Label4: TLabel;
    Shape2: TShape;
    Shape1: TShape;
    Label3: TLabel;
    Label2: TLabel;
    OK: TButton;
    cxImage1: TcxImage;
    procedure e1Change(Sender: TObject);
    procedure e2Change(Sender: TObject);
    procedure e3Change(Sender: TObject);
    procedure e4Change(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    function Validade(valor: string): integer;
    procedure Verifica;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLibera: TfrmLibera;

implementation

{$R *.dfm}

uses uFuncoes, uMD5Print, uDM, uAutocomConsts;

procedure TfrmLibera.Verifica;
var
   i:integer;
   cod, inicio, meio, fim, cont, data: string;
begin
   Log('softlock', 'LIBERAÇÃO MANUAL', 'INICIO...');
   i := validade(e1.Text + e2.Text + e3.Text + e4.Text);

   if i = -1 Then
   begin
     e1.Clear;
     e2.Clear;
     e3.Clear;
     e4.Clear;
     e1.SetFocus;
     Log('softlock', 'LIBERAÇÃO MANUAL', 'Código inválido');
     exit;
   end;

   cod  := FormatFloat('00', i);
   cont := MD5_Str(e1.Text + e2.Text + e3.Text + e4.Text);
   data := MD5_Str(DateToStr(Date));

   //insere os dias restantes na string cont
   Log('softlock', 'LIBERAÇÃO MANUAL', 'Atualizando registro...');
   meio   := Copy(MD5_Str(cont), 1, 26);
   inicio := Copy(MD5_Str(meio), 1, 2);
   fim    := Copy(MD5_Str(cont), 1, 2);
   cont   := Concat(inicio, copy(cod, 1, 1), meio, copy(cod, 2, 1), fim);

   DM.DB.execSQL('update valida set cont=' + Texto_Mysql(cont) + ', acesso='  + Texto_Mysql(data) + ';');
   Log('softlock', 'LIBERAÇÃO MANUAL', 'Registro atualizado...');
   Log('softlock', 'LIBERAÇÃO MANUAL', 'FIM...');
   close;
end;

Function TfrmLibera.Validade(valor:string):integer; //valor = nome da aplicação...
var cod, val, dias:string;
begin
   cod  := copy(Valor,1,6);
   cod  := inttohex(StrToInt('$'+ cod) - 3023456,6);
   val  := copy(Valor,8,5);
   dias := copy(Valor,7,1) + copy(Valor, length(Valor),1);

   If strtoint('$' + val) = date then
   begin
      showmessage('Codigo válido até '+
      datetostr(date + strtoint('$' + dias) )+
      ' - ' + inttostr(strtoint('$' + dias))+
      'dias'
      );
      result := StrtoInt('$' + dias);
   end

   else

   begin
      showmessage('Código incorreto!');
      result:= -1;
   end;
end;

procedure TfrmLibera.e1Change(Sender: TObject);
begin
   if length(TEdit(sender).text)= 4 then
      e2.SetFocus;
end;

procedure TfrmLibera.e2Change(Sender: TObject);
begin
   if length(TEdit(sender).text)= 4 then
      e3.SetFocus;
end;

procedure TfrmLibera.e3Change(Sender: TObject);
begin
   if length(TEdit(sender).text)= 4 then
      e4.SetFocus;
end;

procedure TfrmLibera.e4Change(Sender: TObject);
begin
   if length(TEdit(sender).text)= 1 then
      Verifica;
end;

procedure TfrmLibera.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmLibera.FormCreate(Sender: TObject);
begin
   if not fileexists(DirWindowsSystem + '\koplin.dll') then
   begin
      FatalAppExit(0, 'Uso não autorizado');
   end;

end;

procedure TfrmLibera.FormShow(Sender: TObject);
begin
   if FileExists(Aqui(C_DAT_FILE, 'PTI2.PNG')) then
      cxImage1.Picture.LoadFromFile(Aqui(C_DAT_FILE, 'PTI2.PNG'));
   e1.SetFocus;
end;

procedure TfrmLibera.OKClick(Sender: TObject);
begin
   Close;
end;

end.
