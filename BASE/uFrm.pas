unit uFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RxPlacemnt, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Easysize,
  ACBrBase, ACBrEnterTab, dxSkinsCore, dxSkinCaramel;

type
  Tfrm = class(TForm)
    ini: TFormStorage;
    TPA: TPanel;
    pnlBtnClose: TPanel;
    btnSair: TcxButton;
    pnlBase: TPanel;
    FR: TFormResizer;
    Edit1: TEdit;
    EnterTab: TACBrEnterTab;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm: Tfrm;

implementation

{$R *.dfm}

uses uFuncoes, uMD5Print, uAutocomConsts;

procedure Tfrm.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(ini);
   FreeAndNil(FR);
   FreeAndNil(EnterTab);
   Action := caFree;
   Release;
end;

procedure Tfrm.FormCreate(Sender: TObject);
var
   Lista: TStringList;
begin
   ini.IniFileName := Aqui(C_DAT_FILE, MD5_Str(Application.ExeName + TForm(sender).Name) + '.fr');
   ini.Active := true;
   ini.RestoreFormPlacement;
   FR.InitializeForm;

   if FileExists(Aqui('INI', 'fonte.ini')) then
   begin
      Lista := TStringList.Create;
      Lista.LoadFromFile(Aqui('INI', 'fonte.ini'));
      edit1.Text := lista.Strings[0];
      Lista.Free;
   end;
   TForm(sender).Font.Size := StrToIntDef(Edit1.text,8);
end;

procedure Tfrm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if key = VK_ESCAPE then
      close;
end;

procedure Tfrm.FormResize(Sender: TObject);
begin
   if FR <> nil then
      FR.ResizeAll;
   TForm(sender).Font.Size := StrToIntDef(Edit1.text,8);
end;

procedure Tfrm.FormShow(Sender: TObject);
var
   w,h: integer;
begin
   //obtem as dimensoes reais do form
   w := width;
   h := Height;
   //ajusta as dimensoes em função da tag configurada pelo frmmain.abreform
   width  := width + Trunc((Width*tag)/100);
   Height := Height + Trunc((Height*tag)/100);

   //reajusta se menor que o original
   if width < w then
      width := w;

   if Height < h then
      Height := h;

   //se maior que a tela, reduz em 10% do tam da tela
   if width > Screen.Width then
      Width := Screen.Width - Trunc(((Screen.Width*10)/100));

   if Height > Screen.Height then
      Height := Screen.Height - trunc(((Screen.Height*10)/100));

   TForm(sender).Font.Size := StrToIntDef(Edit1.text,8);
end;

end.
