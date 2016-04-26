unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  ComCtrls, ExtCtrls, cxPC, cxSplitter, dxNavBarCollns, cxClasses, ShellApi,
  dxNavBarBase, dxNavBar, Registry, IniFiles, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxNavBar2Painter, dxSkinscxPCPainter,
  HotKeyManager;

type
  TfMain = class(TForm)
    MainMenu1: TMainMenu;
    MainMenu: TMenuItem;
    LogOff1: TMenuItem;
    N1: TMenuItem;
    CheckUpdateSistem1: TMenuItem;
    StatusBar1: TStatusBar;
    dxNavBar1: TdxNavBar;
    G_INVENTORY: TdxNavBarGroup;
    G_BBN1: TdxNavBarGroup;
    G_GANTI_NAMA: TdxNavBarGroup;
    G_BBN2: TdxNavBarGroup;
    G_ADMINISTRASI: TdxNavBarGroup;
    G_MUTASI: TdxNavBarGroup;
    G_BLOKIR_BPKB: TdxNavBarGroup;
    G_MANAGEMENT_NOPOL: TdxNavBarGroup;
    G_MATERIAL: TdxNavBarGroup;
    G_ADMINISTRASI_SISTEM: TdxNavBarGroup;
    G_REPORT_MONITORING: TdxNavBarGroup;
    G_DATA_MASTER: TdxNavBarGroup;
    dxOrderMaterial_1: TdxNavBarItem;
    dxInputMaterial_2: TdxNavBarItem;
    dxPendistribusianMaterial_3: TdxNavBarItem;
    dxLabelBarcode_4: TdxNavBarItem;
    dxLaporanMaterial_5: TdxNavBarItem;
    dxPendaftaran_bbn1_7: TdxNavBarItem;
    dxRegistrasi_8: TdxNavBarItem;
    dxMonitorPrintKartuInduk_10: TdxNavBarItem;
    dxPrintTandaTerima_11: TdxNavBarItem;
    dxVerifikasi_12: TdxNavBarItem;
    dxPenulisan_13: TdxNavBarItem;
    dxPenyerahanBPKB_14: TdxNavBarItem;
    dxPengarsipanBerkas_15: TdxNavBarItem;
    dxPendaftaranGN_20: TdxNavBarItem;
    dxRegistrasiGN_18: TdxNavBarItem;
    dxPermintaanBonArsipGN_19: TdxNavBarItem;
    dxMonitorPrintKartuIndukGN_21: TdxNavBarItem;
    dxPrintTandaTerimaGN_22: TdxNavBarItem;
    dxVerifikasiGN_23: TdxNavBarItem;
    dxPenulisanGN_24: TdxNavBarItem;
    dxPenyerahanBPKBGN_26: TdxNavBarItem;
    dxPemusnahanBerkasBPKBGN_27: TdxNavBarItem;
    dxBBN2_29: TdxNavBarItem;
    dxJenis2Perubahan_30: TdxNavBarItem;
    dxLapGantiIdentitas_31: TdxNavBarItem;
    dxPrintKartuInduk_32: TdxNavBarItem;
    dxAdministrasiTTDBuku_34: TdxNavBarItem;
    dxCetakSKETBPKB_35: TdxNavBarItem;
    dxPendaftaranMutasi_37: TdxNavBarItem;
    dxEntryMutasiLuarDaerah_38: TdxNavBarItem;
    dxPrintKartuInduk_39: TdxNavBarItem;
    dxLabelMutasiLD_40: TdxNavBarItem;
    dxPenyerahanMutasiLD_41: TdxNavBarItem;
    dxBlokirBPKB_43: TdxNavBarItem;
    dxAlokasiNOPOL_45: TdxNavBarItem;
    dxPemesananNopol25: TdxNavBarItem;
    dxDaftarListNopol120: TdxNavBarItem;
    dxLabelMaterial_47: TdxNavBarItem;
    dxInputMaterial_48: TdxNavBarItem;
    dxReturMaterial_49: TdxNavBarItem;
    dxStockMaterial_50: TdxNavBarItem;
    dxLaporanMaterial_51: TdxNavBarItem;
    dxUser_53: TdxNavBarItem;
    dxKonfigSistem_54: TdxNavBarItem;
    dxJurnalBPKB_56: TdxNavBarItem;
    dxStatusPenerbitanBPKB_57: TdxNavBarItem;
    dxEditDataBPKB_58: TdxNavBarItem;
    dxMonitorPNBP_59: TdxNavBarItem;
    dxPendaftaranBPKB_60: TdxNavBarItem;
    dxHasilValidasi_61: TdxNavBarItem;
    dxPembayaranBank_62: TdxNavBarItem;
    dxPencarianBPKB_63: TdxNavBarItem;
    dxStatusPenyelesainBerkas_64: TdxNavBarItem;
    dxMutasiLD_65: TdxNavBarItem;
    dxBlokir_66: TdxNavBarItem;
    dxTandaTangan_67: TdxNavBarItem;
    dxHistoryBPKB_68: TdxNavBarItem;
    dxLaporanL405B_69: TdxNavBarItem;
    dxLaporanPeruntukan_70: TdxNavBarItem;
    dxRefDataSamsat_71: TdxNavBarItem;
    dxATPM_101: TdxNavBarItem;
    dxBahanBakar_102: TdxNavBarItem;
    dxCaraImport_103: TdxNavBarItem;
    dxDealer_104: TdxNavBarItem;
    dxJenis_105: TdxNavBarItem;
    dxJenisDaftaran_106: TdxNavBarItem;
    dxKelurahan_109: TdxNavBarItem;
    dxMerk_110: TdxNavBarItem;
    dxModel_111: TdxNavBarItem;
    dxPerubahan_112: TdxNavBarItem;
    dxPeruntukan_113: TdxNavBarItem;
    dxPolda_114: TdxNavBarItem;
    dxPolres_115: TdxNavBarItem;
    dxWarna_116: TdxNavBarItem;
    dxWarnaKartu_117: TdxNavBarItem;
    dxWarnaTNKB_118: TdxNavBarItem;
    cxSplitter2: TcxSplitter;
    pProses: TPanel;
    pc_proses: TcxPageControl;
    G_EX_LUAR_DAERAH: TdxNavBarGroup;
    dxPendaftaranEXLD_119: TdxNavBarItem;
    dxRegistrasiEXLD_120: TdxNavBarItem;
    dxMonitorPrintKIEXLD_121: TdxNavBarItem;
    dxPrintTandaTerimaEXLD_122: TdxNavBarItem;
    dxVerifikasiEXLD_123: TdxNavBarItem;
    dxPenulisanEXLD_124: TdxNavBarItem;
    dxPenyerahanBPKBEXLD_125: TdxNavBarItem;
    G_GANTI_BUKU_BPKB: TdxNavBarGroup;
    G_DUPLIKAT: TdxNavBarGroup;
    dxPendaftaranGB_126: TdxNavBarItem;
    dxRegistrasiGB_127: TdxNavBarItem;
    dxMonitorPrintKIGB_128: TdxNavBarItem;
    dxPrintTandaTerimaGB_129: TdxNavBarItem;
    dxVerifikasiGB_130: TdxNavBarItem;
    dxPenulisanGB_131: TdxNavBarItem;
    dxPenyerahanGB_132: TdxNavBarItem;
    dxPendaftaranDuplikat_133: TdxNavBarItem;
    dxRegistrasiDuplikat_134: TdxNavBarItem;
    dxMonitorPrintKIDuplikat_135: TdxNavBarItem;
    dxPrintTandaTerimaDuplikat_136: TdxNavBarItem;
    dxVerifikasiDuplikat_137: TdxNavBarItem;
    dxPenulisanDuplikat_138: TdxNavBarItem;
    dxPenyerahanDuplikat_139: TdxNavBarItem;
    dxDataFaktur_140: TdxNavBarItem;
    dxLaporanBBN1_141: TdxNavBarItem;
    dxLaporanBN_142: TdxNavBarItem;
    dxEmbosing_143: TdxNavBarItem;
    dxUsrMgnAPM_144: TdxNavBarItem;
    dxRefTipe_145: TdxNavBarItem;
    N2: TMenuItem;
    T1: TMenuItem;
    dxMonitoringDaftDealer_146: TdxNavBarItem;
    dxBBN1STNK: TdxNavBarItem;
    dxLoketBRI_148: TdxNavBarItem;
    dxCekMutasiRanmor149: TdxNavBarItem;
    dxMaterial150: TdxNavBarItem;
    HotKeyManager1: THotKeyManager;
    procedure G_INVENTORYClick(Sender: TObject);
    procedure dxOrderMaterial_1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxInputMaterial_2Click(Sender: TObject);
    procedure dxPendistribusianMaterial_3Click(Sender: TObject);
    procedure dxPendaftaran_bbn1_7Click(Sender: TObject);
    procedure dxLabelMaterial_47Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LogOff1Click(Sender: TObject);
    procedure dxRegistrasi_8Click(Sender: TObject);
    procedure dxMonitorPrintKartuInduk_10Click(Sender: TObject);
    procedure dxVerifikasi_12Click(Sender: TObject);
    procedure dxPenulisan_13Click(Sender: TObject);
    procedure dxUser_53Click(Sender: TObject);
    procedure dxEditDataBPKB_58Click(Sender: TObject);
    procedure dxRefDataSamsat_71Click(Sender: TObject);
    procedure dxPrintTandaTerima_11Click(Sender: TObject);
    procedure dxPendaftaranGN_20Click(Sender: TObject);
    procedure dxRegistrasiGN_18Click(Sender: TObject);
    procedure dxMonitorPrintKartuIndukGN_21Click(Sender: TObject);
    procedure dxPrintTandaTerimaGN_22Click(Sender: TObject);
    procedure dxVerifikasiGN_23Click(Sender: TObject);
    procedure dxPenulisanGN_24Click(Sender: TObject);
    procedure dxPenyerahanBPKB_14Click(Sender: TObject);
    procedure dxPenyerahanBPKBGN_26Click(Sender: TObject);
    procedure dxBlokirBPKB_43Click(Sender: TObject);
    procedure dxDaftarListNopol120Click(Sender: TObject);
    procedure dxLabelBarcode_4Click(Sender: TObject);
    procedure dxLaporanMaterial_5Click(Sender: TObject);
    procedure dxPermintaanBonArsipGN_19Click(Sender: TObject);
    procedure dxPemusnahanBerkasBPKBGN_27Click(Sender: TObject);
    procedure dxPengarsipanBerkas_15Click(Sender: TObject);
    procedure dxPendaftaranEXLD_119Click(Sender: TObject);
    procedure dxRegistrasiEXLD_120Click(Sender: TObject);
    procedure dxMonitorPrintKIEXLD_121Click(Sender: TObject);
    procedure dxPrintTandaTerimaEXLD_122Click(Sender: TObject);
    procedure dxVerifikasiEXLD_123Click(Sender: TObject);
    procedure dxPenulisanEXLD_124Click(Sender: TObject);
    procedure dxPenyerahanBPKBEXLD_125Click(Sender: TObject);
    procedure dxBBN2_29Click(Sender: TObject);
    procedure dxJenis2Perubahan_30Click(Sender: TObject);
    procedure dxPrintKartuInduk_32Click(Sender: TObject);
    procedure dxLapGantiIdentitas_31Click(Sender: TObject);
    procedure dxPendaftaranMutasi_37Click(Sender: TObject);
    procedure dxEntryMutasiLuarDaerah_38Click(Sender: TObject);
    procedure dxPrintKartuInduk_39Click(Sender: TObject);
    procedure dxLabelMutasiLD_40Click(Sender: TObject);
    procedure dxPenyerahanMutasiLD_41Click(Sender: TObject);
    procedure dxPendaftaranGB_126Click(Sender: TObject);
    procedure dxRegistrasiGB_127Click(Sender: TObject);
    procedure dxMonitorPrintKIGB_128Click(Sender: TObject);
    procedure dxPrintTandaTerimaGB_129Click(Sender: TObject);
    procedure dxVerifikasiGB_130Click(Sender: TObject);
    procedure dxPenulisanGB_131Click(Sender: TObject);
    procedure dxPenyerahanGB_132Click(Sender: TObject);
    procedure dxPendaftaranDuplikat_133Click(Sender: TObject);
    procedure dxRegistrasiDuplikat_134Click(Sender: TObject);
    procedure dxMonitorPrintKIDuplikat_135Click(Sender: TObject);
    procedure dxPrintTandaTerimaDuplikat_136Click(Sender: TObject);
    procedure dxVerifikasiDuplikat_137Click(Sender: TObject);
    procedure dxPenulisanDuplikat_138Click(Sender: TObject);
    procedure dxPenyerahanDuplikat_139Click(Sender: TObject);
    procedure dxJurnalBPKB_56Click(Sender: TObject);
    procedure dxMonitorPNBP_59Click(Sender: TObject);
    procedure dxDataFaktur_140Click(Sender: TObject);
    procedure CheckUpdateSistem1Click(Sender: TObject);
    procedure dxStatusPenerbitanBPKB_57Click(Sender: TObject);
    procedure dxPendaftaranBPKB_60Click(Sender: TObject);
    procedure dxPencarianBPKB_63Click(Sender: TObject);
    procedure dxBlokir_66Click(Sender: TObject);
    procedure dxMutasiLD_65Click(Sender: TObject);
    procedure dxTandaTangan_67Click(Sender: TObject);
    procedure dxHistoryBPKB_68Click(Sender: TObject);
    procedure dxLaporanL405B_69Click(Sender: TObject);
    procedure dxATPM_101Click(Sender: TObject);
    procedure dxCetakSKETBPKB_35Click(Sender: TObject);
    procedure dxAdministrasiTTDBuku_34Click(Sender: TObject);
    procedure dxLaporanBBN1_141Click(Sender: TObject);
    procedure dxLaporanBN_142Click(Sender: TObject);
    procedure dxEmbosing_143Click(Sender: TObject);
    procedure dxUsrMgnAPM_144Click(Sender: TObject);
    procedure dxRefTipe_145Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure dxMonitoringDaftDealer_146Click(Sender: TObject);
    procedure dxAlokasiNOPOL_45Click(Sender: TObject);
    procedure dxBBN1STNKClick(Sender: TObject);
    procedure dxLoketBRI_148Click(Sender: TObject);
    procedure dxPemesananNopol25Click(Sender: TObject);
    procedure dxInputMaterial_48Click(Sender: TObject);
    procedure dxMaterial150Click(Sender: TObject);
    procedure dxBahanBakar_102Click(Sender: TObject);
    procedure dxCaraImport_103Click(Sender: TObject);
    procedure dxDealer_104Click(Sender: TObject);
    procedure dxJenis_105Click(Sender: TObject);
    procedure dxJenisDaftaran_106Click(Sender: TObject);
    procedure dxKelurahan_109Click(Sender: TObject);
    procedure dxMerk_110Click(Sender: TObject);
    procedure dxModel_111Click(Sender: TObject);
    procedure dxPerubahan_112Click(Sender: TObject);
    procedure dxPeruntukan_113Click(Sender: TObject);
    procedure dxPolda_114Click(Sender: TObject);
    procedure dxPolres_115Click(Sender: TObject);
    procedure dxWarna_116Click(Sender: TObject);
    procedure dxWarnaKartu_117Click(Sender: TObject);
    procedure dxWarnaTNKB_118Click(Sender: TObject);
    procedure dxKonfigSistem_54Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure HotKeyManager1HotKeyPressed(HotKey: Cardinal; Index: Word);
  private
    { Private declarations }
    HotKeyF1,HotKeyF2,HotKeyF3,HotKeyF4,HotKeyF5,HotKeyF9,HotKeyF10,HotKeyF11,HotKeyCtrlD : Word;
  public
    { Public declarations }
    procedure InitConfig(Jenis: Char);
    procedure MenuAktif;
    procedure MenuNonAktif;
    procedure InitIni(Jenis: Char);
    procedure TulisStatus(Index: Integer; Data: String);
    procedure CekKonfigLaporan;

    function IsFormOpen(const FormName : string): Boolean;
  end;

