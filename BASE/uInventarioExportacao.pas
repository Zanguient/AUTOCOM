unit uInventarioExportacao;

interface

uses
  Windows, Forms, SysUtils, Classes, DateUtils;

type
  TTipoItem = (tpiTributado, tpiIsento, tpiSubstituido, tpiOutros);
  TTipoAquisicao = (tpaNaoInformado, tpaEnquadra90Dep, tpaEnquadra90Ant);
  EInventario = class(Exception);
  TProgressoExportacao = procedure(Total, Progresso: Integer) of object;

  IProdutoInventario = interface(IInterface)
  ['{4FE35B71-2B86-4D2A-80FB-52C133AE68F4}']
    function GetAquisicao: TTipoAquisicao;
    function GetClassFiscal: String;
    function GetCodigo: Integer;
    function GetDescricao: String;
    function GetQuantidade: Extended;
    function GetTipo: TTipoItem;
    function GetUnidade: String;
    function GetVlrUnitario: Currency;
    function GetIcms_pc: currency;
    function GetCST: string;
    function GetPosse: integer;
    function GetGtin: string;
    procedure SetAquisicao(const Value: TTipoAquisicao);
    procedure SetClassFiscal(const Value: String);
    procedure SetCodigo(const Value: Integer);
    procedure SetDescricao(const Value: String);
    procedure SetQuantidade(const Value: Extended);
    procedure SetTipo(const Value: TTipoItem);
    procedure SetUnidade(const Value: String);
    procedure SetVlrUnitario(const Value: Currency);
    procedure SetIcms_pc(const Value: Currency);
    procedure SetCST(const Value: String);
    procedure SetPosse(const Value: integer);
    procedure SetGtin(const Value: String);
    property Codigo: Integer read GetCodigo write SetCodigo;
    property Descricao: String read GetDescricao write SetDescricao;
    property Unidade: String read GetUnidade write SetUnidade;
    property Quantidade: Extended read GetQuantidade write SetQuantidade;
    property VlrUnitario: Currency read GetVlrUnitario write SetVlrUnitario;
    property Tipo: TTipoItem read GetTipo write SetTipo;
    property Aquisicao: TTipoAquisicao read GetAquisicao write SetAquisicao;
    property ClassFiscal: String read GetClassFiscal write SetClassFiscal;
    property ICMS_pc: currency read GetIcms_pc write SetIcms_pc;
    property CST: string read GetCST write SetCST;
    property Posse: integer read GetPosse write SetPosse;
    property Gtin: string read GetGtin write SetGtin;
  end;

  IProdutoInventarioLista = interface(IInterfaceList)
  ['{EF071A66-38F3-49D0-A5F3-0F60D55634E5}']
    function GetItem(Index: Integer): IProdutoInventario;
    procedure SetItem(Index: Integer; const Value: IProdutoInventario);
    function New: IProdutoInventario;
    property Items[Index: Integer]: IProdutoInventario read GetItem write SetItem; default;
  end;

  IInventarioExportacao = interface(IInterface)
  ['{5034C4BC-47E1-4DE8-BE36-1389BA4B2A9B}']
    function GetOnProgresso: TProgressoExportacao;
    function GetProdutos: IProdutoInventarioLista;
    procedure SetOnProgresso(const Value: TProgressoExportacao);
    procedure SetProdutos(const Value: IProdutoInventarioLista);
    procedure GerarProgresso(ATotal, AProgresso: Integer);
    procedure Limpar;
    function GerarArquivo(AArquivoInventario: TFileName): Boolean;
    property OnProgresso: TProgressoExportacao read GetOnProgresso write SetOnProgresso;
    property Produtos: IProdutoInventarioLista read GetProdutos write SetProdutos;
  end;

  { Factoring da Interface IInventario }
  function CreateInventario(): IInventarioExportacao;

implementation


