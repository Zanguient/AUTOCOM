unit uCfg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RxPlacemnt, cxGraphics, cxControls,
  cxContainer, cxEdit, Vcl.Menus, cxTextEdit, Vcl.StdCtrls, cxButtons, cxLabel, cxMaskEdit, cxDropDownEdit,
  cxGroupBox, cxCurrencyEdit, Vcl.ExtCtrls, cxRadioGroup, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, cxImageComboBox, dxSkinCaramel;

type
  TfrmCfg = class(TForm)
    ini: TFormStorage;
    cxGroupBox3: TcxGroupBox;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel6: TCategoryPanel;
    RGBalancacheckout: TGroupBox;
    cxLabel25: TcxLabel;
    balanca_baud: TComboBox;
    balanca_porta: TComboBox;
    cxLabel26: TcxLabel;
    balanca_intervalo: TComboBox;
    cxLabel27: TcxLabel;
    balanca_data: TComboBox;
    cxLabel28: TcxLabel;
    balanca_modelo: TComboBox;
    cxLabel29: TcxLabel;
    balanca_handshake: TComboBox;
    cxLabel30: TcxLabel;
    balanca_paridade: TComboBox;
    cxLabel31: TcxLabel;
    balanca_stopbits: TComboBox;
    cxLabel32: TcxLabel;
    balanca_hardflow: TCheckBox;
    balanca_softflow: TCheckBox;
    balanca_timeout: TComboBox;
    cxLabel33: TcxLabel;
    CategoryPanel5: TCategoryPanel;
    CategoryPanel4: TCategoryPanel;
    gp_serv: TGroupBox;
    serv_host: TcxTextEdit;
    lblHost: TcxLabel;
    serv_user: TcxTextEdit;
    cxLabel16: TcxLabel;
    serv_password: TcxTextEdit;
    cxLabel17: TcxLabel;
    serv_database: TcxTextEdit;
    cxLabel21: TcxLabel;
    btnTest: TcxButton;
    gp_term: TGroupBox;
    term_host: TcxTextEdit;
    cxLabel18: TcxLabel;
    term_user: TcxTextEdit;
    cxLabel19: TcxLabel;
    term_password: TcxTextEdit;
    cxLabel20: TcxLabel;
    term_database: TcxTextEdit;
    cxLabel22: TcxLabel;
    Panel1: TPanel;
    servidor_local: TCheckBox;
    terminal: TCheckBox;
    CategoryPanel3: TCategoryPanel;
    GPECF: TGroupBox;
    cxLabel7: TcxLabel;
    porta_serial_ecf_velocidade: TComboBox;
    porta_serial_ecf: TComboBox;
    cxLabel8: TcxLabel;
    ecf_delay_comandos: TComboBox;
    cxLabel9: TcxLabel;
    ecf_modelo: TComboBox;
    cxLabel10: TcxLabel;
    GPPaf: TGroupBox;
    paf_estoque_neg: TCheckBox;
    paf_pre_venda_caixa: TCheckBox;
    paf_tef: TCheckBox;
    paf_controla_foco: TCheckBox;
    cxButton3: TcxButton;
    cxLabel38: TcxLabel;
    ecf_linhas_entre_cupons: TcxCurrencyEdit;
    Panel2: TPanel;
    ecf_rodape_linha1: TcxTextEdit;
    cxLabel12: TcxLabel;
    ecf_rodape_linha2: TcxTextEdit;
    ecf_rodape_linha3: TcxTextEdit;
    Panel4: TPanel;
    url_cniee: TcxTextEdit;
    cxLabel34: TcxLabel;
    GPTEF: TGroupBox;
    cxLabel35: TcxLabel;
    tef_gp: TComboBox;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    tef_sleep: TcxCurrencyEdit;
    tef_sts: TcxCurrencyEdit;
    tef_auto_ativar_gp: TCheckBox;
    CategoryPanel2: TCategoryPanel;
    Panel5: TPanel;
    ccd: TCheckBox;
    consulta_info_cliente: TCheckBox;
    exibir_custo: TCheckBox;
    emitir_fech_caixa: TCheckBox;
    truncar_centavos: TCheckBox;
    GroupBox1: TGroupBox;
    modo_convenio_pharmasys: TCheckBox;
    modo_farmacia_popular: TCheckBox;
    modo_sapataria: TRadioButton;
    modo_otica: TRadioButton;
    modo_farmacia: TRadioButton;
    modo_outros: TRadioButton;
    modo_convenio_epharma: TCheckBox;
    pnl_cpf_farma: TPanel;
    pfp_usuario: TcxTextEdit;
    cxLabel40: TcxLabel;
    pfp_senha: TcxTextEdit;
    cxLabel41: TcxLabel;
    pfp_homologacao: TCheckBox;
    exibir_cod_aux: TCheckBox;
    emitir_cv_fatura: TCheckBox;
    Panel7: TPanel;
    cxLabel6: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel23: TcxLabel;
    tam_cod_balanca: TcxCurrencyEdit;
    prefix_cod_balanca: TcxCurrencyEdit;
    max_desc_total: TcxCurrencyEdit;
    max_desc_item: TcxCurrencyEdit;
    tam_max_cod_item: TcxCurrencyEdit;
    tam_min_cod_item: TcxCurrencyEdit;
    gp1: TGroupBox;
    bloqueio_por_limite: TCheckBox;
    bloqueio_por_vencimento: TCheckBox;
    bloqueio_limite_dias: TcxCurrencyEdit;
    bloqueio_avisar: TCheckBox;
    bloqueio_venc_dias: TcxCurrencyEdit;
    max_suprimento_ini: TcxCurrencyEdit;
    cxLabel24: TcxLabel;
    cxLabel42: TcxLabel;
    max_suprimento: TcxCurrencyEdit;
    cxLabel43: TcxLabel;
    max_quant: TcxCurrencyEdit;
    minutos_inativo: TcxCurrencyEdit;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    CategoryPanel1: TCategoryPanel;
    Panel3: TPanel;
    desconto_sobre_item: TCheckBox;
    desconto_sobre_total: TCheckBox;
    identifica_operador: TCheckBox;
    operacoes_supervisionadas: TCheckBox;
    desconto_venda_prazo: TCheckBox;
    f10_iniciar_venda: TCheckBox;
    Panel6: TPanel;
    aceita_cheque_sem_cadastro: TCheckBox;
    nao_permite_cad_incompleto: TCheckBox;
    processar_cheque: TCheckBox;
    processar_cartao: TCheckBox;
    venda_comissionada: TCheckBox;
    comissao_sobre_lucro: TCheckBox;
    Panel8: TPanel;
    btnEsc: TcxButton;
    btnF11: TcxButton;
    edSenha: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    gerar_gtin: TCheckBox;
    prefix_gtin: TcxCurrencyEdit;
    CategoryPanel7: TCategoryPanel;
    CategoryPanel8: TCategoryPanel;
    cxLabel3: TcxLabel;
    efd_aliq_pis: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    efd_aliq_cofins: TcxCurrencyEdit;
    CategoryPanel9: TCategoryPanel;
    site_nfe: TcxTextEdit;
    cxLabel5: TcxLabel;
    path_nfe_rec: TcxRadioGroup;
    nome_nfe_rec: TcxRadioGroup;
    debug: TCheckBox;
    CategoryPanel10: TCategoryPanel;
    cxLabel39: TcxLabel;
    meses_custo_oper: TcxCurrencyEdit;
    cbAtu: TCheckBox;
    icbSkins: TcxImageComboBox;
    idTerm: TcxTextEdit;
    cxLabel46: TcxLabel;
    CategoryPanel11: TCategoryPanel;
    finan_boleto: TCheckBox;
    finan_carne: TCheckBox;
    finan_relogar: TCheckBox;
    finan_max_parc: TcxCurrencyEdit;
    cxLabel47: TcxLabel;
    Aguarda_ECF: TCheckBox;
    tef_msg_aut: TCheckBox;
    tef_pag_aut: TCheckBox;
    tef_fin_cf_auto: TCheckBox;
    tef_chq_rg: TCheckBox;
    modo_convenio_trn: TCheckBox;
    pnl_trn: TPanel;
    trn_estacao: TcxTextEdit;
    cxLabel48: TcxLabel;
    trn_seq: TcxTextEdit;
    cxLabel49: TcxLabel;
    cxLabel50: TcxLabel;
    trn_server: TcxTextEdit;
    trntimout: TcxTextEdit;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxLabel53: TcxLabel;
    nfmod2_subserie: TcxTextEdit;
    nfmod2_serie: TComboBox;
    ecf_mfd: TCheckBox;
    cxLabel54: TcxLabel;
    dias_fat: TcxCurrencyEdit;
    cxLabel55: TcxLabel;
    fatt: TcxCurrencyEdit;
    cxLabel56: TcxLabel;
    tablet: TCheckBox;
    validarncm: TCheckBox;
    CategoryPanel12: TCategoryPanel;
    rel_path: TcxTextEdit;
    cxLabel57: TcxLabel;
    IBPT_Compacto: TCheckBox;
    pathUnitex: TcxTextEdit;
    cxLabel58: TcxLabel;
    modo_convenio_vl: TCheckBox;
    pnl_VL: TPanel;
    cxLabel61: TcxLabel;
    pathvl: TcxTextEdit;
    naoVendeSemEstoque: TCheckBox;
    procedure btnF11Click(Sender: TObject);
    procedure btnEscClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure desconto_sobre_itemClick(Sender: TObject);
    procedure edSenhaEnter(Sender: TObject);
    procedure edSenhaExit(Sender: TObject);
    procedure edSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure terminalClick(Sender: TObject);
    procedure modo_farmaciaClick(Sender: TObject);
    procedure modo_sapatariaClick(Sender: TObject);
    procedure paf_tefClick(Sender: TObject);
    procedure venda_comissionadaClick(Sender: TObject);
    procedure gerar_gtinClick(Sender: TObject);
    procedure modo_farmacia_popularClick(Sender: TObject);
    procedure icbSkinsPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure prevendaClick(Sender: TObject);
    procedure modo_convenio_trnClick(Sender: TObject);
    procedure CategoryPanel3Expand(Sender: TObject);
  private
    FFirstTime: Boolean;
    procedure GravarCfg;
    procedure LeCfg;
    procedure Configurar;

  public
    { Public declarations }
  end;

