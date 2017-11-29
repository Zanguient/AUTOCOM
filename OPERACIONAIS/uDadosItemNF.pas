unit uDadosItemNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit, cxTextEdit, cxGroupBox, cxLabel,
  cxDBLabel, Data.DB, Datasnap.DBClient, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmdadosItemNF = class(Tfrm)
    Panel3: TPanel;
    cxDBSpinEdit1: TcxDBLabel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBLabel;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBLabel;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cxDBCalcEdit3: TcxDBTextEdit;
    cxDBCalcEdit4: TcxDBTextEdit;
    cxDBCalcEdit5: TcxDBTextEdit;
    cxDBCalcEdit6: TcxDBTextEdit;
    cxDBCalcEdit7: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cxDBCalcEdit8: TcxDBTextEdit;
    cxDBCalcEdit9: TcxDBTextEdit;
    cxDBCalcEdit10: TcxDBTextEdit;
    Label21: TLabel;
    Label22: TLabel;
    cxDBCalcEdit11: TcxDBTextEdit;
    cxDBCalcEdit12: TcxDBTextEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    cxDBCalcEdit13: TcxDBTextEdit;
    cxDBCalcEdit14: TcxDBTextEdit;
    cxDBCalcEdit15: TcxDBTextEdit;
    cxDBCalcEdit16: TcxDBTextEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    cxDBCalcEdit17: TcxDBTextEdit;
    cxDBCalcEdit18: TcxDBTextEdit;
    cxDBCalcEdit19: TcxDBTextEdit;
    Label31: TLabel;
    cxGroupBox3: TcxGroupBox;
    Label32: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    cxDBCalcEdit20: TcxDBTextEdit;
    cxDBCalcEdit21: TcxDBTextEdit;
    cxDBCalcEdit22: TcxDBTextEdit;
    cxDBCalcEdit23: TcxDBTextEdit;
    cxDBCalcEdit24: TcxDBTextEdit;
    cxGroupBox4: TcxGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    cxDBCalcEdit25: TcxDBTextEdit;
    cxDBCalcEdit26: TcxDBTextEdit;
    cxDBCalcEdit27: TcxDBTextEdit;
    cxDBCalcEdit28: TcxDBTextEdit;
    cxDBCalcEdit29: TcxDBTextEdit;
    cxDBCalcEdit30: TcxDBTextEdit;
    cxDBCalcEdit31: TcxDBTextEdit;
    cxDBCalcEdit32: TcxDBTextEdit;
    cxDBCalcEdit33: TcxDBTextEdit;
    cxDBCalcEdit34: TcxDBTextEdit;
    Label49: TLabel;
    cxGroupBox5: TcxGroupBox;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    Label62: TLabel;
    btnCancelar: TcxButton;
    btnGravar: TcxButton;
    edQtd: TcxDBTextEdit;
    Label63: TLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cmbCFOP: TcxDBComboBox;
    cxDBSpinEdit2: TcxDBLookupComboBox;
    cxDBSpinEdit4: TcxDBLookupComboBox;
    cxDBSpinEdit6: TcxDBLookupComboBox;
    cxDBTextEdit7: TcxDBLookupComboBox;
    cxDBTextEdit18: TcxDBLookupComboBox;
    cxDBSpinEdit3: TcxDBLookupComboBox;
    cxDBSpinEdit5: TcxDBLookupComboBox;
    cxDBCalcEdit2: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cxDBCalcEdit3Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxDBCalcEdit10Enter(Sender: TObject);
    procedure cxDBCalcEdit4Enter(Sender: TObject);
    procedure cxDBCalcEdit18Enter(Sender: TObject);
    procedure cxDBCalcEdit2Enter(Sender: TObject);
    procedure cxDBSpinEdit2PropertiesChange(Sender: TObject);
    procedure cxDBSpinEdit4PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdadosItemNF: TfrmdadosItemNF;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uDM_NF_Entr, uFuncoes;

procedure TfrmdadosItemNF.btnCancelarClick(Sender: TObject);
begin
   DM_NF_Entr.cdNF_Item.Cancel;
   Close;
end;

procedure TfrmdadosItemNF.btnGravarClick(Sender: TObject);
begin
   if not DM_NF_Entr.ValidarRegra then
      exit;

   if not ValidarNCM(Number(DM_NF_Entr.cdNF_ItemNCM.AsString)) then
   begin
      ShowMessage('NCM inválido.');
      exit;
   end;

   DM.Q6.Open('select id from ibptax_itens where ncm=' + Texto_Mysql(Number(DM_NF_Entr.cdNF_ItemNCM.AsString)));

   if DM.Q6.Fields[0].IsNull then
   begin
      ShowMessage('NCM não encontrado na tabela IBPTax.');
      exit;
   end;

   DM_NF_Entr.manual := True;
   DM_NF_Entr.cdNF_ItemQTD.Value     := DM_NF_Entr.cdNF_ItemqCom.Value;
