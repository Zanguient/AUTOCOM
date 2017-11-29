unit uAbreDia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, cxCurrencyEdit, dxStatusBar, cxGroupBox, cxRadioGroup, dximctrl;

type
  TfrmAbreDia = class(Tfrm)
    edValor: TcxCurrencyEdit;
    btnOK: TcxButton;
    cxLabel1: TcxLabel;
    bar1: TdxStatusBar;
    rg1: TcxRadioGroup;
    cxLabel2: TcxLabel;
    edObs: TcxTextEdit;
    pnlF3: TPanel;
    Label1: TLabel;
    cmbMin: TdxImageComboBox;
    procedure rg1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edValorPropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private

  public
     procedure Cfg_Opcoes(itens: string = '0000000');
  end;

var
  frmAbreDia: TfrmAbreDia;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM_PDV, uFuncoes, updv, udm_ini, uDMecf, uDM, uMenu, uPV;

procedure TfrmAbreDia.btnOKClick(Sender: TObject);
begin
   case rg1.ItemIndex of
      0: begin
            if edValor.Value <= 0 then
               edValor.Value := 0.01;
            DM_PDV.Carga_Server;//faz uma tentativa de envio da carga, se houver alguma
            DM_PDV.TECF.Edit;//zera os valores
            //DM_PDV.TECFdt_movi.Value    := Trunc(DM_ECF.Relogio);
            DM_PDV.TECFvr_din.Value     := 0;
            DM_PDV.TECFvr_tkt.Value     := 0;
            DM_PDV.TECFvr_crt.Value     := 0;
            DM_PDV.TECFvr_chq.Value     := 0;
            DM_PDV.TECFvr_fat.Value     := 0;
            DM_PDV.TECFvr_sang.Value    := 0;
            DM_PDV.TECFvr_supri.Value   := 0;
            DM_PDV.TECFvr_nfiscal.Value := 0;
            DM_PDV.TECF.Post;

            frmPDV.ECF.Suprimento(edValor.Value, 'ABERTURA DO DIA');

            DM_PDV.Gravar_Estado_PDV(epLivre);
         end;

      1: begin
            if(DM_INI.ini.StoredValue['operacoes_supervisionadas']) and (not DM_PDV.Permissao) then
               exit;

            if (MessageBox(0, 'Confirma o encerramento do dia?', 'ATENÇÃO!', MB_ICONQUESTION or MB_YESNO) = idNo) then
               exit;

            if (MessageBox(0, 'O encerramento do dia impede o uso do PDV até o dia seguinte.' +
                               C_CRLF + 'Confirma?', 'ATENÇÃO!', MB_ICONQUESTION or MB_YESNO) = idNo) then
               exit;

            DM_ECF.Emitir_RZ(StrToIntDef(cmbMin.Values[cmbMin.ItemIndex], 0));
            DM_PDV.Gravar_Estado_PDV(epDiaFechado);
         end;

      2: begin
            if edValor.Value <= 0 then
               raise Exception.Create('Informe o valor do suprimento.');

            frmPDV.ECF.Suprimento(edValor.Value, AnsiString(edObs.Text));
            DM_PDV.Gravar_Estado_PDV(epLivre);
         end;

      3: begin
            if edValor.Value <= 0 then
               raise Exception.Create('Informe o valor da sangria.');

            if(DM_INI.ini.StoredValue['operacoes_supervisionadas']) and (not DM_PDV.Permissao) then
               exit;

            frmPDV.ECF.Sangria(edValor.Value, AnsiString(edObs.Text));
            DM_PDV.Gravar_Estado_PDV(epLivre);
         end;

      4: begin
            if(DM_INI.ini.StoredValue['operacoes_supervisionadas']) and (not DM_PDV.Permissao) then
               exit;

            if (MessageBox(0, 'Confirma a troca de turno?', 'ATENÇÃO!', MB_ICONQUESTION or MB_YESNO) = idNo) then
               exit;

            DM_ECF.Imprimir_Fechamento(False); //parcial
            frmPDV.ECF.Sangria(DM_PDV.TECFvr_din.Value, 'ENCERRAMENTO DE TURNO');
            DM_PDV.Carga_Server;//envia os dados para o servidor
            DM.Operador.ID := 0;//força ao modo diaini
            DM_PDV.TECF.Edit;//zera os valores
           // DM_PDV.TECFdt_movi.Value    := Trunc(DM_ECF.Relogio);
            DM_PDV.TECFvr_din.Value     := 0;
            DM_PDV.TECFvr_tkt.Value     := 0;
            DM_PDV.TECFvr_crt.Value     := 0;
            DM_PDV.TECFvr_chq.Value     := 0;
            DM_PDV.TECFvr_fat.Value     := 0;
            DM_PDV.TECFvr_sang.Value    := 0;
            DM_PDV.TECFvr_supri.Value   := 0;
            DM_PDV.TECFvr_nfiscal.Value := 0;
            DM_PDV.TECF.Post;
         end;

      5: begin
            if(DM_INI.ini.StoredValue['operacoes_supervisionadas']) and (not DM_PDV.Permissao) then
               exit;
            DM_ECF.Imprimir_Fechamento(False); //parcial
         end;
   end;

   btnSair.Click;
