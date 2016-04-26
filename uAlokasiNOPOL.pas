unit uAlokasiNOPOL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, cxRadioGroup, cxControls,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, DBAccess, Uni, MemDS, cxContainer,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxPC, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxProgressBar, Grids, DBGrids, CRGrid,
  cxMemo, frxDesgn, frxBarcode, frxClass, frxDBSet;

type
  TfAlokasiNOPOL = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Shape2: TShape;
    Label3: TLabel;
    cbKabupeten: TComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Q: TUniQuery;
    dsQ: TUniDataSource;
    Label4: TLabel;
    Label5: TLabel;
    CbKabupatenWil: TComboBox;
    Label8: TLabel;
    eKodeWil: TcxTextEdit;
    bSimpanEntry: TcxButton;
    Shape3: TShape;
    p: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxButton24: TcxButton;
    QWil: TUniQuery;
    dsQWil: TUniDataSource;
    cbPolda: TComboBox;
    QSeri: TUniQuery;
    dsQSeri: TUniDataSource;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    Label19: TLabel;
    _cbKDSeriWil: TComboBox;
    cxProgressBar2: TcxProgressBar;
    UniQuery1: TUniQuery;
    UniDataSource1: TUniDataSource;
    Label14: TLabel;
    cbPolda3: TComboBox;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridDBTableView1Column12: TcxGridDBColumn;
    cxTabSheet3: TcxTabSheet;
    QMerk1: TUniQuery;
    dsQMerk1: TUniDataSource;
    QMerk2: TUniQuery;
    dsQMerk2: TUniDataSource;
    QJenis1: TUniQuery;
    dsQJenis1: TUniDataSource;
    QJenis2: TUniQuery;
    dsQJenis2: TUniDataSource;
    QWarna1: TUniQuery;
    dsQWarna1: TUniDataSource;
    dsQWarna2: TUniDataSource;
    QWarna2: TUniQuery;
    frxReport_CB: TfrxReport;
    frxFrCetak: TfrxDBDataset;
    frxBarCodeObject1_CB: TfrxBarCodeObject;
    frxDesigner1_CB: TfrxDesigner;
    QCetak: TUniQuery;
    cxPageControl2: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    eNOPOL: TcxTextEdit;
    cxButton5: TcxButton;
    Shape6: TShape;
    Label2: TLabel;
    lStatus: TLabel;
    Shape8: TShape;
    Label17: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    eNamaPemilikEntry: TcxMemo;
    eAlamatPemilikEntry: TcxMemo;
    eNoRangka: TcxTextEdit;
    eNoMesin: TcxTextEdit;
    cbMerkEntry: TcxDBLookupComboBox;
    cbJenisEntry: TcxDBLookupComboBox;
    eThnBuatEntry: TcxComboBox;
    eSilinderEntry: TcxTextEdit;
    cbWarnaEntry: TcxDBLookupComboBox;
    cxButton7: TcxButton;
    Label15: TLabel;
    cxMemo1: TcxMemo;
    cxGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
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
    cxGridLevel3: TcxGridLevel;
    Label29: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxButton8: TcxButton;
    Label30: TLabel;
    QTampil: TUniQuery;
    dsQTampil: TUniDataSource;
    PopupMenu1: TPopupMenu;
    CETAKULANG1: TMenuItem;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    eNopolCari: TcxTextEdit;
    Label31: TLabel;
    PopupMenu2: TPopupMenu;
    MenuItem3: TMenuItem;
    cxGridDBTableView1Column13: TcxGridDBColumn;
    cxGridDBTableView1Column14: TcxGridDBColumn;
    pBuatLabel: TPanel;
    Shape4: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Label16: TLabel;
    Shape5: TShape;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Shape7: TShape;
    cxButton4: TcxButton;
    dtTglAlokasi: TcxDateEdit;
    cxButton6: TcxButton;
    cbKabupatenAlokasi: TComboBox;
    cbPoldaAlokasi: TComboBox;
    cbWarnaTNKBAlokasi: TComboBox;
    cbJenisKendAlokasi: TComboBox;
    cbKDSeriAlokasi: TComboBox;
    eNoAwalAlokasi: TcxTextEdit;
    eNoAkhirAlokasi: TcxTextEdit;
    cbKDWILAlokasi: TComboBox;
    cxProgressBar3: TcxProgressBar;
    Button1: TButton;
    Panel1: TPanel;
    cxButton3: TcxButton;
    CRDBGrid1: TCRDBGrid;
    eNoRekom: TEdit;
    cxButton9: TcxButton;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    bAlokasi: TButton;
    Panel2: TPanel;
    Shape9: TShape;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Shape10: TShape;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Shape11: TShape;
    cxButton10: TcxButton;
    dtTglAlokasi2: TcxDateEdit;
    cxButton11: TcxButton;
    cbKabupatenAlokasi2: TComboBox;
    cbPoldaAlokasi2: TComboBox;
    cbWarnaTNKBAlokasi2: TComboBox;
    cbJenisKendAlokasi2: TComboBox;
    cbKDSeriAlokasi2: TComboBox;
    eNoAwalAlokasi2: TcxTextEdit;
    cbKDWILAlokasi2: TComboBox;
    cxProgressBar1: TcxProgressBar;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    Label41: TLabel;
    cxTabSheet6: TcxTabSheet;
    Label42: TLabel;
    eNoRangkaPembatalan: TcxTextEdit;
    bProsesPembatalan: TcxButton;
    Label43: TLabel;
    eNoBPKBPembatalan: TcxTextEdit;
    cbKDSeriWil: TcxTextEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pBuatLabelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure eJMLBukuKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton24Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSimpanEntryClick(Sender: TObject);
    procedure cbKDWILAlokasiDropDown(Sender: TObject);
    procedure cbKDSeriAlokasiDropDown(Sender: TObject);
    procedure eNoAwalAlokasiKeyPress(Sender: TObject; var Key: Char);
    procedure eNoAkhirAlokasiKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CRDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure CRDBGrid1DblClick(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure CETAKULANG1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton10Click(Sender: TObject);
    procedure cbKDWILAlokasi2DropDown(Sender: TObject);
    procedure cbKDSeriAlokasi2DropDown(Sender: TObject);
    procedure eNoAwalAlokasi2KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton11Click(Sender: TObject);
    procedure bAlokasiClick(Sender: TObject);
    procedure bProsesPembatalanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshPolda;
    procedure RefreshKabWil;
    procedure RefreshWarnaTNKB;
    procedure RefreshJenisKendaraan;
    procedure RefreshCbMerk;
    procedure RefreshCbJenis;
    procedure RefreshCbWarna;
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
  fAlokasiNOPOL: TfAlokasiNOPOL;

implementation
uses
   uDM, uVariabel, uModul, uWait;
{$R *.dfm}

{ TfAlokasiNOPOL }

procedure TfAlokasiNOPOL.cxButton1Click(Sender: TObject);
begin
  if Length(eNopolCari.Text) > 2 then
  begin
    with Q do
    begin
      Close;
      SQL.Text := 'SELECT A.NOPOL_ID,A.KD_WILAYAH,A.NOURUT,A.HSERI,A.NOPOL,A.NOPOL_P,A.NO_BPKB,'+
                  'A.NO_RANGKA,A.WARNA_TNKB_ID,A.JENIS_ID,A.KABUPATEN,A.TGLINSERT,A.TGLPAKAI,'+
                  'A.REKOM,A.TGLREKOM,A.STATUS,A.KODE_POLDA,A.KODE_KAB,D.WARNATNKB,E.JENIS_NAMA,B.POLDA_NAMA'+
                  ' FROM T_NOPOL_BANK2 A'+
                  ' INNER JOIN M_POLDA B ON A.KODE_POLDA=B.POLDA_ID'+
                  ' INNER JOIN M_WARNATNKB D ON D.WARNATNKB_ID=A.WARNA_TNKB_ID'+
                  ' INNER JOIN M_JENIS E ON E.JENIS_ID=A.JENIS_ID'+
                  ' WHERE A.NOPOL=:NOPOL'+
                  ' ORDER BY A.NOPOL_ID';
      Params[0].AsString := RemoveWhiteSpace(eNopolCari.Text);
      Open;
    end;
  end
  else
  begin
    with Q do
    begin
      Close;
      SQL.Text := 'SELECT A.NOPOL_ID,A.KD_WILAYAH,A.NOURUT,A.HSERI,A.NOPOL,A.NOPOL_P,A.NO_BPKB,'+
                  'A.NO_RANGKA,A.WARNA_TNKB_ID,A.JENIS_ID,A.KABUPATEN,A.TGLINSERT,A.TGLPAKAI,'+
                  'A.REKOM,A.TGLREKOM,A.STATUS,A.KODE_POLDA,A.KODE_KAB,D.WARNATNKB,E.JENIS_NAMA,B.POLDA_NAMA'+
                  ' FROM T_NOPOL_BANK2 A'+
                  ' INNER JOIN M_POLDA B ON A.KODE_POLDA=B.POLDA_ID'+
                  ' INNER JOIN M_WARNATNKB D ON D.WARNATNKB_ID=A.WARNA_TNKB_ID'+
                  ' INNER JOIN M_JENIS E ON E.JENIS_ID=A.JENIS_ID'+
                  ' WHERE A.KABUPATEN=:KABUPATEN'+
                  ' ORDER BY A.NOPOL_ID';
      Params[0].AsString := cbKabupeten.Text;
      Open;
    end;
  end;
end;

procedure TfAlokasiNOPOL.FormShow(Sender: TObject);
begin
  RefreshPolda;
  RefreshKabWil;
  RefreshWarnaTNKB;
  RefreshJenisKendaraan;
  cbKabupeten.Text := '';
end;

procedure TfAlokasiNOPOL.pBuatLabelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pBuatLabel.Handle, wm_SysCommand,$f012,0);
end;

