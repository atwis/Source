{History Aplikasi:
 1. Kode Tipe Daftaran : WHEN SUBSTR (p.BARCODE, 4, 1) = 3 THEN 'R2'
                         WHEN SUBSTR (p.BARCODE, 4, 1) = 4 THEN 'R2'
                         WHEN SUBSTR (p.BARCODE, 4, 1) = 5 THEN 'R4'
                         WHEN SUBSTR (p.BARCODE, 4, 1) = 6 THEN 'R4'}
unit uPendaftaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Menus, cxButtons, cxCheckBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, DBAccess, Uni, MemDS, dxSkinsCore, Math,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, RAWPrinter, frxClass, frxDBSet, frxBarcode, frxDesgn,
  Grids, DBGrids, CRGrid, cxPC;

type
  TfPendaftaran = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    eNoResiPembayaran: TcxTextEdit;
    eNoRangka: TcxTextEdit;
    cbDiplomat: TcxCheckBox;
    bBaru: TcxButton;
    bSimpan: TcxButton;
    bHapus: TcxButton;
    bCetak: TcxButton;
    Bevel2: TBevel;
    dsQDeatail: TUniDataSource;
    lNoBPKB: TLabel;
    uniSPTampil: TUniStoredProc;
    dtTgl: TcxDateEdit;
    PopupMenu1: TPopupMenu;
    EDITDATA1: TMenuItem;
    lEdit: TLabel;
    HAPUSDATA1: TMenuItem;
    Label1: TLabel;
    Shape1: TShape;
    Label6: TLabel;
    rbPribadi: TRadioButton;
    rbBJ: TRadioButton;
    cbPemohon: TcxDBLookupComboBox;
    bTampilData: TcxButton;
    lCheck: TLabel;
    Label7: TLabel;
    lIsFalid: TLabel;
    lMerkID: TLabel;
    Label8: TLabel;
    lRoda: TLabel;
    UniDataSource1: TUniDataSource;
    UniDataSource2: TUniDataSource;
    UniQuery2: TUniQuery;
    UniQuery1: TUniQuery;
    frxReport: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDBDataset1: TfrxDBDataset;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure bBaruClick(Sender: TObject);
    procedure eNoResiPembayaranKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoRangkaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoFakturKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bSimpanClick(Sender: TObject);
    procedure EDITDATA1Click(Sender: TObject);
    procedure bHapusClick(Sender: TObject);
    procedure HAPUSDATA1Click(Sender: TObject);
    procedure bCetakClick(Sender: TObject);
    procedure rbPribadiClick(Sender: TObject);
    procedure rbBJClick(Sender: TObject);
    procedure bTampilDataClick(Sender: TObject);
    procedure cbDiplomatClick(Sender: TObject);
    procedure frxReportGetValue(const VarName: String; var Value: Variant);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }
    vIsBBN : sTRING; // jenis proses bbn
  public
    { Public declarations }
    procedure TampilAwal;
    procedure RefreshPemohon;
    procedure RefreshData;
    function CekNoUrut: String;
    procedure UpdateNoUrut;
  end;

type
  TString = class(TObject)
private
  fStr: String;
public
  constructor Create(const AStr: String) ;
  property Str: String read FStr write FStr;
end;

var
  fPendaftaran: TfPendaftaran;

implementation
Uses
  uDM, uVariabel, uModul, uWait, uPemohon, uMain, StrUtils;
{$R *.dfm}

{ TfPendaftaran }

procedure TfPendaftaran.TampilAwal;
begin
  RefreshPemohon;
  vIsBBN := '0';
  lEdit.Caption := '';
  lCheck.Caption := '0';
  lIsFalid.Caption := '';
  lMerkID.Caption := '';
  dtTgl.Date := TTglSrvSkr;
  rbPribadi.Checked := False;
  rbBJ.Checked := True;
  cbPemohon.ItemIndex := -1;
  if TKODEBAYAR = '1' then
  begin
    eNoResiPembayaran.Text := '';
    //UpdateNoUrut;
  end
  else
    eNoResiPembayaran.Text := '';
  lNoBPKB.Caption := '';
  eNoRangka.Text := '';
end;

