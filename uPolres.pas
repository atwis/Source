unit uPolres;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, DB, DBAccess, Uni, MemDS, cxTextEdit, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfPolres = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button3: TButton;
    Button4: TButton;
    eKodePolres: TcxTextEdit;
    eNamaPolres: TcxTextEdit;
    cbPolda: TComboBox;
    QPOLRES: TUniQuery;
    DSQPOLRES: TUniDataSource;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure cbPoldaDropDown(Sender: TObject);
    procedure cbPoldaChange(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vl_IDPolda : String;
  end;

type
  TString = class(TObject)
    private
      fStr: String;
    public
    constructor Create(const AStr: String) ;
    property Str: String read FStr write FStr;
end;

var
  fPolres: TfPolres;

implementation
Uses
  uDM, uVariabel, uModul;
{$R *.dfm}

{ TString }

constructor TString.Create(const AStr: String);
begin
  inherited Create;
  FStr := AStr;
end;

procedure TfPolres.cbPoldaDropDown(Sender: TObject);
begin
  cbPolda.Items.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select polda_id,polda_nama from m_polda order by polda_id';
    try
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          cbPolda.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
          Next;
        end;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error, Select m_polda. Ket error '+e.Message);
    end
    end;
  end;
end;

procedure TfPolres.cbPoldaChange(Sender: TObject);
begin
  with QPOLRES do
  begin
    Close;
    SQL.Text := 'select a.polres_id,a.polres_kode,a.polres_nama,a.polda_id from m_polres a'+
                ' where a.polda_id=:no'+
                ' order by a.polda_id,a.polres_kode';
    Params[0].AsString := TString(cbPolda.Items.Objects[cbPolda.ItemIndex]).Str;
    Open;
  end;
end;

procedure TfPolres.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  cxGridDBTableView1Column1.Width := 100;
  cxGridDBTableView1Column2.Width := cxGrid.Width - 150;
end;

procedure TfPolres.Button4Click(Sender: TObject);
begin
  vl_IDPolda := '';
  with QPOLRES do
  begin
    Close;
    SQL.Text := 'select a.polres_id,a.polres_kode,a.polres_nama,a.polda_id from m_polres a'+
                ' where a.polda_id=:no'+
                ' order by a.polda_id,a.polres_kode';
    Params[0].AsString := TString(cbPolda.Items.Objects[cbPolda.ItemIndex]).Str;
    Open;
  end;
  eKodePolres.Text := '';
  eNamaPolres.Text := '';
  eKodePolres.SetFocus;
end;

procedure TfPolres.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  vl_IDPolda := '';
  if (QPOLRES.Active) and (QPOLRES.RecordCount > 0) then
  begin
    vl_IDPolda := QPOLRES.Fields[0].AsString;
    eKodePolres.Text := QPOLRES.Fields[1].AsString;
    eNamaPolres.Text := QPOLRES.Fields[2].AsString;
  end;
end;

procedure TfPolres.Button3Click(Sender: TObject);
begin
  if eKodePolres.Text <> '' then
  begin
    if eNamaPolres.Text <> '' then
    begin
      if vl_IDPolda <> '' then
      begin
        if MessageDlg('Yakin data Polres akan di Rubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          with DM.Q do
          begin
            Close;
            SQL.Text := 'update m_polres set polres_nama=:nama,polres_kode=:polres_kode,polda_id=:polda where polres_id=:polres';
            try
              Params[0].AsString := eNamaPolres.Text;
              Params[1].AsString := eKodePolres.Text;
              Params[2].AsString := TString(cbPolda.Items.Objects[cbPolda.ItemIndex]).Str;
              Params[3].AsString := vl_IDPolda;
              Execute;
              MessageDlg('Proses Perubahan data Polres berhasil',mtInformation,[mbOK],0);
              Button4.Click;
            except on E: Exception do
            begin
              ErrorProgNoDialog('Error, Edit Data Polres, Ket error '+E.Message);
            end
            end;
          end;
        end;
      end
      else
      begin
        if MessageDlg('Yakin data Polres akan di Simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          with DM.Q do
          begin
            Close;
            SQL.Text := 'insert into m_polres(polres_nama,polres_kode,polda_id) values(:polres_nama,:polres_kode,:polda_id)';
            try
              Params[0].AsString := eNamaPolres.Text;
              Params[1].AsString := eKodePolres.Text;
              Params[2].AsString := TString(cbPolda.Items.Objects[cbPolda.ItemIndex]).Str;
              Execute;
              MessageDlg('Proses Penyimpanan data polres berhasil',mtInformation,[mbOK],0);
              Button4.Click;
            except on E: Exception do
            begin
              ErrorProgNoDialog('Error, Insert Data Polres, Ket error '+E.Message);
            end
            end;
          end;
        end;
      end;
    end
    else
    begin
      MessageDlg('Nama Polres Harus Diisi',mtError,[mbOK],0);
      eNamaPolres.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('Kode Polres Harus Diisi',mtError,[mbOK],0);
    eKodePolres.SetFocus;
  end;
end;

end.
