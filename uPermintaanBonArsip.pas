unit uPermintaanBonArsip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ExtCtrls, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, DBAccess, Uni, MemDS, frxClass, frxDBSet, frxBarcode,
  frxDesgn;

type
  TfPermintaanBonArsip = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    dtTgl: TcxDateEdit;
    bTampilData: TcxButton;
    Shape2: TShape;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    uniSPTampil: TUniStoredProc;
    dsQDeatail: TUniDataSource;
    frxReport: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDBDataset1: TfrxDBDataset;
    procedure bTampilDataClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReportGetValue(const VarName: String; var Value: Variant);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    vIsBBN : sTRING; // jenis proses bbn
  public
    { Public declarations }
  end;

var
  fPermintaanBonArsip: TfPermintaanBonArsip;

implementation
Uses
  uDM, uVariabel, uModul, uWait, uCari;
{$R *.dfm}

procedure TfPermintaanBonArsip.bTampilDataClick(Sender: TObject);
begin
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'bpkb_get_bon_arsip';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
      Params.CreateParam(ftString,'v_tgl',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date); // bbn1
      Params.CreateParam(ftString,'vIS_BBN2',ptInput).AsString := vIsBBN; // GAMTI NAMA
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_get_bon_arsip%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfPermintaanBonArsip.FormShow(Sender: TObject);
begin
  //'1=GANTI NAMA; 2=MUTASI KELUAR; 3=EX LUAR DAERAH; 4=GANTI BUKU; 5=DUPLIKAT';
  vIsBBN := '1';
  dtTgl.Date := TTglSrvSkr;
  uniSPTampil.Close;
end;

procedure TfPermintaanBonArsip.frxReportGetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName = 'tgl_keluar' then
    Value := FormatDateTime('dd mmmm yyyy',dtTgl.Date);
  if VarName = 'tpt_keluar' then
    Value := TKota;
end;

procedure TfPermintaanBonArsip.cxButton1Click(Sender: TObject);
begin
  if uniSPTampil.RecordCount > 0 then
  begin
    frxDBDataset1.DataSet := uniSPTampil;
    frxReport.Clear;
    frxReport.LoadFromFile(RootPath+'\req_arsip_bn.fr3');
    if TReport='1' then
      frxReport.DesignReport()
    else
      frxReport.ShowReport();
  end
  else
  begin
    MessageDlgInformation('DATA TIDAK ADA YANG AKAN DICETAK');
  end;
end;

end.
