unit uMenuConv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TfrmMenu_Convenio = class(Tfrm)
    btnF2: TcxButton;
    btnF3: TcxButton;
    btnF4: TcxButton;
    btnF8: TcxButton;
    btnF5: TcxButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu_Convenio: TfrmMenu_Convenio;

implementation

{$R *.dfm}

uses udm_ini;

procedure TfrmMenu_Convenio.FormCreate(Sender: TObject);
begin
   inherited;
   btnF3.Visible := DM_INI.ini.StoredValue['modo_convenio_trn'];
   btnF4.Visible := DM_INI.ini.StoredValue['modo_farmacia_popular'];
end;

procedure TfrmMenu_Convenio.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F2   : if btnF2.Visible then btnF2.Click;
      VK_F3   : if btnF3.Visible then btnF3.Click;
      VK_F4   : if btnF4.Visible then btnF4.Click;
      VK_F8   : if btnF8.Visible then btnF8.Click;
   end;
end;

end.
