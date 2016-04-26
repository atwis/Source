unit uBlokir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, frxClass, frxDesgn, frxBarcode, frxDBSet,
  MemDS, DBAccess, Uni, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls,
  cxRadioGroup, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxMemo, cxPC,
  cxButtons, cxTextEdit, ExtCtrls, HotKeyManager, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DBCtrls, Grids, DBGrids, CRGrid, ComCtrls;

type
  TfBlokir = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label25: TLabel;
    LSTATUS: TLabel;
    Label26: TLabel;
    Shape5: TShape;
    Label27: TLabel;
    Shape6: TShape;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    eNoBPKB: TcxTextEdit;
    bCari: TcxButton;
    bBaru: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label24: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label9: TLabel;
    eInfoPekerjaan: TcxTextEdit;
    eInfoNoIdentitas: TcxTextEdit;
    eInfoNamaPemilik: TcxMemo;
    eInfoAlamatPemilik: TcxMemo;
    eNoBPKB2: TcxTextEdit;
    eNRegBPKb: TcxTextEdit;
    eTglBPKB: TcxTextEdit;
    eNoFaktur: TcxTextEdit;
    eTglFaktur: TcxTextEdit;
    eNoPolisi: TcxTextEdit;
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
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    rbPidana: TcxRadioButton;
    rbPerdata: TcxRadioButton;
    rbDuplikat: TcxRadioButton;
    dtTglBlokir: TcxDateEdit;
    eNoSurutPemohon: TcxTextEdit;
    dtTglSurutPemohon: TcxDateEdit;
    ePerihal: TcxTextEdit;
    eAlasan: TcxMemo;
    bBlokir: TcxButton;
    bBukaBlokir: TcxButton;
    bCetak: TcxButton;
    eOperator: TcxTextEdit;
    eIsCetak: TcxTextEdit;
    eNoSuratRef: TcxTextEdit;
    ePemohon: TcxTextEdit;
    eAlamatPemohon: TcxMemo;
    bHistBlokir: TcxButton;
    eKotaPemohon: TcxTextEdit;
    dsQ: TUniDataSource;
    QReport: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDesigner1: TfrxDesigner;
    frxReport: TfrxReport;
    uniSPTampil: TUniStoredProc;
    cxButton13: TcxButton;
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
    QWarnaKartu1: TUniQuery;
    QWarnaKartu2: TUniQuery;
    dsQWarnaKartu2: TUniDataSource;
    dsQWarnaKartu1: TUniDataSource;
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
    QJenisModel1: TUniQuery;
    QJenisModel2: TUniQuery;
    dsQJenisModel2: TUniDataSource;
    dsQJenisModel1: TUniDataSource;
    Q2: TUniQuery;
    Q2KELUARAHAN: TStringField;
    Q2KECAMATAN: TStringField;
    Q2KABUPATEN: TStringField;
    Q2PROPINSI: TStringField;
    Q2KD_POS: TStringField;
    DataSource1: TDataSource;
    pEntryDataReferensi: TPanel;
    Label40: TLabel;
    Shape11: TShape;
    cxButton2: TcxButton;
    bSimpanEntry: TcxButton;
    bBaruEntry: TcxButton;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
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
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label84: TLabel;
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
    eNopolAwalEntry: TcxTextEdit;
    eNopolTengahEntry: TcxTextEdit;
    eNopolAkhirEntry: TcxTextEdit;
    cxTabSheet4: TcxTabSheet;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
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
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label85: TLabel;
    Label86: TLabel;
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
    pkdpos: TPanel;
    Shape12: TShape;
    Label87: TLabel;
    eCariKelurahan: TcxTextEdit;
    rbKelurahan: TcxRadioButton;
    rbKecamatan: TcxRadioButton;
    dbgData: TCRDBGrid;
    DBNavigator1: TDBNavigator;
    cxButton14: TcxButton;
    QCaraImport1: TUniQuery;
    QCaraImport2: TUniQuery;
    dsCaraImport2: TUniDataSource;
    dsCaraImport1: TUniDataSource;
    qAddModel: TUniQuery;
    dsqAddModel: TUniDataSource;
    pModel: TPanel;
    Label88: TLabel;
    Shape13: TShape;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
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
    pWarna: TPanel;
    Label92: TLabel;
    Shape14: TShape;
    Label93: TLabel;
    cxButton18: TcxButton;
    eInputWarna: TcxTextEdit;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    cxMemo1: TcxMemo;
    cxButton1: TcxButton;
    pHistoryBlokir: TPanel;
    Label94: TLabel;
    Shape7: TShape;
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label95: TLabel;
    CRDBGrid1: TCRDBGrid;
    TabSheet2: TTabSheet;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    lNoBPKB: TLabel;
    lNoRegBPKB: TLabel;
    lNOPOL: TLabel;
    lNORangka: TLabel;
    lNOMEsin: TLabel;
    lNamaPemilik: TLabel;
    lAlamatPemilik: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    cxButton3: TcxButton;
    cxTabSheet6: TcxTabSheet;
    cxButton4: TcxButton;
    bRefreshPemohon: TButton;
    pDataPemohon: TPanel;
    Button3: TButton;
    Shape8: TShape;
    Label113: TLabel;
    CRDBGrid2: TCRDBGrid;
    QPemohonDetail: TUniQuery;
    dsQPemohonDetail: TUniDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eNoBPKBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bCariClick(Sender: TObject);
    procedure bBaruClick(Sender: TObject);
    procedure bBlokirClick(Sender: TObject);
    procedure bBukaBlokirClick(Sender: TObject);
    procedure bCetakClick(Sender: TObject);
    procedure bHistBlokirClick(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Shape12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton14Click(Sender: TObject);
    procedure pkdposMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure eCariKelurahanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgDataDblClick(Sender: TObject);
    procedure dbgDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pEntryDataReferensiMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxButton2Click(Sender: TObject);
    procedure bBaruEntryClick(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure pModelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton15Click(Sender: TObject);
    procedure eModelNamaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure pWarnaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton18Click(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure bSimpanEntryClick(Sender: TObject);
    procedure eNoRangkaEntryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoRangkaEntryPropertiesChange(Sender: TObject);
    procedure eCariKelurahanPropertiesChange(Sender: TObject);
    procedure cbJnsDaftaranEntryPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CRDBGrid1DblClick(Sender: TObject);
    procedure dtTglBlokirPropertiesChange(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CRDBGrid2DblClick(Sender: TObject);
    procedure bRefreshPemohonClick(Sender: TObject);
  private
    { Private declarations }
    tBerkasID : String;
    vBPKBID_V,vBerkasID_V : String;
    vHBBlokir : String; // 0=BLOKIR 1=BUKA BLOKIR
    vJnsBlokir: String; //0=PERDATA; 1=PIDANA; 2=DUPLIKAT
    isEdit : String;
    vIDBlokir : String;
  public
    { Public declarations }
    procedure TampilAwal;
    procedure CariDataBPKB;
    procedure ProsesBPKBBlokir;
    procedure UpdateCetakBlokir;

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
    procedure AddBPKB;
    procedure CariDataFaktur(vJenis,vCari : String);
    procedure CariReferensi(vNoRangka:String);
  end;

var
  fBlokir: TfBlokir;

implementation
Uses
  uDM, uVariabel, uModul, uWait, uMain, uPemohon, uBlokirHistory, uHistoryBlokir2;
{$R *.dfm}

{ TfBlokir }

procedure TfBlokir.TampilAwal;
begin
  cxButton13.Enabled := False;
  vIDBlokir := '';
  vHBBlokir := '';
  vJnsBlokir := '';
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
  eOperator.Text := vNamaPetugas;
  eIsCetak.Text := '';
  uniSPTampil.Close;
  bBlokir.Enabled := False;
  bBukaBlokir.Enabled := False;
  bCetak.Enabled := false;
  bRefreshPemohon.Enabled := False;
  rbPidana.Checked := False;
  rbPidana.Enabled := False;
  rbPerdata.Checked := False;
  rbPerdata.Enabled := False;
  rbDuplikat.Checked := False;
  rbDuplikat.Enabled := False;
  dtTglBlokir.Text := '';
  dtTglBlokir.Enabled := False;
  eNoSuratRef.Text := 'B/'+CekNoUrut('NOURUTBLOKIR')+'/'+IntToRoman(StrToInt(FormatDateTime('MM',TTglSrvSkr)))+'/'+
                      FormatDateTime('YYYY',TTglSrvSkr)+'/SEKSI BPKB';
  eNoSuratRef.Enabled := False;
  ePemohon.Text := '';
  ePemohon.Enabled := False;
  eAlamatPemohon.Text := '';
  eAlamatPemohon.Enabled := False;
  eKotaPemohon.Text := '';
  eKotaPemohon.Enabled := False;
  eNoSurutPemohon.Text := '';
  eNoSurutPemohon.Enabled := False;
  dtTglSurutPemohon.Text := '';
  dtTglSurutPemohon.Enabled := False;
  ePerihal.Text := 'PEMBLOKIRAN BPKB';
  eOperator.Enabled := False;
  eIsCetak.Enabled := False;
  ePerihal.Enabled := False;
  eAlasan.Text := '';
  eAlasan.Enabled := False;
  eNoBPKB.SetFocus;
end;

procedure TfBlokir.FormCreate(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TfBlokir.FormShow(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfBlokir.eNoBPKBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    if eNoBPKB.Text <> '' then
       bCari.Click
    else
    begin
       MessageDlgWarning('No BPKB yang dicari harus diisi terlebih dahulu');
       eNoBPKB.SetFocus;
    end;
  end
end;

procedure TfBlokir.CariDataBPKB;
var
  uniSP : TUniStoredProc;
begin
  uniSP := TUniStoredProc.Create(Application);
  uniSP.Connection := DM.dbSrv;
  uniSP.Close;
  uniSP.StoredProcName := 'bpkb_get_data_bpkb_blokir';
  try
    uniSP.Params.Clear;
    uniSP.Params.CreateParam(ftstring,'v_polda_id',ptinput).AsString := vPOLDAID;
    uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
    uniSP.Params.CreateParam(ftString,'v_no_bpkb',ptInput).AsString := eNoBPKB.Text;
    uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
    uniSP.Active := True;

    if uniSP.RecordCount > 0 then
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
      eInfoMek.Text := uniSP.FieldByName('MERK_NAMA').Text;
      eInfoTipe.Text := uniSP.FieldByName('TIPE').Text;
      eInfoJenis.Text := uniSP.FieldByName('JENIS_NAMA').Text;
      eInfoModel.Text := uniSP.FieldByName('MODEL_NAMA').Text;
      eInfoThnBuat.Text := uniSP.FieldByName('THN_BUAT').Text;
      eInfoSilinder.Text := uniSP.FieldByName('VOL_SILINDER').Text;
      eInfoWarna.Text := uniSP.FieldByName('WARNA_NAMA').Text;
      eInfoNoRangka.Text := uniSP.FieldByName('NO_RANGKA').Text;
      eInfoNoMesin.Text := uniSP.FieldByName('NO_MESIN').Text;
      eInfoJmlRoda.Text := uniSP.FieldByName('JML_RODA').Text;
      eInfoJmlSumbu.Text := uniSP.FieldByName('JML_SUMBU').Text;
      eInfoBB.Text := uniSP.FieldByName('BB_NAMA').Text;
      LSTATUS.Caption := uniSP.FieldByName('BPKB_STATUS').Text;
      if uniSP.FieldByName('BPKB_STATUS').Text = 'AKTIF' then
      begin
        rbPidana.Enabled := True;
        rbPerdata.Enabled := True;
        rbDuplikat.Enabled := True;
        dtTglBlokir.Enabled := True;
        eOperator.Enabled := False;
        eNoSuratRef.Enabled := True;
        ePemohon.Enabled := True;
        bRefreshPemohon.Enabled := True;
        eAlamatPemohon.Enabled := True;
        eNoSurutPemohon.Enabled := True;
        dtTglSurutPemohon.Enabled := True;
        eKotaPemohon.Enabled := True;
        eIsCetak.Enabled := False;
        ePerihal.Enabled := True;
        eAlasan.Enabled := True;
        bBlokir.Enabled := True;
        bBukaBlokir.Enabled := True;
        bCetak.Enabled := True;
      end
      else
      begin
        rbPidana.Enabled := False;
        rbPerdata.Enabled := False;
        rbDuplikat.Enabled := False;
        dtTglBlokir.Enabled := False;
        eOperator.Enabled := False;
        eNoSuratRef.Enabled := False;
        ePemohon.Enabled := False;
        bRefreshPemohon.Enabled := False;
        eAlamatPemohon.Enabled := False;
        eNoSurutPemohon.Enabled := False;
        dtTglSurutPemohon.Enabled := False;
        eIsCetak.Enabled := False;
        ePerihal.Enabled := False;
        eAlasan.Enabled := False;
        bBlokir.Enabled := False;
        eKotaPemohon.Enabled := False;
        bBukaBlokir.Enabled := True;
        bCetak.Enabled := True;
      end;
      bHistBlokir.Click;
      fWait.Hide;
      Application.ProcessMessages;
    end
    else
    begin
      uniSPTampil.Active := False;
      uniSPTampil.StoredProcName := 'bpkb_get_data_for_hist_blokir2';
      try
        uniSPTampil.Params.Clear;
        uniSPTampil.Params.CreateParam(ftString,'v_is_cari',ptinput).AsString := '1';
        uniSPTampil.Params.CreateParam(ftString,'v_cari',ptinput).AsString := eNoBPKB.Text;
        uniSPTampil.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
        uniSPTampil.Open;
        if uniSPTampil.RecordCount > 0 then
        begin
          fWait.Hide;
          Application.ProcessMessages;
          Label17.Caption := 'BPKB BLOKIR # '+uniSPTampil.FieldByName('TUJUAN').AsString+#13+
                              uniSPTampil.FieldByName('ALASAN').AsString+' # TGL BLOKIR '+uniSPTampil.FieldByName('TGL_BLOKIR').AsString;
          pHistoryBlokir.Left := 88;
          pHistoryBlokir.Top := 16;
          pHistoryBlokir.Visible := True;
        end
        else
        begin
          fWait.Hide;
          Application.ProcessMessages;
          MessageDlgInformation('DATA TIDAK DITEMUKAN!!'+#13+
                               'LAKUKAN PROSES PEMBUATAN DATA REFERENSI DARI DATA BPKB LAMA'+#13+
                               'DENGAN LANGKAH TEKAN TOMBOL "ENTRY DATA REFERENSI"');
          cxButton13.Enabled := True;
        end;
      except on E: Exception do
      begin
        ErrorProgDialog('Error...Open.bpkb_get_data_for_hist_blokir2; Ket error: '+E.Message);
      end;
      end;
    end;
  except on E:Exception do
  begin
    fWait.Hide;
    ErrorProgDialog('Error,..bpkb_get_data_bpkb_blokir.Open%Error :'+E.Message);
  end;
  end;
end;

procedure TfBlokir.bCariClick(Sender: TObject);
begin
  if eNoBPKB.Text <> '' then
  begin
    fWait.Show;
    fWait.Label1.Caption := 'Tunggu Sebentar ...';
    Application.ProcessMessages;
    CariDataBPKB;
  end
  else
  begin
    MessageDlgWarning('No BPKB harus diisi');
    eNoBPKB.SetFocus;
  end;
end;

procedure TfBlokir.bBaruClick(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfBlokir.ProsesBPKBBlokir;
var
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_add_blokir';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_polda_id',ptInput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'v_bpkb_id',ptInput).AsString := vBPKBID_V;
      uniSP.Params.CreateParam(ftString,'v_hb_blokir',ptInput).AsString := vHBBlokir;
      uniSP.Params.CreateParam(ftString,'v_hb_nosurat',ptInput).AsString := eNoSuratRef.Text;
      uniSP.Params.CreateParam(ftString,'v_hb_tanggal',ptInput).AsString := FormatDateTime('yyyymmdd',dtTglBlokir.Date);
      uniSP.Params.CreateParam(ftString,'v_hb_alasan',ptInput).AsString := eAlasan.Text;
      uniSP.Params.CreateParam(ftString,'v_hb_pemohon',ptInput).AsString := ePemohon.Text;
      uniSP.Params.CreateParam(ftString,'v_hb_alamatpemohon',ptInput).AsString := eAlamatPemohon.Text;
      uniSP.Params.CreateParam(ftString,'v_hb_nosuratpemohon',ptInput).AsString := eNoSurutPemohon.Text;
      uniSP.Params.CreateParam(ftString,'v_hb_tglsuratpemohon',ptInput).AsString := FormatDateTime('yyyymmdd',dtTglSurutPemohon.Date);
      uniSP.Params.CreateParam(ftString,'v_hb_perihalsrtpmh',ptInput).AsString := ePerihal.Text;
      uniSP.Params.CreateParam(ftString,'v_op_id',ptInput).AsInteger := StrToInt(vIDPetugas);
      uniSP.Params.CreateParam(ftString,'v_op_nama',ptInput).AsString := vNamaPetugas;
      uniSP.Params.CreateParam(ftString,'v_jns_blokir',ptInput).AsInteger := StrToInt(vJnsBlokir);
      uniSP.Params.CreateParam(ftString,'v_hb_kota_pmh',ptInput).AsString := eKotaPemohon.Text;
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;

      if isTreaceLog = '1' then
      begin
        Log('v_polda_id '+vPOLDAID);
        Log('v_polres_id '+vPOLRESID);
        Log('v_bpkb_id '+vBPKBID_V);
        Log('v_hb_blokir '+vHBBlokir);
        Log('v_hb_nosurat '+eNoSuratRef.Text);
        Log('v_hb_tanggal '+FormatDateTime('yyyymmdd',dtTglBlokir.Date));
        Log('v_hb_alasan '+eAlasan.Text);
        Log('v_hb_pemohon '+ePemohon.Text);
        Log('v_hb_alamatpemohon '+eAlamatPemohon.Text);
        Log('v_hb_nosuratpemohon '+eNoSurutPemohon.Text);
        Log('v_hb_tglsuratpemohon '+FormatDateTime('yyyymmdd',dtTglSurutPemohon.Date));
        Log('v_hb_perihalsrtpmh '+ePerihal.Text);
        Log('v_op_id '+vIDPetugas);
        Log('v_op_nama '+vNamaPetugas);
        Log('v_jns_blokir '+vJnsBlokir);
        Log('v_hb_kota_pmh '+eKotaPemohon.Text);
      end;
      uniSP.ExecProc;

      fWait.Hide;
      Application.ProcessMessages;
      if Pos('ERROR',uniSP.Params.ParamValues['RESULT']) > 0 then
         MessageDlgError('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT'])
      else
         MessageDlgInformation('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT']);
      bHistBlokir.Click;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_add_blokir.Open%Error :'+E.Message);
      fWait.Hide;
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfBlokir.bBlokirClick(Sender: TObject);
begin
  ePerihal.Text := 'PEMBLOKIRAN BPKB';
  if (rbPidana.Checked = True) or (rbPerdata.Checked = True) or (rbDuplikat.Checked = True) then
  begin
    if dtTglBlokir.Text <> '' then
    begin
      if ePemohon.Text <> '' then
      begin
        if eAlamatPemohon.Text <> '' then
        begin
          if eNoSurutPemohon.Text <> '' then
          begin
            if dtTglSurutPemohon.Text <> '' then
            begin
              if ePerihal.Text <> '' then
              begin
                if MessageDlg('Yakin berkas ini akan diblokir?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                begin
                  vHBBlokir := '0';
                  if rbPidana.Checked = True then
                  begin
                     vJnsBlokir := '1';
                     ProsesBPKBBlokir;
                  end
                  else if rbPerdata.Checked = True then
                  begin
                     vJnsBlokir := '0';
                     ProsesBPKBBlokir;
                  end
                  else if rbDuplikat.Checked = True then
                  begin
                     vJnsBlokir := '2';
                     ProsesBPKBBlokir;
                  end
                  else
                     MessageDlgError('Jenis Blokir harap dipilih terlebih dahulu');
                end;
              end
              else
              begin
                MessageDlgError('Perihal Blokir harap diisi terlebih dahulu');
                ePerihal.SetFocus;
              end;
            end
            else
            begin
              MessageDlgError('Tanggal Surat Pemohon Blokir harap diisi terlebih dahulu');
              dtTglSurutPemohon.SetFocus;
            end;
          end
          else
          begin
            MessageDlgError('No Surat Pemohon Blokir harap diisi terlebih dahulu');
            eNoSurutPemohon.SetFocus;
          end;
        end
        else
        begin
          MessageDlgError('Alamat Pemohon Blokir harap diisi terlebih dahulu');
          eAlamatPemohon.SetFocus;
        end;
      end
      else
      begin
        MessageDlgError('Pemohon Blokir harap diisi terlebih dahulu');
        ePemohon.SetFocus;
      end;
    end
    else
    begin
      MessageDlgError('Tanggal Blokir harap diisi terlebih dahulu');
      dtTglBlokir.SetFocus;
    end;
  end
  else
  begin
    MessageDlgError('Jenis Blokir harap dipilih terlebih dahulu');
  end;
end;

procedure TfBlokir.bBukaBlokirClick(Sender: TObject);
begin
  ePerihal.Text := 'PENCABUTAN PEMBLOKIRAN BPKB';
  if (rbPidana.Checked = True) or (rbPerdata.Checked = True) or (rbDuplikat.Checked = True) then
  begin
    if dtTglBlokir.Text <> '' then
    begin
      if ePemohon.Text <> '' then
      begin
        if eAlamatPemohon.Text <> '' then
        begin
          if eNoSurutPemohon.Text <> '' then
          begin
            if dtTglSurutPemohon.Text <> '' then
            begin
              if ePerihal.Text <> '' then
              begin
                if MessageDlg('Yakin berkas ini akan di buka blokir?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                begin
                  vHBBlokir := '1';
                  if rbPidana.Checked = True then
                  begin
                     vJnsBlokir := '1';
                     ProsesBPKBBlokir;
                  end
                  else if rbPerdata.Checked = True then
                  begin
                     vJnsBlokir := '0';
                     ProsesBPKBBlokir;
                  end
                  else if rbDuplikat.Checked = True then
                  begin
                     vJnsBlokir := '2';
                     ProsesBPKBBlokir;
                  end
                  else
                     MessageDlgError('Jenis Blokir harap dipilih terlebih dahulu');
                end;
              end
              else
              begin
                MessageDlgError('Perihal Blokir harap diisi terlebih dahulu');
                ePerihal.SetFocus;
              end;
            end
            else
            begin
              MessageDlgError('Tanggal Surat Pemohon Blokir harap diisi terlebih dahulu');
              dtTglSurutPemohon.SetFocus;
            end;
          end
          else
          begin
            MessageDlgError('No Surat Pemohon Blokir harap diisi terlebih dahulu');
            eNoSurutPemohon.SetFocus;
          end;
        end
        else
        begin
          MessageDlgError('Alamat Pemohon Blokir harap diisi terlebih dahulu');
          eAlamatPemohon.SetFocus;
        end;
      end
      else
      begin
        MessageDlgError('Pemohon Blokir harap diisi terlebih dahulu');
        ePemohon.SetFocus;
      end;
    end
    else
    begin
      MessageDlgError('Tanggal Blokir harap diisi terlebih dahulu');
      dtTglBlokir.SetFocus;
    end;
  end
  else
  begin
    MessageDlgError('Jenis Blokir harap dipilih terlebih dahulu');
  end;
end;

procedure TfBlokir.bCetakClick(Sender: TObject);
begin
  if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
  begin
    if eIsCetak.Text='SUDAH PRINT' then
    begin
      if MessageDlg('SURAT KETERANGAN BLOKIR SUDAH DICETAK, APAKAH MAU MELAKUKAN PENCETAKAN ULANG?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        QReport.Close;
        QReport.SQL.Text := 'SELECT a.HB_ID,a.TGL_ENTRI,a.BPKB_ID,a.HB_BLOKIR,a.HB_NOSURAT,'+
                            'a.HB_TANGGAL,a.HB_ALASAN,a.HB_PEMOHON,a.HB_ALAMATPEMOHON,a.HB_NOSURATPEMOHON,'+
                            'a.HB_TGLSURATPEMOHON,a.HB_PERIHALSRTPMHN,a.OP_ID,b.OP_NAMA,a.PRINTED,a.JENIS_BLOKIR,'+
                            'a.HB_KOTAPMH,a.HB_TGL_AKHIR,M.MERK_NAMA, BM.THN_BUAT, J.JENIS_NAMA,W.WARNA_NAMA,HNOPOL.NO_POLISI,BM.NO_BPKB,'+
                            'BM.NREG_BPKB,BM.TGL_BPKB,BM.NO_RANGKA,BM.NO_MESIN,P.NAMA_PEMILIK,ALM.ALAMAT_PEMILIK,'+
                            '(CASE WHEN a.HB_BLOKIR = 0 THEN ''BLOKIR'''+
                            '          WHEN a.HB_BLOKIR = 1 THEN ''BUKA BLOKIR'''+
                            'END) AS HB_BLOKIR_D,'+
                            '(CASE WHEN a.PRINTED = 0 THEN ''BLM PRINT'''+
                            '          WHEN a.PRINTED = 1 THEN ''SUDAH PRINT'''+
                            'END) AS PRINTED_D,'+
                            '(CASE WHEN a.JENIS_BLOKIR = 0 THEN ''PERDATA'''+
                            '          WHEN a.JENIS_BLOKIR = 1 THEN ''PIDANA'''+
                            '          WHEN a.JENIS_BLOKIR = 2 THEN ''DUPLIKAT'''+
                            'END) AS JENIS_BLOKIR_D,MDL.MODEL_NAMA,BM.THN_RAKIT,BM.VOL_SILINDER AS CC,BM.TIPE'+
                            ' FROM T_HIST_BLOKIR a'+
                            ' INNER JOIN T_OPERATOR b ON a.OP_ID=b.OP_ID'+
                            ' INNER JOIN T_BPKB_MASTER BM ON BM.BPKB_ID=A.BPKB_ID'+
                            ' INNER JOIN M_MERK M ON M.MERK_ID=BM.MERK_ID'+
                            ' INNER JOIN M_JENIS J ON J.JENIS_ID=BM.JENIS_ID'+
                            ' INNER JOIN T_HISTORY H ON H.HIST_ID=BM.CURRENT_HISTID'+
                            ' INNER JOIN T_HIST_WARNA HW ON HW.HIST_ID=H.HIST_ID'+
                            ' INNER JOIN M_WARNA W ON W.WARNA_ID=HW.WARNA_ID'+
                            ' INNER JOIN T_HIST_NOPOLISI HNOPOL ON HNOPOL.HIST_ID=H.HIST_ID'+
                            ' INNER JOIN T_HIST_NAMAPEMILIK P ON P.HIST_ID=H.HIST_ID'+
                            ' INNER JOIN T_HIST_ALAMATPEMILIK ALM ON ALM.HIST_ID=H.HIST_ID'+
                            ' INNER JOIN T_HIST_BENTUK HM ON HM.HIST_ID=H.HIST_ID'+
                            ' INNER JOIN M_MODEL MDL ON MDL.MODEL_ID=HM.MODEL_ID'+
                            ' WHERE a.POLDA_ID=:POLDA AND a.POLRES_ID=:POLRES AND a.HB_ID=:HBID';
        QReport.ParamByName('POLDA').AsString := vPOLDAID;
        QReport.ParamByName('POLRES').AsString := vPOLRESID;
        QReport.ParamByName('HBID').AsString := uniSPTampil.FieldByName('HB_ID').AsString;
        QReport.Open;

        if QReport.RecordCount > 0 then
        begin
          frxDBDataset1.DataSet := QReport;
          frxReport.Clear;
          if QReport.FieldByName('HB_BLOKIR_D').AsString='BLOKIR' then
             frxReport.LoadFromFile(RootPath+'\blokir.fr3')
          else
             frxReport.LoadFromFile(RootPath+'\bblokir.fr3');
          if TReport='1' then
          begin
            frxReport.DesignReport();
          end
          else
          begin
            frxReport.ShowReport();
          end;
        end
        else
        begin
          MessageDlgInformation('DATA KARTU INDUK TIDAK ADA YG AKAN DICETAK');
        end;
      end;
    end
    else
    begin
      QReport.Close;
      QReport.SQL.Text := 'SELECT a.HB_ID,a.TGL_ENTRI,a.BPKB_ID,a.HB_BLOKIR,a.HB_NOSURAT,'+
                            'a.HB_TANGGAL,a.HB_ALASAN,a.HB_PEMOHON,a.HB_ALAMATPEMOHON,a.HB_NOSURATPEMOHON,'+
                            'a.HB_TGLSURATPEMOHON,a.HB_PERIHALSRTPMHN,a.OP_ID,b.OP_NAMA,a.PRINTED,a.JENIS_BLOKIR,'+
                            'a.HB_KOTAPMH,a.HB_TGL_AKHIR,M.MERK_NAMA, BM.THN_BUAT, J.JENIS_NAMA,W.WARNA_NAMA,HNOPOL.NO_POLISI,BM.NO_BPKB,'+
                            'BM.NREG_BPKB,BM.TGL_BPKB,BM.NO_RANGKA,BM.NO_MESIN,P.NAMA_PEMILIK,ALM.ALAMAT_PEMILIK,'+
                            '(CASE WHEN a.HB_BLOKIR = 0 THEN ''BLOKIR'''+
                            '          WHEN a.HB_BLOKIR = 1 THEN ''BUKA BLOKIR'''+
                            'END) AS HB_BLOKIR_D,'+
                            '(CASE WHEN a.PRINTED = 0 THEN ''BLM PRINT'''+
                            '          WHEN a.PRINTED = 1 THEN ''SUDAH PRINT'''+
                            'END) AS PRINTED_D,'+
                            '(CASE WHEN a.JENIS_BLOKIR = 0 THEN ''PERDATA'''+
                            '          WHEN a.JENIS_BLOKIR = 1 THEN ''PIDANA'''+
                            '          WHEN a.JENIS_BLOKIR = 2 THEN ''DUPLIKAT'''+
                            'END) AS JENIS_BLOKIR_D,MDL.MODEL_NAMA,BM.THN_RAKIT,BM.VOL_SILINDER AS CC,BM.TIPE'+
                            ' FROM T_HIST_BLOKIR a'+
                            ' LEFT JOIN T_OPERATOR b ON a.OP_ID=b.OP_ID'+
                            ' LEFT JOIN T_BPKB_MASTER BM ON BM.BPKB_ID=A.BPKB_ID'+
                            ' LEFT JOIN M_MERK M ON M.MERK_ID=BM.MERK_ID'+
                            ' LEFT JOIN M_JENIS J ON J.JENIS_ID=BM.JENIS_ID'+
                            ' LEFT JOIN T_HISTORY H ON H.HIST_ID=BM.CURRENT_HISTID'+
                            ' LEFT JOIN T_HIST_WARNA HW ON HW.HIST_ID=H.HIST_ID'+
                            ' LEFT JOIN M_WARNA W ON W.WARNA_ID=HW.WARNA_ID'+
                            ' LEFT JOIN T_HIST_NOPOLISI HNOPOL ON HNOPOL.HIST_ID=H.HIST_ID'+
                            ' LEFT JOIN T_HIST_NAMAPEMILIK P ON P.HIST_ID=H.HIST_ID'+
                            ' LEFT JOIN T_HIST_ALAMATPEMILIK ALM ON ALM.HIST_ID=H.HIST_ID'+
                            ' LEFT JOIN T_HIST_BENTUK HM ON HM.HIST_ID=H.HIST_ID'+
                            ' LEFT JOIN M_MODEL MDL ON MDL.MODEL_ID=HM.MODEL_ID'+
                            ' WHERE a.POLDA_ID=:POLDA AND a.POLRES_ID=:POLRES AND a.HB_ID=:HBID';
      QReport.ParamByName('POLDA').AsString := vPOLDAID;
      QReport.ParamByName('POLRES').AsString := vPOLRESID;
      QReport.ParamByName('HBID').AsString := uniSPTampil.FieldByName('HB_ID').AsString;
      QReport.Open;

      if QReport.RecordCount > 0 then
      begin
        vIDBlokir := uniSPTampil.FieldByName('HB_ID').AsString;
        fWait.Show;
        fWait.cxProgressBar1.Visible := True;
        Application.ProcessMessages;
        UpdateCetakBlokir;
      end
      else
      begin
        MessageDlgInformation('DATA CETAK BLOKIR TIDAK ADA YG AKAN DICETAK');
      end;
    end
  end;
end;

procedure TfBlokir.bHistBlokirClick(Sender: TObject);
begin
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_list_blokir';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_bpkb_id',ptinput).AsString := vBPKBID_V;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;

      if uniSPTampil.RecordCount > 0 then
      begin
        rbPidana.Enabled := False;
        rbPerdata.Enabled := False;
        rbDuplikat.Enabled := False;
        dtTglBlokir.Enabled := False;
        eOperator.Enabled := False;
        eNoSuratRef.Enabled := False;
        ePemohon.Enabled := False;
        bRefreshPemohon.Enabled := False;
        eAlamatPemohon.Enabled := False;
        eNoSurutPemohon.Enabled := False;
        dtTglSurutPemohon.Enabled := False;
        eIsCetak.Enabled := False;
        ePerihal.Enabled := False;
        eAlasan.Enabled := False;
        bBlokir.Enabled := False;
        eKotaPemohon.Enabled := False;
        bBlokir.Enabled := True;
        bBukaBlokir.Enabled := True;
        bCetak.Enabled := True;
      end
      else
      begin
        rbPidana.Enabled := True;
        rbPerdata.Enabled := True;
        rbDuplikat.Enabled := True;
        dtTglBlokir.Enabled := True;
        eOperator.Enabled := False;
        eNoSuratRef.Enabled := True;
        ePemohon.Enabled := True;
        bRefreshPemohon.Enabled := True;
        eAlamatPemohon.Enabled := True;
        eNoSurutPemohon.Enabled := True;
        dtTglSurutPemohon.Enabled := True;
        eIsCetak.Enabled := False;
        ePerihal.Enabled := False;
        eAlasan.Enabled := True;
        bBlokir.Enabled := True;
        eKotaPemohon.Enabled := True;
        bBukaBlokir.Enabled := True;
        bCetak.Enabled := True;
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_register%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfBlokir.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if uniSPTampil.FieldByName('JENIS_BLOKIR').AsString = '0' then
     rbPerdata.Checked := True
  else if uniSPTampil.FieldByName('JENIS_BLOKIR').AsString = '1' then
     rbPidana.Checked := True
  else if uniSPTampil.FieldByName('JENIS_BLOKIR').AsString = '2' then
     rbDuplikat.Checked := True;
  dtTglBlokir.Date := uniSPTampil.FieldByName('TGL_ENTRI').AsDateTime;
  eOperator.Text := uniSPTampil.FieldByName('OP_NAMA').AsString;
  eNoSuratRef.Text := uniSPTampil.FieldByName('HB_NOSURAT').AsString;
  ePemohon.Text := uniSPTampil.FieldByName('HB_PEMOHON').AsString;
  eAlamatPemohon.Text := uniSPTampil.FieldByName('HB_ALAMATPEMOHON').AsString;
  eNoSurutPemohon.Text := uniSPTampil.FieldByName('HB_NOSURATPEMOHON').AsString;
  dtTglSurutPemohon.Date := uniSPTampil.FieldByName('HB_TGLSURATPEMOHON').AsDateTime;
  eIsCetak.Text := uniSPTampil.FieldByName('PRINTED_D').AsString;
  ePerihal.Text := uniSPTampil.FieldByName('HB_PERIHALSRTPMHN').AsString;
  eAlasan.Text := uniSPTampil.FieldByName('HB_ALASAN').AsString;
  eKotaPemohon.Text := uniSPTampil.FieldByName('HB_KOTAPMH').AsString;

  rbPidana.Enabled := True;
  rbPerdata.Enabled := True;
  rbDuplikat.Enabled := True;
  dtTglBlokir.Enabled := True;
  eOperator.Enabled := False;
  eNoSuratRef.Enabled := True;
  ePemohon.Enabled := True;
  bRefreshPemohon.Enabled := True;
  eAlamatPemohon.Enabled := True;
  eNoSurutPemohon.Enabled := True;
  dtTglSurutPemohon.Enabled := True;
  eIsCetak.Enabled := False;
  ePerihal.Enabled := False;
  eAlasan.Enabled := True;
  bBlokir.Enabled := True;
  eKotaPemohon.Enabled := True;
  bBukaBlokir.Enabled := True;
  bCetak.Enabled := True;
end;

procedure TfBlokir.UpdateCetakBlokir;
var
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_update_cetak_blokir';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_hb_id',ptInput).AsString := vIDBlokir;
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;

      uniSP.ExecProc;

      fWait.Hide;
      Application.ProcessMessages;
      if Pos('KESALAHAN',uniSP.Params.ParamValues['RESULT']) > 0 then
         MessageDlgError('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT'])
      else
      begin
        if Copy(uniSP.Params.ParamValues['RESULT'],1,2)='00' then
        begin
          frxDBDataset1.DataSet := QReport;
          frxDBDataset1.Clear;
          if QReport.FieldByName('HB_BLOKIR_D').AsString='BLOKIR' then
             frxReport.LoadFromFile(RootPath+'\blokir.fr3')
          else
             frxReport.LoadFromFile(RootPath+'\bblokir.fr3');
          if TReport='1' then
          begin
            frxReport.DesignReport();
          end
          else
          begin
            frxReport.ShowReport();
          end;
        end
        else if Copy(uniSP.Params.ParamValues['RESULT'],1,2)='14' then
        begin
          MessageDlgWarning('DATA TIDAK BISA DICETAK');
        end;
      end;
      bHistBlokir.Click;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_update_cetak_blokir.Open%Error :'+E.Message);
      fWait.Hide;
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfBlokir.RefreshCbMerk;
begin
  QMerk1.Close;
  QMerk1.SQL.Text := 'select to_char(merk_id) as merk_id,merk_nama_r as merk_nama from m_merk  where rowid in (select min(rowid) from m_merk group by merk_nama_r)  order by merk_nama';
  QMerk1.Open;

  QMerk2.Close;
  QMerk2.SQL.Text := 'select to_char(merk_id) as merk_id,merk_nama_r as merk_nama from m_merk  where rowid in (select min(rowid) from m_merk group by merk_nama_r)  order by merk_nama';
  QMerk2.Open;
end;

procedure TfBlokir.RefreshCbJenis;
begin
  QJenis1.Close;
  QJenis1.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenis1.Open;

  QJenis2.Close;
  QJenis2.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenis2.Open;
end;

procedure TfBlokir.RefreshCbJenisModel;
begin
  QJenisModel1.Close;
  QJenisModel1.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenisModel1.Open;

  QJenisModel2.Close;
  QJenisModel2.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenisModel2.Open;
end;

procedure TfBlokir.RefreshCbBahanBakar;
begin
  QBB1.Close;
  QBB1.SQL.Text := 'select to_char(bb_id) as bb_id,bb_nama from m_bahanbakar order by bb_nama';
  QBB1.Open;

  QBB2.Close;
  QBB2.SQL.Text := 'select to_char(bb_id) as bb_id,bb_nama from m_bahanbakar order by bb_nama';
  QBB2.Open;
end;

procedure TfBlokir.RefreshCbPeruntukan;
begin
  QPeruntukan1.Close;
  QPeruntukan1.SQL.Text := 'select to_char(prt_id) as prt_id,prt_nama from m_peruntukan order by prt_nama';
  QPeruntukan1.Open;

  QPeruntukan2.Close;
  QPeruntukan2.SQL.Text := 'select to_char(prt_id) as prt_id,prt_nama from m_peruntukan order by prt_nama';
  QPeruntukan2.Open;
end;

procedure TfBlokir.RefreshCbWarnaTNKB;
begin
  QWarnaTNKB1.Close;
  QWarnaTNKB1.SQL.Text := 'select to_char(warnatnkb_id) as warnatnkb_id,warnatnkb from m_warnatnkb order by warnatnkb';
  QWarnaTNKB1.Open;

  QWarnaTNKB2.Close;
  QWarnaTNKB2.SQL.Text := 'select to_char(warnatnkb_id) as warnatnkb_id,warnatnkb from m_warnatnkb order by warnatnkb';
  QWarnaTNKB2.Open;
end;

procedure TfBlokir.RefreshCbWarnaKartu;
begin
  QWarnaKartu1.Close;
  QWarnaKartu1.SQL.Text := 'select to_char(wk_id) as wk_id,wk_nama from m_warna_kartu order by wk_nama';
  QWarnaKartu1.Open;

  QWarnaKartu2.Close;
  QWarnaKartu2.SQL.Text := 'select to_char(wk_id) as wk_id,wk_nama from m_warna_kartu order by wk_nama';
  QWarnaKartu2.Open;
end;

procedure TfBlokir.RefreshCbModel;
begin
  QModel1.Close;
  QModel1.SQL.Text := 'select to_char(model_id) as model_id,model_nama,jenis_id from m_model order by model_nama';
  QModel1.Open;

  QModel2.Close;
  QModel2.SQL.Text := 'select to_char(model_id) as model_id,model_nama,jenis_id from m_model order by model_nama';
  QModel2.Open;
end;

procedure TfBlokir.RefreshCbWarna;
begin
  QWarna1.Close;
  QWarna1.SQL.Text := 'select to_char(warna_id) as warna_id,warna_nama from m_warna order by warna_nama';
  QWarna1.Open;

  QWarna2.Close;
  QWarna2.SQL.Text := 'select to_char(warna_id) as warna_id,warna_nama from m_warna order by warna_nama';
  QWarna2.Open;
end;

procedure TfBlokir.RefreshCbWilayah;
begin
  QWil1.Close;
  QWil1.SQL.Text := 'select to_char(wilayah_id) as wilayah_kode,wilayah_nama from m_wilayah order by wilayah_nama';
  QWil1.Open;

  QWil2.Close;
  QWil2.SQL.Text := 'select to_char(wilayah_id) as wilayah_kode,wilayah_nama from m_wilayah order by wilayah_nama';
  QWil2.Open;
end;

procedure TfBlokir.RefreshCbJenisDaftar;
begin
  QJenisDaftar1.Close;
  QJenisDaftar1.SQL.Text := 'select to_char(jd_id) as jd_id,jd_nama from m_jenis_daftaran order by jd_nama';
  QJenisDaftar1.Open;

  QJenisDaftar2.Close;
  QJenisDaftar2.SQL.Text := 'select to_char(jd_id) as jd_id,jd_nama from m_jenis_daftaran order by jd_nama';
  QJenisDaftar2.Open;
end;

procedure TfBlokir.RefreshCbCaraImpor;
begin
  QCaraImport1.Close;
  QCaraImport1.SQL.Text := 'select to_char(IMPMTHD_ID) as IMPMTHD_ID,IMPMTHD_NAME from m_cara_impor order by IMPMTHD_NAME';
  QCaraImport1.Open;

  QCaraImport2.Close;
  QCaraImport2.SQL.Text := 'select to_char(IMPMTHD_ID) as IMPMTHD_ID,IMPMTHD_NAME from m_cara_impor order by IMPMTHD_NAME';
  QCaraImport2.Open;
end;

procedure TfBlokir.RefreshCbPemohon;
begin
  QPemohon1.Close;
  QPemohon1.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  QPemohon1.Open;

  QPemohon2.Close;
  QPemohon2.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  QPemohon2.Open;
end;

procedure TfBlokir.RefreshKelurahan;
begin
  with Q2 do
  begin
    Close;
    if eCariKelurahan.Text = '' then
       SQL.Text := 'select keluarahan,kecamatan,kabupaten,propinsi,kd_pos from M_KODE_POS order by keluarahan'
    else
    begin
      if rbKelurahan.Checked = True then
         //SQL.Text := 'select upper(keluarahan) as keluarahan,upper(kecamatan) as kecamatan,upper(kabupaten) as kabupaten,upper(propinsi) as propinsi,kd_pos from M_KODE_POS'+
         SQL.Text := 'select keluarahan,kecamatan,kabupaten,propinsi,kd_pos from M_KODE_POS'+
                     ' where upper(keluarahan) like :kel'// +'''%'+eCariKelurahan.Text+'%'''
      else
         //SQL.Text := 'select upper(keluarahan) as keluarahan,upper(kecamatan) as kecamatan,upper(kabupaten) as kabupaten,upper(propinsi) as propinsi,kd_pos from M_KODE_POS'+
         SQL.Text := 'select keluarahan,kecamatan,kabupaten,propinsi,kd_pos from M_KODE_POS'+
                     ' where upper(kecamatan) like :kec'; //+'''%'+eCariKelurahan.Text+'%''';
      Params[0].AsString := '%'+eCariKelurahan.Text+'%';
    end;
    Open;
  end;
end;

procedure TfBlokir.Shape12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pkdpos.Handle, wm_SysCommand,$f012,0);
end;

procedure TfBlokir.cxButton14Click(Sender: TObject);
begin
  pkdpos.Visible := False;
end;

procedure TfBlokir.pkdposMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pkdpos.Handle, wm_SysCommand,$f012,0);
end;

procedure TfBlokir.eCariKelurahanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 40 then
     dbgData.SetFocus;
end;

procedure TfBlokir.dbgDataDblClick(Sender: TObject);
begin
  eKelurahan.Text := Q2.FieldByName('keluarahan').AsString;
  eKecamatan.Text := Q2.FieldByName('kecamatan').AsString;
  eKabupaten.Text := Q2.FieldByName('kabupaten').AsString;
  ePropinsi.Text := Q2.FieldByName('propinsi').AsString;
  eKdPOSEntry.Text := Q2.FieldByName('kd_pos').AsString;
  pkdpos.Visible := False;
end;

procedure TfBlokir.dbgDataKeyDown(Sender: TObject; var Key: Word;
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

procedure TfBlokir.pEntryDataReferensiMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pEntryDataReferensi.Handle, wm_SysCommand,$f012,0);
end;

procedure TfBlokir.cxButton2Click(Sender: TObject);
begin
  pEntryDataReferensi.Visible := False;
end;

procedure TfBlokir.bBaruEntryClick(Sender: TObject);
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

procedure TfBlokir.cxButton10Click(Sender: TObject);
begin
  RefreshKelurahan;
  pkdpos.BringToFront;
  pkdpos.Left := 72;
  pkdpos.Top := 4;
  pkdpos.Visible := True;
  eCariKelurahan.SetFocus;
  eCariKelurahan.SelStart := Length(eCariKelurahan.Text) + 1;
end;

procedure TfBlokir.cxButton9Click(Sender: TObject);
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

procedure TfBlokir.pModelMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pModel.Handle, wm_SysCommand,$f012,0);
end;

procedure TfBlokir.cxButton15Click(Sender: TObject);
begin
  pModel.Visible := False;
end;

procedure TfBlokir.eModelNamaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     eNRegBPKBEntry.SetFocus;
end;

procedure TfBlokir.cxButton16Click(Sender: TObject);
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

procedure TfBlokir.cxButton17Click(Sender: TObject);
begin
  eModelNama.Text := '';
  cbJenisModel.Text := '';
  cbWarnaKartu.Text := '';
  eModelNama.SetFocus;
end;

procedure TfBlokir.pWarnaMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pWarna.Handle, wm_SysCommand,$f012,0);
end;

