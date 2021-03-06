unit uVerifikasiBBN1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxMemo, cxPC, cxTextEdit, StdCtrls, cxButtons,
  ExtCtrls, DBAccess, Uni, MemDS, DB, cxMaskEdit, cxDropDownEdit,
  cxCalendar,uRegistrasi;

type
  TfVerifikasiBBN1 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label35: TLabel;
    cxButton1: TcxButton;
    bVerifikasi: TcxButton;
    eNoBPKB_V: TcxTextEdit;
    eNoRangka_V: TcxTextEdit;
    eNoBarcode_V: TcxTextEdit;
    eInfoNoBPKB_V: TcxTextEdit;
    eInfoNRegBPKB_V: TcxTextEdit;
    eInfoTempat_V: TcxTextEdit;
    eInfoTgl_V: TcxTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    eInfoPekerjaan_V: TcxTextEdit;
    eInfoNoIdentitas_V: TcxTextEdit;
    eInfoNamaPemilik_V: TcxMemo;
    eInfoAlamatPemilik_V: TcxMemo;
    cxTabSheet2: TcxTabSheet;
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
    Label36: TLabel;
    eInfoNopol_V: TcxTextEdit;
    eInfoMek_V: TcxTextEdit;
    eInfoTipe_V: TcxTextEdit;
    eInfoJenis_V: TcxTextEdit;
    eInfoModel_V: TcxTextEdit;
    eInfoThnBuat_V: TcxTextEdit;
    eInfoSilinder_V: TcxTextEdit;
    eInfoWarna_V: TcxTextEdit;
    eInfoNoRangka_V: TcxTextEdit;
    eInfoNoMesin_V: TcxTextEdit;
    eInfoJmlRoda_V: TcxTextEdit;
    eInfoJmlSumbu_V: TcxTextEdit;
    eInfoBB_V: TcxTextEdit;
    eInfoTipe2_V: TcxTextEdit;
    cxTabSheet3: TcxTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    eInfoNoFaktur_V: TcxTextEdit;
    eInfoTglFaktur_V: TcxTextEdit;
    eInfoAPM_V: TcxTextEdit;
    eInfoTglFormAB_V: TcxTextEdit;
    eInfoKantorBeaCukai_V: TcxTextEdit;
    eInfoNoSUT_V: TcxTextEdit;
    eInfoNoTPT_V: TcxTextEdit;
    eInfoKetLain2_V: TcxMemo;
    eInfoNoPIB_V: TcxTextEdit;
    eInfoTglPIB_V: TcxTextEdit;
    eInfoNoFormAB_V: TcxTextEdit;
    cxTabSheet4: TcxTabSheet;
    Label33: TLabel;
    Label34: TLabel;
    eInfoDikeluarkanOleh_V: TcxTextEdit;
    eInfoNRegBPKB2_V: TcxTextEdit;
    bBaru_V: TcxButton;
    dtTgl: TcxDateEdit;
    cxButton2: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure bBaru_VClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure bVerifikasiClick(Sender: TObject);
    procedure eNoBPKB_VKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoRangka_VKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoBarcode_VKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    vBPKBID_V,vBerkasID_V : String;
  public
    { Public declarations }
    procedure TampilAwal;
    procedure CariData;
    procedure UpdateVerfikasi;
  end;

var
  fVerifikasiBBN1 : TfVerifikasiBBN1;
  aForm           : TfRegistrasi;
implementation
Uses
  uDM, uVariabel, uModul, uWait, uMain;
{$R *.dfm}

{ TfVerifikasiBBN1 }

