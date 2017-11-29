unit uVendaNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxImageComboBox,
  cxLabel, cxTextEdit, cxMaskEdit, cxCalendar, cxGroupBox, cxRadioGroup, cxPC,
  ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, Data.DB, cxStyles, cxCustomData, cxFilter,  uViews,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, pcnConversao,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxCheckBox, cxMemo, cxProgressBar, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TfrmVendaNF = class(Tfrm)
    pg1: TcxPageControl;
    TAB1: TcxTabSheet;
    rg1: TcxRadioGroup;
    tab2: TcxTabSheet;
    D1: TcxDateEdit;
    D2: TcxDateEdit;
    cxLabel1: TcxLabel;
    btnExibir: TcxButton;
    cmbDest: TcxImageComboBox;
    cxLabel2: TcxLabel;
    QVendas: TFDQuery;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    DSVendas: TDataSource;
    tbvid: TcxGridDBColumn;
    tbvdata: TcxGridDBColumn;
    tbvhora: TcxGridDBColumn;
    tbvcoo: TcxGridDBColumn;
    tbvvalor: TcxGridDBColumn;
    tbvterminal: TcxGridDBColumn;
    QVendasid: TFDAutoIncField;
    QVendastipo: TStringField;
    QVendascliente: TIntegerField;
    QVendasoperador: TIntegerField;
    QVendasvendedor: TIntegerField;
    QVendascancelado: TStringField;
    QVendasdata: TDateField;
    QVendashora: TStringField;
    QVendascoa: TIntegerField;
    QVendascoo: TIntegerField;
    QVendasccf: TIntegerField;
    QVendaspv: TStringField;
    QVendasnf: TIntegerField;
    QVendasserie_d: TIntegerField;
    QVendascv: TMemoField;
    QVendasvalor: TFloatField;
    QVendasvr_desconto: TFloatField;
    QVendasvr_desc_posvenda: TFloatField;
    QVendasvr_pago: TFloatField;
    QVendasvr_comissao: TFloatField;
    QVendasvr_abat: TFloatField;
    QVendasvr_din: TFloatField;
    QVendasvr_chq: TFloatField;
    QVendasvr_card: TFloatField;
    QVendasvr_outros: TFloatField;
    QVendasvr_tkt: TFloatField;
    QVendastroco: TFloatField;
    QVendasobs: TMemoField;
    QVendasterminal: TStringField;
    QVendasoper_crt: TStringField;
    QVendastipo_crt: TStringField;
    QVendasdt_atualiz: TSQLTimeStampField;
    QVendasmd5: TStringField;
    QVendashash: TStringField;
    btnVoltar: TcxButton;
    btnGerar: TcxButton;
    Panel1: TPanel;
    T1: TFDMemTable;
    T1id: TIntegerField;
    T1item: TIntegerField;
    T1cod_gtin: TStringField;
    T1nome: TStringField;
    T1vr_custo: TCurrencyField;
    T1bc_icms: TCurrencyField;
    T1pc_icms: TCurrencyField;
    T1bc_icms_st: TCurrencyField;
    T1vr_icms_st: TCurrencyField;
    T1vr_ipi: TCurrencyField;
    T1qtd: TCurrencyField;
    T1unid: TStringField;
    mmDadosAdic: TcxMemo;
    cb1: TcxCheckBox;
    T1cfop: TStringField;
    bar1: TcxProgressBar;
    procedure FormShow(Sender: TObject);
    procedure btnExibirClick(Sender: TObject);
    procedure TAB1Show(Sender: TObject);
    procedure tab2Show(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure tbvSelectionChanged(Sender: TcxCustomGridTableView);
    procedure cb1Click(Sender: TObject);
  private
    procedure Gerar(vendas:string);
  public
    { Public declarations }
  end;

var
  frmVendaNF: TfrmVendaNF;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, udm_ini, uFuncoes, udmnfe, uMain;

procedure TfrmVendaNF.btnExibirClick(Sender: TObject);
begin
   D1.PostEditValue;
   d2.PostEditValue;

   if (D1.Date <=0)or(D2.Date < D1.Date) then
      raise Exception.Create('Período incorreto.');

   if cmbDest.ItemIndex <0 then
      raise Exception.Create('Informe o destinatário.');

   QVendas.Close;
   QVendas.Params[0].Value := cmbDest.Properties.Items[cmbDest.ItemIndex].Value;
   QVendas.Params[1].Value := RG1.Properties.Items[RG1.ItemIndex].Value;
   QVendas.Params[2].Value := D1.Date;
   QVendas.Params[3].Value := D2.Date;
   QVendas.Open;

   if QVendas.IsEmpty then
   begin
      ShowMessage('Nenhuma venda encontrada.');
      QVendas.Close;
      Exit;
   end
   else
   begin
      pg1.ActivePage := tab2;
      Panel1.Caption := cmbDest.Properties.Items[cmbDest.ItemIndex].Description;
   end;
end;

procedure TfrmVendaNF.btnGerarClick(Sender: TObject);
var
  i, ARowIndex: integer;
  st_id, st_cupom: string;
  ARowInfo: TcxRowInfo;
begin
 // i := tbv.DataController.GetSelectedCount;

   with tbv.DataController do  //varre os selecionados
   begin
      for i := 0 to Pred(GetSelectedCount) do
      begin
         ARowIndex := GetSelectedRowIndex(i); // retorna o índice da linha selecionada
         ARowInfo  := GetRowInfo(ARowIndex); // retorna informação da linha selecionada
         st_id     := st_id + (VarToStr(Values[ARowInfo.RecordIndex, Tbvid.index])) + ','; //obtem o id da venda

         if rg1.ItemIndex = 1 then  //obtem o coo + o ECF
            st_cupom  := st_cupom + (VarToStr(Values[ARowInfo.RecordIndex, tbvcoo.index])) + '-' +
                                    (VarToStr(Values[ARowInfo.RecordIndex, tbvterminal.index])) + ', ';
      end;
   end;

   //retira  a ultima virgula
   delete(st_id, length(st_id), 1);
   delete(st_cupom, length(st_cupom)-1, 2);

   if st_cupom = '' then //se nao é ecf retorna o coo da venda NF
      st_cupom := st_id
   else
      mmDadosAdic.Text := 'NF Emit.: em Subst.: aos Cupons Fiscais: ' + st_cupom;

   if (MessageBox(0, PWideChar(C_262 + st_cupom + '?'), C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;
   //obtem os itens agrupados por código, preço e icms e ordenados por nome
   Bar1.Show;
   DM.Q5.Open('select cProd, cEAN, xProd, NCM, CFOP, uCom, vUnCom, sum(qCom) as qCom,' +
              'sum(vProd) as vProd, sum(vDesc) as vDesc, ICMS_CST,ICMS_orig, ' +
              'ICMS_modBC,sum(ICMS_vBC) as ICMS_vBC,ICMS_pICMS, sum(ICMS_vICMS) as ICMS_vICMS, ' +
              'ICMS_CSOSN,ICMS_pCredSN,sum(ICMS_vCredICMSSN)as ICMS_vCredICMSSN, ' +
              'ICMS_modBCST,ICMS_pMVAST,sum(ICMS_vTabelaST) as ICMS_vTabelaST, ' +
              'ICMS_pRedBCST, sum(ICMS_vBCST) as ICMS_vBCST,ICMS_pICMSST, ' +
              'sum(ICMS_vICMSST) as ICMS_vICMSST,ICMS_pRedBC,IPI_CST,IPI_clEnq, ' +
              'IPI_CNPJProd,IPI_cSelo,IPI_qSelo,IPI_cEnq,sum(IPI_vBC) as IPI_vBC, ' +
              'IPI_qUnid, sum(IPI_vUnid) as IPI_vUnid, IPI_pIPI, ' +
              'sum(IPI_vIPI)as IPI_vIPI,II_vBc, sum(II_vDespAdu)as II_vDespAdu, ' +
              'sum(II_vII) as II_vII, sum(II_vIOF) as II_vIOF,PIS_CST,sum(PIS_vBC) as PIS_vBC, ' +
              'PIS_pPIS, sum(PIS_vPIS) as PIS_vPIS,PIS_qBCProd,sum(PIS_vAliqProd) as PIS_vAliqProd, ' +
              'sum(PISST_vBc) as PISST_vBc,PISST_pPis,sum(PISST_qBCProd) as PISST_qBCProd, ' +
              'sum(PISST_vAliqProd) as PISST_vAliqProd,sum(PISST_vPIS) as PISST_vPIS,COFINS_CST, ' +
              'sum(COFINS_vBC)as COFINS_vBC, COFINS_pCOFINS, sum(COFINS_vCOFINS) as COFINS_vCOFINS, ' +
              'sum(COFINS_qBCProd) as COFINS_qBCProd,COFINS_vAliqProd, ' +
              'sum(COFINSST_vBC) as COFINSST_vBC,COFINSST_pCOFINS,sum(COFINSST_qBCProd) as COFINSST_qBCProd, ' +
              'sum(COFINSST_vAliqProd) as COFINSST_vAliqProd, ' +
              'sum(COFINSST_vCOFINS) as COFINSST_vCOFINS, sum(ISSQN_vBC) as ISSQN_vBC, ' +
              'sum(ICMS_vBCSTRet) as ICMS_vBCSTRet, sum(ICMS_vICMSSTRet) as ICMS_vICMSSTRet, ' +
              'sum(vTotTrib) as vTotTrib,ecf_aliq ' +
              'from venda_item where venda_item.venda in(' + st_id +
              ') group by cProd,vUnCom, ICMS_pICMS order by xProd');

   Bar1.Properties.Max := DM.Q5.RecordCount;
   Bar1.Position       := 0;
   Gerar(st_id);
end;

procedure TfrmVendaNF.Gerar(vendas:string);
var
   s: string;
begin
   //limpa as tabelas locais de NF
   if DM_NFE.QNF.state in [dsinsert] then
      DM_NFE.QNF.Cancel
   else
   begin
      if DM_NFE.QNF.state in [dsedit] then
         DM_NFE.QNF.Cancel;

      if DM_NFE.QNFstatus.AsInteger <> 105 then
         DM_NFE.Delete_NF_Local;
   end;

   DM.QvwDest_nf.Open(VwDestNF + ' where id=' + Texto_Mysql(cmbDest.Properties.Items[cmbDest.ItemIndex].Value) );

   with DM_NFE do
   begin
      QNF.Insert;
      QNFid_venda.AsString  := vendas;//flag para marcar as vendas que geraram NF
      QNFIde_tpNF.Value     := 1;//saida

      QNFIde_natOp.AsString := Iif(rg1.ItemIndex=1, 'SUBSTITUIÇÃO CUPOM FISCAL', 'VENDA');
      QNFIde_indPag.Value   := 0;//A VISTA

      frmMain.PopularMunic(copy(DM.QvwDest_nfcidade_cod.AsString,1,2), frmMain.cmbDest_EnderDest_cMun);
      QNFDest_CNPJCPF.AsString := Number(DM.QvwDest_nfcnpj.AsString);
      QNFDest_IE.AsString      := Number(DM.QvwDest_nfie.AsString);

      if QNFDest_IE.AsString = C_ST_VAZIO then
         QNFDest_IE.AsString := 'ISENTO';

      QNFDest_xNome.AsString             := DM.QvwDest_nfrazaosocial.AsString;
      QNFDest_EnderDest_Fone.AsString    := number(DM.QvwDest_nftel1.AsString);
      QNFDest_EnderDest_CEP.AsString     := Number(DM.QvwDest_nfcep.AsString);
      QNFDest_EnderDest_xLgr.AsString    := DM.QvwDest_nflogradouro.AsString;
      QNFDest_EnderDest_nro.AsString     := DM.QvwDest_nfnmro.AsString;
      QNFDest_EnderDest_xCpl.AsString    := DM.QvwDest_nfcomplem.AsString;
      QNFDest_EnderDest_xBairro.AsString := DM.QvwDest_nfbairro.AsString;
      QNFDest_EnderDest_cMun.Value       := DM.QvwDest_nfcidade_cod.AsInteger;
      QNFDest_EnderDest_xMun.AsString    := DM.QvwDest_nfcidade.AsString;
      QNFDest_EnderDest_UF.AsString      := DM.QvwDest_nfuf.AsString;
      QNFinfCpl_Dig.AsString             := mmDadosAdic.Text;
      QNF.Post;
   end;

   //DM.QvwEstoque.Open;

   while not DM.Q5.Eof do
   begin
      DM.QvwEstoque.Open('select * from vw_estoque where id="' + DM.Q5.FieldByName('cProd').AsString + '";');

      if DM.QvwEstoque.IsEmpty then
         raise Exception.Create('Produto "' + DM.Q5.FieldByName('cProd').AsString + '" não encontrado.');

      Bar1.Position := DM.Q5.RecNo;

      with DM_NFE do
      begin
         QNF_Item.Append;
         Application.ProcessMessages;

         if ValidaEAN(DM.Q5.FieldByName('cEAN').AsString) then
            QNF_ItemcEAN.AsString := DM.Q5.FieldByName('cEAN').AsString;

         QNF_ItemcProd.AsString := DM.Q5.FieldByName('cProd').AsString;
         QNF_ItemxProd.AsString := DM.Q5.FieldByName('xProd').AsString;
         QNF_ItemNCM.AsString   := DM.Q5.FieldByName('NCM').AsString;
        // QNF_ItemEXTIPI.AsString := DM.QvwEstoqueextipi.AsString;
         QNF_ItemuCom.AsString  := Clip(DM.Q5.FieldByName('uCom').AsString,2);

         //inclui o CFOP, QTD e valor de custo
         QNF_ItemCFOP.AsString     := Iif(rg1.ItemIndex=0, DM.Q5.FieldByName('CFOP').AsString, Copy(DM.Q5.FieldByName('CFOP').AsString,1,1) + '929');
         QNF_ItemqCom.Value        := DM.Q5.FieldByName('qCom').AsCurrency;
         QNF_ItemvUnCom.Value      := DM.Q5.FieldByName('vUnCom').AsCurrency;
         //para obter o desconto no item : vProd - ICMS_vBC
         QNF_ItemvDesc.Value       := DM.Q5.FieldByName('vProd').AsCurrency - DM.Q5.FieldByName('ICMS_vBC').AsCurrency ;
         QNF_ItemICMS_orig.Value   := DM.Q5.FieldByName('ICMS_orig').AsInteger; //nacional
         QNF_ItemICMS_modBC.Value  := DM.Q5.FieldByName('ICMS_modBC').AsInteger;

         DM.Q2.Open('select cod_receita from estoque where id=' + Texto_Mysql(DM.Q5.FieldByName('cProd').Value));
         QNF_ItemPIS_codrec.Value := DM.Q2.FieldByName('cod_receita').asInteger;

         s := '';

         if(QNFEmit_CRT.Value >0)and(rg1.ItemIndex = 0) then//se nao é SN  e nao é ECF
         begin
            DM.Q2.Open('select icms_pc, texto from estoque_info_complem where id=' + Texto_Mysql(DM.QEstoqueinfo_complem.Value));

            if not DM.QEstoque_Info_compl.IsEmpty then
            begin
               QNF_ItemICMS_pRedBC.Value  := DM.Q2.Fields[0].AsCurrency;
               if s <> '' then
                  s := s + DM.Q2.Fields[1].AsString
               else
                  s := 'Item ' + QNF_ItemnItem.AsString + ': ' + DM.Q2.Fields[1].AsString;
            end;
         end;

         if rg1.ItemIndex=0 then//venda NF
         begin
            QNF_ItemICMS_modBC.Value  := DM.Q5.FieldByName('ICMS_modBC').AsInteger;
            QNF_ItemICMS_pICMS.Value  := DM.Q5.FieldByName('ICMS_pICMS').AsCurrency;

            if DM_NFE.QNFEmit_CRT.AsInteger = 0 then  //SN
            begin
               QNF_ItemICMS_CST.Value   := integer(cstVazio);
               QNF_ItemICMS_CSOSN.Value := DM_NFE.Converter_CST_CSOSN(False, DM.Q5.FieldByName('ICMS_CST').AsString);
            end
            else
               QNF_ItemICMS_CST.Value := DM_NFE.Converter_CST_CSOSN(True, DM.Q5.FieldByName('ICMS_CST').AsString);

            QNF_ItemPIS_CST.Value    := DM.Q5.FieldByName('PIS_CST').AsInteger;
            QNF_ItemCOFINS_CST.Value := DM.Q5.FieldByName('PIS_CST').AsInteger;
            QNF_ItemIPI_CST.Value    := DM.Q5.FieldByName('IPI_CST').AsInteger;
         end
         else //ECF
         begin
            DM.Q2.Open('select * from cfop_cst_csosn_emissao where cfop=' + Texto_Mysql(QNF_ItemCFOP.AsString));
            QNF_ItemICMS_modBC.Value  := 3;//dbiValorOperacao
            QNF_ItemICMS_pICMS.Value  := DM.Q5.FieldByName('ICMS_pICMS').AsCurrency;//mantem o pICMS

            if DM_NFE.QNFEmit_CRT.AsInteger = 0 then  //SN
            begin
               QNF_ItemICMS_CST.Value   := integer(cstVazio);
               QNF_ItemICMS_CSOSN.Value := DM.Q2.FieldByName('cst').AsInteger;
            end
            else
               QNF_ItemICMS_CST.Value := DM.Q2.FieldByName('cst').AsInteger;

            QNF_ItemPIS_CST.Value    := DM.Q2.FieldByName('cst_pis_sai').AsInteger;
            QNF_ItemCOFINS_CST.Value := DM.Q2.FieldByName('cst_pis_sai').AsInteger;
            QNF_ItemIPI_CST.Value    := DM.Q2.FieldByName('cst_ipi_sai').AsInteger;
         end;

         QNF_Item.Post;
      end;

      DM.Q5.Next;
   end;
   DM_NFE.Preenche_Info_Compl(False);
   frmMain.AtivaTabs('12345678');
   frmMain.PGItem.ActivePage := frmMain.TabItem;
   btnSair.Click;
end;

procedure TfrmVendaNF.btnVoltarClick(Sender: TObject);
begin
   pg1.ActivePage := Tab1;
end;

procedure TfrmVendaNF.cb1Click(Sender: TObject);
begin
   mmDadosAdic.Visible := cb1.Checked;
end;

procedure TfrmVendaNF.FormCreate(Sender: TObject);
begin
    inherited;
    Tab1.TabVisible := False;
    Tab2.TabVisible := False;
    pg1.ActivePage  := Tab1;
end;

procedure TfrmVendaNF.FormShow(Sender: TObject);
begin
   inherited;
   DM.Q1.Open('select * from vw_clivenda order by nome');

   while not DM.Q1.Eof do
   begin
      with cmbDest.Properties.Items.Add do
      begin
         Description := DM.Q1.FieldByName('nome').AsString;
         Value       := DM.Q1.FieldByName('id').AsInteger;
      end;

      DM.Q1.Next;
   end;
end;

procedure TfrmVendaNF.TAB1Show(Sender: TObject);
begin
   btnGerar.Hide;
   D1.SetFocus;
end;

procedure TfrmVendaNF.tab2Show(Sender: TObject);
begin
   btnGerar.Show;
end;

procedure TfrmVendaNF.tbvSelectionChanged(Sender: TcxCustomGridTableView);
begin
   btnGerar.Enabled := tbv.DataController.GetSelectedCount > 0;
end;

end.