type
  TInventarioObject = class(TInterfacedObject)
  protected
    function RFill(Str: string; Tamanho: Integer = 0; Caracter: Char = ' '): string; overload;
    function LFIll(Str: string; Tamanho: Integer = 0; Caracter: Char = '0'): string; overload;
    function LFIll(Valor: Currency; Tamanho: Integer; Decimais: Integer = 2; Caracter: Char = '0'): string; overload;
    function LFIll(Valor: Integer; Tamanho: Integer; Caracter: Char = '0'): string; overload;
    function LFill(Valor: TDateTime): string; overload;
    function LFill(Valor: Boolean): string; overload;
    function GetTipoItem(ATipo: TTipoItem): String;
    function GetTipoAquisicao(ATipo: TTipoAquisicao): String;
  end;

  TProdutoInventario = class(TInventarioObject, IProdutoInventario)
  private
    FCodigo, FPosse: Integer;
    FDescricao: String;
    FUnidade, FCst, FGtin: String;
    FQuantidade: Extended;
    FVlrUnitario, FIcms_pc: Currency;
    FTipo: TTipoItem;
    FAquisicao: TTipoAquisicao;
    FClassFiscal: String;
    function GetAquisicao: TTipoAquisicao;
    function GetClassFiscal: String;
    function GetCodigo: Integer;
    function GetDescricao: String;
    function GetQuantidade: Extended;
    function GetTipo: TTipoItem;
    function GetUnidade: String;
    function GetVlrUnitario: Currency;

    function GetIcms_pc: currency;
    function GetCST: string;
    function GetPosse: integer;
    function GetGtin: string;

    procedure SetAquisicao(const Value: TTipoAquisicao);
    procedure SetClassFiscal(const Value: String);
    procedure SetCodigo(const Value: Integer);
    procedure SetDescricao(const Value: String);
    procedure SetQuantidade(const Value: Extended);
    procedure SetTipo(const Value: TTipoItem);
    procedure SetUnidade(const Value: String);
    procedure SetVlrUnitario(const Value: Currency);

    procedure SetIcms_pc(const Value: Currency);
    procedure SetCST(const Value: String);
    procedure SetPosse(const Value: integer);
    procedure SetGtin(const Value: String);
  public
    property Codigo: Integer read GetCodigo write SetCodigo;
    property Descricao: String read GetDescricao write SetDescricao;
    property Unidade: String read GetUnidade write SetUnidade;
    property Quantidade: Extended read GetQuantidade write SetQuantidade;
    property VlrUnitario: Currency read GetVlrUnitario write SetVlrUnitario;
    property Tipo: TTipoItem read GetTipo write SetTipo;
    property Aquisicao: TTipoAquisicao read GetAquisicao write SetAquisicao;
    property ClassFiscal: String read GetClassFiscal write SetClassFiscal;

    property ICMS_pc: currency read GetIcms_pc write SetIcms_pc;
    property CST: string read GetCST write SetCST;
    property Posse: integer read GetPosse write SetPosse;
    property Gtin: string read GetGtin write SetGtin;
  end;

  TProdutoInventarioLista = class(TInterfaceList, IProdutoInventarioLista)
  private
    function GetItem(Index: Integer): IProdutoInventario;
    procedure SetItem(Index: Integer; const Value: IProdutoInventario);
  public
    function New: IProdutoInventario;
    property Items[Index: Integer]: IProdutoInventario read GetItem write SetItem; default;
  end;

  TInventario = class(TInventarioObject, IInventarioExportacao)
  private
    FProdutos: IProdutoInventarioLista;
    FOnProgresso: TProgressoExportacao;
    function GetOnProgresso: TProgressoExportacao;
    function GetProdutos: IProdutoInventarioLista;
    procedure SetOnProgresso(const Value: TProgressoExportacao);
    procedure SetProdutos(const Value: IProdutoInventarioLista);
    procedure GerarProgresso(ATotal, AProgresso: Integer);
  public
    constructor Create;
    procedure Limpar;
    function GerarArquivo(AArquivoInventario: TFileName): Boolean;
    property OnProgresso: TProgressoExportacao read GetOnProgresso write SetOnProgresso;
    property Produtos: IProdutoInventarioLista read GetProdutos write SetProdutos;
  end;

