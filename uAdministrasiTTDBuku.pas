unit uAdministrasiTTDBuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, Menus, cxButtons, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCheckBox,
  cxMaskEdit, cxDropDownEdit, cxCalendar, MemDS, DBAccess, Uni;

type
  TfAdministrasiTTDBuku = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    bCari: TcxButton;
    Shape2: TShape;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridDBTableView1Column12: TcxGridDBColumn;
    cxGridDBTableView1Column13: TcxGridDBColumn;
    cxGridDBTableView1Column14: TcxGridDBColumn;
    cxGridDBTableView1Column15: TcxGridDBColumn;
    cxGridDBTableView1Column16: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column17: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column18: TcxGridDBColumn;
    cxButton1: TcxButton;
    Bevel1: TBevel;
    dtTglRegister: TcxDateEdit;
    Label50: TLabel;
    dsQDeatail: TUniDataSource;
    uniSPTampil: TUniStoredProc;
    UniTable1: TUniTable;
    UniDataSource1: TUniDataSource;
    cbCetak: TcxCheckBox;
    procedure bCariClick(Sender: TObject);
    procedure cbCetakClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAdministrasiTTDBuku: TfAdministrasiTTDBuku;

implementation
uses
   uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfAdministrasiTTDBuku.bCariClick(Sender: TObject);
begin
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'BPKB_GET_PERMIT_TTD';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_snhdd',ptinput).AsString := tSNHDD;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      if recordcount > 0 then
      begin
        UniTable1.Close;
        UniTable1.Open;
      end
      else
      begin
        UniTable1.Close;
        UniTable1.Open;
        MessageDlgWarning('DATA TIDAK DITEMUKAN');
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..BPKB_GET_PERMIT_TTD%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfAdministrasiTTDBuku.cbCetakClick(Sender: TObject);
begin
  if cbCetak.Checked = True then
  begin
    DM.Q.Close;
    DM.Q.SQL.Text := 'UPDATE t_IS_CETAKTTD SET IS_CETAK=''1'' WHERE SNHDD=:v_snhdd';
    DM.Q.Params[0].AsString := tSNHDD;
    DM.Q.Execute;

    UniTable1.Close;
    UniTable1.Open;
  end
  else
  begin
    DM.Q.Close;
    DM.Q.SQL.Text := 'UPDATE t_IS_CETAKTTD SET IS_CETAK=''0'' WHERE SNHDD=:v_snhdd';
    DM.Q.Params[0].AsString := tSNHDD;
    DM.Q.Execute;

    UniTable1.Close;
    UniTable1.Open;
  end;
end;

procedure TfAdministrasiTTDBuku.cxButton1Click(Sender: TObject);
begin
  if dtTglRegister.Text <> '' then
  begin
    if MessageDlg('YAKIN DATA AKAN DIUPDATE UNTUK STATUS IJIN PENCETAKAN BUKU BPKB?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      with DM.Q do
      begin
        Close;
        SQL.Text := 'UPDATE t_CHECKPOINT SET PRINT_PERMIT=''1'',PRINT_PERMIT_DATE=TO_DATE(:TGL, ''YYYYMMDD HH24:MI:SS'')'+
                    ' WHERE BERKAS_ID IN (SELECT BERKAS_ID FROM t_IS_CETAKTTD WHERE SNHDD=:SNHDD AND IS_CETAK=''1'')';
        try
          Params[0].AsString := FormatDateTime('YYYYMMDD',dtTglRegister.Date)+' '+FormatDateTime('HH:NN:SS',Now);
          Params[1].AsString := tSNHDD;
          Execute;
          MessageDlgInformation('PROSES UPDATE ADMINISTRASTI IJIN CETAK BUKU BPKB BERHASIL');
        except on E: Exception do
        begin
          ErrorProgDialog('Error... '+E.Message);
        end;
        end;
      end;
    end;
  end
  else
  begin
    MessageDlgError('TANGGAL IJIN CETAK HARUS DIISI');
    dtTglRegister.SetFocus;
  end;
end;

end.
