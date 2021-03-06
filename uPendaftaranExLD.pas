unit uPendaftaranExLD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxCheckBox, frxClass, frxDBSet, frxBarcode,
  frxDesgn, Uni, MemDS, DBAccess, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxMaskEdit, cxCalendar, cxButtons, cxTextEdit,
  ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, Grids,
  DBGrids, CRGrid;

type
  TfPendaftaranExLD = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel2: TBevel;
    lEdit: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Shape1: TShape;
    lIsFalid: TLabel;
    lMerkID: TLabel;
    lCheck: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lNoBPKB: TLabel;
    lRoda: TLabel;
    eNoResiPembayaran: TcxTextEdit;
    eNoRangka: TcxTextEdit;
    cbDiplomat: TcxCheckBox;
    bBaruPendaftaranBBN1: TcxButton;
    bSimpan: TcxButton;
    bHapus: TcxButton;
    bCetak: TcxButton;
    dtTgl: TcxDateEdit;
    bTampilData: TcxButton;
    rbPribadi: TRadioButton;
    rbBJ: TRadioButton;
    cbPemohon: TcxDBLookupComboBox;
    bCek: TcxButton;
    eNoBPKB: TcxTextEdit;
    UniDataSource1: TUniDataSource;
    UniDataSource2: TUniDataSource;
    UniQuery1: TUniQuery;
    UniQuery2: TUniQuery;
    PopupMenu1: TPopupMenu;
    EDITDATA1: TMenuItem;
    HAPUSDATA1: TMenuItem;
    uniSPTampil: TUniStoredProc;
    dsQDeatail: TUniDataSource;
    frxReport: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDBDataset1: TfrxDBDataset;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure rbPribadiClick(Sender: TObject);
    procedure rbBJClick(Sender: TObject);
    procedure bTampilDataClick(Sender: TObject);
    procedure bBaruPendaftaranBBN1Click(Sender: TObject);
    procedure bSimpanClick(Sender: TObject);
    procedure bHapusClick(Sender: TObject);
    procedure bCetakClick(Sender: TObject);
    procedure EDITDATA1Click(Sender: TObject);
    procedure HAPUSDATA1Click(Sender: TObject);
    procedure frxReportGetValue(const VarName: String; var Value: Variant);
  private
    { Private declarations }
    vIsBBN : sTRING; // jenis proses bbn
  public
    { Public declarations }
    procedure TampilAwal;
    procedure RefreshCbPemohon;
    procedure RefreshData;
    function NoResiPembayaranBank:String;
    function CekNoUrut: String;
    procedure UpdateNoUrut;
  end;

var
  fPendaftaranExLD: TfPendaftaranExLD;

implementation

Uses
  uDM, uVariabel, uModul, uWait;

{$R *.dfm}

{ TfPendaftaranExLD }

function TfPendaftaranExLD.NoResiPembayaranBank: String;
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
      uniSP.Params.CreateParam(ftString,'vIDJenisPembayaran',ptInput).AsString := '5'; //1=BBN1; 9=BBN1 OTOMATIS; 2=BALIK NAMA; 3=DUPLIKAT; 4=GANTI BUKU; 5=EXL LUAR DAERAH; 6=MUTASI LD
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

procedure TfPendaftaranExLD.RefreshCbPemohon;
begin
  UniQuery1.Close;
  UniQuery1.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon where pemohon_jenis=:jenis order by nama';
  if rbPribadi.Checked then
     UniQuery1.Params[0].AsString := 'PRIBADI'
  else if rbBJ.Checked then
     UniQuery1.Params[0].AsString := 'BIROJASA';
  UniQuery1.Open;

  UniQuery2.Close;
  UniQuery2.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon where pemohon_jenis=:jenis order by nama';
  if rbPribadi.Checked then
     UniQuery2.Params[0].AsString := 'PRIBADI'
  else if rbBJ.Checked then
     UniQuery2.Params[0].AsString := 'BIROJASA';
  UniQuery2.Open;
end;

