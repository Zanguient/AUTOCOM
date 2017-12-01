unit uCadMovim;

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
  cxDropDownEdit,FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  dxSkinsCore, dxSkinCaramel, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter,
  dxBarBuiltInMenu;

type
  TfrmCadMovi = class(TfrmCad)
    QMovim: TFDQuery;
    QMovimid: TIntegerField;
    QMovimcod: TStringField;
    QMovimtipo: TStringField;
    QMovimdescricao: TStringField;
    tbvid: TcxGridDBColumn;
    tbvcod: TcxGridDBColumn;
    tbvtipo: TcxGridDBColumn;
    tbvdescricao: TcxGridDBColumn;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    QMovimsistema: TStringField;
    cxLabel2: TcxLabel;
    QMovimconta: TIntegerField;
    pop1: TPopupMenu;
    AssociarPlanodeContas1: TMenuItem;
    ExibirPlanodeContas1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure tbvcodHeaderClick(Sender: TObject);
    procedure QMovimBeforeDelete(DataSet: TDataSet);
    procedure cxLabel2Click(Sender: TObject);
    procedure QMovimAfterInsert(DataSet: TDataSet);
    procedure QMovimAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure AssociarPlanodeContas1Click(Sender: TObject);
    procedure ExibirPlanodeContas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    iConta:integer;
  end;

var
  frmCadMovi: TfrmCadMovi;

implementation

{$R *.dfm}

uses uDM, uAutocomConsts, uCadPlanoContas, uAssoc, uFuncoes, uDM_Conn;

procedure TfrmCadMovi.AssociarPlanodeContas1Click(Sender: TObject);
begin
   if tbv.DataController.GetSelectedCount = 0 then
      raise Exception.Create('Selecione um movimento');

   ShowMessage('Você deverá informar o plano de conta que será associado a esta operação.');

   frmCadPlanoContas := TfrmCadPlanoContas.Create(Self);
   frmCadPlanoContas.btnAss.Tag := 100;
   frmCadPlanoContas.ShowModal;

   if DM.g_str_coringa <> C_ST_VAZIO then
   begin
      frmAssoc := TfrmAssoc.Create(Self);
      frmAssoc.Operacao := 'MB' + QMovimtipo.AsString + QMovimconta.AsString + QMovimcod.AsString;//movimentação bancaria
      frmAssoc.Showmodal;
   end;
end;

procedure TfrmCadMovi.cxLabel2Click(Sender: TObject);
begin
   AssociarPlanodeContas1.Click;
end;

procedure TfrmCadMovi.ExibirPlanodeContas1Click(Sender: TObject);
begin
   DM.Exibir_Plano('MB' + QMovimtipo.AsString +  QMovimconta.AsString + QMovimcod.AsString);
end;

procedure TfrmCadMovi.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'CADASTRO MOVIM. BANC.' + C_117;
end;

procedure TfrmCadMovi.FormShow(Sender: TObject);
begin
  inherited;
   QMovim.Filter := 'conta=' + InttoStr(iConta);
   QMovim.Filtered := true;
   QMovim.Open;
end;

procedure TfrmCadMovi.QMovimAfterInsert(DataSet: TDataSet);
begin
   QMovimconta.Value := iConta;
end;

procedure TfrmCadMovi.QMovimAfterPost(DataSet: TDataSet);
begin
   DMConn.Q5.Open('select id from finan_banco_conta where id<>' + Texto_Mysql(iConta));

   if (not DMConn.Q5.IsEmpty)and(MessageBox(0, 'Deseja associar este movimento com todas as contas?', C_237,
                                            MB_ICONQUESTION or MB_OKCANCEL) = IDOK) then
   begin
      while not DMConn.Q5.Eof do
      begin
         DM.ExecSQL('replace into finan_banco_codigos (cod,conta,tipo,descricao,sistema)(select cod,' +
                    Texto_Mysql(DMConn.Q5.Fields[0].AsString) +
                    ',tipo,descricao,sistema from finan_banco_codigos)'
         );
         DMConn.Q5.Next;
      end;
   end;
end;

procedure TfrmCadMovi.QMovimBeforeDelete(DataSet: TDataSet);
begin
   if QMovimsistema.Value = 'S' then
      raise Exception.Create('Este movimento é interno do sistema e não pode ser excluído.');

   DMConn.Q5.Open('select count(*) from finan_banco_movi where cod=' + Texto_Mysql(QMovimcod.AsString));

   if (DMConn.Q5.Fields[0].AsInteger > 0) then
      raise Exception.Create(C_297);
end;

procedure TfrmCadMovi.tbvcodHeaderClick(Sender: TObject);
begin
  (DS1.DataSet as TFDQuery).IndexFieldNames := TcxGridDBColumn(Sender).DataBinding.FieldName;
end;

end.
