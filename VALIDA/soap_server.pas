// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://paradigmati.com.br/soap_server.php?wsdl
//  >Import : http://paradigmati.com.br/soap_server.php?wsdl>0
// Encoding : ISO-8859-1
// Version  : 1.0
// (19/11/2013 17:08:13 - - $Rev: 56641 $)
// ************************************************************************ //

unit soap_server;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:integer         - "http://www.w3.org/2001/XMLSchema"[]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[]


  // ************************************************************************ //
  // Name      : server.validaPortType
  // Namespace : urn:server.valida
  // soapAction: urn:server.valida#valida
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : server.validaBinding
  // service   : server.valida
  // port      : server.validaPort
  // URL       : http://paradigmati.com.br/soap_server.php
  // ************************************************************************ //
  server_validaPortType = interface(IInvokable)
  ['{1AB89D8D-0C78-A6E4-9250-26378AE58DEE}']
    function  valida(const cod: string): Int64; stdcall;
  end;

function Getserver_validaPortType(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): server_validaPortType;


implementation
  uses SysUtils;

function Getserver_validaPortType(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): server_validaPortType;
const
  defWSDL = 'http://paradigmati.com.br/soap_server.php?wsdl';
  defURL  = 'http://paradigmati.com.br/soap_server.php';
  defSvc  = 'server.valida';
  defPrt  = 'server.validaPort';
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
    Result := (RIO as server_validaPortType);
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
  { server.validaPortType }
  InvRegistry.RegisterInterface(TypeInfo(server_validaPortType), 'urn:server.valida', 'ISO-8859-1', '', 'server.validaPortType');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(server_validaPortType), 'urn:server.valida#valida');

end.