var
  fMain: TfMain;

Const
  CNamaIni = 'SIMRANMOR.INI';

implementation
Uses
  uVariabel, uDM, uModul, uSMBIOS, uInventoryMenu, uLogin, uSettingDB, uOrderMaterial,
  DB, Uni, uInputMaterial, uPendistribusianMaterial, uBBN1Menu, uPendaftaran,
  uLabelBPKB, uRegistrasi, uKartuIndukBBN1, uVerifikasiBBN1, uPenulisanBBN1,
  uUserManagement, uEditDataBPKB, uRefDataSamsat, uTandaTerimaBBN1, uPendaftaranBN,
  uRegistrasiBN, uKartuIndukBN, uTandaTerimaBN, uVerifikasiBN, uPenulisanBN,
  uPenyerahanBPKB, uPenyerahanBPKBBN, uBlokir, uManagementNOPOL, uLabelMaterial,
  uLaporanMaterial, uPermintaanBonArsip, uPemusnahanBerkasBPKB, uPengarsipanBerkas,
  uPendaftaranExLD, uRegistrasiExLD, uKartuIndukExLD, uTandaTerimaExLD, uVerifikasiExLD,
  uPenulisanExLD, uPenyerahanBPKBExLD, uPerubahan, uJenisPerubahan, uKartuIndukPerubahan,
  uLaporanPerubahan, uPendaftaranMLD, uEntryMLD, uKartuIndukMLD, uPenyerahanBPKBMLD,
  uPendaftaranGB, uRegistrasiGB, uKartuIndukGB, uTandaTerimaGB, uVerifikasiGB, uPenulisanGB,
  uPenyerahanBPKBGB, uJurnalBPKB, uMonitorPNBP, uCekAktifasi, uMonitorPNBP2,
  uPendaftaranDup, uRegistrasiDup, uKartuIndukDup, uTandaTerimaDup, uVerifikasiDup, uPenulisanDup,
  uPenyerahanBPKBDup, uPemohon, uImportDataFaktur, uStatusPenerbitanBPKB, uLaporanPendaftaran,
  uDataBPKB, uLapBlokirBukaBlokir, uLapMutasiLD, uLapPenggunaanTTD, uHistoryBPKB, uLapL405B,
  uAPM, uSKETBPKB, uAdministrasiTTDBuku, uLaporanBBN1, uLaporanBN, uEmbosing, uUsrMgnAPM,
  uRefTipe, uMonitoringDaftDealer, uSTNK, uLoketBRI, uAlokasiNOPOL, uInputMaterialBPKB,
  uMasterMaterial, uBahanBakar, uCaraImport, uDealer, uJenis, uJenisDaftaran, uKelurahan,
  uMerk, uModel, uMasterPerubahan, uPeruntukan, uPolda, uPolres, uWarna, uWarnaKartu,
  uWarnaTNKB, uSetting;
{$R *.dfm}

{ TfMain }

procedure TfMain.InitConfig(Jenis: Char);
var
  Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\JongPari\SIMRANMOR2', False)
    then
    begin
      Case Jenis Of
      '0' : begin
             // database
             THOST_SERVER  := ClearDecrypt(Reg.ReadString('2A'));
             TPORT_SERVER  := ClearDecrypt(Reg.ReadString('2B'));
             TUSER_SERVER  := ClearDecrypt(Reg.ReadString('2C'));
             TPASSW_SERVER := ClearDecrypt(Reg.ReadString('2D'));
             TSID_SERVER   := ClearDecrypt(Reg.ReadString('2E'));
             // pendukung lainnya
             TPerusahaan := ClearDecrypt(Reg.ReadString('3A'));
             TAlamatPerusahaan := ClearDecrypt(Reg.ReadString('3B'));
             TTelpPerusahaan := ClearDecrypt(Reg.ReadString('3C'));
             TFaxPerusahaan := ClearDecrypt(Reg.ReadString('3D'));
             TKota := ClearDecrypt(Reg.ReadString('3E'));
             TReport := ClearDecrypt(Reg.ReadString('4A'));
             TLIMITDATA := ClearDecrypt(Reg.ReadString('4B'));
             TLoket := ClearDecrypt(Reg.ReadString('4C'));
             TKODEBANK := ClearDecrypt(Reg.ReadString('4D'));
             TKODEBAYAR := ClearDecrypt(Reg.ReadString('4E'));
             TCETAKSTR := ClearDecrypt(Reg.ReadString('4F'));
             TCETAKLREG := ClearDecrypt(Reg.ReadString('4G'));
             TdefWSDL := Reg.ReadString('5A');
             TdefURL := Reg.ReadString('5B');
             TdefSvc := Reg.ReadString('5C');
             TdefPrt := Reg.ReadString('5D');
             THOST_SRV_APM := ClearDecrypt(Reg.ReadString('6A'));
             TPORT_SRV_APM := ClearDecrypt(Reg.ReadString('6B'));
             isTreaceLog := Reg.ReadString('7A');
             TPRINTER_BPKB := Reg.ReadString('8A');
             TPRINTER_CF := Reg.ReadString('8B');
             tAktifasi := Reg.ReadString('8C');
             isKeyBarcode := Reg.ReadString('8D');
             TOnLineCF := Reg.ReadString('8E');
             vNOPOLFromSTNK := Reg.ReadString('8F');
             vIsCariLangsung := Reg.ReadString('8G');
             vKodeProp := Reg.ReadInteger('8H');
             vNamaProp := Reg.ReadString('8I');
             vBBN2Nopol := Reg.ReadString('8J');
             tNoAwalMLD := Reg.ReadString('9A');
             tNoAkhirMLD := Reg.ReadString('9B');
            end;
      '1' : begin
             Reg.WriteString('2A',ClearEncrypt(THOST_SERVER));
             Reg.WriteString('2B',ClearEncrypt(TPORT_SERVER));
             Reg.WriteString('2C',ClearEncrypt(TUSER_SERVER));
             Reg.WriteString('2D',ClearEncrypt(TPASSW_SERVER));
             Reg.WriteString('2E',ClearEncrypt(TSID_SERVER));

             Reg.WriteString('3A',ClearEncrypt(TPerusahaan));
             Reg.WriteString('3B',ClearEncrypt(TAlamatPerusahaan));
             Reg.WriteString('3C',ClearEncrypt(TTelpPerusahaan));
             Reg.WriteString('3D',ClearEncrypt(TFaxPerusahaan));
             Reg.WriteString('3E',ClearEncrypt(TKota));
             Reg.WriteString('4A',ClearEncrypt(TReport));
             Reg.WriteString('4B',ClearEncrypt(TLIMITDATA));
             Reg.WriteString('4C',ClearEncrypt(TLoket));
             Reg.WriteString('4D',ClearEncrypt(TKODEBANK));
             Reg.WriteString('4E',ClearEncrypt(TKODEBAYAR));
             Reg.WriteString('4F',ClearEncrypt(TCETAKSTR));
             Reg.WriteString('4G',ClearEncrypt(TCETAKLREG));
             Reg.WriteString('5A',TdefWSDL);
             Reg.WriteString('5B',TdefURL);
             Reg.WriteString('5C',TdefSvc);
             Reg.WriteString('5D',TdefPrt);
             Reg.WriteString('6A',ClearEncrypt(THOST_SRV_APM));
             Reg.WriteString('6B',ClearEncrypt(TPORT_SRV_APM));
             Reg.WriteString('7A',isTreaceLog);
             Reg.WriteString('8A',TPRINTER_BPKB);
             Reg.WriteString('8B',TPRINTER_CF);
             Reg.WriteString('8C',tAktifasi);
             Reg.WriteString('8D',isKeyBarcode);
             Reg.WriteString('8E',TOnLineCF);
             Reg.WriteString('8F',vNOPOLFromSTNK);
             Reg.WriteString('8G',vIsCariLangsung);
             Reg.WriteInteger('8H',vKodeProp);
             Reg.WriteString('8I',vNamaProp);
             Reg.WriteString('8J',vBBN2Nopol);
             Reg.WriteString('9A',tNoAwalMLD);
             Reg.WriteString('9B',tNoAkhirMLD);
            end;
      end;
    end
    else
    begin
      if Reg.OpenKey('\Software\JongPari\SIMRANMOR2', True) then
      begin
         THOST_SERVER := '10.10.10.210';
         TPORT_SERVER := '1521';
         TUSER_SERVER := 'dbsifik';
         TPASSW_SERVER := 'p1k1r3ndh3w3';
         TSID_SERVER := 'orcl';
         TPerusahaan := 'KEPOLISIAN NEGARA REPUBLIK INDONESIA DAERAH';
         TAlamatPerusahaan := 'JL. . . .';
         TTelpPerusahaan := '(000) 00000';
         TFaxPerusahaan := '(000) 00000';
         TKota := 'MAKASAR';
         TReport := '0';
         TLIMITDATA := '500';
         TLoket := 'PMJ001';
         TKODEBANK := 'MKS';
         TKODEBAYAR := '1';
         TCETAKSTR := '0';
         TCETAKLREG := '0';
         TdefWSDL := 'http://service.bpkb.net/dv/bpkbsvc.dll/wsdl/IBpkbDataService';
         TdefURL := 'http://service.bpkb.net/dv/bpkbsvc.dll/soap/IBpkbDataService';
         TdefSvc := 'IBpkbDataServiceservice';
         TdefPrt := 'IBpkbDataServicePort';
         THOST_SRV_APM := '125.160.164.241';
         TPORT_SRV_APM := '54027';
         isTreaceLog := '0';
         TPRINTER_BPKB := '';
         TPRINTER_CF := '';
         tAktifasi := 'XXXXXXXXXX';
         isKeyBarcode := '0';
         TOnLineCF := '0';
         vNOPOLFromSTNK := '0';
         vIsCariLangsung := '0';
         vKodeProp := 73;
         vNamaProp := 'SULAWESI SELATAN';
         vBBN2Nopol := '0';
         tNoAwalMLD := 'B';
         tNoAkhirMLD := 'LANTAS';

         Reg.WriteString('2A',ClearEncrypt(THOST_SERVER));
         Reg.WriteString('2B',ClearEncrypt(TPORT_SERVER));
         Reg.WriteString('2C',ClearEncrypt(TUSER_SERVER));
         Reg.WriteString('2D',ClearEncrypt(TPASSW_SERVER));
         Reg.WriteString('2E',ClearEncrypt(TSID_SERVER));
         Reg.WriteString('3A',ClearEncrypt(TPerusahaan));
         Reg.WriteString('3B',ClearEncrypt(TAlamatPerusahaan));
         Reg.WriteString('3C',ClearEncrypt(TTelpPerusahaan));
         Reg.WriteString('3D',ClearEncrypt(TFaxPerusahaan));
         Reg.WriteString('3E',ClearEncrypt(TKota));
         Reg.WriteString('4A',ClearEncrypt(TReport));
         Reg.WriteString('4B',ClearEncrypt(TLIMITDATA));
         Reg.WriteString('4C',ClearEncrypt(TLoket));
         Reg.WriteString('4D',ClearEncrypt(TKODEBANK));
         Reg.WriteString('4E',ClearEncrypt(TKODEBAYAR));
         Reg.WriteString('4F',ClearEncrypt(TCETAKSTR));
         Reg.WriteString('4G',ClearEncrypt(TCETAKLREG));
         Reg.WriteString('5A',TdefWSDL);
         Reg.WriteString('5B',TdefURL);
         Reg.WriteString('5C',TdefSvc);
         Reg.WriteString('5D',TdefPrt);
         Reg.WriteString('6A',ClearEncrypt(THOST_SRV_APM));
         Reg.WriteString('6B',ClearEncrypt(TPORT_SRV_APM));
         Reg.WriteString('7A',isTreaceLog);
         Reg.WriteString('8A',TPRINTER_BPKB);
         Reg.WriteString('8B',TPRINTER_CF);
         Reg.WriteString('8C',tAktifasi);
         Reg.WriteString('8D',isKeyBarcode);
         Reg.WriteString('8E',TOnLineCF);
         Reg.WriteString('8F',vNOPOLFromSTNK);
         Reg.WriteString('8G',vIsCariLangsung);
         Reg.WriteInteger('8H',vKodeProp);
         Reg.WriteString('8I',vNamaProp);
         Reg.WriteString('8J',vBBN2Nopol);
         Reg.WriteString('9A',tNoAwalMLD);
         Reg.WriteString('9B',tNoAkhirMLD);
      end;
    end;
  finally
    Reg.CloseKey;
    Reg.Free;
  end;
end;

