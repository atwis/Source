unit uEmbosing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, cxControls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxCheckBox, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, MemDS, DBAccess, Uni, cxPC,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfEmbosing = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    cxButton1: TcxButton;
    Shape2: TShape;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    bCetak: TcxButton;
    dsuniSPTampil: TUniDataSource;
    uniSPTampil: TUniStoredProc;
    UniTable1: TUniTable;
    dsUniTable1: TUniDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView1Column18: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cbCetak: TcxCheckBox;
    Label50: TLabel;
    dtTglRegister: TcxDateEdit;
    cxButton2: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Q2: TUniQuery;
    Q2KELUARAHAN: TStringField;
    Q2KECAMATAN: TStringField;
    Q2KABUPATEN: TStringField;
    Q2PROPINSI: TStringField;
    Q2KD_POS: TStringField;
    dsQ2: TUniDataSource;
    Label2: TLabel;
    dt1: TcxDateEdit;
    dt2: TcxDateEdit;
    Label3: TLabel;
    Q: TUniQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    cxGridDBTableView2Column3: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEmbosing: TfEmbosing;

implementation

Uses
  uDM, uVariabel, uModul, uWait, uMain;
{$R *.dfm}

procedure TfEmbosing.cxButton1Click(Sender: TObject);
begin
  uniSPTampil.Close;
  uniSPTampil.StoredProcName := 'embosing_get';
  try
    uniSPTampil.Params.Clear;
    uniSPTampil.Params.CreateParam(ftstring,'v_tgl1',ptinput).AsString := FormatDateTime('yyyymmdd',dt1.Date);
    uniSPTampil.Params.CreateParam(ftString,'v_tgl2',ptInput).AsString := FormatDateTime('yyyymmdd',dt2.Date);
    uniSPTampil.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
    uniSPTampil.Open;

    if uniSPTampil.RecordCount > 0 then
    begin
      fWait.Hide;
      Application.ProcessMessages;
    end
    else
    begin
      fWait.Hide;
      Application.ProcessMessages;
      MessageDlg('DATA TIDAK DITEMUKAN',mtWarning,[mbOK],0);
    end;
  except on E:Exception do
  begin
    fWait.Hide;
    Application.ProcessMessages;
    ErrorProgDialog('Error,..embosing_get.Open%Error :'+E.Message);
  end;
  end;
end;

procedure TfEmbosing.FormShow(Sender: TObject);
begin
  dt1.Date := TTglSrvSkr;
  dt2.Date := TTglSrvSkr;
  uniSPTampil.Close;
  Q2.Close;
  UniTable1.Close;
end;

procedure TfEmbosing.cxGridDBTableView1DblClick(Sender: TObject);
begin
  fWait.Show;
  Application.ProcessMessages;
  if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
  begin
    with Q do
    begin
      Close;
      SQL.Text := 'DELETE FROM T_EMBOSING_BC_TEMP WHERE SNHDD=:SNHDD';
      Params[0].AsString := tSNHDD;
      Execute;


      Close;
      SQL.Text := 'INSERT INTO T_EMBOSING_BC_TEMP(ISCETAK,NOPOLISI,NORANGKA,NOMESIN,BLTH,SNHDD,JMLRODA,WARNATNKB)'+
                  ' select 0,hnopol.no_polisi,bm.no_rangka,bm.no_mesin,(to_char(bm.tgl_bpkb,''mm'')||'' ''||to_char(add_months(bm.tgl_bpkb,60),''yy''))  as blth,:VSNHDD,'+
                  ' bm.JML_RODA,WTNKB.WARNATNKB'+
                  ' from t_bpkb_master bm'+
                  ' inner join t_hist_nopolisi hnopol on BM.CURRENT_HISTID=HNOPOL.HIST_ID'+
                  ' inner join t_checkpoint cp on CP.BERKAS_ID=BM.BERKAS_ID'+
                  ' inner join m_warnatnkb wtnkb on WTNKB.WARNATNKB_ID=HNOPOL.WARNATNKB_ID'+
                  ' where HNOPOL.DUP_NP_COUNT=0 and CP.PRINT_BPKB_BY is not null and TO_CHAR (bm.TGL_BPKB, ''dd-mm-yyyy'') = :TGL1';
      try
        Params[0].AsString := tSNHDD;
        Params[1].AsString := uniSPTampil.FieldByName('tgl').AsString;
        Execute;

        UniTable1.Close;
        UniTable1.Open;

        fWait.Close;
        Application.ProcessMessages;
      except on E: Exception do
      begin
        fWait.Close;
        Application.ProcessMessages;
        ErrorProgDialog('Error...INSERT DATA EMBOSING '+E.Message);
      end;
      end;
    end;
  end
  else
  begin
    MessageDlg('DATA TIDAK ADA YG AKAN DITAMPILKAN',mtError,[mbOK],0);
  end;
end;

end.
