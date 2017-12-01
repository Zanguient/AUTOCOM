unit uManiDest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxRadioGroup, cxLabel, cxTextEdit, cxMaskEdit, pcnAuxiliar, pcnconversao, System.UITypes,
  dxSkinsCore, dxSkinCaramel;

type
  TfrmManiDest = class(Tfrm)
    gbOpc: TcxRadioGroup;
    btnEnviar: TcxButton;
    edChave: TcxMaskEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    lblcnpj: TcxLabel;
    cxLabel4: TcxLabel;
    lblnmro: TcxLabel;
    procedure gbOpcClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure edChavePropertiesChange(Sender: TObject);
  private
    procedure DecodificaChaveNFe;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManiDest: TfrmManiDest;

implementation

{$R *.dfm}

uses udmnfe, uMain, uFuncoes, uDM;

procedure TfrmManiDest.DecodificaChaveNFe;
var
   s: string;
begin
   s := Number(edChave.Text);

  if s = C_ST_VAZIO then
   begin
      edchave.SetFocus;
      raise Exception.Create('Chave da NF-e é obrigatória.');
   end
   else
   if not ValidarChave('NFe' + s) then
   begin
      edchave.SetFocus;
      raise Exception.Create('Chave da NF-e Incorreta.');
   end;

   lblcnpj.Caption := Formatar_CNPJ_CPF(Copy(s,7,14));
   lblnmro.Caption := Copy(s,26,9);
   Application.ProcessMessages;
end;

procedure TfrmManiDest.edChavePropertiesChange(Sender: TObject);
begin
   if length(Number(edChave.Text))>= 44 then
       DecodificaChaveNFe;
end;

procedure TfrmManiDest.btnEnviarClick(Sender: TObject);
begin
  // DecodificaChaveNFe;
   DM.QEmpresa.Open;
   frmMain.mmResp.Clear;
   DM_NFE.ConfigurarNFe;

   if not frmMain.ValidarCertificado then
      exit;

  DM_NFE.NFe1.EventoNFe.Evento.Clear;

  with DM_NFE.NFe1.EventoNFe.Evento.Add do
  begin
     infEvento.chNFe               := Number(edChave.Text);
     infEvento.CNPJ                := Number(DM.QEmpresacnpj.AsString);
     infEvento.dhEvento            := now;
     infEvento.tpEvento            := TpcnTpEvento(gbOpc.Properties.Items[gbOpc.ItemIndex].Value);
  end;

  DM_NFE.NFe1.EnviarEvento(1);

  with frmMain do
  begin
     mmResp.Lines.Add('            EVENTO MANIFESTAÇÃO DESTINATÁRIO');
     mmResp.Lines.Add('--------------------------------------------------------');
     mmResp.Lines.Add('         Código: ' + IntToStr(DM_NFE.NFe1.WebServices.EnvEvento.cStat));
     mmResp.Lines.Add('        Retorno: ' + DM_NFE.NFe1.WebServices.EnvEvento.xMotivo);
     mmResp.Lines.Add('     Cabeçalho : ' + DM_NFE.NFe1.WebServices.EnvEvento.CabMsg);
     mmResp.Lines.Add('      Ambiente : ' + TpAmbToStr(DM_NFE.NFe1.WebServices.EnvEvento.TpAmb));
     mmResp.Lines.Add(' Versão. Serv.: ' + DM_NFE.NFe1.WebServices.EnvEvento.VersaoServico);
     mmResp.Lines.Add(' Código retorno: ' + IntToStr(DM_NFE.NFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat));
     mmResp.Lines.Add('');
     mmResp.Lines.Add(AnsiUpperCase(DM_NFE.NFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo));
     mmResp.Lines.Add('');
     mmResp.Lines.Add('     Protocolo : ' + DM_NFE.NFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);
  end;

  DM_NFE.Status(False, '', '');

  ShowMessage(AnsiUpperCase(DM_NFE.NFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo));

  if DM_NFE.NFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 135 then
  begin
    DM.ExecSQL('update nf_chave_entr set manif_dest_cod=' +
                  Texto_Mysql(gbOpc.Properties.Items[gbOpc.ItemIndex].Value) +
                  ', manif_dest_data=curdate() where chave=' + Texto_Mysql(Number(edChave.Text)) + ';'
    );

    if MessageDlg('Deseja imprimir o evento?', mtWarning, [mbYes, mbNo], 0) = mrYes then
       DM_NFE.NFe1.ImprimirEvento;
  end;
end;

procedure TfrmManiDest.gbOpcClick(Sender: TObject);
begin
   btnEnviar.Enabled := gbOpc.ItemIndex >=0;
end;

end.
