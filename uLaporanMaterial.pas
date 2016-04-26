unit uLaporanMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxButtonEdit,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, DBAccess, Uni,
  MemDS, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  frxClass, frxDBSet;

type
  TfLaporanMaterial = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    bCetak: TcxButton;
    bHapus: TcxButton;
    cxGrid: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBTableView5Column1: TcxGridDBColumn;
    cxGridDBTableView5Column2: TcxGridDBColumn;
    cxGridDBTableView5Column3: TcxGridDBColumn;
    cxGridDBTableView5Column4: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    uniSPTampil: TUniStoredProc;
    dsSPTampil: TUniDataSource;
    GroupBox1: TGroupBox;
    dtTgl1: TcxDateEdit;
    Label2: TLabel;
    dtTgl2: TcxDateEdit;
    Label3: TLabel;
    cxButton1: TcxButton;
    dsQMaster: TUniDataSource;
    frxDBDataset: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    dsqDeatail: TUniDataSource;
    QMaster: TUniQuery;
    qDeatail: TUniQuery;
    procedure bHapusClick(Sender: TObject);
    procedure bCetakClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLaporanMaterial: TfLaporanMaterial;

implementation
Uses
   uDM, uModul, uVariabel, uCari, uWait;
{$R *.dfm}

procedure TfLaporanMaterial.bHapusClick(Sender: TObject);
begin
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'PG_SIMRANMOR_MATERIAL.show_stock';
    try
      Params.Clear;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.show_stock. Ket Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfLaporanMaterial.bCetakClick(Sender: TObject);
begin
  if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
  begin
    Application.ProcessMessages;
    DM.frxDBDataset.DataSource := dsSPTampil;
    DM.frxReport.LoadFromFile(RootPath+'\stock.fr3');
    if TReport = '1' then
       DM.frxReport.DesignReport
    else
       DM.frxReport.ShowReport();
  end;
end;

procedure TfLaporanMaterial.FormShow(Sender: TObject);
begin
  dtTgl1.Date := TTglSrvSkr;
  dtTgl2.Date := TTglSrvSkr;
  uniSPTampil.Close;
end;

procedure TfLaporanMaterial.cxButton1Click(Sender: TObject);
begin
  if MessageDlg('Yakin akan menampilkan data pergerakan stock?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    with QMaster do
    begin
      Close;
      SQL.Text := 'SELECT b.kode,b.nospmm,b.tgl,b.ket,b.status,b.to_polda,b.to_polres,p.polres_nama FROM t_trans_material b'+
                  ' left join m_polres p on p.polda_id=b.to_polda and p.polres_kode=b.to_polres'+
                  ' WHERE TO_CHAR (b.tgl, ''yyyymmdd'') BETWEEN :vtgl1 AND :vtgl2';
      try
        Params.ParamByName('vtgl1').AsString := FormatDateTime('yyyymmdd',dtTgl1.Date);
        Params.ParamByName('vtgl2').AsString := FormatDateTime('yyyymmdd',dtTgl2.Date);
        Open;

        if recordcount > 0 then
        begin
            qDeatail.Close;
            qDeatail.SQL.Text := 'SELECT a.kode,a.nodoc,a.kdbrg,c.nama AS namabarang,a.tgl,a.saldo_awal,a.data_in,a.data_out,a.saldo_akhir,a.usr_insert,a.tgl_insert'+
                        ' FROM t_stock a'+
                        ' INNER JOIN m_material c ON a.kdbrg = c.kode'+
                        ' WHERE TO_CHAR (a.tgl, ''yyyymmdd'') BETWEEN :vtgl1 AND :vtgl2';
            try
              qDeatail.Params.ParamByName('vtgl1').AsString := FormatDateTime('yyyymmdd',dtTgl1.Date);
              qDeatail.Params.ParamByName('vtgl2').AsString := FormatDateTime('yyyymmdd',dtTgl2.Date);
              qDeatail.Open;

              if qDeatail.RecordCount > 0 then
              begin
                Application.ProcessMessages;
                DM.frxReport.LoadFromFile(RootPath+'\pergerakan_stock.fr3');
                if TReport = '1' then
                   DM.frxReport.DesignReport
                else
                   DM.frxReport.ShowReport();
              end
              else
              begin
                MessageDlg('Data pergerakan stock tidak ada',mtInformation,[mbOK],0);
              end;
            except on E: Exception do
            begin
              ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.show_pergerakan_stock_detail. Ket Error '+E.Message);
            end
            end;
        end
        else
        begin
          MessageDlg('Data pergerakan stock tidak ada',mtInformation,[mbOK],0);
        end;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.show_pergerakan_stock_master. Ket Error '+E.Message);
      end;
      end;
    end;
  end;
end;

end.
