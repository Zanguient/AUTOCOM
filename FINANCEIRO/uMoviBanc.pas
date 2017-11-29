unit uMoviBanc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData,
  cxContainer, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxNavigator, cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGroupBox, cxRadioGroup, cxDBEdit, cxCalc, cxCalendar, cxDBLabel,
  cxCurrencyEdit, cxCheckBox, Vcl.ComCtrls, dxCore, cxDateUtils, FireDAC.Comp.Client,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TfrmMovBanc = class(TfrmCad)
    QContas: TFDQuery;
    DSContas: TDataSource;
    cmbContas: TcxLookupComboBox;
    Label11: TcxLabel;
    DSCod: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cmb2: TcxDBLookupComboBox;
    Label5: TLabel;
    tbvid: TcxGridDBColumn;
    tbvcod: TcxGridDBColumn;
    tbvtipo: TcxGridDBColumn;
    tbvvalor: TcxGridDBColumn;
    tbvdata: TcxGridDBColumn;
    tbvdocumento: TcxGridDBColumn;
    tbvdescricao: TcxGridDBColumn;
    QContasid: TIntegerField;
    QContasconta: TStringField;
    QSaldo_Ant: TFDQuery;
    QSaldo_Antsaldo_inicial: TFloatField;
    cxDBLabel1: TcxDBLabel;
    DSSaldo_Ant: TDataSource;
    cxLabel1: TcxLabel;
    QSaldo_Antid: TIntegerField;
    cxLabel2: TcxLabel;
    Dt1: TcxDateEdit;
    Dt2: TcxDateEdit;
    cxLabel3: TcxLabel;
    btnPesq: TcxButton;
    Panel2: TPanel;
    cxLabel4: TcxLabel;
    cmb3: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    cxDBLabel3: TcxDBLabel;
    cxLabel6: TcxLabel;
    cxDBLabel4: TcxDBLabel;
    cxLabel7: TcxLabel;
    QSaldo_Atual: TFDQuery;
    QSaldo_Atualdebito: TFloatField;
    QSaldo_Atualcredito: TFloatField;
    QSaldo_Atualsaldo_atual: TFloatField;
    DSSaldo_Atual: TDataSource;
    edSaldo: TcxCurrencyEdit;
    cxTabSheet1: TcxTabSheet;
    Panel3: TPanel;
    cxLabel8: TcxLabel;
    cmbContaO: TcxLookupComboBox;
    cxLabel9: TcxLabel;
    cmbContaD: TcxLookupComboBox;
    dtTrf: TcxDateEdit;
    edVrTrf: TcxCurrencyEdit;
    cxLabel11: TcxLabel;
    btnTrf: TcxButton;
    cxLabel10: TcxLabel;
    Bevel1: TBevel;
    QContasconta_res: TStringField;
    QContasD: TFDQuery;
    DSContasD: TDataSource;
    QContasDid: TIntegerField;
    QContasDconta: TStringField;
    QContasDconta_res: TStringField;
    btnCadMov: TcxButton;
    btlChq: TcxButton;
    TabTal: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    edTalIni: TcxCurrencyEdit;
    edTalFim: TcxCurrencyEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    btnCadFaixa: TcxButton;
    grdTal: TcxGrid;
    tbcTal: TcxGridDBTableView;
    LvTal: TcxGridLevel;
    btnTalDel: TcxButton;
    DSTal: TDataSource;
    tbcTalid: TcxGridDBColumn;
    tbcTalnmro: TcxGridDBColumn;
    tbcTalcancelado: TcxGridDBColumn;
    tbcTalmotivo: TcxGridDBColumn;
    tbcTalusado: TcxGridDBColumn;
    rgFiltroTal: TcxRadioGroup;
    Panel4: TPanel;
    cxLabel14: TcxLabel;
    cmbContaTal: TcxLookupComboBox;
    edmot: TcxTextEdit;
    cxLabel15: TcxLabel;
    btnCancFaixa: TcxButton;
    RbDC: TcxDBRadioGroup;
    popO: TPopupMenu;
    popD: TPopupMenu;
    AssociarPlanodeContas1: TMenuItem;
    ExibirPlanodeContas1: TMenuItem;
    AssociarPlanodeContas2: TMenuItem;
    ExibirPlanodeContas2: TMenuItem;
    QTal: TFDQuery;
    QMovi: TFDQuery;
    QMoviid: TFDAutoIncField;
    QMoviconta: TIntegerField;
    QMovicod: TStringField;
    QMovitipo: TStringField;
    QMovivalor: TFloatField;
    QMovidata: TDateField;
    QMovidocumento: TStringField;
    QMovidescricao: TStringField;
    QMoviid_movi: TIntegerField;
    QCod: TFDQuery;
    QCodid: TFDAutoIncField;
    QCodcod: TStringField;
    QCodconta: TIntegerField;
    QCodtipo: TStringField;
    QCoddescricao: TStringField;
    QCodsistema: TStringField;
    QTalid: TFDAutoIncField;
    QTalnmro: TIntegerField;
    QTalconta: TIntegerField;
    QTalcancelado: TStringField;
    QTalmotivo: TStringField;
    QTalusado: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure RbDCClick(Sender: TObject);
    procedure DS1StateChange(Sender: TObject);
    procedure QMoviBeforePost(DataSet: TDataSet);
    procedure TabPesqShow(Sender: TObject);
    procedure D1PropertiesEditValueChanged(Sender: TObject);
    procedure btnPesqClick(Sender: TObject);
    procedure TabCadShow(Sender: TObject);
    procedure cmbContasClick(Sender: TObject);
    procedure cmb3Click(Sender: TObject);
    procedure btnTrfClick(Sender: TObject);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure btnCadMovClick(Sender: TObject);
    procedure rgFiltroTalClick(Sender: TObject);
    procedure btnCadFaixaClick(Sender: TObject);
    procedure cmbContaTalClick(Sender: TObject);
    procedure btnTalDelClick(Sender: TObject);
    procedure tbcTalnmroHeaderClick(Sender: TObject);
    procedure btnCancFaixaClick(Sender: TObject);
    procedure btlChqClick(Sender: TObject);
    procedure QMoviBeforeDelete(DataSet: TDataSet);
    procedure TabTalShow(Sender: TObject);
    procedure QMoviAfterPost(DataSet: TDataSet);
    procedure AssociarPlanodeContas1Click(Sender: TObject);
    procedure AssociarPlanodeContas2Click(Sender: TObject);
    procedure ExibirPlanodeContas1Click(Sender: TObject);
    procedure ExibirPlanodeContas2Click(Sender: TObject);
    procedure tbvCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovBanc: TfrmMovBanc;

