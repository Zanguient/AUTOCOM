unit uRateio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, cxTextEdit, cxCurrencyEdit, cxGroupBox,
  cxRadioGroup,cxCheckBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmRateio = class(Tfrm)
    T1: TFDMemTable;
    DS1: TDataSource;
    Panel1: TPanel;
    rbCampo: TcxRadioGroup;
    edValor: TcxCurrencyEdit;
    Label102: TcxLabel;
    cxButton7: TcxButton;
    T1id: TIntegerField;
    T1item: TIntegerField;
    T1valor: TCurrencyField;
    T1excluir: TBooleanField;
    g1: TcxGrid;
    tbv: TcxGridDBTableView;
    g1Lvl1: TcxGridLevel;
    T1percent: TCurrencyField;
    tbvitem: TcxGridDBColumn;
    tbvpercent: TcxGridDBColumn;
    tbvvalor: TcxGridDBColumn;
    tbvexcluir: TcxGridDBColumn;
    btnTrf: TcxButton;
    cxLabel1: TcxLabel;
    edPerc: TcxCurrencyEdit;
    lblvrprod: TcxLabel;
    cxLabel2: TcxLabel;
    procedure cxButton7Click(Sender: TObject);
    procedure rbCampoClick(Sender: TObject);
    procedure T1AfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure edPercPropertiesEditValueChanged(Sender: TObject);
    procedure btnTrfClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRateio: TfrmRateio;

implementation

{$R *.dfm}

uses uAutocomConsts, udmnfe, uFuncoes, uMain;

procedure TfrmRateio.btnTrfClick(Sender: TObject);
begin
   T1.DisableControls;
   T1.First;

   while not T1.Eof do
   begin
      if DM_NFE.QNF_Item.Locate('id', T1id.Value, []) then
      begin
         DM_NFE.QNF_Item.Edit;
         DM_NFE.QNF_Item.FieldByName(rbCampo.Properties.Items[rbCampo.ItemIndex].Value).AsCurrency := T1valor.Value;
         frmMain.Calcular_Impostos_Item;
         DM_NFE.QNF_Item.Post;
      end;
      T1.Next;
   end;

   DM_NFE.Totalizar_NFe;
   btnSair.Click;
end;

procedure TfrmRateio.cxButton7Click(Sender: TObject);
var
   campo, id_excluido: string;
   vr_item, vr_tot_item, pc_item, dif: Currency;
begin
   btnTrf.Enabled := False;

   if rbCampo.ItemIndex <0 then
      Raise Exception.Create('Informe o campo.');

   if T1.State = dsEdit then
      T1.Post;

   T1.DisableControls;
   T1.First;

   while not T1.IsEmpty do  //lista os ids excluidos pelo usuario
   begin
      if T1excluir.Value then
         id_excluido := id_excluido + T1id.AsString + ',';
      T1.Delete;
   end;

   if id_excluido <> C_ST_VAZIO then
   begin
      id_excluido := Clip(id_excluido, length(id_excluido)-1);
      id_excluido := ' and id not in(' + id_excluido + ')';
   end;

   DM_NFE.Q1.Open('select sum(qCom*vUnCom)as soma from nf_item where nf=' +
                   Texto_Mysql(DM_NFE.QNFid.Value) +
                   id_excluido);

   vr_tot_item := DM_NFE.Q1.Fields[0].AsCurrency;

   campo := rbCampo.Properties.Items[rbCampo.ItemIndex].Value;

   DM_NFE.Q1.Open('select id, nItem, qCom*vUnCom as total,' + campo + ' from nf_item where nf=' +
                   Texto_Mysql(DM_NFE.QNFid.Value) +
                   id_excluido);

   dif := 0;

   while not DM_NFE.Q1.Eof do
   begin
      vr_item := DM_NFE.Q1.FieldByName('total').AsCurrency; //obtem o valor total do produto
      pc_item := RetornaPercentual(vr_tot_item, vr_item);

      T1.Append;
      T1id.Value      := DM_NFE.Q1.FieldByName('id').AsInteger;
      T1item.Value    := DM_NFE.Q1.FieldByName('nItem').AsInteger;
      T1valor.Value   := Percentual(pc_item, edValor.Value);
      T1percent.Value := pc_item;
      dif :=  dif + T1valor.Value;
      T1.Post;
      DM_NFE.Q1.Next;
   end;

   T1.First;

   if Arredonda((dif - EdValor.Value),2) > 0 then
   repeat
   begin
      T1.Edit;
      T1valor.Value := T1valor.Value - 0.01;
      dif := dif - 0.01;
      T1.Post;

      if T1.Eof then
         T1.First
      else
         T1.Next;
   end;
   until
      dif = EdValor.Value;

   T1.First;

   if Arredonda((dif - EdValor.Value),2) < 0 then
   repeat
   begin
      T1.Edit;
      T1valor.Value := T1valor.Value + 0.01;
      dif := dif + 0.01;
      T1.Post;

      if T1.Eof then
         T1.First
      else
         T1.Next;
   end;
   until
      dif = EdValor.Value;

   btnTrf.Enabled := Arredonda((dif - EdValor.Value),2) = 0;
   T1.First;
   T1.EnableControls;
end;

procedure TfrmRateio.edPercPropertiesEditValueChanged(Sender: TObject);
var
   n: currency;
begin
   if edPerc.Value > 0 then
   begin
      n := StrToFloatDef(Number(lblvrprod.Caption),0)/100;
      edValor.Value := Percentual(edPerc.Value, n);
   end;
end;

procedure TfrmRateio.FormCreate(Sender: TObject);
begin
   DM_NFE.Q1.Open('select sum(qCom*vUnCom)as soma from nf_item where nf=' +
                Texto_Mysql(DM_NFE.QNFid.Value));

   lblvrprod.Caption := 'Total: ' + FloatToStrF(DM_NFE.Q1.Fields[0].AsCurrency, ffCurrency,15,2);
end;

procedure TfrmRateio.rbCampoClick(Sender: TObject);
begin
   btnTrf.Enabled := False;

   while not T1.IsEmpty do
   begin
      T1.Delete;
   end;
   edPerc.SetFocus;
end;

procedure TfrmRateio.T1AfterInsert(DataSet: TDataSet);
begin
   T1excluir.Value := False;
end;

end.
