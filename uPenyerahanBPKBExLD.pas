unit uPenyerahanBPKBExLD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, frxClass, frxDesgn, frxBarcode,
  frxDBSet, DBAccess, Uni, MemDS, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxSplitter, cxMemo, cxTextEdit, StdCtrls,
  cxButtons, ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TfPenyerahanExLD = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label3: TLabel;
    Panel1: TPanel;
    pAwal: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    bSimpanSerah: TcxButton;
    eNoBPKBSerah: TcxTextEdit;
    eTglBPKBSerah: TcxTextEdit;
    eNoPolisiSerah: TcxTextEdit;
    eMerkSerah: TcxTextEdit;
    eTipeSerah: TcxTextEdit;
    eJenisSerah: TcxTextEdit;
    eModelSerah: TcxTextEdit;
    eNamaPemilikSerah: TcxTextEdit;
    ePemohonSerah: TcxTextEdit;
    eCatatanSerah: TcxMemo;
    cxSplitter1: TcxSplitter;
    pPilih: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    cxButton1: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dtTglPenyerahan: TcxDateEdit;
    cbPemohonPenyerahan: TcxDBLookupComboBox;
    cxButton8: TcxButton;
    bGetDataKI: TcxButton;
    bGetDataBPKB: TcxButton;
    eCariNoBPKBSerah: TcxTextEdit;
    Q: TUniQuery;
    dsQ: TUniDataSource;
    UniQuery1: TUniQuery;
    UniQuery2: TUniQuery;
    UniDataSource2: TUniDataSource;
    UniDataSource1: TUniDataSource;
    QReport: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDesigner1: TfrxDesigner;
    frxReport: TfrxReport;
    lBPKBID: TLabel;
    lPemohonID: TLabel;
    bBaru: TcxButton;
    procedure bGetDataBPKBClick(Sender: TObject);
    procedure bBaruClick(Sender: TObject);
    procedure bSimpanSerahClick(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReportGetValue(const VarName: String; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefrezshPemohon;
    procedure TampilAwal;
    procedure HapusDataTemp;
    procedure RefreshDataTemp;
    procedure CariData(vCari:String);
    procedure SimpanData;
    procedure UpdateTChekPoint(vKode,vOPID,vTgl:String);
  end;

var
  fPenyerahanExLD: TfPenyerahanExLD;

implementation

uses
   uDM, uVariabel, uModul, uWait;

{$R *.dfm}

{ TfPenyerahanExLD }

procedure TfPenyerahanExLD.CariData(vCari: String);
begin
  with DM.Q do
  begin
    // cek terlebih dahulu di table penyerahan?
    Close;
    SQL.Text := 'SELECT a.BERKAS_ID, a.BPKB_ID, a.NO_BPKB, a.TEMPAT_KELUAR, a.NREG_BPKB, a.TGL_BPKB,'+
                'h.NO_POLISI,m.MERK_NAMA, a.TIPE, n.JENIS_NAMA, e.MODEL_NAMA, pmh.PEMOHON_NAMA, pmh.PEMOHON_ID,'+
                'REPLACE (REPLACE (k.NAMA_PEMILIK, CHR (10), ''''), CHR (13), '''') AS NAMA_PEMILIK,'+
                'REPLACE (REPLACE (j.ALAMAT_PEMILIK, CHR (10), ''''), CHR (13), '''') AS ALAMAT_PEMILIK,'+
                'PY.PENYERAHAN_ID,PY.PENYERAHAN_TGL,PY.OP_ID,PY.PENYERAHAN_NOREG,PY.PEMOHON_ID,PY.PENYERAHAN_KET'+
                ' FROM t_BPKB_MASTER a'+
                ' INNER JOIN T_PENYERAHAN PY ON PY.BPKB_ID=A.BPKB_ID'+
                ' INNER JOIN t_HIST_BENTUK d ON d.HIST_ID = a.CURRENT_HISTID'+
                ' INNER JOIN m_MODEL e ON e.MODEL_ID = d.MODEL_ID'+
                ' INNER JOIN t_HIST_NOPOLISI h ON h.HIST_ID = a.CURRENT_HISTID'+
                ' INNER JOIN t_HIST_BENTUK i ON i.HIST_ID = a.CURRENT_HISTID'+
                ' INNER JOIN t_HIST_ALAMATPEMILIK j ON j.HIST_ID = a.CURRENT_HISTID'+
                ' INNER JOIN t_HIST_NAMAPEMILIK k ON k.HIST_ID = a.CURRENT_HISTID'+
                ' INNER JOIN m_MERK m ON m.MERK_ID = a.MERK_ID'+
                ' INNER JOIN m_JENIS n ON n.JENIS_ID = a.JENIS_ID'+
                ' INNER JOIN t_PENDAFTARAN2 df ON df.BERKAS_ID = a.BERKAS_ID'+
                ' INNER JOIN M_PEMOHON pmh ON pmh.PEMOHON_ID = df.PEMOHON_ID'+
                ' WHERE regexp_replace(a.NO_BPKB, ''[[:space:]]*'','''')=regexp_replace(:NO_BPKB, ''[[:space:]]*'','''')';
    try
      Params[0].AsString := vCari;
      Open;

      if recordcount > 0 then
      begin
        if MessageDlg('DATA NO BPKB '+vCari+' SUDAH PERNAH DISERAHKAN, DENGAN NO REGISTER '+FieldByName('PENYERAHAN_NOREG').AsString+#13+
                      'APAKAH MAU MENAMPILKAN DETAIL LIST DATA YANG SUDAH DISERAHKAN?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          tTglPembuatanLaporan := FormatDateTime('dd/mm/yyyy',DM.Q.FieldByName('PENYERAHAN_TGL').AsDateTime);
          
          with QReport do
          begin
            Close;
            SQL.Text := 'SELECT B.PENYERAHAN_ID,B.PENYERAHAN_TGL,B.OP_ID,B.PENYERAHAN_NOREG,B.PEMOHON_ID,B.BPKB_ID,B.PENYERAHAN_KET,'+
                        'h.NO_POLISI,m.MERK_NAMA, A.TIPE, n.JENIS_NAMA,e.MODEL_NAMA,A.NO_BPKB, A.TEMPAT_KELUAR, A.NREG_BPKB, A.TGL_BPKB,'+
                        'REPLACE (REPLACE (k.NAMA_PEMILIK, CHR (10), ''''), CHR (13), '''') AS NAMA_PEMILIK,'+
                        'REPLACE (REPLACE (j.ALAMAT_PEMILIK, CHR (10), ''''), CHR (13), '''') AS ALAMAT_PEMILIK,'+
                        'c.OP_NAMA,pmh.PEMOHON_NAMA'+
                        ' FROM T_PENYERAHAN B'+
                        ' INNER JOIN T_BPKB_MASTER A ON A.BPKB_ID=B.BPKB_ID'+
                        ' INNER JOIN t_HIST_NOPOLISI h ON h.HIST_ID = A.CURRENT_HISTID'+
                        ' INNER JOIN m_MERK m ON m.MERK_ID = a.MERK_ID'+
                        ' INNER JOIN m_JENIS n ON n.JENIS_ID = a.JENIS_ID'+
                        ' INNER JOIN t_HIST_BENTUK d ON d.HIST_ID = a.CURRENT_HISTID'+
                        ' INNER JOIN t_HIST_ALAMATPEMILIK j ON j.HIST_ID = a.CURRENT_HISTID'+
                        ' INNER JOIN t_HIST_NAMAPEMILIK k ON k.HIST_ID = a.CURRENT_HISTID'+
                        ' INNER JOIN m_MODEL e ON e.MODEL_ID = d.MODEL_ID'+
                        ' INNER JOIN t_PENDAFTARAN2 df ON df.BERKAS_ID = a.BERKAS_ID'+
                        ' INNER JOIN M_PEMOHON pmh ON pmh.PEMOHON_ID = df.PEMOHON_ID'+
                        ' INNER JOIN t_OPERATOR c ON c.OP_ID = B.OP_ID'+
                        ' WHERE B.PENYERAHAN_NOREG=:PENYERAHAN_NOREG';
            try
              Params[0].AsString := DM.Q.FieldByName('PENYERAHAN_NOREG').AsString;
              Open;

              if recordcount > 0 then
              begin
                frxDBDataset1.DataSet := QReport;
                frxReport.Clear;
                frxReport.LoadFromFile(RootPath+'\delv.fr3');
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
                MessageDlgError('DATA TIDAK ADA YANG AKAN DICETAK');
              end;
            except on E: Exception do
            begin
              ErrorProgDialog('Error...Select Report Penyerahan. Ket error '+E.Message);
            end;
            end;
          end;
        end
      end
      else
      begin
        Close;
        SQL.Text := 'SELECT a.BERKAS_ID, a.BPKB_ID, a.NO_BPKB, a.TEMPAT_KELUAR, a.NREG_BPKB, a.TGL_BPKB,'+
                    'h.NO_POLISI,m.MERK_NAMA, a.TIPE, n.JENIS_NAMA, e.MODEL_NAMA, pmh.PEMOHON_NAMA, pmh.PEMOHON_ID,'+
                    'REPLACE (REPLACE (k.NAMA_PEMILIK, CHR (10), ''''), CHR (13), '''') AS NAMA_PEMILIK,'+
                    'REPLACE (REPLACE (j.ALAMAT_PEMILIK, CHR (10), ''''), CHR (13), '''') AS ALAMAT_PEMILIK,'+
                    'NVL(chk.PRINT_BPKB_BY,-1) AS PRINT_BPKB_BY'+
                    ' FROM t_BPKB_MASTER a'+
                    ' INNER JOIN t_HIST_BENTUK d ON d.HIST_ID = a.CURRENT_HISTID'+
                    ' INNER JOIN m_MODEL e ON e.MODEL_ID = d.MODEL_ID'+
                    ' INNER JOIN t_HIST_NOPOLISI h ON h.HIST_ID = a.CURRENT_HISTID'+
                    ' INNER JOIN t_HIST_BENTUK i ON i.HIST_ID = a.CURRENT_HISTID'+
                    ' INNER JOIN t_HIST_ALAMATPEMILIK j ON j.HIST_ID = a.CURRENT_HISTID'+
                    ' INNER JOIN t_HIST_NAMAPEMILIK k ON k.HIST_ID = a.CURRENT_HISTID'+
                    ' INNER JOIN m_MERK m ON m.MERK_ID = a.MERK_ID'+
                    ' INNER JOIN m_JENIS n ON n.JENIS_ID = a.JENIS_ID'+
                    ' INNER JOIN t_PENDAFTARAN2 df ON df.BERKAS_ID = a.BERKAS_ID'+
                    ' INNER JOIN M_PEMOHON pmh ON pmh.PEMOHON_ID = df.PEMOHON_ID'+
                    ' LEFT JOIN T_CHECKPOINT chk ON chk.BERKAS_ID=a.BERKAS_ID'+
                    ' WHERE regexp_replace(a.NO_BPKB, ''[[:space:]]*'','''')=regexp_replace(:NO_BPKB, ''[[:space:]]*'','''')';
        try
          Params[0].AsString := vCari;
          Open;
          if recordcount > 0 then
          begin
            if FieldByName('PRINT_BPKB_BY').AsInteger <> -1 then
            begin
              eNoBPKBSerah.Text := FieldByName('NO_BPKB').AsString;
              eTglBPKBSerah.Text := FieldByName('TGL_BPKB').AsString;
              eMerkSerah.Text := FieldByName('MERK_NAMA').AsString;
              eTipeSerah.Text := FieldByName('TIPE').AsString;
              eJenisSerah.Text := FieldByName('JENIS_NAMA').AsString;
              eModelSerah.Text := FieldByName('MODEL_NAMA').AsString;
              ePemohonSerah.Text := FieldByName('PEMOHON_NAMA').AsString;
              eNoPolisiSerah.Text := FieldByName('NO_POLISI').AsString;
              eNamaPemilikSerah.Text := FieldByName('NAMA_PEMILIK').AsString;
              lPemohonID.Caption := FieldByName('PEMOHON_ID').AsString;
              lBPKBID.Caption := FieldByName('BPKB_ID').AsString;
              eCatatanSerah.Text := '';
              bSimpanSerah.SetFocus;
            end
            else
            begin
              MessageDlgError('PROSES TIDAK BISA DILANJUTKAN, DATA BELUM MENGALAMI PROSES PENCETAKAN BUKU BPKB');
            end;
          end
          else
          begin
            MessageDlgError('DATA BPKB TIDAK DITEMUKAN');
          end;
        except on E: Exception do
        begin
          ErrorProgDialog('Error...CariData.Ket error: '+E.Message);
        end;
        end;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error...Select Join Penyerahan, Ket error '+E.Message);
    end;
    end;
  end;
end;

procedure TfPenyerahanExLD.HapusDataTemp;
begin
  with DM.Q do
  begin
    Close;
    SQL.Text := 'DELETE FROM T_PENYERAHAN_TEMP WHERE SNHDD=:SNHDD AND PENYERAHAN_ID=0';
    try
      Params[0].AsString := tSNHDD;
      Execute;
    except on E: Exception do
    begin
      ErrorProgDialog('Error...HapusDataTemp.Ket Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfPenyerahanExLD.RefreshDataTemp;
begin
  with Q do
  begin
    Close;
    SQL.Text := 'SELECT B.SNHDD,B.PENYERAHAN_ID,B.PENYERAHAN_TGL,B.OP_ID,B.PENYERAHAN_NOREG,B.PEMOHON_ID,B.BPKB_ID,B.PENYERAHAN_KET,'+
                'h.NO_POLISI,m.MERK_NAMA, A.TIPE, n.JENIS_NAMA,e.MODEL_NAMA,A.NO_BPKB, A.TEMPAT_KELUAR, A.NREG_BPKB, A.TGL_BPKB,'+
                'REPLACE (REPLACE (k.NAMA_PEMILIK, CHR (10), ''''), CHR (13), '''') AS NAMA_PEMILIK,'+
                'REPLACE (REPLACE (j.ALAMAT_PEMILIK, CHR (10), ''''), CHR (13), '''') AS ALAMAT_PEMILIK,'+
                'c.OP_NAMA,pmh.PEMOHON_NAMA'+
                ' FROM T_PENYERAHAN_TEMP B'+
                ' INNER JOIN T_BPKB_MASTER A ON A.BPKB_ID=B.BPKB_ID'+
                ' INNER JOIN t_HIST_NOPOLISI h ON h.HIST_ID = A.CURRENT_HISTID'+
                ' INNER JOIN m_MERK m ON m.MERK_ID = a.MERK_ID'+
                ' INNER JOIN m_JENIS n ON n.JENIS_ID = a.JENIS_ID'+
                ' INNER JOIN t_HIST_BENTUK d ON d.HIST_ID = a.CURRENT_HISTID'+
                ' INNER JOIN t_HIST_ALAMATPEMILIK j ON j.HIST_ID = a.CURRENT_HISTID'+
                ' INNER JOIN t_HIST_NAMAPEMILIK k ON k.HIST_ID = a.CURRENT_HISTID'+
                ' INNER JOIN m_MODEL e ON e.MODEL_ID = d.MODEL_ID'+
                ' INNER JOIN t_PENDAFTARAN2 df ON df.BERKAS_ID = a.BERKAS_ID'+
                ' INNER JOIN M_PEMOHON pmh ON pmh.PEMOHON_ID = df.PEMOHON_ID'+
                ' INNER JOIN t_OPERATOR c ON c.OP_ID = B.OP_ID'+
                ' WHERE B.SNHDD=:SNHDD AND B.PENYERAHAN_ID=0';
    try
      Params[0].AsString := tSNHDD;
      Open;
    except on E: Exception do
    begin
      ErrorProgDialog('Error... RefreshDataTemp. Ket Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfPenyerahanExLD.RefrezshPemohon;
begin
  UniQuery1.Close;
  UniQuery1.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  UniQuery1.Open;

  UniQuery2.Close;
  UniQuery2.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  UniQuery2.Open;
end;

procedure TfPenyerahanExLD.SimpanData;
var
  Temp : String;
begin
  with DM.Q do
  begin
    tTglPembuatanLaporan := FormatDateTime('dd/mm/yyyy',dtTglPenyerahan.Date);

    Temp := 'TP/'+CekNoUrut('NOURUTPENYERAHAN')+'/'+IntToRoman(StrToInt(FormatDateTime('MM',dtTglPenyerahan.Date)))+'/'+
            FormatDateTime('YYYY',dtTglPenyerahan.Date)+'/BPKB/LL';

    Close;
    SQL.Text := 'INSERT INTO T_PENYERAHAN(PENYERAHAN_TGL,OP_ID,PENYERAHAN_NOREG,PEMOHON_ID,BPKB_ID,PENYERAHAN_KET)'+
                ' SELECT TO_DATE(:PENYERAHAN_TGL, ''YYYYMMDD HH24:MI:SS''),:OP_ID,:PENYERAHAN_NOREG,PEMOHON_ID,BPKB_ID,PENYERAHAN_KET'+
                ' FROM T_PENYERAHAN_TEMP WHERE SNHDD=:SNHDD AND PENYERAHAN_ID=0';
    try
      ParamByName('PENYERAHAN_TGL').AsString := FormatDateTime('yyyymmdd',dtTglPenyerahan.Date)+' '+FormatDateTime('hh:nn:ss',Now);
      ParamByName('OP_ID').AsString := vIDPetugas;
      ParamByName('PENYERAHAN_NOREG').AsString := Temp;
      ParamByName('SNHDD').AsString := tSNHDD;
      Execute;

      // update status penyerahan di t_checpoint
      UpdateTChekPoint(Temp,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPenyerahan.Date)+' '+FormatDateTime('hh:nn:ss',Now));

      UpdateNoUrut('NOURUTPENYERAHAN');
      // PENCETAKAN
      with QReport do
      begin
        Close;
        SQL.Text := 'SELECT B.PENYERAHAN_ID,B.PENYERAHAN_TGL,B.OP_ID,B.PENYERAHAN_NOREG,B.PEMOHON_ID,B.BPKB_ID,B.PENYERAHAN_KET,'+
                    'h.NO_POLISI,m.MERK_NAMA, A.TIPE, n.JENIS_NAMA,e.MODEL_NAMA,A.NO_BPKB, A.TEMPAT_KELUAR, A.NREG_BPKB, A.TGL_BPKB,'+
                    'REPLACE (REPLACE (k.NAMA_PEMILIK, CHR (10), ''''), CHR (13), '''') AS NAMA_PEMILIK,'+
                    'REPLACE (REPLACE (j.ALAMAT_PEMILIK, CHR (10), ''''), CHR (13), '''') AS ALAMAT_PEMILIK,'+
                    'c.OP_NAMA,pmh.PEMOHON_NAMA'+
                    ' FROM T_PENYERAHAN B'+
                    ' INNER JOIN T_BPKB_MASTER A ON A.BPKB_ID=B.BPKB_ID'+
                    ' INNER JOIN t_HIST_NOPOLISI h ON h.HIST_ID = A.CURRENT_HISTID'+
                    ' INNER JOIN m_MERK m ON m.MERK_ID = a.MERK_ID'+
                    ' INNER JOIN m_JENIS n ON n.JENIS_ID = a.JENIS_ID'+
                    ' INNER JOIN t_HIST_BENTUK d ON d.HIST_ID = a.CURRENT_HISTID'+
                    ' INNER JOIN t_HIST_ALAMATPEMILIK j ON j.HIST_ID = a.CURRENT_HISTID'+
                    ' INNER JOIN t_HIST_NAMAPEMILIK k ON k.HIST_ID = a.CURRENT_HISTID'+
                    ' INNER JOIN m_MODEL e ON e.MODEL_ID = d.MODEL_ID'+
                    ' INNER JOIN t_PENDAFTARAN2 df ON df.BERKAS_ID = a.BERKAS_ID'+
                    ' INNER JOIN M_PEMOHON pmh ON pmh.PEMOHON_ID = df.PEMOHON_ID'+
                    ' INNER JOIN t_OPERATOR c ON c.OP_ID = B.OP_ID'+
                    ' WHERE B.PENYERAHAN_NOREG=:PENYERAHAN_NOREG';
        try
          Params[0].AsString := Temp;
          Open;

          if recordcount > 0 then
          begin
            frxDBDataset1.DataSet := QReport;
            frxReport.Clear;
            frxReport.LoadFromFile(RootPath+'\delv.fr3');
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

            bBaru.Click;
          end
          else
          begin
            MessageDlgError('DATA TIDAK ADA YANG AKAN DICETAK');
          end;
        except on E: Exception do
        begin
          ErrorProgDialog('Error...Select Report Penyerahan. Ket error '+E.Message);
        end;
        end;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error...Insert T_PENYERAHAN. Ket Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfPenyerahanExLD.TampilAwal;
begin
  RefrezshPemohon;
  HapusDataTemp;
  RefreshDataTemp;
  eCariNoBPKBSerah.Text := '';
  eNoBPKBSerah.Text := '';
  eTglBPKBSerah.Text := '';
  eMerkSerah.Text := '';
  eTipeSerah.Text := '';
  eJenisSerah.Text := '';
  eModelSerah.Text := '';
  ePemohonSerah.Text := '';
  eCatatanSerah.Text := '';
  eNoPolisiSerah.Text := '';
  eNamaPemilikSerah.Text := '';
  lPemohonID.Caption := '';
  lBPKBID.Caption := '';
  dtTglPenyerahan.Date := TTglSrvSkr;
  cbPemohonPenyerahan.Text := '';
  eCariNoBPKBSerah.SetFocus;
end;

procedure TfPenyerahanExLD.UpdateTChekPoint(vKode, vOPID, vTgl: String);
begin
  with DM.Q1 do
  begin
    Close;
    SQL.Text := 'SELECT B.BERKAS_ID FROM T_PENYERAHAN A'+
                ' INNER JOIN T_BPKB_MASTER B ON A.BPKB_ID=B.BPKB_ID'+
                ' WHERE A.PENYERAHAN_NOREG=:PENYERAHAN_NOREG';
    try
      Params[0].AsString := vKode;
      Open;

      if recordcount > 0 then
      begin
        while not eof do
        begin
          DM.Q2.Close;
          DM.Q2.SQL.Text := 'UPDATE T_CHECKPOINT SET DELIVER_BY=:DELIVER_BY,DELIVER_DATE=TO_DATE(:DELIVER_DATE, ''YYYYMMDD HH24:MI:SS'') WHERE BERKAS_ID=:BERKAS_ID';
          try
            DM.Q2.Params[0].AsString := vOPID;
            DM.Q2.Params[1].AsString := vTgl;
            DM.Q2.Params[2].AsString := DM.Q1.Fields[0].AsString;
            DM.Q2.Execute;
          except on E: Exception do
          begin
            ErrorProgDialog('Error...UPDATE T_CHECKPOINT DELIVER_BY, ket error '+E.Message);
          end;
          end;

          Next;
        end;
      end
      else
      begin
        Log('Data tidak ada yang akan diupdate ke t_chackpoint, penyerahan register '+vKode);
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error... Select UpdateTChekPoint. Ket error '+E.Message);
    end;
    end;
  end;
end;

procedure TfPenyerahanExLD.bGetDataBPKBClick(Sender: TObject);
begin
  if Copy(eCariNoBPKBSerah.Text,2,1)='-' then
     CariData(Copy(eCariNoBPKBSerah.Text,1,1)+' '+Copy(eCariNoBPKBSerah.Text,3,8)+' '+vKdWilayahBPKB)
  else
     CariData(eCariNoBPKBSerah.Text);
end;

procedure TfPenyerahanExLD.bBaruClick(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfPenyerahanExLD.bSimpanSerahClick(Sender: TObject);
begin
  if MessageDlg('Yakin data akan disimpan dalam list pengambilan BPKB?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    with DM.Q do
    begin
      Close;
      SQL.Text := 'INSERT INTO T_PENYERAHAN_TEMP(SNHDD,PENYERAHAN_ID,PENYERAHAN_TGL,OP_ID,PENYERAHAN_NOREG,PEMOHON_ID,BPKB_ID,PENYERAHAN_KET)'+
                  ' VALUES(:SNHDD,:PENYERAHAN_ID,TO_DATE(:PENYERAHAN_TGL, ''YYYYMMDD HH24:MI:SS''),:OP_ID,:PENYERAHAN_NOREG,:PEMOHON_ID,:BPKB_ID,:PENYERAHAN_KET)';
      try
        ParamByName('SNHDD').AsString := tSNHDD;
        ParamByName('PENYERAHAN_ID').AsInteger := 0;
        ParamByName('PENYERAHAN_TGL').AsString := FormatDateTime('yyyymmdd',TTglSrvSkr)+' '+FormatDateTime('hh:nn:ss',Now);
        ParamByName('OP_ID').AsString := vIDPetugas;
        ParamByName('PENYERAHAN_NOREG').AsString := '-';
        ParamByName('PEMOHON_ID').AsString := lPemohonID.Caption;
        ParamByName('BPKB_ID').AsString := lBPKBID.Caption;
        ParamByName('PENYERAHAN_KET').AsString := eCatatanSerah.Text;
        Execute;
        RefreshDataTemp;
      except on E: Exception do
      begin
        ErrorProgDialog('Error... '+E.Message);
      end;
      end;
    end;
  end;

  // clear data media
  eNoBPKBSerah.Text := '';
  eTglBPKBSerah.Text := '';
  eMerkSerah.Text := '';
  eTipeSerah.Text := '';
  eJenisSerah.Text := '';
  eModelSerah.Text := '';
  ePemohonSerah.Text := '';
  eNoPolisiSerah.Text := '';
  eNamaPemilikSerah.Text := '';
  lPemohonID.Caption := '';
  lBPKBID.Caption := '';
  eCatatanSerah.Text := '';
  eCariNoBPKBSerah.Text := '';
  eCariNoBPKBSerah.SetFocus;
end;

procedure TfPenyerahanExLD.cxButton8Click(Sender: TObject);
begin
  RefrezshPemohon;
end;

procedure TfPenyerahanExLD.cxButton1Click(Sender: TObject);
begin
  if MessageDlg('YAKIN DATA LIST PENGEMBALIAN BPKB INI AKAN DISIMPAN && DICETAK?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    SimpanData;
  end;
end;

procedure TfPenyerahanExLD.FormShow(Sender: TObject);
begin
  TampilAwal;
  RefrezshPemohon;
  Application.ProcessMessages;
end;

procedure TfPenyerahanExLD.frxReportGetValue(const VarName: String;
  var Value: Variant);
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
end;

end.
