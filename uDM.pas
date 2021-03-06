unit uDM;

interface

uses
  SysUtils, Classes, VirtualTable, DB, DBAccess, MemDS,
  cxGridBandedTableView, cxClasses, cxStyles, cxGridTableView, 
  Uni, UniProvider, OracleUniProvider, ImgList, Controls, cxGraphics,
  frxClass, frxDBSet, frxExportPDF, frxDesgn, SQLiteUniProvider;

type
  TDM = class(TDataModule)
    vtMaterialSrv: TVirtualTable;
    StyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyleRead: TcxStyle;
    SyteAku: TcxGridTableViewStyleSheet;
    GridBandedTableViewStyleSheetDevExpress: TcxGridBandedTableViewStyleSheet;
    dbSrv: TUniConnection;
    OracleUniProvider: TOracleUniProvider;
    Q: TUniTable;
    UniStoredProc1: TUniStoredProc;
    {frxReport: TfrxReport;
    frxDesigner: TfrxDesigner;
    frxPDFExport: TfrxPDFExport;
    frxDBDataset: TfrxDBDataset;}
    Q1: TUniTable;
    uniSPReport: TUniStoredProc;
    cxImageList1: TcxImageList;
    Q2: TUniTable;
    dbSrv2: TUniConnection;
    frxReport: TfrxReport;
    frxDesigner: TfrxDesigner;
    frxPDFExport: TfrxPDFExport;
    frxDBDataset: TfrxDBDataset;
    procedure DataModuleCreate(Sender: TObject);
    procedure frxReportGetValue(const VarName: String; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses
   uModul, uVariabel, uSettingDB, uMain;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  with dbSrv do
  begin
    Server := THOST_SERVER+':'+TPORT_SERVER+':'+TSID_SERVER;
    Username := TUSER_SERVER;
    Password := TPASSW_SERVER;
    fMain.TulisStatus(0,'SIFIK BPKB (#'+THOST_SERVER+')');
    //ConnectString := TUSER_SERVER+'/'+TPASSW_SERVER+'@'+THOST_SERVER+':'+TPORT_SERVER+':'+TSID_SERVER;
    try
      Connect;

      IsConect := True;
      Log('Koneksi Database Local DBSIFIK Berhasil!');

      // server ke 2
      {if TOnLineCF='1' then
      begin
        dbSrv2.Server := THOST_SERVER+':'+TPORT_SERVER+':'+TSID_SERVER;
        dbSrv2.Username := 'dbsifik_cf';
        dbSrv2.Password := 'p1k1r3ndh3w3';
        try
          dbSrv2.Connect;
          IsConect := True;
          Log('Koneksi Database Local DBSIFIK_CF Berhasil!');
        except on E: Exception do
        begin
           ErrorProg('Error, ConnectDataBase DBSIFIK_CF --> '+E.Message);
           IsConect := False;
           if fFormAktif <> nil then
              fFormAktif.Close;

           fSettingDB := TfSettingDB.Create(nil);
           fSettingDB.Parent := fMain.pProses;
           fFormAktif := fSettingDB;
           fSettingDB.Show;
        end;
        end;
      end;}
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

procedure TDM.frxReportGetValue(const VarName: String; var Value: Variant);
begin
  if VarName = 'HEADER' then
     Value := tHeader;
  if VarName = 'NoDok' then
     Value := tNoDok;
  if VarName = 'TglDok' then
     Value := tTglDok;
  if VarName = 'KetDok' then
     Value := tKetDok;
  if VarName = 'NoSPMM' then
     Value := tNoSPMM;
  if VarName = 'polda' then
     Value := tPolda;
  if VarName = 'polres' then
     Value := tPolres;
  if VarName = 'TEMPAT_KELUAR' then
     Value := TKota;
  if VarName = 'TEMPAT_KELUAR' then
     Value := TKota;
  if VarName = 'NAMA_OP' then
     Value := vNamaPetugas;
  if VarName = 'PANGKAT_OP' then
     Value := vJabatanPetugas;
  if VarName = 'NRP_OP' then
     Value := vNRP;
  if VarName = 'TANGGAL' then
     Value := tTglPembuatanLaporan;
  if VarName = 'TGL' then
     Value := tTglDok;

  if VarName = 'NoDok' then
     Value := tNoDok;
  if VarName = 'hari' then
     Value := tHari;
  if VarName = 'tanggal' then
     Value := tTanggal;
  if VarName = 'bulan' then
     Value := tBulan;
  if VarName = 'tahun' then
     Value := tTahun;
  if VarName = 'nosppm' then
     Value := tNoSPPM;
  if VarName = 'tglsppm' then
     Value := tTglSPPM;
  if VarName = 'namameterial' then
     Value := tNamaMaterial;
  if VarName = 'noawal' then
     Value := tNoAwal;
  if VarName = 'noakhir' then
     Value := tNoAkhir;
  if VarName = 'jumlah' then
     Value := tJumlah;
  if VarName = 'satuan' then
     Value := tSatuan;
end;

end.
