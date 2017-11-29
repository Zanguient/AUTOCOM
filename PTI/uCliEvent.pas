unit uCliEvent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, ACBrValidador,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit;

type
  TfrmCliEvent = class(Tfrm)
    btnOK: TcxButton;
    edNome: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edCNPJ: TcxTextEdit;
    cxLabel3: TcxLabel;
    edEnder: TcxTextEdit;
    procedure edCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure btnOKClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliEvent: TfrmCliEvent;

implementation

{$R *.dfm}

uses uDM, uDM_PDV, uAutocomConsts, uFuncoes;

procedure TfrmCliEvent.btnOKClick(Sender: TObject);
begin
   if Trim(edNome.Text) = C_ST_VAZIO then
   begin
      edNome.SetFocus;
      ShowMessage('Informe o Nome/Razão Social do cliente.');
      exit;
   end;

   if not DM.Validar_Doc(AnsiString(edCNPJ.Text), '', docCPF) then
   if not DM.Validar_Doc(AnsiString(edCNPJ.Text), '',docCNPJ) then
   begin
      ShowMessage('Documento inválido.');
      edCNPJ.Clear;
      edCNPJ.SetFocus;
      exit;
   end;

   edCNPJ.Text := String(DM.Validador.Formatar);

   if Trim(edEnder.Text) = C_ST_VAZIO then
   begin
      edEnder.SetFocus;
      ShowMessage('Informe o endereço do cliente.');
      exit;
   end;

   //grava um cliente com id negativo
   DM_PDV.TCli.Append;
   DM_PDV.TCliid.Value             := 0- DM_PDV.TCli.RecordCount;
   DM_PDV.TClirazaosocial.AsString := Trim(edNome.Text);
   DM_PDV.TClicnpj.AsString        := Number(edCNPJ.Text);
   DM_PDV.TClilogradouro.AsString  := Trim(edEnder.Text);
   DM_PDV.TCli.Post;

   DM_PDV.TVenda.Edit;
   DM_PDV.TVendacliente.AsInteger := DM_PDV.TCliid.AsInteger;
   DM_PDV.TVenda.Post;
   btnSair.Click;
end;

procedure TfrmCliEvent.edCNPJKeyPress(Sender: TObject; var Key: Char);
begin
   if not CharInSet(key, ['0'..'9', #9, #13]) then
      key := #0;
end;

procedure TfrmCliEvent.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   if key = VK_F11 then
      btnOK.Click;
end;

end.
