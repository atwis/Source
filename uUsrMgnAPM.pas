unit uUsrMgnAPM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxMemo, DBAccess, Uni, MemDS, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, icekey, Menus, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TfUsrMgnAPM = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label140: TLabel;
    eIDPetugas: TEdit;
    Label2: TLabel;
    Label141: TLabel;
    eNamaLengkap: TEdit;
    Label142: TLabel;
    cbBlock: TComboBox;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    GroupBox9: TGroupBox;
    Label143: TLabel;
    Label144: TLabel;
    EPass: TEdit;
    EPass1: TEdit;
    TbTambah: TButton;
    TbSimpan: TButton;
    TbBatal: TButton;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Q: TUniQuery;
    dsQ: TUniDataSource;
    QTampilAPM: TUniQuery;
    dsQTampilAPM: TUniDataSource;
    cbDealer: TcxDBLookupComboBox;
    dsDealer1: TUniDataSource;
    QDealer1: TUniQuery;
    dsDealer2: TUniDataSource;
    QDealer2: TUniQuery;
    QDealer: TUniQuery;
    dsQDealer: TUniDataSource;
    pAPM: TPanel;
    Shape2: TShape;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    bClose: TButton;
    eATPMNAMA: TEdit;
    eATPMID: TEdit;
    eATPMKEY: TMemo;
    cbAktifAPM: TComboBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    BitBtn2: TBitBtn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    icekey1: Ticekey;
    lDealerID: TLabel;
    PopupMenu1: TPopupMenu;
    E1: TMenuItem;
    Label9: TLabel;
    ePNBPR2: TEdit;
    Label10: TLabel;
    ePNBPR4: TEdit;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    procedure bCloseClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure pAPMMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure TbBatalClick(Sender: TObject);
    procedure TbTambahClick(Sender: TObject);
    procedure TbSimpanClick(Sender: TObject);
    procedure cxGridDBTableView2CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure E1Click(Sender: TObject);
    procedure ePNBPR2Change(Sender: TObject);
    procedure ePNBPR4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDataAPM;
    procedure RefreshCbDealer;
    procedure RefreshDataUserDealer;
  end;

var
  fUsrMgnAPM: TfUsrMgnAPM;

implementation
Uses
  uDM, uVariabel, uModul;
  
{$R *.dfm}

procedure TfUsrMgnAPM.bCloseClick(Sender: TObject);
begin
  pAPM.Visible := False;
end;

procedure TfUsrMgnAPM.Button3Click(Sender: TObject);
begin
  RefreshDataAPM;
  RefreshCbDealer;
  lDealerID.Caption := '';
  eATPMNAMA.Text := '';
  eATPMID.Text := '';
  eATPMKEY.Text := '';
  eATPMNAMA.SetFocus;
end;

procedure TfUsrMgnAPM.Button1Click(Sender: TObject);
begin
  RefreshDataAPM;
  RefreshCbDealer;
  lDealerID.Caption := '';
  eATPMNAMA.Text := '';
  eATPMID.Text := '';
  eATPMKEY.Text := '';
  eATPMNAMA.SetFocus;
end;

procedure TfUsrMgnAPM.BitBtn1Click(Sender: TObject);
begin
  pAPM.Left := 80;
  pAPM.Top := 32;
  eATPMNAMA.Text := '';
  eATPMID.Text := '';
  eATPMKEY.Text := '';
  ePNBPR2.Text := '';
  ePNBPR4.Text := '';
  RefreshDataAPM;
  pAPM.Visible := True;
  eATPMNAMA.SetFocus;
end;

procedure TfUsrMgnAPM.BitBtn2Click(Sender: TObject);
begin
  eATPMKEY.Clear;
  //icekey1.CreateIcekey('Up13Xu'+eATPMID.Text);
  eATPMKEY.Lines.Add(EncryptText('Up1eXu',eATPMID.Text)); //icekey1.GetIcekey
end;

