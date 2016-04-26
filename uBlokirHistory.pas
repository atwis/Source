unit uBlokirHistory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPC, cxContainer, cxEdit, Menus, cxButtons,
  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ADODB, Grids,
  DBGrids, CRGrid, MemDS, DBAccess, Uni;

type
  TfHistoryBlokir = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    eLokasi: TcxTextEdit;
    Label4: TLabel;
    bBaru: TcxButton;
    TombolSound2: TButton;
    Label12: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    ComboBox1: TComboBox;
    TombolSound3: TButton;
    TombolSound1: TButton;
    Shape2: TShape;
    Shape3: TShape;
    Memo1: TMemo;
    Label18: TLabel;
    Label2: TLabel;
    lSukses: TLabel;
    Label5: TLabel;
    lInsertHB: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    lTotal: TLabel;
    Label8: TLabel;
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
    cxGridLevel1: TcxGridLevel;
    ADOQuery1: TADOQuery;
    OpenDialog1: TOpenDialog;
    ADOConnection1: TADOConnection;
    Label11: TLabel;
    Label14: TLabel;
    lNonAktif: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    lSudahBlokir: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    lMutasiLD: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lerror: TLabel;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column17: TcxGridDBColumn;
    cxGridDBTableView1Column18: TcxGridDBColumn;
    cxGridDBTableView1Column19: TcxGridDBColumn;
    cxGridDBTableView1Column20: TcxGridDBColumn;
    cxGridDBTableView1Column21: TcxGridDBColumn;
    cxGridDBTableView1Column22: TcxGridDBColumn;
    cxGridDBTableView1Column23: TcxGridDBColumn;
    cxGridDBTableView1Column24: TcxGridDBColumn;
    cxGridDBTableView1Column25: TcxGridDBColumn;
    cxGridDBTableView1Column26: TcxGridDBColumn;
    cxButton1: TcxButton;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    cxGridDBTableView1Column27: TcxGridDBColumn;
    RadioGroup1: TRadioGroup;
    cbPolda: TComboBox;
    procedure bBaruClick(Sender: TObject);
    procedure TombolSound2Click(Sender: TObject);
    procedure TombolSound3Click(Sender: TObject);
    procedure TombolSound1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vSukses,vInsertHB,vNonAktif,vSudahBlokir,vMutasiLD,vTotal,vError : integer;
    procedure ConnectToExcel(vSource:String);
    procedure RefreshPolda;
    procedure InsertHistBlokirPoldaNTT;
    procedure InsertHistBlokirPoldaMKS;
  end;

type
  TString = class(TObject)
private
  fStr: String;
public
  constructor Create(const AStr: String) ;
  property Str: String read FStr write FStr;
end;

var
  fHistoryBlokir: TfHistoryBlokir;

implementation
Uses
  uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfHistoryBlokir.bBaruClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    eLokasi.Text := OpenDialog1.FileName;
    vDirFileEXEL := extractfilepath(OpenDialog1.FileName);
    vNamaFileExel := ExtractFileName(OpenDialog1.FileName);
    Label13.Caption := eLokasi.Text;
  end;
end;

procedure TfHistoryBlokir.ConnectToExcel(vSource: String);
var
   strConn :  widestring;
begin
  strConn:='Provider=Microsoft.Jet.OLEDB.4.0;' +
           'Data Source=' + vSource + ';' +
           'Extended Properties=Excel 8.0;';

  AdoConnection1.Connected:=False;
  AdoConnection1.ConnectionString:=strConn;
  try
    AdoConnection1.Open;
    AdoConnection1.GetTableNames(ComboBox1.Items,True);
    ComboBox1.ItemIndex := 0;
    TombolSound2.Enabled := False;
    TombolSound1.Enabled := True;
  except
  On E: Exception do
  begin
    MessageDlg('Error.ConnectToExcel.KetError '+E.Message,mtError,[mbOK],0);
    ErrorProg('Error.ConnectToExcel.KetError '+E.Message);
  end;
  end;
end;

procedure TfHistoryBlokir.TombolSound2Click(Sender: TObject);
begin
  ConnectToExcel(eLokasi.Text);
end;

