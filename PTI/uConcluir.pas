unit uConcluir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, uclasse,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxLabel,cxCheckBox, Vcl.DBCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxImageComboBox, cxRadioGroup,
  dxGDIPlusClasses, cxImage, ACBrDevice, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmConcluir = class(Tfrm)
    btnF11: TcxButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TcxLabel;
    grd1: TcxGrid;
    tbv: TcxGridDBTableView;
    grd1Level1: TcxGridLevel;
    cxLabel4: TcxLabel;
    lblTotalPagar: TcxLabel;
    cxLabel2: TcxLabel;
    LblDif: TcxLabel;
    LblTroco: TcxLabel;
    Lbt1: TcxLabel;
    btnf3: TcxButton;
    btnf4: TcxButton;
    btnF5: TcxButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cbf2: TcxCheckBox;
    cbF6: TcxCheckBox;
    cxLabel3: TcxLabel;
    DSFPag: TDataSource;
    tbvnome: TcxGridDBColumn;
    tbvvalor: TcxGridDBColumn;
    lblVrCompra: TcxLabel;
    cxLabel1: TcxLabel;
    Panel6: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText3: TDBText;
    DBText2: TDBText;
    DBText1: TDBText;
    mmRel: TMemo;
    TFPag: TFDMemTable;
    TFPagid: TIntegerField;
    TFPagnome: TStringField;
    TFPagtipo: TStringField;
    TFPagvalor: TCurrencyField;
    TFPagparcelas: TIntegerField;
    TFPagecf: TStringField;
    Panel7: TPanel;
    Label1: TLabel;
    cmbOperadora: TcxImageComboBox;
    rbDeb: TcxRadioButton;
    rbCre: TcxRadioButton;
    pnlFim: TPanel;
    cxImage1: TcxImage;
    cxLabel5: TcxLabel;
    lblStatus: TcxLabel;
    TmConcluir: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TFPagAfterScroll(DataSet: TDataSet);
    procedure TFPagBeforePost(DataSet: TDataSet);
    procedure tbvEditKeyPress(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit;
      var Key: Char);
    procedure tbvEditKeyUp(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit;
      var Key: Word; Shift: TShiftState);
    procedure TFPagAfterPost(DataSet: TDataSet);
    procedure btnF11Click(Sender: TObject);
    procedure btnf3Click(Sender: TObject);
    procedure btnF5Click(Sender: TObject);
    procedure btnf4Click(Sender: TObject);
    procedure TmConcluirTimer(Sender: TObject);
  private
    procedure Load_FPag(filtro: string='-');
    procedure FloatToLbl(lbl: TcxLabel; valor: Currency);
    function lblToFloat(lbl: TcxLabel): Currency;
    function Mostra: boolean;
    function ChecaValores: boolean;
  public
    Total: TTotal;
    TemDescontoItem: boolean;

    procedure Cancelar;
  end;

var
  frmConcluir: TfrmConcluir;

implementation

{$R *.dfm}

uses uAutocomConsts, udm_ini, uDM_PDV, uDMecf, updv, uFuncoes, uMD5Print, uDM, uPesqCli, uCliEvent, utrn,
  ucallMenuFiscal;


procedure TfrmConcluir.btnF11Click(Sender: TObject);
var
   cupom_fatura, rec_entrega, cupom_vinculado: TStringList;
   i: integer;
   b, tefok: boolean;
