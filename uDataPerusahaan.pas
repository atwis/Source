unit uDataPerusahaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, ExtCtrls, StdCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxBlobEdit,
  Menus, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, DBAccess, Uni,
  MemDS, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfDataPerusahaan = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    eNama: TcxTextEdit;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    bBaru: TcxButton;
    bSimpan: TcxButton;
    bHapus: TcxButton;
    bCetak: TcxButton;
    PopupMenu1: TPopupMenu;
    EditData1: TMenuItem;
    ledit: TLabel;
    QDetail: TUniQuery;
    dsQDeatail: TUniDataSource;
    procedure bBaruClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bSimpanClick(Sender: TObject);
    procedure EditData1Click(Sender: TObject);
    procedure bHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TampilAwal;
    procedure RefreshData;
  end;

var
  fDataPerusahaan: TfDataPerusahaan;

implementation
uses
  uDM, uModul, uVariabel;
{$R *.dfm}

procedure TfDataPerusahaan.RefreshData;
begin
  with QDetail do
  begin
    Close;
    SQL.Text := 'select company_id,company_nama from m_company order by company_nama';
    Open;
  end;
end;

procedure TfDataPerusahaan.TampilAwal;
begin
  eNama.Text := '';
  ledit.Caption := '';
  RefreshData;
  eNama.SetFocus;
end;

procedure TfDataPerusahaan.bBaruClick(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfDataPerusahaan.FormShow(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfDataPerusahaan.bSimpanClick(Sender: TObject);
begin
  if MessageDlg('Yakin data nama perusahaan akan disimpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    with DM.Q do
    begin
      if ledit.Caption = '' then
      begin
        Close;
        SQL.Text := 'insert into m_company(company_nama) values(:company_nama)';
        try
          ParamByName('company_nama').AsString := eNama.Text;
          Execute;
          MessageDlg('Data berhasil disimpan',mtInformation,[mbok],0);
          RefreshData;
        except on E:Exception do
        begin
          ErrorProgDialog('Error,..insert m_company. ket error '+E.Message);
        end;
        end;
      end
      else
      begin
        Close;
        SQL.Text := 'update m_company set company_nama=:company_nama where compay_id=:compay_id';
        try
          ParamByName('company_nama').AsString := eNama.Text;
          ParamByName('company_id').AsString := ledit.Caption;
          Execute;
          MessageDlg('Data berhasil dirubah',mtInformation,[mbok],0);
          RefreshData;
        except on E:Exception do
        begin
          ErrorProgDialog('Error,..update m_company. ket error '+E.Message);
        end;
        end;
      end;
    end;
  end;
end;

procedure TfDataPerusahaan.EditData1Click(Sender: TObject);
begin
  if (QDetail.Active) and (QDetail.RecordCount > 0) then
  begin
    ledit.Caption := QDetail.FieldByName('company_id').AsString;
    eNama.Text := QDetail.FieldByName('company_nama').AsString;
    eNama.SetFocus;
  end;
end;

procedure TfDataPerusahaan.bHapusClick(Sender: TObject);
begin
  if MessageDlg('Yakin data akan dihapus',mtWarning,[mbYes,mbNo],0)=mrYes then
  begin
    with DM.Q do
    begin
      Close;
      SQL.Text := 'delete from m_company where company_id=:company_id';
      Params[0].AsString := ledit.Caption;
      Execute;
      RefreshData;
    end;
  end;
end;

end.