procedure TfPendaftaranExLD.RefreshData;
begin
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'list_pendaftaran_exld';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_tgl',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
      Params.CreateParam(ftString,'v_pemohon',ptinput).AsString := cbPemohon.EditValue;
      Params.CreateParam(ftString,'v_enrollment',ptinput).AsString := '4';
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..list_pendaftaran_new%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfPendaftaranExLD.TampilAwal;
begin
  //'1=GANTI NAMA; 2=MUTASI KELUAR; 3=EX LUAR DAERAH; 4=GANTI BUKU; 5=DUPLIKAT';
  RefreshCbPemohon;
  vIsBBN := '3';
  lEdit.Caption := '';
  lCheck.Caption := '0';
  lIsFalid.Caption := '';
  lMerkID.Caption := '';
  dtTgl.Date := TTglSrvSkr;
  rbPribadi.Checked := False;
  rbBJ.Checked := False;
  cbPemohon.ItemIndex := -1;
  eNoBPKB.Text := '';
  eNoRangka.Text := '';
  if TKODEBAYAR = '1' then
  begin
    eNoResiPembayaran.Text := TKODEBANK+'5'+TLoket+FormatDateTime('YYMMDD',TTglSrvSkr)+CekNoUrut;
    UpdateNoUrut;
    eNoBPKB.SetFocus;
  end
  else
  begin
    eNoResiPembayaran.Text := '';
    eNoResiPembayaran.SetFocus;
  end;
end;

