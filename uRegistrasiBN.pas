unit uRegistrasiBN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxContainer,
  cxEdit, Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, DBAccess, Uni, MemDS, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCheckBox, cxMemo, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls,
  cxButtons, cxTextEdit, cxRadioGroup, cxPC, HotKeyManager, DBCtrls, Grids,
  DBGrids, CRGrid;

type
  TfRegistrasiBN = class(TForm)
    lJudul: TLabel;
    Shape1: TShape;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Shape2: TShape;
    Label23: TLabel;
    Label57: TLabel;
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
    eThnBuatEntry: TcxTextEdit;
    eSilinderEntry: TcxTextEdit;
    eJmlRodaEntry: TcxTextEdit;
    cbBahanBakarEntry: TcxDBLookupComboBox;
    cbPeruntukanEntry: TcxDBLookupComboBox;
    eNRegBPKBEntry: TcxTextEdit;
    eNoMesinEntry: TcxTextEdit;
    eTypeEntry: TcxTextEdit;
    cbModelEntry: TcxDBLookupComboBox;
    eThnRakitEntry: TcxTextEdit;
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
    bSetKel: TcxButton;
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
    Label1: TLabel;
    lStatusBPKB: TLabel;
    Label58: TLabel;
    lJenisBlokir: TLabel;
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
    eNoBPKBCariBN: TcxTextEdit;
    cbNopol: TcxCheckBox;
    cxTabSheet2: TcxTabSheet;
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
    QPeruntukan2: TUniQuery;
    dsPeruntukan2: TUniDataSource;
    dsPeruntukan1: TUniDataSource;
    QWarnaTNKB1: TUniQuery;
    QWarnaTNKB2: TUniQuery;
    dsWarnaTNKB2: TUniDataSource;
    dsWarnaTNKB1: TUniDataSource;
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
    QJenisDaftar1: TUniQuery;
    QJenisDaftar2: TUniQuery;
    dsJenisDaftar2: TUniDataSource;
    dsJenisDaftar1: TUniDataSource;
    QCaraImport1: TUniQuery;
    QCaraImport2: TUniQuery;
    dsCaraImport2: TUniDataSource;
    dsCaraImport1: TUniDataSource;
    QPemohon1: TUniQuery;
    QPemohon2: TUniQuery;
    dsPemohon2: TUniDataSource;
    dsPemohon1: TUniDataSource;
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
    QSTB1: TUniQuery;
    dsQSTB1: TUniDataSource;
    dsQSTB2: TUniDataSource;
    QSTB2: TUniQuery;
    QKel1: TUniQuery;
    dsQKel1: TUniDataSource;
    dsQKel2: TUniDataSource;
    QKel2: TUniQuery;
    lStatusNOPOL: TLabel;
    cxMemo1: TcxMemo;
    uniSPTampil: TUniStoredProc;
    dsQDeatail: TUniDataSource;
    PopupMenu1: TPopupMenu;
    EDITDATA1: TMenuItem;
    Label56: TLabel;
    dtTgl: TcxDateEdit;
    Label50: TLabel;
    dtTglRegister: TcxDateEdit;
    bGetDataRegister: TcxButton;
    cbSemua: TcxCheckBox;
    pkdpos: TPanel;
    Shape3: TShape;
    Label59: TLabel;
    Button1: TButton;
    eCariKelurahan: TcxTextEdit;
    rbKelurahan: TcxRadioButton;
    rbKecamatan: TcxRadioButton;
    dbgData: TCRDBGrid;
    DBNavigator1: TDBNavigator;
    Q2KELUARAHAN: TStringField;
    Q2KECAMATAN: TStringField;
    Q2KABUPATEN: TStringField;
    Q2PROPINSI: TStringField;
    Q2KD_POS: TStringField;
    QJenisModel1: TUniQuery;
    dsQJenisModel1: TUniDataSource;
    dsQJenisModel2: TUniDataSource;
    QJenisModel2: TUniQuery;
    QWarnaKartu1: TUniQuery;
    QWarnaKartu2: TUniQuery;
    dsQWarnaKartu2: TUniDataSource;
    dsQWarnaKartu1: TUniDataSource;
    qAddModel: TUniQuery;
    dsqAddModel: TUniDataSource;
    pModel: TPanel;
    Label60: TLabel;
    Shape4: TShape;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
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
    cxButton17: TcxButton;
    cxButton18: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    cxButton21: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    pWarna: TPanel;
    Label64: TLabel;
    Shape7: TShape;
    Label65: TLabel;
    cxButton6: TcxButton;
    eInputWarna: TcxTextEdit;
    bBaruPendaftaranBBN1: TcxButton;
    bSimpan: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    pWilayah: TPanel;
    Label66: TLabel;
    Shape5: TShape;
    Label67: TLabel;
    cxButton14: TcxButton;
    eWilayahTambah: TcxTextEdit;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    cxButton22: TcxButton;
    cxButton23: TcxButton;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    QCari: TUniQuery;
    pStatus: TPanel;
    Button2: TButton;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxButton24: TcxButton;
    ePekerjaanEntry: TcxDBLookupComboBox;
    cxButton25: TcxButton;
    QPekerjaan1: TUniQuery;
    QPekerjaan2: TUniQuery;
    dsQPekerjaan2: TUniDataSource;
    dsQPekerjaan1: TUniDataSource;
    QLokasiSTNK1: TUniQuery;
    QLokasiSTNK2: TUniQuery;
    dsQLokasiSTNK2: TUniDataSource;
    dsQLokasiSTNK1: TUniDataSource;
    Label70: TLabel;
    eNoRekom: TcxTextEdit;
    Cb2D: TcxCheckBox;
    Label71: TLabel;
    eType2Entry: TcxTextEdit;
    eKabupatenPertama: TcxTextEdit;
    Label68: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bSetKelClick(Sender: TObject);
    procedure eNoBPKBClick(Sender: TObject);
    procedure eNoRegBPKBClick(Sender: TObject);
    procedure eNoBarcodeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bCariClick(Sender: TObject);
    procedure cbJnsDaftaranEntryPropertiesChange(Sender: TObject);
    procedure cbNopolPropertiesChange(Sender: TObject);
    procedure bBaruEntryClick(Sender: TObject);
    procedure bRequestNopolClick(Sender: TObject);
    procedure bSimpanEntryClick(Sender: TObject);
    procedure bGetDataRegisterClick(Sender: TObject);
    procedure cbSemuaClick(Sender: TObject);
    procedure EDITDATA1Click(Sender: TObject);
    procedure rbNoBPKBClick(Sender: TObject);
    procedure rbNRegBPKBClick(Sender: TObject);
    procedure rbBerkasBarcodeClick(Sender: TObject);
    procedure pkdposMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure eCariKelurahanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eCariKelurahanPropertiesChange(Sender: TObject);
    procedure dbgDataDblClick(Sender: TObject);
    procedure dbgDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbModelEntryPropertiesPopup(Sender: TObject);
    procedure cbJenisEntryPropertiesChange(Sender: TObject);
    procedure eModelNamaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure pModelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure cxButton21Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure pWarnaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton6Click(Sender: TObject);
    procedure eInputWarnaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bBaruPendaftaranBBN1Click(Sender: TObject);
    procedure bSimpanClick(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure pWilayahMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton14Click(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton22Click(Sender: TObject);
    procedure cxButton23Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure eNoBPKBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoRegBPKBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoBarcodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure eNoRangkaEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoRangkaEntryPropertiesChange(Sender: TObject);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxButton24Click(Sender: TObject);
    procedure ePekerjaanEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton25Click(Sender: TObject);
    procedure cbLokasiSTNKKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vIsBBN : sTRING; // jenis proses bbn
    vISNopolLama : String; // 0 menggunakan nopol baru, 1 mengunakan nopol lama
    vBPKB_ID_Pertama,vBerkas_ID_Pertama : String; // penampung untuk bpkb id yg pertama
    vNopolPertama_1,vNopolPertama_2,vNopolPertama_3 : String; // penampung nopol awal bpkb
    vISNOPOL : Boolean; // status nopol true or false
    tBerkasID,vBPKB_ID,vHIST_ID,vPREV_BPKB_ID : String;
    IsProsesBBN1 : String; // 0 = pembuatan bpkb baru, 1 =  pembuatan bpkb duplikat, 2 = penggantian bpkb rusak
    isEdit : String;
    isDataLama : String; // 0 = data lama tidak ditemukan di t_bpkb_master, 1 = data lama ditemukan di t_bpkb_master
  public
    { Public declarations }
    procedure TampilAwal;
    procedure RefreshCbMerk;
    procedure RefreshCbJenis;
    procedure RefreshCbBahanBakar;
    procedure RefreshCbPeruntukan;
    procedure RefreshCbWarnaTNKB;
    procedure RefreshCbModel;
    procedure RefreshCbWarna;
    procedure RefreshCbWilayah;
    procedure RefreshCbJenisDaftar;
    procedure RefreshCbCaraImpor;
    procedure RefreshCbPemohon;
    procedure RefreshCbKel;
    procedure RefreshKelurahan;
    procedure RefreshCbLokasiSTNK;
    procedure RefreshSTB;
    procedure DetailDataKel(vKode:String);
    procedure ProsesRegistrasi(vISGET,vCari,vBPKBLama:String);
    procedure ProsesTampilDataBPKBLama(vCari:String);
    procedure EnableKomponenRegister;
    procedure CariDataFaktur(vJenis,vCari : String);
    procedure CariReferensi(vNoRangka:String);
    procedure GetDataFaktur;
    procedure GetJenisBlokir;
    procedure AddBPKB;
    procedure BPKBEdit;
    procedure GetDataFaktur2;
    procedure TampilDataSudahAda(vISGET, vCari, vBPKBLama: String);
    procedure TampilDataSudahAdaEdit(vISGET, vCari: String);
    function CekNoRangkaPendaftaran(vNoRangka:String):String;
    procedure Data2D;
    procedure CariDataFakturCF(vCari : String);
    function CekMerk(vMerk:String):String;
    function CekATPMID(vMerk: String): String;
    procedure RefreshCbPekerjaan;
    procedure CariDataPemohon(vCari: String);
    procedure AktifModeIdentitasPemilik;
    procedure AktifModeDisable;
    procedure GetDataForVerifikasi(vData : String);
  end;

var
  fRegistrasiBN: TfRegistrasiBN;

implementation
Uses
  uDM, uVariabel, uModul, uWait, uCari, uPemohon, uMain;
{$R *.dfm}

procedure TfRegistrasiBN.RefreshCbBahanBakar;
begin
  QBB1.Close;
  QBB1.SQL.Text := 'select to_char(bb_id) as bb_id,bb_nama from m_bahanbakar order by bb_nama';
  QBB1.Open;

  QBB2.Close;
  QBB2.SQL.Text := 'select to_char(bb_id) as bb_id,bb_nama from m_bahanbakar order by bb_nama';
  QBB2.Open;
end;

procedure TfRegistrasiBN.RefreshCbCaraImpor;
begin
  QCaraImport1.Close;
  QCaraImport1.SQL.Text := 'select to_char(IMPMTHD_ID) as IMPMTHD_ID,IMPMTHD_NAME from m_cara_impor order by IMPMTHD_NAME';
  QCaraImport1.Open;

  QCaraImport2.Close;
  QCaraImport2.SQL.Text := 'select to_char(IMPMTHD_ID) as IMPMTHD_ID,IMPMTHD_NAME from m_cara_impor order by IMPMTHD_NAME';
  QCaraImport2.Open;
end;

procedure TfRegistrasiBN.RefreshCbJenis;
begin
  QJenis1.Close;
  QJenis1.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenis1.Open;

  QJenis2.Close;
  QJenis2.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenis2.Open;
end;

procedure TfRegistrasiBN.RefreshCbJenisDaftar;
begin
  QJenisDaftar1.Close;
  QJenisDaftar1.SQL.Text := 'select to_char(jd_id) as jd_id,jd_nama from m_jenis_daftaran order by jd_nama';
  QJenisDaftar1.Open;

  QJenisDaftar2.Close;
  QJenisDaftar2.SQL.Text := 'select to_char(jd_id) as jd_id,jd_nama from m_jenis_daftaran order by jd_nama';
  QJenisDaftar2.Open;
end;

procedure TfRegistrasiBN.RefreshCbKel;
begin
  QKel1.Close;
  QKel1.SQL.Text := 'select to_char(kode) as kode,KELUARAHAN,KECAMATAN,KABUPATEN,PROPINSI,KD_POS from m_kode_pos order by KELUARAHAN';
  QKel1.Open;

  QKel2.Close;
  QKel2.SQL.Text := 'select to_char(kode) as kode,KELUARAHAN,KECAMATAN,KABUPATEN,PROPINSI,KD_POS from m_kode_pos order by KELUARAHAN';
  QKel2.Open;
end;

procedure TfRegistrasiBN.RefreshCbMerk;
begin
  QMerk1.Close;
  QMerk1.SQL.Text := 'select to_char(merk_id) as merk_id,merk_nama_r as merk_nama from m_merk  where rowid in (select min(rowid) from m_merk group by merk_nama_r)  order by merk_nama';
  QMerk1.Open;

  QMerk2.Close;
  QMerk2.SQL.Text := 'select to_char(merk_id) as merk_id,merk_nama_r as merk_nama from m_merk  where rowid in (select min(rowid) from m_merk group by merk_nama_r)  order by merk_nama';
  QMerk2.Open;
end;

procedure TfRegistrasiBN.RefreshCbModel;
begin
  QModel1.Close;
  QModel1.SQL.Text := 'select to_char(model_id) as model_id,model_nama,jenis_id from m_model order by model_nama';
  QModel1.Open;

  QModel2.Close;
  QModel2.SQL.Text := 'select to_char(model_id) as model_id,model_nama,jenis_id from m_model order by model_nama';
  QModel2.Open;
end;

procedure TfRegistrasiBN.RefreshCbPemohon;
begin
  QPemohon1.Close;
  QPemohon1.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  QPemohon1.Open;

  QPemohon2.Close;
  QPemohon2.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  QPemohon2.Open;
end;

procedure TfRegistrasiBN.RefreshCbPeruntukan;
begin
  QPeruntukan1.Close;
  QPeruntukan1.SQL.Text := 'select to_char(prt_id) as prt_id,prt_nama from m_peruntukan order by prt_nama';
  QPeruntukan1.Open;

  QPeruntukan2.Close;
  QPeruntukan2.SQL.Text := 'select to_char(prt_id) as prt_id,prt_nama from m_peruntukan order by prt_nama';
  QPeruntukan2.Open;
end;

procedure TfRegistrasiBN.RefreshCbWarna;
begin
  QWarna1.Close;
  QWarna1.SQL.Text := 'select to_char(warna_id) as warna_id,warna_nama from m_warna order by warna_nama';
  QWarna1.Open;

  QWarna2.Close;
  QWarna2.SQL.Text := 'select to_char(warna_id) as warna_id,warna_nama from m_warna order by warna_nama';
  QWarna2.Open;
end;

procedure TfRegistrasiBN.RefreshCbWarnaTNKB;
begin
  QWarnaTNKB1.Close;
  QWarnaTNKB1.SQL.Text := 'select to_char(warnatnkb_id) as warnatnkb_id,warnatnkb from m_warnatnkb order by warnatnkb';
  QWarnaTNKB1.Open;

  QWarnaTNKB2.Close;
  QWarnaTNKB2.SQL.Text := 'select to_char(warnatnkb_id) as warnatnkb_id,warnatnkb from m_warnatnkb order by warnatnkb';
  QWarnaTNKB2.Open;
end;

procedure TfRegistrasiBN.RefreshCbWilayah;
begin
  QWil1.Close;
  QWil1.SQL.Text := 'select to_char(wilayah_id) as wilayah_kode,wilayah_nama from m_wilayah order by wilayah_nama';
  QWil1.Open;

  QWil2.Close;
  QWil2.SQL.Text := 'select to_char(wilayah_id) as wilayah_kode,wilayah_nama from m_wilayah order by wilayah_nama';
  QWil2.Open;
end;

procedure TfRegistrasiBN.TampilAwal;
begin
  if isFormEditVerifikasiBN = '1' then
  begin
    cxPageControl1.ActivePageIndex := 0;
    //'1=GANTI NAMA; 2=MUTASI KELUAR; 3=EX LUAR DAERAH; 4=GANTI BUKU; 5=DUPLIKAT';
    vIsBBN := '1';
    vISNOPOL := False;
    vISNopolLama := '0';
    vBPKB_ID_Pertama := '';
    tBerkasID := '';
    eNoBPKB.Text := '';
    eNoRegBPKB.Text := '';
    eNoBarcode.Text := '';
    rbNoBPKB.Checked := False;
    rbNRegBPKB.Checked := False;
    rbBerkasBarcode.Checked := False;
    // componen disable
    eNoBPKBCariBN.Enabled := False;
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
    cxTabSheet6.TabVisible := True;
    ePropinsi.Enabled := False;
    eKabupaten.Enabled := False;
    eKecamatan.Enabled := False;
    eKelurahan.Enabled := False;
    rbNoBPKB.Enabled := False;
    rbNRegBPKB.Enabled := False;
    rbBerkasBarcode.Enabled := False;
    eNoBPKB.Enabled := False;
    eNoRegBPKB.Enabled := False;
    eNoBarcode.Enabled := False;
    bSetKel.Enabled := False;
    bCari.Enabled := False;
    eNoRekom.Enabled := False;
    eNoPabeanEntry.Enabled := False;
    dtTglPabeanEntry.Enabled := False;
    ePelabuhanEntry.Enabled := False;
    eNoPIBEntry.Enabled := False;
    dtTglPIBEntry.Enabled := False;
    cbCaraImporEntry.Enabled := False;
    eKabupatenPertama.Enabled := False;
    bRequestNopol.Enabled := False;
    //eNoRekom.Enabled := False;
    lStatusBPKB.Caption := '';
    lJenisBlokir.Caption := '';
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
    eKetLainEntry.Text := '';
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
    eNoBPKBCariBN.Text := '';
    eNoRekom.Text := '';
    lStatusNOPOL.Caption := 'BLM TERPAKAI';
    //bRequestNopol.Enabled := False;
    bSimpanEntry.Enabled := False;
    bBaruEntry.Enabled := False;
    cxPageControl2.ActivePageIndex := 0;
    //IsProsesBBN1 := '0';
    rbNoBPKB.Enabled := True;
    rbNRegBPKB.Enabled := True;
    rbBerkasBarcode.Enabled := True;
    eNoBPKB.Enabled := True;
    eNoRegBPKB.Enabled := True;
    eNoBarcode.Enabled := True;
    eNoBPKBCariBN.Enabled := True;
    bCari.Enabled := True;
    lJudul.Caption := '=== "PEMBUATAN BPKB GANTI NAMA" ===';
    rbNoBPKB.Checked := True;
    eNoBPKB.Text := isNoBPKBBN;
    eNoBPKBCariBN.Text := isNoBPKBBNLama;
    eNoBPKB.SetFocus;
    eNoRegBPKB.Enabled := False;
    eNoBarcode.Enabled := False;
    eNoBPKBEntry.Enabled := False;
    eDikeluarkanEntry.Enabled := False;
    eNRegBPKBEntry.Enabled := False;
    dtTglEntry.Enabled := False;
    Application.ProcessMessages;
  end
  else
  begin
    cxPageControl1.ActivePageIndex := 0;
    //'1=GANTI NAMA; 2=MUTASI KELUAR; 3=EX LUAR DAERAH; 4=GANTI BUKU; 5=DUPLIKAT';
    vIsBBN := '1';
    vISNOPOL := False;
    vISNopolLama := '0';
    vBPKB_ID_Pertama := '';
    tBerkasID := '';
    eNoBPKB.Text := '';
    eNoRegBPKB.Text := '';
    eNoBarcode.Text := '';
    rbNoBPKB.Checked := False;
    rbNRegBPKB.Checked := False;
    rbBerkasBarcode.Checked := True;
    // componen disable
    eNoBPKBCariBN.Enabled := False;
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
    cxTabSheet6.TabVisible := True;
    ePropinsi.Enabled := False;
    eKabupaten.Enabled := False;
    eKecamatan.Enabled := False;
    eKelurahan.Enabled := False;
    rbNoBPKB.Enabled := False;
    rbNRegBPKB.Enabled := False;
    rbBerkasBarcode.Enabled := False;
    eNoBPKB.Enabled := False;
    eNoRegBPKB.Enabled := False;
    eNoBarcode.Enabled := False;
    bSetKel.Enabled := False;
    bCari.Enabled := False;
    eNoRekom.Enabled := False;
    eNoPabeanEntry.Enabled := False;
    dtTglPabeanEntry.Enabled := False;
    ePelabuhanEntry.Enabled := False;
    eNoPIBEntry.Enabled := False;
    dtTglPIBEntry.Enabled := False;
    cbCaraImporEntry.Enabled := False;
    eKabupatenPertama.Enabled := False;
    bRequestNopol.Enabled := False;
    //eNoRekom.Enabled := False;
    lStatusBPKB.Caption := '';
    lJenisBlokir.Caption := '';
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
    eKetLainEntry.Text := '';
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
    eNoBPKBCariBN.Text := '';
    eNoRekom.Text := '';
    lStatusNOPOL.Caption := 'BLM TERPAKAI';
    //bRequestNopol.Enabled := False;
    bSimpanEntry.Enabled := False;
    bBaruEntry.Enabled := False;
    cxPageControl2.ActivePageIndex := 0;
    //IsProsesBBN1 := '0';
    rbNoBPKB.Enabled := True;
    rbNRegBPKB.Enabled := True;
    rbBerkasBarcode.Enabled := True;
    eNoBPKB.Enabled := True;
    eNoRegBPKB.Enabled := True;
    eNoBarcode.Enabled := True;
    eNoBPKBCariBN.Enabled := True;
    bCari.Enabled := True;
    lJudul.Caption := '=== "PEMBUATAN BPKB GANTI NAMA" ===';
    rbBerkasBarcode.Checked := True;
    eNoRegBPKB.Enabled := True;
    eNoBarcode.Enabled := True;
    eNoBarcode.SetFocus;
    Application.ProcessMessages;
  end;
end;

procedure TfRegistrasiBN.FormShow(Sender: TObject);
begin
  dtTgl.Date := TTglSrvSkr;
  dtTglRegister.Date := TTglSrvSkr;
  TampilAwal;
end;

procedure TfRegistrasiBN.DetailDataKel(vKode: String);
begin
  with DM.Q2 do
  begin
    Close;
    SQL.Text := 'SELECT KELUARAHAN,KECAMATAN,KABUPATEN,PROPINSI,KD_POS FROM M_KODE_POS WHERE KODE=:KODE';
    Params[0].AsString := vKode;
    Open;
    if recordcount > 0 then
    begin
      eKelurahan.Text := FieldByName('KELUARAHAN').AsString;
      eKecamatan.Text := FieldByName('KECAMATAN').AsString;
      eKabupaten.Text := FieldByName('KABUPATEN').AsString;
      ePropinsi.Text := FieldByName('PROPINSI').AsString;
      eKdPOSEntry.Text := FieldByName('KD_POS').AsString;
    end
    else
    begin
      eKelurahan.Text := '';
      eKecamatan.Text := '';
      eKabupaten.Text := '';
      ePropinsi.Text := '';
      eKdPOSEntry.Text := '';
    end;
  end;
end;

procedure TfRegistrasiBN.bSetKelClick(Sender: TObject);
begin
  RefreshKelurahan;
  pkdpos.Left := 72;
  pkdpos.Top := 4;
  pkdpos.Visible := True;
  eCariKelurahan.SetFocus;
  eCariKelurahan.SelStart := Length(eCariKelurahan.Text) + 1;
end;

procedure TfRegistrasiBN.eNoBPKBClick(Sender: TObject);
begin
  rbNoBPKB.Checked := True;
end;

procedure TfRegistrasiBN.eNoRegBPKBClick(Sender: TObject);
begin
  rbNRegBPKB.Checked := True;
end;

procedure TfRegistrasiBN.eNoBarcodeClick(Sender: TObject);
begin
  rbBerkasBarcode.Checked := True;
end;

procedure TfRegistrasiBN.FormCreate(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;
  RefreshCbMerk;
  RefreshCbJenis;
  RefreshCbBahanBakar;
  RefreshCbPeruntukan;
  RefreshCbWarnaTNKB;
  RefreshCbModel;
  RefreshCbWarna;
  RefreshCbPekerjaan;
  RefreshCbWilayah;
  RefreshCbJenisDaftar;
  RefreshCbCaraImpor;
  RefreshCbPemohon;
  RefreshCbLokasiSTNK;
  RefreshSTB;
end;

procedure TfRegistrasiBN.bCariClick(Sender: TObject);
var
  isGet,Cari : String;
begin
  if isFormEditVerifikasiBN = '1' then
  begin
    GetDataForVerifikasi(eNoBPKB.Text);
  end
  else
  begin
    //'1=GANTI NAMA; 2=MUTASI KELUAR; 3=EX LUAR DAERAH; 4=GANTI BUKU; 5=DUPLIKAT';
    isDataLama := '0';
    isEdit := '0';
    vIsBBN := '1';
    vBPKB_ID := '';
    vHIST_ID := '';
    vISNOPOL := False;
    vISNopolLama := '0';
    vBPKB_ID_Pertama := '';
    tBerkasID := '';
    if rbNoBPKB.Checked = True then
    begin
       isGet := '0';
       Cari := eNoBPKB.Text;
    end
    else if rbNRegBPKB.Checked = True then
    begin
       isGet := '1';
       Cari := eNoRegBPKB.Text;
    end
    else if rbBerkasBarcode.Checked = True then
    begin
       isGet := '2';
       Cari := eNoBarcode.Text+'%';
    end;

    if eNoBPKBCariBN.Text <> '' then
    begin
      if rbNoBPKB.Checked = True then
      begin
        if eNoBPKB.Text = '' then
        begin
           MessageDlgError('No BPKB Lama harus diisi');
           eNoBPKB.SetFocus;
        end
        else
        begin
          fWait.Show;
          fWait.cxProgressBar1.Visible := True;
          fWait.Label1.Caption := 'Tunggu Sebentar ..';
          Application.ProcessMessages;
          ProsesRegistrasi(isGet,Cari,eNoBPKBCariBN.Text);
        end;
      end
      else if rbNRegBPKB.Checked = True then
      begin
        if eNoRegBPKB.Text = '' then
        begin
           MessageDlgError('No Register BPKB harus diisi');
           eNoRegBPKB.SetFocus;
        end
        else
        begin
          fWait.Show;
          fWait.cxProgressBar1.Visible := True;
          fWait.Label1.Caption := 'Tunggu Sebentar ..';
          Application.ProcessMessages;
          ProsesRegistrasi(isGet,Cari,eNoBPKBCariBN.Text);
        end;
      end
      else if rbBerkasBarcode.Checked = True then
      begin
        if eNoBarcode.Text = '' then
        begin
           MessageDlgError('No Barcode harus diisi');
           eNoBarcode.SetFocus;
        end
        else
        begin
          fWait.Show;
          fWait.cxProgressBar1.Visible := True;
          fWait.Label1.Caption := 'Tunggu Sebentar ..';
          Application.ProcessMessages;
          ProsesRegistrasi(isGet,Cari,eNoBPKBCariBN.Text);
        end;
      end;
    end
    else
    begin
      MessageDlgError('No BPKB Lama harus diisi');
      eNoBPKBCariBN.SetFocus;
    end;
  end;
end;

procedure TfRegistrasiBN.ProsesRegistrasi(vISGET,vCari,vBPKBLama:String);
var
  uniSP : TUniStoredProc;
begin
  DM.Q.Close;
  if vISGET='0' then
     DM.Q.SQL.Text := 'SELECT COUNT(1) FROM T_BPKB_MASTER WHERE NO_BPKB=:NO'
  else if vISGET='1' then
     DM.Q.SQL.Text := 'SELECT COUNT(1) FROM T_BPKB_MASTER WHERE NREG_BPKB=:NO'
  else if vISGET='2' then
     DM.Q.SQL.Text := 'SELECT COUNT(1) FROM T_BPKB_MASTER WHERE NREG_BPKB LIKE :NO';
  DM.Q.Params[0].AsString := vCari;
  DM.Q.Open;

  if DM.Q.Fields[0].AsInteger > 0 then // jika data ada tampilkan data registrasi lama, untuk proses edit data
  begin
    // CEK DATA DI TABEL t_PREV_BPKB, JIKA ADA TAMPILKAN DATA SEBAGAI DATA EDIT DARI BALIK NAMA
    DM.Q.Close;
    DM.Q.SQL.Text := 'SELECT COUNT(1) FROM t_PREV_BPKB WHERE NO_BPKB=:BPKB';
    try
      DM.Q.Params[0].AsString := vBPKBLama;
      DM.Q.Open;

      if DM.Q.Fields[0].AsInteger > 0 then
      begin
        // tampilkan sebagai proses edit data dari bn
        fWait.Close;
        Application.ProcessMessages;
        if MessageDlg('DATA SUDAH ADA DI DATABASE, APAKAH MAU DITAMPILKAN?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
           TampilDataSudahAdaEdit(vISGET, vCari);
      end
      else
      begin
        // tampilkan sebagai proses entry baru dari bn
        fWait.Close;
        Application.ProcessMessages;
        TampilDataSudahAda('0',vCari,vBPKBLama);
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error...SELECT t_PREV_BPKB;KET ERROR '+E.Message);
    end;
    end;
  end
  else // jika data tidak ada buat referensi data bpkb
  begin
    // tampilkan data no registrasi
    try
      isEdit := '0';
      uniSP := TUniStoredProc.Create(Application);
      uniSP.Connection := DM.dbSrv;
      uniSP.Active := False;
      //uniSP.Close;
      uniSP.StoredProcName := 'bpkb_get_registrasi_bn2';
      try
        uniSP.Params.Clear;
        uniSP.Params.CreateParam(ftString,'v_is_get',ptInput).AsString := vISGET;
        uniSP.Params.CreateParam(ftstring,'v_polda_id',ptinput).AsString := vPOLDAID;
        uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
        uniSP.Params.CreateParam(ftString,'v_tgl_proses',ptInput).AsString := FormatDateTime('yyyymmdd',TTglSrvSkr);
        uniSP.Params.CreateParam(ftString,'v_cari',ptInput).AsString := vCari;
        uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
        if isTreaceLog='1' then
        begin
          Log('TRACE FOR REGISTRASI BN ');
          Log('v_is_get '+ vISGET);
          Log('v_polda_id '+vPOLDAID);
          Log('v_polres_id '+vPOLRESID);
          Log('v_tgl_proses '+FormatDateTime('yyyymmdd',TTglSrvSkr));
          Log('v_cari '+vCari);
        end;
        uniSP.Active := True;

        if uniSP.RecordCount > 0 then
        begin
          if uniSP.FieldByName('TGL_KELUAR').AsString = FormatDateTime('yyyymmdd',dtTgl.Date) then
          begin
            if (uniSP.FieldByName('JNS_PENERBITAN').AsString = '3') or ((uniSP.FieldByName('JNS_PENERBITAN').AsString = '4')) then
            begin
              EnableKomponenRegister;
              cxTabSheet6.TabVisible := True;
              eNoBPKBEntry.Text := uniSP.FieldByName('NO_BPKB').Value;
              eNRegBPKBEntry.Text := uniSP.FieldByName('NREG_BPKB').Value;
              dtTglEntry.Date := dtTgl.Date;
              eJmlRodaEntry.Text := uniSP.FieldByName('JML_RODA').Value;
              tBerkasID := uniSP.FieldByName('BERKAS_ID').Value;
              cbPeruntukanEntry.DoEditing;
              cbPeruntukanEntry.EditText := 'PRIBADI';
              cbPeruntukanEntry.PostEditValue;
              cbWarnaTNKBEntry.DoEditing;
              cbWarnaTNKBEntry.EditText := 'HITAM';
              cbWarnaTNKBEntry.PostEditValue;
              Application.ProcessMessages;

              // cek data bpkb lama masih aktif apa tidak?
              with DM.Q do
              begin
                Close;
                SQL.Text := 'SELECT BPKB_STATUS FROM T_BPKB_MASTER WHERE NO_BPKB=:BPKB';
                try
                  Params[0].AsString := eNoBPKBCariBN.Text;
                  Open;
                  if recordcount > 0 then
                  begin
                    if Fields[0].AsString = '0' then
                    begin
                      fWait.Hide;
                      Application.ProcessMessages;
                      pStatus.Caption := 'BPKB SUDAH TIDAK AKTIF';
                      pStatus.Left := 4;
                      pStatus.Top := 120;
                      pStatus.Visible := True;
                    end
                    else if Fields[0].AsString = '2' then
                    begin
                      fWait.Hide;
                      Application.ProcessMessages;
                      pStatus.Caption := 'BPKB DALAM KONDISI TER-BLOKIR';
                      pStatus.Left := 4;
                      pStatus.Top := 120;
                      pStatus.Visible := True;
                    end
                    else if Fields[0].AsString = '3' then
                    begin
                      fWait.Hide;
                      Application.ProcessMessages;
                      pStatus.Caption := 'BPKB SUDAH MENGALAMI MUTASI LUAR DAERAH';
                      pStatus.Left := 4;
                      pStatus.Top := 120;
                      pStatus.Visible := True;
                    end
                    else if Fields[0].AsString = '1' then
                    begin
                      // ambil data faktur
                      GetDataFaktur;
                    end
                  end
                  else
                  begin
                    // ambil data faktur
                    GetDataFaktur;
                  end;
                except on E: Exception do
                begin
                  ErrorProgDialog('Error... '+E.Message);
                end;
                end;
              end;
            end
            else
            begin
              fWait.Hide;
              MessageDlgError('Kode Berkas Bukan untuk Proses Registrasi Kendaraan Ganti Pemilik');
            end;
          end
          else
          begin
            fWait.Hide;
            MessageDlgError('NO REGISTER TIDAK BISA DIPAKAI !'+#13+
                            'TGL REGISTER UNTUK NO REGISTER INI SUDAH KADALUARSA!'+#13+
                            'TERIMAKASIH');
          end;
        end
        else
        begin
          fWait.Hide;
          MessageDlgWarning('Data Berkas Tidak ditemukan di Server!!!');
        end;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..bpkb_get_registrasi_bn.Open%Error :'+E.Message);
      end;
      end;
    finally
      FreeAndNil(uniSP);
    end;
  end;
end;

procedure TfRegistrasiBN.EnableKomponenRegister;
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
  bSetKel.Enabled := True;
end;

procedure TfRegistrasiBN.ProsesTampilDataBPKBLama(vCari: String);
var
  uniSP : TUniStoredProc;
begin
  try
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_get_data_lama_bn';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_bpkb_lama',ptInput).AsString := vCari;
      uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      uniSP.Active := True;

      if uniSP.RecordCount > 0 then
      begin
        eNoBPKBPertama.Text := uniSP.FieldByName('NO_BPKB').AsString;
        dtTglPertama.Text := uniSP.FieldByName('TGL_BPKB').AsString;
        eNRegBPKBPertama.Text := uniSP.FieldByName('NREG_BPKB').AsString;
        eTempatKeluarPertama.Text := uniSP.FieldByName('TEMPAT_KELUAR').AsString;
        eNamaPemilikPertama.Text := uniSP.FieldByName('NAMA_PEMILIK').AsString;
        eAlamatPertama.Text := uniSP.FieldByName('ALAMAT_PEMILIK').AsString;
        lStatusBPKB.Caption := uniSP.FieldByName('BPKB_STATUS').AsString;
        lJenisBlokir.Caption := '';
      end
      else
      begin
        fWait.Hide;
        MessageDlg('Referensi Data BPKB Lama tidak ditemukan, Entry data BPKB Lama Secara Manual !!!',mtWarning,[mbOK],0);
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_data_lama_bn.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfRegistrasiBN.CariDataFaktur(vJenis, vCari: String);
var
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;

    eResiPembayaran.Text := CekNoRangkaPendaftaran(eNoRangkaEntry.Text);

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
        cbPemohonEntry.Text := '';
        eNopolAwal.Text := '';
        eNopolTengah.Text := '';
        eNopolAkhir.Text := '';
        eNoBPKBPertama.Text := eNoBPKBCariBN.Text;
        dtTglPertama.Text := '';
        eNRegBPKBPertama.Text := '';
        eTempatKeluarPertama.Text := '';
        eNamaPemilikPertama.Text := '';
        eAlamatPertama.Text := '';
        cbSbbTdkBerlaku.DoEditing;
        cbSbbTdkBerlaku.EditText := 'GANTI KEPEMILIKAN';
        cbSbbTdkBerlaku.PostEditValue;
        cbSbbTdkBerlaku.Enabled := False;
        FWait.Hide;
        Application.ProcessMessages;
        eNoMesinEntry.SetFocus;
      end
      else
      begin
        FWait.Hide;
        Application.ProcessMessages;
        MessageDlg('DATA TIDAK DITEMUKAN DARI DATABASE APM/DEALER, ENTRY SECARA MANUAL',mtInformation,[mbOK],0);
        cxPageControl2.ActivePage := cxTabSheet3;
        eNoBPKBEntry.SetFocus;
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_data_faktur2.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfRegistrasiBN.CariReferensi(vNoRangka: String);
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
          //if IsStrANumber2(cbJnsDaftaranEntry.EditValue) <> True then
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
          //cbCaraImporEntry.EditValue := '';
          //if IsStrANumber2(cbCaraImporEntry.EditValue) <> True then
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

procedure TfRegistrasiBN.GetDataFaktur;
var
  uniSP : TUniStoredProc;
  DataIn : TStringList;
begin
  try
    DataIn := TStringList.Create;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_get_data_bn';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftstring,'v_polda_id',ptinput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'v_is_cari',ptInput).AsString := '0';
      uniSP.Params.CreateParam(ftString,'v_cari',ptInput).AsString := eNoBPKBCariBN.Text;
      uniSP.Params.CreateParam(ftString,'v_bbn',ptInput).AsString := '0';
      uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      uniSP.Active := True;

      if uniSP.RecordCount > 0 then
      begin
        isDataLama := '1';
        if uniSP.FieldByName('BPKB_STATUS').Text <> 'AKTIF' then
        begin
          fWait.Hide;
          Application.ProcessMessages;
          if uniSP.FieldByName('BPKB_STATUS').Text = 'TIDAK AKTIF' then
             pStatus.Caption := 'BPKB SUDAH TIDAK AKTIF'
          else if uniSP.FieldByName('BPKB_STATUS').Text = 'BLOKIR' then
             pStatus.Caption := 'BPKB DALAM KONDISI TER-BLOKIR'
          else if uniSP.FieldByName('BPKB_STATUS').Text = 'MUTASI LUAR DAERAH' then
             pStatus.Caption := 'BPKB SUDAH MENGALAMI MUTASI LUAR DAERAH';

          pStatus.Left := 4;
          pStatus.Top := 120;
          pStatus.Visible := True;
        end
        else
        begin
          AktifModeIdentitasPemilik;
          vBPKB_ID_Pertama := uniSP.FieldByName('BPKB_ID').AsString;
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

          eNoIdentitasEntry.Text := '';
          eNamaPemilikEntry.Text := '';
          eAlamatPemilikEntry.Text := '';
          eKdPOSEntry.Text := '';
          ePonselEntry.Text := '';
          ePekerjaanEntry.Text := '';
          cbWilayahEntry.Text := '';
          ePropinsi.Text := '';
          eKabupaten.Text := '';
          eKecamatan.Text := '';
          eKelurahan.Text := '';

          if uniSP.FieldByName('JD_NAMA').Value = Null then
          begin
            //if IsStrANumber2(cbJnsDaftaranEntry.EditValue) <> True then
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
            //cbCaraImporEntry.EditValue := '';
            //if IsStrANumber(cbCaraImporEntry.EditValue) <> True then
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
          //cbPemohonEntry.Text := '';
          CariDataPemohon(eNoRangkaEntry.Text);
          DataIn.Text := ParsingSTR(uniSP.FieldByName('NO_POLISI').Text,' ');

          if DataIn.Count > 2 then
          begin
            eNopolAwal.Text := DataIn.Strings[0];
            vNopolPertama_1 := DataIn.Strings[0];
            eNopolTengah.Text := DataIn.Strings[1];
            vNopolPertama_2 := DataIn.Strings[1];
            eNopolAkhir.Text := DataIn.Strings[2];
            vNopolPertama_3 := DataIn.Strings[2];
          end
          else
          begin
            eNopolAwal.Text := DataIn.Strings[0];
            vNopolPertama_1 := DataIn.Strings[0];
            eNopolTengah.Text := DataIn.Strings[1];
            vNopolPertama_2 := DataIn.Strings[1];
            eNopolAkhir.Text := '';
            vNopolPertama_3 := '';
          end;

          eResiPembayaran.Text := CekNoRangkaPendaftaran(uniSP.FieldByName('NO_RANGKA').Text);

          cbSbbTdkBerlaku.DoEditing;
          cbSbbTdkBerlaku.EditText := 'GANTI KEPEMILIKAN';
          cbSbbTdkBerlaku.PostEditValue;
          cbSbbTdkBerlaku.Enabled := False;
          eNoBPKBPertama.Text := uniSP.FieldByName('NO_BPKB').Text;
          eNRegBPKBPertama.Text := uniSP.FieldByName('NREG_BPKB').Text;
          eTempatKeluarPertama.Text := uniSP.FieldByName('TEMPAT_KELUAR').Text;
          eNamaPemilikPertama.Text := uniSP.FieldByName('NAMA_PEMILIK').Text;
          eAlamatPertama.Text := uniSP.FieldByName('ALAMAT_PEMILIK').Text;
          dtTglPertama.Date := uniSP.FieldByName('TGL_BPKB').AsDateTime;
          lStatusBPKB.Caption := uniSP.FieldByName('BPKB_STATUS').Text;
          eKabupatenPertama.Text := uniSP.FieldByName('KAB_ID').Text;
          lJudul.Caption := '=== "PEMBUATAN BPKB GANTI NAMA" ===          BPKB STATUS : '+uniSP.FieldByName('BPKB_STATUS').Text;

          bSimpanEntry.Enabled := True;
          bBaruEntry.Enabled := True;
          fWait.Hide;
        end;
      end
      else
      begin
        isDataLama := '0';
        cbSbbTdkBerlaku.DoEditing;
        cbSbbTdkBerlaku.EditText := 'GANTI KEPEMILIKAN';
        cbSbbTdkBerlaku.PostEditValue;
        cbSbbTdkBerlaku.Enabled := False;
        bSimpanEntry.Enabled := True;
        bBaruEntry.Enabled := True;
        fWait.Hide;
        MessageDlg('Data No Indentitas kendaraan = '+eNoBPKBCariBN.Text+' tidak ditemukan di server!'+#13+
                   'Lakukan proses entry data BPKB Secara Manual',mtError,[mbOK],0);
        eNoRangkaEntry.SetFocus;
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_data_bn .Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
    FreeAndNil(DataIn);
  end;
end;

procedure TfRegistrasiBN.cbJnsDaftaranEntryPropertiesChange(
  Sender: TObject);
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

procedure TfRegistrasiBN.GetJenisBlokir;
var
  uniSP : TUniStoredProc;
begin
  try
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_get_jenis_blokir';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_kdpolda',ptInput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'v_kdpolres',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'v_bpkb_id',ptInput).AsString := vBPKB_ID_Pertama;
      uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      uniSP.Active := True;

      if uniSP.RecordCount > 0 then
      begin                          //uniSP.FieldByName('STATUS_BPKB').Text;
        lJenisBlokir.Caption := uniSP.FieldByName('JENIS_BLOKIR').Text;
        fWait.Hide;
        Application.ProcessMessages;

        if IsProsesBBN1='1' then
        begin
          if uniSP.FieldByName('JENIS_BLOKIR').Text = '2' then
          begin
            bSimpanEntry.Enabled := True;
          end
          else
          begin
            bSimpanEntry.Enabled := False;
            MessageDlg('JENIS BLOKIR TIDAK SESUAI UNTUK TRANSAKSI INI',mtError,[mbOK],0);
          end;
        end
        else
        begin
          bSimpanEntry.Enabled := False;
          MessageDlg('JENIS BLOKIR TIDAK SESUAI UNTUK TRANSAKSI INI',mtError,[mbOK],0);
        end;
      end
      else
      begin

      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_jenis_blokir.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfRegistrasiBN.cbNopolPropertiesChange(Sender: TObject);
begin
  if cbNopol.Checked = True then
  begin
    eNopolAwal.Text := vNopolPertama_1;
    eNopolTengah.Text := vNopolPertama_2;
    eNopolAkhir.Text := vNopolPertama_3;
    lStatusNOPOL.Caption := 'BLM TERPAKAI';
    vISNOPOL := True;
  end
  else
  begin
    vISNOPOL := True;
    eNopolAwal.Text := '';
    eNopolTengah.Text := '';
    eNopolAkhir.Text := '';
    lStatusNOPOL.Caption := 'SDH TERPAKAI';
  end;
end;

procedure TfRegistrasiBN.bBaruEntryClick(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfRegistrasiBN.bRequestNopolClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
  if IsStrANumber(cbWarnaTNKBEntry.EditValue) = True then
  begin
    if IsStrANumber(cbJenisEntry.EditValue) = True then
    begin
      if eKabupaten.Text <> '' then
      begin
        if eKabupaten.Text = eKabupatenPertama.Text then // isi dengan nopol lama
        begin
          eNopolAwal.Text := vNopolPertama_1;
          eNopolTengah.Text := vNopolPertama_2;
          eNopolAkhir.Text := vNopolPertama_3;
          lStatusNOPOL.Caption := 'BLM TERPAKAI';
          vISNOPOL := True;
        end
        else  // cari nopol baru untuk wilayah lain
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
                  MessageDlg('Ada kesalahan dalam alokasi No POLISI, Ket error '+uniSP.Fields[5].AsString,mtError,[mbOK],0);
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
                MessageDlg('Data NOPOL Tidak ditemukan ',mtError,[mbok],0);
              end;
            except on E:Exception do
            begin
              ErrorProgDialog('Error,..bpkb_get_nopol2.Open%Error :'+E.Message);
            end;
            end;
          finally
            FreeAndNil(uniSP);
          end;
        end;
      end
      else
      begin
        MessageDlg('Lokasi Kabupaten harus diisi!',mtError,[mbOK],0);
        cxPageControl2.ActivePage := cxTabSheet4;
        Application.ProcessMessages;
        bSetKel.SetFocus;
      end;
    end
    else
    begin
      MessageDlg('Jenis kendaraan harus diisi!',mtError,[mbOK],0);
      cxPageControl2.ActivePage := cxTabSheet3;
      Application.ProcessMessages;
      cbJenisEntry.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('Warna TNKB kendaraan harus diisi!',mtError,[mbOK],0);
    cxPageControl2.ActivePage := cxTabSheet3;
    Application.ProcessMessages;
    cbWarnaTNKBEntry.SetFocus;
  end;
end;

procedure TfRegistrasiBN.AddBPKB;
var
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'BPKB_ADD3_BN3'; //BPKB_ADD2_BN2
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
      {if dtTglSTNK.Text <> '' then
        uniSP.Params.CreateParam(ftString,'vTGL_DAFTAR_STNK',ptInput).AsString := FormatDateTime('yyyymmdd',dtTglSTNK.Date)
      else
        uniSP.Params.CreateParam(ftString,'vTGL_DAFTAR_STNK',ptInput).AsString := '';}
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
      uniSP.Params.CreateParam(ftString,'vPREVBPKB_ID',ptInput).AsString := vBPKB_ID_Pertama;
      uniSP.Params.CreateParam(ftString,'vNO_PREVBPKB',ptInput).AsString := eNoBPKBPertama.Text;
      uniSP.Params.CreateParam(ftString,'vTGL_PREVBPKB',ptInput).AsString := FormatDateTime('yyyymmdd',dtTglPertama.Date);
      uniSP.Params.CreateParam(ftString,'vNREG_PREVBPKB',ptInput).AsString := eNRegBPKBPertama.Text;
      uniSP.Params.CreateParam(ftString,'vTPT_KELUAR_PREVBPKB',ptInput).AsString := eTempatKeluarPertama.Text;
      uniSP.Params.CreateParam(ftString,'vNAMA_PREVPEMILIK',ptInput).AsString := eNamaPemilikPertama.Text;
      uniSP.Params.CreateParam(ftString,'vALAMAT_PREVPEMILIK',ptInput).AsString := eAlamatPertama.Text;
      uniSP.Params.CreateParam(ftString,'vSEBAB_TDKBERLAKU',ptInput).AsString := cbSbbTdkBerlaku.Text;
      uniSP.Params.CreateParam(ftString,'vSEBAB_TDKBERLAKU_CODE',ptInput).AsInteger := 0;
      uniSP.Params.CreateParam(ftString,'vKPKMBR_ID',ptInput).AsInteger := cbPemohonEntry.EditValue;
      uniSP.Params.CreateParam(ftString,'vOP_ID',ptInput).AsInteger := StrToInt(vIDPetugas);
      if cbNopol.Checked=True then
         uniSP.Params.CreateParam(ftString,'vNOPOL_REQUEST',ptInput).AsString := '2'
      else
         uniSP.Params.CreateParam(ftString,'vNOPOL_REQUEST',ptInput).AsString := '0';
      uniSP.Params.CreateParam(ftString,'vIS_REPLACEMENT',ptInput).AsString := '0';
      uniSP.Params.CreateParam(ftString,'vNO_RESI_BAYAR',ptInput).AsString := eResiPembayaran.Text;
      uniSP.Params.CreateParam(ftString,'vPMT_PROD',ptInput).AsString := '';
      uniSP.Params.CreateParam(ftString,'vIS_BBN2',ptInput).AsString := vIsBBN; // PERUBAHAN DI TGL 17/02/2014
      {if IsProsesBBN1='0' then
         uniSP.Params.CreateParam(ftString,'vIS_BBN2',ptInput).AsString := vIsBBN // GAMTI NAMA
      else if IsProsesBBN1='1' then
         uniSP.Params.CreateParam(ftString,'vIS_BBN2',ptInput).AsString := '2' // BPKB DUPLIKAT
      else if IsProsesBBN1='2' then
         uniSP.Params.CreateParam(ftString,'vIS_BBN2',ptInput).AsString := '3'; // PENGGANTIAN BPKB RUSAK}
      uniSP.Params.CreateParam(ftString,'vENROLLMENT_TYPE',ptInput).AsString := '1';
      uniSP.Params.CreateParam(ftString,'vPOLDA_ID',ptInput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'vPOLRES_ID',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'vKISIGN_ID',ptInput).AsInteger := 0;
      uniSP.Params.CreateParam(ftString,'vTGLREGISTER',ptInput).AsString := FormatDateTime('YYYYMMDD',dtTgl.Date);
      uniSP.Params.CreateParam(ftString,'vPemohonID',ptInput).AsInteger := cbPemohonEntry.EditValue;
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;

      //LOG
      if isTreaceLog = '1' then
      begin
        Log('***START FOR TRACE LOG ADD BPKB - BALIK NAMA - '+eNoBPKBEntry.Text+'***');
        Log('vBERKAS_ID : '+tBerkasID);
        Log('vNO_BPKB : '+eNoBPKBEntry.Text);
        Log('vTGL_BPKB : '+FormatDateTime('yyyymmdd',dtTglEntry.Date));
        Log('vTGL_FAKTUR : '+FormatDateTime('yyyymmdd',dtTglFakturEntry.Date));
        Log('vNO_RANGKA : '+eNoRangkaEntry.Text);
        Log('vNO_MESIN : '+eNoMesinEntry.Text);
        Log('vNO_POLISI : '+Trim(eNopolAwal.Text+' '+eNopolTengah.Text+' '+eNopolAkhir.Text));
        Log('vTPT_DAFTAR_STNK : '+'');
        Log('vTGL_DAFTAR_STNK : '+'');
        Log('vNREG_BPKB : '+eNRegBPKBEntry.Text);
        if eJmlRodaEntry.Text = '' then
          Log('vJML_RODA : '+'0')
        else
          Log('vJML_RODA : '+eJmlRodaEntry.Text);
        Log('vTHN_BUAT : '+eThnBuatEntry.Text);
        Log('vTHN_RAKIT : '+eThnRakitEntry.Text);
        if eJmlSumbuEntry.Text = '' then
          Log('vJML_SUMBU : '+'0')
        else
          Log('vJML_SUMBU : '+eJmlSumbuEntry.Text);
        Log('vVOL_SILINDER : '+eSilinderEntry.Text);
        Log('vBB_ID : '+cbBahanBakarEntry.EditValue);
        Log('vWARNA_ID : '+cbWarnaEntry.EditValue);
        Log('vMERK_ID : '+cbMerkEntry.EditValue);
        Log('vTIPE : '+eTypeEntry.Text);
        Log('vTIPE2 : '+eType2Entry.Text);
        Log('vMODEL_ID : '+cbModelEntry.EditValue);
        Log('vJENIS_ID : '+cbJenisEntry.EditValue);
        Log('vNO_IDENTITAS : '+eNoIdentitasEntry.Text);
        Log('vNAMA_PEMILIK : '+eNamaPemilikEntry.Text);
        Log('vNO_PONSEL : '+ePonselEntry.Text);
        Log('vALAMAT_PEMILIK : '+eAlamatPemilikEntry.Text);
        Log('vKEL_ID : '+eKelurahan.Text);
        Log('vKEC_ID : '+eKecamatan.Text);
        Log('vKAB_ID : '+eKabupaten.Text);
        Log('vPROP_ID : '+ePropinsi.Text);
        Log('vKODE_POS : '+eKdPOSEntry.Text);
        Log('vWILAYAH_ID : '+cbWilayahEntry.EditValue);
        Log('vPEKERJAAN_PEMILIK : '+ePekerjaanEntry.Text);
        Log('vNO_UJI_TIPE : '+eNoSUTEntry.Text);
        Log('vNO_UJI_BERKALA : '+enoTPTEntry.Text);
        Log('vWARNATNKB_ID : '+cbWarnaTNKBEntry.EditValue);
        Log('vTEMPAT_KELUAR : '+eDikeluarkanEntry.Text);
        Log('vJD_ID : '+cbJnsDaftaranEntry.EditValue);
        Log('vNO_PABEAN : '+eNoPabeanEntry.Text);
        if dtTglPabeanEntry.Text = '' then
          Log('vTGL_PABEAN : '+'')
        else
          Log('vTGL_PABEAN : '+FormatDateTime('yyyymmdd',dtTglPabeanEntry.Date));
        Log('vPELABUHAN : '+ePelabuhanEntry.Text);
        if (cbJnsDaftaranEntry.Text = 'CKD') or (cbJnsDaftaranEntry.Text = 'EX DUMP') then
          Log('vIMPMTHD_ID : '+'0')
        else
          Log('vIMPMTHD_ID : '+cbCaraImporEntry.EditValue);
        Log('vNO_FAKTUR : '+eNoFakturEntry.Text);
        Log('vNO_CKD : '+'');
        Log('vKETR_PABEAN : '+eKetLainEntry.Text);
        Log('vPRT_ID : '+cbPeruntukanEntry.EditValue);
        Log('vNO_PIB : '+eNoPIBEntry.Text);
        if dtTglPIBEntry.Text = '' then
          Log('vTGL_PIB : '+'')
        else
          Log('vTGL_PIB : '+FormatDateTime('yyyymmdd',dtTglPIBEntry.Date));
        Log('vNAMA_IMPORTIR : '+eNamaImportirEntry.Text);
        Log('vPREVBPKB_ID : '+vBPKB_ID_Pertama);
        Log('vNO_PREVBPKB : '+eNoBPKBPertama.Text);
        Log('vTGL_PREVBPKB : '+FormatDateTime('yyyymmdd',dtTglPertama.Date));
        Log('vNREG_PREVBPKB : '+eNRegBPKBPertama.Text);
        Log('vTPT_KELUAR_PREVBPKB : '+eTempatKeluarPertama.Text);
        Log('vNAMA_PREVPEMILIK : '+eNamaPemilikPertama.Text);
        Log('vALAMAT_PREVPEMILIK : '+eAlamatPertama.Text);
        Log('vSEBAB_TDKBERLAKU : '+cbSbbTdkBerlaku.Text);
        Log('vSEBAB_TDKBERLAKU_CODE : '+'0');
        Log('vKPKMBR_ID : '+cbPemohonEntry.EditValue);
        Log('vOP_ID : '+vIDPetugas);
        Log('vNOPOL_REQUEST : '+'0');
        Log('vIS_REPLACEMENT : '+'0');
        Log('vNO_RESI_BAYAR : '+eResiPembayaran.Text);
        Log('vPMT_PROD : '+'');
        Log('vIS_BBN2 : '+vIsBBN); // GAMTI NAMA
        {if IsProsesBBN1='0' then
           Log('vIS_BBN2 : '+'1') // GAMTI NAMA
        else if IsProsesBBN1='1' then
           Log('vIS_BBN2 : '+'2') // BPKB DUPLIKAT
        else if IsProsesBBN1='2' then
           Log('vIS_BBN2 : '+'3'); // PENGGANTIAN BPKB RUSAK}
        Log('vENROLLMENT_TYPE : '+'1');
        Log('vPOLDA_ID : '+vPOLDAID);
        Log('vPOLRES_ID : '+vPOLRESID);
        Log('vKISIGN_ID : '+'0');
        Log('vTGLREGISTER : '+FormatDateTime('YYYYMMDD',dtTgl.Date));
        Log('vPemohonID : '+cbPemohonEntry.EditValue);
        Log('***END FOR TRACE LOG ADD BPKB - BALIK NAMA - '+eNoBPKBEntry.Text+'***');
      end;

      uniSP.ExecProc;

      fWait.Hide;
      Application.ProcessMessages;
      Log('RESPONSE FROM SERVER - BALIK NAMA - [NO BPKB ]: '+eNoBPKBEntry.Text+' - '+uniSP.Params.ParamValues['RESULT']);
      if Pos('KESALAHAN',uniSP.Params.ParamValues['RESULT']) > 0 then
      begin
         MessageDlgError('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT']);
      end
      else
      begin
         MessageDlgInsert('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT']);
         bBaruEntry.Click;
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..BPKB_ADD3_BN3.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfRegistrasiBN.RefreshSTB;
begin
  QSTB1.Close;
  QSTB1.SQL.Text := 'select to_char(STB_ID) as STB_ID,STB_NAMA from m_stb order by STB_NAMA';
  QSTB1.Open;

  QSTB2.Close;
  QSTB2.SQL.Text := 'select to_char(STB_ID) as STB_ID,STB_NAMA from m_stb order by STB_NAMA';
  QSTB2.Open;
end;

procedure TfRegistrasiBN.bSimpanEntryClick(Sender: TObject);
var
  i : integer;
begin
  if eNoBPKBEntry.Text <> '' then
  begin
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
                                            MessageDlg('Nama Pemilik tidak boleh lebih dari 2 baris',mtWarning,[mbOK],0);
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
                                                MessageDlg('Alamat Pemilik tidak boleh lebih dari 3 baris',mtWarning,[mbOK],0);
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
                                                                              MessageDlg('No Polisi Failed!',mtError,[mbOK],0);
                                                                              cxPageControl2.ActivePage := cxTabSheet3;
                                                                              Application.ProcessMessages;
                                                                              eNopolAwal.SetFocus;
                                                                            end;
                                                                          end
                                                                          else
                                                                          begin
                                                                            MessageDlg('Nama Propinsi harus diisi!',mtError,[mbOK],0);
                                                                            cxPageControl2.ActivePage := cxTabSheet4;
                                                                            Application.ProcessMessages;
                                                                            bSetKel.Click;
                                                                          end;
                                                                        end
                                                                        else
                                                                        begin
                                                                          MessageDlg('Nama Kabupaten harus diisi!',mtError,[mbOK],0);
                                                                          cxPageControl2.ActivePage := cxTabSheet4;
                                                                          Application.ProcessMessages;
                                                                          bSetKel.Click;
                                                                        end;
                                                                      end
                                                                      else
                                                                      begin
                                                                        MessageDlg('Nama Kecamatan harus diisi!',mtError,[mbOK],0);
                                                                        cxPageControl2.ActivePage := cxTabSheet4;
                                                                        Application.ProcessMessages;
                                                                        bSetKel.Click;
                                                                      end;
                                                                    end
                                                                    else
                                                                    begin
                                                                      MessageDlg('Nama Kelurahan harus diisi!',mtError,[mbOK],0);
                                                                      cxPageControl2.ActivePage := cxTabSheet4;
                                                                      Application.ProcessMessages;
                                                                      bSetKel.Click;
                                                                    end;
                                                                  end
                                                                  else
                                                                  begin
                                                                    MessageDlg('No Polisi harus diisi!',mtError,[mbOK],0);
                                                                    cxPageControl2.ActivePage := cxTabSheet3;
                                                                    Application.ProcessMessages;
                                                                    eNopolAwal.SetFocus;
                                                                  end;
                                                                end
                                                                else
                                                                begin
                                                                  MessageDlg('Resi Pembayaran Daftaran harus diisi!',mtError,[mbOK],0);
                                                                  cxPageControl2.ActivePage := cxTabSheet3;
                                                                  Application.ProcessMessages;
                                                                  eResiPembayaran.SetFocus;
                                                                end;
                                                              end
                                                              else
                                                              begin
                                                                MessageDlg('Pemohon Daftaran harus diisi!',mtError,[mbOK],0);
                                                                cxPageControl2.ActivePage := cxTabSheet5;
                                                                Application.ProcessMessages;
                                                                cbPemohonEntry.SetFocus;
                                                              end;
                                                            end
                                                            else
                                                            begin
                                                              MessageDlg('Pemohon Daftaran harus diisi!',mtError,[mbOK],0);
                                                              cxPageControl2.ActivePage := cxTabSheet5;
                                                              Application.ProcessMessages;
                                                              cbPemohonEntry.SetFocus;
                                                            end;
                                                          end
                                                          else
                                                          begin
                                                            MessageDlg('Keterangan Pabean harus diisi!',mtError,[mbOK],0);
                                                            cxPageControl2.ActivePage := cxTabSheet5;
                                                            Application.ProcessMessages;
                                                            eKetLainEntry.SetFocus;
                                                          end;
                                                        end
                                                        else
                                                        begin
                                                          MessageDlg('Nama Importir / APM harus diisi!',mtError,[mbOK],0);
                                                          cxPageControl2.ActivePage := cxTabSheet5;
                                                          Application.ProcessMessages;
                                                          eNamaImportirEntry.SetFocus;
                                                        end;
                                                      end
                                                      else
                                                      begin
                                                        MessageDlg('Tanggal Faktur harus diisi!',mtError,[mbOK],0);
                                                        cxPageControl2.ActivePage := cxTabSheet5;
                                                        Application.ProcessMessages;
                                                        dtTglFakturEntry.SetFocus;
                                                      end;
                                                    end
                                                    else
                                                    begin
                                                      MessageDlg('No Faktur Kendaraan harus diisi!',mtError,[mbOK],0);
                                                      cxPageControl2.ActivePage := cxTabSheet5;
                                                      Application.ProcessMessages;
                                                      eNoFakturEntry.SetFocus;
                                                    end;
                                                  end
                                                  else
                                                  begin
                                                    MessageDlg('Jenis Daftaran harus diisi!',mtError,[mbOK],0);
                                                    cxPageControl2.ActivePage := cxTabSheet5;
                                                    Application.ProcessMessages;
                                                    cbJnsDaftaranEntry.SetFocus;
                                                  end;
                                                end
                                                else
                                                begin
                                                  MessageDlg('Wilayah Pemilik harus diisi!',mtError,[mbOK],0);
                                                  cxPageControl2.ActivePage := cxTabSheet4;
                                                  Application.ProcessMessages;
                                                  cbWilayahEntry.SetFocus;
                                                end;
                                              end;
                                            end
                                            else
                                            begin
                                              MessageDlg('Alamat Pemilik harus diisi!',mtError,[mbOK],0);
                                              cxPageControl2.ActivePage := cxTabSheet4;
                                              Application.ProcessMessages;
                                              eAlamatPemilikEntry.SetFocus;
                                            end;
                                          end;
                                        end
                                        else
                                        begin
                                          MessageDlg('Nama Pemilik harus diisi!',mtError,[mbOK],0);
                                          cxPageControl2.ActivePage := cxTabSheet4;
                                          Application.ProcessMessages;
                                          eNamaPemilikEntry.SetFocus;
                                        end;
                                      end
                                      else
                                      begin
                                        MessageDlg('No Identitas Pemilik harus diisi!',mtError,[mbOK],0);
                                        cxPageControl2.ActivePage := cxTabSheet4;
                                        Application.ProcessMessages;
                                        eNoIdentitasEntry.SetFocus;
                                      end;
                                    end
                                    else
                                    begin
                                      MessageDlg('Warna TNKB kendaraan harus diisi!',mtError,[mbOK],0);
                                      cxPageControl2.ActivePage := cxTabSheet3;
                                      Application.ProcessMessages;
                                      cbWarnaTNKBEntry.SetFocus;
                                    end;
                                  end
                                  else
                                  begin
                                    MessageDlg('Peruntukan kendaraan harus diisi!',mtError,[mbOK],0);
                                    cxPageControl2.ActivePage := cxTabSheet3;
                                    Application.ProcessMessages;
                                    cbPeruntukanEntry.SetFocus;
                                  end;
                                end
                                else
                                begin
                                  MessageDlg('Bahan Bakar kendaraan harus diisi!',mtError,[mbOK],0);
                                  cxPageControl2.ActivePage := cxTabSheet3;
                                  Application.ProcessMessages;
                                  cbBahanBakarEntry.SetFocus;
                                end;
                              end
                              else
                              begin
                                MessageDlg('Jumlah Roda kendaraan harus diisi!',mtError,[mbOK],0);
                                cxPageControl2.ActivePage := cxTabSheet3;
                                Application.ProcessMessages;
                                eJmlRodaEntry.SetFocus;
                              end;
                            end
                            else
                            begin
                              MessageDlg('Warna kendaraan harus diisi!',mtError,[mbOK],0);
                              cxPageControl2.ActivePage := cxTabSheet3;
                              Application.ProcessMessages;
                              cbWarnaEntry.SetFocus;
                            end;
                          end
                          else
                          begin
                            MessageDlg('Silinder kendaraan harus diisi!',mtError,[mbOK],0);
                            cxPageControl2.ActivePage := cxTabSheet3;
                            Application.ProcessMessages;
                            eSilinderEntry.SetFocus;
                          end;
                        end
                        else
                        begin
                          MessageDlg('Tahun Rakit kendaraan harus diisi!',mtError,[mbOK],0);
                          cxPageControl2.ActivePage := cxTabSheet3;
                          Application.ProcessMessages;
                          eThnRakitEntry.SetFocus;
                        end;
                      end
                      else
                      begin
                        MessageDlg('Tahun Pembuatan kendaraan harus diisi!',mtError,[mbOK],0);
                        cxPageControl2.ActivePage := cxTabSheet3;
                        Application.ProcessMessages;
                        eThnBuatEntry.SetFocus;
                      end;
                    end
                    else
                    begin
                      MessageDlg('Model kendaraan harus diisi!',mtError,[mbOK],0);
                      cxPageControl2.ActivePage := cxTabSheet3;
                      Application.ProcessMessages;
                      cbModelEntry.SetFocus;
                    end;
                  end
                  else
                  begin
                    MessageDlg('Jenis kendaraan harus diisi!',mtError,[mbOK],0);
                    cxPageControl2.ActivePage := cxTabSheet3;
                    Application.ProcessMessages;
                    cbJenisEntry.SetFocus;
                  end;
                end
                else
                begin
                  MessageDlg('Type kendaraan harus diisi!',mtError,[mbOK],0);
                  cxPageControl2.ActivePage := cxTabSheet3;
                  Application.ProcessMessages;
                  eTypeEntry.SetFocus;
                end;
              end
              else
              begin
                MessageDlg('Merk kendaraan harus diisi!',mtError,[mbOK],0);
                cxPageControl2.ActivePage := cxTabSheet3;
                Application.ProcessMessages;
                cbMerkEntry.SetFocus;
              end;
            end
            else
            begin
              MessageDlg('No Mesin kendaraan harus diisi!',mtError,[mbOK],0);
              cxPageControl2.ActivePage := cxTabSheet3;
              Application.ProcessMessages;
              eNoMesinEntry.SetFocus;
            end;
          end
          else
          begin
            MessageDlg('No Rangka kendaraan harus diisi!',mtError,[mbOK],0);
            cxPageControl2.ActivePage := cxTabSheet3;
            Application.ProcessMessages;
            eNoRangkaEntry.SetFocus;
          end;
        end
        else
        begin
          MessageDlg('Tanggal BPKB harus diisi!',mtError,[mbOK],0);
          cxPageControl2.ActivePage := cxTabSheet3;
          Application.ProcessMessages;
          dtTglEntry.SetFocus;
        end;
      end
      else
      begin
        MessageDlg('Lokasi BPKB harus diisi!',mtError,[mbOK],0);
        cxPageControl2.ActivePage := cxTabSheet3;
        Application.ProcessMessages;
        eDikeluarkanEntry.SetFocus;
      end;
    end
    else
    begin
      MessageDlg('No Registrasi BPKB harus diisi!',mtError,[mbOK],0);
      cxPageControl2.ActivePage := cxTabSheet3;
      Application.ProcessMessages;
      eNRegBPKBEntry.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('No BPKB harus diisi!',mtError,[mbOK],0);
    cxPageControl2.ActivePage := cxTabSheet3;
    Application.ProcessMessages;
    eNoBPKBEntry.SetFocus;
  end;
end;

procedure TfRegistrasiBN.bGetDataRegisterClick(Sender: TObject);
begin
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_register_bn';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tgl',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglRegister.Date); // bbn1
      Params.CreateParam(ftString,'v_operator_id',ptinput).AsString := vIDPetugas;
      Params.CreateParam(ftString,'vIS_BBN2',ptInput).AsString := vIsBBN; // GAMTI NAMA
      {if IsProsesBBN1='0' then
         Params.CreateParam(ftString,'vIS_BBN2',ptInput).AsString := '1' // GAMTI NAMA
      else if IsProsesBBN1='1' then
         Params.CreateParam(ftString,'vIS_BBN2',ptInput).AsString := '2' // BPKB DUPLIKAT
      else if IsProsesBBN1='2' then
         Params.CreateParam(ftString,'vIS_BBN2',ptInput).AsString := '3'; // PENGGANTIAN BPKB RUSAK}
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_register_bn%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfRegistrasiBN.cbSemuaClick(Sender: TObject);
begin
  if cbSemua.Checked = True then
  begin
    with uniSPTampil do
    begin
      Active := False;
      StoredProcName := 'bpkb_get_register_bn';
      try
        Params.Clear;
        Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
        Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
        Params.CreateParam(ftString,'v_tgl',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglRegister.Date); // bbn1
        Params.CreateParam(ftString,'v_operator_id',ptinput).AsString := ''; //vIDPetugas;
        Params.CreateParam(ftString,'vIS_BBN2',ptInput).AsString := vIsBBN; // GAMTI NAMA
        Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
        Open;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..bpkb_get_register%Error '+E.Message);
      end;
      end;
    end;
  end;
end;

procedure TfRegistrasiBN.EDITDATA1Click(Sender: TObject);
var
  uniSP : TUniStoredProc;
  DataIn : TStringList;
begin
  if uniSPTampil.FieldByName('BPKB_STATUS').AsString = '1' then
  begin
    try
      DataIn := TStringList.Create;
      isEdit := '1';
      uniSP := TUniStoredProc.Create(Application);
      uniSP.Connection := DM.dbSrv;
      uniSP.Close;
      uniSP.StoredProcName := 'bpkb_get_data_bn_view';
      try
        uniSP.Params.Clear;
        uniSP.Params.CreateParam(ftstring,'v_polda_id',ptinput).AsString := vPOLDAID;
        uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
        uniSP.Params.CreateParam(ftString,'v_is_cari',ptInput).AsString := '0';
        uniSP.Params.CreateParam(ftString,'v_cari',ptInput).AsString := uniSPTampil.FieldByName('NO_BPKB').AsString;
        uniSP.Params.CreateParam(ftString,'v_bbn',ptInput).AsString := vIsBBN;
        uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
        uniSP.Active := True;

        if uniSP.RecordCount > 0 then
        begin
          lJudul.Caption := '=== "PEMBUATAN BPKB GANTI NAMA" ===          VIEW BPKB FROM LIST DATA BPKB';
          cxPageControl1.ActivePageIndex := 0;
          cxPageControl2.ActivePageIndex := 0;
          EnableKomponenRegister;
          eNoRangkaEntry.Enabled := True;
          eNoMesinEntry.Enabled := True;
          lStatusNOPOL.Caption := 'BLM TERPAKAI';
          lStatusNOPOL.Color := clBlue;
          vBPKB_ID := uniSP.FieldByName('BPKB_ID').Text;
          vHIST_ID := uniSP.FieldByName('CURRENT_HISTID').Text;
          vPREV_BPKB_ID := uniSP.FieldByName('PREVBPKB_ID').Text;
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
            vNopolPertama_1 := DataIn.Strings[0];
            eNopolTengah.Text := DataIn.Strings[1];
            vNopolPertama_2 := DataIn.Strings[1];
            eNopolAkhir.Text := DataIn.Strings[2];
            vNopolPertama_3 := DataIn.Strings[2];
          end
          else
          begin
            eNopolAwal.Text := DataIn.Strings[0];
            vNopolPertama_1 := DataIn.Strings[0];
            eNopolTengah.Text := DataIn.Strings[1];
            vNopolPertama_2 := DataIn.Strings[1];
            eNopolAkhir.Text := '';
            vNopolPertama_3 := '';
          end;
          eNoBPKBPertama.Text := uniSP.FieldByName('NO_PREVBPKB').Text;
          dtTglPertama.Date := uniSP.FieldByName('TGL_PREVBPKB').AsDateTime;
          eNRegBPKBPertama.Text := uniSP.FieldByName('NREG_PREVBPKB').Text;
          cbSbbTdkBerlaku.Text := uniSP.FieldByName('SEBAB_TDKBERLAKU').Text;
          eTempatKeluarPertama.Text := uniSP.FieldByName('TPT_KELUAR_PREVBPKB').Text;
          eNamaPemilikPertama.Text := uniSP.FieldByName('NAMA_PREVPEMILIK').Text;
          eAlamatPertama.Text := uniSP.FieldByName('ALAMAT_PREVPEMILIK').Text;
          lStatusBPKB.Caption := uniSP.FieldByName('SEBAB_TDKBERLAKU').Text;
          bRequestNopol.Enabled := True;

          fWait.Hide;
          Application.ProcessMessages;
          bSimpanEntry.Enabled := True;
          bBaruEntry.Enabled := True;
        end
        else
        begin
          fWait.Hide;
          MessageDlg('Data Berkas Tidak ditemukan di Server!!!',mtWarning,[mbOK],0);
        end;
      except on E:Exception do
      begin
        fWait.Hide;
        ErrorProgDialog('Error,..bpkb_get_data_bn_view.Open%Error :'+E.Message);
      end;
      end;
    finally
      FreeAndNil(uniSP);
      FreeAndNil(DataIn);
    end;
  end
  else if uniSPTampil.FieldByName('BPKB_STATUS').AsString = '0'  then
  begin
    MessageDlg('DATA TIDAK BISA DITAMPILKAN, "DATA BPKB '+uniSPTampil.FieldByName('NO_BPKB').AsString+' SUDAH TIDAK AKTIF"',mtInformation,[mbok],0);
  end
  else if uniSPTampil.FieldByName('BPKB_STATUS').AsString = '2'  then
  begin
    MessageDlg('DATA TIDAK BISA DITAMPILKAN, "DATA BPKB '+uniSPTampil.FieldByName('NO_BPKB').AsString+' DALAM KEADAAN BLOKIR"',mtInformation,[mbok],0);
  end
  else if uniSPTampil.FieldByName('BPKB_STATUS').AsString = '3'  then
  begin
    MessageDlg('DATA TIDAK BISA DITAMPILKAN, "DATA BPKB '+uniSPTampil.FieldByName('NO_BPKB').AsString+' SUDAH MUTASI LUAR DAERAH"',mtInformation,[mbok],0);
  end;
end;

procedure TfRegistrasiBN.BPKBEdit;
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
      uniSP.StoredProcName := 'BPKB_EDIT3_BN3';    //BPKB_EDIT2_BN
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
        uniSP.Params.CreateParam(ftString,'vTPT_DAFTAR_STNK',ptInput).AsString := '';
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
        uniSP.Params.CreateParam(ftString,'vPREVBPKB_ID',ptInput).AsString := vPREV_BPKB_ID;
        uniSP.Params.CreateParam(ftString,'vNO_PREVBPKB',ptInput).AsString := eNoBPKBPertama.Text;
        if dtTglPertama.Text = '' then
           uniSP.Params.CreateParam(ftString,'vTGL_PREVBPKB',ptInput).Clear
        else
           uniSP.Params.CreateParam(ftString,'vTGL_PREVBPKB',ptInput).AsDate := dtTglPertama.Date;
        uniSP.Params.CreateParam(ftString,'vNREG_PREVBPKB',ptInput).AsString := eNRegBPKBPertama.Text;
        uniSP.Params.CreateParam(ftString,'vTPT_KELUAR_PREVBPKB',ptInput).AsString := eTempatKeluarPertama.Text;
        uniSP.Params.CreateParam(ftString,'vNAMA_PREVPEMILIK',ptInput).AsString := eNamaPemilikPertama.Text;
        uniSP.Params.CreateParam(ftString,'vALAMAT_PREVPEMILIK',ptInput).AsString := eAlamatPertama.Text;
        uniSP.Params.CreateParam(ftString,'vSEBAB_TDKBERLAKU',ptInput).AsString := cbSbbTdkBerlaku.Text;
        uniSP.Params.CreateParam(ftString,'vSEBAB_TDKBERLAKU_CODE',ptInput).AsInteger := cbSbbTdkBerlaku.EditValue;
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
        begin
           isNoBPKBBN := '';
           isNoBPKBBNLama := '';
           MessageDlg('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT'],mtError,[mbOK],0);
        end
        else
        begin
           isNoBPKBBN := '';
           isNoBPKBBNLama := '';
           MessageDlg('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT'],mtInformation,[MBOK],0);
        end;
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

procedure TfRegistrasiBN.rbNoBPKBClick(Sender: TObject);
begin
  rbNoBPKB.Checked := True;
  eNoBPKB.SetFocus;
end;

procedure TfRegistrasiBN.rbNRegBPKBClick(Sender: TObject);
begin
  rbNRegBPKB.Checked := True;
  eNoRegBPKB.SetFocus;
end;

procedure TfRegistrasiBN.rbBerkasBarcodeClick(Sender: TObject);
begin
  rbBerkasBarcode.Checked := True;
  eNoBarcode.SetFocus;
end;

procedure TfRegistrasiBN.RefreshKelurahan;
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

procedure TfRegistrasiBN.pkdposMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pkdpos.Handle, wm_SysCommand,$f012,0);
end;

