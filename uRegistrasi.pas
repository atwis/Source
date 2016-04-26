unit uRegistrasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxContainer,
  cxEdit, Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxMemo,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, cxButtons, cxTextEdit, cxRadioGroup, cxPC,
  ExtCtrls, DBAccess, Uni, MemDS, HotKeyManager, cxCheckBox, Grids,
  DBGrids, CRGrid, DBCtrls;

type
  TfRegistrasi = class(TForm)
    Shape1: TShape;
    lJudul: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Shape2: TShape;
    Label23: TLabel;
    rbNoBPKB: TcxRadioButton;
    rbNRegBPKB: TcxRadioButton;
    rbBerkasBarcode: TcxRadioButton;
    eNoBPKB: TcxTextEdit;
    eNoRegBPKB: TcxTextEdit;
    eNoBarcode: TcxTextEdit;
    bCari: TcxButton;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label51: TLabel;
    eNoBPKBEntry: TcxTextEdit;
    eDikeluarkanEntry: TcxTextEdit;
    eNoRangkaEntry: TcxTextEdit;
    cbMerkEntry: TcxDBLookupComboBox;
    cbJenisEntry: TcxDBLookupComboBox;
    eSilinderEntry: TcxTextEdit;
    eJmlRodaEntry: TcxTextEdit;
    cbBahanBakarEntry: TcxDBLookupComboBox;
    cbPeruntukanEntry: TcxDBLookupComboBox;
    eNRegBPKBEntry: TcxTextEdit;
    eNoMesinEntry: TcxTextEdit;
    eTypeEntry: TcxTextEdit;
    cbModelEntry: TcxDBLookupComboBox;
    cbWarnaEntry: TcxDBLookupComboBox;
    eJmlSumbuEntry: TcxTextEdit;
    enoTPTEntry: TcxTextEdit;
    eNoSUTEntry: TcxTextEdit;
    cbWarnaTNKBEntry: TcxDBLookupComboBox;
    dtTglEntry: TcxDateEdit;
    cxTabSheet4: TcxTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    eNoIdentitasEntry: TcxTextEdit;
    eNamaPemilikEntry: TcxMemo;
    eAlamatPemilikEntry: TcxMemo;
    eKdPOSEntry: TcxTextEdit;
    ePonselEntry: TcxTextEdit;
    cbWilayahEntry: TcxDBLookupComboBox;
    cxButton2: TcxButton;
    ePropinsi: TcxTextEdit;
    eKecamatan: TcxTextEdit;
    eKabupaten: TcxTextEdit;
    eKelurahan: TcxTextEdit;
    cxTabSheet5: TcxTabSheet;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    cbJnsDaftaranEntry: TcxDBLookupComboBox;
    eNoFakturEntry: TcxTextEdit;
    eNoPabeanEntry: TcxTextEdit;
    ePelabuhanEntry: TcxTextEdit;
    eNoPIBEntry: TcxTextEdit;
    cbCaraImporEntry: TcxDBLookupComboBox;
    eNamaImportirEntry: TcxTextEdit;
    eKetLainEntry: TcxMemo;
    cbPemohonEntry: TcxDBLookupComboBox;
    dtTglFakturEntry: TcxDateEdit;
    dtTglPabeanEntry: TcxDateEdit;
    dtTglPIBEntry: TcxDateEdit;
    cxTabSheet6: TcxTabSheet;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    eTempatKeluarPertama: TcxTextEdit;
    eNRegBPKBPertama: TcxTextEdit;
    eNoBPKBPertama: TcxTextEdit;
    eNamaPemilikPertama: TcxMemo;
    eAlamatPertama: TcxMemo;
    cbSbbTdkBerlaku: TcxDBLookupComboBox;
    dtTglPertama: TcxDateEdit;
    eResiPembayaran: TcxTextEdit;
    bRequestNopol: TcxButton;
    eNopolAwal: TcxTextEdit;
    eNopolTengah: TcxTextEdit;
    eNopolAkhir: TcxTextEdit;
    bSimpanEntry: TcxButton;
    bBaruEntry: TcxButton;
    cxTabSheet2: TcxTabSheet;
    Label50: TLabel;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridDBTableView1Column12: TcxGridDBColumn;
    cxGridDBTableView1Column13: TcxGridDBColumn;
    cxGridDBTableView1Column14: TcxGridDBColumn;
    cxGridDBTableView1Column15: TcxGridDBColumn;
    cxGridDBTableView1Column16: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dtTglRegister: TcxDateEdit;
    bGetDataRegister: TcxButton;
    cxMemo1: TcxMemo;
    pkdpos: TPanel;
    Shape3: TShape;
    Label56: TLabel;
    Button1: TButton;
    eCariKelurahan: TcxTextEdit;
    rbKelurahan: TcxRadioButton;
    rbKecamatan: TcxRadioButton;
    eThnBuatEntry: TcxComboBox;
    eThnRakitEntry: TcxComboBox;
    QMerk1: TUniQuery;
    QMerk2: TUniQuery;
    dsMerk2: TUniDataSource;
    dsMerk1: TUniDataSource;
    QJenis1: TUniQuery;
    QJenis2: TUniQuery;
    dsJenis2: TUniDataSource;
    dsJenis1: TUniDataSource;
    QBB1: TUniQuery;
    QBB2: TUniQuery;
    dsQBB2: TUniDataSource;
    dsQBB1: TUniDataSource;
    QPeruntukan1: TUniQuery;
    dsPeruntukan1: TUniDataSource;
    QPeruntukan2: TUniQuery;
    dsPeruntukan2: TUniDataSource;
    QWarnaTNKB2: TUniQuery;
    dsWarnaTNKB2: TUniDataSource;
    dsWarnaTNKB1: TUniDataSource;
    QWarnaTNKB1: TUniQuery;
    QJenisDaftar1: TUniQuery;
    QJenisDaftar2: TUniQuery;
    dsJenisDaftar2: TUniDataSource;
    dsJenisDaftar1: TUniDataSource;
    QModel1: TUniQuery;
    QModel2: TUniQuery;
    dsModel2: TUniDataSource;
    dsModel1: TUniDataSource;
    QWarna1: TUniQuery;
    QWarna2: TUniQuery;
    dsWarna2: TUniDataSource;
    dsWarna1: TUniDataSource;
    QWil1: TUniQuery;
    QWil2: TUniQuery;
    dsWil2: TUniDataSource;
    dsWil1: TUniDataSource;
    QPemohon1: TUniQuery;
    QPemohon2: TUniQuery;
    dsPemohon2: TUniDataSource;
    dsPemohon1: TUniDataSource;
    QCaraImport1: TUniQuery;
    QCaraImport2: TUniQuery;
    dsCaraImport2: TUniDataSource;
    dsCaraImport1: TUniDataSource;
    QDeatilRegister: TUniQuery;
    QDeatilRegisterBERKAS_ID: TIntegerField;
    QDeatilRegisterBPKB_ID: TIntegerField;
    QDeatilRegisterNO_BPKB: TStringField;
    QDeatilRegisterNREG_BPKB: TStringField;
    QDeatilRegisterTGL_BPKB: TDateField;
    QDeatilRegisterNO_POLISI: TStringField;
    QDeatilRegisterNAMA_PEMILIK: TStringField;
    QDeatilRegisterALAMAT_PEMILIK: TStringField;
    QDeatilRegisterMERK_NAMA: TStringField;
    QDeatilRegisterTIPE: TStringField;
    QDeatilRegisterJENIS_NAMA: TStringField;
    QDeatilRegisterMODEL_NAMA: TStringField;
    QDeatilRegisterTHN_BUAT: TIntegerField;
    QDeatilRegisterTHN_RAKIT: TIntegerField;
    QDeatilRegisterVOL_SILINDER: TIntegerField;
    QDeatilRegisterJML_RODA: TIntegerField;
    QDeatilRegisterJML_SUMBU: TIntegerField;
    QDeatilRegisterWARNA_NAMA: TStringField;
    QDeatilRegisterNO_RANGKA: TStringField;
    QDeatilRegisterNO_MESIN: TStringField;
    QDeatilRegisterBB_NAMA: TStringField;
    QDeatilRegisterWARNA_TNKB: TStringField;
    QDeatilRegisterATPM_NAMA: TStringField;
    QDeatilRegisterNO_FAKTUR: TStringField;
    QDeatilRegisterTGL_FAKTUR: TDateField;
    QDeatilRegisterOPERATOR: TStringField;
    QDeatilRegisterNAMA_PEMOHON: TStringField;
    dsQDeatilRegister: TUniDataSource;
    Q2: TUniQuery;
    dsQ2: TDataSource;
    Label1: TLabel;
    dtTgl: TcxDateEdit;
    lStatusNOPOL: TLabel;
    uniSPTampil: TUniStoredProc;
    dsQDeatail: TUniDataSource;
    PopupMenu1: TPopupMenu;
    EDITDATA1: TMenuItem;
    cbSemua: TcxCheckBox;
    dbgData: TCRDBGrid;
    DBNavigator1: TDBNavigator;
    Q2KELUARAHAN: TStringField;
    Q2KECAMATAN: TStringField;
    Q2KABUPATEN: TStringField;
    Q2PROPINSI: TStringField;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    QJenis: TUniQuery;
    QWarnaKartu: TUniQuery;
    dsQJenis: TUniDataSource;
    dsQWarnaKartu: TUniDataSource;
    qAddModel: TUniQuery;
    dsqAddModel: TUniDataSource;
    Button2: TButton;
    Button3: TButton;
    QJenisModel1: TUniQuery;
    QJenisModel2: TUniQuery;
    dsQJenisModel2: TUniDataSource;
    dsQJenisModel1: TUniDataSource;
    dsQWarnaKartu1: TUniDataSource;
    QWarnaKartu1: TUniQuery;
    QWarnaKartu2: TUniQuery;
    dsQWarnaKartu2: TUniDataSource;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxButton17: TcxButton;
    cxButton18: TcxButton;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    cxButton21: TcxButton;
    cxButton22: TcxButton;
    cxButton23: TcxButton;
    cbFromSTNK: TcxCheckBox;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxButton24: TcxButton;
    cxGridDBTableView1Column17: TcxGridDBColumn;
    QPekerjaan1: TUniQuery;
    dsQPekerjaan1: TUniDataSource;
    dsQPekerjaan2: TUniDataSource;
    QPekerjaan2: TUniQuery;
    ePekerjaanEntry: TcxDBLookupComboBox;
    cxButton25: TcxButton;
    pWarna: TPanel;
    Label57: TLabel;
    Shape7: TShape;
    Label58: TLabel;
    cxButton6: TcxButton;
    eInputWarna: TcxTextEdit;
    bBaruPendaftaranBBN1: TcxButton;
    bSimpan: TcxButton;
    pWilayah: TPanel;
    Label63: TLabel;
    Shape5: TShape;
    Label64: TLabel;
    cxButton14: TcxButton;
    eWilayahTambah: TcxTextEdit;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    pModel: TPanel;
    Label59: TLabel;
    Shape4: TShape;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    cxButton9: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    eModelNama: TcxTextEdit;
    cbJenisModel: TcxDBLookupComboBox;
    cbWarnaKartu: TcxDBLookupComboBox;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    QLokasiSTNK1: TUniQuery;
    dsQLokasiSTNK1: TUniDataSource;
    dsQLokasiSTNK2: TUniDataSource;
    QLokasiSTNK2: TUniQuery;
    Q2KD_POS: TStringField;
    Label67: TLabel;
    eType2Entry: TcxTextEdit;
    Cb2D: TcxCheckBox;
    Label68: TLabel;
    eNoRekom: TcxTextEdit;
    procedure eNoBPKBClick(Sender: TObject);
    procedure eNoRegBPKBClick(Sender: TObject);
    procedure eNoBarcodeClick(Sender: TObject);
    procedure rbNoBPKBClick(Sender: TObject);
    procedure rbNRegBPKBClick(Sender: TObject);
    procedure rbBerkasBarcodeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eNoBPKBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoRegBPKBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoBarcodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bCariClick(Sender: TObject);
    procedure eNoRangkaEntryPropertiesChange(Sender: TObject);
    procedure eNoRangkaEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bBaruEntryClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure pkdposMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure eCariKelurahanPropertiesChange(Sender: TObject);
    procedure eCariKelurahanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Shape3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbJnsDaftaranEntryPropertiesChange(Sender: TObject);
    procedure eNoBPKBEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNRegBPKBEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eDikeluarkanEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtTglEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoMesinEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbMerkEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eTypeEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eThnBuatEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eThnRakitEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eSilinderEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eJmlRodaEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eJmlSumbuEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbBahanBakarEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure enoTPTEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbPeruntukanEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoSUTEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eKdPOSEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ePonselEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoFakturEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtTglFakturEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoPabeanEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtTglPabeanEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ePelabuhanEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoPIBEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtTglPIBEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNamaImportirEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bRequestNopolClick(Sender: TObject);
    procedure bSimpanEntryClick(Sender: TObject);
    procedure bGetDataRegisterClick(Sender: TObject);
    procedure eNopolAkhirKeyPress(Sender: TObject; var Key: Char);
    procedure eAlamatPemilikEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDITDATA1Click(Sender: TObject);
    procedure cbSemuaClick(Sender: TObject);
    procedure dbgDataDblClick(Sender: TObject);
    procedure dbgDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure bBaruPendaftaranBBN1Click(Sender: TObject);
    procedure bSimpanClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure pWarnaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure eInputWarnaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eResiPembayaranKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNopolAwalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNopolTengahKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cbModelEntryPropertiesPopup(Sender: TObject);
    procedure cbJenisEntryPropertiesChange(Sender: TObject);
    procedure pModelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure pWilayahMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure cxButton21Click(Sender: TObject);
    procedure cxButton22Click(Sender: TObject);
    procedure cxButton23Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxButton24Click(Sender: TObject);
    procedure cbFromSTNKClick(Sender: TObject);
    procedure cbJenisEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbModelEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbWarnaEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbWarnaTNKBEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbWilayahEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbJnsDaftaranEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbCaraImporEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbPemohonEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton25Click(Sender: TObject);
    procedure cbPekerjaanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure cbLokasiSTNKKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eType2EntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vISNopolLama : String; // 0 menggunakan nopol baru, 1 mengunakan nopol lama
    vBPKB_ID_Pertama : String; // penampung untuk bpkb id yg pertama
    vISNOPOL : Boolean; // status nopol true or false
    tBerkasID,vBPKB_ID,vHIST_ID : String;
    isEdit : String;
  public
    { Public declarations }
    TSession : String;

    procedure RefreshTahun;
    procedure TampilAwal;
    procedure RefreshCbMerk;
    procedure RefreshCbJenis;
    procedure RefreshCbJenisModel;
    procedure RefreshCbBahanBakar;
    procedure RefreshCbPeruntukan;
    procedure RefreshCbWarnaTNKB;
    procedure RefreshCbWarnaKartu;
    procedure RefreshCbModel;
    procedure RefreshCbWarna;
    procedure RefreshCbWilayah;
    procedure RefreshCbJenisDaftar;
    procedure RefreshCbCaraImpor;
    procedure RefreshCbPemohon;
    procedure RefreshCbPekerjaan;
    procedure RefreshCbLokasiSTNK;
    procedure RefreshKelurahan;
    procedure EnableKomponenRegister;
    procedure CariReferensi(vNoRangka:String);
    procedure CariDataFaktur(vJenis,vCari : String);
    procedure CariDataFakturAPM(vJenis,vCari : String);
    procedure CariDataFakturCF(vCari : String);
    procedure CariDataPemohon(vCari:String);
    procedure AddBPKB;
    procedure BPKBEdit;
    procedure CariDataKeATPM(vNoRangka:String);
    function ConnectServicePoldaMetro:boolean;
    procedure GetDataFakturForServicePoldaMetro(vNoRangka:String);
    procedure Data2D;
    procedure GetDataForVerifikasi(vData : String);
    function CekMerk(vMerk:String):String;
    function CekATPMID(vMerk: String): String;
    function CekNoRangkaPendaftaran(vNoRangka:String):String;
    function CekFalidasiNOPOL(vKDWilayah,vKabupaten:String):Boolean;
  end;

var
  fRegistrasi: TfRegistrasi;

implementation
Uses
  uDM, uVariabel, uModul, uWait, uMain, uPemohon, AtpmDataService2;
{$R *.dfm}

procedure TfRegistrasi.eNoBPKBClick(Sender: TObject);
begin
  rbNoBPKB.Checked := True;
end;

procedure TfRegistrasi.eNoRegBPKBClick(Sender: TObject);
begin
  rbNRegBPKB.Checked := True;
end;

procedure TfRegistrasi.eNoBarcodeClick(Sender: TObject);
begin
  rbBerkasBarcode.Checked := True;
end;

procedure TfRegistrasi.rbNoBPKBClick(Sender: TObject);
begin
  eNoBPKB.SetFocus;
end;

procedure TfRegistrasi.rbNRegBPKBClick(Sender: TObject);
begin
  eNoRegBPKB.SetFocus;
end;

procedure TfRegistrasi.rbBerkasBarcodeClick(Sender: TObject);
begin
  eNoBarcode.SetFocus;
end;

procedure TfRegistrasi.RefreshTahun;
var
   i,temp : integer;
   h : string;
begin
  h := FormatDateTime('YYYY',TTglSrvSkr);
  temp := StrToInt(h);
  for i := 3 downto 0 do
  begin
    eThnBuatEntry.Properties.Items.Add(IntToStr(temp - (i+1))+'/'+IntToStr(temp - i));
    eThnRakitEntry.Properties.Items.Add(IntToStr(temp - (i+1))+'/'+IntToStr(temp - i));
  end;

  for i := 0 to 3 do
  begin
    eThnBuatEntry.Properties.Items.Add(IntToStr(temp + i)+'/'+IntToStr(temp + (i+1)));
    eThnRakitEntry.Properties.Items.Add(IntToStr(temp + i)+'/'+IntToStr(temp + (i+1)));
  end;
  eThnBuatEntry.Text := '';
  eThnRakitEntry.Text := '';
end;

procedure TfRegistrasi.TampilAwal;
begin
  if isFormEditVerifikasi = '1' then
  begin
    isEdit := '1';
    vBPKB_ID := '';
    vHIST_ID := '';
    isKeyBarcode := '1';
    cbSemua.Checked := False;
    if vLevelPetugas='ADMINISTRATOR' then
      cbSemua.Enabled := True
    else
      cbSemua.Enabled := False;
    if vNOPOLFromSTNK = '1' then
    begin
      lStatusNOPOL.Caption := 'BLM TERPAKAI';
      cbFromSTNK.Checked := True;
      //bRequestNopol.Enabled := False;
    end
    else if vNOPOLFromSTNK = '0' then
    begin
      lStatusNOPOL.Caption := '';
      cbFromSTNK.Checked := False;
      //bRequestNopol.Enabled := True;
    end;
    cxPageControl1.ActivePageIndex := 0;
    vISNopolLama := '0';
    vBPKB_ID_Pertama := '';
    vISNOPOL := False;
    tBerkasID := '';
    eNoBPKB.Text := '';
    eNoRegBPKB.Text := '';
    eNoBarcode.Text := '';
    rbNoBPKB.Checked := True;
    rbNRegBPKB.Checked := False;
    rbBerkasBarcode.Checked := False;
    // componen disable
    eNoBPKBEntry.Enabled := False;
    eDikeluarkanEntry.Enabled := False;
    eNoRangkaEntry.Enabled := False;
    cbMerkEntry.Enabled := False;
    cbJenisEntry.Enabled := False;
    eThnBuatEntry.Enabled := False;
    eSilinderEntry.Enabled := False;
    eJmlRodaEntry.Enabled := False;
    cbBahanBakarEntry.Enabled := False;
    cbPeruntukanEntry.Enabled := False;
    cbWarnaTNKBEntry.Enabled := False;
    eNRegBPKBEntry.Enabled := False;
    dtTglEntry.Enabled := False;
    eNoMesinEntry.Enabled := False;
    eTypeEntry.Enabled := False;
    eType2Entry.Enabled := False;
    cbModelEntry.Enabled := False;
    eThnRakitEntry.Enabled := False;
    cbWarnaEntry.Enabled := False;
    eJmlSumbuEntry.Enabled := False;
    enoTPTEntry.Enabled := False;
    eNoSUTEntry.Enabled := False;
    eNoIdentitasEntry.Enabled := False;
    eNamaPemilikEntry.Enabled := False;
    eAlamatPemilikEntry.Enabled := False;
    eKdPOSEntry.Enabled := False;
    ePonselEntry.Enabled := False;
    ePekerjaanEntry.Enabled := False;
    cbWilayahEntry.Enabled := False;
    cbJnsDaftaranEntry.Enabled := False;
    eNoFakturEntry.Enabled := False;
    dtTglFakturEntry.Enabled := False;
    eNoPabeanEntry.Enabled := False;
    dtTglPabeanEntry.Enabled := False;
    ePelabuhanEntry.Enabled := False;
    eNoPIBEntry.Enabled := False;
    dtTglPIBEntry.Enabled := False;
    cbCaraImporEntry.Enabled := False;
    eNamaImportirEntry.Enabled := False;
    eKetLainEntry.Enabled := False;
    cbPemohonEntry.Enabled := False;
    eNoBPKBPertama.Enabled := False;
    dtTglPertama.Enabled := False;
    eNRegBPKBPertama.Enabled := False;
    cbSbbTdkBerlaku.Enabled := False;
    eTempatKeluarPertama.Enabled := False;
    eNamaPemilikPertama.Enabled := False;
    eAlamatPertama.Enabled := False;
    eResiPembayaran.Enabled := False;
    eNopolAwal.Enabled := False;
    eNopolTengah.Enabled := False;
    eNopolAkhir.Enabled := False;
    cxTabSheet6.TabVisible := False;
    ePropinsi.Enabled := False;
    eKabupaten.Enabled := False;
    eKecamatan.Enabled := False;
    eKelurahan.Enabled := False;
    // componen setting null
    eNoBPKBEntry.Text := '';
    eDikeluarkanEntry.Text := vKota;
    eNoRangkaEntry.Text := '';
    cbMerkEntry.ItemIndex := -1;
    cbJenisEntry.ItemIndex := -1;
    eThnBuatEntry.Text := '';
    eSilinderEntry.Text := '';
    eJmlRodaEntry.Text := '';
    cbBahanBakarEntry.ItemIndex := -1;
    cbPeruntukanEntry.ItemIndex := -1;
    cbWarnaTNKBEntry.ItemIndex := -1;
    eNRegBPKBEntry.Text := '';
    dtTglEntry.Date := TTglSrvSkr;
    eNoMesinEntry.Text := '';
    eTypeEntry.Text := '';
    eType2Entry.Text := '';
    cbModelEntry.ItemIndex := -1;
    eThnRakitEntry.Text := '';
    cbWarnaEntry.ItemIndex := -1;
    eJmlSumbuEntry.Text := '';
    enoTPTEntry.Text := '';
    eNoSUTEntry.Text := '';
    eNoIdentitasEntry.Text := '';
    eNamaPemilikEntry.Text := '';
    eAlamatPemilikEntry.Text := '';
    eKdPOSEntry.Text := '';
    ePonselEntry.Text := '';
    ePekerjaanEntry.Text := '';
    cbWilayahEntry.ItemIndex := -1;
    cbJnsDaftaranEntry.ItemIndex := -1;
    eNoFakturEntry.Text := '';
    dtTglFakturEntry.Text := '';
    eNoPabeanEntry.Text := '';
    dtTglPabeanEntry.Text := '';
    ePelabuhanEntry.Text := '';
    eNoPIBEntry.Text := '';
    dtTglPIBEntry.Text := '';
    cbCaraImporEntry.ItemIndex := -1;
    eNamaImportirEntry.Text := '';
    eKetLainEntry.Text := 'FAKTUR FORM A TGL :';
    cbPemohonEntry.ItemIndex := -1;
    eNoBPKBPertama.Text := '';
    dtTglPertama.Text := '';
    eNRegBPKBPertama.Text := '';
    cbSbbTdkBerlaku.ItemIndex := -1;
    eTempatKeluarPertama.Text := '';
    eNamaPemilikPertama.Text := '';
    eAlamatPertama.Text := '';
    eResiPembayaran.Text := '';
    eNopolAwal.Text := '';
    eNopolTengah.Text := '';
    eNopolAkhir.Text := '';
    ePropinsi.Text := '';
    eKabupaten.Text := '';
    eKecamatan.Text := '';
    eKelurahan.Text := '';
    //cbLokasiSTNK.ItemIndex := -1;
    //dtTglSTNK.Text := '';
    eNoRekom.Text := '';
    rbNoBPKB.Enabled := True;
    rbNRegBPKB.Enabled := False;
    rbBerkasBarcode.Enabled := False;
    eNoBPKB.Enabled := True;
    eNoRegBPKB.Enabled := False;
    eNoBarcode.Enabled := False;
    bCari.Enabled := True;
    //bRequestNopol.Enabled := False;
    bSimpanEntry.Enabled := False;
    bBaruEntry.Enabled := False;
    cxPageControl2.ActivePageIndex := 0;
    lStatusNOPOL.Caption := 'BLM TERPAKAI';
    eNoBPKB.Text := isNoBPKB;
    fWait.Close;
    Application.ProcessMessages;
  end
  else
  begin
    isEdit := '0';
    vBPKB_ID := '';
    vHIST_ID := '';
    cbSemua.Checked := False;
    if vLevelPetugas='ADMINISTRATOR' then
      cbSemua.Enabled := True
    else
      cbSemua.Enabled := False;
    if vNOPOLFromSTNK = '1' then
    begin
      lStatusNOPOL.Caption := 'BLM TERPAKAI';
      cbFromSTNK.Checked := True;
      //bRequestNopol.Enabled := False;
    end
    else if vNOPOLFromSTNK = '0' then
    begin
      lStatusNOPOL.Caption := '';
      cbFromSTNK.Checked := False;
      //bRequestNopol.Enabled := True;
    end;
    cxPageControl1.ActivePageIndex := 0;
    vISNopolLama := '0';
    vBPKB_ID_Pertama := '';
    vISNOPOL := False;
    tBerkasID := '';
    eNoBPKB.Text := '';
    eNoRegBPKB.Text := '';
    eNoBarcode.Text := '';
    rbNoBPKB.Checked := False;
    rbNRegBPKB.Checked := False;
    rbBerkasBarcode.Checked := False;
    // componen disable
    eNoBPKBEntry.Enabled := False;
    eDikeluarkanEntry.Enabled := False;
    eNoRangkaEntry.Enabled := False;
    cbMerkEntry.Enabled := False;
    cbJenisEntry.Enabled := False;
    eThnBuatEntry.Enabled := False;
    eSilinderEntry.Enabled := False;
    eJmlRodaEntry.Enabled := False;
    cbBahanBakarEntry.Enabled := False;
    cbPeruntukanEntry.Enabled := False;
    cbWarnaTNKBEntry.Enabled := False;
    eNRegBPKBEntry.Enabled := False;
    dtTglEntry.Enabled := False;
    eNoMesinEntry.Enabled := False;
    eTypeEntry.Enabled := False;
    eType2Entry.Enabled := False;
    cbModelEntry.Enabled := False;
    eThnRakitEntry.Enabled := False;
    cbWarnaEntry.Enabled := False;
    eJmlSumbuEntry.Enabled := False;
    enoTPTEntry.Enabled := False;
    eNoSUTEntry.Enabled := False;
    eNoIdentitasEntry.Enabled := False;
    eNamaPemilikEntry.Enabled := False;
    eAlamatPemilikEntry.Enabled := False;
    eKdPOSEntry.Enabled := False;
    ePonselEntry.Enabled := False;
    ePekerjaanEntry.Enabled := False;
    cbWilayahEntry.Enabled := False;
    cbJnsDaftaranEntry.Enabled := False;
    eNoFakturEntry.Enabled := False;
    dtTglFakturEntry.Enabled := False;
    eNoPabeanEntry.Enabled := False;
    dtTglPabeanEntry.Enabled := False;
    ePelabuhanEntry.Enabled := False;
    eNoPIBEntry.Enabled := False;
    dtTglPIBEntry.Enabled := False;
    cbCaraImporEntry.Enabled := False;
    eNamaImportirEntry.Enabled := False;
    eKetLainEntry.Enabled := False;
    cbPemohonEntry.Enabled := False;
    eNoBPKBPertama.Enabled := False;
    dtTglPertama.Enabled := False;
    eNRegBPKBPertama.Enabled := False;
    cbSbbTdkBerlaku.Enabled := False;
    eTempatKeluarPertama.Enabled := False;
    eNamaPemilikPertama.Enabled := False;
    eAlamatPertama.Enabled := False;
    eResiPembayaran.Enabled := False;
    eNopolAwal.Enabled := False;
    eNopolTengah.Enabled := False;
    eNopolAkhir.Enabled := False;
    cxTabSheet6.TabVisible := False;
    ePropinsi.Enabled := False;
    eKabupaten.Enabled := False;
    eKecamatan.Enabled := False;
    eKelurahan.Enabled := False;
    // componen setting null
    eNoBPKBEntry.Text := '';
    eDikeluarkanEntry.Text := vKota;
    eNoRangkaEntry.Text := '';
    cbMerkEntry.ItemIndex := -1;
    cbJenisEntry.ItemIndex := -1;
    eThnBuatEntry.Text := '';
    eSilinderEntry.Text := '';
    eJmlRodaEntry.Text := '';
    cbBahanBakarEntry.ItemIndex := -1;
    cbPeruntukanEntry.ItemIndex := -1;
    cbWarnaTNKBEntry.ItemIndex := -1;
    eNRegBPKBEntry.Text := '';
    dtTglEntry.Date := TTglSrvSkr;
    eNoMesinEntry.Text := '';
    eTypeEntry.Text := '';
    eType2Entry.Text := '';
    cbModelEntry.ItemIndex := -1;
    eThnRakitEntry.Text := '';
    cbWarnaEntry.ItemIndex := -1;
    eJmlSumbuEntry.Text := '';
    enoTPTEntry.Text := '';
    eNoSUTEntry.Text := '';
    eNoIdentitasEntry.Text := '';
    eNamaPemilikEntry.Text := '';
    eAlamatPemilikEntry.Text := '';
    eKdPOSEntry.Text := '';
    ePonselEntry.Text := '';
    ePekerjaanEntry.Text := '';
    cbWilayahEntry.ItemIndex := -1;
    cbJnsDaftaranEntry.ItemIndex := -1;
    eNoFakturEntry.Text := '';
    dtTglFakturEntry.Text := '';
    eNoPabeanEntry.Text := '';
    dtTglPabeanEntry.Text := '';
    ePelabuhanEntry.Text := '';
    eNoPIBEntry.Text := '';
    dtTglPIBEntry.Text := '';
    cbCaraImporEntry.ItemIndex := -1;
    eNamaImportirEntry.Text := '';
    eKetLainEntry.Text := 'FAKTUR FORM A TGL :';
    cbPemohonEntry.ItemIndex := -1;
    eNoBPKBPertama.Text := '';
    dtTglPertama.Text := '';
    eNRegBPKBPertama.Text := '';
    cbSbbTdkBerlaku.ItemIndex := -1;
    eTempatKeluarPertama.Text := '';
    eNamaPemilikPertama.Text := '';
    eAlamatPertama.Text := '';
    eResiPembayaran.Text := '';
    eNopolAwal.Text := '';
    eNopolTengah.Text := '';
    eNopolAkhir.Text := '';
    ePropinsi.Text := '';
    eKabupaten.Text := '';
    eKecamatan.Text := '';
    eKelurahan.Text := '';
    //cbLokasiSTNK.ItemIndex := -1;
    //dtTglSTNK.Text := '';
    eNoRekom.Text := '';
    rbNoBPKB.Enabled := True;
    rbNRegBPKB.Enabled := True;
    rbBerkasBarcode.Enabled := True;
    eNoBPKB.Enabled := True;
    eNoRegBPKB.Enabled := True;
    eNoBarcode.Enabled := True;
    bCari.Enabled := True;
    //bRequestNopol.Enabled := False;
    bSimpanEntry.Enabled := False;
    bBaruEntry.Enabled := False;
    cxPageControl2.ActivePageIndex := 0;
    if isKeyBarcode = '0' then
    begin
       rbBerkasBarcode.Checked := True;
       eNoBarcode.SetFocus;
    end
    else
    begin
       rbNoBPKB.Checked := True;
       eNoBPKB.SetFocus;
    end;
    cbFromSTNK.Checked := True;
    lStatusNOPOL.Caption := 'BLM TERPAKAI';
    //cbLokasiSTNK.Text := '';
    //dtTglSTNK.Text := '';
    //bRequestNopol.Enabled := True;
    Application.ProcessMessages;
  end;
