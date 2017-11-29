unit uprn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Printers, DB, Menus, ExtCtrls, ufuncoes, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxButtons, RxPlacemnt;

type
  Tfrmprn = class(TForm)
    pnlcom: TPanel;
    pnlPrn: TPanel;
    cmb1: TComboBox;
    cmb2: TComboBox;
    Label1: TLabel;
    ini: TFormStorage;
    btnCancel: TcxButton;
    btnOK: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
  public
    { Public declarations }
  end;

var
  frmprn: Tfrmprn;

implementation

uses uDM, uMD5Print, uAutocomConsts;

{$R *.dfm}

function PrinterPadrao :String;                                                 //informa a impressora padrão do sistema
var
Device : array[0..255] of char;
Driver : array[0..255] of char;
Port : array[0..255] of char;
hDMode : THandle;
begin
Printer.GetPrinter(Device, Driver, Port, hDMode);
Result := Device;
end;

procedure Tfrmprn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //  FreeAndNil(frmprn);
end;

procedure Tfrmprn.FormCreate(Sender: TObject);
begin
   cmb1.Items := Printer.Printers;                                              //lista as impressoras
   ini.inifilename := Aqui(C_DAT_FILE, MD5_Str(Application.ExeName + TForm(sender).Name) + '.prn');
   ini.Active      := True;
   ini.RestoreFormPlacement;
end;

procedure Tfrmprn.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 27 then
      btnCancel.Click;
end;

procedure Tfrmprn.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
       Key := #0;
       SelectNext(ActiveControl, True, True);//Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure Tfrmprn.FormShow(Sender: TObject);
begin
   if cmb1.Text = '' then
      cmb1.Text := PrinterPadrao;
end;

end.
