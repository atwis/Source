unit uPerubahan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxMemo, cxCalendar, cxDBLookupComboBox,
  cxTextEdit, frxClass, frxDesgn, frxBarcode, frxDBSet, MemDS, DBAccess,
  Uni, cxGroupBox, cxRadioGroup, StdCtrls, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, ExtCtrls, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC, cxButtons,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, DBCtrls, Grids,
  DBGrids, CRGrid, HotKeyManager;

type
  TfPerubahan = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Shape2: TShape;
    eNoBPKB: TcxTextEdit;
    bCari: TcxButton;
    bBaru: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    eInfoPekerjaan: TcxTextEdit;
    eInfoNoIdentitas: TcxTextEdit;
    eInfoNamaPemilik: TcxMemo;
    eInfoAlamatPemilik: TcxMemo;
    cxTabSheet2: TcxTabSheet;
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
    eInfoMek: TcxTextEdit;
    eInfoTipe: TcxTextEdit;
    eInfoJenis: TcxTextEdit;
    eInfoModel: TcxTextEdit;
    eInfoThnBuat: TcxTextEdit;
    eInfoSilinder: TcxTextEdit;
    eInfoWarna: TcxTextEdit;
    eInfoNoRangka: TcxTextEdit;
    eInfoNoMesin: TcxTextEdit;
    eInfoJmlRoda: TcxTextEdit;
    eInfoJmlSumbu: TcxTextEdit;
    eInfoBB: TcxTextEdit;
    QReport: TUniQuery;
    UniQuery1: TUniQuery;
    UniQuery2: TUniQuery;
    UniDataSource1: TUniDataSource;
    UniDataSource2: TUniDataSource;
    QWarna: TUniQuery;
    dsQWarna: TUniDataSource;
    QJenis: TUniQuery;
    dsQJenis: TUniDataSource;
    QModel: TUniQuery;
    dsQModel: TUniDataSource;
    QWarnaTNKB: TUniQuery;
    dsQWarnaTNKB: TUniDataSource;
    QPemohon: TUniQuery;
    dsQPemohon: TUniDataSource;
    QWil: TUniQuery;
    dsQWil: TUniDataSource;
    uniSPReport: TUniStoredProc;
    cxButton13: TcxButton;
    pEntryDataReferensi: TPanel;
    Label31: TLabel;
    Shape11: TShape;
    cxButton2: TcxButton;
    bSimpanEntry: TcxButton;
    bBaruEntry: TcxButton;
    pEntry: TPanel;
    Label28: TLabel;
    Shape7: TShape;
    Label29: TLabel;
    Shape8: TShape;
    lStatusNOPOL: TLabel;
    cxButton8: TcxButton;
    cbJenisPerubahan: TcxDBLookupComboBox;
    cxDBVerticalGrid2: TcxDBVerticalGrid;
    cxDBEditorRow3: TcxDBEditorRow;
    cxDBEditorRow4: TcxDBEditorRow;
    cxDBEditorRow5: TcxDBEditorRow;
    cxDBEditorRow6: TcxDBEditorRow;
    cxDBMultiEditorRow1: TcxDBMultiEditorRow;
    cxCategoryRow1: TcxCategoryRow;
    cxDBEditorRow7: TcxDBEditorRow;
    cxDBEditorRow8: TcxDBEditorRow;
    cxDBEditorRow9: TcxDBEditorRow;
    cxDBEditorRow10: TcxDBEditorRow;
    cxDBEditorRow11: TcxDBEditorRow;
    cxDBEditorRow12: TcxDBEditorRow;
    cxDBEditorRow13: TcxDBEditorRow;
    cxDBEditorRow14: TcxDBEditorRow;
    cxDBEditorRow15: TcxDBEditorRow;
    bSimpan: TcxButton;
    bBaruPendaftaranBBN1: TcxButton;
    cxButton1: TcxButton;
    QMerk1: TUniQuery;
    QMerk2: TUniQuery;
    dsMerk2: TUniDataSource;
    dsMerk1: TUniDataSource;
    QJenisDaftar1: TUniQuery;
    QJenisDaftar2: TUniQuery;
    QCaraImport2: TUniQuery;
    QCaraImport1: TUniQuery;
    dsCaraImport1: TUniDataSource;
    dsCaraImport2: TUniDataSource;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
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
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
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
    eThnRakitEntry: TcxComboBox;
    eThnBuatEntry: TcxComboBox;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton9: TcxButton;
    cxTabSheet4: TcxTabSheet;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    eNoIdentitasEntry: TcxTextEdit;
    eNamaPemilikEntry: TcxMemo;
    eAlamatPemilikEntry: TcxMemo;
    eKdPOSEntry: TcxTextEdit;
    ePonselEntry: TcxTextEdit;
    ePekerjaanEntry: TcxTextEdit;
    cbWilayahEntry: TcxDBLookupComboBox;
    cxButton10: TcxButton;
    ePropinsi: TcxTextEdit;
    eKecamatan: TcxTextEdit;
    eKabupaten: TcxTextEdit;
    eKelurahan: TcxTextEdit;
    cxTabSheet5: TcxTabSheet;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
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
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    Q2: TUniQuery;
    Q2KELUARAHAN: TStringField;
    Q2KECAMATAN: TStringField;
    Q2KABUPATEN: TStringField;
    Q2PROPINSI: TStringField;
    Q2KD_POS: TStringField;
    DataSource1: TDataSource;
    pkdpos: TPanel;
    Shape12: TShape;
    Label77: TLabel;
    eCariKelurahan: TcxTextEdit;
    rbKelurahan: TcxRadioButton;
    rbKecamatan: TcxRadioButton;
    dbgData: TCRDBGrid;
    DBNavigator1: TDBNavigator;
    cxButton14: TcxButton;
    qAddModel: TUniQuery;
    dsqAddModel: TUniDataSource;
    pModel: TPanel;
    Label78: TLabel;
    Shape13: TShape;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    cxButton15: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    eModelNama: TcxTextEdit;
    cbJenisModel: TcxDBLookupComboBox;
    cbWarnaKartu: TcxDBLookupComboBox;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    UniQuery3: TUniQuery;
    UniDataSource3: TUniDataSource;
    dsQWarnaKartu: TUniDataSource;
    QWarnaKartu: TUniQuery;
    pWarna: TPanel;
    Label82: TLabel;
    Shape14: TShape;
    Label83: TLabel;
    cxButton18: TcxButton;
    eInputWarna: TcxTextEdit;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    cxMemo1: TcxMemo;
    Label84: TLabel;
    eNopolAwal: TcxTextEdit;
    eNopolTengah: TcxTextEdit;
    eNopolAkhir: TcxTextEdit;
    eNopolAwalEntry: TcxTextEdit;
    eNopolTengahEntry: TcxTextEdit;
    eNopolAkhirEntry: TcxTextEdit;
    cxDBEditorRow16: TcxDBEditorRow;
    Label98: TLabel;
    eInfoNoMesinBaru: TcxTextEdit;
    UniQuery4: TUniQuery;
    UniDataSource4: TUniDataSource;
    pStatus: TPanel;
    Button2: TButton;
    frxReport: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDBDataset1: TfrxDBDataset;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    Shape4: TShape;
    Label25: TLabel;
    LSTATUS: TLabel;
    Label26: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    bBlokir: TcxButton;
    bCetak: TcxButton;
    bHistBlokir: TcxButton;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxDVJenisPerubahan: TcxDBEditorRow;
    cxDVNoReg: TcxDBEditorRow;
    cxDVTglBBN2: TcxDBEditorRow;
    cxDVWarna: TcxDBEditorRow;
    cxDVJenis: TcxDBEditorRow;
    cxDVBentuk: TcxDBEditorRow;
    cxDBVerticalGrid1DBMultiEditorRow1: TcxDBMultiEditorRow;
    cxDVNoMesin: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow1: TcxCategoryRow;
    cxDVNoIdentitas: TcxDBEditorRow;
    cxDVNama: TcxDBEditorRow;
    cxDVPekerjaan: TcxDBEditorRow;
    cxDVAlamat: TcxDBEditorRow;
    cxDVKDPos: TcxDBEditorRow;
    cxDVNoPonsel: TcxDBEditorRow;
    cxDVWilayah: TcxDBEditorRow;
    cxDVDasar: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow2: TcxCategoryRow;
    cxDVNamaEntri: TcxDBEditorRow;
    cxDVTglEntri: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow3: TcxCategoryRow;
    cxDVSudahDicetak: TcxDBEditorRow;
    cxDVDicetakOleh: TcxDBEditorRow;
    cxDVDicetakTanggal: TcxDBEditorRow;
    cxDVPemohon: TcxDBEditorRow;
    dsQ: TUniDataSource;
    _Q2: TUniQuery;
    dsQ2: TUniDataSource;
    dsQ3: TUniDataSource;
    uniSPTampil: TUniStoredProc;
    uniSPTampil2: TUniStoredProc;
    Q3: TUniQuery;
    uniSPTampil3: TUniStoredProc;
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
    dsJenisDaftar1: TUniDataSource;
    dsJenisDaftar2: TUniDataSource;
    QModel2: TUniQuery;
    dsModel2: TUniDataSource;
    dsModel1: TUniDataSource;
    QModel1: TUniQuery;
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
    QWarnaKartu1: TUniQuery;
    QWarnaKartu2: TUniQuery;
    QJenisModel1: TUniQuery;
    QJenisModel2: TUniQuery;
    dsQJenisModel2: TUniDataSource;
    dsQJenisModel1: TUniDataSource;
    dsQWarnaKartu2: TUniDataSource;
    dsQWarnaKartu1: TUniDataSource;
    Label9: TLabel;
    eNoPolisi: TcxTextEdit;
    eTglFaktur: TcxTextEdit;
    Label23: TLabel;
    eNoFaktur: TcxTextEdit;
    Label22: TLabel;
    Label27: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    eInfoAPM_V: TcxTextEdit;
    eInfoTglFormAB_V: TcxTextEdit;
    eInfoKantorBeaCukai_V: TcxTextEdit;
    eInfoNoSUT_V: TcxTextEdit;
    eInfoNoTPT_V: TcxTextEdit;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    eInfoNoPIB_V: TcxTextEdit;
    eInfoTglPIB_V: TcxTextEdit;
    eInfoNoFormAB_V: TcxTextEdit;
    eInfoKetLain2_V: TcxMemo;
    Label106: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label24: TLabel;
    eNoBPKB2: TcxTextEdit;
    eNRegBPKb: TcxTextEdit;
    eTglBPKB: TcxTextEdit;
    Label107: TLabel;
    eInfoDikeluarkanOleh_V: TcxTextEdit;
    pCetak: TPanel;
    Label30: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label95: TLabel;
    cxButton3: TcxButton;
    rbBukuLama: TcxRadioButton;
    rbBukuBaru: TcxRadioButton;
    rbHalamanCetak: TcxRadioGroup;
    cxButton4: TcxButton;
    eXIdentitas_CB: TcxTextEdit;
    eYIdentitas_CB: TcxTextEdit;
    eYIsiData_CB: TcxTextEdit;
    eXIsiData_CB: TcxTextEdit;
    eXKota: TcxTextEdit;
    eYKota: TcxTextEdit;
    eYTgl: TcxTextEdit;
    eXTgl: TcxTextEdit;
    eXSignJab: TcxTextEdit;
    eYSignJab: TcxTextEdit;
    eYSignNama: TcxTextEdit;
    eXSignNama: TcxTextEdit;
    eXSignNRP: TcxTextEdit;
    eYSignNRP: TcxTextEdit;
    eXPict: TcxTextEdit;
    eYPict: TcxTextEdit;
    Button1: TButton;
    cxDBEditorRow17: TcxDBEditorRow;
    Label108: TLabel;
    eNoRekom: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bBaruClick(Sender: TObject);
    procedure bCariClick(Sender: TObject);
    procedure bBlokirClick(Sender: TObject);
    procedure bHistBlokirClick(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cbJenisPerubahanPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure bBaruPendaftaranBBN1Click(Sender: TObject);
    procedure bSimpanClick(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure bCetakClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure frxReportBeforePrint(Sender: TfrxReportComponent);
    procedure frxReportGetValue(const VarName: String; var Value: Variant);
    procedure pCetakMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pEntryMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton13Click(Sender: TObject);
    procedure pEntryDataReferensiMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure pkdposMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton14Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure eNoRangkaEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoRangkaEntryPropertiesChange(Sender: TObject);
    procedure cbModelEntryPropertiesPopup(Sender: TObject);
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
    procedure enoTPTEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoSUTEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eAlamatPemilikEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eKdPOSEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ePonselEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ePekerjaanEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton10Click(Sender: TObject);
    procedure cbJnsDaftaranEntryPropertiesChange(Sender: TObject);
    procedure cbJenisEntryPropertiesChange(Sender: TObject);
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
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure pModelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure eModelNamaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure pWarnaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton19Click(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure bBaruEntryClick(Sender: TObject);
    procedure bSimpanEntryClick(Sender: TObject);
    procedure eCariKelurahanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eCariKelurahanPropertiesChange(Sender: TObject);
    procedure dbgDataDblClick(Sender: TObject);
    procedure dbgDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNopolAwalEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNopolAkhirEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNopolTengahEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rbHalamanCetakPropertiesChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    vISNopolLama : String; // 0 menggunakan nopol baru, 1 mengunakan nopol lama
    vBPKB_ID_Pertama,vBerkas_ID_Pertama : String; // penampung untuk bpkb id yg pertama
    vISNOPOL : Boolean; // status nopol true or false
    tBerkasID,vBPKB_ID,vHIST_ID : String;
    vBPKBID_V,vBerkasID_V : String;
    isEdit : String;
  public
    { Public declarations }
    tRBH_NAMA,tRBH_ALAMAT,tRBH_WARNA,tRBH_NOPOL,tRBH_MODEL,tRBH_MESIN : String;
    tTempCetak,tTempCetak1,tTempCetakTitik : String;
    tResponPrn : String;
    isCetakKartuInduk,isCetakDasar : String;

    function CekJmlChar(vData:String):integer;
    procedure RefreshJenisPerubahan;
    procedure RefreshWarna;
    procedure RefreshJenis;
    procedure RefreshBentuk;
    procedure RefreshWarnaTNKB;
    procedure RefreshWilayah;
    procedure RefreshPemohon;
    procedure RefreshTempEntryBBN2;
    procedure CekPerubahan;
    procedure TampilAwal;
    procedure GetDataBPKB;
    procedure GetDataBPKBHistory;
    procedure ProsesBBN2;
    procedure TampilAwalDataReferensi;
    Function UpdateCetakBBN2 : Boolean;
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
    procedure RefreshKelurahan;
    procedure CariDataFaktur(vJenis,vCari : String);
    procedure CariReferensi(vNoRangka:String);
    procedure AddBPKB;
    procedure CekStatusLama(vRecordNo:integer);
    procedure LanjutkanProsesCetakKI;
    procedure CetakBuku;
  end;

var
  fPerubahan: TfPerubahan;

implementation
Uses
  uDM, uVariabel, uModul, uWait, uMain, uPemohon;
{$R *.dfm}

{ TfPerubahan }

function TfPerubahan.CekJmlChar(vData: String): integer;
var
  i: integer;
begin
  result:=0;
  for i:=1 to length(vData) do
  if vData[i]=#13 then
    inc(result);
end;

procedure TfPerubahan.CekPerubahan;
begin
  tRBH_NAMA := '0';
  tRBH_ALAMAT := '0';
  tRBH_WARNA := '0';
  tRBH_NOPOL := '0';
  tRBH_MODEL := '0';
  tRBH_MESIN := '0';

  with DM.Q do
  begin
    Close;
    SQL.Text := 'select RBH_NAMA,RBH_ALAMAT,RBH_WARNA,RBH_NOPOL,RBH_MODEL,RBH_MESIN from m_perubahan where PRB_ID=:PRB_ID';
    Params[0].AsString := cbJenisPerubahan.EditValue;
    Open;
    cxDBEditorRow3.Styles.Content := DM.cxStyle6;
    cxDBEditorRow4.Styles.Content := DM.cxStyle6;
    cxDBEditorRow5.Styles.Content := DM.cxStyle6;
    cxDBEditorRow6.Styles.Content := DM.cxStyle6;
    cxDBMultiEditorRow1.Styles.Content := DM.cxStyle6;
    cxDBEditorRow7.Styles.Content := DM.cxStyle6;
    cxDBEditorRow8.Styles.Content := DM.cxStyle6;
    cxDBEditorRow9.Styles.Content := DM.cxStyle6;
    cxDBEditorRow10.Styles.Content := DM.cxStyle6;
    cxDBEditorRow11.Styles.Content := DM.cxStyle6;
    cxDBEditorRow12.Styles.Content := DM.cxStyle6;
    cxDBEditorRow13.Styles.Content := DM.cxStyle6;
    cxDBEditorRow16.Styles.Content := DM.cxStyle6;

    cxDBEditorRow3.Properties.Options.Editing := False;
    cxDBEditorRow4.Properties.Options.Editing := False;
    cxDBEditorRow5.Properties.Options.Editing := False;
    cxDBEditorRow6.Properties.Options.Editing := False;
    cxDBMultiEditorRow1.Properties.Editors[0].Options.Editing := False;
    cxDBMultiEditorRow1.Properties.Editors[1].Options.Editing := False;
    cxDBEditorRow7.Properties.Options.Editing := False;
    cxDBEditorRow8.Properties.Options.Editing := False;
    cxDBEditorRow9.Properties.Options.Editing := False;
    cxDBEditorRow10.Properties.Options.Editing := False;
    cxDBEditorRow11.Properties.Options.Editing := False;
    cxDBEditorRow12.Properties.Options.Editing := False;
    cxDBEditorRow13.Properties.Options.Editing := False;
    cxDBEditorRow16.Properties.Options.Editing := False;
    cxButton1.Enabled := False;
    eNopolAwal.Text := '';
    eNopolAwal.Enabled := False;
    eNopolTengah.Text := '';
    eNopolTengah.Enabled := False;
    eNopolAkhir.Text := '';
    eNopolAkhir.Enabled := False;

    cxDBEditorRow14.Styles.Content := DM.cxStyle11;
    cxDBEditorRow15.Styles.Content := DM.cxStyle11;
    cxDBEditorRow14.Properties.Options.Editing := True;
    cxDBEditorRow15.Properties.Options.Editing := True;

    if Fields[0].AsString='1' then // rubah nama
    begin
      tRBH_NAMA := '1';

      cxDBEditorRow7.Styles.Content := DM.cxStyle11;
      cxDBEditorRow8.Styles.Content := DM.cxStyle11;
      cxDBEditorRow9.Styles.Content := DM.cxStyle11;
      cxDBEditorRow10.Styles.Content := DM.cxStyle11;
      cxDBEditorRow11.Styles.Content := DM.cxStyle11;
      cxDBEditorRow12.Styles.Content := DM.cxStyle11;
      cxDBEditorRow13.Styles.Content := DM.cxStyle11;

      cxDBEditorRow7.Properties.Options.Editing := True;
      cxDBEditorRow8.Properties.Options.Editing := True;
      cxDBEditorRow9.Properties.Options.Editing := True;
      cxDBEditorRow10.Properties.Options.Editing := True;
      cxDBEditorRow11.Properties.Options.Editing := True;
      cxDBEditorRow12.Properties.Options.Editing := True;
      cxDBEditorRow13.Properties.Options.Editing := True;
    end;

    if Fields[1].AsString='1' then // rubah alamat
    begin
      tRBH_ALAMAT := '1';

      cxDBEditorRow10.Styles.Content := DM.cxStyle11;
      cxDBEditorRow11.Styles.Content := DM.cxStyle11;
      cxDBEditorRow13.Styles.Content := DM.cxStyle11;

      cxDBEditorRow10.Properties.Options.Editing := True;
      cxDBEditorRow11.Properties.Options.Editing := True;
      cxDBEditorRow13.Properties.Options.Editing := True;
    end;

    if Fields[2].AsString='1' then // rubah warna
    begin
      tRBH_WARNA := '1';

      cxDBEditorRow4.Styles.Content := DM.cxStyle11;

      cxDBEditorRow4.Properties.Options.Editing := True;
    end;

    if Fields[3].AsString='1' then // rubah nopol
    begin
      tRBH_NOPOL := '1';

      cxDBMultiEditorRow1.Styles.Content := DM.cxStyle11;

      cxDBMultiEditorRow1.Properties.Editors[0].Options.Editing := True;
      cxDBMultiEditorRow1.Properties.Editors[1].Options.Editing := True;
      cxButton1.Enabled := True;
      eNopolAwal.Text := '';
      eNopolAwal.Enabled := True;
      eNopolTengah.Text := '';
      eNopolTengah.Enabled := True;
      eNopolAkhir.Text := '';
      eNopolAkhir.Enabled := True;
    end;

    if Fields[4].AsString='1' then // rubah model
    begin
      tRBH_MODEL := '1';
      cxDBEditorRow5.Styles.Content := DM.cxStyle11;
      cxDBEditorRow6.Styles.Content := DM.cxStyle11;

      cxDBEditorRow5.Properties.Options.Editing := True;
      cxDBEditorRow6.Properties.Options.Editing := True;
    end;

    if Fields[5].AsString='1' then // rubah no mesin
    begin
      tRBH_MESIN := '1';
      cxDBEditorRow16.Styles.Content := DM.cxStyle11;

      cxDBEditorRow16.Properties.Options.Editing := True;
    end;
  end;
end;

procedure TfPerubahan.RefreshBentuk;
begin
  QModel.Close;
  QModel.SQL.Text := 'select to_char(model_id) as model_id,model_nama from m_model order by model_nama';
  QModel.Open;
end;

procedure TfPerubahan.RefreshJenis;
begin
  QJenis.Close;
  QJenis.SQL.Text := 'select to_char(JENIS_ID) as JENIS_ID,JENIS_NAMA from m_jenis order by JENIS_NAMA';
  QJenis.Open;
end;

procedure TfPerubahan.RefreshJenisPerubahan;
begin
  UniQuery1.Close;
  UniQuery1.SQL.Text := 'select to_char(PRB_ID) as PRB_ID,NAMA_PRB from m_perubahan where ENABLED=1 order by NAMA_PRB';
  UniQuery1.Open;

  UniQuery2.Close;
  UniQuery2.SQL.Text := 'select to_char(PRB_ID) as PRB_ID,NAMA_PRB,KD_AWAL,KD_AKHIR from m_perubahan where ENABLED=1 order by NAMA_PRB';
  UniQuery2.Open;
end;

procedure TfPerubahan.RefreshPemohon;
begin
  QPemohon.Close;
  QPemohon.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  QPemohon.Open;
end;

procedure TfPerubahan.RefreshTempEntryBBN2;
var
  DataIn : TStringList;
begin
  Try
    DataIn := TStringList.Create;
    with uniSPTampil2 do
    begin
      // update grid warna
      CekPerubahan;
      Active := False;
      StoredProcName := 'bpkb_data_temp_bbn2';
      try
        Params.Clear;
        Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
        Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
        Params.CreateParam(ftString,'v_hist_id',ptinput).AsInteger := uniSPTampil.FieldByName('HIST_ID').AsInteger;
        Params.CreateParam(ftString,'v_snhdd',ptinput).AsString := tSNHDD;
        Params.CreateParam(ftString,'v_tgl',ptinput).AsString := FormatDateTime('yyyymmdd',TTglSrvSkr);
        Params.CreateParam(ftString,'v_op_id',ptinput).AsInteger := StrToInt(vIDPetugas);
        Params.CreateParam(ftString,'v_hist_title',ptinput).AsString := cbJenisPerubahan.Text;
        Params.CreateParam(ftString,'v_prb_id',ptinput).AsInteger := cbJenisPerubahan.EditValue;
        Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
        Open;

        fWait.Hide;
        Application.ProcessMessages;

        if uniSPTampil2.RecordCount > 0 then
        begin
          if tRBH_NOPOL='1' then
          begin
            vISNOPOL := False;
            lStatusNOPOL.Caption := 'INPUT NOPOL BARU';
            eNopolAwal.Text := '';
            eNopolTengah.Text := '';
            eNopolAkhir.Text := '';
            eNopolAwal.Enabled := True;
            eNopolTengah.Enabled := True;
            eNopolAkhir.Enabled := True;
          end
          else
          begin
            DataIn.Text := ParsingSTR(uniSPTampil2.FieldByName('NO_POLISI').Text,' ');
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
            eNopolAwal.Enabled := False;
            eNopolTengah.Enabled := False;
            eNopolAkhir.Enabled := False;
            vISNOPOL := True;
            lStatusNOPOL.Caption := 'PAKAI NOPOL LAMA';
          end;

          Q3.Close;
          Q3.SQL.Text := 'SELECT a.HIST_ID,a.BPKB_ID,a.HIST_DATE,a.OP_ID,o.OP_NAMA,a.HIST_TITLE,a.NREG,a.REG_DATE,a.PRINTED_BY,op.OP_NAMA as PRINTED_NAME,'+
                      'a.PRINTED_DATE,a.DASAR_PERUBAHAN,a.PRB_ID,a.NO_POLISI,a.WARNATNKB_ID,a.DUP_NP_COUNT,a.WARNA_ID,a.NO_IDENTITAS,a.NAMA_PEMILIK,'+
                      'a.PEKERJAAN_PEMILIK,a.NO_PONSEL,a.ALAMAT_PEMILIK,a.KODE_POS,a.WILAYAH_ID,a.JENIS_ID,a.MODEL_ID,a.PEMOHON,'+
                      '(CASE WHEN a.PRINTED_BY IS NULL THEN ''BELUM PRINT'' ELSE ''SUDAH PRINT'' END) AS ISCETAK,'+
                      'PRB.NAMA_PRB,WP.WARNATNKB,W.WARNA_NAMA,WIL.WILAYAH_NAMA,J.JENIS_NAMA,MDL.MODEL_NAMA,a.NO_MESIN,a.KABUPATEN'+
                      ' FROM t_detail_bbn2_temp a'+
                      ' left join t_operator o on O.OP_ID=a.OP_ID'+
                      ' left join t_operator op on OP.OP_ID=a.PRINTED_BY'+
                      ' left join m_PERUBAHAN prb on PRB.PRB_ID=a.PRB_ID'+
                      ' left join m_warnatnkb wp on WP.WARNATNKB_ID=a.WARNATNKB_ID'+
                      ' left join m_warna w on W.WARNA_ID=a.WARNA_ID'+
                      ' left join m_wilayah wil on WIL.WILAYAH_ID=a.WILAYAH_ID'+
                      ' left join m_jenis j on J.JENIS_ID=a.JENIS_ID'+
                      ' left join m_model mdl on MDL.MODEL_ID=a.MODEL_ID'+
                      ' where a.SNHDD=:SNHDD';
          Q3.Params[0].AsString := tSNHDD;
          Q3.Open;

          cxDBVerticalGrid2.Enabled := True;
        end;
      except on E:Exception do
      begin
        fWait.Hide;
        Application.ProcessMessages;
        ErrorProgDialog('Error,..bpkb_data_temp_bbn2%Error '+E.Message);
      end;
      end;
    end;
  Finally
    FreeAndNil(DataIn);
  End;
end;

procedure TfPerubahan.RefreshWarna;
begin
  QWarna.Close;
  QWarna.SQL.Text := 'select to_char(warna_id) as warna_id,warna_nama from m_warna order by warna_nama';
  QWarna.Open;
end;

procedure TfPerubahan.RefreshWarnaTNKB;
begin
  QWarnaTNKB.Close;
  QWarnaTNKB.SQL.Text := 'select to_char(warnatnkb_id) as warnatnkb_id,warnatnkb from m_warnatnkb order by warnatnkb';
  QWarnaTNKB.Open;
end;

procedure TfPerubahan.RefreshWilayah;
begin
  QWil.Close;
  QWil.SQL.Text := 'select to_char(wilayah_id) as wilayah_kode,wilayah_nama from m_wilayah order by wilayah_nama';
  QWil.Open;
end;

procedure TfPerubahan.TampilAwal;
begin
  cxButton13.Enabled := False;
  tRBH_NAMA := '0';
  tRBH_ALAMAT := '0';
  tRBH_WARNA := '0';
  tRBH_NOPOL := '0';
  tRBH_MODEL := '0';
  tTempCetak := '';
  tTempCetak1 := '';
  tTempCetakTitik := '';
  isCetakDasar := '';
  RefreshJenisPerubahan;
  RefreshWarna;
  RefreshJenis;
  RefreshBentuk;
  RefreshWarnaTNKB;
  RefreshWilayah;
  RefreshPemohon;
  cxDBVerticalGrid2.Enabled := False;
  eNoBPKB.Text := '';
  cxPageControl1.ActivePageIndex := 0;
  eInfoNamaPemilik.Text := '';
  eInfoAlamatPemilik.Text := '';
  eInfoPekerjaan.Text := '';
  eInfoNoIdentitas.Text := '';
  eNoBPKB2.Text := '';
  eNRegBPKb.Text := '';
  eTglBPKB.Text := '';
  eNoFaktur.Text := '';
  eTglFaktur.Text := '';
  eNoPolisi.Text := '';
  eInfoMek.Text := '';
  eInfoNoRangka.Text := '';
  eInfoTipe.Text := '';
  eInfoNoMesin.Text := '';
  eInfoJenis.Text := '';
  eInfoJmlRoda.Text := '';
  eInfoModel.Text := '';
  eInfoJmlSumbu.Text := '';
  eInfoThnBuat.Text := '';
  eInfoBB.Text := '';
  eInfoSilinder.Text := '';
  eInfoWarna.Text := '';
  LSTATUS.Caption := '';
  bCetak.Enabled := False;
  uniSPTampil.Close;
  uniSPTampil3.Close;
  uniSPTampil2.Close;
  eNoBPKB.SetFocus;
end;

procedure TfPerubahan.FormCreate(Sender: TObject);
begin
  fWait.Show;
  fWait.Label1.Caption := 'Tunggu Sebentar ...';
  fWait.cxProgressBar1.Visible := True;
  Application.ProcessMessages;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;
  // create folder u/ install font
  vNamaDirFontInstall := 'C:\Users\Public\Documents\CheckPoint\';
  If Not DirectoryExists(vNamaDirFontInstall) then
    ForceDirectories(vNamaDirFontInstall);
  // ambil fontnya
  DM.Q.Close;
  DM.Q.SQL.Text := 'SELECT NM_FONT,BIN_FONT FROM T_FONT_BPKB WHERE KDPOLDA=:KDPOLDA AND KDPOLRES=:KDPOLRES AND ISAKTIF=:ISAKTIF';
  DM.Q.Params[0].AsString := vPOLDAID;
  DM.Q.Params[1].AsString := vPOLRESID;
  DM.Q.Params[2].AsString := '1';
  DM.Q.Open;
  if DM.Q.RecordCount > 0 then
  begin
    vNamaFileFont := DM.Q.FieldByName('NM_FONT').AsString+'.ttf';
    vNamaFont := DM.Q.FieldByName('NM_FONT').AsString;
    if FileExists(vNamaDirFontInstall+vNamaFileFont) = True then
    begin
      if Screen.Fonts.IndexOf(vNamaFont) <> -1 then  // cek apakah font sudah ter install di sistem apa blm
      begin
        Log('Sistem Sudah Ter-Install Font Sistem BPKB');
        fWait.Hide;
        Application.ProcessMessages;
      end
      else
      begin
        AddFontResource(PChar(vNamaDirFontInstall+vNamaFileFont));
        PostMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;
        DeleteFile(RootPath+vNamaFileFont);
        fWait.Hide;
        Application.ProcessMessages;
      end;
    end
    else
    begin
      TBlobField(DM.Q.FieldByName('bin_font')).SaveToFile(vNamaDirFontInstall+vNamaFileFont);

      if FileExists(vNamaDirFontInstall+vNamaFileFont) = True then
      begin
        AddFontResource(PChar(vNamaDirFontInstall+vNamaFileFont));
        PostMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;
        DeleteFile(RootPath+vNamaFileFont);
        fWait.Hide;
        Application.ProcessMessages;
      end
      else
      begin
        fWait.Hide;
        Application.ProcessMessages;
        MessageDlgWarning('Proses install font tidak bisa dilakukan'+#13+
                         'Font tidak ada di-Sistem'+#13+
                         'Close Media Cetak Buku atau Hubungi Administrator');
      end;
    end;
  end
  else
  begin
    fWait.Hide;
    Application.ProcessMessages;
    MessageDlgError('FONT TIDAK TERDEFINISI DI DATABASE!'+#13+
                    'HUBUNGI ADMINISTRATOR');
  end;
end;

procedure TfPerubahan.FormDestroy(Sender: TObject);
begin
  RemoveFontResource(PChar(vNamaDirFontInstall+vNamaFileFont));
  PostMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;

  DeleteFile(vNamaDirFontInstall+vNamaFileFont);
end;

procedure TfPerubahan.FormShow(Sender: TObject);
begin
  vBPKB_ID_Pertama := '';
  vBerkas_ID_Pertama := '';
  eNoBPKB.Style.Font.Name := vNamaFont;
  eInfoNamaPemilik.Style.Font.Name := vNamaFont;
  eInfoAlamatPemilik.Style.Font.Name := vNamaFont;
  eInfoPekerjaan.Style.Font.Name := vNamaFont;
  eInfoNoIdentitas.Style.Font.Name := vNamaFont;
  eNoBPKB2.Style.Font.Name := vNamaFont;
  eNRegBPKb.Style.Font.Name := vNamaFont;
  eTglBPKB.Style.Font.Name := vNamaFont;
  eNoFaktur.Style.Font.Name := vNamaFont;
  eTglFaktur.Style.Font.Name := vNamaFont;
  eNoPolisi.Style.Font.Name := vNamaFont;
  eInfoMek.Style.Font.Name := vNamaFont;
  eInfoNoRangka.Style.Font.Name := vNamaFont;
  eInfoTipe.Style.Font.Name := vNamaFont;
  eInfoNoMesin.Style.Font.Name := vNamaFont;
  eInfoJenis.Style.Font.Name := vNamaFont;
  eInfoJmlRoda.Style.Font.Name := vNamaFont;
  eInfoModel.Style.Font.Name := vNamaFont;
  eInfoJmlSumbu.Style.Font.Name := vNamaFont;
  eInfoThnBuat.Style.Font.Name := vNamaFont;
  eInfoBB.Style.Font.Name := vNamaFont;
  eInfoSilinder.Style.Font.Name := vNamaFont;
  eInfoWarna.Style.Font.Name := vNamaFont;
  eInfoAPM_V.Style.Font.Name := vNamaFont;
  eInfoNoFormAB_V.Style.Font.Name := vNamaFont;
  eInfoTglFormAB_V.Style.Font.Name := vNamaFont;
  eInfoKantorBeaCukai_V.Style.Font.Name := vNamaFont;
  eInfoNoSUT_V.Style.Font.Name := vNamaFont;
  eInfoNoTPT_V.Style.Font.Name := vNamaFont;
  eInfoNoPIB_V.Style.Font.Name := vNamaFont;
  eInfoTglPIB_V.Style.Font.Name := vNamaFont;
  eInfoKetLain2_V.Style.Font.Name := vNamaFont;
  eInfoDikeluarkanOleh_V.Style.Font.Name := vNamaFont;
  TampilAwal;
end;

procedure TfPerubahan.bBaruClick(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfPerubahan.GetDataBPKB;
var
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_get_data_bpkb_bbn2';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_polda_id',ptInput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'v_no_bpkb',ptInput).AsString := eNoBPKB.Text;
      uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      uniSP.Active := True;

      if uniSP.RecordCount > 0 then
      begin
        fWait.Hide;
        Application.ProcessMessages;
        if uniSP.FieldByName('BPKB_STATUS').Text = 'AKTIF' then
        begin
          vBPKBID_v := uniSP.FieldByName('BPKB_ID').Text;
          vBerkasID_V := uniSP.FieldByName('BERKAS_ID').Text;
          eInfoNamaPemilik.Text := uniSP.FieldByName('NAMA_PEMILIK').Text;
          eInfoAlamatPemilik.Text := uniSP.FieldByName('ALAMAT_PEMILIK').Text;
          eInfoPekerjaan.Text := uniSP.FieldByName('PEKERJAAN_PEMILIK').Text;
          eInfoNoIdentitas.Text := uniSP.FieldByName('NO_IDENTITAS').Text;
          eNoBPKB2.Text := uniSP.FieldByName('NO_BPKB').Text;
          eNRegBPKb.Text := uniSP.FieldByName('NREG_BPKB').Text;
          eTglBPKB.Text := uniSP.FieldByName('TGL_BPKB').Text;
          eTglFaktur.Text := uniSP.FieldByName('TGL_FAKTUR').Text;
          eNoFaktur.Text := uniSP.FieldByName('NO_FAKTUR').Text;
          eNoPolisi.Text := uniSP.FieldByName('NO_POLISI').Text;
          eInfoMek.Text := uniSP.FieldByName('MERK_ID').Text+'#'+uniSP.FieldByName('MERK_NAMA').Text;
          eInfoTipe.Text := uniSP.FieldByName('TIPE').Text;
          eInfoJenis.Text := uniSP.FieldByName('JENIS_NAMA').Text;
          eInfoModel.Text := uniSP.FieldByName('MODEL_NAMA').Text;
          eInfoThnBuat.Text := uniSP.FieldByName('THN_BUAT').Text;
          eInfoSilinder.Text := uniSP.FieldByName('VOL_SILINDER').Text;
          eInfoWarna.Text := uniSP.FieldByName('WARNA_NAMA').Text;
          eInfoNoRangka.Text := uniSP.FieldByName('NO_RANGKA').Text;
          {if uniSP.FieldByName('HIST_NO_MESIN').Text <> '' then   // cek apakah no mesin ada di t_hist_mesin, jk ada berarti sudah ada penggantian no mesin
             eInfoNoMesin.Text := uniSP.FieldByName('HIST_NO_MESIN').Text
          else
             eInfoNoMesin.Text := uniSP.FieldByName('NO_MESIN').Text;}
          eInfoNoMesin.Text := uniSP.FieldByName('NO_MESIN').Text;
          eInfoNoMesinBaru.Text := uniSP.FieldByName('HIST_NO_MESIN').Text;
          eInfoJmlRoda.Text := uniSP.FieldByName('JML_RODA').Text;
          eInfoJmlSumbu.Text := uniSP.FieldByName('JML_SUMBU').Text;
          eInfoBB.Text := uniSP.FieldByName('BB_NAMA').Text;
          LStatus.Caption := uniSP.FieldByName('BPKB_STATUS').Text;
          eInfoAPM_V.Text := uniSP.FieldByName('NAMA_IMPORTIR').Text;
          eInfoNoFormAB_V.Text := uniSP.FieldByName('NO_PABEAN').Text;
          eInfoTglFormAB_V.Text := uniSP.FieldByName('TGL_PABEAN').Text;
          eInfoKantorBeaCukai_V.Text := uniSP.FieldByName('PELABUHAN').Text;
          eInfoNoSUT_V.Text := uniSP.FieldByName('NO_SUT').Text;
          eInfoNoTPT_V.Text := uniSP.FieldByName('NO_TPT').Text;
          eInfoNoPIB_V.Text := uniSP.FieldByName('NO_PIB').Text;
          eInfoTglPIB_V.Text := uniSP.FieldByName('TGL_PIB').Text;
          eInfoKetLain2_V.Text := uniSP.FieldByName('KETR_PABEAN').Text;
          eInfoDikeluarkanOleh_V.Text := uniSP.FieldByName('TEMPAT_KELUAR').Text;
          bHistBlokir.Click;
          bBlokir.Enabled := True;
          bCetak.Enabled := True;
          pStatus.Visible := False;
        end
        else
        begin
          if uniSP.FieldByName('BPKB_STATUS').Text = 'TIDAK AKTIF'  then
          begin
            bHistBlokir.Click;
            bBlokir.Enabled := False;
            bCetak.Enabled := False;
            pStatus.Caption := 'BPKB SUDAH TIDAK AKTIF';
            pStatus.Left := 4;
            pStatus.Top := 76;
            pStatus.Visible := True;
          end
          else if uniSP.FieldByName('BPKB_STATUS').Text = 'BLOKIR'  then
          begin
            bHistBlokir.Click;
            bBlokir.Enabled := False;
            bCetak.Enabled := False;
            pStatus.Caption := 'BPKB DALAM KEADAAN BLOKIR';
            pStatus.Left := 4;
            pStatus.Top := 120;
            pStatus.Visible := True;
          end
          else if uniSP.FieldByName('BPKB_STATUS').Text = 'MUTASI LUAR DAERAH'  then
          begin
            bHistBlokir.Click;
            bBlokir.Enabled := False;
            bCetak.Enabled := False;
            pStatus.Caption := 'BPKB SUDAH MENGALAMI MUTASI LUAR DAERAH';
            pStatus.Left := 4;
            pStatus.Top := 120;
            pStatus.Visible := True;
          end
        end;
      end
      else
      begin
        FWait.Hide;
        Application.ProcessMessages;
        MessageDlgInformation('DATA TIDAK DITEMUKAN!!'+#13+
                             'LAKUKAN PROSES PEMBUATAN DATA REFERENSI DARI DATA BPKB LAMA'+#13+
                             'DENGAN LANGKAH TEKAN TOMBOL "ENTRY DATA REFERENSI"');
        cxButton13.Enabled := True;
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_data_bpkb_bbn2.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfPerubahan.bCariClick(Sender: TObject);
begin
  if eNoBPKB.Text <> '' then
  begin
    fWait.Show;
    fWait.Label1.Caption := 'Tunggu Sebentar ...';
    fWait.cxProgressBar1.Visible := True;
    Application.ProcessMessages;
    GetDataBPKB;
  end
  else
  begin
    MessageDlgWarning('No BPKB harus diisi');
    eNoBPKB.SetFocus;
  end;
end;

procedure TfPerubahan.GetDataBPKBHistory;
begin
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_hist_bpkb_bbn2_2';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_bpkb_id',ptinput).AsString := vBPKBID_v;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      fWait.Hide;
      Application.ProcessMessages;
    except on E:Exception do
    begin
      fWait.Hide;
      Application.ProcessMessages;
      ErrorProgDialog('Error,..bpkb_get_hist_bpkb_bbn2%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfPerubahan.bBlokirClick(Sender: TObject);
begin
  pEntry.Left := 69;
  pEntry.Top := 13;
  pEntry.Visible := True;
end;

procedure TfPerubahan.bHistBlokirClick(Sender: TObject);
begin
  if vBPKBID_v <> '' then
  begin
    fWait.Show;
    fWait.Label1.Caption := 'Tunggu Sebentar ...';
    fWait.cxProgressBar1.Visible := True;
    Application.ProcessMessages;
    GetDataBPKBHistory;
  end;
end;

procedure TfPerubahan.cxButton8Click(Sender: TObject);
begin
  pEntry.Visible := False;
end;

procedure TfPerubahan.cbJenisPerubahanPropertiesChange(Sender: TObject);
begin
  RefreshTempEntryBBN2;
end;

procedure TfPerubahan.cxButton1Click(Sender: TObject);
var
  uniSP : TUniStoredProc;
  DataIn : TStringList;
begin
  if Q3.FieldByName('WARNATNKB').AsString <> '' then
  begin
    if Q3.FieldByName('JENIS_NAMA').AsString <> '' then
    begin
      if Q3.FieldByName('KABUPATEN').AsString <> '' then
      begin
        try
          fWait.Show;
          Application.ProcessMessages;
          DataIn := TStringList.Create;
          DataIn.Text := ParsingSTR(eInfoMek.Text,'#');
          if DataIn.Count = 2 then
          begin
            uniSP := TUniStoredProc.Create(Application);
            uniSP.Connection := DM.dbSrv;
            uniSP.Close;
            uniSP.StoredProcName := 'bpkb_get_nopol2_bbn2';
            try
              uniSP.Params.Clear;
              uniSP.Params.CreateParam(ftString,'v_warnatnkb_id',ptInput).AsInteger := Q3.FieldByName('WARNATNKB_ID').AsInteger;
              uniSP.Params.CreateParam(ftString,'v_jenis_id',ptInput).AsInteger := Q3.FieldByName('JENIS_ID').AsInteger;
              uniSP.Params.CreateParam(ftString,'v_kabupaten',ptInput).AsString := Q3.FieldByName('KABUPATEN').AsString;
              uniSP.Params.CreateParam(ftString,'v_no_bpkb',ptInput).AsString := eNoBPKB2.Text;
              uniSP.Params.CreateParam(ftString,'v_no_rangka',ptInput).AsString := eInfoNoRangka.Text;
              if Length(eNoRekom.Text) > 14 then
                 uniSP.Params.CreateParam(ftString,'v_no_rekom',ptInput).AsString := eNoRekom.Text
              else
                 uniSP.Params.CreateParam(ftString,'v_no_rekom',ptInput).AsString := '-';
              uniSP.Params.CreateParam(ftString,'v_merk_id',ptInput).AsInteger := StrToInt(DataIn.Strings[0]);
              uniSP.Params.CreateParam(ftString,'v_model',ptInput).AsString := Q3.FieldByName('MODEL_NAMA').AsString;
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

                  DM.Q.Close;
                  DM.Q.SQL.Text := 'update t_detail_bbn2_temp set NO_POLISI=:NO_POLISI where SNHDD=:SNHDD';
                  try
                    DM.Q.ParamByName('NO_POLISI').AsString := eNopolAwal.Text+' '+eNopolTengah.Text+' '+eNopolAkhir.Text;
                    DM.Q.ParamByName('SNHDD').AsString := tSNHDD;
                    DM.Q.Execute;

                    Q3.Close;
                    Q3.Open;
                  except on E: Exception do
                  begin
                    MessageDlgError('Error, udate t_detail_bbn2_temp. perubahan nopol. ket error '+e.Message);
                  end
                  end;



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
          end
          else
          begin
            MessageDlgError('Data Merk Tidak ada, hubungi Administrator untuk edit data merk kendaraan');
          end;

        finally
          FreeAndNil(uniSP);
          FreeAndNil(DataIn);
        end;
      end
      else
      begin
        MessageDlgError('Kabupaten Tidak Boleh Kosong');
      end;
    end
    else
    begin
      MessageDlgError('Jenis Kendaraan Tidak Boleh Kosong');
    end;
  end
  else
  begin
    MessageDlgError('Warna TNKB Tidak Boleh Kosong');
  end;
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
          vISNOPOL := False;
        end
        else
        begin
          Q3.Open;
          Q3.Edit;
          Q3.Post;

          Q3.Close;
          Q3.SQL.Text := 'update t_detail_bbn2_temp set no_polisi=:no_polisi';
          Q3.ParamByName('no_polisi').AsString := Trim(eNopolAwal.Text + ' '+eNopolTengah.Text+' '+eNopolAkhir.Text);
          Q3.Execute;

          Q3.Close;
          Q3.SQL.Text := 'SELECT a.HIST_ID,a.BPKB_ID,a.HIST_DATE,a.OP_ID,o.OP_NAMA,a.HIST_TITLE,a.NREG,a.REG_DATE,a.PRINTED_BY,op.OP_NAMA as PRINTED_NAME,'+
                      'a.PRINTED_DATE,a.DASAR_PERUBAHAN,a.PRB_ID,a.NO_POLISI,a.WARNATNKB_ID,a.DUP_NP_COUNT,a.WARNA_ID,a.NO_IDENTITAS,a.NAMA_PEMILIK,'+
                      'a.PEKERJAAN_PEMILIK,a.NO_PONSEL,a.ALAMAT_PEMILIK,a.KODE_POS,a.WILAYAH_ID,a.JENIS_ID,a.MODEL_ID,a.PEMOHON,'+
                      '(CASE WHEN a.PRINTED_BY IS NULL THEN ''BELUM PRINT'' ELSE ''SUDAH PRINT'' END) AS ISCETAK,'+
                      'PRB.NAMA_PRB,WP.WARNATNKB,W.WARNA_NAMA,WIL.WILAYAH_NAMA,J.JENIS_NAMA,MDL.MODEL_NAMA'+
                      ' FROM t_detail_bbn2_temp a'+
                      ' left join t_operator o on O.OP_ID=a.OP_ID'+
                      ' left join t_operator op on OP.OP_ID=a.PRINTED_BY'+
                      ' left join m_PERUBAHAN prb on PRB.PRB_ID=a.PRB_ID'+
                      ' left join m_warnatnkb wp on WP.WARNATNKB_ID=a.WARNATNKB_ID'+
                      ' left join m_warna w on W.WARNA_ID=a.WARNA_ID'+
                      ' left join m_wilayah wil on WIL.WILAYAH_ID=a.WILAYAH_ID'+
                      ' left join m_jenis j on J.JENIS_ID=a.JENIS_ID'+
                      ' left join m_model mdl on MDL.MODEL_ID=a.MODEL_ID'+
                      ' where a.SNHDD=:SNHDD';
          Q3.Params[0].AsString := tSNHDD;
          Q3.Open;
          lStatusNOPOL.Caption := 'BLM TERPAKAI';
          lStatusNOPOL.Font.Color := clBlue;
          vISNOPOL := True;
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
  else
  begin
    MessageDlgInformation('PENGECEKAN HANYA DIGUNAKAN UNTUK KENDARAAN YANG SUDAH MEMILIKI NOPOL');
    eNopolAwal.SetFocus;
  end;}
end;

procedure TfPerubahan.bBaruPendaftaranBBN1Click(Sender: TObject);
begin
  cbJenisPerubahan.Text := '';
  eNopolAwal.Text := '';
  eNopolTengah.Text := '';
  eNopolAkhir.Text := '';
  uniSPTampil2.Close;
  Q3.Close;
end;

procedure TfPerubahan.ProsesBBN2;
var
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_proses_bbn2_2';  // update tgl 20/12/2014 penambahan field no_polisi lama
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'vPOLDA_ID',ptInput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'vPOLRES_ID',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'vHIST_ID',ptInput).AsString := Q3.FieldByName('HIST_ID').AsString;
      uniSP.Params.CreateParam(ftString,'vBPKB_ID',ptInput).AsString := Q3.FieldByName('BPKB_ID').AsString;
      uniSP.Params.CreateParam(ftString,'vHIST_TITLE',ptInput).AsString := Q3.FieldByName('HIST_TITLE').AsString;
      uniSP.Params.CreateParam(ftString,'vNREG',ptInput).AsString := Q3.FieldByName('NREG').AsString;
      uniSP.Params.CreateParam(ftString,'vMODEL_ID',ptInput).AsString := Q3.FieldByName('MODEL_ID').AsString;
      uniSP.Params.CreateParam(ftString,'vJENIS_ID',ptInput).AsString := Q3.FieldByName('JENIS_ID').AsString;
      uniSP.Params.CreateParam(ftString,'vNO_POLISI',ptInput).AsString := Q3.FieldByName('NO_POLISI').AsString;
      uniSP.Params.CreateParam(ftString,'vNO_IDENTITAS',ptInput).AsString := Q3.FieldByName('NO_IDENTITAS').AsString;
      uniSP.Params.CreateParam(ftString,'vNAMA_PEMILIK',ptInput).AsString := Q3.FieldByName('NAMA_PEMILIK').AsString;
      uniSP.Params.CreateParam(ftString,'vPEKERJAAN_PEMILIK',ptInput).AsString := Q3.FieldByName('PEKERJAAN_PEMILIK').AsString;
      uniSP.Params.CreateParam(ftString,'vNO_PONSEL',ptInput).AsString := Q3.FieldByName('NO_PONSEL').AsString;
      uniSP.Params.CreateParam(ftString,'vALAMAT_PEMILIK',ptInput).AsString := Q3.FieldByName('ALAMAT_PEMILIK').AsString;
      uniSP.Params.CreateParam(ftString,'vWILAYAH_ID',ptInput).AsString := Q3.FieldByName('WILAYAH_ID').AsString;
      uniSP.Params.CreateParam(ftString,'vKODE_POS',ptInput).AsString := Q3.FieldByName('KODE_POS').AsString;
      uniSP.Params.CreateParam(ftString,'vWARNA_ID',ptInput).AsString := Q3.FieldByName('WARNA_ID').AsString;
      uniSP.Params.CreateParam(ftString,'vWARNATNKB_ID',ptInput).AsString := Q3.FieldByName('WARNATNKB_ID').AsString;
      uniSP.Params.CreateParam(ftString,'vREG_DATE',ptInput).AsString := FormatDateTime('yyyymmdd',Q3.FieldByName('REG_DATE').AsDateTime); //FQuery.FieldByName('REG_DATE').AsString);
      uniSP.Params.CreateParam(ftString,'vOP_ID',ptInput).AsString := Q3.FieldByName('OP_ID').AsString;
      uniSP.Params.CreateParam(ftString,'vDASAR_PERUBAHAN',ptInput).AsString := Q3.FieldByName('DASAR_PERUBAHAN').AsString;
      uniSP.Params.CreateParam(ftString,'vPRB_ID',ptInput).AsString := Q3.FieldByName('PRB_ID').AsString;
      uniSP.Params.CreateParam(ftString,'vPEMOHON',ptInput).AsString := Q3.FieldByName('PEMOHON').AsString;
      uniSP.Params.CreateParam(ftString,'vHistID',ptInput).AsString := Q3.FieldByName('HIST_ID').AsString;
      uniSP.Params.CreateParam(ftString,'vNO_MESIN',ptInput).AsString := Q3.FieldByName('NO_MESIN').AsString;
      uniSP.Params.CreateParam(ftString,'vNO_POLISI_LAMA',ptInput).AsString := eNoPolisi.Text;
      //uniSP.Params.CreateParam(ftString,'vKODE_AKHIR',ptInput).AsString := UniQuery2.FieldByName('KD_AKHIR').AsString;
      if isTreaceLog = '1' then
      begin
        Log('vPOLDA_ID '+vPOLDAID);
        Log('vPOLRES_ID '+vPOLRESID);
        Log('vHIST_ID '+Q3.FieldByName('HIST_ID').AsString);
        Log('vBPKB_ID '+Q3.FieldByName('BPKB_ID').AsString);
        Log('vHIST_TITLE '+Q3.FieldByName('HIST_TITLE').AsString);
        Log('vNREG '+Q3.FieldByName('NREG').AsString);
        Log('vMODEL_ID '+Q3.FieldByName('MODEL_ID').AsString);
        Log('vJENIS_ID '+Q3.FieldByName('JENIS_ID').AsString);
        Log('vNO_POLISI '+Q3.FieldByName('NO_POLISI').AsString);
        Log('vNO_IDENTITAS '+Q3.FieldByName('NO_IDENTITAS').AsString);
        Log('vNAMA_PEMILIK '+Q3.FieldByName('NAMA_PEMILIK').AsString);
        Log('vPEKERJAAN_PEMILIK '+Q3.FieldByName('PEKERJAAN_PEMILIK').AsString);
        Log('vNO_PONSEL '+Q3.FieldByName('NO_PONSEL').AsString);
        Log('vALAMAT_PEMILIK '+Q3.FieldByName('ALAMAT_PEMILIK').AsString);
        Log('vWILAYAH_ID '+Q3.FieldByName('WILAYAH_ID').AsString);
        Log('vKODE_POS '+Q3.FieldByName('KODE_POS').AsString);
        Log('vWARNA_ID '+Q3.FieldByName('WARNA_ID').AsString);
        Log('vWARNATNKB_ID '+Q3.FieldByName('WARNATNKB_ID').AsString);
        Log('vREG_DATE '+FormatDateTime('yyyymmdd',Q3.FieldByName('REG_DATE').AsDateTime)); //FQuery.FieldByName('REG_DATE').AsString);
        Log('vOP_ID '+Q3.FieldByName('OP_ID').AsString);
        Log('vDASAR_PERUBAHAN '+Q3.FieldByName('DASAR_PERUBAHAN').AsString);
        Log('vPRB_ID '+Q3.FieldByName('PRB_ID').AsString);
        Log('vPEMOHON '+Q3.FieldByName('PEMOHON').AsString);
        Log('vHistID '+Q3.FieldByName('HIST_ID').AsString);
        //Log('KD_AWAL '+UniQuery2.FieldByName('KD_AWAL').AsString);
        //Log('KD_AKHIR '+UniQuery2.FieldByName('KD_AKHIR').AsString);
      end;
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
      uniSP.ExecProc;

      fWait.Hide;
      Application.ProcessMessages;
      if Pos('KESALAHAN',uniSP.Params.ParamValues['RESULT']) > 0 then
         MessageDlgError('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT'])
      else if Pos('SUKSES',uniSP.Params.ParamValues['RESULT']) > 0 then
      begin
         MessageDlgInformation('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT']);
         pEntry.Visible := False;
         bHistBlokir.Click;
      end
      else
         MessageDlgError('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT']);
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_proses_bbn2.Exec%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfPerubahan.bSimpanClick(Sender: TObject);
begin
  Q3.Open;
  Q3.Edit;
  Q3.Post;

  Q3.Close;
  Q3.SQL.Text := 'SELECT a.HIST_ID,a.BPKB_ID,a.HIST_DATE,a.OP_ID,o.OP_NAMA,a.HIST_TITLE,a.NREG,a.REG_DATE,a.PRINTED_BY,op.OP_NAMA as PRINTED_NAME,'+
                 'a.PRINTED_DATE,a.DASAR_PERUBAHAN,a.PRB_ID,a.NO_POLISI,a.WARNATNKB_ID,a.DUP_NP_COUNT,a.WARNA_ID,a.NO_IDENTITAS,a.NAMA_PEMILIK,'+
                 'a.PEKERJAAN_PEMILIK,a.NO_PONSEL,a.ALAMAT_PEMILIK,a.KODE_POS,a.WILAYAH_ID,a.JENIS_ID,a.MODEL_ID,a.PEMOHON,'+
                 '(CASE WHEN a.PRINTED_BY IS NULL THEN ''BELUM PRINT'' ELSE ''SUDAH PRINT'' END) AS ISCETAK,'+
                 'PRB.NAMA_PRB,WP.WARNATNKB,W.WARNA_NAMA,WIL.WILAYAH_NAMA,J.JENIS_NAMA,MDL.MODEL_NAMA,a.NO_MESIN'+
                 ' FROM t_detail_bbn2_temp a'+
                 ' left join t_operator o on O.OP_ID=a.OP_ID'+
                 ' left join t_operator op on OP.OP_ID=a.PRINTED_BY'+
                 ' left join m_PERUBAHAN prb on PRB.PRB_ID=a.PRB_ID'+
                 ' left join m_warnatnkb wp on WP.WARNATNKB_ID=a.WARNATNKB_ID'+
                 ' left join m_warna w on W.WARNA_ID=a.WARNA_ID'+
                 ' left join m_wilayah wil on WIL.WILAYAH_ID=a.WILAYAH_ID'+
                 ' left join m_jenis j on J.JENIS_ID=a.JENIS_ID'+
                 ' left join m_model mdl on MDL.MODEL_ID=a.MODEL_ID'+
                 ' where a.SNHDD=:SNHDD';
  Q3.Params[0].AsString := tSNHDD;
  Q3.Open;
  if Q3.RecordCount > 0 then
  begin
    if Q3.FieldByName('DASAR_PERUBAHAN').AsString <> '' then
    begin
      if Q3.FieldByName('PEMOHON').AsString <> '' then
      begin
        if eNoPolisi.Text <> '' then
        begin
          fWait.Label1.Caption := 'Tunggu Sebentar ...';
          fWait.Show;
          fWait.cxProgressBar1.Visible := True;
          Application.ProcessMessages;
          ProsesBBN2;
          cxDBVerticalGrid2.Enabled := False;
        end
        else
        begin
          MessageDlgError('No POLISI Awal Harus Diisi');
        end;
      end
      else
      begin
        cxDBVerticalGrid2.Enabled := True;
        Q3.Open;
        MessageDlgError('PEMOHON HARAP DIISI');
      end;
    end
    else
    begin
      cxDBVerticalGrid2.Enabled := True;
      Q3.Open;
      MessageDlgError('DASAR PERUBAHAN HARAP DIISI');
    end;
  end;