end;


procedure TfRegistrasi.FormShow(Sender: TObject);
begin
  dtTgl.Date := TTglSrvSkr;
  dtTglRegister.Date := TTglSrvSkr;
  //dtTglSTNK.Text := '';
  fWait.cxProgressBar1.Properties.Min := 0;
  fWait.cxProgressBar1.Properties.Max := 16;
  fWait.Show;
  fWait.Label1.Caption := 'Refresh Data Merk..';
  fWait.cxProgressBar1.Position := 1;
  Application.ProcessMessages;
  RefreshCbMerk;
  fWait.Show;
  fWait.Label1.Caption := 'Refresh Data Jenis Kendaraan..';
  fWait.cxProgressBar1.Position := 2;
  Application.ProcessMessages;
  RefreshCbJenis;
  fWait.Show;
  fWait.Label1.Caption := 'Refresh Data Model Kendaraan..';
  fWait.cxProgressBar1.Position := 3;
  Application.ProcessMessages;
  RefreshCbJenisModel;
  fWait.Show;
  fWait.Label1.Caption := 'Refresh Data Bahan Bakar..';
  fWait.cxProgressBar1.Position := 4;
  Application.ProcessMessages;
  RefreshCbBahanBakar;
  fWait.Show;
  fWait.Label1.Caption := 'Refresh Data Peruntukan..';
  fWait.cxProgressBar1.Position := 5;
  Application.ProcessMessages;
  RefreshCbPeruntukan;
  fWait.Show;
  fWait.Label1.Caption := 'Refresh Data Warna Kartu Induk..';
  fWait.cxProgressBar1.Position := 6;
  Application.ProcessMessages;
  RefreshCbWarnaKartu;
  fWait.Show;
  fWait.Label1.Caption := 'Refresh Data Warna TNKB..';
  fWait.cxProgressBar1.Position := 7;
  Application.ProcessMessages;
  RefreshCbWarnaTNKB;
  fWait.Show;
  fWait.Label1.Caption := 'Refresh Data Model..';
  fWait.cxProgressBar1.Position := 8;
  Application.ProcessMessages;
  RefreshCbModel;
  fWait.Show;
  fWait.Label1.Caption := 'Refresh Data Warna..';
  fWait.cxProgressBar1.Position := 9;
  Application.ProcessMessages;
  RefreshCbWarna;
  fWait.Show;
  fWait.Label1.Caption := 'Refresh Data Wilayah..';
  fWait.cxProgressBar1.Position := 10;
  Application.ProcessMessages;
  RefreshCbWilayah;
  fWait.Show;
  fWait.Label1.Caption := 'Refresh Data Jenis Daftaran..';
  fWait.cxProgressBar1.Position := 11;
  Application.ProcessMessages;
  RefreshCbJenisDaftar;
  fWait.Show;
  fWait.Label1.Caption := 'Refresh Data Cara Import..';
  fWait.cxProgressBar1.Position := 12;
  Application.ProcessMessages;
  RefreshCbCaraImpor;
  fWait.Show;
  fWait.Label1.Caption := 'Refresh Data Pemohon..';
  fWait.cxProgressBar1.Position := 13;
  Application.ProcessMessages;
  RefreshCbPemohon;
  fWait.Show;
  fWait.Label1.Caption := 'Refresh Data Lokasi STNK..';
  fWait.cxProgressBar1.Position := 14;
  Application.ProcessMessages;
  RefreshCbLokasiSTNK;
  fWait.Show;
  fWait.Label1.Caption := 'Refresh Data Pekerjaan..';
  fWait.cxProgressBar1.Position := 15;
  Application.ProcessMessages;
  RefreshCbPekerjaan;
  Application.ProcessMessages;
  fWait.cxProgressBar1.Position := 16;
  Application.ProcessMessages;
  TampilAwal;
end;

procedure TfRegistrasi.RefreshCbMerk;
begin
  QMerk1.Close;
  QMerk1.SQL.Text := 'select to_char(merk_id) as merk_id,merk_nama_r as merk_nama from m_merk  where rowid in (select min(rowid) from m_merk group by merk_nama_r)  order by merk_nama';
  QMerk1.Open;

  QMerk2.Close;
  QMerk2.SQL.Text := 'select to_char(merk_id) as merk_id,merk_nama_r as merk_nama from m_merk  where rowid in (select min(rowid) from m_merk group by merk_nama_r)  order by merk_nama';
  QMerk2.Open;
end;

procedure TfRegistrasi.RefreshCbJenis;
begin
  QJenis1.Close;
  QJenis1.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenis1.Open;

  QJenis2.Close;
  QJenis2.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenis2.Open;
end;

procedure TfRegistrasi.RefreshCbBahanBakar;
begin
  QBB1.Close;
  QBB1.SQL.Text := 'select to_char(bb_id) as bb_id,bb_nama from m_bahanbakar order by bb_nama';
  QBB1.Open;

  QBB2.Close;
  QBB2.SQL.Text := 'select to_char(bb_id) as bb_id,bb_nama from m_bahanbakar order by bb_nama';
  QBB2.Open;
end;

procedure TfRegistrasi.RefreshCbPeruntukan;
begin
  QPeruntukan1.Close;
  QPeruntukan1.SQL.Text := 'select to_char(prt_id) as prt_id,prt_nama from m_peruntukan order by prt_nama';
  QPeruntukan1.Open;

  QPeruntukan2.Close;
  QPeruntukan2.SQL.Text := 'select to_char(prt_id) as prt_id,prt_nama from m_peruntukan order by prt_nama';
  QPeruntukan2.Open;
end;

procedure TfRegistrasi.RefreshCbWarnaTNKB;
begin
  QWarnaTNKB1.Close;
  QWarnaTNKB1.SQL.Text := 'select to_char(warnatnkb_id) as warnatnkb_id,warnatnkb from m_warnatnkb order by warnatnkb';
  QWarnaTNKB1.Open;

  QWarnaTNKB2.Close;
  QWarnaTNKB2.SQL.Text := 'select to_char(warnatnkb_id) as warnatnkb_id,warnatnkb from m_warnatnkb order by warnatnkb';
  QWarnaTNKB2.Open;
end;

procedure TfRegistrasi.RefreshCbModel;
begin
  QModel1.Close;
  QModel1.SQL.Text := 'select to_char(model_id) as model_id,model_nama,jenis_id from m_model order by model_nama';
  QModel1.Open;

  QModel2.Close;
  QModel2.SQL.Text := 'select to_char(model_id) as model_id,model_nama,jenis_id from m_model order by model_nama';
  QModel2.Open;
end;

procedure TfRegistrasi.RefreshCbWarna;
begin
  QWarna1.Close;
  QWarna1.SQL.Text := 'select to_char(warna_id) as warna_id,warna_nama from m_warna order by warna_nama';
  QWarna1.Open;

  QWarna2.Close;
  QWarna2.SQL.Text := 'select to_char(warna_id) as warna_id,warna_nama from m_warna order by warna_nama';
  QWarna2.Open;
end;

procedure TfRegistrasi.RefreshCbWilayah;
begin
  QWil1.Close;
  QWil1.SQL.Text := 'select to_char(wilayah_id) as wilayah_kode,wilayah_nama from m_wilayah order by wilayah_nama';
  QWil1.Open;

  QWil2.Close;
  QWil2.SQL.Text := 'select to_char(wilayah_id) as wilayah_kode,wilayah_nama from m_wilayah order by wilayah_nama';
  QWil2.Open;
end;

procedure TfRegistrasi.RefreshCbJenisDaftar;
begin
  QJenisDaftar1.Close;
  QJenisDaftar1.SQL.Text := 'select to_char(jd_id) as jd_id,jd_nama from m_jenis_daftaran order by jd_nama';
  QJenisDaftar1.Open;

  QJenisDaftar2.Close;
  QJenisDaftar2.SQL.Text := 'select to_char(jd_id) as jd_id,jd_nama from m_jenis_daftaran order by jd_nama';
  QJenisDaftar2.Open;
end;

procedure TfRegistrasi.RefreshCbCaraImpor;
begin
  QCaraImport1.Close;
  QCaraImport1.SQL.Text := 'select to_char(IMPMTHD_ID) as IMPMTHD_ID,IMPMTHD_NAME from m_cara_impor order by IMPMTHD_NAME';
  QCaraImport1.Open;

  QCaraImport2.Close;
  QCaraImport2.SQL.Text := 'select to_char(IMPMTHD_ID) as IMPMTHD_ID,IMPMTHD_NAME from m_cara_impor order by IMPMTHD_NAME';
  QCaraImport2.Open;
end;

procedure TfRegistrasi.RefreshCbPemohon;
begin
  QPemohon1.Close;
  QPemohon1.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  QPemohon1.Open;

  QPemohon2.Close;
  QPemohon2.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  QPemohon2.Open;
end;

procedure TfRegistrasi.RefreshKelurahan;
begin
  with Q2 do
  begin
    Close;
    if eCariKelurahan.Text = '' then
       //SQL.Text := 'select keluarahan,kecamatan,kabupaten,propinsi,kd_pos from M_KODE_POS order by keluarahan'
       SQL.Text := 'SELECT KEL.NO_KEL,KEC.NO_KEC,KAB.NO_KAB,PROP.NO_PROP,KEL.NAMA_KEL AS keluarahan,KEC.NAMA_KEC AS kecamatan,'+
                   'KAB.NAMA_KAB AS kabupaten,PROP.NAMA_PROP  AS propinsi, ''-'' AS KD_POS FROM M_KELURAHAN KEL'+
                   ' INNER JOIN M_KECAMATAN KEC ON KEL.NO_KEC=KEC.NO_KEC AND KEL.NO_KAB=KEC.NO_KAB AND KEL.NO_PROP=KEC.NO_PROP'+
                   ' INNER JOIN M_KABUPATEN KAB ON KEL.NO_KAB=KAB.NO_KAB AND KEL.NO_PROP=KAB.NO_PROP'+
                   ' INNER JOIN M_PROPINSI PROP ON KEL.NO_PROP=PROP.NO_PROP'+
                   ' ORDER BY KEL.NAMA_KEL'
    else
    begin
      if rbKelurahan.Checked = True then
         //SQL.Text := 'select upper(keluarahan) as keluarahan,upper(kecamatan) as kecamatan,upper(kabupaten) as kabupaten,upper(propinsi) as propinsi,kd_pos from M_KODE_POS'+
         //SQL.Text := 'select keluarahan,kecamatan,kabupaten,propinsi,kd_pos from M_KODE_POS'+
         //            ' where upper(keluarahan) like :kelurahan'// +'''%'+eCariKelurahan.Text+'%'''
         SQL.Text := 'SELECT KEL.NO_KEL,KEC.NO_KEC,KAB.NO_KAB,PROP.NO_PROP,KEL.NAMA_KEL AS keluarahan,KEC.NAMA_KEC AS kecamatan,'+
                     'KAB.NAMA_KAB AS kabupaten,PROP.NAMA_PROP  AS propinsi, ''-'' AS KD_POS FROM M_KELURAHAN KEL'+
                     ' INNER JOIN M_KECAMATAN KEC ON KEL.NO_KEC=KEC.NO_KEC AND KEL.NO_KAB=KEC.NO_KAB AND KEL.NO_PROP=KEC.NO_PROP'+
                     ' INNER JOIN M_KABUPATEN KAB ON KEL.NO_KAB=KAB.NO_KAB AND KEL.NO_PROP=KAB.NO_PROP'+
                     ' INNER JOIN M_PROPINSI PROP ON KEL.NO_PROP=PROP.NO_PROP'+
                     ' WHERE UPPER(KEL.NAMA_KEL) LIKE :KELURAHAN'
      else
         //SQL.Text := 'select upper(keluarahan) as keluarahan,upper(kecamatan) as kecamatan,upper(kabupaten) as kabupaten,upper(propinsi) as propinsi,kd_pos from M_KODE_POS'+
         //SQL.Text := 'select keluarahan,kecamatan,kabupaten,propinsi,kd_pos from M_KODE_POS'+
         //            ' where upper(kecamatan) like :kec'; //+'''%'+eCariKelurahan.Text+'%''';
         SQL.Text := 'SELECT KEL.NO_KEL,KEC.NO_KEC,KAB.NO_KAB,PROP.NO_PROP,KEL.NAMA_KEL AS keluarahan,KEC.NAMA_KEC AS kecamatan,'+
                     'KAB.NAMA_KAB AS kabupaten,PROP.NAMA_PROP  AS propinsi, ''-'' AS KD_POS FROM M_KELURAHAN KEL'+
                     ' INNER JOIN M_KECAMATAN KEC ON KEL.NO_KEC=KEC.NO_KEC AND KEL.NO_KAB=KEC.NO_KAB AND KEL.NO_PROP=KEC.NO_PROP'+
                     ' INNER JOIN M_KABUPATEN KAB ON KEL.NO_KAB=KAB.NO_KAB AND KEL.NO_PROP=KAB.NO_PROP'+
                     ' INNER JOIN M_PROPINSI PROP ON KEL.NO_PROP=PROP.NO_PROP'+
                     ' WHERE UPPER(KEC.NAMA_KEC) LIKE :KECAMATAN';
      Params[0].AsString := '%'+eCariKelurahan.Text+'%';
    end;
    Open;
  end;
end;

procedure TfRegistrasi.eNoBPKBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     bCari.Click;
end;

procedure TfRegistrasi.eNoRegBPKBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     bCari.Click;
end;

procedure TfRegistrasi.eNoBarcodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     bCari.Click;
end;

procedure TfRegistrasi.bCariClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
  isGet,Cari : String;