procedure TfBlokir.cxButton18Click(Sender: TObject);
begin
  pWarna.Visible := False;
end;

procedure TfBlokir.cxButton19Click(Sender: TObject);
begin
  eInputWarna.Text := '';
end;

procedure TfBlokir.cxButton20Click(Sender: TObject);
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

procedure TfBlokir.cxButton5Click(Sender: TObject);
begin
  RefreshCbWarna;
end;

procedure TfBlokir.cxButton6Click(Sender: TObject);
begin
  eInputWarna.Text := '';
  pWarna.Visible := True;
  pWarna.Left := 120;
  pWarna.Top := 144;
end;

procedure TfBlokir.cxButton11Click(Sender: TObject);
begin
  RefreshCbPemohon;
end;

procedure TfBlokir.cxButton12Click(Sender: TObject);
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

procedure TfBlokir.cxButton13Click(Sender: TObject);
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

procedure TfBlokir.AddBPKB;
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

procedure TfBlokir.bSimpanEntryClick(Sender: TObject);
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

procedure TfBlokir.CariDataFaktur(vJenis, vCari: String);
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

procedure TfBlokir.CariReferensi(vNoRangka: String);
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

procedure TfBlokir.eNoRangkaEntryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
  begin
    CariDataFaktur('1',eNoRangkaEntry.Text);
  end;
