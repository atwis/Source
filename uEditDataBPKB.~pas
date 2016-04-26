unit uEditDataBPKB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPC, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, Menus, cxButtons,
  DBAccess, Uni, MemDS, cxCalendar, cxDBLookupComboBox, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxCheckBox, DBCtrls, cxMemo, Grids, DBGrids, CRGrid,
  cxLookupEdit, cxDBLookupEdit;

type
  TfEditDataBPKB = class(TForm)
    Shape1: TShape;
    lJudul: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Shape2: TShape;
    Label8: TLabel;
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
    cbNoBPKB: TcxComboBox;
    cbNRegBPKB: TcxComboBox;
    cbNoPolisi: TcxComboBox;
    cbNoRangka: TcxComboBox;
    cbNoMesin: TcxComboBox;
    cbNamaPemilik: TcxComboBox;
    cbNoFaktur: TcxComboBox;
    eNoBPKB: TcxTextEdit;
    eNRegBPKB: TcxTextEdit;
    eNoPolisi: TcxTextEdit;
    eNoRangka: TcxTextEdit;
    eNoMesin: TcxTextEdit;
    eNamaPemilik: TcxTextEdit;
    eNoFaktur: TcxTextEdit;
    bCari: TcxButton;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet10: TcxTabSheet;
    uniSPTampil: TUniStoredProc;
    dsQDeatail: TUniDataSource;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxDBVerticalGrid2: TcxDBVerticalGrid;
    dsQDataUtama: TUniDataSource;
    cxDBVerticalGrid2NO_BPKB: TcxDBEditorRow;
    cxDBVerticalGrid2TGL_BPKB: TcxDBEditorRow;
    cxDBVerticalGrid2TGL_FAKTUR: TcxDBEditorRow;
    cxDBVerticalGrid2NO_RANGKA: TcxDBEditorRow;
    cxDBVerticalGrid2NO_MESIN: TcxDBEditorRow;
    cxDBVerticalGrid2NREG_BPKB: TcxDBEditorRow;
    cxDBVerticalGrid2JML_RODA: TcxDBEditorRow;
    cxDBVerticalGrid2THN_BUAT: TcxDBEditorRow;
    cxDBVerticalGrid2THN_RAKIT: TcxDBEditorRow;
    cxDBVerticalGrid2JML_SUMBU: TcxDBEditorRow;
    cxDBVerticalGrid2VOL_SILINDER: TcxDBEditorRow;
    cxDBVerticalGrid2BB_ID: TcxDBEditorRow;
    cxDBVerticalGrid2MERK_ID: TcxDBEditorRow;
    cxDBVerticalGrid2TIPE: TcxDBEditorRow;
    cxDBVerticalGrid2JENIS_ID: TcxDBEditorRow;
    cxDBVerticalGrid2NO_UJI_TIPE: TcxDBEditorRow;
    cxDBVerticalGrid2NO_UJI_BERKALA: TcxDBEditorRow;
    cxDBVerticalGrid2JD_ID: TcxDBEditorRow;
    cxDBVerticalGrid2TEMPAT_KELUAR: TcxDBEditorRow;
    cxDBVerticalGrid2NO_PABEAN: TcxDBEditorRow;
    cxDBVerticalGrid2TGL_PABEAN: TcxDBEditorRow;
    cxDBVerticalGrid2PELABUHAN: TcxDBEditorRow;
    cxDBVerticalGrid2IMPMTHD_ID: TcxDBEditorRow;
    cxDBVerticalGrid2NO_FAKTUR: TcxDBEditorRow;
    cxDBVerticalGrid2NO_CKD: TcxDBEditorRow;
    cxDBVerticalGrid2KETR_PABEAN: TcxDBEditorRow;
    cxDBVerticalGrid2PRT_ID: TcxDBEditorRow;
    cxDBVerticalGrid2BPKB_STATUS: TcxDBEditorRow;
    cxDBVerticalGrid2DUP_NR_COUNT: TcxDBEditorRow;
    cxDBVerticalGrid2DUP_NM_COUNT: TcxDBEditorRow;
    cxDBVerticalGrid2INACTIVE_DATE: TcxDBEditorRow;
    cxDBVerticalGrid2CURRENT_HISTID: TcxDBEditorRow;
    cxDBVerticalGrid2TGL_PIB: TcxDBEditorRow;
    cxDBVerticalGrid2NAMA_IMPORTIR: TcxDBEditorRow;
    cxDBVerticalGrid2IS_BBN2: TcxDBEditorRow;
    cxDBVerticalGrid2NO_PIB: TcxDBEditorRow;
    cxDBVerticalGrid2POLDA_ID: TcxDBEditorRow;
    cxDBVerticalGrid2POLRES_ID: TcxDBEditorRow;
    cxDBVerticalGrid2NO_TPT: TcxDBEditorRow;
    QModel: TUniQuery;
    dsQModel: TUniDataSource;
    QJenis: TUniQuery;
    dsQJenis: TUniDataSource;
    QWarna: TUniQuery;
    dsQWarna: TUniDataSource;
    QBB: TUniQuery;
    dsQBB: TUniDataSource;
    QMerk: TUniQuery;
    dsQMerk: TUniDataSource;
    QJD: TUniQuery;
    dsQJD: TUniDataSource;
    QImpMetode: TUniQuery;
    dsQImpMetode: TUniDataSource;
    QPeruntukan: TUniQuery;
    dsQPeruntukan: TUniDataSource;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxCategoryPendaftaran: TcxCategoryRow;
    cxDBMultiPendaftaran: TcxDBMultiEditorRow;
    cxCatergoryEntryData: TcxCategoryRow;
    cxDBMultiEntryData: TcxDBMultiEditorRow;
    cxCategoryCetakKI: TcxCategoryRow;
    cxDBMultiKI: TcxDBMultiEditorRow;
    cxCategoryVerifikasi: TcxCategoryRow;
    cxDBverifikasi: TcxDBMultiEditorRow;
    cxCategoryCetakBPKB: TcxCategoryRow;
    cxDBMultiCetakBPKB: TcxDBMultiEditorRow;
    cxCategoryTandaTeriam: TcxCategoryRow;
    cxDBMultiEditorTandaTerima: TcxDBMultiEditorRow;
    cxCategoryPenyerahan: TcxCategoryRow;
    cxMultiPenyerahan: TcxDBMultiEditorRow;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    QCetakBPKB: TUniQuery;
    dsQCetakBPKB: TUniDataSource;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    QPenerbitanBPKB: TUniQuery;
    dsQPenerbitanBPKB: TUniDataSource;
    QOperator: TUniQuery;
    dsQOperator: TUniDataSource;
    cxDBVerticalGrid3: TcxDBVerticalGrid;
    DBNavigator3: TDBNavigator;
    cxDBVerticalGrid3CategoryRow1: TcxCategoryRow;
    cxDBVerticalGrid3DBEditorRow1: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow2: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow3: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow4: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow5: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow6: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow7: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow8: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow9: TcxDBEditorRow;
    cxDBVerticalGrid3CategoryRow2: TcxCategoryRow;
    cxDBVerticalGrid3DBEditorRow10: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow11: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow12: TcxDBEditorRow;
    QPendaftaran: TUniQuery;
    dsQPendaftaran: TUniDataSource;
    QPemohon: TUniQuery;
    dsQPemohon: TUniDataSource;
    QTukar: TUniQuery;
    dsQTukar: TUniDataSource;
    uniSPTampilBPKBTukar: TUniStoredProc;
    dsuniSPTampilBPKBTukar: TUniDataSource;
    cxTabSheet11: TcxTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    eNoBPKB1Tukar: TcxTextEdit;
    eNoBPKB2Tukar: TcxTextEdit;
    dtTukar: TcxDateEdit;
    mKeterangan: TcxMemo;
    cxButton1: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    CRDBGrid1: TCRDBGrid;
    cxPageControl3: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    QHistory: TUniQuery;
    dsQHistory: TUniDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    qPRB: TUniQuery;
    dsqPRB: TUniDataSource;
    QHistNamaPemilik: TUniQuery;
    dsQHistNamaPemilik: TUniDataSource;
    QHistAlamat: TUniQuery;
    dsQHistAlamat: TUniDataSource;
    QWilayah: TUniQuery;
    dsQWilayah: TUniDataSource;
    QBentuk: TUniQuery;
    dsQBentuk: TUniDataSource;
    QHistBlokir: TUniQuery;
    dsQHistBlokir: TUniDataSource;
    QHistNopol: TUniQuery;
    dsQHistNopol: TUniDataSource;
    QHistWarna: TUniQuery;
    dsQHistWarna: TUniDataSource;
    cxPageControl4: TcxPageControl;
    cxTabSheet18: TcxTabSheet;
    cxTabSheet19: TcxTabSheet;
    cxTabSheet20: TcxTabSheet;
    cxTabSheet21: TcxTabSheet;
    cxTabSheet22: TcxTabSheet;
    DBNavigator5: TDBNavigator;
    cxGrid3: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    DBNavigator6: TDBNavigator;
    cxGrid4: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    DBNavigator7: TDBNavigator;
    cxGrid5: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBTableView6Column1: TcxGridDBColumn;
    cxGridDBTableView6Column2: TcxGridDBColumn;
    cxGridDBTableView6Column3: TcxGridDBColumn;
    cxGridDBTableView6Column4: TcxGridDBColumn;
    cxGridDBTableView6Column5: TcxGridDBColumn;
    cxGridDBTableView6Column6: TcxGridDBColumn;
    cxGridDBTableView6Column9: TcxGridDBColumn;
    cxGridDBTableView6Column10: TcxGridDBColumn;
    cxGridDBTableView6Column11: TcxGridDBColumn;
    cxGridDBTableView6Column12: TcxGridDBColumn;
    cxGridDBTableView6Column13: TcxGridDBColumn;
    cxGridDBTableView6Column14: TcxGridDBColumn;
    cxGridDBTableView6Column15: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    DBNavigator8: TDBNavigator;
    cxGrid6: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    DBNavigator9: TDBNavigator;
    cxGrid7: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    DBNavigator10: TDBNavigator;
    cxGrid8: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    cxGridDBTableView9Column1: TcxGridDBColumn;
    QWarnaTNKB: TUniQuery;
    dsQWarnaTNKB: TUniDataSource;
    cxTabSheet12: TcxTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    eNoBPKB_Perbaikan: TcxTextEdit;
    Label15: TLabel;
    dtTgl_Perbaikan: TcxDateEdit;
    Label16: TLabel;
    rbPribadi_Perbaikan: TRadioButton;
    rbBJ_Perbaikan: TRadioButton;
    cbPemohon_Perbaikan: TcxDBLookupComboBox;
    Label17: TLabel;
    Label18: TLabel;
    eNoResiPembayaran_Perbaikan: TcxTextEdit;
    Label19: TLabel;
    cbPetugas_Perbaikan: TcxDBLookupComboBox;
    bSimpan_Perbaikan: TcxButton;
    bBaru_Perbaikan: TcxButton;
    QPemohon1: TUniQuery;
    QPemohon2: TUniQuery;
    dsQPemohon2: TUniDataSource;
    dsQPemohon1: TUniDataSource;
    QPetugas1: TUniQuery;
    QPetugas2: TUniQuery;
    dsQPetugas2: TUniDataSource;
    dsQPetugas1: TUniDataSource;
    cxButton2: TcxButton;
    cxTabSheet13: TcxTabSheet;
    Label20: TLabel;
    Label21: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxButton3: TcxButton;
    Label22: TLabel;
    cxTextEdit2: TcxTextEdit;
    Label23: TLabel;
    cxTextEdit3: TcxTextEdit;
    Label24: TLabel;
    cxButton4: TcxButton;
    Q: TUniQuery;
    Q2: TUniQuery;
    cxTabSheet14: TcxTabSheet;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxDateEdit1: TcxDateEdit;
    cxMemo1: TcxMemo;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    CRDBGrid2: TCRDBGrid;
    cxGridDBTableView7Column1: TcxGridDBColumn;
    QPekerjaan: TUniQuery;
    dsQPekerjaan: TUniDataSource;
    QPolda: TUniQuery;
    dsQPolda: TUniDataSource;
    QPolres: TUniQuery;
    dsQPolres: TUniDataSource;
    DBNavigator4: TDBNavigator;
    QDataUtama: TUniQuery;
    procedure eNoBPKBPropertiesChange(Sender: TObject);
    procedure eNRegBPKBPropertiesChange(Sender: TObject);
    procedure eNoPolisiPropertiesChange(Sender: TObject);
    procedure eNoRangkaPropertiesChange(Sender: TObject);
    procedure eNoMesinPropertiesChange(Sender: TObject);
    procedure eNamaPemilikPropertiesChange(Sender: TObject);
    procedure eNoFakturPropertiesChange(Sender: TObject);
    procedure bCariClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure bBaru_PerbaikanClick(Sender: TObject);
    procedure bSimpan_PerbaikanClick(Sender: TObject);
    procedure rbPribadi_PerbaikanClick(Sender: TObject);
    procedure rbBJ_PerbaikanClick(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView3CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    tStatusData : String; // 1=jk data ditemukan di t_bpkb_master, 2=jika ditemukan di t_berkas
    procedure RefreshImpMetode;
    procedure RefreshJD;
    procedure RefreshMerk;
    procedure RefreshBB;
    procedure RefreshModel;
    procedure RefreshJenis;
    procedure RefreshWarna;
    procedure RefreshPeruntukan;
    procedure RefreshOperator;
    procedure RefreshPemohon;
    procedure RefreshDataUtama;
    procedure RefreshCetakBPKB;
    procedure RefreshStatusPenerbitanBPKB;
    procedure RefreshPendaftaran;
    procedure RefreshDataBPKBTukar;
    procedure SimpanTukarBPKB;
    procedure RefreshPerubahan;
    procedure RefreshHistory;
    procedure RefreshHistoryNamaPemilik;
    procedure RefreshHistoryAlamatPemilik;
    procedure RefreshWilayah;
    procedure RefreshBentuk;
    procedure RefreshBlokir;
    procedure RefreshHistoryNopol;
    procedure RefreshHistoryWarna;
    procedure RefreshWarnaTNKB;
    function NoResiPembayaranBank:String;
    procedure RefreshCbPemohon;
    procedure RefreshCbPetugas;
    procedure TukarBPKB;
    procedure RefreshPekerjaan;
    procedure RefreshPolda;
    procedure RefreshPolres;
  end;

var
  fEditDataBPKB: TfEditDataBPKB;

implementation
Uses
  uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfEditDataBPKB.eNoBPKBPropertiesChange(Sender: TObject);
begin
  eNRegBPKB.Clear;
  eNoPolisi.Clear;
  eNoRangka.Clear;
  eNoMesin.Clear;
  eNamaPemilik.Clear;
  eNoFaktur.Clear;
end;

procedure TfEditDataBPKB.eNRegBPKBPropertiesChange(Sender: TObject);
begin
  eNoBPKB.Clear;
  eNoPolisi.Clear;
  eNoRangka.Clear;
  eNoMesin.Clear;
  eNamaPemilik.Clear;
  eNoFaktur.Clear;
end;

procedure TfEditDataBPKB.eNoPolisiPropertiesChange(Sender: TObject);
begin
  eNRegBPKB.Clear;
  eNoBPKB.Clear;
  eNoRangka.Clear;
  eNoMesin.Clear;
  eNamaPemilik.Clear;
  eNoFaktur.Clear;
end;

procedure TfEditDataBPKB.eNoRangkaPropertiesChange(Sender: TObject);
begin
  eNRegBPKB.Clear;
  eNoPolisi.Clear;
  eNoBPKB.Clear;
  eNoMesin.Clear;
  eNamaPemilik.Clear;
  eNoFaktur.Clear;
end;

procedure TfEditDataBPKB.eNoMesinPropertiesChange(Sender: TObject);
begin
  eNRegBPKB.Clear;
  eNoPolisi.Clear;
  eNoRangka.Clear;
  eNoBPKB.Clear;
  eNamaPemilik.Clear;
  eNoFaktur.Clear;
end;

procedure TfEditDataBPKB.eNamaPemilikPropertiesChange(Sender: TObject);
begin
  eNRegBPKB.Clear;
  eNoPolisi.Clear;
  eNoRangka.Clear;
  eNoMesin.Clear;
  eNoBPKB.Clear;
  eNoFaktur.Clear;
end;

procedure TfEditDataBPKB.eNoFakturPropertiesChange(Sender: TObject);
begin
  eNRegBPKB.Clear;
  eNoPolisi.Clear;
  eNoRangka.Clear;
  eNoMesin.Clear;
  eNamaPemilik.Clear;
  eNoBPKB.Clear;
end;

procedure TfEditDataBPKB.bCariClick(Sender: TObject);
var
  isCari : integer;
  vCari : String;
begin
  fWait.Show;
  Application.ProcessMessages;
  isCari := 0;
  if eNoBPKB.Text <> '' then
  begin
    if cbNoBPKB.ItemIndex = 0 then
       isCari := 1
    else
       isCari := 2;
    vCari := eNoBPKB.Text;
  end
  else if eNRegBPKB.Text <> '' then
  begin
    if cbNRegBPKB.ItemIndex = 0 then
       isCari := 3
    else
       isCari := 4;
    vCari := eNRegBPKB.Text;
  end
  else if eNoPolisi.Text <> '' then
  begin
    if cbNoPolisi.ItemIndex = 0 then
       isCari := 5
    else
       isCari := 6;
    vCari := eNoPolisi.Text;
  end
  else if eNoRangka.Text <> '' then
  begin
    if cbNoRangka.ItemIndex = 0 then
       isCari := 7
    else
       isCari := 8;
    vCari := eNoRangka.Text;
  end
  else if eNoMesin.Text <> '' then
  begin
    if cbNoMesin.ItemIndex = 0 then
       isCari := 9
    else
       isCari := 10;
    vCari := eNoMesin.Text;
  end
  else if eNamaPemilik.Text <> '' then
  begin
    if cbNamaPemilik.ItemIndex = 0 then
       isCari := 11
    else
       isCari := 12;
    vCari := eNamaPemilik.Text;
  end
  else if eNoFaktur.Text <> '' then
  begin
    if cbNoFaktur.ItemIndex = 0 then
       isCari := 13
    else
       isCari := 14;
    vCari := eNoFaktur.Text
  end;

  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_data_for_list_edit';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_is_cari',ptinput).AsString := IntToStr(isCari);
      Params.CreateParam(ftString,'v_cari',ptinput).AsString := vCari;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;

      fWait.Hide;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_data_for_list_edit%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfEditDataBPKB.RefreshImpMetode;