procedure TfMain.InitIni(Jenis: Char);
begin
  With TIniFile.Create(vNamaDirFontInstall+'KOORD.INI') do
  begin
    Case Jenis of
    '0' : begin //init default
            WriteFloat('SETTING','X1',0);
            WriteFloat('SETTING','Y1',0);
            WriteFloat('SETTING','X2',0);
            WriteFloat('SETTING','Y2',0);
            WriteFloat('SETTING','X3',0);
            WriteFloat('SETTING','Y3',0);
            WriteFloat('SETTING','X4',0);
            WriteFloat('SETTING','Y4',0);
            //buku baru kiri
            WriteFloat('SETTING','X_IDENTITAS',0);
            WriteFloat('SETTING','Y_IDENTITAS',0);
            WriteFloat('SETTING','X_ISIDATA',0);
            WriteFloat('SETTING','Y_ISIDATA',0);
            WriteFloat('SETTING','X_KOTA',0);
            WriteFloat('SETTING','Y_KOTA',0);
            WriteFloat('SETTING','X_TGL',0);
            WriteFloat('SETTING','Y_TGL',0);
            WriteFloat('SETTING','X_SJAB',0);
            WriteFloat('SETTING','Y_SJAB',0);
            WriteFloat('SETTING','X_SNAMA',0);
            WriteFloat('SETTING','Y_SNAMA',0);
            WriteFloat('SETTING','X_SNRP',0);
            WriteFloat('SETTING','Y_SNRP',0);
            WriteFloat('SETTING','X_PICT',0);
            WriteFloat('SETTING','Y_PICT',0);
            //buku baru kanan
            WriteFloat('SETTING','X_IDENTITAS2',0);
            WriteFloat('SETTING','Y_IDENTITAS2',0);
            WriteFloat('SETTING','X_ISIDATA2',0);
            WriteFloat('SETTING','Y_ISIDATA2',0);
            WriteFloat('SETTING','X_KOTA2',0);
            WriteFloat('SETTING','Y_KOTA2',0);
            WriteFloat('SETTING','X_TGL2',0);
            WriteFloat('SETTING','Y_TGL2',0);
            WriteFloat('SETTING','X_SJAB2',0);
            WriteFloat('SETTING','Y_SJAB2',0);
            WriteFloat('SETTING','X_SNAMA2',0);
            WriteFloat('SETTING','Y_SNAMA2',0);
            WriteFloat('SETTING','X_SNRP2',0);
            WriteFloat('SETTING','Y_SNRP2',0);
            WriteFloat('SETTING','X_PICT2',0);
            WriteFloat('SETTING','Y_PICT2',0);
            //buku lama kiri
            WriteFloat('SETTING','X_IDENTITAS3',0);
            WriteFloat('SETTING','Y_IDENTITAS3',0);
            WriteFloat('SETTING','X_ISIDATA3',0);
            WriteFloat('SETTING','Y_ISIDATA3',0);
            WriteFloat('SETTING','X_KOTA3',0);
            WriteFloat('SETTING','Y_KOTA3',0);
            WriteFloat('SETTING','X_TGL3',0);
            WriteFloat('SETTING','Y_TGL3',0);
            WriteFloat('SETTING','X_SJAB3',0);
            WriteFloat('SETTING','Y_SJAB3',0);
            WriteFloat('SETTING','X_SNAMA3',0);
            WriteFloat('SETTING','Y_SNAMA3',0);
            WriteFloat('SETTING','X_SNRP3',0);
            WriteFloat('SETTING','Y_SNRP3',0);
            WriteFloat('SETTING','X_PICT3',0);
            WriteFloat('SETTING','Y_PICT3',0);
            //buku lama kanan
            WriteFloat('SETTING','X_IDENTITAS4',0);
            WriteFloat('SETTING','Y_IDENTITAS4',0);
            WriteFloat('SETTING','X_ISIDATA4',0);
            WriteFloat('SETTING','Y_ISIDATA4',0);
            WriteFloat('SETTING','X_KOTA4',0);
            WriteFloat('SETTING','Y_KOTA4',0);
            WriteFloat('SETTING','X_TGL4',0);
            WriteFloat('SETTING','Y_TGL4',0);
            WriteFloat('SETTING','X_SJAB4',0);
            WriteFloat('SETTING','Y_SJAB4',0);
            WriteFloat('SETTING','X_SNAMA4',0);
            WriteFloat('SETTING','Y_SNAMA4',0);
            WriteFloat('SETTING','X_SNRP4',0);
            WriteFloat('SETTING','Y_SNRP4',0);
            WriteFloat('SETTING','X_PICT4',0);
            WriteFloat('SETTING','Y_PICT4',0);
            //buku lama biru
            WriteFloat('SETTING','BL_X1',0);
            WriteFloat('SETTING','BL_Y1',0);
            WriteFloat('SETTING','BL_X2',0);
            WriteFloat('SETTING','BL_Y2',0);
            WriteFloat('SETTING','BL_X3',0);
            WriteFloat('SETTING','BL_Y3',0);
            WriteFloat('SETTING','BL_X4',0);
            WriteFloat('SETTING','BL_Y4',0);
          end;
    '1' : begin //baca
            veX1_CB := ReadFloat('SETTING','X1',0);
            veY1_CB := ReadFloat('SETTING','Y1',0);
            veX2_CB := ReadFloat('SETTING','X2',0);
            veY2_CB := ReadFloat('SETTING','Y2',0);
            veX3_CB := ReadFloat('SETTING','X3',0);
            veY3_CB := ReadFloat('SETTING','Y3',0);
            veX4_CB := ReadFloat('SETTING','X4',0);
            veY4_CB := ReadFloat('SETTING','Y4',0);
            veXIDENTITAS_CB := ReadFloat('SETTING','X_IDENTITAS',0);
            veYIDENTITAS_CB := ReadFloat('SETTING','Y_IDENTITAS',0);
            veXISIDATA_CB := ReadFloat('SETTING','X_ISIDATA',0);
            veYISIDATA_CB := ReadFloat('SETTING','Y_ISIDATA',0);
            veXKOTA := ReadFloat('SETTING','X_KOTA',0);
            veYKOTA := ReadFloat('SETTING','Y_KOTA',0);
            veXTGL := ReadFloat('SETTING','X_TGL',0);
            veYTGL := ReadFloat('SETTING','Y_TGL',0);
            veXSJAB := ReadFloat('SETTING','X_SJAB',0);
            veYSJAB := ReadFloat('SETTING','Y_SJAB',0);
            veXSNAMA := ReadFloat('SETTING','X_SNAMA',0);
            veYSNAMA := ReadFloat('SETTING','Y_SNAMA',0);
            veXSNRP := ReadFloat('SETTING','X_SNRP',0);
            veYSNRP := ReadFloat('SETTING','Y_SNRP',0);
            veXPic := ReadFloat('SETTING','X_PICT',0);
            veYPic := ReadFloat('SETTING','Y_PICT',0);

            veXIDENTITAS_CB2 := ReadFloat('SETTING','X_IDENTITAS2',0);
            veYIDENTITAS_CB2 := ReadFloat('SETTING','Y_IDENTITAS2',0);
            veXISIDATA_CB2 := ReadFloat('SETTING','X_ISIDATA2',0);
            veYISIDATA_CB2 := ReadFloat('SETTING','Y_ISIDATA2',0);
            veXKOTA2 := ReadFloat('SETTING','X_KOTA2',0);
            veYKOTA2 := ReadFloat('SETTING','Y_KOTA2',0);
            veXTGL2 := ReadFloat('SETTING','X_TGL2',0);
            veYTGL2 := ReadFloat('SETTING','Y_TGL2',0);
            veXSJAB2 := ReadFloat('SETTING','X_SJAB2',0);
            veYSJAB2 := ReadFloat('SETTING','Y_SJAB2',0);
            veXSNAMA2 := ReadFloat('SETTING','X_SNAMA2',0);
            veYSNAMA2 := ReadFloat('SETTING','Y_SNAMA2',0);
            veXSNRP2 := ReadFloat('SETTING','X_SNRP2',0);
            veYSNRP2 := ReadFloat('SETTING','Y_SNRP2',0);
            veXPic2 := ReadFloat('SETTING','X_PICT2',0);
            veYPic2 := ReadFloat('SETTING','Y_PICT2',0);

            veXIDENTITAS_CB3 := ReadFloat('SETTING','X_IDENTITAS3',0);
            veYIDENTITAS_CB3 := ReadFloat('SETTING','Y_IDENTITAS3',0);
            veXISIDATA_CB3 := ReadFloat('SETTING','X_ISIDATA3',0);
            veYISIDATA_CB3 := ReadFloat('SETTING','Y_ISIDATA3',0);
            veXKOTA3 := ReadFloat('SETTING','X_KOTA3',0);
            veYKOTA3 := ReadFloat('SETTING','Y_KOTA3',0);
            veXTGL3 := ReadFloat('SETTING','X_TGL3',0);
            veYTGL3 := ReadFloat('SETTING','Y_TGL3',0);
            veXSJAB3 := ReadFloat('SETTING','X_SJAB3',0);
            veYSJAB3 := ReadFloat('SETTING','Y_SJAB3',0);
            veXSNAMA3 := ReadFloat('SETTING','X_SNAMA3',0);
            veYSNAMA3 := ReadFloat('SETTING','Y_SNAMA3',0);
            veXSNRP3 := ReadFloat('SETTING','X_SNRP3',0);
            veYSNRP3 := ReadFloat('SETTING','Y_SNRP3',0);
            veXPic3 := ReadFloat('SETTING','X_PICT3',0);
            veYPic3 := ReadFloat('SETTING','Y_PICT3',0);

            veXIDENTITAS_CB4 := ReadFloat('SETTING','X_IDENTITAS4',0);
            veYIDENTITAS_CB4 := ReadFloat('SETTING','Y_IDENTITAS4',0);
            veXISIDATA_CB4 := ReadFloat('SETTING','X_ISIDATA4',0);
            veYISIDATA_CB4 := ReadFloat('SETTING','Y_ISIDATA4',0);
            veXKOTA4 := ReadFloat('SETTING','X_KOTA4',0);
            veYKOTA4 := ReadFloat('SETTING','Y_KOTA4',0);
            veXTGL4 := ReadFloat('SETTING','X_TGL4',0);
            veYTGL4 := ReadFloat('SETTING','Y_TGL4',0);
            veXSJAB4 := ReadFloat('SETTING','X_SJAB4',0);
            veYSJAB4 := ReadFloat('SETTING','Y_SJAB4',0);
            veXSNAMA4 := ReadFloat('SETTING','X_SNAMA4',0);
            veYSNAMA4 := ReadFloat('SETTING','Y_SNAMA4',0);
            veXSNRP4 := ReadFloat('SETTING','X_SNRP4',0);
            veYSNRP4 := ReadFloat('SETTING','Y_SNRP4',0);
            veXPic4 := ReadFloat('SETTING','X_PICT4',0);
            veYPic4 := ReadFloat('SETTING','Y_PICT4',0);
            // BUKU LAMA BIRU
            veX1_BL_CB := ReadFloat('SETTING','BL_X1',0);
            veY1_BL_CB := ReadFloat('SETTING','BL_Y1',0);
            veX2_BL_CB := ReadFloat('SETTING','BL_X2',0);
            veY2_BL_CB := ReadFloat('SETTING','BL_Y2',0);
            veX3_BL_CB := ReadFloat('SETTING','BL_X3',0);
            veY3_BL_CB := ReadFloat('SETTING','BL_Y3',0);
            veX4_BL_CB := ReadFloat('SETTING','BL_X4',0);
            veY4_BL_CB := ReadFloat('SETTING','BL_Y4',0);
          end;
    '2' : begin //tulis
            WriteFloat('SETTING','X1',veX1_CB);
            WriteFloat('SETTING','Y1',veY1_CB);
            WriteFloat('SETTING','X2',veX2_CB);
            WriteFloat('SETTING','Y2',veY2_CB);
            WriteFloat('SETTING','X3',veX3_CB);
            WriteFloat('SETTING','Y3',veY3_CB);
            WriteFloat('SETTING','X4',veX4_CB);
            WriteFloat('SETTING','Y4',veY4_CB);
            WriteFloat('SETTING','X_IDENTITAS',veXIDENTITAS_CB);
            WriteFloat('SETTING','Y_IDENTITAS',veYIDENTITAS_CB);
            WriteFloat('SETTING','X_ISIDATA',veXISIDATA_CB);
            WriteFloat('SETTING','Y_ISIDATA',veYISIDATA_CB);
            WriteFloat('SETTING','X_KOTA',veXKOTA);
            WriteFloat('SETTING','Y_KOTA',veYKOTA);
            WriteFloat('SETTING','X_TGL',veXTGL);
            WriteFloat('SETTING','Y_TGL',veYTGL);
            WriteFloat('SETTING','X_SJAB',veXSJAB);
            WriteFloat('SETTING','Y_SJAB',veYSJAB);
            WriteFloat('SETTING','X_SNAMA',veXSNAMA);
            WriteFloat('SETTING','Y_SNAMA',veYSNAMA);
            WriteFloat('SETTING','X_SNRP',veXSNRP);
            WriteFloat('SETTING','Y_SNRP',veYSNRP);
            WriteFloat('SETTING','X_PICT',veXPic);
            WriteFloat('SETTING','Y_PICT',veYPic);

            WriteFloat('SETTING','X_IDENTITAS2',veXIDENTITAS_CB2);
            WriteFloat('SETTING','Y_IDENTITAS2',veYIDENTITAS_CB2);
            WriteFloat('SETTING','X_ISIDATA2',veXISIDATA_CB2);
            WriteFloat('SETTING','Y_ISIDATA2',veYISIDATA_CB2);
            WriteFloat('SETTING','X_KOTA2',veXKOTA2);
            WriteFloat('SETTING','Y_KOTA2',veYKOTA2);
            WriteFloat('SETTING','X_TGL2',veXTGL2);
            WriteFloat('SETTING','Y_TGL2',veYTGL2);
            WriteFloat('SETTING','X_SJAB2',veXSJAB2);
            WriteFloat('SETTING','Y_SJAB2',veYSJAB2);
            WriteFloat('SETTING','X_SNAMA2',veXSNAMA2);
            WriteFloat('SETTING','Y_SNAMA2',veYSNAMA2);
            WriteFloat('SETTING','X_SNRP2',veXSNRP2);
            WriteFloat('SETTING','Y_SNRP2',veYSNRP2);
            WriteFloat('SETTING','X_PICT2',veXPic2);
            WriteFloat('SETTING','Y_PICT2',veYPic2);

            WriteFloat('SETTING','X_IDENTITAS3',veXIDENTITAS_CB3);
            WriteFloat('SETTING','Y_IDENTITAS3',veYIDENTITAS_CB3);
            WriteFloat('SETTING','X_ISIDATA3',veXISIDATA_CB3);
            WriteFloat('SETTING','Y_ISIDATA3',veYISIDATA_CB3);
            WriteFloat('SETTING','X_KOTA3',veXKOTA3);
            WriteFloat('SETTING','Y_KOTA3',veYKOTA3);
            WriteFloat('SETTING','X_TGL3',veXTGL3);
            WriteFloat('SETTING','Y_TGL3',veYTGL3);
            WriteFloat('SETTING','X_SJAB3',veXSJAB3);
            WriteFloat('SETTING','Y_SJAB3',veYSJAB3);
            WriteFloat('SETTING','X_SNAMA3',veXSNAMA3);
            WriteFloat('SETTING','Y_SNAMA3',veYSNAMA3);
            WriteFloat('SETTING','X_SNRP3',veXSNRP3);
            WriteFloat('SETTING','Y_SNRP3',veYSNRP3);
            WriteFloat('SETTING','X_PICT3',veXPic3);
            WriteFloat('SETTING','Y_PICT3',veYPic3);

            WriteFloat('SETTING','X_IDENTITAS4',veXIDENTITAS_CB4);
            WriteFloat('SETTING','Y_IDENTITAS4',veYIDENTITAS_CB4);
            WriteFloat('SETTING','X_ISIDATA4',veXISIDATA_CB4);
            WriteFloat('SETTING','Y_ISIDATA4',veYISIDATA_CB4);
            WriteFloat('SETTING','X_KOTA4',veXKOTA4);
            WriteFloat('SETTING','Y_KOTA4',veYKOTA4);
            WriteFloat('SETTING','X_TGL4',veXTGL4);
            WriteFloat('SETTING','Y_TGL4',veYTGL4);
            WriteFloat('SETTING','X_SJAB4',veXSJAB4);
            WriteFloat('SETTING','Y_SJAB4',veYSJAB4);
            WriteFloat('SETTING','X_SNAMA4',veXSNAMA4);
            WriteFloat('SETTING','Y_SNAMA4',veYSNAMA4);
            WriteFloat('SETTING','X_SNRP4',veXSNRP4);
            WriteFloat('SETTING','Y_SNRP4',veYSNRP4);
            WriteFloat('SETTING','X_PICT4',veXPic4);
            WriteFloat('SETTING','Y_PICT4',veYPic4);

            WriteFloat('SETTING','BL_X1',veX1_BL_CB);
            WriteFloat('SETTING','BL_Y1',veY1_BL_CB);
            WriteFloat('SETTING','BL_X2',veX2_BL_CB);
            WriteFloat('SETTING','BL_Y2',veY2_BL_CB);
            WriteFloat('SETTING','BL_X3',veX3_BL_CB);
            WriteFloat('SETTING','BL_Y3',veY3_BL_CB);
            WriteFloat('SETTING','BL_X4',veX4_BL_CB);
            WriteFloat('SETTING','BL_Y4',veY4_BL_CB);
          end;
    end;
    Free;
  end;
