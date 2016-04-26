unit uStatusPenerbitanBPKB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, StdCtrls,
  ExtCtrls, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar, Menus, cxButtons,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  DBAccess, Uni, MemDS, cxCheckBox;

type
  TfStatusPenerbitanBPKB = class(TForm)
    Label15: TLabel;
    dtTgl: TcxDateEdit;
    Label16: TLabel;
    rbPribadi: TRadioButton;
    rbBJ: TRadioButton;
    Label17: TLabel;
    cbPemohon: TcxDBLookupComboBox;
    Shape1: TShape;
    lJudul: TLabel;
    cbBBN1: TCheckBox;
    Shape2: TShape;
    bCari: TcxButton;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    uniSPTampil: TUniStoredProc;
    dsQDeatail: TUniDataSource;
    QPemohon1: TUniQuery;
    QPemohon2: TUniQuery;
    dsQPemohon2: TUniDataSource;
    dsQPemohon1: TUniDataSource;
    procedure FormShow(Sender: TObject);
    procedure bCariClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TampilAwal;
    procedure RefreshCbPemohon;
  end;

var
  fStatusPenerbitanBPKB: TfStatusPenerbitanBPKB;

implementation
Uses
  uDM, uVariabel, uModul, uWait;
{$R *.dfm}

{ TfStatusPenerbitanBPKB }

procedure TfStatusPenerbitanBPKB.TampilAwal;
begin
  dtTgl.Date := TTglSrvSkr;
  rbPribadi.Checked := False;
  rbBJ.Checked := False;
  RefreshCbPemohon;
  cbPemohon.Text := '';
  cbBBN1.Checked := True;
end;

procedure TfStatusPenerbitanBPKB.FormShow(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfStatusPenerbitanBPKB.RefreshCbPemohon;
begin
  QPemohon1.Close;
  QPemohon1.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  {if rbPribadi.Checked then
     QPemohon1.Params[0].AsString := 'PRIBADI'
  else if rbBJ.Checked then
     QPemohon1.Params[0].AsString := 'BIROJASA';}
  QPemohon1.Open;

  QPemohon2.Close;
  QPemohon2.SQL.Text := 'select to_char(pemohon_id) as kode,pemohon_nama as nama from m_pemohon order by nama';
  {if rbPribadi.Checked then
     QPemohon2.Params[0].AsString := 'PRIBADI'
  else if rbBJ.Checked then
     QPemohon2.Params[0].AsString := 'BIROJASA';}
  QPemohon2.Open;
end;

procedure TfStatusPenerbitanBPKB.bCariClick(Sender: TObject);
begin
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'bpkb_status_penerbitan';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tgl',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;

      fWait.Hide;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_status_penerbitan%Error '+E.Message);
    end;
    end;
  end;
end;

end.