{ Factoring da Interface IInventario }
function CreateInventario(): IInventarioExportacao;
begin
  Result := TInventario.Create;
end;

function TInventarioObject.RFill(Str: string; Tamanho: Integer = 0; Caracter: Char = ' '): string;
begin
  if (Tamanho > 0) and (Length(Str) > Tamanho) then
    Result := Copy(Str, 1, Tamanho)
  else
    Result := Str + StringOfChar(Caracter, Tamanho - Length(Str));
end;

function TInventarioObject.LFill(Str: string; Tamanho: Integer = 0; Caracter: Char = '0'): string;
begin
  if (Tamanho > 0) and (Length(Str) > Tamanho) then
    Result := Copy(Str, 1, Tamanho)
  else
    Result := StringOfChar(Caracter, Tamanho - length(Str)) + Str;
end;

function TInventarioObject.LFill(Valor: Currency; Tamanho: Integer; Decimais: Integer = 2; Caracter: Char = '0'): string;
var
  i, p: Integer;
begin
  p := 1;

  for i := 1 to Decimais do
    p := p * 10;

  Result := LFill(Trunc(Valor * p), Tamanho, Caracter);
end;

function TInventarioObject.LFill(Valor: Integer; Tamanho: Integer; Caracter: Char = '0'): string;
begin
  Result := LFill(IntToStr(Valor), Tamanho, Caracter);
end;

function TInventarioObject.LFill(Valor: TDateTime): string;
begin
  if Valor > 0 then
    Result := FormatDateTime('DDMMYYYY', Valor)
  else
    Result := '00000000';
end;

function TInventarioObject.GetTipoAquisicao(ATipo: TTipoAquisicao): String;
begin
  case ATipo of
    tpaNaoInformado:  Result := '0';
    tpaEnquadra90Dep: Result := '1';
    tpaEnquadra90Ant: Result := '2';
  end;
end;

function TInventarioObject.GetTipoItem(ATipo: TTipoItem): String;
begin
  case ATipo of
    tpiTributado:   Result := '4';
    tpiIsento:      Result := '5';
    tpiSubstituido: Result := '8';
    tpiOutros:      Result := '9';
  end;
end;

function TInventarioObject.LFill(Valor: Boolean): string;
begin
  if Valor then
    Result := 'S'
  else
    Result := 'N';
end;

{ TProdutoLista }

function TProdutoInventarioLista.New: IProdutoInventario;
begin
  Result := TProdutoInventario.Create;
  Add(Result);
end;

function TProdutoInventarioLista.GetItem(Index: Integer): IProdutoInventario;
begin
  Result := Get(Index) as IProdutoInventario;
end;

procedure TProdutoInventarioLista.SetItem(Index: Integer;
  const Value: IProdutoInventario);
begin
  Put(Index, Value);
end;

{ TProdutoInventario }

function TProdutoInventario.GetAquisicao: TTipoAquisicao;
begin
  Result := FAquisicao;
end;

function TProdutoInventario.GetClassFiscal: String;
begin
  Result := FClassFiscal;
end;

function TProdutoInventario.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TProdutoInventario.GetCST: string;
begin
   Result := FCst;
end;

function TProdutoInventario.GetDescricao: String;
begin
  Result := FDescricao;
end;

function TProdutoInventario.GetGtin: string;
begin
   Result := FGtin;
end;

function TProdutoInventario.GetIcms_pc: currency;
begin
   Result := FIcms_pc;
end;

function TProdutoInventario.GetPosse: integer;
begin
   Result := FPosse;