begin
   if (panel7.Visible) then
   begin
      if (not rbDeb.Checked) and(not rbCre.Checked) then
      begin
         ShowMessage('Informe se débito ou crédito.');
         exit;
      end;

      if(cmbOperadora.ItemIndex <0){and(DM_INI.ini.StoredValue['tef_gp'] = 'Nenhum')} then
      begin
         ShowMessage('Informe a operadora do cartão.');
         exit;
      end;
   end;

   frmPDV.ECF.InfoRodapeCupom.Imposto.ValorAproximadoFederal   := Total.IBPTaxF;  // informar o valor aproximado calculado a partir dos itens
   frmPDV.ECF.InfoRodapeCupom.Imposto.ValorAproximadoEstadual  := Total.IBPTaxE;  // informar o valor aproximado calculado a partir dos itens
   frmPDV.ECF.InfoRodapeCupom.Imposto.ValorAproximadoMunicipal := Total.IBPTaxM;  // informar o valor aproximado calculado a partir dos itens
   frmPDV.ECF.InfoRodapeCupom.Imposto.Fonte                    := DM_PDV.TIBPTaxfonte.AsString + '(' + DM_PDV.TIBPTaxchave.AsString + ')'; // informar a fonte de onde veio a informação para calculo e a Chave se vier da tabela do IBPT
   frmPDV.ECF.InfoRodapeCupom.Imposto.ValorAproximado          := Total.IBPTaxF + Total.IBPTaxE + Total.IBPTaxM;
   frmPDV.ECF.InfoRodapeCupom.Imposto.ModoCompacto             := DM_INI.ini.StoredValue['IBPT_Compacto']; //impressão em apenas duas linhas;

   frmPDV.ECF.InfoRodapeCupom.MinasLegal              := True;
   frmPDV.ECF.BloqueiaMouseTeclado                    := False;//este dois devem ser false para que o TEF assuma
   frmPDV.ECF.ReTentar                                := False;//
   btnF11.Enabled                                     := False;

   if DM_PDV.TVendaserie_d.Value > 0 then
      frmPDV.ECF.InfoRodapeCupom.NF := Format('%.6d', [DM_PDV.TVendaserie_d.AsInteger]);

   if Number(DM_PDV.TClicnpj.AsString) <> C_ST_VAZIO then
   begin
      frmPDV.ECF.IdentificaConsumidor(FormataCNPJ_CPF(Number(DM_PDV.TClicnpj.AsString)),
                                      DM_PDV.TClirazaosocial.AsString,
                                      DM_PDV.TClilogradouro.AsString + ' ' +
                                      DM_PDV.TClinmro.AsString
      );
   end
   else
   if (DM_INI.ini.StoredValue['modo_convenio_vl'])and(assigned(frmPDV.vidaLink)) then
   if frmPDV.vidaLink.Comprovante.Text <> EmptyStr then
   begin
      frmPDV.ECF.IdentificaConsumidor('-', frmPDV.vidaLink.Consulta.NomeConveniado, '-');
   end;

   //cupom de fatura

   if (Total.Fat>0)and(DM_INI.ini.StoredValue['emitir_cv_fatura'])and(FileExists(Aqui(C_TXT_FILE, 'cd.txt'))) then
   begin
      cupom_fatura := TStringList.Create;
      cupom_fatura.LoadFromFile(Aqui(C_TXT_FILE, 'cd.txt'));
      FindReplace('$nome',DM_PDV.TClirazaosocial.AsString + ' - Doc: ' + DM_PDV.TClicnpj.AsString, cupom_fatura);
      FindReplace('$logradouro',DM_PDV.TClilogradouro.AsString + ' ' + DM_PDV.TClinmro.AsString, cupom_fatura);
      FindReplace('$cidade',DM_PDV.TClicidade.AsString + '/' + DM_PDV.TCliuf.AsString, cupom_fatura);
      FindReplace('$cf', DM_PDV.TVendacoo.AsString, cupom_fatura);
      FindReplace('$data',FormatDateTime('dd/mm/yyyy', DM_PDV.TVendadata.AsDateTime), cupom_fatura);
      FindReplace('$valor',FloatToStrF(Total.Fat,ffCurrency,15,2), cupom_fatura);
   end;

   //cupom vinculado a venda

   if DM_PDV.TVendacv.AsString <> C_ST_VAZIO then
   begin
      cupom_vinculado      := TStringList.Create;
      cupom_vinculado.Text := DM_PDV.TVendacv.AsString;
   end;

   //recibo entrega

   if (DM_PDV.TCliid.AsInteger > 1)and(cbf6.Checked) then
   begin
      rec_entrega := TStringList.Create;
      rec_entrega.LoadFromFile(Aqui(C_TXT_FILE, 're.txt'));
      FindReplace('$nome',DM_PDV.TClirazaosocial.AsString + ' - Doc: ' + DM_PDV.TClicnpj.AsString, rec_entrega);
      FindReplace('$logradouro',DM_PDV.TClilogradouro.AsString + ' ' + DM_PDV.TClinmro.AsString, rec_entrega);
      FindReplace('$cidade',DM_PDV.TClicidade.AsString + '/' + DM_PDV.TCliuf.AsString, rec_entrega);
      FindReplace('$cf', DM_PDV.TVendacoo.AsString, rec_entrega);
      FindReplace('$data',FormatDateTime('dd/mm/yyyy', DM_PDV.TVendadata.AsDateTime), rec_entrega);
      //FindReplace('$valor',FloatToStrF(Total.Fat,ffCurrency,15,2), rec_entrega);
   end;

   b     := True;//b sinaliza passo TEF OK ou sem passo TEF
   tefok := False;

   //processamento TEF

   if (DM_INI.ini.StoredValue['paf_tef'])and(DM_INI.ini.StoredValue['tef_gp'] <> 'Nenhum') then
   begin
      for i := 0 to Pred(Total.Fpag.Count) do
      begin
         if (Total.Fpag.Items[i].Tipo = 'CRT') and
            (Total.Fpag.Items[i].Valor >0) then
         begin
            b := DM_ECF.TEF.CRT(Total.Fpag.Items[i].Valor,
                                Total.Fpag.Items[i].Indice,
                                DM_PDV.TVendacoo.AsString
            );

            tefok := b;

            if (b)and(DM_ECF.TEF.RespostasPendentes.TotalDesconto<>0) then //acerta a fpag em função do desc retorn do tef
            begin                                                  //o desconto é negativo
                Total.Fpag.Items[i].Valor := Total.Fpag.Items[i].Valor + DM_ECF.TEF.RespostasPendentes.TotalDesconto;
            end;
         end
         else
         begin
            if (Total.Fpag.Items[i].Tipo = 'CHQ') and
               (cbf2.Checked) and
               (Total.Fpag.Items[i].Valor >0) then
            begin
               b := DM_ECF.TEF.CHQ(Total.Fpag.Items[i].Valor,
                                   Total.Fpag.Items[i].Indice,
                                   DM_PDV.TVendacoo.AsString
               );

               tefok := b;
            end;
         end;
      end;

      if tefok then
         DM_PDV.Gravar_Estado_PDV(epTEF);
   end;

   if not b then
   begin
      btnF11.Enabled := True;
      frmConcluir.Show;
      exit;
   end;

   frmConcluir.Show;
   pnlFim.Show;
   Application.ProcessMessages;

   //try
 //  b := False;
   if not DM_PDV.TTrn.IsEmpty then
   begin
      DM_PDV.TTrn.Edit;
      DM_PDV.TTrncrt.Value := 'CANC'; //indica q o cupom nao foi concluido ainda
      DM_PDV.TTrn.Post;
   end;

   DM_ECF.TEF.BloquearMouseTeclado(True);
   DM_ECF.TEF.FinalizarCupom(True);
   b := frmPDV.ECF.EmLinha;

  if not b then
  begin
      DM_ECF.TEF.BloquearMouseTeclado(False);

      DM_PDV.Limpar_Cliente;
      pnlFim.Hide;

      if not DM_PDV.TTrn.IsEmpty then
      begin
         frmtrn := Tfrmtrn.Create(self);
         frmtrn.passo := 5;//passo 4 = anulação
         frmtrn.ShowModal;

         if Assigned(frmtrn) then
            FreeAndNil(frmtrn);
      end;

      btnSair.Click;
      exit;
   end;

   //impressao TEF aqui
   try
      DM_ECF.TEF.ImprimirTransacoesPendentes;
   except
      DM_ECF.TEF.BloquearMouseTeclado(False);
      DM_PDV.Limpar_Cliente;
      btnSair.Click;
      exit;
   end;

   if Assigned(cupom_vinculado) then //gera o gerencial relativo ao conteudo de cupom_vinculado
   begin
      if not DM_PDV.TTrn.IsEmpty then
      begin
         DM_PDV.TTrn.Edit;
         DM_PDV.TTrncrt.Value := 'CANC'; //indica q o cupom nao foi concluido ainda E PODE SER ANULADO
         DM_PDV.TTrn.Post;
      end;

      if not DM_ECF.Relatorio_Gerencial(cupom_vinculado, 2, DM_PDV.Indice_RG('convenio')) then
      begin
         if not DM_PDV.TTrn.IsEmpty then
         begin
            if not DM_PDV.TTrn.IsEmpty then
            begin
               frmtrn := Tfrmtrn.Create(self);
               frmtrn.passo := 5;//passo 5 = anulação
               frmtrn.ShowModal;

               if Assigned(frmtrn) then
                  FreeAndNil(frmtrn);
            end;
         end;
         cupom_vinculado.Free;
         btnSair.Click;
         exit;
      end;

      if not DM_PDV.TTrn.IsEmpty then
      begin
         DM_PDV.TTrn.Edit;
         DM_PDV.TTrncrt.Value := ''; //indica q o trn foi impresso
         DM_PDV.TTrn.Post;

         frmtrn := Tfrmtrn.Create(self);
         frmtrn.passo := 4;//passo 4 = confirmação
         frmtrn.ShowModal;

         if Assigned(frmtrn) then
            FreeAndNil(frmtrn);
      end;

      cupom_vinculado.Free;
   end;

   if Assigned(cupom_fatura) then
   begin
      frmPDV.ECF.RelatorioGerencial(cupom_fatura, 1, DM_PDV.Indice_RG('comprovfat'));
      cupom_fatura.Free;
   end;

   if Assigned(rec_entrega) then
   begin
      frmPDV.ECF.RelatorioGerencial(rec_entrega, 1, DM_PDV.Indice_RG('recentreg'));
      rec_entrega.Free;
   end;

   if (DM_INI.ini.StoredValue['modo_convenio_vl'])and(Assigned(frmPDV.vidaLink)) then
   begin
      frmPDV.vidaLink.Limpar;
      frmPDV.vidaLink.Consulta.Clear;
      FreeAndNil(frmPDV.vidaLink);
   end;

   DM_PDV.Limpar_Cliente;
   btnSair.Click;
