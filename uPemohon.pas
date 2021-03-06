unit uPemohon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxButtonEdit, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxMemo,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Menus, cxButtons, DBAccess, Uni,
  MemDS, cxBlobEdit, jpeg, ExtDlgs, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfPemohon = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dtTglRegister: TcxDateEdit;
    eAlamat: TcxMemo;
    eNama: TcxTextEdit;
    Label5: TLabel;
    eNoTelp: TcxTextEdit;
    Label6: TLabel;
    eNoHP: TcxTextEdit;
    Label7: TLabel;
    eNoRekening: TcxTextEdit;
    Label8: TLabel;
    Label9: TLabel;
    bBaru: TcxButton;
    bSimpan: TcxButton;
    bHapus: TcxButton;
    bCetak: TcxButton;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    QDetail: TUniQuery;
    dsQDeatail: TUniDataSource;
    bTambahPerusahaan: TcxButton;
    pEntryPerusahaan: TPanel;
    Button1: TButton;
    Label10: TLabel;
    Shape2: TShape;
    Label11: TLabel;
    eNamaPerusahaan: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    Label12: TLabel;
    Shape3: TShape;
    Image1: TImage;
    cxButton3: TcxButton;
    OpenPictureDialog1: TOpenPictureDialog;
    ledit: TLabel;
    PopupMenu1: TPopupMenu;
    EditData1: TMenuItem;
    BlokirData1: TMenuItem;
    lnoreg: TLabel;
    cxGridDBTableView1Column12: TcxGridDBColumn;
    cbBank: TcxTextEdit;
    Label13: TLabel;
    cbJenis: TComboBox;
    cbPerusahaan: TcxDBLookupComboBox;
    QPerusahaan1: TUniQuery;
    dsQPerusahaan1: TUniDataSource;
    dsQPerusahaan2: TUniDataSource;
    QPerusahaan2: TUniQuery;
    procedure Button1Click(Sender: TObject);
    procedure pEntryPerusahaanMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure bTambahPerusahaanClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure bBaruClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure bSimpanClick(Sender: TObject);
    procedure bHapusClick(Sender: TObject);
    procedure EditData1Click(Sender: TObject);
    procedure BlokirData1Click(Sender: TObject);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TampilAwal;
    procedure RefreshData;
    procedure SimpanDataPemohon;
    procedure RefreshCbPerusahaan;
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
  fPemohon: TfPemohon;

implementation
uses
  uDM, uModul, uVariabel;
{$R *.dfm}

{ TfPemohon }

procedure TfPemohon.TampilAwal;
begin
  ledit.Caption := '';
  lnoreg.Caption := '';
  eNama.Text := '';
  eAlamat.Text := '';
  eNoTelp.Text := '';
  eNoHP.Text := '';
  cbBank.Text := '';
  eNoRekening.Text := '';
  cbPerusahaan.ItemIndex := -1;
  dtTglRegister.Text := '';
  Image1.Picture.LoadFromFile(RootPath+'\UNKNOWN.JPG');
  RefreshCbPerusahaan;
  // RefreshCbBank;
  RefreshData;
  eNama.SetFocus;
end;

procedure TfPemohon.Button1Click(Sender: TObject);
begin
  pEntryPerusahaan.Visible := False;
end;

procedure TfPemohon.pEntryPerusahaanMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pEntryPerusahaan.Handle, wm_SysCommand,$f012,0);
end;

procedure TfPemohon.bTambahPerusahaanClick(Sender: TObject);
begin
  pEntryPerusahaan.Left := 112;
  pEntryPerusahaan.Top := 66;
  pEntryPerusahaan.Visible := True;
end;

procedure TfPemohon.cxButton2Click(Sender: TObject);
begin
  eNamaPerusahaan.Text := '';
  eNamaPerusahaan.SetFocus;
end;

