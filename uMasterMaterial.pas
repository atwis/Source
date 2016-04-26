unit uMasterMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, CRGrid, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxMaskEdit, cxDropDownEdit,
  cxTextEdit, Menus, cxButtons, DBCtrls, DB, DBAccess, Uni, MemDS;

type
  TfMasterMaterial = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label26: TLabel;
    Label28: TLabel;
    Label5: TLabel;
    CRDBGrid1: TCRDBGrid;
    bBaru: TcxButton;
    bSimpan: TcxButton;
    cxButton17: TcxButton;
    cbSatuan: TComboBox;
    eKode: TEdit;
    eNama: TEdit;
    pInputKDMaster: TPanel;
    Shape2: TShape;
    Label8: TLabel;
    Button1: TButton;
    CRDBGrid2: TCRDBGrid;
    DBNavigator1: TDBNavigator;
    DSQ: TUniDataSource;
    Q: TUniQuery;
    QTampil: TUniQuery;
    dsQTampil: TUniDataSource;
    procedure cbSatuanDropDown(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure pInputKDMasterMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure bBaruClick(Sender: TObject);
    procedure bSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
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
  fMasterMaterial: TfMasterMaterial;

implementation
uses
   uDM, uModul, uVariabel, uWait;
{$R *.dfm}

{ TString }

constructor TString.Create(const AStr: String);
begin
  inherited Create;
  FStr := AStr;
end;

procedure TfMasterMaterial.cbSatuanDropDown(Sender: TObject);
begin
  cbSatuan.Items.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select kode,nama from m_satuan order by kode';
    Open;

    if DM.Q.RecordCount > 0 then
    begin
      while not eof do
      begin
        cbSatuan.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
      Next;
      end;
    end;
  end;
end;

procedure TfMasterMaterial.cxButton17Click(Sender: TObject);
begin
  pInputKDMaster.Left := 91;
  pInputKDMaster.Top := 128;
  with Q do
  begin
    Close;
    SQL.Text := 'select kode,nama from m_satuan order by kode';
    Open;
  end;
  pInputKDMaster.Visible := True;
end;

procedure TfMasterMaterial.pInputKDMasterMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pInputKDMaster.Handle, wm_SysCommand,$f012,0);
end;

procedure TfMasterMaterial.Button1Click(Sender: TObject);
begin
  pInputKDMaster.Visible := False;
end;

procedure TfMasterMaterial.bBaruClick(Sender: TObject);
begin
  eKode.Text := '';
  eNama.Text := '';
  cbSatuan.Text := '';
  with QTampil do
  begin
    Close;
    SQL.Text := 'select a.kode,a.nama,b.nama as satuan from m_material a'+
                ' inner join m_satuan b on a.satuan=b.kode'+
                ' order by a.kode';
    Open;
  end;
  eKode.SetFocus;
end;

procedure TfMasterMaterial.bSimpanClick(Sender: TObject);
begin
  if MessageDlg('Yakin data akan disimpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    with DM.Q do
    begin
      Close;
      SQL.Text := 'insert into m_material(kode,nama,satuan) values (:kode,:nama,:satuan)';
      Params[0].AsString := eKode.Text;
      Params[1].AsString := eNama.Text;
      Params[2].AsString := TString(cbSatuan.Items.Objects[cbSatuan.ItemIndex]).Str;
      Execute;

      MessageDlg('Penyimpanan data berhasil',mtInformation,[mbOK],0);

      with QTampil do
      begin
        Close;
        SQL.Text := 'select a.kode,a.nama,b.nama as satuan from m_material a'+
                    ' inner join m_satuan b on a.satuan=b.kode'+
                    ' order by a.kode';
        Open;
      end;
    end;
  end;
end;

procedure TfMasterMaterial.FormShow(Sender: TObject);
begin
  eKode.Text := '';
  eNama.Text := '';
  cbSatuan.Text := '';
  with QTampil do
  begin
    Close;
    SQL.Text := 'select a.kode,a.nama,b.nama as satuan from m_material a'+
                ' inner join m_satuan b on a.satuan=b.kode'+
                ' order by a.kode';
    Open;
  end;
end;

end.
