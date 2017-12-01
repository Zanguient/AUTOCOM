unit uConcluir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.DBCtrls,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView,
  cxGrid, cxLabel, uclasse, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinsCore,
  dxSkinCaramel, dxSkinscxPCPainter;

type
  TfrmConcluir = class(Tfrm)
    btnf3: TcxButton;
    btnf4: TcxButton;
    btnF5: TcxButton;
    btnF11: TcxButton;
    cxLabel4: TcxLabel;
    lblTotalPagar: TcxLabel;
    cxLabel2: TcxLabel;
    LblDif: TcxLabel;
    LblTroco: TcxLabel;
    Lbt1: TcxLabel;
    lblVrCompra: TcxLabel;
    cxLabel1: TcxLabel;
    DSFPag: TDataSource;
    grd1: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvnome: TcxGridDBColumn;
    tbvvalor: TcxGridDBColumn;
    grd1Level1: TcxGridLevel;
    Panel6: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText3: TDBText;
    DBText2: TDBText;
    DBText1: TDBText;
    Label6: TcxLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxLabel3: TcxLabel;
    Panel5: TPanel;
    TFPag: TFDMemTable;
    TFPagid: TIntegerField;
    TFPagnome: TStringField;
    TFPagtipo: TStringField;
    TFPagvalor: TCurrencyField;
    TFPagparcelas: TIntegerField;
    TFPagecf: TStringField;
    DSCLi: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbvEditKeyPress(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit;
      var Key: Char);
    procedure tbvEditKeyUp(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit;
      var Key: Word; Shift: TShiftState);
    procedure btnf3Click(Sender: TObject);
    procedure btnf4Click(Sender: TObject);
    procedure TFPagAfterPost(DataSet: TDataSet);
    procedure TFPagAfterScroll(DataSet: TDataSet);
    procedure TFPagBeforePost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnF11Click(Sender: TObject);
  private
    procedure Load_FPag(filtro: string = '-');
    function ChecaValores: boolean;
    function Mostra: boolean;
    procedure FloatToLbl(lbl: TcxLabel; valor: Currency);
    function lblToFloat(lbl: TcxLabel): Currency;
    function Total_IBPTax: currency;
    function Total_venda: currency;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConcluir: TfrmConcluir;
  Total: TTotal;
  TemDescontoItem: boolean;


implementation

{$R *.dfm}

uses uAutocomConsts, uDM, udm_ini, uFuncoes, uMD5Print, uPesqCli, upv,
  uVendedor, uDM_PDV, uDM_Conn;

function TfrmConcluir.Total_venda: currency;
begin
   with frmPV do
   begin
      TVenda_Item.DisableControls;
      TVenda_Item.First;
      Result := 0;

      while not TVenda_Item.Eof do
      begin
         if TVenda_ItemCFOP.AsString <> 'CANC' then
            Result := Result + TVenda_ItemvProd.AsCurrency;
         TVenda_Item.Next;
      end;

      TVenda_Item.EnableControls;
   end;
end;

function TfrmConcluir.Total_IBPTax: currency;
begin
   with frmPV do
   begin
      TVenda_Item.DisableControls;
      TVenda_Item.First;
      Result := 0;

      while not TVenda_Item.Eof do
      begin
         if TVenda_ItemCFOP.AsString <> 'CANC' then
            Result := Result + TVenda_ItemvTotTrib.AsCurrency;
         TVenda_Item.Next;
      end;

      TVenda_Item.EnableControls;
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


procedure TfrmConcluir.btnF11Click(Sender: TObject);
var
   i: integer;
   CupomVinculado: TStringList;
   sTipo: string;

procedure CFOP_Itens;
var
   s, s1: string;
begin
   if (DM.QCliufcobranca.AsString = DM.QEmpresauf.AsString)or(DM.QCliuf.AsString = C_ST_VAZIO) then
   begin
      s  := '5102';
      s1 := '5405';
   end
   else
   begin
      s  := '6102';
      s1 := '6405';
   end;

   try
      DM.ExecSQL('update venda_item set CFOP=' + Texto_Mysql(s1) + ' where CFOP <> "CANC" and ICMS_cst in (10,60,70) and venda=' + Texto_Mysql(DM.QVendaid.Value) + ';');
      DM.ExecSQL('update venda_item set CFOP=' + Texto_Mysql(s) + ' where CFOP <> "CANC" and ICMS_cst not in (10,60,70) and venda=' + Texto_Mysql(DM.QVendaid.Value) + ';');
   finally
      ;
   end;