procedure TfPemohon.cxButton1Click(Sender: TObject);
begin
  if eNamaPerusahaan.Text <> '' then
  begin
    with DM.Q do
    begin
      Close;
      SQL.Text := 'insert into m_company(company_nama) values(:nama)';
      Params[0].AsString := eNamaPerusahaan.Text;
      Execute;
      if MessageDlg('Data Perusahaan Berhasil disimpan !!'+#13+
                    'Apakah ada data Perusahaan yang akan disimpan lagi?'+#13+
                    'Tekan "YES" untuk lanjut proses penyimpanan berikutnya'+#13+
                    'Tekan "NO" untuk mengakhiri proses penyimpanan data Perusahaan',
                    mtConfirmation,[mbYes,mbNo],0)=mrYes then
        cxButton2.Click
      else
        Button1.Click;
    end;
  end
  else
  begin
    MessageDlg('Nama Perusahaan harus diisi',mtError,[mbOK],0);
    eNamaPerusahaan.SetFocus;
  end;
end;

procedure TfPemohon.RefreshData;
begin
  with QDetail do
  begin
    Close;
    SQL.Text := 'select a.pemohon_id,a.pemohon_reg,a.pemohon_nama,a.company_id,b.company_nama,'+
                'a.bank_id as bank_nama,a.pemohon_rek,a.pemohon_telp,a.pemohon_hp,a.pemohon_alamat,'+
                'a.pemohon_foto,a.tgl_daftar,a.status'+
                ' from m_pemohon a'+
                ' left join m_company b on a.company_id=b.company_id'+
                ' order by a.pemohon_id';
    Open;
  end;
end;

