unit uHistoryBPKB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  StdCtrls, cxButtons, cxTextEdit, ExtCtrls, DB, MemDS, DBAccess, Uni,
  frxClass, frxDBSet, frxExportPDF, frxDesgn;

type
  TfHistoryBPKB = class(TForm)
    eNoBPKB: TcxTextEdit;
    Label1: TLabel;
    bCari: TcxButton;
    Shape1: TShape;
    lJudul: TLabel;
    frxReport: TfrxReport;
    frxDesigner: TfrxDesigner;
    frxPDFExport: TfrxPDFExport;
    frxDBDatasetDetail: TfrxDBDataset;
    uniSPReport: TUniStoredProc;
    Label2: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    eCari2: TcxTextEdit;
    cxButton1: TcxButton;
    uniSPReport2: TUniStoredProc;
    procedure bCariClick(Sender: TObject);
    procedure frxReportGetValue(const VarName: String; var Value: Variant);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function CekNoHistory : String;
  end;

var
  fHistoryBPKB: TfHistoryBPKB;

implementation
Uses
  uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfHistoryBPKB.bCariClick(Sender: TObject);
begin
  if eNoBPKB.Text <> '' then
  begin
    fWait.Show;
    Application.ProcessMessages;
    with DM.uniSPReport do
    begin
      Active := False;
      StoredProcName := 'bpkb_hist_bpkb';
      try
        Params.Clear;
        Params.CreateParam(ftString,'v_no_bpkb',ptinput).AsString := eCari2.Text;
        Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
        Open;
        fWait.Hide;
        Application.ProcessMessages;

        if (DM.uniSPReport.Active) and (DM.uniSPReport.RecordCount > 0) then
        begin
          tNoDok := CekNoHistory;
          tTglDok := FormatDateTime('dd-mm-yyyy',TTglSrvSkr);
          tTglPembuatanLaporan := FormatDateTime('dd-mm-yyyy',TTglSrvSkr);
          DM.frxDBDataset.DataSet := DM.uniSPReport;
          DM.frxReport.Clear;
          DM.frxReport.LoadFromFile(RootPath+'\histbpkb.fr3');
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
        ErrorProgDialog('Error,..bpkb_hist_bpkb%Error '+E.Message);
      end;
      end;
    end;
  end
  else
  begin

  end;
end;

function TfHistoryBPKB.CekNoHistory: String;
begin
  with DM.Q do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select (COUNTER_NUMBER+1) as no from T_COUNTER_STORAGE where COUNTER_ID=''HISTBPKB''');
    Open;
    If RecordCount > 0 then
    begin
     If FieldByName('no').AsInteger = 999999 then
     begin
       Close;
       SQL.Clear;
       SQL.Add('update T_COUNTER_STORAGE set COUNTER_NUMBER=1 where COUNTER_ID=''HISTBPKB''');
       Execute;
       Result := 'Sket/HS/'+'000001'+'/'+IntToRoman(StrToInt(FormatDateTime('mm',TTglSrvSkr)))+
                 '/'+FormatDateTime('yyyy',TTglSrvSkr)+'/BPKB/LL';
     end
     else if (FieldByName('no').AsString = '') or (FieldByName('no').AsString = '0') then
     begin
       Result := 'Sket/HS/'+'000001'+'/'+IntToRoman(StrToInt(FormatDateTime('mm',TTglSrvSkr)))+
                 '/'+FormatDateTime('yyyy',TTglSrvSkr)+'/BPKB/LL';
     end
     else
     begin
       Result := 'Sket/HS/'+Format('%.6d',[FieldByName('no').AsInteger])+'/'+IntToRoman(StrToInt(FormatDateTime('mm',TTglSrvSkr)))+
                 '/'+FormatDateTime('yyyy',TTglSrvSkr)+'/BPKB/LL'
     end;
    end
    else
    begin
     Close;
     SQL.Clear;
     SQL.Add('insert into T_COUNTER_STORAGE (COUNTER_ID,COUNTER_NUMBER) values (:COUNTER_ID,:COUNTER_NUMBER)');
     Try
       Params[0].AsString := '0';
       Params[1].AsString := 'HISTBPKB';
       Execute;
       Result := 'Sket/HS/'+'000001'+'/'+IntToRoman(StrToInt(FormatDateTime('mm',TTglSrvSkr)))+
                 '/'+FormatDateTime('yyyy',TTglSrvSkr)+'/BPKB/LL';
     Except
       on E: Exception do
         ErrorProgDialog('Nourut.Error : '+E.Message);
     end;
    end;
  end;
end;

procedure TfHistoryBPKB.frxReportGetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName = 'HEADER' then
     Value := tHeader;
  if VarName = 'NoDok' then
     Value := tNoDok;
  if VarName = 'TglDok' then
     Value := tTglDok;
  if VarName = 'KetDok' then
     Value := tKetDok;
  if VarName = 'NoSPMM' then
     Value := tNoSPMM;
  if VarName = 'polda' then
     Value := tPolda;
  if VarName = 'polres' then
     Value := tPolres;
  if VarName = 'TEMPAT_KELUAR' then
     Value := TKota;
  if VarName = 'TEMPAT_KELUAR' then
     Value := TKota;
  if VarName = 'NAMA_OP' then
     Value := vNamaPetugas;
  if VarName = 'PANGKAT_OP' then
     Value := vJabatanPetugas;
  if VarName = 'NRP_OP' then
     Value := vNRP;
  if VarName = 'TANGGAL' then
     Value := tTglPembuatanLaporan;
end;

procedure TfHistoryBPKB.cxButton1Click(Sender: TObject);
begin
  if eCari2.Text <> '' then
  begin
    fWait.Show;
    Application.ProcessMessages;
    with uniSPReport do
    begin
      Active := False;
      StoredProcName := 'bpkb_asal_usul_kendaraan';
      try
        Params.Clear;
        Params.CreateParam(ftString,'v_kode_cari',ptinput).AsString := '0';
        Params.CreateParam(ftString,'v_cari',ptinput).AsString := eCari2.Text;
        Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
        Open;
        fWait.Hide;
        Application.ProcessMessages;

        if (uniSPReport.Active) and (uniSPReport.RecordCount > 0) then
        begin
          uniSPReport2.Active :=  False;
          uniSPReport2.StoredProcName := 'bpkb_asal_usul_kendaraan2';
          uniSPReport2.Params.CreateParam(ftString,'v_cari',ptinput).AsString := eCari2.Text;
          uniSPReport2.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          uniSPReport2.Open;

          if (uniSPReport2.Active) and (uniSPReport2.RecordCount > 0) then
          begin
            tNoDok := CekNoHistory;
            tTglDok := FormatDateTime('dd-mm-yyyy',TTglSrvSkr);
            tTglPembuatanLaporan := FormatDateTime('dd-mm-yyyy',TTglSrvSkr);
            DM.frxDBDataset.DataSet := uniSPReport;
            frxDBDatasetDetail.DataSet := uniSPReport2;

            DM.frxReport.Clear;
            DM.frxReport.LoadFromFile(RootPath+'\asal_usul.fr3');
            if TReport='1' then
            begin
              DM.frxReport.DesignReport();
            end
            else
            begin
              DM.frxReport.ShowReport();
            end;
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
        ErrorProgDialog('Error,..bpkb_hist_bpkb%Error '+E.Message);
      end;
      end;
    end;
  end
  else
  begin

  end;
end;

end.