var
  frmCfg: TfrmCfg;

implementation

{$R *.dfm}

uses uDM, uAutocomConsts, uFuncoes, udm_ini, dmSkins, uSkinDLL
{$IFDEF PDV}
,uDMecf
{$ENDIF}, uDM_Conn;

{$IFDEF PDV}
procedure ShowAAC; stdcall; external 'LIB\32\aacXE10.dll';
{$ENDIF}

type
  TcxCustomImageComboBoxPropertiesAccess = class(TcxCustomImageComboBoxProperties);

procedure TfrmCfg.CategoryPanel3Expand(Sender: TObject);
begin
   if not GPPaf.Enabled then
   begin
      CategoryPanel3.Collapsed := true;
      raise Exception.Create('Acesso restrito � SoftHouse');
   end;
end;

procedure TfrmCfg.Configurar;
var
   i: integer;
   b: boolean;
begin
   max_desc_item.Enabled          := desconto_sobre_item.Checked;
   max_desc_total.Enabled         := desconto_sobre_total.Checked;
   comissao_sobre_lucro.Enabled   := venda_comissionada.Checked;
   paf_controla_foco.Enabled      := paf_tef.Checked;
   GPTEF.Visible                  := paf_tef.Checked;

   b := modo_sapataria.Checked;

   if not b then
      b := modo_otica.Checked;

   if not b then
      b := modo_farmacia.Checked;

   if b then
      prefix_cod_balanca.Value := 0;

   prefix_cod_balanca.Enabled := not b;
   tam_cod_balanca.Enabled    := prefix_cod_balanca.Enabled;
   prefix_gtin.Enabled        := gerar_gtin.Checked;

   if (modo_farmacia_popular.Checked)or //obriga o modo F10
      (modo_convenio_pharmasys.Checked)or
      (modo_convenio_epharma.Checked) or
      (modo_convenio_vl.Checked) then
   begin
      f10_iniciar_venda.Checked := True;
      f10_iniciar_venda.Enabled := False;
      f10_iniciar_venda.Tag     := 1;
   end
   else
      f10_iniciar_venda.Enabled := true;


   term_host.Enabled     := terminal.Checked;
   term_user.Enabled     := terminal.Checked;
   term_password.Enabled := terminal.Checked;
   term_database.Enabled := terminal.Checked;

   modo_farmacia_popular.Enabled   := modo_farmacia.Checked;
   modo_convenio_pharmasys.Enabled := modo_farmacia.Checked;
   modo_convenio_epharma.Enabled   := modo_farmacia.Checked;
   modo_convenio_vl.Enabled        := modo_farmacia.Checked;
   pathUnitex.Visible              := modo_farmacia.Checked;
   modo_convenio_trn.Enabled       := modo_farmacia.Checked;
   pfp_homologacao.Visible         := modo_farmacia_popular.Checked;
   pnl_cpf_farma.Visible           := modo_farmacia_popular.Checked;
   pnl_trn.Visible                 := modo_convenio_trn.Checked;
   pnl_VL.Visible                  := modo_convenio_vl.Checked;

   for i := 0 to componentcount - 1 do
   begin
      if (Components[i] is TCheckBox)and
         (not (Components[i] as TCheckBox).Enabled) and
         ((Components[i] as TCheckBox).tag = 0)then
         (Components[i] as TCheckBox).Checked := false;
   end;
