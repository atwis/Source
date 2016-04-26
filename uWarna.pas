unit uWarna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBAccess, Uni, MemDS, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, DBCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TfWarna = class(TForm)
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
  fWarna: TfWarna;

implementation
Uses
  uDM, uVariabel, uModul;
{$R *.dfm}

procedure TfWarna.FormShow(Sender: TObject);
begin
  with QWarna do
  begin
    Close;
    SQL.Text := 'select * from m_warna order by warna_id';
    Open;
  end;
end;

procedure TfWarna.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  cxGridDBTableView1Column2.Width := cxGrid.Width - 50;
end;

end.
