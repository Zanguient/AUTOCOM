unit uBalancaCom;

interface

uses
  SysUtils, Variants, Classes;

type
  EBalancaxception = class(Exception);
  TTipoVenda = (tpvPeso, tpvUnidade, tpvEAN13);
  TModeloBalanca = (modFilizola, modToledo, modUrano, modMagna);
  TProgressoEvent = procedure(Mensagem: String; ProgressoAtual, ProgressoTotal: Integer) of object;

  ISetorBalanca = interface(IInterface)
    ['{142F436E-10FC-41BF-A0B0-B8999A2BF600}']
    function GetCodigo: Integer;
    function GetDescricao: String;
    procedure SetCodigo(const Value: Integer);
    procedure SetDescricao(const Value: String);
    property Codigo: Integer read GetCodigo write SetCodigo;
    property Descricao: String read GetDescricao write SetDescricao;
  end;

  IItemBalanca = interface(IInterface)
    ['{9E24D258-DF9F-4696-BDF8-5F877A1C2BD9}']
    procedure SetCodigo(const Value: Integer);
    procedure SetSetor(const Value: ISetorBalanca);
    procedure SetDescricao(const Value: String);
    procedure SetModeloEtiqueta(const Value: Integer);
    procedure SetReceita(const Value: String);
    procedure SetTipo(const Value: TTipoVenda);
    procedure SetValidade(const Value: Integer);
    procedure SetValorVenda(const Value: Currency);
    function GetCodigo: Integer;
    function GetSetor: ISetorBalanca;
    function GetDescricao: String;
    function GetModeloEtiqueta: Integer;
    function GetReceita: String;
    function GetTipo: TTipoVenda;
    function GetValidade: Integer;
    function GetValorVenda: Currency;
    function GetTecla: Integer;
    procedure SetTecla(const Value: Integer);
    property Setor: ISetorBalanca read GetSetor write SetSetor;
    property ModeloEtiqueta: Integer read GetModeloEtiqueta write SetModeloEtiqueta;
    property Tipo: TTipoVenda read GetTipo write SetTipo;
    property Codigo: Integer read GetCodigo write SetCodigo;
    property ValorVenda: Currency read GetValorVenda write SetValorVenda;
    property Validade: Integer read GetValidade write SetValidade;
    property Descricao: String read GetDescricao write SetDescricao;
    property Receita: String read GetReceita write SetReceita;
    property Tecla: Integer read GetTecla write SetTecla;
  End;

  IItensBalanca = Interface(IInterfaceList)
    ['{FC6A6C01-E325-4E53-915B-58E6C0F3F44B}']
    function GetItem(Index: Integer): IItemBalanca;
    procedure SetItem(Index: Integer; const Value: IItemBalanca);
    function New: IItemBalanca;
    property Items[Index: Integer]: IItemBalanca read GetItem write SetItem; default;
  End;

  IGeraBalanca = Interface(IInterface)
    ['{34035650-5FFF-4250-9035-21D0C254B0C5}']
    function GetonProgresso: TProgressoEvent;
    procedure SetonProgresso(const Value: TProgressoEvent);
    function GetProdutos: IItensBalanca;
    procedure SetProdutos(const Value: IItensBalanca);
    property onProgresso: TProgressoEvent read GetonProgresso write SetonProgresso;
    property Produtos: IItensBalanca read GetProdutos write SetProdutos;
    function GerarArquivo(Local: String): Boolean;
  End;

  { Factoring da Interface IGeraBalanca }
  function CreateBalanca(Modelo: TModeloBalanca): IGeraBalanca;

implementation

const
  Debug: Boolean = FALSE;  // Utlizar para separar os valores que vao para o arquivo

