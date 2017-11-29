unit uPrecificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus,cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, Vcl.ExtCtrls, Data.DB, cxLabel,
  cxDBLabel, Vcl.StdCtrls, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  cxButtons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPrecificacao = class(Tfrm)
    Q1: TFDQuery;
    Q1id: TIntegerField;
    Q1custo_a: TFloatField;
    Q1custo_b: TFloatField;
    Q1v_dif: TFloatField;
    Q1p_dif: TFloatField;
    Q1v_mg: TFloatField;
    Q1p_mg: TFloatField;
    Q1vrvenda_vista: TFloatField;
    Q1quant: TFloatField;
    Q1nome: TStringField;
    DS1: TDataSource;
    btnRecalc: TcxButton;
    Panel3: TPanel;
    ed_co: TcxCurrencyEdit;
    btnAssociar: TcxButton;
    btnCo: TcxButton;
    cxButton2: TcxButton;
    Label25: TcxLabel;
    Panel4: TPanel;
    cxDBTextEdit15: TcxDBLabel;
    Panel5: TPanel;
    ed_dif_custo_a: TcxCurrencyEdit;
    ed_dif_custo_b: TcxCurrencyEdit;
    ed_p_dif: TcxCurrencyEdit;
    ed_dif_vrvenda: TcxCurrencyEdit;
    ed_vmg_calc: TcxCurrencyEdit;
    ed_pmg_calc: TcxCurrencyEdit;
    Label20: TcxLabel;
    Label21: TcxLabel;
    Label22: TcxLabel;
    Label23: TcxLabel;
    lbl1: TcxLabel;
    Label26: TcxLabel;
    Label27: TcxLabel;
    Label28: TcxLabel;
    Panel6: TPanel;
    cxDBLabel9: TcxDBLabel;
    cxDBLabel10: TcxDBLabel;
    ed_p_dif_nf: TcxCurrencyEdit;
    ed_vdif_nf: TcxCurrencyEdit;
    ed_p_mg: TcxCurrencyEdit;
    ed_v_mg: TcxCurrencyEdit;
    ed_vr_venda: TcxCurrencyEdit;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label13: TcxLabel;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    Panel7: TPanel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Panel8: TPanel;
    cxDBLabel11: TcxDBLabel;
    Label19: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnRecalcClick(Sender: TObject);
    procedure ed_p_mgPropertiesEditValueChanged(Sender: TObject);
    procedure ed_v_mgPropertiesEditValueChanged(Sender: TObject);
    procedure ed_vr_vendaPropertiesEditValueChanged(Sender: TObject);
    procedure btnCoClick(Sender: TObject);
  private
    procedure Calcular(tipo: integer = 0);
    procedure Calcular_dif;
  public
    { Public declarations }
  end;

var
  frmPrecificacao: TfrmPrecificacao;

implementation

{$R *.dfm}

uses uDM, udm_ini, uDM_NF_Entr, uFuncoes, uMain, uCustoOper;

procedure TfrmPrecificacao.Calcular(tipo: integer = 0);
var
   p_custo: currency;
   valor: currency;
begin
   if tipo = 0 then //sem intervenção do usuario
   begin
      valor             := DM_NF_Entr.cdNF_ItemVR_CUSTO.Value;//custo com addons
      ed_p_mg.Value     := Q1p_mg.Value; //% margem
      ed_v_mg.Value     := Arredonda((valor * ed_p_mg.Value)/100,3); //vr margem
      p_custo           := ed_p_mg.Value + ed_co.Value;//soma dos % de margem + custo oper.
      valor             := valor + ((valor * p_custo)/100);
      ed_vr_venda.Value := Arredonda(valor,3);
   end
   else
   if tipo = 1 then //% margem foi digitado
   begin
      valor             := DM_NF_Entr.cdNF_ItemVR_CUSTO.Value;//custo com addons
      ed_v_mg.Value     := Arredonda((valor * ed_p_mg.Value)/100,3); //vr margem
      p_custo           := ed_p_mg.Value + ed_co.Value;//soma dos % de margem + custo oper.
      valor             := valor + ((valor * p_custo)/100);
      ed_vr_venda.Value := Arredonda(valor,3);
   end
   else
   if tipo = 2 then //Valor margem foi digitado
   begin
      valor             := DM_NF_Entr.cdNF_ItemVR_CUSTO.Value;
      valor             := valor + ((valor * ed_co.Value)/100);
      valor             := valor + ed_v_mg.Value;
      ed_vr_venda.Value := valor;
      ed_p_mg.Value     := Arredonda(Percent(valor-ed_v_mg.Value, ed_vr_venda.Value),3);
   end
   else
   if tipo = 3 then //Valor venda foi digitado
   begin
      valor         := DM_NF_Entr.cdNF_ItemVR_CUSTO.Value;
      valor         := valor + ((valor * ed_co.Value)/100);
      ed_v_mg.Value := ed_vr_venda.Value - valor;
      valor         := DM_NF_Entr.cdNF_ItemVR_CUSTO.Value + ed_v_mg.Value;//custo com addons
      ed_p_mg.Value := Arredonda(Percent(valor, DM_NF_Entr.cdNF_ItemVR_CUSTO.Value),3);
   end;
   //diferença entre o valor anterior e o atual
   ed_dif_vrvenda.Value := iif(ed_vr_venda.Value > Q1vrvenda_vista.Value,
                               Percent(ed_vr_venda.Value,Q1vrvenda_vista.Value),
                               0 - Percent(ed_vr_venda.Value,Q1vrvenda_vista.Value)
   );