end;

function TfMain.IsFormOpen(const FormName: string): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := Screen.FormCount - 1 DownTo 0 do
    if (Screen.Forms[i].Name = FormName) then
    begin
      Result := True;
      Break;
    end;
end;

procedure TfMain.MenuAktif;
var
  i : integer;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  dxNavBar1.BeginUpdate;
  try
    for i := 0 to dxNavBar1.Groups.Count - 1 do
      dxNavBar1.Groups[i].Visible := False;
    for i := 0 to dxNavBar1.Items.Count - 1 do
      dxNavBar1.Items[i].Visible := False;
  finally
    dxNavBar1.EndUpdate;
  end;

  with DM.Q do
  begin
    Close;
    SQL.Text := 'select kode_group,kode_sub_group from m_group_sub_menu_aplikasi where kode=:kode order by kode_group,kode_sub_group';
    Params[0].AsString := vLevelPetugas;
    Open;

    if recordcount > 0 then
    begin
      while not eof do
      begin
        dxNavBar1.BeginUpdate;
        try
          dxNavBar1.Groups[FieldByName('kode_group').AsInteger].Visible := True;
          dxNavBar1.Items.Items[DM.Q.FieldByName('kode_sub_group').AsInteger].Visible := True;
          //Application.ProcessMessages;
          {// update u/ item
          DM.Q2.Close;
          DM.Q2.SQL.Text := 'select kode_sub_group from m_group_sub_menu_aplikasi where kode=:kode and kode_group=:kode_group order by kode_group,kode_sub_group';
          try
            DM.Q2.Params[0].AsString := vLevelPetugas;
            DM.Q2.Params[1].AsInteger := DM.Q.FieldByName('kode_group').AsInteger;
            DM.Q2.Open;
            if DM.Q2.RecordCount > 0 then
            begin
              while not DM.Q2.Eof do
              begin
                //dxNavBar1.Items[30].Visible := True;
                //dxNavBar1.Items[DM.Q2.FieldByName('kode_sub_group').AsInteger].Visible := True;
                dxNavBar1.Items.Items[DM.Q2.FieldByName('kode_sub_group').AsInteger].Visible := True;
                //dxNavBar1.Items. := True;
              DM.Q2.Next;
              end;
            end;
          except on E:Exception do
          begin
            ErrorProg('error. slect sub_menu. ket error '+E.Message);
          end
          end;}
        finally
          dxNavBar1.EndUpdate;
        end;
      Next;
      //Application.ProcessMessages;
      end;
    end
    else
    begin
      MenuNonAktif;
    end;
  end;
  dxNavBar1.AllowSelectLinks := True;
  dxNavBar1.ActiveGroupIndex := 0;
  dxNavBar1.Groups[0].SelectedLinkIndex := -1;


  {//CekKonfigLaporan;
  pProses.Visible := False;
  pc_proses.Visible := True;
  G_INVENTORY.Visible := True;
  G_BBN1.Visible := True;
  G_GANTI_NAMA.Visible := True;
  G_BBN2.Visible := True;
  G_ADMINISTRASI.Visible := True;
  G_MUTASI.Visible := True;
  G_BLOKIR_BPKB.Visible := True;
  G_MANAGEMENT_NOPOL.Visible := True;
  G_MATERIAL.Visible := True;
  G_ADMINISTRASI_SISTEM.Visible := True;
  G_REPORT_MONITORING.Visible := True;
  G_DATA_MASTER.Visible := True;
  G_INVENTORYClick(nil);}
end;

procedure TfMain.MenuNonAktif;
begin
  pProses.Visible := True;
  pc_proses.Visible := False;
  G_INVENTORY.Visible := False;
  G_BBN1.Visible := False;
  G_GANTI_NAMA.Visible := False;
  G_BBN2.Visible := False;
  G_ADMINISTRASI.Visible := False;
  G_MUTASI.Visible := False;
  G_BLOKIR_BPKB.Visible := False;
  G_MANAGEMENT_NOPOL.Visible := False;
  G_MATERIAL.Visible := False;
  G_ADMINISTRASI_SISTEM.Visible := False;
  G_REPORT_MONITORING.Visible := False;
  G_DATA_MASTER.Visible := False;
  G_EX_LUAR_DAERAH.Visible := False;
  G_GANTI_BUKU_BPKB.Visible := False;
  G_DUPLIKAT.Visible := False;
end;

procedure TfMain.TulisStatus(Index: Integer; Data: String);
begin
  StatusBar1.Panels[Index].Text := Data;
end;

procedure TfMain.G_INVENTORYClick(Sender: TObject);
var
   aForm : TfInventoryMenu;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fInventoryMenu') then
  begin
    //Create a new tab sheet
    tabSheet[0] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[0].PageControl := pc_proses;

    //create a form
    aForm := TfInventoryMenu.Create(tabSheet[0]) ;
    aForm.Parent := tabSheet[0];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[0].Caption := aForm.Caption;
    tabSheet[0].Name := 'fInventoryMenu';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[0];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[0];
  end;
end;

procedure TfMain.dxOrderMaterial_1Click(Sender: TObject);
var
   aForm : TfOrderMaterial;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fOrderMaterial') then
  begin
    //Create a new tab sheet
    tabSheet[1] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[1].PageControl := pc_proses;

    //create a form
    aForm := TfOrderMaterial.Create(tabSheet[1]) ;
    aForm.Parent := tabSheet[1];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[1].Caption := aForm.Caption;
    tabSheet[1].Name := 'fOrderMaterial';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[1];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[1];
  end;
end;

procedure TfMain.FormCreate(Sender: TObject);
var
  NamaDir : String;
  SMBios : TSMBios;
  LSystem: TSystemInformation;
  UUID   : Array[0..31] of AnsiChar;
begin
  HotKeyF1 := HotKeyManager1.AddHotKey(TextToHotKey('F1',true));
  HotKeyF2 := HotKeyManager1.AddHotKey(TextToHotKey('F2',true));
  HotKeyF3 := HotKeyManager1.AddHotKey(TextToHotKey('F3',true));
  HotKeyF4 := HotKeyManager1.AddHotKey(TextToHotKey('F4',true));
  HotKeyF5 := HotKeyManager1.AddHotKey(TextToHotKey('F5',true));
  HotKeyF9 := HotKeyManager1.AddHotKey(TextToHotKey('F9',true));
  HotKeyF10 := HotKeyManager1.AddHotKey(TextToHotKey('F10',true));
  HotKeyF11 := HotKeyManager1.AddHotKey(TextToHotKey('F11',true));
  HotKeyCtrlD := HotKeyManager1.AddHotKey(TextToHotKey('Ctrl+D',true));
  SMBios:=TSMBios.Create;
  try
    LSystem:=SMBios.SysInfo;
    BinToHex(@LSystem.RAWSystemInformation.UUID,UUID,SizeOf(LSystem.RAWSystemInformation.UUID));
    tUUIDKey := Copy(UUID,1,8)+'-'+Copy(UUID,9,8)+'-'+Copy(UUID,17,8)+'-'+Copy(UUID,25,8);
    //SystemParametersInfo(SPI_SETBEEP, 0, nil, SPIF_SENDWININICHANGE); // mematikan system beep
    vBBN2Nopol := '0';
    SystemParametersInfo(SPI_SETBEEP, 1, nil, SPIF_SENDWININICHANGE); // menyalakan system beep
    AktifModeIndonesia;
    //SetupMonthDayNames;
    TTglSrvSkr := Now;
    tSNHDD := ShowSNHDD;
    //Caption := 'Sistem Informasi Kendaraan Bermotor';
    RootPath := ExtractFilePath(Application.Exename);
    InitConfig('0');
    NamaDir := RootPath+'\TempImage\';
    If Not DirectoryExists(NamaDir) then
      ForceDirectories(NamaDir);
    vNamaDirFontInstall := 'C:\Users\Public\Documents\CheckPoint\';
    If Not DirectoryExists(vNamaDirFontInstall) then
      ForceDirectories(vNamaDirFontInstall);
    If Not FileExists(vNamaDirFontInstall+'KOORD.INI') then
    begin
      InitIni('0');
    end;
    InitIni('1');
    isFormEditVerifikasi := '0';
    MenuNonAktif;
  finally
    FreeAndNil(SMBios);
  end;
end;

procedure TfMain.FormShow(Sender: TObject);
begin
  fMain.Caption := 'Sistem Informasi Kendaraan Bermotor ('+GetVersionApplication(Application.ExeName)+')';
  if IsConect = True then
  begin
    dxNavBar1.AllowSelectLinks := True;
    dxNavBar1.ActiveGroupIndex := 5;
    dxNavBar1.Groups[5].SelectedLinkIndex := 1;
    {if fFormAktif <> nil then
       fFormAktif.Close;
    fLogin := TfLogin.Create(nil);
    fLogin.Parent := pProses;
    fLogin.Show;}

    if tAktifasi = EncryptText('Up1eXu',tUUIDKey) then
    begin
      if fFormAktif <> nil then
         fFormAktif.Close;
      fLogin := TfLogin.Create(nil);
      fLogin.Parent := pProses;
      fLogin.Show;
    end
    else
    begin
      fCekAktifasi.Show;
      Application.ProcessMessages;
    end;
  end
  else
  begin
    fSettingDB := TfSettingDB.Create(nil);
    fSettingDB.Parent := pProses;
    fSettingDB.Show;
  end;
end;

procedure TfMain.CekKonfigLaporan;
begin
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select HEADER from T_CONFIK_LAPORAN';
    Open;

    if recordcount > 0 then
    begin
      tHeader := Fields[0].AsString;
    end;
  end;
end;

procedure TfMain.dxInputMaterial_2Click(Sender: TObject);
var
   aForm : TfInputMaterial;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fInputMaterial') then
  begin
    //Create a new tab sheet
    tabSheet[2] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[2].PageControl := pc_proses;

    //create a form
    aForm := TfInputMaterial.Create(tabSheet[2]) ;
    aForm.Parent := tabSheet[2];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[2].Caption := aForm.Caption;
    tabSheet[2].Name := 'fInputMaterial';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[2];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[2];
  end;
end;

procedure TfMain.dxPendistribusianMaterial_3Click(Sender: TObject);
var
   aForm : TfPendistribusianMaterial;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPendistribusianMaterial') then
  begin
    //Create a new tab sheet
    tabSheet[3] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[3].PageControl := pc_proses;

    //create a form
    aForm := TfPendistribusianMaterial.Create(tabSheet[3]) ;
    aForm.Parent := tabSheet[3];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[3].Caption := aForm.Caption;
    tabSheet[3].Name := 'fPendistribusianMaterial';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[3];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[3];
  end;
end;

procedure TfMain.dxPendaftaran_bbn1_7Click(Sender: TObject);
var
   aForm : TfPendaftaran;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPendaftaran') then
  begin
    //Create a new tab sheet
    tabSheet[7] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[7].PageControl := pc_proses;

    //create a form
    aForm := TfPendaftaran.Create(tabSheet[7]) ;
    aForm.Parent := tabSheet[7];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[7].Caption := aForm.Caption;
    tabSheet[7].Name := 'fPendaftaran';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[7];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[7];
  end;
end;

