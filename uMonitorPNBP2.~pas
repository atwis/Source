unit uMonitorPNBP2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxClasses, cxGridLevel, cxGrid, StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, ExtCtrls, cxCheckBox, DBAccess,
  Uni, MemDS, cxGridDBTableView, cxCurrencyEdit;

type
  TfMonitorPNBP2 = class(TForm)
    Shape2: TShape;
    lJudul: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    dtTglAwal: TcxDateEdit;
    dtTglAkhir: TcxDateEdit;
    bCari: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    uniSPTampil: TUniStoredProc;
    dsQDeatail: TUniDataSource;
    uniSPTampil2: TUniStoredProc;
    dsuniSPTampil2: TUniDataSource;
    cxJenis: TcxGridDBBandedColumn;
    cxBPKBBaruR2Jml: TcxGridDBBandedColumn;
    cxBPKBBaruR2Rp: TcxGridDBBandedColumn;
    cxBPKBBaruR4Jml: TcxGridDBBandedColumn;
    cxBPKBBaruR4Rp: TcxGridDBBandedColumn;
    cxBPKBBaruTotalJml: TcxGridDBBandedColumn;
    cxBPKBBaruTotalRp: TcxGridDBBandedColumn;
    cxBPKBDupR2Jml: TcxGridDBBandedColumn;
    cxBPKBDupR2Rp: TcxGridDBBandedColumn;
    cxBPKBDupR4Jml: TcxGridDBBandedColumn;
    cxBPKBDupR4Rp: TcxGridDBBandedColumn;
    cxBPKBDupTotJml: TcxGridDBBandedColumn;
    cxBPKBDupTotRp: TcxGridDBBandedColumn;
    cxBPKBGNR2Jml: TcxGridDBBandedColumn;
    cxBPKBGNR2Rp: TcxGridDBBandedColumn;
    cxBPKBGNR4Jml: TcxGridDBBandedColumn;
    cxBPKBGNR4Rp: TcxGridDBBandedColumn;
    cxBPKBGNTotJml: TcxGridDBBandedColumn;
    cxBPKBGNTotRp: TcxGridDBBandedColumn;
    cxTotalJml: TcxGridDBBandedColumn;
    cxTotalRp: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure bCariClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TampilAwal;
    procedure TampildataPNBP;
  end;

var
  fMonitorPNBP2: TfMonitorPNBP2;

implementation
Uses
  uDM, uVariabel, uModul, uWait, uMain, StrUtils;
{$R *.dfm}

{ TForm1 }

procedure TfMonitorPNBP2.TampilAwal;
begin
  dtTglAwal.Date := TTglSrvSkr;
  dtTglAkhir.Date := TTglSrvSkr;
  uniSPTampil.Close;
  uniSPTampil2.Close;
end;

procedure TfMonitorPNBP2.FormShow(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfMonitorPNBP2.TampildataPNBP;
begin
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'bpkb_monitoring_pnbp';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_tgl_awal',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglAwal.Date);;
      Params.CreateParam(ftString,'v_tgl_akhir',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglAkhir.Date);
      Params.CreateParam(ftString,'v_nominal_r2',ptinput).AsInteger := 80000;
      Params.CreateParam(ftString,'v_nominal_r4',ptinput).AsInteger := 100000;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;

      fWait.Hide;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_monitoring_pnbp%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfMonitorPNBP2.bCariClick(Sender: TObject);
begin
  TampildataPNBP;
end;

end.