procedure TfRegistrasiBN.Shape3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pkdpos.Handle, wm_SysCommand,$f012,0);
end;

procedure TfRegistrasiBN.Button1Click(Sender: TObject);
begin
  pkdpos.Visible := False;
end;

procedure TfRegistrasiBN.eCariKelurahanKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 40 then
     dbgData.SetFocus;
end;

procedure TfRegistrasiBN.eCariKelurahanPropertiesChange(Sender: TObject);
begin
  RefreshKelurahan;
end;

procedure TfRegistrasiBN.dbgDataDblClick(Sender: TObject);
begin
  eKelurahan.Text := Q2.FieldByName('keluarahan').AsString;
  eKecamatan.Text := Q2.FieldByName('kecamatan').AsString;
  eKabupaten.Text := Q2.FieldByName('kabupaten').AsString;
  ePropinsi.Text := Q2.FieldByName('propinsi').AsString;
  eKdPOSEntry.Text := Q2.FieldByName('kd_pos').AsString;
  pkdpos.Visible := False;
  ePonselEntry.SetFocus;
end;

procedure TfRegistrasiBN.dbgDataKeyDown(Sender: TObject; var Key: Word;
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

procedure TfRegistrasiBN.cbModelEntryPropertiesPopup(Sender: TObject);
begin
  cbModelEntry.Properties.ListSource.DataSet.Filter := 'JENIS_ID='+cbJenisEntry.EditValue;
  cbModelEntry.Properties.ListSource.DataSet.Filtered := True;
end;

procedure TfRegistrasiBN.cbJenisEntryPropertiesChange(Sender: TObject);
begin
  cbModelEntry.Text := '';
end;

procedure TfRegistrasiBN.eModelNamaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     eNRegBPKBEntry.SetFocus;
end;

procedure TfRegistrasiBN.cxButton9Click(Sender: TObject);
begin
  pModel.Visible := False;
end;

procedure TfRegistrasiBN.cxButton10Click(Sender: TObject);
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
            MessageDlg('PROSES PENAMBAHAN TIDAK BISA DILAKUKAN, NAMA MODEL ' +
              'SUDAH ADA DIDATABASE',mtError,[mbOK],0);
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

            MessageDlg('PROSES PENYIMPANAN DATA BERHASIL',mtInformation,[mbOK],
              0);

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
        MessageDlg('WARNA KARTU HARUS DIPILIH',mtError,[mbOK],0);
        cbWarnaKartu.SetFocus;
      end;
    end
    else
    begin
      MessageDlg('JENIS MODEL HARUS DIPILIH',mtError,[mbOK],0);
      cbJenisModel.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('NAMA MODEL HARUS DIISI',mtError,[mbOK],0);
    eModelNama.SetFocus;
  end;
end;

procedure TfRegistrasiBN.cxButton11Click(Sender: TObject);
begin
  eModelNama.Text := '';
  cbJenisModel.Text := '';
  cbWarnaKartu.Text := '';
  eModelNama.SetFocus;
end;

procedure TfRegistrasiBN.cxButton17Click(Sender: TObject);
begin
  RefreshCbMerk;
end;

procedure TfRegistrasiBN.cxButton18Click(Sender: TObject);
begin
  RefreshCbJenis;
end;

procedure TfRegistrasiBN.cxButton7Click(Sender: TObject);
begin
  RefreshCbModel;
end;

procedure TfRegistrasiBN.pModelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pModel.Handle, wm_SysCommand,$f012,0);
end;