begin
  if isFormEditVerifikasi = '1' then
  begin
    GetDataForVerifikasi(eNoBPKB.Text);
  end
  else
  begin
    fWait.Show;
    fWait.cxProgressBar1.Visible := True;
    fWait.Label1.Caption := 'Tunggu Sebentar ...';
    Application.ProcessMessages;

    isEdit := '0';
    vBPKB_ID := '';
    vHIST_ID := '';
    vISNopolLama := '0';
    vBPKB_ID_Pertama := '';
    vISNOPOL := False;
    tBerkasID := '';

    if rbNoBPKB.Checked = True then
    begin
       isGet := '0';
       Cari := Copy(eNoBPKB.Text,1,10)+' '+vKdWilayahBPKB;  //eNoBPKB.Text;
    end
    else if rbNRegBPKB.Checked = True then
    begin
       isGet := '1';
       Cari := eNoRegBPKB.Text;
    end
    else if rbBerkasBarcode.Checked = True then
    begin
       isGet := '2';
       Cari := eNoBarcode.Text+'%'; //eNoBarcode.Text+'/'+vAkhiranNRegBPKB;
    end;

    with DM.Q do
    begin
      Close;
      if isGet='0' then
      begin
         SQL.Text := 'SELECT COUNT(1) FROM T_BPKB_MASTER WHERE NO_BPKB=:NO';
         Params[0].AsString := Cari;
         Open;
      end
      else if isGet='1' then
      begin
         SQL.Text := 'SELECT COUNT(1) FROM T_BPKB_MASTER WHERE NREG_BPKB=:NO';
         Params[0].AsString := Cari;
         Open;
      end
      else if isGet='2' then
      begin
         SQL.Text := 'SELECT COUNT(1) FROM T_BPKB_MASTER WHERE NREG_BPKB LIKE :NO';
         Params[0].AsString := Cari;
         Open;
      end;

      if Fields[0].AsInteger > 0 then
      begin
        fWait.Close;
        Application.ProcessMessages;
        if MessageDlg('DATA SUDAH ADA DI DATABASE, APAKAH MAU DITAMPILKAN?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          // proses tampilkan data lama
          try
            //isEdit := '1';
            uniSP := TUniStoredProc.Create(Application);
            uniSP.Connection := DM.dbSrv;
            uniSP.Close;
            uniSP.StoredProcName := 'bpkb_get_data';
            try
              uniSP.Params.Clear;
              uniSP.Params.CreateParam(ftstring,'v_polda_id',ptinput).AsString := vPOLDAID;
              uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
              uniSP.Params.CreateParam(ftString,'v_is_cari',ptInput).AsString := isGet;
              uniSP.Params.CreateParam(ftString,'v_cari',ptInput).AsString := Cari;
              uniSP.Params.CreateParam(ftString,'v_bbn',ptInput).AsString := '0';
              uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
              uniSP.Active := True;

              if uniSP.RecordCount > 0 then
              begin
                cbMerkEntry.Text := '';
                cbJenisEntry.Text := '';
                cbBahanBakarEntry.Text := '';
                cbPeruntukanEntry.Text := '';
                cbModelEntry.Text := '';
                cbWarnaEntry.Text := '';
                cbWarnaTNKBEntry.Text := '';
                cbWilayahEntry.Text := '';
                cbJnsDaftaranEntry.Text := '';
                cbCaraImporEntry.Text := '';
                cbPemohonEntry.Text := '';
                cbSbbTdkBerlaku.Text := '';
                eNoBPKBEntry.Text := uniSP.FieldByName('NO_BPKB').Text;
                eNRegBPKBEntry.Text := uniSP.FieldByName('NREG_BPKB').Text;
                eDikeluarkanEntry.Text := uniSP.FieldByName('TEMPAT_KELUAR').Text;
                dtTglEntry.Date := uniSP.FieldByName('TGL_BPKB').AsDateTime;
                eNoRangkaEntry.Text := uniSP.FieldByName('NO_RANGKA').Text;
                eNoMesinEntry.Text := uniSP.FieldByName('NO_MESIN').Text;
                cbMerkEntry.Text := uniSP.FieldByName('MERK_NAMA').Text;
                eTypeEntry.Text := uniSP.FieldByName('TIPE').Text;
                eType2Entry.Text := uniSP.FieldByName('TIPE2').Text;
                cbJenisEntry.Text := uniSP.FieldByName('JENIS_NAMA').Text;
                cbModelEntry.Text := uniSP.FieldByName('MODEL_NAMA').Text;
                eThnBuatEntry.Text := uniSP.FieldByName('THN_BUAT').Text;
                eThnRakitEntry.Text := uniSP.FieldByName('THN_RAKIT').Text;
                eSilinderEntry.Text := uniSP.FieldByName('VOL_SILINDER').Text;
                cbWarnaEntry.Text := uniSP.FieldByName('WARNA_NAMA').Text;
                eJmlRodaEntry.Text := uniSP.FieldByName('JML_RODA').Text;
                eJmlSumbuEntry.Text := uniSP.FieldByName('JML_SUMBU').Text;
                cbBahanBakarEntry.Text := uniSP.FieldByName('BB_NAMA').Text;
                enoTPTEntry.Text := uniSP.FieldByName('NO_TPT').Text;
                cbPeruntukanEntry.Text := uniSP.FieldByName('PRT_NAMA').Text;
                eNoSUTEntry.Text := uniSP.FieldByName('NO_SUT').Text;
                cbWarnaTNKBEntry.Text := uniSP.FieldByName('WARNATNKB').Text;
                eNoIdentitasEntry.Text := uniSP.FieldByName('NO_IDENTITAS').Text;
                eNamaPemilikEntry.Text := uniSP.FieldByName('NAMA_PEMILIK').Text;
                eAlamatPemilikEntry.Text := uniSP.FieldByName('ALAMAT_PEMILIK').Text;
                eKdPOSEntry.Text := uniSP.FieldByName('KODE_POS').Text;
                ePonselEntry.Text := uniSP.FieldByName('NO_PONSEL').Text;
                ePekerjaanEntry.Text := uniSP.FieldByName('PEKERJAAN_PEMILIK').Text;
                cbWilayahEntry.Text := uniSP.FieldByName('WILAYAH_NAMA').Text;
                ePropinsi.Text := uniSP.FieldByName('PROP_ID').Text;
                eKabupaten.Text := uniSP.FieldByName('KAB_ID').Text;
                eKecamatan.Text := uniSP.FieldByName('KEC_ID').Text;
                eKelurahan.Text := uniSP.FieldByName('KEL_ID').Text;
                cbJnsDaftaranEntry.Text := uniSP.FieldByName('JD_NAMA').Text;
                eNoFakturEntry.Text := uniSP.FieldByName('NO_FAKTUR').Text;
                dtTglFakturEntry.Date := uniSP.FieldByName('TGL_FAKTUR').Value;
                eNoPabeanEntry.Text := uniSP.FieldByName('NO_PABEAN').Text;
                dtTglPabeanEntry.Text := uniSP.FieldByName('TGL_PABEAN').Text;
                ePelabuhanEntry.Text := uniSP.FieldByName('PELABUHAN').Text;
                eNoPIBEntry.Text := uniSP.FieldByName('NO_PIB').Text;
                dtTglPIBEntry.Text := uniSP.FieldByName('TGL_PIB').Text;
                cbCaraImporEntry.Text := uniSP.FieldByName('IMPMTHD_NAME').Text;
                eNamaImportirEntry.Text := uniSP.FieldByName('NAMA_IMPORTIR').Text;
                eKetLainEntry.Text := uniSP.FieldByName('KETR_PABEAN').Text;
                cbPemohonEntry.Text := ''; //uniSP.FieldByName('PEMOHON_NAMA').Text;
                eResiPembayaran.Text := uniSP.FieldByName('BARCODE').Text;
                lStatusNOPOL.Caption := uniSP.FieldByName('NO_POLISI').Text;
                fWait.Hide;
                Application.ProcessMessages;
                bSimpanEntry.Enabled := False;
                bBaruEntry.Enabled := True;
              end
              else
              begin
                fWait.Hide;
                MessageDlgWarning('Data Berkas Tidak ditemukan di Server!!!');
                TampilAwal;
              end;
            except on E:Exception do
            begin
              fWait.Hide;
              ErrorProgDialog('Error,..bpkb_get_data.Open%Error :'+E.Message);
              TampilAwal;
            end;
            end;
          finally
            FreeAndNil(uniSP);
          end;
        end;
      end
      else
      begin
        // proses entry baru
        try
          uniSP := TUniStoredProc.Create(Application);
          uniSP.Connection := DM.dbSrv;
          uniSP.Close;
          uniSP.StoredProcName := 'bpkb_get_registrasi';
          try
            uniSP.Params.Clear;
            uniSP.Params.CreateParam(ftString,'v_is_get',ptInput).AsString := isGet;
            uniSP.Params.CreateParam(ftstring,'v_polda_id',ptinput).AsString := vPOLDAID;
            uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
            uniSP.Params.CreateParam(ftString,'v_tgl_proses',ptInput).AsString := FormatDateTime('yyyymmdd',TTglSrvSkr);
            uniSP.Params.CreateParam(ftString,'v_cari',ptInput).AsString := Cari;
            uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
            uniSP.Active := True;
            //uniSP.Open;

            if uniSP.RecordCount > 0 then
            begin
              if uniSP.FieldByName('TGL_KELUAR').AsString = FormatDateTime('yyyymmdd',dtTgl.Date) then
              begin
                if (uniSP.FieldByName('JNS_PENERBITAN').AsString = '1') or ((uniSP.FieldByName('JNS_PENERBITAN').AsString = '2')) then
                begin
                  EnableKomponenRegister;
                  cxTabSheet6.TabVisible := False;
                  eNoBPKBEntry.Text := uniSP.FieldByName('NO_BPKB').Text;
                  eNRegBPKBEntry.Text := uniSP.FieldByName('NREG_BPKB').Text;
                  dtTglEntry.Date := dtTgl.Date;
                  eJmlRodaEntry.Text := uniSP.FieldByName('JML_RODA').Text;
                  tBerkasID := uniSP.FieldByName('BERKAS_ID').Value;
                  cbPeruntukanEntry.DoEditing;
                  cbPeruntukanEntry.EditText := 'PRIBADI';
                  cbPeruntukanEntry.PostEditValue;
                  cbWarnaTNKBEntry.DoEditing;
                  cbWarnaTNKBEntry.EditText := 'HITAM';
                  cbWarnaTNKBEntry.PostEditValue;
                  cbWilayahEntry.DoEditing;
                  cbWilayahEntry.EditText := ''; //uniSP.FieldByName('POLRES_NAMA').Value;
                  cbWilayahEntry.PostEditValue;
                  Application.ProcessMessages;
                  bSimpanEntry.Enabled := True;
                  bBaruEntry.Enabled := True;
                  eNoRangkaEntry.SetFocus;
                end
                else
                begin
                  fWait.Hide;
                  MessageDlgError('Kode Berkas Bukan untuk Proses Registrasi Kendaraan Baru (BBN1)');
                  TampilAwal;
                end;
              end
              else
              begin
                fWait.Hide;
                MessageDlgWarning('NO REGISTER TIDAK BISA DIPAKAI !'+#13+
                                  'TGL REGISTER UNTUK NO REGISTER INI SUDAH KADALUARSA!'+#13+
                                  'TERIMAKASIH');
                TampilAwal;
              end;
            end
            else
            begin
              fWait.Hide;
              MessageDlgWarning('Data Berkas Tidak ditemukan di Server!!!');
              TampilAwal;
            end;
          except on E:Exception do
          begin
            ErrorProgDialog('Error,..bpkb_get_registrasi.Open%Error :'+E.Message);
            TampilAwal;
          end;
          end;
        finally
          FreeAndNil(uniSP);
        end;
      end;
    end;
  end;
end;

procedure TfRegistrasi.EnableKomponenRegister;
begin
  cbMerkEntry.ItemIndex := -1;
  cbJenisEntry.ItemIndex := -1;
  cbBahanBakarEntry.ItemIndex := -1;
  cbPeruntukanEntry.ItemIndex := -1;
  cbModelEntry.ItemIndex := -1;
  cbWarnaEntry.ItemIndex := -1;
  cbWarnaTNKBEntry.ItemIndex := -1;
  cbWilayahEntry.ItemIndex := -1;
  cbJnsDaftaranEntry.ItemIndex := -1;
  cbCaraImporEntry.ItemIndex := -1;
  cbPemohonEntry.ItemIndex := -1;
  cbSbbTdkBerlaku.ItemIndex := -1;
  eNoBPKBEntry.Enabled := True;
  eDikeluarkanEntry.Enabled := True;
  eNoRangkaEntry.Enabled := True;
  cbMerkEntry.Enabled := True;
  cbJenisEntry.Enabled := True;
  eThnBuatEntry.Enabled := True;
  eSilinderEntry.Enabled := True;
  eJmlRodaEntry.Enabled := True;
  cbBahanBakarEntry.Enabled := True;
  cbPeruntukanEntry.Enabled := True;
  cbWarnaTNKBEntry.Enabled := True;
  eNRegBPKBEntry.Enabled := True;
  dtTglEntry.Enabled := True;
  eNoMesinEntry.Enabled := True;
  eTypeEntry.Enabled := True;
  eType2Entry.Enabled := True;
  cbModelEntry.Enabled := True;
  eThnRakitEntry.Enabled := True;
  cbWarnaEntry.Enabled := True;
  eJmlSumbuEntry.Enabled := True;
  enoTPTEntry.Enabled := True;
  eNoSUTEntry.Enabled := True;
  eNoIdentitasEntry.Enabled := True;
  eNamaPemilikEntry.Enabled := True;
  eAlamatPemilikEntry.Enabled := True;
  eKdPOSEntry.Enabled := True;
  ePonselEntry.Enabled := True;
  ePekerjaanEntry.Enabled := True;
  cbWilayahEntry.Enabled := True;
  cbJnsDaftaranEntry.Enabled := True;
  eNoFakturEntry.Enabled := True;
  dtTglFakturEntry.Enabled := True;
  eNoPabeanEntry.Enabled := True;
  dtTglPabeanEntry.Enabled := True;
  ePelabuhanEntry.Enabled := True;
  eNoPIBEntry.Enabled := True;
  dtTglPIBEntry.Enabled := True;
  cbCaraImporEntry.Enabled := True;
  eNamaImportirEntry.Enabled := True;
  eKetLainEntry.Enabled := True;
  cbPemohonEntry.Enabled := True;
  eNoBPKBPertama.Enabled := True;
  dtTglPertama.Enabled := True;
  eNRegBPKBPertama.Enabled := True;
  cbSbbTdkBerlaku.Enabled := True;
  eTempatKeluarPertama.Enabled := True;
  eNamaPemilikPertama.Enabled := True;
  eAlamatPertama.Enabled := True;
  eResiPembayaran.Enabled := True;
  eNopolAwal.Enabled := True;
  eNopolTengah.Enabled := True;
  eNopolAkhir.Enabled := True;
  eKelurahan.Enabled := True;
  eKecamatan.Enabled := True;
  eKabupaten.Enabled := True;
  ePropinsi.Enabled := True;
  //bRequestNopol.Enabled := True;
end;

procedure TfRegistrasi.CariReferensi(vNoRangka: String);
var
  uniSP : TUniStoredProc;
begin
  try
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'BPKB_GET_PELENGKAP2';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_norangka',ptInput).AsString := vNoRangka;
      uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      uniSP.Active := True;

      if uniSP.RecordCount > 0 then
      begin
        if uniSP.FieldByName('MERK').Value=Null then
        begin
          if cbMerkEntry.Text <> '' then
             if IsStrANumber2(cbMerkEntry.EditValue) <> True then
                cbMerkEntry.Text := '';
        end
        else
        begin
          cbMerkEntry.ItemIndex := -1;
          cbMerkEntry.DoEditing;
          cbMerkEntry.EditText := uniSP.FieldByName('MERK').Text;
          cbMerkEntry.PostEditValue;
        end;

        eTypeEntry.Text := uniSP.FieldByName('TIPE').Text;
        eType2Entry.Text := '';

        if uniSP.FieldByName('JENIS').Value=Null then
        begin
          if cbJenisEntry.Text <> '' then
             if IsStrANumber2(cbJenisEntry.EditValue) <> True then
                cbJenisEntry.Text := '';
        end
        else
        begin
          cbJenisEntry.ItemIndex := -1;
          cbJenisEntry.DoEditing;
          cbJenisEntry.EditText := uniSP.FieldByName('JENIS').Text;
          cbJenisEntry.PostEditValue;
        end;

        if uniSP.FieldByName('MODEL').Value = Null then
        begin
          if cbModelEntry.Text <> '' then
             if IsStrANumber2(cbModelEntry.EditValue) <> True then
                cbModelEntry.Text := '';
        end
        else
        begin
          cbModelEntry.ItemIndex := -1;
          cbModelEntry.DoEditing;
          cbModelEntry.EditText := uniSP.FieldByName('MODEL').Text;
          cbModelEntry.PostEditValue;
        end;

        if uniSP.FieldByName('JML_RODA').Value = Null then
        begin
          if eJmlRodaEntry.Text = '' then
             eJmlRodaEntry.Text := '';
        end
        else
        begin
          eJmlRodaEntry.Text := uniSP.FieldByName('JML_RODA').Text;
        end;

        if uniSP.FieldByName('JML_SUMBU').Value = Null then
        begin
          if eJmlSumbuEntry.Text = '' then
             eJmlSumbuEntry.Text := '';
        end
        else
        begin
          eJmlSumbuEntry.Text := uniSP.FieldByName('JML_SUMBU').Text;
        end;

        if uniSP.FieldByName('SILINDER').Value = Null then
        begin
          if eSilinderEntry.Text = '' then
             eSilinderEntry.Text := '';
        end
        else
        begin
          eSilinderEntry.Text := uniSP.FieldByName('SILINDER').Text;
        end;

        if uniSP.FieldByName('BHN_BAKAR').Value = Null then
        begin
          if IsStrANumber2(cbBahanBakarEntry.EditValue) <> True then
             cbBahanBakarEntry.Text := '';
        end
        else
        begin
          cbBahanBakarEntry.ItemIndex := -1;
          cbBahanBakarEntry.DoEditing;
          cbBahanBakarEntry.EditText := uniSP.FieldByName('BHN_BAKAR').Text;
          cbBahanBakarEntry.PostEditValue;
        end;

        if uniSP.FieldByName('JNS_DAFTARAN').Value = Null then
        begin
          if IsStrANumber2(cbJnsDaftaranEntry.EditValue) <> True then
             cbJnsDaftaranEntry.Text := '';
        end
        else
        begin
          cbJnsDaftaranEntry.ItemIndex := -1;
          cbJnsDaftaranEntry.DoEditing;
          cbJnsDaftaranEntry.EditText := uniSP.FieldByName('JNS_DAFTARAN').Text;
          cbJnsDaftaranEntry.PostEditValue;
        end;

        if uniSP.FieldByName('CARA_IMPOR').Value = Null then
        begin
          cbCaraImporEntry.EditValue := '';
          if IsStrANumber2(cbCaraImporEntry.EditValue) <> True then
             cbCaraImporEntry.Text := '';
        end
        else
        begin
          cbCaraImporEntry.ItemIndex := -1;
          cbCaraImporEntry.DoEditing;
          cbCaraImporEntry.EditText := uniSP.FieldByName('CARA_IMPOR').Text;
          cbCaraImporEntry.PostEditValue;
        end;

        eNamaImportirEntry.Text := uniSP.FieldByName('NAMA_IMPORTIR').Text;
        eKetLainEntry.Text := uniSP.FieldByName('KETR_PABEAN').Text;
        eThnBuatEntry.Text := uniSP.FieldByName('THN_BUAT').Text;
        eThnRakitEntry.Text := uniSP.FieldByName('THN_BUAT').Text;
        fWait.Hide;
        Application.ProcessMessages;
      end
      else
      begin
        cbMerkEntry.Text := '';
        eTypeEntry.Text := '';
        eType2Entry.Text := '';
        cbJenisEntry.Text := '';
        cbModelEntry.Text := '';
        eJmlRodaEntry.Text := '';
        eJmlSumbuEntry.Text := '';
        eSilinderEntry.Text := '';
        cbBahanBakarEntry.Text := '';
        cbJnsDaftaranEntry.Text := '';
        cbCaraImporEntry.Text := '';
        eNamaImportirEntry.Text := '';
        eKetLainEntry.Text := '';
        eThnBuatEntry.Text := '';
        eThnRakitEntry.Text := '';
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..BPKB_GET_PELENGKAP2.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfRegistrasi.eNoRangkaEntryPropertiesChange(Sender: TObject);
begin
  if Cb2D.Checked = False then
  begin
    if Length(eNoRangkaEntry.Text)=10 then
       CariReferensi(eNoRangkaEntry.Text)
    else if (Length(eNoRangkaEntry.Text)=17) and (isEdit='0')  then
       if TOnLineCF='1' then
          CariDataFakturCF(eNoRangkaEntry.Text)
       else
          CariDataFaktur('1',eNoRangkaEntry.Text);
  end;
end;

procedure TfRegistrasi.CariDataFaktur(vJenis, vCari: String);
var
  uniSP : TUniStoredProc;
  vBarcode : String;
begin
  vBarcode := CekNoRangkaPendaftaran(vCari);
  if vBarcode <> '' then
  begin
    try
      fWait.Show;
      Application.ProcessMessages;
      uniSP := TUniStoredProc.Create(Application);
      uniSP.Connection := DM.dbSrv;
      uniSP.Close;
      uniSP.StoredProcName := 'bpkb_get_data_faktur2';
      try
        uniSP.Params.Clear;
        uniSP.Params.CreateParam(ftString,'v_jenis',ptInput).AsString := vJenis;
        uniSP.Params.CreateParam(ftString,'v_cari',ptInput).AsString := vCari;
        uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
        uniSP.Active := True;

        if uniSP.RecordCount > 0 then
        begin
          eNoMesinEntry.Text := uniSP.FieldByName('NO_MESIN').Text;

          if uniSP.FieldByName('MEREK').Value=Null then
          begin
            if cbMerkEntry.Text <> '' then
               if IsStrANumber2(cbMerkEntry.EditValue) <> True then
                  cbMerkEntry.Text := '';
          end
          else
          begin
            cbMerkEntry.ItemIndex := -1;
            cbMerkEntry.DoEditing;
            cbMerkEntry.EditText := CekMerk(uniSP.FieldByName('MEREK').Text); //uniSP.FieldByName('MEREK').Text;
            cbMerkEntry.PostEditValue;
          end;
          eTypeEntry.Text := uniSP.FieldByName('TIPE').Text;
          eType2Entry.Text := '';

          if uniSP.FieldByName('JENIS').Value=Null then
          begin
            if cbJenisEntry.Text <> '' then
               if IsStrANumber2(cbJenisEntry.EditValue) <> True then
                  cbJenisEntry.Text := '';
          end
          else
          begin
            cbJenisEntry.ItemIndex := -1;
            cbJenisEntry.DoEditing;
            cbJenisEntry.EditText := uniSP.FieldByName('JENIS').Text;
            cbJenisEntry.PostEditValue;
          end;

          if uniSP.FieldByName('MODEL').Value = Null then
          begin
            if cbModelEntry.Text <> '' then
               if IsStrANumber2(cbModelEntry.EditValue) <> True then
                  cbModelEntry.Text := '';
          end
          else
          begin
            cbModelEntry.ItemIndex := -1;
            cbModelEntry.DoEditing;
            cbModelEntry.EditText := uniSP.FieldByName('MODEL').Text;
            cbModelEntry.PostEditValue;
          end;

          if uniSP.FieldByName('THN_PEMBUATAN').Value = Null then
          begin
            if eThnBuatEntry.Text = '' then
               eThnBuatEntry.Text := '';
          end
          else
          begin
            eThnBuatEntry.Text := uniSP.FieldByName('THN_PEMBUATAN').Text;
          end;

          if uniSP.FieldByName('THN_PERAKITAN').Value = Null then
          begin
            if eThnRakitEntry.Text = '' then
               eThnRakitEntry.Text := '';
          end
          else
          begin
            eThnRakitEntry.Text := uniSP.FieldByName('THN_PERAKITAN').Text;
          end;

          if uniSP.FieldByName('CC').Value = Null then
          begin
            if eSilinderEntry.Text = '' then
               eSilinderEntry.Text := '';
          end
          else
          begin
            eSilinderEntry.Text := uniSP.FieldByName('CC').Text;
          end;

          cbWarnaEntry.ItemIndex := -1;
          cbWarnaEntry.DoEditing;
          cbWarnaEntry.EditText := uniSP.FieldByName('WARNA').Text;
          cbWarnaEntry.PostEditValue;

          if uniSP.FieldByName('JML_RODA').Value = Null then
          begin
            if eJmlRodaEntry.Text = '' then
               eJmlRodaEntry.Text := '';
          end
          else
          begin
            eJmlRodaEntry.Text := uniSP.FieldByName('JML_RODA').Text;
          end;

          if uniSP.FieldByName('JML_SUMBU').Value = Null then
          begin
            if eJmlSumbuEntry.Text = '' then
               eJmlSumbuEntry.Text := '';
          end
          else
          begin
            eJmlSumbuEntry.Text := uniSP.FieldByName('JML_SUMBU').Text;
          end;

          if uniSP.FieldByName('BAHAN_BAKAR').Value = Null then
          begin
            if IsStrANumber2(cbBahanBakarEntry.EditValue) <> True then
               cbBahanBakarEntry.Text := '';
          end
          else
          begin
            cbBahanBakarEntry.ItemIndex := -1;
            cbBahanBakarEntry.DoEditing;
            cbBahanBakarEntry.EditText := uniSP.FieldByName('BAHAN_BAKAR').Text;
            cbBahanBakarEntry.PostEditValue;
          end;

          enoTPTEntry.Text := uniSP.FieldByName('NO_TPT').Text;
          eNoSUTEntry.Text := uniSP.FieldByName('NO_SUT').Text;
          eNoIdentitasEntry.Text := uniSP.FieldByName('KTP').Text;
          eNamaPemilikEntry.Text := uniSP.FieldByName('NAMA_PEMILIK').Text;
          eAlamatPemilikEntry.Text := uniSP.FieldByName('ALAMAT_PEMILIK').Text;
          ePropinsi.Text := uniSP.FieldByName('PROPINSI').Text;
          eKabupaten.Text := uniSP.FieldByName('KOTA').Text;
          eKecamatan.Text := uniSP.FieldByName('KECAMATAN').Text;
          eKelurahan.Text := uniSP.FieldByName('KELURAHAN').Text;
          eKdPOSEntry.Text := uniSP.FieldByName('KODE_POS').Text;
          ePonselEntry.Text := uniSP.FieldByName('PHONE').Text;
          ePekerjaanEntry.Text := uniSP.FieldByName('PEKERJAAN').Text;
          cbWilayahEntry.Text := '';
          cbJnsDaftaranEntry.Text := '';
          eNoFakturEntry.Text := uniSP.FieldByName('NO_FAKTUR').Text;
          if uniSP.FieldByName('TGL_FAKTUR').Value = Null then
             dtTglFakturEntry.Text := ''
          else
             dtTglFakturEntry.Date := uniSP.FieldByName('TGL_FAKTUR').Value;
          eNoPabeanEntry.Text := '';
          dtTglPabeanEntry.Text := '';
          ePelabuhanEntry.Text := '';
          eNoPIBEntry.Text := uniSP.FieldByName('NO_PIB').Text;
          dtTglPIBEntry.Text := '';
          cbCaraImporEntry.Text := '';
          eNamaImportirEntry.Text := CekATPMID(uniSP.FieldByName('MEREK').Text);
          eKetLainEntry.Text := '';
          CariDataPemohon(eNoRangkaEntry.Text);
          cbPemohonEntry.Text := ''; //uniSP.FieldByName('PEMOHON_NAMA').Value;
          eResiPembayaran.Text := vBarcode;
          eNopolAwal.Text := '';
          eNopolTengah.Text := '';
          eNopolAkhir.Text := '';
          eNoBPKBPertama.Text := '';
          dtTglPertama.Text := '';
          eNRegBPKBPertama.Text := '';
          eTempatKeluarPertama.Text := '';
          eNamaPemilikPertama.Text := '';
          eAlamatPertama.Text := '';
          cbSbbTdkBerlaku.Text := '';
          FWait.Hide;
          eNoMesinEntry.SetFocus;
          Application.ProcessMessages;
        end
        else
        begin
          CariDataPemohon(eNoRangkaEntry.Text);
          FWait.Hide;
          Application.ProcessMessages;
          MessageDlgInformation('DATA TIDAK DITEMUKAN, ENTRY SECARA MANUAL');
          cxPageControl2.ActivePage := cxTabSheet3;
          eNoMesinEntry.SetFocus;
        end;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..CariDataFaktur.Open%Error :'+E.Message);
      end;
      end;
    finally
      FreeAndNil(uniSP);
    end;
  end
  else
  begin
    MessageDlgWarning('DATA KENDARAAN NO RANGKA '+vCari+' BELUM DIDAFTARKAN !!!'+#13+
                      'MOHON UNTUK DIDAFTARKAN TERLEBIH DAHULU');
  end;
end;

procedure TfRegistrasi.eNoRangkaEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=13 then
  begin
    //CariDataFaktur('1',eNoRangkaEntry.Text);
    if (Cb2D.Checked=True) then
       Data2D
    else
    begin
       if TOnLineCF='1' then
          CariDataFakturCF(eNoRangkaEntry.Text)
       else
          CariDataFaktur('1',eNoRangkaEntry.Text);
    end;
       //CariDataFakturCF(eNoRangkaEntry.Text);
    // CariDataPemohon(eNoRangkaEntry.Text);
  end;
end;

procedure TfRegistrasi.CariDataPemohon(vCari: String);
var
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_get_data_faktur_pmh';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_cari',ptInput).AsString := vCari;
      uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      uniSP.Active := True;

      if uniSP.RecordCount > 0 then
      begin
        cbPemohonEntry.Text := uniSP.FieldByName('PEMOHON_NAMA').Value;
        eResiPembayaran.Text := uniSP.FieldByName('BARCODE').Value;
        bSimpanEntry.Enabled := True;
        FWait.Hide;
        Application.ProcessMessages;
      end
      else
      begin
        FWait.Hide;
        Application.ProcessMessages;
        MessageDlgError('DATA TIDAK BISA DIPROSES, BLM TERDAFTAR DI PENDAFTARAN');
        bSimpanEntry.Enabled := False;
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..CariDataFaktur.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfRegistrasi.bBaruEntryClick(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfRegistrasi.cxButton2Click(Sender: TObject);
begin
  RefreshKelurahan;
  pkdpos.Left := 72;
  pkdpos.Top := 4;
  pkdpos.Visible := True;
  eCariKelurahan.SetFocus;
  eCariKelurahan.SelStart := Length(eCariKelurahan.Text) + 1;
end;

procedure TfRegistrasi.pkdposMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pkdpos.Handle, wm_SysCommand,$f012,0);
end;

procedure TfRegistrasi.eCariKelurahanPropertiesChange(Sender: TObject);
begin
  RefreshKelurahan;
end;

procedure TfRegistrasi.eCariKelurahanKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 40 then
     dbgData.SetFocus;
end;

procedure TfRegistrasi.Button1Click(Sender: TObject);
begin
  pkdpos.Visible := False;
end;

procedure TfRegistrasi.Shape3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pkdpos.Handle, wm_SysCommand,$f012,0);
end;

procedure TfRegistrasi.cbJnsDaftaranEntryPropertiesChange(Sender: TObject);
begin
  if (cbJnsDaftaranEntry.Text = 'CKD') or (cbJnsDaftaranEntry.Text = 'EX DUMP') then
  begin
    eNoPabeanEntry.Enabled := False;
    dtTglPabeanEntry.Enabled := False;
    ePelabuhanEntry.Enabled := False;
    eNoPIBEntry.Enabled := False;
    dtTglPIBEntry.Enabled := False;
    cbCaraImporEntry.Enabled := False;
  end
  else
  begin
    eNoPabeanEntry.Enabled := True;
    dtTglPabeanEntry.Enabled := True;
    ePelabuhanEntry.Enabled := True;
    eNoPIBEntry.Enabled := True;
    dtTglPIBEntry.Enabled := True;
    cbCaraImporEntry.Enabled := True;
  end;