procedure TfMain.dxLabelMaterial_47Click(Sender: TObject);
var
   aForm : TfLabelBPKB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fLabelBPKB') then
  begin
    //Create a new tab sheet
    tabSheet[47] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[47].PageControl := pc_proses;

    //create a form
    aForm := TfLabelBPKB.Create(tabSheet[47]) ;
    aForm.Parent := tabSheet[47];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[47].Caption := aForm.Caption;
    tabSheet[47].Name := 'fLabelBPKB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[47];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[47];
  end;
end;

procedure TfMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Yakin akan keluar dari aplikasi?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    Application.Terminate
  else
    Application.Run;
end;

procedure TfMain.LogOff1Click(Sender: TObject);
begin
  MenuNonAktif;
  if fFormAktif <> nil then
     fFormAktif.Close;
  fLogin := TfLogin.Create(nil);
  fLogin.Parent := pProses;
  fFormAktif := fLogin;
  fLogin.Show;
end;

procedure TfMain.dxRegistrasi_8Click(Sender: TObject);
//var
   //aForm : TfRegistrasi;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fRegistrasi') then
  begin
    //Create a new tab sheet
    tabSheet[8] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[8].PageControl := pc_proses;

    //create a form
    aFormRegistrasi := TfRegistrasi.Create(tabSheet[8]) ;
    aFormRegistrasi.Parent := tabSheet[8];
    aFormRegistrasi.Align := alClient;
    aFormRegistrasi.BorderStyle := bsNone;
    aFormRegistrasi.Visible := true;
    tabSheet[8].Caption := aFormRegistrasi.Caption;
    tabSheet[8].Name := 'fRegistrasi';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[8];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[8];
  end;
end;

procedure TfMain.dxMonitorPrintKartuInduk_10Click(Sender: TObject);
var
   aForm : TfKartuIndukBBN1;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fKartuIndukBBN1') then
  begin
    //Create a new tab sheet
    tabSheet[10] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[10].PageControl := pc_proses;

    //create a form
    aForm := TfKartuIndukBBN1.Create(tabSheet[10]) ;
    aForm.Parent := tabSheet[10];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[10].Caption := aForm.Caption;
    tabSheet[10].Name := 'fKartuIndukBBN1';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[10];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[10];
  end;
end;

procedure TfMain.dxVerifikasi_12Click(Sender: TObject);
//var
   //aForm : TfVerifikasiBBN1;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fVerifikasiBBN1') then
  begin
    //Create a new tab sheet
    tabSheet[12] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[12].PageControl := pc_proses;

    //create a form
    aFormfVerifikasiBBN1 := TfVerifikasiBBN1.Create(tabSheet[12]) ;
    aFormfVerifikasiBBN1.Parent := tabSheet[12];
    aFormfVerifikasiBBN1.Align := alClient;
    aFormfVerifikasiBBN1.BorderStyle := bsNone;
    aFormfVerifikasiBBN1.Visible := true;
    tabSheet[12].Caption := aFormfVerifikasiBBN1.Caption;
    tabSheet[12].Name := 'fVerifikasiBBN1';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[12];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[12];
  end;
end;

procedure TfMain.dxPenulisan_13Click(Sender: TObject);
//var
   //aForm : TfPenulisanBBN1;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPenulisanBBN1') then
  begin
    //Create a new tab sheet
    tabSheet[13] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[13].PageControl := pc_proses;

    //create a form
    aFormPenulisanBBN1 := TfPenulisanBBN1.Create(tabSheet[13]) ;
    aFormPenulisanBBN1.Parent := tabSheet[13];
    aFormPenulisanBBN1.Align := alClient;
    aFormPenulisanBBN1.BorderStyle := bsNone;
    aFormPenulisanBBN1.Visible := true;
    tabSheet[13].Caption := aFormPenulisanBBN1.Caption;
    tabSheet[13].Name := 'fPenulisanBBN1';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[13];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[13];
  end;
end;

procedure TfMain.dxUser_53Click(Sender: TObject);
var
   aForm : TfUserManagement;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fUserManagement') then
  begin
    //Create a new tab sheet
    tabSheet[53] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[53].PageControl := pc_proses;

    //create a form
    aForm := TfUserManagement.Create(tabSheet[53]) ;
    aForm.Parent := tabSheet[53];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[53].Caption := aForm.Caption;
    tabSheet[53].Name := 'fUserManagement';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[53];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[53];
  end;
end;

procedure TfMain.dxEditDataBPKB_58Click(Sender: TObject);
var
   aForm : TfEditDataBPKB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fEditDataBPKB') then
  begin
    //Create a new tab sheet
    tabSheet[58] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[58].PageControl := pc_proses;

    //create a form
    aForm := TfEditDataBPKB.Create(tabSheet[58]) ;
    aForm.Parent := tabSheet[58];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[58].Caption := aForm.Caption;
    tabSheet[58].Name := 'fEditDataBPKB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[58];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[58];
  end;
end;

procedure TfMain.dxRefDataSamsat_71Click(Sender: TObject);
var
   aForm : TfRefDataSamsat;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fRefDataSamsat') then
  begin
    //Create a new tab sheet
    tabSheet[71] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[71].PageControl := pc_proses;

    //create a form
    aForm := TfRefDataSamsat.Create(tabSheet[71]) ;
    aForm.Parent := tabSheet[71];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[71].Caption := aForm.Caption;
    tabSheet[71].Name := 'fRefDataSamsat';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[71];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[71];
  end;
end;

procedure TfMain.dxPrintTandaTerima_11Click(Sender: TObject);
var
   aForm : TfTandaTerima;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fTandaTerima') then
  begin
    //Create a new tab sheet
    tabSheet[11] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[11].PageControl := pc_proses;

    //create a form
    aForm := TfTandaTerima.Create(tabSheet[11]) ;
    aForm.Parent := tabSheet[11];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[11].Caption := aForm.Caption;
    tabSheet[11].Name := 'fTandaTerima';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[11];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[11];
  end;
end;

procedure TfMain.dxPendaftaranGN_20Click(Sender: TObject);
var
   aForm : TfPendaftaranBN;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPendaftaranBN') then
  begin
    //Create a new tab sheet
    tabSheet[20] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[20].PageControl := pc_proses;

    //create a form
    aForm := TfPendaftaranBN.Create(tabSheet[20]) ;
    aForm.Parent := tabSheet[20];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[20].Caption := aForm.Caption;
    tabSheet[20].Name := 'fPendaftaranBN';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[20];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[20];
  end;
end;

procedure TfMain.dxRegistrasiGN_18Click(Sender: TObject);
var
   aForm : TfRegistrasiBN;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fRegistrasiBN') then
  begin
    //Create a new tab sheet
    tabSheet[18] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[18].PageControl := pc_proses;

    //create a form
    aForm := TfRegistrasiBN.Create(tabSheet[18]) ;
    aForm.Parent := tabSheet[18];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[18].Caption := aForm.Caption;
    tabSheet[18].Name := 'fRegistrasiBN';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[18];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[18];
  end;
end;

procedure TfMain.dxMonitorPrintKartuIndukGN_21Click(Sender: TObject);
var
   aForm : TfKartuIndukBN;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fKartuIndukBN') then
  begin
    //Create a new tab sheet
    tabSheet[21] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[21].PageControl := pc_proses;

    //create a form
    aForm := TfKartuIndukBN.Create(tabSheet[21]) ;
    aForm.Parent := tabSheet[21];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[21].Caption := aForm.Caption;
    tabSheet[21].Name := 'fKartuIndukBN';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[21];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[21];
  end;
end;

procedure TfMain.dxPrintTandaTerimaGN_22Click(Sender: TObject);
var
   aForm : TfTandaTerimaBN;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fTandaTerimaBN') then
  begin
    //Create a new tab sheet
    tabSheet[22] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[22].PageControl := pc_proses;

    //create a form
    aForm := TfTandaTerimaBN.Create(tabSheet[22]) ;
    aForm.Parent := tabSheet[22];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[22].Caption := aForm.Caption;
    tabSheet[22].Name := 'fTandaTerimaBN';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[22];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[22];
  end;
end;

procedure TfMain.dxVerifikasiGN_23Click(Sender: TObject);
var
   aForm : TfVerifikasiBN;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fVerifikasiBN') then
  begin
    //Create a new tab sheet
    tabSheet[23] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[23].PageControl := pc_proses;

    //create a form
    aForm := TfVerifikasiBN.Create(tabSheet[23]) ;
    aForm.Parent := tabSheet[23];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[23].Caption := aForm.Caption;
    tabSheet[23].Name := 'fVerifikasiBN';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[23];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[23];
  end;
end;

procedure TfMain.dxPenulisanGN_24Click(Sender: TObject);
var
   aForm : TfPenulisanBN;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPenulisanBN') then
  begin
    //Create a new tab sheet
    tabSheet[24] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[24].PageControl := pc_proses;

    //create a form
    aForm := TfPenulisanBN.Create(tabSheet[24]) ;
    aForm.Parent := tabSheet[24];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[24].Caption := aForm.Caption;
    tabSheet[24].Name := 'fPenulisanBN';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[24];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[24];
  end;
end;

procedure TfMain.dxPenyerahanBPKB_14Click(Sender: TObject);
var
   aForm : TfPenyerahanBPKB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPenyerahanBPKB') then
  begin
    //Create a new tab sheet
    tabSheet[14] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[14].PageControl := pc_proses;

    //create a form
    aForm := TfPenyerahanBPKB.Create(tabSheet[14]) ;
    aForm.Parent := tabSheet[14];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[14].Caption := aForm.Caption;
    tabSheet[14].Name := 'fPenyerahanBPKB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[14];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[14];
  end;
end;

procedure TfMain.dxPenyerahanBPKBGN_26Click(Sender: TObject);
var
   aForm : TfPenyerahanBPKBBN;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPenyerahanBPKBBN') then
  begin
    //Create a new tab sheet
    tabSheet[26] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[26].PageControl := pc_proses;

    //create a form
    aForm := TfPenyerahanBPKBBN.Create(tabSheet[26]) ;
    aForm.Parent := tabSheet[26];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[26].Caption := aForm.Caption;
    tabSheet[26].Name := 'fPenyerahanBPKBBN';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[26];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[26];
  end;
end;

procedure TfMain.dxBlokirBPKB_43Click(Sender: TObject);
var
   aForm : TfBlokir;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fBlokir') then
  begin
    //Create a new tab sheet
    tabSheet[43] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[43].PageControl := pc_proses;

    //create a form
    aForm := TfBlokir.Create(tabSheet[43]) ;
    aForm.Parent := tabSheet[43];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[43].Caption := aForm.Caption;
    tabSheet[43].Name := 'fBlokir';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[43];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[43];
  end;
end;

procedure TfMain.dxDaftarListNopol120Click(Sender: TObject);
var
   aForm : TfManagementNOPOL;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fManagementNOPOL') then
  begin
    //Create a new tab sheet
    tabSheet[120] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[120].PageControl := pc_proses;

    //create a form
    aForm := TfManagementNOPOL.Create(tabSheet[120]) ;
    aForm.Parent := tabSheet[120];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[120].Caption := aForm.Caption;
    tabSheet[120].Name := 'fManagementNOPOL';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[120];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[120];
  end;
end;

procedure TfMain.dxLabelBarcode_4Click(Sender: TObject);
var
   aForm : TfLabelMaterial;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fLabelMaterial') then
  begin
    //Create a new tab sheet
    tabSheet[4] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[4].PageControl := pc_proses;

    //create a form
    aForm := TfLabelMaterial.Create(tabSheet[4]) ;
    aForm.Parent := tabSheet[4];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[4].Caption := aForm.Caption;
    tabSheet[4].Name := 'fLabelMaterial';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[4];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[4];
  end;
end;

procedure TfMain.dxLaporanMaterial_5Click(Sender: TObject);
var
   aForm : TfLaporanMaterial;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fLaporanMaterial') then
  begin
    //Create a new tab sheet
    tabSheet[5] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[5].PageControl := pc_proses;

    //create a form
    aForm := TfLaporanMaterial.Create(tabSheet[5]) ;
    aForm.Parent := tabSheet[5];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[5].Caption := aForm.Caption;
    tabSheet[5].Name := 'fLaporanMaterial';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[5];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[5];
  end;
end;

procedure TfMain.dxPermintaanBonArsipGN_19Click(Sender: TObject);
var
   aForm : TfPermintaanBonArsip;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPermintaanBonArsip') then
  begin
    //Create a new tab sheet
    tabSheet[19] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[19].PageControl := pc_proses;

    //create a form
    aForm := TfPermintaanBonArsip.Create(tabSheet[19]) ;
    aForm.Parent := tabSheet[19];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[19].Caption := aForm.Caption;
    tabSheet[19].Name := 'fPermintaanBonArsip';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[19];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[19];
  end;
end;

procedure TfMain.dxPemusnahanBerkasBPKBGN_27Click(Sender: TObject);
var
   aForm : TfPemusnahanBerkasBPKB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPemusnahanBerkasBPKB') then
  begin
    //Create a new tab sheet
    tabSheet[27] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[27].PageControl := pc_proses;

    //create a form
    aForm := TfPemusnahanBerkasBPKB.Create(tabSheet[27]) ;
    aForm.Parent := tabSheet[27];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[27].Caption := aForm.Caption;
    tabSheet[27].Name := 'fPemusnahanBerkasBPKB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[27];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[27];
  end;
end;

procedure TfMain.dxPengarsipanBerkas_15Click(Sender: TObject);
var
   aForm : TfPengarsipanBerkas;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPengarsipanBerkas') then
  begin
    //Create a new tab sheet
    tabSheet[15] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[15].PageControl := pc_proses;

    //create a form
    aForm := TfPengarsipanBerkas.Create(tabSheet[15]) ;
    aForm.Parent := tabSheet[15];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[15].Caption := aForm.Caption;
    tabSheet[15].Name := 'fPengarsipanBerkas';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[15];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[15];
  end;
end;

procedure TfMain.dxPendaftaranEXLD_119Click(Sender: TObject);
var
   aForm : TfPendaftaranExLD;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPendaftaranExLD') then
  begin
    //Create a new tab sheet
    tabSheet[119] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[119].PageControl := pc_proses;

    //create a form
    aForm := TfPendaftaranExLD.Create(tabSheet[119]) ;
    aForm.Parent := tabSheet[119];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[119].Caption := aForm.Caption;
    tabSheet[119].Name := 'fPendaftaranExLD';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[119];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[119];
  end;
end;