end;

procedure TfPerubahan.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  with uniSPTampil3 do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_hist_bbn2pil_2';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_hist_id',ptinput).AsString := uniSPTampil.FieldByName('HIST_ID').AsString;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;

      fWait.Hide;
      Application.ProcessMessages;

      if uniSPTampil3.RecordCount > 0 then
      begin
        bCetak.Enabled := True;
        {if uniSPTampil3.FieldByName('ISCETAK').AsString = 'BELUM PRINT' then
           bCetak.Enabled := True
        else
           bCetak.Enabled := False;}
      end
      else
        bCetak.Enabled := False;

    except on E:Exception do
    begin
      fWait.Hide;
      Application.ProcessMessages;
      ErrorProgDialog('Error,..bpkb_get_hist_bbn2pil%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfPerubahan.bCetakClick(Sender: TObject);
begin
  if uniSPTampil.FieldByName('NREG').AsString = uniSPTampil3.FieldByName('NREG').AsString then
  begin
    if (uniSPTampil3.Active) and (uniSPTampil3.RecordCount > 0) then
    begin
      pCetak.Left := 166;
      pCetak.Top := 80;
      eXIdentitas_CB.Text := FloatToStr(veXIDENTITAS_CB);
      eYIdentitas_CB.Text := FloatToStr(veYIDENTITAS_CB);
      eXIsiData_CB.Text := FloatToStr(veXISIDATA_CB);
      eYIsiData_CB.Text := FloatToStr(veYISIDATA_CB);
      eXKota.Text := FloatToStr(veXKOTA);
      eYKota.Text := FloatToStr(veYKOTA);
      eXTgl.Text := FloatToStr(veXTGL);
      eYTgl.Text := FloatToStr(veYTGL);
      eXSignJab.Text := FloatToStr(veXSJAB);
      eYSignJab.Text := FloatToStr(veYSJAB);
      eXSignNama.Text := FloatToStr(veXSNAMA);
      eYSignNama.Text := FloatToStr(veYSNAMA);
      eXSignNRP.Text := FloatToStr(veXSNRP);
      eYSignNRP.Text := FloatToStr(veYSNRP);
      rbBukuLama.Checked := False;
      rbBukuBaru.Checked := False;
      rbHalamanCetak.ItemIndex := -1;
      pCetak.Visible := True;
    end
    else
    begin
      MessageDlgWarning('DATA YANG AKAN DICETAK TOLONG DIPILIH TERLEBIH DAHULU');
    end;
  end
  else
  begin
    MessageDlgError('DATA YANG AKAN DICETAK HARUS DI PILIH TERLEBIH DAHULI');
  end;
end;

procedure TfPerubahan.cxButton4Click(Sender: TObject);
begin
  if uniSPTampil3.FieldByName('ISCETAK').AsString = 'BELUM PRINT' then
  begin
    CetakBuku;
  end
  else
  begin
    // PROSES CETAK
    MessageDlgInformation('BUKU SUDAH PERNAH DICETAK, PROSES PENCETAKAN ULANG TIDAK BISA DILAKUKAN'+#13+
                          'HUBUNGI ADMINISTRATOR UNTUK KETERANGAN LEBIH LANJUT');
  end;
end;

Function TfPerubahan.UpdateCetakBBN2 : Boolean;
var
  uniSP : TUniStoredProc;
begin
  Result := False;
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_update_cetak_perubahan';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_hist_id',ptInput).AsString := uniSPTampil.FieldByName('HIST_ID').AsString;
      uniSP.Params.CreateParam(ftString,'v_op_id',ptInput).AsString := vIDPetugas;
      uniSP.Params.CreateParam(ftString,'v_tgl_proses',ptInput).AsString := FormatDateTime('yyyymmdd',TTglSrvSkr);
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
      uniSP.ExecProc;

      fWait.Hide;
      Application.ProcessMessages;
      tResponPrn := uniSP.Params.ParamValues['RESULT'];
      if copy(uniSP.Params.ParamValues['RESULT'],1,2) = '00' then
        Result := True
      else
        Result := False;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_update_cetak_perubahan.Exec%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfPerubahan.cxButton3Click(Sender: TObject);
