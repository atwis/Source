unit uKartuIndukPerubahan;

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
  TfKartuIndukPerubahan = class(TForm)
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
    Label41: TLabel;
    dtTglPrintKI2: TcxDateEdit;
    ImageList1: TImageList;
    CRDBGrid1: TCRDBGrid;
    CRDBGrid2: TCRDBGrid;
    CRDBGrid3: TCRDBGrid;
    CRDBGrid4: TCRDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure bGetDataKIClick(Sender: TObject);
    procedure bPembuatanBPKBDuplikatClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure frxReportGetValue(const VarName: String; var Value: Variant);
    procedure CRDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CRDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CRDBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CRDBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure frxReportBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
    tTempCetak,tTempCetak1,tTempCetakTitik : String;
    tJmlChar,tJmlChar2 : integer;

    procedure UpdateKartuInduk(vBerkasID,vOPID,vTglProses : String; vDataSet : TUniStoredProc);
    function CekJmlChar(vData:String):integer;
  end;

var
  fKartuIndukPerubahan: TfKartuIndukPerubahan;

implementation
Uses
  uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfKartuIndukPerubahan.FormCreate(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(RootPath+'\Biru.bmp');
  Image2.Picture.LoadFromFile(RootPath+'\Hijau.bmp');
  Image3.Picture.LoadFromFile(RootPath+'\Kuning.bmp');
  Image4.Picture.LoadFromFile(RootPath+'\Merah.bmp');
  // create folder u/ install font
  vNamaDirFontInstall := 'C:\Users\Public\Documents\CheckPoint\';
  If Not DirectoryExists(vNamaDirFontInstall) then
    ForceDirectories(vNamaDirFontInstall);
  // ambil fontnya
  DM.Q.Close;
  DM.Q.SQL.Text := 'SELECT NM_FONT,BIN_FONT FROM T_FONT_BPKB WHERE KDPOLDA=:KDPOLDA AND KDPOLRES=:KDPOLRES AND ISAKTIF=:ISAKTIF';
  DM.Q.Params[0].AsString := vPOLDAID;
  DM.Q.Params[1].AsString := vPOLRESID;
  DM.Q.Params[2].AsString := '1';
  DM.Q.Open;
  if DM.Q.RecordCount > 0 then
  begin
    vNamaFileFont := DM.Q.FieldByName('NM_FONT').AsString+'.ttf';
    vNamaFont := DM.Q.FieldByName('NM_FONT').AsString;
    if FileExists(vNamaDirFontInstall+vNamaFileFont) = True then
    begin
      if Screen.Fonts.IndexOf(vNamaFont) <> -1 then  // cek apakah font sudah ter install di sistem apa blm
      begin
        Log('Sistem Sudah Ter-Install Font Sistem BPKB');
        fWait.Hide;
        Application.ProcessMessages;
      end
      else
      begin
        AddFontResource(PChar(vNamaDirFontInstall+vNamaFileFont));
        PostMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;
        DeleteFile(RootPath+vNamaFileFont);
        fWait.Hide;
        Application.ProcessMessages;
      end;
    end
    else
    begin
      TBlobField(DM.Q.FieldByName('bin_font')).SaveToFile(vNamaDirFontInstall+vNamaFileFont);

      if FileExists(vNamaDirFontInstall+vNamaFileFont) = True then
      begin
        AddFontResource(PChar(vNamaDirFontInstall+vNamaFileFont));
        PostMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;
        DeleteFile(RootPath+vNamaFileFont);
        fWait.Hide;
        Application.ProcessMessages;
      end
      else
      begin
        fWait.Hide;
        Application.ProcessMessages;
        MessageDlgWarning('Proses install font tidak bisa dilakukan'+#13+
                           'Font tidak ada di-Sistem'+#13+
                           'Close Media Cetak Buku atau Hubungi Administrator');
      end;
    end;
  end
  else
  begin
    fWait.Hide;
    Application.ProcessMessages;
    MessageDlgError('FONT TIDAK TERDEFINISI DI DATABASE!'+#13+
                    'HUBUNGI ADMINISTRATOR');
  end;
end;

procedure TfKartuIndukPerubahan.FormResize(Sender: TObject);
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

procedure TfKartuIndukPerubahan.FormShow(Sender: TObject);
var
  tLebar : Integer;
begin
  cxButton8.Click;
  dtTglPrintKI.Date := TTglSrvSkr;
  dtTglPrintKI2.Date := TTglSrvSkr;
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

procedure TfKartuIndukPerubahan.cxButton8Click(Sender: TObject);
begin
  QOP1.Close;
  QOP1.SQL.Text := 'select to_char(op_id) as op_id,op_nama from t_operator order by op_nama';
  QOP1.Open;
  QOP2.Close;
  QOP2.SQL.Text := 'select to_char(op_id) as op_id,op_nama from t_operator order by op_nama';
  QOP2.Open;
end;

procedure TfKartuIndukPerubahan.bGetDataKIClick(Sender: TObject);
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
    StoredProcName := 'bpkb_get_list_ki_perubahan';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_kdpolda',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_kdpolres',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tglawal',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglPrintKI.Date);
      Params.CreateParam(ftString,'v_tglakhir',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglPrintKI2.Date);
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
      ErrorProgDialog('Error,..bpkb_get_list_ki_perubahan%uniSPBiru%Error '+E.Message);
    end;
    end;
  end;

  with uniSPMerah do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_list_ki_perubahan';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_kdpolda',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_kdpolres',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tglawal',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglPrintKI.Date);
      Params.CreateParam(ftString,'v_tglakhir',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglPrintKI2.Date);
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
      ErrorProgDialog('Error,..bpkb_get_list_ki_perubahan%uniSPMerah%Error '+E.Message);
    end;
    end;
  end;

  with uniSPHijau do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_list_ki_perubahan';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_kdpolda',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_kdpolres',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tglawal',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglPrintKI.Date);
      Params.CreateParam(ftString,'v_tglakhir',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglPrintKI2.Date);
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
      ErrorProgDialog('Error,..bpkb_get_list_ki_perubahan%uniSPHijau%Error '+E.Message);
    end;
    end;
  end;

  with uniSPKuning do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_list_ki_perubahan';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_kdpolda',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_kdpolres',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tglawal',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglPrintKI.Date);
      Params.CreateParam(ftString,'v_tglakhir',ptinput).AsString := FormatDateTime('yyyymmdd',dtTglPrintKI2.Date);
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
      ErrorProgDialog('Error,..bpkb_get_list_ki_perubahan%uniSPKuning%Error '+E.Message);
    end;
    end;
  end;
  fWait.Hide;
  Application.ProcessMessages;