procedure TfMain.dxRegistrasiEXLD_120Click(Sender: TObject);
var
   aForm : TfRegistrasiEXLD;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fRegistrasiEXLD') then
  begin
    //Create a new tab sheet
    tabSheet[120] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[120].PageControl := pc_proses;

    //create a form
    aForm := TfRegistrasiEXLD.Create(tabSheet[120]) ;
    aForm.Parent := tabSheet[120];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[120].Caption := aForm.Caption;
    tabSheet[120].Name := 'fRegistrasiEXLD';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[120];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[120];
  end;
end;

procedure TfMain.dxMonitorPrintKIEXLD_121Click(Sender: TObject);
var
   aForm : TfKartuIndukExLD;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fKartuIndukExLD') then
  begin
    //Create a new tab sheet
    tabSheet[121] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[121].PageControl := pc_proses;

    //create a form
    aForm := TfKartuIndukExLD.Create(tabSheet[121]) ;
    aForm.Parent := tabSheet[121];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[121].Caption := aForm.Caption;
    tabSheet[121].Name := 'fKartuIndukExLD';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[121];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[121];
  end;
end;

procedure TfMain.dxPrintTandaTerimaEXLD_122Click(Sender: TObject);
var
   aForm : TfTandaTerimaExLD;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fTandaTerimaExLD') then
  begin
    //Create a new tab sheet
    tabSheet[122] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[122].PageControl := pc_proses;

    //create a form
    aForm := TfTandaTerimaExLD.Create(tabSheet[122]) ;
    aForm.Parent := tabSheet[122];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[122].Caption := aForm.Caption;
    tabSheet[122].Name := 'fTandaTerimaExLD';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[122];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[122];
  end;
end;

procedure TfMain.dxVerifikasiEXLD_123Click(Sender: TObject);
var
   aForm : TfVerifikasiExLD;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fVerifikasiExLD') then
  begin
    //Create a new tab sheet
    tabSheet[123] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[123].PageControl := pc_proses;

    //create a form
    aForm := TfVerifikasiExLD.Create(tabSheet[123]) ;
    aForm.Parent := tabSheet[123];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[123].Caption := aForm.Caption;
    tabSheet[123].Name := 'fVerifikasiExLD';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[123];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[123];
  end;
end;

procedure TfMain.dxPenulisanEXLD_124Click(Sender: TObject);
var
   aForm : TfPenulisanExLD;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPenulisanExLD') then
  begin
    //Create a new tab sheet
    tabSheet[124] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[124].PageControl := pc_proses;

    //create a form
    aForm := TfPenulisanExLD.Create(tabSheet[124]) ;
    aForm.Parent := tabSheet[124];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[124].Caption := aForm.Caption;
    tabSheet[124].Name := 'fPenulisanExLD';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[124];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[124];
  end;
end;

procedure TfMain.dxPenyerahanBPKBEXLD_125Click(Sender: TObject);
var
   aForm : TfPenyerahanExLD;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPenyerahanExLD') then
  begin
    //Create a new tab sheet
    tabSheet[125] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[125].PageControl := pc_proses;

    //create a form
    aForm := TfPenyerahanExLD.Create(tabSheet[125]) ;
    aForm.Parent := tabSheet[125];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[125].Caption := aForm.Caption;
    tabSheet[125].Name := 'fPenyerahanExLD';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[125];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[125];
  end;
end;

procedure TfMain.dxBBN2_29Click(Sender: TObject);
var
   aForm : TfPerubahan;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPerubahan') then
  begin
    //Create a new tab sheet
    tabSheet[29] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[29].PageControl := pc_proses;

    //create a form
    aForm := TfPerubahan.Create(tabSheet[29]) ;
    aForm.Parent := tabSheet[29];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[29].Caption := aForm.Caption;
    tabSheet[29].Name := 'fPerubahan';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[29];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[29];
  end;
end;

procedure TfMain.dxJenis2Perubahan_30Click(Sender: TObject);
var
   aForm : TfJenisPerubahan;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fJenisPerubahan') then
  begin
    //Create a new tab sheet
    tabSheet[30] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[30].PageControl := pc_proses;

    //create a form
    aForm := TfJenisPerubahan.Create(tabSheet[30]) ;
    aForm.Parent := tabSheet[30];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[30].Caption := aForm.Caption;
    tabSheet[30].Name := 'fJenisPerubahan';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[30];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[30];
  end;
end;

procedure TfMain.dxPrintKartuInduk_32Click(Sender: TObject);
var
   aForm : TfKartuIndukPerubahan;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fKartuIndukPerubahan') then
  begin
    //Create a new tab sheet
    tabSheet[32] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[32].PageControl := pc_proses;

    //create a form
    aForm := TfKartuIndukPerubahan.Create(tabSheet[32]) ;
    aForm.Parent := tabSheet[32];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[32].Caption := aForm.Caption;
    tabSheet[32].Name := 'fKartuIndukPerubahan';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[32];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[32];
  end;
end;

procedure TfMain.dxLapGantiIdentitas_31Click(Sender: TObject);
var
   aForm : TfLaporanPerubahan;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fLaporanPerubahan') then
  begin
    //Create a new tab sheet
    tabSheet[31] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[31].PageControl := pc_proses;

    //create a form
    aForm := TfLaporanPerubahan.Create(tabSheet[31]) ;
    aForm.Parent := tabSheet[31];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[31].Caption := aForm.Caption;
    tabSheet[31].Name := 'fLaporanPerubahan';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[31];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[31];
  end;
end;

procedure TfMain.dxPendaftaranMutasi_37Click(Sender: TObject);
var
   aForm : TfPendaftaranMLD;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPendaftaranMLD') then
  begin
    //Create a new tab sheet
    tabSheet[37] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[37].PageControl := pc_proses;

    //create a form
    aForm := TfPendaftaranMLD.Create(tabSheet[37]) ;
    aForm.Parent := tabSheet[37];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[37].Caption := aForm.Caption;
    tabSheet[37].Name := 'fPendaftaranMLD';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[37];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[37];
  end;
end;

procedure TfMain.dxEntryMutasiLuarDaerah_38Click(Sender: TObject);
var
   aForm : TfEntryMLD;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fEntryMLD') then
  begin
    //Create a new tab sheet
    tabSheet[38] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[38].PageControl := pc_proses;

    //create a form
    aForm := TfEntryMLD.Create(tabSheet[38]) ;
    aForm.Parent := tabSheet[38];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[38].Caption := aForm.Caption;
    tabSheet[38].Name := 'fEntryMLD';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[38];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[38];
  end;
end;

procedure TfMain.dxPrintKartuInduk_39Click(Sender: TObject);
var
   aForm : TfKartuIndukMLD;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fKartuIndukMLD') then
  begin
    //Create a new tab sheet
    tabSheet[39] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[39].PageControl := pc_proses;

    //create a form
    aForm := TfKartuIndukMLD.Create(tabSheet[39]) ;
    aForm.Parent := tabSheet[39];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[39].Caption := aForm.Caption;
    tabSheet[39].Name := 'fKartuIndukMLD';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[39];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[39];
  end;
end;

procedure TfMain.dxLabelMutasiLD_40Click(Sender: TObject);
var
   aForm : TfLabelBPKB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fLabelBPKB') then
  begin
    //Create a new tab sheet
    tabSheet[47] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[47].PageControl := pc_proses;

    //create a form
    aForm := TfLabelBPKB.Create(tabSheet[47]) ;
    aForm.Parent := tabSheet[47];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[47].Caption := aForm.Caption;
    tabSheet[47].Name := 'fLabelBPKB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[47];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[47];
  end;
end;

procedure TfMain.dxPenyerahanMutasiLD_41Click(Sender: TObject);
var
   aForm : TfPenyerahanMLD;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPenyerahanMLD') then
  begin
    //Create a new tab sheet
    tabSheet[41] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[41].PageControl := pc_proses;

    //create a form
    aForm := TfPenyerahanMLD.Create(tabSheet[41]) ;
    aForm.Parent := tabSheet[41];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[41].Caption := aForm.Caption;
    tabSheet[41].Name := 'fPenyerahanMLD';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[41];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[41];
  end;
end;

procedure TfMain.dxPendaftaranGB_126Click(Sender: TObject);
var
   aForm : TfPendaftaranGB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPendaftaranGB') then
  begin
    //Create a new tab sheet
    tabSheet[126] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[126].PageControl := pc_proses;

    //create a form
    aForm := TfPendaftaranGB.Create(tabSheet[126]) ;
    aForm.Parent := tabSheet[126];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[126].Caption := aForm.Caption;
    tabSheet[126].Name := 'fPendaftaranGB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[126];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[126];
  end;
end;

procedure TfMain.dxRegistrasiGB_127Click(Sender: TObject);
var
   aForm : TfRegistrasiGB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fRegistrasiGB') then
  begin
    //Create a new tab sheet
    tabSheet[127] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[127].PageControl := pc_proses;

    //create a form
    aForm := TfRegistrasiGB.Create(tabSheet[127]) ;
    aForm.Parent := tabSheet[127];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[127].Caption := aForm.Caption;
    tabSheet[127].Name := 'fRegistrasiGB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[127];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[127];
  end;
end;

procedure TfMain.dxMonitorPrintKIGB_128Click(Sender: TObject);
var
   aForm : TfKartuIndukBG;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fKartuIndukBG') then
  begin
    //Create a new tab sheet
    tabSheet[128] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[128].PageControl := pc_proses;

    //create a form
    aForm := TfKartuIndukBG.Create(tabSheet[128]) ;
    aForm.Parent := tabSheet[128];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[128].Caption := aForm.Caption;
    tabSheet[128].Name := 'fKartuIndukBG';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[128];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[128];
  end;
end;

procedure TfMain.dxPrintTandaTerimaGB_129Click(Sender: TObject);
var
   aForm : TfTandaTerimaGB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fTandaTerimaGB') then
  begin
    //Create a new tab sheet
    tabSheet[129] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[129].PageControl := pc_proses;

    //create a form
    aForm := TfTandaTerimaGB.Create(tabSheet[129]) ;
    aForm.Parent := tabSheet[129];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[129].Caption := aForm.Caption;
    tabSheet[129].Name := 'fTandaTerimaGB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[129];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[129];
  end;
end;

procedure TfMain.dxVerifikasiGB_130Click(Sender: TObject);
var
   aForm : TfVerifikasiGB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fVerifikasiGB') then
  begin
    //Create a new tab sheet
    tabSheet[130] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[130].PageControl := pc_proses;

    //create a form
    aForm := TfVerifikasiGB.Create(tabSheet[130]) ;
    aForm.Parent := tabSheet[130];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[130].Caption := aForm.Caption;
    tabSheet[130].Name := 'fVerifikasiGB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[130];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[130];
  end;
end;

procedure TfMain.dxPenulisanGB_131Click(Sender: TObject);
var
   aForm : TfPenulisanGB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPenulisanGB') then
  begin
    //Create a new tab sheet
    tabSheet[131] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[131].PageControl := pc_proses;

    //create a form
    aForm := TfPenulisanGB.Create(tabSheet[131]) ;
    aForm.Parent := tabSheet[131];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[131].Caption := aForm.Caption;
    tabSheet[131].Name := 'fPenulisanGB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[131];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[131];
  end;
end;

procedure TfMain.dxPenyerahanGB_132Click(Sender: TObject);
var
   aForm : TfPenyerahanGB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPenyerahanGB') then
  begin
    //Create a new tab sheet
    tabSheet[132] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[132].PageControl := pc_proses;

    //create a form
    aForm := TfPenyerahanGB.Create(tabSheet[132]) ;
    aForm.Parent := tabSheet[132];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[132].Caption := aForm.Caption;
    tabSheet[132].Name := 'fPenyerahanGB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[132];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[132];
  end;
end;

procedure TfMain.dxPendaftaranDuplikat_133Click(Sender: TObject);
var
   aForm : TfPendaftaranDup;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPendaftaranDup') then
  begin
    //Create a new tab sheet
    tabSheet[133] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[133].PageControl := pc_proses;

    //create a form
    aForm := TfPendaftaranDup.Create(tabSheet[133]) ;
    aForm.Parent := tabSheet[133];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[133].Caption := aForm.Caption;
    tabSheet[133].Name := 'fPendaftaranDup';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[133];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[133];
  end;
end;

procedure TfMain.dxRegistrasiDuplikat_134Click(Sender: TObject);
var
   aForm : TfRegistrasiDup;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fRegistrasiDup') then
  begin
    //Create a new tab sheet
    tabSheet[134] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[134].PageControl := pc_proses;

    //create a form
    aForm := TfRegistrasiDup.Create(tabSheet[134]) ;
    aForm.Parent := tabSheet[134];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[134].Caption := aForm.Caption;
    tabSheet[134].Name := 'fRegistrasiDup';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[134];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[134];
  end;
end;

procedure TfMain.dxMonitorPrintKIDuplikat_135Click(Sender: TObject);
var
   aForm : TfKartuIndukDup;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fKartuIndukDup') then
  begin
    //Create a new tab sheet
    tabSheet[135] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[135].PageControl := pc_proses;

    //create a form
    aForm := TfKartuIndukDup.Create(tabSheet[135]) ;
    aForm.Parent := tabSheet[135];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[135].Caption := aForm.Caption;
    tabSheet[135].Name := 'fKartuIndukDup';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[135];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[135];
  end;
end;

procedure TfMain.dxPrintTandaTerimaDuplikat_136Click(Sender: TObject);
var
   aForm : TfTandaTerimaDup;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fTandaTerimaDup') then
  begin
    //Create a new tab sheet
    tabSheet[136] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[136].PageControl := pc_proses;

    //create a form
    aForm := TfTandaTerimaDup.Create(tabSheet[136]) ;
    aForm.Parent := tabSheet[136];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[136].Caption := aForm.Caption;
    tabSheet[136].Name := 'fTandaTerimaDup';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[136];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[136];
  end;
end;

procedure TfMain.dxVerifikasiDuplikat_137Click(Sender: TObject);
var
   aForm : TfVerifikasiDup;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fVerifikasiDup') then
  begin
    //Create a new tab sheet
    tabSheet[137] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[137].PageControl := pc_proses;

    //create a form
    aForm := TfVerifikasiDup.Create(tabSheet[137]) ;
    aForm.Parent := tabSheet[137];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[137].Caption := aForm.Caption;
    tabSheet[137].Name := 'fVerifikasiDup';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[137];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[137];
  end;
end;

