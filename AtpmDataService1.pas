// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://poldametro.bpkb.net/aolws/aolws.dll/wsdl/AtpmDataService
//  >Import : http://poldametro.bpkb.net/aolws/aolws.dll/wsdl/AtpmDataService>0
//  >Import : http://poldametro.bpkb.net/aolws/aolws.dll/wsdl/AtpmDataService>1
// Encoding : utf-8
// Version  : 1.0
// (03/03/2014 10:32:48 - - $Rev: 56641 $)
// ************************************************************************ //

unit AtpmDataService1;

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
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  DataRanmor           = class;                 { "http://poldametro.bpkb.net/"[GblCplx] }
  DataBpkb             = class;                 { "urn:AtpmDataServiceIntf"[GblCplx] }



  // ************************************************************************ //
  // XML       : DataRanmor, global, <complexType>
  // Namespace : http://poldametro.bpkb.net/
  // ************************************************************************ //
  DataRanmor = class(TRemotable)
  private
    FNoMesin: string;
    FWarna: string;
    FPemilik1: string;
    FPemilik2: string;
    FAlamat1: string;
    FAlamat2: string;
    FAlamat3: string;
    FAlamat4: string;
    FNoFaktur: string;
    FTglFaktur: string;
    FKodePos: string;
    FNoIdentitas: string;
    FPekerjaan: string;
    FNoPonsel: string;
    FNamaAtpm: string;
    FNoPabean: string;
    FTglPabean: string;
    FNoPib: string;
    FTglPib: string;
    FSut: string;
    FTpt: string;
  published
    property NoMesin:     string  read FNoMesin write FNoMesin;
    property Warna:       string  read FWarna write FWarna;
    property Pemilik1:    string  read FPemilik1 write FPemilik1;
    property Pemilik2:    string  read FPemilik2 write FPemilik2;
    property Alamat1:     string  read FAlamat1 write FAlamat1;
    property Alamat2:     string  read FAlamat2 write FAlamat2;
    property Alamat3:     string  read FAlamat3 write FAlamat3;
    property Alamat4:     string  read FAlamat4 write FAlamat4;
    property NoFaktur:    string  read FNoFaktur write FNoFaktur;
    property TglFaktur:   string  read FTglFaktur write FTglFaktur;
    property KodePos:     string  read FKodePos write FKodePos;
    property NoIdentitas: string  read FNoIdentitas write FNoIdentitas;
    property Pekerjaan:   string  read FPekerjaan write FPekerjaan;
    property NoPonsel:    string  read FNoPonsel write FNoPonsel;
    property NamaAtpm:    string  read FNamaAtpm write FNamaAtpm;
    property NoPabean:    string  read FNoPabean write FNoPabean;
    property TglPabean:   string  read FTglPabean write FTglPabean;
    property NoPib:       string  read FNoPib write FNoPib;
    property TglPib:      string  read FTglPib write FTglPib;
    property Sut:         string  read FSut write FSut;
    property Tpt:         string  read FTpt write FTpt;
  end;



  // ************************************************************************ //
  // XML       : DataBpkb, global, <complexType>
  // Namespace : urn:AtpmDataServiceIntf
  // ************************************************************************ //
  DataBpkb = class(TRemotable)
  private
    FNoBpkb: string;
    FTglBpkb: string;
    FNoPolisi: string;
  published
    property NoBpkb:   string  read FNoBpkb write FNoBpkb;
    property TglBpkb:  string  read FTglBpkb write FTglBpkb;
    property NoPolisi: string  read FNoPolisi write FNoPolisi;
  end;


  // ************************************************************************ //
  // Namespace : http://poldametro.bpkb.net/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : AtpmDataServicebinding
  // service   : AtpmDataServiceservice
  // port      : AtpmDataServicePort
  // URL       : http://poldametro.bpkb.net/aolws/aolws.dll/soap/AtpmDataService
  // ************************************************************************ //
  AtpmDataService = interface(IInvokable)
  ['{756A10B5-D74D-469D-7277-1BADF96F9FD4}']
    function  SignIn(const UserName: string; const Password: string; out Sid: string): Boolean; stdcall;
    function  SignOut(const Sid: string): Boolean; stdcall;
    function  GetDataRanmor(const Sid: string; const NoRangka: string; out OutData: DataRanmor): Boolean; stdcall;
    function  FeedDataBpkb(const Sid: string; const NoRangka: string; const InData: DataBpkb): Boolean; stdcall;
  end;

function GetAtpmDataService(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): AtpmDataService;


implementation
  uses SysUtils;

function GetAtpmDataService(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): AtpmDataService;
const
  defWSDL = 'http://poldametro.bpkb.net/aolws/aolws.dll/wsdl/AtpmDataService';
  defURL  = 'http://poldametro.bpkb.net/aolws/aolws.dll/soap/AtpmDataService';
  defSvc  = 'AtpmDataServiceservice';
  defPrt  = 'AtpmDataServicePort';
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
    Result := (RIO as AtpmDataService);
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
  { AtpmDataService }
  InvRegistry.RegisterInterface(TypeInfo(AtpmDataService), 'http://poldametro.bpkb.net/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(AtpmDataService), '');
  RemClassRegistry.RegisterXSClass(DataRanmor, 'http://poldametro.bpkb.net/', 'DataRanmor');
  RemClassRegistry.RegisterXSClass(DataBpkb, 'urn:AtpmDataServiceIntf', 'DataBpkb');

end.