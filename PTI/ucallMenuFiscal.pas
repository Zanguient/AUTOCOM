unit ucallMenuFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TfrmCall_MenuFiscal = class(Tfrm)
    procedure btnSairMouseEnter(Sender: TObject);
    procedure btnSairMouseLeave(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure pnlBtnCloseMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCall_MenuFiscal: TfrmCall_MenuFiscal;

implementation

{$R *.dfm}

uses uMenuFisc {$IFDEF PDV} ,uPesqCli, uFPag, uMenu, uCfg, updv {$ENDIF},
  uDM_PDV, uDMecf;

procedure TfrmCall_MenuFiscal.btnSairClick(Sender: TObject);
begin
   {$IFDEF PDV}
   if Assigned(frmPesqCli) then
      frmPesqCli := nil;

   if Assigned(frmFPgto) then
      frmFPgto := nil;

   if Assigned(frmMenu) then
      frmMenu := nil;

   if Assigned(frmCfg) then
      frmCfg := nil;
   {$ENDIF}

   frmMenuFisc := TfrmMenuFisc.Create(Self);
   //var para config menufiscal
   {$IFDEF PDV}
 //  if not frmPDV.ECF.Ativo then
   frmPDV.ECF.Ativo := False;

   try
      frmMenuFisc.ECF_OK    := DM_ECF.ECF_Ativar;
      frmPDV.ECF.Ativo      := True;
   except
      ;
   end;
   frmMenuFisc.ECF_Ativo := frmPDV.ECF.EmLinha;
   {$ELSE}
   frmMenuFisc.ECF_Ativo := False;
   {$ENDIF}

   frmMenuFisc.ShowModal;
  {$IFDEF PDV}
   frmPDV.ECF.Ativo := False;

   if not DM_ECF.ECF_Ativar then
   begin
      DM_ECF.st_Msg := 'Última tentativa de comunicação com o ECF falhou.';
      DM_PDV.Gravar_Estado_PDV(epDesativado);
      frmPDV.Verificar_Status_PDV(true);
      exit;
   end;
   {$ENDIF}
   frmMenuFisc := nil;
end;

procedure TfrmCall_MenuFiscal.btnSairMouseEnter(Sender: TObject);
begin
   AlphaBlendValue := 255;
end;

procedure TfrmCall_MenuFiscal.btnSairMouseLeave(Sender: TObject);
begin
   AlphaBlendValue := 140;
end;

procedure TfrmCall_MenuFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure TfrmCall_MenuFiscal.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // inherited;

end;

procedure TfrmCall_MenuFiscal.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure TfrmCall_MenuFiscal.pnlBtnCloseMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
