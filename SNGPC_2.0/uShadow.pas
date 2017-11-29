unit uShadow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, dxGDIPlusClasses;

type
  Tfrmshadow = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image4: TImage;
    Image3: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmshadow: Tfrmshadow;

implementation

{$R *.dfm}

uses uMain, uAutocomConsts;

procedure Tfrmshadow.FormCreate(Sender: TObject);
begin
   CAPTION := 'MÓDULO SNGPC 2.0' + C_117;
   image2.Picture := Image1.Picture;
   image3.Picture := Image1.Picture;
   image4.Picture := Image1.Picture;
end;

procedure Tfrmshadow.FormResize(Sender: TObject);
begin
   if WindowState = wsNormal then
      Timer1.Enabled := True;
end;

procedure Tfrmshadow.FormShow(Sender: TObject);
begin
   Height := Screen.Height - 100;
   Width  := Screen.Width;
   frmMain.Show;
end;

procedure Tfrmshadow.Timer1Timer(Sender: TObject);
begin
   if frmMain.WindowState <> wsNormal then
      frmMain.WindowState := wsNormal;

   Timer1.Enabled := False;
end;

end.