end;

procedure TfBlokir.eNoRangkaEntryPropertiesChange(Sender: TObject);
begin
  if Length(eNoRangkaEntry.Text)=10 then
     CariReferensi(eNoRangkaEntry.Text)
  else if (Length(eNoRangkaEntry.Text)=17) and (isEdit='0')  then
     CariDataFaktur('1',eNoRangkaEntry.Text);
end;

procedure TfBlokir.eCariKelurahanPropertiesChange(Sender: TObject);
begin
  RefreshKelurahan;
end;

procedure TfBlokir.cbJnsDaftaranEntryPropertiesChange(Sender: TObject);
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

procedure TfBlokir.cxButton1Click(Sender: TObject);
begin
  fHistoryBlokir.Show;
end;

procedure TfBlokir.cxButton3Click(Sender: TObject);
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
  pHistoryBlokir.Visible := False;
  pEntryDataReferensi.Left := 8;
  pEntryDataReferensi.Top := 112;
  pEntryDataReferensi.Visible := True;
end;

procedure TfBlokir.Button1Click(Sender: TObject);
begin
  pHistoryBlokir.Visible := False;
end;

procedure TfBlokir.CRDBGrid1DblClick(Sender: TObject);
begin
  if (uniSPTampil.RecordCount > 0) and (uniSPTampil.Active) then
  begin
    PageControl1.ActivePageIndex := 1;
    lNoBPKB.Caption := uniSPTampil.FieldByName('NOBPKB').AsString;
    lNoRegBPKB.Caption := uniSPTampil.FieldByName('NOREG').AsString;
    lNOPOL.Caption := uniSPTampil.FieldByName('NOPOL').AsString;
    lNORangka.Caption := uniSPTampil.FieldByName('NO_RANGKA').AsString;
    lNOMEsin.Caption := uniSPTampil.FieldByName('NO_MESIN').AsString;
    lNamaPemilik.Caption := uniSPTampil.FieldByName('NAMA_PEMILIK').AsString;
    lAlamatPemilik.Caption := uniSPTampil.FieldByName('ALAMAT_PEMILIK').AsString;
    LsTATUS.Caption := 'BPKB BLOKIR # '+uniSPTampil.FieldByName('TUJUAN').AsString+#13+
                       uniSPTampil.FieldByName('ALASAN').AsString+' # TGL BLOKIR '+uniSPTampil.FieldByName('TGL_BLOKIR').AsString;
  end;