end;

function TProdutoInventario.GetQuantidade: Extended;
begin
  Result := FQuantidade;
end;

function TProdutoInventario.GetTipo: TTipoItem;
begin
  Result := FTipo;
end;

function TProdutoInventario.GetUnidade: String;
begin
  Result := FUnidade;
end;

function TProdutoInventario.GetVlrUnitario: Currency;
begin
  Result := FVlrUnitario;
end;

procedure TProdutoInventario.SetAquisicao(const Value: TTipoAquisicao);
begin
  FAquisicao := Value;
end;

procedure TProdutoInventario.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TProdutoInventario.SetCST(const Value: String);
begin
   FCst := Value;
end;

procedure TProdutoInventario.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TProdutoInventario.SetGtin(const Value: String);
begin
   FGtin := Value;
end;

procedure TProdutoInventario.SetIcms_pc(const Value: Currency);
begin
   FIcms_pc := value;
end;

procedure TProdutoInventario.SetPosse(const Value: integer);
begin
  FPosse := Value;
end;

procedure TProdutoInventario.SetQuantidade(const Value: Extended);
begin
  FQuantidade := Value;
end;

procedure TProdutoInventario.SetClassFiscal(const Value: String);
begin
  FClassFiscal := Value;
end;

procedure TProdutoInventario.SetTipo(const Value: TTipoItem);
begin
  FTipo := Value;
end;

procedure TProdutoInventario.SetVlrUnitario(const Value: Currency);
begin
  FVlrUnitario := Value;
end;

procedure TProdutoInventario.SetUnidade(const Value: String);
begin
  FUnidade := Value;
end;

{ TInventario }

procedure TInventario.Limpar;
begin
  Produtos.Clear;
end;

procedure TInventario.GerarProgresso(ATotal, AProgresso: Integer);
begin
  if Assigned(FOnProgresso) then
    FOnProgresso(ATotal, AProgresso);
end;

function TInventario.GetOnProgresso: TProgressoExportacao;
begin
  Result := FOnProgresso;
end;

function TInventario.GetProdutos: IProdutoInventarioLista;
begin
  Result := FProdutos;
end;

procedure TInventario.SetOnProgresso(const Value: TProgressoExportacao);
begin
  FOnProgresso := Value;
end;

procedure TInventario.SetProdutos(const Value: IProdutoInventarioLista);
begin
  FProdutos := Value;
end;

constructor TInventario.Create;
begin
  inherited Create;

  FProdutos := TProdutoInventarioLista.Create;
end;

function TInventario.GerarArquivo(AArquivoInventario: TFileName): Boolean;
var
  IDProduto, TotalProdutos: Integer;
  Diretorio: TFileName;
  Arquivo: TStringList;
  s: string;
