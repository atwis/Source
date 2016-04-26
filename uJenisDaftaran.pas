unit uJenisDaftaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, DB, DBAccess,
  Uni, MemDS, StdCtrls, cxTextEdit, Grids, DBGrids, CRGrid, ExtCtrls;

type
  TfJenisDaftaran = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    CRDBGrid1: TCRDBGrid;
    eNama: TcxTextEdit;
    Button1: TButton;
    Button2: TButton;
    QTampil: TUniQuery;
    dsQTampil: TUniDataSource;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CRDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    vl_ID : String;
  public
    { Public declarations }
  end;

var
  fJenisDaftaran: TfJenisDaftaran;

implementation
Uses
  uDM, uVariabel, uModul;

{$R *.dfm}

procedure TfJenisDaftaran.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
if (QTampil.RecordCount > 0) and (QTampil.Active) then
     CRDBGrid1.Columns.Items[1].Width := CRDBGrid1.Width - 100;
end;

procedure TfJenisDaftaran.FormShow(Sender: TObject);
begin
  eNama.Text := '';
  eNama.SetFocus;
  with QTampil do
  begin
    Close;
    SQL.Text := 'select jd_id,jd_nama from m_jenis_daftaran order by jd_id';
    Open;
  end;
end;

procedure TfJenisDaftaran.Button2Click(Sender: TObject);
begin
  vl_ID := '';
  with QTampil do
  begin
    Close;
    SQL.Text := 'select jd_id,jd_nama from m_jenis_daftaran order by jd_id';
    Open;
  end;
  eNama.Text := '';
  eNama.SetFocus;
end;

procedure TfJenisDaftaran.Button1Click(Sender: TObject);
begin
  if eNama.Text <> '' then
  begin
    if vl_ID <> '' then
    begin
      if MessageDlg('Yakin data Jenis Daftaran akan di Rubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with DM.Q do
        begin
          Close;
          SQL.Text := 'update m_jenis_daftaran set jd_nama=:jd_nama where jd_id=:jd';
          try
            Params[0].AsString := eNama.Text;
            Params[1].AsString := vl_ID;
            Execute;
            MessageDlg('Proses Perubahan data Jenis Daftaran berhasil',mtInformation,[mbOK],0);
            Button2.Click;
          except on E: Exception do
          begin
            ErrorProgNoDialog('Error, Edit Data Jenis Daftaran, Ket error '+E.Message);
          end
          end;
        end;
      end;
    end
    else
    begin
      if MessageDlg('Yakin data Jenis Daftaran akan di Simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with DM.Q do
        begin
          Close;
          SQL.Text := 'insert into m_jenis_daftaran(jd_nama) values(:jd_nama)';
          try
            Params[0].AsString := eNama.Text;
            Execute;
            MessageDlg('Proses Penyimpanan data Jenis Daftaran berhasil',mtInformation,[mbOK],0);
            Button2.Click;
          except on E: Exception do
          begin
            ErrorProgNoDialog('Error, Insert Data Jenis Daftaran, Ket error '+E.Message);
          end
          end;
        end;
      end;
    end;
  end;
end;

procedure TfJenisDaftaran.CRDBGrid1DblClick(Sender: TObject);
begin
  vl_ID := '';
  if (QTampil.Active) and (QTampil.RecordCount > 0) then
  begin
    vl_ID := QTampil.Fields[0].AsString;
    eNama.Text := QTampil.Fields[1].AsString;
  end;
end;

end.