type
  TBalancaObject = class(TInterfacedObject)
  private
    function GetTipoProdutoFilizola(Tipo: TTipoVenda): String;
  protected
    function GetTipoProdutoToledo(Tipo: TTipoVenda): String;
    function GetTipoProdutoMagna(Tipo: TTipoVenda): String;
    function GetTipoProdutoUrano(Tipo: TTipoVenda): string;
    function RFill(Str: string; Tamanho: Integer = 0; Caracter: Char = ' '): string; overload;
    function LFIll(Str: string; Tamanho: Integer = 0; Caracter: Char = '0'): string; overload;
    function LFIll(Valor: Currency; Tamanho: Integer; Decimais: Integer = 2; Caracter: Char = '0'): string; overload;
    function LFIll(Valor: Integer; Tamanho: Integer; Caracter: Char = '0'): string; overload;
  end;

  TSetorBalanca = class(TBalancaObject, ISetorBalanca)
  private
    FCodigo: Integer;
    FDescricao: String;
    function GetCodigo: Integer;
    function GetDescricao: String;
    procedure SetCodigo(const Value: Integer);
    procedure SetDescricao(const Value: String);
  public
    constructor Create;
    property Codigo: Integer read GetCodigo write SetCodigo;
    property Descricao: String read GetDescricao write SetDescricao;
  end;

  TItemBalanca = class(TBalancaObject, IItemBalanca)
  private
    FReceita: String;
    FValorVenda: Currency;
    FModeloEtiqueta: Integer;
    FDescricao: String;
    FCodigo: Integer;
    FSetor: ISetorBalanca;
    FTipo: TTipoVenda;
    FValidade: Integer;
    FTecla: Integer;
    procedure SetCodigo(const Value: Integer);
    procedure SetDescricao(const Value: String);
    procedure SetModeloEtiqueta(const Value: Integer);
    procedure SetReceita(const Value: String);
    procedure SetTipo(const Value: TTipoVenda);
    procedure SetValidade(const Value: Integer);
    procedure SetValorVenda(const Value: Currency);
    function GetCodigo: Integer;
    function GetDescricao: String;
    function GetModeloEtiqueta: Integer;
    function GetReceita: String;
    function GetTipo: TTipoVenda;
    function GetValidade: Integer;
    function GetValorVenda: Currency;
    function GetSetor: ISetorBalanca;
    procedure SetSetor(const Value: ISetorBalanca);
    function GetTecla: Integer;
    procedure SetTecla(const Value: Integer);
  public
    constructor Create(Owner: TObject);
    property Setor: ISetorBalanca read GetSetor write SetSetor;
    property ModeloEtiqueta: Integer read GetModeloEtiqueta write SetModeloEtiqueta;
    property Tipo: TTipoVenda read GetTipo write SetTipo;
    property Codigo: Integer read GetCodigo write SetCodigo;
    property ValorVenda: Currency read GetValorVenda write SetValorVenda;
    property Validade: Integer read GetValidade write SetValidade;
    property Descricao: String read GetDescricao write SetDescricao;
    property Receita: String read GetReceita write SetReceita;
    property Tecla: Integer read GetTecla write SetTecla;
  end;

  TItensBalanca = class(TInterfaceList, IItensBalanca)
  private
    function GetItem(Index: Integer): IItemBalanca;
    procedure SetItem(Index: Integer; const Value: IItemBalanca);
  public
    function New: IItemBalanca;
    property Items[Index: Integer]: IItemBalanca read GetItem write SetItem; default;
  end;

  TGeraBalanca = class(TBalancaObject, IGeraBalanca)
  private
    FModelo: TModeloBalanca;
    FonProgresso: TProgressoEvent;
    FProdutos: IItensBalanca;
    function GetonProgresso: TProgressoEvent;
    procedure SetonProgresso(const Value: TProgressoEvent);
    function GetProdutos: IItensBalanca;
    procedure SetProdutos(const Value: IItensBalanca);
    function GetModelo: TModeloBalanca;
    function GetNomeArquivoProduto: String;
    procedure PreencherToledo(Arquivo, Nutricional, Setor: TStringList);
    procedure PreencherFilizola(Arquivo, Setor: TStringList);
    procedure PreencherUrano(Arquivo: TStringList);
    procedure PreencherMagna(Arquivo: TStringList);
    function GetNomeArquivoSetor: String;
    function GetNomeArquivoReceita: String;
    function GetNomeArquivoNutricional: String;
    function CalcularSoma(const xStr: string): Integer;
  public
    constructor Create(Modelo: TModeloBalanca);
    property onProgresso: TProgressoEvent read GetonProgresso write SetonProgresso;
    property Produtos: IItensBalanca read GetProdutos write SetProdutos;
    function GerarArquivo(Local: String): Boolean;
  end;