end;

procedure TfrmCfg.cxButton3Click(Sender: TObject);
begin
   {$IFDEF PDV}
   ShowAAC;
   {$ENDIF}
end;

procedure TfrmCfg.desconto_sobre_itemClick(Sender: TObject);
begin
   Configurar;
end;

procedure TfrmCfg.edSenhaEnter(Sender: TObject);
begin
   KeyPreview := False;
end;

procedure TfrmCfg.edSenhaExit(Sender: TObject);
begin
   KeyPreview := true;
end;

procedure TfrmCfg.edSenhaKeyPress(Sender: TObject; var Key: Char);
var
   i: integer;
   y,m,d,h, n: word;
begin
 if key= #13 then
 begin
   DecodeDate(Date,y,m,d);
   DecodeTime(now,h,n,n,n);

   i := StrToIntDef(edsenha.Text,0);

   GPPaf.Enabled      := i = y+d+m+h;
   ecf_modelo.Enabled := GPPaf.Enabled;

   if not GPPaf.Enabled then
      ShowMessage(C_192);
 end;
end;

procedure TfrmCfg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := cafree;
   Release;
end;

procedure TfrmCfg.FormCreate(Sender: TObject);
var
   i: integer;
begin
   Caption := DM_INI.ini.IniFileName;
   LeCfg;

  for i := 0 to ComponentCount -1 do
  if (Components[i] is TCategoryPanel) then
      (Components[i] as TCategoryPanel).Collapsed := True;
