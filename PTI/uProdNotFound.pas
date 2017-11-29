unit uProdNotFound;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls,
  cxContainer, cxEdit, cxLabel, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TfrmProdNotFound = class(Tfrm)
    cxLabel1: TcxLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdNotFound: TfrmProdNotFound;
   som: string;

implementation

{$R *.dfm}

uses uAutocomConsts, uFuncoes, MMSystem;

procedure TfrmProdNotFound.FormCreate(Sender: TObject);
begin
   inherited;
   som := Aqui(C_INI_FILE,'beep.wav');
   try
      SndPlaySound(PWideChar(som), SND_ASYNC);
   except
      ;
   end;
end;

procedure TfrmProdNotFound.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_SPACE then
     btnSair.Click;
end;

end.