procedure TfHistoryBlokir.TombolSound3Click(Sender: TObject);
begin
  ComboBox1.Clear;
  lSukses.Caption := '0';
  lInsertHB.Caption := '0';
  lNonAktif.Caption := '0';
  lSudahBlokir.Caption := '0';
  lMutasiLD.Caption := '0';
  lTotal.Caption := '0';
  lerror.Caption := '0';
  Memo1.Clear;
  TombolSound2.Enabled := True;
  TombolSound1.Enabled := False;
end;

procedure TfHistoryBlokir.TombolSound1Click(Sender: TObject);
begin
  if TString(cbPolda.Items.Objects[cbPolda.ItemIndex]).Str='17' then
     InsertHistBlokirPoldaNTT
  else if TString(cbPolda.Items.Objects[cbPolda.ItemIndex]).Str='21' then
     InsertHistBlokirPoldaMKS;
end;

procedure TfHistoryBlokir.cxButton1Click(Sender: TObject);
begin
  with UniQuery1 do
  begin
    Close;
    SQL.Text := 'SELECT HIST_BLOKIR_ID,TUJUAN,ALAMAT,NO_TGL_SURAT,ALASAN,NOBPKB,NOREG,TEMPAT,'+
                'TGL_BLOKIR,NOPOL,WARNA_TNKB,NAMA_PEMILIK,ALAMAT_PEMILIK,MERK,TIPE,'+
                'JENIS,MODEL,THN_BUAT,THN_RAKIT,CILINDER,WARNA,NO_RANGKA,NO_MESIN,SUMBU,'+
                'RODA,BAHAN_BAKAR,KODE,''DATA KENDARAAN KE BLOKIR'' AS KET FROM T_HISTORY_BLOKIR'+
                ' UNION '+
                'SELECT HIST_BLOKIR_ID,TUJUAN,ALAMAT,NO_TGL_SURAT,ALASAN,NOBPKB,NOREG,TEMPAT,'+
                'TGL_BLOKIR,NOPOL,WARNA_TNKB,NAMA_PEMILIK,ALAMAT_PEMILIK,MERK,TIPE,'+
                'JENIS,MODEL,THN_BUAT,THN_RAKIT,CILINDER,WARNA,NO_RANGKA,NO_MESIN,SUMBU,'+
                'RODA,BAHAN_BAKAR,KODE,''DATA KENDARAAN SUDAH TIDAK AKTIF'' AS KET FROM T_HISTORY_BLOKIR_NON_AKTIF'+
                ' UNION '+
                'SELECT HIST_BLOKIR_ID,TUJUAN,ALAMAT,NO_TGL_SURAT,ALASAN,NOBPKB,NOREG,TEMPAT,'+
                'TGL_BLOKIR,NOPOL,WARNA_TNKB,NAMA_PEMILIK,ALAMAT_PEMILIK,MERK,TIPE,'+
                'JENIS,MODEL,THN_BUAT,THN_RAKIT,CILINDER,WARNA,NO_RANGKA,NO_MESIN,SUMBU,'+
                'RODA,BAHAN_BAKAR,KODE,''DATA KENDARAAN SUDAH KE BLOKIR'' AS KET FROM T_HISTORY_BLOKIR_BLOKIR'+
                ' UNION '+
                'SELECT HIST_BLOKIR_ID,TUJUAN,ALAMAT,NO_TGL_SURAT,ALASAN,NOBPKB,NOREG,TEMPAT,'+
                'TGL_BLOKIR,NOPOL,WARNA_TNKB,NAMA_PEMILIK,ALAMAT_PEMILIK,MERK,TIPE,'+
                'JENIS,MODEL,THN_BUAT,THN_RAKIT,CILINDER,WARNA,NO_RANGKA,NO_MESIN,SUMBU,'+
                'RODA,BAHAN_BAKAR,KODE,''DATA KENDARAAN SUDAH MUTASI LUAR DAERAH'' AS KET FROM T_HISTORY_BLOKIR_ML';
    Open;
  end;
end;

procedure TfHistoryBlokir.FormShow(Sender: TObject);
begin
  RefreshPolda;
end;

{ TString }

constructor TString.Create(const AStr: String);
begin
  inherited Create;
  FStr := AStr;
end;

procedure TfHistoryBlokir.RefreshPolda;
begin
  cbPolda.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT POLDA_ID,POLDA_NAMA FROM M_POLDA ORDER BY POLDA_ID';
    Open;
    if recordcount > 0 then
    begin
      while not DM.Q.Eof do
      begin
        cbPolda.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
      DM.Q.Next;
      end;
    end;
  end;
