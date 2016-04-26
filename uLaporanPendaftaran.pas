unit uLaporanPendaftaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Menus, DB,
  MemDS, DBAccess, Uni, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ExtCtrls;

type
  TfLaporanPendaftaran = class(TForm)
    lJudul: TLabel;
    Shape1: TShape;
    Label50: TLabel;
    Label1: TLabel;
    dtTglAwal: TcxDateEdit;
    dtTglAkhir: TcxDateEdit;
    dsQDetail: TUniDataSource;
    uniSPTampil: TUniStoredProc;
    Shape2: TShape;
    bGetDataRegister: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    procedure bGetDataRegisterClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLaporanPendaftaran: TfLaporanPendaftaran;

implementation
Uses
  uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfLaporanPendaftaran.bGetDataRegisterClick(Sender: TObject);
begin
  fWait.Show;
  Application.ProcessMessages;
  with DM.uniSPReport do
  begin
    Active := False;
    StoredProcName := 'bpkb_lap_daft_by_model';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_tgl_awal',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglAwal.Date);
      Params.CreateParam(ftString,'v_tgl_akhir',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglAkhir.Date);
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      fWait.Hide;
      Application.ProcessMessages;

      if (DM.uniSPReport.Active) and (DM.uniSPReport.RecordCount > 0) then
      begin
        tTglPembuatanLaporan := FormatDateTime('dd-mm-yyyy',dtTglAwal.Date)+' s/d '+FormatDateTime('dd-mm-yyyy',dtTglAkhir.Date);
        DM.frxDBDataset.DataSet := DM.uniSPReport;
        DM.frxReport.Clear;
        DM.frxReport.LoadFromFile(RootPath+'\lapdaft1.fr3');
        if TReport='1' then
        begin
          DM.frxReport.DesignReport();
        end
        else
        begin
          DM.frxReport.ShowReport();
        end;
      end
      else
      begin
        MessageDlg('Data yang akan dicetak tidak ada ',mtInformation,[mbOK],0);
      end;

    except on E:Exception do
    begin
      fWait.Hide;
      Application.ProcessMessages;
      ErrorProgDialog('Error,..bpkb_lap_daft_by_model%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfLaporanPendaftaran.cxButton1Click(Sender: TObject);
begin
  fWait.Show;
  Application.ProcessMessages;
  with DM.uniSPReport do
  begin
    Active := False;
    StoredProcName := 'bpkb_lap_daft_by_model_bn';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_tgl_awal',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglAwal.Date);
      Params.CreateParam(ftString,'v_tgl_akhir',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglAkhir.Date);
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      fWait.Hide;
      Application.ProcessMessages;

      if (DM.uniSPReport.Active) and (DM.uniSPReport.RecordCount > 0) then
      begin
        tTglPembuatanLaporan := FormatDateTime('dd-mm-yyyy',dtTglAwal.Date)+' s/d '+FormatDateTime('dd-mm-yyyy',dtTglAkhir.Date);
        DM.frxDBDataset.DataSet := DM.uniSPReport;
        DM.frxReport.Clear;
        DM.frxReport.LoadFromFile(RootPath+'\lapdaft1.fr3');
        if TReport='1' then
        begin
          DM.frxReport.DesignReport();
        end
        else
        begin
          DM.frxReport.ShowReport();
        end;
      end
      else
      begin
        MessageDlg('Data yang akan dicetak tidak ada ',mtInformation,[mbOK],0);
      end;

    except on E:Exception do
    begin
      fWait.Hide;
      Application.ProcessMessages;
      ErrorProgDialog('Error,..bpkb_lap_daft_by_model_bn%Error '+E.Message);
    end;
    end;
  end;
end;

end.