procedure TfPendaftaranExLD.FormShow(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfPendaftaranExLD.rbPribadiClick(Sender: TObject);
begin
  RefreshCbPemohon;
  cbPemohon.SetFocus;
end;

procedure TfPendaftaranExLD.rbBJClick(Sender: TObject);
begin
  RefreshCbPemohon;
  cbPemohon.SetFocus;
end;

procedure TfPendaftaranExLD.bTampilDataClick(Sender: TObject);
begin
  if IsStrANumber(cbPemohon.EditValue) = True then
     RefreshData
  else
     MessageDlgError('Pemohon harus dipilih terlebih dahulu');
end;

procedure TfPendaftaranExLD.bBaruPendaftaranBBN1Click(Sender: TObject);
begin
  RefreshData;
  lRoda.Caption := '';
  eNoRangka.Enabled := True;
  lEdit.Caption := '';
  lCheck.Caption := '0';
  lIsFalid.Caption := '';
  lMerkID.Caption := '';
  lNoBPKB.Caption := '';
  eNoRangka.Text := '';
  eNoBPKB.Text := '';
  if TKODEBAYAR = '1' then
  begin
    eNoResiPembayaran.Text := TKODEBANK+'5'+TLoket+FormatDateTime('YYMMDD',TTglSrvSkr)+CekNoUrut;
    UpdateNoUrut;
    eNoRangka.SetFocus;
  end
  else
  begin
    eNoResiPembayaran.Text := '';
    eNoResiPembayaran.SetFocus;
  end;
end;

procedure TfPendaftaranExLD.bSimpanClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
  if cbPemohon.Text <> '' then
  begin
    if (cbPemohon.EditValue = -1) or (cbPemohon.EditValue = -2) then
    begin
      MessageDlgWarning('Pemohon harus diisikan');
      cbPemohon.SetFocus;
    end
    else
    begin
      if eNoResiPembayaran.Text <> '' then
      begin
        if Length(eNoResiPembayaran.Text) > 5 then
        begin
          if eNoBPKB.Text <> '' then
          begin
            if eNoRangka.Text <> '' then
            begin
              if lEdit.Caption <> '' then
              begin
                if MessageDlg('Yakin Data Pendaftaran Ex-Luar Daerah Akan Di-Rubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                begin
                  try
                    fWait.Show;
                    Application.ProcessMessages;
                    uniSP := TUniStoredProc.Create(Application);
                    uniSP.Connection := DM.dbSrv;
                    uniSP.Close;
                    uniSP.StoredProcName := 'bpkb_pendaftaran_edit_exld';
                    try
                      uniSP.Params.Clear;
                      uniSP.Params.CreateParam(ftString,'vNoRangka',ptInput).AsString := eNoRangka.Text;
                      uniSP.Params.CreateParam(ftstring,'vTglDaftar',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
                      uniSP.Params.CreateParam(ftString,'vNoBPKB',ptInput).AsString := eNoBPKB.Text;
                      uniSP.Params.CreateParam(ftString,'vPemohonID',ptInput).AsInteger := cbPemohon.EditValue;
                      uniSP.Params.CreateParam(ftString,'vPetugasID',ptInput).AsString := vIDPetugas;
                      uniSP.Params.CreateParam(ftString,'vBarcodeBank',ptInput).AsString := eNoResiPembayaran.Text;
                      uniSP.Params.CreateParam(ftString,'vLoketNo',ptInput).AsString := TLoket;
                      uniSP.Params.CreateParam(ftString,'vEnrollmentType',ptInput).AsInteger := 4;
                      if cbDiplomat.Checked = True then
                         uniSP.Params.CreateParam(ftString,'vTypeDaftaran',ptInput).AsInteger := 1
                      else
                         uniSP.Params.CreateParam(ftString,'vTypeDaftaran',ptInput).AsInteger := 0;
                      uniSP.Params.CreateParam(ftString,'vMerkID',ptInput).AsString := '';
                      uniSP.Params.CreateParam(ftString,'vDaftarID',ptInput).AsInteger := StrToInt(lEdit.Caption);
                      uniSP.Params.CreateParam(ftString,'vBBN',ptInput).AsString := vIsBBN;
                      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
                      uniSP.ExecProc;
                      fWait.Hide;
                      if Copy(uniSP.Params.ParamValues['RESULT'],1,2)<>'00' then
                      begin
                         MessageDlgError('ERROR, PROSES PERUBAHAN DATA GAGAL # '+uniSP.Params.ParamValues['RESULT']);
                      end
                      else
                      begin
                        RefreshData;
                        bBaruPendaftaranBBN1.Click;
                      end;
                    except on E:Exception do
                    begin
                      ErrorProgDialog('Error,..bpkb_pendaftaran_edit_bn.ExecProc%Error :'+E.Message);
                    end;
                    end;
                  finally
                    FreeAndNil(uniSP);
                  end;
                end;
              end
              else
              begin
                if MessageDlg('Yakin Data Pendaftaran Berkas Ex-Luar Daerah Akan Di-Simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                begin
                  try
                    fWait.Show;
                    Application.ProcessMessages;
                    uniSP := TUniStoredProc.Create(Application);
                    uniSP.Connection := DM.dbSrv;
                    uniSP.Close;
                    uniSP.StoredProcName := 'bpkb_pendaftaran_add_exld';
                    try
                      uniSP.Params.Clear;
                      uniSP.Params.CreateParam(ftString,'vNoRangka',ptInput).AsString := eNoRangka.Text;
                      uniSP.Params.CreateParam(ftstring,'vTglDaftar',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
                      uniSP.Params.CreateParam(ftString,'vNoBPKB',ptInput).AsString := eNoBPKB.Text;
                      uniSP.Params.CreateParam(ftString,'vPemohonID',ptInput).AsInteger := cbPemohon.EditValue;
                      uniSP.Params.CreateParam(ftString,'vPetugasID',ptInput).AsString := vIDPetugas;
                      uniSP.Params.CreateParam(ftString,'vBarcodeBank',ptInput).AsString := eNoResiPembayaran.Text;
                      uniSP.Params.CreateParam(ftString,'vLoketNo',ptInput).AsString := TLoket;
                      uniSP.Params.CreateParam(ftString,'vEnrollmentType',ptInput).AsInteger := 4;
                      if cbDiplomat.Checked = True then
                         uniSP.Params.CreateParam(ftString,'vTypeDaftaran',ptInput).AsInteger := 1
                      else
                         uniSP.Params.CreateParam(ftString,'vTypeDaftaran',ptInput).AsInteger := 0;
                      uniSP.Params.CreateParam(ftString,'vMerkID',ptInput).AsString := lMerkID.Caption;
                      uniSP.Params.CreateParam(ftString,'vBBN',ptInput).AsString := vIsBBN;
                      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
                      uniSP.ExecProc;
                      fWait.Hide;
                      if Copy(uniSP.Params.ParamValues['RESULT'],1,2)<>'00' then
                      begin
                        MessageDlgError('ERROR # '+uniSP.Params.ParamValues['RESULT']);
                        RefreshData;
                      end
                      else
                      begin
                        RefreshData;
                        bBaruPendaftaranBBN1.Click;
                      end;
                    except on E:Exception do
                    begin
                      ErrorProgDialog('Error,..bpkb_pendaftaran_add_bn.ExecProc%Error :'+E.Message);
                    end;
                    end;
                  finally
                    FreeAndNil(uniSP);
                  end;
                end;
              end;
            end
            else
            begin
              MessageDlgWarning('No Rangka diisi terlebih dahulu!');
              eNoRangka.SetFocus;
            end;
          end
          else
          begin
            MessageDlgWarning('No BPKB diisi terlebih dahulu!');
            eNoBPKB.SetFocus;
          end;
        end
        else
        begin
          MessageDlgWarning('No Resi Pembayaran harus lebih besar dari 5 Carakter!');
          eNoResiPembayaran.SetFocus;
        end;
      end
      else
      begin
        MessageDlgWarning('No Resi Pembayaran harap dipilih terlebih dahulu!');
        eNoResiPembayaran.SetFocus;
      end;
    end;
  end
  else
  begin
    MessageDlgWarning('Pemohon harap dipilih terlebih dahulu!');
    cbPemohon.SetFocus;
  end;
end;

procedure TfPendaftaranExLD.bHapusClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
  if lEdit.Caption <> '' then
  begin
    if MessageDlg('Yakin Data Pendaftaran Berkasa Akan Di-Hapus?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      try
        uniSP := TUniStoredProc.Create(Application);
        uniSP.Connection := DM.dbSrv;
        uniSP.Close;
        uniSP.StoredProcName := 'bpkb_pendaftaran_delete_exld';
        try
          uniSP.Params.Clear;
          uniSP.Params.CreateParam(ftString,'vDaftarID',ptInput).AsString := lEdit.Caption;
          uniSP.Params.CreateParam(ftString,'vPetugasID',ptInput).AsString := vIDPetugas;
          uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
          uniSP.ExecProc;
          if uniSP.Params.ParamValues['RESULT']='00' then
             MessageDlgInformation('PROSES HAPUS DATA BERHASIL')
          else
             MessageDlgError('ERROR, PROSES HAPUS DATA GAGAL # '+uniSP.Params.ParamValues['RESULT']);
          RefreshData;
          bBaruPendaftaranBBN1.Click;
        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_pendaftaran_delete_exld.ExecProc Ket Error :'+E.Message);
        end;
        end;
      finally
        FreeAndNil(uniSP);
      end;
    end;
  end;
end;

procedure TfPendaftaranExLD.bCetakClick(Sender: TObject);
begin
  if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
  begin
    frxDBDataset1.DataSet := uniSPTampil;
    frxReport.Clear;
    frxReport.LoadFromFile(RootPath+'\bpkb_pendaftaran.fr3');
    if TReport='1' then
    begin
      frxReport.DesignReport();
    end
    else if TReport='0' then
    begin
      //frxReport.ShowReport();
      frxReport.PrintOptions.ShowDialog := False;
      frxReport.PrintOptions.Printer := TPRINTER_BPKB;
      frxReport.PrepareReport;
      frxReport.Print;
    end
    else if TReport='2' then
    begin
      frxReport.ShowReport();
    end;
  end
  else
  begin
    MessageDlgInformation('Tampilkan terlebih dahulu data yang akan dicetak');
  end;
end;

procedure TfPendaftaranExLD.EDITDATA1Click(Sender: TObject);
begin
  if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
  begin
    if uniSPTampil.FieldByName('Sudah_Diproses').AsInteger = 1 then
       MessageDlgWarning('Data pendaftaran tidak bisa diedit !!!'+#13+
                  'Data sudah mengalami proses registrasi bpkb')
    else
    begin
      dtTgl.Enabled := false;
      cbPemohon.Enabled := false;
      lEdit.Caption := uniSPTampil.FieldByName('DAFT_ID').AsString;
      eNoResiPembayaran.Text := uniSPTampil.FieldByName('BARCODE').AsString;
      eNoRangka.Text := uniSPTampil.FieldByName('NO_RANGKA').AsString;
      eNoBPKB.Text := uniSPTampil.FieldByName('NO_BPKB').AsString;
      eNoResiPembayaran.SetFocus;
    end;
  end;
end;

procedure TfPendaftaranExLD.HAPUSDATA1Click(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
  if lEdit.Caption <> '' then
  begin
    if MessageDlg('Yakin Data Pendaftaran Berkasa Akan Di-Hapus?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      try
        uniSP := TUniStoredProc.Create(Application);
        uniSP.Connection := DM.dbSrv;
        uniSP.Close;
        uniSP.StoredProcName := 'bpkb_pendaftaran_delete_exld';
        try
          uniSP.Params.Clear;
          uniSP.Params.CreateParam(ftString,'vDaftarID',ptInput).AsString := uniSPTampil.FieldByName('DAFT_ID').AsString;
          uniSP.Params.CreateParam(ftString,'vPetugasID',ptInput).AsString := vIDPetugas;
          uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
          uniSP.ExecProc;
          if uniSP.Params.ParamValues['RESULT']='00' then
             MessageDlgInformation('PROSES HAPUS DATA BERHASIL')
          else
             MessageDlgError('ERROR, PROSES HAPUS DATA GAGAL # '+uniSP.Params.ParamValues['RESULT']);
          RefreshData;
          bBaruPendaftaranBBN1.Click;
        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_pendaftaran_delete_bn.ExecProc Ket Error :'+E.Message);
        end;
        end;
      finally
        FreeAndNil(uniSP);
      end;
    end;
  end;
end;

procedure TfPendaftaranExLD.frxReportGetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName = 'nama_polda' then
    Value := TPerusahaan;
  if VarName = 'alamat' then
    Value := TAlamatPerusahaan;
  if VarName = 'kota' then
    Value := TKota;
  if VarName = 'nama_op' then
    Value := vNamaPetugas;
  if VarName = 'pangkat_op' then
    Value := vJabatanPetugas;
  if VarName = 'nrp_op' then
    Value := vNRP;
end;

function TfPendaftaranExLD.CekNoUrut: String;
begin
  Result:= '0000';
  with DM.Q do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select (urut+1) as no from t_nodoc_bank where tgl=:tgl');
    Params[0].AsString := FormatDateTime('yyyymmdd',TTglSrvSkr);
    Open;
    If RecordCount > 0 then
    begin
     If FieldByName('no').AsInteger = 9999 then
     begin
       Close;
       SQL.Clear;
       SQL.Add('update urut set urut="1" where tgl=:periode');
       Params[0].AsString := FormatDateTime('yyyymmdd',TTglSrvSkr);
       Execute;
       Result := '0001';
     end
     else if (FieldByName('no').AsString = '') or (FieldByName('no').AsString = '0') then
     begin
       Result := '0001';
     end
     else
     begin
       Result := Format('%.4d',[FieldByName('no').AsInteger]);
     end;
    end
    else
    begin
     Close;
     SQL.Clear;
     SQL.Add('insert into T_NODOC_BANK (TGL) values (:TGL)');
     Try
       Params[0].AsString := FormatDateTime('yyyymmdd',TTglSrvSkr);
       Execute;
       Result := '0001';
     Except
       on E: Exception do
         ErrorProgDialog('NourutBank.Error : '+E.Message);
     end;
    end;
  end;
end;

procedure TfPendaftaranExLD.UpdateNoUrut;
begin
  with DM.Q do
  begin
    Close;
    SQL.Text := 'update t_nodoc_bank set urut=urut+1 where tgl=:tahun';
    Params[0].AsString := FormatDateTime('yyyymmdd',TTglSrvSkr);
    Execute;
  end;
end;

end.
