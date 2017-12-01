unit uItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxCurrencyEdit, cxLabel, cxDBLabel, dxSkinsCore, dxSkinCaramel;

type
  TfrmItem = class(Tfrm)
    btnF11: TcxButton;
    Panel1: TPanel;
    Panel2: TPanel;
    edQtd: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    Timer1: TTimer;
    pnlDesc: TPanel;
    lblU: TcxLabel;
    edDescU: TcxCurrencyEdit;
    lblT: TcxLabel;
    edDescT: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    pnlpfp: TPanel;
    cxLabel2: TcxLabel;
    edVrUnit: TcxCurrencyEdit;
    procedure edQtdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edDescUPropertiesChange(Sender: TObject);
    procedure edDescTPropertiesChange(Sender: TObject);
    procedure btnF11Click(Sender: TObject);
    procedure edQtdPropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edDescUKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmItem: TfrmItem;

implementation

{$R *.dfm}

uses udm_ini, uFuncoes, uDM, upv, uDM_PDV, uDM_Conn;

procedure TfrmItem.btnF11Click(Sender: TObject);
var
   desconto: currency;
   perc: boolean;
   n: Currency;
   s: string;
begin
   if edQtd.Value <=0 then
      raise Exception.Create('Quantidade incorreta.');

   if edVrUnit.Value <=0 then
      raise Exception.Create('Valor unitário incorreto.');

   if edQtd.Value > DM_INI.ini.StoredValue['max_quant'] then
      raise Exception.Create('Quantidade acima do permitido.');

     // if (pnlpfp.Visible)and(edQtd.Value <=0) then
       //  raise Exception.Create('Quantidade diária prescrita incorreta.');

   if (DM_PDV.TProdfracionavel.Value = 'N')and(Trunc(edQtd.Value)<(edQtd.Value)) then
         raise Exception.Create('Este item não permite fracionamento.');

   if pnlDesc.Visible then
   begin
      if edDescU.Value <0 then
         raise Exception.Create('Desconto incorreto.');

      if edDescT.Value <0 then
         raise Exception.Create('Desconto incorreto.');


      if edDescU.Value > ((edVrUnit.Value * DM_INI.ini.StoredValue['max_desc_item'])/100) then
         raise Exception.Create('Desconto acima do permitido.');

      if edDescT.Value > (((edVrUnit.Value * edQtd.Value) * DM_INI.ini.StoredValue['max_desc_total'])/100) then
         raise Exception.Create('Desconto acima do permitido.');

      perc     := pos('%', lblT.Caption) > 0;
      desconto := 0;

      if edDescU.Value > 0 then
      begin
         desconto := edDescU.Value * edQtd.Value;
      end
      else
      if edDescT.Value > 0 then
      begin
         if perc then
         begin
            desconto := Percentual( (edVrUnit.Value * edQtd.Value), edDescT.Value);  //calcula o % sobre o total
         end
         else
         desconto := edDescT.Value;
      end;

      desconto := Arredonda(desconto, 2);
   end
   else
   desconto := 0;

   DM.QvwEstoque.Open('select * from vw_estoque where id=' + Texto_Mysql(DM.QEstoqueid.Value));

   frmPV.TVenda_Item.Append;
   frmPV.TVenda_ItemcProd.Value   := DM.QvwEstoqueid.Value;
   frmPV.TVenda_ItemcEAN.AsString := DM.QvwEstoquecod_gtin.AsString;

   frmPV.TVenda_ItemuCom.AsString := Clip(DM.QvwEstoquesigla_unid.AsString,2);
   frmPV.TVenda_ItemqCom.Value    := edQtd.Value;
   frmPV.TVenda_ItemvUnCom.Value  := edVrUnit.Value;// DM.QvwEstoquevrvenda_vista.Value;
   frmPV.TVenda_ItemvDesc.Value   := Desconto;

   if edQtd.Value <> 1 then   //arrendonda ou trunca conforme cfg
   begin
      if DM_PDV.TProdcalculo_por_arredondamento.Value = 'N' then
      begin  //trunca
         frmPV.TVenda_ItemvProd.AsCurrency := ((edVrUnit.Value * edQtd.Value )- Desconto )*100;
         frmPV.TVenda_ItemvProd.AsCurrency := trunc(frmPV.TVenda_ItemvProd.AsCurrency)/100;
      end
      else
      begin//arredonda
         frmPV.TVenda_ItemvProd.AsCurrency := ((edVrUnit.Value * edQtd.Value) - Desconto)*100;
         frmPV.TVenda_ItemvProd.AsCurrency := Arredonda(frmPV.TVenda_ItemvProd.AsCurrency/100,2);
      end;
   end
   else
     frmPV.TVenda_ItemvProd.AsCurrency := (edVrUnit.Value - Desconto);

   frmPV.TVenda_ItemxProd.AsString    := DM.QvwEstoquenome.AsString;
   frmPV.TVenda_ItemNCM.AsString      := DM.QvwEstoquencm.AsString;
   frmPV.TVenda_Itemecf_aliq.AsString := DM.QvwEstoquealiq_ecf.AsString;

   if frmPV.TVenda_Itemecf_aliq.AsString = 'ISS' then
   begin
      frmPV.TVenda_ItemISSQN_SitTrib.Value     := DM.QvwEstoquecod_cst.Value;
      frmPV.TVenda_ItemISSQN_vBC.AsCurrency    := frmPV.TVenda_ItemvProd.AsCurrency;
      frmPV.TVenda_ItemISSQN_vAliq.AsCurrency  := StrToFloatDef(DM.QvwEstoquealiq_ecf.AsString,0)/100;
      frmPV.TVenda_ItemISSQN_vISSQN.AsCurrency := Arredonda((frmPV.TVenda_ItemISSQN_vBC.AsCurrency *
                                                             frmPV.TVenda_ItemISSQN_vAliq.AsCurrency)/100, 2);
   end
   else
   begin
      frmPV.TVenda_ItemICMS_CST.Value     := DM.QvwEstoquecod_cst.Value;
      frmPV.TVenda_ItemICMS_orig.AsString := DM.QvwEstoqueorigem.AsString;
      frmPV.TVenda_ItemICMS_modBC.Value   := DM.QvwEstoqueicms_mod_bc.Value;


      s := '';

      if Desconto > 0 then
         s := 'Item ' + frmPV.TVenda_ItemnItem.AsString + ': Desc. de ' + FloatToStrF(Desconto, ffCurrency, 15, 2) + ' ';

      DMConn.Q1.Open('select icms_pc, texto from estoque_info_complem where id=' + Texto_Mysql(DM.QEstoqueinfo_complem.Value));

      //processa a red BC se houver

      frmPV.TVenda_ItemICMS_vBC.AsCurrency := frmPV.TVenda_ItemvProd.AsCurrency;
      //n assume o valor da BC normal
      n := frmPV.TVenda_ItemvProd.AsCurrency;

      if DM.QvwEstoqueinfo_complem.Value > 0 then //se tem RedBC
      begin
         DMConn.Q1.Open('select * from estoque_info_complem where id=' + Texto_Mysql(DM.QvwEstoqueinfo_complem.Value));
         //n assume o valor da redução
         n := Arredonda(Percentual(DMConn.Q1.FieldByName('icms_pc').AsCurrency, frmPV.TVenda_ItemvProd.AsCurrency), 2);
         //em tese, a BC se mantem e so informa o pRedBC
         //frmPV.TVenda_ItemICMS_vBC.AsCurrency := n;
         frmPV.TVenda_ItemICMS_pRedBC.Value := DMConn.Q1.FieldByName('icms_pc').AsCurrency;

         if s <> '' then
            s := s + DMConn.Q1.Fields[1].AsString
         else
            s := 'Item ' + frmPV.TVenda_ItemnItem.AsString + ': ' + DMConn.Q1.Fields[1].AsString;
      end;

      frmPV.TVenda_IteminfAdProd.AsString    := s;
      frmPV.TVenda_ItemICMS_pICMS.AsCurrency := StrToFloatDef(DM.QvwEstoquealiq_ecf.AsString,0)/100;
      //calcula o icms com base em n
      frmPV.TVenda_ItemICMS_vICMS.AsCurrency := Arredonda((n * frmPV.TVenda_ItemICMS_pICMS.AsCurrency)/100, 2);
   end;

   //st
   frmPV.TVenda_ItemICMS_pICMSST.Value   := DM.QvwEstoqueicms_st_picms.Value;
   frmPV.TVenda_ItemICMS_pRedBCST.Value  := DM.QvwEstoqueicms_st_p_red_bc.Value;
   frmPV.TVenda_ItemICMS_modBCST.Value   := DM.QvwEstoqueicms_st_mod_bc.Value;
   frmPV.TVenda_ItemICMS_vTabelaST.Value := DM.QvwEstoqueicms_st_vtabela.Value;
   frmPV.TVenda_ItemICMS_pMVAST.Value    := DM.QvwEstoqueicms_st_pmva.Value;

   frmPV.TVenda_ItemPIS_CST.Value    := DM.QvwEstoquecst_pis_sai.Value;
   frmPV.TVenda_ItemCOFINS_CST.Value := DM.QvwEstoquecst_cofins_sai.Value;

   if DM.QEmpresacontr_ipi.Value = 'S' then
   begin
      frmPV.TVenda_ItemIPI_CST.Value       := DM.QvwEstoquecst_ipi_sai.Value;
     // QNF_ItemIPI_clEnq.AsString  := DM.QvwEstoqueipi_clenq.AsString;
      frmPV.TVenda_ItemIPI_pIPI.Value      := DM.QvwEstoqueipi_pc.Value;
   end;

   frmPV.TVenda_ItemPIS_CST.Value          := DM.QvwEstoquecst_pis_sai.Value;
   frmPV.TVenda_ItemPIS_pPIS.Value         := DM.QvwEstoquepis_pc.Value;

   frmPV.TVenda_ItemCOFINS_CST.Value       := DM.QvwEstoquecst_cofins_sai.Value;
   frmPV.TVenda_ItemCOFINS_pCOFINS.Value   := DM.QvwEstoquecofins_pc.Value;

   if Number(DM.QEstoquedestinacao.AsString)='09' then //serviços
   begin
      frmPV.TVenda_ItemISSQN_SitTrib.Value := DM.QvwEstoquecst.Value;
      frmPV.TVenda_ItemISSQN_vAliq.Value   := DM.QvwEstoquealiq_icms.Value;
   end;

   if DM.QvwEstoqueproducao_propria.Value = 'S' then //flag para ajustar o cfop
      frmPV.TVenda_ItemCFOP.Value := 'S'
   else
      frmPV.TVenda_ItemCFOP.Value := 'N';

   frmPV.TVenda_ItemvTotTrib.AsCurrency := Arredonda((frmPV.TVenda_ItemvProd.AsCurrency *
                                                      DM.IBPTax(frmPV.TVenda_ItemNCM.AsString,
                                                      frmPV.TVenda_ItemICMS_orig.AsInteger))/100, 3);
   frmPV.TVenda_Item.Post;
   btnSair.Click;
