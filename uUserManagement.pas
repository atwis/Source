unit uUserManagement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  Menus, StdCtrls, DBCtrls, Grids, DBGrids, CRGrid, cxButtons, ExtCtrls,
  DBAccess, Uni, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Buttons, cxCheckBox, cxPC, icekey;

type
  TfUserManagement = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label1: TLabel;
    Shape1: TShape;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    eIDPetugas: TEdit;
    eNamaLengkap: TEdit;
    cbRole: TComboBox;
    GroupBox9: TGroupBox;
    Label143: TLabel;
    Label144: TLabel;
    EPass: TEdit;
    EPass1: TEdit;
    TbTambah: TButton;
    TbSimpan: TButton;
    TbHapus: TButton;
    TbBatal: TButton;
    BitBtn1: TBitBtn;
    eNRP: TEdit;
    ePangkat: TEdit;
    cbPolda: TComboBox;
    cbPolres: TComboBox;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Button2: TButton;
    pRool: TPanel;
    Shape2: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxButton8: TcxButton;
    ListBoxGroup: TListBox;
    bBaruPendaftaranBBN1: TcxButton;
    bSimpan: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    pNamaGroup: TPanel;
    Button1: TButton;
    eNamaGroup: TEdit;
    Q: TUniQuery;
    dsQ: TUniDataSource;
    UniQuery1: TUniQuery;
    UniDataSource1: TUniDataSource;
    PopupMenu1: TPopupMenu;
    AMBAHGROUP1: TMenuItem;
    HAPUSGROUP1: TMenuItem;
    Q2: TUniQuery;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    eNAMAKOMP: TEdit;
    eIDKomp: TEdit;
    eKeyKomp: TMemo;
    cbAktifKomp: TComboBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    BitBtn2: TBitBtn;
    eAlamatKomp: TEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    icekey1: Ticekey;
    QTampilKomp: TUniQuery;
    dsQTampilKomp: TUniDataSource;
    Label14: TLabel;
    Label15: TLabel;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cbPoldaKomp: TComboBox;
    cbPolresKomp: TComboBox;
    lIDKomp: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cbPolresDropDown(Sender: TObject);
    procedure cbRoleDropDown(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure AMBAHGROUP1Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure CRDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ListBoxGroupClick(Sender: TObject);
    procedure ListBoxGroupKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pRoolMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bBaruPendaftaranBBN1Click(Sender: TObject);
    procedure bSimpanClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure HAPUSGROUP1Click(Sender: TObject);
    procedure TbTambahClick(Sender: TObject);
    procedure TbSimpanClick(Sender: TObject);
    procedure TbHapusClick(Sender: TObject);
    procedure TbBatalClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cbPolresKompDropDown(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
  private
    { Private declarations }
    isEdit : String;
    
  public
    { Public declarations }
    procedure ClearInputPetugas;
    procedure ClearInputKomp;
    procedure RefreshPolda;
    procedure RefreshPolres;
    procedure RefreshPolres2;
    procedure RefreshRole;
    procedure RefreshOperator;
    procedure RefreshDataGroup;
    procedure RefreshDataMenu;
    procedure SelectItemGroup;
    procedure UpdateDataMenu;
    procedure RefreshKomputer;
  end;

type
  TString = class(TObject)
private
  fStr: String;
public
  isEdit : String;
  constructor Create(const AStr: String) ;
  property Str: String read FStr write FStr;
end;

var
  fUserManagement: TfUserManagement;

implementation
Uses
  uDM, uVariabel, uModul, uWait;
{$R *.dfm}

procedure TfUserManagement.ClearInputPetugas;
begin
   RefreshPolda;
   vRoleID := '';
   isEdit := '';
   eIDPetugas.Text := '';
   eNamaLengkap.tEXT := '';
   eNRP.Text := '';
   ePangkat.Text := '';
   cbRole.Text := '';
   cbPolda.Text := '';
   cbPolres.Text := '';
   cbPolda.ItemIndex := -1;
   cbPolres.ItemIndex := -1;
   cbRole.ItemIndex := -1;
   EPass.Text := '';
   EPass1.Text := '';
   //eIDPetugas.SetFocus;
end;

procedure TfUserManagement.RefreshDataGroup;
begin
  ListBoxGroup.Clear;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select kode from m_group_hak_akses group by kode order by kode';
    Open;

    if recordcount > 0 then
    begin
      while Not Eof do
      begin
        ListBoxGroup.Items.Add(Fields[0].AsString);
      Next;
      end;
    end;
  end;
end;

procedure TfUserManagement.RefreshDataMenu;
begin
  with UniQuery1 do
  begin
    Close;
    SQL.Text := 'select kode_sub_group,nama_sub_group,is_pilih,nama_group,kode_group from m_menu_aplikasi_bpkb order by kode_group,kode_sub_group';
    Open;
  end;
end;

procedure TfUserManagement.RefreshOperator;
begin
  with Q do
  begin
    Close;
    if vLevelPetugas='ADMINISTRATOR' then
    begin
      SQL.Text := 'select a.op_login as op_id,a.op_nama,a.op_nrp,a.op_pangkat,a.LEVEL_AKSES as op_role,a.BLOCKED,b.polda_nama,c.polres_nama from t_operator a '+
                  ' left join m_polda b on b.polda_id=a.polda_id'+
                  ' left join m_polres c on c.polda_id=a.polda_id and c.polres_kode=a.polres_id'+
                  ' order by a.op_id';
      Open;
    end
    else
    begin
      SQL.Text := 'select a.op_login as op_id,a.op_nama,a.op_nrp,a.op_pangkat,a.LEVEL_AKSES as op_role,a.BLOCKED,b.polda_nama,c.polres_nama from t_operator a '+
                  ' left join m_polda b on b.polda_id=a.polda_id'+
                  ' left join m_polres c on c.polda_id=a.polda_id and c.polres_kode=a.polres_id'+
                  ' where a.op_id=:op_login'+
                  ' order by a.op_id';
      Params[0].AsString := vIDPetugas;
      Open;
    end;
  end;
end;

procedure TfUserManagement.RefreshPolda;
begin
  with DM.Q do
  begin
    cbPolda.Clear;
    Close;
    SQL.Text := 'select POLDA_ID,POLDA_NAMA from m_polda order by POLDA_ID';
    Open;
    if recordcount > 0 then
    begin
      while not eof do
      begin
        cbPolda.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
        cbPoldaKomp.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
      Next;
      end;
    end;
    cbPolda.ItemIndex := -1;
  end;
end;

procedure TfUserManagement.RefreshPolres;
begin
  with DM.Q do
  begin
    cbPolres.Clear;
    Close;
    SQL.Text := 'select POLRES_KODE,POLRES_NAMA from m_polres where POLDA_ID=:POLDA order by POLRES_KODE';
    Params[0].AsString := TString(cbPolda.Items.Objects[cbPolda.ItemIndex]).Str;
    Open;
    if recordcount > 0 then
    begin
      while not eof do
      begin
        cbPolres.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
      Next;
      end;
    end;
    cbPolres.ItemIndex := -1;
  end;
end;

{ TString }

constructor TString.Create(const AStr: String);
begin
  inherited Create;
  FStr := AStr;
end;

procedure TfUserManagement.RefreshRole;
begin
  with DM.Q do
  begin
    cbRole.Clear;
    Close;
    SQL.Text := 'select KODE,KET from m_group_hak_akses order by KODE';
    Open;
    if recordcount > 0 then
    begin
      while not eof do
      begin
        cbRole.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
      Next;
      end;
    end;
    cbRole.ItemIndex := -1;
  end;
end;

procedure TfUserManagement.SelectItemGroup;
begin
  UpdateDataMenu;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'update m_menu_aplikasi_bpkb set is_pilih=''True'' where kode_sub_group in (select kode_sub_group from m_group_sub_menu_aplikasi where kode=:kode)';
    try
      Params[0].AsString := ListBoxGroup.Items[ListBoxGroup.ItemIndex];
      Execute;
    except on E: Exception do
    begin
      ErrorProg('Error, update menu_aplikasi is_pilih=''True'', Error '+E.Message);
    end;
    end;
  end;
  RefreshDataMenu;
end;

procedure TfUserManagement.UpdateDataMenu;
begin
  with DM.Q do
  begin
    Close;
    SQL.Text := 'update m_menu_aplikasi_bpkb set is_pilih=''False''';
    Execute;
  end;
end;

procedure TfUserManagement.FormShow(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex := 0;
  vRoleID := '';
  isEdit := '';
  ClearInputPetugas;
  RefreshRole;
  RefreshDataMenu;
  RefreshOperator;
  RefreshPolda;
end;

procedure TfUserManagement.cbPolresDropDown(Sender: TObject);
begin
  RefreshPolres;
end;

procedure TfUserManagement.cbRoleDropDown(Sender: TObject);
begin
  RefreshRole;
end;

procedure TfUserManagement.BitBtn1Click(Sender: TObject);
begin
  DM.Q.Close;
  DM.Q.SQL.Text := 'update m_menu_aplikasi_bpkb set is_pilih=''False''';
  DM.Q.Execute;
  
  RefreshDataGroup;
  RefreshDataMenu;
  pRool.Left := 119;
  pRool.Top := 71;
  pRool.Visible := True;
end;

procedure TfUserManagement.AMBAHGROUP1Click(Sender: TObject);
begin
  pNamaGroup.Top := 52;
  pNamaGroup.Left := 18;
  pNamaGroup.Visible := True;
  eNamaGroup.Text := '';
  eNamaGroup.SetFocus;
end;

procedure TfUserManagement.cxButton8Click(Sender: TObject);
begin
  pRool.Visible := False;
end;

procedure TfUserManagement.CRDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = Chr(9)) then Exit;
end;

procedure TfUserManagement.ListBoxGroupClick(Sender: TObject);
begin
  SelectItemGroup;
end;

procedure TfUserManagement.ListBoxGroupKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  SelectItemGroup;
end;

procedure TfUserManagement.pRoolMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pRool.Handle, wm_SysCommand,$f012,0);
end;

procedure TfUserManagement.bBaruPendaftaranBBN1Click(Sender: TObject);
begin
  UpdateDataMenu;
  RefreshDataMenu;
end;

procedure TfUserManagement.bSimpanClick(Sender: TObject);
begin
  UniQuery1.Post;
  
  with DM.Q do
  begin
    Close;
    SQL.Text := 'delete from m_group_sub_menu_aplikasi where kode=:kode';
    Params[0].AsString := ListBoxGroup.Items[ListBoxGroup.ItemIndex];
    Execute;

    Close;
    SQL.Text := 'insert into m_group_sub_menu_aplikasi(kode,kode_group,kode_sub_group,ket)'+
                ' select '''+ListBoxGroup.Items[ListBoxGroup.ItemIndex]+''',kode_group,kode_sub_group,nama_sub_group'+
                ' from m_menu_aplikasi_bpkb where is_pilih=''True''';
    try
      Execute;
      MessageDlg('Data hak akses berhasil disimpan',mtInformation,[mbOK],0);
    except on E: Exception do
    begin
      ErrorProg('Error, insert group_hak_akses. Ket error '+E.Message);
    end;
    end;
  end;
end;

procedure TfUserManagement.Button1Click(Sender: TObject);
begin
  with DM.Q do
  begin
    Close;
    SQL.Text := 'insert into m_group_hak_akses(KODE,KET) values(:KODE,:KET)';
    try
      Params[0].AsString := eNamaGroup.Text;;
      Params[1].AsString := eNamaGroup.Text;;
      Execute
    except on E: Exception do
    begin
      ErrorProg('Error, Insert Role '+E.Message);
    end;
    end;
  end;
  RefreshDataGroup;
  pNamaGroup.Visible := fALSE;
end;

procedure TfUserManagement.HAPUSGROUP1Click(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
  try
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_delete_role';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_polda_id',ptInput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
      uniSP.Params.CreateParam(ftString,'v_role_id',ptInput).AsString := ListBoxGroup.Items[ListBoxGroup.ItemIndex];
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
      uniSP.ExecProc;

      if Copy(uniSP.Params.ParamValues['RESULT'],1,2)='00' then
      begin
        ShowMessage(uniSP.Params.ParamValues['RESULT']);
      end
      else
      begin
        MessageDlg(uniSP.Params.ParamValues['RESULT'],mtError,[mbOK],0);
      end;
      RefreshDataGroup;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,..bpkb_delete_role%Error :'+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfUserManagement.TbTambahClick(Sender: TObject);
begin
  ClearInputPetugas;
end;

procedure TfUserManagement.TbSimpanClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
  if eIDPetugas.Text <> '' then
  begin
    if eNamaLengkap.Text <> '' then
    begin
      if cbPolda.ItemIndex <> -1 then
      begin
        if cbPolres.ItemIndex <> -1 then
        begin
          if cbRole.ItemIndex <> -1 then
          begin
            if (EPass.Text) = (EPass1.Text) then
            begin
              if isEdit = '1' then
              begin
                if MessageDlg('Yakin data operator akan dirubah passwordnya?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                begin
                  try
                    uniSP := TUniStoredProc.Create(Application);
                    uniSP.Connection := DM.dbSrv;
                    uniSP.Close;
                    uniSP.StoredProcName := 'bpkb_edit_operator';
                    try
                      uniSP.Params.Clear;
                      uniSP.Params.CreateParam(ftString,'v_polda_id',ptInput).AsString := vPOLDAID;
                      uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
                      uniSP.Params.CreateParam(ftString,'v_petugas_id',ptInput).AsString := eIDPetugas.Text;
                      uniSP.Params.CreateParam(ftString,'v_nama',ptInput).AsString := eNamaLengkap.Text;
                      uniSP.Params.CreateParam(ftString,'v_nrp',ptInput).AsString := eNRP.Text;
                      uniSP.Params.CreateParam(ftString,'v_pangkat',ptInput).AsString := ePangkat.Text;
                      uniSP.Params.CreateParam(ftString,'v_role_id',ptInput).AsString := cbRole.Text;
                      uniSP.Params.CreateParam(ftString,'v_password',ptInput).AsString := EPass.Text;
                      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
                      uniSP.ExecProc;

                      if Copy(uniSP.Params.ParamValues['RESULT'],1,2)='00' then
                      begin
                        ShowMessage(uniSP.Params.ParamValues['RESULT']);
                      end
                      else
                      begin
                        MessageDlg(uniSP.Params.ParamValues['RESULT'],mtError,[mbOK],0);
                      end;
                      RefreshOperator;
                    except on E:Exception do
                    begin
                      ErrorProgDialog('Error,..bpkb_edit_operator%Error :'+E.Message);
                    end;
                    end;
                  finally
                    FreeAndNil(uniSP);
                  end;
                end;
              end
              else
              begin
                if MessageDlg('Yakin data operator akan disimpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                begin
                  try
                    uniSP := TUniStoredProc.Create(Application);
                    uniSP.Connection := DM.dbSrv;
                    uniSP.Close;
                    uniSP.StoredProcName := 'bpkb_add_operator';
                    try
                      uniSP.Params.Clear;
                      uniSP.Params.CreateParam(ftString,'v_polda_id',ptInput).AsString := vPOLDAID;
                      uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
                      uniSP.Params.CreateParam(ftString,'v_petugas_id',ptInput).AsString := eIDPetugas.Text;
                      uniSP.Params.CreateParam(ftString,'v_nama',ptInput).AsString := eNamaLengkap.Text;
                      uniSP.Params.CreateParam(ftString,'v_nrp',ptInput).AsString := eNRP.Text;
                      uniSP.Params.CreateParam(ftString,'v_pangkat',ptInput).AsString := ePangkat.Text;
                      uniSP.Params.CreateParam(ftString,'v_role_id',ptInput).AsString := cbRole.Text;
                      uniSP.Params.CreateParam(ftString,'v_password',ptInput).AsString := EPass.Text;
                      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
                      uniSP.ExecProc;

                      if Copy(uniSP.Params.ParamValues['RESULT'],1,2)='00' then
                      begin
                        ShowMessage(uniSP.Params.ParamValues['RESULT']);
                      end
                      else
                      begin
                        MessageDlg(uniSP.Params.ParamValues['RESULT'],mtError,[mbOK],0);
                      end;
                      RefreshOperator;
                    except on E:Exception do
                    begin
                      ErrorProgDialog('Error,..bpkb_add_operator%Error :'+E.Message);
                    end;
                    end;
                  finally
                    FreeAndNil(uniSP);
                  end;
                end;
              end;
            end
            else
            begin
              MessageDlg('Password tidak sama, ulangi pengisian password',mtError,[mbOK],0);
              EPass.SetFocus;
            end;
          end
          else
          begin
            MessageDlg('Role harus dipilih',mtError,[mbOK],0);
            cbRole.SetFocus;
          end;
        end
        else
        begin
          MessageDlg('Polres harus dipilih',mtError,[mbOK],0);
          cbPolres.SetFocus;
        end;
      end
      else
      begin
        MessageDlg('Polda harus dipilih',mtError,[mbOK],0);
        cbPolda.SetFocus;
      end;
    end
    else
    begin
      MessageDlg('Nama Lengkap harus diisi',mtError,[mbOK],0);
      eNamaLengkap.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('ID Petugas harus diisi!',mtError,[mbOK],0);
    eIDPetugas.SetFocus;
  end;
end;

procedure TfUserManagement.TbHapusClick(Sender: TObject);
var
  uniSP : TUniStoredProc;
begin
  if (Q.Active) and (Q.RecordCount > 0) then
  begin
    if MessageDlg('Yakin data operator '+Q.FieldByName('op_id').AsString+' Akan dihapus?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      try
        uniSP := TUniStoredProc.Create(Application);
        uniSP.Connection := DM.dbSrv;
        uniSP.Close;
        uniSP.StoredProcName := 'bpkb_delete_perator';
        try
          uniSP.Params.Clear;
          uniSP.Params.CreateParam(ftString,'v_polda_id',ptInput).AsString := vPOLDAID;
          uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
          uniSP.Params.CreateParam(ftString,'v_petugas_id',ptInput).AsString := eIDPetugas.Text;
          uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
          uniSP.ExecProc;

          if Copy(uniSP.Params.ParamValues['RESULT'],1,2)='00' then
          begin
            ShowMessage(uniSP.Params.ParamValues['RESULT']);
          end
          else
          begin
            MessageDlg(uniSP.Params.ParamValues['RESULT'],mtError,[mbOK],0);
          end;
          RefreshOperator;
        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bpkb_delete_perator%Error :'+E.Message);
        end;
        end;
      finally
        FreeAndNil(uniSP);
      end;
    end;
  end;
end;

procedure TfUserManagement.TbBatalClick(Sender: TObject);
begin
  ClearInputPetugas;
  RefreshOperator;
end;

procedure TfUserManagement.cxGridDBTableView1DblClick(Sender: TObject);
begin
  if (Q.Active) and (Q.RecordCount > 0) then
  begin
    isEdit := '1';
    eIDPetugas.Text := Q.FieldByName('op_id').AsString;
    eNamaLengkap.Text := Q.FieldByName('op_nama').AsString;
    eNRP.Text := Q.FieldByName('op_nrp').AsString;
    ePangkat.Text := Q.FieldByName('op_pangkat').AsString;
    cbPolda.Text := Q.FieldByName('polda_nama').AsString;
    cbPolres.Text := Q.FieldByName('polres_nama').AsString;
    cbRole.Text := Q.FieldByName('op_role').AsString;
    EPass.Text := '';
    EPass1.Text := '';
  end;
end;

procedure TfUserManagement.FormCreate(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TfUserManagement.Button5Click(Sender: TObject);
begin
  eNAMAKOMP.Text := '';
  eAlamatKomp.Text := '';
  eIDKomp.Text := '';
  eKeyKomp.Text := '';
  cbAktifKomp.Text := '';
  cbPoldaKomp.Text := '';
  cbPolresKomp.Text := '';
  eNAMAKOMP.SetFocus;
end;

procedure TfUserManagement.BitBtn2Click(Sender: TObject);
begin
  eKeyKomp.Clear;
  eKeyKomp.Lines.Add(EncryptText('Up1eXu',eIDKomp.Text)); //icekey1.GetIcekey
end;

procedure TfUserManagement.cxPageControl1Change(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex=0 then
  begin
    ClearInputPetugas;
  end
  else
  begin
    ClearInputKomp;
  end;
end;

procedure TfUserManagement.ClearInputKomp;
begin
  RefreshPolda;
  RefreshKomputer;
  eNAMAKOMP.Text := '';
  eAlamatKomp.Text := '';
  eIDKomp.Text := '';
  eKeyKomp.Text := '';
  cbAktifKomp.Text := '';
  cbPoldaKomp.Text := '';
  cbPolresKomp.Text := '';
  eNAMAKOMP.SetFocus;
end;

procedure TfUserManagement.RefreshPolres2;
begin
  with DM.Q do
  begin
    cbPolresKomp.Clear;
    Close;
    SQL.Text := 'select POLRES_KODE,POLRES_NAMA from m_polres where POLDA_ID=:POLDA order by POLRES_KODE';
    Params[0].AsString := TString(cbPoldaKomp.Items.Objects[cbPoldaKomp.ItemIndex]).Str;
    Open;
    if recordcount > 0 then
    begin
      while not eof do
      begin
        cbPolresKomp.Items.AddObject(Fields[1].AsString,TString.Create(Fields[0].AsString));
      Next;
      end;
    end;
    cbPolresKomp.ItemIndex := -1;
  end;
end;

procedure TfUserManagement.cbPolresKompDropDown(Sender: TObject);
begin
  RefreshPolres2;
end;

procedure TfUserManagement.Button3Click(Sender: TObject);
begin
  ClearInputKomp;
end;

procedure TfUserManagement.RefreshKomputer;
begin
  with QTampilKomp do
  begin
    Close;
    SQL.Text := 'SELECT ID_ALAT,NAMA_ALAT,LOKASI,BLOCKED,POLDA_ID,POLRES_ID,SAMSAT_ID,SNHDD,SNKEY'+
                ' FROM T_ALAT ORDER BY ID_ALAT';
    Open;
  end;
end;

procedure TfUserManagement.Button4Click(Sender: TObject);
begin
  if eNAMAKOMP.Text <> '' then
  begin
    if eAlamatKomp.Text <> '' then
    begin
      if eIDKomp.Text <> '' then
      begin
        if eKeyKomp.Text <> '' then
        begin
          if cbPoldaKomp.ItemIndex <> -1 then
          begin
            if cbPolresKomp.ItemIndex <> -1 then
            begin
              if lIDKomp.Caption <> '' then
              begin
                if MessageDlgUpdate('YAKIN DATA ALAT/KOMPUTER CLIENT AKAN DIRUBAH?')=mrYes then
                begin
                  with Q do
                  begin
                    Close;
                    SQL.Text := 'UPDATE T_ALAT SET NAMA_ALAT=:NAMA_ALAT,LOKASI=:LOKASI,BLOCKED=:BLOCKED,'+
                                'POLDA_ID=:POLDA_ID,POLRES_ID=:POLRES_ID,SNHDD=:SNHDD,SNKEY=:SNKEY'+
                                ' WHERE ID_ALAT=:ID_ALAT';
                    try
                      ParamByName('NAMA_ALAT').AsString := eNAMAKOMP.Text;
                      ParamByName('LOKASI').AsString := eAlamatKomp.Text;
                      ParamByName('BLOCKED').AsString := InttoStr(cbAktifKomp.ItemIndex);
                      ParamByName('POLDA_ID').AsString := TString(cbPoldaKomp.Items.Objects[cbPoldaKomp.ItemIndex]).Str;
                      ParamByName('POLRES_ID').AsString := TString(cbPolresKomp.Items.Objects[cbPolresKomp.ItemIndex]).Str;
                      ParamByName('SNHDD').AsString := eIDKomp.Text;
                      ParamByName('SNKEY').AsString := eKeyKomp.Text;
                      ParamByName('ID_ALAT').AsString := lIDKomp.Caption;
                      Execute;
                      RefreshKomputer;
                    except on E: Exception do
                    begin
                      MessageDlgError('Error... Insert Data Alat/Komputer. Ket error '+E.Message);
                    end;
                    end;
                  end;
                end;
              end
              else
              begin
                if MessageDlgInsert('YAKIN DATA AKAN DISIMPAN?')=mrYes then
                begin
                  with Q do
                  begin
                    Close;
                    SQL.Text := 'INSERT INTO T_ALAT(NAMA_ALAT,LOKASI,BLOCKED,POLDA_ID,POLRES_ID,SNHDD,SNKEY,ID_ALAT)'+
                                ' VALUES(:NAMA_ALAT,:LOKASI,:BLOCKED,:POLDA_ID,:POLRES_ID,:SNHDD,:SNKEY,:ID_ALAT)';
                    try
                      ParamByName('NAMA_ALAT').AsString := eNAMAKOMP.Text;
                      ParamByName('LOKASI').AsString := eAlamatKomp.Text;
                      ParamByName('BLOCKED').AsString := InttoStr(cbAktifKomp.ItemIndex);
                      ParamByName('POLDA_ID').AsString := TString(cbPoldaKomp.Items.Objects[cbPoldaKomp.ItemIndex]).Str;
                      ParamByName('POLRES_ID').AsString := TString(cbPolresKomp.Items.Objects[cbPolresKomp.ItemIndex]).Str;
                      ParamByName('SNHDD').AsString := eIDKomp.Text;
                      ParamByName('SNKEY').AsString := eKeyKomp.Text;
                      ParamByName('ID_ALAT').AsString := lIDKomp.Caption;
                      Execute;
                      RefreshKomputer;
                    except on E: Exception do
                    begin
                      MessageDlgError('Error... Insert Data Alat/Komputer. Ket error '+E.Message);
                    end;
                    end;
                  end;
                end;
              end;
            end
            else
            begin
              MessageDlgError('POLRES HARUS DIPILIH');
              cbPolresKomp.SetFocus;
            end;
          end
          else
          begin
            MessageDlgError('POLDA HARUS DIPILIH');
            cbPoldaKomp.SetFocus;
          end;
        end
        else
        begin
          MessageDlgError('KEY KOMPUTER HARUS DIISI');
          eKeyKomp.SetFocus;
        end;
      end
      else
      begin
        MessageDlgError('ID KOMPUTER HARUS DIISI');
        eIDKomp.SetFocus;
      end;
    end
    else
    begin
      MessageDlgError('ALAMAT KOMPUTER BERADA HARUS DIISI');
      eAlamatKomp.SetFocus;
    end;
  end
  else
  begin
    MessageDlgError('NAMA KOMPUTER HARUS DIISI');
    eNamaKomp.SetFocus;
  end;
end;

procedure TfUserManagement.cxGridDBTableView3DblClick(Sender: TObject);
begin
  if (QTampilKomp.Active) and (QTampilKomp.RecordCount > 0) then
  begin
    lIDKomp.Caption := QTampilKomp.FieldByName('ID_ALAT').AsString;
    eNAMAKOMP.Text := QTampilKomp.FieldByName('NAMA_ALAT').AsString;
    eAlamatKomp.Text := QTampilKomp.FieldByName('LOKASI').AsString;
    eIDKomp.Text := QTampilKomp.FieldByName('SNHDD').AsString;
    eKeyKomp.Text := QTampilKomp.FieldByName('SNKEY').AsString;
    cbAktifKomp.ItemIndex := QTampilKomp.FieldByName('BLOCKED').AsInteger;
    cbPoldaKomp.ItemIndex := QTampilKomp.FieldByName('POLDA_ID').AsInteger;
    cbPolresKomp.ItemIndex := QTampilKomp.FieldByName('POLRES_ID').AsInteger;
  end;
end;

end.