end;

procedure TfRegistrasi.eNoBPKBEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     eNRegBPKBEntry.SetFocus;
end;

procedure TfRegistrasi.eNRegBPKBEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     eDikeluarkanEntry.SetFocus;
end;

procedure TfRegistrasi.eDikeluarkanEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     dtTglEntry.SetFocus;
end;

procedure TfRegistrasi.dtTglEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     eNoRangkaEntry.SetFocus;
end;

procedure TfRegistrasi.eNoMesinEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     cbMerkEntry.SetFocus;
end;

procedure TfRegistrasi.cbMerkEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
     RefreshCbMerk;
  if Key = 13 then
     cbJenisEntry.SetFocus;
end;

procedure TfRegistrasi.eTypeEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     eType2Entry.SetFocus;
end;

procedure TfRegistrasi.eThnBuatEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     eThnRakitEntry.SetFocus;
end;

procedure TfRegistrasi.eThnRakitEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     eJmlRodaEntry.SetFocus;
end;

procedure TfRegistrasi.eSilinderEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     eThnBuatEntry.SetFocus;
end;

procedure TfRegistrasi.eJmlRodaEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     eJmlSumbuEntry.SetFocus;
end;

procedure TfRegistrasi.eJmlSumbuEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     cbBahanBakarEntry.SetFocus;
end;

procedure TfRegistrasi.cbBahanBakarEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F5 then
     RefreshCbBahanBakar;
  if key = 13 then
     cbWarnaEntry.SetFocus
end;

procedure TfRegistrasi.enoTPTEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     cbWarnaTNKBEntry.SetFocus;
end;

procedure TfRegistrasi.cbPeruntukanEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F5 then
     RefreshCbPeruntukan;
  if key = 13 then
     enoTPTEntry.SetFocus
end;

procedure TfRegistrasi.eNoSUTEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    cxPageControl2.ActivePageIndex := 1;
    eNoIdentitasEntry.SetFocus;
  end;
end;

procedure TfRegistrasi.eKdPOSEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     ePonselEntry.SetFocus;
end;

procedure TfRegistrasi.ePonselEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     ePekerjaanEntry.SetFocus;
end;

procedure TfRegistrasi.eNoFakturEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     dtTglFakturEntry.SetFocus;
end;

procedure TfRegistrasi.dtTglFakturEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     eNoPabeanEntry.SetFocus;
end;

procedure TfRegistrasi.eNoPabeanEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     dtTglPabeanEntry.SetFocus;
end;

procedure TfRegistrasi.dtTglPabeanEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     ePelabuhanEntry.SetFocus;
end;

procedure TfRegistrasi.ePelabuhanEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     eNoPIBEntry.SetFocus;
end;

procedure TfRegistrasi.eNoPIBEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     dtTglPIBEntry.SetFocus;
end;

procedure TfRegistrasi.dtTglPIBEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     cbCaraImporEntry.SetFocus;
end;

procedure TfRegistrasi.eNamaImportirEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     eKetLainEntry.SetFocus;
end;

procedure TfRegistrasi.bRequestNopolClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
  {if (eNopolAwal.Text <> '') and (eNopolTengah.Text <> '') then
  begin
    try
      fWait.Show;
      Application.ProcessMessages;
      uniSP := TUniStoredProc.Create(Application);
      uniSP.Connection := DM.dbSrv;
      uniSP.Close;
      uniSP.StoredProcName := 'bpkb_cek_nopol';
      try
        uniSP.Params.Clear;
        uniSP.Params.CreateParam(ftString,'v_nopol',ptInput).AsString := Trim(eNopolAwal.Text + ' '+eNopolTengah.Text+' '+eNopolAkhir.Text);
        uniSP.Params.CreateParam(ftString,'v_nopol_lama',ptInput).AsString := '0';
        uniSP.Params.CreateParam(ftString,'v_bpkb_id_lama',ptInput).AsString := '';
        uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
        uniSP.ExecProc;

        fWait.Hide;
        Application.ProcessMessages;
        if uniSP.Params.ParamValues['RESULT'] = 'TRUE' then
        begin
          lStatusNOPOL.Caption := 'SDH TERPAKAI';
          lStatusNOPOL.Font.Color := clRed;
          //bRequestNopol.Enabled := False;
        end
        else
        begin
          lStatusNOPOL.Caption := 'BLM TERPAKAI';
          lStatusNOPOL.Font.Color := clBlue;
          //bRequestNopol.Enabled := False;
        end;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..bpkb_cek_nopol.Open%Error :'+E.Message);
      end;
      end;
    finally
      FreeAndNil(uniSP);
    end;
  end
  else}
  begin
    if IsStrANumber(cbWarnaTNKBEntry.EditValue) = True then
    begin
      if IsStrANumber(cbJenisEntry.EditValue) = True then
      begin
        if eKabupaten.Text <> '' then
        begin
          try
            fWait.Show;
            Application.ProcessMessages;
            uniSP := TUniStoredProc.Create(Application);
            uniSP.Connection := DM.dbSrv;
            uniSP.Close;
            uniSP.StoredProcName := 'bpkb_get_nopol2';
            try
              uniSP.Params.Clear;
              uniSP.Params.CreateParam(ftString,'v_warnatnkb_id',ptInput).AsInteger := cbWarnaTNKBEntry.EditValue;
              uniSP.Params.CreateParam(ftString,'v_jenis_id',ptInput).AsString := cbJenisEntry.EditValue;
              uniSP.Params.CreateParam(ftString,'v_kabupaten',ptInput).AsString := eKabupaten.Text;
              uniSP.Params.CreateParam(ftString,'v_no_bpkb',ptInput).AsString := eNoBPKBEntry.Text;
              uniSP.Params.CreateParam(ftString,'v_no_rangka',ptInput).AsString := eNoRangkaEntry.Text;
              if Length(eNoRekom.Text) > 14 then
                 uniSP.Params.CreateParam(ftString,'v_no_rekom',ptInput).AsString := eNoRekom.Text
              else
                 uniSP.Params.CreateParam(ftString,'v_no_rekom',ptInput).AsString := '-';
              uniSP.Params.CreateParam(ftString,'v_merk_id',ptInput).AsInteger := cbMerkEntry.EditValue;
              uniSP.Params.CreateParam(ftString,'v_model',ptInput).AsString := cbModelEntry.Text;
              uniSP.Params.CreateParam(ftString,'v_polda',ptInput).AsString := vPOLDAID;
              uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
              uniSP.Open;

              if uniSP.RecordCount > 0 then
              begin
                if uniSP.Fields[0].AsString='X' then
                begin
                  fWait.Hide;
                  Application.ProcessMessages;
                  MessageDlgError('Ada kesalahan dalam alokasi No POLISI, Ket error '+uniSP.Fields[5].AsString);
                  eNopolAwal.Text := '';
                  eNopolTengah.Text := '';
                  eNopolAkhir.Text := '';
                  lStatusNOPOL.Caption := 'SDH TERPAKAI';
                  lStatusNOPOL.Font.Color := clRed;
                  //bRequestNopol.Enabled := False;
                end
                else
                begin
                  eNopolAwal.Text := uniSP.Fields[0].AsString;
                  eNopolTengah.Text := uniSP.Fields[1].AsString;
                  eNopolAkhir.Text := uniSP.Fields[2].AsString;
                  lStatusNOPOL.Caption := 'BLM TERPAKAI';
                  lStatusNOPOL.Font.Color := clBlue;
                  //bRequestNopol.Enabled := False;
                  fWait.Hide;
                  Application.ProcessMessages;
                end;
              end
              else
              begin
                eNopolAwal.Text := '';
                eNopolTengah.Text := '';
                eNopolAkhir.Text := '';
                lStatusNOPOL.Caption := 'SDH TERPAKAI';
                lStatusNOPOL.Font.Color := clRed;
                //bRequestNopol.Enabled := False;
                fWait.Hide;
                Application.ProcessMessages;
                MessageDlgError('Data NOPOL Tidak ditemukan ');
              end;
            except on E:Exception do
            begin
              ErrorProgDialog('Error,..bpkb_get_nopol2.Open%Error :'+E.Message);
            end;
            end;
          finally
            FreeAndNil(uniSP);
          end;
        end
        else
        begin
          MessageDlgError('Lokasi Kabupaten harus diisi!');
          cxPageControl2.ActivePage := cxTabSheet4;
          Application.ProcessMessages;
          cxButton2.SetFocus;
        end;
      end
      else
      begin
        MessageDlgError('Jenis kendaraan harus diisi!');
        cxPageControl2.ActivePage := cxTabSheet3;
        Application.ProcessMessages;
        cbJenisEntry.SetFocus;
      end;
    end
    else
    begin
      MessageDlgError('Warna TNKB kendaraan harus diisi!');
      cxPageControl2.ActivePage := cxTabSheet3;
      Application.ProcessMessages;
      cbWarnaTNKBEntry.SetFocus;
    end;
  end;
end;

procedure TfRegistrasi.AddBPKB;
var
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'BPKB_ADD3';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'vBERKAS_ID',ptInput).AsInteger := StrToInt(tBerkasID);
      uniSP.Params.CreateParam(ftString,'vNO_BPKB',ptInput).AsString := eNoBPKBEntry.Text;
      uniSP.Params.CreateParam(ftString,'vTGL_BPKB',ptInput).AsString := FormatDateTime('yyyymmdd',dtTglEntry.Date);
      uniSP.Params.CreateParam(ftString,'vTGL_FAKTUR',ptInput).AsString := FormatDateTime('yyyymmdd',dtTglFakturEntry.Date);
      uniSP.Params.CreateParam(ftString,'vNO_RANGKA',ptInput).AsString := eNoRangkaEntry.Text;
      uniSP.Params.CreateParam(ftString,'vNO_MESIN',ptInput).AsString := eNoMesinEntry.Text;
      uniSP.Params.CreateParam(ftString,'vNO_POLISI',ptInput).AsString := Trim(eNopolAwal.Text+' '+eNopolTengah.Text+' '+eNopolAkhir.Text);
      uniSP.Params.CreateParam(ftString,'vTPT_DAFTAR_STNK',ptInput).AsString := eKabupaten.Text;
      //if dtTglSTNK.Text <> '' then
      //   uniSP.Params.CreateParam(ftString,'vTGL_DAFTAR_STNK',ptInput).AsString := FormatDateTime('yyyymmdd',dtTglSTNK.Date)
      //else
      //uniSP.Params.CreateParam(ftString,'vTGL_DAFTAR_STNK',ptInput).AsString := '';
      uniSP.Params.CreateParam(ftString,'vNREG_BPKB',ptInput).AsString := eNRegBPKBEntry.Text;
      if eJmlRodaEntry.Text = '' then
        uniSP.Params.CreateParam(ftString,'vJML_RODA',ptInput).AsInteger := 0
      else
        uniSP.Params.CreateParam(ftString,'vJML_RODA',ptInput).AsInteger := StrToInt(eJmlRodaEntry.Text);
      uniSP.Params.CreateParam(ftString,'vTHN_BUAT',ptInput).AsInteger := StrToInt(eThnBuatEntry.Text);
      uniSP.Params.CreateParam(ftString,'vTHN_RAKIT',ptInput).AsInteger := StrToInt(eThnRakitEntry.Text);
      if eJmlSumbuEntry.Text = '' then
        uniSP.Params.CreateParam(ftString,'vJML_SUMBU',ptInput).AsInteger := 0
      else
        uniSP.Params.CreateParam(ftString,'vJML_SUMBU',ptInput).AsInteger := StrToInt(eJmlSumbuEntry.Text);
      uniSP.Params.CreateParam(ftString,'vVOL_SILINDER',ptInput).AsFloat := StrToFloat(eSilinderEntry.Text);
      uniSP.Params.CreateParam(ftString,'vBB_ID',ptInput).AsInteger := cbBahanBakarEntry.EditValue;
      uniSP.Params.CreateParam(ftString,'vWARNA_ID',ptInput).AsInteger := cbWarnaEntry.EditValue;
      uniSP.Params.CreateParam(ftString,'vMERK_ID',ptInput).AsInteger := cbMerkEntry.EditValue;
      uniSP.Params.CreateParam(ftString,'vTIPE',ptInput).AsString := eTypeEntry.Text;
      uniSP.Params.CreateParam(ftString,'vTIPE2',ptInput).AsString := eType2Entry.Text;
      uniSP.Params.CreateParam(ftString,'vMODEL_ID',ptInput).AsInteger := cbModelEntry.EditValue;
      uniSP.Params.CreateParam(ftString,'vJENIS_ID',ptInput).AsInteger := cbJenisEntry.EditValue;
      uniSP.Params.CreateParam(ftString,'vNO_IDENTITAS',ptInput).AsString := eNoIdentitasEntry.Text;
      // update tgl 25/04/2014 untuk menghindari penulisan baris ke 2 kosong
      if eNamaPemilikEntry.Lines.Count = 2 then
      begin
        if Trim(eNamaPemilikEntry.Lines[1])='' then
           uniSP.Params.CreateParam(ftString,'vNAMA_PEMILIK',ptInput).AsString := Trim(StringReplace(eNamaPemilikEntry.Text, #13#10, '', [rfReplaceAll]))
        else
           uniSP.Params.CreateParam(ftString,'vNAMA_PEMILIK',ptInput).AsString := eNamaPemilikEntry.Text;
      end
      else
        uniSP.Params.CreateParam(ftString,'vNAMA_PEMILIK',ptInput).AsString := eNamaPemilikEntry.Text;
      uniSP.Params.CreateParam(ftString,'vNO_PONSEL',ptInput).AsString := ePonselEntry.Text;
      uniSP.Params.CreateParam(ftString,'vALAMAT_PEMILIK',ptInput).AsString := eAlamatPemilikEntry.Text;
      uniSP.Params.CreateParam(ftString,'vKEL_ID',ptInput).AsString := eKelurahan.Text;
      uniSP.Params.CreateParam(ftString,'vKEC_ID',ptInput).AsString := eKecamatan.Text;
      uniSP.Params.CreateParam(ftString,'vKAB_ID',ptInput).AsString := eKabupaten.Text;
      uniSP.Params.CreateParam(ftString,'vPROP_ID',ptInput).AsString := ePropinsi.Text;
      uniSP.Params.CreateParam(ftString,'vKODE_POS',ptInput).AsString := eKdPOSEntry.Text;
      uniSP.Params.CreateParam(ftString,'vWILAYAH_ID',ptInput).AsInteger := cbWilayahEntry.EditValue;
      uniSP.Params.CreateParam(ftString,'vPEKERJAAN_PEMILIK',ptInput).AsString := ePekerjaanEntry.Text;
      uniSP.Params.CreateParam(ftString,'vNO_UJI_TIPE',ptInput).AsString := eNoSUTEntry.Text;
      uniSP.Params.CreateParam(ftString,'vNO_UJI_BERKALA',ptInput).AsString := enoTPTEntry.Text;
      uniSP.Params.CreateParam(ftString,'vWARNATNKB_ID',ptInput).AsString := cbWarnaTNKBEntry.EditValue;
      uniSP.Params.CreateParam(ftString,'vTEMPAT_KELUAR',ptInput).AsString := eDikeluarkanEntry.Text;
      uniSP.Params.CreateParam(ftString,'vJD_ID',ptInput).AsString := cbJnsDaftaranEntry.EditValue;
      uniSP.Params.CreateParam(ftString,'vNO_PABEAN',ptInput).AsString := eNoPabeanEntry.Text;
      if dtTglPabeanEntry.Text = '' then
        uniSP.Params.CreateParam(ftString,'vTGL_PABEAN',ptInput).AsString := ''
      else
        uniSP.Params.CreateParam(ftString,'vTGL_PABEAN',ptInput).AsString := FormatDateTime('yyyymmdd',dtTglPabeanEntry.Date);
      uniSP.Params.CreateParam(ftString,'vPELABUHAN',ptInput).AsString := ePelabuhanEntry.Text;
      if (cbJnsDaftaranEntry.Text = 'CKD') or (cbJnsDaftaranEntry.Text = 'EX DUMP') then
        uniSP.Params.CreateParam(ftString,'vIMPMTHD_ID',ptInput).AsInteger := 0
      else
        uniSP.Params.CreateParam(ftString,'vIMPMTHD_ID',ptInput).AsInteger := cbCaraImporEntry.EditValue;
      uniSP.Params.CreateParam(ftString,'vNO_FAKTUR',ptInput).AsString := eNoFakturEntry.Text;
      uniSP.Params.CreateParam(ftString,'vNO_CKD',ptInput).AsString := '';
      uniSP.Params.CreateParam(ftString,'vKETR_PABEAN',ptInput).AsString := eKetLainEntry.Text;
      uniSP.Params.CreateParam(ftString,'vPRT_ID',ptInput).AsString := cbPeruntukanEntry.EditValue;
      uniSP.Params.CreateParam(ftString,'vNO_PIB',ptInput).AsString := eNoPIBEntry.Text;
      if dtTglPIBEntry.Text = '' then
        uniSP.Params.CreateParam(ftString,'vTGL_PIB',ptInput).AsString := ''
      else
        uniSP.Params.CreateParam(ftString,'vTGL_PIB',ptInput).AsString := FormatDateTime('yyyymmdd',dtTglPIBEntry.Date);
      uniSP.Params.CreateParam(ftString,'vNAMA_IMPORTIR',ptInput).AsString := eNamaImportirEntry.Text;
      uniSP.Params.CreateParam(ftString,'vPREVBPKB_ID',ptInput).AsString := '';
      uniSP.Params.CreateParam(ftString,'vNO_PREVBPKB',ptInput).AsString := '';
      uniSP.Params.CreateParam(ftString,'vTGL_PREVBPKB',ptInput).AsString := '';
      uniSP.Params.CreateParam(ftString,'vNREG_PREVBPKB',ptInput).AsString := '';
      uniSP.Params.CreateParam(ftString,'vTPT_KELUAR_PREVBPKB',ptInput).AsString := '';
      uniSP.Params.CreateParam(ftString,'vNAMA_PREVPEMILIK',ptInput).AsString := '';
      uniSP.Params.CreateParam(ftString,'vALAMAT_PREVPEMILIK',ptInput).AsString := '';
      uniSP.Params.CreateParam(ftString,'vSEBAB_TDKBERLAKU',ptInput).AsString := '';
      uniSP.Params.CreateParam(ftString,'vSEBAB_TDKBERLAKU_CODE',ptInput).AsInteger := 0;
      uniSP.Params.CreateParam(ftString,'vKPKMBR_ID',ptInput).AsInteger := cbPemohonEntry.EditValue;
      uniSP.Params.CreateParam(ftString,'vOP_ID',ptInput).AsInteger := StrToInt(vIDPetugas);
      uniSP.Params.CreateParam(ftString,'vNOPOL_REQUEST',ptInput).AsString := '0';
      uniSP.Params.CreateParam(ftString,'vIS_REPLACEMENT',ptInput).AsString := '0';
      uniSP.Params.CreateParam(ftString,'vNO_RESI_BAYAR',ptInput).AsString := eResiPembayaran.Text;
      uniSP.Params.CreateParam(ftString,'vPMT_PROD',ptInput).AsString := '';
      uniSP.Params.CreateParam(ftString,'vIS_BBN2',ptInput).AsString := '0';
      uniSP.Params.CreateParam(ftString,'vENROLLMENT_TYPE',ptInput).AsString := '1';
      uniSP.Params.CreateParam(ftString,'vPOLDA_ID',ptInput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'vPOLRES_ID',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'vKISIGN_ID',ptInput).AsInteger := 0;
      uniSP.Params.CreateParam(ftString,'vTGLREGISTER',ptInput).AsString := FormatDateTime('YYYYMMDD',dtTgl.Date);
      uniSP.Params.CreateParam(ftString,'vPemohonID',ptInput).AsInteger := cbPemohonEntry.EditValue;
      if isTreaceLog='1' then
      begin
        Log('***START FOR TRACE LOG ADD BPKB - BBN 1 - '+eNoBPKBEntry.Text+'***');
        Log('SProser Penyimpanan Registrasi BBN1');
        Log('vBERKAS_ID '+tBerkasID);
        Log('vNO_BPKB '+eNoBPKBEntry.Text);
        Log('vTGL_BPKB '+FormatDateTime('yyyymmdd',dtTglEntry.Date));
        Log('vTGL_FAKTUR '+FormatDateTime('yyyymmdd',dtTglFakturEntry.Date));
        Log('vNO_RANGKA '+eNoRangkaEntry.Text);
        Log('vNO_MESIN '+eNoMesinEntry.Text);
        Log('vNO_POLISI '+Trim(eNopolAwal.Text+' '+eNopolTengah.Text+' '+eNopolAkhir.Text));
        Log('vTPT_DAFTAR_STNK '+'');
        Log('vTGL_DAFTAR_STNK '+'');
        Log('vNREG_BPKB '+eNRegBPKBEntry.Text);
        if eJmlRodaEntry.Text = '' then
          Log('vJML_RODA '+'0')
        else
          Log('vJML_RODA '+eJmlRodaEntry.Text);
        Log('vTHN_BUAT '+eThnBuatEntry.Text);
        Log('vTHN_RAKIT '+eThnRakitEntry.Text);
        if eJmlSumbuEntry.Text = '' then
          Log('vJML_SUMBU '+'0')
        else
          Log('vJML_SUMBU '+eJmlSumbuEntry.Text);
        Log('vVOL_SILINDER '+eSilinderEntry.Text);
        Log('vBB_ID '+cbBahanBakarEntry.EditValue);
        Log('vWARNA_ID '+cbWarnaEntry.EditValue);
        Log('vMERK_ID '+cbMerkEntry.EditValue);
        Log('vTIPE '+eTypeEntry.Text);
        Log('vTIPE2 '+eType2Entry.Text);
        Log('vMODEL_ID '+cbModelEntry.EditValue);
        Log('vJENIS_ID '+cbJenisEntry.EditValue);
        Log('vNO_IDENTITAS '+eNoIdentitasEntry.Text);
        Log('vNAMA_PEMILIK '+eNamaPemilikEntry.Text);
        Log('vNO_PONSEL '+ePonselEntry.Text);
        Log('vALAMAT_PEMILIK '+eAlamatPemilikEntry.Text);
        Log('vKEL_ID '+eKelurahan.Text);
        Log('vKEC_ID '+eKecamatan.Text);
        Log('vKAB_ID '+eKabupaten.Text);
        Log('vPROP_ID '+ePropinsi.Text);
        Log('vKODE_POS '+eKdPOSEntry.Text);
        Log('vWILAYAH_ID '+cbWilayahEntry.EditValue);
        Log('vPEKERJAAN_PEMILIK '+ePekerjaanEntry.Text);
        Log('vNO_UJI_TIPE '+eNoSUTEntry.Text);
        Log('vNO_UJI_BERKALA '+enoTPTEntry.Text);
        Log('vWARNATNKB_ID '+cbWarnaTNKBEntry.EditValue);
        Log('vTEMPAT_KELUAR '+eDikeluarkanEntry.Text);
        Log('vJD_ID '+cbJnsDaftaranEntry.EditValue);
        Log('vNO_PABEAN '+eNoPabeanEntry.Text);
        if dtTglPabeanEntry.Text = '' then
          Log('vTGL_PABEAN '+'')
        else
          Log('vTGL_PABEAN '+FormatDateTime('yyyymmdd',dtTglPabeanEntry.Date));
        Log('vPELABUHAN '+ePelabuhanEntry.Text);
        if (cbJnsDaftaranEntry.Text = 'CKD') or (cbJnsDaftaranEntry.Text = 'EX DUMP') then
          Log('vIMPMTHD_ID '+'0')
        else
          Log('vIMPMTHD_ID '+cbCaraImporEntry.EditValue);
        Log('vNO_FAKTUR '+eNoFakturEntry.Text);
        Log('vNO_CKD '+'');
        Log('vKETR_PABEAN '+eKetLainEntry.Text);
        Log('vPRT_ID '+cbPeruntukanEntry.EditValue);
        Log('vNO_PIB '+eNoPIBEntry.Text);
        if dtTglPIBEntry.Text = '' then
          Log('vTGL_PIB '+'')
        else
          Log('vTGL_PIB '+FormatDateTime('yyyymmdd',dtTglPIBEntry.Date));
        Log('vNAMA_IMPORTIR '+eNamaImportirEntry.Text);
        Log('vPREVBPKB_ID '+'');
        Log('vNO_PREVBPKB '+'');
        Log('vTGL_PREVBPKB '+'');
        Log('vNREG_PREVBPKB '+'');
        Log('vTPT_KELUAR_PREVBPKB '+'');
        Log('vNAMA_PREVPEMILIK '+'');
        Log('vALAMAT_PREVPEMILIK '+'');
        Log('vSEBAB_TDKBERLAKU '+'');
        Log('vSEBAB_TDKBERLAKU_CODE '+'0');
        Log('vKPKMBR_ID '+cbPemohonEntry.EditValue);
        Log('vOP_ID '+vIDPetugas);
        Log('vNOPOL_REQUEST '+'0');
        Log('vIS_REPLACEMENT '+'0');
        Log('vNO_RESI_BAYAR '+eResiPembayaran.Text);
        Log('vPMT_PROD '+'');
        Log('vIS_BBN2 '+'0');
        Log('vENROLLMENT_TYPE '+'1');
        Log('vPOLDA_ID '+vPOLDAID);
        Log('vPOLRES_ID '+vPOLRESID);
        Log('vKISIGN_ID '+'0');
        Log('vTGLREGISTER '+FormatDateTime('YYYYMMDD',dtTgl.Date));
        Log('vPemohonID '+cbPemohonEntry.EditValue);
        Log('***END FOR TRACE LOG ADD BPKB - BBN1 - '+eNoBPKBEntry.Text+'***');
      end;
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
      uniSP.ExecProc;

      fWait.Hide;
      Application.ProcessMessages;
      Log('RESPONSE FROM SERVER - BBN1 - [NO BPKB ]: '+eNoBPKBEntry.Text+' - '+uniSP.Params.ParamValues['RESULT']);
      if Pos('KESALAHAN',uniSP.Params.ParamValues['RESULT']) > 0 then
         MessageDlgError('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT'])
      else
         MessageDlgInsert('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT']);
      //bBaruEntry.Click;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..BPKB_ADD.Open%Error :'+E.Message);
      if isTreaceLog='1' then
      begin
        Log('***START FOR TRACE LOG ADD BPKB - BBN 1 - '+eNoBPKBEntry.Text+'***');
        Log('SProser Penyimpanan Registrasi BBN1');
        Log('vBERKAS_ID '+tBerkasID);
        Log('vNO_BPKB '+eNoBPKBEntry.Text);
        Log('vTGL_BPKB '+FormatDateTime('yyyymmdd',dtTglEntry.Date));
        Log('vTGL_FAKTUR '+FormatDateTime('yyyymmdd',dtTglFakturEntry.Date));
        Log('vNO_RANGKA '+eNoRangkaEntry.Text);
        Log('vNO_MESIN '+eNoMesinEntry.Text);
        Log('vNO_POLISI '+Trim(eNopolAwal.Text+' '+eNopolTengah.Text+' '+eNopolAkhir.Text));
        Log('vTPT_DAFTAR_STNK '+'');
        Log('vTGL_DAFTAR_STNK '+'');
        Log('vNREG_BPKB '+eNRegBPKBEntry.Text);
        if eJmlRodaEntry.Text = '' then
          Log('vJML_RODA '+'0')
        else
          Log('vJML_RODA '+eJmlRodaEntry.Text);
        Log('vTHN_BUAT '+eThnBuatEntry.Text);
        Log('vTHN_RAKIT '+eThnRakitEntry.Text);
        if eJmlSumbuEntry.Text = '' then
          Log('vJML_SUMBU '+'0')
        else
          Log('vJML_SUMBU '+eJmlSumbuEntry.Text);
        Log('vVOL_SILINDER '+eSilinderEntry.Text);
        Log('vBB_ID '+cbBahanBakarEntry.EditValue);
        Log('vWARNA_ID '+cbWarnaEntry.EditValue);
        Log('vMERK_ID '+cbMerkEntry.EditValue);
        Log('vTIPE '+eTypeEntry.Text);
        Log('vTIPE2 '+eType2Entry.Text);
        Log('vMODEL_ID '+cbModelEntry.EditValue);
        Log('vJENIS_ID '+cbJenisEntry.EditValue);
        Log('vNO_IDENTITAS '+eNoIdentitasEntry.Text);
        Log('vNAMA_PEMILIK '+eNamaPemilikEntry.Text);
        Log('vNO_PONSEL '+ePonselEntry.Text);
        Log('vALAMAT_PEMILIK '+eAlamatPemilikEntry.Text);
        Log('vKEL_ID '+eKelurahan.Text);
        Log('vKEC_ID '+eKecamatan.Text);
        Log('vKAB_ID '+eKabupaten.Text);
        Log('vPROP_ID '+ePropinsi.Text);
        Log('vKODE_POS '+eKdPOSEntry.Text);
        Log('vWILAYAH_ID '+cbWilayahEntry.EditValue);
        Log('vPEKERJAAN_PEMILIK '+ePekerjaanEntry.Text);
        Log('vNO_UJI_TIPE '+eNoSUTEntry.Text);
        Log('vNO_UJI_BERKALA '+enoTPTEntry.Text);
        Log('vWARNATNKB_ID '+cbWarnaTNKBEntry.EditValue);
        Log('vTEMPAT_KELUAR '+eDikeluarkanEntry.Text);
        Log('vJD_ID '+cbJnsDaftaranEntry.EditValue);
        Log('vNO_PABEAN '+eNoPabeanEntry.Text);
        if dtTglPabeanEntry.Text = '' then
          Log('vTGL_PABEAN '+'')
        else
          Log('vTGL_PABEAN '+FormatDateTime('yyyymmdd',dtTglPabeanEntry.Date));
        Log('vPELABUHAN '+ePelabuhanEntry.Text);
        if (cbJnsDaftaranEntry.Text = 'CKD') or (cbJnsDaftaranEntry.Text = 'EX DUMP') then
          Log('vIMPMTHD_ID '+'0')
        else
          Log('vIMPMTHD_ID '+cbCaraImporEntry.EditValue);
        Log('vNO_FAKTUR '+eNoFakturEntry.Text);
        Log('vNO_CKD '+'');
        Log('vKETR_PABEAN '+eKetLainEntry.Text);
        Log('vPRT_ID '+cbPeruntukanEntry.EditValue);
        Log('vNO_PIB '+eNoPIBEntry.Text);
        if dtTglPIBEntry.Text = '' then
          Log('vTGL_PIB '+'')
        else
          Log('vTGL_PIB '+FormatDateTime('yyyymmdd',dtTglPIBEntry.Date));
        Log('vNAMA_IMPORTIR '+eNamaImportirEntry.Text);
        Log('vPREVBPKB_ID '+'');
        Log('vNO_PREVBPKB '+'');
        Log('vTGL_PREVBPKB '+'');
        Log('vNREG_PREVBPKB '+'');
        Log('vTPT_KELUAR_PREVBPKB '+'');
        Log('vNAMA_PREVPEMILIK '+'');
        Log('vALAMAT_PREVPEMILIK '+'');
        Log('vSEBAB_TDKBERLAKU '+'');
        Log('vSEBAB_TDKBERLAKU_CODE '+'0');
        Log('vKPKMBR_ID '+cbPemohonEntry.EditValue);
        Log('vOP_ID '+vIDPetugas);
        Log('vNOPOL_REQUEST '+'0');
        Log('vIS_REPLACEMENT '+'0');
        Log('vNO_RESI_BAYAR '+eResiPembayaran.Text);
        Log('vPMT_PROD '+'');
        Log('vIS_BBN2 '+'0');
        Log('vENROLLMENT_TYPE '+'1');
        Log('vPOLDA_ID '+vPOLDAID);
        Log('vPOLRES_ID '+vPOLRESID);
        Log('vKISIGN_ID '+'0');
        Log('vTGLREGISTER '+FormatDateTime('YYYYMMDD',dtTgl.Date));
        Log('vPemohonID '+cbPemohonEntry.EditValue);
        Log('***END FOR TRACE LOG ADD BPKB - BBN1 - '+eNoBPKBEntry.Text+'***');
      end;
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfRegistrasi.bSimpanEntryClick(Sender: TObject);
var
  i : integer;