end;

procedure TfrmItem.edDescTPropertiesChange(Sender: TObject);
begin
   if edDescT.Focused then
      edDescU.Clear;
end;

procedure TfrmItem.edDescUKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if key = 80{P} then
   begin
      lblT.Caption := 'Sobre o Valor Total (%)';
      edDescT.SetFocus;
      lblU.Hide;
      edDescU.Hide;
   end
   else
   if key = 86{V} then
   begin
      lblT.Caption := 'Sobre o Valor Total ($)';
      edDescU.Show;
      lblU.Show;
   end;
end;

procedure TfrmItem.edDescUPropertiesChange(Sender: TObject);
begin
   if edDescU.Focused then
      edDescT.Clear;
end;

procedure TfrmItem.edQtdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if (key = 68)and(pnlDesc.Visible) then
   begin
      edDescU.Enabled := True;
      edDescT.Enabled := True;
   end;
end;

procedure TfrmItem.edQtdPropertiesChange(Sender: TObject);
begin
   btnF11.Enabled := edQtd.Value > 0;
end;

procedure TfrmItem.FormCreate(Sender: TObject);
begin
   pnlpfp.Visible  := frmPV.ini.StoredValue['modo'] = 1;//NF
   pnlDesc.Visible := True;//not pnlpfp.Visible;

  // if pnlpfp.Visible then
   //   cxLabel1.Caption := 'QUANTIDADE';
end;

procedure TfrmItem.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F11   : if btnF11.Enabled then btnF11.Click;
   end;
end;

procedure TfrmItem.FormShow(Sender: TObject);
begin
   inherited;
   edVrUnit.Value  := DM.QEstoquevrvenda_vista.Value;
   if (frmPV.lblccd.Visible)and(pnlDesc.Visible) then
   begin
      edQtd.Value    := 1;
      Timer1.Enabled := True;
   end;
end;

procedure TfrmItem.Timer1Timer(Sender: TObject);
begin
   Timer1.Enabled := False;
   btnF11.Click;
end;

end.