procedure TfMain.dxPenulisanDuplikat_138Click(Sender: TObject);
var
   aForm : TfPenulisanDup;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPenulisanDup') then
  begin
    //Create a new tab sheet
    tabSheet[138] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[138].PageControl := pc_proses;

    //create a form
    aForm := TfPenulisanDup.Create(tabSheet[138]) ;
    aForm.Parent := tabSheet[138];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[138].Caption := aForm.Caption;
    tabSheet[138].Name := 'fPenulisanDup';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[138];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[138];
  end;
end;

procedure TfMain.dxPenyerahanDuplikat_139Click(Sender: TObject);
var
   aForm : TfPenyerahanDup;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPenyerahanDup') then
  begin
    //Create a new tab sheet
    tabSheet[139] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[139].PageControl := pc_proses;

    //create a form
    aForm := TfPenyerahanDup.Create(tabSheet[139]) ;
    aForm.Parent := tabSheet[139];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[139].Caption := aForm.Caption;
    tabSheet[139].Name := 'fPenyerahanDup';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[139];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[139];
  end;
end;

procedure TfMain.dxJurnalBPKB_56Click(Sender: TObject);
var
   aForm : TfJurnalBPKB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fJurnalBPKB') then
  begin
    //Create a new tab sheet
    tabSheet[56] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[56].PageControl := pc_proses;

    //create a form
    aForm := TfJurnalBPKB.Create(tabSheet[56]) ;
    aForm.Parent := tabSheet[56];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[56].Caption := aForm.Caption;
    tabSheet[56].Name := 'fJurnalBPKB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[56];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[56];
  end;
end;

procedure TfMain.dxMonitorPNBP_59Click(Sender: TObject);
var
   aForm : TfMonitorPNBP2;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fMonitorPNBP2') then
  begin
    //Create a new tab sheet
    tabSheet[59] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[59].PageControl := pc_proses;

    //create a form
    aForm := TfMonitorPNBP2.Create(tabSheet[59]) ;
    aForm.Parent := tabSheet[59];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[59].Caption := aForm.Caption;
    tabSheet[59].Name := 'fMonitorPNBP2';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[59];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[59];
  end;
end;

procedure TfMain.dxDataFaktur_140Click(Sender: TObject);
var
   aForm : TfImportDataFaktur;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fImportDataFaktur') then
  begin
    //Create a new tab sheet
    tabSheet[140] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[140].PageControl := pc_proses;

    //create a form
    aForm := TfImportDataFaktur.Create(tabSheet[140]) ;
    aForm.Parent := tabSheet[140];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[140].Caption := aForm.Caption;
    tabSheet[140].Name := 'fImportDataFaktur';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[140];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[140];
  end;
end;

procedure TfMain.CheckUpdateSistem1Click(Sender: TObject);
begin
  ShellExecute(0,'open','update_sinranmor.exe','','',SW_NORMAL);
end;

procedure TfMain.dxStatusPenerbitanBPKB_57Click(Sender: TObject);
var
   aForm : TfStatusPenerbitanBPKB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fStatusPenerbitanBPKB') then
  begin
    //Create a new tab sheet
    tabSheet[57] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[57].PageControl := pc_proses;

    //create a form
    aForm := TfStatusPenerbitanBPKB.Create(tabSheet[57]) ;
    aForm.Parent := tabSheet[57];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[57].Caption := aForm.Caption;
    tabSheet[57].Name := 'fStatusPenerbitanBPKB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[57];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[57];
  end;
end;

procedure TfMain.dxPendaftaranBPKB_60Click(Sender: TObject);
var
   aForm : TfLaporanPendaftaran;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fLaporanPendaftaran') then
  begin
    //Create a new tab sheet
    tabSheet[60] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[60].PageControl := pc_proses;

    //create a form
    aForm := TfLaporanPendaftaran.Create(tabSheet[60]) ;
    aForm.Parent := tabSheet[60];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[60].Caption := aForm.Caption;
    tabSheet[60].Name := 'fLaporanPendaftaran';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[60];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[60];
  end;
end;

procedure TfMain.dxPencarianBPKB_63Click(Sender: TObject);
var
   aForm : TfDataBPKB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fDataBPKB') then
  begin
    //Create a new tab sheet
    tabSheet[63] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[63].PageControl := pc_proses;

    //create a form
    aForm := TfDataBPKB.Create(tabSheet[63]) ;
    aForm.Parent := tabSheet[63];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[63].Caption := aForm.Caption;
    tabSheet[63].Name := 'fDataBPKB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[63];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[63];
  end;
end;

procedure TfMain.dxBlokir_66Click(Sender: TObject);
var
   aForm : TfLapBlokirBukaBlokir;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fLapBlokirBukaBlokir') then
  begin
    //Create a new tab sheet
    tabSheet[66] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[66].PageControl := pc_proses;

    //create a form
    aForm := TfLapBlokirBukaBlokir.Create(tabSheet[66]) ;
    aForm.Parent := tabSheet[66];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[66].Caption := aForm.Caption;
    tabSheet[66].Name := 'fLapBlokirBukaBlokir';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[66];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[66];
  end;
end;

procedure TfMain.dxMutasiLD_65Click(Sender: TObject);
var
   aForm : TfLapMutasiLD;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fLapMutasiLD') then
  begin
    //Create a new tab sheet
    tabSheet[66] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[66].PageControl := pc_proses;

    //create a form
    aForm := TfLapMutasiLD.Create(tabSheet[66]) ;
    aForm.Parent := tabSheet[66];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[66].Caption := aForm.Caption;
    tabSheet[66].Name := 'fLapMutasiLD';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[66];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[66];
  end;
end;

procedure TfMain.dxTandaTangan_67Click(Sender: TObject);
var
   aForm : TfLapPenggunaanTTD;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fLapPenggunaanTTD') then
  begin
    //Create a new tab sheet
    tabSheet[67] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[67].PageControl := pc_proses;

    //create a form
    aForm := TfLapPenggunaanTTD.Create(tabSheet[67]) ;
    aForm.Parent := tabSheet[67];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[67].Caption := aForm.Caption;
    tabSheet[67].Name := 'fLapPenggunaanTTD';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[67];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[67];
  end;
end;

procedure TfMain.dxHistoryBPKB_68Click(Sender: TObject);
var
   aForm : TfHistoryBPKB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fHistoryBPKB') then
  begin
    //Create a new tab sheet
    tabSheet[68] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[68].PageControl := pc_proses;

    //create a form
    aForm := TfHistoryBPKB.Create(tabSheet[68]) ;
    aForm.Parent := tabSheet[68];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[68].Caption := aForm.Caption;
    tabSheet[68].Name := 'fHistoryBPKB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[68];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[68];
  end;
end;

procedure TfMain.dxLaporanL405B_69Click(Sender: TObject);
var
   aForm : TfLapL405B;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fLapL405B') then
  begin
    //Create a new tab sheet
    tabSheet[69] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[69].PageControl := pc_proses;

    //create a form
    aForm := TfLapL405B.Create(tabSheet[69]) ;
    aForm.Parent := tabSheet[69];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[69].Caption := aForm.Caption;
    tabSheet[69].Name := 'fLapL405B';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[69];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[69];
  end;
end;

procedure TfMain.dxATPM_101Click(Sender: TObject);
var
   aForm : TFAPM;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('FAPM') then
  begin
    //Create a new tab sheet
    tabSheet[101] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[101].PageControl := pc_proses;

    //create a form
    aForm := TFAPM.Create(tabSheet[101]) ;
    aForm.Parent := tabSheet[101];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[101].Caption := aForm.Caption;
    tabSheet[101].Name := 'FAPM';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[101];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[101];
  end;
end;

procedure TfMain.dxCetakSKETBPKB_35Click(Sender: TObject);
var
   aForm : TfSKETBPKB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fSKETBPKB') then
  begin
    //Create a new tab sheet
    tabSheet[35] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[35].PageControl := pc_proses;

    //create a 35
    aForm := TfSKETBPKB.Create(tabSheet[35]) ;
    aForm.Parent := tabSheet[35];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[35].Caption := aForm.Caption;
    tabSheet[35].Name := 'fSKETBPKB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[35];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[35];
  end;
end;

procedure TfMain.dxAdministrasiTTDBuku_34Click(Sender: TObject);
var
   aForm : TfAdministrasiTTDBuku;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fAdministrasiTTDBuku') then
  begin
    //Create a new tab sheet
    tabSheet[34] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[34].PageControl := pc_proses;

    //create a 34
    aForm := TfAdministrasiTTDBuku.Create(tabSheet[34]) ;
    aForm.Parent := tabSheet[34];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[34].Caption := aForm.Caption;
    tabSheet[34].Name := 'fAdministrasiTTDBuku';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[34];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[34];
  end;
end;

procedure TfMain.dxLaporanBBN1_141Click(Sender: TObject);
var
   aForm : TfLaporanBBN1;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fLaporanBBN1') then
  begin
    //Create a new tab sheet
    tabSheet[141] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[141].PageControl := pc_proses;

    //create a 34
    aForm := TfLaporanBBN1.Create(tabSheet[141]) ;
    aForm.Parent := tabSheet[141];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[141].Caption := aForm.Caption;
    tabSheet[141].Name := 'fLaporanBBN1';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[141];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[141];
  end;
end;

procedure TfMain.dxLaporanBN_142Click(Sender: TObject);
var
   aForm : TfLaporanBN;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fLaporanBN') then
  begin
    //Create a new tab sheet
    tabSheet[142] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[142].PageControl := pc_proses;

    //create a 34
    aForm := TfLaporanBN.Create(tabSheet[142]) ;
    aForm.Parent := tabSheet[142];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[142].Caption := aForm.Caption;
    tabSheet[142].Name := 'fLaporanBN';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[142];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[142];
  end;
end;

procedure TfMain.dxEmbosing_143Click(Sender: TObject);
var
   aForm : TfEmbosing;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fEmbosing') then
  begin
    //Create a new tab sheet
    tabSheet[143] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[143].PageControl := pc_proses;

    //create a 34
    aForm := TfEmbosing.Create(tabSheet[143]) ;
    aForm.Parent := tabSheet[143];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[143].Caption := aForm.Caption;
    tabSheet[143].Name := 'fEmbosing';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[143];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[143];
  end;
end;

procedure TfMain.dxUsrMgnAPM_144Click(Sender: TObject);
var
   aForm : TfUsrMgnAPM;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fUsrMgnAPM') then
  begin
    //Create a new tab sheet
    tabSheet[144] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[144].PageControl := pc_proses;

    //create a 34
    aForm := TfUsrMgnAPM.Create(tabSheet[144]) ;
    aForm.Parent := tabSheet[144];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[144].Caption := aForm.Caption;
    tabSheet[144].Name := 'fUsrMgnAPM';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[144];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[144];
  end;
end;

procedure TfMain.dxRefTipe_145Click(Sender: TObject);
var
   aForm : TfRefTipe;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fRefTipe') then
  begin
    //Create a new tab sheet
    tabSheet[145] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[145].PageControl := pc_proses;

    //create a 34
    aForm := TfRefTipe.Create(tabSheet[145]) ;
    aForm.Parent := tabSheet[145];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[145].Caption := aForm.Caption;
    tabSheet[145].Name := 'fRefTipe';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[145];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[145];
  end;
end;

procedure TfMain.T1Click(Sender: TObject);
begin
  with DM.dbSrv do
  begin
    Server := THOST_SERVER+':'+TPORT_SERVER+':'+TSID_SERVER;
    Username := TUSER_SERVER;
    Password := TPASSW_SERVER;
    fMain.TulisStatus(0,'SIFIK BPKB (#'+THOST_SERVER+')');
    try
      Connect;

      IsConect := True;
      Log('Koneksi Database Local DBSIFIK Berhasil!');
    except
    On E: Exception do
    begin
       ErrorProg('Error, ConnectDataBase --> '+E.Message);
       IsConect := False;
       if fFormAktif <> nil then
          fFormAktif.Close;

       fSettingDB := TfSettingDB.Create(nil);
       fSettingDB.Parent := fMain.pProses;
       fFormAktif := fSettingDB;
       fSettingDB.Show;
    end;
    end;
  end;
end;

procedure TfMain.dxMonitoringDaftDealer_146Click(Sender: TObject);
var
   aForm : TfMonitoringDaftDealer;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fMonitoringDaftDealer') then
  begin
    //Create a new tab sheet
    tabSheet[146] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[146].PageControl := pc_proses;

    //create a 34
    aForm := TfMonitoringDaftDealer.Create(tabSheet[146]) ;
    aForm.Parent := tabSheet[146];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[146].Caption := aForm.Caption;
    tabSheet[146].Name := 'fMonitoringDaftDealer';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[146];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[146];
  end;
end;

procedure TfMain.dxAlokasiNOPOL_45Click(Sender: TObject);
var
   aForm : TfAlokasiNOPOL;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fAlokasiNOPOL') then
  begin
    //Create a new tab sheet
    tabSheet[45] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[45].PageControl := pc_proses;

    //create a form
    aForm := TfAlokasiNOPOL.Create(tabSheet[45]) ;
    aForm.Parent := tabSheet[45];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[45].Caption := aForm.Caption;
    tabSheet[45].Name := 'fAlokasiNOPOL';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[45];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[45];
  end;
end;

procedure TfMain.dxBBN1STNKClick(Sender: TObject);
var
   aForm : TfSTNK;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fSTNK') then
  begin
    //Create a new tab sheet
    tabSheet[147] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[147].PageControl := pc_proses;

    //create a form
    aForm := TfSTNK.Create(tabSheet[147]) ;
    aForm.Parent := tabSheet[147];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[147].Caption := aForm.Caption;
    tabSheet[147].Name := 'fSTNK';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[147];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[147];
  end;
end;

procedure TfMain.dxLoketBRI_148Click(Sender: TObject);
var
   aForm : TfLoketBRI;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fLoketBRI') then
  begin
    //Create a new tab sheet
    tabSheet[148] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[148].PageControl := pc_proses;

    //create a form
    aForm := TfLoketBRI.Create(tabSheet[148]) ;
    aForm.Parent := tabSheet[148];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[148].Caption := aForm.Caption;
    tabSheet[148].Name := 'fLoketBRI';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[148];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[148];
  end;
end;

procedure TfMain.dxPemesananNopol25Click(Sender: TObject);
var
   aForm : TfAlokasiNOPOL;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fAlokasiNOPOL') then
  begin
    //Create a new tab sheet
    tabSheet[25] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[25].PageControl := pc_proses;

    //create a form
    aForm := TfAlokasiNOPOL.Create(tabSheet[25]) ;
    aForm.Parent := tabSheet[25];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[25].Caption := aForm.Caption;
    tabSheet[25].Name := 'fAlokasiNOPOL';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[25];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[25];
  end;