procedure TfRegistrasiBN.cxButton8Click(Sender: TObject);
begin
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
end;

procedure TfRegistrasiBN.cxButton19Click(Sender: TObject);
begin
  RefreshCbBahanBakar;
end;

procedure TfRegistrasiBN.cxButton20Click(Sender: TObject);
begin
  RefreshCbPeruntukan;
end;

procedure TfRegistrasiBN.cxButton21Click(Sender: TObject);
begin
  RefreshCbWarnaTNKB;
end;

procedure TfRegistrasiBN.cxButton4Click(Sender: TObject);
begin
  RefreshCbWarna;
end;

procedure TfRegistrasiBN.pWarnaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pWarna.Handle, wm_SysCommand,$f012,0);
end;

procedure TfRegistrasiBN.cxButton6Click(Sender: TObject);
begin
  pWarna.Visible := False;
end;

procedure TfRegistrasiBN.eInputWarnaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     bSimpan.Click;
end;

procedure TfRegistrasiBN.bBaruPendaftaranBBN1Click(Sender: TObject);
begin
  eInputWarna.Text := '';
end;

procedure TfRegistrasiBN.bSimpanClick(Sender: TObject);
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
      MessageDlg('DATA WARNA BERHASIL DISIMPAN',mtInformation,[mbOK],0);
    end;
  end;
