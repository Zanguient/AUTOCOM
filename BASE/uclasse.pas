unit uclasse;

interface

uses
  SysUtils, Classes;

//classe TTotal
type

//classe FPag

  TFPagObject = class(TPersistent, IInterface)
  private
    fOwner: TObject;
  protected
    function QueryInterface(const IID: TGUID; out Obj): HResult; virtual; stdcall;
    function _AddRef: Integer; stdcall;
    function _Release: Integer; stdcall;
  public
    constructor Create(aOwner: TObject);
    property Owner: TObject read fOwner;
  end;

  IFPag_Item = interface(IInterface)
    ['{0E3C02A6-7D73-46F3-BC55-FCB17FD162A1}']
      function GetDescricao: string;
      function GetValor: Currency;
      function GetPrazo: Boolean;
      function GetTipo: string;
      function GetIndice: string;

      procedure SetDescricao(const Valor: string);
      procedure SetValor(const Valor: Currency);
      procedure SetPrazo(const Valor: Boolean);
      procedure SetTipo(const Valor: string);
      procedure SetIndice(const Valor: string);

      property Descricao: string read GetDescricao write SetDescricao;
      property Valor: Currency read GetValor write SetValor;
      property Prazo: boolean read GetPrazo write SetPrazo;
      property Tipo: string read GetTipo write SetTipo;
      property Indice: string read GetIndice write SetIndice;
  end;

    IFPag_Lista = interface(IInterface)
    ['{31FBAECC-5CC5-4197-9F8B-FEE3AA364274}']
    function GetItem(Index: Integer): IFPag_Item;
    procedure SetItem(Index: Integer; const Value: IFPag_Item);
    function Add: IFPag_Item;
    procedure Delete(Index: integer);
    function Count: Integer;
    procedure Clear;
    property Items[Index: Integer]: IFPag_Item read GetItem write SetItem;
  end;

    TFPag_Item = class(TFPagObject, IFPag_Item)
  private
      fDescricao, fTipo, fIndice: string;
      fValor: Currency;
      fPrazo: boolean;
    //  fVendedor: integer;

      function GetDescricao: string;
      function GetValor: Currency;
      function GetPrazo: Boolean;
      function GetTipo: string;
      function GetIndice: string;
      procedure SetDescricao(const Valor: string);
      procedure SetValor(const Valor: Currency);
      procedure SetPrazo(const Valor: Boolean);
      procedure SetTipo(const Valor: string);
      procedure SetIndice(const Valor: string);

   published
      property Descricao: string read Fdescricao write Fdescricao;
      property Valor: Currency read fValor write fValor;
      property Prazo: boolean read fPrazo write fPrazo;
       property Tipo: string read fTipo write fTipo;
       property Indice: string read fIndice write fIndice;
  end;

  TFPag_Lista = class(TFPagObject, IFPag_Lista)
  private
    fLista: TList;
    function GetItem(Index: Integer): IFPag_Item;
    procedure SetItem(Index: Integer; const Value: IFPag_Item);
  public
    constructor Create(aOwner: TObject);
    destructor Destroy; override;
    function Add: IFPag_Item;
    procedure Delete(Index: integer);
    function Count: Integer;
    procedure Clear;
    property Items[Index: Integer]: IFPag_Item read GetItem write SetItem;
  end;


  TTotalObject = class(TPersistent, IInterface)
  private
    fOwner: TObject;
  protected
    function QueryInterface(const IID: TGUID; out Obj): HResult; virtual; stdcall;
    function _AddRef: Integer; stdcall;
    function _Release: Integer; stdcall;
  public
    constructor Create(aOwner: TObject);
    property Owner: TObject read fOwner;
  end;

  ITotal = interface(IInterface)
  ['{CD11293B-8FAE-4ECC-94C1-CFCC00B1AD86}']
      function GetDin: Currency;
      function GetTkt: Currency;
      function GetChq: Currency;
      function GetFat: Currency;
      function GetCrt: Currency;
      function GetValor: Currency;
      function GetQtd: Currency;
      function GetVrDesc: Currency;
      function GetTroco: Currency;
      function GetVrPago: Currency;
      function GetTotal: Currency;
      function GetFPag_Lista: TFPag_Lista;
      function GetConsChq:boolean;
      function GetVendedor: integer;
      function GetCartao: integer;
      function GetBandeira: integer;

      procedure SetBandeira(const Valor: integer);
      procedure SetCartao(const Valor: integer);
      procedure SetDin(const Valor: Currency);
      procedure SetTkt(const Valor: Currency);
      procedure SetChq(const Valor: Currency);
      procedure SetFat(const Valor: Currency);
      procedure SetCrt(const Valor: Currency);
      procedure SetValor(const Valor: Currency);
      procedure SetQtd(const Valor: Currency);
      procedure SetVrDesc(const Valor: Currency);
      procedure SetTroco(const Valor: Currency);
      procedure SetVrPago(const Valor: Currency);
      procedure SetTotal(const Valor: Currency);
      procedure SetFPag_Lista(const Valor: TFPag_Lista);
      procedure SetConsChq(const Valor: boolean);
      procedure SetVendedor(const Valor: integer);
      function GetNSU: String;

      procedure SetNSU(const s: String);
      procedure Clear(Tudo:Boolean=true);
      property Din : currency read GetDin write SetDin;
      property Tkt : currency read GetTkt write SetTkt;
      property Chq : currency read GetChq write SetChq;
      property Fat : currency read GetFat write SetFat;
      property Crt : currency read GetCrt write SetCrt;
      property Valor : currency read GetValor write SetValor;
      property Qtd : currency read GetQtd write SetQtd;
      property VrDesc : currency read GetVrDesc write SetVrDesc;
      property Troco : currency read GetTroco write SetTroco;
      property VrPago : currency read GetVrPago write SetVrPago;
      property Total : currency read GetTotal write SetTotal;
      property ConsChq: boolean read GetConsChq write SetConsChq;
      property Bandeira: Integer read GetBandeira write SetBandeira;
      property Cartao: Integer read GetCartao write SetCartao;
      property NSU: String read GetNSU write SetNSU;
      procedure SubTotaliza(vecard:boolean = false);
  end;

  TTotal =  class(TTotalObject, ITotal)
  protected
    fvalor,fqtd, fvrdesc, ftroco, fvrpago, ftotal,
    fDin, fTkt, fChq, fFat, fCrt, fibptax, fibptaxF, fibptaxE, fibptaxM: Currency;
    fConsChq: boolean;
    fVendedor, fParcelas: integer;
    fFpag_Lista: TFPag_Lista;
    fFPag_Item : TFPag_Item;
    fbandeira, fcartao: integer;
    fNSU: String;
  private
      function GetDin: Currency;
      function GetTkt: Currency;
      function GetChq: Currency;
      function GetFat: Currency;
      function GetCrt: Currency;
      function GetValor: Currency;
      function GetQtd: Currency;
      function GetVrDesc: Currency;
      function GetTroco: Currency;
      function GetVrPago: Currency;
      function GetTotal: Currency;
      function GetIBPTax: currency;
      function GetIBPTaxF: currency;
      function GetIBPTaxE: currency;
      function GetIBPTaxM: currency;
      function GetFPag_Lista: TFPag_Lista;
      function GetFPag_Item: TFPag_Item;
      function GetConsChq:boolean;
      function GetVendedor: integer;
      function GetCartao: integer;
      function GetBandeira: integer;
      function GetNSU: String;

      procedure SetNSU(const s: String);
      procedure SetBandeira(const Valor: integer);
      procedure SetCartao(const Valor: integer);
      procedure SetDin(const Valor: Currency);
      procedure SetTkt(const Valor: Currency);
      procedure SetChq(const Valor: Currency);
      procedure SetFat(const Valor: Currency);
      procedure SetCrt(const Valor: Currency);
      procedure SetValor(const Valor: Currency);
      procedure SetQtd(const Valor: Currency);
      procedure SetVrDesc(const Valor: Currency);
      procedure SetTroco(const Valor: Currency);
      procedure SetVrPago(const Valor: Currency);
      procedure SetTotal(const Valor: Currency);
      procedure SetIBPTax(const Valor: currency);
      procedure SetIBPTaxF(const Valor: currency);
      procedure SetIBPTaxE(const Valor: currency);
      procedure SetIBPTaxM(const Valor: currency);
      procedure SetFPag_Lista(const Valor: TFPag_Lista);
      procedure SetFPag_Item(const Value: TFPag_Item);
      procedure SetConsChq(const Valor: boolean);
      procedure SetVendedor(const Valor: integer);
  public
    constructor Create(aOwner: TObject);
    procedure Clear(Tudo:Boolean=true);
  published
    property Din : currency read GetDin write SetDin;
    property Tkt : currency read GetTkt write SetTkt;
    property Chq : currency read GetChq write SetChq;
    property Fat : currency read GetFat write SetFat;
    property Crt : currency read GetCrt write SetCrt;
    property Valor : currency read GetValor write SetValor;
    property Qtd : currency read GetQtd write SetQtd;
    property VrDesc : currency read GetVrDesc write SetVrDesc;
    property Troco : currency read GetTroco write SetTroco;
    property VrPago : currency read GetVrPago write SetVrPago;
    property Total : currency read GetTotal write SetTotal;
    property IBPTax: currency read GetIBPTax write SetIBPTax;
    property IBPTaxF: currency read GetIBPTaxF write SetIBPTaxF;
    property IBPTaxE: currency read GetIBPTaxE write SetIBPTaxE;
    property IBPTaxM: currency read GetIBPTaxM write SetIBPTaxM;
    property Vendedor : integer read GetVendedor write SetVendedor;
    property Fpag: TFPag_Lista read GetFPag_Lista write SetFPag_Lista;
    property FPag_Item : TFPag_Item read GetFPag_Item write SetFPag_Item;
    property ConsChq: boolean read GetConsChq write SetConsChq;
    property Bandeira: Integer read GetBandeira write SetBandeira;
    property Cartao: Integer read GetCartao write SetCartao;
    property NSU: String read GetNSU write SetNSU;
    property Parcelas: integer read fParcelas write fParcelas;
    procedure SubTotaliza(vecard:boolean = false);
  end;