{ Factoring da Interface IGeraBalanca }

function CreateBalanca(Modelo: TModeloBalanca): IGeraBalanca;
begin
  Result := TGeraBalanca.Create(Modelo);
end;

{ TBalancaObject }

function TBalancaObject.RFill(Str: string; Tamanho: Integer = 0; Caracter: Char = ' '): string;
begin
  if (Tamanho > 0) and (Length(Str) > Tamanho) then
    Result := Copy(Str, 1, Tamanho)
  else
    Result := Str + StringOfChar(Caracter, Tamanho - Length(Str));

  if Debug then
    Result := Result + ' | ';
end;

function TBalancaObject.LFill(Str: string; Tamanho: Integer = 0; Caracter: Char = '0'): string;
begin
  if (Tamanho > 0) and (Length(Str) > Tamanho) then
    Result := Copy(Str, 1, Tamanho)
  else
    Result := StringOfChar(Caracter, Tamanho - length(Str)) + Str;

  if Debug then
    Result := Result + ' | ';
end;

function TBalancaObject.LFill(Valor: Currency; Tamanho: Integer; Decimais: Integer = 2; Caracter: Char = '0'): string;
var
  i, p: Integer;
begin
  p := 1;

  for i := 1 to Decimais do
    p := p * 10;

  Result := LFill(Trunc(Valor * p), Tamanho, Caracter);
end;

function TBalancaObject.GetTipoProdutoMagna(Tipo: TTipoVenda): String;
begin
  case Tipo of
    tpvPeso    : Result := '1';  //peso
    tpvUnidade : Result := '3';  //unidade
    //tpvEAN13   : Result := '2';
  end;

  if Debug then
    Result := Result + ' | ';
end;

function TBalancaObject.GetTipoProdutoUrano(Tipo: TTipoVenda): string;
begin
  case Tipo of
    tpvPeso    : Result:='P';
    tpvUnidade : Result:='U';
  end;
end;

function TBalancaObject.GetTipoProdutoToledo(Tipo: TTipoVenda): String;
begin
  case Tipo of
    tpvPeso    : Result := '0';
    tpvUnidade : Result := '1';
    tpvEAN13   : Result := '2';
  end;

  if Debug then
    Result := Result + ' | ';
end;

function TBalancaObject.GetTipoProdutoFilizola(Tipo: TTipoVenda): String;
begin
  case Tipo of
    tpvPeso    : Result := 'P';
    tpvUnidade : Result := 'U';
  end;

  if Debug then
    Result := Result + ' | ';
end;

function TBalancaObject.LFill(Valor: Integer; Tamanho: Integer; Caracter: Char = '0'): string;
begin
  Result := LFill(IntToStr(Valor), Tamanho, Caracter);
end;

{ TItensBalanca }

function TItensBalanca.New: IItemBalanca;
begin
  Result := TItemBalanca.Create(Self);
  Add(Result);
end;

function TItensBalanca.GetItem(Index: Integer): IItemBalanca;
begin
  Result := Get(Index) as IItemBalanca;
end;

procedure TItensBalanca.SetItem(Index: Integer; const Value: IItemBalanca);
begin
  Put(Index, Value);
end;

{ TSetorBalanca }

constructor TSetorBalanca.Create;
begin
  FCodigo    := 0;
  FDescricao := '';
end;

function TSetorBalanca.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TSetorBalanca.GetDescricao: String;
begin
  Result := FDescricao;
end;

procedure TSetorBalanca.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TSetorBalanca.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

{ TItemBalanca }