procedure TfPemohon.bBaruClick(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfPemohon.FormShow(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfPemohon.cxButton3Click(Sender: TObject);
var
  bmp: TBitmap;
  jpg: TJpegImage;
  scale: Double;
  NamaDir,NamaFIle : String;
begin
  NamaDir := RootPath+'\IMAGE_RISAZE\';
  If Not DirectoryExists(NamaDir) then
     ForceDirectories(NamaDir);
  if OpenPictureDialog1.Execute then
  begin
    // Resize image
    jpg := TJpegImage.Create;
    try
      NamaFIle := ExtractFileName(OpenPictureDialog1.FileName);
      jpg.Loadfromfile(OpenPictureDialog1.filename);
      if jpg.Height > jpg.Width then
        scale := 200 / jpg.Height
      else
        scale := 200 / jpg.Width;
      bmp := TBitmap.Create;
      try
        {Create thumbnail bitmap, keep pictures aspect ratio}
        bmp.Width := Round(jpg.Width * scale);
        bmp.Height:= Round(jpg.Height * scale);
        bmp.Canvas.StretchDraw(bmp.Canvas.Cliprect, jpg);
        {Draw thumbnail as control}
        Self.Canvas.Draw(100, 10, bmp);
        {Convert back to JPEG and save to file}
        jpg.Assign(bmp);
        jpg.SaveToFile(ChangeFileext(NamaDir+NamaFIle, '.JPG')
        );
      finally
        bmp.free;
      end;
    finally
      jpg.free;
    end;
    Image1.Picture.LoadFromFile(NamaDir+NamaFIle);
    vLokasiFileJPEG := NamaDir+NamaFIle;
    //OpenPictureDialog1.FileName := NamaDir+NamaFIle;
  end;
end;

procedure TfPemohon.SimpanDataPemohon;
var
  MS  : TMemoryStream;
  vRegister : String;
begin
  try
    MS := TMemoryStream.Create;
    if OpenPictureDialog1.FileName <> '' then
      MS.LoadFromFile(vLokasiFileJPEG)
    else
    begin
      if ledit.Caption = '' then
         MS.LoadFromFile(RootPath+'\UNKNOWN.jpg')
      else
         MS.LoadFromFile(RootPath+'\temp.jpg');
    end;

    with DM.Q do
    begin
      Close;
      if ledit.Caption = '' then
      begin
        if MessageDlg('Yakin data pemohon akan disimpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          vRegister := CekNoUrut('reg_pemohon')+'/'+TKDPOLDA+'/'+FormatDateTime('mmYYYY',TTglSrvSkr);
          SQL.Text := 'insert into m_pemohon(pemohon_reg,pemohon_nama,company_id,'+
                      'bank_id,pemohon_rek,pemohon_telp,pemohon_hp,pemohon_alamat,pemohon_foto,tgl_daftar,status,pemohon_jenis)'+
                      ' values(:pemohon_reg,:pemohon_nama,:company_id,'+
                      ':bank_id,:pemohon_rek,:pemohon_telp,:pemohon_hp,:pemohon_alamat,:pemohon_foto,:tgl_daftar,:status,:pemohon_jenis)';
          try
            ParamByName('pemohon_reg').AsString := vRegister;
            ParamByName('pemohon_nama').AsString := eNama.Text;
            ParamByName('company_id').AsInteger := cbPerusahaan.EditValue;
            ParamByName('bank_id').AsString := cbBank.Text;
            ParamByName('pemohon_rek').AsString := eNoRekening.Text;
            ParamByName('pemohon_telp').AsString := eNoTelp.Text;
            ParamByName('pemohon_hp').AsString := eNoHP.Text;
            ParamByName('pemohon_alamat').AsString := eAlamat.Text;
            ParamByName('pemohon_foto').SetBlobData(MS.Memory, MS.Size);
            ParamByName('tgl_daftar').AsDate := dtTglRegister.Date;
            ParamByName('status').AsString := '1';
            ParamByName('pemohon_jenis').AsString := cbJenis.Text;
            Execute;
            UpdateNoUrut('reg_pemohon');
            MessageDlg('Data berhasil disimpan',mtInformation,[mbOK],0);
            //DM.dbSrv.Commit;
          except on E:Exception do
          begin
            DM.dbSrv.Rollback;
            ErrorProgDialog('Error,..Insert m_pemohon. Ket Error '+E.Message);
          end;
          end;
        end;
      end
      else
      begin
        if MessageDlg('Yakin data pemohon akan dirubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          SQL.Text := 'update m_pemohon set pemohon_reg=:pemohon_reg,pemohon_nama=:pemohon_nama,company_id=:company_id,'+
                      'bank_id=:bank_id,pemohon_rek=:pemohon_rek,pemohon_telp=:pemohon_telp,pemohon_hp=:pemohon_hp,'+
                      'pemohon_alamat=:pemohon_alamat,pemohon_foto=:pemohon_foto,tgl_daftar=:tgl_daftar,status=:status,pemohon_jenis=:pemohon_jenis'+
                      ' where pemohon_id=:pemohon_id';
          try
            ParamByName('pemohon_reg').AsString := lnoreg.Caption;
            ParamByName('pemohon_nama').AsString := eNama.Text;
            ParamByName('company_id').AsInteger := cbPerusahaan.EditValue;
            ParamByName('bank_id').AsString := cbBank.Text;
            ParamByName('pemohon_rek').AsString := eNoRekening.Text;
            ParamByName('pemohon_telp').AsString := eNoTelp.Text;
            ParamByName('pemohon_hp').AsString := eNoHP.Text;
            ParamByName('pemohon_alamat').AsString := eAlamat.Text;
            ParamByName('pemohon_foto').SetBlobData(MS.Memory, MS.Size);
            ParamByName('tgl_daftar').AsDate := dtTglRegister.Date;
            ParamByName('status').AsString := '1';
            ParamByName('pemohon_jenis').AsString := cbJenis.Text;
            ParamByName('pemohon_id').AsString := ledit.Caption;
            Execute;
            MessageDlg('Data berhasil dirubah',mtInformation,[mbOK],0);
            //DM.dbSrv.Commit;
          except on E:Exception do
          begin
            DM.dbSrv.Rollback;
            ErrorProgDialog('Error,..update m_pemohon. Ket Error '+E.Message);
          end;
          end;
        end;
      end;
    end;
    RefreshData;
  finally
    FreeAndNil(MS);
  end;
end;

procedure TfPemohon.RefreshCbPerusahaan;
begin
  QPerusahaan1.Close;
  QPerusahaan1.SQL.Text := 'select to_char(company_id) as kode,company_nama as nama from m_company order by company_nama';
  QPerusahaan1.Open;

  QPerusahaan2.Close;
  QPerusahaan2.SQL.Text := 'select to_char(company_id) as kode,company_nama as nama from m_company order by company_nama';
  QPerusahaan2.Open;
end;

{ TString }

constructor TString.Create(const AStr: String);
begin
  inherited Create;
  FStr := AStr;
end;

procedure TfPemohon.bSimpanClick(Sender: TObject);
begin
  SimpanDataPemohon;
end;

procedure TfPemohon.bHapusClick(Sender: TObject);
begin
  if MessageDlg('Yakin data akan dihapus?',mtWarning,[mbYes,MbNo],0)=mrYes then
  begin
    with DM.Q do
    begin
      Close;
      SQL.Text := 'delete from m_pemohon where pemohon_id=:pemohon_id';
      ParamByName('pemohon_id').AsString := ledit.Caption;
      Execute;
      MessageDlg('Data berhasil dihapus',mtInformation,[mbOK],0);
      RefreshData;
    end;
  end;
end;

procedure TfPemohon.EditData1Click(Sender: TObject);
var
  Blob  : TStream;
begin
  if (QDetail.Active) and (QDetail.RecordCount > 0) then
  begin
    ledit.Caption := QDetail.FieldByName('pemohon_id').AsString;
    lnoreg.Caption := QDetail.FieldByName('pemohon_reg').AsString;
    eNama.Text := QDetail.FieldByName('pemohon_nama').AsString;
    eAlamat.Text := QDetail.FieldByName('pemohon_alamat').AsString;
    eNoTelp.Text := QDetail.FieldByName('pemohon_telp').AsString;
    eNoHP.Text := QDetail.FieldByName('pemohon_hp').AsString;
    cbBank.Text := QDetail.FieldByName('bank_nama').AsString;
    eNoRekening.Text := QDetail.FieldByName('pemohon_rek').AsString;
    cbPerusahaan.DoEditing;
    cbPerusahaan.EditText := QDetail.FieldByName('company_id').Text;
    cbPerusahaan.PostEditValue;
    dtTglRegister.Date := QDetail.FieldByName('tgl_daftar').AsDateTime;
    if QDetail.FieldByName('pemohon_foto').AsVariant <> '' then
    begin
      blob := QDetail.CreateBlobStream(QDetail.FieldByName('pemohon_foto'), bmRead);
      try
        Blob.Seek(0, soFromBeginning);
        with TFileStream.Create(RootPath+'\temp.JPG', fmCreate) do
        try
          CopyFrom(blob, blob.Size);
        finally
          Free
        end;
      finally
         blob.Free
      end;
      Image1.Picture.LoadFromFile(RootPath+'\temp.JPG');// foto
    end
    else
    begin
      Image1.Picture.LoadFromFile(RootPath+'\UNKNOWN.JPG');// foto
    end;
  end;
end;

procedure TfPemohon.BlokirData1Click(Sender: TObject);
begin
  if MessageDlg('Yakin data pemohon atas nama '+QDetail.FieldByName('pemohon_nama').AsString+' akan diblokir?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    with DM.Q1 do
    begin
      Close;
      SQL.Text := 'update m_pemohon set status=''0'' where pemohon_id=:pemohon';
      Params[0].AsString := QDetail.FieldByName('pemohon_id').AsString;
      Execute;
      MessageDlg('Data berhasil diblokir',mtInformation,[mbOK],0);
      RefreshData;
    end;
  end;
end;

procedure TfPemohon.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if (ARecord is TcxGridDataRow) and (ARecord.Values[11] = '0') then
      AStyle := DM.cxStyleRead;
end;

end.
