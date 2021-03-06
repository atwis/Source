unit uAPM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Grids, DBGrids, CRGrid, DB,
  DBAccess, Uni, MemDS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit;

type
  TFAPM = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    CRDBGrid1: TCRDBGrid;
    Label2: TLabel;
    eNamaAPM: TcxTextEdit;
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
  FAPM: TFAPM;

implementation
Uses
  uDM, uVariabel, uModul;
{$R *.dfm}

procedure TFAPM.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  if (QTampil.RecordCount > 0) and (QTampil.Active) then
     CRDBGrid1.Columns.Items[1].Width := CRDBGrid1.Width - 100;
end;

procedure TFAPM.Button2Click(Sender: TObject);
begin
  vl_ID := '';
  with QTampil do
  begin
    Close;
    SQL.Text := 'select * from m_atpm order by atpm_id';
    Open;
  end;
  eNamaAPM.Text := '';
  eNamaAPM.SetFocus;
end;

procedure TFAPM.FormShow(Sender: TObject);
begin
  eNamaAPM.Text := '';
  eNamaAPM.SetFocus;
  with QTampil do
  begin
    Close;
    SQL.Text := 'select * from m_atpm order by atpm_id';
    Open;
  end;
end;

procedure TFAPM.Button1Click(Sender: TObject);
begin
  if eNamaAPM.Text <> '' then
  begin
    if vl_ID <> '' then
    begin
      if MessageDlg('Yakin data APM akan di Rubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with DM.Q do
        begin
          Close;
          SQL.Text := 'update m_atpm set atpm_nama=:atpm_nama where atpm_id=:atpm';
          try
            Params[0].AsString := eNamaAPM.Text;
            Params[1].AsString := vl_ID;
            Execute;
            MessageDlg('Proses Perubahan data APM berhasil',mtInformation,[mbOK],0);
            Button2.Click;
          except on E: Exception do
          begin
            ErrorProgNoDialog('Error, Edit Data ATPM, Ket error '+E.Message);
          end
          end;
        end;
      end;
    end
    else
    begin
      if MessageDlg('Yakin data APM akan di Simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with DM.Q do
        begin
          Close;
          SQL.Text := 'insert into m_atpm(atpm_nama) values(:atpm_nama)';
          try
            Params[0].AsString := eNamaAPM.Text;
            Execute;
            MessageDlg('Proses Penyimpanan data APM berhasil',mtInformation,[mbOK],0);
            Button2.Click;
          except on E: Exception do
          begin
            ErrorProgNoDialog('Error, Insert Data ATPM, Ket error '+E.Message);
          end
          end;
        end;
      end;
    end;
  end;
end;

procedure TFAPM.CRDBGrid1DblClick(Sender: TObject);
begin
  vl_ID := '';
  if (QTampil.Active) and (QTampil.RecordCount > 0) then
  begin
    vl_ID := QTampil.Fields[0].AsString;
    eNamaAPM.Text := QTampil.Fields[1].AsString;
  end;
end;

end.