begin
  {if eNoBPKBEntry.Text <> '' then
  begin}
    if eNRegBPKBEntry.Text <> '' then
    begin
      if eDikeluarkanEntry.Text <> '' then
      begin
        if dtTglEntry.Text <> '' then
        begin
          if eNoRangkaEntry.Text <> '' then
          begin
            if eNoMesinEntry.Text <> '' then
            begin
              if IsStrANumber(cbMerkEntry.EditValue) = True then
              begin
                if eTypeEntry.Text <> '' then
                begin
                  if IsStrANumber(cbJenisEntry.EditValue) = True then
                  begin
                    if IsStrANumber(cbModelEntry.EditValue) = True then
                    begin
                      if eThnBuatEntry.Text <> '' then
                      begin
                        if eThnRakitEntry.Text <> '' then
                        begin
                          if eSilinderEntry.Text <> '' then
                          begin
                            if IsStrANumber(cbWarnaEntry.EditValue) = True then
                            begin
                              if eJmlRodaEntry.Text <> '' then
                              begin
                                if IsStrANumber(cbBahanBakarEntry.EditValue) = True then
                                begin
                                  if IsStrANumber(cbPeruntukanEntry.EditValue) = True then
                                  begin
                                    if IsStrANumber(cbWarnaTNKBEntry.EditValue) = True then
                                    begin
                                      if eNoIdentitasEntry.Text <> '' then
                                      begin
                                        if eNamaPemilikEntry.Text <> '' then
                                        begin
                                          if eNamaPemilikEntry.Lines.Count > 2 then
                                          begin
                                            MessageDlgWarning('Nama Pemilik tidak boleh lebih dari 2 baris');
                                            eNamaPemilikEntry.SetFocus;
                                          end
                                          else
                                          begin
                                            cxMemo1.Clear;
                                            for i := 0 to eNamaPemilikEntry.Lines.Count - 1 do
                                              cxMemo1.Lines.Add(eNamaPemilikEntry.Lines[i]);
                                            eNamaPemilikEntry.Clear;
                                            eNamaPemilikEntry.Text := cxMemo1.Text;
                                            if eAlamatPemilikEntry.Text <> '' then
                                            begin
                                              if eAlamatPemilikEntry.Lines.Count > 3 then
                                              begin
                                                MessageDlgWarning('Alamat Pemilik tidak boleh lebih dari 3 baris');
                                                eAlamatPemilikEntry.SetFocus;
                                              end
                                              else
                                              begin
                                                cxMemo1.Clear;
                                                for i := 0 to eAlamatPemilikEntry.Lines.Count - 1 do
                                                  cxMemo1.Lines.Add(eAlamatPemilikEntry.Lines[i]);
                                                eAlamatPemilikEntry.Clear;
                                                eAlamatPemilikEntry.Text := cxMemo1.Text;
                                                if IsStrANumber(cbWilayahEntry.EditValue) = True then
                                                begin
                                                  if IsStrANumber(cbJnsDaftaranEntry.EditValue) = True then
                                                  begin
                                                    if eNoFakturEntry.Text <> '' then
                                                    begin
                                                      if dtTglFakturEntry.Text <> '' then
                                                      begin
                                                        if eNamaImportirEntry.Text <> '' then
                                                        begin
                                                          if eKetLainEntry.Text <> '' then
                                                          begin
                                                            if cbPemohonEntry.Text <> '' then
                                                            begin
                                                              if IsStrANumber(cbPemohonEntry.EditValue) = True then
                                                              begin
                                                                if eResiPembayaran.Text <> '' then
                                                                begin
                                                                  if (eNopolAwal.Text <> '') and (eNopolTengah.Text <> '') then
                                                                  begin
                                                                    if eKelurahan.Text <> '' then
                                                                    begin
                                                                      if eKecamatan.Text <> '' then
                                                                      begin
                                                                        if eKabupaten.Text <> '' then
                                                                        begin
                                                                          if ePropinsi.Text <> '' then
                                                                          begin
                                                                            if lStatusNOPOL.Caption = 'BLM TERPAKAI' then
                                                                            begin

                                                                              if CekFalidasiNOPOL(eNopolAwal.Text,eKabupaten.Text)=True then
                                                                              begin
                                                                                fWait.Show;
                                                                                fWait.Label1.Caption := 'Tunggu Sebentar ...';
                                                                                fWait.cxProgressBar1.Visible := True;
                                                                                Application.ProcessMessages;
                                                                                if isEdit = '1' then
                                                                                   BPKBEdit
                                                                                else
                                                                                   AddBPKB;
                                                                              end
                                                                              else
                                                                              begin
                                                                                if MessageDlg('KODE WILAYAH NOPOL DENGAN KABUPATEN TIDAK SINCRON'+#13+
                                                                                              'APAKAH PROSES ENTRI AKAN TETAP DILAKSANAKAN?'+#13+
                                                                                              'TEKAN YES UNTUK TETAP MELAKUKAN PROSES REGISTRASI'+#13+
                                                                                              'TEKAN NO UNTUK MELAKUKAN PROSES PERBAIKAN DATA ENTRY',mtConfirmation,[mbYes,mbNo],0)=MrYes then
                                                                                begin
                                                                                  fWait.Show;
                                                                                  fWait.Label1.Caption := 'Tunggu Sebentar ...';
                                                                                  fWait.cxProgressBar1.Visible := True;
                                                                                  Application.ProcessMessages;
                                                                                  if isEdit = '1' then
                                                                                     BPKBEdit
                                                                                  else
                                                                                     AddBPKB;
                                                                                end;
                                                                              end;
                                                                            end
                                                                            else
                                                                            begin
                                                                              MessageDlgError('No Polisi Failed!');
                                                                              cxPageControl2.ActivePage := cxTabSheet3;
                                                                              Application.ProcessMessages;
                                                                              eNopolAwal.SetFocus;
                                                                            end;
                                                                          end
                                                                          else
                                                                          begin
                                                                            MessageDlgError('Nama Propinsi harus diisi!');
                                                                            cxPageControl2.ActivePage := cxTabSheet4;
                                                                            Application.ProcessMessages;
                                                                            cxButton2.Click;
                                                                          end;
                                                                        end
                                                                        else
                                                                        begin
                                                                          MessageDlgError('Nama Kabupaten harus diisi!');
                                                                          cxPageControl2.ActivePage := cxTabSheet4;
                                                                          Application.ProcessMessages;
                                                                          cxButton2.Click;
                                                                        end;
                                                                      end
                                                                      else
                                                                      begin
                                                                        MessageDlgError('Nama Kecamatan harus diisi!');
                                                                        cxPageControl2.ActivePage := cxTabSheet4;
                                                                        Application.ProcessMessages;
                                                                        cxButton2.Click;
                                                                      end;
                                                                    end
                                                                    else
                                                                    begin
                                                                      MessageDlgError('Nama Kelurahan harus diisi!');
                                                                      cxPageControl2.ActivePage := cxTabSheet4;
                                                                      Application.ProcessMessages;
                                                                      cxButton2.Click;
                                                                    end;
                                                                  end
                                                                  else
                                                                  begin
                                                                    MessageDlgError('No Polisi harus diisi!');
                                                                    cxPageControl2.ActivePage := cxTabSheet3;
                                                                    Application.ProcessMessages;
                                                                    eNopolAwal.SetFocus;
                                                                  end;
                                                                end
                                                                else
                                                                begin
                                                                  MessageDlgError('Resi Pembayaran Daftaran harus diisi!');
                                                                  cxPageControl2.ActivePage := cxTabSheet3;
                                                                  Application.ProcessMessages;
                                                                  eResiPembayaran.SetFocus;
                                                                end;
                                                              end
                                                              else
                                                              begin
                                                                MessageDlgError('Pemohon Daftaran harus diisi!');
                                                                cxPageControl2.ActivePage := cxTabSheet5;
                                                                Application.ProcessMessages;
                                                                cbPemohonEntry.SetFocus;
                                                              end;
                                                            end
                                                            else
                                                            begin
                                                              MessageDlgError('Pemohon Daftaran harus diisi!');
                                                              cxPageControl2.ActivePage := cxTabSheet5;
                                                              Application.ProcessMessages;
                                                              cbPemohonEntry.SetFocus;
                                                            end;
                                                          end
                                                          else
                                                          begin
                                                            MessageDlgError('Keterangan Pabean harus diisi!');
                                                            cxPageControl2.ActivePage := cxTabSheet5;
                                                            Application.ProcessMessages;
                                                            eKetLainEntry.SetFocus;
                                                          end;
                                                        end
                                                        else
                                                        begin
                                                          MessageDlgError('Nama Importir / APM harus diisi!');
                                                          cxPageControl2.ActivePage := cxTabSheet5;
                                                          Application.ProcessMessages;
                                                          eNamaImportirEntry.SetFocus;
                                                        end;
                                                      end
                                                      else
                                                      begin
                                                        MessageDlgError('Tanggal Faktur harus diisi!');
                                                        cxPageControl2.ActivePage := cxTabSheet5;
                                                        Application.ProcessMessages;
                                                        dtTglFakturEntry.SetFocus;
                                                      end;
                                                    end
                                                    else
                                                    begin
                                                      MessageDlgError('No Faktur Kendaraan harus diisi!');
                                                      cxPageControl2.ActivePage := cxTabSheet5;
                                                      Application.ProcessMessages;
                                                      eNoFakturEntry.SetFocus;
                                                    end;
                                                  end
                                                  else
                                                  begin
                                                    MessageDlgError('Jenis Daftaran harus diisi!');
                                                    cxPageControl2.ActivePage := cxTabSheet5;
                                                    Application.ProcessMessages;
                                                    cbJnsDaftaranEntry.SetFocus;
                                                  end;
                                                end
                                                else
                                                begin
                                                  MessageDlgError('Wilayah Pemilik harus diisi!');
                                                  cxPageControl2.ActivePage := cxTabSheet4;
                                                  Application.ProcessMessages;
                                                  cbWilayahEntry.SetFocus;
                                                end;
                                              end;
                                            end
                                            else
                                            begin
                                              MessageDlgError('Alamat Pemilik harus diisi!');
                                              cxPageControl2.ActivePage := cxTabSheet4;
                                              Application.ProcessMessages;
                                              eAlamatPemilikEntry.SetFocus;
                                            end;
                                          end;
                                        end
                                        else
                                        begin
                                          MessageDlgError('Nama Pemilik harus diisi!');
                                          cxPageControl2.ActivePage := cxTabSheet4;
                                          Application.ProcessMessages;
                                          eNamaPemilikEntry.SetFocus;
                                        end;
                                      end
                                      else
                                      begin
                                        MessageDlgError('No Identitas Pemilik harus diisi!');
                                        cxPageControl2.ActivePage := cxTabSheet4;
                                        Application.ProcessMessages;
                                        eNoIdentitasEntry.SetFocus;
                                      end;
                                    end
                                    else
                                    begin
                                      MessageDlgError('Warna TNKB kendaraan harus diisi!');
                                      cxPageControl2.ActivePage := cxTabSheet3;
                                      Application.ProcessMessages;
                                      cbWarnaTNKBEntry.SetFocus;
                                    end;
                                  end
                                  else
                                  begin
                                    MessageDlgError('Peruntukan kendaraan harus diisi!');
                                    cxPageControl2.ActivePage := cxTabSheet3;
                                    Application.ProcessMessages;
                                    cbPeruntukanEntry.SetFocus;
                                  end;
                                end
                                else
                                begin
                                  MessageDlgError('Bahan Bakar kendaraan harus diisi!');
                                  cxPageControl2.ActivePage := cxTabSheet3;
                                  Application.ProcessMessages;
                                  cbBahanBakarEntry.SetFocus;
                                end;
                              end
                              else
                              begin
                                MessageDlgError('Jumlah Roda kendaraan harus diisi!');
                                cxPageControl2.ActivePage := cxTabSheet3;
                                Application.ProcessMessages;
                                eJmlRodaEntry.SetFocus;
                              end;
                            end
                            else
                            begin
                              MessageDlgError('Warna kendaraan harus diisi!');
                              cxPageControl2.ActivePage := cxTabSheet3;
                              Application.ProcessMessages;
                              cbWarnaEntry.SetFocus;
                            end;
                          end
                          else
                          begin
                            MessageDlgError('Silinder kendaraan harus diisi!');
                            cxPageControl2.ActivePage := cxTabSheet3;
                            Application.ProcessMessages;
                            eSilinderEntry.SetFocus;
                          end;
                        end
                        else
                        begin
                          MessageDlgError('Tahun Rakit kendaraan harus diisi!');
                          cxPageControl2.ActivePage := cxTabSheet3;
                          Application.ProcessMessages;
                          eThnRakitEntry.SetFocus;
                        end;
                      end
                      else
                      begin
                        MessageDlgError('Tahun Pembuatan kendaraan harus diisi!');
                        cxPageControl2.ActivePage := cxTabSheet3;
                        Application.ProcessMessages;
                        eThnBuatEntry.SetFocus;
                      end;
                    end
                    else
                    begin
                      MessageDlgError('Model kendaraan harus diisi!');
                      cxPageControl2.ActivePage := cxTabSheet3;
                      Application.ProcessMessages;
                      cbModelEntry.SetFocus;
                    end;
                  end
                  else
                  begin
                    MessageDlgError('Jenis kendaraan harus diisi!');
                    cxPageControl2.ActivePage := cxTabSheet3;
                    Application.ProcessMessages;
                    cbJenisEntry.SetFocus;
                  end;
                end
                else
                begin
                  MessageDlgError('Type kendaraan harus diisi!');
                  cxPageControl2.ActivePage := cxTabSheet3;
                  Application.ProcessMessages;
                  eTypeEntry.SetFocus;
                end;
              end
              else
              begin
                MessageDlgError('Merk kendaraan harus diisi!');
                cxPageControl2.ActivePage := cxTabSheet3;
                Application.ProcessMessages;
                cbMerkEntry.SetFocus;
              end;
            end
            else
            begin
              MessageDlgError('No Mesin kendaraan harus diisi!');
              cxPageControl2.ActivePage := cxTabSheet3;
              Application.ProcessMessages;
              eNoMesinEntry.SetFocus;
            end;
          end
          else
          begin
            MessageDlgError('No Rangka kendaraan harus diisi!');
            cxPageControl2.ActivePage := cxTabSheet3;
            Application.ProcessMessages;
            eNoRangkaEntry.SetFocus;
          end;
        end
        else
        begin
          MessageDlgError('Tanggal BPKB harus diisi!');
          cxPageControl2.ActivePage := cxTabSheet3;
          Application.ProcessMessages;
          dtTglEntry.SetFocus;
        end;
      end
      else
      begin
        MessageDlgError('Lokasi BPKB harus diisi!');
        cxPageControl2.ActivePage := cxTabSheet3;
        Application.ProcessMessages;
        eDikeluarkanEntry.SetFocus;
      end;
    end
    else
    begin
      MessageDlgError('No Registrasi BPKB harus diisi!');
      cxPageControl2.ActivePage := cxTabSheet3;
      Application.ProcessMessages;
      eNRegBPKBEntry.SetFocus;
    end;
  {end
  else
  begin
    MessageDlgError('No BPKB harus diisi!');
    cxPageControl2.ActivePage := cxTabSheet3;
    Application.ProcessMessages;
    eNoBPKBEntry.SetFocus;
  end;}
end;

procedure TfRegistrasi.bGetDataRegisterClick(Sender: TObject);
begin
  //DM.dbSrv.StartTransaction;
  fWait.Label1.Caption := 'Tunggu Sebentar..';
  fWait.cxProgressBar1.Properties.Min := 0;
  fWait.cxProgressBar1.Properties.Max := 100;
  fWait.Show;
  Application.ProcessMessages;
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_register';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tgl',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglRegister.Date); // bbn1
      Params.CreateParam(ftString,'v_operator_id',ptinput).AsString := vIDPetugas; // bbn1
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      fWait.Close;
      Application.ProcessMessages;
      //ShowMessage('Jumlah '+IntToStr(uniSPTampil.RecordCount));
      //Active := True;
      //DM.dbSrv.Commit;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_register%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfRegistrasi.eNopolAkhirKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
     bRequestNopol.Click;
end;

procedure TfRegistrasi.eAlamatPemilikEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  {if Key = vk_delete then
  begin
     eAlamatPemilikEntry.Clear;
     eAlamatPemilikEntry.SetFocus;
  end;}
end;

procedure TfRegistrasi.EDITDATA1Click(Sender: TObject);
var
  uniSP : TUniStoredProc;
  DataIn : TStringList;
