unit uKelurahan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPC, cxContainer, cxEdit, Grids, DBGrids, CRGrid,
  cxTextEdit, DB, DBAccess, Uni, MemDS;

type
  TfKelurahan = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    Label2: TLabel;
    eKodeProp: TcxTextEdit;
    Button1: TButton;
    Button2: TButton;
    CRDBGrid1: TCRDBGrid;
    Label3: TLabel;
    eNamaProp: TcxTextEdit;
    Label4: TLabel;
    Button3: TButton;
    Button4: TButton;
    CRDBGrid2: TCRDBGrid;
    Label5: TLabel;
    eKodeKab: TcxTextEdit;
    Label6: TLabel;
    eNamaKab: TcxTextEdit;
    cbProp_kab: TComboBox;
    Label7: TLabel;
    Button5: TButton;
    Button6: TButton;
    CRDBGrid3: TCRDBGrid;
    Label8: TLabel;
    Label9: TLabel;
    eKDKec: TcxTextEdit;
    cbProp_kec: TComboBox;
    Label10: TLabel;
    eNamaKec: TcxTextEdit;
    cbKab_kec: TComboBox;
    Label11: TLabel;
    Button7: TButton;
    Button8: TButton;
    CRDBGrid4: TCRDBGrid;
    Label12: TLabel;
    Label13: TLabel;
    eKDKel: TcxTextEdit;
    cbProp_Kel: TComboBox;
    Label14: TLabel;
    eNamaKel: TcxTextEdit;
    cbKab_Kel: TComboBox;
    Label15: TLabel;
    cbKec_Kel: TComboBox;
    QProp: TUniQuery;
    dsQProp: TUniDataSource;
    QKab: TUniQuery;
    dsQKab: TUniDataSource;
    QKec: TUniQuery;
    dsQKec: TUniDataSource;
    QKel: TUniQuery;
    dsQKel: TUniDataSource;
    cxTabSheet5: TcxTabSheet;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    eKodeSamsat: TcxTextEdit;
    eKodeUPTD: TcxTextEdit;
    eNamaUPTD: TcxTextEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    cb_prop_samsat: TComboBox;
    cb_kab_samsat: TComboBox;
    cb_kec_samsat: TComboBox;
    Button9: TButton;
    Button10: TButton;
    CRDBGrid5: TCRDBGrid;
    Label23: TLabel;
    Label24: TLabel;
    cb_polda_samsat: TComboBox;
    cb_polres_samsat: TComboBox;
    eNamaSamsat: TcxTextEdit;
    Label25: TLabel;
    Label26: TLabel;
    dsSamsat: TUniDataSource;
    QSamsat: TUniQuery;
    Label19: TLabel;
    eAlamatSamsat: TcxTextEdit;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CRDBGrid1DblClick(Sender: TObject);
    procedure cbProp_kabDropDown(Sender: TObject);
    procedure cxPageControl1Click(Sender: TObject);
    procedure cbProp_kabChange(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CRDBGrid2DblClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure cbProp_kecDropDown(Sender: TObject);
    procedure cbKab_kecDropDown(Sender: TObject);
    procedure cbKab_kecChange(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure CRDBGrid3DblClick(Sender: TObject);
    procedure cbProp_KelDropDown(Sender: TObject);
    procedure cbKab_KelDropDown(Sender: TObject);
    procedure cbKec_KelDropDown(Sender: TObject);
    procedure cbKec_KelChange(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CRDBGrid4DblClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure cb_prop_samsatDropDown(Sender: TObject);
    procedure cb_kab_samsatDropDown(Sender: TObject);
    procedure cb_kec_samsatDropDown(Sender: TObject);
    procedure cb_polda_samsatDropDown(Sender: TObject);
    procedure cb_polres_samsatDropDown(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
    vl_IDProp,vl_IDKab,vl_IDKec,vl_IDKel,vl_IDSamsat : String;
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
  fKelurahan: TfKelurahan;

implementation
Uses
  uDM, uVariabel, uModul;

{$R *.dfm}

procedure TfKelurahan.Button2Click(Sender: TObject);
begin
  vl_IDProp := '';
  with QProp do
  begin
    Close;
    SQL.Text := 'select no_prop,nama_prop from m_propinsi order by no_prop';
    Open;
  end;
  eKodeProp.Text := '';
  eNamaProp.Text := '';
  eKodeProp.SetFocus;
end;

procedure TfKelurahan.FormCreate(Sender: TObject);
begin
  vl_IDProp := '';
  vl_IDKab := '';
  vl_IDKec := '';
  vl_IDKel := '';
  cbProp_kab.Text := '';
  cbProp_kec.Text := '';
  cbKab_kec.Text := '';
  cbProp_Kel.Text := '';
  cbKab_Kel.Text := '';
  cbKec_Kel.Text := '';
  cxPageControl1.ActivePageIndex := 0;
  if (QProp.RecordCount > 0) and (QProp.Active) then
     CRDBGrid1.Columns.Items[1].Width := CRDBGrid1.Width - 100;
end;

procedure TfKelurahan.FormShow(Sender: TObject);
begin
  cbProp_kab.Text := '';
  cbProp_kec.Text := '';
  cbKab_kec.Text := '';
  cbProp_Kel.Text := '';
  cbKab_Kel.Text := '';
  cbKec_Kel.Text := '';
  vl_IDProp := '';
  vl_IDKab := '';
  vl_IDKec := '';
  vl_IDKel := '';
  if cxPageControl1.ActivePageIndex=0 then
  begin
    with QProp do
    begin
      Close;
      SQL.Text := 'select no_prop,nama_prop from m_propinsi order by no_prop';
      Open;
    end;
    eKodeProp.Text := '';
    eNamaProp.Text := '';
    eKodeProp.SetFocus;
  end;
end;

procedure TfKelurahan.Button1Click(Sender: TObject);
begin
  if eKodeProp.Text <> '' then
  begin
    if eNamaProp.Text <> '' then
    begin
      if vl_IDProp <> '' then
      begin
        if MessageDlg('Yakin data Propinsi akan di Rubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          with DM.Q do
          begin
            Close;
            SQL.Text := 'update m_propinsi set nama_prop=:nama where no_prop=:no';
            try
              Params[0].AsString := eNamaProp.Text;
              Params[1].AsString := vl_IDProp;
              Execute;
              MessageDlg('Proses Perubahan data Propinsi berhasil',mtInformation,[mbOK],0);
              Button2.Click;
            except on E: Exception do
            begin
              ErrorProgNoDialog('Error, Edit Data Propinsi, Ket error '+E.Message);
            end
            end;
          end;
        end;
      end
      else
      begin
        if MessageDlg('Yakin data Propinsi akan di Simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          with DM.Q do
          begin
            Close;
            SQL.Text := 'insert into m_propinsi(no_prop,nama_prop) values(:no_prop,:nama_prop)';
            try
              Params[0].AsString := eKodeProp.Text;
              Params[1].AsString := eNamaProp.Text;
              Execute;
              MessageDlg('Proses Penyimpanan data Propinsi berhasil',mtInformation,[mbOK],0);
              Button2.Click;
            except on E: Exception do
            begin
              ErrorProgNoDialog('Error, Insert Data Propinsi, Ket error '+E.Message);
            end
            end;
          end;
        end;
      end;
    end
    else
    begin
      MessageDlg('Nama Propinsi Harus Diisi',mtError,[mbOK],0);
      eNamaProp.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('Kode Propinsi Harus Diisi',mtError,[mbOK],0);
    eKodeProp.SetFocus;
  end;
end;

procedure TfKelurahan.CRDBGrid1DblClick(Sender: TObject);
begin
  vl_IDProp := '';
  if (QProp.Active) and (QProp.RecordCount > 0) then
  begin
    vl_IDProp := QProp.Fields[0].AsString;
    eKodeProp.Text := QProp.Fields[0].AsString;
    eNamaProp.Text := QProp.Fields[1].AsString;
  end;
end;

{ TString }

constructor TString.Create(const AStr: String);
begin
  inherited Create;
  FStr := AStr;
end;

procedure TfKelurahan.cbProp_kabDropDown(Sender: TObject);
begin
  cbProp_kab.Items.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select no_prop,nama_prop from m_propinsi order by no_prop';
    try
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          cbProp_kab.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
          Next;
        end;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error, Select m_propinsi. Ket error '+e.Message);
    end
    end;
  end;
end;

procedure TfKelurahan.cxPageControl1Click(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex=0 then
  begin
    with QProp do
    begin
      Close;
      SQL.Text := 'select no_prop,nama_prop from m_propinsi order by no_prop';
      Open;
    end;
    eKodeProp.Text := '';
    eNamaProp.Text := '';
    eKodeProp.SetFocus;
  end
  else if cxPageControl1.ActivePageIndex=1 then
  begin
    cbProp_kab.Text := '';
    eKodeKab.Text := '';
    eNamaKab.Text := '';
    cbProp_kab.SetFocus;
  end
  else if cxPageControl1.ActivePageIndex=2 then
  begin
    cbProp_kec.Text := '';
    cbKab_kec.Text := '';
    eKDKec.Text := '';
    eNamaKec.Text := '';
    cbProp_kec.SetFocus;
  end
  else if cxPageControl1.ActivePageIndex=3 then
  begin
    cbProp_Kel.Text := '';
    cbKab_Kel.Text := '';
    cbKec_Kel.Text := '';
    eKDKel.Text := '';
    eNamaKel.Text := '';
    cbProp_Kel.SetFocus;
  end
  else if cxPageControl1.ActivePageIndex=4 then
  begin
    eKodeSamsat.Text := '';
    eNamaSamsat.Text := '';
    eAlamatSamsat.Text := '';
    eKodeUPTD.Text := '';
    eNamaUPTD.Text := '';
    cb_prop_samsat.Text := '';
    cb_kab_samsat.Text := '';
    cb_kec_samsat.Text := '';
    cb_polda_samsat.Text := '';
    cb_polres_samsat.Text := '';
    eKodeSamsat.SetFocus;
  end;
end;

procedure TfKelurahan.cbProp_kabChange(Sender: TObject);
begin
  with QKab do
  begin
    Close;
    SQL.Text := 'select a.no_prop,a.no_kab,a.nama_kab from m_kabupaten a'+
                ' where a.no_prop=:no'+
                ' order by a.no_prop,a.no_kab';
    Params[0].AsString := TString(cbProp_kab.Items.Objects[cbProp_kab.ItemIndex]).Str;
    Open;
  end;
end;

procedure TfKelurahan.Button4Click(Sender: TObject);
begin
  vl_IDProp := '';
  vl_IDKab := '';
  with QKab do
  begin
    Close;
    SQL.Text := 'select no_kab,nama_kab from m_kabupaten where no_prop=:no order by no_kab';
    Params[0].AsString := TString(cbProp_kab.Items.Objects[cbProp_kab.ItemIndex]).Str;
    Open;
  end;
  eKodeKab.Text := '';
  eNamaKab.Text := '';
  eKodeKab.SetFocus;
end;

procedure TfKelurahan.Button3Click(Sender: TObject);
begin
  if eKodeKab.Text <> '' then
  begin
    if eNamaKab.Text <> '' then
    begin
      if vl_IDKab <> '' then
      begin
        if MessageDlg('Yakin data kabupaten akan di Rubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          with DM.Q do
          begin
            Close;
            SQL.Text := 'update m_kabupaten set nama_kab=:nama where no_prop=:no and no_kab=:no_kab';
            try
              Params[0].AsString := eNamaKab.Text;
              Params[1].AsString := TString(cbProp_kab.Items.Objects[cbProp_kab.ItemIndex]).Str;
              Params[2].AsString := vl_IDKab;
              Execute;
              MessageDlg('Proses Perubahan data kabupaten berhasil',mtInformation,[mbOK],0);
              Button4.Click;
            except on E: Exception do
            begin
              ErrorProgNoDialog('Error, Edit Data kabupaten, Ket error '+E.Message);
            end
            end;
          end;
        end;
      end
      else
      begin
        if MessageDlg('Yakin data kabupaten akan di Simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          with DM.Q do
          begin
            Close;
            SQL.Text := 'insert into m_kabupaten(no_prop,no_kab,nama_kab) values(:no_prop,:no_kab,:nama_kab)';
            try
              Params[0].AsString := TString(cbProp_kab.Items.Objects[cbProp_kab.ItemIndex]).Str;
              Params[1].AsString := eKodeKab.Text;
              Params[2].AsString := eNamaKab.Text;
              Execute;
              MessageDlg('Proses Penyimpanan data kabupaten berhasil',mtInformation,[mbOK],0);
              Button4.Click;
            except on E: Exception do
            begin
              ErrorProgNoDialog('Error, Insert Data kabupaten, Ket error '+E.Message);
            end
            end;
          end;
        end;
      end;
    end
    else
    begin
      MessageDlg('Nama Kabupaten Harus Diisi',mtError,[mbOK],0);
      eNamaKab.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('Kode Kabupaten Harus Diisi',mtError,[mbOK],0);
    eKodeKab.SetFocus;
  end;
end;

procedure TfKelurahan.CRDBGrid2DblClick(Sender: TObject);
begin
  vl_IDProp := '';
  vl_IDKab := '';
  if (QKab.Active) and (QKab.RecordCount > 0) then
  begin
    vl_IDProp := QKab.Fields[0].AsString;
    vl_IDKab := QKab.Fields[1].AsString;
    eKodeKab.Text := QKab.Fields[1].AsString;
    eNamaKab.Text := QKab.Fields[2].AsString;
  end;
end;

procedure TfKelurahan.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  CRDBGrid1.Columns.Items[0].Width := CRDBGrid1.Width - 50;
  CRDBGrid2.Columns.Items[0].Width := CRDBGrid2.Width - 50;
  CRDBGrid3.Columns.Items[0].Width := CRDBGrid3.Width - 50;
  CRDBGrid4.Columns.Items[0].Width := CRDBGrid4.Width - 50;
  CRDBGrid5.Columns.Items[0].Width := Round((CRDBGrid5.Width - 50) / 2);
  CRDBGrid5.Columns.Items[1].Width := Round((CRDBGrid5.Width - 50) / 2);
end;

procedure TfKelurahan.cbProp_kecDropDown(Sender: TObject);
begin
  cbProp_kec.Items.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select no_prop,nama_prop from m_propinsi order by no_prop';
    try
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          cbProp_kec.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
          Next;
        end;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error, Select m_propinsi kec. Ket error '+e.Message);
    end
    end;
  end;
end;

procedure TfKelurahan.cbKab_kecDropDown(Sender: TObject);
begin
  cbKab_kec.Items.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select no_kab,nama_kab from m_kabupaten where no_prop=:no_prop order by no_kab';
    try
      Params[0].AsString := TString(cbProp_kec.Items.Objects[cbProp_kec.ItemIndex]).Str;
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          cbKab_kec.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
          Next;
        end;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error, Select m_propinsi kec. Ket error '+e.Message);
    end
    end;
  end;
end;

procedure TfKelurahan.cbKab_kecChange(Sender: TObject);
begin
  with QKec do
  begin
    Close;
    SQL.Text := 'select a.no_prop,a.no_kab,a.no_kec,a.nama_kec from m_kecamatan a'+
                ' where a.no_prop=:no_prop and a.no_kab=:no_kab'+
                ' order by a.no_prop,a.no_kab,a.no_kec';
    Params[0].AsString := TString(cbProp_kec.Items.Objects[cbProp_kec.ItemIndex]).Str;
    Params[1].AsString := TString(cbKab_kec.Items.Objects[cbKab_kec.ItemIndex]).Str;
    Open;
  end;
end;

procedure TfKelurahan.Button6Click(Sender: TObject);
begin
  vl_IDProp := '';
  vl_IDKab := '';
  vl_IDKec := '';
  with QKec do
  begin
    Close;
    SQL.Text := 'select a.no_prop,a.no_kab,a.no_kec,a.nama_kec from m_kecamatan a'+
                ' where a.no_prop=:no_prop and a.no_kab=:no_kab'+
                ' order by a.no_prop,a.no_kab,a.no_kec';
    Params[0].AsString := TString(cbProp_kec.Items.Objects[cbProp_kec.ItemIndex]).Str;
    Params[1].AsString := TString(cbKab_kec.Items.Objects[cbKab_kec.ItemIndex]).Str;
    Open;
  end;
  eKDKec.Text := '';
  eNamaKec.Text := '';
  eKDKec.SetFocus;
end;

procedure TfKelurahan.Button5Click(Sender: TObject);
begin
  if eKDKec.Text <> '' then
  begin
    if eNamaKec.Text <> '' then
    begin
      if vl_IDKec <> '' then
      begin
        if MessageDlg('Yakin data Kecamatan akan di Rubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          with DM.Q do
          begin
            Close;
            SQL.Text := 'update m_kecamatan set nama_kec=:nama where no_prop=:no and no_kab=:no_kab and no_kec=:no_kec';
            try
              Params[0].AsString := eNamaKec.Text;
              Params[1].AsString := TString(cbProp_kec.Items.Objects[cbProp_kec.ItemIndex]).Str;
              Params[2].AsString := TString(cbKab_kec.Items.Objects[cbKab_kec.ItemIndex]).Str;
              Params[3].AsString := vl_IDKec;
              Execute;
              MessageDlg('Proses Perubahan data kecamatan berhasil',mtInformation,[mbOK],0);
              Button6.Click;
            except on E: Exception do
            begin
              ErrorProgNoDialog('Error, Edit Data kecamatan, Ket error '+E.Message);
            end
            end;
          end;
        end;
      end
      else
      begin
        if MessageDlg('Yakin data kecamatan akan di Simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          with DM.Q do
          begin
            Close;
            SQL.Text := 'insert into m_kecamatan(no_prop,no_kab,no_kec,nama_kec) values(:no_prop,:no_kab,:no_kec,:nama_kec)';
            try
              Params[0].AsString := TString(cbProp_kec.Items.Objects[cbProp_kec.ItemIndex]).Str;
              Params[1].AsString := TString(cbKab_kec.Items.Objects[cbKab_kec.ItemIndex]).Str;
              Params[2].AsString := eKDKec.Text;
              Params[3].AsString := eNamaKec.Text;
              Execute;
              MessageDlg('Proses Penyimpanan data kecamatan berhasil',mtInformation,[mbOK],0);
              Button6.Click;
            except on E: Exception do
            begin
              ErrorProgNoDialog('Error, Insert Data kabupaten, Ket error '+E.Message);
            end
            end;
          end;
        end;
      end;
    end
    else
    begin
      MessageDlg('Nama kecamatan Harus Diisi',mtError,[mbOK],0);
      eNamaKec.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('Kode Kecamatan Harus Diisi',mtError,[mbOK],0);
    eKDKec.SetFocus;
  end;
end;

procedure TfKelurahan.CRDBGrid3DblClick(Sender: TObject);
begin
  vl_IDProp := '';
  vl_IDKab := '';
  vl_IDKec := '';
  if (QKec.Active) and (QKec.RecordCount > 0) then
  begin
    vl_IDProp := QKec.Fields[0].AsString;
    vl_IDKab := QKec.Fields[1].AsString;
    vl_IDKec := QKec.Fields[2].AsString;
    eKDKec.Text := QKec.Fields[2].AsString;
    eNamaKec.Text := QKec.Fields[3].AsString;
  end;
end;

procedure TfKelurahan.cbProp_KelDropDown(Sender: TObject);
begin
  cbProp_Kel.Items.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select no_prop,nama_prop from m_propinsi order by no_prop';
    try
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          cbProp_Kel.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
          Next;
        end;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error, Select m_propinsi kec. Ket error '+e.Message);
    end
    end;
  end;
end;

procedure TfKelurahan.cbKab_KelDropDown(Sender: TObject);
begin
  cbKab_Kel.Items.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select no_kab,nama_kab from m_kabupaten where no_prop=:no_prop order by no_kab';
    try
      Params[0].AsString := TString(cbProp_Kel.Items.Objects[cbProp_Kel.ItemIndex]).Str;
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          cbKab_Kel.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
          Next;
        end;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error, Select m_propinsi kel. Ket error '+e.Message);
    end
    end;
  end;
end;

procedure TfKelurahan.cbKec_KelDropDown(Sender: TObject);
begin
  cbKec_Kel.Items.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select no_kec,nama_kec from m_kecamatan where no_prop=:no_prop and no_kab=:noKab order by no_kec';
    try
      Params[0].AsString := TString(cbProp_Kel.Items.Objects[cbProp_Kel.ItemIndex]).Str;
      Params[1].AsString := TString(cbKab_Kel.Items.Objects[cbKab_Kel.ItemIndex]).Str;
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          cbKec_Kel.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
          Next;
        end;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error, Select m_propinsi kec. Ket error '+e.Message);
    end
    end;
  end;
end;

procedure TfKelurahan.cbKec_KelChange(Sender: TObject);
begin
  with QKel do
  begin
    Close;
    SQL.Text := 'select a.no_prop,a.no_kab,a.no_kec,a.no_kel,a.nama_kel from m_kelurahan a'+
                ' where a.no_prop=:no_prop and a.no_kab=:no_kab and a.no_kec=:nokec'+
                ' order by a.no_prop,a.no_kab,a.no_kec,a.no_kel';
    Params[0].AsString := TString(cbProp_Kel.Items.Objects[cbProp_Kel.ItemIndex]).Str;
    Params[1].AsString := TString(cbKab_Kel.Items.Objects[cbKab_Kel.ItemIndex]).Str;
    Params[2].AsString := TString(cbKec_Kel.Items.Objects[cbKec_Kel.ItemIndex]).Str;
    Open;
  end;
end;

procedure TfKelurahan.Button8Click(Sender: TObject);
begin
  vl_IDProp := '';
  vl_IDKab := '';
  vl_IDKec := '';
  vl_IDKel := '';
  with QKel do
  begin
    Close;
    SQL.Text := 'select a.no_prop,a.no_kab,a.no_kec,a.no_kel,a.nama_kel from m_kelurahan a'+
                ' where a.no_prop=:no_prop and a.no_kab=:no_kab and a.no_kec=:nokec'+
                ' order by a.no_prop,a.no_kab,a.no_kec,a.no_kel';
    Params[0].AsString := TString(cbProp_Kel.Items.Objects[cbProp_Kel.ItemIndex]).Str;
    Params[1].AsString := TString(cbKab_Kel.Items.Objects[cbKab_Kel.ItemIndex]).Str;
    Params[2].AsString := TString(cbKec_Kel.Items.Objects[cbKec_Kel.ItemIndex]).Str;
    Open;
  end;
  eKDKel.Text := '';
  eNamaKel.Text := '';
  eKDKel.SetFocus;
end;

procedure TfKelurahan.Button7Click(Sender: TObject);
begin
  if eKDKel.Text <> '' then
  begin
    if eNamaKel.Text <> '' then
    begin
      if vl_IDKel <> '' then
      begin
        if MessageDlg('Yakin data Kelurahan akan di Rubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          with DM.Q do
          begin
            Close;
            SQL.Text := 'update m_kelurahan set nama_kel=:nama where no_prop=:no and no_kab=:no_kab and no_kec=:no_kec and no_kel=:no_kel';
            try
              Params[0].AsString := eNamaKel.Text;
              Params[1].AsString := TString(cbProp_Kel.Items.Objects[cbProp_Kel.ItemIndex]).Str;
              Params[2].AsString := TString(cbKab_Kel.Items.Objects[cbKab_Kel.ItemIndex]).Str;
              Params[3].AsString := TString(cbKec_Kel.Items.Objects[cbKec_Kel.ItemIndex]).Str;
              Params[4].AsString := vl_IDKel;
              Execute;
              MessageDlg('Proses Perubahan data kecamatan berhasil',mtInformation,[mbOK],0);
              Button8.Click;
            except on E: Exception do
            begin
              ErrorProgNoDialog('Error, Edit Data kelurahan, Ket error '+E.Message);
            end
            end;
          end;
        end;
      end
      else
      begin
        if MessageDlg('Yakin data kelurahan akan di Simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          with DM.Q do
          begin
            Close;
            SQL.Text := 'insert into m_kelurahan(no_prop,no_kab,no_kec,no_kel,nama_kel) values(:no_prop,:no_kab,:no_kec,:no_kel,:nama_kel)';
            try
              Params[0].AsString := TString(cbProp_Kel.Items.Objects[cbProp_Kel.ItemIndex]).Str;
              Params[1].AsString := TString(cbKab_Kel.Items.Objects[cbKab_Kel.ItemIndex]).Str;
              Params[2].AsString := TString(cbKec_Kel.Items.Objects[cbKec_Kel.ItemIndex]).Str;
              Params[3].AsString := eKDKel.Text;
              Params[4].AsString := eNamaKel.Text;
              Execute;
              MessageDlg('Proses Penyimpanan data kelurahan berhasil',mtInformation,[mbOK],0);
              Button8.Click;
            except on E: Exception do
            begin
              ErrorProgNoDialog('Error, Insert Data kelurahan, Ket error '+E.Message);
            end
            end;
          end;
        end;
      end;
    end
    else
    begin
      MessageDlg('Nama kelurahan Harus Diisi',mtError,[mbOK],0);
      eNamaKel.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('Kode kelurahan Harus Diisi',mtError,[mbOK],0);
    eKDKel.SetFocus;
  end;
end;

procedure TfKelurahan.CRDBGrid4DblClick(Sender: TObject);
begin
  vl_IDProp := '';
  vl_IDKab := '';
  vl_IDKec := '';
  vl_IDKel := '';
  if (QKel.Active) and (QKel.RecordCount > 0) then
  begin
    vl_IDProp := QKel.Fields[0].AsString;
    vl_IDKab := QKel.Fields[1].AsString;
    vl_IDKec := QKel.Fields[2].AsString;
    vl_IDKel := QKel.Fields[3].AsString;
    eKDKel.Text := QKel.Fields[3].AsString;
    eNamaKel.Text := QKel.Fields[4].AsString;
  end;
end;

procedure TfKelurahan.Button10Click(Sender: TObject);
begin
  eKodeSamsat.Text := '';
  eNamaSamsat.Text := '';
  eAlamatSamsat.Text := '';
  eKodeUPTD.Text := '';
  eNamaUPTD.Text := '';
  cb_prop_samsat.Text := '';
  cb_kab_samsat.Text := '';
  cb_kec_samsat.Text := '';
  cb_polda_samsat.Text := '';
  cb_polres_samsat.Text := '';
  with QSamsat do
  begin
    Close;
    SQL.Text := 'SELECT SAMSAT_ID,SAMSAT_NAMA,SAMSAT_ALAMAT,POLRES_KODE,POLDA_ID,'+
                'KODE_SAMSAT,KODE_UPTD,NAMA_UPTD,KODE_PROP,KODE_KAB,KODE_KEC FROM M_SAMSAT';
    Open;
  end;
  eKodeSamsat.SetFocus;
end;

procedure TfKelurahan.cb_prop_samsatDropDown(Sender: TObject);
begin
  cb_prop_samsat.Items.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select no_prop,nama_prop from m_propinsi order by no_prop';
    try
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          cb_prop_samsat.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
          Next;
        end;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error, Select m_samsat.cb_prop_samsat. Ket error '+e.Message);
    end
    end;
  end;
end;

procedure TfKelurahan.cb_kab_samsatDropDown(Sender: TObject);
begin
  cb_kab_samsat.Items.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select no_kab,nama_kab from m_kabupaten where no_prop=:no_prop order by no_kab';
    try
      Params[0].AsString := TString(cb_prop_samsat.Items.Objects[cb_prop_samsat.ItemIndex]).Str;
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          cb_kab_samsat.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
          Next;
        end;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error, Select m_samsat.cb_kab_samsat. kel. Ket error '+e.Message);
    end
    end;
  end;
end;

procedure TfKelurahan.cb_kec_samsatDropDown(Sender: TObject);
begin
  cb_kec_samsat.Items.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select no_kec,nama_kec from m_kecamatan where no_prop=:no_prop and no_kab=:noKab order by no_kec';
    try
      Params[0].AsString := TString(cb_prop_samsat.Items.Objects[cb_prop_samsat.ItemIndex]).Str;
      Params[1].AsString := TString(cb_kab_samsat.Items.Objects[cb_kab_samsat.ItemIndex]).Str;
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          cb_kec_samsat.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
          Next;
        end;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error, Select m_samsat.cb_kec_samsat. kec. Ket error '+e.Message);
    end
    end;
  end;
end;

procedure TfKelurahan.cb_polda_samsatDropDown(Sender: TObject);
begin
  cb_polda_samsat.Items.Clear;
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
          cb_polda_samsat.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
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

procedure TfKelurahan.cb_polres_samsatDropDown(Sender: TObject);
begin
  cb_polres_samsat.Items.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'SELECT POLRES_KODE,POLRES_NAMA FROM M_POLRES'+
                ' WHERE POLDA_ID=:POLDA';
    try
      Params[0].AsString := TString(cb_polda_samsat.Items.Objects[cb_polda_samsat.ItemIndex]).Str;
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          cb_polres_samsat.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
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

procedure TfKelurahan.Button9Click(Sender: TObject);
begin
  if eKodeSamsat.Text <> '' then
  begin
    if eKodeUPTD.Text <> '' then
    begin
      if vl_IDSamsat <> '' then
      begin
        if MessageDlg('Yakin data Samsat akan di Rubah?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          with DM.Q do
          begin
            Close;
            SQL.Text := 'update m_samsat set SAMSAT_NAMA=:SAMSAT_NAMA,SAMSAT_ALAMAT=:SAMSAT_ALAMAT,'+
                        'POLRES_KODE=:POLRES_KODE,POLDA_ID=:POLDA_ID,KODE_SAMSAT=:KODE_SAMSAT,'+
                        'KODE_UPTD=:KODE_UPTD,NAMA_UPTD=:NAMA_UPTD,KODE_PROP=:KODE_PROP,KODE_KAB=:KODE_KAB,'+
                        'KODE_KEC=:KODE_KEC where SAMSAT_ID=:SAMSAT_ID';
            try
              Params[0].AsString := eNamaSamsat.Text;
              Params[1].AsString := eAlamatSamsat.Text;
              Params[2].AsString := TString(cb_polres_samsat.Items.Objects[cb_polres_samsat.ItemIndex]).Str;
              Params[3].AsString := TString(cb_polda_samsat.Items.Objects[cb_polda_samsat.ItemIndex]).Str;
              Params[4].AsString := eKodeSamsat.Text;
              Params[5].AsString := eKodeUPTD.Text;
              Params[6].AsString := eNamaUPTD.Text;
              Params[7].AsString := TString(cb_prop_samsat.Items.Objects[cb_prop_samsat.ItemIndex]).Str;
              Params[8].AsString := TString(cb_kab_samsat.Items.Objects[cb_kab_samsat.ItemIndex]).Str;
              Params[9].AsString := TString(cb_kec_samsat.Items.Objects[cb_kec_samsat.ItemIndex]).Str;
              Params[10].AsString := vl_IDSamsat;
              Execute;
              MessageDlg('Proses Perubahan data samsat berhasil',mtInformation,[mbOK],0);
              Button10.Click;
            except on E: Exception do
            begin
              ErrorProgNoDialog('Error, Edit Data samsat, Ket error '+E.Message);
            end
            end;
          end;
        end;
      end
      else
      begin
        if MessageDlg('Yakin data Samsat akan di Simpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          with DM.Q do
          begin
            Close;
            SQL.Text := 'insert into m_samsat(SAMSAT_NAMA,SAMSAT_ALAMAT,POLRES_KODE,POLDA_ID,'+
                        'KODE_SAMSAT,KODE_UPTD,NAMA_UPTD,KODE_PROP,KODE_KAB,KODE_KEC)'+
                        ' values(:SAMSAT_NAMA,:SAMSAT_ALAMAT,:POLRES_KODE,:POLDA_ID,'+
                        ':KODE_SAMSAT,:KODE_UPTD,:NAMA_UPTD,:KODE_PROP,:KODE_KAB,:KODE_KEC)';
            try
              Params[0].AsString := eNamaSamsat.Text;
              Params[1].AsString := eAlamatSamsat.Text;
              Params[2].AsString := TString(cb_polres_samsat.Items.Objects[cb_polres_samsat.ItemIndex]).Str;
              Params[3].AsString := TString(cb_polda_samsat.Items.Objects[cb_polda_samsat.ItemIndex]).Str;
              Params[4].AsString := eKodeSamsat.Text;
              Params[5].AsString := eKodeUPTD.Text;
              Params[6].AsString := eNamaUPTD.Text;
              Params[7].AsString := TString(cb_prop_samsat.Items.Objects[cb_prop_samsat.ItemIndex]).Str;
              Params[8].AsString := TString(cb_kab_samsat.Items.Objects[cb_kab_samsat.ItemIndex]).Str;
              Params[9].AsString := TString(cb_kec_samsat.Items.Objects[cb_kec_samsat.ItemIndex]).Str;
              Execute;
              MessageDlg('Proses Penyimpanan data samsat berhasil',mtInformation,[mbOK],0);
              Button10.Click;
            except on E: Exception do
            begin
              ErrorProgNoDialog('Error, Insert Data kelurahan, Ket error '+E.Message);
            end
            end;
          end;
        end;
      end;
    end
    else
    begin
      MessageDlg('Kode UPTD Harus Diisi',mtError,[mbOK],0);
      eKodeUPTD.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('Kode Samsat Harus Diisi',mtError,[mbOK],0);
    eKodeSamsat.SetFocus;
  end;
end;

end.
