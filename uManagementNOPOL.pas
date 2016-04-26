unit uManagementNOPOL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, Menus, MemDS, DBAccess, Uni, cxProgressBar,
  StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, ExtCtrls, Grids, DBGrids, CRGrid,
  cxRadioGroup, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfManagementNOPOL = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    cbKdDepan: TComboBox;
    dsQ: TUniDataSource;
    Q: TUniQuery;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    Shape2: TShape;
    rbKodeDepan: TcxRadioButton;
    rbStatus: TcxRadioButton;
    cbStatus: TComboBox;
    rbKabupaten: TcxRadioButton;
    cbKabupeten: TComboBox;
    rbNOPOL: TcxRadioButton;
    eNOPOL: TcxTextEdit;
    Label2: TLabel;
    lRecord: TLabel;
    Button1: TButton;
    Button2: TButton;
    PopupMenu1: TPopupMenu;
    PEMBATALANPENGGUNAANNOPOL1: TMenuItem;
    Label3: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbKodeDepanClick(Sender: TObject);
    procedure rbStatusClick(Sender: TObject);
    procedure rbKabupatenClick(Sender: TObject);
    procedure rbNOPOLClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cbKdDepanDropDown(Sender: TObject);
    procedure PEMBATALANPENGGUNAANNOPOL1Click(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshKabupaten;
  public
    { Public declarations }
  end;

var
  fManagementNOPOL: TfManagementNOPOL;

implementation
uses
   uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfManagementNOPOL.cxButton1Click(Sender: TObject);
begin
  fWait.Show;
  Application.ProcessMessages;
  if rbKodeDepan.Checked=True then
  begin
    with Q do
    begin

      Close;
      SQL.Text := 'SELECT KD_WILAYAH,NOURUT,HSERI,NOPOL,NO_BPKB,'+
                  '(CASE WHEN STATUS = 0 THEN ''BELUM TERPAKAI'''+
                  '      WHEN STATUS = 1 THEN ''SUDAH TERPAKAI'''+
                  '      WHEN STATUS = 2 THEN ''DLM PROSES PESANAN ORANG/REKOM'' END) AS STATUS,'+
                  'KABUPATEN FROM T_NOPOL_BANK2 WHERE KD_WILAYAH=:KD_WILAYAH ORDER BY NOPOL_ID';
      try
        Params[0].AsString := cbKdDepan.Text;
        Open;
        if recordcount > 0 then
           lRecord.Caption := FormatKeUang(Q.RecordCount)
        else
           lRecord.Caption := '0';
        fWait.Hide;
        Application.ProcessMessages;
      except on E: Exception do
        begin
          fWait.Hide;
          Application.ProcessMessages;
          ErrorProgDialog('Error... Select T_NOPOL_BANK (KD WILAYAH) '+E.Message);
        end;
      end;
    end;
  end
  else if rbStatus.Checked=True then
  begin
    with Q do
    begin
      Close;
      SQL.Text := 'SELECT KD_WILAYAH,NOURUT,HSERI,NOPOL,NO_BPKB,'+
                  '(CASE WHEN STATUS = 0 THEN ''BELUM TERPAKAI'''+
                  '      WHEN STATUS = 1 THEN ''SUDAH TERPAKAI'''+
                  '      WHEN STATUS = 2 THEN ''DLM PROSES PESANAN ORANG/REKOM'' END) AS STATUS,'+
                  'KABUPATEN FROM T_NOPOL_BANK2 WHERE STATUS=:STATUS ORDER BY NOPOL_ID';
      try
        Params[0].AsString := IntToStr(cbStatus.ItemIndex);
        Open;
        if recordcount > 0 then
           lRecord.Caption := FormatKeUang(Q.RecordCount)
        else
           lRecord.Caption := '0';
        fWait.Hide;
        Application.ProcessMessages;
      except on E: Exception do
        begin
          fWait.Hide;
          Application.ProcessMessages;
          ErrorProgDialog('Error... Select T_NOPOL_BANK (STATUS) '+E.Message);
        end;
      end;
    end;
  end
  else if rbKabupaten.Checked=True then
  begin
    with Q do
    begin
      Close;
      SQL.Text := 'SELECT KD_WILAYAH,NOURUT,HSERI,NOPOL,NO_BPKB,'+
                  '(CASE WHEN STATUS = 0 THEN ''BELUM TERPAKAI'''+
                  '      WHEN STATUS = 1 THEN ''SUDAH TERPAKAI'''+
                  '      WHEN STATUS = 2 THEN ''DLM PROSES PESANAN ORANG/REKOM'' END) AS STATUS,'+
                  'KABUPATEN FROM T_NOPOL_BANK2 WHERE KABUPATEN=:KD_WILAYAH ORDER BY NOPOL_ID';
      try
        Params[0].AsString := cbKabupeten.Text;
        Open;
        if recordcount > 0 then
           lRecord.Caption := FormatKeUang(Q.RecordCount)
        else
           lRecord.Caption := '0';
        fWait.Hide;
        Application.ProcessMessages;
      except on E: Exception do
        begin
          fWait.Hide;
          Application.ProcessMessages;
          ErrorProgDialog('Error... Select T_NOPOL_BANK (KABUPATEN) '+E.Message);
        end;
      end;
    end;
  end
  else if rbNOPOL.Checked=True then
  begin
    with Q do
    begin
      Close;
      SQL.Text := 'SELECT KD_WILAYAH,NOURUT,HSERI,NOPOL,NO_BPKB,'+
                  '(CASE WHEN STATUS = 0 THEN ''BELUM TERPAKAI'''+
                  '      WHEN STATUS = 1 THEN ''SUDAH TERPAKAI'''+
                  '      WHEN STATUS = 2 THEN ''DLM PROSES PESANAN ORANG/REKOM'' END) AS STATUS,'+
                  'KABUPATEN FROM T_NOPOL_BANK2 WHERE NOPOL=:NOPOL';
      try
        Params[0].AsString := RemoveWhiteSpace(eNOPOL.Text); //StringReplace(eNOPOL.Text, #9, '',[rfReplaceAll]);
        Open;
        if recordcount > 0 then
           lRecord.Caption := FormatKeUang(Q.RecordCount)
        else
           lRecord.Caption := '0';
        fWait.Hide;
        Application.ProcessMessages;
      except on E: Exception do
        begin
          fWait.Hide;
          Application.ProcessMessages;
          ErrorProgDialog('Error... Select T_NOPOL_BANK (NOPOL) '+E.Message);
        end;
      end;
    end;
  end
  else
  begin
    fWait.Hide;
    Application.ProcessMessages;
    MessageDlgError('PILIH TERLEBIH DAHULU DATA YG AKAN DIPROSES');
  end;
end;

procedure TfManagementNOPOL.FormShow(Sender: TObject);
begin
  RefreshKabupaten;
  rbKodeDepan.Checked := false;
  rbStatus.Checked := False;
  rbKabupaten.Checked := False;
  rbNOPOL.Checked := False;
  cbKdDepan.Text := '';
  cbStatus.Text := '';
  cbKabupeten.Text := '';
  eNOPOL.Text := '';
end;

procedure TfManagementNOPOL.RefreshKabupaten;
begin
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT KABUPATEN FROM T_NOPOL_KDWIL2 GROUP BY KABUPATEN';
    Open;
    if recordcount > 0 then
    begin
      cbKabupeten.Clear;
      while not DM.Q.Eof do
      begin
        cbKabupeten.Items.Add(DM.Q.Fields[0].AsString);
      DM.Q.Next;
      end;
    end;
  end;
end;

procedure TfManagementNOPOL.rbKodeDepanClick(Sender: TObject);
begin
  cbKdDepan.SetFocus;
end;

procedure TfManagementNOPOL.rbStatusClick(Sender: TObject);
begin
  cbStatus.SetFocus;
end;

procedure TfManagementNOPOL.rbKabupatenClick(Sender: TObject);
begin
  cbKabupeten.SetFocus;
end;

procedure TfManagementNOPOL.rbNOPOLClick(Sender: TObject);
begin
  eNOPOL.SetFocus;
end;

procedure TfManagementNOPOL.Button1Click(Sender: TObject);
begin
  fWait.Show;
  Application.ProcessMessages;
  Q.Last;
  lRecord.Caption := FormatKeUang(Q.RecordCount);
  fWait.Close;
end;

procedure TfManagementNOPOL.Button2Click(Sender: TObject);
begin
  fWait.Show;
  Application.ProcessMessages;
  Q.First;
  lRecord.Caption := FormatKeUang(Q.RecordCount);
  fWait.Close;
end;

procedure TfManagementNOPOL.cbKdDepanDropDown(Sender: TObject);
begin
  cbKdDepan.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT KODE_WIL FROM T_NOPOL_KDWIL2'+
                ' GROUP BY KODE_WIL';
    Open;

    if recordcount > 0 then
    begin
      while not eof do
      begin
        cbKdDepan.Items.Add(Fields[0].AsString);
        next;
      end;
    end;
  end;
end;

procedure TfManagementNOPOL.PEMBATALANPENGGUNAANNOPOL1Click(
  Sender: TObject);
begin
  with DM.Q do
  begin
    // cek apakah data sudah status=1 terpakai pada table t_nopol_bank2
    // Cek apakah di t_hist_nopol nopol ini ada? jika ada tidak bisa diproses, harus dari bpkb dahulu
    // jika tidak ada proses bisa dilanjutkan untuk pengecekan di table t_rekom
    // apakah data ada di table t_rekom? jika ya update statu t_nopol_bank2 menjadi STATUS=2, no_bpkb='',tglpakai=null
    // jika data tidak ada update status t_nopol_bank2 menjadi status=0,no_bpkb='',tglpakai=null
    Close;
    SQL.Text := 'SELECT STATUS FROM T_NOPOL_BANK2 WHERE NOPOL=:NOPOL';
    try
      Params[0].AsString := RemoveWhiteSpace(eNOPOL.Text);
      Open;
      if recordcount > 0 then
      begin
        if Fields[0].AsString='1' then
        begin
          Close;
          SQL.Text := 'SELECT a.BERKAS_ID,a.BPKB_ID,a.NO_BPKB,a.NREG_BPKB,a.TGL_BPKB,h.NO_POLISI,a.NO_FAKTUR,a.TGL_FAKTUR,a.NO_RANGKA,a.NO_MESIN,m.MERK_NAMA_R as MERK_NAMA,'+
                      ' a.TIPE,n.JENIS_NAMA,e.MODEL_NAMA,o.WARNA_NAMA,k.NAMA_PEMILIK,j.ALAMAT_PEMILIK,a.BPKB_STATUS FROM t_BPKB_MASTER a'+
                      '  LEFT JOIN t_HIST_BENTUK d ON d.HIST_ID = a.CURRENT_HISTID'+
                      '  LEFT JOIN m_MODEL e  ON e.MODEL_ID = d.MODEL_ID'+
                      '  LEFT JOIN t_HIST_NOPOLISI h ON h.HIST_ID = a.CURRENT_HISTID'+
                      '  LEFT JOIN t_HIST_ALAMATPEMILIK j ON j.HIST_ID = a.CURRENT_HISTID'+
                      '  LEFT JOIN t_HIST_NAMAPEMILIK k ON k.HIST_ID = a.CURRENT_HISTID'+
                      '  LEFT JOIN t_HIST_WARNA l ON l.HIST_ID = a.CURRENT_HISTID'+
                      '  LEFT JOIN m_MERK m ON m.MERK_ID = a.MERK_ID'+
                      '  LEFT JOIN m_JENIS n ON n.JENIS_ID = a.JENIS_ID'+
                      '  LEFT JOIN m_WARNA o ON o.WARNA_ID = l.WARNA_ID'+
                      '  LEFT JOIN M_BAHANBAKAR p ON p.BB_ID = a.BB_ID'+
                      '  WHERE regexp_replace(h.NO_POLISI, ''[[:space:]]*'','''')=regexp_replace(:NO_POLISI, ''[[:space:]]*'','''')';
          Try
            ParamByName('NO_POLISI').AsString := eNOPOL.Text;
            Open;

            if recordcount > 0 then
            begin
              MessageDlgWarning('DATA TIDAK BISA DIBATALKAN, KERENA DATA MASIH AKTIF DI REGISRASI BPKB'+#13+
                         'BATALKAN DAHULU DATA NOPOL TERHADAP REGISTRASI BPKB');
            end
            else
            begin
              Close;
              SQL.Text := 'SELECT NO_RANGKA,NO_MESIN,NAMA,ALAMAT,MERK_ID,JENIS_ID,TAHUN,CILINDER,WARNA_ID,TGLPENGAJUAN,NOMOR,REKOM_ID,NOPOL FROM T_REKOM'+
                          ' WHERE regexp_replace(NOPOL, ''[[:space:]]*'','''')=regexp_replace(:NOPOL, ''[[:space:]]*'','''')';
              try
                Params[0].AsString := eNOPOL.Text;
                Open;
                if MessageDlg('YAKIN DATA AKAN DIBATALKAN?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                begin
                  if recordcount > 0 then
                  begin
                    DM.Q1.Close;
                    DM.Q1.SQL.Text := 'UPDATE T_NOPOL_BANK2 SET STATUS=''2'',no_bpkb=NULL,tglpakai=NULL,no_rangka=:No WHERE NO_RANGKA=:NO_RANGKA AND NOPOL=:NOPOL';
                    try
                      DM.Q1.Params[0].AsString := DM.Q.FieldByName('no_rangka').AsString;
                      DM.Q1.Params[1].AsString := eNOPOL.Text;
                      DM.Q1.Execute;
                      MessageDlgInformation('DATA BERHASIL DIBATALKAN UNTUK PENGGUNAAN NOPOL INI');
                      cxButton1.Click;
                    except on E: Exception do
                    begin
                      ErrorProgDialog('Error, update t_nopol_bank status=2, ket error '+E.Message);
                    end;
                    end;
                  end
                  else
                  begin
                    DM.Q1.Close;
                    DM.Q1.SQL.Text := 'UPDATE T_NOPOL_BANK2 SET STATUS=''0'',no_bpkb=NULL,tglpakai=NULL,no_rangka=NULL WHERE NOPOL=:NOPOL';
                    try
                      DM.Q1.Params[0].AsString := eNOPOL.Text;
                      DM.Q1.Execute;
                      MessageDlgInformation('DATA BERHASIL DIBATALKAN UNTUK PENGGUNAAN NOPOL INI');
                      cxButton1.Click;
                    except on E: Exception do
                    begin
                      ErrorProgDialog('Error, update t_nopol_bank status=0, ket error '+E.Message);
                    end;
                    end;
                  end;
                end;
              except on E: Exception do
              begin
                ErrorProgDialog('Error, Select t_rekom, ket error '+E.Message);
              end;
              end;
            end;
          except on E: Exception do
          begin
            ErrorProgDialog('Error, Select t_hist_nopol, ket error '+E.Message);
          end;
          end;
        end
        else
        begin
          MessageDlgInformation('DATA NOPOL BELUM TERPAKAI');
        end;
      end
      else
      begin
        MessageDlgError('DATA NOPOL TIDAK DITEMUKAN');
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error, Select STATUS NOPOL, ket error '+E.Message);
    end;
    end;

  end;
end;

end.
