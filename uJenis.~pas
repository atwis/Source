unit uJenis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, DB, DBAccess,
  Uni, MemDS, StdCtrls, cxTextEdit, Grids, DBGrids, CRGrid, ExtCtrls;

type
  TfJenis = class(TForm)
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
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CRDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    vl_ID : String;
  public
    { Public declarations }
  end;

var
  fJenis: TfJenis;

implementation
Uses
  uDM, uVariabel, uModul;
{$R *.dfm}

procedure TfJenis.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
if (QTampil.RecordCount > 0) and (QTampil.Active) then
     CRDBGrid1.Columns.Items[1].Width := CRDBGrid1.Width - 100;
end;

procedure TfJenis.Button2Click(Sender: TObject);
begin
  vl_ID := '';
  with QTampil do
  begin
    Close;
    SQL.Text := 'select * from m_jenis order by jenis_id';
    Open;
  end;
  eNama.Text := '';
  eNama.SetFocus;
end;

procedure TfJenis.FormShow(Sender: TObject);
begin
  eNama.Text := '';
  eNama.SetFocus;
  with QTampil do
  begin
    Close;
    SQL.Text := 'select * from m_jenis order by jenis_id';
    Open;
  end;
end;

procedure TfJenis.Button1Click(Sender: TObject);
begin
  if eNama.Text <> '' then
  begin
    if vl_ID <> '' then
    begin
      if MessageDlg('Yakin data jenis akan di Rubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with DM.Q do
        begin
          Close;
          SQL.Text := 'update m_jenis set jenis_nama=:jenis_nama where jenis_id=:jenis';
          try
            Params[0].AsString := eNama.Text;
            Params[1].AsString := vl_ID;
            Execute;
            MessageDlg('Proses Perubahan data Jenis berhasil',mtInformation,[mbOK],0);
            Button2.Click;
          except on E: Exception do
          begin
            ErrorProgNoDialog('Error, Edit Data Jenis, Ket error '+E.Message);
          end
          end;
        end;
      end;
    end
    else
    begin
      if MessageDlg('Yakin data Jenis akan di Simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with DM.Q do
        begin
          Close;
          SQL.Text := 'insert into m_jenis(jenis_nama) values(:jenis_nama)';
          try
            Params[0].AsString := eNama.Text;
            Execute;
            MessageDlg('Proses Penyimpanan data Jenis berhasil',mtInformation,[mbOK],0);
            Button2.Click;
          except on E: Exception do
          begin
            ErrorProgNoDialog('Error, Insert Data Jenis, Ket error '+E.Message);
          end
          end;
        end;
      end;
    end;
  end;
end;

procedure TfJenis.CRDBGrid1DblClick(Sender: TObject);
begin
  vl_ID := '';
  if (QTampil.Active) and (QTampil.RecordCount > 0) then
  begin
    vl_ID := QTampil.Fields[0].AsString;
    eNama.Text := QTampil.Fields[1].AsString;
  end;
end;

end.