begin
  pCetak.Visible := False;
end;

procedure TfPerubahan.frxReportBeforePrint(Sender: TfrxReportComponent);
begin
  (frxReport.FindObject('DataCetak') as TfrxMemoView).Font.Name := vNamaFont;
  (frxReport.FindObject('DataCetak1') as TfrxMemoView).Font.Name := vNamaFont;
  (frxReport.FindObject('DataCetak2') as TfrxMemoView).Font.Name := vNamaFont;
  (frxReport.FindObject('PoIDoI') as TfrxMemoView).Font.Name := vNamaFont;
  (frxReport.FindObject('kota') as TfrxMemoView).Font.Name := vNamaFont;
  // ukuran font
  (frxReport.FindObject('DataCetak') as TfrxMemoView).Font.Size := 12;
  (frxReport.FindObject('DataCetak1') as TfrxMemoView).Font.Size := 12;
  (frxReport.FindObject('DataCetak2') as TfrxMemoView).Font.Size := 12;
  (frxReport.FindObject('PoIDoI') as TfrxMemoView).Font.Size := 12;
  (frxReport.FindObject('kota') as TfrxMemoView).Font.Size := 12;
  if isCetakKartuInduk = '0' then
  begin
    if rbBukuLama.Checked = True then
    begin
      if rbHalamanCetak.ItemIndex = 0 then // halaman kiri
      begin
        (frxReport.FindObject('DataCetak') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXIdentitas_CB.Text);
        (frxReport.FindObject('DataCetak') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYIdentitas_CB.Text) + (37.7953 * 9.45);

        (frxReport.FindObject('DataCetak1') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXIsiData_CB.Text); // + (frxReport.FindObject('DataCetak') as TfrxMemoView).Width;
        (frxReport.FindObject('DataCetak1') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYIsiData_CB.Text) + (37.7953 * 9.45);

        (frxReport.FindObject('kota') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXKota.Text);
        (frxReport.FindObject('kota') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYKota.Text);

        (frxReport.FindObject('PoIDoI') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXTgl.Text);
        (frxReport.FindObject('PoIDoI') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYTgl.Text);

        (frxReport.FindObject('TtdJabatan') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignJab.Text);
        (frxReport.FindObject('TtdJabatan') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignJab.Text);

        (frxReport.FindObject('TtdNama') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignNama.Text);
        (frxReport.FindObject('TtdNama') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignNama.Text);

        (frxReport.FindObject('TtdPangkatNrp') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignNRP.Text);
        (frxReport.FindObject('TtdPangkatNrp') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignNRP.Text);

        (frxReport.FindObject('SignPict') as TfrxPictureView).Left := 37.7953 * StrToFloat(eXPict.Text);
        (frxReport.FindObject('SignPict') as TfrxPictureView).Top := 37.7953 * StrToFloat(eYPict.Text);
      end
      else if rbHalamanCetak.ItemIndex = 1 then // halaman kanan
      begin
        (frxReport.FindObject('DataCetak') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXIdentitas_CB.Text);
        (frxReport.FindObject('DataCetak') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYIdentitas_CB.Text) + (37.7953 * 9.45);

        (frxReport.FindObject('DataCetak1') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXIsiData_CB.Text); // + (frxReport.FindObject('DataCetak') as TfrxMemoView).Width;
        (frxReport.FindObject('DataCetak1') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYIsiData_CB.Text) + (37.7953 * 9.45);

        (frxReport.FindObject('kota') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXKota.Text);
        (frxReport.FindObject('kota') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYKota.Text);

        (frxReport.FindObject('PoIDoI') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXTgl.Text);
        (frxReport.FindObject('PoIDoI') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYTgl.Text);

        (frxReport.FindObject('TtdJabatan') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignJab.Text);
        (frxReport.FindObject('TtdJabatan') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignJab.Text);

        (frxReport.FindObject('TtdNama') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignNama.Text);
        (frxReport.FindObject('TtdNama') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignNama.Text);

        (frxReport.FindObject('TtdPangkatNrp') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignNRP.Text);
        (frxReport.FindObject('TtdPangkatNrp') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignNRP.Text);

        (frxReport.FindObject('SignPict') as TfrxPictureView).Left := 37.7953 * StrToFloat(eXPict.Text);
        (frxReport.FindObject('SignPict') as TfrxPictureView).Top := 37.7953 * StrToFloat(eYPict.Text);
      end;
    end
    else if rbBukuBaru.Checked = True then
    begin
      if rbHalamanCetak.ItemIndex = 0 then // halaman kiri
      begin
        (frxReport.FindObject('DataCetak') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXIdentitas_CB.Text);
        (frxReport.FindObject('DataCetak') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYIdentitas_CB.Text) + (37.7953 * 9.45);

        (frxReport.FindObject('DataCetak1') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXIsiData_CB.Text); // + (frxReport.FindObject('DataCetak') as TfrxMemoView).Width;
        (frxReport.FindObject('DataCetak1') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYIsiData_CB.Text) + (37.7953 * 9.45);

        (frxReport.FindObject('kota') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXKota.Text);
        (frxReport.FindObject('kota') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYKota.Text);

        (frxReport.FindObject('PoIDoI') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXTgl.Text);
        (frxReport.FindObject('PoIDoI') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYTgl.Text);

        (frxReport.FindObject('TtdJabatan') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignJab.Text);
        (frxReport.FindObject('TtdJabatan') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignJab.Text);

        (frxReport.FindObject('TtdNama') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignNama.Text);
        (frxReport.FindObject('TtdNama') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignNama.Text);

        (frxReport.FindObject('TtdPangkatNrp') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignNRP.Text);
        (frxReport.FindObject('TtdPangkatNrp') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignNRP.Text);

        (frxReport.FindObject('SignPict') as TfrxPictureView).Left := 37.7953 * StrToFloat(eXPict.Text);
        (frxReport.FindObject('SignPict') as TfrxPictureView).Top := 37.7953 * StrToFloat(eYPict.Text);
      end
      else if rbHalamanCetak.ItemIndex = 1 then // halaman kanan
      begin
        (frxReport.FindObject('DataCetak') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXIdentitas_CB.Text);
        (frxReport.FindObject('DataCetak') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYIdentitas_CB.Text) + (37.7953 * 9.45);

        (frxReport.FindObject('DataCetak1') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXIsiData_CB.Text); // + (frxReport.FindObject('DataCetak') as TfrxMemoView).Width;
        (frxReport.FindObject('DataCetak1') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYIsiData_CB.Text) + (37.7953 * 9.45);

        (frxReport.FindObject('kota') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXKota.Text);
        (frxReport.FindObject('kota') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYKota.Text);

        (frxReport.FindObject('PoIDoI') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXTgl.Text);
        (frxReport.FindObject('PoIDoI') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYTgl.Text);

        (frxReport.FindObject('TtdJabatan') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignJab.Text);
        (frxReport.FindObject('TtdJabatan') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignJab.Text);

        (frxReport.FindObject('TtdNama') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignNama.Text);
        (frxReport.FindObject('TtdNama') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignNama.Text);

        (frxReport.FindObject('TtdPangkatNrp') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignNRP.Text);
        (frxReport.FindObject('TtdPangkatNrp') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignNRP.Text);

        (frxReport.FindObject('SignPict') as TfrxPictureView).Left := 37.7953 * StrToFloat(eXPict.Text);
        (frxReport.FindObject('SignPict') as TfrxPictureView).Top := 37.7953 * StrToFloat(eYPict.Text);
      end;
    end;
  end
  else if isCetakKartuInduk = '1' then
  begin
    if rbBukuLama.Checked = True then
    begin
      (frxReport.FindObject('DataCetak') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXIdentitas_CB.Text);
      (frxReport.FindObject('DataCetak') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYIdentitas_CB.Text) + (37.7953 * 9.45);

      (frxReport.FindObject('DataCetak1') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXIsiData_CB.Text); // + (frxReport.FindObject('DataCetak') as TfrxMemoView).Width;
      (frxReport.FindObject('DataCetak1') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYIsiData_CB.Text) + (37.7953 * 9.45);

      (frxReport.FindObject('kota') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXKota.Text);
      (frxReport.FindObject('kota') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYKota.Text);

      (frxReport.FindObject('PoIDoI') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXTgl.Text);
      (frxReport.FindObject('PoIDoI') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYTgl.Text);

      (frxReport.FindObject('TtdJabatan') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignJab.Text);
      (frxReport.FindObject('TtdJabatan') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignJab.Text);

      (frxReport.FindObject('TtdNama') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignNama.Text);
      (frxReport.FindObject('TtdNama') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignNama.Text);

      (frxReport.FindObject('TtdPangkatNrp') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignNRP.Text);
      (frxReport.FindObject('TtdPangkatNrp') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignNRP.Text);

      (frxReport.FindObject('SignPict') as TfrxPictureView).Left := 37.7953 * StrToFloat(eXPict.Text);
      (frxReport.FindObject('SignPict') as TfrxPictureView).Top := 37.7953 * StrToFloat(eYPict.Text);
    end
    else if rbBukuBaru.Checked = True then
    begin
      (frxReport.FindObject('DataCetak') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXIdentitas_CB.Text);
      (frxReport.FindObject('DataCetak') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYIdentitas_CB.Text) + (37.7953 * 9.45);

      (frxReport.FindObject('DataCetak1') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXIsiData_CB.Text); // + (frxReport.FindObject('DataCetak') as TfrxMemoView).Width;
      (frxReport.FindObject('DataCetak1') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYIsiData_CB.Text) + (37.7953 * 9.45);

      (frxReport.FindObject('kota') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXKota.Text);
      (frxReport.FindObject('kota') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYKota.Text);

      (frxReport.FindObject('PoIDoI') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXTgl.Text);
      (frxReport.FindObject('PoIDoI') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYTgl.Text);

      (frxReport.FindObject('TtdJabatan') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignJab.Text);
      (frxReport.FindObject('TtdJabatan') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignJab.Text);

      (frxReport.FindObject('TtdNama') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignNama.Text);
      (frxReport.FindObject('TtdNama') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignNama.Text);

      (frxReport.FindObject('TtdPangkatNrp') as TfrxMemoView).Left := 37.7953 * StrToFloat(eXSignNRP.Text);
      (frxReport.FindObject('TtdPangkatNrp') as TfrxMemoView).Top := 37.7953 * StrToFloat(eYSignNRP.Text);

      (frxReport.FindObject('SignPict') as TfrxPictureView).Left := 37.7953 * StrToFloat(eXPict.Text);
      (frxReport.FindObject('SignPict') as TfrxPictureView).Top := 37.7953 * StrToFloat(eYPict.Text);
    end;
  end;
