unit ucce;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, Vcl.DBCtrls,
  Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.ExtCtrls, Easysize, ACBrBase, pcnConversao,
  ACBrEnterTab, RxPlacemnt, uAutocomConsts, udmnfe, uFuncoes, Data.DB, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinCaramel;

type
  Tfrmcce = class(Tfrm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ednmro: TCurrencyEdit;
    Panel3: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label4: TLabel;
    DBText3: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    Label7: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    edserie: TCurrencyEdit;
    DSNF: TDataSource;
    DSNFDet: TDataSource;
    Label8: TLabel;
    DBText6: TDBText;
    Label9: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    Label10: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    Label11: TLabel;
    btnEmitir: TcxButton;
    D1: TcxDateEdit;
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edserieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEscClick(Sender: TObject);
    procedure btnEmitirClick(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  frmcce: Tfrmcce;

implementation

{$R *.dfm}

uses uMain, uDM, uDM_Conn;

procedure Tfrmcce.btnEmitirClick(Sender: TObject);
VAR
  S: STRING;
  i: integer;
begin
  if length(Trim(memo1.Text)) < 15 then
    raise Exception.Create('O texto deve conter ao menos 15 caracteres.');

  DMConn.Q1.OPen('select count(*) from nf_cce where nf="' + DM.QNFid.AsString + '"');

  i :=  DMConn.Q1.Fields[0].AsInteger + 1;

  if i > 20 then
     raise Exception.Create('O limite de 20 eventos para esta NF foi atingido.');

   frmMain.mmResp.Clear;
   DM_NFE.ConfigurarNFe;

   if not frmMain.ValidarCertificado then
      exit;

  DM_NFE.NFe1.EventoNFe.Evento.Clear;

  with DM_NFE.NFe1.EventoNFe.Evento.Add do
  begin
     infEvento.chNFe               := Number(DM.QNF_Chavechave.AsString);
     infEvento.CNPJ                := Number(DM.QNFEmit_CNPJCPF.AsString);
     infEvento.dhEvento            := D1.Date;
     infEvento.tpEvento            := teCCe;
     infEvento.nSeqEvento          := i;
     infEvento.detEvento.xCorrecao := Memo1.Text;
  end;

  DM_NFE.NFe1.EnviarEvento(1);

  with frmMain do
  begin
     mmResp.Lines.Add('            EVENTO CARTA DE CORREÇÃO CC-e');
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
    DM.QNF_cce.Insert;
    DM.QNF_ccenf.Value := DM.QNFid.Value;
    DM.QNF_cceseq.Value := i;
    DM.QNF_ccetexto.AsString := Memo1.Text;
    DM.QNF_cce.Post;

    if MessageDlg('Deseja imprimir a CCE?', mtWarning, [mbYes, mbNo], 0) = mrYes then
       DM_NFE.NFe1.ImprimirEvento;
  end;
end;

procedure Tfrmcce.btnEscClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcce.edserieKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if KEY = 13 then
   DM.QNF.Open('select * from nf where Ide_nNF=' + Texto_Mysql(ednmro.AsInteger) +
               ' and Ide_serie=' + Texto_Mysql(edserie.AsInteger)
   );
end;


procedure Tfrmcce.Memo1Change(Sender: TObject);
begin
   btnEmitir.Enabled := (DM.QNFstatus.Value in[0,6,8])and
                        (DM.QNFIde_dEmi.Value >= (DATE - 180))and
                        (Memo1.Text <> C_ST_VAZIO);
end;

procedure Tfrmcce.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   d1.Date := now;
end;

end.
