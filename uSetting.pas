unit uSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, Printers, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, DBAccess, Uni,
  MemDS, dxSkinscxPCPainter, cxPC;

type
  TfSetting = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Bevel2: TBevel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    Label31: TLabel;
    Bevel1: TBevel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    eNamaPerusahaan: TEdit;
    eAlamatPerusahaan: TMemo;
    eTelp: TEdit;
    eFax: TEdit;
    eKota: TEdit;
    cbReport: TComboBox;
    eLimitData: TEdit;
    eTID: TEdit;
    eHostSrvAPM: TEdit;
    ePortSrvAPM: TEdit;
    eUserName: TcxTextEdit;
    ePassw: TcxTextEdit;
    eHost: TcxTextEdit;
    ePort: TcxTextEdit;
    eSID: TcxTextEdit;
    cxButton1: TcxButton;
    cbCariLangsung: TComboBox;
    cbPropinsi: TcxDBLookupComboBox;
    cbBBN2Nopol: TComboBox;
    QProp2: TUniQuery;
    dsQProp2: TUniDataSource;
    QProp1: TUniQuery;
    dsQProp1: TUniDataSource;
    Label47: TLabel;
    Label48: TLabel;
    eNoAkhirMLD: TEdit;
    eNoAwalMLD: TEdit;
    cxTabSheet3: TcxTabSheet;
    Bevel5: TBevel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    eDefWSDL: TEdit;
    eDefURL: TEdit;
    eDefSvc: TEdit;
    eDefPrt: TEdit;
    Bevel3: TBevel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    eKodeBank: TEdit;
    cbKodeBayar: TComboBox;
    cbCetakStrukBank: TComboBox;
    cbCetakLabelReg: TComboBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    cbLog: TComboBox;
    cbPrinterBPKB: TComboBox;
    cbPrinterCF: TComboBox;
    cbKeyBarcode: TComboBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    CbOnlineCF: TComboBox;
    cbNopolFromSTNK: TComboBox;
    bSimpan: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bSimpanClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshPropinsi;
  end;

var
  fSetting: TfSetting;

implementation
Uses
  uDM, uVariabel, uModul, uTunggu, uLogin, uMain;
{$R *.dfm}

procedure TfSetting.FormShow(Sender: TObject);
var
  i : integer;
begin
  RefreshPropinsi;
  eNamaPerusahaan.Text := TPerusahaan;
  eAlamatPerusahaan.Text := TAlamatPerusahaan;
  eTelp.Text := TTelpPerusahaan;
  eFax.Text := TFaxPerusahaan;
  eKota.Text := TKota;
  cbReport.ItemIndex := StrToInt(TReport);
  eLimitData.Text := TLIMITDATA;
  eTID.Text := TLoket;
  eHostSrvAPM.Text := THOST_SRV_APM;
  ePortSrvAPM.Text := TPORT_SRV_APM;
  eKodeBank.Text := TKODEBANK;
  cbKodeBayar.ItemIndex := StrToInt(TKODEBAYAR);
  cbCetakStrukBank.ItemIndex := StrToInt(TCETAKSTR);
  cbCetakLabelReg.ItemIndex := StrToInt(TCETAKLREG);
  eDefWSDL.Text := TdefWSDL;
  eDefURL.Text := TdefURL;
  eDefSvc.Text := TdefSvc;
  eDefPrt.Text := TdefPrt;
  eHostSrvAPM.Text := THOST_SRV_APM;
  ePortSrvAPM.Text := TPORT_SRV_APM;
  eUserName.Text := TUSER_SERVER;
  ePassw.Text := TPASSW_SERVER;
  eHost.Text := THOST_SERVER;
  ePort.Text := TPORT_SERVER;
  eSID.Text := TSID_SERVER;
  cbLog.ItemIndex := StrToInt(isTreaceLog);
  cbPrinterBPKB.Clear;
  cbPrinterCF.Clear;
  if vNamaProp = '' then
  begin
    cbPropinsi.Text := '';
  end
  else
  begin
    cbPropinsi.ItemIndex := -1;
    cbPropinsi.DoEditing;
    cbPropinsi.EditText := vNamaProp;
    cbPropinsi.PostEditValue;
  end;
  
  for i := 0 to Printer.Printers.Count - 1 do
  begin
    cbPrinterBPKB.Items.Add(Printer.Printers.Strings[i]);
    cbPrinterCF.Items.Add(Printer.Printers.Strings[i]);
  end;
  cbPrinterBPKB.Text := TPRINTER_BPKB;
  cbPrinterCF.Text := TPRINTER_CF;
  cbKeyBarcode.ItemIndex := StrToInt(isKeyBarcode);
  CbOnlineCF.ItemIndex := StrToInt(TOnlineCF);
  cbNopolFromSTNK.ItemIndex := StrToInt(vNOPOLFromSTNK);
  cbCariLangsung.ItemIndex := StrToInt(vIsCariLangsung);
  if vBBN2Nopol='' then
     vBBN2Nopol := '0';
  cbBBN2Nopol.ItemIndex := StrToInt(vBBN2Nopol);
  eNoAwalMLD.Text := tNoAwalMLD;
  eNoAkhirMLD.Text := tNoAkhirMLD;
  eNamaPerusahaan.SetFocus;
