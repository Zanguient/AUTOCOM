unit uDM;

interface

uses
  System.SysUtils, System.Classes, RxPlacemnt, Data.DB, MemDS, DBAccess,
  MyAccess, IdBaseComponent, IdComponent, IdRawBase, IdRawClient, IdIcmpClient,
  DAScript, MyScript, dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.Dialogs, uFuncoes,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, ACBrBase, MemData,
  ACBrEnterTab, cxClasses, dxSkinsForm, cxStyles, Vcl.Forms, cxGridTableView,
  cxDBEdit, ACBrValidador, system.Variants, Datasnap.DBClient, pcnConversao,
  ACBrBoleto, ACBrBoletoFCFR, Winapi.Windows, Winapi.Messages,
  Vcl.Graphics, Vcl.Controls, VirtualTable;

type
  TOperador = class
  private
     FNome: string;
     Fid, FAcesso: integer;

  public
      property Nome: string read FNome write Fnome;
      property ID: integer read Fid write Fid;
      property Acesso: integer read FAcesso write FAcesso;
  end;

  TDM = class(TDataModule)
    DB: TMyConnection;
    SP: TMyScript;
    Q1: TMyQuery;
    Q2: TMyQuery;
    Q3: TMyQuery;
    Q4: TMyQuery;
    Q5: TMyQuery;
    DSEstoque: TDataSource;
    DSEmpresa: TDataSource;
    procedure TEstoqueAfterPost(DataSet: TDataSet);
  private
    procedure LimpaStr(Dataset: TDataset);
    function pingar: boolean;


  public
   var
       s_chave: string;
       Operador: TOperador;
       g_int_coringa: integer;//usado para passar dados entre forms
       g_str_coringa: string;//usado para passar dados entre forms
       erro_script: boolean;
       id_Term: string; //id do terminal

    function Conectar: boolean;
    function ExecSQL(s_script: string; raising: boolean=True): boolean;
    procedure Pesquisar(qQuery: TMyQuery; s_script: string);
    procedure Abrir_Central_Relat(modo: string; pasta: string = C_ST_VAZIO; arquivo: string = C_ST_VAZIO; params: string = C_ST_VAZIO);
    procedure CallMenuFiscal;
    procedure XML_to_DataSet(Dataset: TVirtualTable; nome_Arq: string = '');
    procedure Carregar_datasets(DataSet: TVirtualTable = nil);
    procedure Salvar_datasets(DataSet: TVirtualTable = nil);
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses uMD5Print, uAutocomConsts, ucallMenuFiscal;

{$R *.dfm}

{ TDM }

function TDM.pingar: boolean;
begin
   {if db.Server = C_LOCALHOST then
   begin
      iRetorno := 1;
      Result   := true;
      exit;
   end;}

   Application.ProcessMessages;
   Result := Ping(db.Server, 300);
end;

procedure TDM.TEstoqueAfterPost(DataSet: TDataSet);
begin
   if Assigned(TEstoquesuspenso) then
   if TEstoquesuspenso.Value = 'S' then
   begin
      TEstoque.Delete;
      Log('Carga', Dataset.Name + 'ID ' + TEstoqueid.AsString, ' - está suspenso e foi removido.');
   end;
end;

procedure TDM.XML_to_DataSet(Dataset: TVirtualTable; nome_Arq: string);
var
   aQuery:TMyQuery;
   Lista: TStringList;
   path, s, stlog: string;
   i, j: integer;