constructor TItemBalanca.Create(Owner: TObject);
begin
  // Criacao da propriedade Setor
  FSetor := TSetorBalanca.Create;

  // Iniciar os campos de valores
  FCodigo          := 0;
  FDescricao       := '';
  FTipo            := tpvPeso;
  FValorVenda      := 0.00;
  FModeloEtiqueta  := 0;
  FReceita         := '';
  FValidade        := 0;
end;

function TItemBalanca.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TItemBalanca.GetDescricao: String;
begin
  Result := FDescricao;
end;

function TItemBalanca.GetModeloEtiqueta: Integer;
begin
  Result := FModeloEtiqueta;
end;

function TItemBalanca.GetReceita: String;
begin
  Result := FReceita;
end;

function TItemBalanca.GetSetor: ISetorBalanca;
begin
  Result := FSetor;
end;

function TItemBalanca.GetTecla: Integer;
begin
  Result := FTecla;
end;

function TItemBalanca.GetTipo: TTipoVenda;
begin
  Result := FTipo;
end;

function TItemBalanca.GetValidade: Integer;
begin
  Result := FValidade;
end;

function TItemBalanca.GetValorVenda: Currency;
begin
    Result := FValorVenda;
end;

procedure TItemBalanca.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TItemBalanca.SetDescricao(const Value: String);
begin
  if Length(Value) > 50 then
    FDescricao := Copy(Value, 1, 50)
  else
    FDescricao := Value
end;

procedure TItemBalanca.SetModeloEtiqueta(const Value: Integer);
begin
  FModeloEtiqueta := Value;
end;

procedure TItemBalanca.SetReceita(const Value: String);
begin
  if Length(Value) > 250 then
    FReceita := Copy(Value, 1, 250)
  else
    FReceita := Value;
end;

procedure TItemBalanca.SetSetor(const Value: ISetorBalanca);
begin
  FSetor := Value;
end;

procedure TItemBalanca.SetTecla(const Value: Integer);
begin
  FTecla := Value;
end;

procedure TItemBalanca.SetTipo(const Value: TTipoVenda);
begin
  FTipo := Value;
end;

procedure TItemBalanca.SetValidade(const Value: Integer);
begin
  if Value > 0 then
    FValidade := Value
  else
    FValidade := 0;
end;

procedure TItemBalanca.SetValorVenda(const Value: Currency);
begin
  FValorVenda := Value;
end;

{ TGeraBalanca }

constructor TGeraBalanca.Create(Modelo: TModeloBalanca);
begin
  FModelo := Modelo;
  FProdutos := TItensBalanca.Create;
end;

function TGeraBalanca.GetProdutos: IItensBalanca;
begin
  Result := FProdutos;
end;

function TGeraBalanca.GetModelo: TModeloBalanca;
begin
  Result := FModelo;
end;

function TGeraBalanca.GetNomeArquivoProduto: String;
begin
  case GetModelo of
    modFilizola : Result := 'CADTXT.TXT';
    modToledo   : Result := 'TXITENS.TXT';
    modUrano    : Result := 'PRODUTOS.TXT';
    modMagna    : Result := 'Produtos.TXT';
  end;
end;

function TGeraBalanca.GetNomeArquivoSetor: String;
begin
  case GetModelo of
    modFilizola : Result := 'SETORTXT.TXT';
    modToledo   : Result := 'TXTECLAS.TXT';
    //modUrano    : Result := 'NomeArquivoUrano.TXT';
    modMagna    : Result := 'Setor.TXT';
  end;
end;

function TGeraBalanca.GetNomeArquivoReceita: String;
begin
  // Toledo nao possui arquivo de Receita a parte

  case GetModelo of
    modFilizola : Result := 'REC_ASS.TXT';
    modUrano    : Result := 'NomeArquivoUrano.TXT';
  end;
end;

function TGeraBalanca.GetNomeArquivoNutricional: String;
begin
  // A filizola nao possui arquivo nutricional aparte as informações
  // são incluídas no mesmo arquivo de itens.

  case GetModelo of
    modToledo   : Result := 'INFNUTRI.TXT';
    //modUrano    : Result := 'NomeArquivoUrano.TXT';
  end;
end;

function TGeraBalanca.GetonProgresso: TProgressoEvent;
begin
  Result := FonProgresso;
