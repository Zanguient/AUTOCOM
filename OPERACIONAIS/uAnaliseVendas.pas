unit uAnaliseVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  Data.DB, cxDBData, Vcl.ComCtrls, dxCore, cxDateUtils, FireDAC.Comp.Client, cxLabel, cxDBLabel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,cxCheckBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxRadioGroup, FireDAC.Comp.Script, FireDAC.Comp.DataSet,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinsCore, dxSkinCaramel,
  dxSkinscxPCPainter;

type
  TfrmAnaliseVendas = class(Tfrm)
    rgFiltro: TcxRadioGroup;
    g1: TcxGrid;
    tbv: TcxGridDBTableView;
    g1Lvl1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    D1: TcxDateEdit;
    D2: TcxDateEdit;
    btncli: TcxButton;
    btnven: TcxButton;
    btnCan: TcxButton;
    btnPrint: TcxButton;
    btnExibir: TcxButton;
    cbTela: TcxCheckBox;
    Panel1: TPanel;
    QVenda: TFDQuery;
    QVenda_Item: TFDQuery;
    QVenda_Itemid: TFDAutoIncField;
    QVenda_Itemvenda: TIntegerField;
    QVenda_ItemnItem: TIntegerField;
    QVenda_ItemcProd: TIntegerField;
    QVenda_ItemcEAN: TStringField;
    QVenda_ItemxProd: TStringField;
    QVenda_ItemNCM: TStringField;
    QVenda_ItemEXTIPI: TStringField;
    QVenda_ItemCFOP: TStringField;
    QVenda_ItemuCom: TStringField;
    QVenda_ItemqCom: TFloatField;
    QVenda_ItemvUnCom: TFloatField;
    QVenda_ItemvProd: TFloatField;
    QVenda_ItemcEANTrib: TStringField;
    QVenda_ItemuTrib: TStringField;
    QVenda_ItemqTrib: TFloatField;
    QVenda_ItemvUnTrib: TFloatField;
    QVenda_ItemvOutro: TFloatField;
    QVenda_ItemvFrete: TFloatField;
    QVenda_ItemvSeg: TFloatField;
    QVenda_ItemvDesc: TFloatField;
    QVenda_IteminfAdProd: TMemoField;
    QVenda_ItemICMS_CST: TIntegerField;
    QVenda_ItemICMS_orig: TIntegerField;
    QVenda_ItemICMS_modBC: TIntegerField;
    QVenda_ItemICMS_vBC: TFloatField;
    QVenda_ItemICMS_pICMS: TFloatField;
    QVenda_ItemICMS_vICMS: TFloatField;
    QVenda_ItemICMS_CSOSN: TIntegerField;
    QVenda_ItemICMS_pCredSN: TFloatField;
    QVenda_ItemICMS_vCredICMSSN: TFloatField;
    QVenda_ItemICMS_modBCST: TIntegerField;
    QVenda_ItemICMS_pMVAST: TFloatField;
    QVenda_ItemICMS_vTabelaST: TFloatField;
    QVenda_ItemICMS_pRedBCST: TFloatField;
    QVenda_ItemICMS_vBCST: TFloatField;
    QVenda_ItemICMS_pICMSST: TFloatField;
    QVenda_ItemICMS_vICMSST: TFloatField;
    QVenda_ItemICMS_pRedBC: TFloatField;
    QVenda_ItemIPI_CST: TIntegerField;
    QVenda_ItemIPI_clEnq: TStringField;
    QVenda_ItemIPI_CNPJProd: TStringField;
    QVenda_ItemIPI_cSelo: TStringField;
    QVenda_ItemIPI_qSelo: TIntegerField;
    QVenda_ItemIPI_cEnq: TStringField;
    QVenda_ItemIPI_vBC: TFloatField;
    QVenda_ItemIPI_qUnid: TFloatField;
    QVenda_ItemIPI_vUnid: TFloatField;
    QVenda_ItemIPI_pIPI: TFloatField;
    QVenda_ItemIPI_vIPI: TFloatField;
    QVenda_ItemII_vBc: TFloatField;
    QVenda_ItemII_vDespAdu: TFloatField;
    QVenda_ItemII_vII: TFloatField;
    QVenda_ItemII_vIOF: TFloatField;
    QVenda_ItemPIS_CST: TIntegerField;
    QVenda_ItemPIS_vBC: TFloatField;
    QVenda_ItemPIS_pPIS: TFloatField;
    QVenda_ItemPIS_vPIS: TFloatField;
    QVenda_ItemPIS_qBCProd: TFloatField;
    QVenda_ItemPIS_vAliqProd: TFloatField;
    QVenda_ItemPISST_vBc: TFloatField;
    QVenda_ItemPISST_pPis: TFloatField;
    QVenda_ItemPISST_qBCProd: TFloatField;
    QVenda_ItemPISST_vAliqProd: TFloatField;
    QVenda_ItemPISST_vPIS: TFloatField;
    QVenda_ItemCOFINS_CST: TIntegerField;
    QVenda_ItemCOFINS_vBC: TFloatField;
    QVenda_ItemCOFINS_pCOFINS: TFloatField;
    QVenda_ItemCOFINS_vCOFINS: TFloatField;
    QVenda_ItemCOFINS_qBCProd: TFloatField;
    QVenda_ItemCOFINS_vAliqProd: TFloatField;
    QVenda_ItemCOFINSST_vBC: TFloatField;
    QVenda_ItemCOFINSST_pCOFINS: TFloatField;
    QVenda_ItemCOFINSST_qBCProd: TFloatField;
    QVenda_ItemCOFINSST_vAliqProd: TFloatField;
    QVenda_ItemCOFINSST_vCOFINS: TFloatField;
    QVenda_ItemISSQN_vBC: TFloatField;
    QVenda_ItemISSQN_vAliq: TFloatField;
    QVenda_ItemISSQN_vISSQN: TFloatField;
    QVenda_ItemISSQN_cMunFG: TIntegerField;
    QVenda_ItemISSQN_cListServ: TIntegerField;
    QVenda_ItemISSQN_SitTrib: TIntegerField;
    QVenda_ItemICMS_vBCSTRet: TFloatField;
    QVenda_ItemICMS_vICMSSTRet: TFloatField;
    QVenda_ItemvTotTrib: TFloatField;
    QVenda_Itemecf_aliq: TStringField;
    QVenda_Itemtrn: TStringField;
    QVenda_ItemvComissao: TFloatField;
    DSVenda: TDataSource;
    DSItem: TDataSource;
    QVendanome: TStringField;
    QVendacnpj: TStringField;
    QVendatel1: TStringField;
    QVendacelular: TStringField;
    QVendacidade: TStringField;
    QVendaIde_nNF: TIntegerField;
    QVendaIde_dEmi: TDateField;
    QVendaid: TIntegerField;
    QVendatipo: TStringField;
    QVendacliente: TIntegerField;
    QVendaoperador: TIntegerField;
    QVendavendedor: TIntegerField;
    QVendacancelado: TStringField;
    QVendadata: TDateField;
    QVendahora: TStringField;
    QVendacoa: TIntegerField;
    QVendacoo: TIntegerField;
    QVendaccf: TIntegerField;
    QVendapv: TStringField;
    QVendanf: TIntegerField;
    QVendaserie_d: TIntegerField;
    QVendacv: TMemoField;
    QVendavalor: TFloatField;
    QVendavr_desconto: TFloatField;
    QVendavr_desc_posvenda: TFloatField;
    QVendavr_pago: TFloatField;
    QVendavr_comissao: TFloatField;
    QVendavr_abat: TFloatField;
    QVendavr_din: TFloatField;
    QVendavr_chq: TFloatField;
    QVendavr_card: TFloatField;
    QVendavr_outros: TFloatField;
    QVendavr_tkt: TFloatField;
    QVendatroco: TFloatField;
    QVendaobs: TMemoField;
    QVendaterminal: TStringField;
    QVendaoper_crt: TStringField;
    QVendatipo_crt: TStringField;
    QVendadt_atualiz: TSQLTimeStampField;
    QVendamd5: TStringField;
    QVendahash: TStringField;
    QVendavendedor_nome: TStringField;
    QVendaoperador_nome: TStringField;
    tbvid: TcxGridDBColumn;
    tbvcancelado: TcxGridDBColumn;
    tbvdata: TcxGridDBColumn;
    tbvhora: TcxGridDBColumn;
    tbvcoo: TcxGridDBColumn;
    tbvvalor: TcxGridDBColumn;
    tbvvr_desconto: TcxGridDBColumn;
    tbvvr_pago: TcxGridDBColumn;
    tbvvr_din: TcxGridDBColumn;
    tbvvr_chq: TcxGridDBColumn;
    tbvvr_card: TcxGridDBColumn;
    tbvvr_outros: TcxGridDBColumn;
    tbvvr_tkt: TcxGridDBColumn;
    tbvtroco: TcxGridDBColumn;
    tbvterminal: TcxGridDBColumn;
    cbCanc: TcxCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBLabel;
    cxDBTextEdit2: TcxDBLabel;
    cxDBTextEdit3: TcxDBLabel;
    cxDBTextEdit4: TcxDBLabel;
    cxDBTextEdit5: TcxDBLabel;
    cxDBTextEdit6: TcxDBLabel;
    cxDBTextEdit7: TcxDBLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    procedure QVendaAfterOpen(DataSet: TDataSet);
    procedure btnExibirClick(Sender: TObject);
    procedure QVendaAfterScroll(DataSet: TDataSet);
    procedure rgFiltroClick(Sender: TObject);
    procedure D1PropertiesChange(Sender: TObject);
    procedure cbCancClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbvidHeaderClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure btnCanClick(Sender: TObject);
    procedure btncliClick(Sender: TObject);
    procedure btnvenClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnaliseVendas: TfrmAnaliseVendas;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, udm_ini, uFuncoes, uMD5Print, uAnaliseVendas_itens,
  uMain, uCadCli, uCadVendedor;

