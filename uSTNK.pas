unit uSTNK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, ExtCtrls, StdCtrls, cxButtons, cxTextEdit,
  cxRadioGroup, cxMemo, cxDropDownEdit, cxCalendar, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPC, DB, DBAccess,
  Uni, MemDS, HotKeyManager, frxDesgn, frxBarcode, frxClass, frxDBSet,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfSTNK = class(TForm)
    lJudul: TLabel;
    rbNoBPKB: TcxRadioButton;
    eNoRangka: TcxTextEdit;
    bCari: TcxButton;
    Shape1: TShape;
    Shape2: TShape;
    bSimpanEntry: TcxButton;
    bBaruEntry: TcxButton;
    QWarnaKartu1: TUniQuery;
    dsQWarnaKartu1: TUniDataSource;
    dsQWarnaKartu2: TUniDataSource;
    QWarnaKartu2: TUniQuery;
    QJenisModel1: TUniQuery;
    dsQJenisModel1: TUniDataSource;
    dsQJenisModel2: TUniDataSource;
    QJenisModel2: TUniQuery;
    qAddModel: TUniQuery;
    dsqAddModel: TUniDataSource;
    dsQJenis: TUniDataSource;
    QJenis: TUniQuery;
    QWarnaKartu: TUniQuery;
    dsQWarnaKartu: TUniDataSource;
    dsQDeatilRegister: TUniDataSource;
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
    dsQDeatail: TUniDataSource;
    QMerk1: TUniQuery;
    dsMerk2: TUniDataSource;
    dsJenis1: TUniDataSource;
    QJenis2: TUniQuery;
    dsJenis2: TUniDataSource;
    QJenis1: TUniQuery;
    QBB1: TUniQuery;
    QBB2: TUniQuery;
    dsQBB2: TUniDataSource;
    dsQBB1: TUniDataSource;
    QPeruntukan1: TUniQuery;
    QPeruntukan2: TUniQuery;
    dsPeruntukan2: TUniDataSource;
    dsPeruntukan1: TUniDataSource;
    QWarnaTNKB1: TUniQuery;
    dsWarnaTNKB1: TUniDataSource;
    dsWarnaTNKB2: TUniDataSource;
    QWarnaTNKB2: TUniQuery;
    QLokasiSTNK1: TUniQuery;
    dsQLokasiSTNK1: TUniDataSource;
    dsQLokasiSTNK2: TUniDataSource;
    QLokasiSTNK2: TUniQuery;
    QPekerjaan1: TUniQuery;
    QPekerjaan2: TUniQuery;
    dsQPekerjaan2: TUniDataSource;
    dsQPekerjaan1: TUniDataSource;
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
    Q2: TUniQuery;
    Q2KELUARAHAN: TStringField;
    Q2KECAMATAN: TStringField;
    Q2KABUPATEN: TStringField;
    Q2PROPINSI: TStringField;
    Q2KD_POS: TStringField;
    dsQ2: TDataSource;
    dsCaraImport1: TUniDataSource;
    QCaraImport1: TUniQuery;
    QCaraImport2: TUniQuery;
    dsCaraImport2: TUniDataSource;
    uniSP: TUniStoredProc;
    QMerk2: TUniQuery;
    dsMerk1: TUniDataSource;
    uniSPTampil: TUniStoredProc;
    PopupMenu1: TPopupMenu;
    EDITDATA1: TMenuItem;
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
    Label67: TLabel;
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
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton17: TcxButton;
    cxButton18: TcxButton;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    cxButton21: TcxButton;
    eType2Entry: TcxTextEdit;
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
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    ePekerjaanEntry: TcxDBLookupComboBox;
    cxButton25: TcxButton;
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
    Label65: TLabel;
    Label66: TLabel;
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
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxButton22: TcxButton;
    cxButton23: TcxButton;
    cbLokasiSTNK: TcxDBLookupComboBox;
    dtTglSTNK: TcxDateEdit;
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
    eNopolAwal: TcxTextEdit;
    eNopolTengah: TcxTextEdit;
    eNopolAkhir: TcxTextEdit;
    Label1: TLabel;
    Label23: TLabel;
    eNoSTNK: TcxTextEdit;
    frxReport: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDesigner1: TfrxDesigner;
    cxButton6: TcxButton;
    procedure bCariClick(Sender: TObject);
    procedure bBaruEntryClick(Sender: TObject);
    procedure bSimpanEntryClick(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
  private
    { Private declarations }
    vISNopolLama : String; // 0 menggunakan nopol baru, 1 mengunakan nopol lama
    vBPKB_ID_Pertama : String; // penampung untuk bpkb id yg pertama
    vISNOPOL : Boolean; // status nopol true or false
    tBerkasID,vBPKB_ID,vHIST_ID : String;
    isEdit : String;
  public
    { Public declarations }
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
    procedure CariDataNoRangka(vJenis, vCari : String);
    function CekMerk(vMerk:String):String;
    function CekATPMID(vMerk: String): String;
    procedure CariDataPemohon(vCari:String);
  end;

var
  fSTNK: TfSTNK;

implementation
Uses
  uDM, uVariabel, uModul, uWait, uMain, uPemohon, AtpmDataService2;
{$R *.dfm}

{ TfSTNK }

procedure TfSTNK.CariDataNoRangka(vJenis, vCari: String);
var
  //uniSP : TUniStoredProc;
  DataIn : TStringList;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    DataIn := TStringList.Create;
    //uniSP := TUniStoredProc.Create(Application);
    //uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_get_data';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftstring,'v_polda_id',ptinput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'v_is_cari',ptInput).AsString := vJenis;
      uniSP.Params.CreateParam(ftString,'v_cari',ptInput).AsString := vCari;
      uniSP.Params.CreateParam(ftString,'v_bbn',ptInput).AsString := '0';
      uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      uniSP.Active := True;

      if uniSP.RecordCount > 0 then
      begin
        cxPageControl2.ActivePageIndex := 0;
        EnableKomponenRegister;
        eNoRangkaEntry.Enabled := True;
        eNoMesinEntry.Enabled := True;
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

        if uniSP.FieldByName('TPT_DAFTAR_STNK').Value=Null then
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
           dtTglSTNK.Date := uniSP.FieldByName('TGL_DAFTAR_STNK').Value;

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
      ErrorProgDialog('Error,..bpkb_get_data.Open%Error :'+E.Message);
    end;
    end;
  finally
    //FreeAndNil(uniSP);
  end;
end;

procedure TfSTNK.CariDataPemohon(vCari: String);
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

procedure TfSTNK.CariReferensi(vNoRangka: String);
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

function TfSTNK.CekATPMID(vMerk: String): String;
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

function TfSTNK.CekMerk(vMerk: String): String;
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

procedure TfSTNK.EnableKomponenRegister;
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
  eNopolAwal.Enabled := True;
  eNopolTengah.Enabled := True;
  eNopolAkhir.Enabled := True;
  eKelurahan.Enabled := True;
  eKecamatan.Enabled := True;
  eKabupaten.Enabled := True;
  ePropinsi.Enabled := True;
end;

procedure TfSTNK.RefreshCbBahanBakar;
begin
  QBB1.Close;
  QBB1.SQL.Text := 'select to_char(bb_id) as bb_id,bb_nama from m_bahanbakar order by bb_nama';
  QBB1.Open;

  QBB2.Close;
  QBB2.SQL.Text := 'select to_char(bb_id) as bb_id,bb_nama from m_bahanbakar order by bb_nama';
  QBB2.Open;
end;

procedure TfSTNK.RefreshCbCaraImpor;
begin
  QCaraImport1.Close;
  QCaraImport1.SQL.Text := 'select to_char(IMPMTHD_ID) as IMPMTHD_ID,IMPMTHD_NAME from m_cara_impor order by IMPMTHD_NAME';
  QCaraImport1.Open;

  QCaraImport2.Close;
  QCaraImport2.SQL.Text := 'select to_char(IMPMTHD_ID) as IMPMTHD_ID,IMPMTHD_NAME from m_cara_impor order by IMPMTHD_NAME';
  QCaraImport2.Open;
end;

procedure TfSTNK.RefreshCbJenis;
begin
  QJenis1.Close;
  QJenis1.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenis1.Open;

  QJenis2.Close;
  QJenis2.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenis2.Open;
end;

procedure TfSTNK.RefreshCbJenisDaftar;
begin
  QJenisDaftar1.Close;
  QJenisDaftar1.SQL.Text := 'select to_char(jd_id) as jd_id,jd_nama from m_jenis_daftaran order by jd_nama';
  QJenisDaftar1.Open;

  QJenisDaftar2.Close;
  QJenisDaftar2.SQL.Text := 'select to_char(jd_id) as jd_id,jd_nama from m_jenis_daftaran order by jd_nama';
  QJenisDaftar2.Open;
end;

procedure TfSTNK.RefreshCbJenisModel;
begin
  QJenisModel1.Close;
  QJenisModel1.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenisModel1.Open;

  QJenisModel2.Close;
  QJenisModel2.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenisModel2.Open;
end;

procedure TfSTNK.RefreshCbLokasiSTNK;
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

procedure TfSTNK.RefreshCbMerk;
begin
  QMerk1.Close;
  QMerk1.SQL.Text := 'select to_char(merk_id) as merk_id,merk_nama_r as merk_nama from m_merk  where rowid in (select min(rowid) from m_merk group by merk_nama_r)  order by merk_nama';
  QMerk1.Open;

  QMerk2.Close;
  QMerk2.SQL.Text := 'select to_char(merk_id) as merk_id,merk_nama_r as merk_nama from m_merk  where rowid in (select min(rowid) from m_merk group by merk_nama_r)  order by merk_nama';
  QMerk2.Open;
end;

procedure TfSTNK.RefreshCbModel;
begin
  QModel1.Close;
  QModel1.SQL.Text := 'select to_char(model_id) as model_id,model_nama,jenis_id from m_model order by model_nama';
  QModel1.Open;

  QModel2.Close;
  QModel2.SQL.Text := 'select to_char(model_id) as model_id,model_nama,jenis_id from m_model order by model_nama';
  QModel2.Open;
end;

procedure TfSTNK.RefreshCbPekerjaan;
begin
  QPekerjaan1.Close;
  QPekerjaan1.SQL.Text := 'select PEKERJAAN_NAMA from m_pekerjaan order by PEKERJAAN_NAMA';
  QPekerjaan1.Open;

  QPekerjaan2.Close;
  QPekerjaan2.SQL.Text := 'select PEKERJAAN_NAMA from m_pekerjaan order by PEKERJAAN_NAMA';
  QPekerjaan2.Open;
end;

procedure TfSTNK.RefreshCbPemohon;
begin
  QPemohon1.Close;
  QPemohon1.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  QPemohon1.Open;

  QPemohon2.Close;
  QPemohon2.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  QPemohon2.Open;
end;

procedure TfSTNK.RefreshCbPeruntukan;
begin
  QPeruntukan1.Close;
  QPeruntukan1.SQL.Text := 'select to_char(prt_id) as prt_id,prt_nama from m_peruntukan order by prt_nama';
  QPeruntukan1.Open;

  QPeruntukan2.Close;
  QPeruntukan2.SQL.Text := 'select to_char(prt_id) as prt_id,prt_nama from m_peruntukan order by prt_nama';
  QPeruntukan2.Open;
end;

procedure TfSTNK.RefreshCbWarna;
begin
  QWarna1.Close;
  QWarna1.SQL.Text := 'select to_char(warna_id) as warna_id,warna_nama from m_warna order by warna_nama';
  QWarna1.Open;

  QWarna2.Close;
  QWarna2.SQL.Text := 'select to_char(warna_id) as warna_id,warna_nama from m_warna order by warna_nama';
  QWarna2.Open;
end;

procedure TfSTNK.RefreshCbWarnaKartu;
begin
  QWarnaKartu1.Close;
  QWarnaKartu1.SQL.Text := 'select to_char(wk_id) as wk_id,wk_nama from m_warna_kartu order by wk_nama';
  QWarnaKartu1.Open;

  QWarnaKartu2.Close;
  QWarnaKartu2.SQL.Text := 'select to_char(wk_id) as wk_id,wk_nama from m_warna_kartu order by wk_nama';
  QWarnaKartu2.Open;
end;

procedure TfSTNK.RefreshCbWarnaTNKB;
begin
  QWarnaTNKB1.Close;
  QWarnaTNKB1.SQL.Text := 'select to_char(warnatnkb_id) as warnatnkb_id,warnatnkb from m_warnatnkb order by warnatnkb';
  QWarnaTNKB1.Open;

  QWarnaTNKB2.Close;
  QWarnaTNKB2.SQL.Text := 'select to_char(warnatnkb_id) as warnatnkb_id,warnatnkb from m_warnatnkb order by warnatnkb';
  QWarnaTNKB2.Open;
end;

procedure TfSTNK.RefreshCbWilayah;
begin
  QWil1.Close;
  QWil1.SQL.Text := 'select to_char(wilayah_id) as wilayah_kode,wilayah_nama from m_wilayah order by wilayah_nama';
  QWil1.Open;

  QWil2.Close;
  QWil2.SQL.Text := 'select to_char(wilayah_id) as wilayah_kode,wilayah_nama from m_wilayah order by wilayah_nama';
  QWil2.Open;
end;

procedure TfSTNK.RefreshKelurahan;
begin
  // null
end;

procedure TfSTNK.RefreshTahun;
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

procedure TfSTNK.TampilAwal;
begin
  isEdit := '0';
  vBPKB_ID := '';
  vHIST_ID := '';
  cxPageControl2.ActivePageIndex := 0;
  vISNopolLama := '0';
  vBPKB_ID_Pertama := '';
  vISNOPOL := False;
  tBerkasID := '';
  eNoRangka.Text := '';
  rbNoBPKB.Checked := False;
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
  eNopolAwal.Text := '';
  eNopolTengah.Text := '';
  eNopolAkhir.Text := '';
  ePropinsi.Text := '';
  eKabupaten.Text := '';
  eKecamatan.Text := '';
  eKelurahan.Text := '';
  cbLokasiSTNK.ItemIndex := -1;
  dtTglSTNK.Text := '';
  rbNoBPKB.Enabled := True;
  bCari.Enabled := True;
  bSimpanEntry.Enabled := False;
  bBaruEntry.Enabled := False;
  cxPageControl2.ActivePageIndex := 0;
  cbLokasiSTNK.Text := '';
  dtTglSTNK.Text := '';
  eNoSTNK.Text := '';
  Application.ProcessMessages;
end;

procedure TfSTNK.bCariClick(Sender: TObject);
begin
  CariDataNoRangka('3',eNoRangka.Text);
end;

procedure TfSTNK.bBaruEntryClick(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfSTNK.bSimpanEntryClick(Sender: TObject);
begin
  if MessageDlg('YAKIN DATA AKAN DISIMPAN?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    with DM.Q do
    begin
      Close;
      SQL.Text := 'INSERT INTO t_HIST_STNK (HIST_ID,STNK_NOREG,STNK_DATE,STNK_DATE_TO,STNK_PRINT_BY,STNK_LOKASI,STNK_IDENT)'+
                  ' VALUES (:tHistID,:REG0001,:tTGL_DAFTAR_STNK,ADD_MONTHS (:tTGL_DAFTAR_STNK, 60),:vOP_ID,:vTPT_DAFTAR_STNK,:XXXXX)';
      try
        ParamByName('tHistID').AsInteger := uniSP.FieldByName('CURRENT_HISTID').AsInteger;
        ParamByName('REG0001').AsString := eNoSTNK.Text;
        ParamByName('tTGL_DAFTAR_STNK').AsDate := TTglSrvSkr;
        ParamByName('vOP_ID').AsString := vIDPetugas;
        ParamByName('vTPT_DAFTAR_STNK').AsString := cbLokasiSTNK.Text;
        Execute;

        frxDBDataset1.DataSet := uniSP;
        frxReport.Clear;
        frxReport.LoadFromFile(RootPath+'\stnk.fr3');
        if TReport='1' then
        begin
          frxReport.DesignReport();
        end
        else
        begin
          frxReport.ShowReport();
        end;

      except on E:Exception do
        ErrorProgDialog('Error,..STNK.Open%Error :'+E.Message);
      end;
    end;
  end;
end;

procedure TfSTNK.cxButton6Click(Sender: TObject);
begin
  if uniSP.RecordCount > 0 then
  begin
    frxDBDataset1.DataSet := uniSP;
    frxReport.Clear;
    frxReport.LoadFromFile(RootPath+'\stnk.fr3');
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
    MessageDlg('DATA TIDAK ADA YG AKAN DICETAK',mtInformation,[MBok],0);
  end;
end;

end.
