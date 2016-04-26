unit uCaraImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, DB, DBAccess,
  Uni, MemDS, StdCtrls, cxTextEdit, Grids, DBGrids, CRGrid, ExtCtrls;

type
  TfCaraImport = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    CRDBGrid1: TCRDBGrid;
    eNama: TcxTextEdit;
    Button1: TButton;
    Button2: TButton;
    QTampil: TUniQuery;
    dsQTampil: TUniDataSource;
    Label3: TLabel;
    eKet: TcxTextEdit;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure CRDBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vl_ID : String;
  public
    { Public declarations }
  end;

var
  fCaraImport: TfCaraImport;

implementation
Uses
  uDM, uVariabel, uModul;
{$R *.dfm}

procedure TfCaraImport.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  if (QTampil.RecordCount > 0) and (QTampil.Active) then
     CRDBGrid1.Columns.Items[2].Width := CRDBGrid1.Width - 200;
end;

procedure TfCaraImport.Button2Click(Sender: TObject);
begin
  vl_ID := '';
  with QTampil do
  begin
    Close;
    SQL.Text := 'select impmthd_id,impmthd_name,impmthd_description from m_cara_impor';
    Open;
  end;
  eNama.Text := '';
  eKet.Text := '';
  eNama.SetFocus;
end;

procedure TfCaraImport.CRDBGrid1DblClick(Sender: TObject);
begin
  vl_ID := '';
  if (QTampil.Active) and (QTampil.RecordCount > 0) then
  begin
    vl_ID := QTampil.Fields[0].AsString;
    eNama.Text := QTampil.Fields[1].AsString;
    eKet.Text := QTampil.Fields[2].AsString;
  end;
end;

procedure TfCaraImport.Button1Click(Sender: TObject);
begin
  if eNama.Text <> '' then
  begin
    if vl_ID <> '' then
    begin
      if MessageDlg('Yakin data Cara Import akan di Rubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with DM.Q do
        begin
          Close;
          SQL.Text := 'update m_cara_impor set impmthd_name=:bb_nama,impmthd_description=:impmthd_description where impmthd_id=:impmthd_id';
          try
            Params[0].AsString := eNama.Text;
            Params[1].AsString := eKet.Text;
            Params[2].AsString := vl_ID;
            Execute;
            MessageDlg('Proses Perubahan data Cara Import berhasil',mtInformation,[mbOK],0);
            Button2.Click;
          except on E: Exception do
          begin
            ErrorProgNoDialog('Error, Edit Data Cara Import, Ket error '+E.Message);
          end
          end;
        end;
      end;
    end
    else
    begin
      if MessageDlg('Yakin data Cara Import akan di Simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with DM.Q do
        begin
          Close;
          SQL.Text := 'insert into m_cara_impor(impmthd_name,impmthd_description) values(:impmthd_name,:impmthd_description)';
          try
            Params[0].AsString := eNama.Text;
            Params[1].AsString := eKet.Text;
            Execute;
            MessageDlg('Proses Penyimpanan data Cara Import berhasil',mtInformation,[mbOK],0);
            Button2.Click;
          except on E: Exception do
          begin
            ErrorProgNoDialog('Error, Insert Data Cara Import, Ket error '+E.Message);
          end
          end;
        end;
      end;
    end;
  end;
end;

procedure TfCaraImport.FormShow(Sender: TObject);
begin
  eNama.Text := '';
  eKet.Text := '';
  eNama.SetFocus;
  with QTampil do
  begin
    Close;
    SQL.Text := 'select impmthd_id,impmthd_name,impmthd_description from m_cara_impor';
    Open;
  end;
end;

end.