end;

procedure TfPerubahan.frxReportGetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName = 'DATA_CETAK' then
    Value := tTempCetak;
  if VarName = 'DATA_CETAK1' then
    Value := tTempCetak1;
  if VarName = 'DATA_CETAK2' then
    Value := tTempCetakTitik;
  if VarName = 'KOTA' then
    Value := vKota;
  if VarName = 'tgl_cetak_bbn2' then
    Value := FormatDateTime('dd mmmm yyyy',uniSPTampil3.FieldByName('HIST_DATE').AsDateTime);
end;

procedure TfPerubahan.pCetakMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pCetak.Handle, wm_SysCommand,$f012,0);
end;

procedure TfPerubahan.pEntryMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pEntry.Handle, wm_SysCommand,$f012,0);
end;

procedure TfPerubahan.cxButton13Click(Sender: TObject);
begin
  fWait.Show;
  cxButton13.Enabled := False;
  eNoBPKBEntry.Text := '';
  eDikeluarkanEntry.Text := '';
  eNoRangkaEntry.Text := '';
  cbMerkEntry.Text := '';
  cbJenisEntry.Text := '';
  eThnBuatEntry.Text := '';
  eSilinderEntry.Text := '';
  eJmlRodaEntry.Text := '';
  cbBahanBakarEntry.Text := '';
  cbPeruntukanEntry.Text := '';
  cbWarnaTNKBEntry.Text := '';
  eNRegBPKBEntry.Text := '';
  dtTglEntry.Text := '';
  eNoMesinEntry.Text := '';
  eTypeEntry.Text := '';
  cbModelEntry.Text := '';
  eThnRakitEntry.Text := '';
  cbWarnaEntry.Text := '';
  eJmlSumbuEntry.Text := '';
  enoTPTEntry.Text := '';
  eNoSUTEntry.Text := '';
  eNoIdentitasEntry.Text := '';
  eNamaPemilikEntry.Text := '';
  eAlamatPemilikEntry.Text := '';
  eKdPOSEntry.Text := '';
  ePonselEntry.Text := '';
  ePekerjaanEntry.Text := '';
  cbWilayahEntry.Text := '';
  cbJnsDaftaranEntry.Text := '';
  eNoFakturEntry.Text := '';
  dtTglFakturEntry.Text := '';
  eNoPabeanEntry.Text := '';
  dtTglPabeanEntry.Text := '';
  ePelabuhanEntry.Text := '';
  eNoPIBEntry.Text := '';
  dtTglPIBEntry.Text := '';
  cbCaraImporEntry.Text := '';
  eNamaImportirEntry.Text := '';
  eKetLainEntry.Text := 'FAKTUR FORM A TGL :';
  cbPemohonEntry.Text := '';
  eNopolAwalEntry.Text := '';
  eNopolTengahEntry.Text := '';
  eNopolAkhirEntry.Text := '';
  ePropinsi.Text := '';
  eKabupaten.Text := '';
  eKecamatan.Text := '';
  eKelurahan.Text := '';
  eNoPabeanEntry.Enabled := True;
  dtTglPabeanEntry.Enabled := True;
  ePelabuhanEntry.Enabled := True;
  eNoPIBEntry.Enabled := True;
  dtTglPIBEntry.Enabled := True;
  cbCaraImporEntry.Enabled := True;
  cxPageControl2.ActivePageIndex := 0;
  Application.ProcessMessages;
  RefreshCbMerk;
  RefreshCbJenis;
  RefreshCbJenisModel;
  RefreshCbBahanBakar;
  RefreshCbPeruntukan;
  RefreshCbWarnaKartu;
  RefreshCbWarnaTNKB;
  RefreshCbModel;
  RefreshCbWarna;
  RefreshCbWilayah;
  RefreshCbJenisDaftar;
  RefreshCbCaraImpor;
  RefreshCbPemohon;
  bSimpanEntry.Enabled := True;
  bBaruEntry.Enabled := True;
  fWait.Hide;
  Application.ProcessMessages;
  pEntryDataReferensi.Left := 8;
  pEntryDataReferensi.Top := 112;
  pEntryDataReferensi.Visible := True;
