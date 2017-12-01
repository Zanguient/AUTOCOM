unit uBoletoAvulso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, ACBrValidador,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize, Data.DB,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer,
  cxEdit, cxMemo, cxDBEdit, cxGroupBox, cxCalc, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxNavigator, cxDBNavigator,
  cxLabel, cxDBLabel, cxCheckBox, cxRadioGroup, dxStatusBar, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinCaramel, dxSkinsdxStatusBarPainter;

type
  TfrmBoletoAvulso = class(Tfrm)
    cxGroupBox1: TcxGroupBox;
    btnCad: TcxButton;
    cxGroupBox2: TcxGroupBox;
    edcnpj: TcxTextEdit;
    ednome: TcxTextEdit;
    edlogradouro: TcxTextEdit;
    ednmro: TcxTextEdit;
    edbairro: TcxTextEdit;
    edmunic: TcxTextEdit;
    eduf: TcxTextEdit;
    dtVenc: TcxDateEdit;
    edValor: TcxCurrencyEdit;
    edJuros: TcxCurrencyEdit;
    edMulta: TcxCurrencyEdit;
    eddesc: TcxCurrencyEdit;
    edcod1: TcxTextEdit;
    edcod2: TcxTextEdit;
    cxDBSpinEdit1: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBNavigator1: TcxDBNavigator;
    edInstr1: TcxTextEdit;
    edInstr2: TcxTextEdit;
    edInstr3: TcxTextEdit;
    edInstr4: TcxTextEdit;
    edInstr5: TcxTextEdit;
    cxButton2: TcxButton;
    cbPrint: TcxCheckBox;
    dtDoc: TcxDateEdit;
    edCep: TcxTextEdit;
    edInstr6: TcxTextEdit;
    crFormato: TcxRadioGroup;
    Label14: TcxLabel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label13: TcxLabel;
    Label15: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    LbCep: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    cxLabel1: TcxLabel;
    edmail: TcxTextEdit;
    Bar1: TdxStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure btnCadClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure edJurosPropertiesEditValueChanged(Sender: TObject);
    procedure edMultaPropertiesEditValueChanged(Sender: TObject);
    procedure eddescPropertiesEditValueChanged(Sender: TObject);
  private
    procedure PreenchCampos;
    procedure Instruções;
  public
    { Public declarations }
  end;

var
  frmBoletoAvulso: TfrmBoletoAvulso;

implementation

{$R *.dfm}

uses uDM, uFuncoes, uAutocomConsts, uListaEmitentes, uDM_Conn, uDMAux;

