unit uKartuIndukDup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, Uni, frxClass, frxDBSet, frxBarcode,
  frxDesgn, DBAccess, MemDS, cxSplitter, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, ExtCtrls, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,
  cxCalendar, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  Grids, DBGrids, CRGrid, ImgList;

type
  TfKartuIndukDup = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label14: TLabel;
    Label5: TLabel;
    Shape2: TShape;
    dtTglPrintKI: TcxDateEdit;
    cbOperatorKI: TcxDBLookupComboBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label9: TLabel;
    lTotBiru: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    lCetakBiru: TLabel;
    lSisaBiru: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    bPembuatanBPKBDuplikat: TcxButton;
    cxButton1: TcxButton;
    cxSplitter1: TcxSplitter;
    Panel3: TPanel;
    Image2: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxSplitter2: TcxSplitter;
    Panel4: TPanel;
    Image3: TImage;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    Panel5: TPanel;
    Image4: TImage;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxSplitter4: TcxSplitter;
    cxSplitter3: TcxSplitter;
    bGetDataKI: TcxButton;
    cxButton8: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle4: TcxStyle;
    QOP1: TUniQuery;
    QOP2: TUniQuery;
    dsOP2: TUniDataSource;
    dsOP1: TUniDataSource;
    dsBiru: TUniDataSource;
    dsQHijau: TUniDataSource;
    dsQKuning: TUniDataSource;
    dsQMerah: TUniDataSource;
    frxReport: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDBDataset1: TfrxDBDataset;
    Q: TUniQuery;
    cxStyleRepository5: TcxStyleRepository;
    Biru: TcxStyle;
    hijau: TcxStyle;
    kuning: TcxStyle;
    merah: TcxStyle;
    uniSPBiru: TUniStoredProc;
    uniSPHijau: TUniStoredProc;
    uniSPKuning: TUniStoredProc;
    uniSPMerah: TUniStoredProc;
    uniSPCetak: TUniStoredProc;
    CRDBGrid1: TCRDBGrid;
    CRDBGrid2: TCRDBGrid;
    CRDBGrid3: TCRDBGrid;
    CRDBGrid4: TCRDBGrid;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure bGetDataKIClick(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBTableView2StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBTableView3StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure bPembuatanBPKBDuplikatClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure CRDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CRDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CRDBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CRDBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    vIsBBN : sTRING; // jenis proses bbn
  public
    { Public declarations }
    procedure UpdateKartuInduk(vBerkasID,vOPID,vTglProses : String; vDataSet : TUniStoredProc);
  end;

var
  fKartuIndukDup: TfKartuIndukDup;

implementation
Uses
  uDM, uVariabel, uModul, uWait;
{$R *.dfm}

{ TfKartuIndukExLD }

procedure TfKartuIndukDup.UpdateKartuInduk(vBerkasID, vOPID,
  vTglProses: String; vDataSet: TUniStoredProc);
var
  uniSP : TUniStoredProc;
begin
  try
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_update_cetak_ki_gb';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_berkas_id',ptInput).AsString := vBerkasID;
      uniSP.Params.CreateParam(ftString,'v_op_id',ptInput).AsString := vOPID;
      uniSP.Params.CreateParam(ftString,'v_tgl_proses',ptInput).AsString := vTglProses;
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
      uniSP.ExecProc;

      if Copy(uniSP.Params.ParamValues['RESULT'],1,2)='00' then
      begin
        frxDBDataset1.DataSet := vDataSet;
        frxReport.Clear;
        frxReport.LoadFromFile(RootPath+'\ki.fr3');
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
        MessageDlg('Proses Pencetakan Gagal, data tidak bisa diupdate ke server',mtError,[mbOK],0);
      end;

    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_update_cetak_ki.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfKartuIndukDup.FormCreate(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(RootPath+'\Biru.bmp');
  Image2.Picture.LoadFromFile(RootPath+'\Hijau.bmp');
  Image3.Picture.LoadFromFile(RootPath+'\Kuning.bmp');
  Image4.Picture.LoadFromFile(RootPath+'\Merah.bmp');
end;

procedure TfKartuIndukDup.FormResize(Sender: TObject);
var
  tLebar : Integer;
begin
  tLebar := Round((Width-16)/4);
  Panel2.Width := tLebar;
  Panel3.Width := tLebar;
  Panel4.Width := tLebar;
  Panel5.Width := tLebar;
  Application.ProcessMessages;
end;

procedure TfKartuIndukDup.FormShow(Sender: TObject);
var
  tLebar : Integer;
begin
  cxButton8.Click;
  vIsBBN := '5';
  dtTglPrintKI.Date := TTglSrvSkr;
  cbOperatorKI.EditValue := -1;
  cbOperatorKI.DoEditing;
  cbOperatorKI.EditText := 'ALL';
  cbOperatorKI.PostEditValue;
  tLebar := Round((Width-16)/4);
  Panel2.Width := tLebar;
  Panel3.Width := tLebar;
  Panel4.Width := tLebar;
  Panel5.Width := tLebar;
  Application.ProcessMessages;
end;

procedure TfKartuIndukDup.cxButton8Click(Sender: TObject);
begin
  QOP1.Close;
  QOP1.SQL.Text := 'select to_char(op_id) as op_id,op_nama from t_operator order by op_nama';
  QOP1.Open;
  QOP2.Close;
  QOP2.SQL.Text := 'select to_char(op_id) as op_id,op_nama from t_operator order by op_nama';
  QOP2.Open;
end;

procedure TfKartuIndukDup.bGetDataKIClick(Sender: TObject);
var
  vOP : integer;
  total, cetak : integer;
begin
    fWait.Show;
  Application.ProcessMessages;
  if cbOperatorKI.Text = 'ALL' then
     vOP := -1
  else
     vOP := cbOperatorKI.EditValue;

  //DM.dbSrv.StartTransaction;

  with uniSPBiru do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_list_ki_gb';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_kdpolda',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_kdpolres',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tgl',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglPrintKI.Date); // bbn1
      Params.CreateParam(ftString,'v_bbn',ptinput).AsString := vIsBBN;
      Params.CreateParam(ftString,'v_warna',ptinput).AsString := 'BIRU';
      Params.CreateParam(ftString,'v_op_id',ptinput).AsInteger := vOP;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;

      lTotBiru.Caption := FormatKeUang(RecordCount);
      total := RecordCount;

      Filter := 'is_cetak_ki=1';
      Filtered := True;
      lCetakBiru.Caption := FormatKeUang(RecordCount);
      cetak := RecordCount;

      lSisaBiru.Caption := FormatKeUang(total-cetak);
      Filtered := False;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_list_ki%uniSPBiru%Error '+E.Message);
    end;
    end;
  end;

  with uniSPMerah do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_list_ki_gb';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_kdpolda',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_kdpolres',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tgl',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglPrintKI.Date); // bbn1
      Params.CreateParam(ftString,'v_bbn',ptinput).AsString := vIsBBN;
      Params.CreateParam(ftString,'v_warna',ptinput).AsString := 'MERAH';
      Params.CreateParam(ftString,'v_op_id',ptinput).AsInteger := vOP;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;

      Label37.Caption := FormatKeUang(RecordCount);
      total := RecordCount;

      Filter := 'is_cetak_ki=1';
      Filtered := True;
      label38.Caption := FormatKeUang(RecordCount);
      cetak := RecordCount;

      Label39.Caption := FormatKeUang(total-cetak);
      Filtered := False;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_list_ki%uniSPMerah%Error '+E.Message);
    end;
    end;
  end;

  with uniSPHijau do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_list_ki_gb';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_kdpolda',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_kdpolres',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tgl',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglPrintKI.Date); // bbn1
      Params.CreateParam(ftString,'v_bbn',ptinput).AsString := vIsBBN;
      Params.CreateParam(ftString,'v_warna',ptinput).AsString := 'HIJAU';
      Params.CreateParam(ftString,'v_op_id',ptinput).AsInteger := vOP;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;

      Label17.Caption := FormatKeUang(RecordCount);
      total := RecordCount;

      Filter := 'is_cetak_ki=1';
      Filtered := True;
      Label18.Caption := FormatKeUang(RecordCount);
      cetak := RecordCount;

      Label19.Caption := FormatKeUang(total-cetak);
      Filtered := False;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_list_ki%uniSPHijau%Error '+E.Message);
    end;
    end;
  end;

  with uniSPKuning do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_list_ki_gb';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_kdpolda',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_kdpolres',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tgl',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglPrintKI.Date); // bbn1
      Params.CreateParam(ftString,'v_bbn',ptinput).AsString := vIsBBN;
      Params.CreateParam(ftString,'v_warna',ptinput).AsString := 'KUNING';
      Params.CreateParam(ftString,'v_op_id',ptinput).AsInteger := vOP;
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;

      Label27.Caption := FormatKeUang(RecordCount);
      total := RecordCount;

      Filter := 'is_cetak_ki=1';
      Filtered := True;
      Label28.Caption := FormatKeUang(RecordCount);
      cetak := RecordCount;

      Label29.Caption := FormatKeUang(total-cetak);
      Filtered := False;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_list_ki%uniSPKuning%Error '+E.Message);
    end;
    end;
  end;
  fWait.Hide;
  Application.ProcessMessages;
