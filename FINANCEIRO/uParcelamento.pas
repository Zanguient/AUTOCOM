unit uParcelamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer,
  cxEdit, cxCheckBox, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel,
  cxTextEdit, cxCurrencyEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxSpinEdit, cxDBEdit, Datasnap.DBClient, cxGroupBox, cxRadioGroup,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator,FireDAC.Comp.Client,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet;

type
  TfrmParcelamento = class(Tfrm)
    edValor: TcxCurrencyEdit;
    Label2: TcxLabel;
    dtParc: TcxDateEdit;
    Label1: TcxLabel;
    btnGerar: TcxButton;
    btnCalc: TcxButton;
    Label15: TcxLabel;
    edInstr1: TcxTextEdit;
    T1: TFDMemTable;
    T1nmro_doc: TStringField;
    T1dias: TIntegerField;
    T1vencimento: TDateField;
    T1valor: TCurrencyField;
    T1juros: TCurrencyField;
    T1id: TIntegerField;
    Label3: TLabel;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    DS1: TDataSource;
    tbvid: TcxGridDBColumn;
    tbvdias: TcxGridDBColumn;
    tbvvencimento: TcxGridDBColumn;
    tbvvalor: TcxGridDBColumn;
    tbvjuros: TcxGridDBColumn;
    cbJuros: TcxCheckBox;
    T1data: TDateField;
    cbPrint: TcxCheckBox;
    pnlBol: TPanel;
    cmbBoleto: TcxLookupComboBox;
    Label11: TcxLabel;
    cbBoleto: TcxCheckBox;
    cbCarne: TcxCheckBox;
    crFormato: TcxRadioGroup;
    cbTela: TcxCheckBox;
    cmbPlano: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure T1AfterInsert(DataSet: TDataSet);
    procedure T1BeforeClose(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGerarClick(Sender: TObject);
    procedure T1BeforePost(DataSet: TDataSet);
    procedure cbBoletoClick(Sender: TObject);
    procedure cbCarneClick(Sender: TObject);
  private
    { Private declarations }
  public
  {Essas var servem de ponte para levar o id e tipo de movimentação para o destino (carne ou boleto)}
    id_movim: integer; //id da origem da movimentação (0 = sem origem)
    id_cli: integer; //id do cliente
    Tipo_Movi: string;//X=sem origem, V=Venda, N=NF
    nmro_doc: string; //COO ou nº NF
  end;

var
  frmParcelamento: TfrmParcelamento;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, udm_ini, uMD5Print, uEnvioBol;

procedure TfrmParcelamento.btnCalcClick(Sender: TObject);
var
   i, d: integer;
   n, j: Currency;
begin
   if dtParc.Date <=0 then
      raise Exception.Create('Informe a primeira parcela.');

   if cmbPlano.ItemIndex = -1 then
      raise Exception.Create('Informe o plano.');

   T1.DisableControls;
   T1.Close;
   T1.Open;
   DM.QParcelas.Open('select * from finan_parcelas where plano=' + Texto_Mysql(cmbPlano.Text));
   DM.QParcelas.First;

   n := Arredonda(edValor.Value/DM.QParcelas.RecordCount,2);//define o valor inicial de cada parcela
   j := 0;//indicador de calculo de juros
   d := 0;

   while not DM.QParcelas.Eof do
   begin
      T1.Append;

      if cbJuros.Checked then
         T1juros.Value := 1
      else
         T1juros.Value := DM.QParcelaspc_juros.Value;

      T1dias.Value  := DM.QParcelasdias.Value + d;
      T1data.Value  := dtParc.Date;
      T1valor.Value := Arredonda(n*T1juros.Value, 2);
      j             := j + T1juros.Value;
      T1.Post; //o vencimento é calculado no evento onbeforepost de T1

      inc(d, DM.QParcelasdias.Value);
      DM.QParcelas.Next;
   end;

   if j = DM.QParcelas.RecordCount then //se nao tem juros, corrige dizima
   begin
      j := Arredonda(n * DM.QParcelas.RecordCount,2);//recompoe o valor total

      if j < edValor.Value then//se tem diferença, é dizima
      begin
         T1.Edit; //corrige a ultima parcela
         T1valor.Value := T1valor.Value + (edValor.Value - j);
         T1.Post;
      end;
   end;

   T1.EnableControls;
end;

procedure TfrmParcelamento.btnGerarClick(Sender: TObject);
var
   s, st_file: string;
   procedure Preparar;
   begin
      DM.QCli.Open(C_SQL2 + QuotedStr(IntToStr(id_cli)));

      if (Trim(dm.QCliemail.AsString) <> C_ST_VAZIO) and
         (not ValidarEMail(Trim(dm.QCliemail.AsString))) then
         raise Exception.Create('e-mail inválido.');

      T1.DisableControls;
      T1.First;
      btnCalc.Enabled  := False;
      btnGerar.Enabled := False;

      if Tipo_Movi = 'V' then
         s := 'Referente a venda ' + nmro_doc
      else
      if Tipo_Movi = 'N' then
         s := 'Referente a venda NF ' + nmro_doc
      else
         s := 'Refer. vendas ' + Tipo_Movi;
   end;
begin
   if (not cbBoleto.Checked) and (not cbCarne.Checked) then
      raise Exception.Create('Informe o destino do parcelamento. (Boleto ou Fatura)');

   if cbBoleto.Checked then
   begin
      if not DM.QvwBoleto.Active then
         raise Exception.Create(C_269);

      if DM.QvwBoleto.IsEmpty then
         raise Exception.Create(C_269);

      if not Assigned(frmEnvioBol) then
         frmEnvioBol := TfrmEnvioBol.Create(Self);

      Preparar;

      while not T1.Eof do
      begin
         DM.Emitir_Boleto(T1vencimento.Value,
                          Date,
                          Date,
                          nmro_doc + '/' + format('%.2d',[T1id.Value]),
                          DM.QClirazaosocial.AsString,
                          DM.QClicnpj.AsString,
                          DM.QClilogradourocobranca.AsString,
                          DM.QClinmrocobranca.AsString,
                          DM.QClibairrocobranca.AsString,
                          DM.QClicidadecobranca.AsString,
                          DM.QCliufcobranca.AsString,
                          DM.QClicepcobranca.AsString,
                          T1valor.Value,
                          0,
                          DM.QvwBoletopc_juros.Value,
                          DM.QvwBoletopc_desc.Value,
                          DM.QvwBoletopc_multa.Value,
                          s,
                          edInstr1.Text,
                          C_ST_VAZIO,
                          C_ST_VAZIO,
                          C_ST_VAZIO,
                          C_ST_VAZIO,
                          Trim(dm.QCliemail.AsString),
                          cbPrint.Checked,
                          crFormato.ItemIndex,
                          Tipo_Movi,
                          id_movim
         );

         if id_cli > 0 then
            DM.Insert_Debito(tdBoleto,
                             id_cli,
                             DM.QFinan_bol_Emitid.Value,
                             DM.QFinan_bol_Emitnossonmro.AsString,
                             Date,
                             DM.QFinan_bol_Emitdt_vencimento.Value,
                             DM.QFinan_bol_Emitvalor.Value,
                             DM.QFinan_bol_Emitlinha1.AsString
            );

         //preenche a tabela de envio de email
         if DM.QCliemail.AsString <> C_ST_VAZIO then
         begin
            with frmEnvioBol do
            begin
               cd1.Append;
               cd1id.Value       := DM.QFinan_bol_Emitid.Value;
               cd1nome.Value     := DM.QClirazaosocial.Value;
               cd1email.AsString := DM.QCliemail.AsString;
               cd1enviar.Value   := True;
               cd1.Post;
            end;
         end;

         T1.Next;
      end;

      T1.EnableControls;

      if not frmEnvioBol.cd1.IsEmpty then //exibe a tela de envio de email
         frmEnvioBol.ShowModal
      else
         ShowMessage(C_25);
   end//boleto fim
   else
   if cbCarne.Checked then
   begin
      Preparar;

      while not T1.Eof do
      begin
         DM.Inserir_Carne(DM.QCliid.Value,
                          id_movim,
                          T1vencimento.Value,
                          nmro_doc + '/' + format('%.2d',[T1id.Value]),
                          edInstr1.Text + C_CRLF + s,
                          Tipo_Movi,
                          T1valor.Value,
                          DM.QvwBoletopc_juros.Value,
                          DM.QvwBoletopc_multa.Value,
                          DM.QvwBoletopc_desc.Value
         );

         if id_cli > 0 then
            DM.Insert_Debito(tdCarne,
                             id_cli,
                             DM.QFinan_Carneid.Value,
                             nmro_doc + '/' + format('%.2d',[T1id.Value]),
                             Date,
                             T1vencimento.Value,
                             T1valor.Value,
                             edInstr1.Text + ' ' + s
            );

         T1.Next;
      end;

      if Copy(nmro_doc,1,1)='V' then
         DM.QFinanDeb.Delete//apaga o movimento antigo que foi parcelado
      else
         if pos(')', Tipo_Movi)>0 then
            DM.DB.ExecSQL('delete from finan_debito where id in' + Tipo_Movi + ';');

         //exporta PDF

      st_file := Aqui('FATURAS\' + FormatDateTime('yyyymm', Date), nmro_doc + format('%.2d',[T1id.Value]) + '_' + Trim(Copy(DM.QClirazaosocial.AsString,1,20)) + '.pdf');
      DM.Abrir_Central_Relat('-x',
                             'SISTEMA',
                             'FATURA',
                             QuotedDuoStr(st_file) + ' ' + //quando -x, o parametro é o arquivo
                             QuotedDuoStr('id_cli=' + IntToStr(id_cli)) + ' ' + //id cliente
                             QuotedDuoStr('id_movim=' + InttoStr(id_movim)) + ' ' + //id movi
                             QuotedDuoStr('tipo_movi=' + Tipo_Movi)); //tipo movi
      sleep(5000);//aguarda 5 segundos antes de imprimir

      //impressão
      if cbPrint.Checked then
      begin //imprime - mostrando na tela ou direto
         DM.Abrir_Central_Relat(iif(cbTela.Checked, '-v', '-p'),
                                'SISTEMA',
                                'FATURA',
                                QuotedDuoStr('id_cli=' + IntToStr(id_cli)) + ' ' + //id cliente
                                QuotedDuoStr('id_movim=' + InttoStr(id_movim)) + ' ' + //id movi
                                QuotedDuoStr('tipo_movi=' + Tipo_Movi)  //tipo movi
         );
         end;

      T1.EnableControls;
      ShowMessage(C_25);
   end;//carnê fim

   btnSair.Click;
end;

procedure TfrmParcelamento.cbBoletoClick(Sender: TObject);
begin
   pnlBol.Visible      := cbBoleto.Checked;
   DM.QvwBoleto.Active := cbBoleto.Checked;
   cbCarne.Checked     := not cbBoleto.Checked;
end;

procedure TfrmParcelamento.cbCarneClick(Sender: TObject);
begin
   cbBoleto.Checked := not cbCarne.Checked;
end;

procedure TfrmParcelamento.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin //grava as cfg da grid
   for i := 0 to ComponentCount - 1 do
   begin
       if (Components[i] is TcxGridDBTableView) then
          (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
   end;

  inherited;
end;

procedure TfrmParcelamento.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'COMPOSIÇÃO DE PARCELAMENTO' + C_117;

   cbBoleto.Visible                := DM_INI.ini.StoredValue['finan_boleto'];
   cbCarne.Visible                 := DM_INI.ini.StoredValue['finan_carne'];
   cbBoleto.Checked                := not cbCarne.Visible;
   cbCarne.Checked                 := not cbBoleto.Visible;
   cmbBoleto.Properties.ListSource := DM.DSvwBoleto;
   cbCarne.Enabled                 := cbBoleto.Visible;

   DM.Q1.Open('select distinct plano from finan_parcelas order by plano');

   while not DM.Q1.Eof do
   begin
      cmbPlano.Properties.Items.Add(DM.Q1.Fields[0].AsString);
      DM.Q1.Next;
   end;

   if cmbPlano.Properties.Items.Count >0 then
      cmbPlano.ItemIndex := 0;


end;

procedure TfrmParcelamento.FormShow(Sender: TObject);
var
   i: integer;
begin
  inherited;

  for i := 0 to ComponentCount - 1 do //ajusta a grid
  begin
      if (Components[i] is TcxGridDBTableView) then
      begin
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
      end;
  end;
end;

procedure TfrmParcelamento.T1AfterInsert(DataSet: TDataSet);
begin
   T1id.Value := T1.RecordCount + 1;
end;

procedure TfrmParcelamento.T1BeforeClose(DataSet: TDataSet);
begin
   while not t1.IsEmpty do
   T1.Delete;
end;

procedure TfrmParcelamento.T1BeforePost(DataSet: TDataSet);
begin
   T1vencimento.Value := T1data.Value + T1dias.Value;
end;

end.
