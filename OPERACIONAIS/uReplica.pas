unit uReplica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Data.DB, Datasnap.DBClient, ACBrBase, ACBrEnterTab,
  Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxContainer, cxLabel,
  cxDBLabel, cxProgressBar, dxSkinsCore, dxSkinscxPCPainter, cxNavigator, cxImageComboBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmReplica = class(Tfrm)
    Panel3: TPanel;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    DS1: TDataSource;
    tbvcod_gtin: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvqtd: TcxGridDBColumn;
    DBLabel1: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    cd1: TFDMemTable;
    cd1cod_gtin: TStringField;
    cd1nome: TStringField;
    cd1qtd: TFloatField;
    cd1destinacao: TStringField;
    tbvdestinacao: TcxGridDBColumn;
    btnInserir: TcxButton;
    btnExcluir: TcxButton;
    btnConcluir: TcxButton;
    Bar2: TcxProgressBar;
    procedure btnInserirClick(Sender: TObject);
    procedure cd1AfterInsert(DataSet: TDataSet);
    procedure btnConcluirClick(Sender: TObject);
    procedure cd1AfterDelete(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure cd1BeforePost(DataSet: TDataSet);
    procedure DS1StateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReplica: TfrmReplica;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, uCadEstoque, udm_ini;

procedure TfrmReplica.cd1AfterDelete(DataSet: TDataSet);
begin
   btnConcluir.Enabled := not cd1.IsEmpty;
   btnExcluir.Enabled := btnConcluir.Enabled;
end;

procedure TfrmReplica.cd1AfterInsert(DataSet: TDataSet);
begin
   cd1nome.AsString := DM.QEstoquenome.AsString;
   cd1qtd.Value     := 0;
   btnConcluir.Enabled := True;
   btnExcluir.Enabled := True;
end;

procedure TfrmReplica.cd1BeforePost(DataSet: TDataSet);
begin
   if (cd1cod_gtin.AsString <> C_ST_VAZIO)and
      (DM.Verificar_Duplicidade('', 'estoque', 'cod_gtin', 'destinacao', cd1cod_gtin.AsString, cd1destinacao.AsString)) then
   begin
     cd1cod_gtin.AsString := C_ST_VAZIO;
     raise Exception.Create('Já existe um produto com este código GTIN.');
   end
end;

procedure TfrmReplica.DS1StateChange(Sender: TObject);
begin
   btnExcluir.Enabled  := (DS1.DataSet.State = dsBrowse) and (not DS1.DataSet.IsEmpty);
   btnConcluir.Enabled := btnExcluir.Enabled;
end;

procedure TfrmReplica.btnConcluirClick(Sender: TObject);
var
   b: boolean;
   i: integer;
begin
   cd1.DisableControls;
   cd1.First;
   b := False;

   while not cd1.Eof do //verifica se mudou a descrição
   begin
     b := cd1nome.Value = dm.QEstoquenome.Value;

     if b then
        break;

     cd1.Next;
   end;

   if b then
   begin
      cd1.EnableControls;
      raise Exception.Create(C_258);
   end;

   cd1.First;

   while not cd1.Eof do //verifica se tem gtin vazio
   begin
     b := cd1cod_gtin.AsString = C_ST_VAZIO;

     if b then
        break;

     cd1.Next;
   end;

   if (b)and(MessageBox(0, C_257 , C_237, MB_ICONWARNING or MB_YESNO) = idNo) then
      exit;

   cd1.First;
   DM.Q5.Open(C_SQL33 + Texto_Mysql(DM.QEstoqueid.Value));//obtem os dados do estoque
   bar2.Visible := True;
   bar2.Properties.Max := cd1.RecordCount;
   DM.QEstoque.DisableControls;

   while not cd1.Eof do //insere os replicados baseado no original
   begin
      Application.ProcessMessages;
      DM.QEstoque.Insert;
      bar2.Position := cd1.RecNo;

      if cd1cod_gtin.AsString = C_ST_VAZIO then //se nao tem, gera o gtin
      begin
         if DM_INI.INI.StoredValue['gerar_gtin'] then //gera o GTIN conforme configurado no aplicativo
            DM.QEstoquecod_gtin.AsString := DM.Gerar_CodBarra_GTIN
         else //gera o codigo sequencial
            DM.QEstoquecod_gtin.AsString := DM.Gerar_CodBarra_Sequencia;
      end
      else
         DM.QEstoquecod_gtin.Value := cd1cod_gtin.Value;

      for i := 0 to DM.QEstoque.FieldCount - 1 do //insere os demais campos
      if (DM.QEstoque.Fields[i].FieldName <> 'id') and
         (DM.QEstoque.Fields[i].FieldName <> 'cod_gtin')and
         (DM.QEstoque.Fields[i].FieldName <> 'nome')and
         (DM.QEstoque.Fields[i].FieldName <> 'quant')then
         DM.QEstoque.Fields[i].value := DM.Q5.FieldByName(DM.QEstoque.Fields[i].FieldName).Value;

      DM.QEstoquenome.Value  := cd1nome.Value;
      DM.QEstoquequant.Value := cd1qtd.Value;
      DM.QEstoque.Post;
      cd1.Next;
   end;

   ShowMessage('Replicação concluída.');
   cd1.EnableControls;
   DM.QEstoque.EnableControls;
   btnSair.Click;

end;

procedure TfrmReplica.btnExcluirClick(Sender: TObject);
begin
   cd1.Delete;
end;

procedure TfrmReplica.btnInserirClick(Sender: TObject);
begin
   cd1.Append;
   grd.SetFocus;
end;

end.