begin
  if uniSPTampil.FieldByName('BPKB_STATUS').AsString = '1' then
  begin
    try
      isEdit := '1';
      DataIn := TStringList.Create;
      uniSP := TUniStoredProc.Create(Application);
      uniSP.Connection := DM.dbSrv;
      uniSP.Close;
      uniSP.StoredProcName := 'bpkb_get_data';
      try
        uniSP.Params.Clear;
        uniSP.Params.CreateParam(ftstring,'v_polda_id',ptinput).AsString := vPOLDAID;
        uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
        uniSP.Params.CreateParam(ftString,'v_is_cari',ptInput).AsString := '1'; // GANTI UNTUK MENDUKUNG JK NO BPKB BELUM ADA
        uniSP.Params.CreateParam(ftString,'v_cari',ptInput).AsString := uniSPTampil.FieldByName('NREG_BPKB').AsString; //uniSPTampil.FieldByName('NO_BPKB').AsString;
        uniSP.Params.CreateParam(ftString,'v_bbn',ptInput).AsString := '0';
        uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
        uniSP.Active := True;

        if uniSP.RecordCount > 0 then
        begin
          cxPageControl1.ActivePageIndex := 0;
          cxPageControl2.ActivePageIndex := 0;
          EnableKomponenRegister;
          eNoRangkaEntry.Enabled := True;
          eNoMesinEntry.Enabled := True;
          lStatusNOPOL.Caption := 'BLM TERPAKAI';
          lStatusNOPOL.Color := clBlue;
          vBPKB_ID := uniSP.FieldByName('BPKB_ID').Text;
          vHIST_ID := uniSP.FieldByName('CURRENT_HISTID').Text;
          eNoBPKBEntry.Text := uniSP.FieldByName('NO_BPKB').Text;
          eNRegBPKBEntry.Text := uniSP.FieldByName('NREG_BPKB').Text;
          eDikeluarkanEntry.Text := uniSP.FieldByName('TEMPAT_KELUAR').Text;
          dtTglEntry.Date := uniSP.FieldByName('TGL_BPKB').AsDateTime;
          eNoRangkaEntry.Text := uniSP.FieldByName('NO_RANGKA').Text;
          eNoMesinEntry.Text := uniSP.FieldByName('NO_MESIN').Text;

          if uniSP.FieldByName('MERK_NAMA').Value=Null then
          begin
            if cbMerkEntry.Text <> '' then
               if IsStrANumber2(cbMerkEntry.EditValue) <> True then
                  cbMerkEntry.Text := '';
          end
          else
          begin
            cbMerkEntry.ItemIndex := -1;
            cbMerkEntry.DoEditing;
            cbMerkEntry.EditText := uniSP.FieldByName('MERK_NAMA').Text;
            cbMerkEntry.PostEditValue;
          end;

          eTypeEntry.Text := uniSP.FieldByName('TIPE').Text;
          eType2Entry.Text := uniSP.FieldByName('TIPE2').Text;

          if uniSP.FieldByName('JENIS_NAMA').Value=Null then
          begin
            if cbJenisEntry.Text <> '' then
               if IsStrANumber2(cbJenisEntry.EditValue) <> True then
                  cbJenisEntry.Text := '';
          end
          else
          begin
            cbJenisEntry.ItemIndex := -1;
            cbJenisEntry.DoEditing;
            cbJenisEntry.EditText := uniSP.FieldByName('JENIS_NAMA').Text;
            cbJenisEntry.PostEditValue;
          end;

          if uniSP.FieldByName('MODEL_NAMA').Value = Null then
          begin
            if cbModelEntry.Text <> '' then
               if IsStrANumber2(cbModelEntry.EditValue) <> True then
                  cbModelEntry.Text := '';
          end
          else
          begin
            cbModelEntry.ItemIndex := -1;
            cbModelEntry.DoEditing;
            cbModelEntry.EditText := uniSP.FieldByName('MODEL_NAMA').Text;
            cbModelEntry.PostEditValue;
          end;

          if uniSP.FieldByName('THN_BUAT').Value = Null then
          begin
            if eThnBuatEntry.Text = '' then
               eThnBuatEntry.Text := '';
          end
          else
          begin
            eThnBuatEntry.Text := uniSP.FieldByName('THN_BUAT').Text;
          end;

          if uniSP.FieldByName('THN_RAKIT').Value = Null then
          begin
            if eThnRakitEntry.Text = '' then
               eThnRakitEntry.Text := '';
          end
          else
          begin
            eThnRakitEntry.Text := uniSP.FieldByName('THN_RAKIT').Text;
          end;

          if uniSP.FieldByName('VOL_SILINDER').Value = Null then
          begin
            if eSilinderEntry.Text = '' then
               eSilinderEntry.Text := '';
          end
          else
          begin
            eSilinderEntry.Text := uniSP.FieldByName('VOL_SILINDER').Text;
          end;

          if uniSP.FieldByName('WARNA_NAMA').Value = Null then
          begin
            if cbWarnaEntry.Text <> '' then
               if IsStrANumber2(cbWarnaEntry.EditValue) <> True then
                  cbWarnaEntry.Text := '';
          end
          else
          begin
            cbWarnaEntry.ItemIndex := -1;
            cbWarnaEntry.DoEditing;
            cbWarnaEntry.EditText := uniSP.FieldByName('WARNA_NAMA').Text;
            cbWarnaEntry.PostEditValue;
          end;

          if uniSP.FieldByName('JML_RODA').Value = Null then
          begin
            if eJmlRodaEntry.Text = '' then
               eJmlRodaEntry.Text := '';
          end
          else
          begin
            eJmlRodaEntry.Text := uniSP.FieldByName('JML_RODA').Text;
          end;

          if uniSP.FieldByName('JML_SUMBU').Value = Null then
          begin
            if eJmlSumbuEntry.Text = '' then
               eJmlSumbuEntry.Text := '';
          end
          else
          begin
            eJmlSumbuEntry.Text := uniSP.FieldByName('JML_SUMBU').Text;
          end;

          if uniSP.FieldByName('BB_NAMA').Value = Null then
          begin
            if IsStrANumber2(cbBahanBakarEntry.EditValue) <> True then
               cbBahanBakarEntry.Text := '';
          end
          else
          begin
            cbBahanBakarEntry.ItemIndex := -1;
            cbBahanBakarEntry.DoEditing;
            cbBahanBakarEntry.EditText := uniSP.FieldByName('BB_NAMA').Text;
            cbBahanBakarEntry.PostEditValue;
          end;

          enoTPTEntry.Text := uniSP.FieldByName('NO_TPT').Text;

          if uniSP.FieldByName('PRT_NAMA').Value = Null then
          begin
            if IsStrANumber2(cbPeruntukanEntry.EditValue) <> True then
               cbPeruntukanEntry.Text := '';
          end
          else
          begin
            cbPeruntukanEntry.ItemIndex := -1;
            cbPeruntukanEntry.DoEditing;
            cbPeruntukanEntry.EditText := uniSP.FieldByName('PRT_NAMA').Text;
            cbPeruntukanEntry.PostEditValue;
          end;

          eNoSUTEntry.Text := uniSP.FieldByName('NO_SUT').Text;

          if uniSP.FieldByName('WARNATNKB').Value = Null then
          begin
            if IsStrANumber2(cbWarnaTNKBEntry.EditValue) <> True then
               cbWarnaTNKBEntry.Text := '';
          end
          else
          begin
            cbWarnaTNKBEntry.ItemIndex := -1;
            cbWarnaTNKBEntry.DoEditing;
            cbWarnaTNKBEntry.EditText := uniSP.FieldByName('WARNATNKB').Text;
            cbWarnaTNKBEntry.PostEditValue;
          end;

          eNoIdentitasEntry.Text := uniSP.FieldByName('NO_IDENTITAS').Text;
          eNamaPemilikEntry.Text := uniSP.FieldByName('NAMA_PEMILIK').Text;
          eAlamatPemilikEntry.Text := uniSP.FieldByName('ALAMAT_PEMILIK').Text;
          eKdPOSEntry.Text := uniSP.FieldByName('KODE_POS').Text;
          ePonselEntry.Text := uniSP.FieldByName('NO_PONSEL').Text;
          ePekerjaanEntry.Text := uniSP.FieldByName('PEKERJAAN_PEMILIK').Text;

          if uniSP.FieldByName('WILAYAH_NAMA').Value = Null then
          begin
            if IsStrANumber2(cbWilayahEntry.EditValue) <> True then
               cbWilayahEntry.Text := '';
          end
          else
          begin
            cbWilayahEntry.ItemIndex := -1;
            cbWilayahEntry.DoEditing;
            cbWilayahEntry.EditText := uniSP.FieldByName('WILAYAH_NAMA').Text;
            cbWilayahEntry.PostEditValue;
          end;

          ePropinsi.Text := uniSP.FieldByName('PROP_ID').Text;
          eKabupaten.Text := uniSP.FieldByName('KAB_ID').Text;
          eKecamatan.Text := uniSP.FieldByName('KEC_ID').Text;
          eKelurahan.Text := uniSP.FieldByName('KEL_ID').Text;

          if uniSP.FieldByName('JD_NAMA').Value = Null then
          begin
            if IsStrANumber2(cbJnsDaftaranEntry.EditValue) <> True then
               cbJnsDaftaranEntry.Text := '';
          end
          else
          begin
            cbJnsDaftaranEntry.ItemIndex := -1;
            cbJnsDaftaranEntry.DoEditing;
            cbJnsDaftaranEntry.EditText := uniSP.FieldByName('JD_NAMA').Text;
            cbJnsDaftaranEntry.PostEditValue;
          end;

          eNoFakturEntry.Text := uniSP.FieldByName('NO_FAKTUR').Text;
          dtTglFakturEntry.Date := uniSP.FieldByName('TGL_FAKTUR').Value;
          eNoPabeanEntry.Text := uniSP.FieldByName('NO_PABEAN').Text;
          dtTglPabeanEntry.Text := uniSP.FieldByName('TGL_PABEAN').Text;
          ePelabuhanEntry.Text := uniSP.FieldByName('PELABUHAN').Text;
          eNoPIBEntry.Text := uniSP.FieldByName('NO_PIB').Text;
          dtTglPIBEntry.Text := uniSP.FieldByName('TGL_PIB').Text;

          if cbCaraImporEntry.Enabled = False then
          begin
            cbCaraImporEntry.Text := '';
          end
          else
          begin
            if uniSP.FieldByName('IMPMTHD_NAME').Value = Null then
            begin
              cbCaraImporEntry.EditValue := '';
              if IsStrANumber2(cbCaraImporEntry.EditValue) <> True then
                 cbCaraImporEntry.Text := '';
            end
            else
            begin
              cbCaraImporEntry.ItemIndex := -1;
              cbCaraImporEntry.DoEditing;
              cbCaraImporEntry.EditText := uniSP.FieldByName('IMPMTHD_NAME').Text;
              cbCaraImporEntry.PostEditValue;
            end;
          end;
          eNamaImportirEntry.Text := uniSP.FieldByName('NAMA_IMPORTIR').Text;
          eKetLainEntry.Text := uniSP.FieldByName('KETR_PABEAN').Text;

          if uniSP.FieldByName('PEMOHON_NAMA').Value = Null then
          begin
            if IsStrANumber2(cbPemohonEntry.EditValue) <> True then
               cbPemohonEntry.Text := '';
          end
          else
          begin
            cbPemohonEntry.ItemIndex := -1;
            cbPemohonEntry.DoEditing;
            cbPemohonEntry.EditText := uniSP.FieldByName('PEMOHON_NAMA').Text;
            cbPemohonEntry.PostEditValue;
          end;

          eResiPembayaran.Text := uniSP.FieldByName('BARCODE').Text;
          DataIn.Text := ParsingSTR(uniSP.FieldByName('NO_POLISI').Text,' ');

          if DataIn.Count > 2 then
          begin
            eNopolAwal.Text := DataIn.Strings[0];
            eNopolTengah.Text := DataIn.Strings[1];
            eNopolAkhir.Text := DataIn.Strings[2];
          end
          else
          begin
            eNopolAwal.Text := DataIn.Strings[0];
            eNopolTengah.Text := DataIn.Strings[1];
            eNopolAkhir.Text := '';
          end;

          {if uniSP.FieldByName('TPT_DAFTAR_STNK').Value=Null then
          begin
            if cbLokasiSTNK.Text <> '' then
               if IsStrANumber2(cbLokasiSTNK.EditValue) <> True then
                  cbLokasiSTNK.Text := '';
          end
          else
          begin
            cbLokasiSTNK.ItemIndex := -1;
            cbLokasiSTNK.DoEditing;
            cbLokasiSTNK.EditText := uniSP.FieldByName('TPT_DAFTAR_STNK').Text;
            cbLokasiSTNK.PostEditValue;
          end;

          if uniSP.FieldByName('TGL_DAFTAR_STNK').Value=Null then
             dtTglSTNK.Text := ''
          else
             dtTglSTNK.Date := uniSP.FieldByName('TGL_DAFTAR_STNK').Value;}

          fWait.Hide;
          Application.ProcessMessages;
          bSimpanEntry.Enabled := True;
          bBaruEntry.Enabled := True;
        end
        else
        begin
          fWait.Hide;
          MessageDlgWarning('Data Berkas Tidak ditemukan di Server!!!');
        end;
      except on E:Exception do
      begin
        fWait.Hide;
        ErrorProgDialog('Error,..bpkb_get_data.Open%Error :'+E.Message);
      end;
      end;
    finally
      FreeAndNil(uniSP);
    end;
  end
  else if uniSPTampil.FieldByName('BPKB_STATUS').AsString = '0'  then
  begin
    MessageDlgInformation('DATA TIDAK BISA DITAMPILKAN, "DATA BPKB '+uniSPTampil.FieldByName('NO_BPKB').AsString+' SUDAH TIDAK AKTIF"');
  end
  else if uniSPTampil.FieldByName('BPKB_STATUS').AsString = '2'  then
  begin
    MessageDlgInformation('DATA TIDAK BISA DITAMPILKAN, "DATA BPKB '+uniSPTampil.FieldByName('NO_BPKB').AsString+' DALAM KEADAAN BLOKIR"');
  end
  else if uniSPTampil.FieldByName('BPKB_STATUS').AsString = '3'  then
  begin
    MessageDlgInformation('DATA TIDAK BISA DITAMPILKAN, "DATA BPKB '+uniSPTampil.FieldByName('NO_BPKB').AsString+' SUDAH MUTASI LUAR DAERAH"');
  end;
end;

procedure TfRegistrasi.BPKBEdit;
var
  uniSP : TUniStoredProc;
begin
  try
    if MessageDlg('YAKIN DATA AKAN DIRUBAH ???',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      fWait.Show;
      Application.ProcessMessages;
      uniSP := TUniStoredProc.Create(Application);
      uniSP.Connection := DM.dbSrv;
      uniSP.Close;
      uniSP.StoredProcName := 'BPKB_EDIT3';
      try
        uniSP.Params.Clear;
        uniSP.Params.CreateParam(ftString,'vBPKB_ID',ptInput).AsInteger := StrToInt(vBPKB_ID);
        uniSP.Params.CreateParam(ftString,'vHIST_ID',ptInput).AsInteger := StrToInt(vHIST_ID);
        uniSP.Params.CreateParam(ftString,'vNO_BPKB',ptInput).AsString := eNoBPKBEntry.Text;
        uniSP.Params.CreateParam(ftString,'vTGL_BPKB',ptInput).AsDate := dtTglEntry.Date;
        uniSP.Params.CreateParam(ftString,'vTGL_FAKTUR',ptInput).AsDate := dtTglFakturEntry.Date;
        uniSP.Params.CreateParam(ftString,'vNO_RANGKA',ptInput).AsString := eNoRangkaEntry.Text;
        uniSP.Params.CreateParam(ftString,'vNO_MESIN',ptInput).AsString := eNoMesinEntry.Text;
        uniSP.Params.CreateParam(ftString,'vNO_POLISI',ptInput).AsString := Trim(eNopolAwal.Text+' '+eNopolTengah.Text+' '+eNopolAkhir.Text);
        uniSP.Params.CreateParam(ftString,'vTPT_DAFTAR_STNK',ptInput).AsString := eKabupaten.Text;
        //uniSP.Params.CreateParam(ftString,'vTGL_DAFTAR_STNK',ptInput).AsString := dtTglSTNK.Date;
        uniSP.Params.CreateParam(ftString,'vNREG_BPKB',ptInput).AsString := eNRegBPKBEntry.Text;
        if eJmlRodaEntry.Text = '' then
          uniSP.Params.CreateParam(ftString,'vJML_RODA',ptInput).AsInteger := 0
        else
          uniSP.Params.CreateParam(ftString,'vJML_RODA',ptInput).AsInteger := StrToInt(eJmlRodaEntry.Text);
        uniSP.Params.CreateParam(ftString,'vTHN_BUAT',ptInput).AsInteger := StrToInt(eThnBuatEntry.Text);
        uniSP.Params.CreateParam(ftString,'vTHN_RAKIT',ptInput).AsInteger := StrToInt(eThnRakitEntry.Text);
        if eJmlSumbuEntry.Text = '' then
          uniSP.Params.CreateParam(ftString,'vJML_SUMBU',ptInput).AsInteger := 0
        else
          uniSP.Params.CreateParam(ftString,'vJML_SUMBU',ptInput).AsInteger := StrToInt(eJmlSumbuEntry.Text);
        uniSP.Params.CreateParam(ftString,'vVOL_SILINDER',ptInput).AsFloat := StrToFloat(eSilinderEntry.Text);
        uniSP.Params.CreateParam(ftString,'vBB_ID',ptInput).AsInteger := cbBahanBakarEntry.EditValue;
        uniSP.Params.CreateParam(ftString,'vWARNA_ID',ptInput).AsInteger := cbWarnaEntry.EditValue;
        uniSP.Params.CreateParam(ftString,'vMERK_ID',ptInput).AsInteger := cbMerkEntry.EditValue;
        uniSP.Params.CreateParam(ftString,'vTIPE',ptInput).AsString := eTypeEntry.Text;
        uniSP.Params.CreateParam(ftString,'vTIPE2',ptInput).AsString := eType2Entry.Text;
        uniSP.Params.CreateParam(ftString,'vMODEL_ID',ptInput).AsInteger := cbModelEntry.EditValue;
        uniSP.Params.CreateParam(ftString,'vJENIS_ID',ptInput).AsInteger := cbJenisEntry.EditValue;
        uniSP.Params.CreateParam(ftString,'vNO_IDENTITAS',ptInput).AsString := eNoIdentitasEntry.Text;
        // update tgl 25/04/2014 untuk menghindari penulisan baris ke 2 kosong
        if eNamaPemilikEntry.Lines.Count = 2 then
        begin
          if Trim(eNamaPemilikEntry.Lines[1])='' then
             uniSP.Params.CreateParam(ftString,'vNAMA_PEMILIK',ptInput).AsString := Trim(StringReplace(eNamaPemilikEntry.Text, #13#10, '', [rfReplaceAll]))
          else
             uniSP.Params.CreateParam(ftString,'vNAMA_PEMILIK',ptInput).AsString := eNamaPemilikEntry.Text;
        end
        else
          uniSP.Params.CreateParam(ftString,'vNAMA_PEMILIK',ptInput).AsString := eNamaPemilikEntry.Text;
        uniSP.Params.CreateParam(ftString,'vNO_PONSEL',ptInput).AsString := ePonselEntry.Text;
        uniSP.Params.CreateParam(ftString,'vALAMAT_PEMILIK',ptInput).AsString := eAlamatPemilikEntry.Text;
        uniSP.Params.CreateParam(ftString,'vKEL_ID',ptInput).AsString := eKelurahan.Text;
        uniSP.Params.CreateParam(ftString,'vKEC_ID',ptInput).AsString := eKecamatan.Text;
        uniSP.Params.CreateParam(ftString,'vKAB_ID',ptInput).AsString := eKabupaten.Text;
        uniSP.Params.CreateParam(ftString,'vPROP_ID',ptInput).AsString := ePropinsi.Text;
        uniSP.Params.CreateParam(ftString,'vKODE_POS',ptInput).AsString := eKdPOSEntry.Text;
        uniSP.Params.CreateParam(ftString,'vWILAYAH_ID',ptInput).AsInteger := cbWilayahEntry.EditValue;
        uniSP.Params.CreateParam(ftString,'vPEKERJAAN_PEMILIK',ptInput).AsString := ePekerjaanEntry.Text;
        uniSP.Params.CreateParam(ftString,'vNO_UJI_TIPE',ptInput).AsString := eNoSUTEntry.Text;
        uniSP.Params.CreateParam(ftString,'vNO_UJI_BERKALA',ptInput).AsString := enoTPTEntry.Text;
        uniSP.Params.CreateParam(ftString,'vWARNATNKB_ID',ptInput).AsString := cbWarnaTNKBEntry.EditValue;
        uniSP.Params.CreateParam(ftString,'vTEMPAT_KELUAR',ptInput).AsString := eDikeluarkanEntry.Text;
        uniSP.Params.CreateParam(ftString,'vJD_ID',ptInput).AsString := cbJnsDaftaranEntry.EditValue;
        uniSP.Params.CreateParam(ftString,'vNO_PABEAN',ptInput).AsString := eNoPabeanEntry.Text;
        if dtTglPabeanEntry.Text = '' then
          uniSP.Params.CreateParam(ftString,'vTGL_PABEAN',ptInput).Clear
        else
          uniSP.Params.CreateParam(ftString,'vTGL_PABEAN',ptInput).AsDate := dtTglPabeanEntry.Date;
        uniSP.Params.CreateParam(ftString,'vPELABUHAN',ptInput).AsString := ePelabuhanEntry.Text;
        if (cbJnsDaftaranEntry.Text = 'CKD') or (cbJnsDaftaranEntry.Text = 'EX DUMP') then
          uniSP.Params.CreateParam(ftString,'vIMPMTHD_ID',ptInput).AsInteger := 0
        else
          uniSP.Params.CreateParam(ftString,'vIMPMTHD_ID',ptInput).AsInteger := cbCaraImporEntry.EditValue;
        uniSP.Params.CreateParam(ftString,'vNO_FAKTUR',ptInput).AsString := eNoFakturEntry.Text;
        uniSP.Params.CreateParam(ftString,'vNO_CKD',ptInput).AsString := '';
        uniSP.Params.CreateParam(ftString,'vKETR_PABEAN',ptInput).AsString := eKetLainEntry.Text;
        uniSP.Params.CreateParam(ftString,'vPRT_ID',ptInput).AsString := cbPeruntukanEntry.EditValue;
        uniSP.Params.CreateParam(ftString,'vNO_PIB',ptInput).AsString := eNoPIBEntry.Text;
        if dtTglPIBEntry.Text = '' then
          uniSP.Params.CreateParam(ftString,'vTGL_PIB',ptInput).Clear
        else
          uniSP.Params.CreateParam(ftString,'vTGL_PIB',ptInput).AsDate := dtTglPIBEntry.Date;
        uniSP.Params.CreateParam(ftString,'vNAMA_IMPORTIR',ptInput).AsString := eNamaImportirEntry.Text;
        uniSP.Params.CreateParam(ftString,'vPREVBPKB_ID',ptInput).AsString := '';
        uniSP.Params.CreateParam(ftString,'vNO_PREVBPKB',ptInput).AsString := '';
        uniSP.Params.CreateParam(ftString,'vTGL_PREVBPKB',ptInput).AsString := '';
        uniSP.Params.CreateParam(ftString,'vNREG_PREVBPKB',ptInput).AsString := '';
        uniSP.Params.CreateParam(ftString,'vTPT_KELUAR_PREVBPKB',ptInput).AsString := '';
        uniSP.Params.CreateParam(ftString,'vNAMA_PREVPEMILIK',ptInput).AsString := '';
        uniSP.Params.CreateParam(ftString,'vALAMAT_PREVPEMILIK',ptInput).AsString := '';
        uniSP.Params.CreateParam(ftString,'vSEBAB_TDKBERLAKU',ptInput).AsString := '';
        uniSP.Params.CreateParam(ftString,'vSEBAB_TDKBERLAKU_CODE',ptInput).AsInteger := 0;
        uniSP.Params.CreateParam(ftString,'vKPKMBR_ID',ptInput).AsInteger := cbPemohonEntry.EditValue;
        uniSP.Params.CreateParam(ftString,'vOP_ID',ptInput).AsInteger := StrToInt(vIDPetugas);
        uniSP.Params.CreateParam(ftString,'vNO_RESI_BAYAR',ptInput).AsString := eResiPembayaran.Text;
        uniSP.Params.CreateParam(ftString,'vPOLDA_ID',ptInput).AsString := vPOLDAID;
        uniSP.Params.CreateParam(ftString,'vPOLRES_ID',ptInput).AsString := vPOLRESID;
        uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
        uniSP.ExecProc;

        fWait.Hide;
        Application.ProcessMessages;
        if Pos('KESALAHAN',uniSP.Params.ParamValues['RESULT']) > 0 then
           MessageDlgError('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT'])
        else
           MessageDlgUpdate('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT']);
        bBaruEntry.Click;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..BPKB_EDIT.EXECPROG%Error :'+E.Message);
      end;
      end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfRegistrasi.cbSemuaClick(Sender: TObject);
begin
  if cbSemua.Checked = True then
  begin
    fWait.Label1.Caption := 'Tunggu Sebentar..';
    fWait.cxProgressBar1.Properties.Min := 0;
    fWait.cxProgressBar1.Properties.Max := 100;
    fWait.cxProgressBar1.Position := 0;
    fWait.Show;
    Application.ProcessMessages;
    with uniSPTampil do
    begin
      Active := False;
      StoredProcName := 'bpkb_get_register';
      try
        Params.Clear;
        Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
        Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
        Params.CreateParam(ftString,'v_tgl',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglRegister.Date); // bbn1
        Params.CreateParam(ftString,'v_operator_id',ptinput).AsString := ''; //vIDPetugas; // bbn1
        Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
        Open;
        fWait.Close;
        Application.ProcessMessages;
        //ShowMessage('Jumlah '+IntToStr(uniSPTampil.RecordCount));
        //Active := True;
        //DM.dbSrv.Commit;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..bpkb_get_register%Error '+E.Message);
      end;
      end;
    end;
  end;
end;

procedure TfRegistrasi.dbgDataDblClick(Sender: TObject);
begin
  eKelurahan.Text := Q2.FieldByName('keluarahan').AsString;
  eKecamatan.Text := Q2.FieldByName('kecamatan').AsString;
  eKabupaten.Text := Q2.FieldByName('kabupaten').AsString;
  ePropinsi.Text := Q2.FieldByName('propinsi').AsString;
  eKdPOSEntry.Text := Q2.FieldByName('kd_pos').AsString;
  pkdpos.Visible := False;
  ePonselEntry.SetFocus;
end;

procedure TfRegistrasi.dbgDataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    if dbgData.Columns.Grid.SelectedIndex = 4 then
    begin
      if Q2KELUARAHAN.AsString = '' then
      begin
        showmessage('NAMA KELURAHAN TIDAK BOLEH KOSONG !');
        dbgData.Columns[0].Field.FocusControl;
      end
      else if Q2KECAMATAN.AsString = '' then
      begin
        showmessage('NAMA KECAMATAN TIDAK BOLEH KOSONG !');
        dbgData.Columns[1].Field.FocusControl;
      end
      else if Q2KABUPATEN.AsString = '' then
      begin
        showmessage('NAMA KABUPATEN TIDAK BOLEH KOSONG !');
        dbgData.Columns[2].Field.FocusControl;
      end
      else if Q2PROPINSI.AsString = '' then
      begin
        showmessage('NAMA PROPINSI TIDAK BOLEH KOSONG !');
        dbgData.Columns[3].Field.FocusControl;
      end
      else
      begin
        Q2.Post;
        
        eKelurahan.Text := Q2.FieldByName('keluarahan').AsString;
        eKecamatan.Text := Q2.FieldByName('kecamatan').AsString;
        eKabupaten.Text := Q2.FieldByName('kabupaten').AsString;
        ePropinsi.Text := Q2.FieldByName('propinsi').AsString;
        eKdPOSEntry.Text := Q2.FieldByName('kd_pos').AsString;
        pkdpos.Visible := False;
        ePonselEntry.SetFocus;
      end;
    end
    else
    begin
      eKelurahan.Text := Q2.FieldByName('keluarahan').AsString;
      eKecamatan.Text := Q2.FieldByName('kecamatan').AsString;
      eKabupaten.Text := Q2.FieldByName('kabupaten').AsString;
      ePropinsi.Text := Q2.FieldByName('propinsi').AsString;
      eKdPOSEntry.Text := Q2.FieldByName('kd_pos').AsString;
      pkdpos.Visible := False;
      ePonselEntry.SetFocus;
    end;
  end;
end;

procedure TfRegistrasi.cxButton3Click(Sender: TObject);
begin
  RefreshCbPemohon;
end;

procedure TfRegistrasi.cxButton1Click(Sender: TObject);
var
   aForm : TfPemohon;
begin
  fWait.Show;
  fWait.cxProgressBar1.Visible := True;
  with fMain do
  begin
    pProses.Visible := False;
    pc_proses.Visible := True;

    if not IsFormOpen('fPemohon') then
    begin
      //Create a new tab sheet
      tabSheet[200] := TcxTabSheet.Create(pc_proses) ;
      tabSheet[200].PageControl := pc_proses;

      //create a form
      aForm := TfPemohon.Create(tabSheet[200]) ;
      aForm.Parent := tabSheet[200];
      aForm.Align := alClient;
      aForm.BorderStyle := bsNone;
      aForm.Visible := true;
      tabSheet[200].Caption := aForm.Caption;
      tabSheet[200].Name := 'fPemohon';

      //activate the sheet
      pc_proses.ActivePage := tabSheet[200];
    end
    else
    begin
      pc_proses.ActivePage := tabSheet[200];
    end;
  end;
end;

procedure TfRegistrasi.cxButton6Click(Sender: TObject);
begin
  pWarna.Visible := False;
end;

procedure TfRegistrasi.bBaruPendaftaranBBN1Click(Sender: TObject);
begin
  eInputWarna.Text := '';
end;

procedure TfRegistrasi.bSimpanClick(Sender: TObject);
begin
  if MessageDlg('Yakin warna '+eInputWarna.Text+' akan ditambahkan dalam database warna?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    with DM.Q do
    begin
      Close;
      SQL.Text := 'INSERT INTO M_WARNA(WARNA_NAMA) VALUES(:WARNA)';
      Params[0].AsString := eInputWarna.Text;
      Execute;
      RefreshCbWarna;
      MessageDlgInformation('DATA WARNA BERHASIL DISIMPAN');
    end;
  end;
end;

procedure TfRegistrasi.cxButton4Click(Sender: TObject);
begin
  RefreshCbWarna;
end;

procedure TfRegistrasi.cxButton5Click(Sender: TObject);
begin
  eInputWarna.Text := '';
  pWarna.Visible := True;
  pWarna.Left := 120;
  pWarna.Top := 144;
  eInputWarna.SetFocus;
end;

procedure TfRegistrasi.pWarnaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pWarna.Handle, wm_SysCommand,$f012,0);
end;

procedure TfRegistrasi.eInputWarnaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     bSimpan.Click;
end;

procedure TfRegistrasi.eResiPembayaranKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
     eNopolAwal.SetFocus;
  if Key = VK_F5 then
     eResiPembayaran.Text := CekNoRangkaPendaftaran(eNoRangkaEntry.Text);
end;

procedure TfRegistrasi.eNopolAwalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
     eNopolTengah.SetFocus;
end;

procedure TfRegistrasi.eNopolTengahKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
     eNopolAkhir.SetFocus;
end;

procedure TfRegistrasi.cxButton7Click(Sender: TObject);
begin
  RefreshCbModel;
end;

procedure TfRegistrasi.cxButton9Click(Sender: TObject);
begin
  pModel.Visible := False;
end;

procedure TfRegistrasi.cxButton8Click(Sender: TObject);
begin
  {with QJenis do
  begin
    Close;
    SQL.Text := 'SELECT to_char(JENIS_ID) as JENIS_ID,JENIS_NAMA FROM M_JENIS ORDER BY JENIS_NAMA';
    Open;
  end;

  with QWarnaKartu do
  begin
    Close;
    SQL.Text := 'SELECT to_char(WK_ID) AS WK_ID,WK_NAMA FROM M_WARNA_KARTU ORDER BY WK_NAMA';
    Open;
  end;}

  with qAddModel do
  begin
    Close;
    SQL.Text := 'SELECT A.MODEL_NAMA,A.JENIS_ID,A.WK_ID,B.JENIS_NAMA,C.WK_NAMA FROM M_MODEL A'+
                ' INNER JOIN M_JENIS B ON A.JENIS_ID=B.JENIS_ID'+
                ' INNER JOIN M_WARNA_KARTU C ON A.WK_ID=C.WK_ID'+
                ' ORDER BY A.MODEL_NAMA';
    Open;
  end;

  pModel.Visible := tRUE;
  pModel.Left := 120;
  pModel.Top := 144;
  eModelNama.SetFocus;
end;

procedure TfRegistrasi.CariDataKeATPM(vNoRangka: String);
begin

end;

function TfRegistrasi.ConnectServicePoldaMetro: boolean;
begin
  if GetAtpmDataService.SignIn('polda01','password',TSession) then
  begin
    Log('Connect Berhasil');
    Result := True;
  end
  else
  begin
    Log('Connect Gagal');
    Result := False;
  end;
end;

procedure TfRegistrasi.Button2Click(Sender: TObject);
begin
  if ConnectServicePoldaMetro then
     MessageDlgInformation('PROSES CONNECT BERHASIL, SID '+TSession);
end;

procedure TfRegistrasi.GetDataFakturForServicePoldaMetro(
  vNoRangka: String);
var
  tDataFaktur : DataRanmor;
  tTglFaktur,tTglPabean,tTglPib : TDateTime;
  tJmlRoda : String;
begin
  if GetAtpmDataService.GetDataRanmor(TSession,vNoRangka,tDataFaktur)=True then
  begin
    with tDataFaktur do
    begin
      // -- identitas kendaraan
      eNoMesinEntry.Text := NoMesin;
      if cbMerkEntry.Text = '' then
      begin
        if JumlahRoda <> '' then
        begin
          if StrToInt(JumlahRoda) > 2 then
             tJmlRoda := '4'
          else
             tJmlRoda := '2';

          cbMerkEntry.ItemIndex := -1;
          cbMerkEntry.DoEditing;
          cbMerkEntry.EditText := Merk+'  (R'+tJmlRoda+')';
          cbMerkEntry.PostEditValue;
        end
        else
        begin
          cbMerkEntry.ItemIndex := -1;
          cbMerkEntry.Text := '';
        end;
      end;
      eTypeEntry.Text := Tipe;
      eType2Entry.Text := '';

      if cbJenisEntry.Text = '' then
      begin
        cbJenisEntry.ItemIndex := -1;
        cbJenisEntry.DoEditing;
        cbJenisEntry.EditText := Jenis;
        cbJenisEntry.PostEditValue;
      end;
      if cbModelEntry.Text = '' then
      begin
        cbModelEntry.ItemIndex := -1;
        cbModelEntry.DoEditing;
        cbModelEntry.EditText := Model;
        cbModelEntry.PostEditValue;
      end;
      eThnBuatEntry.Text := TahunBuat;
      eThnRakitEntry.Text := TahunRakit;
      eSilinderEntry.Text := VolumeSilinder;
      if cbWarnaEntry.Text = '' then
      begin
        cbWarnaEntry.ItemIndex := -1;
        cbWarnaEntry.DoEditing;
        cbWarnaEntry.EditText := Warna;
        cbWarnaEntry.PostEditValue;
      end;
      eJmlRodaEntry.Text := JumlahRoda;
      eJmlSumbuEntry.Text := Sumbu;
      if cbBahanBakarEntry.Text = '' then
      begin
        cbBahanBakarEntry.ItemIndex := -1;
        cbBahanBakarEntry.DoEditing;
        cbBahanBakarEntry.EditText := Warna;
        cbBahanBakarEntry.PostEditValue;
      end;
      enoTPTEntry.Text := Tpt;
      eNoSUTEntry.Text := Sut;
      // -- identitas pemilik
      eNoIdentitasEntry.Text := NoIdentitas;
      eNamaPemilikEntry.Text := Trim(Pemilik1+' '+Pemilik2);
      eAlamatPemilikEntry.Text := Trim(Alamat1+' '+Alamat2+' '+Alamat3+' '+Alamat4);
      eKdPOSEntry.Text := KodePos;
      ePonselEntry.Text := NoPonsel;
      ePekerjaanEntry.Text := Pekerjaan;
      // -- identitas pabean
      eNoFakturEntry.Text := NoFaktur;
      if TglFaktur <> '' then
      begin
        tTglFaktur := StrToDate(TglFaktur,'YYYY-MM-DD');
        dtTglFakturEntry.Date := tTglFaktur;
      end
      else
        dtTglFakturEntry.Text := '';
      eNoPabeanEntry.Text := NoPabean;
      if TglPabean <> '' then
      begin
        tTglPabean := StrToDate(TglPabean,'YYYY-MM-DD');
        dtTglPabeanEntry.Date := tTglPabean;
      end
      else
        dtTglPabeanEntry.Text := '';
      eNamaImportirEntry.Text := NamaAtpm;
      eNoPIBEntry.Text := NoPib;
      if TglPib <> '' then
      begin
        tTglPib := StrToDate(TglPib,'YYYY-MM-DD');
        dtTglPIBEntry.Date := tTglPib;
      end
      else
        dtTglPIBEntry.Text := '';
    end;
    fWait.Close;
    Application.ProcessMessages;
  end
  else
  begin
    fWait.Close;
    Application.ProcessMessages;
    MessageDlgWarning('DATA TIDAK DITEMUKAN DI SERVER APM');
  end;
end;

procedure TfRegistrasi.RefreshCbJenisModel;
begin
  QJenisModel1.Close;
  QJenisModel1.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenisModel1.Open;

  QJenisModel2.Close;
  QJenisModel2.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenisModel2.Open;
end;

procedure TfRegistrasi.RefreshCbWarnaKartu;
begin
  QWarnaKartu1.Close;
  QWarnaKartu1.SQL.Text := 'select to_char(wk_id) as wk_id,wk_nama from m_warna_kartu order by wk_nama';
  QWarnaKartu1.Open;

  QWarnaKartu2.Close;
  QWarnaKartu2.SQL.Text := 'select to_char(wk_id) as wk_id,wk_nama from m_warna_kartu order by wk_nama';
  QWarnaKartu2.Open;
end;

procedure TfRegistrasi.cxButton11Click(Sender: TObject);
begin
  eModelNama.Text := '';
  cbJenisModel.Text := '';
  cbWarnaKartu.Text := '';
  eModelNama.SetFocus;
end;

procedure TfRegistrasi.cxButton10Click(Sender: TObject);
begin
  if eModelNama.Text <> '' then
  begin
    if IsStrANumber(cbJenisModel.EditValue) = True then
    begin
      if IsStrANumber(cbWarnaKartu.EditValue) = True then
      begin
        with DM.Q do
        begin
          Close;
          SQL.Text := 'SELECT COUNT(1) FROM M_MODEL WHERE MODEL_NAMA=:MODEL';
          Params[0].AsString := eModelNama.Text;
          Open;

          if Fields[0].AsInteger > 0 then
          begin
            MessageDlgError('PROSES PENAMBAHAN TIDAK BISA DILAKUKAN, NAMA MODEL ' +
              'SUDAH ADA DIDATABASE');
          end
          else
          begin
            Close;
            SQL.Text := 'INSERT INTO M_MODEL(MODEL_NAMA,JENIS_ID,WK_ID)'+
                        ' VALUES(:MODEL_NAMA,:JENIS_ID,:WK_ID)';
            Params[0].AsString := eModelNama.Text;
            Params[1].AsString := cbJenisModel.EditValue;
            Params[2].AsString := cbWarnaKartu.EditValue;
            Execute;

            MessageDlgInformation('PROSES PENYIMPANAN DATA BERHASIL');

            with qAddModel do
            begin
              Close;
              SQL.Text := 'SELECT A.MODEL_NAMA,A.JENIS_ID,A.WK_ID,B.JENIS_NAMA,C.WK_NAMA FROM M_MODEL A'+
                          ' INNER JOIN M_JENIS B ON A.JENIS_ID=B.JENIS_ID'+
                          ' INNER JOIN M_WARNA_KARTU C ON A.WK_ID=C.WK_ID'+
                          ' ORDER BY A.MODEL_NAMA';
              Open;
            end;
          end;
        end;
      end
      else
      begin
        MessageDlgError('WARNA KARTU HARUS DIPILIH');
        cbWarnaKartu.SetFocus;
      end;
    end
    else
    begin
      MessageDlgError('JENIS MODEL HARUS DIPILIH');
      cbJenisModel.SetFocus;
    end;
  end
  else
  begin
    MessageDlgError('NAMA MODEL HARUS DIISI');
    eModelNama.SetFocus;
  end;
end;

procedure TfRegistrasi.cbModelEntryPropertiesPopup(Sender: TObject);
begin
  cbModelEntry.Properties.ListSource.DataSet.Filter := 'JENIS_ID='+cbJenisEntry.EditValue;
  cbModelEntry.Properties.ListSource.DataSet.Filtered := True;
end;

procedure TfRegistrasi.cbJenisEntryPropertiesChange(Sender: TObject);
begin
  cbModelEntry.Text := '';
end;

procedure TfRegistrasi.pModelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pModel.Handle, wm_SysCommand,$f012,0);
end;

