unit uTandaTerimaGB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, Menus, frxRich, frxClass, frxDesgn,
  frxBarcode, frxDBSet, DBAccess, Uni, MemDS, cxDropDownEdit, cxCalendar,
  StdCtrls, cxButtons, cxSplitter, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ExtCtrls, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TfTandaTerimaGB = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    cbPemohonTTBBN1: TcxDBLookupComboBox;
    Panel1: TPanel;
    pAwal: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    pCek: TPanel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxSplitter2: TcxSplitter;
    pPilih: TPanel;
    cxButton1: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton8: TcxButton;
    bGetDataKI: TcxButton;
    dtTglPrintTTBBN1: TcxDateEdit;
    UniQuery1: TUniQuery;
    UniQuery2: TUniQuery;
    UniDataSource2: TUniDataSource;
    UniDataSource1: TUniDataSource;
    QBiru: TUniQuery;
    QBiruBPKB_ID: TIntegerField;
    QBirubpkb_no: TStringField;
    QBiruis_cetak_ki: TIntegerField;
    no_biru: TIntegerField;
    dsBiru: TUniDataSource;
    QHijau: TUniQuery;
    QHijauBPKB_ID: TIntegerField;
    QHijaubpkb_no: TStringField;
    QHijauis_cetak_ki: TIntegerField;
    nohikau: TIntegerField;
    dsQHijau: TUniDataSource;
    UniQuery3: TUniQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    Q: TUniQuery;
    QTT: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDesigner1: TfrxDesigner;
    frxReport: TfrxReport;
    frxRichObject1: TfrxRichObject;
    PopupMenu1: TPopupMenu;
    CETAKULANG1: TMenuItem;
    procedure FormResize(Sender: TObject);
    procedure bGetDataKIClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vIsBBN : sTRING; // jenis proses bbn
  public
    { Public declarations }
    procedure TampilAwal;
    procedure RefreshAwal;
    procedure RefreshPemohon;
  end;

var
  fTandaTerimaGB: TfTandaTerimaGB;

implementation
Uses
  uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfTandaTerimaGB.FormResize(Sender: TObject);
var
  tLebar : Integer;
begin
  tLebar := Round((Width-69)/2);
  pAwal.Width := tLebar;
  pPilih.Width := tLebar;
  Application.ProcessMessages;
end;

procedure TfTandaTerimaGB.RefreshAwal;
begin

end;

procedure TfTandaTerimaGB.RefreshPemohon;
begin
  UniQuery1.Close;
  UniQuery1.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  UniQuery1.Open;

  UniQuery2.Close;
  UniQuery2.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  UniQuery2.Open;
end;

procedure TfTandaTerimaGB.TampilAwal;
begin
  dtTglPrintTTBBN1.Date := TTglSrvSkr;
  cbPemohonTTBBN1.Text := '';
end;

procedure TfTandaTerimaGB.bGetDataKIClick(Sender: TObject);
begin
  with DM.Q do
  begin
    Close;
    SQL.Text := 'CREATE GLOBAL TEMPORARY TABLE detail_tt_gb'+
                ' ON COMMIT PRESERVE ROWS'+
                ' AS  SELECT  /*+ star */ a.BERKAS_ID, a.BPKB_ID, a.NO_BPKB, a.TEMPAT_KELUAR, a.NREG_BPKB, g.POLDA_NAMA, a.TGL_BPKB,'+
                ' h.NO_POLISI, s.WILAYAH_NAMA, REPLACE (REPLACE (k.NAMA_PEMILIK, CHR (10), ''''), CHR (13), '''') AS NAMA_PEMILIK,'+
                ' REPLACE (REPLACE (j.ALAMAT_PEMILIK, CHR (10), ''''), CHR (13), '''') AS ALAMAT_PEMILIK, m.MERK_NAMA, a.TIPE, n.JENIS_NAMA,'+
                ' e.MODEL_NAMA, a.THN_BUAT, a.THN_RAKIT, a.VOL_SILINDER, a.JML_RODA, a.JML_SUMBU, o.WARNA_NAMA, a.NO_RANGKA,'+
                ' a.NO_MESIN, p.BB_NAMA, t.WARNATNKB, atpm.ATPM_NAMA, a.NO_FAKTUR, a.TGL_FAKTUR, a.NO_PABEAN, a.KETR_PABEAN,'+
                ' (CASE WHEN b.tt_by IS NULL THEN 0 ELSE 1 END) AS PRINTED_TT, b.TT_DATE AS TGL_TT, c.OP_NAMA'+
                ' FROM t_BPKB_MASTER a'+
                ' INNER JOIN t_CHECKPOINT b ON b.BERKAS_ID = a.BERKAS_ID'+
                ' INNER JOIN t_OPERATOR c ON c.OP_ID = b.ENTRI_BY'+
                ' INNER JOIN t_HISTORY hist ON hist.HIST_ID = a.CURRENT_HISTID'+
                ' INNER JOIN t_HIST_BENTUK d ON d.HIST_ID = a.CURRENT_HISTID'+
                ' INNER JOIN m_MODEL e ON e.MODEL_ID = d.MODEL_ID'+
                ' INNER JOIN m_POLDA g ON g.POLDA_ID = a.POLDA_ID'+
                ' INNER JOIN t_HIST_NOPOLISI h ON h.HIST_ID = a.CURRENT_HISTID'+
                ' INNER JOIN t_HIST_BENTUK i ON i.HIST_ID = a.CURRENT_HISTID'+
                ' INNER JOIN t_HIST_ALAMATPEMILIK j ON j.HIST_ID = a.CURRENT_HISTID'+
                ' INNER JOIN t_HIST_NAMAPEMILIK k ON k.HIST_ID = a.CURRENT_HISTID'+
                ' INNER JOIN t_HIST_WARNA l ON l.HIST_ID = a.CURRENT_HISTID'+
                ' INNER JOIN m_MERK m ON m.MERK_ID = a.MERK_ID'+
                ' INNER JOIN m_JENIS n ON n.JENIS_ID = a.JENIS_ID'+
                ' INNER JOIN m_WARNA o ON o.WARNA_ID = l.WARNA_ID'+
                ' INNER JOIN M_BAHANBAKAR p ON p.BB_ID = a.BB_ID'+
                ' INNER JOIN M_WILAYAH s ON s.WILAYAH_ID = j.WILAYAH_ID'+
                ' INNER JOIN M_WARNATNKB t ON t.WARNATNKB_ID = h.WARNATNKB_ID'+
                ' LEFT JOIN m_ATPM atpm ON atpm.ATPM_ID = m.ATPM_ID'+
                ' LEFT JOIN t_PENDAFTARAN2 df ON df.BERKAS_ID = a.BERKAS_ID'+
                ' LEFT JOIN M_PEMOHON pmh ON pmh.PEMOHON_ID = df.PEMOHON_ID'+
                ' WHERE a.POLDA_ID = :polda_id AND a.POLRES_ID = :polres_id'+
                ' AND TO_CHAR (a.TGL_BPKB, ''yyyymmdd'') = :tgl_bpkb AND a.IS_BBN2 = :bbn'+
                ' ORDER BY a.BPKB_ID';
    Params[0].AsString := vPOLDAID;
    Params[1].AsString := vPOLRESID;
    Params[2].AsString := FormatDateTime('yyyymmdd',dtTglPrintTTBBN1.Date);
    Params[3].AsString := vIsBBN;
    Execute;
  end;
end;

procedure TfTandaTerimaGB.FormShow(Sender: TObject);
begin
  vIsBBN := '4';
end;

end.