implementation

{ TFPag_Item }

function TFPag_Item.GetDescricao: string;
begin
   Result := fDescricao;
end;

function TFPag_Item.GetIndice: string;
begin
   Result := fIndice;
end;

function TFPag_Item.GetPrazo: Boolean;
begin
   Result := fPrazo;
end;

function TFPag_Item.GetTipo: string;
begin
   Result := fTipo;
end;

function TFPag_Item.GetValor: Currency;
begin
  Result := fValor;
end;

procedure TFPag_Item.SetDescricao(const Valor: string);
begin
   fDescricao := Valor;
end;

procedure TFPag_Item.SetIndice(const Valor: string);
begin
   fIndice := Valor;
end;

procedure TFPag_Item.SetPrazo(const Valor: Boolean);
begin
   fPrazo := Valor;
end;

procedure TFPag_Item.SetTipo(const Valor: string);
begin
   fTipo := Valor;
end;

procedure TFPag_Item.SetValor(const Valor: Currency);
begin
  fValor := Round(Valor * 100)/100;
end;




{ TTotal }

procedure TTotal.Clear(Tudo:Boolean=true);
var i: integer;
begin
   if tudo then
   begin
      qtd   := 0;
      valor := 0;
   end;

   ConsChq := false;
   vrdesc  := 0;
   total   := 0;
   troco   := 0;

  for i :=  0to Fpag.Count -1  do
     fpag.Items[i].Valor := 0;