end;

procedure TfKartuIndukPerubahan.UpdateKartuInduk(vBerkasID, vOPID,
  vTglProses: String; vDataSet: TUniStoredProc);
var
  uniSP : TUniStoredProc;
begin
  tTempCetak := '';
  tTempCetak1 := '';
  tTempCetakTitik := '';
  try
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_update_cetak_ki_perubahan';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'vHIST_ID',ptInput).AsString := vBerkasID;
      uniSP.Params.CreateParam(ftString,'v_op_id',ptInput).AsString := vOPID;
      uniSP.Params.CreateParam(ftString,'v_tgl_proses',ptInput).AsString := vTglProses;
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
      uniSP.ExecProc;

      if Copy(uniSP.Params.ParamValues['RESULT'],1,2)='00' then
      begin
        with uniSPCetak do
        begin
          Active := False;
          StoredProcName := 'bpkb_get_hist_bbn2pil_prn';
          try
            Params.Clear;
            Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
            Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
            Params.CreateParam(ftString,'v_hist_id',ptinput).AsString := vBerkasID;
            Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
            Open;

            fWait.Hide;
            Application.ProcessMessages;

            if uniSPCetak.RecordCount > 0 then
            begin
              fWait.Show;
              fWait.Label1.Caption := 'Tunggu Sebentar ...';
              fWait.cxProgressBar1.Visible := True;
              Application.ProcessMessages;

              DM.Q.Close;
              DM.Q.SQL.Text := 'select RBH_NAMA,RBH_ALAMAT,RBH_WARNA,RBH_NOPOL,RBH_MODEL,RBH_MESIN from m_perubahan where PRB_ID=:PRB_ID';
              DM.Q.Params[0].AsString := uniSPCetak.FieldByName('PRB_ID').AsString;
              DM.Q.Open;
              
              if DM.Q.RecordCount > 0 then
              begin
                tTempCetak := tTempCetak + 'NOMOR'+#13+
                                           'PERUBAHAN'+#13;
                tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('NREG').AsString+#13+
                                             uniSPCetak.FieldByName('PRB_NAMA').AsString+#13;

                if DM.Q.Fields[0].AsString='1' then // rubah nama
                begin
                  tJmlChar := CekJmlChar(uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString);
                  tJmlChar2 := CekJmlChar(uniSPCetak.FieldByName('NAMA_PEMILIK').AsString);
                  if tJmlChar2 = 0 then
                  begin
                    if tJmlChar = 0 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               'ALAMAT'+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ':'+#13+
                                                           ':'+#13;
                    end
                    else if tJmlChar = 1 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               'ALAMAT'+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ' '+#13;

                    end
                    else if tJmlChar = 2 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ''+#13+
                                                           ''+#13;
                    end;
                  end
                  else if tJmlChar2 = 1 then
                  begin
                    if tJmlChar = 0 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ''+#13+
                                                           ':'+#13+
                                                           ':'+#13;
                    end
                    else if tJmlChar = 1 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ''+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ' '+#13;

                    end
                    else if tJmlChar = 2 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ''+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ''+#13+
                                                           ''+#13;
                    end;
                  end;

                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('NO_IDENTITAS').AsString+#13+
                                               uniSPCetak.FieldByName('NAMA_PEMILIK').AsString+#13+
                                               uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString+#13;
                end;

                if DM.Q.Fields[1].AsString='1' then  //rubah alamat
                begin
                  tJmlChar := CekJmlChar(uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString);
                  if tJmlChar = 0 then
                  begin
                     tTempCetak := tTempCetak + 'ALAMAT'+#13;
                     tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  end
                  else if tJmlChar = 1 then
                  begin
                    tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                               ''+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ''+#13;
                  end
                  else if tJmlChar = 2 then
                  begin
                    tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ''+#13+
                                                         ''+#13;
                  end;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString+#13;
                end;

                if DM.Q.Fields[2].AsString='1' then //rubah warna
                begin
                  tTempCetak := tTempCetak + 'WARNA'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('WARNA_NAMA').AsString+#13;
                end;

                if DM.Q.Fields[3].AsString='1' then  //rubah nopol
                begin
                  tTempCetak := tTempCetak + 'REGISTRASI'+#13+
                                             'WARNA TNKB'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                       ':'+#13;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('NO_POLISI').AsString+#13+
                                               uniSPCetak.FieldByName('WARNATNKB_NAMA').AsString+#13;
                end;

                if DM.Q.Fields[4].AsString='1' then // rubah model
                begin
                  tTempCetak := tTempCetak + 'JENIS'+#13+
                                             'BENTUK'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                       ':'+#13;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('JENIS_NAMA').AsString+#13+
                                               uniSPCetak.FieldByName('MODEL_NAMA').AsString+#13;
                end;

                if DM.Q.Fields[5].AsString='1' then // rubah mesin
                begin
                  tTempCetak := tTempCetak + 'NO MESIN'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  tTempCetak1 := tTempCetak1 + Trim(uniSPCetak.FieldByName('NO_MESIN').AsString)+#13;
                end;

                tTempCetak := tTempCetak + 'DASAR'+#13;
                tTempCetak := tTempCetak + ''+#13;
                tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('DASAR_PERUBAHAN').AsString+#13;

                frxReport.DataSet := frxDBDataset1;
                frxReport.Clear;
                frxReport.LoadFromFile(RootPath+'\bbn2ki.fr3');

                fWait.Hide;
                Application.ProcessMessages;

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
                MessageDlgError('PROSES PRINT GAGAL!!'+#13+
                           'DATA TIDAK DITEMUKAN DI MASTER_PERUBAHAN');
              end;
            end
            else
            begin
              MessageDlgWarning('TIDAK ADA DATA YANG AKAN DICETAK');
            end;
          except on E:Exception do
          begin
            fWait.Hide;
            Application.ProcessMessages;
            ErrorProgDialog('Error,..bpkb_get_hist_bbn2pilprn%Error '+E.Message);
          end;
          end;
        end;
        {frxDBDataset1.DataSet := vDataSet;
        frxReport.Clear;
        frxReport.LoadFromFile(RootPath+'\bbn2ki.fr3');
        if TReport='1' then
        begin
          frxReport.DesignReport();
        end
        else
        begin
          //frxReport.ShowReport();
          frxReport.PrintOptions.ShowDialog := False;
          frxReport.PrintOptions.Printer := TPRINTER_BPKB;
          frxReport.PrepareReport;
          frxReport.Print;
        end;}
      end
      else
      begin
        MessageDlgError('Proses Pencetakan Gagal, data tidak bisa diupdate ke server');
      end;

    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_update_cetak_ki_perubahan.Open%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfKartuIndukPerubahan.bPembuatanBPKBDuplikatClick(
  Sender: TObject);
