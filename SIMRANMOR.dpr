program SIMRANMOR;

uses
  Forms,
  SysUtils,
  uMain in 'uMain.pas' {fMain},
  uDM in 'uDM.pas' {DM: TDataModule},
  uCari in 'uCari.pas' {fCari},
  uInputMaterial in 'uInputMaterial.pas' {fInputMaterial},
  uInventoryMenu in 'uInventoryMenu.pas' {fInventoryMenu},
  uLabelMaterial in 'uLabelMaterial.pas' {fLabelMaterial},
  uLaporanMaterial in 'uLaporanMaterial.pas' {fLaporanMaterial},
  uLogin in 'uLogin.pas' {fLogin},
  uOrderMaterial in 'uOrderMaterial.pas' {fOrderMaterial},
  uPendistribusianMaterial in 'uPendistribusianMaterial.pas' {fPendistribusianMaterial},
  uSettingDB in 'uSettingDB.pas' {fSettingDB},
  APUtilCrpt in 'APUtilCrpt.pas',
  uModul in 'uModul.pas',
  uVariabel in 'uVariabel.pas',
  uBBN1Menu in 'uBBN1Menu.pas' {fBBN1Menu},
  uPemohon in 'uPemohon.pas' {fPemohon},
  uDataPerusahaan in 'uDataPerusahaan.pas' {fDataPerusahaan},
  uPendaftaran in 'uPendaftaran.pas' {fPendaftaran},
  uWait in 'uWait.pas' {fWait},
  uLabelBPKB in 'uLabelBPKB.pas' {fLabelBPKB},
  uSetting in 'uSetting.pas' {fSetting},
  uTunggu in 'uTunggu.pas',
  uRegistrasi in 'uRegistrasi.pas' {fRegistrasi},
  uKartuIndukBBN1 in 'uKartuIndukBBN1.pas' {fKartuIndukBBN1},
  uVerifikasiBBN1 in 'uVerifikasiBBN1.pas' {fVerifikasiBBN1},
  uPenulisanBBN1 in 'uPenulisanBBN1.pas' {fPenulisanBBN1},
  uUserManagement in 'uUserManagement.pas' {fUserManagement},
  uDataBPKB in 'uDataBPKB.pas' {fDataBPKB},
  uRefDataSamsat in 'uRefDataSamsat.pas' {fRefDataSamsat},
  uTandaTerimaBBN1 in 'uTandaTerimaBBN1.pas' {fTandaTerima},
  uPendaftaranBN in 'uPendaftaranBN.pas' {fPendaftaranBN},
  uRegistrasiBN in 'uRegistrasiBN.pas' {fRegistrasiBN},
  uKartuIndukBN in 'uKartuIndukBN.pas' {fKartuIndukBN},
  uTandaTerimaBN in 'uTandaTerimaBN.pas' {fTandaTerimaBN},
  uVerifikasiBN in 'uVerifikasiBN.pas' {fVerifikasiBN},
  uPenulisanBN in 'uPenulisanBN.pas' {fPenulisanBN},
  uPenyerahanBPKB in 'uPenyerahanBPKB.pas' {fPenyerahanBPKB},
  uPenyerahanBPKBBN in 'uPenyerahanBPKBBN.pas' {fPenyerahanBPKBBN},
  uBlokir in 'uBlokir.pas' {fBlokir},
  uManagementNOPOL in 'uManagementNOPOL.pas' {fManagementNOPOL},
  uPermintaanBonArsip in 'uPermintaanBonArsip.pas' {fPermintaanBonArsip},
  uPemusnahanBerkasBPKB in 'uPemusnahanBerkasBPKB.pas' {fPemusnahanBerkasBPKB},
  uPengarsipanBerkas in 'uPengarsipanBerkas.pas' {fPengarsipanBerkas},
  uPendaftaranMLD in 'uPendaftaranMLD.pas' {fPendaftaranMLD},
  uRegistrasiGB in 'uRegistrasiGB.pas' {fRegistrasiGB},
  uKartuIndukMLD in 'uKartuIndukMLD.pas' {fKartuIndukMLD},
  uTandaTerimaGB in 'uTandaTerimaGB.pas' {fTandaTerimaGB},
  uVerifikasiGB in 'uVerifikasiGB.pas' {fVerifikasiGB},
  uPenulisanGB in 'uPenulisanGB.pas' {fPenulisanGB},
  uPenyerahanBPKBMLD in 'uPenyerahanBPKBMLD.pas' {fPenyerahanMLD},
  uEntryMLD in 'uEntryMLD.pas' {fEntryMLD},
  uJenisPerubahan in 'uJenisPerubahan.pas' {fJenisPerubahan},
  uLaporanPerubahan in 'uLaporanPerubahan.pas' {fLaporanPerubahan},
  uKartuIndukPerubahan in 'uKartuIndukPerubahan.pas' {fKartuIndukPerubahan},
  uPendaftaranGB in 'uPendaftaranGB.pas' {fPendaftaranGB},
  uPerubahan in 'uPerubahan.pas' {fPerubahan},
  uKartuIndukGB in 'uKartuIndukGB.pas' {fKartuIndukBG},
  uPenyerahanBPKBGB in 'uPenyerahanBPKBGB.pas' {fPenyerahanGB},
  uPendaftaranDup in 'uPendaftaranDup.pas' {fPendaftaranDup},
  uRegistrasiDup in 'uRegistrasiDup.pas' {fRegistrasiDup},
  uKartuIndukDup in 'uKartuIndukDup.pas' {fKartuIndukDup},
  uTandaTerimaDup in 'uTandaTerimaDup.pas' {fTandaTerimaDup},
  uVerifikasiDup in 'uVerifikasiDup.pas' {fVerifikasiDup},
  uPenulisanDup in 'uPenulisanDup.pas' {fPenulisanDup},
  uPenyerahanBPKBDup in 'uPenyerahanBPKBDup.pas' {fPenyerahanDup},
  uPendaftaranExLD in 'uPendaftaranExLD.pas' {fPendaftaranExLD},
  uRegistrasiExLD in 'uRegistrasiExLD.pas' {fRegistrasiEXLD},
  uKartuIndukExLD in 'uKartuIndukExLD.pas' {fKartuIndukExLD},
  uTandaTerimaExLD in 'uTandaTerimaExLD.pas' {fTandaTerimaExLD},
  uVerifikasiExLD in 'uVerifikasiExLD.pas' {fVerifikasiExLD},
  uPenulisanExLD in 'uPenulisanExLD.pas' {fPenulisanExLD},
  uPenyerahanBPKBExLD in 'uPenyerahanBPKBExLD.pas' {fPenyerahanExLD},
  AtpmDataService1 in 'AtpmDataService1.pas',
  IWSDLPublish1 in 'IWSDLPublish1.pas',
  AtpmDataService2 in 'AtpmDataService2.pas',
  uJurnalBPKB in 'uJurnalBPKB.pas' {fJurnalBPKB},
  uMonitorPNBP in 'uMonitorPNBP.pas' {fMonitorPNBP},
  uImportDataFaktur in 'uImportDataFaktur.pas' {fImportDataFaktur},
  uCekAktifasi in 'uCekAktifasi.pas' {fCekAktifasi},
  uStatusPenerbitanBPKB in 'uStatusPenerbitanBPKB.pas' {fStatusPenerbitanBPKB},
  uMonitorPNBP2 in 'uMonitorPNBP2.pas' {fMonitorPNBP2},
  uLaporanPendaftaran in 'uLaporanPendaftaran.pas' {fLaporanPendaftaran},
  uEditDataBPKB in 'uEditDataBPKB.pas' {fEditDataBPKB},
  uLapMutasiLD in 'uLapMutasiLD.pas' {fLapMutasiLD},
  uLapBlokirBukaBlokir in 'uLapBlokirBukaBlokir.pas' {fLapBlokirBukaBlokir},
  uLapPenggunaanTTD in 'uLapPenggunaanTTD.pas' {fLapPenggunaanTTD},
  uHistoryBPKB in 'uHistoryBPKB.pas' {fHistoryBPKB},
  uLapL405B in 'uLapL405B.pas' {fLapL405B},
  uBlokirHistory in 'uBlokirHistory.pas' {fHistoryBlokir},
  uAPM in 'uAPM.pas' {FAPM},
  uSKETBPKB in 'uSKETBPKB.pas' {fSKETBPKB},
  uAdministrasiTTDBuku in 'uAdministrasiTTDBuku.pas' {fAdministrasiTTDBuku},
  uLaporanBBN1 in 'uLaporanBBN1.pas' {fLaporanBBN1},
  uLaporanBN in 'uLaporanBN.pas' {fLaporanBN},
  uEmbosing in 'uEmbosing.pas' {fEmbosing},
  uHistoryBlokir2 in 'uHistoryBlokir2.pas' {fHistoryBlokir2},
  uUsrMgnAPM in 'uUsrMgnAPM.pas' {fUsrMgnAPM},
  uRefTipe in 'uRefTipe.pas' {fRefTipe},
  uMonitoringDaftDealer in 'uMonitoringDaftDealer.pas' {fMonitoringDaftDealer},
  uSTNK in 'uSTNK.pas' {fSTNK},
  uAlokasiNOPOL in 'uAlokasiNOPOL.pas' {fAlokasiNOPOL},
  uLoketBRI in 'uLoketBRI.pas' {fLoketBRI},
  uInputMaterialBPKB in 'uInputMaterialBPKB.pas' {fInputMatBPKB},
  uSplash in 'uSplash.pas' {fSpash},
  uMasterMaterial in 'uMasterMaterial.pas' {fMasterMaterial},
  uBahanBakar in 'uBahanBakar.pas' {fBahanBakar},
  uCaraImport in 'uCaraImport.pas' {fCaraImport},
  uDealer in 'uDealer.pas' {fDealer},
  uJenis in 'uJenis.pas' {fJenis},
  uJenisDaftaran in 'uJenisDaftaran.pas' {fJenisDaftaran},
  uKelurahan in 'uKelurahan.pas' {fKelurahan},
  uMerk in 'uMerk.pas' {fMerk},
  uModel in 'uModel.pas' {fModel},
  uMasterPerubahan in 'uMasterPerubahan.pas' {fMasterPerubahan},
  uPeruntukan in 'uPeruntukan.pas' {fPeruntukan},
  uPolda in 'uPolda.pas' {fPolda},
  uPolres in 'uPolres.pas' {fPolres},
  uWarna in 'uWarna.pas' {fWarna},
  uWarnaKartu in 'uWarnaKartu.pas' {fWarnaKartu},
  uWarnaTNKB in 'uWarnaTNKB.pas' {fWarnaTNKB},
  uSMBIOS in 'uSMBIOS.pas';