end;

constructor TTotal.Create(aOwner: TObject);
begin
   Fpag      := TFPag_Lista.Create(self);
   fVendedor := 0;
   fbandeira := 0;
   fcartao   := 0;
   fParcelas := 0;
end;

function TTotal.GetBandeira: integer;
begin
   Result := fbandeira;
end;

function TTotal.GetCartao: integer;
begin
   Result := fcartao;
end;

function TTotal.GetChq: Currency;
begin
   Result := fChq;
end;

function TTotal.GetConsChq: boolean;
begin
   Result := fConsChq;
end;

function TTotal.GetCrt: Currency;
begin
   Result := fCrt;
end;

function TTotal.GetDin: Currency;
begin
   Result := fDin;
end;

function TTotal.GetFat: Currency;
begin
   Result := fFat;
end;

function TTotal.GetFPag_Item: TFPag_Item;
begin
    Result := fFPag_Item;
end;

function TTotal.GetFPag_Lista: TFPag_Lista;
begin
   Result := fFPag_Lista;
end;


function TTotal.GetIBPTax: currency;
begin
   Result := fibptax
end;

function TTotal.GetIBPTaxE: currency;
begin
   Result := fibptaxE
end;

function TTotal.GetIBPTaxF: currency;
begin
   Result := fibptaxF
