unit uMonitoringDaftDealer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  DBAccess, Uni, MemDS, cxCurrencyEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfMonitoringDaftDealer = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label50: TLabel;
    dtTglAwal: TcxDateEdit;
    Label2: TLabel;
    dtTglAkhir: TcxDateEdit;
    bCari: TcxButton;
    Shape2: TShape;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    uniSPTampil: TUniStoredProc;
    dsuniSPTampil: TUniDataSource;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    cxGridDBTableView2Column3: TcxGridDBColumn;
    QTampil: TUniQuery;
    procedure bCariClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMonitoringDaftDealer: TfMonitoringDaftDealer;

implementation
uses
   uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfMonitoringDaftDealer.bCariClick(Sender: TObject);
begin
  with QTampil do
  begin
    Close;
    SQL.Text := 'SELECT NO_RANGKA,NO_MESIN,NO_FAKTUR,TGL_FAKTUR,TIPE,MODEL,JENIS,WARNA,SILINDER,THN_BUAT,THN_RAKIT,MERK,BAHAN_BAKAR,JML_SUMBU,JML_RODA,'+
                'NO_FORM_A,TGL_FORM_A,NO_PIB,NO_SUT,NO_SRUT,NO_TPT,KD_DEALER,NAMA_DEALER,KOTA_DEALER,NAMA_PEMILIK1,NAMA_PEMILIK2,ALAMAT_PEMILIK1,'+
                'ALAMAT_PEMILIK2,KELURAHAN,KECAMATAN,KABUPATEN,PROPINSI,KD_POS,NO_KTP,NO_KK,TGL_LAHIR,TELP,PENDIDIKAN,PEKERJAAN,TYPE_OF_PURCHASE,'+
                'LEASING_NAME,TGL_INSERT,PERUNTUKAN,WARNATNKB,NO_BUKTI,TGL_BUKTI,PNBP,BUKTI_TRANSFER'+
                ' FROM DBATPM.T_FAKTUR'+
                ' WHERE TO_CHAR(TGL_BUKTI, ''YYYYMMDD'') BETWEEN :tglawal AND :tglakhir';
    ParamByName('tglawal').AsString := FormatDateTime('YYYYMMDD',dtTglAwal.Date);
    ParamByName('tglakhir').AsString := FormatDateTime('YYYYMMDD',dtTglAkhir.Date);
    Open;
  end;
  {with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_daft_dealer';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_tgl_awal',ptinput).AsString := FormatDateTime('YYYYMMDD',dtTglAwal.Date);
      Params.CreateParam(ftString,'v_tgl_akhir',ptinput).AsString := FormatDateTime('YYYYMMDD',dtTglAkhir.Date);
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      if recordcount > 0 then
      begin

      end
      else
      begin
        MessageDlg('DATA TIDAK DITEMUKAN',mtWarning,[mbOK],0);
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_daft_dealer%Error '+E.Message);
    end;
    end;
  end;}
end;

procedure TfMonitoringDaftDealer.FormShow(Sender: TObject);
begin
  dtTglAwal.Text := '';
  dtTglAkhir.Text := '';
  uniSPTampil.Close;
end;

end.
