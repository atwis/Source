unit uJenisPerubahan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCheckBox, Menus, DBAccess, Uni, MemDS, StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxTextEdit;

type
  TfJenisPerubahan = class(TForm)
    lJudul: TLabel;
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
    cxGridLevel1: TcxGridLevel;
    bGetDataRegister: TcxButton;
    dsQDetail: TUniDataSource;
    Q3: TUniQuery;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    procedure bGetDataRegisterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fJenisPerubahan: TfJenisPerubahan;

implementation
Uses
  uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfJenisPerubahan.bGetDataRegisterClick(Sender: TObject);
begin
  with Q3 do
  begin
    Close;
    SQL.Text := 'SELECT NAMA_PRB,RBH_NAMA,RBH_ALAMAT,RBH_WARNA,RBH_NOPOL,RBH_MODEL,ENABLED,KD_AWAL,KD_AKHIR,RBH_MESIN,RBH_DASAR from M_PERUBAHAN order by NAMA_PRB';
    try
      Open;
      fWait.Hide;
      Application.ProcessMessages;
    except on E:Exception do
    begin
      fWait.Hide;
      Application.ProcessMessages;
      ErrorProgDialog('Error,..select m_perubahan%Error '+E.Message);
    end;
    end;
  end;
end;

end.