end;

procedure TfRegistrasiBN.cxButton5Click(Sender: TObject);
begin
  eInputWarna.Text := '';
  pWarna.Visible := True;
  pWarna.Left := 120;
  pWarna.Top := 144;
end;

procedure TfRegistrasiBN.cxButton12Click(Sender: TObject);
begin
  RefreshCbWilayah;
end;

procedure TfRegistrasiBN.pWilayahMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pWilayah.Handle, wm_SysCommand,$f012,0);
end;

procedure TfRegistrasiBN.cxButton14Click(Sender: TObject);
begin
  pWilayah.Visible := False;
end;

procedure TfRegistrasiBN.cxButton15Click(Sender: TObject);
begin
  eWilayahTambah.Text := '';
  eWilayahTambah.SetFocus;
end;

procedure TfRegistrasiBN.cxButton16Click(Sender: TObject);
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
            MessageDlg('DATA BERHASIL DISIMPAN',mtInformation,[mbOK],0);
            RefreshCbWilayah;
          except on E: Exception do
          begin
            ErrorProgDialog('Error... Tambah wilayah '+E.Message);
          end;
          end;
        end
        else
        begin
          MessageDlg('DATA TIDAK ADA, HUBUNGI ADMINISTRATOR UNTU TAMBAHKAN SECARA MANUAL DIDATABASE',mtInformation,[mbOK],0);
        end;
      end;
    end;
  end
  else
  begin
    MessageDlg('DATA WILAYAH HARUS DIISI',mtError,[MBOK],0);
    eWilayahTambah.SetFocus;
  end;