procedure TfVerifikasiBBN1.TampilAwal;
begin
  eNoBPKB_V.Text := '';
  eNoRangka_V.Text := '';
  eNoBarcode_V.Text := '';
  bVerifikasi.Enabled := False;
  bBaru_V.Enabled := True;
  eInfoNoBPKB_V.Text := '';
  eInfoNRegBPKB_V.Text := '';
  eInfoTempat_V.Text := '';
  eInfoTgl_V.Text := '';
  eInfoNamaPemilik_V.Text := '';
  eInfoAlamatPemilik_V.Text := '';
  eInfoPekerjaan_V.Text := '';
  eInfoNoIdentitas_V.Text := '';
  eInfoNopol_V.Text := '';
  eInfoMek_V.Text := '';
  eInfoTipe_V.Text := '';
  eInfoTipe2_V.Text := '';
  eInfoJenis_V.Text := '';
  eInfoModel_V.Text := '';
  eInfoThnBuat_V.Text := '';
  eInfoSilinder_V.Text := '';
  eInfoWarna_V.Text := '';
  eInfoNoRangka_V.Text := '';
  eInfoNoMesin_V.Text := '';
  eInfoJmlRoda_V.Text := '';
  eInfoJmlSumbu_V.Text := '';
  eInfoBB_V.Text := '';
  eInfoNoFaktur_V.Text := '';
  eInfoTglFaktur_V.Text := '';
  eInfoAPM_V.Text := '';
  eInfoKantorBeaCukai_V.Text := '';
  eInfoNoSUT_V.Text := '';
  eInfoNoTPT_V.Text := '';
  eInfoKetLain2_V.Text := '';
  eInfoNoPIB_V.Text := '';
  eInfoTglPIB_V.Text := '';
  eInfoNoFormAB_V.Text := '';
  eInfoTglFormAB_V.Text := '';
  eInfoDikeluarkanOleh_V.Text := '';
  eInfoNRegBPKB2_V.Text := '';
  cxPageControl1.ActivePage := cxTabSheet1;
  eNoBPKB_V.SetFocus;
end;

procedure TfVerifikasiBBN1.FormShow(Sender: TObject);
begin
  dtTgl.Date := TTglSrvSkr;
  TampilAwal;
end;

