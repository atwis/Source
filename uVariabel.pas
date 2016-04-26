unit uVariabel;

interface
uses
   SysUtils, Forms, Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
   dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxStatusBarPainter,
   dxStatusBar, dxSkinsdxNavBar2Painter, dxNavBarCollns, cxClasses,
   dxNavBarBase, dxNavBar, dxSkinscxPCPainter, cxPC, cxSplitter,
   uRegistrasi, uVerifikasiBBN1, uPenulisanBBN1;

var
   aFormRegistrasi : TfRegistrasi;
   aFormfVerifikasiBBN1 : TfVerifikasiBBN1;
   aFormPenulisanBBN1 : TfPenulisanBBN1;
   
   RootPath : String;
   TJudul,TPerusahaan,TKota,TAlamatPerusahaan,TTelpPerusahaan,TFaxPerusahaan,TKDPOLDA : String;
   THOST_SERVER, TPORT_SERVER, TUSER_SERVER, TPASSW_SERVER, TSID_SERVER,
   THOST_SRV_APM,TPORT_SRV_APM : String;
   TKODEBANK,TKODEBAYAR : String; // inisialisasi kode bayar
   TCETAKSTR,TCETAKLREG : String; // inisialisasi cetak struk bank & label register
   TdefWSDL,TdefURL,TdefSvc,TdefPrt : String; // web service atpm polda metro
   TISSETTING : String; // inisaialisasi setting awal
   vPetugasInisial,vIDPetugas,vNamaPetugas,vLevelPetugas,vJabatanPetugas,vAktif,vNRP,vPOLDAID,vPOLRESID,vSeriBPKB,vOPLogin,
   vKdWilayahBPKB,vBLTHNRegBPKB,vAkhiranNRegBPKB,vKota,vNopolAwal,TLoket,TKDSamsat,vBPKBDikeluarkanOleh : String;
   vPNBPR2,vPNBPR4 : integer; // menempung nominal pnbp
   vIsCariLangsung : sTRING; // Cari langsung pada saat print bpkb, 0 dengan 2 kondisi, 1=dengan 1 kondisi
   tISTIMER : String;
   tWaktu : String;
   IMenit : Int64;
   tToleransi : Real; // penampung nilai toleransi yg di perbolehkan
   //vISNopolLama : String; // 0 menggunakan nopol baru, 1 mengunakan nopol lama
   //vBPKB_ID_Pertama,vBerkas_ID_Pertama : String; // penampung untuk bpkb id yg pertama
   //vNopolPertama_1,vNopolPertama_2,vNopolPertama_3 : String; // penampung nopol awal bpkb
   //vIsCetakTandaTangan : String; // 1=bbn1 R2; 2=bbn1 R4; 3=Balik Nama R2; 4=Balik Nama R4; 5=Perubahan Identitas; 6=Mutasi Luar Daerah;
   //vISNOPOL : Boolean; // status nopol true or false
   //tBerkasID,vBPKB_ID,vHIST_ID : String;
   //IsProsesBBN1 : String; // 0 = pembuatan bpkb baru, 1 =  pembuatan bpkb duplikat, 2 = penggantian bpkb rusak
   vLokasiFont,vNamaFileFont,vNamaFont,vURLFont,vFolderHapus,vNamaFile,vNamaDirFontInstall : String; // lokasi font pertama kali di download dari server
   //vPagePosisi : Integer; // posisi cetak buku
   //vHBBlokir : String; // 0=BLOKIR 1=BUKA BLOKIR
   //vJnsBlokir: String; //0=PERDATA; 1=PIDANA; 2=DUPLIKAT
   veX1_CB,veY1_CB,veX2_CB,veY2_CB,veX3_CB,veY3_CB,veX4_CB,veY4_CB,
   veX1_BL_CB,veY1_BL_CB,veX2_BL_CB,veY2_BL_CB,veX3_BL_CB,veY3_BL_CB,veX4_BL_CB,veY4_BL_CB,
   // bbn2 buku baru kiri
   veXIDENTITAS_CB,veYIDENTITAS_CB,veXISIDATA_CB,veYISIDATA_CB,
   veXKOTA,veYKOTA,veXTGL,veYTGL,veXSJAB,veYSJAB,veXSNAMA,veYSNAMA,veXSNRP,veYSNRP,veXPic,veYPic,
   // bbn2 buku baru kanan
   veXIDENTITAS_CB2,veYIDENTITAS_CB2,veXISIDATA_CB2,veYISIDATA_CB2,
   veXKOTA2,veYKOTA2,veXTGL2,veYTGL2,veXSJAB2,veYSJAB2,veXSNAMA2,veYSNAMA2,veXSNRP2,veYSNRP2,veXPic2,veYPic2,
   // bbn2 buku lama kiri
   veXIDENTITAS_CB3,veYIDENTITAS_CB3,veXISIDATA_CB3,veYISIDATA_CB3,
   veXKOTA3,veYKOTA3,veXTGL3,veYTGL3,veXSJAB3,veYSJAB3,veXSNAMA3,veYSNAMA3,veXSNRP3,veYSNRP3,veXPic3,veYPic3,
   // bbn2 buku lama kanan
   veXIDENTITAS_CB4,veYIDENTITAS_CB4,veXISIDATA_CB4,veYISIDATA_CB4,
   veXKOTA4,veYKOTA4,veXTGL4,veYTGL4,veXSJAB4,veYSJAB4,veXSNAMA4,veYSNAMA4,veXSNRP4,veYSNRP4,veXPic4,veYPic4: real;
   //vBPKBIDCetakBuku,vBPKBID_V,vBerkasID_V,vBerkasIDCetakBuku : String;
   tSNHDD,TReport,vPassword : String;
   tabSheet : array[0..500] of TcxTabSheet;
   TTglSrvSkr : TDateTime;
   fFormAktif : TForm;
   IsConect : Boolean;
   bAction : Boolean;
   vRoleID : String;
   tKDBarang,tNamaBarang,tKDSatuan,tNamaSatuan : String;
   isFormQuery : String;
   vLokasiFileJPEG : String;
   TLIMITDATA : String;
   //isEdit : String;
   isTreaceLog : String;
   //vIDBlokir : String;
   
   TPRINTER_CF,TPRINTER_BPKB : String;
   TOnLineCF : String;
   tTglPembuatanLaporan : String;
   tIsTampilLapEditBPKB : String; // edit laporan bpkb = 1; tampil laporan bpkb = 0
   vDirFileEXEL,vNamaFileExel : String;
   vNOPOLFromSTNK : String; //0=NOPOL From BPKB, 1=NOPOL From STNK
   vNamaProp : String; // kode propinsi
   vKodeProp : integer;
   vBBN2Nopol : String; // 1=nopol lama tidak dicantumkan, 0=nopol lama dicantumkan
   
   // Report
   tHeader, tNoDok, tTglDok, tKetDok, tNoSPMM, tPolda, tPolres : String;
   tHari, tTanggal, tBulan, tTahun, tNoSPPM, tTglSPPM, tNamaMaterial, tNoAwal, tNoAkhir,
   tJumlah, tSatuan : String;

   isKeyBarcode : String;  // 0=BARCODE BERKAS; 1=NO BPKB

   tAktifasi,tUUIDKey : String;
   tURLUpdate : String;
   tThreadUpdate,tBufferUpdate : integer;
   tNoAwalMLD,tNoAkhirMLD : String;

   isFormEditVerifikasi,isNoBPKB : String; // BBN1
   isFormEditVerifikasiBN,isNoBPKBBN,isNoBPKBBNLama : String; // BBN1

implementation

end.