end;

procedure TGeraBalanca.SetProdutos(const Value: IItensBalanca);
begin
  FProdutos := Value;
end;

procedure TGeraBalanca.SetonProgresso(const Value: TProgressoEvent);
begin
  FonProgresso := Value;
end;

procedure TGeraBalanca.PreencherFilizola(Arquivo, Setor: TStringList);
var
  i, Total, teclado: Integer;
begin
  Total := Produtos.Count;
 // Setor.Add('OBS01'); //TECLADO 1

  for i := 0 to Total - 1 do
  begin
    Arquivo.Add(
      LFIll(Produtos[i].Codigo, 6) +
      GetTipoProdutoFilizola(Produtos[i].Tipo) +
      RFIll(Produtos[i].Descricao, 22) +
      LFIll(Produtos[i].ValorVenda, 7, 2) +
      LFIll(Produtos[i].Validade, 3)
    );

    Setor.Add(
      RFill(Produtos[i].Setor.Descricao, 12) +
      LFIll(Produtos[i].Codigo, 6) +
      LFIll(i + 1, 4) +
      LFill(Produtos[i].Tecla, 3)
    );
   // onProgresso(Format('Gerando produto %6.6d %s', [Produtos[i].Codigo, Produtos[i].Descricao]), i, Total);
  end;
end;

procedure TGeraBalanca.PreencherMagna(Arquivo: TStringList);
var
   i, total: integer;