implementation

{$R *.dfm}

uses uDM, udm_ini, uFuncoes, uMD5Print, uAutocomConsts, uCadMovim,
  uCadPlanoContas, uAssoc;


procedure TfrmMovBanc.btnTalDelClick(Sender: TObject);
begin
   if (MessageBox(0, PWideChar('Deseja excluir a faixa informada?'), C_237,
                     MB_ICONQUESTION or MB_OKCANCEL) = idCancel) then
   exit;

   DM.ExecSQL('delete from finan_talonario where nmro BETWEEN ' +
               Texto_Mysql(edTalIni.Value) + ' and ' + Texto_Mysql(edTalFim.Value) +
              ' and conta=' + Texto_Mysql(QContasid.Value)
   );

   QTal.Refresh;
   ShowMessage(C_25);
end;

procedure TfrmMovBanc.btnCancFaixaClick(Sender: TObject);
begin
   if Trim(edmot.Text) = C_ST_VAZIO then
      raise Exception.Create('Informe o motivo.');

   if (MessageBox(0, PWideChar('Deseja cancelar a faixa informada?'), C_237,
                     MB_ICONQUESTION or MB_OKCANCEL) = idCancel) then
   exit;

   DM.ExecSQL('update finan_talonario set cancelado="S",' +
              'motivo=' + Texto_Mysql(edmot.Text) +
              ' where nmro BETWEEN ' +
               Texto_Mysql(edTalIni.Value) +
              ' and ' + Texto_Mysql(edTalFim.Value) +
              ' and conta=' + Texto_Mysql(QContasid.Value)
   );

   QTal.Refresh;
   ShowMessage(C_25);