end;

procedure TfHistoryBlokir.InsertHistBlokirPoldaNTT;
var
  uniSP : TUniStoredProc;
begin
  try
    if not AdoConnection1.Connected then
       ConnectToExcel(eLokasi.Text);
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := 'SELECT * FROM ['+ComboBox1.Text+']';
    try
      ADOQuery1.Open;
      if ADOQuery1.RecordCount > 0 then
      begin
        vSukses := 0;
        vInsertHB := 0;
        vNonAktif := 0;
        vSudahBlokir := 0;
        vMutasiLD := 0;
        vTotal := 0;
        vError := 0;
        lSukses.Caption := '0';
        lInsertHB.Caption := '0';
        lNonAktif.Caption := '0';
        lSudahBlokir.Caption := '0';
        lMutasiLD.Caption := '0';
        lTotal.Caption := '0';
        lerror.Caption := '0';
        while not ADOQuery1.Eof do
        begin
          if ADOQuery1.Fields[1].AsString <> '' then
          begin
            try
              uniSP := TUniStoredProc.Create(Application);
              uniSP.Connection := DM.dbSrv;
              uniSP.Close;
              uniSP.StoredProcName := 'bpkb_hist_2009_2014_blokir';
              try
                uniSP.Params.Clear;
                uniSP.Params.CreateParam(ftString,'vPOLDA_ID',ptInput).AsString := vPOLDAID;
                uniSP.Params.CreateParam(ftString,'vPOLRES_ID',ptInput).AsString := vPOLRESID;
                uniSP.Params.CreateParam(ftString,'vNOBPKB',ptInput).AsString := ADOQuery1.Fields[5].AsString;
                uniSP.Params.CreateParam(ftString,'vNOREGBPKB',ptInput).AsString := ADOQuery1.Fields[6].AsString;
                uniSP.Params.CreateParam(ftString,'vHB_BLOKIR',ptInput).AsString := '0';
                uniSP.Params.CreateParam(ftString,'vHB_NOSURAT',ptInput).AsString := ADOQuery1.Fields[3].AsString;
                if ADOQuery1.Fields[8].AsString<>'' then
                   uniSP.Params.CreateParam(ftString,'vHB_TANGGAL',ptInput).AsString :=
                         FormatDateTime('yyyymmdd',StrToDate2(StringReplace(StringReplace(ADOQuery1.Fields[8].AsString,'PEBRUARI','FEBRUARI',[rfReplaceAll, rfIgnoreCase]),'NOVEMBER','NOPEMBER',[rfReplaceAll, rfIgnoreCase])))
                else
                   uniSP.Params.CreateParam(ftString,'vHB_TANGGAL',ptInput).AsString := '';
                uniSP.Params.CreateParam(ftString,'vHB_ALASAN',ptInput).AsString := ADOQuery1.Fields[4].AsString;
                uniSP.Params.CreateParam(ftString,'vHB_PEMOHON',ptInput).AsString := ADOQuery1.Fields[1].AsString;
                uniSP.Params.CreateParam(ftString,'vHB_ALAMATPEMOHON',ptInput).AsString := ADOQuery1.Fields[2].AsString;
                uniSP.Params.CreateParam(ftString,'vHB_NOSURATPEMOHON',ptInput).AsString := ADOQuery1.Fields[3].AsString;
                if ADOQuery1.Fields[8].AsString<>'' then
                   uniSP.Params.CreateParam(ftString,'vHB_TANGGAL',ptInput).AsString :=
                         FormatDateTime('yyyymmdd',StrToDate2(StringReplace(StringReplace(ADOQuery1.Fields[8].AsString,'PEBRUARI','FEBRUARI',[rfReplaceAll, rfIgnoreCase]),'NOVEMBER','NOPEMBER',[rfReplaceAll, rfIgnoreCase])))
                else
                   uniSP.Params.CreateParam(ftString,'vHB_TANGGAL',ptInput).AsString := '';
                uniSP.Params.CreateParam(ftString,'vHB_PERIHALSRTPMHN',ptInput).AsString := 'PEMBLOKIRAN BPKB';
                uniSP.Params.CreateParam(ftString,'vOP_ID',ptInput).AsString := vIDPetugas;
                uniSP.Params.CreateParam(ftString,'vOP_NAMA',ptInput).AsString := vNamaPetugas;
                if UpperCase(ADOQuery1.Fields[4].AsString) = 'HILANG' then       //0=PERDATA; 1=PIDANA; 2=DUPLIKAT
                   uniSP.Params.CreateParam(ftString,'vJENIS_BLOKIR',ptInput).AsInteger := 1
                else if UpperCase(ADOQuery1.Fields[4].AsString) = 'DIJAMINKAN' then
                   uniSP.Params.CreateParam(ftString,'vJENIS_BLOKIR',ptInput).AsInteger := 0
                else if Pos('CEK',UpperCase(ADOQuery1.Fields[4].AsString)) > 0 then
                   uniSP.Params.CreateParam(ftString,'vJENIS_BLOKIR',ptInput).AsInteger := 0
                else
                   uniSP.Params.CreateParam(ftString,'vJENIS_BLOKIR',ptInput).AsInteger := 0;
                uniSP.Params.CreateParam(ftString,'vHB_KOTAPMH',ptInput).AsString := '-';
                uniSP.Params.CreateParam(ftString,'vHB_TEMPAT_TERBIT',ptInput).AsString := ADOQuery1.Fields[7].AsString;
                uniSP.Params.CreateParam(ftString,'vHB_NOPOL',ptInput).AsString := ADOQuery1.Fields[9].AsString;
                uniSP.Params.CreateParam(ftString,'vWARNA_TNKB',ptInput).AsString := ADOQuery1.Fields[10].AsString;
                uniSP.Params.CreateParam(ftString,'vNAMA_PEMILIK',ptInput).AsString := ADOQuery1.Fields[11].AsString;
                uniSP.Params.CreateParam(ftString,'vALAMAT_PEMILIK',ptInput).AsString := ADOQuery1.Fields[12].AsString;
                uniSP.Params.CreateParam(ftString,'vMERK',ptInput).AsString := ADOQuery1.Fields[13].AsString;
                uniSP.Params.CreateParam(ftString,'vTIPE',ptInput).AsString := ADOQuery1.Fields[14].AsString;
                uniSP.Params.CreateParam(ftString,'vJENIS',ptInput).AsString := ADOQuery1.Fields[15].AsString;
                uniSP.Params.CreateParam(ftString,'vMODEL',ptInput).AsString := ADOQuery1.Fields[16].AsString;
                uniSP.Params.CreateParam(ftString,'vTHN_BUAT',ptInput).AsString := ADOQuery1.Fields[17].AsString;
                uniSP.Params.CreateParam(ftString,'vTHN_RAKIT',ptInput).AsString := ADOQuery1.Fields[18].AsString;
                uniSP.Params.CreateParam(ftString,'vCILINDER',ptInput).AsString := ADOQuery1.Fields[19].AsString;
                uniSP.Params.CreateParam(ftString,'vWARNA',ptInput).AsString := ADOQuery1.Fields[20].AsString;
                uniSP.Params.CreateParam(ftString,'vNO_RANGKA',ptInput).AsString := ADOQuery1.Fields[21].AsString;
                uniSP.Params.CreateParam(ftString,'vNO_MESIN',ptInput).AsString := ADOQuery1.Fields[22].AsString;
                uniSP.Params.CreateParam(ftString,'vSUMBU',ptInput).AsString := ADOQuery1.Fields[23].AsString;
                uniSP.Params.CreateParam(ftString,'vRODA',ptInput).AsString := ADOQuery1.Fields[24].AsString;
                uniSP.Params.CreateParam(ftString,'vBAHAN_BAKAR',ptInput).AsString := ADOQuery1.Fields[25].AsString;
                uniSP.Params.CreateParam(ftString,'vKODE',ptInput).AsString := ADOQuery1.Fields[26].AsString;
                uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
                uniSP.ExecProc;

                Application.ProcessMessages;
                Memo1.Lines.Add('No BPKB '+ADOQuery1.Fields[5].AsString+' ===> '+uniSP.Params.ParamValues['RESULT']);
                Log('PROSES INSERT HISTORY BLOKIR; No BPKB '+ADOQuery1.Fields[5].AsString+' ===> '+uniSP.Params.ParamValues['RESULT']);
                if Copy(uniSP.Params.ParamValues['RESULT'],1,1) = '1' then
                begin
                  vSukses := vSukses + 1;
                  lSukses.Caption := FormatKeUang(vSukses);
                end
                else if Copy(uniSP.Params.ParamValues['RESULT'],1,3) = '0;0'  then
                begin
                  vNonAktif := vNonAktif + 1;
                  lNonAktif.Caption := FormatKeUang(vNonAktif);
                end
                else if Copy(uniSP.Params.ParamValues['RESULT'],1,3) = '0;2'  then
                begin
                  vSudahBlokir := vSudahBlokir + 1;
                  lSudahBlokir.Caption := FormatKeUang(vSudahBlokir);
                end
                else if Copy(uniSP.Params.ParamValues['RESULT'],1,3) = '0;3'  then
                begin
                  vMutasiLD := vMutasiLD + 1;
                  lMutasiLD.Caption := FormatKeUang(vMutasiLD);
                end
                else if Copy(uniSP.Params.ParamValues['RESULT'],1,1) = '2'  then
                begin
                  vInsertHB := vInsertHB + 1;
                  lInsertHB.Caption := FormatKeUang(vInsertHB);
                end;

                Application.ProcessMessages;

              except on E:Exception do
              begin
                vError := vError+1;
                lTotal.Caption := FormatKeUang(vError);
                ErrorProgNoDialog('Error,..bpkb_hist_2009_2014_blokir.Exec%No BPKB '+ADOQuery1.Fields[5].AsString+' Error : '+E.Message);
                Memo1.Lines.Add('Error,..bpkb_hist_2009_2014_blokir.Exec%No BPKB '+ADOQuery1.Fields[5].AsString+' Error : '+E.Message);
              end;
              end;
            finally
              FreeAndNil(uniSP);
            end;
          end;
          vTotal := vSukses+vNonAktif+vMutasiLD+vInsertHB+vError;
          lTotal.Caption := FormatKeUang(vTotal);
          ADOQuery1.Next;
        end;
      end
      else
      begin
        Memo1.Lines.Add('DATA RECORD TIDAK DITEMUKAN!!!');
        Log('DATA RECORD TIDAK DITEMUKAN!!!');
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error... '+E.Message);
    end;
    end;
  finally

  end;
