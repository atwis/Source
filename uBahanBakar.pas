unit uBahanBakar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, DB, DBAccess,
  Uni, MemDS, StdCtrls, cxTextEdit, Grids, DBGrids, CRGrid, ExtCtrls;

type
  TfBahanBakar = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    CRDBGrid1: TCRDBGrid;
    eNamaBB: TcxTextEdit;
    Button1: TButton;
    Button2: TButton;
    QTampil: TUniQuery;
    dsQTampil: TUniDataSource;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CRDBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    vl_ID : String;
  public
    { Public declarations }
  end;

var
  fBahanBakar: TfBahanBakar;

implementation
Uses
  uDM, uVariabel, uModul;
{$R *.dfm}

procedure TfBahanBakar.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  if (QTampil.RecordCount > 0) and (QTampil.Active) then
     CRDBGrid1.Columns.Items[1].Width := CRDBGrid1.Width - 100;
end;

procedure TfBahanBakar.Button2Click(Sender: TObject);
begin
  vl_ID := '';
  with QTampil do
  begin
    Close;
    SQL.Text := 'select bb_id,bb_nama from m_bahanbakar';
    Open;
  end;
  eNamaBB.Text := '';
  eNamaBB.SetFocus;
end;

procedure TfBahanBakar.FormShow(Sender: TObject);
begin
  eNamaBB.Text := '';
  eNamaBB.SetFocus;
  with QTampil do
  begin
    Close;
    SQL.Text := 'select bb_id,bb_nama from m_bahanbakar';
    Open;
  end;
end;

procedure TfBahanBakar.CRDBGrid1DblClick(Sender: TObject);
begin
  vl_ID := '';
  if (QTampil.Active) and (QTampil.RecordCount > 0) then
  begin
    vl_ID := QTampil.Fields[0].AsString;
    eNamaBB.Text := QTampil.Fields[1].AsString;
  end;
end;

procedure TfBahanBakar.Button1Click(Sender: TObject);
begin
  if eNamaBB.Text <> '' then
  begin
    if vl_ID <> '' then
    begin
      if MessageDlg('Yakin data Bahan Bakar akan di Rubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with DM.Q do
        begin
          Close;
          SQL.Text := 'update m_bahanbakar set bb_nama=:bb_nama where bb_id=:bb';
          try
            Params[0].AsString := eNamaBB.Text;
            Params[1].AsString := vl_ID;
            Execute;
            MessageDlg('Proses Perubahan data Bahan Bakar berhasil',mtInformation,[mbOK],0);
            Button2.Click;
          except on E: Exception do
          begin
            ErrorProgNoDialog('Error, Edit Data Bahan Bakar, Ket error '+E.Message);
          end
          end;
        end;
      end;
    end
    else
    begin
      if MessageDlg('Yakin data Bahan Bakar akan di Simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with DM.Q do
        begin
          Close;
          SQL.Text := 'insert into m_bahanbakar(bb_nama) values(:bb_nama)';
          try
            Params[0].AsString := eNamaBB.Text;
            Execute;
            MessageDlg('Proses Penyimpanan data Bahan Bakar berhasil',mtInformation,[mbOK],0);
            Button2.Click;
          except on E: Exception do
          begin
            ErrorProgNoDialog('Error, Insert Data Bahan Bakar, Ket error '+E.Message);
          end
          end;
        end;
      end;
    end;
  end;
end;

end.
