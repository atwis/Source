unit uSKETBPKB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, cxButtons, cxTextEdit, frxBarcode,
  frxDesgn, frxClass, frxDBSet, DB, MemDS, DBAccess, Uni;

type
  TfSKETBPKB = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    eNoBPKB_CB: TcxTextEdit;
    bBaru_CB: TcxButton;
    bCetakBuku_CB: TcxButton;
    QTT: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxBarCodeObject1: TfrxBarCodeObject;
    procedure bBaru_CBClick(Sender: TObject);
    procedure bCetakBuku_CBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSKETBPKB: TfSKETBPKB;

implementation
Uses
  uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfSKETBPKB.bBaru_CBClick(Sender: TObject);
begin
  eNoBPKB_CB.Text := '';
  eNoBPKB_CB.SetFocus;
end;

procedure TfSKETBPKB.bCetakBuku_CBClick(Sender: TObject);
begin
  with QTT do
  begin
    Close;
    SQL.Text := 'SELECT /*+ star */ a.BERKAS_ID,a.BPKB_ID,a.NO_BPKB,a.TEMPAT_KELUAR,a.NREG_BPKB,g.POLDA_NAMA,a.TGL_BPKB,'+
                'h.NO_POLISI,s.WILAYAH_NAMA,REPLACE (REPLACE (k.NAMA_PEMILIK, CHR (10), ''''), CHR (13), '''') AS NAMA_PEMILIK,'+
                'REPLACE (REPLACE (j.ALAMAT_PEMILIK, CHR (10), ''''), CHR (13), '''') AS ALAMAT_PEMILIK,'+
                'm.MERK_NAMA,a.TIPE,n.JENIS_NAMA,e.MODEL_NAMA,a.THN_BUAT,a.THN_RAKIT,a.VOL_SILINDER,a.JML_RODA,a.JML_SUMBU,o.WARNA_NAMA,'+
                'a.NO_RANGKA,a.NO_MESIN,p.BB_NAMA,t.WARNATNKB,atpm.ATPM_NAMA,a.NO_FAKTUR,a.TGL_FAKTUR,a.NO_PABEAN,a.KETR_PABEAN,'+
                '(CASE WHEN b.tt_by IS NULL THEN 0 ELSE 1 END) AS PRINTED_TT,(CASE WHEN b.TT_DATE IS NULL THEN SYSDATE ELSE b.TT_DATE END) AS TGL_TT,'+
                'c.OP_NAMA'+
                ' FROM t_BPKB_MASTER a'+
                '  INNER JOIN t_CHECKPOINT b ON b.BERKAS_ID = a.BERKAS_ID'+
                '  INNER JOIN t_OPERATOR c ON c.OP_ID = b.ENTRI_BY'+
                '  INNER JOIN t_HISTORY hist ON hist.HIST_ID = a.CURRENT_HISTID'+
                '  INNER JOIN t_HIST_BENTUK d ON d.HIST_ID = a.CURRENT_HISTID'+
                '  INNER JOIN m_MODEL e ON e.MODEL_ID = d.MODEL_ID'+
                '  INNER JOIN m_POLDA g ON g.POLDA_ID = a.POLDA_ID'+
                '  INNER JOIN t_HIST_NOPOLISI h ON h.HIST_ID = a.CURRENT_HISTID'+
                '  INNER JOIN t_HIST_BENTUK i ON i.HIST_ID = a.CURRENT_HISTID'+
                '  INNER JOIN t_HIST_ALAMATPEMILIK j ON j.HIST_ID = a.CURRENT_HISTID'+
                '  INNER JOIN t_HIST_NAMAPEMILIK k ON k.HIST_ID = a.CURRENT_HISTID'+
                '  INNER JOIN t_HIST_WARNA l ON l.HIST_ID = a.CURRENT_HISTID'+
                '  INNER JOIN m_MERK m ON m.MERK_ID = a.MERK_ID'+
                '  INNER JOIN m_JENIS n ON n.JENIS_ID = a.JENIS_ID'+
                '  INNER JOIN m_WARNA o ON o.WARNA_ID = l.WARNA_ID'+
                '  INNER JOIN M_BAHANBAKAR p ON p.BB_ID = a.BB_ID'+
                '  INNER JOIN M_WILAYAH s ON s.WILAYAH_ID = j.WILAYAH_ID'+
                '  INNER JOIN M_WARNATNKB t ON t.WARNATNKB_ID = h.WARNATNKB_ID'+
                '  INNER JOIN m_ATPM atpm ON atpm.ATPM_ID = m.ATPM_ID'+
                '  INNER JOIN t_PENDAFTARAN2 df ON df.BERKAS_ID = a.BERKAS_ID'+
                '  INNER JOIN M_PEMOHON pmh ON pmh.PEMOHON_ID = df.PEMOHON_ID'+
                '  WHERE a.NO_BPKB=:NO_BPKB';
    try
      Params[0].AsString := eNoBPKB_CB.Text;
      Open;
      if recordcount > 0 then
      begin
        frxDBDataset1.DataSet := QTT;
        frxReport.Clear;
        frxReport.LoadFromFile(RootPath+'\tanda_terima.fr3');
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
        MessageDlgWarning('DATA TIDAK DITEMUKAN');
      end;
    except on E: Exception do
    begin
      ErrorProg('Error. bCetakBuku_CBClick..[Select] Ket error '+E.Message);
    end;
    end;
  end;
end;

end.
