unit uAssDevol;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, pcnConversao,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxPCdxBarPopupMenu,
  cxContainer, cxEdit, cxLabel, cxTextEdit, cxPC, cxDBLabel,cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  Data.DB, cxDBData, cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxClasses, cxMemo, cxMaskEdit, cxDropDownEdit, cxGroupBox, cxRadioGroup, cxCheckBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, uViews,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, dxSkinsCore,
  dxSkinCaramel, dxSkinscxPCPainter, dxBarBuiltInMenu;

type
  TfrmAssDevol = class(Tfrm)
    pg1: TcxPageControl;
    Tab1: TcxTabSheet;
    Tab2: TcxTabSheet;
    Tab3: TcxTabSheet;
    edNmro: TcxTextEdit;
    edMotivo: TcxTextEdit;
    Panel1: TPanel;
    btnObterNF: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Label12: TcxLabel;
    Label10: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBTextEdit4: TcxDBLabel;
    cxDBTextEdit2: TcxDBLabel;
    Label16: TcxLabel;
    cxDBCalcEdit5: TcxDBLabel;
    Label21: TcxLabel;
    cxDBCalcEdit10: TcxDBLabel;
    cxLabel3: TcxLabel;
    Label4: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    edchave: TcxDBLabel;
    edSerie: TcxDBLabel;
    cxDBDateEdit1: TcxDBLabel;
    cxDBDateEdit2: TcxDBLabel;
    cxLabel4: TcxLabel;
    cxDBLabel3: TcxDBLabel;
    btnPesqProd: TcxButton;
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
    T1qtd: TCurrencyField;
    T1vr_ipi: TCurrencyField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    grdItens: TcxGrid;
    tbvItens: TcxGridDBTableView;
    lvItens: TcxGridLevel;
    DataSource1: TDataSource;
    tbvItensid: TcxGridDBColumn;
    tbvItensitem: TcxGridDBColumn;
    tbvItenscod_gtin: TcxGridDBColumn;
    tbvItensnome: TcxGridDBColumn;
    tbvItensvr_custo: TcxGridDBColumn;
    tbvItensqtd: TcxGridDBColumn;
    T1unid: TStringField;
    mmDadosAdic: TcxMemo;
    cmb1: TcxComboBox;
    cxLabel5: TcxLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnMontar: TcxButton;
    Tab4: TcxTabSheet;
    T2: TFDMemTable;
    DataSource2: TDataSource;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    T2nmro: TIntegerField;
    T2data: TDateField;
    T2nome: TStringField;
    T2valor: TCurrencyField;
    cxGridDBTableView1nmro: TcxGridDBColumn;
    cxGridDBTableView1data: TcxGridDBColumn;
    cxGridDBTableView1nome: TcxGridDBColumn;
    cxGridDBTableView1valor: TcxGridDBColumn;
    btnSel: TcxButton;
    rg1: TcxRadioGroup;
    T1qtd_nf: TFloatField;
    T2id: TIntegerField;
    Label106: TcxLabel;
    Label1: TLabel;
    cmbCFOP: TcxImageComboBox;
    procedure btnObterNFClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Tab3Show(Sender: TObject);
    procedure pg1Change(Sender: TObject);
    procedure btnPesqProdClick(Sender: TObject);
    procedure Tab1Show(Sender: TObject);
    procedure Tab2Show(Sender: TObject);
    procedure btnSelClick(Sender: TObject);
    procedure btnMontarClick(Sender: TObject);
    procedure T1BeforePost(DataSet: TDataSet);
  private
    procedure Dados_Adic;
  public
    { Public declarations }
  end;

var
  frmAssDevol: TfrmAssDevol;
  path_grd: string;

implementation

{$R *.dfm}

uses udmnfe, uDM_NF_Entr, uFuncoes, uAutocomConsts, uMD5Print, uDM, uMain,
  uDM_Conn;