begin
  with QImpMetode do
  begin
    Close;
    SQL.Text := 'SELECT IMPMTHD_ID,IMPMTHD_NAME FROM M_CARA_IMPOR ORDER BY IMPMTHD_NAME';
    Open;
  end;
end;

procedure TfEditDataBPKB.RefreshJD;
begin
  with QJD do
  begin
    Close;
    SQL.Text := 'SELECT JD_ID,JD_NAMA FROM M_JENIS_DAFTARAN ORDER BY JD_NAMA';
    Open;
  end;
end;

procedure TfEditDataBPKB.RefreshMerk;
begin
  with QMerk do
  begin
    Close;
    SQL.Text := 'SELECT MERK_ID,MERK_NAMA_R FROM M_MERK ORDER BY MERK_NAMA_R';
    Open;
  end;
end;

procedure TfEditDataBPKB.RefreshBB;
begin
  with QBB do
  begin
    Close;
    SQL.Text := 'SELECT BB_ID,BB_NAMA FROM M_BAHANBAKAR ORDER BY BB_NAMA';
    Open;
  end;
end;

procedure TfEditDataBPKB.RefreshModel;
begin
  with QModel do
  begin
    Close;
    SQL.Text := 'SELECT MODEL_ID,MODEL_NAMA FROM M_MODEL ORDER BY MODEL_NAMA';
    Open;
  end;