end;

procedure TfHistoryBlokir.InsertHistBlokirPoldaMKS;
var
  uniSP : TUniStoredProc;
begin
  try
    if not AdoConnection1.Connected then
       ConnectToExcel(eLokasi.Text);
    ADOQuery1.Close;
    ADOQuery1.SQL.Text := 'SELECT * FROM ['+ComboBox1.Text+']';
    try
      ADOQuery1.Open;
      if ADOQuery1.RecordCount > 0 then
      begin
        vSukses := 0;
        vInsertHB := 0;
        vNonAktif := 0;
        vSudahBlokir := 0;
        vMutasiLD := 0;
        vTotal := 0;
        vError := 0;
        lSukses.Caption := '0';
        lInsertHB.Caption := '0';
        lNonAktif.Caption := '0';
        lSudahBlokir.Caption := '0';
        lMutasiLD.Caption := '0';
        lTotal.Caption := '0';
        lerror.Caption := '0';
        while not ADOQuery1.Eof do
        begin
          if ADOQuery1.Fields[1].AsString <> '' then
          begin
            try
              uniSP := TUniStoredProc.Create(Application);
              uniSP.Connection := DM.dbSrv;
              uniSP.Close;
              uniSP.StoredProcName := 'bpkb_hist_2009_2014_blokir';
              try
                uniSP.Params.Clear;
                uniSP.Params.CreateParam(ftString,'vPOLDA_ID',ptInput).AsString := vPOLDAID;
                uniSP.Params.CreateParam(ftString,'vPOLRES_ID',ptInput).AsString := vPOLRESID;
                uniSP.Params.CreateParam(ftString,'vNOBPKB',ptInput).AsString := ADOQuery1.Fields[5].AsString;
                uniSP.Params.CreateParam(ftString,'vNOREGBPKB',ptInput).AsString := ADOQuery1.Fields[6].AsString;
                uniSP.Params.CreateParam(ftString,'vHB_BLOKIR',ptInput).AsString := '0';
                uniSP.Params.CreateParam(ftString,'vHB_NOSURAT',ptInput).AsString := ADOQuery1.Fields[3].AsString;
                if ADOQuery1.Fields[8].AsString<>'' then
                   uniSP.Params.CreateParam(ftString,'vHB_TANGGAL',ptInput).AsString :=
                         FormatDateTime('yyyymmdd',StrToDate2(StringReplace(StringReplace(ADOQuery1.Fields[8].AsString,'PEBRUARI','FEBRUARI',[rfReplaceAll, rfIgnoreCase]),'NOVEMBER','NOPEMBER',[rfReplaceAll, rfIgnoreCase])))
                else
                   uniSP.Params.CreateParam(ftString,'vHB_TANGGAL',ptInput).AsString := '';
                uniSP.Params.CreateParam(ftString,'vHB_ALASAN',ptInput).AsString := ADOQuery1.Fields[4].AsString;
                uniSP.Params.CreateParam(ftString,'vHB_PEMOHON',ptInput).AsString := ADOQuery1.Fields[1].AsString;
                uniSP.Params.CreateParam(ftString,'vHB_ALAMATPEMOHON',ptInput).AsString := ADOQuery1.Fields[2].AsString;
                uniSP.Params.CreateParam(ftString,'vHB_NOSURATPEMOHON',ptInput).AsString := ADOQuery1.Fields[3].AsString;
                if ADOQuery1.Fields[8].AsString<>'' then
                   uniSP.Params.CreateParam(ftString,'vHB_TANGGAL',ptInput).AsString :=
                         FormatDateTime('yyyymmdd',StrToDate2(StringReplace(StringReplace(ADOQuery1.Fields[8].AsString,'PEBRUARI','FEBRUARI',[rfReplaceAll, rfIgnoreCase]),'NOVEMBER','NOPEMBER',[rfReplaceAll, rfIgnoreCase])))
                else
                   uniSP.Params.CreateParam(ftString,'vHB_TANGGAL',ptInput).AsString := '';
                uniSP.Params.CreateParam(ftString,'vHB_PERIHALSRTPMHN',ptInput).AsString := 'PEMBLOKIRAN BPKB';
                uniSP.Params.CreateParam(ftString,'vOP_ID',ptInput).AsString := vIDPetugas;
                uniSP.Params.CreateParam(ftString,'vOP_NAMA',ptInput).AsString := vNamaPetugas;
                if UpperCase(ADOQuery1.Fields[4].AsString) = 'HILANG' then       //0=PERDATA; 1=PIDANA; 2=DUPLIKAT
                   uniSP.Params.CreateParam(ftString,'vJENIS_BLOKIR',ptInput).AsInteger := 1
                else if UpperCase(ADOQuery1.Fields[4].AsString) = 'DIJAMINKAN' then
                   uniSP.Params.CreateParam(ftString,'vJENIS_BLOKIR',ptInput).AsInteger := 0
                else if Pos('CEK',UpperCase(ADOQuery1.Fields[4].AsString)) > 0 then
                   uniSP.Params.CreateParam(ftString,'vJENIS_BLOKIR',ptInput).AsInteger := 0
                else
                   uniSP.Params.CreateParam(ftString,'vJENIS_BLOKIR',ptInput).AsInteger := 0;
                uniSP.Params.CreateParam(ftString,'vHB_KOTAPMH',ptInput).AsString := '-';
                uniSP.Params.CreateParam(ftString,'vHB_TEMPAT_TERBIT',ptInput).AsString := ADOQuery1.Fields[7].AsString;
                uniSP.Params.CreateParam(ftString,'vHB_NOPOL',ptInput).AsString := ADOQuery1.Fields[9].AsString;
                uniSP.Params.CreateParam(ftString,'vWARNA_TNKB',ptInput).AsString := ADOQuery1.Fields[10].AsString;
                uniSP.Params.CreateParam(ftString,'vNAMA_PEMILIK',ptInput).AsString := ADOQuery1.Fields[11].AsString;
                uniSP.Params.CreateParam(ftString,'vALAMAT_PEMILIK',ptInput).AsString := ADOQuery1.Fields[12].AsString;
                uniSP.Params.CreateParam(ftString,'vMERK',ptInput).AsString := ADOQuery1.Fields[13].AsString;
                uniSP.Params.CreateParam(ftString,'vTIPE',ptInput).AsString := ADOQuery1.Fields[14].AsString;
                uniSP.Params.CreateParam(ftString,'vJENIS',ptInput).AsString := ADOQuery1.Fields[15].AsString;
                uniSP.Params.CreateParam(ftString,'vMODEL',ptInput).AsString := ADOQuery1.Fields[16].AsString;
                uniSP.Params.CreateParam(ftString,'vTHN_BUAT',ptInput).AsString := ADOQuery1.Fields[17].AsString;
                uniSP.Params.CreateParam(ftString,'vTHN_RAKIT',ptInput).AsString := ADOQuery1.Fields[18].AsString;
                uniSP.Params.CreateParam(ftString,'vCILINDER',ptInput).AsString := ADOQuery1.Fields[19].AsString;
                uniSP.Params.CreateParam(ftString,'vWARNA',ptInput).AsString := ADOQuery1.Fields[20].AsString;
                uniSP.Params.CreateParam(ftString,'vNO_RANGKA',ptInput).AsString := ADOQuery1.Fields[21].AsString;
                uniSP.Params.CreateParam(ftString,'vNO_MESIN',ptInput).AsString := ADOQuery1.Fields[22].AsString;
                uniSP.Params.CreateParam(ftString,'vSUMBU',ptInput).AsString := ADOQuery1.Fields[23].AsString;
                uniSP.Params.CreateParam(ftString,'vRODA',ptInput).AsString := ADOQuery1.Fields[24].AsString;
                uniSP.Params.CreateParam(ftString,'vBAHAN_BAKAR',ptInput).AsString := ADOQuery1.Fields[25].AsString;
                uniSP.Params.CreateParam(ftString,'vKODE',ptInput).AsString := ADOQuery1.Fields[26].AsString;
                uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
                uniSP.ExecProc;

                Application.ProcessMessages;
                Memo1.Lines.Add('No BPKB '+ADOQuery1.Fields[5].AsString+' ===> '+uniSP.Params.ParamValues['RESULT']);
                Log('PROSES INSERT HISTORY BLOKIR; No BPKB '+ADOQuery1.Fields[5].AsString+' ===> '+uniSP.Params.ParamValues['RESULT']);
                if Copy(uniSP.Params.ParamValues['RESULT'],1,1) = '1' then
                begin
                  vSukses := vSukses + 1;
                  lSukses.Caption := FormatKeUang(vSukses);
                end
                else if Copy(uniSP.Params.ParamValues['RESULT'],1,3) = '0;0'  then
                begin
                  vNonAktif := vNonAktif + 1;
                  lNonAktif.Caption := FormatKeUang(vNonAktif);
                end
                else if Copy(uniSP.Params.ParamValues['RESULT'],1,3) = '0;2'  then
                begin
                  vSudahBlokir := vSudahBlokir + 1;
                  lSudahBlokir.Caption := FormatKeUang(vSudahBlokir);
                end
                else if Copy(uniSP.Params.ParamValues['RESULT'],1,3) = '0;3'  then
                begin
                  vMutasiLD := vMutasiLD + 1;
                  lMutasiLD.Caption := FormatKeUang(vMutasiLD);
                end
                else if Copy(uniSP.Params.ParamValues['RESULT'],1,1) = '2'  then
                begin
                  vInsertHB := vInsertHB + 1;
                  lInsertHB.Caption := FormatKeUang(vInsertHB);
                end;

                Application.ProcessMessages;

              except on E:Exception do
              begin
                vError := vError+1;
                lTotal.Caption := FormatKeUang(vError);
                ErrorProgNoDialog('Error,..bpkb_hist_2009_2014_blokir.Exec%No BPKB '+ADOQuery1.Fields[5].AsString+' Error : '+E.Message);
                Memo1.Lines.Add('Error,..bpkb_hist_2009_2014_blokir.Exec%No BPKB '+ADOQuery1.Fields[5].AsString+' Error : '+E.Message);
              end;
              end;
            finally
              FreeAndNil(uniSP);
            end;
          end;
          vTotal := vSukses+vNonAktif+vMutasiLD+vInsertHB+vError;
          lTotal.Caption := FormatKeUang(vTotal);
          ADOQuery1.Next;
        end;
      end
      else
      begin
        Memo1.Lines.Add('DATA RECORD TIDAK DITEMUKAN!!!');
        Log('DATA RECORD TIDAK DITEMUKAN!!!');
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error... '+E.Message);
    end;
    end;
  finally

  end;
end;

end.