procedure TfrmAssDevol.btnMontarClick(Sender: TObject);
var
   n: currency;
   s: string;

   function CFOP: string;

   begin
      DMConn.Q1.Open('select * from cfop_devol where id=' + IntToStr(cmbCFOP.Properties.Items[cmbCFOP.SelectedItem].Value));

      Result := DMConn.Q1.FieldByName('cfop').AsString;

      //preenche os demais campos

      if DM_NFE.QNFEmit_CRT.AsInteger = 0 then  //SN
      begin
         DM_NFE.QNF_ItemICMS_CST.Value   := integer(cstVazio);
         DM_NFE.QNF_ItemICMS_CSOSN.Value := DMConn.Q1.FieldByName('csosn').AsInteger;
      end
      else
      begin
         DM_NFE.QNF_ItemICMS_CST.Value   := DMConn.Q1.FieldByName('cst').AsInteger;
         DM_NFE.QNF_ItemICMS_CSOSN.Value := integer(csosnVazio);
      end;

      DM_NFE.QNF_ItemPIS_CST.Value    := DMConn.Q1.FieldByName('cst_pis').AsInteger;
      DM_NFE.QNF_ItemCOFINS_CST.Value := DMConn.Q1.FieldByName('cst_pis').AsInteger;
      DM_NFE.QNF_ItemIPI_CST.Value    := DMConn.Q1.FieldByName('cst_ipi').AsInteger;
   end;

begin
   T1.DisableControls;
   T1.Filter := 'qtd>0';
   T1.Filtered := True;
   T1.First;

   if T1.IsEmpty then
   begin
      T1.Filtered := False;
      raise Exception.Create('Nenhum item foi informado quantidade para devolução.');
   end;

   if rg1.ItemIndex < 0 then
      raise Exception.Create('Informe a atividade do destinatário.');

   if cmbCFOP.ItemIndex < 0 then
      raise Exception.Create('Informe o CFOP a ser utilizado.');

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

   DM.QvwDest_nf.Open(VwDestNF);
   DM.QvwDest_nf.Locate('cnpj', DM_NF_Entr.QNFEmit_CNPJCPF.AsString, []);

   with DM_NFE do
   begin
      QNF.Insert;
      QNFIde_tpNF.Value       := 1;//saida
      QNFIde_natOp.AsString   := 'DEVOLUÇÃO DE MERCADORIA';
      QNFIde_indPag.Value     := 2;//outras
      QNFIde_Cons_Final.Value := 0; //não é cons final
      QNFIde_Presencial.Value := 1;//presencial (por sugestão)
      QNFIde_finNFe.Value     := 3;//devolução

      frmMain.PopularMunic(copy(DM.QvwDest_nfcidade_cod.AsString,1,2), frmMain.cmbDest_EnderDest_cMun);
      QNFDest_CNPJCPF.AsString           := Number(DM.QvwDest_nfcnpj.AsString);
      QNFDest_IE.AsString                := Number(DM.QvwDest_nfie.AsString);

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

      //grava a nf referenciada
      QNF_Referenciada.Append;
      QNF_ReferenciadaRefNF_modelo.Value := DM_NF_Entr.QNFIde_modelo.Value;

      if DM_NF_Entr.QNFIde_modelo.Value = 55 then
         QNF_ReferenciadarefNFe.AsString := DM_NF_Entr.QNF_Chavechave.AsString
      else
      if DM_NF_Entr.QNFIde_modelo.Value = 4 then //PRODUTOR
      begin
         QNF_ReferenciadaRefNFP_cUF.Value     := DM_NF_Entr.QNFIde_cUF.Value;
         QNF_ReferenciadaRefNFP_AAMM.Value    := FormatDateTime('mmyy', DM_NF_Entr.QNFIde_dEmi.Value);
         QNF_ReferenciadaRefNFP_CNPJCPF.AsString := Number(DM_NF_Entr.QNFEmit_CNPJCPF.AsString);
         QNF_ReferenciadaRefNFP_serie.Value   := DM_NF_Entr.QNFIde_serie.Value;
         QNF_ReferenciadaRefNFP_nNF.Value     := DM_NF_Entr.QNFIde_nNF.Value;
      end
      else   //OUTRAS
      begin
         QNF_ReferenciadaRefNF_cUF.Value     := DM_NF_Entr.QNFIde_cUF.Value;
         QNF_ReferenciadaRefNF_AAMM.Value    := FormatDateTime('mmyy', DM_NF_Entr.QNFIde_dEmi.Value);
         QNF_ReferenciadaRefNF_CNPJ.AsString := Number(DM_NF_Entr.QNFEmit_CNPJCPF.AsString);
         QNF_ReferenciadaRefNF_serie.Value   := DM_NF_Entr.QNFIde_serie.Value;
         QNF_ReferenciadaRefNF_nNF.Value     := DM_NF_Entr.QNFIde_nNF.Value;
      end;
      QNF_Referenciada.Post;
   end;

   DM.QvwEstoque.Open;

   while not T1.Eof do
   begin
      DM.QvwEstoque.Locate('id', T1id.Value, []);

      with DM_NFE do
      begin
         QNF_Item.Append;

         if ValidaEAN(DM.QvwEstoquecod_gtin.AsString) then
            QNF_ItemcEAN.AsString := DM.QvwEstoquecod_gtin.AsString;

         QNF_ItemcProd.AsString := DM.QvwEstoqueid.AsString;
         QNF_ItemxProd.AsString := DM.QvwEstoquenome.AsString;
         QNF_ItemNCM.AsString   := DM.QvwEstoquencm.AsString;
        // QNF_ItemEXTIPI.AsString := DM.QvwEstoqueextipi.AsString;
         QNF_ItemuCom.AsString  := Clip(T1unid.AsString,2);

         //inclui o CFOP, QTD e valor de custo
         QNF_ItemCFOP.Value        := CFOP;
         QNF_ItemqCom.Value        := T1qtd.Value;
         QNF_ItemvUnCom.Value      := T1vr_custo.Value;
         QNF_ItemICMS_orig.Value   := DM.QvwEstoqueorigem.Value; //nacional
         QNF_ItemICMS_modBC.Value  := DM.QvwEstoqueicms_mod_bc.Value;
         QNF_ItemICMS_pICMS.Value  := T1pc_icms.Value;

         s := '';

         if QNFEmit_CRT.Value >0 then//se nao é SN
         begin
            DMConn.Q1.Open('select icms_pc, texto from estoque_info_complem where id=' + Texto_Mysql(DM.QEstoqueinfo_complem.Value));

            if not DM.QEstoque_Info_compl.IsEmpty then
            begin
               QNF_ItemICMS_pRedBC.Value  := DMConn.Q1.Fields[0].AsCurrency;
               if s <> '' then
                  s := s + DMConn.Q1.Fields[1].AsString
               else
                  s := 'Item ' + QNF_ItemnItem.AsString + ': ' + DMConn.Q1.Fields[1].AsString;
            end;
         end;

         //soma do ipi e ST, jogados em ODA
         QNF_ItemvOutro.Value := (T1vr_icms_st.Value * T1qtd.Value) + (T1vr_ipi.Value * T1qtd.Value);
         QNF_Itembaixa_estoque.Value := 'S';
         QNF_Item.Post;
      end;

      T1.Next;
   end;

   frmMain.AtivaTabs('12345678');
   frmMain.PGItem.ActivePage := frmMain.TabItem;
   btnSair.Click;