end;

procedure TfrmConcluir.btnf3Click(Sender: TObject);
begin
   edit1.Show;

   frmPesqCli := TfrmPesqCli.Create(Self);
   frmPesqCli.ShowModal;

   if Assigned(frmPesqCli) then
      FreeAndNil(frmPesqCli);

   if (Application.MessageBox('Deseja associar este cliente a venda atual?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idYes) then
   begin
      DM_PDV.TVenda.Edit;
      DM_PDV.TVendacliente.AsInteger := DM_PDV.TCliid.AsInteger;
      DM_PDV.TVenda.Post;
   end;
   grd1.SetFocus;
   edit1.Hide;
   keybd_event( VK_TAB, 0, 0, 0 );
end;

procedure TfrmConcluir.btnf4Click(Sender: TObject);
begin
  { if DM_PDV.INI.StoredValue['venda_comissionada'] then
   begin
      comissao_vendedor := 0;
      frmVendedor := TfrmVendedor.Create(self);
      frmVendedor.ShowModal;
      FreeAndNil(frmVendedor);
   end
   else }
   begin
      with total do
      begin
         din := valor;
         tkt := 0;
         crt := 0;
         chq := 0;
         fat := 0;
         VrDesc := 0;
         VrPago := valor;
         Troco  := 0;
         Total  := valor;
      end;

      TFPag.DisableControls;
      TFPag.First;

      while not TFPag.Eof do
      begin
         TFPag.Edit;
         TFPagvalor.Value := 0;
         TFPag.Post;
         TFPag.Next;
      end;

      TFPag.First;

      while not TFPag.Eof do
      begin
         TFPag.Edit;
         if (TFPagtipo.AsString = C_DIN) then
            TFPagvalor.Value := total.valor
         else
            TFPagvalor.Value := 0;

         TFPag.Post;
         TFPag.Next;
      end;

      TFPag.First;
      TFPag.EnableControls;
      DM_PDV.TCli.Locate('id',1,[]);
      btnf11.Enabled := true;
      btnf11.Click;
   end;
end;

procedure TfrmConcluir.btnF5Click(Sender: TObject);
begin
   frmCliEvent := TfrmCliEvent.Create(Self);
   frmCliEvent.ShowModal;

   if Assigned(frmCliEvent) then
      FreeAndNil(frmCliEvent);
end;

procedure TfrmConcluir.Cancelar;
begin
   if frmPDV.ECF.EmLinha then
   begin
      try
         frmPDV.ECF.CancelaCupom;
      except
         DM_PDV.Gravar_Estado_PDV(epDesativado);
         frmPDV.Verificar_Status_PDV;
         btnSair.Click;
         exit;
      end;
   end
   else
   begin
      DM_PDV.Gravar_Estado_PDV(epDesativado);
      frmPDV.Verificar_Status_PDV;
      btnSair.Click;
      exit;
   end;

  // DM_PDV.Cancelar_Venda;
   frmPDV.Popup('Venda cancelada.');
   btnSair.Click;
end;

function TfrmConcluir.ChecaValores: boolean;
var
   n:currency;
   i:integer;
begin
   Result         := False;
   btnF11.Enabled := False;
   btnF5.Enabled  := False;

   if TFPag.Tag = 1 then //é 1. No oncreate do form vai a zero
      exit;

   i := 0;

   with Total do  //uclasse
   begin
      try
         SubTotaliza(true);
      except
         exit;
      end;

      n := vrpago;
      FloatToLbl(lblTotalPagar, n);

      if din > 0 then inc(i);
      if tkt > 0 then inc(i);
      if chq > 0 then inc(i);
      if fat > 0 then inc(i);
      if crt > 0 then inc(i);

      if (i > 1)then
      if (cbf2.Checked) and
         (chq > 0) and
         (crt > 0) then
      begin
         TFPag.edit;
         TFPagvalor.Value := 0;
         if TFPagtipo.Value = 'CHQ' then
            chq := 0
         else
            crt := 0;

         ShowMessage('O sistema não permite consulta Cheque e pagamento com cartão em uma única operação.');
         exit;
      end;

      if (i > 1)then
      if (n < din) or (n < tkt) or
         (n < chq) or (n < fat) or
         (n < crt) then
         Raise Exception.Create('Uma ou mais formas de pagamento desnecessárias.');

      if (DM_PDV.TCliid.AsInteger = 1) and (fat > 0) then
      begin
         if TFPag.State = dsedit then
            TFPagvalor.Value := 0;

         fat := 0;
         ShowMessage('Forma de pagamento "Fatura" inválida para cliente não cadastrado.');
         exit;
      end;

      if (DM_PDV.TCliid.AsInteger = 1) and (chq > 0) and
         (not DM_INI.ini.StoredValue['aceita_cheque_sem_cadastro']) then
         begin
            if TFPag.State = dsedit then
               TFPagvalor.Value := 0;

            chq := 0;
            ShowMessage('Forma de pagamento "Cheque" inválida para cliente não cadastrado.');
            exit;
         end;

      if (vrdesc < 0) OR ((vrdesc >= Valor) and (Valor > 0)) then
      begin
         if TFPag.State = dsedit then
            TFPagvalor.Value := 0;

         vrdesc := 0;
         ShowMessage('Desconto inválido.');
         exit;
      end;

      FloatToLbl(lblTroco, troco);

      //critica valor no cartão

      if (lblToFloat(lbltroco) > 0.009) and
         (crt > 0) then
      begin
         if TFPag.State = dsedit then
            TFPagvalor.Value := 0;

         crt := 0;
         ShowMessage('Na modalidade "Cartão", o valor pago não pode ser maior do que o valor da compra');
         exit;
      end;

      //critica valor outros

      if (lblToFloat(lbltroco) > 0.009) and
         (fat > 0) then
      begin
         if TFPag.State = dsedit then
            TFPagvalor.Value := 0;

         fat := 0;
         ShowMessage('Na modalidade Fatura o valor pago não pode ser maior do que o valor da compra');
         exit;
      end;

      //critica desconto no modo fatura

      if (not DM_INI.ini.StoredValue['desconto_venda_prazo']) and
         (vrdesc > 0.009) and
         (fat > 0) then
         begin
            if TFPag.State = dsedit then
               TFPagvalor.Value := 0;
            fat := 0;
            ShowMessage('Na modalidade "Fatura" não é permitido desconto.');
            exit;
         end;

      //critica desconto se ja foi dado nos itens

      if (TemDescontoItem) and
         (vrdesc > 0.009) then
      begin
         if TFPag.State = dsedit then
            TFPagvalor.Value := 0;

         vrdesc := 0;
         ShowMessage('Já foi dado desconto em ítem da venda.');
         exit;
      end;

      if crt = 0 then
      begin
         cmbOperadora.Clear;
         rbDeb.Checked := False;
         rbCre.Checked := False;
      end;

      Panel7.Visible := crt >0;
   end;
   result := true;
end;

function TfrmConcluir.Mostra: boolean;//exibe os valores
begin
   result := checavalores;

   if result then
   begin
      FloatToLbl(lblVrCompra, Total.valor);
      FloatToLbl(lblTotalPagar, Total.total + Total.Fat);
      FloatToLbl(lblTroco, Total.troco);
      FloatToLbl(lblDif, (Total.total + Total.Fat) - Total.vrpago);

      if lblToFloat(lblDif) < 0.009 then
         FloatToLbl(lblDif, 0);

      try
         CBF2.Visible := (DM_INI.ini.StoredValue['tef_gp']<>'Nenhum')and
                         (Total.Chq > 0)and
                         (Total.Crt = 0);
      except
         ;
      end;

      CBF6.Visible := not CBF2.Visible;

      btnf4.Enabled :=  (Total.VrDesc = 0);

      If not CBF2.Visible then
             CBF2.Checked := false;

      Result         := True;
      btnF5.Enabled  := lblToFloat(lblDif)=0;
      btnF11.Enabled := lblToFloat(lblDif)=0;
   end;
end;

procedure TfrmConcluir.tbvEditKeyPress(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Char);
begin
   if KEY = '-' then
      key := #0;
end;

procedure TfrmConcluir.tbvEditKeyUp(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit;
  var Key: Word; Shift: TShiftState);
begin
   if key in [190, 194] then  // "." por ","
      key := 110
   else
   if key in [80,86] then //P, V - abre a tela de montagem do parcelamento
   begin
      if (key =80)and(pos('parcelamento', label6.Caption) >0) then//P
      begin
         if TFPagvalor.Value = 0 then
         begin
            ShowMessage('Informe o valor');
            exit;
         end;

         ShowMessage('NÃO IMPLEMENTADO');
        { frmParcelas := TfrmParcelas.Create(self);

         if frmParcelas.ShowModal = mrOk then
         begin
            TFPag.Edit;
            TFPagparcelas.AsInteger := Trunc(frmParcelas.edParcela.Value);
            TFPag.Post;
            LblParcelado.Visible := TFPagparcelas.Value > 0;
            Total.Parcelas       := TFPagparcelas.AsInteger;
            LblParcelado.Caption := format('Parcelado em %d X', [Total.Parcelas]);
         end;
            FreeAndNil(frmParcelas); }
      end;

      if (pos('valor', label6.Caption) > 0)and
         (key = 86) then//V
      begin
         label6.caption := 'Tecle P para percentual';
         label6.Tag     := 0;
      end;

      if (pos('percentual', label6.Caption) > 0) and
         (key = 80) then //P
      begin
         label6.caption := 'Tecle V para valor';
         label6.Tag     := 1;
      end;
   end //--------------------------------------------------------------------
   else
   if (key = 13) then
   begin
      if not TFPag.Eof then
         TFPag.Next
      else
         TFPag.First;
   end
   else
   if (key = 32) then  //espaço
   begin
      TFPag.Edit;
      TFPagvalor.Value := (Total.total + Total.Fat) - Total.vrpago;//total.Valor - total.VrDesc;

      if not TFPag.Eof then
         TFPag.Next
      else
         TFPag.First;
   end;
end;

procedure TfrmConcluir.FloatToLbl(lbl: TcxLabel; valor: Currency);
begin
   lbl.Caption := FloatToStrF(valor, ffnumber, 15, 2);
end;

function TfrmConcluir.lblToFloat(lbl: TcxLabel): Currency;
var
  s: String;
begin
   s := BuscaTroca(lbl.Caption,'.','');
   result := StrToFloatDef(s, -1);
end;

procedure TfrmConcluir.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin //grava as cfg da grid
   for i := 0 to ComponentCount - 1 do
   begin
       if (Components[i] is TcxGridDBTableView) then
          (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
   end;

   frmPDV.ECF.BloqueiaMouseTeclado := True;//este dois devem ser false para que o TEF assuma
   frmPDV.ECF.ReTentar             := True;//e True durante os demais processos do PDV
  inherited;
end;

procedure TfrmConcluir.FormCreate(Sender: TObject);
begin
   inherited;
   try
      TFPag.Tag   := 0; //flag para liberar o evento onafterpost de t1
      TFPag.Open;

      while not TFPag.IsEmpty do
      TFPag.Delete;

      Total := TTotal.Create(nil);
      Total.Clear;
      Total.Fpag.Clear;
      Total.IBPTax  := DM_PDV.Total_IBPTax;
      Total.IBPTaxF := DM_PDV.IBPTaxF;
      Total.IBPTaxE := DM_PDV.IBPTaxE;
      Total.IBPTaxM := DM_PDV.IBPTaxM;

      Load_FPag; //carrega as fpag
   except
      on E: exception do
      begin
         ShowMessage('Erro do sistema. Tente novamente. ' + E.message);
         btnSair.Click;
         exit;
      end;
   end;

   Total.Valor := DM_PDV.Total_venda;
   DM_PDV.Setar_Cliente;
   DM_PDV.Q1.Open('select sum(vDesc) from venda_item where ecf_aliq <> "CANC" and venda=' + Texto_Mysql(DM_PDV.TVendaid.Value));
   DM_PDV.TOper_CRT.Open;
   cmbOperadora.Properties.Items.Clear;
   cmbOperadora.Text := '';

   DM_PDV.TOper_CRT.Open;
   DM_PDV.TOper_CRT.First;

   while not DM_PDV.TOper_CRT.Eof do
   begin
      with cmbOperadora.Properties.Items.Add do
      begin
         Description := DM_PDV.TOper_CRTnome.AsString;
         Value       := DM_PDV.TOper_CRTcnpj.asstring;
      end;
      DM_PDV.TOper_CRT.Next;
   end;

   DM_PDV.TOper_CRT.Close;

   TemDescontoItem := DM_PDV.Q1.Fields[0].AsCurrency > 0;
   Mostra;
end;

procedure TfrmConcluir.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F2: cbf2.Checked := (not cbf2.Checked)and(cbf2.Visible);
      VK_F3: if btnf3.Enabled then btnf3.Click;
      VK_F4: if btnf4.Enabled then btnf4.Click;
      VK_F5: if btnf5.Enabled then btnf5.Click;
      VK_F6: cbf6.Checked := (not cbf6.Checked)and(cbf6.Visible);
      VK_F8: rbDeb.Checked := true;
      VK_F9: rbCre.Checked := True;
      VK_F10: if Panel7.Visible then cmbOperadora.SetFocus;
      VK_F11: if btnf11.Enabled then btnf11.Click;
      VK_ESCAPE: if btnSair.Enabled then btnSair.Click;
   end;
end;

procedure TfrmConcluir.FormShow(Sender: TObject);
var
   i: integer;
   vr_din, vr_con: Currency;
begin
   inherited;
   for i := 0 to ComponentCount - 1 do //ajusta a grid
   begin
       if (Components[i] is TcxGridDBTableView) then
       begin
          (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
       end;
   end;

   if (DM_INI.ini.StoredValue['modo_convenio_vl'])and (Assigned(frmPDV.vidaLink)) then
   begin
      if frmPDV.vidaLink.comprovante.Text <> EmptyStr then
      begin
         for i := 0 to Pred(frmPDV.vidaLink.Itens.Count) do
         begin
            if frmPDV.vidaLink.Itens[i].Processado then
            begin
               vr_din := vr_din + (frmPDV.vidaLink.Itens[i].vrVista * frmPDV.vidaLink.Itens[i].Qtd);
               vr_con := vr_con + ((frmPDV.vidaLink.Itens[i].vrReceber + frmPDV.vidaLink.Itens[i].vrSubsidio) * frmPDV.vidaLink.Itens[i].Qtd);
            end;
         end;

         if TFPag.Locate('tipo','DIN', []) then
         begin
            TFPag.Edit;
            TFPagvalor.Value := vr_din;
            TFPag.Post;
         end;

         if TFPag.Locate('tipo','TKT', []) then
         begin
            TFPag.Edit;
            TFPagvalor.Value := vr_con;
            TFPag.Post;
         end;
      end;
   end
   else
   if not DM_PDV.TTrn.IsEmpty then
   begin
      if(Total.Valor = (DM_PDV.TTrnvr_liq.Value + DM_PDV.TTrnvr_rec.Value))  then
      begin
         TFPag.Locate('tipo','DIN', []);
         TFPag.Edit;
         TFPagvalor.Value := DM_PDV.TTrnvr_liq.Value;
         TFPag.Post;
      end;

      if DM_PDV.TTrnvr_liq.Value > DM_PDV.TTrnvr_rec.Value then
      begin
         TFPag.Locate('tipo','TKT', []);
         TFPag.Edit;
         TFPagvalor.Value := DM_PDV.TTrnvr_rec.Value;
         TFPag.Post;
      end;
   end
   else
   if not DM_PDV.TPFP.IsEmpty then
   begin
      if (DM_PDV.TVendavr_din.Value > 0)and(TFPag.Locate('tipo','DIN', [])) then
      begin
         TFPag.Edit;
         TFPagvalor.Value := DM_PDV.TVendavr_din.Value;
         TFPag.Post;
      end;

      if (DM_PDV.TVendavr_tkt.Value > 0)and(TFPag.Locate('tipo','TKT', [])) then
      begin
         TFPag.Edit;
         TFPagvalor.Value := DM_PDV.TVendavr_tkt.Value;
         TFPag.Post;
      end;
   end;

   TFPag.First;

   if (DM_INI.ini.StoredValue['modo_convenio_vl'])and(Assigned(frmPDV.vidaLink)) then
   begin
      if frmPDV.vidaLink.comprovante.Text <> EmptyStr then
      begin
         pnlbase.Hide;
         TmConcluir.Enabled := True;
         exit;
      end;
   end;
   grd1.SetFocus;
end;

procedure TfrmConcluir.Load_FPag(filtro: string);//o filtro so permite inserir o referenciado nele (ex: "-")
begin //desconto primeiro
   TFPag.DisableControls; //as FPag sao filtradas por ECF (no DM_PDV) e por uso (em TFPag) pelo filtro

   if frmPDV.ini.StoredValue['modo'] = 2 then
   begin
      DM_PDV.TFPag.filter := 'uso=' + texto_mysql('fp');//pfp
      DM_PDV.TFPag.filtered := True;
   end
   else
   if frmPDV.ini.StoredValue['modo'] = 3 then //vidalink
   begin
      DM_PDV.TFPag.filter := 'uso=' + texto_mysql('vl');
      DM_PDV.TFPag.filtered := True;
   end
   else
   if (not DM_PDV.TTrn.IsEmpty)and(DM_PDV.TTrnvr_liq.Value>0) then //trn
   begin
      DM_PDV.TFPag.filter := 'uso=' + texto_mysql('tr');
      DM_PDV.TFPag.filtered := True;
   end
   else
   begin
      DM_PDV.TFPag.filter := 'uso=' + texto_mysql('-');//normal
      DM_PDV.TFPag.filtered := True;
   end;

   DM_PDV.TFPag.Open;

   if (DM_INI.ini.StoredValue['desconto_sobre_total'])and (DM_PDV.TFPag.filter = 'uso=''-''') then
   begin
      if DM_PDV.TFPag.Locate('tipo', 'DES', []) then
      begin
         TFPag.Append;
         TFPagid.Value       := DM_PDV.TFPagid.AsInteger;
         TFPagnome.AsString  := AnsiUpperCase(DM_PDV.TFPagdescr.AsString);
         TFPagtipo.AsString  := DM_PDV.TFPagtipo.AsString;
         TFPagecf.AsString   := DM_PDV.TFPagindice_tef.AsString;
         TFPagvalor.Value    := 0;
         TFPagparcelas.Value := 0;
         TFPag.Post;
      end;
   end;

   DM_PDV.TFPag.First; //outros totalizadores menos crt e DES

   while not DM_PDV.TFPag.Eof do
   begin
      if (DM_PDV.TFPagtipo.AsString <> 'DES')and
         (DM_PDV.TFPagtipo.AsString <> 'CRT') then //por default é "-"
      begin
         TFPag.Append;
         TFPagid.Value       := DM_PDV.TFPagid.AsInteger;
         TFPagnome.AsString  := AnsiUpperCase(DM_PDV.TFPagdescr.AsString);
         TFPagtipo.AsString  := DM_PDV.TFPagtipo.AsString;
         TFPagecf.AsString   := DM_PDV.TFPagindice_tef.AsString;
         TFPagvalor.Value    := 0;
         TFPagparcelas.Value := 0;

         with  Total.Fpag.Add do
         begin
            Descricao := TFPagNome.AsString;
            Prazo     := TFPagTipo.Value = 'FAT';
            Tipo      := TFPagTipo.AsString;
            Indice    := DM_PDV.TFPagindice_tef.AsString;//Format('%.2d', [DM_PDV.TFPagindice_tef.AsInteger]);
            valor     := 0;
         end;

         TFPag.Post;
      end;
      DM_PDV.TFPag.Next;
   end;

   //por ultimo o crt
   DM_PDV.TFPag.First;

   while not DM_PDV.TFPag.Eof do
   begin
      if (DM_PDV.TFPagtipo.AsString = 'CRT') then
      begin
         TFPag.Append;
         TFPagid.Value       := DM_PDV.TFPagid.AsInteger;
         TFPagnome.AsString  := AnsiUpperCase(DM_PDV.TFPagdescr.AsString);
         TFPagtipo.AsString  := DM_PDV.TFPagtipo.AsString;
         TFPagecf.AsString   := DM_PDV.TFPagindice_tef.AsString;
         TFPagvalor.Value    := 0;
         TFPagparcelas.Value := 0;

         with  Total.Fpag.Add do
         begin
            Descricao := TFPagNome.AsString;
            Prazo     := False;
            Tipo      := TFPagTipo.AsString;
            Indice    := DM_PDV.TFPagindice_tef.AsString;// Format('%.2d', [DM_PDV.TFPagindice_tef.AsInteger]);
            valor     := 0;
         end;

         TFPag.Post;
      end;
      DM_PDV.TFPag.Next;
   end;

   TFPag.First;
   TFPag.EnableControls;
end;

procedure TfrmConcluir.TmConcluirTimer(Sender: TObject);
begin
    TmConcluir.Enabled := False;
   btnF11.Click;
end;

procedure TfrmConcluir.TFPagAfterPost(DataSet: TDataSet);
var
   i: integer;
begin
   if TFPag.Tag = 1 then
      exit;

   for i := 0 to Pred(total.Fpag.Count) do
   begin
      if StrToIntDef(Total.Fpag.Items[i].Indice, 0) = TFPagecf.AsInteger then
      begin
         Total.Fpag.Items[i].Valor := TFPagvalor.Value;
         Break;
      end;
   end;
   Mostra;
end;

procedure TfrmConcluir.TFPagAfterScroll(DataSet: TDataSet);
begin
   Label6.Caption := 'TOTALIZADORES';
   Label6.Tag     := 0;// = 1, calcula o % do desconto...

   if TFPagtipo.Value = 'DES' then
      Label6.Caption := 'Tecle P para percentual'
   else
   if TFPagtipo.Value = 'FAT' then
      Label6.Caption := 'Tecle P para parcelamento';
   //impede e edição do valor do convenio
   tbvvalor.Options.Editing := not((DM_PDV.TFPag.filter = 'uso=''tr''') and
                                  (TFPagtipo.Value = 'TKT') and
                                  (TFPagvalor.Value>0));
end;

procedure TfrmConcluir.TFPagBeforePost(DataSet: TDataSet);
var
   i: integer;
begin
   if TFPagvalor.Value < 0 then
   begin
      showmessage('Valor negativo não permitido.');
      TFPagvalor.Value := 0;
      exit;
   end;

   if TFPag.Tag = 1 then
      exit;

   if TFPagtipo.Value = 'DES' then
   begin
      if label6.Tag = 1 then //calcula o % do desconto...
         TFPagvalor.Value := Percentual(TFPagvalor.Value, total.valor);

      if (RetornaPercentual(total.valor, TFPagvalor.Value) > DM_INI.ini.StoredValue['max_desc_total']) and (not DM_PDV.Permissao) then
      begin
         showmessage('Valor do desconto acima do permitido.');
         TFPagvalor.Value := 0;
         exit;
      end;

      Total.vrdesc := TFPagvalor.Value;
   end
   else
      for i := 0 to Pred(total.Fpag.Count) do
      begin
         if StrToIntDef(Total.Fpag.Items[i].Indice, 0) = TFPagecf.AsInteger then
         begin
            Total.Fpag.Items[i].Valor := TFPagvalor.Value;
            Break;
         end;
      end;

   Mostra;
end;

end.
