unit uPeruntukan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, Uni, MemDS, ExtCtrls, StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, DBCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TfPeruntukan = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    QPeruntukan: TUniQuery;
    dsQPeruntukan: TUniDataSource;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPeruntukan: TfPeruntukan;

implementation
Uses
  uDM, uVariabel, uModul;
{$R *.dfm}

procedure TfPeruntukan.FormShow(Sender: TObject);
begin
  with QPeruntukan do
  begin
    Close;
    SQL.Text := 'select * from m_peruntukan order by prt_id';
    Open;
  end;
end;

procedure TfPeruntukan.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  //CRDBGrid1.Columns.Items[1].Width := CRDBGrid1.Width - 380;
  cxGridDBTableView1Column1.Width := cxGrid.Width - 50;
end;

end.
