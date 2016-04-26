unit uModel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, Grids, DBGrids, CRGrid, DB, DBAccess,
  Uni, MemDS;

type
  TfModel = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    eModelNama: TcxTextEdit;
    Label3: TLabel;
    cbJenis: TComboBox;
    QModel: TUniQuery;
    dsQModel: TUniDataSource;
    Button1: TButton;
    Button2: TButton;
    CRDBGrid1: TCRDBGrid;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure cbJenisDropDown(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CRDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vl_modelid : String;
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
  fModel: TfModel;

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

procedure TfModel.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  CRDBGrid1.Columns.Items[0].Width := 330;
  CRDBGrid1.Columns.Items[1].Width := CRDBGrid1.Width - 380;
end;

procedure TfModel.cbJenisDropDown(Sender: TObject);
begin
  cbJenis.Items.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select jenis_id,jenis_nama from m_jenis order by jenis_id';
    try
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          cbJenis.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
          Next;
        end;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error, Select m_jenis. Ket error '+e.Message);
    end
    end;
  end;
end;

procedure TfModel.FormShow(Sender: TObject);
begin
  with QModel do
  begin
    Close;
    SQL.Text := 'select a.model_id,a.model_nama,a.jenis_id,b.jenis_nama from m_model a'+
                ' inner join m_jenis b on a.jenis_id=b.jenis_id'+
                ' order by a.model_id';
    Open;
  end;
  eModelNama.Text := '';
  cbJenis.Text := '';
  eModelNama.SetFocus;
end;

procedure TfModel.Button2Click(Sender: TObject);
begin
  vl_modelid := '';
  eModelNama.Text := '';
  cbJenis.Text := '';
  with QModel do
  begin
    Close;
    SQL.Text := 'select a.model_id,a.model_nama,a.jenis_id,b.jenis_nama from m_model a'+
                ' inner join m_jenis b on a.jenis_id=b.jenis_id'+
                ' order by a.model_id';
    Open;
  end;
  eModelNama.SetFocus;
end;

procedure TfModel.Button1Click(Sender: TObject);
begin
  if eModelNama.Text <> '' then
  begin
    if (cbJenis.Text = '') then
    begin
      MessageDlg('Jenis harus dipilih',mtError,[mbOK],0);
    end
    else
    begin
      if vl_modelid <> '' then
      begin
        if MessageDlg('Yakin data model akan dirubah',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          with DM.Q do
          begin
            Close;
            SQL.Text := 'update m_model set model_nama=:model_nama,jenis_id=:jenis_id where model_id=:model';
            try
              Params[0].AsString := eModelNama.Text;
              Params[1].AsString := TString(cbJenis.Items.Objects[cbJenis.ItemIndex]).Str;
              Params[2].AsString := vl_modelid;
              Execute;
              Button2.Click;
            except on E: Exception do
            begin
              ErrorProgNoDialog('Error, Insert Data Model, Ket error '+E.Message);
            end
            end;
          end;
        end;
      end
      else
      begin
        if MessageDlg('Yakin data Model akan ditambahkan',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          with DM.Q do
          begin
            Close;
            SQL.Text := 'insert into m_model(model_nama,jenis_id) values(:model_nama,:jenis_id)';
            try
              Params[0].AsString := eModelNama.Text;
              Params[1].AsString := TString(cbJenis.Items.Objects[cbJenis.ItemIndex]).Str;
              Execute;
              Button2.Click;
            except on E: Exception do
            begin
              ErrorProgNoDialog('Error, Insert Data Model, Ket error '+E.Message);
            end
            end;
          end;
        end;
      end;
    end;
  end
  else
  begin
    MessageDlg('Nama Model Harus diisi',mtError,[mbOK],0);
    eModelNama.SetFocus;
  end;
end;

procedure TfModel.CRDBGrid1DblClick(Sender: TObject);
begin
  vl_modelid := '';
  if (QModel.Active) and (QModel.RecordCount > 0) then
  begin
    vl_modelid := QModel.Fields[0].AsString;
    eModelNama.Text := QModel.Fields[1].AsString;
    cbJenis.Text := QModel.Fields[3].AsString;
  end;
end;

end.