end;

function TTotal.GetIBPTaxM: currency;
begin
   Result := fibptaxM
end;

function TTotal.GetNSU: String;
begin
   Result := fNSU;
end;

function TTotal.GetQtd: Currency;
begin
   Result := fQtd;
end;

function TTotal.GetTkt: Currency;
begin
   Result := fTkt;
end;

function TTotal.GetTotal: Currency;
begin
   Result := fTotal;
end;

function TTotal.GetTroco: Currency;
begin
   Result := fTroco;
end;

function TTotal.GetValor: Currency;
begin
  Result := fValor;
end;

function TTotal.GetVendedor: integer;
begin
  Result := fVendedor;
end;

function TTotal.GetVrDesc: Currency;
begin
   Result := fVrDesc;
end;

function TTotal.GetVrPago: Currency;
begin
   Result := fVrPago;
end;

procedure TTotal.SetBandeira(const Valor: integer);
begin
   fbandeira := valor;
end;

procedure TTotal.SetCartao(const Valor: integer);
begin
   fcartao := Valor;
end;

procedure TTotal.SetChq(const Valor: Currency);
begin
   fChq := Valor;
end;

procedure TTotal.SetConsChq(const Valor: boolean);
begin
  fConsChq := valor;
end;

procedure TTotal.SetCrt(const Valor: Currency);
begin
   fCrt := Valor;
end;

procedure TTotal.SetDin(const Valor: Currency);
begin
   fDin := Valor;
end;

procedure TTotal.SetFat(const Valor: Currency);
begin
   fFat := Valor;
end;

procedure TTotal.SetFPag_Item(const Value: TFPag_Item);
begin
   fFPag_Item := Value;
end;

procedure TTotal.SetFPag_Lista(const Valor: TFPag_Lista);
begin
   fFPag_Lista := Valor;
end;

procedure TTotal.SetIBPTax(const Valor: currency);
begin
   fibptax := Valor;
end;

procedure TTotal.SetIBPTaxE(const Valor: currency);
begin
   fibptaxE := Valor;
end;

procedure TTotal.SetIBPTaxF(const Valor: currency);
begin
   fibptaxF := Valor;
end;

procedure TTotal.SetIBPTaxM(const Valor: currency);
begin
   fibptaxM := Valor;
end;

procedure TTotal.SetNSU(const s: String);
begin
   fNSU := s;
end;

procedure TTotal.SetQtd(const Valor: Currency);
begin
   fQtd := Valor;
end;

procedure TTotal.SetTkt(const Valor: Currency);
begin
   fTkt := Valor;
end;

procedure TTotal.SetTotal(const Valor: Currency);
begin
   fTotal := Valor;
end;