procedure TfRegistrasi.cxButton12Click(Sender: TObject);
begin
  RefreshCbWilayah;
end;

procedure TfRegistrasi.cxButton14Click(Sender: TObject);
begin
  pWilayah.Visible := False;
end;

procedure TfRegistrasi.cxButton15Click(Sender: TObject);
begin
  eWilayahTambah.Text := '';
  eWilayahTambah.SetFocus;
end;

procedure TfRegistrasi.pWilayahMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pWilayah.Handle, wm_SysCommand,$f012,0);
end;

procedure TfRegistrasi.cxButton16Click(Sender: TObject);
var
  temp : string;
begin
  if eWilayahTambah.Text <> '' then
  begin
    if MessageDlg('YAKIN DATA WILAYAH AKAN DITAMBAHKAN?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      with DM.Q do
      begin
        Close;
        SQL.Text := 'SELECT NVL(MAX(WILAYAH_KODE),0) + 1 AS JML FROM M_WILAYAH';
        Open;
        if recordcount > 0 then
        begin
          temp := Fields[0].AsString;
          Close;
          SQL.Text := 'INSERT INTO M_WILAYAH(WILAYAH_NAMA,WILAYAH_KODE,WC_ID)'+
                      ' VALUES(:WILAYAH_NAMA,:WILAYAH_KODE,:WC_ID)';
          try
            Params[0].AsString := eWilayahTambah.Text;
            Params[1].AsString := temp;
            Params[2].AsString := '1';
            Execute;
            MessageDlgInformation('DATA BERHASIL DISIMPAN');
            RefreshCbWilayah;
          except on E: Exception do
          begin
            ErrorProgDialog('Error... Tambah wilayah '+E.Message);
          end;
          end;
        end
        else
        begin
          MessageDlgInformation('DATA TIDAK ADA, HUBUNGI ADMINISTRATOR UNTU TAMBAHKAN SECARA MANUAL DIDATABASE');
        end;
      end;
    end;
  end
  else
  begin
    MessageDlgError('DATA WILAYAH HARUS DIISI');
    eWilayahTambah.SetFocus;
  end;
end;

procedure TfRegistrasi.cxButton13Click(Sender: TObject);
begin
  eWilayahTambah.Text := '';
  pWilayah.Visible := tRUE;
  pWilayah.Left := 120;
  pWilayah.Top := 144;
  eWilayahTambah.SetFocus;
end;

procedure TfRegistrasi.cxButton17Click(Sender: TObject);
begin
  RefreshCbMerk;
end;

procedure TfRegistrasi.cxButton18Click(Sender: TObject);
begin
  RefreshCbJenis;
end;

procedure TfRegistrasi.cxButton19Click(Sender: TObject);
begin
  RefreshCbBahanBakar;
end;

procedure TfRegistrasi.cxButton20Click(Sender: TObject);
begin
  RefreshCbPeruntukan;
end;

procedure TfRegistrasi.cxButton21Click(Sender: TObject);
begin
  RefreshCbWarnaTNKB;
end;

procedure TfRegistrasi.cxButton22Click(Sender: TObject);
begin
  RefreshCbJenisDaftar;
end;

procedure TfRegistrasi.cxButton23Click(Sender: TObject);
begin
  RefreshCbCaraImpor;
end;

procedure TfRegistrasi.Button3Click(Sender: TObject);
begin
  if ConnectServicePoldaMetro then
     GetDataFakturForServicePoldaMetro(eNoBarcode.Text);
end;

procedure TfRegistrasi.CariDataFakturCF(vCari: String);
var
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv2;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_get_data_faktur';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_no_rangka',ptInput).AsString := vCari;
      uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      uniSP.Active := True;

      if uniSP.RecordCount > 0 then
      begin
        eNoMesinEntry.Text := uniSP.FieldByName('NO_MESIN').Text;

        if uniSP.FieldByName('MERK_NAMA').Value=Null then
        begin
          if cbMerkEntry.Text <> '' then
             if IsStrANumber2(cbMerkEntry.EditValue) <> True then
                cbMerkEntry.Text := '';
        end
        else
        begin
          cbMerkEntry.ItemIndex := -1;
          cbMerkEntry.DoEditing;
          cbMerkEntry.EditText := CekMerk(uniSP.FieldByName('MERK_NAMA').Text); //uniSP.FieldByName('MERK_NAMA').Text;
          cbMerkEntry.PostEditValue;
        end;
        eTypeEntry.Text := uniSP.FieldByName('TIPE').Text;
        eType2Entry.Text := '';

        if uniSP.FieldByName('JENIS_NAMA').Value=Null then
        begin
          if cbJenisEntry.Text <> '' then
             if IsStrANumber2(cbJenisEntry.EditValue) <> True then
                cbJenisEntry.Text := '';
        end
        else
        begin
          cbJenisEntry.ItemIndex := -1;
          cbJenisEntry.DoEditing;
          cbJenisEntry.EditText := uniSP.FieldByName('JENIS_NAMA').Text;
          cbJenisEntry.PostEditValue;
        end;

        if uniSP.FieldByName('MODEL_NAMA').Value = Null then
        begin
          if cbModelEntry.Text <> '' then
             if IsStrANumber2(cbModelEntry.EditValue) <> True then
                cbModelEntry.Text := '';
        end
        else
        begin
          cbModelEntry.ItemIndex := -1;
          cbModelEntry.DoEditing;
          cbModelEntry.EditText := uniSP.FieldByName('MODEL_NAMA').Text;
          cbModelEntry.PostEditValue;
        end;

        if uniSP.FieldByName('THN_BUAT').Value = Null then
        begin
          if eThnBuatEntry.Text = '' then
             eThnBuatEntry.Text := '';
        end
        else
        begin
          eThnBuatEntry.Text := uniSP.FieldByName('THN_BUAT').Text;
        end;

        if uniSP.FieldByName('THN_RAKIT').Value = Null then
        begin
          if eThnRakitEntry.Text = '' then
             eThnRakitEntry.Text := '';
        end
        else
        begin
          eThnRakitEntry.Text := uniSP.FieldByName('THN_RAKIT').Text;
        end;

        if uniSP.FieldByName('VOL_SILINDER').Value = Null then
        begin
          if eSilinderEntry.Text = '' then
             eSilinderEntry.Text := '';
        end
        else
        begin
          eSilinderEntry.Text := uniSP.FieldByName('VOL_SILINDER').Text;
        end;

        cbWarnaEntry.ItemIndex := -1;
        cbWarnaEntry.DoEditing;
        cbWarnaEntry.EditText := uniSP.FieldByName('WARNA_NAMA').Text;
        cbWarnaEntry.PostEditValue;

        if uniSP.FieldByName('JML_RODA').Value = Null then
        begin
          if eJmlRodaEntry.Text = '' then
             eJmlRodaEntry.Text := '';
        end
        else
        begin
          eJmlRodaEntry.Text := uniSP.FieldByName('JML_RODA').Text;
        end;

        if uniSP.FieldByName('JML_SUMBU').Value = Null then
        begin
          if eJmlSumbuEntry.Text = '' then
             eJmlSumbuEntry.Text := '';
        end
        else
        begin
          eJmlSumbuEntry.Text := uniSP.FieldByName('JML_SUMBU').Text;
        end;

        if uniSP.FieldByName('BB_NAMA').Value = Null then
        begin
          if IsStrANumber2(cbBahanBakarEntry.EditValue) <> True then
             cbBahanBakarEntry.Text := '';
        end
        else
        begin
          cbBahanBakarEntry.ItemIndex := -1;
          cbBahanBakarEntry.DoEditing;
          cbBahanBakarEntry.EditText := uniSP.FieldByName('BB_NAMA').Text;
          cbBahanBakarEntry.PostEditValue;
        end;

        enoTPTEntry.Text := uniSP.FieldByName('NO_UJI_BERKALA').Text;
        eNoSUTEntry.Text := uniSP.FieldByName('NO_UJI_TIPE').Text;
        eNoIdentitasEntry.Text := uniSP.FieldByName('NO_IDENTITAS').Text;
        eNamaPemilikEntry.Text := uniSP.FieldByName('NAMA_PEMILIK').Text;
        
        eAlamatPemilikEntry.Text := uniSP.FieldByName('ALAMAT_PEMILIK').Text;
        eKdPOSEntry.Text := uniSP.FieldByName('KODE_POS').Text;
        ePonselEntry.Text := uniSP.FieldByName('NO_PONSEl').Text;
        ePekerjaanEntry.Text := uniSP.FieldByName('PEKERJAAN_PEMILIK').Text;
        cbWilayahEntry.Text := '';
        cbJnsDaftaranEntry.Text := '';
        eNoFakturEntry.Text := uniSP.FieldByName('NO_FAKTUR').Text;
        if uniSP.FieldByName('TGL_FAKTUR').Value = Null then
           dtTglFakturEntry.Text := ''
        else
           dtTglFakturEntry.Date := uniSP.FieldByName('TGL_FAKTUR').Value;
        eNoPabeanEntry.Text := '';
        dtTglPabeanEntry.Text := '';
        ePelabuhanEntry.Text := '';
        eNoPIBEntry.Text := uniSP.FieldByName('NO_PABEAN').Text;
        dtTglPIBEntry.Text := '';
        eNamaImportirEntry.Text := CekATPMID(uniSP.FieldByName('MERK_NAMA').Text);
        cbCaraImporEntry.Text := '';
        eNamaImportirEntry.Text := '';
        eKetLainEntry.Text := '';
        CariDataPemohon(eNoRangkaEntry.Text);
        //cbPemohonEntry.Text := uniSP.FieldByName('PEMOHON_NAMA').Value;
        eResiPembayaran.Text := uniSP.FieldByName('BARCODE').Value;
        eNopolAwal.Text := '';
        eNopolTengah.Text := '';
        eNopolAkhir.Text := '';
        eNoBPKBPertama.Text := '';
        dtTglPertama.Text := '';
        eNRegBPKBPertama.Text := '';
        eTempatKeluarPertama.Text := '';
        eNamaPemilikPertama.Text := '';
        eAlamatPertama.Text := '';
        cbSbbTdkBerlaku.Text := '';
        FWait.Hide;
        Application.ProcessMessages;
        eNoMesinEntry.SetFocus;
      end
      else
      begin
        CariDataPemohon(eNoRangkaEntry.Text);
        FWait.Hide;
        Application.ProcessMessages;
        MessageDlgInformation('DATA TIDAK DITEMUKAN, ENTRY SECARA MANUAL');
        cxPageControl2.ActivePage := cxTabSheet3;
        eNoBPKBEntry.SetFocus;
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..CariDataFaktur.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfRegistrasi.Data2D;
var
  SData : TStringList;
  vTempStr : String;
  Thn,Bln,Hr : Word;
  TglData : TDateTime;
begin
  try
    SData := TStringList.Create;
    SData.Clear;
    SData.Text := ParsingStr(DecryptText('upixu',eNoRangkaEntry.Text),'#');
    eNoRangkaEntry.Text := SData.Strings[0];
    eNoMesinEntry.Text := SData.Strings[1];
    eNoFakturEntry.Text := SData.Strings[2];

    vTempStr := SData.Strings[3];
    Thn := StrToInt(Copy(vTempStr,1,4));
    Bln := StrToInt(Copy(vTempStr,6,2));
    hr := StrToInt(Copy(vTempStr,9,2));
    TglData := EncodeDate(Thn,Bln,Hr);
    dtTglFakturEntry.Date := TglData;
    eTypeEntry.Text := SData.Strings[4];
    eType2Entry.Text := '';
    cbModelEntry.Text := SData.Strings[5];
    cbJenisEntry.Text := SData.Strings[6];
    cbWarnaEntry.Text := SData.Strings[7];
    eSilinderEntry.Text := SData.Strings[8];
    eThnBuatEntry.Text := SData.Strings[9];
    eThnRakitEntry.Text := SData.Strings[10];
    cbMerkEntry.Text := CekMerk(SData.Strings[11]);
    cbBahanBakarEntry.Text := SData.Strings[12];
    eNamaPemilikEntry.Text := SData.Strings[15];
    eAlamatPemilikEntry.Text := SData.Strings[16];
    eKdPOSEntry.Text := SData.Strings[17];
    eNoIdentitasEntry.Text := SData.Strings[18];
    ePonselEntry.Text := SData.Strings[20];
    ePekerjaanEntry.Text := SData.Strings[22];
    eJmlRodaEntry.Text := SData.Strings[23];
    eJmlSumbuEntry.Text := SData.Strings[24];
  finally
    FreeAndNil(SData);
  end;
end;

function TfRegistrasi.CekMerk(vMerk: String): String;
begin
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT MERK_NAMA_R FROM M_MERK WHERE MERK_NAMA LIKE :NAMA AND ROWNUM=1 ORDER BY MERK_ID';
    try
      Params[0].AsString := '%'+vMerk+'%';
      Open;
      if recordcount > 0 then
         Result := Fields[0].AsString
      else
         Result := vMerk;
    except on E: Exception do
    begin
      ErrorProgDialog('Error... '+E.Message);
    end;
    end;
  end;
end;

function TfRegistrasi.CekATPMID(vMerk: String): String;
begin
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT A.ATPM_NAMA FROM M_MERK M'+
                ' LEFT JOIN M_ATPM A ON A.ATPM_ID=M.ATPM_ID'+
                ' WHERE M.MERK_NAMA_R LIKE :NAMA AND ROWNUM=1 ORDER BY M.MERK_ID';
    try
      Params[0].AsString := '%'+vMerk+'%';
      Open;
      if recordcount > 0 then
         Result := Fields[0].AsString
      else
         Result := vMerk;
    except on E: Exception do
    begin
      ErrorProgDialog('Error... '+E.Message);
    end;
    end;
  end;
end;

