unit uPendaftaranMLD;

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
  ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfPendaftaranMLD = class(TForm)
    Label2: TLabel;
    Label5: TLabel;
    Bevel2: TBevel;
    lEdit: TLabel;
    Label1: TLabel;
    Shape1: TShape;
    lIsFalid: TLabel;
    lMerkID: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    eNoRangka: TcxTextEdit;
    bBaruPendaftaranBBN1: TcxButton;
    bSimpan: TcxButton;
    bHapus: TcxButton;
    bCetak: TcxButton;
    dtTgl: TcxDateEdit;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    bTampilData: TcxButton;
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
    Shape2: TShape;
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
  public
    { Public declarations }
    procedure TampilAwal;
    procedure RefreshCbPemohon;
    procedure RefreshData;
    function NoResiPembayaranBank:String;
  end;

var
  fPendaftaranMLD: TfPendaftaranMLD;

implementation

Uses
  uDM, uVariabel, uModul, uWait;

{$R *.dfm}

{ TfPendaftaranExLD }

function TfPendaftaranMLD.NoResiPembayaranBank: String;
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
      uniSP.Params.CreateParam(ftString,'vIDJenisPembayaran',ptInput).AsString := '6'; //1=BBN1; 9=BBN1 OTOMATIS; 2=BALIK NAMA; 3=DUPLIKAT; 4=GANTI BUKU; 5=EXL LUAR DAERAH; 6=MUTASI LD
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

procedure TfPendaftaranMLD.RefreshCbPemohon;
begin
  UniQuery1.Close;
  UniQuery1.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon where pemohon_jenis=:jenis order by nama';
  UniQuery1.Open;

  UniQuery2.Close;
  UniQuery2.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon where pemohon_jenis=:jenis order by nama';
  UniQuery2.Open;
end;

procedure TfPendaftaranMLD.RefreshData;
begin
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'list_pendaftaran_mld';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_tgl',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      //DM.dbSrv.Commit;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..list_pendaftaran_mld%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfPendaftaranMLD.TampilAwal;
begin
  lEdit.Caption := '';
  lIsFalid.Caption := '';
  lMerkID.Caption := '';
  dtTgl.Date := TTglSrvSkr;
  eNoBPKB.Text := '';
  eNoRangka.Text := '';
  eNoBPKB.SetFocus;
end;