begin
   if not pingar then
     raise Exception.Create('Este terminal não está acessando a rede.');

   aQuery := TMyQuery.Create(self);
   aQuery.Connection := DB;

   DM.Pesquisar(aQuery, 'select path from carga where terminal=' + Texto_Mysql(id_Term));

   if aQuery.IsEmpty then
      raise Exception.Create('Este terminal não está listado no servidor.');

   path := aQuery.Fields[0].AsString + id_Term + '\' + nome_Arq + '*.xml';

   Lista := Arquivos(path); //puxa a lista de arquivos nome_Arq*.xml

   if Lista.Count > 0 then
   for i := 0 to Pred(Lista.Count) do
   begin
      s := aQuery.Fields[0].AsString + id_Term + '\' + Lista.Strings[i] + '.xml';

      if pos(nome_Arq, s) > 0 then
      begin
         TCarga.LoadFromFile(s);//abre o arquivo xml
         TCarga.Open;
         Log('Carga', s, IntToStr(TCarga.RecordCount) + ' registros');

         //inicia a atualização do dataset
         Dataset.DisableControls;

         while not TCarga.Eof do
         begin
            Dataset.Close;
            Dataset.Filtered := False;
            Dataset.Filter := 'id=' + Texto_Mysql(TCarga.FieldByName('id').AsString);
            Dataset.Filtered := true;
            Dataset.Open;

            if not Dataset.IsEmpty then //se tem edita
            begin
               Dataset.Edit;
               Log('Carga', Dataset.Name + ' ID ' + TCarga.FieldByName('id').AsString, ' - Alterando');
            end
            else
            begin
               Dataset.Insert;//senao insere o novo registro
               Log('Carga', Dataset.Name + ' ID ' + TCarga.FieldByName('id').AsString, ' - Novo registro');
            end;
            //corre os campos atualizando pelo tcarga
            for j := 0 to Pred(Dataset.FieldCount) do
            begin
                if Dataset.Fields[j].Value <> TCarga.FieldByName(Dataset.Fields[j].FieldName).Value then
                   stlog := stlog + 'Alterado campo ' + Dataset.Fields[j].FieldName + ' de ' +
                            Dataset.Fields[j].AsString + ' para ' + TCarga.FieldByName(Dataset.Fields[j].FieldName).AsString;

                Dataset.Fields[j].Value := TCarga.FieldByName(Dataset.Fields[j].FieldName).Value;
            end;

            Dataset.Post;//apos o post se o dataset tiver, faz a deleção do suspenso =S no evento afterpost
            Log('Carga', Dataset.Name + ' ID ' + TCarga.FieldByName('id').AsString, stlog);
            Log('Carga', Dataset.Name + ' ID ' + TCarga.FieldByName('id').AsString, ' - concluido');
            TCarga.Next;
         end;

         Dataset.Close;
         Dataset.Filtered := False;
         Dataset.EnableControls;
         TCarga.Close;
      end;
   end;
end;

procedure TDM.CallMenuFiscal;
begin
   if Assigned(frmMenuFiscal) then
      frmMenuFiscal.Close;

   if Assigned(frmMenuFiscal) then
      FreeAndNil(frmMenuFiscal);

   frmMenuFiscal := TfrmMenuFiscal.Create(Self);
   frmMenuFiscal.Show;
end;

procedure TDM.Carregar_datasets(DataSet: TVirtualTable);
var
   i: integer;
begin
   if DataSet = nil then
   begin
   try
      for i := 0 to Pred(ComponentCount) do
      begin
         if (Components[i] is TVirtualTable) then
         begin
             dataset := (Components[i] as TVirtualTable);

             if FileExists(Aqui(C_PATH_ARQ_LOCAL_PDV, DataSet.Name + '.xml')) then
               (DataSet as TVirtualTable).LoadFromFile(Aqui(C_PATH_ARQ_LOCAL_PDV, DataSet.Name + '.xml'));
         end;
      end;
   except
      on E: EXCEPTION do
      log('except', 'Carregar_datasets', e.Message);
   end;
   end
   else
   (DataSet as TVirtualTable).LoadFromFile(Aqui(C_PATH_ARQ_LOCAL_PDV, DataSet.Name + '.xml'));
end;

procedure TDM.Salvar_datasets(DataSet: TVirtualTable);
var
   i: integer;