//   DM_NF_Entr.cdNF_ItemICMS_CST_inform.Value := DM_NF_Entr.cdNF_ItemICMS_CST.Value;
   DM_NF_Entr.cdNF_ItemqTrib.Value   := DM_NF_Entr.cdNF_ItemqCom.Value;
   DM_NF_Entr.cdNF_ItemvUnTrib.Value := DM_NF_Entr.cdNF_ItemvUnCom.Value;
   DM_NF_Entr.cdNF_Item.Post;
   DM_NF_Entr.cdNF.Tag := 0;
   DM_NF_Entr.manual := False;
   Close;
end;

procedure TfrmdadosItemNF.cxDBCalcEdit10Enter(Sender: TObject);
var
   bc, red: currency;
begin
   bc  := DM_NF_Entr.cdNF_ItemICMS_vBC.Value;
   red := Percentual(DM_NF_Entr.cdNF_ItemICMS_pRedBC.Value, DM_NF_Entr.cdNF_ItemICMS_vBC.Value);
   bc  := bc - red;

   DM_NF_Entr.cdNF_ItemICMS_vICMS.Value := Percentual(DM_NF_Entr.cdNF_ItemICMS_pICMS.Value, bc);
end;

procedure TfrmdadosItemNF.cxDBCalcEdit18Enter(Sender: TObject);
var
   bc, red: currency;
begin
   bc  := DM_NF_Entr.cdNF_ItemICMS_vBCST.Value;
   red := Percentual(DM_NF_Entr.cdNF_ItemICMS_pRedBCST.Value, DM_NF_Entr.cdNF_ItemICMS_vBCSt.Value);
   bc  := bc - red;

   DM_NF_Entr.cdNF_ItemICMS_vICMSST.Value := Percentual(DM_NF_Entr.cdNF_ItemICMS_pICMSST.Value, bc);
end;

procedure TfrmdadosItemNF.cxDBCalcEdit2Enter(Sender: TObject);
begin
   if DM_NF_Entr.cdNF_ItemqCom.Value <=0 then
   begin
      ShowMessage('Informe a quantidade.');
      edQtd.SetFocus;
   end;
end;

procedure TfrmdadosItemNF.cxDBCalcEdit3Enter(Sender: TObject);
begin
   if DM_NF_Entr.cdNF_ItemqCom.Value <=0 then
   begin
      ShowMessage('Informe a quantidade.');
      edQtd.SetFocus;
      exit;
   end;

   DM_NF_Entr.cdNF_ItemvProd.Value := Arredonda(DM_NF_Entr.cdNF_ItemvUnCom.Value * DM_NF_Entr.cdNF_ItemqCom.Value,2);
end;

procedure TfrmdadosItemNF.cxDBCalcEdit4Enter(Sender: TObject);
begin
   if DM_NF_Entr.cdNF_ItemvProd.Value <=0 then
      ShowMessage('Informe o valor total do item.')
   else
   if DM_NF_Entr.cdNF_ItemqCom.Value <=0 then
   begin
      ShowMessage('Informe a quantidade.');
      edQtd.SetFocus;
   end
   else
   begin
      DM_NF_Entr.cdNF_ItemvUnCom.Value := DM_NF_Entr.cdNF_ItemvProd.Value/DM_NF_Entr.cdNF_ItemqCom.Value;
   end;
end;

procedure TfrmdadosItemNF.cxDBSpinEdit2PropertiesChange(Sender: TObject);
begin
   if cxDBSpinEdit2.Focused then
      DM_NF_Entr.cdNF_ItemICMS_CSOSN.Value := 0;//"--"
end;

procedure TfrmdadosItemNF.cxDBSpinEdit4PropertiesChange(Sender: TObject);
begin
   if cxDBSpinEdit4.Focused then
      DM_NF_Entr.cdNF_ItemICMS_CST.Value := 17;//--
end;

procedure TfrmdadosItemNF.FormCreate(Sender: TObject);
begin
  inherited;

  if DM_NF_Entr.cdNFEmit_EnderEmit_UF.AsString <> DM.QEmpresauf.AsString then
  begin
     DM.Q1.Open('select cfop from cfop where cfop BETWEEN 6000 and 6999');
  end
  else
  begin
     DM.Q1.Open('select cfop from cfop where cfop BETWEEN 5000 and 5999');
  end;

  while not DM.Q1.Eof do
  begin
     cmbCFOP.Properties.Items.Append(DM.Q1.Fields[0].asstring);
     DM.Q1.Next;
  end;

  DM.QCST.Open('select * from cst where simplesnacional = "N"');
end;

end.
