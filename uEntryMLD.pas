{WHEN a.BPKB_STATUS = 0 THEN ''TIDAK AKTIF'''
         || '      WHEN a.BPKB_STATUS = 1 THEN ''AKTIF'''
         || '      WHEN a.BPKB_STATUS = 2 THEN ''BLOKIR'''
         || '      WHEN a.BPKB_STATUS = 3 THEN ''MUTASI LUAR DAERAH'''}
unit uEntryMLD;

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
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, HotKeyManager,
  DBCtrls, Grids, DBGrids, CRGrid;

type
  TfEntryMLD = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label25: TLabel;
    LSTATUS: TLabel;
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
    bMutasi: TcxButton;
    bCetak: TcxButton;
    dsQ: TUniDataSource;
    QReport: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDesigner1: TfrxDesigner;
    frxReport: TfrxReport;
    UniQuery1: TUniQuery;
    UniQuery2: TUniQuery;
    UniDataSource1: TUniDataSource;
    UniDataSource2: TUniDataSource;
    uniSPTampil: TUniStoredProc;
    uniSPReport: TUniStoredProc;
    cxButton13: TcxButton;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    eNama: TcxMemo;
    eAlamat: TcxMemo;
    dtTgl: TcxDateEdit;
    cbPolda: TcxDBLookupComboBox;
    cbPolres: TcxDBLookupComboBox;
    Shape5: TShape;
    QMerk1: TUniQuery;
    dsMerk1: TUniDataSource;
    QJenis1: TUniQuery;
    dsJenis1: TUniDataSource;
    QBB1: TUniQuery;
    dsQBB1: TUniDataSource;
    QPeruntukan1: TUniQuery;
    dsPeruntukan1: TUniDataSource;
    QWarnaTNKB1: TUniQuery;
    dsWarnaTNKB1: TUniDataSource;
    QWarnaKartu1: TUniQuery;
    dsQWarnaKartu1: TUniDataSource;
    dsQWarnaKartu2: TUniDataSource;
    QWarnaKartu2: TUniQuery;
    dsWarnaTNKB2: TUniDataSource;
    QWarnaTNKB2: TUniQuery;
    dsPeruntukan2: TUniDataSource;
    QPeruntukan2: TUniQuery;
    dsQBB2: TUniDataSource;
    QBB2: TUniQuery;
    dsJenis2: TUniDataSource;
    QJenis2: TUniQuery;
    dsMerk2: TUniDataSource;
    QMerk2: TUniQuery;
    QJenisDaftar1: TUniQuery;
    dsJenisDaftar1: TUniDataSource;
    QModel1: TUniQuery;
    dsModel1: TUniDataSource;
    QWarna1: TUniQuery;
    dsWarna1: TUniDataSource;
    QWil1: TUniQuery;
    dsWil1: TUniDataSource;
    QPemohon1: TUniQuery;
    dsPemohon1: TUniDataSource;
    QJenisModel1: TUniQuery;
    dsQJenisModel1: TUniDataSource;
    dsQJenisModel2: TUniDataSource;
    QJenisModel2: TUniQuery;
    dsPemohon2: TUniDataSource;
    QPemohon2: TUniQuery;
    dsWil2: TUniDataSource;
    QWil2: TUniQuery;
    dsWarna2: TUniDataSource;
    QWarna2: TUniQuery;
    dsModel2: TUniDataSource;
    QModel2: TUniQuery;
    dsJenisDaftar2: TUniDataSource;
    QJenisDaftar2: TUniQuery;
    QCaraImport1: TUniQuery;
    dsCaraImport1: TUniDataSource;
    dsCaraImport2: TUniDataSource;
    QCaraImport2: TUniQuery;
    Q2: TUniQuery;
    Q2KELUARAHAN: TStringField;
    Q2KECAMATAN: TStringField;
    Q2KABUPATEN: TStringField;
    Q2PROPINSI: TStringField;
    Q2KD_POS: TStringField;
    DataSource1: TDataSource;
    QPolda1: TUniQuery;
    QPolda2: TUniQuery;
    dsQPolda2: TUniDataSource;
    dsQPolda1: TUniDataSource;
    dsQPolres1: TUniDataSource;
    dsQPolres2: TUniDataSource;
    QPolres2: TUniQuery;
    QPolres1: TUniQuery;
    cxMemo1: TcxMemo;
    lNoRegister: TLabel;
    bLaporan: TcxButton;
    frxReport1: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    UniQuery3: TUniQuery;
    bCetakKartuInduk: TcxButton;
    pkdpos: TPanel;
    Shape12: TShape;
    Label78: TLabel;
    eCariKelurahan: TcxTextEdit;
    rbKelurahan: TcxRadioButton;
    rbKecamatan: TcxRadioButton;
    dbgData: TCRDBGrid;
    DBNavigator1: TDBNavigator;
    cxButton14: TcxButton;
    qAddModel: TUniQuery;
    dsqAddModel: TUniDataSource;
    QPekerjaan1: TUniQuery;
    QPekerjaan2: TUniQuery;
    dsQPekerjaan2: TUniDataSource;
    dsQPekerjaan1: TUniDataSource;
    Label103: TLabel;
    cxTextEdit1: TcxTextEdit;
    Label104: TLabel;
    cxTextEdit2: TcxTextEdit;
    Label105: TLabel;
    cxTextEdit3: TcxTextEdit;
    pEntryDataReferensi: TPanel;
    Label32: TLabel;
    Shape11: TShape;
    cxButton2: TcxButton;
    bSimpanEntry: TcxButton;
    bBaruEntry: TcxButton;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
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
    Label54: TLabel;
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
    cxButton17: TcxButton;
    cxButton18: TcxButton;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    cxButton21: TcxButton;
    cxTabSheet4: TcxTabSheet;
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
    Label65: TLabel;
    eNoIdentitasEntry: TcxTextEdit;
    eNamaPemilikEntry: TcxMemo;
    eAlamatPemilikEntry: TcxMemo;
    eKdPOSEntry: TcxTextEdit;
    ePonselEntry: TcxTextEdit;
    cbWilayahEntry: TcxDBLookupComboBox;
    cxButton10: TcxButton;
    ePropinsi: TcxTextEdit;
    eKecamatan: TcxTextEdit;
    eKabupaten: TcxTextEdit;
    eKelurahan: TcxTextEdit;
    ePekerjaanEntry: TcxDBLookupComboBox;
    cxButton25: TcxButton;
    cxButton24: TcxButton;
    cxButton26: TcxButton;
    cxTabSheet5: TcxTabSheet;
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
    Label77: TLabel;
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
    cxButton30: TcxButton;
    cxButton31: TcxButton;
    cxMemoAlamat: TcxMemo;
    cxMemoNama: TcxMemo;
    Label106: TLabel;
    eNoRegisterML: TcxTextEdit;
    e_kode_noreg: TcxTextEdit;
    eKode_akhir_noreg: TcxTextEdit;
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
    pMutasiLD: TPanel;
    Label79: TLabel;
    Shape6: TShape;
    Label80: TLabel;
    cxButton8: TcxButton;
    dtLap: TcxDateEdit;
    cxButton15: TcxButton;
    pWilayah: TPanel;
    Label101: TLabel;
    Shape13: TShape;
    Label102: TLabel;
    cxButton27: TcxButton;
    eWilayahTambah: TcxTextEdit;
    cxButton28: TcxButton;
    cxButton29: TcxButton;
    pModel: TPanel;
    Label81: TLabel;
    Shape7: TShape;
    Label82: TLabel;
    Label83: TLabel;
    Label98: TLabel;
    cxButton1: TcxButton;
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
    cxButton22: TcxButton;
    pWarna: TPanel;
    Label99: TLabel;
    Shape8: TShape;
    Label100: TLabel;
    cxButton23: TcxButton;
    eInputWarna: TcxTextEdit;
    bBaruPendaftaranBBN1: TcxButton;
    bSimpan: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bBaruClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bCariClick(Sender: TObject);
    procedure pEntryDataReferensiMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxButton2Click(Sender: TObject);
    procedure pkdposMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton14Click(Sender: TObject);
    procedure eCariKelurahanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eCariKelurahanPropertiesChange(Sender: TObject);
    procedure dbgDataDblClick(Sender: TObject);
    procedure dbgDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton10Click(Sender: TObject);
    procedure cbJnsDaftaranEntryPropertiesChange(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure bBaruEntryClick(Sender: TObject);
    procedure bSimpanEntryClick(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure bPolresPropertiesPopup(Sender: TObject);
    procedure bMutasiClick(Sender: TObject);
    procedure bCetakClick(Sender: TObject);
    procedure pCetakMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton3Click(Sender: TObject);
    procedure rbHalamanCetakPropertiesChange(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure frxReportBeforePrint(Sender: TfrxReportComponent);
    procedure frxReportGetValue(const VarName: String; var Value: Variant);
    procedure cxButton15Click(Sender: TObject);
    procedure pMutasiLDMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton8Click(Sender: TObject);
    procedure bLaporanClick(Sender: TObject);
    procedure bCetakKartuIndukClick(Sender: TObject);
    procedure eNoRangkaEntryPropertiesChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure cxButton21Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure pModelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure eModelNamaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton22Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure pWarnaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton23Click(Sender: TObject);
    procedure eInputWarnaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bBaruPendaftaranBBN1Click(Sender: TObject);
    procedure bSimpanClick(Sender: TObject);
    procedure cxButton25Click(Sender: TObject);
    procedure cxButton24Click(Sender: TObject);
    procedure cxButton26Click(Sender: TObject);
    procedure pWilayahMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton27Click(Sender: TObject);
    procedure eWilayahTambahKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton28Click(Sender: TObject);
    procedure cxButton29Click(Sender: TObject);
    procedure cxButton30Click(Sender: TObject);
    procedure cxButton31Click(Sender: TObject);
    procedure dtTglPropertiesChange(Sender: TObject);
    procedure eNoRegisterMLKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    tBerkasID,vBPKB_ID : String;
    vBPKBID_V,vBerkasID_V : String;
  public
    tTempCetak,tTempCetak1,tTempCetakTitik : String;
    tResponPrn : String;
    isCetakKartuInduk : String;
    procedure TampilAwal;
    procedure GetDataBPKB;
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
    procedure RefreshCbPolda;
    procedure RefreshCbPolres;
    procedure CariReferensi(vNoRangka:String);
    procedure RefreshCbPekerjaan;
  end;

var
  fEntryMLD: TfEntryMLD;

implementation
Uses
  uDM, uVariabel, uModul, uWait, uMain, uPemohon;
{$R *.dfm}

{ TfPerubahan }

procedure TfEntryMLD.TampilAwal;
begin
  eNoBPKB.Text := '';
  RefreshCbPolda;
  RefreshCbPolres;
  RefreshCbPekerjaan;
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
  dtTgl.Text := '';
  eNama.Text := '';
  eAlamat.Text := '';
  cbPolda.Text := '';
  cbPolres.Text := '';
  e_kode_noreg.Text := 'R/';
  eKode_akhir_noreg.Text := '/'+IntToRoman(StrToInt(FormatDateTime('mm',dtTgl.Date)))+'/'+FormatDateTime('yyyy',dtTgl.Date)+'/'+vAkhiranNRegBPKB;
  eNoRegisterML.Text := '';
  eNoBPKB.SetFocus;
end;

procedure TfEntryMLD.FormCreate(Sender: TObject);
begin
  fWait.Show;
  fWait.Label1.Caption := 'Tunggu Sebentar ...';
  fWait.cxProgressBar1.Visible := True;
  Application.ProcessMessages;
  cxPageControl1.ActivePageIndex := 0;
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

procedure TfEntryMLD.FormDestroy(Sender: TObject);
begin
  RemoveFontResource(PChar(vNamaDirFontInstall+vNamaFileFont));
  PostMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;

  DeleteFile(vNamaDirFontInstall+vNamaFileFont);
end;

procedure TfEntryMLD.FormShow(Sender: TObject);
begin
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
  RefreshCbPekerjaan;
  TampilAwal;
end;

procedure TfEntryMLD.bBaruClick(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfEntryMLD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfEntryMLD.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
end;

procedure TfEntryMLD.bCariClick(Sender: TObject);
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

procedure TfEntryMLD.GetDataBPKB;
var
  uniSP : TUniStoredProc;
  SData : TStringList;
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
        LStatus.Caption := uniSP.FieldByName('BPKB_STATUS').Text;
        fWait.Hide;
        Application.ProcessMessages;
        if uniSP.FieldByName('BPKB_STATUS').Text = 'AKTIF' then
        begin
          bMutasi.Enabled := True;
          bCetak.Enabled := True;
        end
        else
        begin
          with DM.Q do
          begin
            Close;
            SQL.Text := 'SELECT A.TANGGAL,A.ATAS_NAMA,A.ALAMAT_PINDAH,B.POLDA_NAMA,C.POLRES_NAMA,A.NOMOR FROM T_MUTASI_LD A'+
                        ' INNER JOIN M_POLDA B ON A.POLDA_ID=B.POLDA_ID'+
                        ' INNER JOIN M_POLRES C ON C.POLDA_ID=A.POLDA_ID AND C.POLRES_KODE=A.POLRES'+
                        ' WHERE BPKB_ID=:BPKB_ID';
            try
              Params[0].AsString := vBPKBID_v;
              Open;

              if recordcount > 0 then
              begin
                SData := TStringList.Create;
                SData.Clear;
                SData.Text := ParsingStr(Fields[5].AsString,'/');
                e_kode_noreg.Text := SData.Strings[0]+'/';
                eNoRegisterML.Text := SData.Strings[1];
                eKode_akhir_noreg.Text := '/'+SData.Strings[2]+'/'+SData.Strings[3]+'/'+SData.Strings[4];
                dtTgl.Text := Fields[0].AsString;
                eNama.Text := Fields[1].AsString;
                eAlamat.Text := Fields[2].AsString;
                cbPolda.Text := Fields[3].AsString;
                cbPolres.Text := Fields[4].AsString;
              end
              else
              begin
                dtTgl.Text := '';
                eNama.Text := '';
                eAlamat.Text := '';
                cbPolda.Text := '';
                cbPolres.Text := '';
                e_kode_noreg.Text := '';
                eNoRegisterML.Text := '';
                eKode_akhir_noreg.Text := '';
              end;
            except on E: Exception do
            begin
              ErrorProgDialog('Error... '+E.Message);
            end;
            end;
          end;
          bMutasi.Enabled := False;
          bCetak.Enabled := True;
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
    FreeAndNil(SData);
  end;
end;

procedure TfEntryMLD.pEntryDataReferensiMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pEntryDataReferensi.Handle, wm_SysCommand,$f012,0);
end;

procedure TfEntryMLD.cxButton2Click(Sender: TObject);
begin
  pEntryDataReferensi.Visible := False;
end;

procedure TfEntryMLD.RefreshCbMerk;
begin
  QMerk1.Close;
  QMerk1.SQL.Text := 'select to_char(merk_id) as merk_id,merk_nama_r as merk_nama from m_merk  where rowid in (select min(rowid) from m_merk group by merk_nama_r)  order by merk_nama';
  QMerk1.Open;

  QMerk2.Close;
  QMerk2.SQL.Text := 'select to_char(merk_id) as merk_id,merk_nama_r as merk_nama from m_merk  where rowid in (select min(rowid) from m_merk group by merk_nama_r)  order by merk_nama';
  QMerk2.Open;
end;

procedure TfEntryMLD.RefreshCbJenis;
begin
  QJenis1.Close;
  QJenis1.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenis1.Open;

  QJenis2.Close;
  QJenis2.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenis2.Open;
end;

procedure TfEntryMLD.RefreshCbJenisModel;
begin
  QJenisModel1.Close;
  QJenisModel1.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenisModel1.Open;

  QJenisModel2.Close;
  QJenisModel2.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenisModel2.Open;
end;

procedure TfEntryMLD.RefreshCbBahanBakar;
begin
  QBB1.Close;
  QBB1.SQL.Text := 'select to_char(bb_id) as bb_id,bb_nama from m_bahanbakar order by bb_nama';
  QBB1.Open;

  QBB2.Close;
  QBB2.SQL.Text := 'select to_char(bb_id) as bb_id,bb_nama from m_bahanbakar order by bb_nama';
  QBB2.Open;
end;

procedure TfEntryMLD.RefreshCbPeruntukan;
begin
  QPeruntukan1.Close;
  QPeruntukan1.SQL.Text := 'select to_char(prt_id) as prt_id,prt_nama from m_peruntukan order by prt_nama';
  QPeruntukan1.Open;

  QPeruntukan2.Close;
  QPeruntukan2.SQL.Text := 'select to_char(prt_id) as prt_id,prt_nama from m_peruntukan order by prt_nama';
  QPeruntukan2.Open;
end;

procedure TfEntryMLD.RefreshCbWarnaTNKB;
begin
  QWarnaTNKB1.Close;
  QWarnaTNKB1.SQL.Text := 'select to_char(warnatnkb_id) as warnatnkb_id,warnatnkb from m_warnatnkb order by warnatnkb';
  QWarnaTNKB1.Open;

  QWarnaTNKB2.Close;
  QWarnaTNKB2.SQL.Text := 'select to_char(warnatnkb_id) as warnatnkb_id,warnatnkb from m_warnatnkb order by warnatnkb';
  QWarnaTNKB2.Open;
end;

procedure TfEntryMLD.RefreshCbWarnaKartu;
begin
  QWarnaKartu1.Close;
  QWarnaKartu1.SQL.Text := 'select to_char(wk_id) as wk_id,wk_nama from m_warna_kartu order by wk_nama';
  QWarnaKartu1.Open;

  QWarnaKartu2.Close;
  QWarnaKartu2.SQL.Text := 'select to_char(wk_id) as wk_id,wk_nama from m_warna_kartu order by wk_nama';
  QWarnaKartu2.Open;
end;

procedure TfEntryMLD.RefreshCbModel;
begin
  QModel1.Close;
  QModel1.SQL.Text := 'select to_char(model_id) as model_id,model_nama,jenis_id from m_model order by model_nama';
  QModel1.Open;

  QModel2.Close;
  QModel2.SQL.Text := 'select to_char(model_id) as model_id,model_nama,jenis_id from m_model order by model_nama';
  QModel2.Open;
end;

procedure TfEntryMLD.RefreshCbWarna;
begin
  QWarna1.Close;
  QWarna1.SQL.Text := 'select to_char(warna_id) as warna_id,warna_nama from m_warna order by warna_nama';
  QWarna1.Open;

  QWarna2.Close;
  QWarna2.SQL.Text := 'select to_char(warna_id) as warna_id,warna_nama from m_warna order by warna_nama';
  QWarna2.Open;
end;

procedure TfEntryMLD.RefreshCbWilayah;
begin
  QWil1.Close;
  QWil1.SQL.Text := 'select to_char(wilayah_id) as wilayah_kode,wilayah_nama from m_wilayah order by wilayah_nama';
  QWil1.Open;

  QWil2.Close;
  QWil2.SQL.Text := 'select to_char(wilayah_id) as wilayah_kode,wilayah_nama from m_wilayah order by wilayah_nama';
  QWil2.Open;
end;

procedure TfEntryMLD.RefreshCbJenisDaftar;
begin
  QJenisDaftar1.Close;
  QJenisDaftar1.SQL.Text := 'select to_char(jd_id) as jd_id,jd_nama from m_jenis_daftaran order by jd_nama';
  QJenisDaftar1.Open;

  QJenisDaftar2.Close;
  QJenisDaftar2.SQL.Text := 'select to_char(jd_id) as jd_id,jd_nama from m_jenis_daftaran order by jd_nama';
  QJenisDaftar2.Open;
end;

procedure TfEntryMLD.RefreshCbCaraImpor;
begin
  QCaraImport1.Close;
  QCaraImport1.SQL.Text := 'select to_char(IMPMTHD_ID) as IMPMTHD_ID,IMPMTHD_NAME from m_cara_impor order by IMPMTHD_NAME';
  QCaraImport1.Open;

  QCaraImport2.Close;
  QCaraImport2.SQL.Text := 'select to_char(IMPMTHD_ID) as IMPMTHD_ID,IMPMTHD_NAME from m_cara_impor order by IMPMTHD_NAME';
  QCaraImport2.Open;
end;

procedure TfEntryMLD.RefreshCbPemohon;
begin
  QPemohon1.Close;
  QPemohon1.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  QPemohon1.Open;

  QPemohon2.Close;
  QPemohon2.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  QPemohon2.Open;
end;

procedure TfEntryMLD.RefreshKelurahan;
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

procedure TfEntryMLD.pkdposMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pkdpos.Handle, wm_SysCommand,$f012,0);
end;

procedure TfEntryMLD.Shape12MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pkdpos.Handle, wm_SysCommand,$f012,0);
end;

procedure TfEntryMLD.cxButton14Click(Sender: TObject);
begin
  pkdpos.Visible := False;
end;

procedure TfEntryMLD.eCariKelurahanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 40 then
     dbgData.SetFocus;
end;

procedure TfEntryMLD.eCariKelurahanPropertiesChange(Sender: TObject);
begin
  RefreshKelurahan;
end;

procedure TfEntryMLD.dbgDataDblClick(Sender: TObject);
begin
  eKelurahan.Text := Q2.FieldByName('keluarahan').AsString;
  eKecamatan.Text := Q2.FieldByName('kecamatan').AsString;
  eKabupaten.Text := Q2.FieldByName('kabupaten').AsString;
  ePropinsi.Text := Q2.FieldByName('propinsi').AsString;
  eKdPOSEntry.Text := Q2.FieldByName('kd_pos').AsString;
  pkdpos.Visible := False;
end;

procedure TfEntryMLD.dbgDataKeyDown(Sender: TObject; var Key: Word;
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

procedure TfEntryMLD.cxButton10Click(Sender: TObject);
begin
  RefreshKelurahan;
  pkdpos.BringToFront;
  pkdpos.Left := 72;
  pkdpos.Top := 4;
  pkdpos.Visible := True;
  eCariKelurahan.SetFocus;
  eCariKelurahan.SelStart := Length(eCariKelurahan.Text) + 1;
end;

procedure TfEntryMLD.cbJnsDaftaranEntryPropertiesChange(Sender: TObject);
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

procedure TfEntryMLD.cxButton11Click(Sender: TObject);
begin
  RefreshCbPemohon;
end;

procedure TfEntryMLD.cxButton12Click(Sender: TObject);
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

procedure TfEntryMLD.bBaruEntryClick(Sender: TObject);
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

procedure TfEntryMLD.AddBPKB;
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

procedure TfEntryMLD.bSimpanEntryClick(Sender: TObject);
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

procedure TfEntryMLD.cxButton13Click(Sender: TObject);
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

procedure TfEntryMLD.RefreshCbPolda;
begin
  QPolda1.Close;
  QPolda1.SQL.Text := 'select to_char(POLDA_ID) as POLDA_ID,POLDA_NAMA from M_POLDA order by POLDA_NAMA';
  QPolda1.Open;

  QPolda2.Close;
  QPolda2.SQL.Text := 'select to_char(POLDA_ID) as POLDA_ID,POLDA_NAMA from M_POLDA order by POLDA_NAMA';
  QPolda2.Open;
end;

procedure TfEntryMLD.RefreshCbPolres;
begin
  QPolres1.Close;
  QPolres1.SQL.Text := 'select to_char(POLRES_KODE) as POLRES_KODE,POLRES_NAMA,POLDA_ID from M_POLRES order by POLRES_NAMA';
  QPolres1.Open;

  QPolres2.Close;
  QPolres2.SQL.Text := 'select to_char(POLRES_KODE) as POLRES_KODE,POLRES_NAMA,POLDA_ID from M_POLRES order by POLRES_NAMA';
  QPolres2.Open;
end;

procedure TfEntryMLD.bPolresPropertiesPopup(Sender: TObject);
begin
  cbPolres.Properties.ListSource.DataSet.Filter := 'POLDA_ID='+cbPolda.EditValue;
  cbPolres.Properties.ListSource.DataSet.Filtered := True;
end;

procedure TfEntryMLD.bMutasiClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
  i : integer;
begin
  if dtTgl.Text <> '' then
  begin
    if eNoRegisterML.Text <> '' then
    begin
      if eNama.Text <> '' then
      begin
        if eNama.Lines.Count > 2 then
        begin
          MessageDlgWarning('Nama Pemilik tidak boleh lebih dari 2 baris');
          eNama.SetFocus;
        end
        else
        begin
          cxMemoNama.Clear;
          for i := 0 to eNama.Lines.Count - 1 do
            if Length(eNama.Lines[i]) > 0 then
               cxMemoNama.Lines.Add(eNama.Lines[i]);
          eNama.Clear;
          eNama.Text := cxMemoNama.Text;

          if eAlamat.Text <> '' then
          begin
            if eAlamat.Lines.Count > 3 then
            begin
              MessageDlgWarning('Alamat Pemilik tidak boleh lebih dari 3 baris');
              eAlamat.SetFocus;
            end
            else
            begin
              cxMemoAlamat.Clear;
              for i := 0 to eAlamat.Lines.Count - 1 do
                if Length(eAlamat.Lines[i]) > 0 then
                   cxMemoAlamat.Lines.Add(eAlamat.Lines[i]);
              eAlamat.Clear;
              eAlamat.Text := cxMemoAlamat.Text;

              if cbPolda.Text <> '' then
              begin
                if cbPolres.Text <> '' then
                begin
                  try
                    fWait.Show;
                    Application.ProcessMessages;
                    uniSP := TUniStoredProc.Create(Application);
                    uniSP.Connection := DM.dbSrv;
                    uniSP.Close;
                    uniSP.StoredProcName := 'bpkb_add_mld';
                    try
                      uniSP.Params.Clear;
                      uniSP.Params.CreateParam(ftString,'vBPKBID',ptInput).AsInteger := StrToInt(vBPKBID_v);
                      uniSP.Params.CreateParam(ftString,'vNREG_BPKB',ptInput).AsString := e_kode_noreg.Text+eNoRegisterML.Text+eKode_akhir_noreg.Text; //'R/'+eNoRegisterML.Text+'/'+IntToRoman(StrToInt(FormatDateTime('mm',dtTgl.Date)))+'/'+FormatDateTime('yyyy',dtTgl.Date)+'/'+vAkhiranNRegBPKB; //eNRegBPKb.Text;
                      uniSP.Params.CreateParam(ftString,'vNO_BPKB',ptInput).AsString := eNoBPKB2.Text;
                      uniSP.Params.CreateParam(ftString,'vNO_Rangka',ptInput).AsString := eInfoNoRangka.Text;
                      uniSP.Params.CreateParam(ftString,'vTglDaftar',ptInput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
                      uniSP.Params.CreateParam(ftString,'vNama',ptInput).AsString := eNama.Text;
                      uniSP.Params.CreateParam(ftString,'vAlamat',ptInput).AsString := eAlamat.Text;
                      uniSP.Params.CreateParam(ftString,'vNOPOL',ptInput).AsString := eNoPolisi.Text;
                      uniSP.Params.CreateParam(ftString,'vPoldaID',ptInput).AsString := cbPolda.EditValue;
                      uniSP.Params.CreateParam(ftString,'vPolresID',ptInput).AsString := cbPolres.EditValue;
                      uniSP.Params.CreateParam(ftString,'vPetugasID',ptInput).AsInteger := StrToInt(vIDPetugas);
                      if isTreaceLog='1' then
                      begin
                        Log('SProser Penyimpanan Registrasi Add Mutasi LD');
                        Log('vBPKBID '+vBPKB_ID);
                        Log('vNREG_BPKB '+eNRegBPKb.Text);
                        Log('vNO_BPKB '+eNoBPKB2.Text);
                        Log('vNO_Rangka '+eInfoNoRangka.Text);
                        Log('vTglDaftar '+FormatDateTime('yyyymmdd',dtTgl.Date));
                        Log('vNama '+eNama.Text);
                        Log('vAlamat '+eAlamat.Text);
                        Log('vNOPOL '+eNoPolisi.Text);
                        Log('vPoldaID '+cbPolda.EditValue);
                        Log('vPolresID '+cbPolres.EditValue);
                        Log('vPetugasID '+vIDPetugas);
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
                      ErrorProgDialog('Error,..bpkb_add_mld.Open%Error :'+E.Message);
                    end;
                    end;
                  finally
                    FreeAndNil(uniSP);
                  end;
                end
                else
                begin
                  MessageDlgError('POLRES YANG DITUJU TIDAK BOLEH KOSONG');
                  cbPolres.SetFocus
                end;
              end
              else
              begin
                MessageDlgError('POLDA YANG DITUJU TIDAK BOLEH KOSONG');
                cbPolda.SetFocus
              end;
            end;
          end
          else
          begin
            MessageDlgError('ALAMAT PEMILIK TIDAK BOLEH KOSONG');
            eAlamat.SetFocus
          end;
        end;
      end
      else
      begin
        MessageDlgError('NAMA PEMILIK TIDAK BOLEH KOSONG');
        eNama.SetFocus;
      end;
    end
    else
    begin
      MessageDlgError('NO REGISTER MUTASI LUAR DAERAH TIDAK BOLEH KOSONG');
      eNoRegisterML.SetFocus;
    end;
  end
  else
  begin
    MessageDlgError('TANGGAL PROSES TIDAK BOLEH KOSONG');
    dtTgl.SetFocus
  end;
end;

procedure TfEntryMLD.bCetakClick(Sender: TObject);
begin
  fMain.InitIni('1');
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT (CASE WHEN PRINTED_BY IS NULL THEN 0 ELSE 1 END) AS PRINTED_BY FROM t_mutasi_ld'+
                ' WHERE BPKB_ID=:BPKB_ID';
    try
      Params[0].AsString := vBPKBID_v;
      Open;
      if Fields[0].AsInteger = 1 then
      begin
        if MessageDlg('DATA SUDAH PERNAH DI CETAK, APAKAH MAU MALAKUKAN CETAK ULANG?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
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
        end;
      end
      else
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
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error... '+E.Message);
    end;
    end;
  end;
end;

procedure TfEntryMLD.pCetakMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pCetak.Handle, wm_SysCommand,$f012,0);
end;

procedure TfEntryMLD.cxButton3Click(Sender: TObject);
begin
  pCetak.Visible := False;
end;

procedure TfEntryMLD.rbHalamanCetakPropertiesChange(Sender: TObject);
begin
  if rbBukuBaru.Checked = true then
  begin
    if rbHalamanCetak.ItemIndex = 0 then  // kiri
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

procedure TfEntryMLD.cxButton4Click(Sender: TObject);
var
  tJmlChar,tJmlChar2 : integer;
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_update_prn_mld';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'vBPKBID',ptInput).AsInteger := StrToInt(vBPKBID_V);
      uniSP.Params.CreateParam(ftString,'vTglDaftar',ptInput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
      uniSP.Params.CreateParam(ftString,'vPetugasID',ptInput).AsInteger := StrToInt(vIDPetugas);
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
      uniSP.ExecProc;

      fWait.Hide;
      Application.ProcessMessages;
      if Pos('KESALAHAN',uniSP.Params.ParamValues['RESULT']) > 0 then
         MessageDlgError('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT'])
      else
      begin
        // PROSES CETAK DATA
        tTempCetak := '';
        tTempCetak1 := '';
        tTempCetakTitik := '';
        isCetakKartuInduk := '0';

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

        tTempCetak := tTempCetak + 'NOMOR'+#13+
                                   'PERUBAHAN'+#13+
                                   'REGISTRASI'+#13;
        tTempCetak1 := tTempCetak1 + e_kode_noreg.Text+eNoRegisterML.Text+eKode_akhir_noreg.Text+#13+
                                     'MUTASI LUAR DAERAH'+#13+
                                     eNoPolisi.Text+#13;
        tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                             ':'+#13+
                                             ':'+#13;
        tJmlChar := eNama.Lines.Count;  // nama
        tJmlChar2 := eAlamat.Lines.Count;  // alamat
        if tJmlChar = 1 then
        begin
          tTempCetak := tTempCetak + 'NAMA'+#13;
          tTempCetakTitik := tTempCetakTitik+ ':'+#13;
          tTempCetak1 := tTempCetak1 + eNama.Text+#13;
        end
        else if tJmlChar=2 then
        begin
          tTempCetak := tTempCetak + 'NAMA'+#13+
                                     ' '+#13;
          tTempCetakTitik := tTempCetakTitik+ ':'+#13+
                                              ':'+#13;
          tTempCetak1 := tTempCetak1 + eNama.Text+#13;
        end
        else if tJmlChar=3 then
        begin
          tTempCetak := tTempCetak + 'NAMA'+#13+
                                     ' '+#13+
                                     ' '+#13;
          tTempCetakTitik := tTempCetakTitik+ ':'+#13+
                                              ':'+#13+
                                              ':'+#13;
          tTempCetak1 := tTempCetak1 + eNama.Text+#13;
        end;

        if tJmlChar2 = 1 then
        begin
          tTempCetak := tTempCetak + 'ALAMAT'+#13;
          tTempCetakTitik := tTempCetakTitik+ ':'+#13;
          tTempCetak1 := tTempCetak1 + eAlamat.Text+#13;
        end
        else if tJmlChar2=2 then
        begin
          tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                     ' '+#13;
          tTempCetakTitik := tTempCetakTitik+ ':'+#13+
                                              ':'+#13;
          tTempCetak1 := tTempCetak1 + eAlamat.Text+#13;
        end
        else if tJmlChar2=3 then
        begin
          tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                     ' '+#13+
                                     ' '+#13;
          tTempCetakTitik := tTempCetakTitik+ ':'+#13+
                                              ':'+#13+
                                              ':'+#13;
          tTempCetak1 := tTempCetak1 + eAlamat.Text+#13;
        end;

        // cari pejabat tanda tangan
        with QReport do
        begin
          Close;
          //SQL.Text := 'SELECT MUTLD_JAB,MUTLD_NAMA,MUTLD_PANGKATNRP,SYSDATE AS REG_DATE FROM T_CONFIG';
          SQL.Text := 'SELECT S.SIGN_JAB,S.SIGN_NAMA,S.SIGN_PANGKATNRP,SW.X,SW.Y,SW.W,SW.IMG FROM T_SIGNATURE S'+
                      ' INNER JOIN T_SIGNATURE_IMAGES SW ON S.SIGN_ID=SW.SIGN_ID'+
                      ' WHERE S.SIGN_TYPE=6 AND S.ISAKTIF=''1''';
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
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error... bpkb_update_prn_mld '+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfEntryMLD.frxReportBeforePrint(Sender: TfrxReportComponent);
begin
  (frxReport.FindObject('DataCetak') as TfrxMemoView).Font.Name := vNamaFont;
  (frxReport.FindObject('DataCetak1') as TfrxMemoView).Font.Name := vNamaFont;
  (frxReport.FindObject('DataCetak2') as TfrxMemoView).Font.Name := vNamaFont;
  (frxReport.FindObject('PoIDoI') as TfrxMemoView).Font.Name := vNamaFont;
  (frxReport.FindObject('kota') as TfrxMemoView).Font.Name := vNamaFont;
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

procedure TfEntryMLD.frxReportGetValue(const VarName: String;
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
    Value := FormatDateTime('dd mmmm yyyy',dtTgl.Date);
end;

procedure TfEntryMLD.cxButton15Click(Sender: TObject);
begin
  with UniQuery3 do
  begin
    Close;
    SQL.Text := 'SELECT A.BPKB_ID,A.NO_BPKB,A.TGL_BPKB,A.BERKAS_ID,NOPOL.NO_POLISI,ATAS_NAMA,ALAMAT_PINDAH,B.POLDA_NAMA,C.POLRES_NAMA,D.MERK_NAMA,'+
                'E.JENIS_NAMA,F.MODEL_NAMA,A.TIPE,A.THN_BUAT,A.THN_RAKIT,A.NO_RANGKA,A.NO_MESIN,W.WARNA_NAMA'+
                ' FROM T_BPKB_MASTER A'+
                ' INNER JOIN t_mutasi_ld ld ON LD.BPKB_ID=A.BPKB_ID'+
                ' INNER JOIN t_hist_nopolisi nopol on A.CURRENT_HISTID=NOPOL.HIST_ID'+
                ' INNER JOIN M_POLDA B ON LD.POLDA_ID=B.POLDA_ID'+
                ' INNER JOIN M_POLRES C ON C.POLDA_ID=LD.POLDA_ID AND C.POLRES_KODE=LD.POLRES'+
                ' INNER JOIN M_MERK D ON A.MERK_ID=D.MERK_ID'+
                ' INNER JOIN M_JENIS E ON A.JENIS_ID=E.JENIS_ID'+
                ' INNER JOIN T_HIST_BENTUK HB ON HB.HIST_ID=A.CURRENT_HISTID'+
                ' INNER JOIN M_MODEL F ON F.MODEL_ID=HB.MODEL_ID'+
                ' INNER JOIN T_HIST_WARNA HW ON HW.HIST_ID=A.CURRENT_HISTID'+
                ' INNER JOIN M_WARNA W ON W.WARNA_ID=HW.WARNA_ID'+
                ' WHERE TO_CHAR (ld.TANGGAL, ''yyyymmdd'')=:TGL AND A.BPKB_STATUS=3 ORDER BY a.BPKB_ID';
    try
      Params[0].AsString := FormatDateTime('yyyymmdd',dtLap.Date);
      Open;
      if recordcount > 0 then
      begin
        //frxReport.DataSet := frxDBDataset1;
        frxReport1.Clear;
        frxReport1.LoadFromFile(RootPath+'\lapld.fr3');
        if TReport='1' then
        begin
          fWait.Close;
          frxReport1.DesignReport();
        end
        else if TReport='0' then
        begin
          //frxReport.ShowReport();
          fWait.Close;
          frxReport1.PrintOptions.ShowDialog := False;
          frxReport1.PrintOptions.Printer := TPRINTER_BPKB;
          frxReport1.PrepareReport;
          frxReport1.Print;
        end
        else if TReport='2' then
        begin
          fWait.Close;
          frxReport1.ShowReport();
        end;
      end
      else
      begin
        MessageDlgInformation('DATA MUTASI LUAR DAERAH TGL '+FormatDateTime('dd-mm-yyyy',dtLap.Date)+' TIDAK ADA');
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error... '+E.Message);
    end;
    end;
  end;
end;

procedure TfEntryMLD.pMutasiLDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pMutasiLD.Handle, wm_SysCommand,$f012,0);
end;

procedure TfEntryMLD.cxButton8Click(Sender: TObject);
begin
  pMutasiLD.Visible := False;
end;

procedure TfEntryMLD.bLaporanClick(Sender: TObject);
begin
  dtLap.Date := TTglSrvSkr;
  pMutasiLD.Left := 192;
  pMutasiLD.Top := 144;
  pMutasiLD.Visible := True;
end;

procedure TfEntryMLD.bCetakKartuIndukClick(Sender: TObject);
var
  tJmlChar,tJmlChar2 : integer;
begin
  fMain.InitIni('1');
  with QReport do
  begin
    Close;
    SQL.Text := 'SELECT MUTLD_JAB,MUTLD_NAMA,MUTLD_PANGKATNRP,SYSDATE AS REG_DATE FROM T_CONFIG';
    try
      Open;
      if recordcount > 0 then
      begin
        if MessageDlg('APAKAH AKAN CETAK KARTU INDUK?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          if MessageDlg('KERTAS KARTU INDUK APAKAH SUDAH DIPASANG DENGAN BENAR?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          begin
            // PROSES CETAK DATA
            tTempCetak := '';
            tTempCetak1 := '';
            tTempCetakTitik := '';

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
            eXPict.Text := FloatToStr(veXPic);
            eYPict.Text := FloatToStr(veYPic);


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

            tTempCetak := tTempCetak + 'NOMOR'+#13+
                                       'PERUBAHAN'+#13+
                                       'REGISTRASI'+#13;
            tTempCetak1 := tTempCetak1 + eNRegBPKb.Text+#13+
                                         'MUTASI LUAR DAERAH'+#13+
                                         eNoPolisi.Text+#13;
            tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                 ':'+#13+
                                                 ':'+#13;
            tJmlChar := eNama.Lines.Count;  // nama
            tJmlChar2 := eAlamat.Lines.Count;  // alamat
            if tJmlChar = 1 then
            begin
              tTempCetak := tTempCetak + 'NAMA'+#13;
              tTempCetakTitik := tTempCetakTitik+ ':'+#13;
              tTempCetak1 := tTempCetak1 + eNama.Text+#13;
            end
            else if tJmlChar=2 then
            begin
              tTempCetak := tTempCetak + 'NAMA'+#13+
                                         ' '+#13;
              tTempCetakTitik := tTempCetakTitik+ ':'+#13+
                                                  ':'+#13;
              tTempCetak1 := tTempCetak1 + eNama.Text+#13;
            end
            else if tJmlChar=3 then
            begin
              tTempCetak := tTempCetak + 'NAMA'+#13+
                                         ' '+#13+
                                         ' '+#13;
              tTempCetakTitik := tTempCetakTitik+ ':'+#13+
                                                  ':'+#13+
                                                  ':'+#13;
              tTempCetak1 := tTempCetak1 + eNama.Text+#13;
            end;

            if tJmlChar2 = 1 then
            begin
              tTempCetak := tTempCetak + 'ALAMAT'+#13;
              tTempCetakTitik := tTempCetakTitik+ ':'+#13;
              tTempCetak1 := tTempCetak1 + eAlamat.Text+#13;
            end
            else if tJmlChar2=2 then
            begin
              tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                         ' '+#13;
              tTempCetakTitik := tTempCetakTitik+ ':'+#13+
                                                  ':'+#13;
              tTempCetak1 := tTempCetak1 + eAlamat.Text+#13;
            end
            else if tJmlChar2=3 then
            begin
              tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                         ' '+#13+
                                         ' '+#13;
              tTempCetakTitik := tTempCetakTitik+ ':'+#13+
                                                  ':'+#13+
                                                  ':'+#13;
              tTempCetak1 := tTempCetak1 + eAlamat.Text+#13;
            end;

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
        MessageDlgError('DATA BERKAS TANDA TANGAN KARTU INDUK TIDAK ADA');
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error... '+E.Message);
    end;
    end;
  end;
end;

procedure TfEntryMLD.CariReferensi(vNoRangka: String);
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

procedure TfEntryMLD.eNoRangkaEntryPropertiesChange(Sender: TObject);
begin
  if Length(eNoRangkaEntry.Text)=10 then
     CariReferensi(eNoRangkaEntry.Text)
end;

procedure TfEntryMLD.Button1Click(Sender: TObject);
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

procedure TfEntryMLD.cxButton17Click(Sender: TObject);
begin
  RefreshCbMerk;
end;

procedure TfEntryMLD.cxButton18Click(Sender: TObject);
begin
  RefreshCbJenis;
end;

procedure TfEntryMLD.cxButton19Click(Sender: TObject);
begin
  RefreshCbBahanBakar;
end;

procedure TfEntryMLD.cxButton20Click(Sender: TObject);
begin
  RefreshCbPeruntukan;
end;

procedure TfEntryMLD.cxButton21Click(Sender: TObject);
begin
  RefreshCbWarnaTNKB;
end;

procedure TfEntryMLD.cxButton7Click(Sender: TObject);
begin
  RefreshCbModel;
end;

procedure TfEntryMLD.cxButton5Click(Sender: TObject);
begin
  RefreshCbWarna;
end;

procedure TfEntryMLD.cxButton9Click(Sender: TObject);
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

procedure TfEntryMLD.pModelMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pModel.Handle, wm_SysCommand,$f012,0);
end;

procedure TfEntryMLD.cxButton1Click(Sender: TObject);
begin
  pModel.Visible := False;
end;

procedure TfEntryMLD.eModelNamaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     eNRegBPKBEntry.SetFocus;
end;

procedure TfEntryMLD.cxButton16Click(Sender: TObject);
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

procedure TfEntryMLD.cxButton22Click(Sender: TObject);
begin
  RefreshCbJenisModel;
  RefreshCbWarnaKartu;
  eModelNama.Text := '';
  cbJenisModel.Text := '';
  cbWarnaKartu.Text := '';
  eModelNama.SetFocus;
end;

procedure TfEntryMLD.cxButton6Click(Sender: TObject);
begin
  eInputWarna.Text := '';
  pWarna.Visible := True;
  pWarna.Left := 120;
  pWarna.Top := 144;
  eInputWarna.SetFocus;
end;

procedure TfEntryMLD.pWarnaMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pWarna.Handle, wm_SysCommand,$f012,0);
end;

procedure TfEntryMLD.cxButton23Click(Sender: TObject);
begin
  pWarna.Visible := False;
end;

procedure TfEntryMLD.eInputWarnaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     bSimpan.Click;
end;

procedure TfEntryMLD.bBaruPendaftaranBBN1Click(Sender: TObject);
begin
  eInputWarna.Text := '';
end;

procedure TfEntryMLD.bSimpanClick(Sender: TObject);
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

procedure TfEntryMLD.RefreshCbPekerjaan;
begin
  QPekerjaan1.Close;
  QPekerjaan1.SQL.Text := 'select PEKERJAAN_NAMA from m_pekerjaan order by PEKERJAAN_NAMA';
  QPekerjaan1.Open;

  QPekerjaan2.Close;
  QPekerjaan2.SQL.Text := 'select PEKERJAAN_NAMA from m_pekerjaan order by PEKERJAAN_NAMA';
  QPekerjaan2.Open;
end;

procedure TfEntryMLD.cxButton25Click(Sender: TObject);
begin
  RefreshCbPekerjaan;
end;

procedure TfEntryMLD.cxButton24Click(Sender: TObject);
begin
  RefreshCbWilayah;
end;

procedure TfEntryMLD.cxButton26Click(Sender: TObject);
begin
  eWilayahTambah.Text := '';
  pWilayah.Visible := tRUE;
  pWilayah.Left := 120;
  pWilayah.Top := 144;
  eWilayahTambah.SetFocus;
end;

procedure TfEntryMLD.pWilayahMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pWilayah.Handle, wm_SysCommand,$f012,0);
end;

procedure TfEntryMLD.cxButton27Click(Sender: TObject);
begin
  pWilayah.Visible := False;
end;

procedure TfEntryMLD.eWilayahTambahKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     cxButton29.Click;
end;

procedure TfEntryMLD.cxButton28Click(Sender: TObject);
begin
  eWilayahTambah.Text := '';
  eWilayahTambah.SetFocus;
end;

procedure TfEntryMLD.cxButton29Click(Sender: TObject);
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

procedure TfEntryMLD.cxButton30Click(Sender: TObject);
begin
  RefreshCbJenisDaftar;
end;

procedure TfEntryMLD.cxButton31Click(Sender: TObject);
begin
  RefreshCbCaraImpor;
end;

procedure TfEntryMLD.dtTglPropertiesChange(Sender: TObject);
begin
  e_kode_noreg.Text := tNoAwalMLD+'/';
  eKode_akhir_noreg.Text  := '/'+IntToRoman(StrToInt(FormatDateTime('mm',dtTgl.Date)))+'/'+FormatDateTime('yyyy',dtTgl.Date)+'/'+tNoAkhirMLD;
end;

procedure TfEntryMLD.eNoRegisterMLKeyPress(Sender: TObject; var Key: Char);
begin
  if dtTgl.Text <> '' then
  begin
    e_kode_noreg.Text := tNoAwalMLD+'/';
    eKode_akhir_noreg.Text  := '/'+IntToRoman(StrToInt(FormatDateTime('mm',dtTgl.Date)))+'/'+FormatDateTime('yyyy',dtTgl.Date)+'/'+tNoAkhirMLD;
  end
  else
     MessageDlgError('Tanggal proses mutasi tolong di pilih dahulu');
end;

end.