procedure TfrmBoletoAvulso.btnCadClick(Sender: TObject);
begin
   btnCad.Tag   := 0;
   frmListaEmit := tfrmListaEmit.Create(self);
   frmListaEmit.ShowModal;

   if(DM.QvwDest_nf.Active) then
   begin
      if(not DM.QvwDest_nf.IsEmpty) then
      begin
         if (MessageBox(0, 'Associar este registro?', C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
         begin
            exit;
         end;

         if Number(DM.QvwDest_nfcidade_cod.AsString) = C_ST_VAZIO then
         begin
            raise Exception.Create('Este cliente não possui município informado.');
         end;

         edcnpj.Text       := Number(DM.QvwDest_nfCNPJ.AsString);
         ednome.Text       := DM.QvwDest_nfRAZAOSOCIAL.AsString;
         edlogradouro.Text := DM.QvwDest_nfLOGRADOURO.AsString;
         edbairro.Text     := DM.QvwDest_nfbairro.AsString;
         ednmro.Text       := DM.QvwDest_nfNMRO.AsString;
         edmunic.Text      := DM.QvwDest_nfCIDADE.AsString;
         eduf.Text         := DM.QvwDest_nfUF.AsString;
         edCep.Text        := DM.QvwDest_nfcep.AsString;
         edmail.Text       := DM.QvwDest_nfemail.AsString;
         dtDoc.Date        := Date;
         //associa a tag do botão para gerar o débito se for cliente...
         DMConn.Q1.Open('select id from cliente where ' + NumberSQL('cnpj') + '=' +
                              QuotedStr(Number(DM.QvwDest_nfCNPJ.AsString)));

         btnCad.Tag := DMConn.Q1.Fields[0].AsInteger;
      end;
   end;
end;

procedure TfrmBoletoAvulso.cxButton2Click(Sender: TObject);
var
   s1,s2,s3: string;
   b: boolean;
begin
   if not DM.QvwBoleto.Active then
      raise Exception.Create('Nenhum boleto selecionado.');

   if DM.QvwBoleto.IsEmpty then
      raise Exception.Create('Nenhum boleto selecionado.');

   if not DM.Validar_Doc(edcnpj.Text,'',docCNPJ) then
   if not DM.Validar_Doc(edcnpj.Text,'',docCPF) then
      raise Exception.Create('CNPJ/CPF inválido.');

   if Trim(ednome.Text) = C_ST_VAZIO then
      raise Exception.Create('NOME COMPLETO/RAZÃO SOCIAL inválido.');

   if Trim(edmunic.Text) = C_ST_VAZIO then
      raise Exception.Create('Município inválido.');

   if not ValidaUF(eduf.Text) then
      exit;

   if (edmail.Enabled)and
      (Trim(edmail.Text) <> C_ST_VAZIO) and
      (not ValidarEMail(edmail.Text)) then
      raise Exception.Create('e-mail inválido.');

   if edValor.Value <=0 then
      raise Exception.Create('Valor incorreto.');

   if dtDoc.Date < date - 100 then
      raise Exception.Create('Data do documento incorreta.');

   if dtVenc.Date <= date then
      raise Exception.Create('Data do vencimento precisa ser maior do que a data atual.');

   if edInstr4.Enabled then
      s1 := edInstr4.Text;

   if edInstr5.Enabled then
      s2 := edInstr5.Text;

   if edInstr6.Enabled then
      s3 := edInstr6.Text;

   DMAux.BoletoReport1.MostrarPreview := True;

   DM.Emitir_Boleto(dtVenc.Date, dtDoc.Date, Date, 'AV-', ednome.Text, edcnpj.Text, edlogradouro.Text, ednmro.Text,
                    edbairro.Text, edmunic.Text, eduf.Text, edCep.Text, edValor.Value, 0, edJuros.Value, eddesc.Value, edMulta.Value,
                    edInstr1.Text, edInstr2.Text, edInstr3.Text, s1, s2, s3,
                    Trim(edmail.Text), cbPrint.Checked, crFormato.ItemIndex
   );

   if btnCad.Tag > 0 then       //gera o debito para o cliente
      DM.Insert_Debito(tdBoleto,
                       btnCad.Tag,
                       DM.QFinan_bol_Emitid.Value,
                       DM.QFinan_bol_Emitnossonmro.AsString,
                       dtDoc.Date,
                       DM.QFinan_bol_Emitdt_vencimento.Value,
                       DM.QFinan_bol_Emitvalor.Value,
                       DM.QFinan_bol_Emitlinha1.AsString
      );

   if(Trim(edmail.Text)<> C_ST_VAZIO)and(MessageBox(0, 'Confirma o envio do boleto ao e-mail informado?', 'ATENÇÃO!', MB_ICONQUESTION or MB_YESNO) = idYes) then
   begin
      repeat
           b :=  NaNet;
           if not b then
           if (MessageBox(0, 'Este terminal não consegue se conectar a internet.'+#13+#10+'Deseja Retentar? (corrija o problema antes de confirmar).', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idNo) then
              raise Exception.Create('Não foi possível enviar o e-mail.');
      until b;

      Bar1.Panels[1].Text := 'Enviando e-mail...';
      DM.QFinan_bol_Emit.Refresh;
      DM.QFinan_bol_Emit.Last;

      try
         DM.Enviar_Boleto(DM.QFinan_bol_Emitid.Value, DM.QFinan_bol_Emitsacado_email.AsString);
         Bar1.Panels[1].Text := 'e-mail enviado.';
      except
         Bar1.Panels[1].Text := 'Erro ao enviar o e-mail.';
      end;
   end;

   ShowMessage('Boleto gerado.');
end;

procedure TfrmBoletoAvulso.cxDBNavigator1ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
   PreenchCampos;
   Instruções;
end;

procedure TfrmBoletoAvulso.eddescPropertiesEditValueChanged(Sender: TObject);
begin
  Instruções;
end;

procedure TfrmBoletoAvulso.edJurosPropertiesEditValueChanged(Sender: TObject);
begin
   Instruções;
end;

procedure TfrmBoletoAvulso.edMultaPropertiesEditValueChanged(Sender: TObject);
begin
  Instruções;
end;

procedure TfrmBoletoAvulso.FormCreate(Sender: TObject);
begin
  inherited;
  CAPTION := 'MÓDULO EMISSOR DE BOLETO AVULSO ' + C_117;
  DM.QvwBoleto.Open;
  PreenchCampos;
  Instruções;
end;

procedure TfrmBoletoAvulso.Instruções;
begin
   edInstr5.Enabled := edJuros.Value = 0;
   edInstr4.Enabled := edMulta.Value = 0;
   edInstr3.Enabled := eddesc.Value = 0;
end;

procedure TfrmBoletoAvulso.PreenchCampos;
begin
   edcod1.Text    := DM.QvwBoletocod_instr1.AsString;
   edcod2.Text    := DM.QvwBoletocod_instr2.AsString;
   edJuros.Value  := DM.QvwBoletopc_juros.Value;
   edMulta.Value  := DM.QvwBoletopc_multa.Value;
   eddesc.Value   := DM.QvwBoletopc_desc.Value;
   dtDoc.Date     := Date;
   edmail.Enabled :=DM.QvwBoletomail_host.AsString <> C_ST_VAZIO;
end;


end.
