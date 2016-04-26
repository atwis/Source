unit uTandaTerimaExLD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, Menus, frxRich, frxClass, frxDesgn,
  frxBarcode, frxDBSet, DBAccess, Uni, MemDS, cxDropDownEdit, cxCalendar,
  StdCtrls, cxButtons, cxSplitter, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ExtCtrls, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Grids, DBGrids, CRGrid, ImgList;

type
  TfTandaTerimaExLD = class(TForm)
    Label5: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    cbPemohonTTBBN1: TcxDBLookupComboBox;
    Panel1: TPanel;
    pAwal: TPanel;
    cxSplitter1: TcxSplitter;
    pCek: TPanel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxSplitter2: TcxSplitter;
    pPilih: TPanel;
    cxButton1: TcxButton;
    cxButton8: TcxButton;
    bGetDataKI: TcxButton;
    dtTglPrintTTBBN1: TcxDateEdit;
    UniQuery1: TUniQuery;
    UniQuery2: TUniQuery;
    UniDataSource2: TUniDataSource;
    UniDataSource1: TUniDataSource;
    QBiru: TUniQuery;
    dsUniSPBIru: TUniDataSource;
    QHijau: TUniQuery;
    dsQHijau: TUniDataSource;
    UniQuery3: TUniQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    Q: TUniQuery;
    QTT: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDesigner1: TfrxDesigner;
    frxReport: TfrxReport;
    frxRichObject1: TfrxRichObject;
    PopupMenu1: TPopupMenu;
    CETAKULANG1: TMenuItem;
    uniSPBiru: TUniStoredProc;
    CRDBGrid1: TCRDBGrid;
    CRDBGrid2: TCRDBGrid;
    ImageList1: TImageList;
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure bGetDataKIClick(Sender: TObject);
    procedure CRDBGrid1DblClick(Sender: TObject);
    procedure CRDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure CRDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TampilAwal;
    procedure RefreshAwal;
    procedure RefreshPemohon;
    procedure RefreshPilih;
  end;

var
  fTandaTerimaExLD: TfTandaTerimaExLD;

implementation
Uses
  uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfTandaTerimaExLD.FormResize(Sender: TObject);
var
  tLebar : Integer;
begin
  tLebar := Round((Width-69)/2);
  pAwal.Width := tLebar;
  pPilih.Width := tLebar;
  Application.ProcessMessages;
end;

procedure TfTandaTerimaExLD.RefreshAwal;
begin
  with QBiru do
  begin
    Close;
    SQL.Text := 'SELECT * FROM T_DETAIL_TT WHERE SNHDD=:SNHDD AND ISPILIH=''0'' ORDER BY BERKAS_ID';
    try
      Params[0].AsString := tSNHDD;
      Open;
    except on E: Exception do
    begin
      ErrorProg('Error. RefreshAwal..[Select] Ket error '+E.Message);
    end;
    end;
  end;
end;

procedure TfTandaTerimaExLD.RefreshPemohon;
begin
  UniQuery1.Close;
  UniQuery1.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  UniQuery1.Open;

  UniQuery2.Close;
  UniQuery2.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  UniQuery2.Open;
end;

procedure TfTandaTerimaExLD.TampilAwal;
begin
  dtTglPrintTTBBN1.Date := TTglSrvSkr;
  cbPemohonTTBBN1.Text := '';
end;

procedure TfTandaTerimaExLD.FormShow(Sender: TObject);
var
  tLebar : Integer;
begin
  tLebar := Round((Width-69)/2);
  pAwal.Width := tLebar;
  pPilih.Width := tLebar;
  TampilAwal;
  RefreshPemohon;
  Application.ProcessMessages;
end;

procedure TfTandaTerimaExLD.cxButton8Click(Sender: TObject);
begin
  RefreshPemohon;
end;