procedure TfPendaftaran.FormShow(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfPendaftaran.bBaruClick(Sender: TObject);
begin
  RefreshData;
  lRoda.Caption := '';
  vIsBBN := '0'; // inisalisasi bbn1
  eNoRangka.Enabled := True;
  lEdit.Caption := '';
  lCheck.Caption := '0';
  lIsFalid.Caption := '';
  lMerkID.Caption := '';
  lNoBPKB.Caption := '';
  eNoRangka.Text := '';
  if TKODEBAYAR = '1' then
  begin
    eNoResiPembayaran.Text := '';
    eNoRangka.SetFocus;
  end
  else
  begin
    eNoResiPembayaran.Text := '';
    eNoResiPembayaran.SetFocus;
  end;
end;

procedure TfPendaftaran.RefreshPemohon;
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

procedure TfPendaftaran.RefreshData;
begin
  //DM.dbSrv.StartTransaction;
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'list_pendaftaran';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_tgl',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
      Params.CreateParam(ftString,'v_pemohon',ptinput).AsString := cbPemohon.EditValue;
      Params.CreateParam(ftString,'v_bbn1',ptinput).AsString := vIsBBN; // bbn1
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      //DM.dbSrv.Commit;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..list_pendaftaran%Error '+E.Message);
    end;
    end;
  end;
end;

function TfPendaftaran.CekNoUrut: String;
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
       SQL.Add('update t_nodoc_bank set urut="1" where tgl=:periode');
       Params[0].AsString := FormatDateTime('yyyymmdd',TTglSrvSkr);
       Execute;
       //CommitUpdates;
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
       //CommitUpdates;
       Result := '0001';
     Except
       on E: Exception do
         ErrorProgDialog('NourutBank.Error : '+E.Message);
     end;
    end;
  end;
end;

procedure TfPendaftaran.UpdateNoUrut;
begin
  with DM.Q do
  begin
    Close;
    SQL.Text := 'update t_nodoc_bank set urut=urut+1 where tgl=:tahun';
    Params[0].AsString := FormatDateTime('yyyymmdd',TTglSrvSkr);
    Execute;
  end;
end;

{ TString }

constructor TString.Create(const AStr: String);
begin
  inherited Create;
  FStr := AStr;
end;

procedure TfPendaftaran.eNoResiPembayaranKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
     eNoRangka.SetFocus;
end;

procedure TfPendaftaran.eNoRangkaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     bSimpan.Click;
end;

procedure TfPendaftaran.eNoFakturKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     bSimpan.Click;
end;

procedure TfPendaftaran.bSimpanClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
  tTemp : String;
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
          if eNoRangka.Text <> '' then
          begin
            if Length(eNoRangka.Text) > 5 then
            begin
              if lEdit.Caption <> '' then
              begin
                if MessageDlg('Yakin Data Pendaftaran Berkasa Akan Di-Rubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                begin
                  try
                    uniSP := TUniStoredProc.Create(Application);
                    uniSP.Connection := DM.dbSrv;
                    uniSP.Close;
                    uniSP.StoredProcName := 'bpkb_pendaftaran_edit';
                    try
                      uniSP.Params.Clear;
                      uniSP.Params.CreateParam(ftString,'vNoRangka',ptInput).AsString := eNoRangka.Text;
                      uniSP.Params.CreateParam(ftstring,'vTglDaftar',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
                      uniSP.Params.CreateParam(ftString,'vNoBPKB',ptInput).AsString := lNoBPKB.Caption;
                      uniSP.Params.CreateParam(ftString,'vPemohonID',ptInput).AsInteger := cbPemohon.EditValue;
                      uniSP.Params.CreateParam(ftString,'vPetugasID',ptInput).AsString := vIDPetugas;
                      uniSP.Params.CreateParam(ftString,'vBarcodeBank',ptInput).AsString := eNoResiPembayaran.Text;
                      uniSP.Params.CreateParam(ftString,'vLoketNo',ptInput).AsString := TLoket;
                      uniSP.Params.CreateParam(ftString,'vEnrollmentType',ptInput).AsInteger := 1;
                      if cbDiplomat.Checked = True then
                         uniSP.Params.CreateParam(ftString,'vTypeDaftaran',ptInput).AsInteger := 1
                      else
                         uniSP.Params.CreateParam(ftString,'vTypeDaftaran',ptInput).AsInteger := 0;
                      uniSP.Params.CreateParam(ftString,'vMerkID',ptInput).AsString := '';
                      uniSP.Params.CreateParam(ftString,'vDaftarID',ptInput).AsInteger := StrToInt(lEdit.Caption);
                      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
                      uniSP.ExecProc;
                      if Copy(uniSP.Params.ParamValues['RESULT'],1,2)<>'00' then
                         MessageDlgError('ERROR, PROSES PERUBAHAN DATA GAGAL # '+uniSP.Params.ParamValues['RESULT']);
                      RefreshData;
                      bBaru.Click;
                    except on E:Exception do
                    begin
                      ErrorProgDialog('Error,..bpkb_pendaftaran_edit.ExecProc%Error :'+E.Message);
                    end;
                    end;
                  finally
                    FreeAndNil(uniSP);
                  end;
                end;
              end
              else
              begin
                if MessageDlg('Yakin Data Pendaftaran Berkas Akan Di-Simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                begin
                  try
                    tTemp := CekNoUrut;
                    uniSP := TUniStoredProc.Create(Application);
                    uniSP.Connection := DM.dbSrv;
                    uniSP.Close;
                    uniSP.StoredProcName := 'bpkb_pendaftaran_add';
                    try
                      uniSP.Params.Clear;
                      uniSP.Params.CreateParam(ftString,'vNoRangka',ptInput).AsString := eNoRangka.Text;
                      uniSP.Params.CreateParam(ftstring,'vTglDaftar',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
                      uniSP.Params.CreateParam(ftString,'vNoBPKB',ptInput).AsString := lNoBPKB.Caption;
                      uniSP.Params.CreateParam(ftString,'vPemohonID',ptInput).AsInteger := cbPemohon.EditValue;
                      uniSP.Params.CreateParam(ftString,'vPetugasID',ptInput).AsString := vIDPetugas;
                      if TKODEBAYAR='1' then
                         uniSP.Params.CreateParam(ftString,'vBarcodeBank',ptInput).AsString := TKODEBANK+'9'+TLoket+FormatDateTime('YYMMDD',TTglSrvSkr)+tTemp
                      else
                         uniSP.Params.CreateParam(ftString,'vBarcodeBank',ptInput).AsString := eNoResiPembayaran.Text;
                      uniSP.Params.CreateParam(ftString,'vLoketNo',ptInput).AsString := TLoket;
                      uniSP.Params.CreateParam(ftString,'vEnrollmentType',ptInput).AsInteger := 1;
                      if cbDiplomat.Checked = True then
                         uniSP.Params.CreateParam(ftString,'vTypeDaftaran',ptInput).AsInteger := 1
                      else
                         uniSP.Params.CreateParam(ftString,'vTypeDaftaran',ptInput).AsInteger := 0;
                      uniSP.Params.CreateParam(ftString,'vMerkID',ptInput).AsString := lMerkID.Caption;
                      if isTreaceLog='1' then
                      begin
                        Log('TRACE LOG -- PENDAFTARAN --');
                        Log('vNoRangka : '+ eNoRangka.Text);
                        Log('vTglDaftar : '+ FormatDateTime('yyyymmdd',dtTgl.Date));
                        Log('vNoBPKB : '+ lNoBPKB.Caption);
                        Log('vPemohonID : '+ cbPemohon.EditValue);
                        Log('vPetugasID : '+ vIDPetugas);
                        Log('vBarcodeBank : '+ TKODEBANK+'9'+TLoket+FormatDateTime('YYMMDD',TTglSrvSkr)+tTemp);
                        Log('vLoketNo : '+ TLoket);
                        Log('vEnrollmentType : 1');
                        if cbDiplomat.Checked = True then
                           Log('vTypeDaftaran : 1')
                        else
                           Log('vTypeDaftaran : 0');
                        Log('vMerkID : '+ lMerkID.Caption);
                      end;

                      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
                      uniSP.ExecProc;
                      if Copy(uniSP.Params.ParamValues['RESULT'],1,2)<>'00' then
                      begin
                        RefreshData;
                        MessageDlgError('ERROR # '+uniSP.Params.ParamValues['RESULT']);
                      end
                      else
                      begin
                        UpdateNoUrut;
                        RefreshData;
                        bBaru.Click;
                      end;
                    except on E:Exception do
                    begin
                      ErrorProgDialog('Error,..bpkb_pendaftaran_add.ExecProc%Error :'+E.Message);
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
              MessageDlgError('MAAF, PROSES PENULISAN NO RANGKA KURANG ATAU KEBANYAKAN CHAR NYA');
              eNoRangka.SetFocus;
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

procedure TfPendaftaran.EDITDATA1Click(Sender: TObject);
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
      eNoResiPembayaran.SetFocus;
    end;
  end;
end;

procedure TfPendaftaran.bHapusClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
  if lEdit.Caption <> '' then
  begin
    if uniSPTampil.FieldByName('Sudah_Diproses').AsInteger <> 1 then
    begin
      if MessageDlg('Yakin Data Pendaftaran Berkasa Akan Di-Hapus?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        try
          uniSP := TUniStoredProc.Create(Application);
          uniSP.Connection := DM.dbSrv;
          uniSP.Close;
          uniSP.StoredProcName := 'bpkb_pendaftaran_delete';
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
            bBaru.Click;
          except on E:Exception do
          begin
            ErrorProgDialog('Error,..bpkb_pendaftaran_delete.ExecProc Ket Error :'+E.Message);
          end;
          end;
        finally
          FreeAndNil(uniSP);
        end;
      end;
    end
    else
    begin
      MessageDlgError('PROSES HAPUS PENDAFTARAN TIDAK BISA DILAKUKAN, DATA SUDAH MASUK DALAM PROSES REGISTRASI'+#13+
                      'HUBUNGI ADMINISTRATOR UNTUK KETERANGAN LEBIH LANJUT');
    end;
  end;
end;

procedure TfPendaftaran.HAPUSDATA1Click(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
  if uniSPTampil.FieldByName('Sudah_Diproses').AsInteger <> 1 then
  begin
    if MessageDlg('Yakin Data Pendaftaran Berkasas No Rangka '+uniSPTampil.FieldByName('NO_RANGKA').AsString+' Akan Di-Hapus?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      try
        uniSP := TUniStoredProc.Create(Application);
        uniSP.Connection := DM.dbSrv;
        uniSP.Close;
        uniSP.StoredProcName := 'bpkb_pendaftaran_delete';
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
          bBaru.Click;
        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_pendaftaran_delete.ExecProc Ket Error :'+E.Message);
        end;
        end;
      finally
        FreeAndNil(uniSP);
      end;
    end;
  end
  else
  begin
    MessageDlgWarning('Data pendaftaran tidak bisa dihapus !!!'+#13+
                      'Data sudah mengalami proses registrasi bpkb')
  end;
end;

procedure TfPendaftaran.bCetakClick(Sender: TObject);
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
    else
    begin
      frxReport.ShowReport();
    end;
  end
  else
  begin
    MessageDlgInformation('Tampilkan terlebih dahulu data yang akan dicetak');
  end;
end;

procedure TfPendaftaran.rbPribadiClick(Sender: TObject);
begin
  RefreshPemohon;
  cbPemohon.SetFocus;
end;

procedure TfPendaftaran.rbBJClick(Sender: TObject);
begin
  RefreshPemohon;
  cbPemohon.SetFocus;
end;

procedure TfPendaftaran.bTampilDataClick(Sender: TObject);
begin
  if IsStrANumber(cbPemohon.EditValue) = True then
     RefreshData
  else
     MessageDlgInformation('Pemohon harus dipilih terlebih dahulu');
end;

procedure TfPendaftaran.cbDiplomatClick(Sender: TObject);
begin
  if cbDiplomat.Checked = True then
     lCheck.Caption := '1'
  else
     lCheck.Caption := '0';
end;

procedure TfPendaftaran.frxReportGetValue(const VarName: String;
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

procedure TfPendaftaran.cxButton3Click(Sender: TObject);
begin
  RefreshPemohon;
end;

procedure TfPendaftaran.cxButton1Click(Sender: TObject);
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

procedure TfPendaftaran.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if (ARecord is TcxGridDataRow) and (ARecord.Values[7] = '1') then
      AStyle := DM.cxStyleRead;
end;

end.