procedure TfRegistrasi.CariDataFakturAPM(vJenis, vCari: String);
var
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv2;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_get_data_faktur_apm';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_no_rangka',ptInput).AsString := vCari;
      uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      uniSP.Active := True;

      if uniSP.RecordCount > 0 then
      begin
        eNoMesinEntry.Text := uniSP.FieldByName('NO_MESIN').Text;

        if uniSP.FieldByName('MERK_NAMA').Value=Null then
        begin
          if cbMerkEntry.Text <> '' then
             if IsStrANumber2(cbMerkEntry.EditValue) <> True then
                cbMerkEntry.Text := '';
        end
        else
        begin
          cbMerkEntry.ItemIndex := -1;
          cbMerkEntry.DoEditing;
          cbMerkEntry.EditText := CekMerk(uniSP.FieldByName('MERK_NAMA').Text); //uniSP.FieldByName('MERK_NAMA').Text;
          cbMerkEntry.PostEditValue;
        end;
        eTypeEntry.Text := uniSP.FieldByName('TIPE').Text;
        eType2Entry.Text := '';

        if uniSP.FieldByName('JENIS_NAMA').Value=Null then
        begin
          if cbJenisEntry.Text <> '' then
             if IsStrANumber2(cbJenisEntry.EditValue) <> True then
                cbJenisEntry.Text := '';
        end
        else
        begin
          cbJenisEntry.ItemIndex := -1;
          cbJenisEntry.DoEditing;
          cbJenisEntry.EditText := uniSP.FieldByName('JENIS_NAMA').Text;
          cbJenisEntry.PostEditValue;
        end;

        if uniSP.FieldByName('MODEL_NAMA').Value = Null then
        begin
          if cbModelEntry.Text <> '' then
             if IsStrANumber2(cbModelEntry.EditValue) <> True then
                cbModelEntry.Text := '';
        end
        else
        begin
          cbModelEntry.ItemIndex := -1;
          cbModelEntry.DoEditing;
          cbModelEntry.EditText := uniSP.FieldByName('MODEL_NAMA').Text;
          cbModelEntry.PostEditValue;
        end;

        if uniSP.FieldByName('THN_BUAT').Value = Null then
        begin
          if eThnBuatEntry.Text = '' then
             eThnBuatEntry.Text := '';
        end
        else
        begin
          eThnBuatEntry.Text := uniSP.FieldByName('THN_BUAT').Text;
        end;

        if uniSP.FieldByName('THN_RAKIT').Value = Null then
        begin
          if eThnRakitEntry.Text = '' then
             eThnRakitEntry.Text := '';
        end
        else
        begin
          eThnRakitEntry.Text := uniSP.FieldByName('THN_RAKIT').Text;
        end;

        if uniSP.FieldByName('VOL_SILINDER').Value = Null then
        begin
          if eSilinderEntry.Text = '' then
             eSilinderEntry.Text := '';
        end
        else
        begin
          eSilinderEntry.Text := uniSP.FieldByName('VOL_SILINDER').Text;
        end;

        cbWarnaEntry.ItemIndex := -1;
        cbWarnaEntry.DoEditing;
        cbWarnaEntry.EditText := uniSP.FieldByName('WARNA_NAMA').Text;
        cbWarnaEntry.PostEditValue;

        if uniSP.FieldByName('JML_RODA').Value = Null then
        begin
          if eJmlRodaEntry.Text = '' then
             eJmlRodaEntry.Text := '';
        end
        else
        begin
          eJmlRodaEntry.Text := uniSP.FieldByName('JML_RODA').Text;
        end;

        if uniSP.FieldByName('JML_SUMBU').Value = Null then
        begin
          if eJmlSumbuEntry.Text = '' then
             eJmlSumbuEntry.Text := '';
        end
        else
        begin
          eJmlSumbuEntry.Text := uniSP.FieldByName('JML_SUMBU').Text;
        end;

        if uniSP.FieldByName('BB_NAMA').Value = Null then
        begin
          if IsStrANumber2(cbBahanBakarEntry.EditValue) <> True then
             cbBahanBakarEntry.Text := '';
        end
        else
        begin
          cbBahanBakarEntry.ItemIndex := -1;
          cbBahanBakarEntry.DoEditing;
          cbBahanBakarEntry.EditText := uniSP.FieldByName('BB_NAMA').Text;
          cbBahanBakarEntry.PostEditValue;
        end;

        enoTPTEntry.Text := uniSP.FieldByName('NO_UJI_BERKALA').Text;
        eNoSUTEntry.Text := uniSP.FieldByName('NO_UJI_TIPE').Text;
        eNoIdentitasEntry.Text := uniSP.FieldByName('NO_IDENTITAS').Text;
        eNamaPemilikEntry.Text := uniSP.FieldByName('NAMA_PEMILIK').Text;
        
        eAlamatPemilikEntry.Text := uniSP.FieldByName('ALAMAT_PEMILIK').Text;
        eKdPOSEntry.Text := uniSP.FieldByName('KODE_POS').Text;
        ePonselEntry.Text := uniSP.FieldByName('NO_PONSEl').Text;
        ePekerjaanEntry.Text := uniSP.FieldByName('PEKERJAAN_PEMILIK').Text;
        cbWilayahEntry.Text := '';
        cbJnsDaftaranEntry.Text := '';
        eNoFakturEntry.Text := uniSP.FieldByName('NO_FAKTUR').Text;
        if uniSP.FieldByName('TGL_FAKTUR').Value = Null then
           dtTglFakturEntry.Text := ''
        else
           dtTglFakturEntry.Date := uniSP.FieldByName('TGL_FAKTUR').Value;
        eNoPabeanEntry.Text := '';
        dtTglPabeanEntry.Text := '';
        ePelabuhanEntry.Text := '';
        eNoPIBEntry.Text := uniSP.FieldByName('NO_PABEAN').Text;
        dtTglPIBEntry.Text := '';
        eNamaImportirEntry.Text := CekATPMID(uniSP.FieldByName('MERK_NAMA').Text);
        cbCaraImporEntry.Text := '';
        eNamaImportirEntry.Text := '';
        eKetLainEntry.Text := '';
        cbPemohonEntry.Text := ''; //uniSP.FieldByName('PEMOHON_NAMA').Value;
        eResiPembayaran.Text := uniSP.FieldByName('BARCODE').Value;
        eNopolAwal.Text := '';
        eNopolTengah.Text := '';
        eNopolAkhir.Text := '';
        eNoBPKBPertama.Text := '';
        dtTglPertama.Text := '';
        eNRegBPKBPertama.Text := '';
        eTempatKeluarPertama.Text := '';
        eNamaPemilikPertama.Text := '';
        eAlamatPertama.Text := '';
        cbSbbTdkBerlaku.Text := '';
        FWait.Hide;
        Application.ProcessMessages;
        eNoMesinEntry.SetFocus;
      end
      else
      begin
        FWait.Hide;
        Application.ProcessMessages;
        MessageDlgInformation('DATA TIDAK DITEMUKAN, ENTRY SECARA MANUAL');
        cxPageControl2.ActivePage := cxTabSheet3;
        eNoBPKBEntry.SetFocus;
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..CariDataFaktur.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

function TfRegistrasi.CekNoRangkaPendaftaran(vNoRangka: String): String;
begin
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT A.BARCODE FROM T_PAYMENT2 A'+
                ' INNER JOIN T_PENDAFTARAN2 B ON A.DAFT_ID=B.DAFT_ID'+
                ' WHERE B.NO_RANGKA=:NORANGKA AND B.DUP_NR_COUNT=0';
    try
      Params[0].AsString := vNoRangka;
      Open;
      if recordcount > 0 then
         Result := Fields[0].AsString
      else
         Result := '';
    except on E: Exception do
    begin
      ErrorProgDialog('Error... SELECT T_PAYMENT2..'+E.Message);
    end;
    end;
  end;
end;

procedure TfRegistrasi.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if (ARecord is TcxGridDataRow) and (ARecord.Values[15] <> '1') then
      AStyle := DM.cxStyleRead;
end;

procedure TfRegistrasi.cxButton24Click(Sender: TObject);
begin
  eResiPembayaran.Text := CekNoRangkaPendaftaran(eNoRangkaEntry.Text);
end;

procedure TfRegistrasi.cbFromSTNKClick(Sender: TObject);
begin
  if (eNopolAwal.Text <> '') and (eNopolTengah.Text <> '') then
  begin
    if cbFromSTNK.Checked=True then
    begin
      lStatusNOPOL.Caption := 'BLM TERPAKAI';
    end
    else
    begin
      lStatusNOPOL.Caption := 'SUDAH TERPAKAI';
    end;
  end
  else
  begin
    
  end;
end;

procedure TfRegistrasi.cbJenisEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
     RefreshCbJenis;
  if key = 13 then
     eTypeEntry.SetFocus;
end;

procedure TfRegistrasi.cbModelEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
     RefreshCbModel;
  if key = 13 then
     eSilinderEntry.SetFocus
end;

procedure TfRegistrasi.cbWarnaEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
     RefreshCbWarna;
  if key = 13 then
     cbPeruntukanEntry.SetFocus
end;

procedure TfRegistrasi.cbWarnaTNKBEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F5 then
     RefreshCbWarnaTNKB;
  if key = 13 then
     eNoSUTEntry.SetFocus
end;

procedure TfRegistrasi.cbWilayahEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F5 then
     RefreshCbWilayah;
  if Key = 13 then
  begin
     cxPageControl2.ActivePageIndex := 2;
     cbJnsDaftaranEntry.SetFocus;
  end;
end;

procedure TfRegistrasi.cbJnsDaftaranEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F5 then
     RefreshCbJenisDaftar;
end;

procedure TfRegistrasi.cbCaraImporEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F5 then
     RefreshCbCaraImpor;
end;

procedure TfRegistrasi.cbPemohonEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
//var
   //aForm : TfPemohon;
begin
  if Key = VK_F5 then
     RefreshCbPemohon;
  {if Key = VK_INSERT then
  begin
    fWait.Show;
    fWait.cxProgressBar1.Visible := True;
    with fMain do
    begin
      pProses.Visible := False;
      pc_proses.Visible := True;

      if not IsFormOpen('fPemohon') then
      begin
        //Create a new tab sheet
        tabSheet[200] := TcxTabSheet.Create(pc_proses) ;
        tabSheet[200].PageControl := pc_proses;

        //create a form
        aForm := TfPemohon.Create(tabSheet[200]) ;
        aForm.Parent := tabSheet[200];
        aForm.Align := alClient;
        aForm.BorderStyle := bsNone;
        aForm.Visible := true;
        tabSheet[200].Caption := aForm.Caption;
        tabSheet[200].Name := 'fPemohon';

        //activate the sheet
        pc_proses.ActivePage := tabSheet[200];
      end
      else
      begin
        pc_proses.ActivePage := tabSheet[200];
      end;
    end;
  end;}
end;

procedure TfRegistrasi.RefreshCbPekerjaan;
begin
  QPekerjaan1.Close;
  QPekerjaan1.SQL.Text := 'select PEKERJAAN_NAMA from m_pekerjaan order by PEKERJAAN_NAMA';
  QPekerjaan1.Open;

  QPekerjaan2.Close;
  QPekerjaan2.SQL.Text := 'select PEKERJAAN_NAMA from m_pekerjaan order by PEKERJAAN_NAMA';
  QPekerjaan2.Open;
end;

procedure TfRegistrasi.cxButton25Click(Sender: TObject);
begin
  RefreshCbPekerjaan;
end;

procedure TfRegistrasi.cbPekerjaanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
     RefreshCbPekerjaan;
  if Key = 13 then
     cbWilayahEntry.SetFocus;
end;

procedure TfRegistrasi.FormActivate(Sender: TObject);
begin
  //rbBerkasBarcode.Checked := True;
  //eNoBarcode.SetFocus;
  if cxPageControl1.ActivePageIndex=0 then
  begin
    if isKeyBarcode = '0' then
    begin
       rbBerkasBarcode.Checked := True;
       eNoBarcode.SetFocus;
    end
    else
    begin
       rbNoBPKB.Checked := True;
       eNoBPKB.SetFocus;
    end;
  end;
end;

procedure TfRegistrasi.RefreshCbLokasiSTNK;
begin
  QLokasiSTNK1.Close;
  QLokasiSTNK1.SQL.Text := 'select to_char(no_kab) as no_kab,nama_kab from m_kabupaten where no_prop=:no_prop53 order by nama_kab';
  QLokasiSTNK1.Params[0].AsInteger := vKodeProp;
  QLokasiSTNK1.Open;

  QLokasiSTNK2.Close;
  QLokasiSTNK2.SQL.Text := 'select to_char(no_kab) as no_kab,nama_kab from m_kabupaten where no_prop=:no_prop53 order by nama_kab';
  QLokasiSTNK2.Params[0].AsInteger := vKodeProp;
  QLokasiSTNK2.Open;
end;

procedure TfRegistrasi.cbLokasiSTNKKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
     RefreshCbLokasiSTNK;
end;

function TfRegistrasi.CekFalidasiNOPOL(vKDWilayah,
  vKabupaten: String): Boolean;
begin
  Result := False;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT COUNT(*) FROM T_NOPOL_KDWIL2 WHERE KODE_WIL=:KDWIL AND KABUPATEN LIKE :KABUPATEN';
    try
      Params[0].AsString := vKDWilayah;
      Params[1].AsString := '%'+vKabupaten+'%';
      Open;
      if Fields[0].AsInteger > 0 then
         Result := True
      else
         Result := False;
    except on E: Exception do
    begin
      ErrorProgDialog('Error... Select t_nopol_kdwil2. Ket error '+E.Message);
    end;
    end;
  end;
end;

procedure TfRegistrasi.eType2EntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     cbModelEntry.SetFocus;
end;

procedure TfRegistrasi.GetDataForVerifikasi(vData : String);
var
  uniSP : TUniStoredProc;
  DataIn : TStringList;
begin
  try
    isEdit := '1';
    DataIn := TStringList.Create;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_get_data';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftstring,'v_polda_id',ptinput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'v_is_cari',ptInput).AsString := '0'; // GANTI UNTUK MENDUKUNG JK NO BPKB BELUM ADA
      uniSP.Params.CreateParam(ftString,'v_cari',ptInput).AsString := vData;
      uniSP.Params.CreateParam(ftString,'v_bbn',ptInput).AsString := '0';
      uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      uniSP.Active := True;

      if uniSP.RecordCount > 0 then
      begin
        cxPageControl1.ActivePageIndex := 0;
        cxPageControl2.ActivePageIndex := 0;
        EnableKomponenRegister;
        eNoRangkaEntry.Enabled := True;
        eNoMesinEntry.Enabled := True;
        lStatusNOPOL.Caption := 'BLM TERPAKAI';
        lStatusNOPOL.Color := clBlue;
        vBPKB_ID := uniSP.FieldByName('BPKB_ID').Text;
        vHIST_ID := uniSP.FieldByName('CURRENT_HISTID').Text;
        eNoBPKBEntry.Enabled := False;
        eNoBPKBEntry.Text := uniSP.FieldByName('NO_BPKB').Text;
        eNRegBPKBEntry.Enabled := False;
        eNRegBPKBEntry.Text := uniSP.FieldByName('NREG_BPKB').Text;
        eDikeluarkanEntry.Enabled := False;
        eDikeluarkanEntry.Text := uniSP.FieldByName('TEMPAT_KELUAR').Text;
        dtTglEntry.Enabled := False;
        dtTglEntry.Date := uniSP.FieldByName('TGL_BPKB').AsDateTime;
        eNoRangkaEntry.Text := uniSP.FieldByName('NO_RANGKA').Text;
        eNoMesinEntry.Text := uniSP.FieldByName('NO_MESIN').Text;

        if uniSP.FieldByName('MERK_NAMA').Value=Null then
        begin
          if cbMerkEntry.Text <> '' then
             if IsStrANumber2(cbMerkEntry.EditValue) <> True then
                cbMerkEntry.Text := '';
        end
        else
        begin
          cbMerkEntry.ItemIndex := -1;
          cbMerkEntry.DoEditing;
          cbMerkEntry.EditText := uniSP.FieldByName('MERK_NAMA').Text;
          cbMerkEntry.PostEditValue;
        end;

        eTypeEntry.Text := uniSP.FieldByName('TIPE').Text;
        eType2Entry.Text := uniSP.FieldByName('TIPE2').Text;

        if uniSP.FieldByName('JENIS_NAMA').Value=Null then
        begin
          if cbJenisEntry.Text <> '' then
             if IsStrANumber2(cbJenisEntry.EditValue) <> True then
                cbJenisEntry.Text := '';
        end
        else
        begin
          cbJenisEntry.ItemIndex := -1;
          cbJenisEntry.DoEditing;
          cbJenisEntry.EditText := uniSP.FieldByName('JENIS_NAMA').Text;
          cbJenisEntry.PostEditValue;
        end;

        if uniSP.FieldByName('MODEL_NAMA').Value = Null then
        begin
          if cbModelEntry.Text <> '' then
             if IsStrANumber2(cbModelEntry.EditValue) <> True then
                cbModelEntry.Text := '';
        end
        else
        begin
          cbModelEntry.ItemIndex := -1;
          cbModelEntry.DoEditing;
          cbModelEntry.EditText := uniSP.FieldByName('MODEL_NAMA').Text;
          cbModelEntry.PostEditValue;
        end;

        if uniSP.FieldByName('THN_BUAT').Value = Null then
        begin
          if eThnBuatEntry.Text = '' then
             eThnBuatEntry.Text := '';
        end
        else
        begin
          eThnBuatEntry.Text := uniSP.FieldByName('THN_BUAT').Text;
        end;

        if uniSP.FieldByName('THN_RAKIT').Value = Null then
        begin
          if eThnRakitEntry.Text = '' then
             eThnRakitEntry.Text := '';
        end
        else
        begin
          eThnRakitEntry.Text := uniSP.FieldByName('THN_RAKIT').Text;
        end;

        if uniSP.FieldByName('VOL_SILINDER').Value = Null then
        begin
          if eSilinderEntry.Text = '' then
             eSilinderEntry.Text := '';
        end
        else
        begin
          eSilinderEntry.Text := uniSP.FieldByName('VOL_SILINDER').Text;
        end;

        if uniSP.FieldByName('WARNA_NAMA').Value = Null then
        begin
          if cbWarnaEntry.Text <> '' then
             if IsStrANumber2(cbWarnaEntry.EditValue) <> True then
                cbWarnaEntry.Text := '';
        end
        else
        begin
          cbWarnaEntry.ItemIndex := -1;
          cbWarnaEntry.DoEditing;
          cbWarnaEntry.EditText := uniSP.FieldByName('WARNA_NAMA').Text;
          cbWarnaEntry.PostEditValue;
        end;

        if uniSP.FieldByName('JML_RODA').Value = Null then
        begin
          if eJmlRodaEntry.Text = '' then
             eJmlRodaEntry.Text := '';
        end
        else
        begin
          eJmlRodaEntry.Text := uniSP.FieldByName('JML_RODA').Text;
        end;

        if uniSP.FieldByName('JML_SUMBU').Value = Null then
        begin
          if eJmlSumbuEntry.Text = '' then
             eJmlSumbuEntry.Text := '';
        end
        else
        begin
          eJmlSumbuEntry.Text := uniSP.FieldByName('JML_SUMBU').Text;
        end;

        if uniSP.FieldByName('BB_NAMA').Value = Null then
        begin
          if IsStrANumber2(cbBahanBakarEntry.EditValue) <> True then
             cbBahanBakarEntry.Text := '';
        end
        else
        begin
          cbBahanBakarEntry.ItemIndex := -1;
          cbBahanBakarEntry.DoEditing;
          cbBahanBakarEntry.EditText := uniSP.FieldByName('BB_NAMA').Text;
          cbBahanBakarEntry.PostEditValue;
        end;

        enoTPTEntry.Text := uniSP.FieldByName('NO_TPT').Text;

        if uniSP.FieldByName('PRT_NAMA').Value = Null then
        begin
          if IsStrANumber2(cbPeruntukanEntry.EditValue) <> True then
             cbPeruntukanEntry.Text := '';
        end
        else
        begin
          cbPeruntukanEntry.ItemIndex := -1;
          cbPeruntukanEntry.DoEditing;
          cbPeruntukanEntry.EditText := uniSP.FieldByName('PRT_NAMA').Text;
          cbPeruntukanEntry.PostEditValue;
        end;

        eNoSUTEntry.Text := uniSP.FieldByName('NO_SUT').Text;

        if uniSP.FieldByName('WARNATNKB').Value = Null then
        begin
          if IsStrANumber2(cbWarnaTNKBEntry.EditValue) <> True then
             cbWarnaTNKBEntry.Text := '';
        end
        else
        begin
          cbWarnaTNKBEntry.ItemIndex := -1;
          cbWarnaTNKBEntry.DoEditing;
          cbWarnaTNKBEntry.EditText := uniSP.FieldByName('WARNATNKB').Text;
          cbWarnaTNKBEntry.PostEditValue;
        end;

        eNoIdentitasEntry.Text := uniSP.FieldByName('NO_IDENTITAS').Text;
        eNamaPemilikEntry.Text := uniSP.FieldByName('NAMA_PEMILIK').Text;
        eAlamatPemilikEntry.Text := uniSP.FieldByName('ALAMAT_PEMILIK').Text;
        eKdPOSEntry.Text := uniSP.FieldByName('KODE_POS').Text;
        ePonselEntry.Text := uniSP.FieldByName('NO_PONSEL').Text;
        ePekerjaanEntry.Text := uniSP.FieldByName('PEKERJAAN_PEMILIK').Text;

        if uniSP.FieldByName('WILAYAH_NAMA').Value = Null then
        begin
          if IsStrANumber2(cbWilayahEntry.EditValue) <> True then
             cbWilayahEntry.Text := '';
        end
        else
        begin
          cbWilayahEntry.ItemIndex := -1;
          cbWilayahEntry.DoEditing;
          cbWilayahEntry.EditText := uniSP.FieldByName('WILAYAH_NAMA').Text;
          cbWilayahEntry.PostEditValue;
        end;

        ePropinsi.Text := uniSP.FieldByName('PROP_ID').Text;
        eKabupaten.Text := uniSP.FieldByName('KAB_ID').Text;
        eKecamatan.Text := uniSP.FieldByName('KEC_ID').Text;
        eKelurahan.Text := uniSP.FieldByName('KEL_ID').Text;

        if uniSP.FieldByName('JD_NAMA').Value = Null then
        begin
          if IsStrANumber2(cbJnsDaftaranEntry.EditValue) <> True then
             cbJnsDaftaranEntry.Text := '';
        end
        else
        begin
          cbJnsDaftaranEntry.ItemIndex := -1;
          cbJnsDaftaranEntry.DoEditing;
          cbJnsDaftaranEntry.EditText := uniSP.FieldByName('JD_NAMA').Text;
          cbJnsDaftaranEntry.PostEditValue;
        end;

        eNoFakturEntry.Text := uniSP.FieldByName('NO_FAKTUR').Text;
        dtTglFakturEntry.Date := uniSP.FieldByName('TGL_FAKTUR').Value;
        eNoPabeanEntry.Text := uniSP.FieldByName('NO_PABEAN').Text;
        dtTglPabeanEntry.Text := uniSP.FieldByName('TGL_PABEAN').Text;
        ePelabuhanEntry.Text := uniSP.FieldByName('PELABUHAN').Text;
        eNoPIBEntry.Text := uniSP.FieldByName('NO_PIB').Text;
        dtTglPIBEntry.Text := uniSP.FieldByName('TGL_PIB').Text;

        if uniSP.FieldByName('IMPMTHD_NAME').Value = Null then
        begin
          cbCaraImporEntry.EditValue := '';
          //if IsStrANumber2(cbCaraImporEntry.EditValue) <> True then
          cbCaraImporEntry.Text := '';
        end
        else
        begin
          cbCaraImporEntry.ItemIndex := -1;
          cbCaraImporEntry.DoEditing;
          cbCaraImporEntry.EditText := uniSP.FieldByName('IMPMTHD_NAME').Text;
          cbCaraImporEntry.PostEditValue;
        end;

        eNamaImportirEntry.Text := uniSP.FieldByName('NAMA_IMPORTIR').Text;
        eKetLainEntry.Text := uniSP.FieldByName('KETR_PABEAN').Text;

        if uniSP.FieldByName('PEMOHON_NAMA').Value = Null then
        begin
          if IsStrANumber2(cbPemohonEntry.EditValue) <> True then
             cbPemohonEntry.Text := '';
        end
        else
        begin
          cbPemohonEntry.ItemIndex := -1;
          cbPemohonEntry.DoEditing;
          cbPemohonEntry.EditText := uniSP.FieldByName('PEMOHON_NAMA').Text;
          cbPemohonEntry.PostEditValue;
        end;

        eResiPembayaran.Text := uniSP.FieldByName('BARCODE').Text;
        DataIn.Text := ParsingSTR(uniSP.FieldByName('NO_POLISI').Text,' ');

        if DataIn.Count > 2 then
        begin
          eNopolAwal.Text := DataIn.Strings[0];
          eNopolTengah.Text := DataIn.Strings[1];
          eNopolAkhir.Text := DataIn.Strings[2];
        end
        else
        begin
          eNopolAwal.Text := DataIn.Strings[0];
          eNopolTengah.Text := DataIn.Strings[1];
          eNopolAkhir.Text := '';
        end;

        {if uniSP.FieldByName('TPT_DAFTAR_STNK').Value=Null then
        begin
          if cbLokasiSTNK.Text <> '' then
             if IsStrANumber2(cbLokasiSTNK.EditValue) <> True then
                cbLokasiSTNK.Text := '';
        end
        else
        begin
          cbLokasiSTNK.ItemIndex := -1;
          cbLokasiSTNK.DoEditing;
          cbLokasiSTNK.EditText := uniSP.FieldByName('TPT_DAFTAR_STNK').Text;
          cbLokasiSTNK.PostEditValue;
        end;

        if uniSP.FieldByName('TGL_DAFTAR_STNK').Value=Null then
           dtTglSTNK.Text := ''
        else
           dtTglSTNK.Date := uniSP.FieldByName('TGL_DAFTAR_STNK').Value;}

        fWait.Hide;
        Application.ProcessMessages;
        bSimpanEntry.Enabled := True;
        bBaruEntry.Enabled := True;
      end
      else
      begin
        fWait.Hide;
        MessageDlgWarning('Data Berkas Tidak ditemukan di Server!!!');
      end;
    except on E:Exception do
    begin
      fWait.Hide;
      ErrorProgDialog('Error,..bpkb_get_data.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

end.