end;
begin
 //  if (frmPV.ini.StoredValue['modo'] = 1)and(DM.QCliid.Value <=1) then //venda NF obriga a um cliente
   //   raise Exception.Create('Esta venda necessita de um cliente.');

   if DM_INI.ini.StoredValue['venda_comissionada'] then
   begin
      DM.QVendedor.Open;
      frmVendedor := TfrmVendedor.create(self);
      frmVendedor.ShowModal;

      if not DM.QVendedor.Active then
         exit;

      if DM.QVendedor.IsEmpty then
         exit;
   end;

   Total.Vendedor := DM.QVendedorid.Value;

   if frmPV.ini.StoredValue['modo'] = 0 then//PV
   begin
      DM.QVenda.Open('select * from venda where tipo="PV" limit 1');
      sTipo := 'PV';
   end
   else  //NF
   begin
      DM.QVenda.Open('select * from venda where tipo="NF" limit 1');
      sTipo := 'NF';
   end;

   DM.QVenda_Item.Open;

   DM.QVenda.Append;

   for i := 0 to Pred(DM.QVenda.Fields.Count) do
   begin
      if DM.QVenda.Fields[i] is TFloatField then
         DM.QVenda.Fields[i].AsCurrency := 0;
   end;

   CupomVinculado := TStringList.Create;

   //para teste
  // CupomVinculado.LoadFromFile(Aqui('TXT', 'cv.txt'));
   DMConn.Q1.Open('select max(coo) from venda where tipo=' + Texto_Mysql(sTipo));
   DMConn.Q2.Open('select max(coa) from venda where tipo=' + Texto_Mysql(sTipo));

   DM.QVendacliente.AsInteger := DM.QCliid.Value;

   if DM_INI.ini.StoredValue['venda_comissionada'] then
      DM.QVendavendedor.Value := DM.QVendedorid.Value;

   DM.QVendacoo.Value     := DMConn.Q1.Fields[0].AsInteger + 1;
   DM.QVendacoa.AsInteger := DMConn.Q2.Fields[0].AsInteger + 1;

   if sTipo = 'PV' then
      DM.QVendapv.AsString := LFill(FloatToStr(DM.Indice('pv')),10,'0');

   DM.QVendatipo.AsString          := sTipo;
   DM.QVendaoperador.AsInteger     := DM.Operador.ID;
   DM.QVendavendedor.AsInteger     := 0;
   DM.QVendanf.AsInteger           := 0;
   DM.QVendacancelado.AsString     := 'N';
   DM.QVendaterminal.AsString      := DM.id_Term;
   DM.QVendadata.Value             := Date;
   DM.QVendahora.AsString          := FormatDateTime('hh:nn', now);
   DM.QVendavalor.AsCurrency       := Total.Valor;
   DM.QVendavr_desconto.AsCurrency := Total.VrDesc;
   DM.QVendavr_pago.AsCurrency     := Total.VrPago - Total.Fat;
   DM.QVendavr_din.AsCurrency      := Total.Din;
   DM.QVendavr_chq.AsCurrency      := Total.Chq;
   DM.QVendavr_card.AsCurrency     := Total.Crt;
   DM.QVendavr_tkt.AsCurrency      := Total.Tkt;
   DM.QVendavr_outros.AsCurrency   := Total.Fat;
   DM.QVendatroco.AsCurrency       := Total.Troco;
   DM.QVendavendedor.AsInteger     := Total.Vendedor;
   DM.QVendacv.AsString            := CupomVinculado.text;
   DM.QVenda.Post;

   CupomVinculado.free;

   frmPV.TVenda_Item.DisableControls;
   frmPV.TVenda_Item.First;

   while not frmPV.TVenda_Item.Eof do
   begin
      DM.QVenda_Item.Append;
      DM.QVenda_Item.CopyRecord(frmPV.TVenda_Item);
      DM.QVenda_Itemvenda.Value := DM.QVendaid.Value;
      DM.QVenda_ItemvComissao.Value := DM.Comissao;
      DM.QVenda_Item.Post;

      if sTipo='NF' then //baix ao estoque se for NF
      begin
         DM.ExecSQL('update estoque set hash=' + Texto_Mysql(DM.id_Term) + ', quant=quant-' +
                     Texto_Mysql(DM.QVenda_ItemqCom.Value) +
                    ' where id=' + Texto_Mysql(DM.QVenda_ItemcProd.Value)
         );
      end;
      frmPV.TVenda_Item.Next;
   end;

   if sTipo = 'NF' then //atualiza o hash dos registros alterados se for NF
   begin
      DM.ExecSQL('call pr_hash("ESTOQUE",' + Texto_Mysql(_C) +',' + Texto_Mysql(DM.id_Term) +');');

      //gera o debito ao cliente
      if DM.QVendavr_outros.Value > 0 then
      begin
         DM.Insert_Debito(tdNF,
                          DM.QVendacliente.Value,
                          DM.QVendaid.Value,
                          'V' + FormatFloat('000000', DM.QVendacoo.Value) + '/01',
                          DM.QVendadata.Value,
                          DM.QVendadata.Value + DM_INI.ini.StoredValue['dias_fat'],//28 dias por default
                          DM.QVendavr_outros.Value,
                          'VENDA NF EFETUADA NO TERMINAL ' + DM.QVendaterminal.AsString + ' OPER.: ' + dm.QVendaoperador.AsString
         );
      end;
   end;

   //se tem desconto, joga nos itens, recalcula a comissão e zera o valor na venda
   DM.Calcular_Rateio_Desconto;

   DM.QVenda.Edit;
   //grava a comissão na tab venda. No pdv, é recalculado, mas na NF não
   DMConn.Q1.Open('select sum(vComissao) from venda_item where venda=' + Texto_Mysql(DM.QVendaid.Value));

   DM.QVendavr_comissao.AsCurrency := DMConn.Q1.Fields[0].AsCurrency;

   if sTipo = 'PV' then //na PV o valor assume total-desconto e o desconto estara nos itens
   begin
      DM.QVendavalor.AsCurrency := Total.Valor - Total.VrDesc;
   end;

   DM.QVendavr_desconto.Value := 0;//o desconto precisa estar zerado. o PDV E A NF USAM VIA ITEM
   DM.QVenda.Post;
   //grava o CFOP nos itens
   CFOP_Itens;
   frmPV.LimparPV;
   frmPV.TVenda_Item.EnableControls;
   DM.QCli.Open('select * from cliente where id=1');
   frmPV.CfgBtn('001000001100');
   frmPV.pg1.ActivePageIndex := 0;

   if sTipo = 'PV' then
   begin
      DM.ExecSQL('update indices set valor=if(valor >=9999999999,1,valor+1) where nome="pv";');
      ShowMessage('Nº PV: ' + DM.QVendapv.AsString);
   end;

   btnSair.Click;