end;

procedure TfRegistrasiBN.cxButton13Click(Sender: TObject);
begin
  eWilayahTambah.Text := '';
  pWilayah.Visible := tRUE;
  pWilayah.Left := 120;
  pWilayah.Top := 144;
end;

procedure TfRegistrasiBN.cxButton22Click(Sender: TObject);
begin
  RefreshCbJenisDaftar;
end;

procedure TfRegistrasiBN.cxButton23Click(Sender: TObject);
begin
  RefreshCbCaraImpor;
end;

procedure TfRegistrasiBN.cxButton3Click(Sender: TObject);
begin
  RefreshCbPemohon;
end;

procedure TfRegistrasiBN.cxButton1Click(Sender: TObject);
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

procedure TfRegistrasiBN.eNoBPKBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     bCari.Click;
end;

procedure TfRegistrasiBN.eNoRegBPKBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     bCari.Click;
end;

procedure TfRegistrasiBN.eNoBarcodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     bCari.Click;
end;

procedure TfRegistrasiBN.GetDataFaktur2;
var
  uniSP : TUniStoredProc;
  DataIn : TStringList;
begin
  try
    DataIn := TStringList.Create;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_get_data_faktur_bn2';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftstring,'v_polda_id',ptinput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'v_is_cari',ptInput).AsString := '0';
      uniSP.Params.CreateParam(ftString,'v_cari',ptInput).AsString := eNoBPKBCariBN.Text;
      uniSP.Params.CreateParam(ftString,'v_bbn',ptInput).AsString := vIsBBN;
      uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      uniSP.Active := True;
      fWait.Close;
      Application.ProcessMessages;
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
        cxPageControl1.ActivePageIndex := 0;
        cxPageControl2.ActivePageIndex := 0;
        //EnableKomponenRegister;
        eNoRangkaEntry.Enabled := True;
        eNoMesinEntry.Enabled := True;
        lStatusNOPOL.Caption := '';
        lStatusNOPOL.Color := clRed;
        cbNopol.Checked := False;
        cbNopol.Enabled := False;
        //bRequestNopol.Enabled := True;
        vBPKB_ID := uniSP.FieldByName('BPKB_ID').Text;
        vHIST_ID := uniSP.FieldByName('CURRENT_HISTID').Text;
        {eNoBPKBEntry.Text := uniSP.FieldByName('NO_BPKB').Text;
        eNRegBPKBEntry.Text := uniSP.FieldByName('NREG_BPKB').Text;
        eDikeluarkanEntry.Text := uniSP.FieldByName('TEMPAT_KELUAR').Text;
        dtTglEntry.Date := uniSP.FieldByName('TGL_BPKB').AsDateTime;}
        eNoRangkaEntry.Text := uniSP.FieldByName('NO_RANGKA').Text;
        eNoMesinEntry.Text := uniSP.FieldByName('NO_MESIN').Text;

        if uniSP.FieldByName('MERK_NAMA').Value=Null then
        begin
          if cbMerkEntry.Text <> '' then
             if IsStrANumber(cbMerkEntry.EditValue) <> True then
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

        if uniSP.FieldByName('JENIS_NAMA').Value=Null then
        begin
          if cbJenisEntry.Text <> '' then
             if IsStrANumber(cbJenisEntry.EditValue) <> True then
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
             if IsStrANumber(cbModelEntry.EditValue) <> True then
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
             if IsStrANumber(cbWarnaEntry.EditValue) <> True then
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
          if IsStrANumber(cbBahanBakarEntry.EditValue) <> True then
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
          if IsStrANumber(cbPeruntukanEntry.EditValue) <> True then
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
          if IsStrANumber(cbWarnaTNKBEntry.EditValue) <> True then
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
          if IsStrANumber(cbWilayahEntry.EditValue) <> True then
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
          if IsStrANumber(cbJnsDaftaranEntry.EditValue) <> True then
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
          if IsStrANumber(cbCaraImporEntry.EditValue) <> True then
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
          if IsStrANumber(cbPemohonEntry.EditValue) <> True then
             cbPemohonEntry.Text := '';
        end
        else
        begin
          cbPemohonEntry.ItemIndex := -1;
          cbPemohonEntry.DoEditing;
          cbPemohonEntry.EditText := uniSP.FieldByName('PEMOHON_NAMA').Text;
          cbPemohonEntry.PostEditValue;
        end;

        vBPKB_ID_Pertama := uniSP.FieldByName('BPKB_ID').Text;
        vBerkas_ID_Pertama := uniSP.FieldByName('BERKAS_ID').Text;
        eNoBPKBPertama.Text := uniSP.FieldByName('NO_BPKB').Text;
        dtTglPertama.Date := uniSP.FieldByName('TGL_BPKB').AsDateTime;
        eNRegBPKBPertama.Text := uniSP.FieldByName('NREG_BPKB').Text;
        eTempatKeluarPertama.Text := uniSP.FieldByName('TEMPAT_KELUAR').Text;
        eNamaPemilikPertama.Text := uniSP.FieldByName('NAMA_PEMILIK').Text;
        eAlamatPertama.Text := uniSP.FieldByName('ALAMAT_PEMILIK').Text;
        eNamaImportirEntry.Text := uniSP.FieldByName('ATPM_NAMA').Text;

        if uniSP.FieldByName('BARCODE').Text = '' then
           eResiPembayaran.Text := '###'
        else
           eResiPembayaran.Text := uniSP.FieldByName('BARCODE').Text;
        DataIn.Text := ParsingSTR(uniSP.FieldByName('NO_POLISI').Text,' ');

        if DataIn.Count > 2 then
        begin
          vNopolPertama_1 := DataIn.Strings[0];
          vNopolPertama_2 := DataIn.Strings[1];
          vNopolPertama_3 := DataIn.Strings[2];

          eNopolAwal.Text := DataIn.Strings[0];
          eNopolTengah.Text := DataIn.Strings[1];
          eNopolAkhir.Text := DataIn.Strings[2];
        end
        else
        begin
          vNopolPertama_1 := DataIn.Strings[0];
          vNopolPertama_2 := DataIn.Strings[1];
          vNopolPertama_3 := '';

          eNopolAwal.Text := DataIn.Strings[0];
          eNopolTengah.Text := DataIn.Strings[1];
          eNopolAkhir.Text := '';
        end;
        fWait.Hide;
        Application.ProcessMessages;
        bSimpanEntry.Enabled := True;
        bBaruEntry.Enabled := True;
      end
      else
      begin
        MessageDlg('DATA BERKAS TIDAK DITEMUKAN DI SERVER!!!'+#13+
                   'LAKUKAN PROSES ENTRY DATA REVERENSI BPKB TERLEBIH DAHULU',mtWarning,[mbOK],0);
        Application.ProcessMessages;
        EnableKomponenRegister;
        eNoBPKBPertama.Text := eNoBPKBCariBN.Text;
        cbNopol.Enabled := True;
        lStatusNOPOL.Caption := '';
        lStatusNOPOL.Color := clBlue;
        eNoRangkaEntry.SetFocus;
      end;
    except on E:Exception do
    begin
      fWait.Hide;
      ErrorProgDialog('Error,..bpkb_get_data_faktur_bn2.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfRegistrasiBN.TampilDataSudahAda(vISGET, vCari, vBPKBLama: String);
var
  uniSP : TUniStoredProc;
  DataIn : TStringList;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    DataIn := TStringList.Create;
    isEdit := '0';
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_get_data_bn';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftstring,'v_polda_id',ptinput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'v_is_cari',ptInput).AsString := '0'; // SET LANGSUNG 0 KARENA HANYA NO BPKB YG BS DIACARI
      uniSP.Params.CreateParam(ftString,'v_cari',ptInput).AsString := vBPKBLama;  // MENGGUNAKAN PARAMETER NO_BPKB
      uniSP.Params.CreateParam(ftString,'v_bbn',ptInput).AsString := vIsBBN;
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
        //vBPKB_ID := uniSP.FieldByName('BPKB_ID').Text;
        vHIST_ID := uniSP.FieldByName('CURRENT_HISTID').Text;
        vPREV_BPKB_ID := uniSP.FieldByName('BPKB_ID').Text; //uniSP.FieldByName('PREVBPKB_ID').Text;
        // AMBIL DATA DARI T_BERKAS YG BARU

        QCari.Close;
        QCari.SQL.Text := 'SELECT BERKAS_ID,BARCODE_DATA,NO_BPKB,NREG_BPKB,TGL_KELUAR,JNS_PENERBITAN,POLDA_ID,POLRES_ID,IS_PROSES'+
                          ' FROM T_BERKAS WHERE NO_BPKB=:NO_BPKB';
        try
          QCari.Params[0].AsString := vCari;
          QCari.Open;

          eNoBPKBEntry.Text := QCari.FieldByName('NO_BPKB').Text;
          eNRegBPKBEntry.Text := QCari.FieldByName('NREG_BPKB').Text;
          eDikeluarkanEntry.Text := vKota;
          dtTglEntry.Date := dtTgl.Date;

        except on E: Exception do
        begin
          ErrorProgDialog('Error...SELECT T_BERKAS, KET ERROR '+E.Message);
        end;
        end;
        
        //--------------------------------
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
          //if IsStrANumber2(cbPeruntukanEntry.EditValue) <> True then
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
          //if IsStrANumber2(cbWarnaTNKBEntry.EditValue) <> True then
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
          //if IsStrANumber2(cbWilayahEntry.EditValue) <> True then
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
          //if IsStrANumber2(cbJnsDaftaranEntry.EditValue) <> True then
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
          //cbCaraImporEntry.EditValue := '';
          //if IsStrANumber(cbCaraImporEntry.EditValue) <> True then
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
          //if IsStrANumber2(cbPemohonEntry.EditValue) <> True then
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
          vNopolPertama_1 := DataIn.Strings[0];
          eNopolTengah.Text := DataIn.Strings[1];
          vNopolPertama_2 := DataIn.Strings[1];
          eNopolAkhir.Text := DataIn.Strings[2];
          vNopolPertama_3 := DataIn.Strings[2];
        end
        else
        begin
          eNopolAwal.Text := DataIn.Strings[0];
          vNopolPertama_1 := DataIn.Strings[0];
          eNopolTengah.Text := DataIn.Strings[1];
          vNopolPertama_2 := DataIn.Strings[1];
          eNopolAkhir.Text := '';
          vNopolPertama_3 := '';
        end;
        // AMBIL DATA DARI DATA PERTAMA
        eNoBPKBPertama.Text := uniSP.FieldByName('NO_BPKB').Text; //uniSP.FieldByName('NO_PREVBPKB').Text;
        dtTglPertama.Date := uniSP.FieldByName('TGL_BPKB').AsDateTime; //uniSP.FieldByName('TGL_PREVBPKB').AsDateTime;
        eNRegBPKBPertama.Text := uniSP.FieldByName('NREG_BPKB').Text; //uniSP.FieldByName('NREG_PREVBPKB').Text;
        cbSbbTdkBerlaku.Text := ''; //uniSP.FieldByName('SEBAB_TDKBERLAKU').Text;
        eTempatKeluarPertama.Text := uniSP.FieldByName('TEMPAT_KELUAR').Text; //uniSP.FieldByName('TPT_KELUAR_PREVBPKB').Text;
        eNamaPemilikPertama.Text := uniSP.FieldByName('NAMA_PEMILIK').Text; //uniSP.FieldByName('NAMA_PREVPEMILIK').Text;
        eAlamatPertama.Text := uniSP.FieldByName('ALAMAT_PEMILIK').Text; //uniSP.FieldByName('ALAMAT_PREVPEMILIK').Text;

        fWait.Hide;
        Application.ProcessMessages;
        bSimpanEntry.Enabled := True;
        bBaruEntry.Enabled := True;
      end
      else
      begin
        fWait.Hide;
        MessageDlg('Data Berkas Tidak ditemukan di Server!!!',mtWarning,[mbOK],0);
      end;
    except on E:Exception do
    begin
      fWait.Hide;
      ErrorProgDialog('Error,..bpkb_get_data_bn.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
    FreeAndNil(DataIn);
  end;
end;

procedure TfRegistrasiBN.TampilDataSudahAdaEdit(vISGET, vCari: String);
var
  uniSP : TUniStoredProc;
  DataIn : TStringList;
begin
  try
    DataIn := TStringList.Create;
    isEdit := '1';
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_get_data_bn_view';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftstring,'v_polda_id',ptinput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'v_is_cari',ptInput).AsString := vISGET;
      uniSP.Params.CreateParam(ftString,'v_cari',ptInput).AsString := vCari;
      uniSP.Params.CreateParam(ftString,'v_bbn',ptInput).AsString := vIsBBN;
      uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      uniSP.Active := True;

      if uniSP.RecordCount > 0 then
      begin
        lJudul.Caption := '=== "PEMBUATAN BPKB GANTI NAMA" ===          VIEW BPKB FROM LIST DATA BPKB';
        cxPageControl1.ActivePageIndex := 0;
        cxPageControl2.ActivePageIndex := 0;
        EnableKomponenRegister;
        eNoRangkaEntry.Enabled := True;
        eNoMesinEntry.Enabled := True;
        lStatusNOPOL.Caption := 'BLM TERPAKAI';
        lStatusNOPOL.Color := clBlue;
        vBPKB_ID := uniSP.FieldByName('BPKB_ID').Text;
        vHIST_ID := uniSP.FieldByName('CURRENT_HISTID').Text;
        vPREV_BPKB_ID := uniSP.FieldByName('PREVBPKB_ID').Text;
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
        eNoSUTEntry.Text := uniSP.FieldByName('NO_SUT').Text;

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
          if IsStrANumber(cbCaraImporEntry.EditValue) <> True then
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
          vNopolPertama_1 := DataIn.Strings[0];
          eNopolTengah.Text := DataIn.Strings[1];
          vNopolPertama_2 := DataIn.Strings[1];
          eNopolAkhir.Text := DataIn.Strings[2];
          vNopolPertama_3 := DataIn.Strings[2];
        end
        else
        begin
          eNopolAwal.Text := DataIn.Strings[0];
          vNopolPertama_1 := DataIn.Strings[0];
          eNopolTengah.Text := DataIn.Strings[1];
          vNopolPertama_2 := DataIn.Strings[1];
          eNopolAkhir.Text := '';
          vNopolPertama_3 := '';
        end;
        eNoBPKBPertama.Text := uniSP.FieldByName('NO_PREVBPKB').Text;
        dtTglPertama.Date := uniSP.FieldByName('TGL_PREVBPKB').AsDateTime;
        eNRegBPKBPertama.Text := uniSP.FieldByName('NREG_PREVBPKB').Text;
        cbSbbTdkBerlaku.Text := uniSP.FieldByName('SEBAB_TDKBERLAKU').Text;
        eTempatKeluarPertama.Text := uniSP.FieldByName('TPT_KELUAR_PREVBPKB').Text;
        eNamaPemilikPertama.Text := uniSP.FieldByName('NAMA_PREVPEMILIK').Text;
        eAlamatPertama.Text := uniSP.FieldByName('ALAMAT_PREVPEMILIK').Text;
        lStatusBPKB.Caption := uniSP.FieldByName('SEBAB_TDKBERLAKU').Text;

        fWait.Hide;
        Application.ProcessMessages;
        bSimpanEntry.Enabled := True;
        bBaruEntry.Enabled := True;
      end
      else
      begin
        fWait.Hide;
        MessageDlg('Data Berkas Tidak ditemukan di Server!!!',mtWarning,[mbOK],0);
      end;
    except on E:Exception do
    begin
      fWait.Hide;
      ErrorProgDialog('Error,..bpkb_get_data_bn_view.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
    FreeAndNil(DataIn);
  end;
end;

procedure TfRegistrasiBN.Button2Click(Sender: TObject);
begin
  pStatus.Visible := False;
  bBaruEntry.Click;
end;

function TfRegistrasiBN.CekNoRangkaPendaftaran(vNoRangka: String): String;
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

procedure TfRegistrasiBN.Data2D;
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

procedure TfRegistrasiBN.CariDataFakturCF(vCari: String);
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
        FWait.Hide;
        Application.ProcessMessages;
        MessageDlg('DATA TIDAK DITEMUKAN DARI DATABASE CEK FISIK, ENTRY SECARA MANUAL',mtInformation,[mbOK],0);
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

procedure TfRegistrasiBN.eNoRangkaEntryKeyDown(Sender: TObject;
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
       begin
         if isDataLama = '0' then
            CariDataFaktur('1',eNoRangkaEntry.Text);
       end;
    end;
       //CariDataFakturCF(eNoRangkaEntry.Text);
    //CariDataPemohon(eNoRangkaEntry.Text);
  end;
end;

procedure TfRegistrasiBN.eNoRangkaEntryPropertiesChange(Sender: TObject);
begin
  if Cb2D.Checked = False then
  begin
    if Length(eNoRangkaEntry.Text)=10 then
       CariReferensi(eNoRangkaEntry.Text)
    else if (Length(eNoRangkaEntry.Text)=17) and (isEdit='0')  then
       if TOnLineCF='1' then
          CariDataFakturCF(eNoRangkaEntry.Text)
       else
       begin
         if isDataLama = '0' then
            CariDataFaktur('1',eNoRangkaEntry.Text);
       end
  end;
end;

function TfRegistrasiBN.CekATPMID(vMerk: String): String;
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

function TfRegistrasiBN.CekMerk(vMerk: String): String;
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

procedure TfRegistrasiBN.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if (ARecord is TcxGridDataRow) and (ARecord.Values[15] <> '1') then
      AStyle := DM.cxStyleRead;
end;

procedure TfRegistrasiBN.cxButton24Click(Sender: TObject);
begin
  eResiPembayaran.Text := CekNoRangkaPendaftaran(eNoRangkaEntry.Text);
end;

procedure TfRegistrasiBN.ePekerjaanEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F5 then
     RefreshCbPekerjaan;
  if Key = 13 then
     cbWilayahEntry.SetFocus;
end;

procedure TfRegistrasiBN.RefreshCbPekerjaan;
begin
  QPekerjaan1.Close;
  QPekerjaan1.SQL.Text := 'select PEKERJAAN_NAMA from m_pekerjaan order by PEKERJAAN_NAMA';
  QPekerjaan1.Open;

  QPekerjaan2.Close;
  QPekerjaan2.SQL.Text := 'select PEKERJAAN_NAMA from m_pekerjaan order by PEKERJAAN_NAMA';
  QPekerjaan2.Open;
end;

procedure TfRegistrasiBN.cxButton25Click(Sender: TObject);
begin
  RefreshCbPekerjaan;
end;

procedure TfRegistrasiBN.RefreshCbLokasiSTNK;
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

procedure TfRegistrasiBN.cbLokasiSTNKKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F5 then
     RefreshCbLokasiSTNK;
end;

procedure TfRegistrasiBN.CariDataPemohon(vCari: String);
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
        MessageDlg('DATA TIDAK BISA DIPROSES, BLM TERDAFTAR DI PENDAFTARAN',mtError,[mbOK],0);
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

procedure TfRegistrasiBN.AktifModeIdentitasPemilik;
begin
  eNoBPKBEntry.Enabled := False;
  eDikeluarkanEntry.Enabled := False;
  eNoRangkaEntry.Enabled := False;
  cbMerkEntry.Enabled := False;
  cbJenisEntry.Enabled := False;
  eThnBuatEntry.Enabled := False;
  eSilinderEntry.Enabled := False;
  eJmlRodaEntry.Enabled := False;
  eJmlSumbuEntry.Enabled := False;
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
  enoTPTEntry.Enabled := False;
  eNoSUTEntry.Enabled := False;
  eNoIdentitasEntry.Enabled := True;
  eNamaPemilikEntry.Enabled := True;
  eAlamatPemilikEntry.Enabled := True;
  eKdPOSEntry.Enabled := True;
  ePonselEntry.Enabled := True;
  ePekerjaanEntry.Enabled := True;
  cbWilayahEntry.Enabled := True;
  ePropinsi.Enabled := True;
  eKabupaten.Enabled := True;
  eKecamatan.Enabled := True;
  eKelurahan.Enabled := True;
  bSetKel.Enabled := True;
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
  eKabupatenPertama.Enabled := False;
  eResiPembayaran.Enabled := True;
  eNopolAwal.Enabled := True;
  eNopolTengah.Enabled := True;
  eNopolAkhir.Enabled := True;
  eNoRekom.Enabled := True;
  bRequestNopol.Enabled := True;
end;

procedure TfRegistrasiBN.AktifModeDisable;
begin
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
  ePropinsi.Enabled := False;
  eKabupaten.Enabled := False;
  eKecamatan.Enabled := False;
  eKelurahan.Enabled := False;
  bSetKel.Enabled := False;
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
end;

procedure TfRegistrasiBN.GetDataForVerifikasi(vData: String);
var
  uniSP : TUniStoredProc;
  DataIn : TStringList;
begin
  try
    DataIn := TStringList.Create;
    isEdit := '1';
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_get_data_bn_view';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftstring,'v_polda_id',ptinput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'v_is_cari',ptInput).AsString := '0';
      uniSP.Params.CreateParam(ftString,'v_cari',ptInput).AsString := vData;
      uniSP.Params.CreateParam(ftString,'v_bbn',ptInput).AsString := vIsBBN;
      uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      uniSP.Active := True;

      if uniSP.RecordCount > 0 then
      begin
        lJudul.Caption := '=== "PEMBUATAN BPKB GANTI NAMA" ===          VIEW BPKB FROM LIST DATA BPKB';
        cxPageControl1.ActivePageIndex := 0;
        cxPageControl2.ActivePageIndex := 0;
        EnableKomponenRegister;
        eNoRangkaEntry.Enabled := True;
        eNoMesinEntry.Enabled := True;
        lStatusNOPOL.Caption := 'BLM TERPAKAI';
        lStatusNOPOL.Color := clBlue;
        vBPKB_ID := uniSP.FieldByName('BPKB_ID').Text;
        vHIST_ID := uniSP.FieldByName('CURRENT_HISTID').Text;
        vPREV_BPKB_ID := uniSP.FieldByName('PREVBPKB_ID').Text;
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
          vNopolPertama_1 := DataIn.Strings[0];
          eNopolTengah.Text := DataIn.Strings[1];
          vNopolPertama_2 := DataIn.Strings[1];
          eNopolAkhir.Text := DataIn.Strings[2];
          vNopolPertama_3 := DataIn.Strings[2];
        end
        else
        begin
          eNopolAwal.Text := DataIn.Strings[0];
          vNopolPertama_1 := DataIn.Strings[0];
          eNopolTengah.Text := DataIn.Strings[1];
          vNopolPertama_2 := DataIn.Strings[1];
          eNopolAkhir.Text := '';
          vNopolPertama_3 := '';
        end;
        eNoBPKBPertama.Text := uniSP.FieldByName('NO_PREVBPKB').Text;
        dtTglPertama.Date := uniSP.FieldByName('TGL_PREVBPKB').AsDateTime;
        eNRegBPKBPertama.Text := uniSP.FieldByName('NREG_PREVBPKB').Text;
        cbSbbTdkBerlaku.Text := uniSP.FieldByName('SEBAB_TDKBERLAKU').Text;
        eTempatKeluarPertama.Text := uniSP.FieldByName('TPT_KELUAR_PREVBPKB').Text;
        eNamaPemilikPertama.Text := uniSP.FieldByName('NAMA_PREVPEMILIK').Text;
        eAlamatPertama.Text := uniSP.FieldByName('ALAMAT_PREVPEMILIK').Text;
        lStatusBPKB.Caption := uniSP.FieldByName('SEBAB_TDKBERLAKU').Text;
        bRequestNopol.Enabled := True;

        fWait.Hide;
        Application.ProcessMessages;
        bSimpanEntry.Enabled := True;
        bBaruEntry.Enabled := True;
      end
      else
      begin
        fWait.Hide;
        MessageDlg('Data Berkas Tidak ditemukan di Server!!!',mtWarning,[mbOK],0);
      end;
    except on E:Exception do
    begin
      fWait.Hide;
      ErrorProgDialog('Error,..bpkb_get_data_bn_view.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
    FreeAndNil(DataIn);
  end;
end;

end.