end;

procedure TfrmAssDevol.btnObterNFClick(Sender: TObject);
var
   s : string;
begin
   if CMB1.ItemIndex < 0 then
   begin
      edMotivo.SetFocus;
      raise Exception.Create('Informe o tipo de devolução.');
   end;

   if trim(edMotivo.Text) = C_ST_VAZIO then
   begin
      edMotivo.SetFocus;
      raise Exception.Create('Informe o motivo da devolução.');
   end;

   if trim(edNmro.Text) = C_ST_VAZIO then
   begin
      edNmro.SetFocus;
      raise Exception.Create('Informe o nº da NF de compra.');
   end;

   if btnObterNF.Tag=0 then
   begin
      DM_NF_Entr.QNF.Open('select * from nf_entr where Ide_nNF=' + Texto_Mysql(Number(edNmro.Text)));
      DM_NF_Entr.QNF_Chave.OPen;
   end;

   btnObterNF.Tag := 0;

   if DM_NF_Entr.QNF.IsEmpty then
      raise Exception.Create('NF não encontrada');

   Tab2.TabVisible := True;
   T1.Open;
   T1.DisableControls;

   if DM_NF_Entr.QNFEmit_EnderEmit_UF.AsString <> DM.QEmpresauf.AsString then
      s := '"N"'
   else
      s := '"S"';

   DMConn.Q1.Open('select id, CFOP from cfop_devol where interno = ' + s + ' order by cfop');
   cmbCFOP.Properties.Items.Clear;

   while not DMConn.Q1.Eof do
   begin
     with cmbCFOP.Properties.Items.Add do
     begin
        Description := DMConn.Q1.Fields[1].AsString;
        Value       := DMConn.Q1.Fields[0].AsInteger;
     end;
     DMConn.Q1.Next;
   end;

   while not T1.IsEmpty do
      T1.Delete;

   while not DM_NF_Entr.QNF_Item.Eof do
   begin
      T1.Append;
      T1id.Value          := DM_NF_Entr.QNF_ItemcProd.AsInteger; //id do produto
      T1item.Value        := DM_NF_Entr.QNF_ItemnItem.Value;
      T1cod_gtin.AsString := DM_NF_Entr.QNF_ItemcEAN.AsString;
      T1nome.AsString     := DM_NF_Entr.QNF_ItemxProd.AsString;
      T1vr_custo.Value    := DM_NF_Entr.QNF_ItemvUnCom.Value;

      //obtenho o valor unitário de cada valor
      T1bc_icms.Value     := Arredonda(DM_NF_Entr.QNF_ItemICMS_vBC.Value/DM_NF_Entr.QNF_ItemQTD.Value,2);
      T1pc_icms.Value     := DM_NF_Entr.QNF_ItemICMS_pICMS.Value;
      T1bc_icms_st.Value  := Arredonda(DM_NF_Entr.QNF_ItemICMS_vBCST.Value/DM_NF_Entr.QNF_ItemQTD.Value,2);
      T1vr_icms_st.Value  := Arredonda(DM_NF_Entr.QNF_ItemICMS_vICMSST.Value/DM_NF_Entr.QNF_ItemQTD.Value,2);
      T1vr_ipi.Value      := Arredonda(DM_NF_Entr.QNF_ItemIPI_vIPI.Value/DM_NF_Entr.QNF_ItemQTD.Value,2);

      if cmb1.ItemIndex = 1 then//se é total poe a qtd
         T1qtd.Value := DM_NF_Entr.QNF_ItemQTD.Value
      else  //se é parcial deixa zerado
         T1qtd.Value := 0;

      T1qtd_nf.Value      := DM_NF_Entr.QNF_ItemQTD.Value;
      T1unid.AsString     := Clip(DM_NF_Entr.QNF_ItemuCom.AsString,5);
      T1.Post;
      DM_NF_Entr.QNF_Item.Next;
   end;

   Tab2.TabVisible := True;
   Tab3.TabVisible := True;
   T1.EnableControls;