end;

procedure TfrmMovBanc.AssociarPlanodeContas1Click(Sender: TObject);
begin
   if cmbContaO.ItemIndex = -1 then
      raise Exception.Create('Selecione uma conta');

   ShowMessage('Você deverá informar o plano de conta que será associado a esta conta.');

   frmCadPlanoContas := TfrmCadPlanoContas.Create(Self);
   frmCadPlanoContas.btnAss.Tag := 100;
   frmCadPlanoContas.ShowModal;

   if DM.g_str_coringa <> C_ST_VAZIO then
   begin
      frmAssoc := TfrmAssoc.Create(Self);
      frmAssoc.Operacao := 'MBD'+ QContasid.AsString + 'TBR';//Transferência bancária (retirada)
      frmAssoc.Showmodal;
   end;
end;

procedure TfrmMovBanc.AssociarPlanodeContas2Click(Sender: TObject);
begin
   if cmbContaD.ItemIndex = -1 then
      raise Exception.Create('Selecione uma conta');

   ShowMessage('Você deverá informar o plano de conta que será associado a esta conta.');

   frmCadPlanoContas := TfrmCadPlanoContas.Create(Self);
   frmCadPlanoContas.btnAss.Tag := 100;
   frmCadPlanoContas.ShowModal;

   if DM.g_str_coringa <> C_ST_VAZIO then
   begin
      frmAssoc := TfrmAssoc.Create(Self);
      frmAssoc.Operacao := 'MBC'+ QContasDid.AsString + 'TBC';//Transferência bancária (crédito)
      frmAssoc.Showmodal;
   end;
end;

procedure TfrmMovBanc.btlChqClick(Sender: TObject);
begin
   if not (QMovi.State in [dsInsert, dsEdit]) then
      exit;

   if Trim(QMovidocumento.AsString) = C_ST_VAZIO then
      raise Exception.Create('Informe o nº do cheque no campo documento.');

   if RbDC.ItemIndex = 0 then
      DM.Q1.Open('select id from finan_talonario where cancelado="N" and usado="N" and nmro=' +
                         Texto_Mysql(QMovidocumento.AsString) +
                         ' and conta=' + Texto_Mysql(QContasid.Value)
      )
   else
      DM.Q1.Open('select id from finan_talonario where cancelado="N" and usado="S" and nmro=' +
                         Texto_Mysql(QMovidocumento.AsString) +
                         ' and conta=' + Texto_Mysql(QContasid.Value)
      );

   if DM.Q1.IsEmpty then
      ShowMessage('O cheque nº ' + QMovidocumento.AsString + ' não foi encontrado.')
   else
   begin
      QMovidocumento.AsString := 'CHQ-' + Number(QMovidocumento.AsString);
      RbDC.ItemIndex := 0;
   end;
end;

procedure TfrmMovBanc.btnCadFaixaClick(Sender: TObject);
var
   i: integer;
begin
   if not QTal.Active then
      raise Exception.Create('Informe uma conta');

   if (edTalIni.Value <=0) or (edTalFim.Value < edTalIni.Value) then
      raise Exception.Create('Valores informados incorretamente.');

   DM.Q1.Open('select count(*) from finan_talonario where nmro BETWEEN ' +
                        Texto_Mysql(edTalIni.Value) + ' and ' + Texto_Mysql(edTalFim.Value) +
                       ' and conta=' + Texto_Mysql(QContasid.Value)
   );

   if DM.Q1.Fields[0].AsInteger > 0 then
      raise Exception.Create('A faixa informada já contém itens cadastrados');

   QTal.DisableControls;

   for i := Trunc(edTalIni.Value) to Trunc(edTalFim.Value)  do
   begin
      QTal.Append;
      QTalnmro.Value  := i;
      QTalconta.Value := QContasid.Value;
      QTal.Post;
   end;

   QTal.EnableControls;
   QTal.Refresh;
   ShowMessage(C_25);
end;

procedure TfrmMovBanc.cmb3Click(Sender: TObject);
begin
   QMovi.Close;
   QSaldo_Ant.Close;
   QSaldo_Atual.Close;
   edSaldo.Clear;