procedure TfTandaTerimaExLD.bGetDataKIClick(Sender: TObject);
begin
  with uniSPBiru do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_list_tt_exld';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_kdpolda',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_kdpolres',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tgl',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglPrintTTBBN1.Date); // bbn1
      Params.CreateParam(ftString,'v_snhdd',ptinput).AsString := tSNHDD;
      Params.CreateParam(ftString,'v_pemohon',ptinput).AsString := cbPemohonTTBBN1.EditValue;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_list_tt%Error '+E.Message);
    end;
    end;
  end;
  RefreshAwal;
  RefreshPilih;
end;

procedure TfTandaTerimaExLD.RefreshPilih;
begin
  with QHijau do
  begin
    Close;
    SQL.Text := 'SELECT SNHDD,BERKAS_ID,BPKB_ID,NO_BPKB,TEMPAT_KELUAR,NREG_BPKB,POLDA_NAMA,TGL_BPKB,NO_POLISI,WILAYAH_NAMA,NAMA_PEMILIK,ALAMAT_PEMILIK,MERK_NAMA,'+
                'TIPE,JENIS_NAMA,MODEL_NAMA,THN_BUAT,THN_RAKIT,VOL_SILINDER,JML_RODA,JML_SUMBU,WARNA_NAMA,NO_RANGKA,NO_MESIN,BB_NAMA,WARNATNKB,ATPM_NAMA,'+
                'NO_FAKTUR,TGL_FAKTUR,NO_PABEAN,KETR_PABEAN,PRINTED_TT,TO_CHAR (TGL_TT, ''DD-MM-YYYY'') as TGL_TT,OP_NAMA,ISPILIH'+
                ' FROM T_DETAIL_TT WHERE SNHDD=:SNHDD AND ISPILIH=''1'' ORDER BY BERKAS_ID';
    try
      Params[0].AsString := tSNHDD;
      Open;
    except on E: Exception do
    begin
      ErrorProg('Error. RefreshPilih..[Select] Ket error '+E.Message);
    end;
    end;
  end;
end;

procedure TfTandaTerimaExLD.CRDBGrid1DblClick(Sender: TObject);
begin
  cxButton3.Click;
end;

procedure TfTandaTerimaExLD.CRDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
begin
  fixRect := Rect;

  if Column.Field = QBiru.FieldByName('PRINTED_TT') then
  begin
    if QBiru.FieldByName('PRINTED_TT').AsString = '1' then
      imgIndex := 0
    else
      imgIndex := 1;

    bitmap := TBitmap.Create;
    try
      ImageList1.GetBitmap(imgIndex,bitmap);
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      CRDBGrid1.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
  end;
  CRDBGrid1.DefaultDrawColumnCell(fixRect,DataCol,Column,State);

  if dsUniSPBIru.DataSet.RecNo > 0 then
  begin
  if Column.Title.Caption = 'No' then
     CRDBGrid1.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(dsUniSPBIru.DataSet.RecNo));
  end;
end;

procedure TfTandaTerimaExLD.cxButton2Click(Sender: TObject);
begin
  if (QBiru.Active) and (QBiru.RecordCount > 0) then
  begin
    UniQuery3.Close;
    UniQuery3.SQL.Text := 'UPDATE T_DETAIL_TT SET ISPILIH=''1'' WHERE SNHDD=:SNHDD AND ISPILIH=''0''';
    try
      UniQuery3.Params[0].AsString := tSNHDD;
      UniQuery3.Execute;
    except on E: Exception do
    begin
      ErrorProg('Error. cxButton2Click..[All-Update=1] Ket error '+E.Message);
    end;
    end;
  end;
  RefreshAwal;
  RefreshPilih;
end;

procedure TfTandaTerimaExLD.cxButton3Click(Sender: TObject);
begin
  if (QBiru.Active) and (QBiru.RecordCount > 0) then
  begin
    if QBiru.FieldByName('ISPILIH').AsString = '0' then
    begin
      UniQuery3.Close;
      UniQuery3.SQL.Text := 'UPDATE T_DETAIL_TT SET ISPILIH=''1'' WHERE SNHDD=:SNHDD AND BERKAS_ID=:BERKAS';
      try
        UniQuery3.Params[0].AsString := tSNHDD;
        UniQuery3.Params[1].AsString := QBiru.FieldByName('BERKAS_ID').AsString;
        UniQuery3.Execute;
      except on E: Exception do
      begin
        ErrorProg('Error. cxButton3Click..[Update=1] Ket error '+E.Message);
      end;
      end;
    end
    else
    begin
      MessageDlgInformation('Maaf, No BPKB Ini '+QBiru.FieldByname('NO_BPKB').AsString+' Sudah dipilih!'+#13+
                 'Silahkan pilih No BPKB yang lain');
    end;
  end;
  RefreshAwal;
  RefreshPilih;
