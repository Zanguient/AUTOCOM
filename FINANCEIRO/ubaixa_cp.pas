unit ubaixa_cp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls,
  cxPCdxBarPopupMenu, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCheckBox, cxDropDownEdit, cxCalendar, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxMaskEdit, cxImageComboBox, cxLabel, cxTextEdit, cxCurrencyEdit, cxPC,
  cxDBLabel,FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet;

type
  Tfrmbaixa_cp = class(Tfrm)
    pg1: TcxPageControl;
    Tab1: TcxTabSheet;
    Tab2: TcxTabSheet;
    Tab3: TcxTabSheet;
    edvr_apagar: TcxCurrencyEdit;
    edvr_inform: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cmbbanco: TcxImageComboBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cmbConta: TcxImageComboBox;
    cmbMovi: TcxImageComboBox;
    cxLabel5: TcxLabel;
    edvr_banco: TcxCurrencyEdit;
    cxLabel6: TcxLabel;
    cmbChq: TcxImageComboBox;
    cxLabel7: TcxLabel;
    cmbchqTerc: TcxImageComboBox;
    cxLabel8: TcxLabel;
    Panel1: TPanel;
    cxButton1: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    pop1: TPopupMenu;
    Remover1: TMenuItem;
    Label5: TLabel;
    dtBompara: TcxDateEdit;
    grd1: TcxGrid;
    tbv1: TcxGridDBTableView;
    lv1: TcxGridLevel;
    edvr_cash: TcxCurrencyEdit;
    cxLabel9: TcxLabel;
    cb1: TcxCheckBox;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxLabel10: TcxLabel;
    cmbAg: TcxImageComboBox;
    btnLancaChq: TcxButton;
    Label1: TLabel;
    dtEm: TcxDateEdit;
    Tchq: TFDMemTable;
    dschq: TDataSource;
    Tchqid: TIntegerField;
    Tchqnmro: TStringField;
    Tchqbompara: TDateField;
    Tchqvalor: TCurrencyField;
    tbv1nmro: TcxGridDBColumn;
    tbv1bompara: TcxGridDBColumn;
    tbv1valor: TcxGridDBColumn;
    edDif: TcxCurrencyEdit;
    cxLabel11: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    TTerc: TFDMemTable;
    DSTerc: TDataSource;
    TTercid: TIntegerField;
    TTercnmro: TStringField;
    TTercbompara: TDateField;
    TTercvalor: TCurrencyField;
    tbvnmro: TcxGridDBColumn;
    tbvbompara: TcxGridDBColumn;
    tbvvalor: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cmbAgClick(Sender: TObject);
    procedure cmbbancoClick(Sender: TObject);
    procedure cmbContaClick(Sender: TObject);
    procedure cmbMoviPropertiesChange(Sender: TObject);
    procedure Remover1Click(Sender: TObject);
    procedure TchqAfterPost(DataSet: TDataSet);
    procedure btnLancaChqClick(Sender: TObject);
    procedure TchqAfterDelete(DataSet: TDataSet);
    procedure TchqBeforeDelete(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
    procedure cmbchqTercClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure TTercAfterPost(DataSet: TDataSet);
    procedure TTercAfterDelete(DataSet: TDataSet);
    procedure TTercBeforeDelete(DataSet: TDataSet);
    procedure cxButton3Click(Sender: TObject);
  private
    procedure AtuCmbBanco;
    procedure AtuCmbAg;
    procedure AtuCmbConta;
    procedure AtuCmbMovi;
    procedure AtuCmbChq;
    procedure AtuVr;
  public
    { Public declarations }
  end;

var
  frmbaixa_cp: Tfrmbaixa_cp;

implementation

{$R *.dfm}

uses uDM, uFuncoes, uGestaoAPagar, uAutocomConsts;

procedure Tfrmbaixa_cp.AtuCmbBanco;
begin
   cmbbanco.Properties.Items.Clear;
   cmbAg.Properties.Items.Clear;
   cmbConta.Properties.Items.Clear;
   cmbMovi.Properties.Items.Clear;

   while not DM.QBancos.Eof do
   begin
      with cmbbanco.Properties.Items.Add do
      begin
         Description := DM.QBancosnomebanco.AsString;
         Value       := DM.QBancosid.Value;
      end;
      DM.QBancos.Next;
   end;
end;

procedure Tfrmbaixa_cp.AtuCmbAg;
begin
   cmbAg.Properties.Items.Clear;
   cmbConta.Properties.Items.Clear;
   cmbMovi.Properties.Items.Clear;
   DM.QBancos.Locate('id', cmbbanco.Properties.Items[cmbbanco.ItemIndex].Value);

   while not DM.QAgencias.Eof do
   begin
      with cmbAg.Properties.Items.Add do
      begin
         Description := DM.QAgenciasnome.AsString;
         Value       := DM.QAgenciasid.Value;
      end;
      DM.QAgencias.Next;
   end;
end;

procedure Tfrmbaixa_cp.AtuCmbConta;
begin
   cmbConta.Properties.Items.Clear;
   cmbMovi.Properties.Items.Clear;
   DM.QAgencias.Locate('id', cmbAg.Properties.Items[cmbAg.ItemIndex].Value);

   while not DM.QContas.Eof do
   begin
      with cmbConta.Properties.Items.Add do
      begin
         Description := DM.QContasconta.AsString + '-' + DM.QContasdig.AsString;
         Value       := DM.QContasid.Value;
      end;
      DM.QContas.Next;
   end;
end;

procedure Tfrmbaixa_cp.AtuCmbMovi;
begin
   cmbMovi.Properties.Items.Clear;
   DM.QContas.Locate('id', cmbConta.Properties.Items[cmbConta.ItemIndex].Value);
   DM.Q1.Open('select id, cod, descricao from finan_banco_codigos where tipo="D" and conta=' +
               Texto_Mysql(DM.QContasid.Value) + ' order by descricao');

   while not DM.Q1.Eof do
   begin
      with cmbMovi.Properties.Items.Add do
      begin
         Description := DM.Q1.FieldByName('descricao').AsString;
         Value       := DM.Q1.FieldByName('cod').AsString;
         Tag         := DM.Q1.FieldByName('id').AsInteger;
      end;
      DM.Q1.Next;
   end;
end;

procedure Tfrmbaixa_cp.AtuVr;
begin
   TChq.DisableControls;
   tchq.First;
   TTerc.DisableControls;
   TTerc.First;
   edvr_inform.Clear;

   while not Tchq.Eof do
   begin
      edvr_inform.Value := edvr_inform.Value + Tchqvalor.Value;
      tchq.Next;
   end;

   while not TTerc.Eof do
   begin
      edvr_inform.Value := edvr_inform.Value + Ttercvalor.Value;
      TTerc.Next;
   end;

   Tchq.EnableControls;
   TTerc.EnableControls;

   edvr_inform.Value := edvr_inform.Value + edvr_cash.Value;
   edDif.Value       := edvr_apagar.Value - edvr_inform.Value;
end;

procedure Tfrmbaixa_cp.AtuCmbChq;
begin
   cmbChq.Properties.Items.Clear;
   cmbChq.Visible := cmbMovi.Properties.Items[cmbMovi.ItemIndex].Value = 'CHQ';
   btnLancaChq.Visible := cmbChq.Visible;

   if cmbChq.Visible then
   begin
      DM.Q1.Open('select id, nmro from finan_talonario where cancelado="N" and usado="N" and conta=' +
                  Texto_Mysql(DM.QContasid.Value) + ' order by nmro');

      while not DM.Q1.Eof do
      begin
         with cmbChq.Properties.Items.Add do
         begin
            Description := DM.Q1.FieldByName('nmro').AsString;
            Value       := DM.Q1.FieldByName('id').AsInteger;
         end;
         DM.Q1.Next;
      end;
   end;
end;

procedure Tfrmbaixa_cp.cmbAgClick(Sender: TObject);
begin
   AtuCmbConta;
end;

procedure Tfrmbaixa_cp.cmbbancoClick(Sender: TObject);
begin
   AtuCmbAg;
end;

procedure Tfrmbaixa_cp.cmbchqTercClick(Sender: TObject);
begin
   DM.Qfinan_ch_terc.Open('select * from finan_chq_terceiro where id=' +
                           Texto_Mysql(cmbchqTerc.Properties.Items[cmbchqTerc.ItemIndex].Value));
end;

procedure Tfrmbaixa_cp.cmbContaClick(Sender: TObject);
begin
   atuCmbMovi;
end;

procedure Tfrmbaixa_cp.cmbMoviPropertiesChange(Sender: TObject);
begin
   AtucmbChq;
end;

procedure Tfrmbaixa_cp.cxButton1Click(Sender: TObject);
begin
   if cmbchqTerc.ItemIndex < 0 then
      raise Exception.Create('Informe o nº do cheque.');

   if cmbchqTerc.Properties.Items[cmbchqTerc.ItemIndex].Value <0 then
      raise Exception.Create('Este cheque já esta lançado.');

   TTerc.Append;
   TTercid.value := DM.Qfinan_ch_tercid.Value;
   TTercnmro.AsString := DM.Qfinan_ch_tercnmro.AsString;
   TTercbompara.Value := DM.Qfinan_ch_tercdt_bompara.Value;
   TTercvalor.Value   := DM.Qfinan_ch_tercvalor.Value;
   TTerc.Post;
   cmbchqTerc.Properties.Items[cmbchqTerc.ItemIndex].Value := cmbchqTerc.Properties.Items[cmbchqTerc.ItemIndex].Value * -1;
end;

procedure Tfrmbaixa_cp.cxButton2Click(Sender: TObject);
begin
   AtuVr;
end;

procedure Tfrmbaixa_cp.cxButton3Click(Sender: TObject);
var
   s: string;
begin
   if edDif.Value > 0 then
      raise Exception.Create('A diferênça precisa ser zerada.');

   if (MessageBox(0, 'Confirma a baixa desta conta?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idYes) then
   begin
      if (edvr_cash.Value > 0)and (cb1.Checked) then
      begin
         DM.Inserir_Caixa('PAG',
                          'Doc.: ' + DM.QFinan_apagarnmro_doc.AsString + ' ' + DM.QFinan_apagarfavorec_nome.AsString,
                          edvr_cash.Value,
                          DM.QFinan_apagarid.Value,
                          0,
                          0
         );
         frmGestaoAPagar.mmObs.Lines.Add('Pago em cash ' + FloatToStrF(edvr_cash.Value,ffCurrency,15,2));
      end;

      TChq.DisableControls;
      tchq.First;
      TTerc.DisableControls;
      TTerc.First;

      while not Tchq.Eof do
      begin
         DM.Inserir_Movi_Banco(DM.QFinan_apagarid.Value,
                               cmbConta.Properties.Items[cmbConta.ItemIndex].Value,
                               cmbMovi.Properties.Items[cmbMovi.ItemIndex].Value,
                               'D',
                               Tchqvalor.Value,
                               frmGestaoAPagar.dt_Baixa.Date,
                               'CHQ-' + Tchqnmro.AsString + '/' + cmbConta.Properties.Items[cmbConta.ItemIndex].Description,
                               'Pagamento conta ' + DM.QFinan_apagarnmro_doc.AsString + ' ' + DM.QFinan_apagarfavorec_nome.AsString

         );
         DM.ExecSQL('update finan_talonario set usado="S" where id=' + Texto_Mysql(Tchqid.Value) + ';');
         frmGestaoAPagar.mmObs.Lines.Add('Pago com cheque nº ' +  Tchqnmro.AsString +
                                         ' Conta  ' + cmbConta.Properties.Items[cmbConta.ItemIndex].Description +
                                         ' no valor de ' + FloatToStrF(Tchqvalor.Value,ffCurrency,15,2));

         tchq.Next;
      end;

      while not TTerc.Eof do
      begin
         DM.ExecSQL('update finan_chq_terceiro set status="P" where id=' + Texto_Mysql(TTercid.Value)+ ';');
         frmGestaoAPagar.mmObs.Lines.Add('Pago com cheque de 3º nº ' +  TTercnmro.AsString +
                                         ' no valor de ' + FloatToStrF(TTercvalor.Value,ffCurrency,15,2));
         TTerc.Next;
      end;
      Tchq.EnableControls;
      TTerc.EnableControls;
      DM.QFinan_apagar.Edit;
      DM.QFinan_apagardt_baixa.Value      := frmGestaoAPagar.dt_Baixa.Date;
      DM.QFinan_apagarhora_baixa.AsString := TimeToStr(now);
      DM.QFinan_apagarvalor_pg.Value      := edvr_apagar.Value;
      DM.QFinan_apagarvalor_multa.Value   := frmGestaoAPagar.edMulta.Value;
      DM.QFinan_apagarvalor_juros.Value   := frmGestaoAPagar.edJuros.Value;
      DM.QFinan_apagarvalor_desc.Value    := frmGestaoAPagar.edDesc.Value;
      DM.QFinan_apagarobs.AsString        := DM.QFinan_apagarobs.AsString + C_CRLF + frmGestaoAPagar.mmObs.Text;
      DM.QFinan_apagaroperador.Value      := DM.Operador.ID;
      DM.QFinan_apagar.Post;
      DM.QFinan_apagar.Refresh;
      btnSair.Click;
   end;
end;

procedure Tfrmbaixa_cp.btnLancaChqClick(Sender: TObject);
begin
   dtEm.PostEditValue;
   dtBompara.PostEditValue;

   if (cmbChq.Visible)and(cmbChq.ItemIndex<0) then
      raise Exception.Create('Informe o nº do cheque.');

   if (dtEm.Date > dtBompara.Date) then
      raise Exception.Create('Confira as datas informadas.');

   if edvr_banco.Value <=0 then
      raise Exception.Create('Valor incorreto.');

   if cmbChq.Properties.Items[cmbChq.ItemIndex].Value <0 then
      raise Exception.Create('Este cheque já esta lançado.');

   Tchq.Append;
   Tchqid.Value      := cmbChq.Properties.Items[cmbChq.ItemIndex].Value;
   Tchqnmro.AsString := cmbChq.Properties.Items[cmbChq.ItemIndex].Description;
   Tchqbompara.Value := dtBompara.Date;
   Tchqvalor.Value   := edvr_banco.Value;
   tchq.Post;
   cmbChq.Properties.Items[cmbChq.ItemIndex].Value := cmbChq.Properties.Items[cmbChq.ItemIndex].Value * -1;
end;

procedure Tfrmbaixa_cp.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QBancos.Open('select * from finan_banco_banco order by nomebanco');
   DM.QAgencias.Open;
   DM.QContas.Open;
   dtEm.Date := Date;
   AtuCmbBanco;
   DM.Q1.Open('select * from finan_chq_terceiro where status="C" order by valor');

   while not DM.Q1.Eof do
   begin
      with cmbchqTerc.Properties.Items.Add do
      begin
         Description := DM.Q1.FieldByName('nmro').AsString;
         Value       := DM.Q1.FieldByName('id').AsInteger;
      end;
      DM.Q1.Next;
   end;
end;

procedure Tfrmbaixa_cp.Remover1Click(Sender: TObject);
begin
   if pg1.ActivePage = tab1 then
   begin
      If not Tchq.IsEmpty then
         Tchq.delete;
   end
   else
   if pg1.ActivePage = tab2 then
   begin
      If not TTerc.IsEmpty then
         TTerc.delete;
   end;
end;

procedure Tfrmbaixa_cp.TchqAfterDelete(DataSet: TDataSet);
begin
   AtuVr;
end;

procedure Tfrmbaixa_cp.TchqAfterPost(DataSet: TDataSet);
begin
   AtuVr;
end;

procedure Tfrmbaixa_cp.TchqBeforeDelete(DataSet: TDataSet);
var
   i: integer;
begin //retorna o id a +
   for i := 0 to Pred(cmbChq.Properties.Items.Count) do
   begin
      if cmbChq.Properties.Items[i].Value = Tchqid.Value * -1 then
      begin
         cmbChq.Properties.Items[i].Value := Tchqid.Value;
         break;
      end;
   end;
end;

procedure Tfrmbaixa_cp.TTercAfterDelete(DataSet: TDataSet);
begin
   AtuVr;
end;

procedure Tfrmbaixa_cp.TTercAfterPost(DataSet: TDataSet);
begin
   AtuVr;
end;

procedure Tfrmbaixa_cp.TTercBeforeDelete(DataSet: TDataSet);
var
   i: integer;
begin //retorna o id a +
   for i := 0 to Pred(cmbchqTerc.Properties.Items.Count) do
   begin
      if cmbchqTerc.Properties.Items[i].Value = TTercid.Value * -1 then
      begin
         cmbchqTerc.Properties.Items[i].Value := TTercid.Value;
         break;
      end;
   end;
end;

end.