end;

procedure TfrmAssDevol.btnPesqProdClick(Sender: TObject);
var
   S: string;
begin
   if CMB1.ItemIndex < 0 then
   begin
      edMotivo.SetFocus;
      raise Exception.Create('Informe o tipo de devolução.');
   end;

   if trim(edMotivo.Text) = C_ST_VAZIO then
   begin
      edMotivo.SetFocus;
      raise Exception.Create('Informe o motivo da devolução.');
   end;

  S := '';

  if not(InputQuery('Localizar Notas por produto', 'Entre com o código GTIN do produto', S)) then
     exit;

  DMConn.Q1.Open('select Ide_nNF, Ide_dEmi, Emit_xNome, ICMSTot_vNF, n.id from nf_entr n, nf_item_entr na where ' +
             'na.nf = n.id and na.cEAN=' + Texto_Mysql(S) + ' order by Ide_nNF');

  if DMConn.Q1.IsEmpty then
   raise Exception.Create('Nenhuma NF de entrada para este produto.');

   T2.Open;

   while not T2.IsEmpty do
      T2.Delete;

   while not DMConn.Q1.Eof do
   begin
      T2.Append;
      T2nmro.Value  :=  DMConn.Q1.Fields[0].AsInteger;
      T2data.Value  :=  DMConn.Q1.Fields[1].AsDateTime;
      T2nome.AsString  :=  DMConn.Q1.Fields[2].AsString;
      T2valor.Value :=  DMConn.Q1.Fields[3].AsCurrency;
      T2id.Value    :=  DMConn.Q1.Fields[4].AsInteger;
      DMConn.Q1.Next;
   end;

   Tab4.TabVisible := True;
   pg1.ActivePage  := Tab4;
end;

procedure TfrmAssDevol.btnSelClick(Sender: TObject);
begin
   edNmro.Text    := T2nmro.AsString;
   DM_NF_Entr.QNF.Open('select * from nf_entr where id=' + Texto_Mysql(T2id.Value));
   DM_NF_Entr.QNF_Chave.OPen;
   pg1.ActivePage := Tab1;
   T2.Close;
   btnObterNF.Tag := 1;//para nao fazer outra query
   btnObterNF.Click;
end;

procedure TfrmAssDevol.Dados_Adic;
var
   BC, BCST, VRICMS,VRST,VRIPI: currency;
   s: string;