end;

procedure TfPerubahan.TampilAwalDataReferensi;
begin
  isEdit := '0';
  vBPKB_ID := '';
  vHIST_ID := '';
  lStatusNOPOL.Caption := 'FALSE';
  cxPageControl1.ActivePageIndex := 0;
  vISNopolLama := '0';
  vBPKB_ID_Pertama := '';
  vISNOPOL := False;
  tBerkasID := '';
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
  eNopolAwal.Text := '';
  eNopolTengah.Text := '';
  eNopolAkhir.Text := '';
  ePropinsi.Text := '';
  eKabupaten.Text := '';
  eKecamatan.Text := '';
  eKelurahan.Text := '';
  bSimpanEntry.Enabled := False;
  bBaruEntry.Enabled := False;
  cxPageControl2.ActivePageIndex := 0;
  Application.ProcessMessages;
end;

procedure TfPerubahan.pEntryDataReferensiMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pEntryDataReferensi.Handle, wm_SysCommand,$f012,0);
end;

procedure TfPerubahan.RefreshCbMerk;
begin
  QMerk1.Close;
  QMerk1.SQL.Text := 'select to_char(merk_id) as merk_id,merk_nama_r as merk_nama from m_merk  where rowid in (select min(rowid) from m_merk group by merk_nama_r)  order by merk_nama';
  QMerk1.Open;

  QMerk2.Close;
  QMerk2.SQL.Text := 'select to_char(merk_id) as merk_id,merk_nama_r as merk_nama from m_merk  where rowid in (select min(rowid) from m_merk group by merk_nama_r)  order by merk_nama';
  QMerk2.Open;
end;

procedure TfPerubahan.RefreshCbJenis;
begin
  QJenis1.Close;
  QJenis1.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenis1.Open;

  QJenis2.Close;
  QJenis2.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenis2.Open;
end;

procedure TfPerubahan.RefreshCbJenisModel;
begin
  QJenisModel1.Close;
  QJenisModel1.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenisModel1.Open;

  QJenisModel2.Close;
  QJenisModel2.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenisModel2.Open;
end;

procedure TfPerubahan.RefreshCbBahanBakar;
begin
  QBB1.Close;
  QBB1.SQL.Text := 'select to_char(bb_id) as bb_id,bb_nama from m_bahanbakar order by bb_nama';
  QBB1.Open;

  QBB2.Close;
  QBB2.SQL.Text := 'select to_char(bb_id) as bb_id,bb_nama from m_bahanbakar order by bb_nama';
  QBB2.Open;
end;

procedure TfPerubahan.RefreshCbPeruntukan;
begin
  QPeruntukan1.Close;
  QPeruntukan1.SQL.Text := 'select to_char(prt_id) as prt_id,prt_nama from m_peruntukan order by prt_nama';
  QPeruntukan1.Open;

  QPeruntukan2.Close;
  QPeruntukan2.SQL.Text := 'select to_char(prt_id) as prt_id,prt_nama from m_peruntukan order by prt_nama';
  QPeruntukan2.Open;
end;

procedure TfPerubahan.RefreshCbWarnaTNKB;
begin
  QWarnaTNKB1.Close;
  QWarnaTNKB1.SQL.Text := 'select to_char(warnatnkb_id) as warnatnkb_id,warnatnkb from m_warnatnkb order by warnatnkb';
  QWarnaTNKB1.Open;

  QWarnaTNKB2.Close;
  QWarnaTNKB2.SQL.Text := 'select to_char(warnatnkb_id) as warnatnkb_id,warnatnkb from m_warnatnkb order by warnatnkb';
  QWarnaTNKB2.Open;
end;

procedure TfPerubahan.RefreshCbWarnaKartu;
begin
  QWarnaKartu1.Close;
  QWarnaKartu1.SQL.Text := 'select to_char(wk_id) as wk_id,wk_nama from m_warna_kartu order by wk_nama';
  QWarnaKartu1.Open;

  QWarnaKartu2.Close;
  QWarnaKartu2.SQL.Text := 'select to_char(wk_id) as wk_id,wk_nama from m_warna_kartu order by wk_nama';
  QWarnaKartu2.Open;