begin
  Total := Produtos.Count;
  for i := 0 to Total - 1 do
  begin
    Arquivo.Add(
      IntToStr(Produtos[i].Codigo)  + #9 + {PLU}//
      Trim(Copy(Produtos[i].Descricao, 1,50)) + #9 {DESCRIÇÃO}+
      FloatToStrF(Produtos[i].ValorVenda, ffnumber,15,3) {PREÇO}+ #9 +
      GetTipoProdutoMagna(Produtos[i].Tipo)  + #9 +
      IntToStr(Produtos[i].Codigo) {CODIGO} + #9 +
      LFIll(Produtos[i].Setor.Codigo, 1){DEPTO} + #9 +
      '0'{LFIll(Produtos[i].Setor.Codigo, 2){GRUPO} + #9 +
      '0,000' + #9 + {IMPOSTO}
      LFIll(Produtos[i].Validade, 1) {FCAD}+ #9 +
      '0'#9'0' //Trim(Copy(Produtos[i].Receita,1,500)){INGREDIENTE} +} '0,0'//#9+#13+#10
    );
  end;

  Arquivo.Add('==================================================');
  Arquivo.Add('==================================================');
  Arquivo.Add('==================================================');
end;

procedure TGeraBalanca.PreencherToledo(Arquivo, Nutricional, Setor: TStringList);
var
  i, Total, teclado, tecla: Integer;
begin
  Total := Produtos.Count;

  for i := 0 to Total - 1 do
  begin
    Arquivo.Add(
      LFIll(Produtos[i].Setor.Codigo, 2) +
      LFIll(Produtos[i].ModeloEtiqueta, 2) +
      GetTipoProdutoToledo(Produtos[i].Tipo) +
      LFIll(Produtos[i].Codigo, 6) +
      LFIll(Produtos[i].ValorVenda, 6, 2) +
      LFIll(Produtos[i].Validade, 3) +
      RFIll(Produtos[i].Descricao, 50) +
      RFIll(Produtos[i].Receita, 250)
    );

     //teclas
     //101020000020ITEM0002Linha 02Linha 03C:\Abacaxi.bmp
     //NN(2)T(1)CC(2)IIIIII(6)O(1)L1(8)L2(8)L3(8)P(255).

     case Produtos[i].Tecla of
           1..60: teclado := 1;
         61..120: teclado := 2;
        121..180: teclado := 3;
     end;

     case Produtos[i].Tecla of
           1..60: tecla := 0;
         61..120: tecla := 60;
        121..180: tecla := 120;
     end;

    Setor.Add(LFIll(Produtos[i].Setor.Codigo, 2) + //teclado
              LFill(teclado, 1) + //teclado (1,2 ou 3)
              LFill(Produtos[i].Tecla - tecla, 2) +//tecla
              LFIll(Produtos[i].Codigo, 6) +//codigo
              '0' +//texto
              RFill(Copy(Produtos[i].Descricao,1,8), 8, ' ') +//linha 1
              RFill(Copy(Produtos[i].Descricao,9,8), 8, ' ') +//linha 2
              RFill(Copy(Produtos[i].Descricao, 17,8), 8, ' ') +//linha 3
              Rfill('',255, ' ')                             //tranqueira
    );

   // onProgresso(Format('Gerando produto %6.6d %s', [Produtos[i].Codigo, Produtos[i].Descricao]), i, Total);
  end;
end;

function TGeraBalanca.CalcularSoma(const xStr: string): Integer;
var
  I, Vl: Integer;
begin
  result:=0;
  Vl:=0;
  if Length(xStr)<1 then
    exit;
  for I:=1 to Length(xStr) do
  begin
    Vl:=Vl+Ord(xStr[I]);
  end;
  result:=Vl;
end;

procedure TGeraBalanca.PreencherUrano(Arquivo: TStringList);
var
  i, Total, xtam: Integer;
  xnutric: string;
begin
  //modelo do arquivo: serve somente para as novas balanças urano (linha top e topmax)
  //0x10+0x02+codigo[5]+pesagem[35]+chksum[4]+0x03+0x13+0x10
                //      pesagem[35]=tipoproduto[1]+descricao[20]+preco[9]+validade[4]+tipovalidade[1]

  Total := Produtos.Count;

  for i := 0 to Total - 1 do
  begin
    //linha do produto
    Arquivo.Add(#10#02 +
      LFIll(Produtos[i].Codigo, 5) +
      GetTipoProdutoUrano(Produtos[i].Tipo) +
      RFIll(Produtos[i].Descricao, 20) +
      FormatCurr('000000.00', Produtos[i].ValorVenda) +
      LFIll(Produtos[i].Validade, 4) +
      'D'
    );
    xtam := CalcularSoma(Arquivo[Arquivo.Count-1]);
    Arquivo[Arquivo.Count-1] := Arquivo[Arquivo.Count-1] + IntToHex(xtam, 4) + #03;

  (*  if Produtos[i].Nutricional.FQtd>0 then
    begin
      //linha da informação nutricional
      //0x11+0x02+codigo[5]+pesagem[35]+informacoes nutricionais[258]+chksum[4]+0x03+0x13+0x10
                                      //informacoes nutricionais[258]=1 linha de 41 caracteres para porção
                                      // e 8 linhas de 21 caracteres para [calorias,carboidratos,proteínas,gorduras totais,
                                      //                                   gorduras saturadas,gordura trans,fibra alimentar,
                                      //                                   sódio].

      Arquivo.Add(#11#02 +
        LFIll(Produtos[i].Codigo, 5) +
        GetTipoProdutoUrano(Produtos[i].Tipo) +
        RFIll(Produtos[i].Descricao, 20) +
        FormatCurr('000000.00', Produtos[i].ValorVenda) +
        LFIll(Produtos[i].Validade, 4) +
        'D' +
        RFIll('' {Produtos[i].Nutricional.FUndPorcao}, 209)
        );

      xtam := CalcularSoma(Arquivo[Arquivo.Count-1]);
      Arquivo[Arquivo.Count-1] := Arquivo[Arquivo.Count-1] + IntToHex(xtam, 4) + #03;
    end; *)

  {  if Produtos[i].Receita <> '' then
    begin
    //linha da receita
    //0x12+0x02+codigo[5]+pesagem[35]+informacoes adicionais[615]+chksum[4]+0x03+0x13+0x10
                                    //informacoes adicionais[615]=15 linhas de 41 caracteres.

      xnutric:='';

      if Produtos[i].Nutricional.FQtd<=0 then
        xnutric := RFill('', 209);

      Arquivo.Add(#12#02 +
        LFIll(Produtos[i].Codigo, 5) +
        GetTipoProdutoUrano(Produtos[i].Tipo) +
        RFIll(Produtos[i].Descricao, 20) +
        FormatCurr('000000.00', Produtos[i].ValorVenda) +
        LFIll(Produtos[i].Validade, 4) +
        'D' +
        xnutric +
        RFIll(Produtos[i].Receita, 615)
        );

      xtam := CalcularSoma(Arquivo[Arquivo.Count-1]);
      Arquivo[Arquivo.Count-1] := Arquivo[Arquivo.Count-1] + IntToHex(xtam, 4) + #03;
    end;  }
  end;
end;

function TGeraBalanca.GerarArquivo(Local: String): Boolean;
var
  Produto, Setor, Receita, Nutricional: TStringList;
  NomeArquivo: TFileName;
  Total: integer;
begin
  if Trim(Local) = '' then
    raise EBalancaxception.Create('Informe o local onde será gerado o arquivo!');

  if not DirectoryExists(Local) then
    raise EBalancaxception.Create('Diretorio informado não existe!');

  if Produtos.Count = 0 then
    raise EBalancaxception.Create('Não foram informados os produtos para a geração!');

  Result := TRUE;

  Produto     := TStringList.Create;
  Setor       := TStringList.Create;
  Receita     := TStringList.Create;
  Nutricional := TStringList.Create;

  Produto.Clear;
  Setor.Clear;
  Receita.Clear;
  Nutricional.Clear;

  try
    Total := Produtos.Count;
   // onProgresso('Iniciando...', 0, Total);

    // Varre os registros gerando o arquivo em lista
    case GetModelo of
      modFilizola: PreencherFilizola(Produto, Setor);
      modToledo  : PreencherToledo(Produto, Nutricional, Setor);
      modUrano   : PreencherUrano(Produto);
      modMagna   : PreencherMagna(Produto);
    end;

    try
      // Monta o nome do arquivo de produtos seguindo o padrao da balanca
      if Produto.Count > 0 then
      begin
        NomeArquivo := IncludeTrailingPathDelimiter(Local) + GetNomeArquivoProduto;

        if FileExists(NomeArquivo) then
           DeleteFile(NomeArquivo);

           if GetModelo = modMagna then
              Produto.SaveToFile(NomeArquivo, TEncoding.Unicode)
           else
              Produto.SaveToFile(NomeArquivo);
      end;

      // Gerar arquivo de setores se houverem dados e o arquivo for separado
      if Setor.Count > 0 then
      begin
        NomeArquivo := IncludeTrailingPathDelimiter(Local) + GetNomeArquivoSetor;

        if FileExists(NomeArquivo) then
           DeleteFile(NomeArquivo);

        Setor.SaveToFile(NomeArquivo);
      end;

      // Gerar arquivo de receitas se houverem dados e o arquivo for separado
      if Receita.Count > 0 then
      begin
        NomeArquivo := IncludeTrailingPathDelimiter(Local) + GetNomeArquivoReceita;

        if FileExists(NomeArquivo) then
           DeleteFile(NomeArquivo);

        if GetModelo = modMagna then
           Receita.SaveToFile(NomeArquivo, TEncoding.Unicode)
        else
            Receita.SaveToFile(NomeArquivo);
      end;

      // Gerar arquivo de Nutricionais se houverem dados e o arquivo for separado
      if Nutricional.Count > 0 then
      begin
        NomeArquivo := IncludeTrailingPathDelimiter(Local) + GetNomeArquivoNutricional;

        if FileExists(NomeArquivo) then
           DeleteFile(NomeArquivo);

        if GetModelo = modMagna then
           Nutricional.SaveToFile(NomeArquivo, TEncoding.Unicode)
        else
            Nutricional.SaveToFile(NomeArquivo);
      end;

      //onProgresso('Terminado...', Total, Total);
    except
      Result := False;
    end;
  finally
    FreeAndNil(Produto);
    FreeAndNil(Setor);
    FreeAndNil(Receita);
    FreeAndNil(Nutricional);
  end;
end;

end.