end;

procedure TfrmMovBanc.cmbContasClick(Sender: TObject);
begin
   if cmbContas.ItemIndex > -1 then
   if not QMovi.Active then
   QMovi.Open('select * from finan_banco_movi where conta=' +
                       Texto_Mysql(QContasid.Value) +
                       ' order by id desc limit 1'
   );
   QCod.Open;
end;

procedure TfrmMovBanc.cmbContaTalClick(Sender: TObject);
begin
   if QTal.Active then
      QTal.Close;

   rgFiltroTal.ItemIndex := -1;
   QTal.Open;
   rgFiltroTal.ItemIndex := 0;
end;

procedure TfrmMovBanc.btnPesqClick(Sender: TObject);
begin
   QSaldo_Ant.Close;
   QSaldo_Atual.Close;
   edSaldo.Clear;

   if (Dt1.Date <=0) or (Dt1.Date > Dt2.Date) then
      raise Exception.Create(C_264);

   if cmb3.ItemIndex = -1 then
      raise Exception.Create('Selecione uma Conta');

   QMovi.Open('select * from finan_banco_movi where data between ' +
                        data_My(Dt1.Date) + ' and ' + data_My(Dt2.Date) +
                        ' and conta=' + Texto_Mysql(QContasid.Value)
   );

   QSaldo_Ant.ParamByName('data').AsDate  := Dt1.Date;
   QSaldo_Ant.ParamByName('conta').Value  := QContasid.Value;

   QSaldo_Atual.ParamByName('d1').AsDate    := Dt1.Date;
   QSaldo_Atual.ParamByName('d2').AsDate    := Dt2.Date;
   QSaldo_Atual.ParamByName('conta').Value  := QContasid.Value;

   QSaldo_Ant.Open;
   QSaldo_Atual.Open;
   edSaldo.Value := QSaldo_Atualsaldo_atual.Value + QSaldo_Antsaldo_inicial.Value;
end;

procedure TfrmMovBanc.btnTrfClick(Sender: TObject);
begin
   if cmbContaO.ItemIndex = -1 then
      raise Exception.Create('Informe a conta origem.');

   if cmbContaD.ItemIndex = -1 then
      raise Exception.Create('Informe a conta destino.');

   if QContasid.Value = QContasDid.Value then
      raise Exception.Create('Não é possível uma transferência para a mesma conta.');

   DM.Q1.Open('select * from finan_banco_movi limit 1');
   DM.Q2.Open('select * from finan_banco_movi limit 1');
   //faz o credito na conta destino
   DM.Q1.Insert;
   DM.Q1.FieldByName('conta').Value     := QContasDid.Value;
   DM.Q1.FieldByName('cod').Value       := 'TBC';
   DM.Q1.FieldByName('tipo').Value      := 'C';
   DM.Q1.FieldByName('valor').Value     := edVrTrf.Value;
   DM.Q1.FieldByName('data').Value      := dtTrf.Date;
   DM.Q1.FieldByName('documento').Value := QContasconta_res.AsString;
   DM.Q1.FieldByName('descricao').Value := 'Transfer. oriunda da conta ' + QContasconta_res.AsString;
   DM.Q1.Post;

   //informe ao plano de contas
   DM.Q3.Open('select * from finan_centro_custo_assoc where operacao=' + Texto_Mysql('MBC' + QContasDid.AsString + 'TBC'));

   if not DM.Q2.IsEmpty then
      DM.Inserir_Plano_de_contas(DM.Q3.FieldByName('codigo').AsString,
                                 QContasconta_res.AsString,
                                 DM.Q3.FieldByName('descricao').AsString + '(' + QContasconta_res.AsString + ')',
                                 dtTrf.Date,
                                 dtTrf.Date,
                                 edVrTrf.Value,
                                 QContasDid.Value
      );

   //faz o debito na conta origem

   DM.Q2.Insert;
   DM.Q2.FieldByName('conta').Value     := QContasid.Value;
   DM.Q2.FieldByName('cod').Value       := 'TBR';
   DM.Q2.FieldByName('tipo').Value      := 'D';
   DM.Q2.FieldByName('valor').Value     := 0 - edVrTrf.Value;
   DM.Q2.FieldByName('data').Value      := dtTrf.Date;
   DM.Q2.FieldByName('documento').Value := QContasDconta_res.AsString;
   DM.Q2.FieldByName('descricao').Value := 'Transfer. em favor da conta ' + QContasDconta_res.AsString;
   DM.Q2.Post;

   //informe ao plano de contas
   DM.Q3.Open('select * from finan_centro_custo_assoc where operacao=' + Texto_Mysql('MBD' + QContasid.AsString + 'TBR'));

   if not DM.Q2.IsEmpty then
      DM.Inserir_Plano_de_contas(DM.Q3.FieldByName('codigo').AsString,
                                 QContasDconta_res.AsString,
                                 DM.Q3.FieldByName('descricao').AsString + '(' + QContasDconta_res.AsString + ')',
                                 dtTrf.Date,
                                 dtTrf.Date,
                                 edVrTrf.Value,
                                 QContasid.Value
      );

   ShowMessage(C_25);