end;

procedure TfTandaTerimaExLD.cxButton4Click(Sender: TObject);
begin
  if (QHijau.Active) and (QHijau.RecordCount > 0) then
  begin
    if QHijau.FieldByName('ISPILIH').AsString = '1' then
    begin
      UniQuery3.Close;
      UniQuery3.SQL.Text := 'UPDATE T_DETAIL_TT SET ISPILIH=''0'' WHERE SNHDD=:SNHDD AND BERKAS_ID=:BERKAS';
      try
        UniQuery3.Params[0].AsString := tSNHDD;
        UniQuery3.Params[1].AsString := QHijau.FieldByName('BERKAS_ID').AsString;
        UniQuery3.Execute;
      except on E: Exception do
      begin
        ErrorProg('Error. cxButton4Click..[Update=0] Ket error '+E.Message);
      end;
      end;
    end
    else
    begin
      MessageDlgInformation('Maaf, No BPKB Ini '+QBiru.FieldByname('NO_BPKB').AsString+' Sudah dipilih!'+#13+
                 'Silahkan pilih No BPKB yang lain');
    end;
  end;
  RefreshAwal;
  RefreshPilih;
end;

procedure TfTandaTerimaExLD.cxButton5Click(Sender: TObject);
begin
  if (QHijau.Active) and (QHijau.RecordCount > 0) then
  begin
    UniQuery3.Close;
    UniQuery3.SQL.Text := 'UPDATE T_DETAIL_TT SET ISPILIH=''0'' WHERE SNHDD=:SNHDD AND ISPILIH=''1''';
    try
      UniQuery3.Params[0].AsString := tSNHDD;
      UniQuery3.Execute;
    except on E: Exception do
    begin
      ErrorProg('Error. cxButton5Click..[All-Update=0] Ket error '+E.Message);
    end;
    end;
  end;
  RefreshAwal;
  RefreshPilih;
end;

procedure TfTandaTerimaExLD.CRDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
begin
  fixRect := Rect;

  if Column.Field = QHijau.FieldByName('PRINTED_TT') then
  begin
    if QHijau.FieldByName('PRINTED_TT').AsString = '1' then
      imgIndex := 0
    else
      imgIndex := 1;

    bitmap := TBitmap.Create;
    try
      ImageList1.GetBitmap(imgIndex,bitmap);
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      CRDBGrid2.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
  end;
  CRDBGrid2.DefaultDrawColumnCell(fixRect,DataCol,Column,State);

  if dsQHijau.DataSet.RecNo > 0 then
  begin
  if Column.Title.Caption = 'No' then
     CRDBGrid2.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(dsQHijau.DataSet.RecNo));
  end;
end;

procedure TfTandaTerimaExLD.cxButton1Click(Sender: TObject);
begin
  if (QHijau.Active) and (QHijau.RecordCount > 0) then
  begin
    frxDBDataset1.DataSet := QHijau;
    frxReport.Clear;
    frxReport.LoadFromFile(RootPath+'\tanda_terima.fr3');
    if TReport='1' then
    begin
      frxReport.DesignReport();
    end
    else if TReport='0' then
    begin
      //frxReport.ShowReport();
      frxReport.PrintOptions.ShowDialog := False;
      frxReport.PrintOptions.Printer := TPRINTER_BPKB;
      frxReport.PrepareReport;
      frxReport.Print;
    end
    else if TReport='2' then
    begin
      frxReport.ShowReport();
    end;
  end
  else
  begin
    MessageDlgWarning('Pilih terlebih dahulu data yang akan dicetak tanda terimanya');
  end;
end;

end.
