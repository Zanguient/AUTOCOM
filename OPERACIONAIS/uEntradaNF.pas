unit uEntradaNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus,ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.Mask, Vcl.DBCtrls, Data.DB, cxCalendar, cxDBEdit,
  cxSpinEdit, cxLabel, dxStatusBar, cxProgressBar,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxClasses, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  cxCalc, cxPC, cxDBLabel, cxMemo, pcnAuxiliar, dxSkinsCore, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, cxNavigator, cxImageComboBox, cxCurrencyEdit,
  dxSkinCaramel, dxBarBuiltInMenu;

type
  TfrmEntradaNF = class(Tfrm)
    btnImportar: TcxButton;
    Panel3: TPanel;
    cmbMod: TcxDBLookupComboBox;
    DSModeloNF: TDataSource;
    btnManual: TcxButton;
    btnCancelar: TcxButton;
    btnConcluir: TcxButton;
    Bar2: TcxProgressBar;
    Bar1: TdxStatusBar;
    Label2: TcxLabel;
    cxLabel1: TcxLabel;
    DataSource1: TDataSource;
    edProt: TcxDBTextEdit;
    edchave: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    Panel6: TPanel;
    grdItens: TcxGrid;
    tbvItens: TcxGridDBTableView;
    lvItens: TcxGridLevel;
    tbvItensnItem: TcxGridDBColumn;
    tbvItenscProd: TcxGridDBColumn;
    tbvItenscEAN: TcxGridDBColumn;
    tbvItensxProd: TcxGridDBColumn;
    tbvItensNCM: TcxGridDBColumn;
    tbvItensCFOP: TcxGridDBColumn;
    tbvItensuCom: TcxGridDBColumn;
    tbvItensqCom: TcxGridDBColumn;
    tbvItensvUnCom: TcxGridDBColumn;
    tbvItensvProd: TcxGridDBColumn;
    tbvItensCST: TcxGridDBColumn;
    tbvItensICMS_CSOSN: TcxGridDBColumn;
    tbvItensIPI_pIPI: TcxGridDBColumn;
    tbvItensIPI_vIPI: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Label3: TcxLabel;
    Label5: TcxLabel;
    Label1: TcxLabel;
    Label4: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    OpenDialog1: TOpenDialog;
    edStatus: TcxDBLabel;
    edSit: TcxDBLabel;
    cxDBSpinEdit1: TcxDBLabel;
    edSerie: TcxDBTextEdit;
    ednNF: TcxDBTextEdit;
    tbvItensVR_VENDA: TcxGridDBColumn;
    tbvItensid_prod: TcxGridDBColumn;
    tbvItensvDesc: TcxGridDBColumn;
    Pg1: TcxPageControl;
    TabTotais: TcxTabSheet;
    Label11: TcxLabel;
    Label13: TcxLabel;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    Label21: TcxLabel;
    Label22: TcxLabel;
    cxTabSheet3: TcxTabSheet;
    Label27: TcxLabel;
    Label28: TcxLabel;
    Label29: TcxLabel;
    Label30: TcxLabel;
    Label31: TcxLabel;
    Label32: TcxLabel;
    Label33: TcxLabel;
    cxTabSheet4: TcxTabSheet;
    Label34: TcxLabel;
    Label35: TcxLabel;
    Label36: TcxLabel;
    Label37: TcxLabel;
    Label38: TcxLabel;
    Label39: TcxLabel;
    cxTabSheet5: TcxTabSheet;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvqVol: TcxGridDBColumn;
    tbvespecie: TcxGridDBColumn;
    tbvmarca: TcxGridDBColumn;
    tbvnVol: TcxGridDBColumn;
    tbvpesoL: TcxGridDBColumn;
    tbvpesoB: TcxGridDBColumn;
    lv: TcxGridLevel;
    cxTabSheet1: TcxTabSheet;
    grdDup: TcxGrid;
    tbvDup: TcxGridDBTableView;
    tbvDupnDup: TcxGridDBColumn;
    tbvDupvDup: TcxGridDBColumn;
    tbvDupdVenc: TcxGridDBColumn;
    lvDup: TcxGridLevel;
    cxTabSheet6: TcxTabSheet;
    cxDBMemo1: TcxDBMemo;
    PopupMenu1: TPopupMenu;
    Desfazerligao1: TMenuItem;
    Assistenteparacadstramento1: TMenuItem;
    Detalhes1: TMenuItem;
    btnItens: TcxButton;
    cxDBTextEdit4: TcxDBTextEdit;
    Label12: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label10: TcxLabel;
    TabMed: TcxTabSheet;
    GMed: TcxGrid;
    tbvMed: TcxGridDBTableView;
    tbvMednlote: TcxGridDBColumn;
    tbvMedqlote: TcxGridDBColumn;
    tbvMeddfab: TcxGridDBColumn;
    tbvMeddven: TcxGridDBColumn;
    tbvMedvpmc: TcxGridDBColumn;
    LvMed: TcxGridLevel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Excluir1: TMenuItem;
    Label44: TLabel;
    ConverterDados1: TMenuItem;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    btnPesq: TcxButton;
    AssistentedePrecificao1: TMenuItem;
    cxTabSheet7: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    btnAlterarNatOp: TcxButton;
    cmbNatOp: TcxDBTextEdit;
    cxDBCalcEdit1: TcxDBLabel;
    cxDBCalcEdit2: TcxDBLabel;
    cxDBCalcEdit3: TcxDBLabel;
    cxDBCalcEdit4: TcxDBLabel;
    cxDBCalcEdit5: TcxDBLabel;
    cxDBCalcEdit6: TcxDBLabel;
    cxDBCalcEdit7: TcxDBLabel;
    cxDBCalcEdit8: TcxDBLabel;
    cxDBCalcEdit9: TcxDBLabel;
    cxDBCalcEdit10: TcxDBLabel;
    cxDBCalcEdit11: TcxDBLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    Panel1: TPanel;
    btnTotNF: TcxButton;
    cxDBCalcEdit16: TcxDBLabel;
    cxDBCalcEdit17: TcxDBLabel;
    cxDBCalcEdit18: TcxDBLabel;
    cxDBCalcEdit19: TcxDBLabel;
    cxDBCalcEdit20: TcxDBLabel;
    cxDBCalcEdit21: TcxDBLabel;
    cxDBCalcEdit22: TcxDBLabel;
    Panel2: TPanel;
    btnTotNF2: TcxButton;
    Panel4: TPanel;
    btnTotNF3: TcxButton;
    cxDBTextEdit1: TcxDBLabel;
    cxDBTextEdit3: TcxDBLabel;
    cxDBTextEdit5: TcxDBLabel;
    cxDBTextEdit6: TcxDBLabel;
    cxDBTextEdit7: TcxDBLabel;
    cxDBTextEdit8: TcxDBLabel;
    Panel5: TPanel;
    btnTransp: TcxButton;
    Panel7: TPanel;
    btnVol: TcxButton;
    cxDBTextEdit9: TcxDBLabel;
    cxDBCalcEdit24: TcxDBLabel;
    cxDBCalcEdit23: TcxDBLabel;
    cxDBCalcEdit25: TcxDBLabel;
    Panel8: TPanel;
    btnFat: TcxButton;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1cod_da: TcxGridDBColumn;
    cxGridDBTableView1nmro: TcxGridDBColumn;
    cxGridDBTableView1cod_aut: TcxGridDBColumn;
    cxGridDBTableView1valor: TcxGridDBColumn;
    cxGridDBTableView1dt_venc: TcxGridDBColumn;
    cxGridDBTableView1dt_pag: TcxGridDBColumn;
    Panel9: TPanel;
    btnDocArrec: TcxButton;
    cxDBMemo2: TcxDBMemo;
    CoverterTodospara1: TMenuItem;
    ConverterTodosCFOPpara1: TMenuItem;
    cxDBLabel7: TcxDBLabel;
    ConvertertodosCSOSNpara1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnManualClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConcluirClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbvItensCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Desfazerligao1Click(Sender: TObject);
    procedure Assistenteparacadstramento1Click(Sender: TObject);
    procedure Detalhes1Click(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure btnItensClick(Sender: TObject);
    procedure ednNFEnter(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure ConverterDados1Click(Sender: TObject);
    procedure btnPesqClick(Sender: TObject);
    procedure AssistentedePrecificao1Click(Sender: TObject);
    procedure btnAlterarNatOpClick(Sender: TObject);
    procedure tbvItensCSTGetProperties(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure tbvItensICMS_CSOSNGetProperties(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure tbvItensEditing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnTotNFClick(Sender: TObject);
    procedure btnTranspClick(Sender: TObject);
    procedure btnVolClick(Sender: TObject);
    procedure btnFatClick(Sender: TObject);
    procedure btnDocArrecClick(Sender: TObject);
    procedure tbvItensCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CoverterTodospara1Click(Sender: TObject);
    procedure ConverterTodosCFOPpara1Click(Sender: TObject);
    procedure ConvertertodosCSOSNpara1Click(Sender: TObject);
  private
    procedure CfgBtn(s: string = '1010100');//configura os botões
    procedure Importar_XML;//importação do XML
    procedure Novo_Fornecedor;//cadastra novo fornecedor com base no XML
    function TemNFemAberto: boolean; //verifica se tem NF em procesamento
    function NFCadastrada(nnf: integer; cnpj: string): boolean;
    function ConverteCFOP(CFOP: string): string;//retorna o id do cadatsro de CFOP
    function Validar(noFim:boolean = False): boolean; //valida os dados da nf antes da conclusão
    procedure Verificar_Pendencia; //libera o bntconcluir se todos os itens estao associados ao cadstro
    procedure Fazer_Ligacao(cnpj_forn, Cod_Prod_Forn: string; cod_Estoque: Integer);
    procedure DecodificaChaveNFe;//cria ligação entre o fornecedor e seu produto
    procedure Fazer_Rateio;
    procedure Salvar_XML_Rec;

  public
    procedure Calcular_Valor_NF;
    Function ItemDuplicado(item: integer): boolean; //verifica se o item no cadstro nao esta sendo associado a um item da nf ja associado ao mesmo
  end;

var
  frmEntradaNF: TfrmEntradaNF;
  path_grd: string;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uDM_NF_Entr, uFuncoes, uMD5Print, uDetProd, uAssCadProdNF,
     uCadForn, uMain, uListaEmitentes, uCadEstoque, uDadosItemNF, udm_ini,
  uConverteEmitInform, uPrecificacao, uPesqNatOper, uEntradaNFTotais, uEntradaNFTransp, uEntradaNFVolumes,
  uEntradaNFDuplic, uEntradaNFDocArr, uAssoc, uCadPlanoContas, uPesqNF,
  uDM_Conn;

procedure TfrmEntradaNF.AssistentedePrecificao1Click(Sender: TObject);
begin
   if DM_NF_Entr.cdNF_Item.IsEmpty then
      raise Exception.Create('Não há itens listados.');

   if DM_NF_Entr.cdNF_Itemid_prod.Value <=0 then
      raise Exception.Create('Esta funcionalidade requer que este item esteja associado ao cadastro de Produtos/Serviços.');

   frmPrecificacao := TfrmPrecificacao.Create(Self);
   frmPrecificacao.ShowModal;
end;

procedure TfrmEntradaNF.Assistenteparacadstramento1Click(Sender: TObject);
begin
   if DM_NF_Entr.cdNF_Item.IsEmpty then
      raise Exception.Create('Não há itens listados.');

   frmAss := TfrmAss.Create(Self);

   if DM_NF_Entr.cdNF_ItemcEAN.AsString = C_ST_VAZIO then
   begin
      frmAss.RGOpcao.ItemIndex := 1;
   end;

   frmAss.ShowModal;
   FreeAndNil(frmAss);
   Verificar_Pendencia;
end;

procedure TfrmEntradaNF.btnAlterarNatOpClick(Sender: TObject);
begin
   if DM_NF_Entr.cdNF.State in [dsInsert, dsEdit] then
   begin
      DM.QNatOper.Open('select * from natureza_oper where tipo="E"');
      AbreForm(TfrmPesqNatOper, frmPesqNatOper);
      DM_NF_Entr.cdNFIde_natOp.AsString := AnsiUpperCase(DM.QNatOpernome.AsString);
   end
   else
   if DM_NF_Entr.cdNFIde_dSaiEnt.Value <=0 then
   begin
      ShowMessage('Informe a data de entrada.');
      cxDBDateEdit2.SetFocus;
   end;

end;

procedure TfrmEntradaNF.btnCancelarClick(Sender: TObject);
var
   s: string;
begin
   CfgBtn('1010101');
   DM_NF_Entr.Procurar := False;

   if DM_NF_Entr.cdNF.Active then
   begin
      s := 'Deseja manter os registros atuais para posterior processamento?';

      if (MessageBox(0, PWideChar(s), C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      begin
         DM_NF_Entr.Limpar_CDatasets;
      end
      else
         DM_NF_Entr.Salvar_Datasets;

      DM_NF_Entr.cdNF_Item.EnableControls;
      DM_NF_Entr.Fechar_Datasets;

      CoverterTodospara1.Visible := False;
      ConverterTodosCFOPpara1.Visible := False;
   end;
end;

procedure TfrmEntradaNF.btnConcluirClick(Sender: TObject);
var
   i: integer;
begin
   DM_NF_Entr.Salvar_Datasets;

   if not Validar(True) then
      exit;

   if not DM_NF_Entr.Procurar then //true = entrada manual
   begin
      Fazer_Rateio;
     // Exit;
   end;

   CfgBtn('0000000');

   if not Validar then
   begin
      CfgBtn('01011000');
      Exit;
   end;

   if (DM_NF_Entr.Procurar)and(DM_NF_Entr.cdNFIde_finNFe.Value >=0) then //true = entrada manual
      Novo_Fornecedor;

//   --------------------   apaga a NF se ja existir no BD

   DMConn.DB.ExecSQL('delete from nf_entr where Ide_nNF=' +
                  Texto_Mysql(DM_NF_Entr.cdNFIde_nNF.Value) +
                 ' and Ide_serie=' +
                 Texto_Mysql(DM_NF_Entr.cdNFIde_serie.Value) +
                 ' and Emit_CNPJCPF=' +
                 Texto_Mysql(DM_NF_Entr.cdNFEmit_CNPJCPF.AsString)
   );

   //abre a base remota
   DM_NF_Entr.Ajustar_SQL(True);
   DM_NF_Entr.QNF.Open('select * from nf_entr order by id desc limit 1');

   DM_NF_Entr.QNF_Duplicata.Open;
   DM_NF_Entr.cdNF_Duplicata.First;

   //transfere os dados...
   DM_NF_Entr.QNF.Append;

   for i := 0 to DM_NF_Entr.QNF.FieldCount -1 do
   begin
      if (DM_NF_Entr.QNF.Fields[i].FieldName <> 'id') then
         DM_NF_Entr.QNF.Fields[i].Value := DM_NF_Entr.cdNF.FieldByName(DM_NF_Entr.QNF.Fields[i].FieldName).Value;
   end;
   //informa a vista, ou a prazo se houver duplicatas
   DM_NF_Entr.QNFIde_indPag.Value := Iif(DM_NF_Entr.QNF_Duplicata.RecordCount>0, 1, 0);

   DM_NF_Entr.QNF.Post;
   DM_NF_Entr.QNF.Refresh;//recupera a id

 //cadastra a chave e protocolo
   if not DM_NF_Entr.cdNF_Chave.IsEmpty then
   begin
      DM_NF_Entr.QNF_Chave.Open;
      DM_NF_Entr.QNF_Chave.Append;

      for i := 0 to DM_NF_Entr.QNF_Chave.FieldCount -1 do
      begin
         if (DM_NF_Entr.QNF_Chave.Fields[i].FieldName <> 'id')and(DM_NF_Entr.QNF_Chave.Fields[i].FieldName <> 'nf') then
            DM_NF_Entr.QNF_Chave.Fields[i].Value := DM_NF_Entr.cdNF_Chave.FieldByName(DM_NF_Entr.QNF_Chave.Fields[i].FieldName).Value;
      end;
      //chave da nf
      DM_NF_Entr.QNF_Chavenf.Value := DM_NF_Entr.QNFid.Value;
      DM_NF_Entr.QNF_Chave.Post;
      DM_NF_Entr.QNF_Chave.Refresh;//recupera a id
   end;

//-------------------- cadastra os itens
   DM_NF_Entr.cdNF_Item.DisableControls;
   DM_NF_Entr.cdNF_Item.First;

//   DM_NF_Entr.QNF_Item.Open;

   while not DM_NF_Entr.cdNF_Item.Eof do
   begin
      Fazer_Ligacao(DM_NF_Entr.cdNFEmit_CNPJCPF.AsString,
                    DM_NF_Entr.cdNF_ItemcProd.AsString,
                    DM_NF_Entr.cdNF_Itemid_prod.Value
      );

      DM_NF_Entr.QNF_Item.Append;

      for i := 0 to DM_NF_Entr.QNF_Item.FieldCount -1 do
      begin
         if (DM_NF_Entr.QNF_Item.Fields[i].FieldName <> 'id')and
            (DM_NF_Entr.QNF_Item.Fields[i].FieldName <> 'nf') then
            DM_NF_Entr.QNF_Item.Fields[i].Value := DM_NF_Entr.cdNF_Item.FieldByName(DM_NF_Entr.QNF_Item.Fields[i].FieldName).Value;
      end;

      DM_NF_Entr.QNF_ItemcProd.AsString := DM_NF_Entr.cdNF_Itemid_prod.AsString;
      DM_NF_Entr.QNF_Itemnf.Value       := DM_NF_Entr.QNFid.Value;
      DM_NF_Entr.QNF_Item.Post;
      DM_NF_Entr.QNF_Item.Refresh;//recupera o id

      //lote de medicamentos
      DM_NF_Entr.cdNF_Item_Med.First;

      while not DM_NF_Entr.cdNF_Item_Med.Eof do
      begin
         if DM_NF_Entr.CDNF_Item_Meditem.Value = DM_NF_Entr.cdNF_Itemid.Value then
         begin
            DM_NF_Entr.QNF_Item_Med.Append;

            for i := 0 to DM_NF_Entr.QNF_Item_Med.FieldCount -1 do
            begin
               if (DM_NF_Entr.QNF_Item_Med.Fields[i].FieldName <> 'id')and(DM_NF_Entr.QNF_Item_Med.Fields[i].FieldName <> 'item') then
                  DM_NF_Entr.QNF_Item_Med.Fields[i].Value := DM_NF_Entr.CDNF_Item_Med.FieldByName(DM_NF_Entr.QNF_Item_Med.Fields[i].FieldName).Value;
            end;

            DM_NF_Entr.QNF_Item_Meditem.Value := DM_NF_Entr.QNF_Itemid.Value;
            DM_NF_Entr.QNF_Item_Med.Post;
         end;

         DM_NF_Entr.cdNF_Item_Med.Next;
      end;


//-----------------atualiza o estoque
      FormatSettings.DecimalSeparator := '.';
      DM.ExecSQL('call pr_atualizar_estoque(' +
                  QuotedStr(DM_NF_Entr.cdNF_ItemvUnCom.AsString) + ',' +
                  QuotedStr(DM_NF_Entr.cdNF_ItemVR_CUSTO.AsString) + ',' +
                  QuotedStr(DM_NF_Entr.cdNF_ItemVR_VENDA.AsString) + ',' +
                  QuotedStr(DM_NF_Entr.cdNF_ItemQTD.AsString) + ',' +
                  QuotedStr(DM_NF_Entr.cdNF_Itemid_prod.AsString) + ',' +
                  QuotedStr(DM.id_Term) + ');'
      );

      DM.ExecSQL('call pr_hash("ESTOQUE",' + Texto_Mysql(_C) +',' + Texto_Mysql(DM.id_Term) +');');
      DM.ExecSQL('call atu_pdv(' + Texto_Mysql(DM_NF_Entr.cdNF_Itemid_prod.AsString)+');');
      FormatSettings.DecimalSeparator := ',';
      DM_NF_Entr.cdNF_Item.Next;
   end;

   DM_NF_Entr.QNF_Item.Refresh;//recupera as id's
   DM_NF_Entr.cdNF_Item.EnableControls;

//---------------------cadastra as duplicatas

   while not DM_NF_Entr.cdNF_Duplicata.Eof do
   begin
      DM_NF_Entr.QNF_Duplicata.Append;

      for i := 0 to DM_NF_Entr.QNF_Duplicata.FieldCount -1 do
      begin
         if (DM_NF_Entr.QNF_Duplicata.Fields[i].FieldName <> 'id')and
            (DM_NF_Entr.QNF_Duplicata.Fields[i].FieldName <> 'nf') then
            DM_NF_Entr.QNF_Duplicata.Fields[i].Value := DM_NF_Entr.cdNF_Duplicata.FieldByName(DM_NF_Entr.QNF_Duplicata.Fields[i].FieldName).Value;
      end;

      DM_NF_Entr.QNF_Duplicatanf.Value := DM_NF_Entr.QNFid.Value;
      DM_NF_Entr.QNF_Duplicata.Post;

      DM_NF_Entr.cdNF_Duplicata.Next;
   end;

   DM_NF_Entr.QNF_Duplicata.Refresh;//recupera as id's

//---------------------cadastra os doc arrec

   DM_NF_Entr.QNF_Guia_Arrec.Open;
   DM_NF_Entr.cdNF_Guia_Arrec.First;

   while not DM_NF_Entr.cdNF_Guia_Arrec.Eof do
   begin
      DM_NF_Entr.QNF_Guia_Arrec.Append;

      for i := 0 to DM_NF_Entr.QNF_Guia_Arrec.FieldCount -1 do
      begin
         if (DM_NF_Entr.QNF_Guia_Arrec.Fields[i].FieldName <> 'id')and
            (DM_NF_Entr.QNF_Guia_Arrec.Fields[i].FieldName <> 'nf') then
            DM_NF_Entr.QNF_Guia_Arrec.Fields[i].Value := DM_NF_Entr.cdNF_Guia_Arrec.FieldByName(DM_NF_Entr.QNF_Guia_Arrec.Fields[i].FieldName).Value;
      end;

      DM_NF_Entr.QNF_Guia_Arrecnf.Value := DM_NF_Entr.QNFid.Value;
      DM_NF_Entr.QNF_Guia_Arrec.Post;

      DM_NF_Entr.cdNF_Guia_Arrec.Next;
   end;

   DM_NF_Entr.QNF_Guia_Arrec.Refresh;//recupera as id's

//cadastra os reboques

   DM_NF_Entr.QNF_Reboque.Open;
   DM_NF_Entr.cdNF_Reboque.First;

   while not DM_NF_Entr.cdNF_Reboque.Eof do
   begin
      DM_NF_Entr.QNF_Reboque.Append;

      for i := 0 to DM_NF_Entr.QNF_Reboque.FieldCount -1 do
      begin
         if (DM_NF_Entr.QNF_Reboque.Fields[i].FieldName <> 'id')and
            (DM_NF_Entr.QNF_Reboque.Fields[i].FieldName <> 'nf') then
            DM_NF_Entr.QNF_Reboque.Fields[i].Value := DM_NF_Entr.cdNF_Reboque.FieldByName(DM_NF_Entr.QNF_Reboque.Fields[i].FieldName).Value;
      end;

      DM_NF_Entr.QNF_Reboquenf.Value := DM_NF_Entr.QNFid.Value;
      DM_NF_Entr.QNF_Reboque.Post;

      DM_NF_Entr.cdNF_Reboque.Next;
   end;

   DM_NF_Entr.QNF_Reboque.Refresh;//recupera as id's

//cadastra as referenciadas

   DM_NF_Entr.QNF_Referenciada.Open;
   DM_NF_Entr.cdNF_Referenciada.First;

   while not DM_NF_Entr.cdNF_Referenciada.Eof do
   begin
      DM_NF_Entr.QNF_Referenciada.Append;

      for i := 0 to DM_NF_Entr.QNF_Referenciada.FieldCount -1 do
      begin
         if (DM_NF_Entr.QNF_Referenciada.Fields[i].FieldName <> 'id')and
            (DM_NF_Entr.QNF_Referenciada.Fields[i].FieldName <> 'nf') then
            DM_NF_Entr.QNF_Referenciada.Fields[i].Value := DM_NF_Entr.cdNF_Referenciada.FieldByName(DM_NF_Entr.QNF_Referenciada.Fields[i].FieldName).Value;
      end;

      DM_NF_Entr.QNF_Referenciadanf.Value := DM_NF_Entr.QNFid.Value;
      DM_NF_Entr.QNF_Referenciada.Post;

      DM_NF_Entr.cdNF_Referenciada.Next;
   end;

   DM_NF_Entr.QNF_Referenciada.Refresh;//recupera as id's

//cadastra volumes e lacres

   DM_NF_Entr.QNF_Volume.Open;
   DM_NF_Entr.QNF_Lacre.Open;
   DM_NF_Entr.cdNF_Volume.First;

   while not DM_NF_Entr.cdNF_Volume.Eof do
   begin
      DM_NF_Entr.QNF_Volume.Append;

      for i := 0 to DM_NF_Entr.QNF_Volume.FieldCount -1 do
      begin
         if (DM_NF_Entr.QNF_Volume.Fields[i].FieldName <> 'id')and
            (DM_NF_Entr.QNF_Volume.Fields[i].FieldName <> 'nf') then
            DM_NF_Entr.QNF_Volume.Fields[i].Value := DM_NF_Entr.cdNF_Volume.FieldByName(DM_NF_Entr.QNF_Volume.Fields[i].FieldName).Value;
      end;

      DM_NF_Entr.QNF_Volumenf.Value := DM_NF_Entr.QNFid.Value;
      DM_NF_Entr.QNF_Volume.Post;
      DM_NF_Entr.QNF_Volume.Refresh;//recupera a id

//------------------Lacre
      DM_NF_Entr.cdNF_Lacre.First;

      while not DM_NF_Entr.cdNF_Lacre.Eof do
      begin
         DM_NF_Entr.QNF_Lacre.Append;
         for i := 0 to DM_NF_Entr.QNF_Lacre.FieldCount -1 do
         begin
            if (DM_NF_Entr.QNF_Lacre.Fields[i].FieldName <> 'id')and
               (DM_NF_Entr.QNF_Lacre.Fields[i].FieldName <> 'vol') then
               DM_NF_Entr.QNF_Lacre.Fields[i].Value := DM_NF_Entr.cdNF_Lacre.FieldByName(DM_NF_Entr.QNF_Lacre.Fields[i].FieldName).Value;
         end;

         DM_NF_Entr.QNF_Lacrevol.Value := DM_NF_Entr.QNF_Volumeid.Value;
         DM_NF_Entr.QNF_Lacre.Post;
         DM_NF_Entr.cdNF_Lacre.Next;
      end;

      DM_NF_Entr.QNF_Lacre.Refresh;
      DM_NF_Entr.cdNF_Volume.Next;
   end;

//-----------------------finalização

   DM_NF_Entr.cdNF_Item.First;
   DM_NF_Entr.cdNF_Item.EnableControls;
   DM_NF_Entr.Limpar_CDatasets;
   DM_NF_Entr.Fechar_Datasets;
   CoverterTodospara1.Visible := False;
   ConverterTodosCFOPpara1.Visible := False;
   ShowMessage('Processo concluído.');
   CfgBtn('1010101');
end;

procedure TfrmEntradaNF.btnDocArrecClick(Sender: TObject);
begin
   if not DM_NF_Entr.cdNF.IsEmpty then
      AbreForm(TfrmDocArr, frmDocArr, True);
end;

procedure TfrmEntradaNF.btnFatClick(Sender: TObject);
begin
   if not DM_NF_Entr.cdNF.IsEmpty then
      AbreForm(TfrmDuplic, frmDuplic, True);
end;

function TfrmEntradaNF.TemNFemAberto: boolean;
var
   s: string;
begin
   Result := not DM_NF_Entr.cdNF.Isempty;

	If Result then //se tem nF em aberto
   begin
      s := 'Há uma NF em aberto. Nº '+ DM_NF_Entr.cdNFIde_nNF.AsString +
            #10#13'Deseja continuar a processá-la?';

      if (MessageBox(0, PWideChar(s), C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      begin
         Result := False;
      end;
   end;
end;

procedure TfrmEntradaNF.DecodificaChaveNFe;
var
   s, cnpj, nmro: string;
begin
   if not (DM_NF_Entr.cdNF.State in [dsInsert, dsedit]) then
      exit;

   s := Number(DM_NF_Entr.cdNF_Chavechave.AsString);

  if s = C_ST_VAZIO then
   begin
      ShowMessage('Chave da NF-e é obrigatória.');
      edchave.SetFocus;
   end
   else
   if not ValidarChave('NFe' + s) then
   begin
      ShowMessage('Chave da NF-e Incorreta.');
      edchave.SetFocus;
   end;

   cnpj := Copy(s,7,14);
   nmro := Copy(s,26,9);

   if Number(cnpj) <> Number(DM_NF_Entr.cdNFEmit_CNPJCPF.AsString) then
   begin
      CfgBtn('1010101');
      DM_NF_Entr.Fechar_Datasets;
      raise Exception.Create(C_256);
   end;

   if NFCadastrada(StrToInt(nmro),cnpj) then
   begin
      CfgBtn('1010101');
      DM_NF_Entr.Fechar_Datasets;
      raise Exception.Create(C_254);
   end;

   DM_NF_Entr.cdNFIde_nNF.Value := StrToInt(nmro);

   nmro := Copy(s,23,3);
   DM_NF_Entr.cdNFIde_serie.Value := StrToInt(nmro);
end;

function TfrmEntradaNF.Validar(noFim:boolean): boolean;  //valida as informações da nota e itens
var
   s: string;
   vrIPI,vrPROD, vrST,vrFRETE, vrODA, vrSEG, vrDESC: currency;
begin
   if DM_NF_Entr.cdNFIde_natOp.AsString = C_ST_VAZIO then
      s := 'Informe a Natureza da Operação.'#13;

   if (DM_NF_Entr.cdNFIde_modelo.Value = 55)and(Number(DM_NF_Entr.cdNF_Chavechave.AsString)= C_ST_VAZIO) then
       s := s+ 'Chave da NF-e Incorreta.'#13
   else
   if (DM_NF_Entr.cdNFIde_modelo.Value = 55)and(not ValidarChave('NFe' + Number(DM_NF_Entr.cdNF_Chavechave.AsString))) then
       s := s+ 'Chave da NF-e Incorreta.'#13;

   if DM_NF_Entr.cdNFIde_nNF.Value <=0 then
      s := s + 'Nº da NF Incorreto.'#13;

   if DM_NF_Entr.cdNFIde_dEmi.Value <=0 then
      s := s + 'Data de emissão da NF Incorreta.'#13;

   if DM_NF_Entr.cdNFIde_dSaiEnt.Value <=0 then
      s := s + 'Data de Entrada da NF Incorreta.'#13;

   if DM_NF_Entr.cdNFIde_dEmi.Value > DM_NF_Entr.cdNFIde_dSaiEnt.Value then
      s := s + 'Data de entrada não pode ser anterior a de emissão.'#13;

   if Number(DM_NF_Entr.cdNFEmit_CNPJCPF.AsString) = C_ST_VAZIO then
      s := s + 'Faltam os dados do emitente.'#13;

   if DM_NF_Entr.cdNFICMSTot_vNF.Value<=0 then
      s := s + 'Falta o valor total da NF.'#13;

   if cmbMod.Properties.ListSource.DataSet.FieldByName('com_itens').AsString = 'S' then
   begin
      if DM_NF_Entr.cdNFICMSTot_vProd.Value<=0 then
      s := s + 'Falta o valor total dos produtos.'#13;

      DM_NF_Entr.cdNF_Item.DisableControls;
      DM_NF_Entr.cdNF_Item.First;

      vrIPI   := 0;
      vrPROD  := 0;
      vrST    := 0;
      vrFRETE := 0;
      vrODA   := 0;
      vrSEG   := 0;
      vrDESC  := 0;

      while not DM_NF_Entr.cdNF_Item.Eof do
      begin
         if DM_NF_Entr.cdNF_ItemVR_VENDA.Value < DM_NF_Entr.cdNF_ItemVR_CUSTO.Value then
         begin
            s := s + 'O item ' + DM_NF_Entr.cdNF_ItemnItem.AsString + ' está com preço de venda abaixo do de custo.'#13;
         end;

         //valores dos itens a comparar com o total da nf
         if noFim then
         begin
            vrIPI   := vrIPI + DM_NF_Entr.cdNF_ItemIPI_vIPI.Value;
            vrPROD  := vrPROD + DM_NF_Entr.cdNF_ItemvProd.Value;
            vrST    := vrST + DM_NF_Entr.cdNF_ItemICMS_vICMSST.Value;
            vrFRETE := vrFRETE + DM_NF_Entr.cdNF_ItemvFrete.Value;
            vrODA   := vrODA + DM_NF_Entr.cdNF_ItemvOutro.Value;
            vrSEG   := vrSEG + DM_NF_Entr.cdNF_ItemvSeg.Value;
            vrDESC  := vrDESC + DM_NF_Entr.cdNF_ItemvDesc.Value;
         end;

         DM_NF_Entr.cdNF_Item.Next;
      end;

      if noFim then
      begin
         if Arredonda(vrPROD,2) <> Arredonda(DM_NF_Entr.cdNFICMSTot_vProd.Value,2) then
            s := s + 'Soma do valor dos itens difere do total da NF.' + C_CRLF + ' Total da NF: ' +
                     FloatToStrF(DM_NF_Entr.cdNFICMSTot_vProd.Value,ffNumber,15,2) + C_CRLF +
                     'Valor dos Itens: ' + FloatToStrF(vrPROD,ffNumber,15,2) + C_CRLF;

         if Arredonda(vrODA,2) <> Arredonda(DM_NF_Entr.cdNFICMSTot_vOutro.Value,2) then
            s := s + 'Soma do valor de O.D.A. do total da NF.' + C_CRLF + ' Total da NF: ' +
                     FloatToStrF(DM_NF_Entr.cdNFICMSTot_vOutro.Value,ffNumber,15,2) + C_CRLF +
                     'O.D.A dos Itens: ' + FloatToStrF(vrODA,ffNumber,15,2) + C_CRLF;

         if Arredonda(vrIPI,2) <> Arredonda(DM_NF_Entr.cdNFICMSTot_vIPI.Value,2) then
            s := s + 'Soma do valor do IPI difere do total da NF.' + C_CRLF + ' Total da NF: ' +
                     FloatToStrF(DM_NF_Entr.cdNFICMSTot_vIPI.Value,ffNumber,15,2) + C_CRLF +
                     'IPI dos Itens: ' + FloatToStrF(vrIPI,ffNumber,15,2) + C_CRLF;

         if Arredonda(vrST,2) <> Arredonda(DM_NF_Entr.cdNFICMSTot_vST.Value,2) then
            s := s + 'Soma do valor do ST difere do total da NF.' + C_CRLF + ' Total da NF: ' +
                     FloatToStrF(DM_NF_Entr.cdNFICMSTot_vST.Value,ffNumber,15,2) + C_CRLF +
                     'ST dos Itens: ' + FloatToStrF(vrST,ffNumber,15,2) + C_CRLF;

         if Arredonda(vrFRETE,2) <> Arredonda(DM_NF_Entr.cdNFICMSTot_vFrete.Value,2) then
            s := s + 'Soma do valor do Frete difere do total da NF.' + C_CRLF + ' Total da NF: ' +
                     FloatToStrF(DM_NF_Entr.cdNFICMSTot_vFrete.Value,ffNumber,15,2) + C_CRLF +
                     'Frete dos Itens: ' + FloatToStrF(vrFRETE,ffNumber,15,2) + C_CRLF;

         if Arredonda(vrSEG,2) <> Arredonda(DM_NF_Entr.cdNFICMSTot_vSeg.Value,2) then
            s := s + 'Soma do valor do seguro difere do total da NF.' + C_CRLF + ' Total da NF: ' +
                     FloatToStrF(DM_NF_Entr.cdNFICMSTot_vSeg.Value,ffNumber,15,2) + C_CRLF +
                     'Seguro dos Itens: ' + FloatToStrF(vrSEG,ffNumber,15,2) + C_CRLF;

         if Arredonda(vrDESC,2) <> Arredonda(DM_NF_Entr.cdNFICMSTot_vDesc.Value,2) then
            s := s + 'Soma do valor do desconto difere do total da NF.' + C_CRLF + ' Total da NF: ' +
                     FloatToStrF(DM_NF_Entr.cdNFICMSTot_vDesc.Value,ffNumber,15,2) + C_CRLF +
                     'Desconto nos Itens: ' + FloatToStrF(vrDESC,ffNumber,15,2) + C_CRLF;
         //verifica o tot NF
         vrPROD :=  vrPROD + vrIPI + vrST + vrFRETE + vrODA + vrSEG - vrDESC;

         if Arredonda(vrPROD,2) <> Arredonda(DM_NF_Entr.cdNFICMSTot_vNF.Value,2) then
            s := s + 'Soma do totais dos itens difere do total da NF.' + C_CRLF + ' Total da NF: ' +
                     FloatToStrF(DM_NF_Entr.cdNFICMSTot_vNF.Value,ffNumber,15,2) + C_CRLF +
                     'Total dos Itens: ' + FloatToStrF(vrPROD,ffNumber,15,2) + C_CRLF;
      end;

      DM_NF_Entr.cdNF_Item.First;
      DM_NF_Entr.cdNF_Item.EnableControls;
   end;

   if s <> C_ST_VAZIO then
      ShowMessage(s);

   Result := s = C_ST_VAZIO;
end;

procedure TfrmEntradaNF.Verificar_Pendencia;
var
   i: integer;
   b: boolean;
begin
   if DM_NF_Entr.cdNF_Item.IsEmpty then
   begin
      DM_NF_Entr.Fechar_Datasets;
      CfgBtn('1010101');
      exit;
   end;

   DM_NF_Entr.cdNF_Item.DisableControls;
   i := DM_NF_Entr.cdNF_Itemid.Value;
   DM_NF_Entr.cdNF_Item.First;

   b := False;

   while not DM_NF_Entr.cdNF_Item.Eof do
   begin
      b := DM_NF_Entr.cdNF_Itemid_prod.Value = 0;

      if b then
         break;

      DM_NF_Entr.cdNF_Item.Next;
   end;

   DM_NF_Entr.cdNF_Item.EnableControls;
   btnConcluir.Enabled := not b;
   DM_NF_Entr.cdNF_Item.Locate('id', i, []);
end;

procedure TfrmEntradaNF.btnImportarClick(Sender: TObject); //importar do xml
begin
   DM_NF_Entr.Fechar_Datasets;
   DM_NF_Entr.Carregar_Datasets;
   DM_NF_Entr.manual := False;
   DM.QModNF.Open;
   DM.QEmpresa.Open;
   pg1.ActivePageIndex := 0;

   if TemNFemAberto then
   begin
      CfgBtn('1010100');
      exit;
   end;

   CfgBtn('0100000');
   DM_NF_Entr.Limpar_CDatasets;
   CoverterTodospara1.Visible := False;
   ConverterTodosCFOPpara1.Visible := False;
   Importar_XML;
   bar1.Panels[5].Text := IntToStr(DM_NF_Entr.cdNF_Item.RecordCount) + ' Itens';

   Assistenteparacadstramento1.Visible := not DM_NF_Entr.cdNF_Item.IsEmpty;
   Desfazerligao1.Visible              := not DM_NF_Entr.cdNF_Item.IsEmpty;
   Detalhes1.Visible                   := not DM_NF_Entr.cdNF_Item.IsEmpty;
   Excluir1.Visible := False;

   Verificar_Pendencia;
   cxDBDateEdit2.SetFocus;
end;

procedure TfrmEntradaNF.btnItensClick(Sender: TObject);
var
   i: integer;
begin
   if Validar then
   begin
      if cmbMod.Properties.ListSource.DataSet.FieldByName('com_itens').AsString = 'N' then
         raise Exception.Create('O modelo selecionado não possui itens.');
   end
   else
      exit;

//   DM_NF_Entr.cdNF.Post;
   DM_NF_Entr.cdNF.Refresh;

   frmCadEstoque := TfrmCadEstoque.Create(self);
   frmCadEstoque.pgCad.ActivePage := frmCadEstoque.TabPesq;
   frmCadEstoque.ShowModal;
  // FreeAndNil(frmCadEstoque);

   if DM.QEstoque.Active then
   if not DM.QEstoque.IsEmpty then
   begin
      DM.QvwEstoque.Open('select * from vw_estoque where id=' + DM.QEstoqueid.AsString);
      i := DM_NF_Entr.cdNF_Item.RecordCount;
      DM_NF_Entr.cdNF_Item.Append;
      DM_NF_Entr.cdNF_ItemnItem.Value        := i+1;
      DM_NF_Entr.cdNF_ItemcProd.AsString     := DM.QvwEstoqueid.AsString;
      DM_NF_Entr.cdNF_Itemid_prod.Value      := DM.QvwEstoqueid.Value;
      DM_NF_Entr.cdNF_ItemcEAN.AsString      := DM.QvwEstoquecod_gtin.AsString;
      DM_NF_Entr.cdNF_ItemxProd.AsString     := DM.QvwEstoquenome.AsString;
      DM_NF_Entr.cdNF_ItemNCM.AsString       := DM.QvwEstoqueNCM.AsString;
      DM_NF_Entr.cdNF_ItemuCom.AsString      := DM.QvwEstoquesigla_unid.AsString;
      DM_NF_Entr.cdNF_ItemqCom.Value         := 0;
      DM_NF_Entr.cdNF_ItemvUnCom.Value       := 0;
      DM_NF_Entr.cdNF_ItemvProd.Value        := 0;
      DM_NF_Entr.cdNF_ItemcEANTrib.AsString  := DM.QvwEstoquecod_gtin.AsString;
      DM_NF_Entr.cdNF_ItemuTrib.AsString     := DM.QvwEstoquesigla_unid.AsString;
      DM_NF_Entr.cdNF_ItemqTrib.Value        := 0;
      DM_NF_Entr.cdNF_ItemvUnTrib.Value      := 0;
      DM_NF_Entr.cdNF_ItemICMS_pICMS.Value   := StrToFloatDef(Number(DM.QvwEstoquealiq_ecf.AsString),0)/100;
      DM_NF_Entr.cdNF_Itemult_custo.Value    := DM.QvwEstoquevrcusto_real.Value;
      DM_NF_Entr.cdNF_Itemvr_venda.Value     := DM.QvwEstoquevrvenda_vista.Value;
      frmdadosItemNF := TfrmdadosItemNF.Create(self);
      frmdadosItemNF.ShowModal;
      DM_NF_Entr.cdNF_Item.EnableControls;
   end;

   Assistenteparacadstramento1.Visible := False;
   Desfazerligao1.Visible              := False;
   Detalhes1.Visible                   := not DM_NF_Entr.cdNF_Item.IsEmpty;
   Excluir1.Visible                    := not DM_NF_Entr.cdNF_Item.IsEmpty;
   ConverterDados1.Visible             := Excluir1.Visible;
   CfgBtn('0101011');
end;

procedure TfrmEntradaNF.btnManualClick(Sender: TObject);
begin
   CfgBtn('0100000');
   DM_NF_Entr.Carregar_Datasets;
   DM_NF_Entr.Limpar_CDatasets;
   //abre a listagem de emitentes
   frmListaEmit     := TfrmListaEmit.Create(Self);
   frmListaEmit.tag := Trunc(frmMain.h_proporc);
   frmListaEmit.ShowModal;

   if(DM.QvwDest_nf.Active) then
   begin
      if(not DM.QvwDest_nf.IsEmpty) then
      begin
         if (MessageBox(0, 'Associar este emitente?', C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
         begin
            CfgBtn('1010100');
            DM_NF_Entr.Fechar_Datasets;
            exit;
         end;

         if DM.QvwDest_nfcidade_cod.AsInteger = 0 then
         begin
            CfgBtn('1010100');
            DM_NF_Entr.Fechar_Datasets;
            raise Exception.Create('Este emitente não possui município informado.');
         end;

         with DM_NF_Entr do
         begin
            DM_NF_Entr.Procurar := False;
            cdNF.Append;
            cdNFEmit_CNPJCPF.AsString         := Number(DM.QvwDest_nfCNPJ.AsString);
            cdNFEmit_IE.AsString              := Number(DM.QvwDest_nfIE.AsString);
            cdNFEmit_xNome.AsString           := DM.QvwDest_nfRAZAOSOCIAL.AsString;
            cdNFEmit_xFant.AsString           := DM.QvwDest_nfNOME.AsString;
            cdNFEmit_EnderEmit_fone.AsString  := Number(DM.QvwDest_nfTEL1.AsString);
            cdNFEmit_EnderEmit_xLgr.AsString  := DM.QvwDest_nfLOGRADOURO.AsString;
            cdNFEmit_EnderEmit_xBairro.AsString := DM.QvwDest_nfbairro.AsString;
            cdNFmit_EnderEmit_CEP.AsString    := Number(DM.QvwDest_nfcep.AsString);
            cdNFEmit_EnderEmit_nro.AsString   := DM.QvwDest_nfNMRO.AsString;
            cdNFEmit_EnderEmit_xCpl.AsString  := DM.QvwDest_nfCOMPLEM.AsString;
            cdNFEmit_EnderEmit_cMun.Value     := DM.QvwDest_nfcidade_cod.AsInteger;
            cdNFEmit_EnderEmit_xMun.AsString  := DM.QvwDest_nfCIDADE.AsString;
            cdNFEmit_EnderEmit_UF.AsString    := DM.QvwDest_nfUF.AsString;
            cdNFIde_cUF.Value                 := DM.UF_To_Codigo(DM.QvwDest_nfUF.AsString);
            cdNFEmit_enderEmit_cPais.Value    := 1058;
            cdNFEmit_enderEmit_xPais.AsString := 'BRASIL';
            cdNFIde_finNFe.Value              := -1;//flag para entrada manual
            cdNF.Post;
            cdNF.Edit;
         end;

         CfgBtn('0100010');
         cmbMod.SetFocus;
      end
      else
      begin
         CfgBtn('1010101');
         DM_NF_Entr.Fechar_Datasets;
      end;
   end
   else
   begin
      CfgBtn('1010101');
      DM_NF_Entr.Fechar_Datasets;
   end;
end;

procedure TfrmEntradaNF.Calcular_Valor_NF;
begin
  DM_NF_Entr.cdNFICMSTot_vNF.Value := DM_NF_Entr.cdNFICMSTot_vProd.Value +
                                      DM_NF_Entr.cdNFICMSTot_vSeg.Value +
                                      DM_NF_Entr.cdNFICMSTot_vFrete.Value +
                                      DM_NF_Entr.cdNFICMSTot_vOutro.Value +
                                      DM_NF_Entr.cdNFICMSTot_vST.Value +
                                      DM_NF_Entr.cdNFICMSTot_vIPI.Value -
                                      DM_NF_Entr.cdNFICMSTot_vDesc.Value;
end;

procedure TfrmEntradaNF.CfgBtn(s: string);
begin
      btnManual.Enabled   := s[1] = '1';
      btnCancelar.Enabled := s[2] = '1';
      btnImportar.Enabled := s[3] = '1';
      btnConcluir.Enabled := s[4] = '1';
      btnSair.Enabled     := s[5] = '1';
      btnItens.Enabled    := (DM.QModNFcom_itens.Value='S')and(s[6] = '1');
      btnPesq.Enabled     := s[7] = '1';
end;

function TfrmEntradaNF.ConverteCFOP(CFOP: string): string;
var
   s,cfops, cfope: string;
   b: boolean;
   i,j: integer;
begin
   if number(CFOP)= C_ST_VAZIO then
   begin
      Result := '0000';
      exit;
   end;

   DMConn.Q5.Open('select entrada from cfop_converte where saida=' + Texto_Mysql(CFOP));
   s := DMConn.Q5.Fields[0].AsString;

   if Number(s) = '' then
   repeat
      s := InputBox('CFOP não encontrado', 'Informe o CFOP correspondente ao CFOP ' + CFOP, s);

      DMConn.Q5.Open('select id from cfop where cfop=' + Texto_Mysql(s));

      b := DMConn.Q5.Fields[0].AsInteger > 0;

      if b then
      begin
         i := StrToInt(CFOP);
         j :=StrToInt(s);

         if i > j then
         begin
            cfops := IntToStr(i);
            cfope := IntToStr(j);
         end
         else
         begin
            cfops := IntToStr(j);
            cfope := IntToStr(i);
         end;
         DM.ExecSQL('insert into cfop_converte set saida=' + Texto_Mysql(cfops) + ',entrada=' + Texto_Mysql(cfope)+';');
      end;
   until b;

   Result := Number(s);
end;

procedure TfrmEntradaNF.ConverterDados1Click(Sender: TObject);
begin
   frmConverteEmitInform := TfrmConverteEmitInform.Create(self);
   DM.Qcfop_cst_csosn.Open('SELECT * from cfop_cst_csosn order by cfop, cst, csosn');
   frmConverteEmitInform.ShowModal;
end;


procedure TfrmEntradaNF.ConverterTodosCFOPpara1Click(Sender: TObject);
var
   i: integer;
begin
   if (MessageBox(0, 'Confirma a alteração?', C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;

   i := DM_NF_Entr.cdNF_ItemCFOP_inform.AsInteger;
   DM_NF_Entr.cdNF_Item.DisableControls;
   DM_NF_Entr.cdNF_Item.Tag := 2;
   DM_NF_Entr.cdNF_Item.First;

   try
      while not DM_NF_Entr.cdNF_Item.Eof do
      begin
         DM_NF_Entr.cdNF_Item.Edit;
         DM_NF_Entr.cdNF_ItemCFOP_inform.AsInteger := i;
         DM_NF_Entr.cdNF_Item.Post;
         DM_NF_Entr.cdNF_Item.Next;
      end;
   finally
      DM_NF_Entr.cdNF_Item.First;
      DM_NF_Entr.cdNF_Item.EnableControls;
      DM_NF_Entr.cdNF_Item.Tag := 0
   end;
end;

procedure TfrmEntradaNF.ConvertertodosCSOSNpara1Click(Sender: TObject);
var
   i: integer;
begin
   if (MessageBox(0, 'Confirma a alteração?', C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;

   i := DM_NF_Entr.cdNF_ItemICMS_CSOSN_inform.AsInteger;
   DM_NF_Entr.cdNF_Item.DisableControls;
   DM_NF_Entr.cdNF_Item.Tag := 2;
   DM_NF_Entr.cdNF_Item.First;

   try
      while not DM_NF_Entr.cdNF_Item.Eof do
      begin
         DM_NF_Entr.cdNF_Item.Edit;
         DM_NF_Entr.cdNF_ItemICMS_CSOSN_inform.Value := i;
         DM_NF_Entr.cdNF_Item.Post;
         DM_NF_Entr.cdNF_Item.Next;
      end;
   finally
      DM_NF_Entr.cdNF_Item.First;
      DM_NF_Entr.cdNF_Item.EnableControls;
      DM_NF_Entr.cdNF_Item.Tag := 0
   end;
end;

procedure TfrmEntradaNF.btnPesqClick(Sender: TObject);
begin
//   frmMain.PesquisadeNF1.Click;
   frmPesqNF := TfrmPesqNF.Create(self);
   frmPesqNF.ShowModal;
   DM_NF_Entr.QNF.Close;
end;

procedure TfrmEntradaNF.btnTotNFClick(Sender: TObject);
begin
   if (not DM_NF_Entr.cdNF.IsEmpty)or(DM_NF_Entr.cdNF.State in [dsEdit, dsInsert]) then
      AbreForm(TfrmEntradaNF_Totais, frmEntradaNF_Totais, True);

   if Assigned(frmEntradaNF_Totais) then
      FreeAndNil(frmEntradaNF_Totais);
end;

procedure TfrmEntradaNF.btnTranspClick(Sender: TObject);
begin
   if not DM_NF_Entr.cdNF.IsEmpty then
      AbreForm(TfrmNFTransp, frmNFTransp, True);
end;

procedure TfrmEntradaNF.btnVolClick(Sender: TObject);
begin
   if not DM_NF_Entr.cdNF.IsEmpty then
      AbreForm(TfrmVolumes, frmVolumes, True);
end;

procedure TfrmEntradaNF.cxDBLookupComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
   edchave.Enabled := cmbMod.Properties.ListSource.DataSet.FieldByName('id').AsInteger = 55;
   edProt.Enabled  := cmbMod.Properties.ListSource.DataSet.FieldByName('id').AsInteger = 55;
end;

procedure TfrmEntradaNF.Desfazerligao1Click(Sender: TObject);
begin
   if DM_NF_Entr.cdNF_Item.IsEmpty then
      raise Exception.Create('Não há itens listados.');

   if DM_NF_Entr.cdNF_Itemid_prod.AsInteger = 0 then
      raise Exception.Create('Não existe associação para este item.');

   DM.ExecSQL('delete from prod_nf_forn where cod_estoque=' +
              QuotedStr(DM_NF_Entr.cdNF_Itemid_prod.AsString) +
              ' and cnpj_fornecedor=' +
              QuotedStr(DM_NF_Entr.cdNFEmit_CNPJCPF.AsString) +
              ' and cod_prod_fornecedor=' +
              QuotedStr(DM_NF_Entr.cdNF_ItemcProd.AsString) +
              ';'
   );

   DM_NF_Entr.cdNF_Item.Edit;
   DM_NF_Entr.cdNF_Itemid_prod.Value := 0;
   DM_NF_Entr.cdNF_Item.Post;
   Verificar_Pendencia;
end;

procedure TfrmEntradaNF.Detalhes1Click(Sender: TObject);
begin
   if DM_NF_Entr.cdNF_Item.IsEmpty then
      raise Exception.Create('Não há itens listados.');

   frmDetProd := TfrmDetProd.Create(self);
   frmDetProd.Show;
end;

procedure TfrmEntradaNF.ednNFEnter(Sender: TObject);
begin
   if (DM_NF_Entr.cdNF.Active)and(edchave.Enabled)and(Number(DM_NF_Entr.cdNF_Chavechave.AsString) <> C_ST_VAZIO) then
      DecodificaChaveNFe;
end;

procedure TfrmEntradaNF.Fazer_Rateio;
var
   vr_ipi, vr_prod, vr_st, vr_desc, vr_seg, vr_oda, vr_frete: currency;
   p_desc, p_seg, p_oda, p_frete: currency;
begin
   if DM_NF_Entr.cdNF_Item.IsEmpty then
      exit;

   vr_prod  := 0;
   vr_st    := 0;
   vr_desc  := 0;
   vr_seg   := 0;
   vr_oda   := 0;
   vr_frete := 0;
   vr_ipi   := 0;

   p_desc   := 0;
   p_seg    := 0;
   p_oda    := 0;
   p_frete  := 0;

   DM_NF_Entr.cdNF_Item.DisableControls;
   DM_NF_Entr.cdNF_Item.First;
   //soma o vprod dos itens
   while not DM_NF_Entr.cdNF_Item.Eof do
   begin
      vr_prod := vr_prod + DM_NF_Entr.cdNF_ItemvProd.Value;
      vr_ipi  := vr_ipi + DM_NF_Entr.cdNF_ItemIPI_vIPI.Value;
      DM_NF_Entr.cdNF_Item.Next;
   end;

   if DM_NF_Entr.cdNFICMSTot_vST.Value +
      DM_NF_Entr.cdNFICMSTot_vDesc.Value +
      DM_NF_Entr.cdNFICMSTot_vSeg.Value +
      DM_NF_Entr.cdNFICMSTot_vOutro.Value +
      DM_NF_Entr.cdNFICMSTot_vFrete.Value  > 0 then
   begin
   //calcula os percentuais de cada valor

      p_desc  := RetornaPercentual(vr_prod, DM_NF_Entr.cdNFICMSTot_vDesc.Value);
      p_seg   := RetornaPercentual(vr_prod, DM_NF_Entr.cdNFICMSTot_vSeg.Value);
      p_oda   := RetornaPercentual(vr_prod, DM_NF_Entr.cdNFICMSTot_vOutro.Value);
      p_frete := RetornaPercentual(vr_prod, DM_NF_Entr.cdNFICMSTot_vFrete.Value);

     //passo 1 - insere o valor calculando em cada item  e somando nas varivaeis para comparar os totais

      DM_NF_Entr.cdNF_Item.First;

      while not DM_NF_Entr.cdNF_Item.Eof do
      begin
         DM_NF_Entr.cdNF_Item.Edit;

         if DM_NF_Entr.cdNF_ItemICMS_CST.Value in [1,3,9,10,13] then
         begin
          //  DM_NF_Entr.cdNF_ItemICMS_vICMSST.Value := Arredonda((DM_NF_Entr.cdNF_ItemvProd.Value * p_st)/100,2);
            vr_st := vr_st + DM_NF_Entr.cdNF_ItemICMS_vICMSST.Value; //pega o valor do item
         end;

         DM_NF_Entr.cdNF_ItemvDesc.Value  := Percentual(p_desc, DM_NF_Entr.cdNF_ItemvProd.Value);
         DM_NF_Entr.cdNF_ItemvSeg.Value   := Percentual(p_seg, DM_NF_Entr.cdNF_ItemvProd.Value);
         DM_NF_Entr.cdNF_ItemvOutro.Value := Percentual(p_oda, DM_NF_Entr.cdNF_ItemvProd.Value);
         DM_NF_Entr.cdNF_ItemvFrete.Value := Percentual(p_frete, DM_NF_Entr.cdNF_ItemvProd.Value);
         DM_NF_Entr.cdNF_Item.Post;

         vr_desc  := vr_desc + DM_NF_Entr.cdNF_ItemvDesc.Value ;
         vr_seg   := vr_seg + DM_NF_Entr.cdNF_ItemvSeg.Value;
         vr_oda   := vr_oda + DM_NF_Entr.cdNF_ItemvOutro.Value;
         vr_frete := vr_frete + DM_NF_Entr.cdNF_ItemvFrete.Value;
         DM_NF_Entr.cdNF_Item.Next;
      end;

      //confere os valores e atribui a diferenca nas var p_
      //se for + faltou, se for - passou - a dif deve ser no max de centavos
      p_desc  := DM_NF_Entr.cdNFICMSTot_vDesc.Value - vr_desc;
      p_seg   := DM_NF_Entr.cdNFICMSTot_vSeg.Value - vr_seg;
      p_oda   := DM_NF_Entr.cdNFICMSTot_vOutro.Value - vr_oda;
      p_frete := DM_NF_Entr.cdNFICMSTot_vFrete.Value - vr_frete;
     // p_st    := DM_NF_Entr.cdNFICMSTot_vST.Value - vr_st;
   end;

   //trata cada dif independente
   //repete ate zerar todos os valores
   while (p_seg <>0)or(p_desc<>0)or(p_oda<>0)or(p_frete<>0){or(p_st<>0)} do
   begin
      DM_NF_Entr.cdNF_Item.First;

      while not DM_NF_Entr.cdNF_Item.Eof do
      begin
         DM_NF_Entr.cdNF_Item.Edit;

         if p_desc > 0 then //faltou
         begin
            DM_NF_Entr.cdNF_ItemvDesc.Value := DM_NF_Entr.cdNF_ItemvDesc.Value + 0.01;
            p_desc := p_desc - 0.01;
         end
         else
         if p_desc < 0 then //passou
         begin
            DM_NF_Entr.cdNF_ItemvDesc.Value := DM_NF_Entr.cdNF_ItemvDesc.Value - 0.01;
            p_desc := p_desc - 0.01;
         end;

         if p_seg > 0 then //faltou
         begin
            DM_NF_Entr.cdNF_ItemvSeg.Value := DM_NF_Entr.cdNF_ItemvSeg.Value + 0.01;
            p_seg := p_seg - 0.01;
         end
         else
         if p_seg < 0 then //passou
         begin
            DM_NF_Entr.cdNF_ItemvSeg.Value := DM_NF_Entr.cdNF_ItemvSeg.Value - 0.01;
            p_seg := p_seg - 0.01;
         end;

         if P_oda > 0 then //faltou
         begin
            DM_NF_Entr.cdNF_ItemvOutro.Value := DM_NF_Entr.cdNF_ItemvOutro.Value + 0.01;
            P_oda := P_oda - 0.01;
         end
         else
         if P_oda < 0 then //passou
         begin
            DM_NF_Entr.cdNF_ItemvOutro.Value := DM_NF_Entr.cdNF_ItemvOutro.Value - 0.01;
            P_oda := P_oda - 0.01;
         end;

         if p_frete > 0 then //faltou
         begin
            DM_NF_Entr.cdNF_ItemvFrete.Value := DM_NF_Entr.cdNF_ItemvFrete.Value + 0.01;
            p_frete := p_frete - 0.01;
         end
         else
         if p_frete < 0 then //passou
         begin
            DM_NF_Entr.cdNF_ItemvFrete.Value := DM_NF_Entr.cdNF_ItemvFrete.Value - 0.01;
            p_frete := p_frete - 0.01;
         end;

        { if DM_NF_Entr.cdNF_ItemICMS_CST.Value in [1,3,9,10,13] then
         begin
            if p_st > 0 then //faltou
            begin
               DM_NF_Entr.cdNF_ItemICMS_vICMSST.Value := DM_NF_Entr.cdNF_ItemICMS_vICMSST.Value + 0.01;
               p_st := p_st - 0.01;
            end
            else
            if p_frete < 0 then //passou
            begin
               DM_NF_Entr.cdNF_ItemICMS_vICMSST.Value := DM_NF_Entr.cdNF_ItemICMS_vICMSST.Value - 0.01;
               p_st := p_st - 0.01;
            end;
         end; }

         DM_NF_Entr.cdNF_Item.Post;
         DM_NF_Entr.cdNF_Item.Next;
      end;
   end;

   DM_NF_Entr.cdNF.Edit;
   DM_NF_Entr.cdNFICMSTot_vProd.Value := vr_prod;
   DM_NF_Entr.cdNFICMSTot_vNF.Value := vr_prod -
                                       DM_NF_Entr.cdNFICMSTot_vDesc.Value +
                                       DM_NF_Entr.cdNFICMSTot_vST.Value +
                                       DM_NF_Entr.cdNFICMSTot_vSeg.Value +
                                       DM_NF_Entr.cdNFICMSTot_vOutro.Value +
                                       DM_NF_Entr.cdNFICMSTot_vFrete.Value +
                                       vr_ipi;
   DM_NF_Entr.cdNF.Post;

   DM_NF_Entr.cdNF_Item.EnableControls;
end;

procedure TfrmEntradaNF.Excluir1Click(Sender: TObject);
var
  i: integer;
begin
   if DM_NF_Entr.cdNF_Item.IsEmpty then
      exit;

   DM_NF_Entr.cdNF_Item.Delete;
   DM_NF_Entr.cdNF_Item.DisableControls;
   DM_NF_Entr.cdNF_Item.First;
   i := 1;
   //refaz a sequencia nItem
   while not DM_NF_Entr.cdNF_Item.Eof do
   begin
      DM_NF_Entr.cdNF_Item.Edit;
      DM_NF_Entr.cdNF_ItemnItem.Value := i;
      DM_NF_Entr.cdNF_Item.Post;
      Inc(i);
      DM_NF_Entr.cdNF_Item.Next;
   end;

   DM_NF_Entr.cdNF_Item.EnableControls;
end;

procedure TfrmEntradaNF.Fazer_Ligacao(cnpj_forn, Cod_Prod_Forn: string;  cod_Estoque: Integer);
begin
   DM.ExecSQL('replace into prod_nf_forn set cod_estoque=' +
              QuotedStr(IntToStr(cod_Estoque)) +
              ' , cnpj_fornecedor=' +
              QuotedStr(cnpj_forn) +
              ', cod_prod_fornecedor=' +
              QuotedStr(Cod_Prod_Forn) +
              ';'
   );
end;

procedure TfrmEntradaNF.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmEntradaNF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
   s: string;
begin
   DM_NF_Entr.Procurar := False;

   if (DM_NF_Entr.cdNF.Active)and (not DM_NF_Entr.cdNF.IsEmpty) then
   begin
      s := 'Deseja manter os registros atuais para posterior processamento?';

      if (MessageBox(0, PWideChar(s), C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      begin
         DM_NF_Entr.Limpar_CDatasets;
      end
      else
         DM_NF_Entr.Salvar_Datasets;

      DM_NF_Entr.Fechar_Datasets;
   end;
  inherited;
end;

procedure TfrmEntradaNF.FormCreate(Sender: TObject);
var
   i: integer;
begin
   inherited;

   for i := 0 to ComponentCount - 1 do //pega o path do .grd
   begin
      if (Components[i] is TcxGridDBTableView) then
          path_grd := Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd');
   end;

   DM_NF_Entr := TDM_NF_Entr.Create(self);

   DMConn.DB.connected := False;
   pg1.ActivePage := TabTotais;
end;

procedure TfrmEntradaNF.FormShow(Sender: TObject);
var
   i: integer;
begin
  inherited;
  CfgBtn('1010101');

  for i := 0 to ComponentCount - 1 do //ajusta a grid
  begin
      if (Components[i] is TcxGridDBTableView) then
      begin
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(path_grd);
      end;
  end;

  DM_NF_Entr.Conectar;
  DM.QModNF.Open;
  DM_NF_Entr.Carregar_Datasets;

  if not DM_NF_Entr.cdNF.IsEmpty then
  begin
     DM_NF_Entr.Procurar := (DM_NF_Entr.cdNFIde_finNFe.Value>=0)and(DM_NF_Entr.cdNF_Chaveprotocolo.Value <> C_ST_VAZIO);

     if not DM_NF_Entr.cdNF_Item.IsEmpty then
     begin
        Assistenteparacadstramento1.Visible := DM_NF_Entr.cdNF_Item.RecordCount > 0;
        Desfazerligao1.Visible              := DM_NF_Entr.cdNF_Item.RecordCount > 0;
        Detalhes1.Visible                   := DM_NF_Entr.cdNF_Item.RecordCount > 0;
        Excluir1.Visible                    := DM_NF_Entr.cdNF_Item.RecordCount > 0;
        CfgBtn('01010101');
     end;
     Verificar_Pendencia;
  end;
end;

procedure TfrmEntradaNF.Importar_XML;
var
  st_XML: TStringList;

  i,
  j,
  n: integer;

  s,
  st_nome,
  st_cst,
  st_csosn: string;
  b: boolean;
begin
   OpenDialog1.FileName :=  C_ST_VAZIO;
   OpenDialog1.Filter   := C_213;
   bar1.Panels[3].Text  := C_ST_VAZIO;
   bar1.Panels[5].Text  := C_ST_VAZIO;
   bar1.Panels[6].Text  := C_ST_VAZIO;
   DM_NF_Entr.Procurar  := True;

   if OpenDialog1.Execute then
   begin
      DM_NF_Entr.NFE1.NotasFiscais.Clear;

      if not DM_NF_Entr.NFE1.NotasFiscais.LoadFromFile(OpenDialog1.FileName) then
      begin
         CfgBtn('1010101');
         raise exception.create(C_252);
      end
      else
      begin
         st_XML := TStringList.Create;
         st_XML.LoadFromFile(OpenDialog1.FileName);
      end;

      if DM_NF_Entr.NFE1.NotasFiscais.Count = 0 then
         raise exception.create(C_253);

      DM_NF_Entr.Fechar_Datasets;
      DM_NF_Entr.Carregar_Datasets;
      DM.QEmpresa.Open;

      for n := 0 to DM_NF_Entr.NFE1.NotasFiscais.Count-1 do
      with DM_NF_Entr.NFE1.NotasFiscais.Items[n].NFe do
      begin
         with DM_NF_Entr do //inicia a gravação dos dados do XML
         begin
          {  if Number(NFE1.NotasFiscais.Items[n].NFe.Dest.CNPJCPF) <> Number(DM.QEmpresacnpj.AsString) then
            begin
               CfgBtn('1010101');
               raise Exception.Create(C_255);
            end;
            }
            if NFCadastrada(NFE1.NotasFiscais.Items[n].NFe.Ide.nNF, NFE1.NotasFiscais.Items[n].NFe.Emit.CNPJCPF) then
            begin
               CfgBtn('1010101');
               raise Exception.Create(C_254);
            end;

            Salvar_XML_Rec;
            cdNF.Append;
           // cdNFid.Value             := 1;//valor padrão;
            cdNFIde_cNF.Value        := NFE1.NotasFiscais.Items[n].NFe.Ide.cNF;
            //cdNFIde_natOp.AsString   := NFE1.NotasFiscais.Items[n].NFe.Ide.natOp; //em branco
            cdNFIde_indPag.Value     := Integer(NFE1.NotasFiscais.Items[n].NFe.Ide.indPag);
            cdNFIde_modelo.Value     := NFE1.NotasFiscais.Items[n].NFe.Ide.modelo;
            cdNFIde_serie.Value      := NFE1.NotasFiscais.Items[n].NFe.Ide.serie;

            cdNFIde_nNF.Value        := NFE1.NotasFiscais.Items[n].NFe.Ide.nNF;
            cdNFIde_dEmi.Value       := NFE1.NotasFiscais.Items[n].NFe.Ide.dEmi;
           // cdNFIde_dSaiEnt.Value    := Date;//fica em branco para preenchimento pelo operador
            cdNFIde_tpNF.Value       := Integer(NFE1.NotasFiscais.Items[n].NFe.Ide.tpNF);
            cdNFIde_tpEmis.Value     := Integer(NFE1.NotasFiscais.Items[n].NFe.Ide.tpEmis);
            cdNFIde_tpAmb.Value      := Integer(NFE1.NotasFiscais.Items[n].NFe.Ide.tpAmb);
            cdNFIde_verProc.AsString := NFE1.NotasFiscais.Items[n].NFe.Ide.verProc;
            cdNFIde_cUF.Value        := NFE1.NotasFiscais.Items[n].NFe.Ide.cUF;
            cdNFIde_cMunFG.AsString  := IntToStr(NFE1.NotasFiscais.Items[n].NFe.Ide.cMunFG);
            cdNFIde_finNFe.Value     := Integer(NFE1.NotasFiscais.Items[n].NFe.Ide.finNFe);
            cdNFIde_dhCont.Value     := NFE1.NotasFiscais.Items[n].NFe.Ide.dhCont;
            cdNFIde_xJust.AsString   := NFE1.NotasFiscais.Items[n].NFe.Ide.xJust;

            //emitente
            cdNFEmit_CRT.Value               := Integer(NFE1.NotasFiscais.Items[n].NFe.Emit.CRT);
            cdNFEmit_CNPJCPF.AsString        := NFE1.NotasFiscais.Items[n].NFe.Emit.CNPJCPF;
            cdNFEmit_IE.AsString             := NFE1.NotasFiscais.Items[n].NFe.Emit.IE;
            cdNFEmit_xNome.AsString          := NFE1.NotasFiscais.Items[n].NFe.Emit.xNome;
            cdNFEmit_xFant.AsString          := NFE1.NotasFiscais.Items[n].NFe.Emit.xFant;
            cdNFEmit_EnderEmit_fone.AsString := Number(NFE1.NotasFiscais.Items[n].NFe.Emit.EnderEmit.fone);
            cdNFEmit_EnderEmit_xLgr.AsString := NFE1.NotasFiscais.Items[n].NFe.Emit.EnderEmit.xLgr;
            cdNFmit_EnderEmit_CEP.AsString   := IntToStr(NFE1.NotasFiscais.Items[n].NFe.Emit.EnderEmit.CEP);
            cdNFEmit_EnderEmit_nro.AsString  := NFE1.NotasFiscais.Items[n].NFe.Emit.EnderEmit.nro;
            cdNFEmit_EnderEmit_xCpl.AsString := NFE1.NotasFiscais.Items[n].NFe.Emit.EnderEmit.xCpl;
            cdNFEmit_EnderEmit_xBairro.AsString := NFE1.NotasFiscais.Items[n].NFe.Emit.EnderEmit.xBairro;
            cdNFEmit_EnderEmit_cMun.Value    := NFE1.NotasFiscais.Items[n].NFe.Emit.EnderEmit.cMun;
            cdNFEmit_EnderEmit_xMun.AsString := NFE1.NotasFiscais.Items[n].NFe.Emit.EnderEmit.xMun;
            cdNFEmit_EnderEmit_UF.AsString   := NFE1.NotasFiscais.Items[n].NFe.Emit.EnderEmit.UF;
            cdNFEmit_enderEmit_cPais.Value   := NFE1.NotasFiscais.Items[n].NFe.Emit.EnderEmit.cPais;
            cdNFEmit_enderEmit_xPais.AsString := NFE1.NotasFiscais.Items[n].NFe.Emit.EnderEmit.xPais;

            cdNFDest_CNPJCPF.AsString        := NFE1.NotasFiscais.Items[n].NFe.Dest.CNPJCPF;

            //endereço de retirada
            cdNFRetirada_CNPJCPF.AsString    := NFE1.NotasFiscais.Items[n].NFe.Retirada.CNPJCPF;
            cdNFRetirada_xLgr.AsString       := NFE1.NotasFiscais.Items[n].NFe.Retirada.xLgr;
            cdNFRetirada_nro.AsString        := NFE1.NotasFiscais.Items[n].NFe.Retirada.nro;
            cdNFRetirada_xCpl.AsString       := NFE1.NotasFiscais.Items[n].NFe.Retirada.xCpl;
            cdNFRetirada_xBairro.AsString    := NFE1.NotasFiscais.Items[n].NFe.Retirada.xBairro;
            cdNFRetirada_cMun.Value          := NFE1.NotasFiscais.Items[n].NFe.Retirada.cMun;
            cdNFRetirada_xMun.AsString       := NFE1.NotasFiscais.Items[n].NFe.Retirada.xMun;
            cdNFRetirada_UF.AsString         := NFE1.NotasFiscais.Items[n].NFe.Retirada.UF;

            //endereço de entrega
            cdNFEntrega_CNPJCPF.AsString     := NFE1.NotasFiscais.Items[n].NFe.Entrega.CNPJCPF;
            cdNFEntrega_xLgr.AsString        := NFE1.NotasFiscais.Items[n].NFe.Entrega.xLgr;
            cdNFEntrega_nro.AsString         := NFE1.NotasFiscais.Items[n].NFe.Entrega.xLgr;
            cdNFEntrega_xCpl.AsString        := NFE1.NotasFiscais.Items[n].NFe.Entrega.xCpl;
            cdNFEntrega_xBairro.AsString     := NFE1.NotasFiscais.Items[n].NFe.Entrega.xBairro;
            cdNFEntrega_cMun.Value           := NFE1.NotasFiscais.Items[n].NFe.Entrega.cMun;
            cdNFEntrega_xMun.AsString        := NFE1.NotasFiscais.Items[n].NFe.Entrega.xMun;
            cdNFEntrega_UF.AsString          := NFE1.NotasFiscais.Items[n].NFe.Entrega.UF;

            //frete
            cdNFmodFrete.Value               := Integer(NFE1.NotasFiscais.Items[n].NFe.Transp.modFrete);
            cdNFTransporta_CNPJCPF.AsString  := Number(NFE1.NotasFiscais.Items[n].NFe.Transp.Transporta.CNPJCPF);
            cdNFTransporta_xNome.AsString    := NFE1.NotasFiscais.Items[n].NFe.Transp.Transporta.xNome;
            cdNFTransporta_IE.AsString       := Number(NFE1.NotasFiscais.Items[n].NFe.Transp.Transporta.IE);
            cdNFTransporta_xEnder.AsString   := NFE1.NotasFiscais.Items[n].NFe.Transp.Transporta.xEnder;
            cdNFTransporta_xMun.AsString     := NFE1.NotasFiscais.Items[n].NFe.Transp.Transporta.xMun;
            cdNFTransporta_UF.AsString       := NFE1.NotasFiscais.Items[n].NFe.Transp.Transporta.UF;

            //valores retidos de frete
            cdNFretvServ.Value               := NFE1.NotasFiscais.Items[n].NFe.Transp.retTransp.vServ;
            cdNFretvBCRet.Value              := NFE1.NotasFiscais.Items[n].NFe.Transp.retTransp.vBCRet;
            cdNFretpICMSRet.Value            := NFE1.NotasFiscais.Items[n].NFe.Transp.retTransp.pICMSRet;
            cdNFretvICMSRet.Value            := NFE1.NotasFiscais.Items[n].NFe.Transp.retTransp.vICMSRet;
            cdNFretCFOP.AsString             := NFE1.NotasFiscais.Items[n].NFe.Transp.retTransp.CFOP;
            cdNFretcMunFG.Value              := NFE1.NotasFiscais.Items[n].NFe.Transp.retTransp.cMunFG;

            //veiculo
            cdNFveicplaca.AsString           := NFE1.NotasFiscais.Items[n].NFe.Transp.veicTransp.placa;
            cdNFveicUF.AsString              := NFE1.NotasFiscais.Items[n].NFe.Transp.veicTransp.UF;
            cdNFveicRNTC.AsString            := NFE1.NotasFiscais.Items[n].NFe.Transp.veicTransp.RNTC;

            //outras info
            cdNFnFat.AsString                := NFE1.NotasFiscais.Items[n].NFe.Cobr.Fat.nFat;
            cdNFvOrig.Value                  := NFE1.NotasFiscais.Items[n].NFe.Cobr.Fat.vOrig;
            cdNFvDesc.Value                  := NFE1.NotasFiscais.Items[n].NFe.Cobr.Fat.vDesc;
            cdNFvLiq.Value                   := NFE1.NotasFiscais.Items[n].NFe.Cobr.Fat.vLiq;
            cdNFinfAdFisco.AsString          := NFE1.NotasFiscais.Items[n].NFe.InfAdic.infAdFisco;
            cdNFinfCpl.AsString              := NFE1.NotasFiscais.Items[n].NFe.InfAdic.infCpl;

            //toatlizadores
            cdNFICMSTot_vBC.Value            := NFE1.NotasFiscais.Items[n].NFe.Total.ICMSTot.vBC;
            cdNFICMSTot_vICMS.Value          := NFE1.NotasFiscais.Items[n].NFe.Total.ICMSTot.vICMS;
            cdNFICMSTot_vBCST.Value          := NFE1.NotasFiscais.Items[n].NFe.Total.ICMSTot.vBCST;
            cdNFICMSTot_vST.Value            := NFE1.NotasFiscais.Items[n].NFe.Total.ICMSTot.vST;
            cdNFICMSTot_vProd.Value          := NFE1.NotasFiscais.Items[n].NFe.Total.ICMSTot.vProd;
            cdNFICMSTot_vFrete.Value         := NFE1.NotasFiscais.Items[n].NFe.Total.ICMSTot.vFrete;
            cdNFICMSTot_vSeg.Value           := NFE1.NotasFiscais.Items[n].NFe.Total.ICMSTot.vSeg;
            cdNFICMSTot_vDesc.Value          := NFE1.NotasFiscais.Items[n].NFe.Total.ICMSTot.vDesc;
            cdNFICMSTot_vII.Value            := NFE1.NotasFiscais.Items[n].NFe.Total.ICMSTot.vII;
            cdNFICMSTot_vIPI.Value           := NFE1.NotasFiscais.Items[n].NFe.Total.ICMSTot.vIPI;
            cdNFICMSTot_vPIS.Value           := NFE1.NotasFiscais.Items[n].NFe.Total.ICMSTot.vPIS;
            cdNFICMSTot_vCOFINS.Value        := NFE1.NotasFiscais.Items[n].NFe.Total.ICMSTot.vCOFINS;
            cdNFICMSTot_vOutro.Value         := NFE1.NotasFiscais.Items[n].NFe.Total.ICMSTot.vOutro;
            cdNFICMSTot_vNF.Value            := NFE1.NotasFiscais.Items[n].NFe.Total.ICMSTot.vNF;
            cdNFISSQNtot_vServ.Value         := NFE1.NotasFiscais.Items[n].NFe.Total.ISSQNtot.vServ;
            cdNFISSQNTot_vBC.Value           := NFE1.NotasFiscais.Items[n].NFe.Total.ISSQNtot.vBC;
            cdNFISSQNTot_vISS.Value          := NFE1.NotasFiscais.Items[n].NFe.Total.ISSQNtot.vISS;
            cdNFISSQNTot_vPIS.Value          := NFE1.NotasFiscais.Items[n].NFe.Total.ISSQNtot.vPIS;
            cdNFISSQNTot_vCOFINS.Value       := NFE1.NotasFiscais.Items[n].NFe.Total.ISSQNtot.vCOFINS;

            //retenções
            cdNFretTrib_vRetPIS.Value        := NFE1.NotasFiscais.Items[n].NFe.Total.retTrib.vRetPIS;
            cdNFretTrib_vRetCOFINS.Value     := NFE1.NotasFiscais.Items[n].NFe.Total.retTrib.vRetCOFINS;
            cdNFretTrib_vRetCSLL.Value       := NFE1.NotasFiscais.Items[n].NFe.Total.retTrib.vRetCSLL;
            cdNFretTrib_vBCIRRF.Value        := NFE1.NotasFiscais.Items[n].NFe.Total.retTrib.vBCIRRF;
            cdNFretTrib_vIRRF.Value          := NFE1.NotasFiscais.Items[n].NFe.Total.retTrib.vIRRF;
            cdNFretTrib_vBCRetPrev.Value     := NFE1.NotasFiscais.Items[n].NFe.Total.retTrib.vBCRetPrev;
            cdNFretCFOP.AsString             := C_ST_VAZIO;//??
            cdNF.Post;
            cdNF.Refresh;//recuperar id

            DM_NF_Entr.cdNF_Chave.Append;
           // DM_NF_Entr.cdNF_Chaveid.Value           := 1;
           // DM_NF_Entr.cdNF_Chavenf.Value           := 1;
            DM_NF_Entr.cdNF_Chavechave.AsString     := Number(NFE1.NotasFiscais.Items[n].NFe.infNFe.ID);
            DM_NF_Entr.cdNF_Chaverecibo.AsString    := C_ST_VAZIO;
            DM_NF_Entr.cdNF_Chaveprotocolo.AsString := NFE1.NotasFiscais.Items[n].NFe.procNFe.nProt;
            DM_NF_Entr.cdNF_Chavecstat.Value        := NFE1.NotasFiscais.Items[n].NFe.procNFe.cStat;

            DM_NF_Entr.cdNF_Chavestatus.AsString    := iif((NFE1.NotasFiscais.Items[n].NFe.procNFe.cStat in [110, 205])or
                                                           (NFE1.NotasFiscais.Items[n].NFe.procNFe.cStat=301)or
                                                           (NFE1.NotasFiscais.Items[n].NFe.procNFe.cStat=302),
                                                           'D', 'A');

            DM_NF_Entr.cdNF_Chave.Post;

            //referenciadas

            for I := 0 to NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Count-1 do
            with NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I] do
            begin
               DM_NF_Entr.cdNF_Referenciada.Append;
            //   DM_NF_Entr.cdNF_Referenciadaid.Value                := i+1;
             //  DM_NF_Entr.cdNF_Referenciadanf.Value                := 1;
               DM_NF_Entr.cdNF_ReferenciadarefNFe.AsString         := NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I].refNFe;
               DM_NF_Entr.cdNF_ReferenciadaRefNF_cUF.Value         := NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I].RefNF.cUF;
               DM_NF_Entr.cdNF_ReferenciadaRefNF_AAMM.AsString     := NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I].RefNF.AAMM;
               DM_NF_Entr.cdNF_ReferenciadaRefNF_CNPJ.AsString     := Number(NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I].RefNF.CNPJ);
               DM_NF_Entr.cdNF_ReferenciadaRefNF_modelo.Value      := NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I].RefNF.modelo;
               DM_NF_Entr.cdNF_ReferenciadaRefNF_serie.Value       := NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I].RefNF.serie;
               DM_NF_Entr.cdNF_ReferenciadaRefNF_nNF.Value         := NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I].RefNF.nNF;
               DM_NF_Entr.cdNF_ReferenciadaRefNFP_cUF.Value        := NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I].RefNFP.cUF;
               DM_NF_Entr.cdNF_ReferenciadaRefNFP_AAMM.AsString    := NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I].RefNFP.AAMM;
               DM_NF_Entr.cdNF_ReferenciadaRefNFP_CNPJCPF.AsString := NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I].RefNFP.CNPJCPF;
               DM_NF_Entr.cdNF_ReferenciadaRefNFP_serie.Value      := NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I].RefNFP.serie;
               DM_NF_Entr.cdNF_ReferenciadaRefNFP_nNF.Value        := NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I].RefNFP.nNF;
               DM_NF_Entr.cdNF_ReferenciadaRefECF_modelo.Value     := Integer(NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I].RefECF.modelo);
               DM_NF_Entr.cdNF_ReferenciadaRefECF_nECF.AsString    := NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I].RefECF.nECF;
               DM_NF_Entr.cdNF_ReferenciadaRefECF_nCOO.AsString    := NFE1.NotasFiscais.Items[n].NFe.Ide.NFref.Items[I].RefECF.nCOO;
               DM_NF_Entr.cdNF_Referenciada.Post;
            end;

            //transporte

            for I := 0 to NFE1.NotasFiscais.Items[n].NFe.Transp.Vol.Count-1 do
            with NFE1.NotasFiscais.Items[n].NFe.Transp.Vol.Items[I] do
            begin
               DM_NF_Entr.cdNF_Volume.Append;
             //  DM_NF_Entr.cdNF_Volumeid.Value         := i+1;
            //   DM_NF_Entr.cdNF_Volumenf.Value         := 1;//padrao
               DM_NF_Entr.cdNF_VolumeqVol.Value       := qVol;
               DM_NF_Entr.cdNF_Volumeespecie.AsString := esp;
               DM_NF_Entr.cdNF_Volumemarca.AsString   := marca;
               DM_NF_Entr.cdNF_VolumenVol.AsString    := nVol;
               DM_NF_Entr.cdNF_VolumepesoL.Value      := pesoL;
               DM_NF_Entr.cdNF_VolumepesoB.Value      := pesoB;
               DM_NF_Entr.cdNF_Volume.Post;

               for j := 0 to NFE1.NotasFiscais.Items[n].NFe.Transp.Vol.Items[i].Lacres.Count-1 do
               with NFE1.NotasFiscais.Items[n].NFe.Transp.Vol.Items[I].Lacres[j] do
               begin
                  DM_NF_Entr.cdNF_Lacre.Append;
               //   DM_NF_Entr.cdNF_Lacreid.Value  := j+1;
              //    DM_NF_Entr.cdNF_Lacrevol.Value := i;
                  DM_NF_Entr.cdNF_Lacrenlacre.AsString := NFE1.NotasFiscais.Items[n].NFe.Transp.Vol.Items[I].Lacres[j].nLacre;
                  DM_NF_Entr.cdNF_Lacre.Post;
               end;
            end;

            //duplicatas
            for I := 0 to NFE1.NotasFiscais.Items[n].NFe.Cobr.Dup.Count-1 do
            with NFE1.NotasFiscais.Items[n].NFe.Cobr.Dup.Items[I] do
            begin
               DM_NF_Entr.cdNF_Duplicata.Append;
             //  DM_NF_Entr.cdNF_Duplicataid.Value      := i+1;
            //   DM_NF_Entr.cdNF_Duplicatanf.Value      := 1;//padrão
               DM_NF_Entr.cdNF_DuplicatanDup.AsString := nDup;
               DM_NF_Entr.cdNF_DuplicatavDup.Value    := vDup;
               DM_NF_Entr.cdNF_DuplicatadVenc.Value   := dVenc;
               DM_NF_Entr.cdNF_Duplicata.Post;
            end;

            //itens
            bar2.Properties.Max := NFE1.NotasFiscais.Items[n].NFe.Det.Count;
            bar2.Show;
            DM_NF_Entr.cdNF_Item.DisableControls;

            for I := 0 to NFE1.NotasFiscais.Items[n].NFe.Det.Count-1 do
            begin
               Application.ProcessMessages;
               bar2.Position := i;

               st_cst   := '17';//'--'
               st_csosn := '0'; //'--'

               if cdNFEmit_CRT.Value = 2 then //regime normal
               begin
                  st_cst := Texto_Mysql(Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.CST));
                  st_csosn := '"0"';
               end
               else
               begin
                  st_csosn := Texto_Mysql(integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.CSOSN));
                  st_cst := '"17"';
               end;


               with NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod do
               begin
                  repeat
                     DMConn.Q1.Open('select cfop,cst,csosn,cst_pis_sai,cst_ipi_sai,cst_cofins_sai from cfop_cst_csosn where ' +
                                'cfop=' + Texto_Mysql(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.CFOP) +
                                ' and cst=' + (st_cst) +
                                ' and csosn =' + (st_csosn) +
                                ' and cst_pis_sai=' + Texto_Mysql(Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.PIS.CST)) +
                                ' and cst_ipi_sai=' + Texto_Mysql(Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.IPI.CST)) +
                                ' and cst_cofins_sai=' + Texto_Mysql(Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.COFINS.CST))
                     );

                     if DMConn.Q1.IsEmpty then
                     begin
                        b := False;

                        if cdNFEmit_CRT.Value = 2 then //regime normal
                        begin
                           s := C_ARR_5[Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.CST)];
                        end
                        else
                        begin
                           s := C_ARR_4[Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.CSOSN)];
                        end;

                        s := 'Não há uma regra para a combinação:' + C_CRLF +
                             'CFOP: ' + NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.CFOP + C_CRLF +
                             'CST/CSOSN: ' + s + C_CRLF +
                             'CST PIS: ' + C_ARR_9[Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.PIS.CST)] + C_CRLF +
                             'CST COFINS: ' + C_ARR_9[Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.COFINS.CST)] + C_CRLF +
                             'CST IPI: ' + C_ARR_3[Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.IPI.CST)] + C_CRLF +
                             'Deseja criar uma agora?';

                        if MessageBox(0, PWideChar(s), C_237, MB_ICONQUESTION or MB_YESNO) = idNo then
                           b := true
                        else
                        begin
                           frmConverteEmitInform := TfrmConverteEmitInform.Create(self);
                           DM.Qcfop_cst_csosn.Append;
                           DM.Qcfop_cst_csosncfop.AsString        := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.CFOP;
                           DM.Qcfop_cst_csosncst_pis_sai.Value    := Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.PIS.CST);
                           DM.Qcfop_cst_csosncst_cofins_sai.Value := Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.COFINS.CST);
                           DM.Qcfop_cst_csosncst_ipi_sai.Value    := Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.IPI.CST);

                           if cdNFEmit_CRT.Value = 2 then   //regime normal
                           begin
                              DM.Qcfop_cst_csosncst.Value         := Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.CST);
                              DM.Qcfop_cst_csosnCSOSN.Value       := 0;//"--"// Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.CSOSN);
                           end
                           else//simples nacional
                           begin
                              DM.Qcfop_cst_csosnCST.Value         := 17;//"--" Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.CST);
                              DM.Qcfop_cst_csosnCSOSN.Value       := Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.CSOSN);
                           end;

                           frmConverteEmitInform.ShowModal;
                        end;
                     end
                     else
                     b := true;

                  until b;

                  DM_NF_Entr.cdNF_Item.Append;
               //   DM_NF_Entr.cdNF_Itemid.Value           := i+1;
                //  DM_NF_Entr.cdNF_Itemnf.Value           := 1;//padrão
                  DM_NF_Entr.cdNF_ItemnItem.Value        := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.nItem;
                  DM_NF_Entr.cdNF_ItemcProd.AsString     := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.cProd;
                  DM_NF_Entr.cdNF_ItemcEAN.AsString      := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.cEAN;
                  DM_NF_Entr.cdNF_ItemxProd.AsString     := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.xProd;
                  DM_NF_Entr.cdNF_ItemNCM.AsString       := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.NCM;
                  DM_NF_Entr.cdNF_ItemEXTIPI.AsString    := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.EXTIPI;
                  DM_NF_Entr.cdNF_ItemCFOP_inform.AsString := ConverteCFOP(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.CFOP);
                  DM_NF_Entr.cdNF_ItemCFOP.AsString      := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.CFOP;
                  DM_NF_Entr.cdNF_ItemuCom.AsString      := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.uCom;
                  DM_NF_Entr.cdNF_ItemqCom.Value         := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.qCom;
                  DM_NF_Entr.cdNF_ItemvUnCom.Value       := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.vUnCom;
                  DM_NF_Entr.cdNF_ItemvProd.Value        := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.vProd;
                  DM_NF_Entr.cdNF_ItemcEANTrib.AsString  := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.cEANTrib;
                  DM_NF_Entr.cdNF_ItemuTrib.AsString     := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.uTrib;
                  DM_NF_Entr.cdNF_ItemqTrib.Value        := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.qTrib;
                  DM_NF_Entr.cdNF_ItemvUnTrib.Value      := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.vUnTrib;
                  DM_NF_Entr.cdNF_ItemvUnCom.Value       := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.vUnCom;
                  DM_NF_Entr.cdNF_ItemvOutro.Value       := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.vOutro;
                  DM_NF_Entr.cdNF_ItemvFrete.Value       := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.vFrete;
                  DM_NF_Entr.cdNF_ItemvSeg.Value         := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.vSeg;
                  DM_NF_Entr.cdNF_ItemvDesc.Value        := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.vDesc;
                  DM_NF_Entr.cdNF_IteminfAdProd.AsString := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].infAdProd;

                  //icms //impostos entram inicialmente com base na NF e depois são transformados com base no declarante
                  if cdNFEmit_CRT.Value = 2 then   //regime normal
                  begin
                     DM_NF_Entr.cdNF_ItemICMS_CST.Value         := Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.CST);
                     DM_NF_Entr.cdNF_ItemICMS_CSOSN.Value       := 0;//"--"// Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.CSOSN);
                  end
                  else//simples nacional
                  begin
                     DM_NF_Entr.cdNF_ItemICMS_CST.Value         := 17;//"--" Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.CST);
                     DM_NF_Entr.cdNF_ItemICMS_CSOSN.Value       := Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.CSOSN);
                  end;

                  DM_NF_Entr.cdNF_ItemICMS_orig.Value        := Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.orig);
                  DM_NF_Entr.cdNF_ItemICMS_modBC.Value       := Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.modBC);
                  DM_NF_Entr.cdNF_ItemICMS_vBC.Value         := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.vBC;
                  DM_NF_Entr.cdNF_ItemICMS_pICMS.Value       := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.pICMS;
                  DM_NF_Entr.cdNF_ItemICMS_vICMS.Value       := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.vICMS;
                  DM_NF_Entr.cdNF_ItemICMS_pCredSN.Value     := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.pCredSN;
                  DM_NF_Entr.cdNF_ItemICMS_vCredICMSSN.Value := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.vCredICMSSN;
                  //st
                  DM_NF_Entr.cdNF_ItemICMS_pMVAST.Value    := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.pMVAST;
                  DM_NF_Entr.cdNF_ItemICMS_vTabelaST.Value := 0;//
                  DM_NF_Entr.cdNF_ItemICMS_pRedBCST.Value  := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.pRedBCST;
                  DM_NF_Entr.cdNF_ItemICMS_vBCST.Value     := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.vBCST;
                  //verifico o valor da BC antes da ModBC para ajustar o texto no memtable
                  DM_NF_Entr.cdNF_ItemICMS_modBCST.Value   := Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.modBCST);
                  DM_NF_Entr.cdNF_ItemICMS_pICMSST.Value   := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.pICMSST;
                  DM_NF_Entr.cdNF_ItemICMS_vICMSST.Value   := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.vICMSST;
                  DM_NF_Entr.cdNF_ItemICMS_pRedBC.Value    := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ICMS.pRedBC;
                  //ipi
                  DM_NF_Entr.cdNF_ItemIPI_CST.Value        := Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.IPI.CST);
                  DM_NF_Entr.cdNF_ItemIPI_clEnq.AsString    := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.IPI.clEnq;
                  DM_NF_Entr.cdNF_ItemIPI_CNPJProd.AsString := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.IPI.CNPJProd;
                  DM_NF_Entr.cdNF_ItemIPI_cSelo.AsString    := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.IPI.cSelo;
                  DM_NF_Entr.cdNF_ItemIPI_qSelo.Value       := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.IPI.qSelo;
                  DM_NF_Entr.cdNF_ItemIPI_cEnq.AsString     := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.IPI.cEnq;
                  DM_NF_Entr.cdNF_ItemIPI_vBC.Value         := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.IPI.vBC;
                  DM_NF_Entr.cdNF_ItemIPI_qUnid.Value       := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.IPI.qUnid;
                  DM_NF_Entr.cdNF_ItemIPI_vUnid.Value       := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.IPI.vUnid;
                  DM_NF_Entr.cdNF_ItemIPI_pIPI.Value        := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.IPI.pIPI;
                  DM_NF_Entr.cdNF_ItemIPI_vIPI.Value        := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.IPI.vIPI;
                  //pis
                  DM_NF_Entr.cdNF_ItemPIS_CST.Value         := Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.PIS.CST);
                  DM_NF_Entr.cdNF_ItemPIS_vBC.Value         := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.PIS.vBC;
                  DM_NF_Entr.cdNF_ItemPIS_pPIS.Value        := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.PIS.pPIS;
                  DM_NF_Entr.cdNF_ItemPIS_vPIS.Value        := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.PIS.vPIS;
                  DM_NF_Entr.cdNF_ItemPIS_qBCProd.Value     := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.PIS.qBCProd;
                  DM_NF_Entr.cdNF_ItemPIS_vAliqProd.Value   := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.PIS.vAliqProd;
                  //PIS ST
                  DM_NF_Entr.cdNF_ItemPISST_vBc.Value       := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.PISST.vBc;
                  DM_NF_Entr.cdNF_ItemPISST_pPis.Value      := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.PISST.pPis;
                  DM_NF_Entr.cdNF_ItemPISST_qBCProd.Value   := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.PISST.qBCProd;
                  DM_NF_Entr.cdNF_ItemPISST_vAliqProd.Value := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.PISST.vAliqProd;
                  DM_NF_Entr.cdNF_ItemPISST_vPIS.Value      := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.PISST.vPIS;

                  //COFINS
                  DM_NF_Entr.cdNF_ItemCOFINS_CST.Value       := Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.COFINS.CST);
                  DM_NF_Entr.cdNF_ItemCOFINS_vBC.Value       := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.COFINS.vBC;
                  DM_NF_Entr.cdNF_ItemCOFINS_pCOFINS.Value   := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.COFINS.pCOFINS;
                  DM_NF_Entr.cdNF_ItemCOFINS_vCOFINS.Value   := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.COFINS.vCOFINS;
                  DM_NF_Entr.cdNF_ItemCOFINS_qBCProd.Value   := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.COFINS.qBCProd;
                  DM_NF_Entr.cdNF_ItemCOFINS_vAliqProd.Value := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.COFINS.vAliqProd;
                  //COFINS ST
                  DM_NF_Entr.cdNF_ItemCOFINSST_vBc.Value       := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.COFINSST.vBc;
                  DM_NF_Entr.cdNF_ItemCOFINSST_pCOFINS.Value   := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.COFINSST.pCOFINS;
                  DM_NF_Entr.cdNF_ItemCOFINSST_qBCProd.Value   := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.COFINSST.qBCProd;
                  DM_NF_Entr.cdNF_ItemCOFINSST_vAliqProd.Value := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.COFINSST.vAliqProd;
                  DM_NF_Entr.cdNF_ItemCOFINSST_vCOFINS.Value   := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.COFINSST.vCOFINS;
                  //iss
                  DM_NF_Entr.cdNF_ItemISSQN_vBC.Value       := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ISSQN.vBC;
                  DM_NF_Entr.cdNF_ItemISSQN_vAliq.Value     := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ISSQN.vAliq;
                  DM_NF_Entr.cdNF_ItemISSQN_vISSQN.Value    := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ISSQN.vISSQN;
                  DM_NF_Entr.cdNF_ItemISSQN_cMunFG.Value    := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ISSQN.cMunFG;
                  DM_NF_Entr.cdNF_ItemISSQN_cListServ.AsString := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ISSQN.cListServ;
                  DM_NF_Entr.cdNF_ItemISSQN_SitTrib.Value   := Integer(NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.ISSQN.cSitTrib);
                  //II
                  DM_NF_Entr.cdNF_ItemII_vBc.Value      := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.II.vBc;
                  DM_NF_Entr.cdNF_ItemII_vDespAdu.Value := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.II.vDespAdu;
                  DM_NF_Entr.cdNF_ItemII_vII.Value      := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.II.vII;
                  DM_NF_Entr.cdNF_ItemII_vIOF.Value     := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.II.vIOF;

                  DM_NF_Entr.cdNF_ItemII_vBc.Value      := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Imposto.II.vBc;

                  //configura os valores dos campos de uso do sistema VR CUSTO, ULTIMO CUSTO E VR VENDA
                  DM_NF_Entr.cdNF_ItemVR_VENDA.Value  := 0;
                  DM_NF_Entr.cdNF_ItemULT_CUSTO.Value := 0;

                  DM_NF_Entr.Processar_Valores_Item;

                  DM_NF_Entr.cdNF_Item.Post;

                  if NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.med.Count > 0 then
                     for j := 0 to NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.med.Count - 1 do
                     begin
                        DM_NF_Entr.CDNF_Item_Med.Append;
                     //   DM_NF_Entr.CDNF_Item_Medid.Value       := 1;
                      //  DM_NF_Entr.CDNF_Item_Meditem.Value     := i;
                        DM_NF_Entr.CDNF_Item_Mednlote.AsString := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.med.Items[j].nLote;
                        DM_NF_Entr.CDNF_Item_Medqlote.Value    := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.med.Items[j].qLote;
                        DM_NF_Entr.CDNF_Item_Meddfab.Value     := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.med.Items[j].dFab;
                        DM_NF_Entr.CDNF_Item_Meddven.Value     := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.med.Items[j].dVal;
                        DM_NF_Entr.CDNF_Item_Medvpmc.Value     := NFE1.NotasFiscais.Items[n].NFe.Det.Items[I].Prod.med.Items[j].vPMC;
                        DM_NF_Entr.CDNF_Item_Med.Post;
                     end;
               end;
            end;
            bar2.Hide;
            DM_NF_Entr.cdNF_Item.EnableControls;
         end;//fim dm_nfe
      end;
      CfgBtn('01010000');
   end;