begin
   if DataSet = nil then
   begin
   try
      for i := 0 to Pred(ComponentCount) do
      begin
         if (Components[i] is TVirtualTable) then
         begin
             dataset := (Components[i] as TVirtualTable);
            (DataSet as TVirtualTable).SaveToFile(Aqui(C_PATH_ARQ_LOCAL_PDV, DataSet.Name + '.xml'));
         end;
      end;
   except
      on E: EXCEPTION do
      log('except', 'Salvar_datasets', e.Message);
   end;
   end
   else
   (DataSet as TVirtualTable).SaveToFile(Aqui(C_PATH_ARQ_LOCAL_PDV, DataSet.Name + '.xml'));
end;

function TDM.Conectar: boolean;
begin
   Result := pingar;

   if Result then
   try
      DB.Connect;
      Result := true;
   except
      on E: exception do
      begin
         ShowMessage(C_189 + #13 + 'Erro: ' + E.Message);
         Log('Conect_Erro','CONECTAR', E.Message);
         Result := False;
      end;
   end;
end;


procedure TDM.Abrir_Central_Relat(modo, pasta, arquivo, params: string);
const
   c_modo = '-a-v-p-e-x';
   c_modo1 = '-p-v-x';
begin
      //gerarel.exe <-a -v -p -e> SISTEMA "RELATORIO XYZ" "id=abc" "valor=123" "resto=12.4" .. ate 20
      //gerarel.exe <-x> SISTEMA "RELATORIO XYZ (sem a extensão)" "PATHARQ" "id=abc" "data=01/01/2013" "resto=12.4" .. ate 20 parametros
      // -a modo normal
      //-e modo editor
      //-p modo impressao
      //-v modo visualização
      //-x modo exportação PDF
      //SISTEMA nome da pasta
      //PATHARQ caminho completo do arquivo a ser exportado (somente -x)
      //"RELATORIO XYZ" nome do arquivo (entre aspas duplas)

   if Pos(modo, c_modo)=0  then
     raise Exception.Create('Parâmetro modo inválido');

   if (Pos(modo, c_modo1)>0) then
   begin
      if Trim(pasta) = C_ST_VAZIO then
         raise Exception.Create('Parâmetro modo informado necessita uma pasta informada.');

      if Trim(arquivo) = C_ST_VAZIO then
         raise Exception.Create('Parâmetro modo informado necessita um relatorio informado.');

      pasta   := ' ' + pasta + ' ';
      arquivo := QuotedDuoStr(arquivo);

      if params <> C_ST_VAZIO then
         params := ' ' + params;
   end;

   log('Rel','Enviado', modo + pasta + arquivo + params);
   ExecFile(Aqui('', 'gerarel'), 'open', modo + pasta + arquivo + params, True);
end;

function TDM.ExecSQL(s_script: string; raising: boolean): boolean;
begin
   Result := false;
   erro_script := false;

   with SP do
   begin
      SQL.Text := (s_script);

      if pos('koplin',s_script)<=0 then
         Log(C_221,'SCRIPT', s_script);

      Execute;
      Result := True;
   end;
end;


procedure TDM.LimpaStr(Dataset: TDataset);
var i: integer;//  s:string;
begin
   for i := 0 to dataset.FieldCount - 1 do
   begin
      if(dataset.Fields[i].FieldKind = fkData) and
        (not dataset.Fields[i].ReadOnly) and
        (not VarIsNull(dataset.Fields[i].Value))and
        (dataset.Fields[i].DataType in[ftString, ftWideString]) then
      begin
         dataset.Fields[i].AsString := AnsiUppercase(trim(dataset.Fields[i].AsString));
      end;
   end;
end;

procedure TDM.Pesquisar(qQuery: TMyQuery; s_script: string);
begin
   qQuery.close;
   qQuery.SQL.Text := s_script;

   if pos('koplin',s_script)<=0 then
      Log(C_220,'SQL', s_script);

   qQuery.Open;
end;

end.