procedure TfrmAnaliseVendas.btnCanClick(Sender: TObject);
begin
   if (MessageBox(0, 'Confirma o cancelamento desta venda?', 'ATENÇÃO!', MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;

   QVenda_Item.First;

   while not QVenda_Item.Eof do
   begin
      DM.DB.ExecSQL('update estoque set hash=' + Texto_Mysql(DM.id_Term) + ', quant=quant+' +
                     Texto_Mysql(QVenda_ItemqCom.Value) +
                    ' where id=' + Texto_Mysql(QVenda_ItemcProd.Value)
      );
      QVenda_Item.Next;
   end;

   //atualiza o hash dos registros alterados
   DM.ExecSQL('call pr_hash("ESTOQUE",' + Texto_Mysql(_C) +',' + Texto_Mysql(DM.id_Term) +');');
   DM.ExecSQL('delete from venda where id=' + Texto_Mysql(QVendaid.Value));
   QVenda.Refresh;
   ShowMessage('Venda cancelada.');
end;

procedure TfrmAnaliseVendas.btncliClick(Sender: TObject);
begin
   frmMain.Abrir_Form('frmCadCli', TfrmCadCli);

   if (DM.QCliid.Value)<>(QVendacliente.Value) then
   begin
      if (MessageBox(0, 'Confirma a alteração do cliente desta venda?', 'ATENÇÃO!', MB_ICONQUESTION or MB_YESNO) = idNo) then
         exit;

      DM.ExecSQL('update venda set cliente=' + Texto_Mysql(DM.QCliid.Value));
      QVenda.Refresh;
      ShowMessage('Cliente alterado.');
   end;
end;

procedure TfrmAnaliseVendas.btnExibirClick(Sender: TObject);
begin
   D1.PostEditValue;
   D2.PostEditValue;

   if (d1.Date > d2.Date)or(d1.Date = 0) then
      raise Exception.Create('Período incorreto.');

   QVenda.Close;
   QVenda.Params[0].AsString := Iif(rgFiltro.ItemIndex = 0,'ECF','NF');
   QVenda.Params[1].AsString := Iif(cbCanc.Checked,'S','N');
   QVenda.Params[2].AsDate   := D1.Date;
   QVenda.Params[3].AsDate   := D2.Date;
   QVenda.Open;
end;

procedure TfrmAnaliseVendas.btnPrintClick(Sender: TObject);
begin
   if not QVenda.IsEmpty then
      DM.Abrir_Central_Relat(Iif(cbTela.Checked, '-v', '-p'), DM_INI.ini.inifilename, 'SISTEMA', 'ESPELHO DE VENDA', QuotedDuoStr('id='+ QVendaid.AsString));
end;

procedure TfrmAnaliseVendas.btnvenClick(Sender: TObject);
var
   n, nn: currency;
begin
   DM.Q1.Open('select comissao from vendedor where id=' + Texto_Mysql(QVendavendedor.Value));
   n := DM.Q1.Fields[0].AsCurrency;

   frmMain.Abrir_Form('frmCadVendedor', TfrmCadVendedor);

   if (DM.QVendedorid.Value)<>(QVendavendedor.Value) then
   begin
      if (MessageBox(0, 'Confirma a alteração do vendedor desta venda?', 'ATENÇÃO!', MB_ICONQUESTION or MB_YESNO) = idNo) then
         exit;

      DM.ExecSQL('update venda set vendedor=' + Texto_Mysql(DM.QVendedorid.Value) + ' where id=' + Texto_Mysql(QVendaid.Value));

      //recalcula a comissão
      if (DM.QVendedorcomissao.Value <> n) then
      begin
         QVenda_Item.First;
         nn := 0;

         while not QVenda_Item.Eof do
         begin
            if DM.QVendedorcomissao.Value = 0 then //sem comissão
            begin
               n  := 0;
            end
            else
            if DM.QVendedorcomissao.Value = 100 then //por produto
            begin
               DM.Q1.Open('select vrcotacao from estoque where id=' + Texto_Mysql(QVenda_ItemcProd.Value));
               n := Percentual(DM.Q1.Fields[0].AsCurrency, QVenda_ItemvProd.Value - QVenda_ItemvDesc.Value);
            end
            else //´por vendedor
               n := Percentual(DM.QVendedorcomissao.Value, QVenda_ItemvProd.Value - QVenda_ItemvDesc.Value);

            QVenda_Item.Edit;
            QVenda_ItemvComissao.Value := n;
            QVenda_Item.Post;
            nn := nn + n;
            QVenda_Item.Next;
         end;

         //se tem desconto no total, recalcula a comissão
         if (QVendavr_desconto.Value > 0)and(nn > 0) then
         begin
            n  := RetornaPercentual(nn, QVendavr_desconto.Value);
            nn := nn - Percentual(n, nn);
         end;
         DM.ExecSQL('update venda set vr_comissao=' + Texto_Mysql(nn));
      end;

      QVenda.Refresh;
      ShowMessage('Vendedor alterado.');
   end;
end;

procedure TfrmAnaliseVendas.cbCancClick(Sender: TObject);
begin
   QVenda.Close;
end;

procedure TfrmAnaliseVendas.D1PropertiesChange(Sender: TObject);
begin
   QVenda.Close;
end;

procedure TfrmAnaliseVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
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

procedure TfrmAnaliseVendas.FormShow(Sender: TObject);
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

procedure TfrmAnaliseVendas.QVendaAfterOpen(DataSet: TDataSet);
begin
   QVenda_Item.Open;
end;

procedure TfrmAnaliseVendas.QVendaAfterScroll(DataSet: TDataSet);
begin
   btncli.Enabled   := (QVendanf.Value = 0)and(QVendacancelado.Value = 'N');
   btnven.Enabled   := (DM_INI.ini.StoredValue['venda_comissionada'])and(QVendacancelado.Value = 'N');
   btnCan.Enabled   := (QVendacancelado.Value = 'N')and(QVendatipo.Value = 'NF');
   btnPrint.Enabled := (QVendacancelado.Value = 'N');
end;

procedure TfrmAnaliseVendas.rgFiltroClick(Sender: TObject);
begin
   QVenda.Close;
end;

procedure TfrmAnaliseVendas.tbvDblClick(Sender: TObject);
begin
   if not QVenda.IsEmpty then
      AbreForm(TfrmAnaliseVendas_itens, frmAnaliseVendas_itens);
end;

procedure TfrmAnaliseVendas.tbvidHeaderClick(Sender: TObject);
begin
   (DSVenda.DataSet as TFDQuery).IndexFieldNames := TcxGridDBColumn(Sender).DataBinding.FieldName;
end;

end.

