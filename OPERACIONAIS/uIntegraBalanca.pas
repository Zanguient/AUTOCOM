unit uIntegraBalanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFRM, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, rxPlacemnt,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBLookupComboBox,
  cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, RxMemDS, uFuncoes,
  DBCtrls, dxGDIPlusClasses, ExtCtrls, cxLookAndFeels, DBClient, DBCGrids,
  RXCtrls, ACBrBase, ACBrEnterTab, cxNavigator, Easysize, FireDAC.Comp.Script,
  FireDAC.Comp.DataSet, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.Client;

type
  TfrmIntBal = class(Tfrm)
    DS1: TDataSource;
    cxGrid1: TcxGrid;
    tbv: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    tbvsessao: TcxGridDBColumn;
    tbvbalanca: TcxGridDBColumn;
    tbvtransferir: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    tbv1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    RxLabel1: TRxLabel;
    DS2: TDataSource;
    tbv1cod_barra: TcxGridDBColumn;
    tbv1nome: TcxGridDBColumn;
    tbv1tecla_a: TcxGridDBColumn;
    tbv1tecla_n: TcxGridDBColumn;
    DS3: TDataSource;
    g1: TDBCtrlGrid;
    dbt1: TDBText;
    Shape1: TShape;
    Button1: TButton;
    Button2: TButton;
    btnF6: TcxButton;
    cmb1: TComboBox;
    Label1: TRxLabel;
    T1: TFDMemTable;
    T1sessao: TStringField;
    T1balanca: TStringField;
    T1transferir: TBooleanField;
    T1id: TIntegerField;
    T3: TFDMemTable;
    T3tecla: TIntegerField;
    T3teclareal: TIntegerField;
    T3usado: TBooleanField;
    T3repetido: TBooleanField;
    T2: TFDMemTable;
    T2id: TIntegerField;
    T2cod_barra: TStringField;
    T2nome: TStringField;
    T2tecla_a: TIntegerField;
    T2tecla_n: TIntegerField;
    T2validade: TIntegerField;
    tbv1validade: TcxGridDBColumn;
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnF6Click(Sender: TObject);
    procedure cmb1Click(Sender: TObject);
    procedure T2tecla_nValidate(Sender: TField);
    procedure tbvCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure g1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure dbT1MouseEnter(Sender: TObject);
    procedure T2AfterPost(DataSet: TDataSet);
    procedure g1Click(Sender: TObject);
    procedure tbv1cod_barraCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure T3BeforeClose(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure PreencheG1;
    procedure atualiza;
    procedure Popula_CMB;
  public
    { Public declarations }
  end;

var
  frmIntBal: TfrmIntBal;

implementation

uses uBalancaCom, uDM, uAutocomConsts, uMain;

{$R *.dfm}

procedure TfrmIntBal.atualiza;
var lista: TStringList;
begin
   //T3.tag é modificado no evento onafterpost de T2
   if (T3.Tag = 1) and (MessageBox(0, 'O teclado ou a validade foram modificados.'+#13+#10+'Deseja gravar as novas definições?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) =  idYes) then
   begin
      lista := TStringList.Create;
      T2.First;

      while not T2.Eof do  //atualiza pelo campo tecla_n (nova tecla)
      begin
         lista.Add('update estoque set teclado=' + Texto_Mysql(T2tecla_n.Value) +
                   ',validade=' + Texto_Mysql(T2validade.Value) +
                   ' where id=' + Texto_Mysql(T2id.Value)+';');
         T2.Next;
      end;
      DM.DB.ExecSQL(lista.Text);
      lista.Free;
   end;
   T3.Tag := 0;//reseta o T3.tag
end;

procedure TfrmIntBal.btnF6Click(Sender: TObject);   //exportar
var s, serial:string; Balanca: IGeraBalanca; b: boolean;
begin
   atualiza;
   T1.First;
   b := false;

   while not T1.Eof do   //verifica se tem amrcado para atualização
   begin
      b := T1transferir.Value;
      if b then
         break;
      T1.Next;
   end;

   if not b then
      Raise Exception.Create('Nenhuma sessão marcada para transferir.');

   DM.QBalanca.Locate('serie', T1balanca.Value, []);

   if DM.QBalancamarca.Value = 'FILIZOLA' then
      balanca := Createbalanca(modFilizola)
   else
   if DM.QBalancamarca.Value = 'TOLEDO' then
      balanca := Createbalanca(modToledo)
   else
  { if DM.QBalancamarca.Value = 'TOLEDO MGV5' then
      balanca := Createbalanca(modToledo)
   else  }
   if DM.QBalancamarca.Value = 'URANO' then
      balanca := Createbalanca(modUrano)
   else
   if DM.QBalancamarca.Value = 'MAGNA' then
      balanca := Createbalanca(modMagna);

   T1.First;
   serial := T1balanca.Value;

   while not T1.Eof do
   begin
      if T1transferir.Value then
      begin
         DM.QBalanca.Locate('sessao', T1balanca.Value, []);
         DM.QSessao.Locate('nome', T1sessao.Value, []);

         DM.Q1.Open('select e.id, e.cod_gtin,e.nome, e.vrvenda_vista, ' +
                    'u.fracionavel, s.nome as nsessao, receita, nutricional, ' +
                    'e.validade, e.teclado from estoque e, unidade u, sessao s ' +
                     'where u.id = e.unidade and e.suspenso = "N" and e.balanca="S" and e.suspenso = "N" and e.sessao = ' +
                     DM.QSessaoid.AsString + ' and s.id = e.sessao and e.teclado > 0 order by e.teclado'
         );

         if serial <> T1balanca.Value then
            serial := T1balanca.Value;

{
        ModeloEtiqueta  := 1;
        Tipo            := tpvPeso;
        Codigo          := I;
        Descricao       := Format('Descricao item %d', [I]);
        ValorVenda      := 1.23;
        Validade        := 15;
        Tecla           := 0;
        Receita         := Format('Receita do item %d', [I]);
//        Nutricional     := Format('Informação Nutricional do item %d', [I]);;

        Nutricional.Codigo:=I;
        Nutricional.Qtd :=1;
        Nutricional.UndPorcao := tpGramas;
        Nutricional.PartInteira :=1;
        Nutricional.PartDecimal:= tpPara12;
        Nutricional.MedCaseira := tpColherSopa;
        Nutricional.ValorEnergetico := 20;
        Nutricional.Carboidrato := 2;
        Nutricional.Proteina := 3;
        Nutricional.GorduraTotal:= 4;
        Nutricional.GorduraSaturada:=5;
        Nutricional.GorduraTrans := 6;
        Nutricional.Fibra := 7;
        Nutricional.Sodio :=8;

        Setor.Codigo    := 1;
        Setor.Descricao := 'GERAL';
}

         with balanca do
          begin
            try
              while not DM.Q1.Eof do
              begin
                with Produtos.New do
                begin
                  Setor.Codigo    := T1balanca.AsInteger;
                  Setor.Descricao := DM.Q1.FieldByName('nsessao').AsString;
                  ModeloEtiqueta  := 0;           // COLOCAR UMA FORMA DE CONFIGURAR
                  s               := Trim(copy(DM.Q1.FieldByName('cod_gtin').AsString,2,6));
                  Codigo          := strtoint(s);
                  ValorVenda      := DM.Q1.FieldByName('vrvenda_vista').AsCurrency;
                  Validade        := DM.Q1.FieldByName('validade').AsInteger;
                  Descricao       := DM.Q1.FieldByName('nome').AsString;
                  Receita         := DM.Q1.FieldByName('receita').value;
                  Tecla           := DM.Q1.FieldByName('teclado').value;

                  if DM.Q1.FieldByName('fracionavel').AsString= 'S' then
                    Tipo := tpvPeso
                  else
                    Tipo := tpvUnidade;
                end;

                DM.Q1.Next;
              end;
            finally
            end;
         end;
      end;
      T1.Next;
   end;

   DM.DB.ExecSQL('CREATE TABLE if not exists balanca_path (marca varchar(30) NULL DEFAULT null,' +
                 'path varchar(250) NULL DEFAULT NULL,path_exe varchar(250) NULL DEFAULT NULL);'
   );

   DM.Q5.OPen('select * from balanca_path');

   if DM.Q5.IsEmpty then
   begin
      s := DirProgramFiles;
      s := BuscaTroca(s,'\','|');
      s := BuscaTroca(s,'|','\\');
      s := BuscaTroca(s,'|','\\');

      DM.DB.ExecSQL('INSERT INTO balanca_path SET marca="FILIZOLA", path="C:\\FILIZOLA", path_exe="C:\\Filizola\\SmartEditor\\SmartEditor.exe";' +
                    'INSERT INTO balanca_path SET marca="TOLEDO", path="' + s + 'Toledo\\MGV5' + '", path_exe="' + s + 'Toledo\\MGV5\\MGV5.exe' + '";' +
                    'INSERT INTO balanca_path SET marca="URANO", path="C:\\URANO", path_exe="C:\\URANO";' +
                    'INSERT INTO balanca_path SET marca="MAGNA", path="C:\\MAGNA", path_exe="C:\\MAGNA";'
      );
   end;

   DM.Q5.OPen('select * from balanca_path where marca="' + DM.QBalancamarca.Value + '"');

   s := DM.Q5.FieldByName('path').AsString;

   if balanca.GerarArquivo(s) then
   begin
      s := DM.Q5.FieldByName('path_exe').AsString;
      ExecFile(s ,'open','');
      Close;
   end
   else
     Application.MessageBox(PWideChar('Ocorreram erros na geração do arquivo (' + s + ')!'), 'Erro.', MB_ICONERROR+MB_OK);
end;

procedure TfrmIntBal.Button1Click(Sender: TObject);
var i: integer;
begin
   T2.Tag := 0;
   T2.DisableControls;
   T3.DisableControls;
   T2.First;
   i := 1;

   while not T2.Eof do
   begin
      T2.Edit;
      if TButton(sender).Tag = 0 then
         T2tecla_n.Value := 0
      else
      begin
         T2tecla_n.Value := i;
         inc(i);
         if i in[64,128] then
            inc(i);
         if i > 191 then
            break;
      end;
         T2.Post;
      T2.Next;
   end;

   T2.First;
   T2.Tag := 1;
   preencheG1;
   T2.EnableControls;
   T3.EnableControls;
end;

procedure TfrmIntBal.Button3Click(Sender: TObject);
var
  I: Integer;
  Balanca: IGeraBalanca;
  s: string;
begin
  s := 'suporte198';

  if not InputSenha('Acesso Restrito', 'Senha', s) then
    exit;

  try
   DM.QBalanca.Locate('serie', T1balanca.Value, []);

   if DM.QBalancamarca.Value = 'FILIZOLA' then
      balanca := Createbalanca(modFilizola)
   else
   if DM.QBalancamarca.Value = 'TOLEDO' then
      balanca := Createbalanca(modToledo)
   else
  { if DM.QBalancamarca.Value = 'TOLEDO MGV5' then
      balanca := Createbalanca(modToledo)
   else  }
   if DM.QBalancamarca.Value = 'URANO' then
      balanca := Createbalanca(modUrano)
   else
   if DM.QBalancamarca.Value = 'MAGNA' then
      balanca := Createbalanca(modMagna);

    for I := 1 to 10 do
    begin
      with balanca.Produtos.New do
      begin
         ModeloEtiqueta  := 1;
         Tipo            := tpvPeso;
         Codigo          := I;
         Descricao       := Format('Descricao item %d', [I]);
         ValorVenda      := 1.23;
         Validade        := 15;
         Tecla           := i;
         Receita         := Format('Receita do item %d', [I]);
         Setor.Codigo    := 1;
         Setor.Descricao := 'BALANCA';
      end;
    end;

{
                  ModeloEtiqueta  := 0;           // COLOCAR UMA FORMA DE CONFIGURAR
                  s               := copy(DM.Q1.FieldByName('cod_barra').AsString,2,6);
                  Codigo          := strtoint(s);
                  ValorVenda      := DM.Q1.FieldByName('vrvenda').AsCurrency;
                  Validade        := DM.Q1.FieldByName('validade').AsInteger;
                  Descricao       := DM.Q1.FieldByName('nome').AsString;
                  Receita         := DM.Q1.FieldByName('receita').value;
                  Tecla           := DM.Q1.FieldByName('teclado').value;
}

    // gerar os arquivos para o diretório, informe somente o caminho do diretório
    balanca.GerarArquivo(Aqui('Teste' , ''));
    ShowMessage('Arquivo gerado com sucesso!');
  except
    on E: Exception do
    begin
      // todo erro do componente levanta uma excessão
      ShowMessage('Ocorreu o seguinte erro:' + sLineBreak + E.Message);
    end;
  end;
end;

procedure TfrmIntBal.cmb1Click(Sender: TObject);
begin
  T2.close;
  T3.Close;

  DM.QBalanca.OPen('select * from balanca where marca = "' + cmb1.Text + '"' );

  DM.QSessao.OPen('select * from sessao where id in(select sessao from balanca where marca = "' + cmb1.Text + '")');

  T1.Close;
  T1.Open;

  while not DM.QSessao.Eof do
  begin
     DM.Q1.OPen('select distinct(serie) from balanca where marca = "' + cmb1.Text + '" and sessao = "' + DM.QSessaoid.AsString + '"');

     while not DM.q1.Eof do
     begin
        T1.Insert;
        T1sessao.Value     := DM.QSessaonome.Value;

        if DM.QBalanca.Locate('sessao;serie',
               VarArrayOf([DM.QSessaoid.AsString, DM.Q1.fields[0].AsString]) , []) then
           T1balanca.Value := DM.Q1.fields[0].AsString;//DM.QBalancasessao.Value;

        T1id.Value         := DM.QSessaoid.Value;
        T1transferir.Value := False;

        if DM.q1.RecordCount = 1 then
        begin
          // T1balanca.Value := DM.QBalancasessao.Value;
           T1transferir.Value := True;
        end;

        T1.Post;
        DM.q1.Next;
     end;
     DM.QSessao.Next;
  end;
  btnf6.Enabled := true;
end;

procedure TfrmIntBal.cxButton1Click(Sender: TObject);
begin
   frmMain.Balancas.Click;
   T1.close;
   T2.close;
   T3.Close;
   Popula_CMB;
end;

procedure TfrmIntBal.dbT1MouseEnter(Sender: TObject);
begin
   dbT1.Hint := T3teclareal.AsString;
end;

procedure TfrmIntBal.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'INTEGRAÇÃO BALANÇAS ' + C_117;
end;

procedure TfrmIntBal.FormShow(Sender: TObject);
begin
  inherited;

  DM.QSessao.OPen('select * from sessao where balanca = "S" order by nome');
  Popula_CMB;
  cmb1.Text := 'ESCOLHA A BALANÇA';
end;

procedure TfrmIntBal.g1Click(Sender: TObject);//tabelinha de teclas
begin
   if T3usado.Value = true then //faz o locate em T2 e aponta na grid
      if T2.Locate('tecla_n', T3teclareal.Value, []) then
         cxGrid2.SetFocus;
end;

procedure TfrmIntBal.g1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin
   if T3usado.Value = true then  //pinta a tabelinha
      shape1.Brush.Color := cllime
   else
      shape1.Brush.Color := $00569FE9;
end;

procedure TfrmIntBal.Popula_CMB;
begin
  DM.Q1.OPen('select distinct marca from balanca order by marca');
  cmb1.Items.Clear;

  while not DM.Q1.Eof do  //preenche cmb1
  begin
     cmb1.Items.Add(DM.Q1.Fields[0].asstring);
     DM.Q1.Next;
  end;
  cmb1.Text := '';
  DM.Q1.Close;
end;

procedure TfrmIntBal.PreencheG1;
var i, j, limite, adic1, adic2: integer;
begin
   T3.Close;
   T3.Open;
   g1.hide;

   limite := 63;
   adic1  := 64;
   adic2  := 128;

   if pos('FILIZOLA', CMB1.Text) > 0 then
   begin
      limite := 63;
      adic1  := 64;
      adic2  := 128;
   end
   else
   if pos('TOLEDO', CMB1.Text) > 0 then
   begin
      limite := 60;
      adic1  := 59;
      adic2  := 119;
   end;

   g1.ColCount := limite;

   //enche g1 com 3 linhas e <LIMITE> colunas numeradas de 1 a <LIMITE>
   for j := 3 downto 1 do
   for i := limite downto 1 do
   case j of
      1: T3.InsertRecord([i, i, false, false]);//teclado 1 (1-63)
      2: T3.InsertRecord([i, i+ adic1, false, false]);//teclado 2 (65-127)
      3: T3.InsertRecord([i, i + adic2, false, false]);//teclado 3 (129-191)
   end;

   T2.First;

   while not T2.Eof do //marca como usado ou nao
   begin
      if T2tecla_a.Value <> T2tecla_n.Value then
      if T3.Locate('teclareal', T2tecla_a.Value, []) then
      begin
         T3.Edit;
         T3usado.Value := false;
         T3.Tag := 1;
         T3.Post;
      end;

      if T3.Locate('teclareal', T2tecla_n.Value, []) then
      begin
         T3.Edit;
         T3usado.Value := true;
         T3.Post;
      end;
      T2.Next;
   end;
   g1.Show;
end;

procedure TfrmIntBal.T2AfterPost(DataSet: TDataSet);
var i: integer;
begin
   if T2.Tag = 1 then //atualiza os dados sempre q da o post e tag = 1
   begin
      i := T2id.Value;
      T3.DisableControls;
      T2.DisableControls;
      PreencheG1;
      T2.Locate('id', i, []);
      T2.EnableControls;
      T3.EnableControls;
      T3.Tag := 1;
   end;
end;

procedure TfrmIntBal.T2tecla_nValidate(Sender: TField);
begin
   if T2.Tag = 1 then
   begin
      if(TField(sender).AsInteger in [64, 128])or(TField(sender).AsInteger > 191) then
         raise Exception.Create('Tecla não pode ter o valor ' + TField(sender).AsString);

      if(TField(sender).AsInteger < 0)  then
         TField(sender).AsInteger := 0;

      if (TField(sender).AsInteger > 0) and
         (T3.Locate('teclareal', TField(sender).AsInteger, []))and
         (T3usado.Value = True) then
         raise Exception.Create('Tecla já em uso');
   end;
end;

procedure TfrmIntBal.T3BeforeClose(DataSet: TDataSet);
begin
   while not Dataset.IsEmpty do
   Dataset.Delete;
end;

//pintura da grid de T2
procedure TfrmIntBal.tbv1cod_barraCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var ARec: TRect; val: integer;
begin
   ARec := AViewInfo.Bounds;
   ACanvas.Canvas.Brush.Style := bsSolid;
   ACanvas.Canvas.Brush.Color := clwhite;
   val := VarAsType(AViewInfo.GridRecord.DisplayTexts[tbv1tecla_n.Index], varSmallint);

   if val = 0 then
     ACanvas.Canvas.brush.Color := $00569FE9
   else
     ACanvas.Canvas.brush.Color := $00C9E6BD;

   ACanvas.Canvas.FillRect(ARec);
end;

procedure TfrmIntBal.tbvCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   atualiza;
   DM.QEstoque.OPen('select * from estoque where balanca="S" and sessao=' + Texto_Mysql(T1id.Value));
   T2.EnableControls;
   T2.Close;
   T2.Tag := 0;
   T2.Open;
   T2.DisableControls;

   while not DM.QEstoque.Eof do
   begin
      T2.InsertRecord([DM.QEstoqueid.Value,
                       DM.QEstoquecod_gtin.Value,
                       DM.QEstoquenome.Value,
                       DM.QEstoqueteclado.Value,
                       DM.QEstoqueteclado.Value,
                       DM.QEstoquevalidade.Value]


      );
      DM.QEstoque.Next;
   end;

   if not T2.IsEmpty then
   begin
      T3.DisableControls;
      PreencheG1;
      T3.EnableControls;
   end;

   T2.EnableControls;
   T2.Tag := 1;
end;

end.
