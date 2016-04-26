unit uLaporanBBN1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxPC, Menus, cxButtons, MemDS, DBAccess, Uni;

type
  TfLaporanBBN1 = class(TForm)
    Shape1: TShape;
    Label1: TLabel;
    Label50: TLabel;
    dtTgl1: TcxDateEdit;
    Label2: TLabel;
    dtTgl2: TcxDateEdit;
    Shape2: TShape;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    lJudul: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    pDaftar: TPanel;
    pEntry: TPanel;
    pVerifikasi: TPanel;
    pTTD: TPanel;
    pPengesahan: TPanel;
    Label3: TLabel;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    Timer1: TTimer;
    dsuniSPDetail: TUniDataSource;
    uniSPDetail: TUniStoredProc;
    uniSPSUM: TUniStoredProc;
    lTimer: TLabel;
    cxButton2: TcxButton;
    uniSPTampil: TUniStoredProc;
    dsuniSPTampil: TUniDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    uniSPEntri: TUniStoredProc;
    dsuniSPEntri: TUniDataSource;
    uniSPVerifikasi: TUniStoredProc;
    dsuniSPVerifikasi: TUniDataSource;
    uniSPCetak: TUniStoredProc;
    dsuniSPCetak: TUniDataSource;
    cxGridDBOperator: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    Label4: TLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    procedure Timer1Timer(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetDataLiveMonitoring;
    procedure GetSUMDataLive;
    procedure RefreshDataPendaftaran;
    procedure RefreshDataEntri;
    procedure RefreshDataVerifikasi;
    procedure RefreshDataCetak;
  end;

var
  fLaporanBBN1: TfLaporanBBN1;

implementation
uses
   uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfLaporanBBN1.Timer1Timer(Sender: TObject);
var
   TempMenit : Int64;
begin
  TempMenit := StrToInt(TWaktu);
  Inc(IMenit,1);
  LTimer.Caption := 'Setiap '+TWaktu+' Detik. Sisa waktu --> '+IntToStr((IMenit))+'/'+IntToStr(TempMenit)+ ' detik.';
  Application.ProcessMessages;
  If IMenit = TempMenit Then
  begin
    Timer1.Enabled := False;
    TISTIMER := '0';
    GetDataLiveMonitoring;
    IMenit := 0;
    Timer1.Enabled := True;
  end;
end;

procedure TfLaporanBBN1.GetDataLiveMonitoring;
begin
  lJudul.Caption := 'Monitoring Tanggal '+FormatDateTime('dd/mm/yyyy',dtTgl1.Date)+' s/d '+FormatDateTime('dd/mm/yyyy',dtTgl2.Date);
  with uniSPDetail do
  begin
    Active := False;
    StoredProcName := 'bpkb_detail_mon_live';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_tgl1',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl1.Date);
      Params.CreateParam(ftString,'v_tgl2',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl2.Date);
      Params.CreateParam(ftString,'v_bbn1',ptinput).AsString := '0';
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      if recordcount > 0 then
      begin
        GetSUMDataLive;
      end
      else
      begin
        pDaftar.Caption := '0';
        pEntry.Caption := '0';
        pVerifikasi.Caption := '0';
        pTTD.Caption := '0';
        pPengesahan.Caption := '0';
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_detail_mon_live%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfLaporanBBN1.GetSUMDataLive;
begin
  with uniSPSUM do
  begin
    Active := False;
    StoredProcName := 'bpkb_sum_mon_live';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_tgl1',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl1.Date);
      Params.CreateParam(ftString,'v_tgl2',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl2.Date);
      Params.CreateParam(ftString,'v_bbn1',ptinput).AsString := '0';
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      if recordcount > 0 then
      begin
        pDaftar.Caption := FormatKeUang(uniSPSUM.FieldByName('JML_DAFTAR').AsCurrency);
        pEntry.Caption := FormatKeUang(uniSPSUM.FieldByName('JML_ENTRI').AsCurrency);
        pVerifikasi.Caption := FormatKeUang(uniSPSUM.FieldByName('JML_VERIFIKASI').AsCurrency);
        pTTD.Caption := FormatKeUang(uniSPSUM.FieldByName('JML_PRINT_BUKU').AsCurrency);
        pPengesahan.Caption := FormatKeUang(uniSPSUM.FieldByName('JML_DISERAHKAN').AsCurrency);
      end
      else
      begin
        pDaftar.Caption := '0';
        pEntry.Caption := '0';
        pVerifikasi.Caption := '0';
        pTTD.Caption := '0';
        pPengesahan.Caption := '0';
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_sum_mon_live%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfLaporanBBN1.cxButton1Click(Sender: TObject);
begin
  GetDataLiveMonitoring;
end;

procedure TfLaporanBBN1.FormShow(Sender: TObject);
begin
  dtTgl1.Date := TTglSrvSkr;
  dtTgl2.Date := TTglSrvSkr;
  Timer1.Enabled := True;
end;

procedure TfLaporanBBN1.FormCreate(Sender: TObject);
begin
  TWaktu := '5';
  panel3.left := (Panel1.width div 2) - panel3.width div 2;
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TfLaporanBBN1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Timer1.Enabled := False;
end;

procedure TfLaporanBBN1.RefreshDataPendaftaran;
begin
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'list_pendaftaran2';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_tgl1',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl1.Date);
      Params.CreateParam(ftString,'v_tgl2',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl2.Date);
      Params.CreateParam(ftString,'v_bbn1',ptinput).AsString := '0';
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..list_pendaftaran2%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfLaporanBBN1.cxButton2Click(Sender: TObject);
begin
  RefreshDataPendaftaran;
end;

procedure TfLaporanBBN1.RefreshDataEntri;
begin
  with uniSPEntri do
  begin
    Active := False;
    StoredProcName := 'bpkb_detail_entri';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_tgl1',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl1.Date);
      Params.CreateParam(ftString,'v_tgl2',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl2.Date);
      Params.CreateParam(ftString,'v_bbn1',ptinput).AsString := '0';
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_detail_entri%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfLaporanBBN1.cxButton3Click(Sender: TObject);
begin
  RefreshDataEntri;
end;

procedure TfLaporanBBN1.RefreshDataCetak;
begin
  with uniSPCetak do
  begin
    Active := False;
    StoredProcName := 'bpkb_detail_cetak';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_tgl1',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl1.Date);
      Params.CreateParam(ftString,'v_tgl2',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl2.Date);
      Params.CreateParam(ftString,'v_bbn1',ptinput).AsString := '0';
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_detail_cetak%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfLaporanBBN1.RefreshDataVerifikasi;
begin
  with uniSPVerifikasi do
  begin
    Active := False;
    StoredProcName := 'bpkb_detail_verifikasi';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_tgl1',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl1.Date);
      Params.CreateParam(ftString,'v_tgl2',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl2.Date);
      Params.CreateParam(ftString,'v_bbn1',ptinput).AsString := '0';
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_detail_verifikasi%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfLaporanBBN1.cxButton4Click(Sender: TObject);
begin
  RefreshDataVerifikasi;
end;

procedure TfLaporanBBN1.cxButton5Click(Sender: TObject);
begin
  RefreshDataCetak;
end;

end.