end;

procedure TfBlokir.dtTglBlokirPropertiesChange(Sender: TObject);
begin
  eNoSuratRef.Text := 'B/'+CekNoUrut('NOURUTBLOKIR')+'/'+IntToRoman(StrToInt(FormatDateTime('MM',dtTglBlokir.Date)))+'/'+
                      FormatDateTime('YYYY',dtTglBlokir.Date)+'/SEKSI BPKB';
end;

procedure TfBlokir.cxButton4Click(Sender: TObject);
begin
  fHistoryBlokir2.Show;
end;

procedure TfBlokir.Button3Click(Sender: TObject);
begin
  pDataPemohon.Visible := False;
end;

procedure TfBlokir.CRDBGrid2DblClick(Sender: TObject);
begin
  if (QPemohonDetail.Active) and (QPemohonDetail.RecordCount > 0) then
  begin
    ePemohon.Text := QPemohonDetail.FieldByName('PEMOHON_NAMA').AsString;
    eAlamatPemohon.Text := QPemohonDetail.FieldByName('PEMOHON_ALAMAT').AsString;
    eKotaPemohon.Text := QPemohonDetail.FieldByName('PEMOHON_KOTA').AsString;
    pDataPemohon.Visible := False;
    eNoSurutPemohon.SetFocus;
  end;
end;

procedure TfBlokir.bRefreshPemohonClick(Sender: TObject);
begin
  with QPemohonDetail do
  begin
    Close;
    SQL.Text := 'SELECT PEMOHON_NAMA, PEMOHON_ALAMAT, PEMOHON_KOTA FROM M_PEMOHON_BLOKIR2 ORDER BY PEMOHON_NAMA';
    Open;
    if QPemohonDetail.RecordCount > 0 then
    begin
      pDataPemohon.Top := 232;
      pDataPemohon.Left := 224;
      pDataPemohon.Visible := True;
    end
    else
    begin
      MessageDlgWarning('DATA PEMOHON BLOKIR BELUM ADA');
    end;
  end;
end;

end.
