// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://poldametro.bpkb.net/aolws/aolws.dll/wsdl/IWSDLPublish
//  >Import : http://poldametro.bpkb.net/aolws/aolws.dll/wsdl/IWSDLPublish>0
// Encoding : utf-8
// Version  : 1.0
// (03/03/2014 10:34:01 - - $Rev: 56641 $)
// ************************************************************************ //

unit IWSDLPublish1;

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
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:TWideStringDynArray - "http://www.borland.com/namespaces/Types"[GblCplx]


  // ************************************************************************ //
  // Namespace : http://www.borland.com/namespaces/Types
  // soapAction: http://www.borland.com/namespaces/Types-IWSDLPublish
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : IWSDLPublishbinding
  // service   : IWSDLPublishservice
  // port      : IWSDLPublishPort
  // URL       : http://poldametro.bpkb.net/aolws/aolws.dll/soap/IWSDLPublish
  // ************************************************************************ //
  IWSDLPublish = interface(IInvokable)
  ['{D582BE0E-85B6-33DC-7D89-6D022349F3FC}']
    function  GetPortTypeList: TWideStringDynArray; stdcall;
    function  GetWSDLForPortType(const PortType: string): string; stdcall;
    function  GetTypeSystemsList: TWideStringDynArray; stdcall;
    function  GetXSDForTypeSystem(const TypeSystem: string): string; stdcall;
  end;

function GetIWSDLPublish(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IWSDLPublish;


implementation
  uses SysUtils;

function GetIWSDLPublish(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IWSDLPublish;
const
  defWSDL = 'http://poldametro.bpkb.net/aolws/aolws.dll/wsdl/IWSDLPublish';
  defURL  = 'http://poldametro.bpkb.net/aolws/aolws.dll/soap/IWSDLPublish';
  defSvc  = 'IWSDLPublishservice';
  defPrt  = 'IWSDLPublishPort';
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
    Result := (RIO as IWSDLPublish);
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
  { IWSDLPublish }
  InvRegistry.RegisterInterface(TypeInfo(IWSDLPublish), 'http://www.borland.com/namespaces/Types', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IWSDLPublish), 'http://www.borland.com/namespaces/Types-IWSDLPublish');

end.