end;

procedure TfSetting.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN,VK_DOWN : SendMessage(Handle,WM_NEXTDLGCTL,0,0);
    VK_UP             : SendMessage(Handle,WM_NEXTDLGCTL,1,0);
  end;
end;

procedure TfSetting.bSimpanClick(Sender: TObject);
begin
  TPerusahaan := eNamaPerusahaan.Text;
  TAlamatPerusahaan := eAlamatPerusahaan.Text;
  TTelpPerusahaan := eTelp.Text;
  TFaxPerusahaan := eFax.Text;
  TKota := eKota.Text;
  TReport := cbReport.Text;
  TLIMITDATA := eLimitData.Text;
  TLoket := eTID.Text;
  TISSETTING := '1';
  TKODEBANK := eKodeBank.Text;
  TKODEBAYAR := cbKodeBayar.Text;
  TCETAKSTR := cbCetakStrukBank.Text;
  TCETAKLREG := cbCetakLabelReg.Text;
  TdefWSDL := eDefWSDL.Text;
  TdefURL := eDefURL.Text;
  TdefSvc := eDefSvc.Text;
  TdefPrt := eDefPrt.Text;
  THOST_SRV_APM := eHostSrvAPM.Text;
  TPORT_SRV_APM := ePortSrvAPM.Text;
  TUSER_SERVER := eUserName.Text;
  TPASSW_SERVER := ePassw.Text;
  THOST_SERVER := eHost.Text;
  TPORT_SERVER := ePort.Text;
  TSID_SERVER := eSID.Text;
  isTreaceLog := cbLog.Text;
  TPRINTER_BPKB := cbPrinterBPKB.Text;
  TPRINTER_CF := cbPrinterCF.Text;
  isKeyBarcode := IntToStr(cbKeyBarcode.ItemIndex);
  TOnLineCF := IntToStr(CbOnlineCF.ItemIndex);
  vNOPOLFromSTNK := IntToStr(cbNopolFromSTNK.ItemIndex);
  vIsCariLangsung := IntToStr(cbCariLangsung.ItemIndex);
  vKodeProp := cbPropinsi.EditValue;
  vNamaProp := cbPropinsi.Text;
  vBBN2Nopol := cbBBN2Nopol.Text;
  tNoAwalMLD := eNoAwalMLD.Text;
  tNoAkhirMLD := eNoAkhirMLD.Text;

  fMain.InitConfig('1');
  MessageDlg('Applikasi berhasil diSetting!'+#13+
             'Restart Aplikasi !!'+#13+
             'Terimakasih',mtInformation,[mbOK],0);
  Application.Terminate;
end;

procedure TfSetting.cxButton1Click(Sender: TObject);
begin
  TUSER_SERVER := eUserName.Text;
  TPASSW_SERVER := ePassw.Text;
  THOST_SERVER := eHost.Text;
  TPORT_SERVER := ePort.Text;
  TSID_SERVER := eSID.Text;

  if InitDB(DM.dbSrv) then
  begin
    MessageDlg('Database Berhasil diSetting!',mtInformation,[mbOK],0);
    RefreshPropinsi;
    if vNamaProp = '' then
    begin
      cbPropinsi.Text := '';
    end
    else
    begin
      cbPropinsi.ItemIndex := -1;
      cbPropinsi.DoEditing;
      cbPropinsi.EditText := vNamaProp;
      cbPropinsi.PostEditValue;
    end;
  end
  else
  begin
    MessageDlg('Database gagal disetting',mtError,[mbOK],0);
  end;
end;

procedure TfSetting.RefreshPropinsi;
begin
  QProp1.Close;
  QProp1.SQL.Text := 'select to_char(no_prop) as no_prop,nama_prop from m_propinsi order by nama_prop';
  QProp1.Open;

  QProp2.Close;
  QProp2.SQL.Text := 'select to_char(no_prop) as no_prop,nama_prop from m_propinsi order by nama_prop';
  QProp2.Open;
end;

end.