end;

procedure TfrmMovBanc.btnCadMovClick(Sender: TObject);
begin
   if not QContas.Active then
      raise Exception.Create('Selecione uma conta');

   if QContas.IsEmpty then
      raise Exception.Create('Selecione uma conta');

   frmCadMovi := TfrmCadMovi.Create(Self);
   frmCadMovi.iConta := QContasid.Value;
   frmCadMovi.ShowModal;

   if Qcod.Active then
      Qcod.Refresh;
end;


procedure TfrmMovBanc.cxTabSheet1Show(Sender: TObject);
begin
   QContasD.Open;
end;

procedure TfrmMovBanc.D1PropertiesEditValueChanged(Sender: TObject);
begin
   QMovi.Close;
   QSaldo_Ant.Close;
   QSaldo_Atual.Close;
   edSaldo.Clear;
end;

procedure TfrmMovBanc.DS1StateChange(Sender: TObject);
begin
  inherited;
  if (not (DS1.DataSet.State in [dsInsert, dsEdit]))and(RbDC.ItemIndex >=0) then
     RbDC.ItemIndex := -1;
end;

procedure TfrmMovBanc.ExibirPlanodeContas1Click(Sender: TObject);
begin
   DM.Exibir_Plano('MBD' + QContasid.AsString + 'TBR');
end;

procedure TfrmMovBanc.ExibirPlanodeContas2Click(Sender: TObject);
begin
   DM.Exibir_Plano('MBC' + QContasDid.AsString + 'TBC');
end;

procedure TfrmMovBanc.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'MÓDULO MOVIMENTAÇÃO BANCÁRIA ' + C_117;
   QContas.Open;
end;

procedure TfrmMovBanc.QMoviAfterPost(DataSet: TDataSet);
begin
   if DataSet.Tag = 1 then //flag do before post
   begin
      DataSet.Tag := 0;
      DataSet.Refresh;
         //informe ao plano de contas
      DM.Q2.Open('select * from finan_centro_custo_assoc where operacao=' +
                          Texto_Mysql('MB' + QMovitipo.AsString +  QMoviconta.AsString + QMovicod.AsString)
      );

      if not DM.Q2.IsEmpty then
         DM.Inserir_Plano_de_contas(DM.Q2.FieldByName('codigo').AsString,
                                    QMovidocumento.AsString,
                                    DM.Q2.FieldByName('descricao').AsString,
                                    QMovidata.Value,
                                    QMovidata.Value,
                                    QMovivalor.Value,
                                    QMoviid.Value
         );
   end;
end;

procedure TfrmMovBanc.QMoviBeforeDelete(DataSet: TDataSet);
var
   s: string;
begin
   s := Number(copy(QMovidocumento.AsString,1,pos('/', QMovidocumento.AsString)-1));

   if pos('CHQ-' ,QMovidocumento.AsString) > 0 then
      DM.ExecSQL('update finan_talonario set motivo=null, cancelado="N", usado="N" ' +
                 'where nmro=' +
                  Texto_Mysql(s)+
                 ' and conta=' + Texto_Mysql(QContasid.Value)
      );

   DM.Reverter_Plano_de_Contas('MB' + QMovitipo.AsString + QMoviconta.AsString + QMovicod.AsString, QMoviid.Value);