procedure TfVerifikasiBBN1.bBaru_VClick(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfVerifikasiBBN1.cxButton1Click(Sender: TObject);
begin
  if eNoBPKB_V.Text <> '' then
  begin
    if vIsCariLangsung = '0' then
    begin
      if (eNoRangka_V.Text <> '') or (eNoBarcode_V.Text <> '') then
      begin
        fWait.Show;
        fWait.Label1.Caption := 'Tunggu Sebentar ...';
        fWait.cxProgressBar1.Visible := True;
        CariData;
      end
      else
      begin
        MessageDlgWarning('Salah satu antara no rangka atau no barcode harus diisi');
        eNoRangka_V.SetFocus;
      end;
    end
    else if vIsCariLangsung = '1' then
    begin
      fWait.Show;
      fWait.Label1.Caption := 'Tunggu Sebentar ...';
      fWait.cxProgressBar1.Visible := True;
      Application.ProcessMessages;
      CariData;
    end;
  end
  else
  begin
    MessageDlgError('No BPKB harus diisi');
    eNoBPKB_V.SetFocus;
  end;
end;

procedure TfVerifikasiBBN1.CariData;
var
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    if vIsCariLangsung = '0' then
       uniSP.StoredProcName := 'bpkb_get_data_bpkb_verifikasi'
    else
       uniSP.StoredProcName := 'bpkb_get_data_bpkb_verifikasi2';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_polda_id',ptInput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'v_no_bpkb',ptInput).AsString := eNoBPKB_V.Text;
      uniSP.Params.CreateParam(ftString,'v_no_rangka',ptInput).AsString := eNoRangka_V.Text;
      uniSP.Params.CreateParam(ftString,'v_no_barcode',ptInput).AsString := eNoBarcode_V.Text;
      uniSP.Params.CreateParam(ftString,'v_bbn',ptInput).AsString := '0';
      uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      uniSP.Active := True;

      if uniSP.RecordCount > 0 then
      begin
        vBPKBID_V := uniSP.FieldByName('BPKB_ID').Text;
        vBerkasID_V := uniSP.FieldByName('BERKAS_ID').Text;
        eInfoNoBPKB_V.Text := uniSP.FieldByName('NO_BPKB').Text;
        eInfoNRegBPKB_V.Text := uniSP.FieldByName('NREG_BPKB').Text;
        eInfoTempat_V.Text := uniSP.FieldByName('TEMPAT_KELUAR').Text;
        eInfoTgl_V.Text := uniSP.FieldByName('TGL_BPKB').Text;
        eInfoPekerjaan_V.Text := uniSP.FieldByName('PEKERJAAN_PEMILIK').Text;
        eInfoNoIdentitas_V.Text := uniSP.FieldByName('NO_IDENTITAS').Text;
        eInfoNamaPemilik_V.Text := uniSP.FieldByName('NAMA_PEMILIK').Text;
        eInfoAlamatPemilik_V.Text := uniSP.FieldByName('ALAMAT_PEMILIK').Text;
        eInfoNopol_V.Text := uniSP.FieldByName('NO_POLISI').Text;
        eInfoMek_V.Text := uniSP.FieldByName('MERK_NAMA').Text;
        eInfoTipe_V.Text := uniSP.FieldByName('TIPE').Text;
        eInfoTipe2_V.Text := uniSP.FieldByName('TIPE2').Text;
        eInfoJenis_V.Text := uniSP.FieldByName('JENIS_NAMA').Text;
        eInfoModel_V.Text := uniSP.FieldByName('MODEL_NAMA').Text;
        eInfoThnBuat_V.Text := uniSP.FieldByName('THN_BUAT').Text;
        eInfoSilinder_V.Text := uniSP.FieldByName('VOL_SILINDER').Text;
        eInfoWarna_V.Text := uniSP.FieldByName('WARNA_NAMA').Text;
        eInfoNoRangka_V.Text := uniSP.FieldByName('NO_RANGKA').Text;
        eInfoNoMesin_V.Text := uniSP.FieldByName('NO_MESIN').Text;
        eInfoJmlRoda_V.Text := uniSP.FieldByName('JML_RODA').Text;
        eInfoJmlSumbu_V.Text := uniSP.FieldByName('JML_SUMBU').Text;
        eInfoBB_V.Text := uniSP.FieldByName('BB_NAMA').Text;
        eInfoNoFaktur_V.Text := uniSP.FieldByName('NO_FAKTUR').Text;
        eInfoTglFaktur_V.Text := uniSP.FieldByName('TGL_FAKTUR').Text;
        eInfoAPM_V.Text := uniSP.FieldByName('NAMA_IMPORTIR').Text;
        eInfoTglFormAB_V.Text := uniSP.FieldByName('TGL_PABEAN').Text;
        eInfoKantorBeaCukai_V.Text := uniSP.FieldByName('PELABUHAN').Text;
        eInfoNoSUT_V.Text := uniSP.FieldByName('NO_SUT').Text;
        eInfoNoTPT_V.Text := uniSP.FieldByName('NO_TPT').Text;
        eInfoKetLain2_V.Text := uniSP.FieldByName('KETR_PABEAN').Text;
        eInfoNoPIB_V.Text := uniSP.FieldByName('NO_PIB').Text;
        eInfoTglPIB_V.Text := uniSP.FieldByName('TGL_PIB').Text;
        eInfoNoFormAB_V.Text := uniSP.FieldByName('NO_PABEAN').Text;
        eInfoDikeluarkanOleh_V.Text := vBPKBDikeluarkanOleh;
        eInfoNRegBPKB2_V.Text := uniSP.FieldByName('NREG_BPKB').Text;
        cxPageControl1.ActivePage := cxTabSheet1;
        if uniSP.FieldByName('VERIFY_BY').Text='0' then
        begin
          fWait.Hide;
          Application.ProcessMessages;
          bVerifikasi.Enabled := True;
          bVerifikasi.SetFocus;
        end
        else if uniSP.FieldByName('VERIFY_BY').Text='1' then
        begin
          fWait.Hide;
          Application.ProcessMessages;
          bVerifikasi.Enabled := False;
          MessageDlgInformation('DATA SUDAH TER-VERIFIKASI!!!');
        end
        else
        begin
          fWait.Hide;
          Application.ProcessMessages;
          bVerifikasi.Enabled := False;
          MessageDlgError('KODE VERIFIKASI TIDAK TERDAFTAR'+#13+
                          'HUBUNGI ADMINISTRATOR');
        end;
      end
      else
      begin
        FWait.Hide;
        Application.ProcessMessages;
        MessageDlgInformation('DATA TIDAK DITEMUKAN!!');
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_data_bpkb_verifikasi.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfVerifikasiBBN1.UpdateVerfikasi;
var
  uniSP : TUniStoredProc;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_update_verifikasi';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_berkas_id',ptInput).AsString := vBerkasID_V;
      uniSP.Params.CreateParam(ftString,'v_op_id',ptInput).AsString := vIDPetugas;
      uniSP.Params.CreateParam(ftString,'v_tgl_proses',ptInput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
      uniSP.ExecProc;

      if Copy(uniSP.Params.ParamValues['RESULT'],1,2)='00' then
      begin
        MessageDlgInformation('Proses Verifikasi berhasil');
        bBaru_V.Click;
      end
      else if Copy(uniSP.Params.ParamValues['RESULT'],1,2)='14' then
      begin
        MessageDlgWarning('DATA TIDAK BISA DIVERIFIKASI, KERANA DATA SUDAH MENGALAMI PROSES VERIFIKASI');
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_data_bpkb_verifikasi.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfVerifikasiBBN1.bVerifikasiClick(Sender: TObject);
begin
  if MessageDlg('YAKIN DATA AKAN DI VERIFIKASI?',mtInformation,[mbYes,mbNo],0)=mrYes then
     UpdateVerfikasi;
end;

procedure TfVerifikasiBBN1.eNoBPKB_VKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    if vIsCariLangsung = '0' then
    begin
      if (eNoBPKB_V.Text <> '') and (eNoRangka_V.Text <> '') then
         cxButton1.Click
      else if (eNoBPKB_V.Text <> '') and (eNoBarcode_V.Text <> '') then
         cxButton1.Click
      else if (eNoRangka_V.Text <> '') and (eNoBarcode_V.Text <> '') then
         cxButton1.Click
      else
      begin
        MessageDlgError('DUA KONDISI HARUS DIPENUHI !!!');
        eNoBPKB_V.SetFocus;
      end;
    end
    else
    begin
      if eNoBPKB_V.Text <> '' then
         cxButton1.Click
      else if eNoRangka_V.Text <> '' then
         cxButton1.Click
      else if eNoBarcode_V.Text <> '' then
         cxButton1.Click
      else
      begin
         MessageDlgError('KODE BERKAS HARUS DIISI!!!');
         eNoBPKB_V.SetFocus;
      end;
    end;
  end;
end;

procedure TfVerifikasiBBN1.eNoRangka_VKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    if vIsCariLangsung = '0' then
    begin
      if (eNoBPKB_V.Text <> '') and (eNoRangka_V.Text <> '') then
         cxButton1.Click
      else if (eNoBPKB_V.Text <> '') and (eNoBarcode_V.Text <> '') then
         cxButton1.Click
      else if (eNoRangka_V.Text <> '') and (eNoBarcode_V.Text <> '') then
         cxButton1.Click
      else
      begin
        MessageDlgError('DUA KONDISI HARUS DIPENUHI !!!');
        eNoBPKB_V.SetFocus;
      end;
    end
    else
    begin
      if eNoBPKB_V.Text <> '' then
         cxButton1.Click
      else if eNoRangka_V.Text <> '' then
         cxButton1.Click
      else if eNoBarcode_V.Text <> '' then
         cxButton1.Click
      else
      begin
         MessageDlgError('KODE BERKAS HARUS DIISI!!!');
         eNoRangka_V.SetFocus;
      end;
    end;
  end;
end;

procedure TfVerifikasiBBN1.eNoBarcode_VKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    if vIsCariLangsung = '0' then
    begin
      if (eNoBPKB_V.Text <> '') and (eNoRangka_V.Text <> '') then
         cxButton1.Click
      else if (eNoBPKB_V.Text <> '') and (eNoBarcode_V.Text <> '') then
         cxButton1.Click
      else if (eNoRangka_V.Text <> '') and (eNoBarcode_V.Text <> '') then
         cxButton1.Click
      else
      begin
        MessageDlgError('DUA KONDISI HARUS DIPENUHI !!!');
        eNoBPKB_V.SetFocus;
      end;
    end
    else
    begin
      if eNoBPKB_V.Text <> '' then
         cxButton1.Click
      else if eNoRangka_V.Text <> '' then
         cxButton1.Click
      else if eNoBarcode_V.Text <> '' then
         cxButton1.Click
      else
      begin
         MessageDlgError('KODE BERKAS HARUS DIISI!!!');
         eNoBarcode_V.SetFocus;
      end;
    end;
  end;
end;

procedure TfVerifikasiBBN1.cxButton2Click(Sender: TObject);
begin
  fMain.pProses.Visible := False;
  fMain.pc_proses.Visible := True;
  if not fMain.IsFormOpen('fRegistrasi') then
  begin
    isFormEditVerifikasi := '1';
    isNoBPKB := eInfoNoBPKB_V.Text;
    //Create a new tab sheet
    tabSheet[8] := TcxTabSheet.Create(fMain.pc_proses) ;
    tabSheet[8].PageControl := fMain.pc_proses;

    //create a form
    aForm := TfRegistrasi.Create(tabSheet[8]) ;
    aForm.Parent := tabSheet[8];
    aForm.Align := alClient;
    aForm.BorderStyle := bsNone;
    aForm.Visible := true;
    tabSheet[8].Caption := aForm.Caption;
    tabSheet[8].Name := 'fRegistrasi';

    //activate the sheet
    fMain.pc_proses.ActivePage := tabSheet[8];
  end
  else
  begin
    fMain.pc_proses.ActivePage := tabSheet[8];
    aForm.eNoBPKB.Text := isNoBPKB;
    aForm.bCari.Click;
  end;
end;

end.