procedure TTotal.SetTroco(const Valor: Currency);
begin
   fTroco := Valor;
end;

procedure TTotal.SetValor(const Valor: Currency);
begin
   fValor := Valor;
end;

procedure TTotal.SetVendedor(const Valor: integer);
begin
   fVendedor := Valor;
end;

procedure TTotal.SetVrDesc(const Valor: Currency);
begin
   fVrDesc := Valor;
end;

procedure TTotal.SetVrPago(const Valor: Currency);
begin
   fVrpago := Valor;
end;

procedure TTotal.SubTotaliza(vecard:boolean = false);
var i: integer;
begin
   din := 0; tkt := 0; chq := 0; fat := 0; crt := 0;

   For i := 0 to Fpag.Count - 1 do
   begin
      if Fpag.Items[i].Tipo = 'DIN' then
         din := din + Fpag.Items[i].Valor
      else
      if Fpag.Items[i].Tipo = 'TKT' then
         tkt := tkt + Fpag.Items[i].Valor
      else
      if Fpag.Items[i].Tipo = 'CHQ' then
         chq := chq + Fpag.Items[i].Valor
      else
      if Fpag.Items[i].Tipo = 'FAT' then
         fat := fat + Fpag.Items[i].Valor
      else
      if Fpag.Items[i].Tipo = 'CRT' then
      begin
         if(Fpag.Items[i].Valor > 0)and
           (crt > 0)and (vecard) then
           raise exception.Create('Não é possível efetuar duas formas de pagamento na modalidade cartão.');
         crt := crt + Fpag.Items[i].Valor;
      end;
   end;

   total  := Round((valor - fat - vrdesc)*100)/100;
   vrpago := din + chq + tkt + crt + fat;
   troco  := vrPago - total - fat;

   if troco < 0.009 then
      troco := 0;
end;



{ TFPag_Lista }

function TFPag_Lista.Add: IFPag_Item;
var Item: TFPag_Item;
begin
  Item := TFPag_Item.Create(Self);
  fLista.Add(Item);
  Result := Item;
end;

procedure TFPag_Lista.Clear;
begin
  while fLista.Count > 0 do
    Delete(0);
end;

function TFPag_Lista.Count: Integer;
begin
  Result := fLista.Count;
end;

constructor TFPag_Lista.Create(aOwner: TObject);
begin
  inherited;
  fLista := TList.Create;
end;

procedure TFPag_Lista.Delete(Index: integer);
begin
  TFPag_Lista(fLista[Index]).Free;
  fLista.Delete(Index);
end;

destructor TFPag_Lista.Destroy;
begin
   fLista.Free;
  inherited;
end;

function TFPag_Lista.GetItem(Index: Integer): IFPag_Item;
begin
   Result := TFPag_Item(fLista[Index]);
end;

procedure TFPag_Lista.SetItem(Index: Integer; const Value: IFPag_Item);
begin
   fLista[Index] := TFPag_Item(Value);
end;




{ TFPagObject }

constructor TFPagObject.Create(aOwner: TObject);
begin
  fOwner := aOwner;
end;

function TFPagObject.QueryInterface(const IID: TGUID; out Obj): HResult;
begin
  if GetInterface(IID, Obj) then
    Result := 0
  else
    Result := E_NOINTERFACE;
end;

function TFPagObject._AddRef: Integer;
begin
   result := 0;
end;

function TFPagObject._Release: Integer;
begin
   result := 0;
end;




{ TTotalObject }

function TTotalObject._AddRef: Integer;
begin
  Result := 0;
end;

function TTotalObject._Release: Integer;
begin
   result := 0;
end;

constructor TTotalObject.Create(aOwner: TObject);
begin
   fOwner := aOwner;
end;

function TTotalObject.QueryInterface(const IID: TGUID; out Obj): HResult;
begin
  if GetInterface(IID, Obj) then
    Result := 0
  else
    Result := E_NOINTERFACE;
end;

{ TTefStatusObject }





end.
