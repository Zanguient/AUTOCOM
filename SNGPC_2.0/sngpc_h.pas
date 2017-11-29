               // ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx?WSDL
//  >Import : http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx?WSDL>0
// Encoding : utf-8
// Version  : 1.0
// (14/12/2012 12:55:56 - - $Rev: 25127 $)
// ************************************************************************ //

unit sngpc_h;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_REF  = $0080;
  C_Link = 'http://homologacao.anvisa.gov.br/sngpc/';


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : sngpcSoap12
  // service   : sngpc
  // port      : sngpcSoap12
  // URL       : http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx
  // ************************************************************************ //
  sngpcSoap = interface(IInvokable)
  ['{5334E011-7564-CC65-721F-4581403CB976}']
    function  ValidarUsuario(const Email: string; const Senha: string): string; stdcall;
    function  EnviaArquivoSNGPC(const Email: string; const Senha: string; const Arq: TByteDynArray; const HashIdentificacao: string): string; stdcall;
    function  ConsultaDadosArquivoSNGPC(const Email: string; const Senha: string; const CNPJ: string; const Hash: string): string; stdcall;
  end;

function GetsngpcSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): sngpcSoap;


implementation
  uses SysUtils;

function GetsngpcSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): sngpcSoap;
const
  defWSDL = 'http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx?WSDL';
  defURL  = 'http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx';
  defSvc  = 'sngpc';
  defPrt  = 'sngpcSoap12';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as sngpcSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(sngpcSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(sngpcSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(sngpcSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(sngpcSoap), ioSOAP12);

end.