end;

procedure TfrmAbreDia.Cfg_Opcoes(itens: string);
var
   i: integer;
begin
   for i := 1 to 6 do
   begin
      Rg1.Properties.Items[i-1].Tag := StrToInt(itens[i])
   end;
end;

procedure TfrmAbreDia.edValorPropertiesChange(Sender: TObject);
begin
   if edValor.Value > edValor.Properties.MaxValue then
   begin
      ShowMessage('Valor supera o máximo permitido.');
      edValor.Value := 0;
   end;
end;

procedure TfrmAbreDia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    if Assigned(frmMenu) then
    try
       frmMenu.Close;
    finally
       ;
    end;
end;

procedure TfrmAbreDia.FormCreate(Sender: TObject);
begin
   inherited;
   Cfg_Opcoes;

   if frmPDV.i_modoTela = 6 then//moDiaNaoAberto
      Cfg_Opcoes('100000')
   else
   if frmPDV.i_modoTela = 1 then//moLivre
      Cfg_Opcoes('011111');
end;

procedure TfrmAbreDia.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   case key of
      VK_F2: rg1.ItemIndex := 0;
      VK_F3: rg1.ItemIndex := 1;
      VK_F4: rg1.ItemIndex := 2;
      VK_F5: rg1.ItemIndex := 3;
      VK_F6: rg1.ItemIndex := 4;
      VK_F7: rg1.ItemIndex := 5;
      VK_F11: if btnOK.Enabled then btnOK.Click;
   end;
end;

procedure TfrmAbreDia.FormShow(Sender: TObject);
begin
   inherited;
   cmbMin.ItemIndex := 6;
end;

procedure TfrmAbreDia.rg1Click(Sender: TObject);
begin
   if rg1.ItemIndex < 0 then
      exit;

   pnlF3.Visible := rg1.ItemIndex = 1;
   edValor.Clear;
   edValor.Enabled := False;
   btnOK.Enabled   := False;
   edValor.Properties.MaxValue := 0;

   if Rg1.Properties.Items[rg1.ItemIndex].Tag = 0 then
   begin
      ShowMessage('Opção indisponível.');
      exit;
   end;

   if rg1.ItemIndex = 0 then
   begin
      edValor.Properties.MaxValue := DM_INI.ini.StoredValue['max_suprimento_ini'];
      bar1.Panels[0].Text         := 'Suprimento máx: ' + FloatToStrF(edValor.Properties.MaxValue, ffCurrency,15,2);
   end
   else
   if rg1.ItemIndex = 2 then //suprimento
   begin
      edValor.Properties.MaxValue := DM_INI.ini.StoredValue['max_suprimento'];
      bar1.Panels[0].Text         := 'Suprimento máx: ' + FloatToStrF(edValor.Properties.MaxValue, ffCurrency,15,2);
   end
   else
   if rg1.ItemIndex in [1,3] then //fechamento,ou sangria...
   begin
      bar1.Panels[0].Text := 'Lendo valores...';
      Application.ProcessMessages;
      edValor.Properties.MaxValue := DM_ECF.Valor_ECF;
      bar1.Panels[0].Text         := 'Sangria máx: ' + FloatToStrF(edValor.Properties.MaxValue, ffCurrency,15,2);
   end;

   edValor.Enabled := edValor.Properties.MaxValue > 0;
   btnOK.Enabled   := (rg1.ItemIndex in[4,5])or(edValor.Enabled);

   if edValor.Enabled then
      edValor.SetFocus;
end;

end.