begin
  Result := True;

  TotalProdutos := Produtos.Count;

  if Trim(AArquivoInventario) = '' then
    raise EInventario.Create('Informe o nome do arquivo.');

  if TotalProdutos = 0 then
    raise EInventario.Create('Informe os produtos dos quais deseja gerar o arquivo.');

  Diretorio := ExtractFilePath(AArquivoInventario);
  if not DirectoryExists(Diretorio) then
  begin
    if Application.MessageBox('Diretório informado não existe, deseja criá-lo?', 'Diretório', MB_ICONQUESTION + MB_YESNO) = ID_YES then
      ForceDirectories(Diretorio)
    else
      raise EInventario.Create('Diretório informado não existe.!');
  end;

  Arquivo := TStringList.Create;
  try
    for IDProduto := 0 to Produtos.Count - 1 do
    begin
      // Adiciona o produto formatado a lista
      s := '';

      if Produtos[IDProduto].CST <> '' then
         s := RFill(Produtos[IDProduto].CST, 3) +
              LFill(Produtos[IDProduto].Posse, 1) +
              LFIll(Produtos[IDProduto].ICMS_pc, 4, 2) +
              RFIll(Produtos[IDProduto].Gtin, 20);

      Arquivo.Add(
        LFIll(Produtos[IDProduto].Codigo, 5) +
        RFIll(Produtos[IDProduto].Descricao, 45) +
        LFIll(Produtos[IDProduto].Unidade, 2) +
        LFIll(Produtos[IDProduto].Quantidade, 9, 4) +
        LFIll(Produtos[IDProduto].VlrUnitario, 11, 3) +
        GetTipoItem(Produtos[IDProduto].Tipo) +
        GetTipoAquisicao(Produtos[IDProduto].Aquisicao) +
        RFill(Produtos[IDProduto].ClassFiscal, 9) +
        s
      );

      // Gera o evento de progresso
      GerarProgresso(TotalProdutos, IDProduto + 1);
    end;

    try
      Arquivo.SaveToFile(AArquivoInventario);
    Except
      on E: Exception do
      begin
        Application.MessageBox(
          PWideChar('Ocorreu o seguinte erro ao gerar o arquivo de exportação de inventário:' + #10#13#10#13 + E.Message),
          'Erro.',
          MB_ICONERROR + MB_OK
        );
        Result := False;
      end;
    end;
  finally
    FreeAndNil(Arquivo);
  end;
end;

end.

{
procedure TfrmInventarioExportacao.btConfirmaClick(Sender: TObject);
var
  Inventario: IInventarioExportacao;

  function GetTipoTributacao(ATipoTributacao: String): TTipoItem;
  begin
    case ATipoTributacao[1] of
      'T': Result := tpiTributado;
      'F': Result := tpiSubstituido;
      'I': Result := tpiIsento;
    else
      Result := tpiOutros;
    end;
  end;
begin
  if Trim(edtArquivo.Text) = '' then
  begin
    edtArquivo.SetFocus;
    raise EMyException.Create('Digite o nome do arquivo');
  end;

  try
    Inventario := CreateInventario;
    Inventario.OnProgresso := AssinalaProgresso;

    // Selecionar dados do inventario
    with BD.qryExportacaoInventario do
    begin
      DisableControls;

      Close;
      ParamByName('CODINVENTARIO').AsInteger := CodInventario;
      Open;

      if not IsEmpty then
      begin
        lblGeral.Caption := 'Selecionando dados do inventário...';
        ggGeral.Properties.Max := RecordCount;
        Application.ProcessMessages;

        // Varrer o inventário assinalando os registros
        First;
        while not Eof do
        begin
          with Inventario.Produtos.New do
          begin
            Codigo      := FieldByName('INVI_IDPRODUTO').AsInteger;
            Descricao   := FieldByName('INVI_DESCPRODUTO').AsString;
            Unidade     := FieldByName('INVI_IDUNIDADE').AsString;
            Quantidade  := FieldByName('INVI_QUANTIDADE').AsFloat;
            VlrUnitario := FieldByName('INVI_VLRUNITARIO').AsCurrency;
            Tipo        := GetTipoTributacao(FieldByName('INVI_IDSITTRIBUTARIA').AsString);
            Aquisicao   := tpaNaoInformado;
            ClassFiscal := RemoverCaracteres(FieldByName('INVI_CLASSFISCAL').AsString);
          end;

          Next;
          ggGeral.Position := RecNo;
        end;
      end;

      Close;
      EnableControls;
    end;

    // Gerar o arquivo como nome selecionado
    lblGeral.Caption := 'Gerando arquivo do exportação do inventário...';
    Inventario.GerarArquivo(edtArquivo.Text);

    Application.MessageBox('Arquivo de inventário exportado com sucesso.', 'Exportação', MB_ICONINFORMATION + MB_OK)
  finally
    btConfirma.Enabled := True;
    pnCorpo.Enabled := True;

    lblGeral.Caption := 'Arquivo gerado.';
  end;
end;

}