end;

procedure TfrmCfg.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #122 then  //F11
     btnF11.Click
  else
  if key = #27 then
      btnEsc.Click;

end;

procedure TfrmCfg.FormShow(Sender: TObject);
var
  i: Integer;
  icbItm: TcxImageComboBoxItem;
  sl: TStringList;
begin
   inherited;
   {$IFDEF PDV}
   DM_ECF.CallMenuFiscal;
   {$ENDIF}

  Self.FFirstTime := True;
  try
    icbSkins.Properties.Items.Clear;
    sl := GetSkinDLL.GetAvailableSkins;

    if sl <> nil then
    begin
      for i := 0 to Pred(sl.Count) do
      begin
        icbItm := icbSkins.Properties.Items.Add;
        icbItm.Description := sl.Names[i];
        icbItm.Value := sl.ValueFromIndex[i];
      end;
    end;

    icbItm := TcxCustomImageComboBoxPropertiesAccess(icbSkins.Properties).FindItemByText(GetSkinDLL.GetSkinName);

    if Assigned(icbItm) then
      icbSkins.EditValue := icbItm.Value
    else
      icbSkins.ItemIndex := -1;

  finally
    Self.FFirstTime := False;
  end;

  if not DM_INI.INI.Active then
     DM_INI.INI.Active := True;

   DM_INI.INI.SaveFormPlacement;

   if not FileExists(DM_INI.INI.IniFileName) then
      ShowMessage('O aplicativo n�o conseguiu gravar o arquivo de inicializa��o');

  LeCfg;
end;

procedure TfrmCfg.gerar_gtinClick(Sender: TObject);
begin
   Configurar;
end;

procedure TfrmCfg.LeCfg;
var
   i: integer;
begin
   for i := 0 to componentcount - 1 do
   begin
      if (Components[i] is TRadioButton) then
         (Components[i] as TRadioButton).Checked := DM_INI.INI.StoredValue[(Components[i] as TRadioButton).Name]
      else
      if (Components[i] is TCheckBox) then
         (Components[i] as TCheckBox).Checked := DM_INI.INI.StoredValue[(Components[i] as TCheckBox).Name]
      else
      if (Components[i] is TcxCurrencyEdit) then
         (Components[i] as TcxCurrencyEdit).Value := DM_INI.INI.StoredValue[(Components[i] as TcxCurrencyEdit).Name]
      else
      if (Components[i] is TComboBox) then
      begin
         if (Components[i] as TComboBox).tag = 1 then //se tag = 1 pega o item index
            (Components[i] as TComboBox).ItemIndex := DM_INI.INI.StoredValue[(Components[i] as TComboBox).Name]
         else     //senao pega o texto
            (Components[i] as TComboBox).Text := DM_INI.INI.StoredValue[(Components[i] as TComboBox).Name];
      end
      else
      if (Components[i] is TcxTextEdit)and((Components[i] as TcxTextEdit).Tag <> 1) then
         (Components[i] as TcxTextEdit).Text := DM_INI.INI.StoredValue[(Components[i] as TcxTextEdit).Name]
      else
      if (Components[i] is TRadioGroup) then
         (Components[i] as TRadioGroup).ItemIndex := DM_INI.INI.StoredValue[(Components[i] as TRadioGroup).Name]
      else
      if (Components[i] is TcxRadioGroup) then
         (Components[i] as TcxRadioGroup).ItemIndex := DM_INI.INI.StoredValue[(Components[i] as TcxRadioGroup).Name];
   end;
   Configurar;
