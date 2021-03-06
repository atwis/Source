unit uWarnaTNKB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, DBCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  DBAccess, Uni, MemDS;

type
  TfWarnaTNKB = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    QWarna: TUniQuery;
    dsQWarna: TUniDataSource;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column2: TcxGridDBColumn;
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
  fWarnaTNKB: TfWarnaTNKB;

implementation
Uses
  uDM, uVariabel, uModul;
{$R *.dfm}

procedure TfWarnaTNKB.FormShow(Sender: TObject);
begin
  with QWarna do
  begin
    Close;
    SQL.Text := 'select * from m_warnatnkb order by warnatnkb_id';
    Open;
  end;
end;

procedure TfWarnaTNKB.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  cxGridDBTableView1Column2.Width := cxGrid.Width - 50;
end;

end.