end;

procedure TfrmMovBanc.QMoviBeforePost(DataSet: TDataSet);
begin
   if (pgCad.ActivePage = TabCad)and(cmbContas.ItemIndex = -1) then
      raise Exception.Create('Informe a Conta.');

   if QMovidata.Value <=0 then
      raise Exception.Create('Data Incorreta.');

   if QMovicod.AsString = C_ST_VAZIO then
      raise Exception.Create('Falta a movimentação');

   if QMovivalor.Value <=0 then
      raise Exception.Create('Falta o valor.');

   if QMovidocumento.AsString = C_ST_VAZIO then
      raise Exception.Create('Informe o documento.');

   QMoviconta.Value   := QContasid.Value;
   QMovitipo.AsString := RbDC.Properties.Items[RbDC.ItemIndex].Value;

   if (QMovitipo.AsString = 'D')and(QMovivalor.Value>0) then
      QMovivalor.Value := QMovivalor.Value * -1;

   if DataSet.State = dsInsert then
   begin
      QMovidescricao.AsString := AnsiUpperCase(cmb2.Text + ' ' + QMovidescricao.AsString);

      if pos('CHQ-' ,QMovidocumento.AsString) > 0 then
      begin
         if (QMovitipo.AsString = 'D') then
            DM.ExecSQL('update finan_talonario set usado="S",motivo=' +
                       Texto_Mysql(QMovidescricao.AsString) +
                       ' where nmro=' +
                        Texto_Mysql(Number(QMovidocumento.AsString))+
                       ' and conta=' + Texto_Mysql(QContasid.Value)
            )
         else
         DM.ExecSQL('update finan_talonario set cancelado="S", usado="S",motivo=' +
                    Texto_Mysql(QMovidescricao.AsString) +
                    ' where nmro=' +
                     Texto_Mysql(Number(QMovidocumento.AsString))+
                    ' and conta=' + Texto_Mysql(QContasid.Value)
         );
         QMovidocumento.AsString := QMovidocumento.AsString + '/' + QContasconta_res.AsString;
      end;

      DataSet.Tag := 1;//flag para o after post
   end;
end;

procedure TfrmMovBanc.RbDCClick(Sender: TObject);
begin
   cmb2.Enabled := RbDC.ItemIndex >=0;

   if RbDC.ItemIndex >=0 then
      Qcod.Filter := 'conta=' + Texto_Mysql(QContasid.Value) + 'and tipo=' + Texto_Mysql(RbDC.Properties.Items[RbDC.ItemIndex].Value);

   Qcod.Filtered := RbDC.ItemIndex >=0;
end;

procedure TfrmMovBanc.rgFiltroTalClick(Sender: TObject);
begin
   if rgFiltroTal.ItemIndex = -1 then
      exit;

   QTal.Filtered := False;
   QTal.Filter   := 'conta=' + Texto_Mysql(QContasid.Value) + ' and ' + rgFiltroTal.Properties.Items[rgFiltroTal.ItemIndex].Value;
   QTal.Filtered := True;
   btnCancFaixa.Enabled := rgFiltroTal.ItemIndex = 0;
end;

procedure TfrmMovBanc.TabCadShow(Sender: TObject);
begin
   inherited;
   cmb2.ItemIndex := -1;
end;

procedure TfrmMovBanc.TabPesqShow(Sender: TObject);
begin
   inherited;
   QMovi.Close;
   QSaldo_Ant.Close;
   QSaldo_Atual.Close;
   edSaldo.Clear;
   cmb3.ItemIndex := -1;
end;

procedure TfrmMovBanc.TabTalShow(Sender: TObject);
begin
   if QTal.Active then
      QTal.Close;
end;

procedure TfrmMovBanc.tbcTalnmroHeaderClick(Sender: TObject);
begin
  (DSTal.DataSet as TFDQuery).IndexFieldNames := TcxGridDBColumn(Sender).DataBinding.FieldName;
end;

procedure TfrmMovBanc.tbvCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
//  inherited;

end;

end.