end;


procedure TfrmConcluir.btnf3Click(Sender: TObject);
begin
   edit1.Show;
   AbreForm(TfrmPesqCli, frmPesqCli, True);

   if (not frmPV.TVenda_Item.IsEmpty)and(DM.QCliid.Value > 1) then
   begin
      if (MessageBox(0, 'Deseja associar este cliente a venda atual?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idNo) then
         DM.QCli.Locate('id',1,[]);
   end;
   //gambiarra pra voltar foco a grid
   edit1.SetFocus;
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
      DM.QCli.Locate('id',1,[]);
      btnf11.Enabled := true;
      btnf11.Click;
   end;
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
      if (n < din) or (n < tkt) or
         (n < chq) or (n < fat) or
         (n < crt) then
         Raise Exception.Create('Uma ou mais formas de pagamento desnecessárias.');

      if (DM.QCliid.AsInteger = 1) and (fat > 0) then
      begin
         if TFPag.State = dsedit then
            TFPagvalor.Value := 0;

         fat := 0;
         ShowMessage('Forma de pagamento "Fatura" inválida para cliente não cadastrado.');
         exit;
      end;

      if (DM.QCliid.AsInteger = 1) and (chq > 0) and
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

      btnf4.Enabled :=  (Total.VrDesc = 0);

      Result         := True;
      btnF5.Enabled  := lblToFloat(lblDif)=0;
      btnF11.Enabled := lblToFloat(lblDif)=0;
   end;
end;

procedure TfrmConcluir.tbvEditKeyPress(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Char);
begin
  inherited;
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
    {  if (key =80)and(pos('parcelamento', label6.Caption) >0) then//P
      begin
         if TFPagvalor.Value = 0 then
         begin
            ShowMessage('Informe o valor');
            exit;
         end;
        // ShowMessage('Falta fazer as parcelas');
         frmParcelas := TfrmParcelas.Create(self);

         if frmParcelas.ShowModal = mrOk then
         begin
            TFPag.Edit;
            TFPagparcelas.AsInteger := Trunc(frmParcelas.edParcela.Value);
            TFPag.Post;
            LblParcelado.Visible := TFPagparcelas.Value > 0;
            Total.Parcelas       := TFPagparcelas.AsInteger;
            LblParcelado.Caption := format('Parcelado em %d X', [Total.Parcelas]);
         end;
            FreeAndNil(frmParcelas);
      end;  }

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
         TFPagvalor.Value := (total.valor * TFPagvalor.Value)/100;

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

procedure TfrmConcluir.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmConcluir.FormCreate(Sender: TObject);
begin
   TFPag.Tag   := 0; //flag para liberar o evento onafterpost de t1
   TFPag.Open;

   while not TFPag.IsEmpty do
   TFPag.Delete;

   btnF5.Enabled := DM_INI.INI.StoredValue['venda_comissionada'];

   DM_PDV.Q1.Open('select sum(vDesc) from pv');

   TemDescontoItem := DM_PDV.Q1.fields[0].ascurrency >0;
   Total := TTotal.Create(nil);
   Total.Clear;
   Total.Fpag.Clear;
   Total.IBPTax := Total_IBPTax;
   Load_FPag; //carrega as fpag
   Total.Valor := Total_venda;
   Mostra;
end;

procedure TfrmConcluir.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F3: if btnf3.Enabled then btnf3.Click;
      VK_F4: if btnf4.Enabled then btnf4.Click;
      VK_F5: if btnf5.Enabled then btnf5.Click;
      VK_F11: if btnf11.Enabled then btnf11.Click;
      VK_ESCAPE: if btnSair.Enabled then btnSair.Click;
   end;
end;

procedure TfrmConcluir.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;

end;

procedure TfrmConcluir.FormShow(Sender: TObject);
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

   grd1.SetFocus;
   TFPag.First;
end;

procedure TfrmConcluir.Load_FPag(filtro: string);//o filtro so permite inserir o referenciado nele (ex: "-")
begin //desconto primeiro
   TFPag.DisableControls; //as FPag sao filtrada por ECF (no DM_PDV) e por uso (em TFPag) pelo filtro
   DM.QFPag.Open('select * from fpag where uso=' + Texto_Mysql(filtro));

   if DM_INI.ini.StoredValue['desconto_sobre_total'] then
   begin
      if DM.QFPag.Locate('tipo', 'DES', []) then
      begin
         TFPag.Append;
         TFPagid.Value       := DM.QFPagid.AsInteger;
         TFPagnome.AsString  := AnsiUpperCase(DM.QFPagdescr.AsString);
         TFPagtipo.AsString  := DM.QFPagtipo.AsString;
         TFPagecf.AsString   := DM.QFPagindice_tef.AsString;
         TFPagvalor.Value    := 0;
         TFPagparcelas.Value := 0;
         TFPag.Post;
      end;
   end;

   DM.QFPag.First; //outros totalizadores menos crt e DES

   while not DM.QFPag.Eof do
   begin
      if (DM.QFPagtipo.AsString <> 'DES')and
         (DM.QFPagtipo.AsString <> 'CRT')and
         (DM.QFPaguso.AsString = filtro) then //por default é "-"
      begin
         TFPag.Append;
         TFPagid.Value       := DM.QFPagid.AsInteger;
         TFPagnome.AsString  := AnsiUpperCase(DM.QFPagdescr.AsString);
         TFPagtipo.AsString  := DM.QFPagtipo.AsString;
         TFPagecf.AsString   := DM.QFPagindice_tef.AsString;
         TFPagvalor.Value    := 0;
         TFPagparcelas.Value := 0;

         with  Total.Fpag.Add do
         begin
            Descricao := TFPagNome.AsString;
            Prazo     := TFPagTipo.Value = 'FAT';
            Tipo      := TFPagTipo.AsString;
            Indice    := Format('%.2d', [DM.QFPagindice_tef.AsInteger]);
            valor     := 0;
         end;

         TFPag.Post;
      end;

      DM.QFPag.Next;
   end;

   //por ultimo o crt
   DM.QFPag.First;

   while not DM.QFPag.Eof do
   begin
      if (DM.QFPagtipo.AsString = 'CRT')and
         (DM.QFPaguso.AsString = filtro) then
      begin
         TFPag.Append;
         TFPagid.Value       := DM.QFPagid.AsInteger;
         TFPagnome.AsString  := AnsiUpperCase(DM.QFPagdescr.AsString);
         TFPagtipo.AsString  := DM.QFPagtipo.AsString;
         TFPagecf.AsString   := DM.QFPagindice_tef.AsString;
         TFPagvalor.Value    := 0;
         TFPagparcelas.Value := 0;

         with  Total.Fpag.Add do
         begin
            Descricao := TFPagNome.AsString;
            Prazo     := False;
            Tipo      := TFPagTipo.AsString;
            Indice    := Format('%.2d', [DM.QFPagindice_tef.AsInteger]);
            valor     := 0;
         end;

         TFPag.Post;
      end;
      DM.QFPag.Next;
   end;

   TFPag.First;
   TFPag.EnableControls;
end;

end.
