unit uJurnalBPKB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPC, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Menus, cxButtons, Grids, DBGrids, CRGrid, Uni, DB,
  DBAccess, MemDS, frxClass, frxDBSet, frxBarcode, frxDesgn;

type
  TfJurnalBPKB = class(TForm)
    Shape2: TShape;
    Shape1: TShape;
    lJudul: TLabel;
    Label1: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbJenisJurnal: TcxComboBox;
    cbWilayah: TcxDBLookupComboBox;
    dtTglAwal: TcxDateEdit;
    dtTglAkhir: TcxDateEdit;
    eNoBPKBAwal: TcxTextEdit;
    eNoBPKBAkhir: TcxTextEdit;
    Shape3: TShape;
    bCari: TcxButton;
    bCetak: TcxButton;
    bExport: TcxButton;
    CRDBGrid1: TCRDBGrid;
    uniSPTampil: TUniStoredProc;
    dsQDeatail: TUniDataSource;
    QWil1: TUniQuery;
    QWil2: TUniQuery;
    dsWil2: TUniDataSource;
    dsWil1: TUniDataSource;
    frxReport: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDBDSJurnal: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bCariClick(Sender: TObject);
    procedure bCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshWilayah;
    procedure TampilDataJurnalBBN1;
    procedure TampilDataJurnalBN;
    procedure TampilDataJurnalAPM;
  end;

var
  fJurnalBPKB: TfJurnalBPKB;

implementation
Uses
  uDM, uVariabel, uModul, uWait, uMain, StrUtils;
{$R *.dfm}

procedure TfJurnalBPKB.FormShow(Sender: TObject);
begin
  RefreshWilayah;
  cbJenisJurnal.Text := '';
  cbWilayah.Text := '';
  dtTglAwal.Date := TTglSrvSkr;
  dtTglAkhir.Date := TTglSrvSkr;
  dtTglAwal.Text := '';
  dtTglAkhir.Text := '';
  eNoBPKBAwal.Text := '';
  eNoBPKBAkhir.Text := '';
end;

procedure TfJurnalBPKB.RefreshWilayah;
begin
  QWil1.Close;
  QWil1.SQL.Text := 'select to_char(wilayah_id) as wilayah_kode,wilayah_nama from m_wilayah order by wilayah_nama';
  QWil1.Open;

  QWil2.Close;
  QWil2.SQL.Text := 'select to_char(wilayah_id) as wilayah_kode,wilayah_nama from m_wilayah order by wilayah_nama';
  QWil2.Open;
end;