procedure TfUsrMgnAPM.Button2Click(Sender: TObject);
begin
  if eATPMNAMA.Text <> '' then
  begin
    if eATPMID.Text <> '' then
    begin
      if eATPMKEY.Text <> '' then
      begin
        if lDealerID.Caption <> '' then
        begin
          if MessageDlg('YAKIN DATA AKAN DIRUBAH?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          begin
            with Q do
            begin
              Close;
              SQL.Text := 'UPDATE M_DEALER SET DEALER_NAMA=:DEALER_NAMA,DEALER_AKTIF=:DEALER_AKTIF,DEALER_SNHDD=:DEALER_SNHDD,DEALER_KEY=:DEALER_KEY,PNBP_R2=:PNBP_R2,PNBP_R4=:PNBP_R4'+
                          ' WHERE DEALER_ID=:DEALER_ID';
              try
                ParamByName('DEALER_NAMA').AsString := eATPMNAMA.Text;
                ParamByName('DEALER_AKTIF').AsString := IntToStr(cbAktifAPM.ItemIndex);
                ParamByName('DEALER_SNHDD').AsString := eATPMID.Text;
                ParamByName('DEALER_KEY').AsString := eATPMKEY.Text;
                ParamByName('PNBP_R2').AsCurrency := BuangTitik(ePNBPR2.Text);
                ParamByName('PNBP_R4').AsCurrency := BuangTitik(ePNBPR4.Text);
                ParamByName('DEALER_ID').AsString := lDealerID.Caption;
                Execute;

                RefreshDataAPM;
                RefreshCbDealer;
              except on E: Exception do
              begin
                ErrorProgDialog('Error... Insert APM/Dealer. Ket error '+E.Message);
              end;
              end;
            end;
          end;
        end
        else
        begin
          if MessageDlg('YAKIN DATA AKAN DISIMPAN?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          begin
            with Q do
            begin
              Close;
              SQL.Text := 'INSERT INTO M_DEALER(DEALER_NAMA,DEALER_AKTIF,DEALER_SNHDD,DEALER_KEY,PNBP_R2,PNBP_R4)'+
                          ' VALUES(:ATPM_NAMA,:ATPM_AKTIF,:ATPM_SNHDD,:ATPM_KEY,:PNBP_R2,:PNBP_R4)';
              try
                ParamByName('ATPM_NAMA').AsString := eATPMNAMA.Text;
                ParamByName('ATPM_AKTIF').AsString := IntToStr(cbAktifAPM.ItemIndex);
                ParamByName('ATPM_SNHDD').AsString := eATPMID.Text;
                ParamByName('ATPM_KEY').AsString := eATPMKEY.Text;
                ParamByName('PNBP_R2').AsCurrency := BuangTitik(ePNBPR2.Text);
                ParamByName('PNBP_R4').AsCurrency := BuangTitik(ePNBPR4.Text);
                Execute;

                RefreshDataAPM;
                RefreshCbDealer;
              except on E: Exception do
              begin
                ErrorProgDialog('Error... Insert APM/Dealer. Ket error '+E.Message);
              end;
              end;
            end;
          end;
        end;
      end
      else
      begin
        MessageDlg('KEY APM/DEALER HARUS DIISI',mtError,[mbOK],0);
        eATPMKEY.SetFocus;
      end;
    end
    else
    begin
      MessageDlg('APM ID HARUS DIISI',mtError,[mbOK],0);
      eATPMID.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('NAMA APM/DEALER HARUS DIISI',mtError,[mbOK],0);
    eATPMNAMA.SetFocus;
  end;
end;

procedure TfUsrMgnAPM.RefreshDataAPM;
begin
  with QTampilAPM do
  begin
    Close;
    SQL.Text := 'SELECT DEALER_ID,DEALER_NAMA,DEALER_AKTIF,DEALER_SNHDD,DEALER_KEY,PNBP_R2,PNBP_R4 FROM M_DEALER WHERE DEALER_AKTIF=''1'' ORDER BY DEALER_NAMA';
    Open;
  end;
end;

procedure TfUsrMgnAPM.pAPMMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pAPM.Handle, wm_SysCommand,$f012,0);
end;

procedure TfUsrMgnAPM.RefreshCbDealer;
begin
  QDealer1.Close;
  QDealer1.SQL.Text := 'select to_char(dealer_id) as dealer_id,dealer_nama from m_dealer order by dealer_nama';
  QDealer1.Open;

  QDealer2.Close;
  QDealer2.SQL.Text := 'select to_char(dealer_id) as dealer_id,dealer_nama from m_dealer order by dealer_nama';
  QDealer2.Open;
end;

procedure TfUsrMgnAPM.FormShow(Sender: TObject);
begin
  RefreshCbDealer;
  RefreshDataUserDealer;
  eIDPetugas.Text := '';
  eNamaLengkap.Text := '';
  cbBlock.Text := '';
  cbDealer.Text := '';
  EPass.Text := '';
  EPass1.Text := '';
  eIDPetugas.SetFocus;
end;

procedure TfUsrMgnAPM.TbBatalClick(Sender: TObject);
begin
  eIDPetugas.Text := '';
  eNamaLengkap.Text := '';
  cbBlock.ItemIndex := -1;
  cbDealer.ItemIndex := -1;
  EPass.Text := '';
  EPass1.Text := '';
  RefreshDataUserDealer;
  eIDPetugas.SetFocus;
end;

procedure TfUsrMgnAPM.RefreshDataUserDealer;
begin
  with QDealer do
  begin
    Close;
    SQL.Text := 'SELECT U.ID_USER,U.NAMA_USER,U.PASSWORD,U.BLOCKED,D.DEALER_NAMA FROM T_USER U'+
                ' INNER JOIN M_DEALER D ON D.DEALER_ID=U.ATPM_ID';
    Open;
  end;
end;

procedure TfUsrMgnAPM.TbTambahClick(Sender: TObject);
begin
  eIDPetugas.Text := '';
  eNamaLengkap.Text := '';
  cbBlock.ItemIndex := -1;
  cbDealer.ItemIndex := -1;
  EPass.Text := '';
  EPass1.Text := '';
  RefreshDataUserDealer;
  eIDPetugas.SetFocus;
end;

procedure TfUsrMgnAPM.TbSimpanClick(Sender: TObject);
begin
    if eIDPetugas.Text <> '' then
  begin
    if eNamaLengkap.Text <> '' then
    begin
      if EPass.Text <> '' then
      begin
        if (EPass.Text) = (EPass1.Text) then
        begin
          if MessageDlg('Yakin data akan disimpan?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          begin
            with Q do
            begin
              Close;
              SQL.Text := 'INSERT INTO T_USER(ID_USER,NAMA_USER,BLOCKED,PASSWORD,LEVEL_AKSES,ATPM_ID,LASTUPDATE)'+
                          ' VALUES(:ID_USER,:NAMA_USER,:BLOCKED,:PASSWORD,:LEVEL_AKSES,:ATPM_ID,SYSDATE)';
              try
                Params[0].AsString := eIDPetugas.Text;
                Params[1].AsString := eNamaLengkap.Text;
                Params[2].AsString := IntToStr(cbBlock.ItemIndex);
                Params[3].AsString := EPass.Text;
                Params[4].AsString := 'DEALER';
                Params[5].Value := cbDealer.EditValue;
                Execute;
                MessageDlg('DATA BERHASIL DISIMPAN',mtInformation,[mbOK],0);
                RefreshDataUserDealer;
              except on E: Exception do
              begin
                ErrorProgDialog('Error... Insert data user dealer, ket error '+E.Message);
              end;
              end;
            end;
          end;
        end
        else
        begin
          MessageDlg('Password tidak sama, mohon di entry ulang untuk passwordnya',mtError,[mbOK],0);
          EPass.SetFocus;
        end;
      end
      else
      begin
        MessageDlg('Password harus diisi',mtError,[mbOK],0);
        EPass.SetFocus;
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

procedure TfUsrMgnAPM.cxGridDBTableView2CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  eATPMNAMA.Text := QTampilAPM.FieldByName('DEALER_NAMA').AsString;
  eATPMID.Text := QTampilAPM.FieldByName('DEALER_SNHDD').AsString;
  eATPMKEY.Text := QTampilAPM.FieldByName('DEALER_KEY').AsString;
  cbAktifAPM.ItemIndex := QTampilAPM.FieldByName('DEALER_AKTIF').AsInteger;
  lDealerID.Caption := QTampilAPM.FieldByName('DEALER_ID').AsString;
end;

procedure TfUsrMgnAPM.E1Click(Sender: TObject);
begin
  eATPMNAMA.Text := QTampilAPM.FieldByName('DEALER_NAMA').AsString;
  eATPMID.Text := QTampilAPM.FieldByName('DEALER_SNHDD').AsString;
  eATPMKEY.Text := QTampilAPM.FieldByName('DEALER_KEY').AsString;
  cbAktifAPM.ItemIndex := QTampilAPM.FieldByName('DEALER_AKTIF').AsInteger;
  lDealerID.Caption := QTampilAPM.FieldByName('DEALER_ID').AsString;
  ePNBPR2.Text := FormatKeUang(QTampilAPM.FieldByName('PNBP_R2').AsCurrency);
  ePNBPR4.Text := FormatKeUang(QTampilAPM.FieldByName('PNBP_R4').AsCurrency);
end;

procedure TfUsrMgnAPM.ePNBPR2Change(Sender: TObject);
var
  TempMauBayar : Currency;
begin
  If ePNBPR2.Text = '' then
     ePNBPR2.Text := '0';
  TempMauBayar := BuangTitik(ePNBPR2.Text);
  ePNBPR2.Text := FormatFloat('#,##0',TempMauBayar);
  ePNBPR2.SelStart := Length(ePNBPR2.Text) + 1;
end;

procedure TfUsrMgnAPM.ePNBPR4Change(Sender: TObject);
var
  TempMauBayar : Currency;
begin
  If ePNBPR4.Text = '' then
     ePNBPR4.Text := '0';
  TempMauBayar := BuangTitik(ePNBPR4.Text);
  ePNBPR4.Text := FormatFloat('#,##0',TempMauBayar);
  ePNBPR4.SelStart := Length(ePNBPR4.Text) + 1;
end;

end.