end;

procedure TfEditDataBPKB.RefreshJenis;
begin
  with QJenis do
  begin
    Close;
    SQL.Text := 'SELECT JENIS_ID,JENIS_NAMA FROM M_JENIS ORDER BY JENIS_NAMA';
    Open;
  end;
end;

procedure TfEditDataBPKB.RefreshWarna;
begin
  with QWarna do
  begin
    Close;
    SQL.Text := 'SELECT WARNA_ID,WARNA_NAMA FROM M_WARNA ORDER BY WARNA_NAMA';
    Open;
  end;
end;

procedure TfEditDataBPKB.RefreshPeruntukan;
begin
  with QPeruntukan do
  begin
    Close;
    SQL.Text := 'SELECT PRT_ID,PRT_NAMA FROM M_PERUNTUKAN ORDER BY PRT_NAMA';
    Open;
  end;
end;

procedure TfEditDataBPKB.FormShow(Sender: TObject);
begin
  cbNoBPKB.Text := 'Sama Dengan';
  eNoBPKB.Text := '';
  cbNRegBPKB.Text := 'Sama Dengan';
  eNRegBPKB.Text := '';
  cbNoPolisi.Text := 'Sama Dengan';
  eNoPolisi.Text := '';
  cbNoRangka.Text := 'Sama Dengan';
  eNoRangka.Text := '';
  cbNoMesin.Text := 'Sama Dengan';
  eNoMesin.Text := '';
  cbNamaPemilik.Text := 'Sama Dengan';
  eNamaPemilik.Text := '';
  cbNoFaktur.Text := 'Sama Dengan';
  eNoFaktur.Text := '';
  eNoBPKB.SetFocus;
  RefreshImpMetode;
  RefreshJD;
  RefreshMerk;
  RefreshBB;
  RefreshModel;
  RefreshJenis;
  RefreshWarna;
  RefreshPeruntukan;
  RefreshOperator;
  RefreshPemohon;
  RefreshPerubahan;
  RefreshWilayah;
  RefreshWarnaTNKB;
  RefreshCbPetugas;
  RefreshCbPemohon;
end;