end;

procedure TfPerubahan.RefreshCbModel;
begin
  QModel1.Close;
  QModel1.SQL.Text := 'select to_char(model_id) as model_id,model_nama,jenis_id from m_model order by model_nama';
  QModel1.Open;

  QModel2.Close;
  QModel2.SQL.Text := 'select to_char(model_id) as model_id,model_nama,jenis_id from m_model order by model_nama';
  QModel2.Open;
end;

procedure TfPerubahan.RefreshCbWarna;
begin
  QWarna1.Close;
  QWarna1.SQL.Text := 'select to_char(warna_id) as warna_id,warna_nama from m_warna order by warna_nama';
  QWarna1.Open;

  QWarna2.Close;
  QWarna2.SQL.Text := 'select to_char(warna_id) as warna_id,warna_nama from m_warna order by warna_nama';
  QWarna2.Open;
end;

procedure TfPerubahan.RefreshCbWilayah;
begin
  QWil1.Close;
  QWil1.SQL.Text := 'select to_char(wilayah_id) as wilayah_kode,wilayah_nama from m_wilayah order by wilayah_nama';
  QWil1.Open;

  QWil2.Close;
  QWil2.SQL.Text := 'select to_char(wilayah_id) as wilayah_kode,wilayah_nama from m_wilayah order by wilayah_nama';
  QWil2.Open;
end;

procedure TfPerubahan.RefreshCbJenisDaftar;
begin
  QJenisDaftar1.Close;
  QJenisDaftar1.SQL.Text := 'select to_char(jd_id) as jd_id,jd_nama from m_jenis_daftaran order by jd_nama';
  QJenisDaftar1.Open;

  QJenisDaftar2.Close;
  QJenisDaftar2.SQL.Text := 'select to_char(jd_id) as jd_id,jd_nama from m_jenis_daftaran order by jd_nama';
  QJenisDaftar2.Open;
end;

procedure TfPerubahan.RefreshCbCaraImpor;
begin
  QCaraImport1.Close;
  QCaraImport1.SQL.Text := 'select to_char(IMPMTHD_ID) as IMPMTHD_ID,IMPMTHD_NAME from m_cara_impor order by IMPMTHD_NAME';
  QCaraImport1.Open;

  QCaraImport2.Close;
  QCaraImport2.SQL.Text := 'select to_char(IMPMTHD_ID) as IMPMTHD_ID,IMPMTHD_NAME from m_cara_impor order by IMPMTHD_NAME';
  QCaraImport2.Open;
end;

procedure TfPerubahan.RefreshCbPemohon;
begin
  QPemohon1.Close;
  QPemohon1.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  QPemohon1.Open;

  QPemohon2.Close;
  QPemohon2.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  QPemohon2.Open;
end;

procedure TfPerubahan.RefreshKelurahan;
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

procedure TfPerubahan.pkdposMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pkdpos.Handle, wm_SysCommand,$f012,0);
end;

procedure TfPerubahan.Shape12MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pkdpos.Handle, wm_SysCommand,$f012,0);
end;

procedure TfPerubahan.cxButton14Click(Sender: TObject);
begin
  pkdpos.Visible := False;
end;

procedure TfPerubahan.cxButton2Click(Sender: TObject);
begin
  pEntryDataReferensi.Visible := False;
end;

procedure TfPerubahan.CariDataFaktur(vJenis, vCari: String);
var
  uniSP : TUniStoredProc;
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
          cbMerkEntry.EditText := uniSP.FieldByName('MEREK').Text;
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
        eNopolAwalEntry.Text := '';
        eNopolTengahEntry.Text := '';
        eNopolAkhirEntry.Text := '';
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

procedure TfPerubahan.CariReferensi(vNoRangka: String);
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

procedure TfPerubahan.eNoRangkaEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
  begin
    CariDataFaktur('1',eNoRangkaEntry.Text);
  end;
end;

procedure TfPerubahan.eNoRangkaEntryPropertiesChange(Sender: TObject);
begin
  if Length(eNoRangkaEntry.Text)=10 then
     CariReferensi(eNoRangkaEntry.Text)
  else if (Length(eNoRangkaEntry.Text)=17) and (isEdit='0')  then
     CariDataFaktur('1',eNoRangkaEntry.Text);
end;

procedure TfPerubahan.cbModelEntryPropertiesPopup(Sender: TObject);
begin
  cbModelEntry.Properties.ListSource.DataSet.Filter := 'JENIS_ID='+cbJenisEntry.EditValue;
  cbModelEntry.Properties.ListSource.DataSet.Filtered := True;
end;

procedure TfPerubahan.eThnBuatEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     eThnRakitEntry.SetFocus;
end;

procedure TfPerubahan.eThnRakitEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     eSilinderEntry.SetFocus;
end;

procedure TfPerubahan.eSilinderEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     cbWarnaEntry.SetFocus;
end;

procedure TfPerubahan.eJmlRodaEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     eJmlSumbuEntry.SetFocus;
end;

procedure TfPerubahan.eJmlSumbuEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     cbBahanBakarEntry.SetFocus;
end;

procedure TfPerubahan.enoTPTEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     cbPeruntukanEntry.SetFocus;
end;

procedure TfPerubahan.eNoSUTEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     cbWarnaTNKBEntry.SetFocus;
end;

procedure TfPerubahan.eAlamatPemilikEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = vk_delete then
  begin
     eAlamatPemilikEntry.Clear;
     eAlamatPemilikEntry.SetFocus;
  end;
end;

procedure TfPerubahan.eKdPOSEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     ePonselEntry.SetFocus;
end;

procedure TfPerubahan.ePonselEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     ePekerjaanEntry.SetFocus;
end;

procedure TfPerubahan.ePekerjaanEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     cbWilayahEntry.SetFocus;
end;

procedure TfPerubahan.cxButton10Click(Sender: TObject);
begin
  RefreshKelurahan;
  pkdpos.BringToFront;
  pkdpos.Left := 72;
  pkdpos.Top := 4;
  pkdpos.Visible := True;
  eCariKelurahan.SetFocus;
  eCariKelurahan.SelStart := Length(eCariKelurahan.Text) + 1;
end;

procedure TfPerubahan.cbJnsDaftaranEntryPropertiesChange(Sender: TObject);
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

procedure TfPerubahan.cbJenisEntryPropertiesChange(Sender: TObject);
begin
  cbModelEntry.Text := '';
end;

procedure TfPerubahan.eNoFakturEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     dtTglFakturEntry.SetFocus;
end;

procedure TfPerubahan.dtTglFakturEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     eNoPabeanEntry.SetFocus;
end;

procedure TfPerubahan.eNoPabeanEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     dtTglPabeanEntry.SetFocus;
end;

procedure TfPerubahan.dtTglPabeanEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     ePelabuhanEntry.SetFocus;
end;

procedure TfPerubahan.ePelabuhanEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     eNoPIBEntry.SetFocus;
end;

procedure TfPerubahan.eNoPIBEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     dtTglPIBEntry.SetFocus;
end;

procedure TfPerubahan.dtTglPIBEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     cbCaraImporEntry.SetFocus;
end;

procedure TfPerubahan.eNamaImportirEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     eKetLainEntry.SetFocus;
end;

procedure TfPerubahan.cxButton11Click(Sender: TObject);
begin
  RefreshCbPemohon;
end;

procedure TfPerubahan.cxButton12Click(Sender: TObject);
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

procedure TfPerubahan.cxButton7Click(Sender: TObject);
begin
  RefreshCbModel;
end;

procedure TfPerubahan.cxButton9Click(Sender: TObject);
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
end;

procedure TfPerubahan.cxButton15Click(Sender: TObject);
begin
  pModel.Visible := False;
end;

procedure TfPerubahan.pModelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pModel.Handle, wm_SysCommand,$f012,0);
end;

procedure TfPerubahan.eModelNamaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     eNRegBPKBEntry.SetFocus;
end;

procedure TfPerubahan.cxButton16Click(Sender: TObject);
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

procedure TfPerubahan.cxButton17Click(Sender: TObject);
begin
  eModelNama.Text := '';
  cbJenisModel.Text := '';
  cbWarnaKartu.Text := '';
  eModelNama.SetFocus;
end;

procedure TfPerubahan.cxButton5Click(Sender: TObject);
begin
  RefreshCbWarna;
end;

procedure TfPerubahan.cxButton6Click(Sender: TObject);
begin
  eInputWarna.Text := '';
  pWarna.Visible := True;
  pWarna.Left := 120;
  pWarna.Top := 144;
end;

procedure TfPerubahan.cxButton18Click(Sender: TObject);
begin
  pWarna.Visible := False;
end;

procedure TfPerubahan.pWarnaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pWarna.Handle, wm_SysCommand,$f012,0);
end;

procedure TfPerubahan.cxButton19Click(Sender: TObject);
begin
  eInputWarna.Text := '';
end;

procedure TfPerubahan.cxButton20Click(Sender: TObject);
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

procedure TfPerubahan.bBaruEntryClick(Sender: TObject);
begin
  cxButton13.Enabled := False;
  eNoBPKBEntry.Text := '';
  eDikeluarkanEntry.Text := '';
  eNoRangkaEntry.Text := '';
  cbMerkEntry.Text := '';
  cbJenisEntry.Text := '';
  eThnBuatEntry.Text := '';
  eSilinderEntry.Text := '';
  eJmlRodaEntry.Text := '';
  cbBahanBakarEntry.Text := '';
  cbPeruntukanEntry.Text := '';
  cbWarnaTNKBEntry.Text := '';
  eNRegBPKBEntry.Text := '';
  dtTglEntry.Text := '';
  eNoMesinEntry.Text := '';
  eTypeEntry.Text := '';
  cbModelEntry.Text := '';
  eThnRakitEntry.Text := '';
  cbWarnaEntry.Text := '';
  eJmlSumbuEntry.Text := '';
  enoTPTEntry.Text := '';
  eNoSUTEntry.Text := '';
  eNoIdentitasEntry.Text := '';
  eNamaPemilikEntry.Text := '';
  eAlamatPemilikEntry.Text := '';
  eKdPOSEntry.Text := '';
  ePonselEntry.Text := '';
  ePekerjaanEntry.Text := '';
  cbWilayahEntry.Text := '';
  cbJnsDaftaranEntry.Text := '';
  eNoFakturEntry.Text := '';
  dtTglFakturEntry.Text := '';
  eNoPabeanEntry.Text := '';
  dtTglPabeanEntry.Text := '';
  ePelabuhanEntry.Text := '';
  eNoPIBEntry.Text := '';
  dtTglPIBEntry.Text := '';
  cbCaraImporEntry.Text := '';
  eNamaImportirEntry.Text := '';
  eKetLainEntry.Text := 'FAKTUR FORM A TGL :';
  cbPemohonEntry.Text := '';
  eNopolAwalEntry.Text := '';
  eNopolTengahEntry.Text := '';
  eNopolAkhirEntry.Text := '';
  ePropinsi.Text := '';
  eKabupaten.Text := '';
  eKecamatan.Text := '';
  eKelurahan.Text := '';
  eNoPabeanEntry.Enabled := True;
  dtTglPabeanEntry.Enabled := True;
  ePelabuhanEntry.Enabled := True;
  eNoPIBEntry.Enabled := True;
  dtTglPIBEntry.Enabled := True;
  cbCaraImporEntry.Enabled := True;
  bSimpanEntry.Enabled := False;
  bBaruEntry.Enabled := False;
  cxPageControl2.ActivePageIndex := 0;
  Application.ProcessMessages;
end;

procedure TfPerubahan.AddBPKB;
var
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_add2_referensi';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'vBERKAS_ID',ptInput).AsInteger := 9;
      uniSP.Params.CreateParam(ftString,'vNO_BPKB',ptInput).AsString := eNoBPKBEntry.Text;
      uniSP.Params.CreateParam(ftString,'vTGL_BPKB',ptInput).AsString := FormatDateTime('yyyymmdd',dtTglEntry.Date);
      uniSP.Params.CreateParam(ftString,'vTGL_FAKTUR',ptInput).AsString := FormatDateTime('yyyymmdd',dtTglFakturEntry.Date);
      uniSP.Params.CreateParam(ftString,'vNO_RANGKA',ptInput).AsString := eNoRangkaEntry.Text;
      uniSP.Params.CreateParam(ftString,'vNO_MESIN',ptInput).AsString := eNoMesinEntry.Text;
      uniSP.Params.CreateParam(ftString,'vNO_POLISI',ptInput).AsString := Trim(eNopolAwalEntry.Text+' '+eNopolTengahEntry.Text+' '+eNopolAkhirEntry.Text);
      uniSP.Params.CreateParam(ftString,'vTPT_DAFTAR_STNK',ptInput).AsString := '';
      uniSP.Params.CreateParam(ftString,'vTGL_DAFTAR_STNK',ptInput).AsString := '';
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
      uniSP.Params.CreateParam(ftString,'vMODEL_ID',ptInput).AsInteger := cbModelEntry.EditValue;
      uniSP.Params.CreateParam(ftString,'vJENIS_ID',ptInput).AsInteger := cbJenisEntry.EditValue;
      uniSP.Params.CreateParam(ftString,'vNO_IDENTITAS',ptInput).AsString := eNoIdentitasEntry.Text;
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
      uniSP.Params.CreateParam(ftString,'vNO_RESI_BAYAR',ptInput).AsString := '###';
      uniSP.Params.CreateParam(ftString,'vPMT_PROD',ptInput).AsString := '';
      uniSP.Params.CreateParam(ftString,'vIS_BBN2',ptInput).AsString := '0';
      uniSP.Params.CreateParam(ftString,'vENROLLMENT_TYPE',ptInput).AsString := '1';
      uniSP.Params.CreateParam(ftString,'vPOLDA_ID',ptInput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'vPOLRES_ID',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'vKISIGN_ID',ptInput).AsInteger := 0;
      uniSP.Params.CreateParam(ftString,'vTGLREGISTER',ptInput).AsString := FormatDateTime('YYYYMMDD',TTglSrvSkr);
      uniSP.Params.CreateParam(ftString,'vPemohonID',ptInput).AsInteger := cbPemohonEntry.EditValue;
      if isTreaceLog='1' then
      begin
        Log('SProser Penyimpanan Registrasi BBN1');
        Log('vBERKAS_ID '+tBerkasID);
        Log('vNO_BPKB '+eNoBPKBEntry.Text);
        Log('vTGL_BPKB '+FormatDateTime('yyyymmdd',dtTglEntry.Date));
        Log('vTGL_FAKTUR '+FormatDateTime('yyyymmdd',dtTglFakturEntry.Date));
        Log('vNO_RANGKA '+eNoRangkaEntry.Text);
        Log('vNO_MESIN '+eNoMesinEntry.Text);
        Log('vNO_POLISI '+Trim(eNopolAwalEntry.Text+' '+eNopolTengahEntry.Text+' '+eNopolAkhirEntry.Text));
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
        Log('vNO_RESI_BAYAR '+'###');
        Log('vPMT_PROD '+'');
        Log('vIS_BBN2 '+'0');
        Log('vENROLLMENT_TYPE '+'1');
        Log('vPOLDA_ID '+vPOLDAID);
        Log('vPOLRES_ID '+vPOLRESID);
        Log('vKISIGN_ID '+'0');
        Log('vTGLREGISTER '+FormatDateTime('YYYYMMDD',TTglSrvSkr));
        Log('vPemohonID '+cbPemohonEntry.EditValue);
      end;
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
      uniSP.ExecProc;

      fWait.Hide;
      Application.ProcessMessages;
      if Pos('KESALAHAN',uniSP.Params.ParamValues['RESULT']) > 0 then
         MessageDlgError('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT'])
      else
      begin
         MessageDlgInformation('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT']);
         bCari.Click;
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..BPKB_ADD.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfPerubahan.bSimpanEntryClick(Sender: TObject);
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
                                                                //if eResiPembayaran.Text <> '' then
                                                                //begin
                                                                  if (eNopolAwalEntry.Text <> '') and (eNopolTengahEntry.Text <> '') then
                                                                  begin
                                                                    if eKelurahan.Text <> '' then
                                                                    begin
                                                                      if eKecamatan.Text <> '' then
                                                                      begin
                                                                        if eKabupaten.Text <> '' then
                                                                        begin
                                                                          if ePropinsi.Text <> '' then
                                                                          begin
                                                                            AddBPKB;
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
                                                                    eNopolAwalEntry.SetFocus;
                                                                  end;
                                                                {end
                                                                else
                                                                begin
                                                                  MessageDlg('Resi Pembayaran Daftaran harus diisi!',mtError,[mbOK],0);
                                                                  cxPageControl2.ActivePage := cxTabSheet3;
                                                                  Application.ProcessMessages;
                                                                  eResiPembayaran.SetFocus;
                                                                end;}
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
  end
  else
  begin
    MessageDlgError('No BPKB harus diisi!');
    cxPageControl2.ActivePage := cxTabSheet3;
    Application.ProcessMessages;
    eNoBPKBEntry.SetFocus;
  end;