procedure TfAlokasiNOPOL.eJMLBukuKeyPress(Sender: TObject; var Key: Char);
begin
  if Not IsAngka(Key) then
     Key := CHR(0);
end;

procedure TfAlokasiNOPOL.cxButton24Click(Sender: TObject);
begin
  with QWil do
  begin
    Close;
    SQL.Text := 'SELECT A.KODE_WIL,A.KABUPATEN,A.KODE_POLDA,A.KODE_KAB,B.POLDA_NAMA,A.KODE_SERI FROM T_NOPOL_KDWIL2 A'+
                ' INNER JOIN M_POLDA B ON A.KODE_POLDA=B.POLDA_ID'+
                ' WHERE A.KODE_POLDA=:POLDA ORDER BY A.KODE_WIL';
    Params[0].AsString := TString(cbPolda.Items.Objects[cbPolda.ItemIndex]).Str;
    Open;
  end;
end;

procedure TfAlokasiNOPOL.FormCreate(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;
end;

procedure TfAlokasiNOPOL.RefreshPolda;
begin
  cbPolda.Clear;
  cbPoldaAlokasi.Clear;
  cbPoldaAlokasi2.Clear;
  cbPolda3.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT POLDA_ID,POLDA_NAMA FROM M_POLDA ORDER BY POLDA_NAMA';
    Open;
    if recordcount > 0 then
    begin
      while not DM.Q.Eof do
      begin
        cbPolda.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
        cbPoldaAlokasi.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
        cbPolda3.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
        cbPoldaAlokasi2.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
      DM.Q.Next;
      end;
    end;
  end;
end;

procedure TfAlokasiNOPOL.RefreshKabWil;
begin
  CbKabupatenWil.Clear;
  cbKabupatenAlokasi.Clear;
  cbKabupatenAlokasi2.Clear;
  cbKabupeten.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select to_char(no_kab) as no_kab,nama_kab from m_kabupaten where no_prop=:no_prop53 order by nama_kab';
    Params[0].AsInteger := vKodeProp;
    Open;
    if recordcount > 0 then
    begin
      while not DM.Q.Eof do
      begin
        cbKabupeten.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
        CbKabupatenWil.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
        cbKabupatenAlokasi.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
        cbKabupatenAlokasi2.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
      DM.Q.Next;
      end;
    end;
  end;
end;

procedure TfAlokasiNOPOL.RefreshWarnaTNKB;
begin
  cbWarnaTNKBAlokasi.Clear;
  cbWarnaTNKBAlokasi2.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select to_char(WARNATNKB_ID) as WARNATNKB_ID,WARNATNKB from M_WARNATNKB';
    Open;
    if recordcount > 0 then
    begin
      while not DM.Q.Eof do
      begin
        cbWarnaTNKBAlokasi.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
        cbWarnaTNKBAlokasi2.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
      DM.Q.Next;
      end;
    end;
  end;
end;

procedure TfAlokasiNOPOL.RefreshJenisKendaraan;
begin
  cbJenisKendAlokasi.Clear;
  cbJenisKendAlokasi2.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select to_char(JENIS_ID) as JENIS_ID,JENIS_NAMA from M_JENIS';
    Open;
    if recordcount > 0 then
    begin
      while not DM.Q.Eof do
      begin
        cbJenisKendAlokasi.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
        cbJenisKendAlokasi2.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
      DM.Q.Next;
      end;
    end;
  end;
end;

procedure TfAlokasiNOPOL.RefreshCbJenis;
begin
  QJenis1.Close;
  QJenis1.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenis1.Open;

  QJenis2.Close;
  QJenis2.SQL.Text := 'select to_char(jenis_id) as jenis_id,jenis_nama from m_jenis order by jenis_nama';
  QJenis2.Open;
end;

procedure TfAlokasiNOPOL.RefreshCbMerk;
begin
  QMerk1.Close;
  QMerk1.SQL.Text := 'select to_char(merk_id) as merk_id,merk_nama_r as merk_nama from m_merk  where rowid in (select min(rowid) from m_merk group by merk_nama_r)  order by merk_nama';
  QMerk1.Open;

  QMerk2.Close;
  QMerk2.SQL.Text := 'select to_char(merk_id) as merk_id,merk_nama_r as merk_nama from m_merk  where rowid in (select min(rowid) from m_merk group by merk_nama_r)  order by merk_nama';
  QMerk2.Open;
end;

procedure TfAlokasiNOPOL.RefreshCbWarna;
begin
  QWarna1.Close;
  QWarna1.SQL.Text := 'select to_char(warna_id) as warna_id,warna_nama from m_warna order by warna_nama';
  QWarna1.Open;

  QWarna2.Close;
  QWarna2.SQL.Text := 'select to_char(warna_id) as warna_id,warna_nama from m_warna order by warna_nama';
  QWarna2.Open;
end;

{ TString }

constructor TString.Create(const AStr: String);
begin
  inherited Create;
  FStr := AStr;
end;

procedure TfAlokasiNOPOL.bSimpanEntryClick(Sender: TObject);
{Const huruf  : Array[1..26] of string =('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O',
                                        'P','Q','R','S','T','U','V','W','X','Y','Z');

Var
    I : Byte;}
begin
  cxProgressBar2.Properties.Min := 0;
  cxProgressBar2.Properties.Max := 1;
  cxProgressBar2.Position := 0;
  if MessageDlg('Yakin data akan disimpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    with DM.Q2 do
    begin
      Close;
      SQL.Text := 'INSERT INTO T_NOPOL_KDWIL2(KODE_WIL,KABUPATEN,KODE_POLDA,KODE_KAB,KODE_SERI)'+
                  ' VALUES(:KODE_WIL,:KABUPATEN,:KODE_POLDA,:KODE_KAB,:KODE_SERI)';
      try
        Params[0].AsString := eKodeWil.Text;
        Params[1].AsString := CbKabupatenWil.Text;
        Params[2].AsString := TString(cbPolda.Items.Objects[cbPolda.ItemIndex]).Str;
        Params[3].AsString := TString(CbKabupatenWil.Items.Objects[CbKabupatenWil.ItemIndex]).Str;
        Params[4].AsString := cbKDSeriWil.Text;
        Execute;

        cxProgressBar2.Position := 1;
        Application.ProcessMessages;

        // dibuang tidak digunakan oleh kalimantan selatan, lebih baik proses entry manual
        {//For I := 1 to 26 do
        //begin
          Close;
          Params[0].AsString := eKodeWil.Text;
          Params[1].AsString := CbKabupatenWil.Text;
          Params[2].AsString := TString(cbPolda.Items.Objects[cbPolda.ItemIndex]).Str;
          Params[3].AsString := TString(CbKabupatenWil.Items.Objects[CbKabupatenWil.ItemIndex]).Str;
          Params[4].AsString := cbKDSeriWil.Text; // + huruf[I];
          Execute;
        //end;}

        cxButton24.Click;
      except on E: Exception do
      begin
        ErrorProgDialog('Error, Insert T_NOPOL_KDWIL2. Ket error '+E.Message);
      end;
      end;
    end;
  end;
end;

procedure TfAlokasiNOPOL.cbKDWILAlokasiDropDown(Sender: TObject);
begin
  cbKDWILAlokasi.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT KODE_WIL FROM T_NOPOL_KDWIL2 WHERE KODE_POLDA=:KODE_POLDA AND KODE_KAB=:KODE_KAB'+
                ' GROUP BY KODE_WIL';
    Params[0].AsString := TString(cbPoldaAlokasi.Items.Objects[cbPoldaAlokasi.ItemIndex]).Str;
    Params[1].AsString := TString(cbKabupatenAlokasi.Items.Objects[cbKabupatenAlokasi.ItemIndex]).Str;
    Open;

    if recordcount > 0 then
    begin
      while not eof do
      begin
        cbKDWILAlokasi.Items.Add(Fields[0].AsString);
        next;
      end;
    end;
  end;
end;

procedure TfAlokasiNOPOL.cbKDSeriAlokasiDropDown(Sender: TObject);
begin
  cbKDSeriAlokasi.Clear;
  cbKDSeriAlokasi.Items.Add('');
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT KODE_SERI FROM T_NOPOL_KDWIL2 WHERE KODE_POLDA=:KODE_POLDA AND KODE_KAB=:KODE_KAB AND KODE_WIL=:KODE_WIL'+
                ' GROUP BY KODE_SERI';
    Params[0].AsString := TString(cbPoldaAlokasi.Items.Objects[cbPoldaAlokasi.ItemIndex]).Str;
    Params[1].AsString := TString(cbKabupatenAlokasi.Items.Objects[cbKabupatenAlokasi.ItemIndex]).Str;
    Params[2].AsString := cbKDWILAlokasi.Text;
    Open;

    if recordcount > 0 then
    begin
      while not eof do
      begin
        cbKDSeriAlokasi.Items.Add(Fields[0].AsString);
        next;
      end;
    end;
  end;
end;

procedure TfAlokasiNOPOL.eNoAwalAlokasiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not IsAngka(Key) then
     Key := CHR(0);
end;

procedure TfAlokasiNOPOL.eNoAkhirAlokasiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not IsAngka(Key) then
     Key := CHR(0);
end;

procedure TfAlokasiNOPOL.cxButton2Click(Sender: TObject);
begin
  pBuatLabel.Left := 104;
  pBuatLabel.Top := 23;
  cbPoldaAlokasi.Text := '';
  cbKabupatenAlokasi.Text := '';
  cbWarnaTNKBAlokasi.Text := '';
  cbJenisKendAlokasi.Text := '';
  cbKDWILAlokasi.Text := '';
  cbKDSeriAlokasi.Text := '';
  eNoAwalAlokasi.Text := '0';
  eNoAkhirAlokasi.Text := '0';
  dtTglAlokasi.Text := '';
  pBuatLabel.Visible := True;
  cbPoldaAlokasi.SetFocus;
end;

procedure TfAlokasiNOPOL.cxButton4Click(Sender: TObject);
begin
  pBuatLabel.Visible := False;
end;

procedure TfAlokasiNOPOL.cxButton6Click(Sender: TObject);
var
  i,n : integer;
begin
  cxProgressBar3.Properties.Min := 0;
  cxProgressBar3.Properties.Max := StrToInt(eNoAkhirAlokasi.Text)-StrToInt(eNoAwalAlokasi.Text);
  cxProgressBar3.Position := 0;
  n := 1;
  if MessageDlg('Yakin data akan disimpan untuk proses registrasi kendaraan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    DM.Q.SQL.Text := 'INSERT INTO T_NOPOL_BANK2(KD_WILAYAH,NOURUT,HSERI,NOPOL,NOPOL_P,'+
                     'WARNA_TNKB_ID,JENIS_ID,KABUPATEN,TGLINSERT,REKOM,STATUS,KODE_POLDA,KODE_KAB)'+
                     ' VALUES(:KD_WILAYAH,:NOURUT,:HSERI,:NOPOL,:NOPOL_P,'+
                     ':WARNA_TNKB_ID,:JENIS_ID,:KABUPATEN,SYSDATE,''0'',''0'',:KODE_POLDA,:KODE_KAB)';
    for i := StrToInt(eNoAwalAlokasi.Text) to StrToInt(eNoAkhirAlokasi.Text) do
    begin
      try
        with DM.Q do
        begin
          Close;
          Params[0].AsString := cbKDWILAlokasi.Text;
          Params[1].AsString := IntToStr(i);
          Params[2].AsString := cbKDSeriAlokasi.Text;
          Params[3].AsString := cbKDWILAlokasi.Text+IntToStr(i)+cbKDSeriAlokasi.Text;
          Params[4].AsString := cbKDWILAlokasi.Text+' '+IntToStr(i)+' '+cbKDSeriAlokasi.Text;
          Params[5].AsString := TString(cbWarnaTNKBAlokasi.Items.Objects[cbWarnaTNKBAlokasi.ItemIndex]).Str;
          Params[6].AsString := TString(cbJenisKendAlokasi.Items.Objects[cbJenisKendAlokasi.ItemIndex]).Str;
          Params[7].AsString := cbKabupatenAlokasi.Text;
          Params[8].AsString := TString(cbPoldaAlokasi.Items.Objects[cbPoldaAlokasi.ItemIndex]).Str;
          Params[9].AsString := TString(cbKabupatenAlokasi.Items.Objects[cbKabupatenAlokasi.ItemIndex]).Str;
          Execute;
          cxProgressBar3.Position := n;
          Inc(n);
          Application.ProcessMessages;
        end;
      except on E: Exception do
      begin
        ErrorProg('Error, Create Alokasi NOPOL : '+cbKDWILAlokasi.Text+' '+IntToStr(i)+' '+cbKDSeriAlokasi.Text+', Ket error '+e.Message);
      end;
      end;
    end;
    MessageDlgInformation('Proses Selesai');
  end;
end;

procedure TfAlokasiNOPOL.cxButton3Click(Sender: TObject);
begin
  Panel1.Visible := FALSE;
end;

procedure TfAlokasiNOPOL.Panel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Panel1.Handle, wm_SysCommand,$f012,0);
end;

procedure TfAlokasiNOPOL.CRDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Panel1.Handle, wm_SysCommand,$f012,0);
end;

procedure TfAlokasiNOPOL.Button1Click(Sender: TObject);
begin
  with UniQuery1 do
  begin
    Close;
    SQL.Text := 'SELECT NO_AWAL,NO_AKHIR FROM T_NO_SETTING_ALOKASI WHERE WARNA_TNKB=:WARNA AND JENIS_KENDARAAN=:JENIS_KENDARAAN';
    Params[0].AsString := cbWarnaTNKBAlokasi.Text;
    Params[1].AsString := cbJenisKendAlokasi.Text;
    Open;
    if recordcount > 0 then
    begin
      Panel1.Left := 536;
      Panel1.Top := 227;
      Panel1.Visible := True;
    end;
  end;
end;

procedure TfAlokasiNOPOL.CRDBGrid1DblClick(Sender: TObject);
begin
  if (UniQuery1.Active) and (UniQuery1.RecordCount > 0) then
  begin
    eNoAwalAlokasi.Text := UniQuery1.Fields[0].AsString;
    eNoAkhirAlokasi.Text := UniQuery1.Fields[1].AsString;
    Panel1.Visible := False;
    dtTglAlokasi.SetFocus;
  end;
end;

procedure TfAlokasiNOPOL.cxButton5Click(Sender: TObject);
begin
  RefreshCbMerk;
  RefreshCbJenis;
  RefreshCbWarna;
  eNoRekom.Text := '';
  eNamaPemilikEntry.Text := '';
  eAlamatPemilikEntry.Text := '';
  eNoRangka.Text := '';
  eNoMesin.Text := '';
  cbMerkEntry.ItemIndex := -1;
  cbJenisEntry.ItemIndex := -1;
  cbWarnaEntry.ItemIndex := -1;
  eThnBuatEntry.Text := '';
  eSilinderEntry.Text := '';
  
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT (CASE WHEN STATUS = 0 THEN ''BELUM TERPAKAI'''+
                  '      WHEN STATUS = 1 THEN ''SUDAH TERPAKAI'''+
                  '      WHEN STATUS = 2 THEN ''DLM PROSES PESANAN ORANG/REKOM'' END) AS STATUS FROM T_NOPOL_BANK2 WHERE NOPOL=:NOPOL';
    Params[0].AsString := RemoveWhiteSpace(eNOPOL.Text);
    Open;
    if recordcount > 0 then
    begin
      lStatus.Caption := Fields[0].AsString;
      eNamaPemilikEntry.SetFocus;
    end
    else
    begin
      lStatus.Caption := 'NOPOL BLM TER-ALOKASIKAN';
      bAlokasi.Visible := True;
    end;
  end;
end;

procedure TfAlokasiNOPOL.cxButton7Click(Sender: TObject);
var
  i,vtemp : integer;
begin
  if eNamaPemilikEntry.Text <> '' then
  begin
    cxMemo1.Clear;
    for i := 0 to eNamaPemilikEntry.Lines.Count - 1 do
      cxMemo1.Lines.Add(eNamaPemilikEntry.Lines[i]);
    eNamaPemilikEntry.Clear;
    eNamaPemilikEntry.Text := cxMemo1.Text;
    if eAlamatPemilikEntry.Text <> '' then
    begin
      cxMemo1.Clear;
      for i := 0 to eAlamatPemilikEntry.Lines.Count - 1 do
        cxMemo1.Lines.Add(eAlamatPemilikEntry.Lines[i]);
      eAlamatPemilikEntry.Clear;
      eAlamatPemilikEntry.Text := cxMemo1.Text;
      if eNoRangka.Text <> '' then
      begin
        if eNoMesin.Text <> '' then
        begin
          if cbMerkEntry.Text <> '' then
          begin
            if cbJenisEntry.Text <> '' then
            begin
              if eThnBuatEntry.Text <> '' then
              begin
                if eSilinderEntry.Text <> '' then
                begin
                  if cbWarnaEntry.Text <> '' then
                  begin
                    if MessageDlg('Yakin data akan disimpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                    begin
                      with DM.Q do
                      begin
                        Close;
                        SQL.Text := 'UPDATE T_NOPOL_BANK2 SET NO_RANGKA=:NO_RANGKA,STATUS=''2'',REKOM=''1'',TGLREKOM=SYSDATE'+
                                    ' WHERE NOPOL=:NOPOL';
                        try
                          Params[0].AsString := eNoRangka.Text;
                          Params[1].AsString := RemoveWhiteSpace(eNOPOL.Text);
                          Execute;

                          Close;
                          SQL.Text := 'SELECT T_REKOM_ID_ASC.nextval FROM DUAL';
                          Open;
                          vtemp := Fields[0].AsInteger;

                          Close;
                          SQL.Text := 'INSERT INTO T_REKOM(NO_RANGKA,NO_MESIN,NAMA,ALAMAT,MERK_ID,JENIS_ID,TAHUN,CILINDER,WARNA_ID,TGLPENGAJUAN,NOMOR,REKOM_ID,NOPOL)'+
                                      ' VALUES(:NO_RANGKA,:NO_MESIN,:NAMA,:ALAMAT,:MERK_ID,:JENIS_ID,:TAHUN,:CILINDER,:WARNA_ID,SYSDATE,:NOMOR,:REKOM_ID,:NOPOL)';
                          try
                            Params[0].AsString := eNoRangka.Text;
                            Params[1].AsString := eNoMesin.Text;
                            Params[2].AsString := eNamaPemilikEntry.Text;
                            Params[3].AsString := eAlamatPemilikEntry.Text;
                            Params[4].AsInteger := cbMerkEntry.EditValue;
                            Params[5].AsInteger := cbJenisEntry.EditValue;
                            Params[6].AsString := eThnBuatEntry.Text;
                            Params[7].AsString := eSilinderEntry.Text;
                            Params[8].AsInteger := cbWarnaEntry.EditValue;
                            Params[9].AsString := 'B/ND-'+Format('%.4d',[vtemp])+'/'+IntToRoman(StrToInt(FormatDateTime('MM',TTglSrvSkr)))+'/'+FormatDateTime('YYYY',TTglSrvSkr);
                            Params[10].AsInteger := vtemp;
                            Params[11].AsString := eNOPOL.Text;
                            Execute;

                            QCetak.Close;
                            QCetak.SQL.Text := 'SELECT A.REKOM_ID,A.NO_RANGKA,A.NO_MESIN,A.NAMA,A.ALAMAT,A.MERK_ID,A.JENIS_ID,A.TAHUN,A.CILINDER,A.WARNA_ID,A.TGLPENGAJUAN,'+
                                               'B.MERK_NAMA,C.JENIS_NAMA,D.WARNA_NAMA,A.NOMOR,A.NOPOL'+
                                               ' FROM T_REKOM A'+
                                               ' INNER JOIN M_MERK B ON A.MERK_ID=B.MERK_ID'+
                                               ' INNER JOIN M_JENIS C ON A.JENIS_ID=C.JENIS_ID'+
                                               ' INNER JOIN M_WARNA D ON A.WARNA_ID=D.WARNA_ID'+
                                               ' WHERE A.REKOM_ID=:REKOM_ID';
                             try
                               QCetak.Params[0].AsInteger := vtemp;
                               QCetak.Open;

                               if QCetak.RecordCount > 0 then
                               begin
                                 eNoRekom.Text := QCetak.FieldByName('NOMOR').AsString;
                               end
                               else
                               begin
                                 eNoRekom.Text := '';
                                 MessageDlgError('Data yg akan dicetak tidak ada');
                               end;
                             except on E: Exception do
                             begin
                               ErrorProgDialog('Error, select t_rekom fro cetak. Ket error '+E.Message);
                             end;
                             end;
                          except on E: Exception do
                          begin
                            ErrorProgDialog('Error, insert t_rekom. Ket error '+E.Message);
                          end;
                          end;
                        except on E: Exception do
                        begin
                          ErrorProgDialog('Error, update t_nopol_bank2. Ket error '+E.Message);
                        end;
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    MessageDlgError('Data Warna Kendaraan harus dipilih');
                    cbWarnaEntry.SetFocus;
                  end;
                end
                else
                begin
                  MessageDlgError('Data Silinder harus diisi');
                  eSilinderEntry.SetFocus;
                end;
              end
              else
              begin
                MessageDlgError('Data Tahun kendaraan belum dipilih');
                eThnBuatEntry.SetFocus;
              end;
            end
            else
            begin
              MessageDlgError('Data Jenis Kendaraan harus dipilih');
              cbJenisEntry.SetFocus;
            end;
          end
          else
          begin
            MessageDlgError('Data Merk Kendaraan blm dipilih');
            cbMerkEntry.SetFocus;
          end;
        end
        else
        begin
          MessageDlgError('Data No Mesin belum diisi');
          eNoMesin.SetFocus;
        end;
      end
      else
      begin
        MessageDlgError('Data No Rangka belum diisi');
        eNoRangka.SetFocus;
      end;
    end
    else
    begin
      MessageDlgError('Data Alamat Pemilik belum diisi');
      eAlamatPemilikEntry.SetFocus;
    end;
  end
  else
  begin
    MessageDlgError('Data Nama Pemilik belum diisi');
    eNamaPemilikEntry.SetFocus;
  end;
end;

procedure TfAlokasiNOPOL.cxButton8Click(Sender: TObject);
begin
  with QTampil do
  begin
    Close;
    SQL.Text :=  'SELECT A.REKOM_ID,A.NO_RANGKA,A.NO_MESIN,A.NAMA,A.ALAMAT,A.MERK_ID,A.JENIS_ID,A.TAHUN,A.CILINDER,A.WARNA_ID,A.TGLPENGAJUAN,'+
                 'B.MERK_NAMA,C.JENIS_NAMA,D.WARNA_NAMA,A.NOMOR,A.NOPOL,'+
                 '(CASE WHEN STATUS = 0 THEN ''BELUM AKTIF'''+
                  '      WHEN STATUS = 1 THEN ''SUDAH AKTIF'''+
                  '      WHEN STATUS = 2 THEN ''MASA REKOM SUDAH HABIS'' END) AS STATUS'+
                 ' FROM T_REKOM A'+
                 ' INNER JOIN M_MERK B ON A.MERK_ID=B.MERK_ID'+
                 ' INNER JOIN M_JENIS C ON A.JENIS_ID=C.JENIS_ID'+
                 ' INNER JOIN M_WARNA D ON A.WARNA_ID=D.WARNA_ID'+
                 ' WHERE TO_CHAR(TGLPENGAJUAN,''YYYYMMDD'') BETWEEN :TGL1 AND :TGL2'+
                 ' ORDER BY A.REKOM_ID';
    try
      Params[0].AsString := FormatDateTime('yyyymmdd',cxDateEdit1.Date);
      Params[1].AsString := FormatDateTime('yyyymmdd',cxDateEdit2.Date);
      Open;

    except on E: Exception do
    begin
      ErrorProgDialog('Error, Select rekom detail. ket error '+e.Message);
    end;
    end;

  end;
end;

procedure TfAlokasiNOPOL.CETAKULANG1Click(Sender: TObject);
begin
  if (QTampil.Active) and (QTampil.RecordCount > 0) then
  begin
    QCetak.Close;
    QCetak.SQL.Text := 'SELECT A.REKOM_ID,A.NO_RANGKA,A.NO_MESIN,A.NAMA,A.ALAMAT,A.MERK_ID,A.JENIS_ID,A.TAHUN,A.CILINDER,A.WARNA_ID,A.TGLPENGAJUAN,'+
                       'B.MERK_NAMA,C.JENIS_NAMA,D.WARNA_NAMA,A.NOMOR,A.NOPOL'+
                       ' FROM T_REKOM A'+
                       ' INNER JOIN M_MERK B ON A.MERK_ID=B.MERK_ID'+
                       ' INNER JOIN M_JENIS C ON A.JENIS_ID=C.JENIS_ID'+
                       ' INNER JOIN M_WARNA D ON A.WARNA_ID=D.WARNA_ID'+
                       ' WHERE A.REKOM_ID=:REKOM_ID';
     try
       QCetak.Params[0].AsInteger := QTampil.Fields[0].AsInteger;
       QCetak.Open;

       if QCetak.RecordCount > 0 then
       begin
          frxReport_CB.LoadFromFile(RootPath+'\rekom.fr3');
          if TReport='1' then
          begin
            frxReport_CB.DesignReport();
          end
          else
          begin
            frxReport_CB.ShowReport();
          end;
       end
       else
       begin
         MessageDlgError('Data yg akan dicetak tidak ada');
       end;
     except on E: Exception do
     begin
       ErrorProgDialog('Error, select t_rekom fro cetak. Ket error '+E.Message);
     end;
     end;
  end;
end;

procedure TfAlokasiNOPOL.MenuItem3Click(Sender: TObject);
begin
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT COUNT(*) FROM T_HIST_NOPOLISI WHERE NO_POLISI=:NOPOL';
    Params[0].AsString := Q.Fields[5].AsString;
    Open;

    if Fields[0].AsInteger > 0 then
    begin
      MessageDlgInformation('Data tidak bisa dibatalkan, karena NO POLISI sudah Ter-Registrasi di Data Induk BPKB');
    end
    else
    begin
      if MessageDlg('Yakin data akan Di Batalkan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        Close;
        SQL.Text := 'UPDATE t_nopol_bank2 SET status = ''0'', no_bpkb = '''', no_rangka = '''', tglpakai = null WHERE nopol = :tNopol';
        Params[0].AsString := Q.Fields[4].AsString;
        Execute;
        MessageDlgInformation('Proses Berhasil');
        Button1.Click;
      end;
    end;
  end;
end;

procedure TfAlokasiNOPOL.cxButton9Click(Sender: TObject);
begin
  RefreshCbMerk;
  RefreshCbJenis;
  RefreshCbWarna;
  bAlokasi.Visible := False;
  eNoRekom.Text := '';
  eNamaPemilikEntry.Text := '';
  eAlamatPemilikEntry.Text := '';
  eNoRangka.Text := '';
  eNoMesin.Text := '';
  cbMerkEntry.ItemIndex := -1;
  cbJenisEntry.ItemIndex := -1;
  cbWarnaEntry.ItemIndex := -1;
  eThnBuatEntry.Text := '';
  eSilinderEntry.Text := '';
end;

procedure TfAlokasiNOPOL.Panel2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Panel2.Handle, wm_SysCommand,$f012,0);
end;

procedure TfAlokasiNOPOL.cxButton10Click(Sender: TObject);
begin
  Panel2.Visible := False;
end;

procedure TfAlokasiNOPOL.cbKDWILAlokasi2DropDown(Sender: TObject);
begin
  cbKDWILAlokasi2.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT KODE_WIL FROM T_NOPOL_KDWIL2 WHERE KODE_POLDA=:KODE_POLDA AND KODE_KAB=:KODE_KAB'+
                ' GROUP BY KODE_WIL';
    Params[0].AsString := TString(cbPoldaAlokasi2.Items.Objects[cbPoldaAlokasi2.ItemIndex]).Str;
    Params[1].AsString := TString(cbKabupatenAlokasi2.Items.Objects[cbKabupatenAlokasi2.ItemIndex]).Str;
    Open;

    if recordcount > 0 then
    begin
      while not eof do
      begin
        cbKDWILAlokasi2.Items.Add(Fields[0].AsString);
        next;
      end;
    end;
  end;
end;

procedure TfAlokasiNOPOL.cbKDSeriAlokasi2DropDown(Sender: TObject);
begin
  cbKDSeriAlokasi2.Clear;
  cbKDSeriAlokasi2.Items.Add('');
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT KODE_SERI FROM T_NOPOL_KDWIL2 WHERE KODE_POLDA=:KODE_POLDA AND KODE_KAB=:KODE_KAB AND KODE_WIL=:KODE_WIL'+
                ' GROUP BY KODE_SERI';
    Params[0].AsString := TString(cbPoldaAlokasi2.Items.Objects[cbPoldaAlokasi2.ItemIndex]).Str;
    Params[1].AsString := TString(cbKabupatenAlokasi2.Items.Objects[cbKabupatenAlokasi2.ItemIndex]).Str;
    Params[2].AsString := cbKDWILAlokasi2.Text;
    Open;

    if recordcount > 0 then
    begin
      while not eof do
      begin
        cbKDSeriAlokasi2.Items.Add(Fields[0].AsString);
        next;
      end;
    end;
  end;
end;

procedure TfAlokasiNOPOL.eNoAwalAlokasi2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not IsAngka(Key) then
     Key := CHR(0);
end;

procedure TfAlokasiNOPOL.cxButton11Click(Sender: TObject);
begin
  cxProgressBar1.Properties.Min := 0;
  cxProgressBar1.Properties.Max := StrToInt(eNoAwalAlokasi2.Text);
  cxProgressBar1.Position := 0;
  if MessageDlg('Yakin data akan disimpan untuk proses registrasi kendaraan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    DM.Q.SQL.Text := 'INSERT INTO T_NOPOL_BANK2(KD_WILAYAH,NOURUT,HSERI,NOPOL,NOPOL_P,'+
                     'WARNA_TNKB_ID,JENIS_ID,KABUPATEN,TGLINSERT,REKOM,STATUS,KODE_POLDA,KODE_KAB)'+
                     ' VALUES(:KD_WILAYAH,:NOURUT,:HSERI,:NOPOL,:NOPOL_P,'+
                     ':WARNA_TNKB_ID,:JENIS_ID,:KABUPATEN,SYSDATE,''0'',''0'',:KODE_POLDA,:KODE_KAB)';
    try
    with DM.Q do
    begin
      Close;
      Params[0].AsString := cbKDWILAlokasi2.Text;
      Params[1].AsString := eNoAwalAlokasi2.Text;
      Params[2].AsString := cbKDSeriAlokasi2.Text;
      Params[3].AsString := cbKDWILAlokasi2.Text+eNoAwalAlokasi2.Text+cbKDSeriAlokasi2.Text;
      Params[4].AsString := cbKDWILAlokasi2.Text+' '+eNoAwalAlokasi2.Text+' '+cbKDSeriAlokasi2.Text;
      Params[5].AsString := TString(cbWarnaTNKBAlokasi2.Items.Objects[cbWarnaTNKBAlokasi2.ItemIndex]).Str;
      Params[6].AsString := TString(cbJenisKendAlokasi2.Items.Objects[cbJenisKendAlokasi2.ItemIndex]).Str;
      Params[7].AsString := cbKabupatenAlokasi2.Text;
      Params[8].AsString := TString(cbPoldaAlokasi2.Items.Objects[cbPoldaAlokasi2.ItemIndex]).Str;
      Params[9].AsString := TString(cbKabupatenAlokasi2.Items.Objects[cbKabupatenAlokasi2.ItemIndex]).Str;
      Execute;
      cxProgressBar1.Position := 1;
      Application.ProcessMessages;
    end;
  except on E: Exception do
  begin
    ErrorProg('Error, Create Alokasi NOPOL : '+cbKDWILAlokasi2.Text+' '+eNoAwalAlokasi2.Text+' '+cbKDSeriAlokasi2.Text+', Ket error '+e.Message);
  end;
  end;
    MessageDlgInformation('Proses Selesai');
  end;
end;

procedure TfAlokasiNOPOL.bAlokasiClick(Sender: TObject);
begin
  Panel2.Left := 176;
  Panel2.Top := 126;
  Panel2.Visible := TRUE;
end;

procedure TfAlokasiNOPOL.bProsesPembatalanClick(Sender: TObject);
begin
  {cek apakah no rangka dan no bpkb sudah proses registrasi,
  jk sudah proses registrasi cek apakah nopol yg dipakai nopol ini?
  jika ya maka proses pembatalan alokasi nopol tidak bisa,
  jika belum maka proses alokasi nopol bisa dilakukan}
end;

end.