end;

procedure TfMain.dxInputMaterial_48Click(Sender: TObject);
var
   aForm : TfInputMatBPKB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fInputMatBPKB') then
  begin
    //Create a new tab sheet
    tabSheet[48] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[48].PageControl := pc_proses;

    //create a form
    aForm := TfInputMatBPKB.Create(tabSheet[48]) ;
    aForm.Parent := tabSheet[48];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[48].Caption := aForm.Caption;
    tabSheet[48].Name := 'fInputMatBPKB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[48];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[48];
  end;
end;

procedure TfMain.dxMaterial150Click(Sender: TObject);
var
   aForm : TfMasterMaterial;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fMasterMaterial') then
  begin
    //Create a new tab sheet
    tabSheet[150] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[150].PageControl := pc_proses;

    //create a 34
    aForm := TfMasterMaterial.Create(tabSheet[150]) ;
    aForm.Parent := tabSheet[150];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[150].Caption := aForm.Caption;
    tabSheet[150].Name := 'fMasterMaterial';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[150];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[150];
  end;
end;

procedure TfMain.dxBahanBakar_102Click(Sender: TObject);
var
   aForm : TfBahanBakar;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fBahanBakar') then
  begin
    //Create a new tab sheet
    tabSheet[102] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[102].PageControl := pc_proses;

    //create a form
    aForm := TfBahanBakar.Create(tabSheet[102]) ;
    aForm.Parent := tabSheet[102];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[102].Caption := aForm.Caption;
    tabSheet[102].Name := 'fBahanBakar';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[102];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[102];
  end;
end;

procedure TfMain.dxCaraImport_103Click(Sender: TObject);
var
   aForm : TfCaraImport;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fCaraImport') then
  begin
    //Create a new tab sheet
    tabSheet[103] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[103].PageControl := pc_proses;

    //create a form
    aForm := TfCaraImport.Create(tabSheet[103]) ;
    aForm.Parent := tabSheet[103];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[103].Caption := aForm.Caption;
    tabSheet[103].Name := 'fCaraImport';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[103];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[103];
  end;
end;

procedure TfMain.dxDealer_104Click(Sender: TObject);
var
   aForm : TfDealer;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fDealer') then
  begin
    //Create a new tab sheet
    tabSheet[104] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[104].PageControl := pc_proses;

    //create a form
    aForm := TfDealer.Create(tabSheet[104]) ;
    aForm.Parent := tabSheet[104];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[104].Caption := aForm.Caption;
    tabSheet[104].Name := 'fDealer';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[104];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[104];
  end;
end;

procedure TfMain.dxJenis_105Click(Sender: TObject);
var
   aForm : TfJenis;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fJenis') then
  begin
    //Create a new tab sheet
    tabSheet[105] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[105].PageControl := pc_proses;

    //create a form
    aForm := TfJenis.Create(tabSheet[105]) ;
    aForm.Parent := tabSheet[105];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[105].Caption := aForm.Caption;
    tabSheet[105].Name := 'fJenis';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[105];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[105];
  end;
end;

procedure TfMain.dxJenisDaftaran_106Click(Sender: TObject);
var
   aForm : TfJenisDaftaran;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fJenisDaftaran') then
  begin
    //Create a new tab sheet
    tabSheet[106] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[106].PageControl := pc_proses;

    //create a form
    aForm := TfJenisDaftaran.Create(tabSheet[106]) ;
    aForm.Parent := tabSheet[106];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[106].Caption := aForm.Caption;
    tabSheet[106].Name := 'fJenisDaftaran';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[106];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[106];
  end;
end;

procedure TfMain.dxKelurahan_109Click(Sender: TObject);
var
   aForm : TfKelurahan;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fKelurahan') then
  begin
    //Create a new tab sheet
    tabSheet[109] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[109].PageControl := pc_proses;

    //create a form
    aForm := TfKelurahan.Create(tabSheet[109]) ;
    aForm.Parent := tabSheet[109];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[109].Caption := aForm.Caption;
    tabSheet[109].Name := 'fKelurahan';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[109];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[109];
  end;
end;

procedure TfMain.dxMerk_110Click(Sender: TObject);
var
   aForm : TfMerk;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fMerk') then
  begin
    //Create a new tab sheet
    tabSheet[110] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[110].PageControl := pc_proses;

    //create a form
    aForm := TfMerk.Create(tabSheet[110]) ;
    aForm.Parent := tabSheet[110];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[110].Caption := aForm.Caption;
    tabSheet[110].Name := 'fMerk';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[110];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[110];
  end;
end;

procedure TfMain.dxModel_111Click(Sender: TObject);
var
   aForm : TfModel;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fModel') then
  begin
    //Create a new tab sheet
    tabSheet[111] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[111].PageControl := pc_proses;

    //create a form
    aForm := TfModel.Create(tabSheet[111]) ;
    aForm.Parent := tabSheet[111];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[111].Caption := aForm.Caption;
    tabSheet[111].Name := 'fModel';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[111];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[111];
  end;
end;

procedure TfMain.dxPerubahan_112Click(Sender: TObject);
var
   aForm : TfMasterPerubahan;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fMasterPerubahan') then
  begin
    //Create a new tab sheet
    tabSheet[112] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[112].PageControl := pc_proses;

    //create a form
    aForm := TfMasterPerubahan.Create(tabSheet[112]) ;
    aForm.Parent := tabSheet[112];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[112].Caption := aForm.Caption;
    tabSheet[112].Name := 'fMasterPerubahan';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[112];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[112];
  end;
end;

procedure TfMain.dxPeruntukan_113Click(Sender: TObject);
var
   aForm : TfPeruntukan;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPeruntukan') then
  begin
    //Create a new tab sheet
    tabSheet[113] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[113].PageControl := pc_proses;

    //create a form
    aForm := TfPeruntukan.Create(tabSheet[113]) ;
    aForm.Parent := tabSheet[113];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[113].Caption := aForm.Caption;
    tabSheet[113].Name := 'fPeruntukan';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[113];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[113];
  end;
end;

procedure TfMain.dxPolda_114Click(Sender: TObject);
var
   aForm : TfPolda;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPolda') then
  begin
    //Create a new tab sheet
    tabSheet[114] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[114].PageControl := pc_proses;

    //create a form
    aForm := TfPolda.Create(tabSheet[114]) ;
    aForm.Parent := tabSheet[114];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[114].Caption := aForm.Caption;
    tabSheet[114].Name := 'fPolda';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[114];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[114];
  end;
end;

procedure TfMain.dxPolres_115Click(Sender: TObject);
var
   aForm : TfPolres;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fPolres') then
  begin
    //Create a new tab sheet
    tabSheet[115] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[115].PageControl := pc_proses;

    //create a form
    aForm := TfPolres.Create(tabSheet[115]) ;
    aForm.Parent := tabSheet[115];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[115].Caption := aForm.Caption;
    tabSheet[115].Name := 'fPolres';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[115];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[115];
  end;
end;

procedure TfMain.dxWarna_116Click(Sender: TObject);
var
   aForm : TfWarna;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fWarna') then
  begin
    //Create a new tab sheet
    tabSheet[116] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[116].PageControl := pc_proses;

    //create a form
    aForm := TfWarna.Create(tabSheet[116]) ;
    aForm.Parent := tabSheet[116];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[116].Caption := aForm.Caption;
    tabSheet[116].Name := 'fWarna';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[116];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[116];
  end;
end;

procedure TfMain.dxWarnaKartu_117Click(Sender: TObject);
var
   aForm : TfWarnaKartu;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fWarnaKartu') then
  begin
    //Create a new tab sheet
    tabSheet[117] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[117].PageControl := pc_proses;

    //create a form
    aForm := TfWarnaKartu.Create(tabSheet[117]) ;
    aForm.Parent := tabSheet[117];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[117].Caption := aForm.Caption;
    tabSheet[117].Name := 'fWarnaKartu';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[117];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[117];
  end;
end;

procedure TfMain.dxWarnaTNKB_118Click(Sender: TObject);
var
   aForm : TfWarnaTNKB;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fWarnaTNKB') then
  begin
    //Create a new tab sheet
    tabSheet[118] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[118].PageControl := pc_proses;

    //create a form
    aForm := TfWarnaTNKB.Create(tabSheet[118]) ;
    aForm.Parent := tabSheet[118];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[118].Caption := aForm.Caption;
    tabSheet[118].Name := 'fWarnaTNKB';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[118];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[118];
  end;
end;

procedure TfMain.dxKonfigSistem_54Click(Sender: TObject);
var
   aForm : TfSetting;
begin
  pProses.Visible := False;
  pc_proses.Visible := True;
  if not IsFormOpen('fSetting') then
  begin
    //Create a new tab sheet
    tabSheet[54] := TcxTabSheet.Create(pc_proses) ;
    tabSheet[54].PageControl := pc_proses;

    //create a form
    aForm := TfSetting.Create(tabSheet[54]) ;
    aForm.Parent := tabSheet[54];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[54].Caption := aForm.Caption;
    tabSheet[54].Name := 'fSetting';

    //activate the sheet
    pc_proses.ActivePage := tabSheet[54];
  end
  else
  begin
    pc_proses.ActivePage := tabSheet[54];
  end;
end;

procedure TfMain.FormDestroy(Sender: TObject);
begin
  HotKeyManager1.ClearHotKeys;
end;

procedure TfMain.HotKeyManager1HotKeyPressed(HotKey: Cardinal;
  Index: Word);
begin
  // registrasi kendaraan baru
  if (HotKeyToText(HotKey, True)='F1') and (pc_proses.ActivePage = tabSheet[8]) then
  begin
    aFormRegistrasi.cxPageControl2.ActivePageIndex := 0;
  end
  else if (HotKeyToText(HotKey, True)='F2') and (pc_proses.ActivePage = tabSheet[8])  then
  begin
    aFormRegistrasi.cxPageControl2.ActivePageIndex := 1;
  end
  else if (HotKeyToText(HotKey, True)='F3') and (pc_proses.ActivePage = tabSheet[8])  then
  begin
    aFormRegistrasi.cxPageControl2.ActivePageIndex := 2;
  end
  else if (HotKeyToText(HotKey, True)='F4') and (pc_proses.ActivePage = tabSheet[8])  then
  begin
    if aFormRegistrasi.cxTabSheet6.Visible = True then
       aFormRegistrasi.cxPageControl2.ActivePageIndex := 3;
  end
  else if (HotKeyToText(HotKey, True)='F10') and (pc_proses.ActivePage = tabSheet[8]) then
  begin
    if aFormRegistrasi.bSimpanEntry.Enabled=True then
       aFormRegistrasi.bSimpanEntry.Click;
  end
  else if (HotKeyToText(HotKey, True)='F11') and (pc_proses.ActivePage = tabSheet[8])  then
  begin
    if aFormRegistrasi.bBaruEntry.Enabled=True then
       aFormRegistrasi.bBaruEntry.Click;
  end
  // verifikasi bbn1 kendaraan baru
  else if (HotKeyToText(HotKey, True)='F1') and (pc_proses.ActivePage = tabSheet[12]) then
  begin
    aFormfVerifikasiBBN1.cxPageControl1.ActivePageIndex := 0;
  end
  else if (HotKeyToText(HotKey, True)='F2') and (pc_proses.ActivePage = tabSheet[12])  then
  begin
    aFormfVerifikasiBBN1.cxPageControl1.ActivePageIndex := 1;
  end
  else if (HotKeyToText(HotKey, True)='F3') and (pc_proses.ActivePage = tabSheet[12])  then
  begin
    aFormfVerifikasiBBN1.cxPageControl1.ActivePageIndex := 2;
  end
  else if (HotKeyToText(HotKey, True)='F4') and (pc_proses.ActivePage = tabSheet[12])  then
  begin
    aFormfVerifikasiBBN1.cxPageControl1.ActivePageIndex := 3;
  end
  else if (HotKeyToText(HotKey, True)='F5') and (pc_proses.ActivePage = tabSheet[12]) then
  begin
    if aFormfVerifikasiBBN1.cxButton2.Enabled=True then
       aFormfVerifikasiBBN1.cxButton2.Click;
  end
  else if (HotKeyToText(HotKey, True)='F10') and (pc_proses.ActivePage = tabSheet[12]) then
  begin
    if aFormfVerifikasiBBN1.bVerifikasi.Enabled=True then
       aFormfVerifikasiBBN1.bVerifikasi.Click;
  end
  else if (HotKeyToText(HotKey, True)='F11') and (pc_proses.ActivePage = tabSheet[12])  then
  begin
    if aFormfVerifikasiBBN1.bBaru_V.Enabled=True then
       aFormfVerifikasiBBN1.bBaru_V.Click;
  end
  // cetak bbn1 kendaraan baru
  else if (HotKeyToText(HotKey, True)='F1') and (pc_proses.ActivePage = tabSheet[13]) then
  begin
    aFormPenulisanBBN1.cxPageControl1.ActivePageIndex := 0;
  end
  else if (HotKeyToText(HotKey, True)='F2') and (pc_proses.ActivePage = tabSheet[13])  then
  begin
    aFormPenulisanBBN1.cxPageControl1.ActivePageIndex := 1;
  end
  else if (HotKeyToText(HotKey, True)='F3') and (pc_proses.ActivePage = tabSheet[13])  then
  begin
    aFormPenulisanBBN1.cxPageControl1.ActivePageIndex := 2;
  end
  else if (HotKeyToText(HotKey, True)='F4') and (pc_proses.ActivePage = tabSheet[13])  then
  begin
    aFormPenulisanBBN1.cxPageControl1.ActivePageIndex := 3;
  end
  else if (HotKeyToText(HotKey, True)='F10') and (pc_proses.ActivePage = tabSheet[13]) then
  begin
    if aFormPenulisanBBN1.bCetakBuku_CB.Enabled=True then
       aFormPenulisanBBN1.bCetakBuku_CB.Click;
  end
  else if (HotKeyToText(HotKey, True)='F11') and (pc_proses.ActivePage = tabSheet[13])  then
  begin
    if aFormPenulisanBBN1.bBaru_CB.Enabled=True then
       aFormPenulisanBBN1.bBaru_CB.Click;
  end
end;

end.