end;

procedure TfPerubahan.eCariKelurahanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 40 then
     dbgData.SetFocus;
end;

procedure TfPerubahan.eCariKelurahanPropertiesChange(Sender: TObject);
begin
  RefreshKelurahan;
end;

procedure TfPerubahan.dbgDataDblClick(Sender: TObject);
begin
  eKelurahan.Text := Q2.FieldByName('keluarahan').AsString;
  eKecamatan.Text := Q2.FieldByName('kecamatan').AsString;
  eKabupaten.Text := Q2.FieldByName('kabupaten').AsString;
  ePropinsi.Text := Q2.FieldByName('propinsi').AsString;
  eKdPOSEntry.Text := Q2.FieldByName('kd_pos').AsString;
  pkdpos.Visible := False;
end;

procedure TfPerubahan.dbgDataKeyDown(Sender: TObject; var Key: Word;
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

procedure TfPerubahan.eNopolAwalEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    eNopolTengahEntry.SetFocus;
  end;
end;

procedure TfPerubahan.eNopolAkhirEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    cxPageControl2.ActivePage := cxTabSheet4;
    eNoIdentitasEntry.SetFocus;
  end
  else if key = VK_TAB then
  begin
    cxPageControl2.ActivePage := cxTabSheet4;
    eNoIdentitasEntry.SetFocus;
  end
end;

procedure TfPerubahan.eNopolTengahEntryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    eNopolAkhirEntry.SetFocus;
  end;
end;

procedure TfPerubahan.rbHalamanCetakPropertiesChange(Sender: TObject);
begin
  if rbBukuBaru.Checked = true then
  begin
    if rbHalamanCetak.ItemIndex = 0 then
    begin
      eXIdentitas_CB.Text := FloatToStr(veXIDENTITAS_CB);
      eYIDENTITAS_CB.Text := FloatToStr(veYIDENTITAS_CB);
      eXISIDATA_CB.Text := FloatToStr(veXISIDATA_CB);
      eYISIDATA_CB.Text := FloatToStr(veYISIDATA_CB);
      eXKOTA.Text := FloatToStr(veXKOTA);
      eYKOTA.Text := FloatToStr(veYKOTA);
      eXTGL.Text := FloatToStr(veXTGL);
      eYTGL.Text := FloatToStr(veYTGL);
      eXSignJab.Text := FloatToStr(veXSJAB);
      eYSignJab.Text := FloatToStr(veYSJAB);
      eXSignNama.Text := FloatToStr(veXSNAMA);
      eYSignNama.Text := FloatToStr(veYSNAMA);
      eXSignNRP.Text := FloatToStr(veXSNRP);
      eYSignNRP.Text := FloatToStr(veYSNRP);
      eXPict.Text := FloatToStr(veXPic);
      eYPict.Text := FloatToStr(veYPic);
    end
    else if rbHalamanCetak.ItemIndex = 1 then
    begin
      eXIdentitas_CB.Text := FloatToStr(veXIDENTITAS_CB2);
      eYIDENTITAS_CB.Text := FloatToStr(veYIDENTITAS_CB2);
      eXISIDATA_CB.Text := FloatToStr(veXISIDATA_CB2);
      eYISIDATA_CB.Text := FloatToStr(veYISIDATA_CB2);
      eXKOTA.Text := FloatToStr(veXKOTA2);
      eYKOTA.Text := FloatToStr(veYKOTA2);
      eXTGL.Text := FloatToStr(veXTGL2);
      eYTGL.Text := FloatToStr(veYTGL2);
      eXSignJab.Text := FloatToStr(veXSJAB2);
      eYSignJab.Text := FloatToStr(veYSJAB2);
      eXSignNama.Text := FloatToStr(veXSNAMA2);
      eYSignNama.Text := FloatToStr(veYSNAMA2);
      eXSignNRP.Text := FloatToStr(veXSNRP2);
      eYSignNRP.Text := FloatToStr(veYSNRP2);
      eXPict.Text := FloatToStr(veXPic2);
      eYPict.Text := FloatToStr(veYPic2);
    end;
  end
  else if rbBukuLama.Checked=true then
  begin
    if rbHalamanCetak.ItemIndex = 0 then
    begin
      eXIdentitas_CB.Text := FloatToStr(veXIDENTITAS_CB3);
      eYIDENTITAS_CB.Text := FloatToStr(veYIDENTITAS_CB3);
      eXISIDATA_CB.Text := FloatToStr(veXISIDATA_CB3);
      eYISIDATA_CB.Text := FloatToStr(veYISIDATA_CB3);
      eXKOTA.Text := FloatToStr(veXKOTA3);
      eYKOTA.Text := FloatToStr(veYKOTA3);
      eXTGL.Text := FloatToStr(veXTGL3);
      eYTGL.Text := FloatToStr(veYTGL3);
      eXSignJab.Text := FloatToStr(veXSJAB3);
      eYSignJab.Text := FloatToStr(veYSJAB3);
      eXSignNama.Text := FloatToStr(veXSNAMA3);
      eYSignNama.Text := FloatToStr(veYSNAMA3);
      eXSignNRP.Text := FloatToStr(veXSNRP3);
      eYSignNRP.Text := FloatToStr(veYSNRP3);
      eXPict.Text := FloatToStr(veXPic3);
      eYPict.Text := FloatToStr(veYPic3);
    end
    else if rbHalamanCetak.ItemIndex = 1 then
    begin
      eXIdentitas_CB.Text := FloatToStr(veXIDENTITAS_CB4);
      eYIDENTITAS_CB.Text := FloatToStr(veYIDENTITAS_CB4);
      eXISIDATA_CB.Text := FloatToStr(veXISIDATA_CB4);
      eYISIDATA_CB.Text := FloatToStr(veYISIDATA_CB4);
      eXKOTA.Text := FloatToStr(veXKOTA4);
      eYKOTA.Text := FloatToStr(veYKOTA4);
      eXTGL.Text := FloatToStr(veXTGL4);
      eYTGL.Text := FloatToStr(veYTGL4);
      eXSignJab.Text := FloatToStr(veXSJAB4);
      eYSignJab.Text := FloatToStr(veYSJAB4);
      eXSignNama.Text := FloatToStr(veXSNAMA4);
      eYSignNama.Text := FloatToStr(veYSNAMA4);
      eXSignNRP.Text := FloatToStr(veXSNRP4);
      eYSignNRP.Text := FloatToStr(veYSNRP4);
      eXPict.Text := FloatToStr(veXPic4);
      eYPict.Text := FloatToStr(veYPic4);
    end;
  end;
end;

procedure TfPerubahan.CekStatusLama(vRecordNo: integer);
begin
  
end;

procedure TfPerubahan.LanjutkanProsesCetakKI;
begin
  
end;

procedure TfPerubahan.Button2Click(Sender: TObject);
begin
  bBaru.Click;
  pStatus.Visible := False;
end;

procedure TfPerubahan.Button1Click(Sender: TObject);
begin
  if rbBukuBaru.Checked = True then
  begin
    if rbHalamanCetak.ItemIndex = 0 then // kiri
    begin
      veXIDENTITAS_CB := StrToFloat(eXIdentitas_CB.Text);
      veYIDENTITAS_CB := StrToFloat(eYIDENTITAS_CB.Text);
      veXISIDATA_CB := StrToFloat(eXISIDATA_CB.Text);
      veYISIDATA_CB := StrToFloat(eYISIDATA_CB.Text);
      veXKOTA := StrToFloat(eXKOTA.Text);
      veYKOTA := StrToFloat(eYKOTA.Text);
      veXTGL := StrToFloat(eXTGL.Text);
      veYTGL := StrToFloat(eYTGL.Text);
      veXSJAB := StrToFloat(eXSignJab.Text);
      veYSJAB := StrToFloat(eYSignJab.Text);
      veXSNAMA := StrToFloat(eXSignNama.Text);
      veYSNAMA := StrToFloat(eYSignNama.Text);
      veXSNRP := StrToFloat(eXSignNRP.Text);
      veYSNRP := StrToFloat(eYSignNRP.Text);
      veXPic := StrToFloat(eXPict.Text);
      veYPic := StrToFloat(eYPict.Text);
    end
    else if rbHalamanCetak.ItemIndex = 1 then //kanan
    begin
      veXIDENTITAS_CB2 := StrToFloat(eXIdentitas_CB.Text);
      veYIDENTITAS_CB2 := StrToFloat(eYIDENTITAS_CB.Text);
      veXISIDATA_CB2 := StrToFloat(eXISIDATA_CB.Text);
      veYISIDATA_CB2 := StrToFloat(eYISIDATA_CB.Text);
      veXKOTA2 := StrToFloat(eXKOTA.Text);
      veYKOTA2:= StrToFloat(eYKOTA.Text);
      veXTGL2 := StrToFloat(eXTGL.Text);
      veYTGL2 := StrToFloat(eYTGL.Text);
      veXSJAB2 := StrToFloat(eXSignJab.Text);
      veYSJAB2 := StrToFloat(eYSignJab.Text);
      veXSNAMA2 := StrToFloat(eXSignNama.Text);
      veYSNAMA2 := StrToFloat(eYSignNama.Text);
      veXSNRP2 := StrToFloat(eXSignNRP.Text);
      veYSNRP2 := StrToFloat(eYSignNRP.Text);
      veXPic2 := StrToFloat(eXPict.Text);
      veYPic2 := StrToFloat(eYPict.Text);
    end;
  end
  else if rbBukuLama.Checked = True then
  begin
    if rbHalamanCetak.ItemIndex = 0 then // kiri
    begin
      veXIDENTITAS_CB3 := StrToFloat(eXIdentitas_CB.Text);
      veYIDENTITAS_CB3 := StrToFloat(eYIDENTITAS_CB.Text);
      veXISIDATA_CB3 := StrToFloat(eXISIDATA_CB.Text);
      veYISIDATA_CB3 := StrToFloat(eYISIDATA_CB.Text);
      veXKOTA3 := StrToFloat(eXKOTA.Text);
      veYKOTA3 := StrToFloat(eYKOTA.Text);
      veXTGL3 := StrToFloat(eXTGL.Text);
      veYTGL3 := StrToFloat(eYTGL.Text);
      veXSJAB3 := StrToFloat(eXSignJab.Text);
      veYSJAB3 := StrToFloat(eYSignJab.Text);
      veXSNAMA3 := StrToFloat(eXSignNama.Text);
      veYSNAMA3 := StrToFloat(eYSignNama.Text);
      veXSNRP3 := StrToFloat(eXSignNRP.Text);
      veYSNRP3 := StrToFloat(eYSignNRP.Text);
      veXPic3 := StrToFloat(eXPict.Text);
      veYPic3 := StrToFloat(eYPict.Text);
    end
    else if rbHalamanCetak.ItemIndex = 1 then //kanan
    begin
      veXIDENTITAS_CB4 := StrToFloat(eXIdentitas_CB.Text);
      veYIDENTITAS_CB4 := StrToFloat(eYIDENTITAS_CB.Text);
      veXISIDATA_CB4 := StrToFloat(eXISIDATA_CB.Text);
      veYISIDATA_CB4 := StrToFloat(eYISIDATA_CB.Text);
      veXKOTA4 := StrToFloat(eXKOTA.Text);
      veYKOTA4:= StrToFloat(eYKOTA.Text);
      veXTGL4 := StrToFloat(eXTGL.Text);
      veYTGL4 := StrToFloat(eYTGL.Text);
      veXSJAB4 := StrToFloat(eXSignJab.Text);
      veYSJAB4 := StrToFloat(eYSignJab.Text);
      veXSNAMA4 := StrToFloat(eXSignNama.Text);
      veYSNAMA4 := StrToFloat(eYSignNama.Text);
      veXSNRP4 := StrToFloat(eXSignNRP.Text);
      veYSNRP4 := StrToFloat(eYSignNRP.Text);
      veXPic4 := StrToFloat(eXPict.Text);
      veYPic4 := StrToFloat(eYPict.Text);
    end;
  end;
  fMain.InitIni('2');
end;

procedure TfPerubahan.CetakBuku;
var
  tJmlChar,tJmlChar2 : integer;
begin
  tTempCetak := '';
  tTempCetak1 := '';
  tTempCetakTitik := '';
  isCetakKartuInduk := '0';

  with DM.Q do
  begin
    Close;
    SQL.Text := 'select RBH_NAMA,RBH_ALAMAT,RBH_WARNA,RBH_NOPOL,RBH_MODEL,RBH_MESIN,RBH_DASAR from m_perubahan where PRB_ID=:PRB_ID';
    Params[0].AsString := uniSPTampil3.FieldByName('PRB_ID').AsString;
    Open;

    if recordcount > 0 then
    begin
      with uniSPReport do
      begin
        Active := False;
        StoredProcName := 'bpkb_get_hist_bbn2pil_prn_2';
        try
          Params.Clear;
          Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
          Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
          Params.CreateParam(ftString,'v_hist_id',ptinput).AsString := uniSPTampil.FieldByName('HIST_ID').AsString;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          fWait.Hide;
          Application.ProcessMessages;

          if uniSPReport.RecordCount > 0 then
          begin
            if rbBukuBaru.Checked = True then
            begin
              if rbHalamanCetak.ItemIndex = 0 then // kiri
              begin
                veXIDENTITAS_CB := StrToFloat(eXIdentitas_CB.Text);
                veYIDENTITAS_CB := StrToFloat(eYIDENTITAS_CB.Text);
                veXISIDATA_CB := StrToFloat(eXISIDATA_CB.Text);
                veYISIDATA_CB := StrToFloat(eYISIDATA_CB.Text);
                veXKOTA := StrToFloat(eXKOTA.Text);
                veYKOTA := StrToFloat(eYKOTA.Text);
                veXTGL := StrToFloat(eXTGL.Text);
                veYTGL := StrToFloat(eYTGL.Text);
                veXSJAB := StrToFloat(eXSignJab.Text);
                veYSJAB := StrToFloat(eYSignJab.Text);
                veXSNAMA := StrToFloat(eXSignNama.Text);
                veYSNAMA := StrToFloat(eYSignNama.Text);
                veXSNRP := StrToFloat(eXSignNRP.Text);
                veYSNRP := StrToFloat(eYSignNRP.Text);
                veXPic := StrToFloat(eXPict.Text);
                veYPic := StrToFloat(eYPict.Text);
              end
              else if rbHalamanCetak.ItemIndex = 1 then //kanan
              begin
                veXIDENTITAS_CB2 := StrToFloat(eXIdentitas_CB.Text);
                veYIDENTITAS_CB2 := StrToFloat(eYIDENTITAS_CB.Text);
                veXISIDATA_CB2 := StrToFloat(eXISIDATA_CB.Text);
                veYISIDATA_CB2 := StrToFloat(eYISIDATA_CB.Text);
                veXKOTA2 := StrToFloat(eXKOTA.Text);
                veYKOTA2:= StrToFloat(eYKOTA.Text);
                veXTGL2 := StrToFloat(eXTGL.Text);
                veYTGL2 := StrToFloat(eYTGL.Text);
                veXSJAB2 := StrToFloat(eXSignJab.Text);
                veYSJAB2 := StrToFloat(eYSignJab.Text);
                veXSNAMA2 := StrToFloat(eXSignNama.Text);
                veYSNAMA2 := StrToFloat(eYSignNama.Text);
                veXSNRP2 := StrToFloat(eXSignNRP.Text);
                veYSNRP2 := StrToFloat(eYSignNRP.Text);
                veXPic2 := StrToFloat(eXPict.Text);
                veYPic2 := StrToFloat(eYPict.Text);
              end;
            end
            else if rbBukuLama.Checked = True then
            begin
              if rbHalamanCetak.ItemIndex = 0 then // kiri
              begin
                veXIDENTITAS_CB3 := StrToFloat(eXIdentitas_CB.Text);
                veYIDENTITAS_CB3 := StrToFloat(eYIDENTITAS_CB.Text);
                veXISIDATA_CB3 := StrToFloat(eXISIDATA_CB.Text);
                veYISIDATA_CB3 := StrToFloat(eYISIDATA_CB.Text);
                veXKOTA3 := StrToFloat(eXKOTA.Text);
                veYKOTA3 := StrToFloat(eYKOTA.Text);
                veXTGL3 := StrToFloat(eXTGL.Text);
                veYTGL3 := StrToFloat(eYTGL.Text);
                veXSJAB3 := StrToFloat(eXSignJab.Text);
                veYSJAB3 := StrToFloat(eYSignJab.Text);
                veXSNAMA3 := StrToFloat(eXSignNama.Text);
                veYSNAMA3 := StrToFloat(eYSignNama.Text);
                veXSNRP3 := StrToFloat(eXSignNRP.Text);
                veYSNRP3 := StrToFloat(eYSignNRP.Text);
                veXPic3 := StrToFloat(eXPict.Text);
                veYPic3 := StrToFloat(eYPict.Text);
              end
              else if rbHalamanCetak.ItemIndex = 1 then //kanan
              begin
                veXIDENTITAS_CB4 := StrToFloat(eXIdentitas_CB.Text);
                veYIDENTITAS_CB4 := StrToFloat(eYIDENTITAS_CB.Text);
                veXISIDATA_CB4 := StrToFloat(eXISIDATA_CB.Text);
                veYISIDATA_CB4 := StrToFloat(eYISIDATA_CB.Text);
                veXKOTA4 := StrToFloat(eXKOTA.Text);
                veYKOTA4:= StrToFloat(eYKOTA.Text);
                veXTGL4 := StrToFloat(eXTGL.Text);
                veYTGL4 := StrToFloat(eYTGL.Text);
                veXSJAB4 := StrToFloat(eXSignJab.Text);
                veYSJAB4 := StrToFloat(eYSignJab.Text);
                veXSNAMA4 := StrToFloat(eXSignNama.Text);
                veYSNAMA4 := StrToFloat(eYSignNama.Text);
                veXSNRP4 := StrToFloat(eXSignNRP.Text);
                veYSNRP4 := StrToFloat(eYSignNRP.Text);
                veXPic4 := StrToFloat(eXPict.Text);
                veYPic4 := StrToFloat(eYPict.Text);
              end;
            end;
            fMain.InitIni('2');

            fWait.Show;
            fWait.Label1.Caption := 'Tunggu Sebentar ...';
            fWait.cxProgressBar1.Visible := True;
            Application.ProcessMessages;

            if UpdateCetakBBN2 = True then
            begin
              tTempCetak := tTempCetak + 'PERUBAHAN'+#13+
                                         'NOMOR'+#13;
              tTempCetak1 := tTempCetak1 + uniSPReport.FieldByName('PRB_NAMA').AsString+#13+
                                           uniSPReport.FieldByName('NREG').AsString+#13;

              if DM.Q.Fields[0].AsString='1' then // rubah nama
              begin
                tJmlChar := CekJmlChar(Trim(uniSPReport.FieldByName('ALAMAT_PEMILIK').AsString));
                tJmlChar2 := CekJmlChar(Trim(uniSPReport.FieldByName('NAMA_PEMILIK').AsString));
                if tJmlChar2 = 0 then
                begin
                  if tJmlChar = 0 then
                  begin
                    tTempCetak := tTempCetak + 'NAMA'+#13+
                                               'ALAMAT'+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ':'+#13;
                  end
                  else if tJmlChar = 1 then
                  begin
                    tTempCetak := tTempCetak + 'NAMA'+#13+
                                               'ALAMAT'+#13+
                                               ''+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ':'+#13+
                                                         ' '+#13;

                  end
                  else if tJmlChar = 2 then
                  begin
                    tTempCetak := tTempCetak + 'NAMA'+#13+
                                               'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ':'+#13+
                                                         ''+#13+
                                                         ''+#13;
                  end;
                end
                else if tJmlChar2 = 1 then
                begin
                  if tJmlChar = 0 then
                  begin
                    tTempCetak := tTempCetak + 'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ''+#13+
                                                         ':'+#13;
                  end
                  else if tJmlChar = 1 then
                  begin
                    tTempCetak := tTempCetak + 'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13+
                                               ''+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ''+#13+
                                                         ':'+#13+
                                                         ' '+#13;

                  end
                  else if tJmlChar = 2 then
                  begin
                    tTempCetak := tTempCetak + 'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ''+#13+
                                                         ':'+#13+
                                                         ''+#13+
                                                         ''+#13;
                  end;
                end;



                tTempCetak1 := tTempCetak1 + Trim(uniSPReport.FieldByName('NAMA_PEMILIK').AsString)+#13+
                                             Trim(uniSPReport.FieldByName('ALAMAT_PEMILIK').AsString)+#13;
              end;

              if DM.Q.Fields[1].AsString='1' then  //rubah alamat
              begin
                tJmlChar := CekJmlChar(Trim(uniSPReport.FieldByName('ALAMAT_PEMILIK').AsString));
                if tJmlChar = 0 then
                begin
                   tTempCetak := tTempCetak + 'ALAMAT'+#13;
                   tTempCetakTitik := tTempCetakTitik + ':'+#13;
                end
                else if tJmlChar = 1 then
                begin
                  tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                             ''+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                       ''+#13;
                end
                else if tJmlChar = 2 then
                begin
                  tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                             ''+#13+
                                             ''+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                       ''+#13+
                                                       ''+#13;
                end;
                tTempCetak1 := tTempCetak1 + Trim(uniSPReport.FieldByName('ALAMAT_PEMILIK').AsString)+#13;
              end;

              if DM.Q.Fields[2].AsString='1' then //rubah warna
              begin
                {// CETAK WARNA AWAL
                tTempCetak := tTempCetak + 'WARNA AWAL'+#13;
                tTempCetakTitik := tTempCetakTitik + ':'+#13;
                tTempCetak1 := tTempCetak1 + Trim(eInfoWarna.Text)+#13;
                // CETAK WARNA BARU}
                tTempCetak := tTempCetak + 'WARNA'+#13;
                tTempCetakTitik := tTempCetakTitik + ':'+#13;
                tTempCetak1 := tTempCetak1 + Trim(uniSPReport.FieldByName('WARNA_NAMA').AsString)+#13;
              end;

              if DM.Q.Fields[3].AsString='1' then  //rubah nopol
              begin
                if vBBN2Nopol='0' then
                begin
                  tTempCetak := tTempCetak + 'NOPOL LAMA'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  tTempCetak1 := tTempCetak1 + Trim(uniSPReport.FieldByName('NO_POLISI_LAMA').AsString)+#13;
                end;

                tTempCetak := tTempCetak + 'NOPOL BARU'+#13;
                                           //'WARNA TNKB'+#13;
                tTempCetakTitik := tTempCetakTitik + ':'+#13;
                                                    // ':'+#13;
                tTempCetak1 := tTempCetak1 + Trim(uniSPReport.FieldByName('NO_POLISI').AsString)+#13;
                                             // Trim(uniSPReport.FieldByName('WARNATNKB_NAMA').AsString)+#13;
              end;

              if DM.Q.Fields[4].AsString='1' then // rubah model
              begin
                {tTempCetak := tTempCetak + 'JENIS AWAL'+#13+
                                           'BENTUK AWAL'+#13;
                tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                     ':'+#13;
                tTempCetak1 := tTempCetak1 + Trim(eInfoJenis.Text)+#13+
                                             Trim(eInfoModel.Text)+#13;}

                tTempCetak := tTempCetak + 'JENIS'+#13+
                                           'BENTUK'+#13;
                tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                     ':'+#13;
                tTempCetak1 := tTempCetak1 + Trim(uniSPReport.FieldByName('JENIS_NAMA').AsString)+#13+
                                             Trim(uniSPReport.FieldByName('MODEL_NAMA').AsString)+#13;
              end;

              if DM.Q.Fields[5].AsString='1' then // rubah mesin
              begin
                {tTempCetak := tTempCetak + 'NO MESIN AWAL'+#13;
                tTempCetakTitik := tTempCetakTitik + ':'+#13;
                tTempCetak1 := tTempCetak1 + Trim(eInfoNoMesin.Text)+#13;}

                tTempCetak := tTempCetak + 'NO MESIN'+#13;
                tTempCetakTitik := tTempCetakTitik + ':'+#13;
                tTempCetak1 := tTempCetak1 + Trim(uniSPReport.FieldByName('NO_MESIN').AsString)+#13;
              end;

              if DM.Q.Fields[6].AsString='1' then // rubah dasar
              begin
                tTempCetak := tTempCetak + 'DASAR'+#13;
                tTempCetakTitik := tTempCetakTitik + ':'+#13;
                tTempCetak1 := tTempCetak1 + Trim(uniSPReport.FieldByName('DASAR_PERUBAHAN').AsString)+#13;
              end;

              // cari pejabat tanda tangan
              with QReport do
              begin
                Close;
                //SQL.Text := 'SELECT MUTLD_JAB,MUTLD_NAMA,MUTLD_PANGKATNRP,SYSDATE AS REG_DATE FROM T_CONFIG';
                SQL.Text := 'SELECT S.SIGN_JAB,S.SIGN_NAMA,S.SIGN_PANGKATNRP,SW.X,SW.Y,SW.W,SW.IMG FROM T_SIGNATURE S'+
                            ' INNER JOIN T_SIGNATURE_IMAGES SW ON S.SIGN_ID=SW.SIGN_ID'+
                            ' WHERE S.SIGN_TYPE=5 AND S.ISAKTIF=''1''';
                try
                  Open;
                  if recordcount > 0 then
                  begin
                    if rbBukuLama.Checked = True then
                    begin
                      if rbHalamanCetak.ItemIndex = 0 then // halaman kiri
                      begin
                        frxReport.DataSet := frxDBDataset1;
                        frxReport.Clear;
                        frxReport.LoadFromFile(RootPath+'\bbn2bukulama.fr3');
                        if TReport='1' then
                        begin
                          fWait.Close;
                          Application.ProcessMessages;
                          frxReport.DesignReport();
                        end
                        else if TReport='0' then
                        begin
                          //frxReport.ShowReport();
                          fWait.Close;                  
                          
                          Application.ProcessMessages;
                          frxReport.PrintOptions.ShowDialog := False;
                          frxReport.PrintOptions.Printer := TPRINTER_BPKB;
                          frxReport.PrepareReport;
                          frxReport.Print;
                        end
                        else if TReport='2' then
                        begin
                          fWait.Close;
                          Application.ProcessMessages;
                          frxReport.ShowReport();
                        end;
                      end
                      else if rbHalamanCetak.ItemIndex = 1 then // halaman kanan
                      begin
                        frxReport.DataSet := frxDBDataset1;
                        frxReport.Clear;
                        frxReport.LoadFromFile(RootPath+'\bbn2bukulama.fr3');
                        if TReport='1' then
                        begin
                          fWait.Close;
                          Application.ProcessMessages;
                          frxReport.DesignReport();
                        end
                        else if TReport='0' then
                        begin
                          //frxReport.ShowReport();
                          fWait.Close;
                          Application.ProcessMessages;
                          frxReport.PrintOptions.ShowDialog := False;
                          frxReport.PrintOptions.Printer := TPRINTER_BPKB;
                          frxReport.PrepareReport;
                          frxReport.Print;
                        end
                        else if TReport='2' then
                        begin
                          fWait.Close;
                          Application.ProcessMessages;
                          frxReport.ShowReport();
                        end;
                      end;

                      // lanjutkan ke proses cetak buku kartu induk?
                      if MessageDlg('APAKAH AKAN DILANJUTKAN KE PROSES CETAK KARTU INDUK?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                      begin
                        if MessageDlg('KERTAS KARTU INDUK APAKAH SUDAH DIPASANG DENGAN BENAR?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                        begin
                          // proses cetak kartu induk
                          isCetakKartuInduk := '1';
                          frxReport.DataSet := frxDBDataset1;
                          frxReport.Clear;
                          frxReport.LoadFromFile(RootPath+'\bbn2bukulama.fr3');
                          if TReport='1' then
                          begin
                            fWait.Close;
                            Application.ProcessMessages;
                            frxReport.DesignReport();
                          end
                          else if TReport='0' then
                          begin
                            //frxReport.ShowReport();
                            fWait.Close;
                            Application.ProcessMessages;
                            frxReport.PrintOptions.ShowDialog := False;
                            frxReport.PrintOptions.Printer := TPRINTER_BPKB;
                            frxReport.PrepareReport;
                            frxReport.Print;
                          end
                          else if TReport='2' then
                          begin
                            fWait.Close;
                            Application.ProcessMessages;
                            frxReport.ShowReport();
                          end;
                        end;
                      end;
                    end
                    else if rbBukuBaru.Checked = True then
                    begin
                      if rbHalamanCetak.ItemIndex = 0 then // halaman kiri
                      begin
                        frxReport.DataSet := frxDBDataset1;
                        frxReport.Clear;
                        frxReport.LoadFromFile(RootPath+'\bbn2bukubaru.fr3');
                        if TReport='1' then
                        begin
                          fWait.Close;
                          Application.ProcessMessages;
                          frxReport.DesignReport();
                        end
                        else if TReport='0' then
                        begin
                          //frxReport.ShowReport();
                          fWait.Close;
                          Application.ProcessMessages;
                          frxReport.PrintOptions.ShowDialog := False;
                          frxReport.PrintOptions.Printer := TPRINTER_BPKB;
                          frxReport.PrepareReport;
                          frxReport.Print;
                        end
                        else if TReport='2' then
                        begin
                          fWait.Close;
                          Application.ProcessMessages;
                          frxReport.ShowReport();
                        end;
                      end
                      else if rbHalamanCetak.ItemIndex = 1 then // halaman kanan
                      begin
                        fWait.Close;
                        Application.ProcessMessages;
                        frxReport.DataSet := frxDBDataset1;
                        frxReport.Clear;
                        frxReport.LoadFromFile(RootPath+'\bbn2bukubaru.fr3');
                        if TReport='1' then
                        begin
                          fWait.Close;
                          Application.ProcessMessages;
                          frxReport.DesignReport();
                        end
                        else if TReport='0' then
                        begin
                          //frxReport.ShowReport();
                          fWait.Close;
                          Application.ProcessMessages;
                          frxReport.PrintOptions.ShowDialog := False;
                          frxReport.PrintOptions.Printer := TPRINTER_BPKB;
                          frxReport.PrepareReport;
                          frxReport.Print;
                        end
                        else if TReport='2' then
                        begin
                          fWait.Close;
                          Application.ProcessMessages;
                          frxReport.ShowReport();
                        end;
                      end;

                      // lanjutkan ke proses cetak buku kartu induk?
                      if MessageDlg('APAKAH AKAN DILANJUTKAN KE PROSES CETAK KARTU INDUK?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                      begin
                        if MessageDlg('KERTAS KARTU INDUK APAKAH SUDAH DIPASANG DENGAN BENAR?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                        begin
                          // proses cetak kartu induk
                          isCetakKartuInduk := '1';
                          frxReport.DataSet := frxDBDataset1;
                          frxReport.Clear;
                          frxReport.LoadFromFile(RootPath+'\bbn2bukubaru.fr3');
                          if TReport='1' then
                          begin
                            fWait.Close;
                            Application.ProcessMessages;
                            frxReport.DesignReport();
                          end
                          else if TReport='0' then
                          begin
                            //frxReport.ShowReport();
                            fWait.Close;
                            Application.ProcessMessages;
                            frxReport.PrintOptions.ShowDialog := False;
                            frxReport.PrintOptions.Printer := TPRINTER_BPKB;
                            frxReport.PrepareReport;
                            frxReport.Print;
                          end
                          else if TReport='2' then
                          begin
                            fWait.Close;
                            Application.ProcessMessages;
                            frxReport.ShowReport();
                          end;
                        end;
                      end;
                    end
                    else
                    begin
                      MessageDlgWarning('Pilih terlebih dahulu jenis buku yang akan dicetak!');
                    end;
                  end
                  else
                  begin
                    MessageDlgError('PROSES TIDAK BISA DILAKUKAN, KONFIGURASI BLM DILAKUKAN');
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
              MessageDlgError('PROSES UPDATE STATUS PRINT GAGAL!!'+#13+
                              'RESPON FROM SERVER '+tResponPrn);
            end;
          end
          else
          begin
            MessageDlgWarning('TIDAK ADA DATA YANG AKAN DICETAK');
          end;
        except on E:Exception do
        begin
          fWait.Hide;
          Application.ProcessMessages;
          ErrorProgDialog('Error,..bpkb_get_hist_bbn2pilprn%Error '+E.Message);
        end;
        end;
      end;
    end
    else
    begin
      fWait.Hide;
      Application.ProcessMessages;
      MessageDlgInformation('Tidak ada file yang akan dicetak');
    end;
  end;
end;

end.