end;

function TfrmEntradaNF.ItemDuplicado(item: integer): boolean;
var
   i: integer;
begin
   DM_NF_Entr.cdNF_Item.DisableControls;
   i := DM_NF_Entr.cdNF_Itemid.Value;
   DM_NF_Entr.cdNF_Item.First;
   Result := False;

   while not DM_NF_Entr.cdNF_Item.Eof do
   begin
      Result := DM_NF_Entr.cdNF_Itemid_prod.Value = item;

      if Result then
         break;

      DM_NF_Entr.cdNF_Item.Next;
   end;

   if Result then
      ShowMessage('Este cadastro já está associado a outro item.');

   DM_NF_Entr.cdNF_Item.EnableControls;
   DM_NF_Entr.cdNF_Item.Locate('id', i, []);
end;

function TfrmEntradaNF.NFCadastrada(nnf: integer; cnpj: string): boolean;
var
   s: string;
begin
   s := BuscaTroca(C_SQL83, C_SOH, IntToStr(nnf));
   s := BuscaTroca(s, C_ETX, cnpj);
   DMConn.Q1.Open(s);

   Result := DMConn.Q1.Fields[0].AsInteger > 0;
end;

procedure TfrmEntradaNF.Novo_Fornecedor;
var
   st_nome: string;