procedure TfEditDataBPKB.RefreshDataUtama;
begin
  with QDataUtama do
  begin
    Close;
    SQL.Text := 'SELECT a.BERKAS_ID,a.BPKB_ID,a.NO_BPKB,a.TGL_BPKB,a.TGL_FAKTUR,a.NO_RANGKA,a.NO_MESIN,a.NREG_BPKB,A.JML_RODA,A.THN_BUAT,A.THN_RAKIT,A.JML_SUMBU,A.VOL_SILINDER,'+
                'a.BB_ID,bb.BB_NAMA,a.MERK_ID,mrek.MERK_NAMA_R,A.TIPE,a.JENIS_ID,J.JENIS_NAMA,A.NO_UJI_TIPE,A.NO_UJI_BERKALA,A.JD_ID,JD.JD_NAMA,A.TEMPAT_KELUAR,A.NO_PABEAN,'+
                'A.TGL_PABEAN,A.PELABUHAN,A.IMPMTHD_ID,CI.IMPMTHD_NAME,a.NO_FAKTUR,A.NO_CKD,A.KETR_PABEAN,a.PRT_ID,UPPER(P.PRT_NAMA) AS PRT_NAMA,'+
                '(CASE WHEN a.BPKB_STATUS = 0 THEN ''TIDAK AKTIF'''+
                '      WHEN a.BPKB_STATUS = 1 THEN ''AKTIF'''+
                '      WHEN a.BPKB_STATUS = 2 THEN ''BLOKIR'''+
                '      WHEN a.BPKB_STATUS = 3 THEN ''MUTASI LUAR DAERAH'''+
                '      END)  AS  BPKB_STATUS,A.DUP_NR_COUNT,'+
                'A.DUP_NM_COUNT,A.INACTIVE_DATE,A.CURRENT_HISTID,A.TGL_PIB,A.NAMA_IMPORTIR,A.IS_BBN2,A.NO_PIB,A.NO_TPT,POLDA.POLDA_NAMA,POLRES.POLRES_NAMA'+
                ' FROM t_BPKB_MASTER a'+
                ' INNER JOIN M_BAHANBAKAR bb ON a.BB_ID=bb.BB_ID'+
                ' INNER JOIN M_MERK mrek ON A.MERK_ID=MREK.MERK_ID'+
                ' INNER JOIN M_JENIS j ON J.JENIS_ID=A.JENIS_ID'+
                ' INNER JOIN M_JENIS_DAFTARAN JD ON JD.JD_ID=A.JD_ID'+
                ' LEFT JOIN M_CARA_IMPOR CI ON CI.IMPMTHD_ID=A.IMPMTHD_ID'+
                ' INNER JOIN M_PERUNTUKAN P ON P.PRT_ID=A.PRT_ID'+
                ' INNER JOIN M_POLDA POLDA ON POLDA.POLDA_ID=A.POLDA_ID'+
                ' INNER JOIN M_POLRES POLRES ON POLRES.POLDA_ID=A.POLDA_ID AND POLRES.POLRES_KODE=A.POLRES_ID'+
                ' WHERE A.NO_BPKB=:NO_BPKB';

                {'SELECT a.BERKAS_ID,a.BPKB_ID,a.NO_BPKB,a.TGL_BPKB,a.TGL_FAKTUR,a.NO_RANGKA,a.NO_MESIN,a.NREG_BPKB,A.JML_RODA,A.THN_BUAT,A.THN_RAKIT,A.JML_SUMBU,A.VOL_SILINDER,'+
                'A.BB_ID,A.MERK_ID,A.TIPE,A.JENIS_ID,A.NO_UJI_TIPE,A.NO_UJI_BERKALA,A.JD_ID,A.TEMPAT_KELUAR,A.NO_PABEAN,'+
                'A.TGL_PABEAN,A.PELABUHAN,A.IMPMTHD_ID,a.NO_FAKTUR,A.NO_CKD,A.KETR_PABEAN,A.PRT_ID,a.BPKB_STATUS,A.DUP_NR_COUNT,'+
                'A.DUP_NM_COUNT,A.INACTIVE_DATE,A.CURRENT_HISTID,A.TGL_PIB,A.NAMA_IMPORTIR,A.IS_BBN2,A.NO_PIB,A.POLDA_ID,A.POLRES_ID,A.NO_TPT'+
                '  FROM t_BPKB_MASTER a'+
                ' WHERE A.NO_BPKB=:NO_BPKB';
                // -------------------------------------------------------------
                'SELECT  /*+ star */ a.BERKAS_ID,a.BPKB_ID,a.NO_BPKB,a.TGL_BPKB,a.TGL_FAKTUR,a.NO_RANGKA,a.NO_MESIN,a.NREG_BPKB,A.JML_RODA,A.THN_BUAT,A.THN_RAKIT,A.JML_SUMBU,A.VOL_SILINDER,'+
                'A.BB_ID,P.BB_NAMA,A.MERK_ID,M.MERK_NAMA_R,A.TIPE,A.JENIS_ID,N.JENIS_NAMA,A.NO_UJI_TIPE,A.NO_UJI_BERKALA,A.JD_ID,JD.JD_NAMA,A.TEMPAT_KELUAR,A.NO_PABEAN,'+
                'A.TGL_PABEAN,A.PELABUHAN,A.IMPMTHD_ID,CI.IMPMTHD_NAME,a.NO_FAKTUR,A.NO_CKD,A.KETR_PABEAN,A.PRT_ID,PRT.PRT_NAMA,a.BPKB_STATUS,A.DUP_NR_COUNT,'+
                'A.DUP_NM_COUNT,A.INACTIVE_DATE,A.CURRENT_HISTID,A.TGL_PIB,A.NAMA_IMPORTIR,A.IS_BBN2,A.NO_PIB,A.POLDA_ID,A.POLRES_ID,A.NO_TPT'+
                '  FROM t_BPKB_MASTER a'+
                '  LEFT JOIN m_MERK m ON m.MERK_ID = a.MERK_ID'+
                '  LEFT JOIN m_JENIS n ON n.JENIS_ID = a.JENIS_ID'+
                '  LEFT JOIN M_BAHANBAKAR p ON p.BB_ID = a.BB_ID'+
                '  LEFT JOIN M_JENIS_DAFTARAN jd ON A.JD_ID=JD.JD_ID'+
                '  LEFT JOIN M_CARA_IMPOR ci ON CI.IMPMTHD_ID=A.IMPMTHD_ID'+
                '  LEFT JOIN M_PERUNTUKAN prt On PRT.PRT_ID=A.PRT_ID'+
                ' WHERE A.NO_BPKB=:NO_BPKB';
                // -------------------------------------------------------------  }
    try
      Params[0].AsString := uniSPTampil.FieldByName('NO_BPKB').AsString;
      Open;
      cxPageControl1.ActivePageIndex := 1;
      cxPageControl2.ActivePageIndex := 0;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..SelectDataUtama%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfEditDataBPKB.FormCreate(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;
  cxPageControl3.ActivePageIndex := 0;
  Application.ProcessMessages;
end;

procedure TfEditDataBPKB.RefreshCetakBPKB;
begin
  with QCetakBPKB do
  begin
    Close;
    SQL.Text := 'SELECT * FROM T_PRINT_DONE_STATUS WHERE BPKB_ID=:BPKB_ID';
    try
      ParamByName('BPKB_ID').AsString := uniSPTampil.FieldByName('BPKB_ID').AsString;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..T_PRINT_DONE_STATUS%Error '+E.Message);
    end;
    end;

  end;
end;

procedure TfEditDataBPKB.RefreshOperator;
begin
  with QOperator do
  begin
    Close;
    SQL.Text := 'SELECT OP_ID,OP_NAMA FROM T_OPERATOR ORDER BY OP_ID';
    Open;
  end;
end;

procedure TfEditDataBPKB.RefreshStatusPenerbitanBPKB;
begin
  with QPenerbitanBPKB do
  begin
    Close;
    SQL.Text := 'SELECT DAFTAR_BY,DAFTAR_DATE,ENTRI_BY,ENTRI_DATE,PRINT_KI_BY,PRINT_KI_DATE,VERIFY_BY,'+
                'VERIFY_DATE,PRINT_BPKB_BY,PRINT_BPKB_DATE,DELIVER_BY,DELIVER_DATE,ARCHIVE_BY,ARCHIVE_DATE,'+
                'PRINT_RCPT_BY,PRINT_RCPT_DATE,TT_BY,TT_DATE,DELIVER_MESSAGE'+
                ' FROM T_CHECKPOINT WHERE BERKAS_ID=:BERKAS_ID';
    try
      ParamByName('BERKAS_ID').AsString := uniSPTampil.FieldByName('BERKAS_ID').AsString;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..T_CHECKPOINT%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfEditDataBPKB.RefreshPendaftaran;
begin
  with QPendaftaran do
  begin
    Close;
    SQL.Text := 'SELECT A.DAFT_ID,A.NO_RANGKA,A.DUP_NR_COUNT,A.TGL_DAFTAR,A.BERKAS_ID,A.PEMOHON_ID,'+
                'A.TGL_ENTRI,A.OP_ID,A.LOKET_NO,A.ENROLLMENT_TYPE,A.TIPE_DAFTARAN,A.NO_FAKTUR,'+
                'B.BARCODE,B.CONF_DATE,B.PMT_ID,B.PMT_PROD'+
                ' FROM T_PENDAFTARAN2 A'+
                ' LEFT JOIN T_PAYMENT2 B ON A.DAFT_ID=B.DAFT_ID'+
                ' WHERE A.BERKAS_ID=:BERKAS_ID';
    try
      ParamByName('BERKAS_ID').AsString := uniSPTampil.FieldByName('BERKAS_ID').AsString;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..QPendaftaran%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfEditDataBPKB.RefreshPemohon;
begin
  with QPemohon do
  begin
    Close;
    SQL.Text := 'SELECT PEMOHON_ID,PEMOHON_NAMA FROM M_PEMOHON ORDER BY PEMOHON_NAMA';
    Open;
  end;
end;

procedure TfEditDataBPKB.cxButton11Click(Sender: TObject);
begin
  eNoBPKB1Tukar.Text := '';
  eNoBPKB2Tukar.Text := '';
  dtTukar.Text := '';
  mKeterangan.Text := '';
  eNoBPKB1Tukar.SetFocus;
end;

procedure TfEditDataBPKB.RefreshDataBPKBTukar;
begin
  with uniSPTampilBPKBTukar do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_data_tukar';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_no_bpkb1',ptinput).AsString := eNoBPKB1Tukar.Text;
      Params.CreateParam(ftString,'v_no_bpkb2',ptinput).AsString := eNoBPKB2Tukar.Text;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;

      fWait.Hide;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_data_tukar%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfEditDataBPKB.cxButton1Click(Sender: TObject);
begin
  if eNoBPKB1Tukar.Text <> '' then
  begin
    if eNoBPKB2Tukar.Text <> '' then
    begin
      RefreshDataBPKBTukar;
    end
    else
    begin
      MessageDlg('NO BPKB KEDUA HARUS DIISI',mtError,[mbOK],0);
      eNoBPKB2Tukar.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('NO BPKB PERTAMA HARUS DIISI',mtError,[mbOK],0);
    eNoBPKB1Tukar.SetFocus;
  end;
end;

procedure TfEditDataBPKB.SimpanTukarBPKB;
var
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_switc_bpkb_bbn1';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_no_bpkb',ptInput).AsString := eNoBPKB1Tukar.Text;
      uniSP.Params.CreateParam(ftString,'v_no_bpkb_2',ptInput).AsString := eNoBPKB2Tukar.Text;
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
      uniSP.ExecProc;

      fWait.Hide;
      Application.ProcessMessages;
      if Pos('KESALAHAN',uniSP.Params.ParamValues['RESULT']) > 0 then
         MessageDlg('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT'],mtError,[mbOK],0)
      else if Pos('INFORMASI',uniSP.Params.ParamValues['RESULT']) > 0 then
      begin
         // simpan data di log
         with DM.Q do
         begin
           Close;
           SQL.Text := 'INSERT INTO T_TUKAR_BPKB(NO_BPKB_AWAL,NO_BPKB_RUBAH_KE,TGL_PERUBAHAN,KETERANGAN,OP_ID)'+
                       ' VALUES(:NO_BPKB_AWAL,:NO_BPKB_RUBAH_KE,:TGL_PERUBAHAN,:KETERANGAN,:OP_ID)';
           try
             Params[0].AsString := eNoBPKB1Tukar.Text;
             Params[1].AsString := eNoBPKB2Tukar.Text;
             Params[2].AsDate := dtTukar.Date;
             Params[3].AsString := mKeterangan.Text;
             Params[4].AsString := vIDPetugas;
             Execute;
             MessageDlg('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT'],mtInformation,[MBOK],0)
           except on E: Exception do
           begin
             ErrorProgDialog('Error...Insert data t_tukar_bpkb. error '+E.Message);
           end;
           end;
         end;
      end
      else
         MessageDlg('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT'],mtError,[MBOK],0);
    except on E: Exception do
    begin
      ErrorProgDialog('Error... '+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfEditDataBPKB.cxButton10Click(Sender: TObject);
begin
  if eNoBPKB1Tukar.Text <> '' then
  begin
    if eNoBPKB2Tukar.Text <> '' then
    begin
      if dtTukar.Text <> '' then
      begin
        if mKeterangan.Text <> '' then
        begin
          if Length(mKeterangan.Text) > 10 then
          begin
            if MessageDlg('YAKIN DATA AKAN DITUKAR?',mtConfirmation,[mbYes,mbNo],0)=mrYEs then
               SimpanTukarBPKB;
          end
          else
          begin
            MessageDlg('PENYEBAB KESALAHAN PRINT HARUS DIISI DENGAN JALES',mtError,[mbOK],0);
            mKeterangan.SetFocus;
          end;
        end
        else
        begin
          MessageDlg('KETERANGAN PENYEBAB TERTUKAR HARUS DIISI',mtError,[mbOK],0);
          mKeterangan.SetFocus;
        end;
      end
      else
      begin
        MessageDlg('TANGGAL PROSES PENUKARAN DATA BPKB HARUS DIISI',mtError,[mbOK],0);
        dtTukar.SetFocus;
      end;
    end
    else
    begin
      MessageDlg('NO BPKB KEDUA HARUS DIISI',mtError,[mbOK],0);
      eNoBPKB2Tukar.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('NO BPKB PERTAMA HARUS DIISI',mtError,[mbOK],0);
    eNoBPKB1Tukar.SetFocus;
  end;
end;

procedure TfEditDataBPKB.RefreshPerubahan;
begin
  with qPRB do
  begin
    Close;
    SQL.Text := 'SELECT PRB_ID,NAMA_PRB FROM M_PERUBAHAN ORDER BY PRB_ID';
    Open;
  end;
end;

procedure TfEditDataBPKB.RefreshHistory;
begin
  with QHistory do
  begin
    Close;
    SQL.Text := 'SELECT HIST_ID,BPKB_ID,HIST_DATE,OP_ID,HIST_TITLE,NREG,REG_DATE,PRINTED_BY,DASAR_PERUBAHAN,PRB_ID,'+
                'PEMOHON,PRINTED_DATE,PINDAH_SAMSAT,PRINTED_FRONTPG_DATE,PRINTED_KI_BY,PRINTED_KI_DATE FROM T_HISTORY'+
                ' WHERE BPKB_ID=:BPKB';
    try
      Params[0].AsString := uniSPTampil.FieldByName('BPKB_ID').AsString;
      Open;
    except on E: Exception do
    begin
      ErrorProgDialog('Error...SELECT T_HISTORY '+E.Message);
    end;
    end;
  end;
end;

procedure TfEditDataBPKB.RefreshHistoryNamaPemilik;
begin
  with QHistNamaPemilik do
  begin
    Close;
    SQL.Text := 'SELECT HIST_ID,NO_IDENTITAS,NAMA_PEMILIK,PEKERJAAN_PEMILIK,NO_PONSEL FROM T_HIST_NAMAPEMILIK'+
                ' WHERE HIST_ID=:HIST_ID';
    try
      ParamByName('HIST_ID').AsString := QHistory.FieldByName('HIST_ID').AsString;
      Open;
    except on E: Exception do
    begin
      ErrorProgDialog('Error...Select History Nama Pemilik'+E.Message);
    end;
    end;
  end;
end;

procedure TfEditDataBPKB.RefreshHistoryAlamatPemilik;
begin
  with QHistAlamat do
  begin
    Close;
    SQL.Text := 'SELECT HIST_ID,ALAMAT_PEMILIK,KODE_POS,WILAYAH_ID,KEL_ID,KEC_ID,KAB_ID,PROP_ID FROM T_HIST_ALAMATPEMILIK'+
                ' WHERE HIST_ID=:HIST_ID';
    try
      ParamByName('HIST_ID').AsString := QHistory.FieldByName('HIST_ID').AsString;
      Open;
    except on E: Exception do
    begin
      ErrorProgDialog('Error... Select History Alamat '+E.Message);
    end;
    end;
  end;
end;

procedure TfEditDataBPKB.RefreshWilayah;
begin
  with QWilayah do
  begin
    Close;
    SQL.Text := 'SELECT WILAYAH_KODE,WILAYAH_NAMA FROM M_WILAYAH ORDER BY WILAYAH_KODE';
    Open;
  end;
end;

procedure TfEditDataBPKB.RefreshBentuk;
begin
  with QBentuk do
  begin
    Close;
    SQL.Text := 'SELECT HIST_ID,MODEL_ID,JENIS_ID FROM T_HIST_BENTUK WHERE HIST_ID=:HIST_ID';
    try
      ParamByName('HIST_ID').AsString := QHistory.FieldByName('HIST_ID').AsString;
      Open;
    except on E: Exception do
    begin
      ErrorProgDialog('Error...THistBentuk '+E.Message);
    end;
    end;

  end;
end;

procedure TfEditDataBPKB.RefreshBlokir;
begin
  with QHistBlokir do
  begin
    Close;
    SQL.Text := 'SELECT HB_ID,TGL_ENTRI,BPKB_ID,(CASE WHEN HB_BLOKIR = 0 THEN ''PERDATA'''+
                ' WHEN HB_BLOKIR = 1 THEN ''PIDANA'''+
                ' WHEN HB_BLOKIR = 2 THEN ''DUPLIKAT'''+
                ' END)  AS  HB_BLOKIR,HB_NOSURAT,HB_TANGGAL,HB_ALASAN,HB_PEMOHON,HB_ALAMATPEMOHON,'+
                'HB_NOSURATPEMOHON,HB_TGLSURATPEMOHON,HB_PERIHALSRTPMHN,OP_ID,PRINTED,PIDANA,HB_NOSURATBLKREF,'+
                'JENIS_BLOKIR,OPERATOR_NAMA,POLDA_ID,POLRES_ID,HB_TGL_AKHIR,HB_KOTAPMH'+
                ' FROM T_HIST_BLOKIR WHERE BPKB_ID=:BPKB_ID';
    try
      Params[0].AsString := uniSPTampil.FieldByName('BPKB_ID').AsString;
      Open;
    except on E: Exception do
    begin
      ErrorProgDialog('Error...THIST_BLOKIR '+E.Message);
    end;
    end;
  end;
end;

procedure TfEditDataBPKB.RefreshHistoryNopol;
begin
  with QHistNopol do
  begin
    Close;
    SQL.Text := 'SELECT HIST_ID,NO_POLISI,WARNATNKB_ID,DUP_NP_COUNT,NO_POLISI_LAMA FROM T_HIST_NOPOLISI WHERE HIST_ID=:HIST_ID';
    try
      ParamByName('HIST_ID').AsString := QHistory.FieldByName('HIST_ID').AsString;
      Open;
    except on E: Exception do
    begin
      ErrorProgDialog('Error...T_HIST_NOPOL '+E.Message);
    end;
    end;
  end;
end;

procedure TfEditDataBPKB.RefreshHistoryWarna;
begin
  with QHistWarna do
  begin
    Close;
    SQL.Text := 'SELECT HIST_ID,WARNA_ID FROM T_HIST_WARNA WHERE HIST_ID=:HIST_ID';
    try
      ParamByName('HIST_ID').AsString := QHistory.FieldByName('HIST_ID').AsString;
      Open;
    except on E: Exception do
    begin
      ErrorProgDialog('Error...T_HIST_WARNA '+E.Message);
    end;
    end;
  end;
end;

procedure TfEditDataBPKB.RefreshWarnaTNKB;
begin
  with QWarnaTNKB do
  begin
    Close;
    SQL.Text := 'SELECT WARNATNKB_ID,WARNATNKB FROM M_WARNATNKB ORDER BY WARNATNKB_ID';
    Open;
  end;
end;

procedure TfEditDataBPKB.bBaru_PerbaikanClick(Sender: TObject);
begin
  eNoBPKB_Perbaikan.Text := '';
  dtTgl_Perbaikan.Text := '';
  rbPribadi_Perbaikan.Checked := False;
  rbBJ_Perbaikan.Checked := False;
  cbPemohon_Perbaikan.Text := '';
  if TKODEBAYAR = '1' then
  begin
    eNoResiPembayaran_Perbaikan.Text := NoResiPembayaranBank;
  end
  else
  begin
    eNoResiPembayaran_Perbaikan.Text := '';
  end;
  cbPetugas_Perbaikan.Text := '';
  eNoBPKB_Perbaikan.SetFocus;
end;

function TfEditDataBPKB.NoResiPembayaranBank: String;
var
  uniSP : TUniStoredProc;
begin
  try
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_get_no_resi2';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'vKodeBank',ptInput).AsString := TKODEBANK;
      uniSP.Params.CreateParam(ftString,'vIDJenisPembayaran',ptInput).AsString := '2'; //1=BBN1; 9=BBN1 OTOMATIS; 2=BALIK NAMA; 3=DUPLIKAT; 4=GANTI BUKU; 5=EXL LUAR DAERAH; 6=MUTASI LD
      uniSP.Params.CreateParam(ftString,'vKDLoket',ptInput).AsString := TLoket;
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
      uniSP.ExecProc;
      Result := uniSP.Params.ParamValues['RESULT'];
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_no_resi2.ExecProc Ket Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfEditDataBPKB.bSimpan_PerbaikanClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
  if eNoBPKB_Perbaikan.Text <> '' then
  begin
    if dtTgl_Perbaikan.Text <> '' then
    begin
      if cbPemohon_Perbaikan.Text <> '' then
      begin
        if eNoResiPembayaran_Perbaikan.Text <> '' then
        begin
          if cbPetugas_Perbaikan.Text <> '' then
          begin
            try
            if MessageDlg('YAKIN PROSES AKAN DILANJUTKAN?',mtConfirmation,[mbYes,mbNo],0)=mrYEs then
            begin
              uniSP := TUniStoredProc.Create(Application);
              uniSP.Connection := DM.dbSrv;
              uniSP.Close;
              uniSP.StoredProcName := 'perbaikan_data_bn';
              try
                uniSP.Params.Clear;
                uniSP.Params.CreateParam(ftString,'vNO_BPKB',ptInput).AsString := eNoBPKB_Perbaikan.Text;
                uniSP.Params.CreateParam(ftString,'vPEMOHON_ID',ptInput).AsInteger := cbPemohon_Perbaikan.EditValue;
                uniSP.Params.CreateParam(ftString,'vPETUGAS_ID',ptInput).AsInteger := cbPetugas_Perbaikan.EditValue;
                uniSP.Params.CreateParam(ftString,'vBARCODE_BANK',ptInput).AsString := eNoResiPembayaran_Perbaikan.Text;
                uniSP.Params.CreateParam(ftString,'tTGL',ptInput).AsString := FormatDateTime('yyyymmdd',dtTgl_Perbaikan.Date);
                uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
                uniSP.ExecProc;
                MessageDlg(uniSP.Params.ParamValues['RESULT'],mtInformation,[mbOk],0);
              except on E:Exception do
              begin
                ErrorProgDialog('Error,..bpkb_get_no_resi2.ExecProc Ket Error :'+E.Message);
              end;
              end;
            end;
          finally
            FreeAndNil(uniSP);
          end;
          end
          else
          begin
            MessageDlg('Petugas harus diisi',mtError,[mbOK],0);
          end;
        end
        else
        begin
          MessageDlg('No resi harus diisi',mtError,[mbOK],0);
        end;
      end
      else
      begin
        MessageDlg('Pemohon harus harus diisi',mtError,[mbOK],0);
      end;
    end
    else
    begin
      MessageDlg('Tanggal Pendaftaran harus diisi',mtError,[mbOK],0);
    end;
  end
  else
  begin
    MessageDlg('No bpkb harus diisi',mtError,[mbOK],0);
  end;
end;

procedure TfEditDataBPKB.RefreshCbPemohon;
begin
  QPemohon1.Close;
  QPemohon1.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon where pemohon_jenis=:jenis order by nama';
  if rbPribadi_Perbaikan.Checked then
     QPemohon1.Params[0].AsString := 'PRIBADI'
  else if rbBJ_Perbaikan.Checked then
     QPemohon1.Params[0].AsString := 'BIROJASA';
  QPemohon1.Open;

  QPemohon2.Close;
  QPemohon2.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon where pemohon_jenis=:jenis order by nama';
  if rbPribadi_Perbaikan.Checked then
     QPemohon2.Params[0].AsString := 'PRIBADI'
  else if rbBJ_Perbaikan.Checked then
     QPemohon2.Params[0].AsString := 'BIROJASA';
  QPemohon2.Open;
end;

procedure TfEditDataBPKB.rbPribadi_PerbaikanClick(Sender: TObject);
begin
  RefreshCbPemohon;
  cbPemohon_Perbaikan.SetFocus;
end;

procedure TfEditDataBPKB.rbBJ_PerbaikanClick(Sender: TObject);
begin
RefreshCbPemohon;
  cbPemohon_Perbaikan.SetFocus;
end;

procedure TfEditDataBPKB.RefreshCbPetugas;
begin
  QPetugas1.Close;
  QPetugas1.SQL.Text := 'select to_char(OP_ID) as kode,OP_NAMA as nama from T_OPERATOR order by OP_NAMA';
  QPetugas1.Open;

  QPetugas2.Close;
  QPetugas2.SQL.Text := 'select to_char(OP_ID) as kode,OP_NAMA as nama from T_OPERATOR order by OP_NAMA';
  QPetugas2.Open;
end;

procedure TfEditDataBPKB.cxPageControl1Change(Sender: TObject);
begin
  if cxPageControl1.ActivePage = cxTabSheet12 then
  begin
    bBaru_Perbaikan.Click;
  end;
end;

procedure TfEditDataBPKB.cxButton3Click(Sender: TObject);
begin
  with Q do
  begin
    Close;
    SQL.Text := 'SELECT NREG_BPKB FROM T_BPKB_MASTER WHERE NO_BPKB=:NO_BPKB';
    try
      Params[0].AsString := cxTextEdit1.Text;
      Open;
      if recordcount > 0 then
      begin
        tStatusData := '1';  // update di tabel t_bpkb_master; dan t_berkas
        cxTextEdit2.Text := FieldByName('NREG_BPKB').AsString;
      end
      else
      begin
        MessageDlg('NO BPKB TIDAK DITEMUKAN DI TABEL BPKB_MASTER, LANJUT PENCARIAN DI TABEL BERKAS',mtInformation,[mbOK],0);

        Close;
        SQL.Text := 'SELECT NREG_BPKB FROM T_BERKAS WHERE NO_BPKB=:NO_BPKB';
        try
          Params[0].AsString := cxTextEdit1.Text;
          Open;
          if recordcount > 0 then
          begin
            tStatusData := '2';  // update di tabel t_berkas
            cxTextEdit2.Text := FieldByName('NREG_BPKB').AsString;
          end
          else
          begin
            MessageDlg('NO BPKB TIDAK DITEMUKAN',mtInformation,[mbOK],0);
          end;
        except on E: Exception do
        begin
          ErrorProgDialog('Error... '+E.Message);
        end;
        end;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error... '+E.Message);
    end;
    end;
  end;
end;

procedure TfEditDataBPKB.cxButton4Click(Sender: TObject);
begin
  if cxTextEdit1.Text <> '' then
  begin
    if cxTextEdit2.Text <> '' then
    begin
      if cxTextEdit2.Text <> cxTextEdit3.Text then
      begin
        if MessageDlg('YAKIN DATA AKAN DIRUBAH?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          if tStatusData = '1' then
          begin
            // cek dahulu di tabel t_berkas, ada apa tidak no reg yg baru, jika tidak ada cek di tabel t_bpkb_master, jk di t_bpkb_master tidak ada lanjutkan proses update data
            with Q2 do
            begin
              Close;
              SQL.Text := 'SELECT COUNT(*) FROM T_BERKAS WHERE NREG_BPKB=:NREG';
              try
                Params[0].AsString := cxTextEdit3.Text;
                Open;
                if Fields[0].AsInteger > 0 then
                begin
                  MessageDlg('DATA NO REGISTER BARU TIDAK BISA DI UPDATE, KARENA DATA SUDAH ADA T_BERKAS',mtError,[mbOK],0);
                end
                else
                begin
                  // cek data di t_bpkb_master
                  Close;
                  SQL.Text := 'SELECT COUNT(*) FROM T_BPKB_MASTER WHERE NREG_BPKB=:NREG';
                  try
                    Params[0].AsString := cxTextEdit3.Text;
                    Open;
                    if Fields[0].AsInteger > 0 then
                    begin
                      MessageDlg('DATA NO REGISTER BARU TIDAK BISA DI UPDATE, KARENA DATA SUDAH ADA TABEL T_BPKB_MASTER',mtError,[mbOK],0);
                    end
                    else
                    begin
                      Close;
                      SQL.Text := 'UPDATE T_BERKAS SET NREG_BPKB=:NREG_BPKB WHERE NO_BPKB=:NO_BPKB AND NREG_BPKB=:NREG_BPKB_LAMA';
                      try
                        Params[0].AsString := cxTextEdit3.Text;
                        Params[1].AsString := cxTextEdit1.Text;
                        Params[2].AsString := cxTextEdit2.Text;
                        Execute;

                        Close;
                        SQL.Text := 'UPDATE T_BPKB_MASTER SET NREG_BPKB=:NREG_BPKB WHERE NO_BPKB=:NO_BPKB AND NREG_BPKB=:NREG_BPKB_LAMA';
                        try
                          Params[0].AsString := cxTextEdit3.Text;
                          Params[1].AsString := cxTextEdit1.Text;
                          Params[2].AsString := cxTextEdit2.Text;
                          Execute;

                          Close;
                          SQL.Text := 'UPDATE T_PREV_BPKB SET NREG_BPKB=:NREG_BPKB WHERE NO_BPKB=:NO_BPKB AND NREG_BPKB=:NREG_BPKB_LAMA';
                          try
                            Params[0].AsString := cxTextEdit3.Text;
                            Params[1].AsString := cxTextEdit1.Text;
                            Params[2].AsString := cxTextEdit2.Text;
                            Execute;

                            // insert into log
                            Close;
                            SQL.Text := 'INSERT INTO T_LOG(NO_BPKB,KETERANGAN,ID_PETUGAS,TANGGAL) VALUES(:NO_BPKB,:KETERANGAN,:ID_PETUGAS,SYSDATE)';
                            try
                              Params[0].AsString := cxTextEdit1.Text;
                              Params[1].AsString := 'UPDATE NREG BPKB, KERANA KESALAHAN PEMBUATAN PROSES LABEL';
                              Params[2].AsInteger := StrToInt(vIDPetugas);
                              Execute;
                              MessageDlg('PROSES PERUBAHAN NREG BPKB DARI '+cxTextEdit2.Text+' KE '+cxTextEdit3.Text+' PADA NO BPKB '+cxTextEdit1.Text+' BERHASIL',mtInformation,[mbOK],0);
                            except on E: Exception do
                            begin
                              ErrorProgDialog('Error...iNSERT LOG '+E.Message);
                            end;
                            end;

                          except on E: Exception do
                          begin
                            ErrorProgDialog('Error... Update T_PREV_BPKB, no_bpkb='+cxTextEdit1.Text+' nreg='+cxTextEdit2.Text+' menjadi '+cxTextEdit3.Text+' ket error '+E.Message);
                          end;
                          end;
                        except on E: Exception do
                        begin
                          ErrorProgDialog('Error... Update t_bpkb_master, no_bpkb='+cxTextEdit1.Text+' nreg='+cxTextEdit2.Text+' menjadi '+cxTextEdit3.Text+' ket error '+E.Message);
                        end;
                        end;
                      except on E: Exception do
                      begin
                        ErrorProgDialog('Error... Update t_berkas, no_bpkb='+cxTextEdit1.Text+' nreg='+cxTextEdit2.Text+' menjadi '+cxTextEdit3.Text+' ket error '+E.Message);
                      end;
                      end;
                    end;
                  except on E: Exception do
                  begin
                    ErrorProgDialog('Error... '+E.Message);
                  end;
                  end;
                end;
              except on E: Exception do
              begin
                ErrorProgDialog('Error... '+E.Message);
              end;
              end;
            end;
          end
          else if tStatusData = '2' then
          begin
            // cek dahulu di tabel t_berkas, ada apa tidak no reg yg baru, jika tidak ada lanjutkan proses update data
            with Q2 do
            begin
              Close;
              SQL.Text := 'SELECT COUNT(*) FROM T_BERKAS WHERE NREG_BPKB=:NREG';
              try
                Params[0].AsString := cxTextEdit3.Text;
                Open;
                if Fields[0].AsInteger > 0 then
                begin
                  MessageDlg('DATA NO REGISTER BARU TIDAK BISA DI UPDATE, KARENA DATA SUDAH ADA T_BERKAS',mtError,[mbOK],0);
                end
                else
                begin
                  // cek data di t_bpkb_master
                  Close;
                  SQL.Text := 'SELECT COUNT(*) FROM T_BPKB_MASTER WHERE NREG_BPKB=:NREG';
                  try
                    Params[0].AsString := cxTextEdit3.Text;
                    Open;
                    if Fields[0].AsInteger > 0 then
                    begin
                      MessageDlg('DATA NO REGISTER BARU TIDAK BISA DI UPDATE, KARENA DATA SUDAH ADA TABEL T_BPKB_MASTER',mtError,[mbOK],0);
                    end
                    else
                    begin
                      Close;
                      SQL.Text := 'UPDATE T_BERKAS SET NREG_BPKB=:NREG_BPKB WHERE NO_BPKB=:NO_BPKB AND NREG_BPKB=:NREG_BPKB_LAMA';
                      try
                        Params[0].AsString := cxTextEdit3.Text;
                        Params[1].AsString := cxTextEdit1.Text;
                        Params[2].AsString := cxTextEdit2.Text;
                        Execute;

                        Close;
                        SQL.Text := 'UPDATE T_BPKB_MASTER SET NREG_BPKB=:NREG_BPKB WHERE NO_BPKB=:NO_BPKB AND NREG_BPKB=:NREG_BPKB_LAMA';
                        try
                          Params[0].AsString := cxTextEdit3.Text;
                          Params[1].AsString := cxTextEdit1.Text;
                          Params[2].AsString := cxTextEdit2.Text;
                          Execute;

                          Close;
                          SQL.Text := 'UPDATE T_PREV_BPKB SET NREG_BPKB=:NREG_BPKB WHERE NO_BPKB=:NO_BPKB AND NREG_BPKB=:NREG_BPKB_LAMA';
                          try
                            Params[0].AsString := cxTextEdit3.Text;
                            Params[1].AsString := cxTextEdit1.Text;
                            Params[2].AsString := cxTextEdit2.Text;
                            Execute;

                            // insert into log
                            Close;
                            SQL.Text := 'INSERT INTO T_LOG(NO_BPKB,KETERANGAN,ID_PETUGAS,TANGGAL) VALUES(:NO_BPKB,:KETERANGAN,:ID_PETUGAS,SYSDATE)';
                            try
                              Params[0].AsString := cxTextEdit1.Text;
                              Params[1].AsString := 'UPDATE NREG BPKB, KERANA KESALAHAN PEMBUATAN PROSES LABEL';
                              Params[2].AsInteger := StrToInt(vIDPetugas);
                              Execute;
                              MessageDlg('PROSES PERUBAHAN NREG BPKB DARI '+cxTextEdit2.Text+' KE '+cxTextEdit3.Text+' PADA NO BPKB '+cxTextEdit1.Text+' BERHASIL',mtInformation,[mbOK],0);
                            except on E: Exception do
                            begin
                              ErrorProgDialog('Error...iNSERT LOG '+E.Message);
                            end;
                            end;
                          except on E: Exception do
                          begin
                            ErrorProgDialog('Error... Update T_PREV_BPKB, no_bpkb='+cxTextEdit1.Text+' nreg='+cxTextEdit2.Text+' menjadi '+cxTextEdit3.Text+' ket error '+E.Message);
                          end;
                          end;
                        except on E: Exception do
                        begin
                          ErrorProgDialog('Error... Update t_bpkb_master, no_bpkb='+cxTextEdit1.Text+' nreg='+cxTextEdit2.Text+' menjadi '+cxTextEdit3.Text+' ket error '+E.Message);
                        end;
                        end;
                      except on E: Exception do
                      begin
                        ErrorProgDialog('Error... Update t_berkas, no_bpkb='+cxTextEdit1.Text+' nreg='+cxTextEdit2.Text+' menjadi '+cxTextEdit3.Text+' ket error '+E.Message);
                      end;
                      end;
                    end;
                  except on E: Exception do
                  begin
                    ErrorProgDialog('Error... '+E.Message);
                  end;
                  end;
                end;
              except on E: Exception do
              begin
                ErrorProgDialog('Error... '+E.Message);
              end;
              end;
            end;
          end;
        end;
      end
      else
      begin
        MessageDlg('DATA NO REGISTER SAMA, TIDAK BISA DIPROSES, GANTI DENGAN NO REGISTER YG LAIN',mtError,[mbOK],0);
        cxTextEdit1.SetFocus;
      end;
    end
    else
    begin
      MessageDlg('DATA BELUM DICARI',mtError,[mbOK],0);
      cxTextEdit1.SetFocus;
    end
  end
  else
  begin
    MessageDlg('DATA BELUM DICARI',mtError,[mbOK],0);
    cxTextEdit1.SetFocus;
  end;
end;

procedure TfEditDataBPKB.cxButton7Click(Sender: TObject);
begin
  cxTextEdit4.Text := '';
  cxTextEdit5.Text := '';
  cxDateEdit1.Text := '';
  cxMemo1.Text := '';
  cxTextEdit4.SetFocus;
end;

procedure TfEditDataBPKB.cxButton5Click(Sender: TObject);
begin
  if cxTextEdit4.Text <> '' then
  begin
    if cxTextEdit5.Text <> '' then
    begin
      with uniSPTampilBPKBTukar do
      begin
        Active := False;
        StoredProcName := 'bpkb_get_data_tukar';
        try
          Params.Clear;
          Params.CreateParam(ftString,'v_no_bpkb1',ptinput).AsString := cxTextEdit4.Text;
          Params.CreateParam(ftString,'v_no_bpkb2',ptinput).AsString := cxTextEdit5.Text;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          fWait.Hide;
        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_data_tukar%Error '+E.Message);
        end;
        end;
      end;
    end
    else
    begin
      MessageDlg('NO BPKB KEDUA HARUS DIISI',mtError,[mbOK],0);
      cxTextEdit5.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('NO BPKB PERTAMA HARUS DIISI',mtError,[mbOK],0);
    cxTextEdit4.SetFocus;
  end;
end;

procedure TfEditDataBPKB.TukarBPKB;
var
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_rubah_no_bpkb';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_no_bpkb',ptInput).AsString := cxTextEdit4.Text;
      uniSP.Params.CreateParam(ftString,'v_no_bpkb_2',ptInput).AsString := cxTextEdit5.Text;
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
      uniSP.ExecProc;

      fWait.Hide;
      Application.ProcessMessages;
      if Pos('KESALAHAN',uniSP.Params.ParamValues['RESULT']) > 0 then
         MessageDlg('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT'],mtError,[mbOK],0)
      else if Pos('INFORMASI',uniSP.Params.ParamValues['RESULT']) > 0 then
      begin
         // simpan data di log
         with DM.Q do
         begin
           Close;
           SQL.Text := 'INSERT INTO T_TUKAR_BPKB(NO_BPKB_AWAL,NO_BPKB_RUBAH_KE,TGL_PERUBAHAN,KETERANGAN,OP_ID)'+
                       ' VALUES(:NO_BPKB_AWAL,:NO_BPKB_RUBAH_KE,SYSDATE,:KETERANGAN,:OP_ID)';
           try
             Params[0].AsString := cxTextEdit4.Text;
             Params[1].AsString := cxTextEdit5.Text;
             //Params[2].AsDate := cxDateEdit1.Date;
             Params[2].AsString := '(RUBAH) '+cxMemo1.Text;
             Params[3].AsString := vIDPetugas;
             Execute;
             MessageDlg('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT'],mtInformation,[MBOK],0)
           except on E: Exception do
           begin
             ErrorProgDialog('Error...Insert data t_tukar_bpkb. error '+E.Message);
           end;
           end;
         end;
      end
      else
         MessageDlg('RESPONSE FROM SERVER : '+uniSP.Params.ParamValues['RESULT'],mtError,[MBOK],0);
    except on E: Exception do
    begin
      ErrorProgDialog('Error... '+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfEditDataBPKB.cxButton6Click(Sender: TObject);
begin
  if cxTextEdit4.Text <> '' then
  begin
    if cxTextEdit5.Text <> '' then
    begin
      if cxDateEdit1.Text <> '' then
      begin
        if cxMemo1.Text <> '' then
        begin
          if Length(cxMemo1.Text) > 10 then
          begin
            if MessageDlg('YAKIN DATA AKAN DITUKAR?',mtConfirmation,[mbYes,mbNo],0)=mrYEs then
               TukarBPKB;
          end
          else
          begin
            MessageDlg('PENYEBAB KESALAHAN PRINT HARUS DIISI DENGAN JALES',mtError,[mbOK],0);
            cxMemo1.SetFocus;
          end;
        end
        else
        begin
          MessageDlg('KETERANGAN PENYEBAB TERTUKAR HARUS DIISI',mtError,[mbOK],0);
          cxMemo1.SetFocus;
        end;
      end
      else
      begin
        MessageDlg('TANGGAL PROSES PENUKARAN DATA BPKB HARUS DIISI',mtError,[mbOK],0);
        cxDateEdit1.SetFocus;
      end;
    end
    else
    begin
      MessageDlg('NO BPKB KEDUA HARUS DIISI',mtError,[mbOK],0);
      cxTextEdit5.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('NO BPKB PERTAMA HARUS DIISI',mtError,[mbOK],0);
    cxTextEdit4.SetFocus;
  end;
end;

procedure TfEditDataBPKB.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  fWait.Show;
  Application.ProcessMessages;
  RefreshDataUtama;
  RefreshCetakBPKB;
  RefreshStatusPenerbitanBPKB;
  RefreshPendaftaran;
  RefreshHistory;
  RefreshHistoryNamaPemilik;
  RefreshHistoryAlamatPemilik;
  RefreshBentuk;
  RefreshHistoryNopol;
  RefreshHistoryWarna;
  RefreshModel;
  RefreshPekerjaan;
  RefreshPemohon;
  RefreshOperator;
  RefreshBlokir;
  fWait.Hide;
end;

procedure TfEditDataBPKB.RefreshPekerjaan;
begin
  with QPekerjaan do
  begin
    Close;
    SQL.Text := 'SELECT PEKERJAAN_NAMA FROM M_PEKERJAAN ORDER BY PEKERJAAN_NAMA';
    try
      Open;
    except on E: Exception do
    begin
      ErrorProgDialog('Error...M_PEKERJAAN '+E.Message);
    end;
    end;
  end;
end;

procedure TfEditDataBPKB.RefreshPolda;
begin
  with QPolda do
  begin
    Close;
    SQL.Text := 'SELECCT POLDA_ID,POLDA_NAMA FROM M_POLDA ORDER BY POLDA_NAMA';
    Open;
  end;
end;

procedure TfEditDataBPKB.RefreshPolres;
begin
  with QPolres do
  begin
    Close;
    SQL.Text := 'SELECCT POLDA_ID,POLRES_KODE,POLRES_NAMA FROM M_POLRES ORDER BY POLRES_NAMA';
    Open;
  end;
end;

procedure TfEditDataBPKB.cxGridDBTableView3CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  fWait.Show;
  Application.ProcessMessages;
  RefreshHistoryNamaPemilik;
  RefreshHistoryAlamatPemilik;
  RefreshBentuk;
  RefreshHistoryNopol;
  RefreshHistoryWarna;
  RefreshPekerjaan;
  RefreshWarnaTNKB;
  RefreshJenis;
  RefreshWarna;
  fWait.Hide;
end;

end.