//margem calculada

 //      (Mg1 * QTD1) + (Mg2 * QTD2)
//   ___________________________________
//               QTD1 + QTD2

   ed_pmg_calc.Value := ((Q1p_mg.Value * Q1quant.Value)+(ed_p_mg.Value * DM_NF_Entr.cdNF_ItemQTD.Value))/(Q1quant.Value + DM_NF_Entr.cdNF_ItemQTD.Value);
   ed_vmg_calc.Value := ((Q1v_mg.Value * Q1quant.Value)+(ed_v_mg.Value * DM_NF_Entr.cdNF_ItemQTD.Value))/(Q1quant.Value + DM_NF_Entr.cdNF_ItemQTD.Value);
end;

procedure TfrmPrecificacao.Calcular_dif;
begin
   ed_dif_custo_a.Value :=  DM_NF_Entr.cdNF_ItemvUnCom.Value - Q1custo_a.Value;
   ed_dif_custo_b.Value :=  DM_NF_Entr.cdNF_ItemVR_CUSTO.Value - Q1custo_b.Value;

   ed_p_dif_nf.Value    := Percent(DM_NF_Entr.cdNF_ItemvUnCom.Value, DM_NF_Entr.cdNF_ItemVR_CUSTO.Value);
   ed_vdif_nf.Value     := DM_NF_Entr.cdNF_ItemVR_CUSTO.Value - DM_NF_Entr.cdNF_ItemvUnCom.Value;

   ed_p_dif.Value       := iif(DM_NF_Entr.cdNF_ItemVR_CUSTO.Value > Q1custo_b.Value,
                               Percent(DM_NF_Entr.cdNF_ItemVR_CUSTO.Value, Q1custo_b.Value),
                               0 - Percent(DM_NF_Entr.cdNF_ItemVR_CUSTO.Value, Q1custo_b.Value)
   );


   if ed_p_dif.Value = 0 then
      lbl1.Caption := 'Valor mantido'
   else
   if ed_p_dif.Value < 0 then
      lbl1.Caption := 'Houve redução'
   else
      if ed_p_dif.Value > 0 then
      lbl1.Caption := 'Houve acréscimo'
end;

procedure TfrmPrecificacao.btnRecalcClick(Sender: TObject);
begin
   Calcular;
end;

procedure TfrmPrecificacao.btnCoClick(Sender: TObject);
begin
   frmCustoOper := TfrmCustoOper.Create(self);
   frmCustoOper.ShowModal;
   DM.Calcular_Custo_Oper;
   Calcular;
end;

procedure TfrmPrecificacao.ed_p_mgPropertiesEditValueChanged(Sender: TObject);
begin
   if TcxCurrencyEdit(sender).Focused then
      calcular(1);
end;

procedure TfrmPrecificacao.ed_vr_vendaPropertiesEditValueChanged(
  Sender: TObject);
begin
   if TcxCurrencyEdit(sender).Focused then
      calcular(3);
end;

procedure TfrmPrecificacao.ed_v_mgPropertiesEditValueChanged(Sender: TObject);
begin
   if TcxCurrencyEdit(sender).Focused then
      calcular(2);
end;

procedure TfrmPrecificacao.FormCreate(Sender: TObject);
begin
  inherited;
   Q1.Params[0].AsInteger := DM_NF_Entr.cdNF_Itemid_prod.Value;
   Q1.Open;
   DM.QCusto_Oper.Open;
   ed_co.Value := DM.Calcular_Custo_Oper;
   Calcular_dif;
   Calcular;
end;

end.