end;

procedure TfKartuIndukDup.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if (ARecord is TcxGridDataRow) and (ARecord.Values[2] = 1) then
      AStyle := DM.cxStyleRead;
end;

procedure TfKartuIndukDup.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if (ARecord is TcxGridDataRow) and (ARecord.Values[2] = 1) then
    AStyle := DM.cxStyleRead;
end;

procedure TfKartuIndukDup.cxGridDBTableView2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if (ARecord is TcxGridDataRow) and (ARecord.Values[2] = 1) then
    AStyle := DM.cxStyleRead;
end;

procedure TfKartuIndukDup.cxGridDBTableView3StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if (ARecord is TcxGridDataRow) and (ARecord.Values[2] = 1) then
    AStyle := DM.cxStyleRead;
end;

procedure TfKartuIndukDup.bPembuatanBPKBDuplikatClick(Sender: TObject);
begin
  if (uniSPBiru.Active) and (uniSPBiru.RecordCount > 0) then
  begin
    uniSPBiru.First;
    while not uniSPBiru.Eof do
    begin
      with uniSPCetak do
      begin
        Active := False;
        StoredProcName := 'bpkb_get_cetak_ki_gb';
        try
          Params.Clear;
          if uniSPBiru.FieldByName('JML_RODA').AsInteger > 3 then
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '2'
          else
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '1';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPBiru.FieldByName('BERKAS_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPBiru.FieldByName('BERKAS_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki%uniSPBiru%Error '+E.Message);
        end;
        end;
      end;
      uniSPBiru.Next;
    end;
  end;
end;

procedure TfKartuIndukDup.cxButton1Click(Sender: TObject);
begin
  if (uniSPBiru.Active) and (uniSPBiru.RecordCount > 0) then
  begin
    if uniSPBiru.FieldByName('is_cetak_ki').AsString = '1' then
    begin
      if MessageDlg('KARTU INDUK " '+uniSPBiru.FieldByName('bpkb_no').AsString+' " SUDAH PERNAH DICETAK!'+#13+
                    'APAKAH AKAN MELAKUKAN PROSES PENCETAKAN ULANG?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with uniSPCetak do
        begin
          Active := False;
          StoredProcName := 'bpkb_get_cetak_ki_gb';
          try
            Params.Clear;
            if uniSPBiru.FieldByName('JML_RODA').AsInteger > 3 then
               Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '2'
            else
               Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '1';
            Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPBiru.FieldByName('BERKAS_ID').AsInteger;
            Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
            Open;

            frxDBDataset1.DataSet := uniSPCetak;
            frxReport.Clear;
            frxReport.LoadFromFile(RootPath+'\ki.fr3');
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
          except on E:Exception do
          begin
            ErrorProgDialog('Error,..bpkb_get_cetak_ki%uniSPBiru%Error '+E.Message);
          end;
          end;
        end;
      end;
    end
    else
    begin
      with uniSPCetak do
      begin
        Active := False;
        StoredProcName := 'bpkb_get_cetak_ki_gb';
        try
          Params.Clear;
          if uniSPBiru.FieldByName('JML_RODA').AsInteger > 3 then
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '2'
          else
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '1';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPBiru.FieldByName('BERKAS_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPBiru.FieldByName('BERKAS_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki%uniSPBiru%Error '+E.Message);
        end;
        end;
      end;
    end;
  end;
end;

procedure TfKartuIndukDup.cxButton2Click(Sender: TObject);
begin
  if (uniSPHijau.Active) and (uniSPHijau.RecordCount > 0) then
  begin
    uniSPHijau.First;
    while not uniSPHijau.Eof do
    begin
      with uniSPCetak do
      begin
        Active := False;
        StoredProcName := 'bpkb_get_cetak_ki_gb';
        try
          Params.Clear;
          if uniSPHijau.FieldByName('JML_RODA').AsInteger > 3 then
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '2'
          else
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '1';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPHijau.FieldByName('BERKAS_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPHijau.FieldByName('BERKAS_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki%uniSPHijau%Error '+E.Message);
        end;
        end;
      end;
      uniSPHijau.Next;
    end;
  end;
end;

procedure TfKartuIndukDup.cxButton3Click(Sender: TObject);
begin
  if (uniSPHijau.Active) and (uniSPHijau.RecordCount > 0) then
  begin
    if uniSPHijau.FieldByName('is_cetak_ki').AsString = '1' then
    begin
      if MessageDlg('KARTU INDUK " '+uniSPHijau.FieldByName('bpkb_no').AsString+' " SUDAH PERNAH DICETAK!'+#13+
                    'APAKAH AKAN MELAKUKAN PROSES PENCETAKAN ULANG?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with uniSPCetak do
        begin
          Active := False;
          StoredProcName := 'bpkb_get_cetak_ki_gb';
          try
            Params.Clear;
            if uniSPHijau.FieldByName('JML_RODA').AsInteger > 3 then
               Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '2'
            else
               Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '1';
            Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPHijau.FieldByName('BERKAS_ID').AsInteger;
            Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
            Open;

            frxDBDataset1.DataSet := uniSPCetak;
            frxReport.Clear;
            frxReport.LoadFromFile(RootPath+'\ki.fr3');
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
          except on E:Exception do
          begin
            ErrorProgDialog('Error,..bpkb_get_cetak_ki%uniSPHijau%Error '+E.Message);
          end;
          end;
        end;
      end;
    end
    else
    begin
      with uniSPCetak do
      begin
        Active := False;
        StoredProcName := 'bpkb_get_cetak_ki_gb';
        try
          Params.Clear;
          if uniSPHijau.FieldByName('JML_RODA').AsInteger > 3 then
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '2'
          else
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '1';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPHijau.FieldByName('BERKAS_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPHijau.FieldByName('BERKAS_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki%uniSPHijau%Error '+E.Message);
        end;
        end;
      end;
    end;
  end;
end;

procedure TfKartuIndukDup.cxButton4Click(Sender: TObject);
begin
  if (uniSPKuning.Active) and (uniSPKuning.RecordCount > 0) then
  begin
    uniSPKuning.First;
    while not uniSPKuning.Eof do
    begin
      with uniSPCetak do
      begin
        Active := False;
        StoredProcName := 'bpkb_get_cetak_ki_gb';
        try
          Params.Clear;
          if uniSPKuning.FieldByName('JML_RODA').AsInteger > 3 then
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '2'
          else
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '1';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPKuning.FieldByName('BERKAS_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPKuning.FieldByName('BERKAS_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki%uniSPKuning%Error '+E.Message);
        end;
        end;
      end;
      uniSPKuning.Next;
    end;
  end;
end;

procedure TfKartuIndukDup.cxButton5Click(Sender: TObject);
begin
  if (uniSPKuning.Active) and (uniSPKuning.RecordCount > 0) then
  begin
    if uniSPKuning.FieldByName('is_cetak_ki').AsString = '1' then
    begin
      if MessageDlg('KARTU INDUK " '+uniSPKuning.FieldByName('bpkb_no').AsString+' " SUDAH PERNAH DICETAK!'+#13+
                    'APAKAH AKAN MELAKUKAN PROSES PENCETAKAN ULANG?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with uniSPCetak do
        begin
          Active := False;
          StoredProcName := 'bpkb_get_cetak_ki_gb';
          try
            Params.Clear;
            if uniSPKuning.FieldByName('JML_RODA').AsInteger > 3 then
               Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '2'
            else
               Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '1';
            Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPKuning.FieldByName('BERKAS_ID').AsInteger;
            Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
            Open;

            frxDBDataset1.DataSet := uniSPCetak;
            frxReport.Clear;
            frxReport.LoadFromFile(RootPath+'\ki.fr3');
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
          except on E:Exception do
          begin
            ErrorProgDialog('Error,..bpkb_get_cetak_ki%uniSPKuning%Error '+E.Message);
          end;
          end;
        end;
      end;
    end
    else
    begin
      with uniSPCetak do
      begin
        Active := False;
        StoredProcName := 'bpkb_get_cetak_ki_gb';
        try
          Params.Clear;
          if uniSPKuning.FieldByName('JML_RODA').AsInteger > 3 then
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '2'
          else
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '1';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPKuning.FieldByName('BERKAS_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPKuning.FieldByName('BERKAS_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki%uniSPKuning%Error '+E.Message);
        end;
        end;
      end;
    end;
  end;
end;

procedure TfKartuIndukDup.cxButton6Click(Sender: TObject);
begin
  if (uniSPMerah.Active) and (uniSPMerah.RecordCount > 0) then
  begin
    uniSPMerah.First;
    while not uniSPMerah.Eof do
    begin
      with uniSPCetak do
      begin
        Active := False;
        StoredProcName := 'bpkb_get_cetak_ki_gb';
        try
          Params.Clear;
          if uniSPMerah.FieldByName('JML_RODA').AsInteger > 3 then
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '2'
          else
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '1';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPMerah.FieldByName('BERKAS_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPMerah.FieldByName('BERKAS_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki%uniSPMerah%Error '+E.Message);
        end;
        end;
      end;
      uniSPMerah.Next;
    end;
  end;
end;

procedure TfKartuIndukDup.cxButton7Click(Sender: TObject);
begin
  if (uniSPMerah.Active) and (uniSPMerah.RecordCount > 0) then
  begin
    if uniSPMerah.FieldByName('is_cetak_ki').AsString = '1' then
    begin
      if MessageDlg('KARTU INDUK " '+uniSPMerah.FieldByName('bpkb_no').AsString+' " SUDAH PERNAH DICETAK!'+#13+
                    'APAKAH AKAN MELAKUKAN PROSES PENCETAKAN ULANG?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with uniSPCetak do
        begin
          Active := False;
          StoredProcName := 'bpkb_get_cetak_ki_gb';
          try
            Params.Clear;
            if uniSPMerah.FieldByName('JML_RODA').AsInteger > 3 then
               Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '2'
            else
               Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '1';
            Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPMerah.FieldByName('BERKAS_ID').AsInteger;
            Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
            Open;

            frxDBDataset1.DataSet := uniSPCetak;
            frxReport.Clear;
            frxReport.LoadFromFile(RootPath+'\ki.fr3');
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
          except on E:Exception do
          begin
            ErrorProgDialog('Error,..bpkb_get_cetak_ki%uniSPMerah%Error '+E.Message);
          end;
          end;
        end;
      end;
    end
    else
    begin
      with uniSPCetak do
      begin
        Active := False;
        StoredProcName := 'bpkb_get_cetak_ki_gb';
        try
          Params.Clear;
          if uniSPMerah.FieldByName('JML_RODA').AsInteger > 3 then
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '2'
          else
             Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '1';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPMerah.FieldByName('BERKAS_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPMerah.FieldByName('BERKAS_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki%uniSPMerah%Error '+E.Message);
        end;
        end;
      end;
    end;
  end;
end;

procedure TfKartuIndukDup.CRDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
begin
  fixRect := Rect;

  if Column.Field = uniSPBiru.FieldByName('is_cetak_ki') then
  begin
    if uniSPBiru.FieldByName('is_cetak_ki').AsString = '1' then
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

  if dsBiru.DataSet.RecNo > 0 then
  begin
  if Column.Title.Caption = 'No' then
     CRDBGrid1.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(dsBiru.DataSet.RecNo));
  end;
end;

procedure TfKartuIndukDup.CRDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
begin
  fixRect := Rect;

  if Column.Field = uniSPHijau.FieldByName('is_cetak_ki') then
  begin
    if uniSPHijau.FieldByName('is_cetak_ki').AsString = '1' then
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

procedure TfKartuIndukDup.CRDBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
begin
  fixRect := Rect;

  if Column.Field = uniSPKuning.FieldByName('is_cetak_ki') then
  begin
    if uniSPKuning.FieldByName('is_cetak_ki').AsString = '1' then
      imgIndex := 0
    else
      imgIndex := 1;

    bitmap := TBitmap.Create;
    try
      ImageList1.GetBitmap(imgIndex,bitmap);
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      CRDBGrid3.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
  end;
  CRDBGrid3.DefaultDrawColumnCell(fixRect,DataCol,Column,State);

  if dsQHijau.DataSet.RecNo > 0 then
  begin
  if Column.Title.Caption = 'No' then
     CRDBGrid3.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(dsQHijau.DataSet.RecNo));
  end;
end;

procedure TfKartuIndukDup.CRDBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  bitmap : TBitmap;
  fixRect : TRect;
  bmpWidth : integer;
  imgIndex : integer;
begin
  fixRect := Rect;

  if Column.Field = uniSPMerah.FieldByName('is_cetak_ki') then
  begin
    if uniSPMerah.FieldByName('is_cetak_ki').AsString = '1' then
      imgIndex := 0
    else
      imgIndex := 1;

    bitmap := TBitmap.Create;
    try
      ImageList1.GetBitmap(imgIndex,bitmap);
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      CRDBGrid4.Canvas.StretchDraw(fixRect,bitmap);
    finally
      bitmap.Free;
    end;
    fixRect := Rect;
    fixRect.Left := fixRect.Left + bmpWidth;
  end;
  CRDBGrid4.DefaultDrawColumnCell(fixRect,DataCol,Column,State);

  if dsQMerah.DataSet.RecNo > 0 then
  begin
  if Column.Title.Caption = 'No' then
     CRDBGrid4.Canvas.TextOut(Rect.Left + 2, Rect.Top, IntToStr(dsQMerah.DataSet.RecNo));
  end;
end;

end.
