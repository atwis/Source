unit uInputMaterialBPKB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxControls, cxLookAndFeels, Uni, DBAccess, MemDS,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, DB,
  dxSkinscxPCPainter, cxPC, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Menus, cxButtons, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TfInputMatBPKB = class(TForm)
    lJudul: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label28: TLabel;
    Label5: TLabel;
    Label26: TLabel;
    dtTglInput: TcxDateEdit;
    eKet: TcxMemo;
    eNoSPPM: TcxTextEdit;
    Label1: TLabel;
    eSeriBPKB: TcxTextEdit;
    Label2: TLabel;
    eNoAwalBPKB: TcxTextEdit;
    Label3: TLabel;
    eNoAkhirBPKB: TcxTextEdit;
    Label4: TLabel;
    eJMLBuku: TcxTextEdit;
    bBaru: TcxButton;
    bSimpan: TcxButton;
    Label6: TLabel;
    eKDWilBPKB: TcxTextEdit;
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
    cxGridLevel1: TcxGridLevel;
    Label50: TLabel;
    dttglAwal: TcxDateEdit;
    dttglAkhir: TcxDateEdit;
    Label7: TLabel;
    bGetDataRegister: TcxButton;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    QMaster: TUniQuery;
    dsQMaster: TUniDataSource;
    QDetail: TUniQuery;
    dsQDetail: TUniDataSource;
    procedure bBaruClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSimpanClick(Sender: TObject);
    procedure eNoAwalBPKBKeyPress(Sender: TObject; var Key: Char);
    procedure eNoAkhirBPKBKeyPress(Sender: TObject; var Key: Char);
    procedure eNoAkhirBPKBPropertiesChange(Sender: TObject);
    procedure bGetDataRegisterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInputMatBPKB: TfInputMatBPKB;

implementation
Uses
  uDM, uVariabel, uModul, uWait, uMain;
  
{$R *.dfm}

procedure TfInputMatBPKB.bBaruClick(Sender: TObject);
begin
  eNoSPPM.Text := '';
  dtTglInput.Text := '';
  eSeriBPKB.Text := '';
  eNoAwalBPKB.Text := '0';
  eNoAkhirBPKB.Text := '0';
  eJMLBuku.Text := '0';
  eKDWilBPKB.Text := '';
  eKet.Text := '';
  eNoSPPM.SetFocus;
end;

procedure TfInputMatBPKB.FormShow(Sender: TObject);
begin
  bBaru.Click;
end;

procedure TfInputMatBPKB.bSimpanClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
  if MessageDlg('Yakin Material bpkb Akan Disimpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      uniSP := TUniStoredProc.Create(Application);
      uniSP.Connection := DM.dbSrv;
      uniSP.Close;
      uniSP.StoredProcName := 'PG_SIMRANMOR_MATERIAL.insert_material_bpkb';
      try
        uniSP.Params.Clear;
        uniSP.Params.CreateParam(ftString,'vnospmm',ptInput).AsString := eNoSPPM.Text;
        uniSP.Params.CreateParam(ftstring,'vtgl',ptinput).AsDate := dtTglInput.Date;
        uniSP.Params.CreateParam(ftString,'vket',ptInput).AsString := eKet.Text;
        uniSP.Params.CreateParam(ftString,'vseribpkb',ptInput).AsString := eSeriBPKB.Text;
        uniSP.Params.CreateParam(ftString,'vnoawal',ptInput).AsString := eNoAwalBPKB.Text;
        uniSP.Params.CreateParam(ftString,'vnoakhir',ptInput).AsString := eNoAkhirBPKB.Text;
        uniSP.Params.CreateParam(ftString,'vjumlah',ptInput).AsFloat :=  BuangTitik(eJMLBuku.Text);
        uniSP.Params.CreateParam(ftString,'v_kd_wil_bpkb',ptInput).AsString := eKDWilBPKB.Text;
        uniSP.Params.CreateParam(ftString,'vusr_ins',ptInput).AsString := vIDPetugas;
        uniSP.Params.CreateParam(ftString,'vkdpolda',ptInput).AsString := vPOLDAID;
        uniSP.Params.CreateParam(ftString,'vkdpolres',ptInput).AsString := vPOLRESID;
        uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
        uniSP.ExecProc;
        MessageDlg('PROSES BERHASIL DISIMPAN, DENGAN KODE : '+uniSP.Params.ParamValues['RESULT'],mtInformation,[mbOK],0);
        bBaru.Click;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..PG_SIMRANMOR_MATERIAL.insert_material.ExecProc Ket Error :'+E.Message);
      end;
      end;
    finally
      FreeAndNil(uniSP);
    end;
  end;
end;

procedure TfInputMatBPKB.eNoAwalBPKBKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Not IsAngka(Key) then
     Key := CHR(0);
end;

procedure TfInputMatBPKB.eNoAkhirBPKBKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Not IsAngka(Key) then
     Key := CHR(0);
end;

procedure TfInputMatBPKB.eNoAkhirBPKBPropertiesChange(Sender: TObject);
begin
  eJMLBuku.Text := FormatKeUang(BuangTitik(eNoAkhirBPKB.Text)-BuangTitik(eNoAwalBPKB.Text));
end;

procedure TfInputMatBPKB.bGetDataRegisterClick(Sender: TObject);
begin
  with QMaster do
  begin
    Close;
    SQL.Text := 'select * from T_MATERIAL_BPKB_H where TO_CHAR (tgl, ''yyyymmdd'') BETWEEN :TGL_AWAL and :tgl_akhir';
    Params[0].AsString := FormatDateTime('yyyymmdd',dttglAwal.Date);
    Params[1].AsString := FormatDateTime('yyyymmdd',dttglAkhir.Date);
    Open;
    if recordcount > 0 then
    begin
      QDetail.Close;
      QDetail.SQL.Text := 'select a.kode,a.no_bpkb from T_MATERIAL_BPKB_D a'+
                          ' left join t_bpkb_master b on a.no_bpkb=b.no_bpkb';
      QDetail.Open;
    end;
  end;
end;

end.