procedure TfPendaftaranMLD.FormShow(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfPendaftaranMLD.rbPribadiClick(Sender: TObject);
begin
  RefreshCbPemohon;
end;

procedure TfPendaftaranMLD.rbBJClick(Sender: TObject);
begin
  RefreshCbPemohon;
end;

procedure TfPendaftaranMLD.bTampilDataClick(Sender: TObject);
begin
  RefreshData;
end;

procedure TfPendaftaranMLD.bBaruPendaftaranBBN1Click(Sender: TObject);
begin
  RefreshData;
  eNoRangka.Enabled := True;
  lEdit.Caption := '';
  lIsFalid.Caption := '';
  lMerkID.Caption := '';
  eNoRangka.Text := '';
  eNoBPKB.Text := '';
  eNoBPKB.SetFocus;
end;

procedure TfPendaftaranMLD.bSimpanClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
    if eNoBPKB.Text <> '' then
    begin
      if eNoRangka.Text <> '' then
      begin
        if lEdit.Caption <> '' then
        begin
          if MessageDlg('Yakin Data Pendaftaran Berkas Mutasi Luar Daerah Akan Di-Rubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          begin
            try
              fWait.Show;
              Application.ProcessMessages;
              uniSP := TUniStoredProc.Create(Application);
              uniSP.Connection := DM.dbSrv;
              uniSP.Close;
              uniSP.StoredProcName := 'bpkb_pendaftaran_edit_ld';
              try
                uniSP.Params.Clear;
                uniSP.Params.CreateParam(ftString,'vNoRangka',ptInput).AsString := eNoRangka.Text;
                uniSP.Params.CreateParam(ftstring,'vTglDaftar',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
                uniSP.Params.CreateParam(ftString,'vNoBPKB',ptInput).AsString := eNoBPKB.Text;
                uniSP.Params.CreateParam(ftString,'vPetugasID',ptInput).AsString := vIDPetugas;
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
          if MessageDlg('Yakin Data Pendaftaran Berkas Mutasi Luar Daerah Akan Di-Simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          begin
            try
              fWait.Show;
              Application.ProcessMessages;
              uniSP := TUniStoredProc.Create(Application);
              uniSP.Connection := DM.dbSrv;
              uniSP.Close;
              uniSP.StoredProcName := 'bpkb_pendaftaran_add_ld';
              try
                uniSP.Params.Clear;
                uniSP.Params.CreateParam(ftString,'vNoRangka',ptInput).AsString := eNoRangka.Text;
                uniSP.Params.CreateParam(ftstring,'vTglDaftar',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
                uniSP.Params.CreateParam(ftString,'vNoBPKB',ptInput).AsString := eNoBPKB.Text;
                uniSP.Params.CreateParam(ftString,'vPetugasID',ptInput).AsString := vIDPetugas;
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
                ErrorProgDialog('Error,..bpkb_pendaftaran_add_ld.ExecProc%Error :'+E.Message);
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

end;

procedure TfPendaftaranMLD.bHapusClick(Sender: TObject);
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
        uniSP.StoredProcName := 'bpkb_pendaftaran_delete_ld';
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
          ErrorProgDialog('Error,..bpkb_pendaftaran_delete_ld.ExecProc Ket Error :'+E.Message);
        end;
        end;
      finally
        FreeAndNil(uniSP);
      end;
    end;
  end;
end;

procedure TfPendaftaranMLD.bCetakClick(Sender: TObject);
begin
  if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
  begin
    frxDBDataset1.DataSet := uniSPTampil;
    frxReport.Clear;
    frxReport.LoadFromFile(RootPath+'\bpkb_pendaftaran_ld.fr3');
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

procedure TfPendaftaranMLD.EDITDATA1Click(Sender: TObject);
begin
  if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
  begin
    if uniSPTampil.FieldByName('bpkb_status').AsString = '3' then
       MessageDlgWarning('Data pendaftaran tidak bisa diedit !!!'+#13+
                         'Data sudah mengalami proses mutasi luar daerah')
    else if uniSPTampil.FieldByName('bpkb_status').AsString = '0' then
       MessageDlgWarning('Data pendaftaran tidak bisa diedit !!!'+#13+
                         'Data sudah tidak aktif')
    else if uniSPTampil.FieldByName('bpkb_status').AsString = '2' then
       MessageDlgWarning('Data pendaftaran tidak bisa diedit !!!'+#13+
                  'Data mengalami blokir')
    else
    begin
      dtTgl.Enabled := false;
      lEdit.Caption := uniSPTampil.FieldByName('DAFT_ID').AsString;
      eNoRangka.Text := uniSPTampil.FieldByName('NO_RANGKA').AsString;
    end;
  end;
end;

procedure TfPendaftaranMLD.HAPUSDATA1Click(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
  if uniSPTampil.FieldByName('bpkb_status').AsString = '3' then
     MessageDlgWarning('Data pendaftaran tidak bisa diedit !!!'+#13+
                'Data sudah mengalami proses mutasi luar daerah')
  else if uniSPTampil.FieldByName('bpkb_status').AsString = '0' then
     MessageDlgWarning('Data pendaftaran tidak bisa diedit !!!'+#13+
                'Data sudah tidak aktif')
  else if uniSPTampil.FieldByName('bpkb_status').AsString = '2' then
     MessageDlgWarning('Data pendaftaran tidak bisa diedit !!!'+#13+
                'Data mengalami blokir')
  else
  begin
    if MessageDlg('Yakin Data Pendaftaran Berkasa Akan Di-Hapus?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      try
        uniSP := TUniStoredProc.Create(Application);
        uniSP.Connection := DM.dbSrv;
        uniSP.Close;
        uniSP.StoredProcName := 'bpkb_pendaftaran_delete_ld';
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
          ErrorProgDialog('Error,..bpkb_pendaftaran_delete_ld.ExecProc Ket Error :'+E.Message);
        end;
        end;
      finally
        FreeAndNil(uniSP);
      end;
    end;
  end;
end;

procedure TfPendaftaranMLD.frxReportGetValue(const VarName: String;
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

end.
