unit uHistoryBlokir2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, DBAccess, Uni, MemDS, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TfHistoryBlokir2 = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label50: TLabel;
    dtTgl1: TcxDateEdit;
    Label2: TLabel;
    dtTgl2: TcxDateEdit;
    Shape2: TShape;
    bCari: TcxButton;
    uniSPTampil: TUniStoredProc;
    dsuniSPTampil: TUniDataSource;
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
    cxGridLevel1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure bCariClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fHistoryBlokir2: TfHistoryBlokir2;

implementation
uses
   uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfHistoryBlokir2.FormShow(Sender: TObject);
begin
  dtTgl1.Date := TTglSrvSkr;
  dtTgl2.Date := TTglSrvSkr;
  uniSPTampil.Close;
end;

procedure TfHistoryBlokir2.bCariClick(Sender: TObject);
begin
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'BPKB_GET_DETAIL_BLOKIR';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_tgl1',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl1.Date);
      Params.CreateParam(ftString,'v_tgl2',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl2.Date);
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..BPKB_GET_DETAIL_BLOKIR%Error '+E.Message);
    end;
    end;
  end;
end;

end.