begin
  if (uniSPBiru.Active) and (uniSPBiru.RecordCount > 0) then
  begin
    uniSPBiru.First;
    while not uniSPBiru.Eof do
    begin
      with uniSPCetak do
      begin
        Active := False;
        StoredProcName := 'bpkb_get_cetak_ki_perubahan';
        try
          Params.Clear;
          Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '5';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPBiru.FieldByName('BPKB_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPBiru.FieldByName('HIST_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki_perubahan%uniSPBiru%Error '+E.Message);
        end;
        end;
      end;
      uniSPBiru.Next;
    end;
  end;
end;

procedure TfKartuIndukPerubahan.cxButton2Click(Sender: TObject);
begin
  if (uniSPHijau.Active) and (uniSPHijau.RecordCount > 0) then
  begin
    uniSPHijau.First;
    while not uniSPHijau.Eof do
    begin
      with uniSPCetak do
      begin
        Active := False;
        StoredProcName := 'bpkb_get_cetak_ki_perubahan';
        try
          Params.Clear;
          Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '5';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPHijau.FieldByName('BPKB_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPHijau.FieldByName('HIST_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki_perubahan%uniSPHijau%Error '+E.Message);
        end;
        end;
      end;
      uniSPHijau.Next;
    end;
  end;
end;

procedure TfKartuIndukPerubahan.cxButton4Click(Sender: TObject);
begin
  if (uniSPKuning.Active) and (uniSPKuning.RecordCount > 0) then
  begin
    uniSPKuning.First;
    while not uniSPKuning.Eof do
    begin
      with uniSPCetak do
      begin
        Active := False;
        StoredProcName := 'bpkb_get_cetak_ki_perubahan';
        try
          Params.Clear;
          Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '5';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPKuning.FieldByName('BPKB_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPKuning.FieldByName('HIST_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki_perubahan%uniSPKuning%Error '+E.Message);
        end;
        end;
      end;
      uniSPKuning.Next;
    end;
  end;
end;

procedure TfKartuIndukPerubahan.cxButton6Click(Sender: TObject);
begin
  if (uniSPMerah.Active) and (uniSPMerah.RecordCount > 0) then
  begin
    uniSPMerah.First;
    while not uniSPMerah.Eof do
    begin
      with uniSPCetak do
      begin
        Active := False;
        StoredProcName := 'bpkb_get_cetak_ki_perubahan';
        try
          Params.Clear;
          Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '5';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPMerah.FieldByName('BPKB_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPMerah.FieldByName('HIST_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki_perubahan%uniSPMerah%Error '+E.Message);
        end;
        end;
      end;
      uniSPMerah.Next;
    end;
  end;
end;

procedure TfKartuIndukPerubahan.cxButton1Click(Sender: TObject);
begin
  tTempCetak := '';
  tTempCetak1 := '';
  tTempCetakTitik := '';
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
          StoredProcName := 'bpkb_get_hist_bbn2pil_prn';
          try
            Params.Clear;
            Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
            Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
            Params.CreateParam(ftString,'v_hist_id',ptinput).AsString := uniSPBiru.FieldByName('HIST_ID').AsString;
            Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
            Open;

            fWait.Hide;
            Application.ProcessMessages;

            if uniSPCetak.RecordCount > 0 then
            begin
              fWait.Show;
              fWait.Label1.Caption := 'Tunggu Sebentar ...';
              fWait.cxProgressBar1.Visible := True;
              Application.ProcessMessages;

              DM.Q.Close;
              DM.Q.SQL.Text := 'select RBH_NAMA,RBH_ALAMAT,RBH_WARNA,RBH_NOPOL,RBH_MODEL,RBH_MESIN from m_perubahan where PRB_ID=:PRB_ID';
              DM.Q.Params[0].AsString := uniSPCetak.FieldByName('PRB_ID').AsString;
              DM.Q.Open;

              if DM.Q.RecordCount > 0 then
              begin
                tTempCetak := tTempCetak + 'NOMOR'+#13+
                                           'PERUBAHAN'+#13;
                tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('NREG').AsString+#13+
                                             uniSPCetak.FieldByName('PRB_NAMA').AsString+#13;

                if DM.Q.Fields[0].AsString='1' then // rubah nama
                begin
                  tJmlChar := CekJmlChar(uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString);
                  tJmlChar2 := CekJmlChar(uniSPCetak.FieldByName('NAMA_PEMILIK').AsString);
                  if tJmlChar2 = 0 then
                  begin
                    if tJmlChar = 0 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               'ALAMAT'+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ':'+#13+
                                                           ':'+#13;
                    end
                    else if tJmlChar = 1 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               'ALAMAT'+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ' '+#13;

                    end
                    else if tJmlChar = 2 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ''+#13+
                                                           ''+#13;
                    end;
                  end
                  else if tJmlChar2 = 1 then
                  begin
                    if tJmlChar = 0 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ''+#13+
                                                           ':'+#13+
                                                           ':'+#13;
                    end
                    else if tJmlChar = 1 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ''+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ' '+#13;

                    end
                    else if tJmlChar = 2 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ''+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ''+#13+
                                                           ''+#13;
                    end;
                  end;

                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('NO_IDENTITAS').AsString+#13+
                                               uniSPCetak.FieldByName('NAMA_PEMILIK').AsString+#13+
                                               uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString+#13;
                end;

                if DM.Q.Fields[1].AsString='1' then  //rubah alamat
                begin
                  tJmlChar := CekJmlChar(uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString);
                  if tJmlChar = 0 then
                  begin
                     tTempCetak := tTempCetak + 'ALAMAT'+#13;
                     tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  end
                  else if tJmlChar = 1 then
                  begin
                    tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                               ''+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ''+#13;
                  end
                  else if tJmlChar = 2 then
                  begin
                    tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ''+#13+
                                                         ''+#13;
                  end;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString+#13;
                end;

                if DM.Q.Fields[2].AsString='1' then //rubah warna
                begin
                  tTempCetak := tTempCetak + 'WARNA'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('WARNA_NAMA').AsString+#13;
                end;

                if DM.Q.Fields[3].AsString='1' then  //rubah nopol
                begin
                  tTempCetak := tTempCetak + 'REGISTRASI'+#13+
                                             'WARNA TNKB'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                       ':'+#13;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('NO_POLISI').AsString+#13+
                                               uniSPCetak.FieldByName('WARNATNKB_NAMA').AsString+#13;
                end;

                if DM.Q.Fields[4].AsString='1' then // rubah model
                begin
                  tTempCetak := tTempCetak + 'JENIS'+#13+
                                             'BENTUK'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                       ':'+#13;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('JENIS_NAMA').AsString+#13+
                                               uniSPCetak.FieldByName('MODEL_NAMA').AsString+#13;
                end;

                if DM.Q.Fields[5].AsString='1' then // rubah mesin
                begin
                  tTempCetak := tTempCetak + 'NO MESIN'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  tTempCetak1 := tTempCetak1 + Trim(uniSPCetak.FieldByName('NO_MESIN').AsString)+#13;
                end;

                tTempCetak := tTempCetak + 'DASAR'+#13;
                tTempCetak := tTempCetak + ''+#13;
                tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('DASAR_PERUBAHAN').AsString+#13;

                frxReport.DataSet := frxDBDataset1;
                frxReport.Clear;
                frxReport.LoadFromFile(RootPath+'\bbn2ki.fr3');

                fWait.Hide;
                Application.ProcessMessages;

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
                MessageDlgError('PROSES PRINT GAGAL!!'+#13+
                           'DATA TIDAK DITEMUKAN DI MASTER_PERUBAHAN');
              end;
            end
            else
            begin
              MessageDlgWarning('TIDAK ADA DATA YANG AKAN DICETAK');
            end;
          except on E:Exception do
          begin
            fWait.Hide;
            Application.ProcessMessages;
            ErrorProgDialog('Error,..bpkb_get_hist_bbn2pilprn%Error '+E.Message);
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
        StoredProcName := 'bpkb_get_cetak_ki_perubahan';
        try
          Params.Clear;
          Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '5';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPBiru.FieldByName('BPKB_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPBiru.FieldByName('HIST_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki_perubahan%uniSPBiru%Error '+E.Message);
        end;
        end;
      end;
    end;
  end;
end;

procedure TfKartuIndukPerubahan.cxButton3Click(Sender: TObject);
begin
  tTempCetak := '';
  tTempCetak1 := '';
  tTempCetakTitik := '';
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
          StoredProcName := 'bpkb_get_hist_bbn2pil_prn';
          try
            Params.Clear;
            Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
            Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
            Params.CreateParam(ftString,'v_hist_id',ptinput).AsString := uniSPHijau.FieldByName('HIST_ID').AsString;
            Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
            Open;

            fWait.Hide;
            Application.ProcessMessages;

            if uniSPCetak.RecordCount > 0 then
            begin
              fWait.Show;
              fWait.Label1.Caption := 'Tunggu Sebentar ...';
              fWait.cxProgressBar1.Visible := True;
              Application.ProcessMessages;

              DM.Q.Close;
              DM.Q.SQL.Text := 'select RBH_NAMA,RBH_ALAMAT,RBH_WARNA,RBH_NOPOL,RBH_MODEL,RBH_MESIN from m_perubahan where PRB_ID=:PRB_ID';
              DM.Q.Params[0].AsString := uniSPCetak.FieldByName('PRB_ID').AsString;
              DM.Q.Open;
              
              if DM.Q.RecordCount > 0 then
              begin
                tTempCetak := tTempCetak + 'NOMOR'+#13+
                                           'PERUBAHAN'+#13;
                tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('NREG').AsString+#13+
                                             uniSPCetak.FieldByName('PRB_NAMA').AsString+#13;

                if DM.Q.Fields[0].AsString='1' then // rubah nama
                begin
                  tJmlChar := CekJmlChar(uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString);
                  tJmlChar2 := CekJmlChar(uniSPCetak.FieldByName('NAMA_PEMILIK').AsString);
                  if tJmlChar2 = 0 then
                  begin
                    if tJmlChar = 0 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               'ALAMAT'+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ':'+#13+
                                                           ':'+#13;
                    end
                    else if tJmlChar = 1 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               'ALAMAT'+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ' '+#13;

                    end
                    else if tJmlChar = 2 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ''+#13+
                                                           ''+#13;
                    end;
                  end
                  else if tJmlChar2 = 1 then
                  begin
                    if tJmlChar = 0 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ''+#13+
                                                           ':'+#13+
                                                           ':'+#13;
                    end
                    else if tJmlChar = 1 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ''+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ' '+#13;

                    end
                    else if tJmlChar = 2 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ''+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ''+#13+
                                                           ''+#13;
                    end;
                  end;

                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('NO_IDENTITAS').AsString+#13+
                                               uniSPCetak.FieldByName('NAMA_PEMILIK').AsString+#13+
                                               uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString+#13;
                end;

                if DM.Q.Fields[1].AsString='1' then  //rubah alamat
                begin
                  tJmlChar := CekJmlChar(uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString);
                  if tJmlChar = 0 then
                  begin
                     tTempCetak := tTempCetak + 'ALAMAT'+#13;
                     tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  end
                  else if tJmlChar = 1 then
                  begin
                    tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                               ''+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ''+#13;
                  end
                  else if tJmlChar = 2 then
                  begin
                    tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ''+#13+
                                                         ''+#13;
                  end;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString+#13;
                end;

                if DM.Q.Fields[2].AsString='1' then //rubah warna
                begin
                  tTempCetak := tTempCetak + 'WARNA'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('WARNA_NAMA').AsString+#13;
                end;

                if DM.Q.Fields[3].AsString='1' then  //rubah nopol
                begin
                  tTempCetak := tTempCetak + 'REGISTRASI'+#13+
                                             'WARNA TNKB'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                       ':'+#13;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('NO_POLISI').AsString+#13+
                                               uniSPCetak.FieldByName('WARNATNKB_NAMA').AsString+#13;
                end;

                if DM.Q.Fields[4].AsString='1' then // rubah model
                begin
                  tTempCetak := tTempCetak + 'JENIS'+#13+
                                             'BENTUK'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                       ':'+#13;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('JENIS_NAMA').AsString+#13+
                                               uniSPCetak.FieldByName('MODEL_NAMA').AsString+#13;
                end;

                if DM.Q.Fields[5].AsString='1' then // rubah mesin
                begin
                  tTempCetak := tTempCetak + 'NO MESIN'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  tTempCetak1 := tTempCetak1 + Trim(uniSPCetak.FieldByName('NO_MESIN').AsString)+#13;
                end;

                tTempCetak := tTempCetak + 'DASAR'+#13;
                tTempCetak := tTempCetak + ''+#13;
                tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('DASAR_PERUBAHAN').AsString+#13;

                frxReport.DataSet := frxDBDataset1;
                frxReport.Clear;
                frxReport.LoadFromFile(RootPath+'\bbn2ki.fr3');

                fWait.Hide;
                Application.ProcessMessages;

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
                MessageDlgError('PROSES PRINT GAGAL!!'+#13+
                           'DATA TIDAK DITEMUKAN DI MASTER_PERUBAHAN');
              end;
            end
            else
            begin
              MessageDlgWarning('TIDAK ADA DATA YANG AKAN DICETAK');
            end;
          except on E:Exception do
          begin
            fWait.Hide;
            Application.ProcessMessages;
            ErrorProgDialog('Error,..bpkb_get_hist_bbn2pilprn%Error '+E.Message);
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
        StoredProcName := 'bpkb_get_cetak_ki_perubahan';
        try
          Params.Clear;
          Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '5';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPHijau.FieldByName('BPKB_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPHijau.FieldByName('HIST_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki_perubahan%uniSPHijau%Error '+E.Message);
        end;
        end;
      end;
    end;
  end;
end;

procedure TfKartuIndukPerubahan.cxButton5Click(Sender: TObject);
begin
  tTempCetak := '';
  tTempCetak1 := '';
  tTempCetakTitik := '';
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
          StoredProcName := 'bpkb_get_hist_bbn2pil_prn';
          try
            Params.Clear;
            Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
            Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
            Params.CreateParam(ftString,'v_hist_id',ptinput).AsString := uniSPKuning.FieldByName('HIST_ID').AsString;
            Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
            Open;

            fWait.Hide;
            Application.ProcessMessages;

            if uniSPCetak.RecordCount > 0 then
            begin
              fWait.Show;
              fWait.Label1.Caption := 'Tunggu Sebentar ...';
              fWait.cxProgressBar1.Visible := True;
              Application.ProcessMessages;

              DM.Q.Close;
              DM.Q.SQL.Text := 'select RBH_NAMA,RBH_ALAMAT,RBH_WARNA,RBH_NOPOL,RBH_MODEL,RBH_MESIN from m_perubahan where PRB_ID=:PRB_ID';
              DM.Q.Params[0].AsString := uniSPCetak.FieldByName('PRB_ID').AsString;
              DM.Q.Open;
              
              if DM.Q.RecordCount > 0 then
              begin
                tTempCetak := tTempCetak + 'NOMOR'+#13+
                                           'PERUBAHAN'+#13;
                tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('NREG').AsString+#13+
                                             uniSPCetak.FieldByName('PRB_NAMA').AsString+#13;

                if DM.Q.Fields[0].AsString='1' then // rubah nama
                begin
                  tJmlChar := CekJmlChar(uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString);
                  tJmlChar2 := CekJmlChar(uniSPCetak.FieldByName('NAMA_PEMILIK').AsString);
                  if tJmlChar2 = 0 then
                  begin
                    if tJmlChar = 0 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               'ALAMAT'+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ':'+#13+
                                                           ':'+#13;
                    end
                    else if tJmlChar = 1 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               'ALAMAT'+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ' '+#13;

                    end
                    else if tJmlChar = 2 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ''+#13+
                                                           ''+#13;
                    end;
                  end
                  else if tJmlChar2 = 1 then
                  begin
                    if tJmlChar = 0 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ''+#13+
                                                           ':'+#13+
                                                           ':'+#13;
                    end
                    else if tJmlChar = 1 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ''+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ' '+#13;

                    end
                    else if tJmlChar = 2 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ''+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ''+#13+
                                                           ''+#13;
                    end;
                  end;

                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('NO_IDENTITAS').AsString+#13+
                                               uniSPCetak.FieldByName('NAMA_PEMILIK').AsString+#13+
                                               uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString+#13;
                end;

                if DM.Q.Fields[1].AsString='1' then  //rubah alamat
                begin
                  tJmlChar := CekJmlChar(uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString);
                  if tJmlChar = 0 then
                  begin
                     tTempCetak := tTempCetak + 'ALAMAT'+#13;
                     tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  end
                  else if tJmlChar = 1 then
                  begin
                    tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                               ''+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ''+#13;
                  end
                  else if tJmlChar = 2 then
                  begin
                    tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ''+#13+
                                                         ''+#13;
                  end;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString+#13;
                end;

                if DM.Q.Fields[2].AsString='1' then //rubah warna
                begin
                  tTempCetak := tTempCetak + 'WARNA'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('WARNA_NAMA').AsString+#13;
                end;

                if DM.Q.Fields[3].AsString='1' then  //rubah nopol
                begin
                  tTempCetak := tTempCetak + 'REGISTRASI'+#13+
                                             'WARNA TNKB'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                       ':'+#13;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('NO_POLISI').AsString+#13+
                                               uniSPCetak.FieldByName('WARNATNKB_NAMA').AsString+#13;
                end;

                if DM.Q.Fields[4].AsString='1' then // rubah model
                begin
                  tTempCetak := tTempCetak + 'JENIS'+#13+
                                             'BENTUK'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                       ':'+#13;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('JENIS_NAMA').AsString+#13+
                                               uniSPCetak.FieldByName('MODEL_NAMA').AsString+#13;
                end;

                if DM.Q.Fields[5].AsString='1' then // rubah mesin
                begin
                  tTempCetak := tTempCetak + 'NO MESIN'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  tTempCetak1 := tTempCetak1 + Trim(uniSPCetak.FieldByName('NO_MESIN').AsString)+#13;
                end;

                tTempCetak := tTempCetak + 'DASAR'+#13;
                tTempCetak := tTempCetak + ''+#13;
                tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('DASAR_PERUBAHAN').AsString+#13;

                frxReport.DataSet := frxDBDataset1;
                frxReport.Clear;
                frxReport.LoadFromFile(RootPath+'\bbn2ki.fr3');

                fWait.Hide;
                Application.ProcessMessages;

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
                MessageDlgError('PROSES PRINT GAGAL!!'+#13+
                           'DATA TIDAK DITEMUKAN DI MASTER_PERUBAHAN');
              end;
            end
            else
            begin
              MessageDlgWarning('TIDAK ADA DATA YANG AKAN DICETAK');
            end;
          except on E:Exception do
          begin
            fWait.Hide;
            Application.ProcessMessages;
            ErrorProgDialog('Error,..bpkb_get_hist_bbn2pilprn%Error '+E.Message);
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
        StoredProcName := 'bpkb_get_cetak_ki_perubahan';
        try
          Params.Clear;
          Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '5';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPKuning.FieldByName('BPKB_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPKuning.FieldByName('HIST_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki_perubahan%uniSPKuning%Error '+E.Message);
        end;
        end;
      end;
    end;
  end;
end;

procedure TfKartuIndukPerubahan.cxButton7Click(Sender: TObject);
begin
  tTempCetak := '';
  tTempCetak1 := '';
  tTempCetakTitik := '';
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
          StoredProcName := 'bpkb_get_hist_bbn2pil_prn';
          try
            Params.Clear;
            Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
            Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
            Params.CreateParam(ftString,'v_hist_id',ptinput).AsString := uniSPMerah.FieldByName('HIST_ID').AsString;
            Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
            Open;

            fWait.Hide;
            Application.ProcessMessages;

            if uniSPCetak.RecordCount > 0 then
            begin
              fWait.Show;
              fWait.Label1.Caption := 'Tunggu Sebentar ...';
              fWait.cxProgressBar1.Visible := True;
              Application.ProcessMessages;

              DM.Q.Close;
              DM.Q.SQL.Text := 'select RBH_NAMA,RBH_ALAMAT,RBH_WARNA,RBH_NOPOL,RBH_MODEL,RBH_MESIN from m_perubahan where PRB_ID=:PRB_ID';
              DM.Q.Params[0].AsString := uniSPCetak.FieldByName('PRB_ID').AsString;
              DM.Q.Open;
              
              if DM.Q.RecordCount > 0 then
              begin
                tTempCetak := tTempCetak + 'NOMOR'+#13+
                                           'PERUBAHAN'+#13;
                tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('NREG').AsString+#13+
                                             uniSPCetak.FieldByName('PRB_NAMA').AsString+#13;

                if DM.Q.Fields[0].AsString='1' then // rubah nama
                begin
                  tJmlChar := CekJmlChar(uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString);
                  tJmlChar2 := CekJmlChar(uniSPCetak.FieldByName('NAMA_PEMILIK').AsString);
                  if tJmlChar2 = 0 then
                  begin
                    if tJmlChar = 0 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               'ALAMAT'+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ':'+#13+
                                                           ':'+#13;
                    end
                    else if tJmlChar = 1 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               'ALAMAT'+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ' '+#13;

                    end
                    else if tJmlChar = 2 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ''+#13+
                                                           ''+#13;
                    end;
                  end
                  else if tJmlChar2 = 1 then
                  begin
                    if tJmlChar = 0 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ''+#13+
                                                           ':'+#13+
                                                           ':'+#13;
                    end
                    else if tJmlChar = 1 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ''+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ' '+#13;

                    end
                    else if tJmlChar = 2 then
                    begin
                      tTempCetak := tTempCetak + 'NO IDENTITAS'+#13+
                                               'NAMA'+#13+
                                               ''+#13+
                                               'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                      tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                           ''+#13+
                                                           ':'+#13+
                                                           ':'+#13+
                                                           ''+#13+
                                                           ''+#13;
                    end;
                  end;

                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('NO_IDENTITAS').AsString+#13+
                                               uniSPCetak.FieldByName('NAMA_PEMILIK').AsString+#13+
                                               uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString+#13;
                end;

                if DM.Q.Fields[1].AsString='1' then  //rubah alamat
                begin
                  tJmlChar := CekJmlChar(uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString);
                  if tJmlChar = 0 then
                  begin
                     tTempCetak := tTempCetak + 'ALAMAT'+#13;
                     tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  end
                  else if tJmlChar = 1 then
                  begin
                    tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                               ''+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ''+#13;
                  end
                  else if tJmlChar = 2 then
                  begin
                    tTempCetak := tTempCetak + 'ALAMAT'+#13+
                                               ''+#13+
                                               ''+#13;
                    tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                         ''+#13+
                                                         ''+#13;
                  end;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('ALAMAT_PEMILIK').AsString+#13;
                end;

                if DM.Q.Fields[2].AsString='1' then //rubah warna
                begin
                  tTempCetak := tTempCetak + 'WARNA'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('WARNA_NAMA').AsString+#13;
                end;

                if DM.Q.Fields[3].AsString='1' then  //rubah nopol
                begin
                  tTempCetak := tTempCetak + 'REGISTRASI'+#13+
                                             'WARNA TNKB'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                       ':'+#13;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('NO_POLISI').AsString+#13+
                                               uniSPCetak.FieldByName('WARNATNKB_NAMA').AsString+#13;
                end;

                if DM.Q.Fields[4].AsString='1' then // rubah model
                begin
                  tTempCetak := tTempCetak + 'JENIS'+#13+
                                             'BENTUK'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13+
                                                       ':'+#13;
                  tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('JENIS_NAMA').AsString+#13+
                                               uniSPCetak.FieldByName('MODEL_NAMA').AsString+#13;
                end;

                if DM.Q.Fields[5].AsString='1' then // rubah mesin
                begin
                  tTempCetak := tTempCetak + 'NO MESIN'+#13;
                  tTempCetakTitik := tTempCetakTitik + ':'+#13;
                  tTempCetak1 := tTempCetak1 + Trim(uniSPCetak.FieldByName('NO_MESIN').AsString)+#13;
                end;

                tTempCetak := tTempCetak + 'DASAR'+#13;
                tTempCetak := tTempCetak + ''+#13;
                tTempCetak1 := tTempCetak1 + uniSPCetak.FieldByName('DASAR_PERUBAHAN').AsString+#13;

                frxReport.DataSet := frxDBDataset1;
                frxReport.Clear;
                frxReport.LoadFromFile(RootPath+'\bbn2ki.fr3');

                fWait.Hide;
                Application.ProcessMessages;

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
                MessageDlgError('PROSES PRINT GAGAL!!'+#13+
                           'DATA TIDAK DITEMUKAN DI MASTER_PERUBAHAN');
              end;
            end
            else
            begin
              MessageDlgWarning('TIDAK ADA DATA YANG AKAN DICETAK');
            end;
          except on E:Exception do
          begin
            fWait.Hide;
            Application.ProcessMessages;
            ErrorProgDialog('Error,..bpkb_get_hist_bbn2pilprn%Error '+E.Message);
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
        StoredProcName := 'bpkb_get_cetak_ki_perubahan';
        try
          Params.Clear;
          Params.CreateParam(ftString,'v_signtype',ptinput).AsString := '5';
          Params.CreateParam(ftString,'v_berkas',ptinput).AsInteger := uniSPMerah.FieldByName('BPKB_ID').AsInteger;
          Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
          Open;

          if uniSPCetak.RecordCount > 0 then
             UpdateKartuInduk(uniSPMerah.FieldByName('HIST_ID').AsString,vIDPetugas,FormatDateTime('yyyymmdd',dtTglPrintKI.Date),uniSPCetak);

        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_get_cetak_ki_perubahan%uniSPMerah%Error '+E.Message);
        end;
        end;
      end;
    end;
  end;
end;

function TfKartuIndukPerubahan.CekJmlChar(vData: String): integer;
var
  i: integer;
begin
  result:=0;
  for i:=1 to length(vData) do
  if vData[i]=#13 then
    inc(result);
end;

procedure TfKartuIndukPerubahan.frxReportGetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName = 'DATA_CETAK' then
    Value := tTempCetak;
  if VarName = 'DATA_CETAK1' then
    Value := tTempCetak1;
  if VarName = 'DATA_CETAK2' then
    Value := tTempCetakTitik;
  if VarName = 'KOTA' then
    Value := vKota;
end;

procedure TfKartuIndukPerubahan.CRDBGrid1DrawColumnCell(Sender: TObject;
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

procedure TfKartuIndukPerubahan.CRDBGrid2DrawColumnCell(Sender: TObject;
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

procedure TfKartuIndukPerubahan.CRDBGrid3DrawColumnCell(Sender: TObject;
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

procedure TfKartuIndukPerubahan.CRDBGrid4DrawColumnCell(Sender: TObject;
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

procedure TfKartuIndukPerubahan.FormDestroy(Sender: TObject);
begin
  RemoveFontResource(PChar(vNamaDirFontInstall+vNamaFileFont));
  PostMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;

  DeleteFile(vNamaDirFontInstall+vNamaFileFont);
end;

procedure TfKartuIndukPerubahan.frxReportBeforePrint(
  Sender: TfrxReportComponent);
begin
  (frxReport.FindObject('DataCetak') as TfrxMemoView).Font.Name := vNamaFont;
  (frxReport.FindObject('DataCetak1') as TfrxMemoView).Font.Name := vNamaFont;
  (frxReport.FindObject('DataCetak2') as TfrxMemoView).Font.Name := vNamaFont;
  (frxReport.FindObject('PoIDoI') as TfrxMemoView).Font.Name := vNamaFont;
end;

end.


