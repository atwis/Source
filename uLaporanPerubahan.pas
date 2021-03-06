unit uLaporanPerubahan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxCurrencyEdit, DBAccess, Uni, MemDS,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, ExtCtrls, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, frxDesgn, frxBarcode,
  frxClass, frxDBSet;

type
  TfLaporanPerubahan = class(TForm)
    lJudul: TLabel;
    Shape1: TShape;
    Label50: TLabel;
    Label1: TLabel;
    Shape2: TShape;
    dtTglAwal: TcxDateEdit;
    dtTglAkhir: TcxDateEdit;
    bGetDataRegister: TcxButton;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dsQDetail: TUniDataSource;
    uniSPTampil: TUniStoredProc;
    PopupMenu1: TPopupMenu;
    C1: TMenuItem;
    uniSPDetail: TUniStoredProc;
    dsuniSPDetail: TUniDataSource;
    frxReport: TfrxReport;
    frxDBDDetail: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDesigner1: TfrxDesigner;
    procedure bGetDataRegisterClick(Sender: TObject);
    procedure C1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLaporanPerubahan: TfLaporanPerubahan;

implementation
Uses
  uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfLaporanPerubahan.bGetDataRegisterClick(Sender: TObject);
begin
  fWait.Show;
  Application.ProcessMessages;
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'bpkb_lap_perubahan';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tgl_awal',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglAwal.Date);
      Params.CreateParam(ftString,'v_tgl_akhir',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglAkhir.Date);
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      fWait.Hide;
      Application.ProcessMessages;
    except on E:Exception do
    begin
      fWait.Hide;
      Application.ProcessMessages;
      ErrorProgDialog('Error,..bpkb_lap_perubahan%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfLaporanPerubahan.C1Click(Sender: TObject);
begin
 // cetak detail data
  with uniSPDetail do
  begin
   Active := False;
    StoredProcName := 'bpkb_lap_perubahan_detail';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_prb_id',ptinput).AsString := uniSPTampil.FieldByName('PRB_ID').AsString;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      if recordcount > 0 then
      begin
        frxDBDDetail.DataSet := uniSPDetail;
        frxReport.Clear;
        frxReport.LoadFromFile(RootPath+'\detail_data_perubahan.fr3');
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
        MessageDlg('DATA DETAIL PERUBAHAN TIDAK ADA',mtInformation,[mbOK],0);
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_lap_perubahan_detail%Error '+E.Message);
    end;
    end;
  end;
end;

end.