Const
  CVersiAplikasi = ' - ( 01.02.21022014 )';
{$R *.res}

begin
  Application.ProcessMessages;
  fSpash := TfSpash.Create(Application);
  Application.ProcessMessages;
  fSpash.show;
  Application.ProcessMessages;
  fSpash.Update;

  Application.Initialize;
  Application.Title := 'Sistem Informasi Kendaraan Bermotor';
  fSpash.lblVersion.Caption := 'Versi : '+GetVersionApplication(Application.ExeName);
  fSpash.lblLoading.Caption := 'Siapkan Form Main...';
  Application.ProcessMessages;

  //Application.Initialize;
  //Application.Title := 'Sistem Informasi Kendaraan Bermotor';
  //fMain.Caption := 'Sistem Informasi Kendaraan Bermotor '+CVersiAplikasi;
  Application.CreateForm(TfMain, fMain);
  fSpash.lblLoading.Caption := 'Inisialisasi Database Server...';
  Application.ProcessMessages;
  Application.CreateForm(TDM, DM);

  Application.CreateForm(TfCari, fCari);
  Application.CreateForm(TfWait, fWait);
  Application.CreateForm(TfCekAktifasi, fCekAktifasi);
  Application.CreateForm(TfHistoryBlokir, fHistoryBlokir);
  Application.CreateForm(TfHistoryBlokir2, fHistoryBlokir2);
  //Application.CreateForm(TfSpash, fSpash);
  //Application.Run;
  fSpash.lblLoading.Caption := 'Aplikasi Siap Dijalankan!';
  Application.ProcessMessages;
  fSpash.Hide;
  fSpash.Free;

  Application.Run;
end.
