unit uMonitorPNBP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, ExtCtrls, Menus,
  cxButtons, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridBandedTableView, cxCheckBox, DBAccess, Uni, MemDS;

type
  TfMonitorPNBP = class(TForm)
    Shape2: TShape;
    lJudul: TLabel;
    Label2: TLabel;
    dtTglAwal: TcxDateEdit;
    Label3: TLabel;
    dtTglAkhir: TcxDateEdit;
    Shape1: TShape;
    bCari: TcxButton;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1BandedTableView1: TcxGridBandedTableView;
    cxJenis: TcxGridBandedColumn;
    cxBPKBBaruR2Jml: TcxGridBandedColumn;
    cxBPKBBaruR2Rp: TcxGridBandedColumn;
    cxBPKBBaruR4Jml: TcxGridBandedColumn;
    cxBPKBBaruR4Rp: TcxGridBandedColumn;
    cxBPKBBaruTotalJml: TcxGridBandedColumn;
    cxBPKBBaruTotalRp: TcxGridBandedColumn;
    cxBPKBDupR2Jml: TcxGridBandedColumn;
    cxBPKBDupR2Rp: TcxGridBandedColumn;
    cxBPKBDupR4Jml: TcxGridBandedColumn;
    cxBPKBDupR4Rp: TcxGridBandedColumn;
    cxBPKBDupTotJml: TcxGridBandedColumn;
    cxBPKBDupTotRp: TcxGridBandedColumn;
    cxBPKBGNR2Jml: TcxGridBandedColumn;
    cxBPKBGNR2Rp: TcxGridBandedColumn;
    cxBPKBGNR4Jml: TcxGridBandedColumn;
    cxBPKBGNR4Rp: TcxGridBandedColumn;
    cxBPKBGNTotJml: TcxGridBandedColumn;
    cxBPKBGNTotRp: TcxGridBandedColumn;
    cxTotalJml: TcxGridBandedColumn;
    cxTotalRp: TcxGridBandedColumn;
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
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TampilAwal;
  end;

var
  fMonitorPNBP: TfMonitorPNBP;

implementation
Uses
  uDM, uVariabel, uModul, uWait, uMain, StrUtils;
{$R *.dfm}

{ TfMonitorPNBP }

procedure TfMonitorPNBP.TampilAwal;
begin
  dtTglAwal.Date := TTglSrvSkr;
  dtTglAkhir.Date := TTglSrvSkr;
  
end;

end.
