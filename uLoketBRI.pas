unit uLoketBRI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Printers,
  dxSkinsDefaultPainters, Menus, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxRadioGroup, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCurrencyEdit, DBAccess, Uni, MemDS;

type
  TfLoketBRI = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    rbTgl: TcxRadioButton;
    dtTgl: TcxDateEdit;
    Label20: TLabel;
    dtTgl2: TcxDateEdit;
    rbNoReg: TcxRadioButton;
    Label2: TLabel;
    eNoAwal: TcxTextEdit;
    Label4: TLabel;
    eNoAkhir: TcxTextEdit;
    bTampilDataMaterial: TcxButton;
    Shape2: TShape;
    bBuatLabel: TcxButton;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Shape3: TShape;
    Label19: TLabel;
    cbJenisPenerbitan2: TcxComboBox;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxButton1: TcxButton;
    uniSPTampil: TUniStoredProc;
    uniSP: TUniStoredProc;
    dsSPTampil: TUniDataSource;
    pBuatLabel: TPanel;
    Shape4: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Shape5: TShape;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lRpPNBP1: TLabel;
    lRpPNBP2: TLabel;
    Shape6: TShape;
    cxButton4: TcxButton;
    cbJenisPenerbitan: TcxComboBox;
    dtTglDikeluarkan: TcxDateEdit;
    eJMLBuku: TcxTextEdit;
    cxButton6: TcxButton;
    uniSPTampil2: TUniStoredProc;
    Q: TUniQuery;
    PopupMenu1: TPopupMenu;
    DELETESELECT1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pBuatLabelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bBuatLabelClick(Sender: TObject);
    procedure eJMLBukuKeyPress(Sender: TObject; var Key: Char);
    procedure eJMLBukuPropertiesChange(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure bTampilDataMaterialClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxButton1Click(Sender: TObject);
    procedure DELETESELECT1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TampilAwal;
    procedure RefreshData;
    procedure CetakBarcodeLabel(vbarcode,vNoUrut,vtgl,vJnsKendaraan : String);
    procedure RefreshDataCetak;
    procedure RefreshDataCetakUlang(vKode:String);
  end;

var
  fLoketBRI: TfLoketBRI;

implementation
uses
  uDM, uModul, uVariabel, uMain, APUtilCrpt, uSetting, uTunggu, uWait;
{$R *.dfm}

procedure TfLoketBRI.FormCreate(Sender: TObject);
begin
  AktifModeIndonesia;
end;

procedure TfLoketBRI.TampilAwal;
begin
  dtTgl.Date := TTglSrvSkr;
  dtTgl2.Date := TTglSrvSkr;
  eNoAwal.Text := '';
  eNoAkhir.Text := '';
  rbTgl.Checked := True;
  cbJenisPenerbitan2.SetFocus;
end;

procedure TfLoketBRI.FormShow(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfLoketBRI.pBuatLabelMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pBuatLabel.Handle, wm_SysCommand,$f012,0);
end;

procedure TfLoketBRI.bBuatLabelClick(Sender: TObject);
begin
  cbJenisPenerbitan.Text := '';
  dtTglDikeluarkan.Date := TTglSrvSkr;
  eJMLBuku.Text := '0';
  lRpPNBP1.Caption := '0';
  lRpPNBP2.Caption := '0';
  Application.ProcessMessages;
  pBuatLabel.Left := 29;
  pBuatLabel.Top := 64;
  pBuatLabel.Visible := True;
end;

procedure TfLoketBRI.eJMLBukuKeyPress(Sender: TObject; var Key: Char);
begin
  if Not IsAngka(Key) then
     Key := CHR(0);
end;

procedure TfLoketBRI.eJMLBukuPropertiesChange(Sender: TObject);
var
  TempMauBayar : Currency;
begin
  If eJMLBuku.Text = '' then
     eJMLBuku.Text := '0';
  TempMauBayar := BuangTitik(eJMLBuku.Text);
  if Pos('R2',cbJenisPenerbitan.Text) > 0 then
  begin
    lRpPNBP1.Caption := FormatKeUang(vPNBPR2);
    lRpPNBP2.Caption := FormatKeUang(TempMauBayar*vPNBPR2);
    eJMLBuku.Text := FormatFloat('#,##0',TempMauBayar);
    eJMLBuku.SelStart := Length(eJMLBuku.Text) + 1;
  end
  else if Pos('R4',cbJenisPenerbitan.Text) > 0 then
  begin
    lRpPNBP1.Caption := FormatKeUang(vPNBPR4);
    lRpPNBP2.Caption := FormatKeUang(TempMauBayar*vPNBPR4);
    eJMLBuku.Text := FormatFloat('#,##0',TempMauBayar);
    eJMLBuku.SelStart := Length(eJMLBuku.Text) + 1;
  end
  else
  begin
    lRpPNBP1.Caption := '0';
    lRpPNBP2.Caption := '0';
    eJMLBuku.Text := FormatFloat('#,##0',TempMauBayar);
    eJMLBuku.SelStart := Length(eJMLBuku.Text) + 1;
  end;
end;

procedure TfLoketBRI.cxButton6Click(Sender: TObject);
var
  uniSP : TUniStoredProc;
  vTemp : String;
begin
  if MessageDlg('Yakin data akan diciptakan?',mtConfirmation,[mbYes,mbNO],0)=mrYes then
  begin
    if cbJenisPenerbitan.Text <> '' then
    begin
      try
        fWait.Show;
        Application.ProcessMessages;
        uniSP := TUniStoredProc.Create(Application);
        uniSP.Connection := DM.dbSrv;
        uniSP.Close;
        uniSP.StoredProcName := 'bri_create_label';
        try
          uniSP.Params.Clear;
          if cbJenisPenerbitan.ItemIndex+1 = 10 then
             vTemp := 'A'
          else
             vTemp := IntToStr(cbJenisPenerbitan.ItemIndex+1);
          uniSP.Params.CreateParam(ftstring,'v_jenis_penerbitan',ptinput).AsString := vTemp; //IntToStr(cbJenisPenerbitan.ItemIndex+1);
          uniSP.Params.CreateParam(ftString,'v_tgl_proses',ptInput).AsString := FormatDateTime('yyyymmdd',dtTglDikeluarkan.Date);
          uniSP.Params.CreateParam(ftString,'v_jml_data',ptInput).AsString := eJMLBuku.Text;
          uniSP.Params.CreateParam(ftString,'v_bln_th_reg',ptInput).AsString := IntToRoman(StrToInt(FormatDateTime('MM',dtTglDikeluarkan.Date)))+
                                                                                FormatDateTime('YYYY',dtTglDikeluarkan.Date);
          if Pos('R2',cbJenisPenerbitan.Text) > 0 then
             uniSP.Params.CreateParam(ftString,'v_pnbp',ptInput).AsCurrency := vPNBPR2
          else if Pos('R4',cbJenisPenerbitan.Text) > 0 then
             uniSP.Params.CreateParam(ftString,'v_pnbp',ptInput).AsCurrency := vPNBPR4
          else
             uniSP.Params.CreateParam(ftString,'v_pnbp',ptInput).AsCurrency := 0;
          uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
          uniSP.ExecProc;

          cbJenisPenerbitan2.ItemIndex := cbJenisPenerbitan.ItemIndex;
          RefreshData;

          fWait.Hide;

          pBuatLabel.Visible := False;

          Application.ProcessMessages;

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bri_create_label.ExecProc Ket Error :'+E.Message);
        end;
        end;
      finally
        FreeAndNil(uniSP);
      end;
    end
    else
    begin
      MessageDlgError('JENIS PEMBAYARAN HARUS DIPILIH LEBIH DAHULU');
      cbJenisPenerbitan.SetFocus;
    end;
  end;
end;

procedure TfLoketBRI.RefreshData;
var
  isGet,vTemp : String;
begin
  fWait.Show;
  Application.ProcessMessages;
  if rbTgl.Checked = True then
     isGet := '0'
  else if rbNoReg.Checked = True then
     isGet := '1';

  if cbJenisPenerbitan2.ItemIndex+1 = 10 then
     vTemp := 'A'
  else
     vTemp := IntToStr(cbJenisPenerbitan2.ItemIndex+1);

  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'BRI_GET_LIST';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_is_get',ptinput).AsString := isGet;
      Params.CreateParam(ftString,'v_tgl_proses',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
      Params.CreateParam(ftString,'v_tgl_proses2',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl2.Date);
      Params.CreateParam(ftString,'v_no_awal',ptinput).AsString := eNoAwal.Text;
      Params.CreateParam(ftString,'v_no_akhir',ptinput).AsString := eNoAkhir.Text;
      Params.CreateParam(ftString,'v_jns_penerbitan',ptinput).AsString := vTemp;

      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      fWait.Hide;
      Application.ProcessMessages;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,.. BRI_GET_LIST%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfLoketBRI.bTampilDataMaterialClick(Sender: TObject);
begin
  RefreshData;
end;

procedure TfLoketBRI.cxButton4Click(Sender: TObject);
begin
  pBuatLabel.Visible := False;
end;

procedure TfLoketBRI.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if (ARecord is TcxGridDataRow) and (ARecord.Values[3] = '1') then
      AStyle := DM.cxStyleRead;
end;

procedure TfLoketBRI.CetakBarcodeLabel(vbarcode, vNoUrut, vtgl, vJnsKendaraan: String);   //vBRIBarcode, vBRINo, vBRItglKeluar,vBRIJnsPenerbitan
Var
  F:TextFile;
begin
  AssignPrn(F);
  Rewrite(F);
  WriteLn(F,'^XA');
  WriteLn(F,'^FO80,30');
  WriteLn(F,'^BCN,80,N,N,N');
  WriteLn(F,'^BY2,2.0');
  WriteLn(F,'^FD'+vbarcode+'^FS');
  WriteLn(F,'^FO50,115');
  WriteLn(F,'^ADN,36,20^FD'+'PNBP - '+vNoUrut+'^FS');
  WriteLn(F,'^FO50,167');
  WriteLn(F,'^ADN^FDTanggal^FS');
  WriteLn(F,'^FO225,167');
  WriteLn(F,'^ADN^FD: '+vtgl+'^FS');
  WriteLn(F,'^FO50,193');
  WriteLn(F,'^ADN^FDKD. Bayar ^FS');
  WriteLn(F,'^FO225,193');
  WriteLn(F,'^ADN^FD: '+vbarcode+'^FS');
  WriteLn(F,'^FO500,140');
  WriteLn(F,'^ADN,36,25^FD'+vJnsKendaraan+'^FS');
  WriteLn(F,'^XZ');
  CloseFile(F);
end;

procedure TfLoketBRI.cxButton1Click(Sender: TObject);
begin
  if MessageDlg('Yakin data akan dicetak dalam kertas label?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    RefreshDataCetak;

    if (uniSPTampil2.Active) and (uniSPTampil2.RecordCount > 0) then
    begin
      uniSPTampil2.First;
      while not uniSPTampil2.Eof do
      begin
        CetakBarcodeLabel(uniSPTampil2.FieldByName('BRI_BARCODE').AsString,
                          uniSPTampil2.FieldByName('BRI_NO').AsString,
                          uniSPTampil2.FieldByName('TGL_KELUAR').AsString,
                          uniSPTampil2.FieldByName('JNS_PENERBITAN').AsString);

        // update status cetak

        Q.Close;
        Q.SQL.Text := 'UPDATE T_BRI SET IS_PROSES=''1'' WHERE BRI_BARCODE=:BRI';
        try
          Q.Params[0].AsString := uniSPTampil2.FieldByName('BRI_BARCODE').AsString;
          Q.Execute;
        except on E: Exception do
        begin
          ErrorProgDialog('Error,.. update status cetak barcode bri%Error '+E.Message);
        end;
        end;
        Application.ProcessMessages;
        RefreshData;
      uniSPTampil2.Next;
      end;
    end;
  end;
end;

procedure TfLoketBRI.RefreshDataCetak;
var
  isGet,vTemp : String;
begin
  fWait.Show;
  Application.ProcessMessages;
  if rbTgl.Checked = True then
     isGet := '0'
  else if rbNoReg.Checked = True then
     isGet := '1';

  if cbJenisPenerbitan2.ItemIndex+1 = 10 then
     vTemp := 'A'
  else
     vTemp := IntToStr(cbJenisPenerbitan2.ItemIndex+1);

  with uniSPTampil2 do
  begin
    Active := False;
    StoredProcName := 'BRI_GET_LIST_CETAK';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_is_get',ptinput).AsString := isGet;
      Params.CreateParam(ftString,'v_tgl_proses',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
      Params.CreateParam(ftString,'v_tgl_proses2',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl2.Date);
      Params.CreateParam(ftString,'v_no_awal',ptinput).AsString := eNoAwal.Text;
      Params.CreateParam(ftString,'v_no_akhir',ptinput).AsString := eNoAkhir.Text;
      Params.CreateParam(ftString,'v_jns_penerbitan',ptinput).AsString := vTemp;

      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      fWait.Hide;
      Application.ProcessMessages;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,.. BRI_GET_LIST_CETAK%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfLoketBRI.DELETESELECT1Click(Sender: TObject);
var
  I: Integer;
begin
  if MessageDlg('Yakin data berkas akan dicetak ulang?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    for I := 0 to cxGridDBTableView1.Controller.SelectedRecordCount - 1 do
    begin
      RefreshDataCetakUlang(cxGridDBTableView1.Controller.SelectedRecords[I].Values[0]);
    end;
  end;
  RefreshData;
end;

procedure TfLoketBRI.RefreshDataCetakUlang(vKode: String);
var
  isGet,vTemp : String;
begin
  fWait.Show;
  Application.ProcessMessages;
  if rbTgl.Checked = True then
     isGet := '0'
  else if rbNoReg.Checked = True then
     isGet := '1';

  if cbJenisPenerbitan2.ItemIndex+1 = 10 then
     vTemp := 'A'
  else
     vTemp := IntToStr(cbJenisPenerbitan2.ItemIndex+1);

  with uniSPTampil2 do
  begin
    Active := False;
    StoredProcName := 'BRI_GET_LIST_CETAKU';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_is_get',ptinput).AsString := isGet;
      Params.CreateParam(ftString,'v_barcode',ptinput).AsString := vKode;
      Params.CreateParam(ftString,'v_jns_penerbitan',ptinput).AsString := vTemp;

      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;

      CetakBarcodeLabel(uniSPTampil2.FieldByName('BRI_BARCODE').AsString,
                        uniSPTampil2.FieldByName('BRI_NO').AsString,
                        uniSPTampil2.FieldByName('TGL_KELUAR').AsString,
                        uniSPTampil2.FieldByName('JNS_PENERBITAN').AsString);

      // UPDATE CETAK ULANG
      Q.Close;
      Q.SQL.Text := 'UPDATE T_BRI SET CETAK_ULANG=CETAK_ULANG+1 WHERE BRI_BARCODE=:BRI';
      try
        Q.Params[0].AsString := vKode;
        Q.Execute;
      except on E: Exception do
      begin
        ErrorProgDialog('Error,.. update status cetak barcode bri%Error '+E.Message);
      end;
      end;
      fWait.Hide;
      Application.ProcessMessages;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,.. BRI_GET_LIST_CETAK%Error '+E.Message);
    end;
    end;
  end;
end;

end.
