unit uPenyerahanBPKBGB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, frxClass, frxDesgn, frxBarcode,
  frxDBSet, DBAccess, Uni, MemDS, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxSplitter, cxMemo, cxTextEdit, StdCtrls,
  cxButtons, ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TfPenyerahanGB = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label3: TLabel;
    Panel1: TPanel;
    pAwal: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    bSimpanSerah: TcxButton;
    eNoBPKBSerah: TcxTextEdit;
    eTglBPKBSerah: TcxTextEdit;
    eNoPolisiSerah: TcxTextEdit;
    eMerkSerah: TcxTextEdit;
    eTipeSerah: TcxTextEdit;
    eJenisSerah: TcxTextEdit;
    eModelSerah: TcxTextEdit;
    eNamaPemilikSerah: TcxTextEdit;
    ePemohonSerah: TcxTextEdit;
    eCatatanSerah: TcxMemo;
    cxSplitter1: TcxSplitter;
    pPilih: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    cxButton1: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dtTglPenyerahan: TcxDateEdit;
    cbPemohonPenyerahan: TcxDBLookupComboBox;
    cxButton8: TcxButton;
    bGetDataKI: TcxButton;
    bGetDataBPKB: TcxButton;
    eCariNoBPKBSerah: TcxTextEdit;
    Q: TUniQuery;
    no: TIntegerField;
    Qbpkb_id: TIntegerField;
    Qberkas_id: TIntegerField;
    Qno_bpkb: TStringField;
    Qnreg_bpkb: TStringField;
    Qtgl_bpkb: TDateField;
    Qnama_pemilik: TStringField;
    Qalamat_pemilik: TStringField;
    Qno_identitas: TStringField;
    Qno_polisi: TStringField;
    Qmerk: TStringField;
    Qtipe: TStringField;
    Qjenis: TStringField;
    Qmodel: TStringField;
    Qno_rangka: TStringField;
    Qno_mesin: TStringField;
    Qno_faktur: TStringField;
    Qtgl_faktur: TDateField;
    Qpemohon_id: TIntegerField;
    Qpemohon_nama: TStringField;
    Qcatatan: TStringField;
    Qtgl_serah: TDateField;
    dsQ: TUniDataSource;
    UniQuery1: TUniQuery;
    UniQuery2: TUniQuery;
    UniDataSource2: TUniDataSource;
    UniDataSource1: TUniDataSource;
    QReport: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDesigner1: TfrxDesigner;
    frxReport: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPenyerahanGB: TfPenyerahanGB;

implementation

{$R *.dfm}

end.
