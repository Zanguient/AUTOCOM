unit frmAjusteScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmAjs = class(TForm)
    rg1: TRadioGroup;
    BV1: TShape;
    procedure rg1Click(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAjs: TfrmAjs;

implementation

{$R *.dfm}

uses uFuncoes;

procedure TfrmAjs.FormClick(Sender: TObject);
begin
   frmAjs.SendToBack;
end;

procedure TfrmAjs.FormDblClick(Sender: TObject);
begin
   close;
end;

procedure TfrmAjs.FormShow(Sender: TObject);
begin
   frmAjs.SendToBack;
end;

procedure TfrmAjs.rg1Click(Sender: TObject);
var
   h,w: integer;
   s: string;
begin
   s := rg1.Items[rg1.ItemIndex];
   w := strToInt(Number(copy(s,1,pos('X', s))));
   h := strToInt(Number(copy(s,pos('X', s),6)));

   bv1.Height := h;
   bv1.Width  := w;
   bv1.Top    := 1;
   bv1.Left   := 1;
end;

end.