begin
   //localiza o fornecedor pelo cnpj
   DM.QForn.Open('select * from fornecedor where ' +
                  NumberSQL('cnpj') + '=' +
                  QuotedStr(Number(DM_NF_Entr.cdNFEmit_CNPJCPF.AsString))
   );

   if DM.QForn.IsEmpty then //se nao tem insere novo fornecedor
   begin
      st_nome := Trim(DM_NF_Entr.cdNFEmit_xFant.AsString);

      if st_nome = C_ST_VAZIO then
         st_nome := Trim(DM_NF_Entr.cdNFEmit_xNome.AsString);

      with DM_NF_Entr do
      begin
         DM.QForn.Insert;
         DM.QFornCNPJ.Value           := cdNFEmit_CNPJCPF.Value;
         DM.QFornNOME.AsString        := AnsiUpperCase(st_nome);
         DM.QFornRAZAOSOCIAL.AsString := AnsiUpperCase(Trim(cdNFEmit_xNome.AsString));
         DM.QFornTEL1.AsString        := Number(cdNFEmit_EnderEmit_fone.AsString);
         DM.QFornLOGRADOURO.Value     := cdNFEmit_EnderEmit_xLgr.Value;
         DM.QFornNMRO.Value           := cdNFEmit_EnderEmit_nro.Value;
         DM.QFornCOMPLEM.Value        := cdNFEmit_EnderEmit_xCpl.Value;
         DM.QFornBAIRRO.Value         := cdNFEmit_EnderEmit_xBairro.Value;
         DM.QFornCIDADE.Value         := cdNFEmit_EnderEmit_xMun.Value;
         DM.QForncep.Value            := cdNFmit_EnderEmit_CEP.Value;
         DM.QFornUF.Value             := cdNFEmit_EnderEmit_UF.Value;
         DM.QFornIE.AsString          := Number(cdNFEmit_IE.AsString);
         DM.QFornIM.Value             := cdNFEmit_IM.Value;
         DM.QForncodmun.AsString      := IntToStr(cdNFEmit_EnderEmit_cMun.Value);
         DM.QForn.Post;
         DM.QForn.Refresh;
      end;
   end
   else //atualiza os dados
   with DM_NF_Entr do
   begin
      DM.QForn.Edit;
      DM.QFornTEL1.AsString        := Number(cdNFEmit_EnderEmit_fone.AsString);
      DM.QFornLOGRADOURO.Value     := cdNFEmit_EnderEmit_xLgr.Value;
      DM.QFornNMRO.Value           := cdNFEmit_EnderEmit_nro.Value;
      DM.QFornCOMPLEM.Value        := cdNFEmit_EnderEmit_xCpl.Value;
      DM.QFornBAIRRO.Value         := cdNFEmit_EnderEmit_xBairro.Value;
      DM.QFornCIDADE.Value         := cdNFEmit_EnderEmit_xMun.Value;
      DM.QForncep.Value            := cdNFmit_EnderEmit_CEP.Value;
      DM.QFornUF.Value             := cdNFEmit_EnderEmit_UF.Value;
      DM.QFornIE.AsString          := Number(cdNFEmit_IE.AsString);
      DM.QFornIM.Value             := cdNFEmit_IM.Value;
      DM.QForncodmun.AsString      := IntToStr(cdNFEmit_EnderEmit_cMun.Value);
      DM.QForn.Post;
      DM.QForn.Refresh;
   end;
