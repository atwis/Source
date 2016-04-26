unit uMasterPerubahan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  DBCtrls, cxCheckBox, DBAccess, Uni, MemDS;

type
  TfMasterPerubahan = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
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
    cxGridLevel1: TcxGridLevel;
    DBNavigator1: TDBNavigator;
    QPerubahan: TUniQuery;
    dsQPerubahan: TUniDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMasterPerubahan: TfMasterPerubahan;

implementation
Uses
  uDM, uVariabel, uModul;
{$R *.dfm}

procedure TfMasterPerubahan.FormShow(Sender: TObject);
begin
  with QPerubahan do
  begin
    Close;
    SQL.Text := 'select * from m_perubahan order by prb_id';
    Open;
  end;
end;

end.
