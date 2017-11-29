unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Button3: TButton;
    RG1: TRadioGroup;
    Label1: TLabel;
    Button4: TButton;
    cb1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RG1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  codigo:string;
implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var s:string; i:integer;
begin
   if cb1.Checked then
   begin
      edit1.Text:='@+%39*%#(+)X0';
      label1.Caption:='@+%3-9*%#-(+)X-0';
      exit;
   end;

   codigo := edit1.Text;

   i := 30;

   case rg1.ItemIndex of
      0: i := 30;
      1: i := 60;
      2: i := 90;
   end;

   s              := codigo;
   s              := inttohex(StrToInt('$'+s)+3023456,6);
   edit1.text     := inttohex(trunc(date),5);
   edit1.text     := s + copy(inttohex(i,2),1,1) + edit1.text +
                     copy(inttohex(i,2),2,1);
   Label1.Caption := copy(edit1.text,1,4)+'-' + copy(edit1.text,5,4) + '-' +
                     copy(edit1.text,9,4) + '-' + copy(edit1.text,13,4);
end;

procedure TForm1.Button2Click(Sender: TObject);
var cod, val, dias:string;
begin
   button1.Click;
   cod  := copy(edit1.Text,1,6);
   cod  := inttohex(StrToInt('$'+cod) - 3023456,6);
   val  := copy(edit1.Text,8,5);
   dias := copy(edit1.Text,7,1) + copy(edit1.Text,length(edit1.Text),1);

   If strtoint('$'+val)=date then
      showmessage('Codigo válido até '+datetostr(date + strtoint('$'+dias) )+ ' - '+inttostr(strtoint('$'+dias))+ 'dias')
   else
      showmessage(cod+'-'+val+' - '+dias +' - Código incorreto '+datetostr(date + strtoint('$'+dias) )+ ' '+inttostr(strtoint('$'+dias)));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   close;
end;

procedure TForm1.RG1Click(Sender: TObject);
begin
   edit1.Text := codigo;
   edit1.SetFocus;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   form2:=TForm2.Create(self);
   form2.showmodal;
end;

end.