end;

procedure TfrmEntradaNF.Salvar_XML_Rec;
var
   pasta, nome_arq, cnpj, razao, chave: string;
   nnf: integer;
   y,m,d: word;
begin
   //pega a data de saida
   DecodeDate(DM_NF_Entr.NFE1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt, y, m, d);
   //se nao tiver data de saida pega a data de emissao...
   if y < 2010 then
      DecodeDate(DM_NF_Entr.NFE1.NotasFiscais.Items[0].NFe.Ide.dEmi, y, m, d);
   //pega o nº da NF
   nnf   := DM_NF_Entr.NFE1.NotasFiscais.Items[0].NFe.Ide.nNF;
   //cnpj do emit.
   cnpj  := DM_NF_Entr.NFE1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
   //razao social
   razao := Trim(Copy(DM_NF_Entr.NFE1.NotasFiscais.Items[0].NFe.Emit.xNome, 1, 20));
   razao := Clip(razao, 25);//limita em 25 caracteres
   razao := BuscaTroca(razao,'/','');//retira eventuais barras da formação da RS
   razao := BuscaTroca(razao,'\','');
   razao := BuscaTroca(razao,'.','_');
   //chave da NF
   chave := Number(DM_NF_Entr.NFE1.NotasFiscais.Items[0].NFe.infNFe.ID);
   //insere separadores no cnpj e no numero da nf
   insert('(',chave,7);
   insert(')',chave,22);
   insert('(',chave,28);
   insert(')',chave,38);

   if DM_INI.INI.StoredValue['path_nfe_rec'] = 0 then//pasta ano/mes
   begin
      pasta := 'NFE_RECEBIDAS\' + format('%.2d',[y]) + '\' + format('%.2d',[m])+ '\';
   end
   else
   if DM_INI.INI.StoredValue['path_nfe_rec'] = 1 then//pasta ano/emitente + mes
   begin
      pasta := 'NFE_RECEBIDAS\' +
               format('%.2d',[y]) + '\' +
               format('%.2d',[m]) + '\' +
               cnpj + '-' +
               razao + '\';
   end;

   if DM_INI.INI.StoredValue['nome_nfe_rec'] = 0 then//chave
   begin
      nome_arq := chave + '-nfe.xml';
   end
   else
   if DM_INI.INI.StoredValue['nome_nfe_rec'] = 1 then//cnpj + nmro
   begin
       nome_arq := iif(DM_INI.INI.StoredValue['path_nfe_rec'] = 1,
                       format('%.9d',[nnf]) + '-nfe.xml',
                       cnpj + '-' + razao + '_' + format('%.9d',[nnf]) + '-nfe.xml');

   end;

   DM_NF_Entr.NFE1.NotasFiscais.Items[0].GravarXML(nome_arq, Aqui(pasta, ''));
end;

procedure TfrmEntradaNF.tbvItensCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   inherited;
   CoverterTodospara1.Visible       := true;
   ConverterTodosCFOPpara1.Visible  := true;
   CoverterTodospara1.Caption       := 'Converter Todos CST para ' + C_ARR_5[DM_NF_Entr.cdNF_ItemICMS_CST_inform.AsInteger];
   ConverterTodosCFOPpara1.Caption  := 'Converter Todos CFOP para ' +  DM_NF_Entr.cdNF_Itemcfop_inform.AsString;
   ConvertertodosCSOSNpara1.Caption := 'Converter Todos CSOSN para ' + C_ARR_4[DM_NF_Entr.cdNF_ItemICMS_CSOSN_inform.Asinteger];
end;

procedure TfrmEntradaNF.CoverterTodospara1Click(Sender: TObject);
var
   i: integer;
begin
   if (MessageBox(0, 'Confirma a alteração?', C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;

   i := DM_NF_Entr.cdNF_ItemICMS_CST_inform.AsInteger;
   DM_NF_Entr.cdNF_Item.DisableControls;
   DM_NF_Entr.cdNF_Item.Tag := 2;
   DM_NF_Entr.cdNF_Item.First;

   try
      while not DM_NF_Entr.cdNF_Item.Eof do
      begin
         DM_NF_Entr.cdNF_Item.Edit;
         DM_NF_Entr.cdNF_ItemICMS_CST_inform.Value := i;
         DM_NF_Entr.cdNF_Item.Post;
         DM_NF_Entr.cdNF_Item.Next;
      end;
   finally
      DM_NF_Entr.cdNF_Item.First;
      DM_NF_Entr.cdNF_Item.EnableControls;
      DM_NF_Entr.cdNF_Item.Tag := 0
   end;
end;

procedure TfrmEntradaNF.tbvItensCSTGetProperties(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
var
  cmb: TcxImageComboBox;
  i: integer;
begin //popula a TcxImageComboBox da tbview
   cmb := TcxImageComboBox.Create(Sender);

   cmb.Properties.Items.Clear;

   for i := low(C_ARR_5) to High(C_ARR_5) do
   begin
      with cmb.Properties.Items.Add do
      begin
         Description := C_ARR_5[i];
         Value       := i;
      end;
   end;

   AProperties := cmb.Properties;
end;

procedure TfrmEntradaNF.tbvItensICMS_CSOSNGetProperties(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
var
  cmb: TcxImageComboBox;
  i: integer;
begin //popula a TcxImageComboBox da tbview
   cmb := TcxImageComboBox.Create(Sender);

   cmb.Properties.Items.Clear;

   for i := low(C_ARR_4) to High(C_ARR_4) do
   begin
      with cmb.Properties.Items.Add do
      begin
         Description := C_ARR_4[i];
         Value       := i;
      end;
   end;

   AProperties := cmb.Properties;
end;

procedure TfrmEntradaNF.tbvItensCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
   if AViewInfo.GridRecord.Values[tbvItensid_prod.Index]=0 then //sem cadastro
   begin
      if AViewInfo.GridRecord.Values[tbvItenscEAN.Index]= C_ST_VAZIO then
         ACanvas.Canvas.Brush.Color := $00636AFE
      else
         ACanvas.Canvas.Brush.Color := $0088C4FF;

      ACanvas.Canvas.Font.Color := clBlack;
   end
   else
   begin
       ACanvas.Canvas.Brush.Color := $00BDEEA8;
       ACanvas.Canvas.Font.Color := clBlack;
   end;
end;


procedure TfrmEntradaNF.tbvItensEditing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
   DM_NF_Entr.cdNF_Item.Tag := 1;
end;

end.