end;


procedure TfrmCfg.modo_convenio_trnClick(Sender: TObject);
begin
   Configurar;
end;

procedure TfrmCfg.modo_farmaciaClick(Sender: TObject);
begin
   Configurar;
end;

procedure TfrmCfg.modo_farmacia_popularClick(Sender: TObject);
begin
   Configurar;
end;

procedure TfrmCfg.modo_sapatariaClick(Sender: TObject);
begin
   Configurar;
end;

procedure TfrmCfg.paf_tefClick(Sender: TObject);
begin
   Configurar;
end;

procedure TfrmCfg.prevendaClick(Sender: TObject);
begin
   f10_iniciar_venda.Checked := paf_pre_venda_caixa.Checked;
   f10_iniciar_venda.Enabled := not paf_pre_venda_caixa.Checked;
end;

procedure TfrmCfg.terminalClick(Sender: TObject);
begin
   Configurar;
end;

procedure TfrmCfg.venda_comissionadaClick(Sender: TObject);
begin
   Configurar;
end;

procedure TfrmCfg.GravarCfg;
var
   i: integer;
begin
   for i := 0 to componentcount - 1 do
   begin
      if (Components[i] is TCheckBox) then
         DM_INI.INI.StoredValue[(Components[i] as TCheckBox).Name] := (Components[i] as TCheckBox).Checked
      else
      if (Components[i] is TRadioButton) then
         DM_INI.INI.StoredValue[(Components[i] as TRadioButton).Name] := (Components[i] as TRadioButton).Checked
      else
      if (Components[i] is TcxCurrencyEdit) then
         DM_INI.INI.StoredValue[(Components[i] as TcxCurrencyEdit).Name] := (Components[i] as TcxCurrencyEdit).Value
      else
      if (Components[i] is TComboBox) then
      begin
         if (Components[i] as TComboBox).Tag = 1 then //se tag = 1 pega o itemindex
            DM_INI.INI.StoredValue[(Components[i] as TComboBox).Name] := (Components[i] as TComboBox).ItemIndex
         else   //senao pega o texto
            DM_INI.INI.StoredValue[(Components[i] as TComboBox).Name] := (Components[i] as TComboBox).Text;
      end
      else
      if (Components[i] is TcxTextEdit)and((Components[i] as TcxTextEdit).tag <> 1) then
         DM_INI.INI.StoredValue[(Components[i] as TcxTextEdit).Name] := (Components[i] as TcxTextEdit).Text
      else
      if (Components[i] is TRadioGroup) then
         DM_INI.INI.StoredValue[(Components[i] as TRadioGroup).Name] := (Components[i] as TRadioGroup).ItemIndex
      else
      if (Components[i] is TcxRadioGroup) then
         DM_INI.INI.StoredValue[(Components[i] as TcxRadioGroup).Name] := (Components[i] as TcxRadioGroup).ItemIndex;
   end;

   DM_INI.INI.SaveFormPlacement;

   if not FileExists(DM_INI.INI.IniFileName) then
      ShowMessage('O aplicativo n�o conseguiu gravar o arquivo de inicializa��o')
   else
      ShowMessage('Configura��es gravadas.');
end;

procedure TfrmCfg.icbSkinsPropertiesEditValueChanged(Sender: TObject);
begin
  if not Self.FFirstTime then
    GetSkinDLL.SetSkinName(icbSkins.Text);
end;

procedure TfrmCfg.btnEscClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCfg.btnF11Click(Sender: TObject);
begin
   GravarCfg;
end;

procedure TfrmCfg.btnTestClick(Sender: TObject);
var
   old_host: string;
begin
   old_host := DM_INI.INI.StoredValue['serv_host'];
   DM_INI.INI.StoredValue['serv_host'] := serv_host.Text;

   if not DM.Conectar then
   begin
      DM_INI.INI.StoredValue['serv_host'] := old_host;
      ShowMessage(C_150);
   end
   else
   begin
      ShowMessage('Servidor OK.');
      DMConn.DB.Connected := False;
   end;
end;

end.