begin
   T1.DisableControls;
   T1.First;
   BC     := 0;
   BCST   := 0;
   VRICMS := 0;
   VRST   := 0;
   VRIPI  := 0;

   while not T1.Eof do
   begin
      BC     := BC + (T1vr_custo.Value * T1qtd.Value);
      BCST   := BCST + (T1bc_icms_st.Value * T1qtd.Value);
      VRICMS := VRICMS + Percentual(T1pc_icms.Value, (T1vr_custo.Value * T1qtd.Value));
      VRST   := VRST + (T1vr_icms_st.Value * T1qtd.Value);
      VRIPI  := VRIPI + (T1vr_ipi.Value * T1qtd.Value);
      T1.Next;
   end;

   T1.EnableControls;

   if DM_NF_Entr.QNFIde_modelo.Value > 54 then
     s := ', CHAVE: ' + DM_NF_Entr.QNF_Chavechave.AsString;

   mmDadosAdic.Lines.Clear;

   mmDadosAdic.Lines.Add('DEVOLUÇÃO ' + CMB1.Text + ' DE MERCADORIA REF.: NF MOD.: ' +
                          DM_NF_Entr.QNFIde_modelo.AsString + ', Nº: ' + edNmro.Text + ', EMIT. EM: ' +
                          FormatDateTime('DD/MM/YYYY', DM_NF_Entr.QNFIde_dEmi.AsDateTime) + s +
                         '. MOTIVO: ' + edMotivo.Text + '.'
   );

   if VRICMS > 0 then
     mmDadosAdic.Lines.Add('BC ICMS: ' + FloatToStrF(BC, ffCurrency, 15,2) + ' VR ICMS: ' + FloatToStrF(VRICMS, ffCurrency, 15,2));

   if VRST > 0 then
     mmDadosAdic.Lines.Add('BC ICMS-ST: ' + FloatToStrF(BCST, ffCurrency, 15,2) + ' VR ICMS-ST: ' + FloatToStrF(VRST, ffCurrency, 15,2));

   if VRIPI > 0 then
     mmDadosAdic.Lines.Add(' VR IPI: ' + FloatToStrF(VRIPI, ffCurrency, 15,2));
end;

procedure TfrmAssDevol.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin //grava as cfg da grid
   for i := 0 to ComponentCount - 1 do
   begin
       if (Components[i] is TcxGridDBTableView) then
          (Components[i] as TcxGridDBTableView).StoreToIniFile(path_grd);
   end;

   if Assigned(DM_NF_Entr) then
   begin
      FreeAndNil(DM_NF_Entr);
   end;
   inherited;
end;

procedure TfrmAssDevol.FormCreate(Sender: TObject);
var
   i: integer;
begin
   inherited;

   for i := 0 to ComponentCount - 1 do //pega o path do .grd
   begin
      if (Components[i] is TcxGridDBTableView) then
          path_grd := Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd');
   end;

   DM_NF_Entr      := TDM_NF_Entr.Create(self);
   pg1.ActivePage  := Tab1;
   Tab3.TabVisible := False;
   Tab2.TabVisible := False;
   Tab4.TabVisible := False;
end;

procedure TfrmAssDevol.FormShow(Sender: TObject);
begin
   inherited;
   cmb1.SetFocus;
end;

procedure TfrmAssDevol.pg1Change(Sender: TObject);
begin
   btnMontar.Visible   := pg1.ActivePage = Tab3;
   btnPesqProd.Visible := pg1.ActivePage = Tab1;
   btnSel.Visible      := pg1.ActivePage = Tab4;
end;

procedure TfrmAssDevol.T1BeforePost(DataSet: TDataSet);
begin
   if T1qtd.Value > T1qtd_nf.Value then
      raise Exception.Create('A quantidade informada não pode ser maior do que a da NF.(' + FloatToStrF(T1qtd.Value, ffNumber,15,3));
end;

procedure TfrmAssDevol.Tab1Show(Sender: TObject);
begin
   Tab4.TabVisible := False;
end;

procedure TfrmAssDevol.Tab2Show(Sender: TObject);
begin
   Tab4.TabVisible := False;
end;

procedure TfrmAssDevol.Tab3Show(Sender: TObject);
begin
   Tab4.TabVisible := False;

   if T1.State = dsEdit then
      T1.Post;

   Dados_Adic;
end;

end.