procedure TfJurnalBPKB.FormCreate(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TfJurnalBPKB.bCariClick(Sender: TObject);
begin
  if cbJenisJurnal.Text <> '' then
  begin
    if cxPageControl1.ActivePageIndex=0 then
    begin
      if dtTglAwal.Text <> '' then
      begin
        if dtTglAkhir.Text <> '' then
        begin
          if cbJenisJurnal.ItemIndex = 0 then
             TampilDataJurnalBBN1
          else if cbJenisJurnal.ItemIndex=1 then
             TampilDataJurnalBN
          else if cbJenisJurnal.ItemIndex=2 then
             TampilDataJurnalAPM
        end
        else
        begin
          MessageDlg('TANGGAL AKHIR HARUS DIISI',mtError,[mbOK],0);
          dtTglAkhir.SetFocus;
        end;
      end
      else
      begin
        MessageDlg('TANGGAL AWAL HARUS DIISI',mtError,[mbOK],0);
        dtTglAwal.SetFocus;
      end
    end
    else
    begin
      if eNoBPKBAwal.Text <> '' then
      begin
        if eNoBPKBAkhir.Text <> '' then
        begin
          if cbJenisJurnal.ItemIndex = 0 then
             TampilDataJurnalBBN1
          else if cbJenisJurnal.ItemIndex=1 then
             TampilDataJurnalBN
          else if cbJenisJurnal.ItemIndex=2 then
             TampilDataJurnalAPM
        end
        else
        begin
          MessageDlg('NO BPKB AKHIR HARUS DIISI',mtError,[mbOK],0);
          eNoBPKBAkhir.SetFocus;
        end;
      end
      else
      begin
        MessageDlg('NO BPKB AWAL HARUS DIISI',mtError,[mbOK],0);
        eNoBPKBAwal.SetFocus;
      end
    end;
  end
  else
  begin
    MessageDlg('JENIS JURNAL HARUS DIPILIH',mtError,[mbOK],0);
    cbJenisJurnal.SetFocus;
  end;
end;

procedure TfJurnalBPKB.TampilDataJurnalBBN1;
begin
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'bpkb_lap_jurnal_bbn1';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tgl_awal',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglAwal.Date);
      Params.CreateParam(ftString,'v_tgl_akhir',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglAkhir.Date);
      if cbWilayah.Text = '<SEMUA>' then
         Params.CreateParam(ftString,'v_wilayah',ptinput).AsString := 'ALL'
      else
         Params.CreateParam(ftString,'v_wilayah',ptinput).AsString := cbWilayah.EditValue;
      Params.CreateParam(ftString,'v_no_bpkb_awal',ptinput).AsString := eNoBPKBAwal.Text;
      Params.CreateParam(ftString,'v_no_bpkb_akhir',ptinput).AsString := eNoBPKBAkhir.Text;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_lap_jurnal_bbn1%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfJurnalBPKB.bCetakClick(Sender: TObject);
begin
  if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
  begin
    frxDBDSJurnal.DataSet := uniSPTampil;
    frxReport.Clear;
    if cbJenisJurnal.ItemIndex=0 then
       frxReport.LoadFromFile(RootPath+'\rekapbpkb.fr3')
    else if cbJenisJurnal.ItemIndex=1 then
       frxReport.LoadFromFile(RootPath+'\rekapbpkb_bn.fr3')
    else if cbJenisJurnal.ItemIndex=2 then
       frxReport.LoadFromFile(RootPath+'\jurnalapm.fr3');
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
    MessageDlg('Tampilkan terlebih dahulu data yang akan dicetak',mtInformation,[mbOK],0);
  end;
end;

procedure TfJurnalBPKB.TampilDataJurnalBN;
begin
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'bpkb_lap_jurnal_bn';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tgl_awal',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglAwal.Date);
      Params.CreateParam(ftString,'v_tgl_akhir',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglAkhir.Date);
      if cbWilayah.Text = '<SEMUA>' then
         Params.CreateParam(ftString,'v_wilayah',ptinput).AsString := 'ALL'
      else
         Params.CreateParam(ftString,'v_wilayah',ptinput).AsString := cbWilayah.EditValue;
      Params.CreateParam(ftString,'v_no_bpkb_awal',ptinput).AsString := eNoBPKBAwal.Text;
      Params.CreateParam(ftString,'v_no_bpkb_akhir',ptinput).AsString := eNoBPKBAkhir.Text;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_lap_jurnal_bn%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfJurnalBPKB.TampilDataJurnalAPM;
begin
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'bpkb_lap_jurnal_bbn1';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tgl_awal',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglAwal.Date);
      Params.CreateParam(ftString,'v_tgl_akhir',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglAkhir.Date);
      if cbWilayah.Text = '<SEMUA>' then
         Params.CreateParam(ftString,'v_wilayah',ptinput).AsString := 'ALL'
      else
         Params.CreateParam(ftString,'v_wilayah',ptinput).AsString := cbWilayah.EditValue;
      Params.CreateParam(ftString,'v_no_bpkb_awal',ptinput).AsString := eNoBPKBAwal.Text;
      Params.CreateParam(ftString,'v_no_bpkb_akhir',ptinput).AsString := eNoBPKBAkhir.Text;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_lap_jurnal_bbn1%Error '+E.Message);
    end;
    end;
  end;
end;

end.
