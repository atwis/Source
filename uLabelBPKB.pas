unit uLabelBPKB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxButtons, cxTextEdit, cxRadioGroup,
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxSkinsCore, Printers, 
  dxSkinsDefaultPainters, dxSkinscxPCPainter, DBAccess, Uni, MemDS,
  frxClass, frxDBSet, frxBarcode, frxDesgn, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfLabelBPKB = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Shape1: TShape;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Shape2: TShape;
    dtTgl: TcxDateEdit;
    rbTgl: TcxRadioButton;
    rbNoReg: TcxRadioButton;
    rbNoBPKB: TcxRadioButton;
    eNoRegBPKBAwal: TcxTextEdit;
    eNoRegBPKBAkhir: TcxTextEdit;
    eNoBPKBAwal: TcxTextEdit;
    eNoBPKBAkhir: TcxTextEdit;
    bTampilData: TcxButton;
    bBuatLabel: TcxButton;
    bCetakKertasLeter: TcxButton;
    bCetakKertasLabel: TcxButton;
    bTampilDataMaterial: TcxButton;
    uniSPTampil: TUniStoredProc;
    dsSPTampil: TUniDataSource;
    uniSP: TUniStoredProc;
    frxReport: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDBDataset1: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    DELETESELECT1: TMenuItem;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    PopupMenu2: TPopupMenu;
    CetakLabelKertasLabelRangkap11: TMenuItem;
    CetakLabelKertasLabelRangkap21: TMenuItem;
    N1: TMenuItem;
    CetakLabelKertasLabelKeyNoBPKB1: TMenuItem;
    CetakLabelKertasLabelKeyNoBPKBRangkap21: TMenuItem;
    QWil1: TUniQuery;
    QWil2: TUniQuery;
    dsWil2: TUniDataSource;
    dsWil1: TUniDataSource;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    Label19: TLabel;
    cbJenisPenerbitan2: TcxComboBox;
    Label20: TLabel;
    dtTgl2: TcxDateEdit;
    Q: TUniQuery;
    pBuatLabel: TPanel;
    Shape4: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    cxButton4: TcxButton;
    cbJenisPenerbitan: TcxComboBox;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cbBPKBKosong: TcxCheckBox;
    eSeriBPKB: TcxTextEdit;
    eKdWilayah: TcxTextEdit;
    eNoAwalBPKB: TcxTextEdit;
    eNoAkhirBPKB: TcxTextEdit;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    eBLTHNRegBPKB: TcxTextEdit;
    eAkhrianNRegBPKb: TcxTextEdit;
    eNoAwalNRegBPKB: TcxTextEdit;
    eNoAkhirNRegBPKB: TcxTextEdit;
    dtTglDikeluarkan: TcxDateEdit;
    eJMLBuku: TcxTextEdit;
    cxButton6: TcxButton;
    cbWilayahEntry: TcxDBLookupComboBox;
    N2: TMenuItem;
    CetakLabelKertasLabelBuktiBayarNRegNoBPKBKeyNoRangkaRangkap11: TMenuItem;
    CetakLabelKertasLabelBuktiBayarNRegNoBPKBKeyNoRangkaRangkap21: TMenuItem;
    N3: TMenuItem;
    CetakLabelKertasLabelBuktiBayarNRegNoBPKBKeyNoBPKBRangkap11: TMenuItem;
    CetakLabelKertasLabelBuktiBayarNRegNoBPKBKeyNoBPKBRangkap21: TMenuItem;
    uniSPTampil2: TUniStoredProc;
    procedure dtTglClick(Sender: TObject);
    procedure eNoRegBPKBAwalClick(Sender: TObject);
    procedure eNoBPKBAwalClick(Sender: TObject);
    procedure eNoRegBPKBAkhirClick(Sender: TObject);
    procedure eNoBPKBAkhirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bTampilDataMaterialClick(Sender: TObject);
    procedure pBuatLabelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton4Click(Sender: TObject);
    procedure bTampilDataClick(Sender: TObject);
    procedure bBuatLabelClick(Sender: TObject);
    procedure cbJenisPenerbitanPropertiesChange(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure bCetakKertasLeterClick(Sender: TObject);
    procedure bCetakKertasLabelClick(Sender: TObject);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure DELETESELECT1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CetakLabelKertasLabelRangkap11Click(Sender: TObject);
    procedure CetakLabelKertasLabelRangkap21Click(Sender: TObject);
    procedure CetakLabelKertasLabelKeyNoBPKB1Click(Sender: TObject);
    procedure CetakLabelKertasLabelKeyNoBPKBRangkap21Click(
      Sender: TObject);
    procedure CetakLabelKertasLabelBuktiBayarNRegNoBPKBKeyNoRangkaRangkap11Click(
      Sender: TObject);
    procedure CetakLabelKertasLabelBuktiBayarNRegNoBPKBKeyNoRangkaRangkap21Click(
      Sender: TObject);
    procedure CetakLabelKertasLabelBuktiBayarNRegNoBPKBKeyNoBPKBRangkap11Click(
      Sender: TObject);
    procedure CetakLabelKertasLabelBuktiBayarNRegNoBPKBKeyNoBPKBRangkap21Click(
      Sender: TObject);
    procedure dtTgl2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TampilAwal;
    procedure RefreshData;
    procedure CetakBarcodeLabel(vbarcode,vNoBPKB,vtgl,vNoReg,vJnsKendaraan : String);
    procedure CetakBarcodeLabelRangkap2(vbarcode,vNoBPKB,vtgl,vNoReg,vJnsKendaraan : String);
    procedure DeleteRecord(vBerkasID,vNoBPKB : String);
    procedure RefreshDataWilayah;
    procedure InsertDataDelete(vBerkasID:String);
    procedure RefreshDataCetakBRI;
    procedure CetakBarcodeLabelPlusBRI(vbarcode,vNoBPKB,vtgl,vNoReg,vJnsKendaraan,vBRIBarcode,vBRINo,vBRItglKeluar,vBRIJnsPenerbitan : String);
    procedure CetakBarcodeLabelBRI(vbarcode,vNoUrut,vtgl,vJnsKendaraan : String);
  end;

var
  fLabelBPKB: TfLabelBPKB;

implementation
uses
  uDM, uModul, uVariabel, uMain, APUtilCrpt, uSetting, uTunggu, uWait;
{$R *.dfm}

{ TfLabelBPKB }

procedure TfLabelBPKB.RefreshData;
var
  isGet,vTemp : String;
begin
  fWait.Show;
  Application.ProcessMessages;
  if rbTgl.Checked = True then
     isGet := '0'
  else if rbNoReg.Checked = True then
     isGet := '1'
  else if rbNoBPKB.Checked = True then
     isGet := '2';

  if cbJenisPenerbitan2.ItemIndex+1 = 10 then
     vTemp := 'A'
  else
     vTemp := IntToStr(cbJenisPenerbitan2.ItemIndex+1);

  //DM.dbSrv.StartTransaction;
  with uniSPTampil do
  begin
    Active := False;
    StoredProcName := 'BPKB_GET_LIST_LABEL2'; //'BPKB_GET_LIST_LABEL'
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_is_get',ptinput).AsString := isGet;
      Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
      Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID; // tidak dipakai lagi, kerena akan menampilkan semua data
      Params.CreateParam(ftString,'v_tgl_proses',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
      Params.CreateParam(ftString,'v_nreg_awal',ptinput).AsString := eNoRegBPKBAwal.Text;
      Params.CreateParam(ftString,'v_nreg_akhir',ptinput).AsString := eNoRegBPKBAkhir.Text;
      Params.CreateParam(ftString,'v_no_bpkb_awal',ptinput).AsString := eNoBPKBAwal.Text;
      Params.CreateParam(ftString,'v_no_bpkb_akhir',ptinput).AsString := eNoBPKBAkhir.Text;
      Params.CreateParam(ftString,'v_jns_penerbitan',ptinput).AsString := vTemp;
      Params.CreateParam(ftString,'v_tgl_proses2',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl2.Date);
      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      //Active := True;
      //DM.dbSrv.Commit;
      fWait.Hide;
      Application.ProcessMessages;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,.. BPKB_GET_LIST_LABEL%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfLabelBPKB.TampilAwal;
begin
  dtTgl.Date := TTglSrvSkr;
  dtTgl2.Date := TTglSrvSkr;
  eNoRegBPKBAwal.Text := '';
  eNoRegBPKBAkhir.Text := '';
  eNoBPKBAwal.Text := '';
  eNoBPKBAkhir.Text := '';
  rbTgl.Checked := True;
  RefreshDataWilayah;
  cbWilayahEntry.ItemIndex := -1;
  cbJenisPenerbitan2.SetFocus;
end;

procedure TfLabelBPKB.dtTglClick(Sender: TObject);
begin
  rbTgl.Checked := True;
end;

procedure TfLabelBPKB.eNoRegBPKBAwalClick(Sender: TObject);
begin
  rbNoReg.Checked := True;
end;

procedure TfLabelBPKB.eNoBPKBAwalClick(Sender: TObject);
begin
  rbNoBPKB.Checked := True;
end;

procedure TfLabelBPKB.eNoRegBPKBAkhirClick(Sender: TObject);
begin
  rbNoReg.Checked := True;
end;

procedure TfLabelBPKB.eNoBPKBAkhirClick(Sender: TObject);
begin
  rbNoBPKB.Checked := True;
end;

procedure TfLabelBPKB.FormShow(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfLabelBPKB.bTampilDataMaterialClick(Sender: TObject);
begin
  RefreshData;
end;

procedure TfLabelBPKB.pBuatLabelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(pBuatLabel.Handle, wm_SysCommand,$f012,0);
end;

procedure TfLabelBPKB.cxButton4Click(Sender: TObject);
begin
  pBuatLabel.Visible := False;
end;

procedure TfLabelBPKB.bTampilDataClick(Sender: TObject);
begin
  if cbJenisPenerbitan2.Text <> '' then
     RefreshData
  else
  begin
    MessageDlgError('JENIS PENERBITAN LABEL BPKB HARUS DIPILIH TERLEBIH DAHULU');
    cbJenisPenerbitan2.SetFocus;
  end;
end;

procedure TfLabelBPKB.bBuatLabelClick(Sender: TObject);
begin
  //cbJenisPenerbitan.ItemIndex := -1;
  cbBPKBKosong.Checked := False;
  eSeriBPKB.Text := vSeriBPKB;
  eKdWilayah.Text := vKdWilayahBPKB;
  eNoAwalBPKB.Text := '';
  eNoAkhirBPKB.Text := '';
  if FormatDateTime('yyyymm',dtTgl.Date)=FormatDateTime('yyyymm',TTglSrvSkr) then
     eBLTHNRegBPKB.Text := vBLTHNRegBPKB
  else
     eBLTHNRegBPKB.Text := '/'+IntToRoman(StrToInt(FormatDateTime('mm',dtTgl.Date)))+'/'+FormatDateTime('yyyy',dtTgl.Date);//vBLTHNRegBPKB;
  eAkhrianNRegBPKb.Text := vAkhiranNRegBPKB;
  eNoAwalNRegBPKB.Text := '';
  dtTglDikeluarkan.Date := dtTgl.Date;
  eJMLBuku.Text := '10';
  Application.ProcessMessages;
  pBuatLabel.Left := 29;
  pBuatLabel.Top := 64;
  pBuatLabel.Visible := True;
end;

procedure TfLabelBPKB.cbJenisPenerbitanPropertiesChange(Sender: TObject);
var
  uniSP : TUniStoredProc;
  vTemp : String;
begin
  try
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.Active := False;
    uniSP.StoredProcName := 'bpkb_get_last_number_label2';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_polda_id',ptinput).AsString := vPOLDAID;
      uniSP.Params.CreateParam(ftString,'v_polres_id',ptinput).AsString := vPOLRESID;
      if cbJenisPenerbitan.ItemIndex + 1 = 10 then
         vTemp := 'A'
      else
         vTemp := IntToStr(cbJenisPenerbitan.ItemIndex + 1);
      uniSP.Params.CreateParam(ftString,'v_jns_penerbitan',ptinput).AsString := vTemp;  //IntToStr(cbJenisPenerbitan.ItemIndex + 1);
      uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      uniSP.Open;
      if uniSP.RecordCount > 0 then
      begin
        eNoAwalBPKB.Text := uniSP.Fields[0].AsString;
        eNoAwalNRegBPKB.Text := uniSP.Fields[1].AsString;
        eNoAwalBPKB.SetFocus;
      end
      else
      begin
        eNoAwalBPKB.Text := '00000001';
        eNoAwalNRegBPKB.Text := '0000001';
      end;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,.. bpkb_get_last_number_label2%Error '+E.Message);
    end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfLabelBPKB.cxButton6Click(Sender: TObject);
var
  uniSP : TUniStoredProc;
  Is_no_bpkb_null : String;
  vTemp : String;
begin
  if MessageDlg('Yakin data akan diciptakan?',mtConfirmation,[mbYes,mbNO],0)=mrYes then
  begin
    try
      fWait.Show;
      Application.ProcessMessages;
      if cbBPKBKosong.Checked = True then
         Is_no_bpkb_null := '0'
      else
         Is_no_bpkb_null := '1';

      uniSP := TUniStoredProc.Create(Application);
      uniSP.Connection := DM.dbSrv;
      uniSP.Close;
      uniSP.StoredProcName := 'bpkb_create_label';
      try
        uniSP.Params.Clear;
        uniSP.Params.CreateParam(ftString,'v_polda_id',ptInput).AsString := vPOLDAID;
        uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := cbWilayahEntry.EditValue; //vPOLRESID;
        if cbJenisPenerbitan.ItemIndex+1 = 10 then
           vTemp := 'A'
        else
           vTemp := IntToStr(cbJenisPenerbitan.ItemIndex+1);
        uniSP.Params.CreateParam(ftstring,'v_jenis_penerbitan',ptinput).AsString := vTemp; //IntToStr(cbJenisPenerbitan.ItemIndex+1);
        uniSP.Params.CreateParam(ftString,'v_is_no_bpkb_null',ptInput).AsString := Is_no_bpkb_null;
        uniSP.Params.CreateParam(ftString,'v_seri_bpkb',ptInput).AsString := eSeriBPKB.Text;
        uniSP.Params.CreateParam(ftString,'v_kd_wil_bpkb',ptInput).AsString := eKdWilayah.Text;
        uniSP.Params.CreateParam(ftString,'v_no_awal_bpkb',ptInput).AsString := eNoAwalBPKB.Text;
        uniSP.Params.CreateParam(ftString,'v_bln_th_reg',ptInput).AsString := eBLTHNRegBPKB.Text;
        uniSP.Params.CreateParam(ftString,'v_akhiran_reg',ptInput).AsString := eAkhrianNRegBPKb.Text;
        uniSP.Params.CreateParam(ftString,'v_no_nreg_awal',ptInput).AsString := eNoAwalNRegBPKB.Text;
        uniSP.Params.CreateParam(ftString,'v_tgl_proses',ptInput).AsString := FormatDateTime('yyyymmdd',dtTglDikeluarkan.Date);
        uniSP.Params.CreateParam(ftString,'v_jml_data',ptInput).AsString := eJMLBuku.Text;
        if isTreaceLog='1' then
        begin
          log('Start --Pembuatan Label');
          log('v_polda_id : '+vPOLDAID);
          log('v_polres_id : '+cbWilayahEntry.EditValue); //vPOLRESID;
          log('v_jenis_penerbitan : '+vTemp); //IntToStr(cbJenisPenerbitan.ItemIndex+1);
          log('v_is_no_bpkb_null : '+Is_no_bpkb_null);
          log('v_seri_bpkb : '+eSeriBPKB.Text);
          log('v_kd_wil_bpkb : '+eKdWilayah.Text);
          log('v_no_awal_bpkb : '+eNoAwalBPKB.Text);
          log('v_bln_th_reg : '+eBLTHNRegBPKB.Text);
          log('v_akhiran_reg : '+eAkhrianNRegBPKb.Text);
          log('v_no_nreg_awal : '+eNoAwalNRegBPKB.Text);
          log('v_tgl_proses : '+FormatDateTime('yyyymmdd',dtTglDikeluarkan.Date));
          log('v_jml_data : '+eJMLBuku.Text);
          log('End --Pembuatan Label');
        end;
        uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
        uniSP.ExecProc;

        // ciptakan no pembayaran bri
        Application.ProcessMessages;
        uniSP.Close;
        uniSP.StoredProcName := 'bri_create_label';
        try
          uniSP.Params.Clear;
          if cbJenisPenerbitan.ItemIndex+1 = 10 then
             vTemp := 'A'
          else
             vTemp := IntToStr(cbJenisPenerbitan.ItemIndex+1);
          uniSP.Params.CreateParam(ftstring,'v_jenis_penerbitan',ptinput).AsString := vTemp; //IntToStr(cbJenisPenerbitan.ItemIndex+1);
          uniSP.Params.CreateParam(ftString,'v_tgl_proses',ptInput).AsString := FormatDateTime('yyyymmdd',dtTglDikeluarkan.Date);
          uniSP.Params.CreateParam(ftString,'v_jml_data',ptInput).AsString := eJMLBuku.Text;
          uniSP.Params.CreateParam(ftString,'v_bln_th_reg',ptInput).AsString := IntToRoman(StrToInt(FormatDateTime('MM',dtTglDikeluarkan.Date)))+
                                                                                FormatDateTime('YYYY',dtTglDikeluarkan.Date);
          if Pos('R2',cbJenisPenerbitan.Text) > 0 then
             uniSP.Params.CreateParam(ftString,'v_pnbp',ptInput).AsCurrency := vPNBPR2
          else if Pos('R4',cbJenisPenerbitan.Text) > 0 then
             uniSP.Params.CreateParam(ftString,'v_pnbp',ptInput).AsCurrency := vPNBPR4
          else
             uniSP.Params.CreateParam(ftString,'v_pnbp',ptInput).AsCurrency := 0;
          uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
          uniSP.ExecProc;
        except on E:Exception do
        begin
          ErrorProgDialog('Error,..bri_create_label.ExecProc Ket Error :'+E.Message);
        end;
        end;

        fWait.Hide;
        Application.ProcessMessages;
        ShowMessage('Response From Sever : '+ uniSP.Params.ParamValues['RESULT']);
        bTampilDataMaterial.Click;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..bpkb_create_label.ExecProc Ket Error :'+E.Message);
      end;
      end;
    finally
      FreeAndNil(uniSP);
    end;
  end;
end;

procedure TfLabelBPKB.bCetakKertasLeterClick(Sender: TObject);
begin
  if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
  begin
    frxDBDataset1.DataSet := uniSPTampil;
    frxReport.Clear;
    frxReport.LoadFromFile(RootPath+'\label_nreg.fr3');
    if TReport='1' then
    begin
      frxReport.DesignReport();
    end
    else
    begin
      frxReport.ShowReport();
    end;
  end;
end;

procedure TfLabelBPKB.CetakBarcodeLabel(vbarcode, vNoBPKB, vtgl, vNoReg,
  vJnsKendaraan: String);
Var
  F:TextFile;
begin
  {AssignPrn(F);
  Rewrite(F);
  WriteLn(F,'^XA');
  WriteLn(F,'^FO160,30');
  //WriteLn(F,'^FO80,40');
  WriteLn(F,'^BCN,80,N,N,N');
  WriteLn(F,'^BY2,2.0');
  WriteLn(F,'^FD'+vbarcode+'^FS');
  WriteLn(F,'^FO230,115');
  WriteLn(F,'^ADN,36,20^FD'+vNoBPKB+'^FS');
  WriteLn(F,'^FO150,167');
  WriteLn(F,'^ADN^FDTanggal^FS');
  WriteLn(F,'^FO325,167');
  WriteLn(F,'^ADN^FD: '+vtgl+'^FS');
  WriteLn(F,'^FO150,193');
  WriteLn(F,'^ADN^FDNo. Reg. BPKB^FS');
  WriteLn(F,'^FO325,193');
  WriteLn(F,'^ADN^FD: '+vNoReg+'^FS');
  WriteLn(F,'^FO580,140');
  WriteLn(F,'^ADN,36,25^FD'+vJnsKendaraan+'^FS');
  WriteLn(F,'^XZ');}
  AssignPrn(F);
  Rewrite(F);
  WriteLn(F,'^XA');
  WriteLn(F,'^FO80,30');
  WriteLn(F,'^BCN,80,N,N,N');
  WriteLn(F,'^BY2,2.0');
  WriteLn(F,'^FD'+vbarcode+'^FS');
  WriteLn(F,'^FO199,115');
  WriteLn(F,'^ADN,36,20^FD'+vNoBPKB+'^FS');
  WriteLn(F,'^FO50,167');
  WriteLn(F,'^ADN^FDTanggal^FS');
  WriteLn(F,'^FO225,167');
  WriteLn(F,'^ADN^FD: '+vtgl+'^FS');
  WriteLn(F,'^FO50,193');
  WriteLn(F,'^ADN^FDNo. Reg. BPKB^FS');
  WriteLn(F,'^FO225,193');
  WriteLn(F,'^ADN^FD: '+vNoReg+'^FS');
  WriteLn(F,'^FO500,140');
  WriteLn(F,'^ADN,36,25^FD'+vJnsKendaraan+'^FS');
  WriteLn(F,'^XZ');
  CloseFile(F);
end;

procedure TfLabelBPKB.bCetakKertasLabelClick(Sender: TObject);
var
   p : TPoint;
begin
   with Sender as TButton do
   begin
      if PopupMenu2 = nil then
         beep
      else
         begin
            GetCursorPos( p );
            p.x := Left + 1;
            p.y := Top + Height + 1;
            p := Self.ClientToScreen( p );
            PopupMenu2.popup( p.x, p.y );
         end;
   end;
end;

procedure TfLabelBPKB.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if (ARecord is TcxGridDataRow) and (ARecord.Values[6] = '1') then
      AStyle := DM.cxStyleRead;
end;

procedure TfLabelBPKB.DeleteRecord(vBerkasID,vNoBPKB: String);
begin
  with DM.Q do
  begin
    Close;
    SQL.Text := 'INSERT INTO T_BERKAS_DELETE SELECT * FROM T_BERKAS WHERE BERKAS_ID=:BERKAS_ID AND IS_PROSES IS NULL';
    Params[0].AsString := vBerkasID;
    Execute;
    
    Close;
    SQL.Text := 'DELETE FROM T_BERKAS WHERE BERKAS_ID=:BERKAS_ID AND IS_PROSES IS NULL';
    Params[0].AsString := vBerkasID;
    Execute;
    LogDelete('DELETE BERKAS BPKB, NO BPKB '+vBerkasID+'# USER PETUGAS '+vNamaPetugas);
  end;
end;

procedure TfLabelBPKB.DELETESELECT1Click(Sender: TObject);
var
  I: Integer;
begin
  if MessageDlg('Yakin data berkas akan dihapus?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    for I := 0 to cxGridDBTableView1.Controller.SelectedRecordCount - 1 do
      DeleteRecord(cxGridDBTableView1.Controller.SelectedRecords[I].Values[0],''); //cxGridDBTableView1.Controller.SelectedRecords[I].Values[2]
  end;
  bTampilData.Click;
  cxGrid.SetFocus;
end;

procedure TfLabelBPKB.FormCreate(Sender: TObject);
begin
  AktifModeIndonesia;
end;

procedure TfLabelBPKB.CetakLabelKertasLabelRangkap11Click(Sender: TObject);
begin
  if MessageDlg('Yakin data akan dicetak dalam kertas label?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
    begin
      uniSPTampil.First;
      while not uniSPTampil.Eof do
      begin
        CetakBarcodeLabel(uniSPTampil.FieldByName('barcode_data').AsString,uniSPTampil.FieldByName('no_bpkb').AsString,
                          uniSPTampil.FieldByName('TGL_KELUAR2').AsString,
                          uniSPTampil.FieldByName('nreg_bpkb').AsString,uniSPTampil.FieldByName('jns_kendaraan').AsString);
        Application.ProcessMessages;
      uniSPTampil.Next;
      end;
    end;
  end;
end;

procedure TfLabelBPKB.CetakBarcodeLabelRangkap2(vbarcode, vNoBPKB, vtgl,
  vNoReg, vJnsKendaraan: String);
Var
  F:TextFile;
begin
  {AssignPrn(F);
  Rewrite(F);
  WriteLn(F,'^XA');
  WriteLn(F,'^FO160,30');
  //WriteLn(F,'^FO80,40');
  WriteLn(F,'^BCN,80,N,N,N');
  WriteLn(F,'^BY2,2.0');
  WriteLn(F,'^FD'+vbarcode+'^FS');
  WriteLn(F,'^FO230,115');
  WriteLn(F,'^ADN,36,20^FD'+vNoBPKB+'^FS');
  WriteLn(F,'^FO150,167');
  WriteLn(F,'^ADN^FDTanggal^FS');
  WriteLn(F,'^FO325,167');
  WriteLn(F,'^ADN^FD: '+vtgl+'^FS');
  WriteLn(F,'^FO150,193');
  WriteLn(F,'^ADN^FDNo. Reg. BPKB^FS');
  WriteLn(F,'^FO325,193');
  WriteLn(F,'^ADN^FD: '+vNoReg+'^FS');
  WriteLn(F,'^FO580,140');
  WriteLn(F,'^ADN,36,25^FD'+vJnsKendaraan+'^FS');
  WriteLn(F,'^XZ');}
  AssignPrn(F);
  Rewrite(F);
  WriteLn(F,'^XA');
  WriteLn(F,'^FO80,30');
  WriteLn(F,'^BCN,80,N,N,N');
  WriteLn(F,'^BY2,2.0');
  WriteLn(F,'^FD'+vbarcode+'^FS');
  WriteLn(F,'^FO149,115');
  WriteLn(F,'^ADN,36,20^FD'+vNoBPKB+'^FS');
  WriteLn(F,'^FO50,167');
  WriteLn(F,'^ADN^FDTanggal^FS');
  WriteLn(F,'^FO225,167');
  WriteLn(F,'^ADN^FD: '+vtgl+'^FS');
  WriteLn(F,'^FO50,193');
  WriteLn(F,'^ADN^FDNo. Reg. BPKB^FS');
  WriteLn(F,'^FO225,193');
  WriteLn(F,'^ADN^FD: '+vNoReg+'^FS');
  WriteLn(F,'^FO450,140');
  WriteLn(F,'^ADN,36,25^FD'+vJnsKendaraan+'(B)^FS');
  WriteLn(F,'^XZ');
  CloseFile(F);

  AssignPrn(F);
  Rewrite(F);
  WriteLn(F,'^XA');
  WriteLn(F,'^FO80,30');
  WriteLn(F,'^BCN,80,N,N,N');
  WriteLn(F,'^BY2,2.0');
  WriteLn(F,'^FD'+vbarcode+'^FS');
  WriteLn(F,'^FO149,115');
  WriteLn(F,'^ADN,36,20^FD'+vNoBPKB+'^FS');
  WriteLn(F,'^FO50,167');
  WriteLn(F,'^ADN^FDTanggal^FS');
  WriteLn(F,'^FO225,167');
  WriteLn(F,'^ADN^FD: '+vtgl+'^FS');
  WriteLn(F,'^FO50,193');
  WriteLn(F,'^ADN^FDNo. Reg. BPKB^FS');
  WriteLn(F,'^FO225,193');
  WriteLn(F,'^ADN^FD: '+vNoReg+'^FS');
  WriteLn(F,'^FO450,140');
  WriteLn(F,'^ADN,36,25^FD'+vJnsKendaraan+'(S)^FS');
  WriteLn(F,'^XZ');
  CloseFile(F);
end;

procedure TfLabelBPKB.CetakLabelKertasLabelRangkap21Click(Sender: TObject);
begin
  if MessageDlg('Yakin data akan dicetak dalam kertas label?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
    begin
      uniSPTampil.First;
      while not uniSPTampil.Eof do
      begin
        CetakBarcodeLabelRangkap2(uniSPTampil.FieldByName('barcode_data').AsString,uniSPTampil.FieldByName('no_bpkb').AsString,
                          uniSPTampil.FieldByName('TGL_KELUAR2').AsString,
                          uniSPTampil.FieldByName('nreg_bpkb').AsString,uniSPTampil.FieldByName('jns_kendaraan').AsString);
        Application.ProcessMessages;
      uniSPTampil.Next;
      end;
    end;
  end;
end;

procedure TfLabelBPKB.CetakLabelKertasLabelKeyNoBPKB1Click(
  Sender: TObject);
begin
  if MessageDlg('Yakin data akan dicetak dalam kertas label?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
    begin
      uniSPTampil.First;
      while not uniSPTampil.Eof do
      begin
        CetakBarcodeLabel(uniSPTampil.FieldByName('no_bpkb').AsString,uniSPTampil.FieldByName('no_bpkb').AsString,
                          uniSPTampil.FieldByName('TGL_KELUAR2').AsString,
                          uniSPTampil.FieldByName('nreg_bpkb').AsString,uniSPTampil.FieldByName('jns_kendaraan').AsString);
        Application.ProcessMessages;
      uniSPTampil.Next;
      end;
    end;
  end;
end;

procedure TfLabelBPKB.CetakLabelKertasLabelKeyNoBPKBRangkap21Click(
  Sender: TObject);
begin
  if MessageDlg('Yakin data akan dicetak dalam kertas label?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
    begin
      uniSPTampil.First;
      while not uniSPTampil.Eof do
      begin
        CetakBarcodeLabelRangkap2(uniSPTampil.FieldByName('no_bpkb').AsString,uniSPTampil.FieldByName('no_bpkb').AsString,
                          uniSPTampil.FieldByName('TGL_KELUAR2').AsString,
                          uniSPTampil.FieldByName('nreg_bpkb').AsString,uniSPTampil.FieldByName('jns_kendaraan').AsString);
        Application.ProcessMessages;
      uniSPTampil.Next;
      end;
    end;
  end;
end;

procedure TfLabelBPKB.RefreshDataWilayah;
begin
  QWil1.Close;
  QWil1.SQL.Text := 'select to_char(POLRES_KODE) as wilayah_kode,POLRES_NAMA as wilayah_nama from M_POLRES where POLDA_ID=:POLDA_ID order by POLRES_KODE';
  QWil1.Params[0].AsString := vPOLDAID;
  QWil1.Open;

  QWil2.Close;
  QWil2.SQL.Text := 'select to_char(POLRES_KODE) as wilayah_kode,POLRES_NAMA as wilayah_nama from M_POLRES where POLDA_ID=:POLDA_ID order by POLRES_KODE';
  QWil2.Params[0].AsString := vPOLDAID;
  QWil2.Open;
end;

procedure TfLabelBPKB.InsertDataDelete(vBerkasID: String);
begin
  with Q do
  begin
    Close;
    SQL.Text := 'insert into t_berkas_delete select * from t_berkas where berkas_id=:berkas';
    Params[0].AsString := vBerkasID;
    Execute;
  end;
end;

procedure TfLabelBPKB.RefreshDataCetakBRI;
var
  isGet,vTemp : String;
begin
  fWait.Show;
  Application.ProcessMessages;
  isGet := '0';

  if cbJenisPenerbitan2.ItemIndex+1 = 10 then
     vTemp := 'A'
  else
     vTemp := IntToStr(cbJenisPenerbitan2.ItemIndex+1);

  with uniSPTampil2 do
  begin
    Active := False;
    StoredProcName := 'BRI_GET_LIST_CETAK';
    try
      Params.Clear;
      Params.CreateParam(ftString,'v_is_get',ptinput).AsString := isGet;
      Params.CreateParam(ftString,'v_tgl_proses',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl.Date);
      Params.CreateParam(ftString,'v_tgl_proses2',ptinput).AsString := FormatDateTime('yyyymmdd',dtTgl2.Date);
      Params.CreateParam(ftString,'v_no_awal',ptinput).AsString := '';
      Params.CreateParam(ftString,'v_no_akhir',ptinput).AsString := '';
      Params.CreateParam(ftString,'v_jns_penerbitan',ptinput).AsString := vTemp;

      Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
      Open;
      fWait.Hide;
      Application.ProcessMessages;
    except on E:Exception do
    begin
      ErrorProgDialog('Error,.. BRI_GET_LIST_CETAK%Error '+E.Message);
    end;
    end;
  end;
end;

procedure TfLabelBPKB.CetakLabelKertasLabelBuktiBayarNRegNoBPKBKeyNoRangkaRangkap11Click(
  Sender: TObject);
begin
  if MessageDlg('Yakin data akan dicetak dalam kertas label?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
    begin
      uniSPTampil.First;
      while not uniSPTampil.Eof do
      begin
        CetakBarcodeLabel(uniSPTampil.FieldByName('barcode_data').AsString,uniSPTampil.FieldByName('no_bpkb').AsString,
                                 uniSPTampil.FieldByName('TGL_KELUAR2').AsString,
                                 uniSPTampil.FieldByName('nreg_bpkb').AsString,uniSPTampil.FieldByName('jns_kendaraan').AsString);
        Application.ProcessMessages;
      uniSPTampil.Next;
      end;

      // cetak label bri
      RefreshDataCetakBRI;

      if (uniSPTampil2.Active) and (uniSPTampil2.RecordCount > 0) then
      begin
        uniSPTampil2.First;
        while not uniSPTampil2.Eof do
        begin
          CetakBarcodeLabelBRI(uniSPTampil2.FieldByName('BRI_BARCODE').AsString,
                            uniSPTampil2.FieldByName('BRI_NO').AsString,
                            uniSPTampil2.FieldByName('TGL_KELUAR').AsString,
                            uniSPTampil2.FieldByName('JNS_PENERBITAN').AsString);

          // update status cetak

          Q.Close;
          Q.SQL.Text := 'UPDATE T_BRI SET IS_PROSES=''1'' WHERE BRI_BARCODE=:BRI';
          try
            Q.Params[0].AsString := uniSPTampil2.FieldByName('BRI_BARCODE').AsString;
            Q.Execute;
          except on E: Exception do
          begin
            ErrorProgDialog('Error,.. update status cetak barcode bri%Error '+E.Message);
          end;
          end;
          Application.ProcessMessages;
          //RefreshData;
        uniSPTampil2.Next;
        end;
      end;
    end;
  end;
end;

procedure TfLabelBPKB.CetakBarcodeLabelPlusBRI(vbarcode, vNoBPKB, vtgl,
  vNoReg, vJnsKendaraan, vBRIBarcode, vBRINo, vBRItglKeluar,
  vBRIJnsPenerbitan: String);
Var
  F:TextFile;
begin
  AssignPrn(F);
  Rewrite(F);
  WriteLn(F,'^XA');
  WriteLn(F,'^FO80,30');
  WriteLn(F,'^BCN,80,N,N,N');
  WriteLn(F,'^BY2,2.0');
  WriteLn(F,'^FD'+vbarcode+'^FS');
  WriteLn(F,'^FO199,115');
  WriteLn(F,'^ADN,36,20^FD'+vNoBPKB+'^FS');
  WriteLn(F,'^FO50,167');
  WriteLn(F,'^ADN^FDTanggal^FS');
  WriteLn(F,'^FO225,167');
  WriteLn(F,'^ADN^FD: '+vtgl+'^FS');
  WriteLn(F,'^FO50,193');
  WriteLn(F,'^ADN^FDNo. Reg. BPKB^FS');
  WriteLn(F,'^FO225,193');
  WriteLn(F,'^ADN^FD: '+vNoReg+'^FS');
  WriteLn(F,'^FO500,140');
  WriteLn(F,'^ADN,36,25^FD'+vJnsKendaraan+'^FS');
  WriteLn(F,'^XZ');
  CloseFile(F);

  AssignPrn(F);
  Rewrite(F);
  WriteLn(F,'^XA');
  WriteLn(F,'^FO80,30');
  WriteLn(F,'^BCN,80,N,N,N');
  WriteLn(F,'^BY2,2.0');
  WriteLn(F,'^FD'+vBRIBarcode+'^FS');
  WriteLn(F,'^FO199,115');
  WriteLn(F,'^ADN,36,20^FD'+vBRINo+'^FS');
  WriteLn(F,'^FO50,167');
  WriteLn(F,'^ADN^FDTanggal^FS');
  WriteLn(F,'^FO225,167');
  WriteLn(F,'^ADN^FD: '+vBRItglKeluar+'^FS');
  WriteLn(F,'^FO50,193');
  WriteLn(F,'^ADN^FDNo. Barcode ^FS');
  WriteLn(F,'^FO225,193');
  WriteLn(F,'^ADN^FD: '+vBRIBarcode+'^FS');
  WriteLn(F,'^FO500,140');
  WriteLn(F,'^ADN,36,25^FD'+vBRIJnsPenerbitan+'^FS');
  WriteLn(F,'^XZ');
  CloseFile(F);
end;

procedure TfLabelBPKB.CetakBarcodeLabelBRI(vbarcode, vNoUrut, vtgl,
  vJnsKendaraan: String);
Var
  F:TextFile;
begin
  AssignPrn(F);
  Rewrite(F);
  WriteLn(F,'^XA');
  WriteLn(F,'^FO80,30');
  WriteLn(F,'^BCN,80,N,N,N');
  WriteLn(F,'^BY2,2.0');
  WriteLn(F,'^FD'+vbarcode+'^FS');
  WriteLn(F,'^FO50,115');
  WriteLn(F,'^ADN,36,20^FD'+'PNBP - '+vNoUrut+'^FS');
  WriteLn(F,'^FO50,167');
  WriteLn(F,'^ADN^FDTanggal^FS');
  WriteLn(F,'^FO225,167');
  WriteLn(F,'^ADN^FD: '+vtgl+'^FS');
  WriteLn(F,'^FO50,193');
  WriteLn(F,'^ADN^FDKD. Bayar ^FS');
  WriteLn(F,'^FO225,193');
  WriteLn(F,'^ADN^FD: '+vbarcode+'^FS');
  WriteLn(F,'^FO500,140');
  WriteLn(F,'^ADN,36,25^FD'+vJnsKendaraan+'^FS');
  WriteLn(F,'^XZ');
  CloseFile(F);
end;

procedure TfLabelBPKB.CetakLabelKertasLabelBuktiBayarNRegNoBPKBKeyNoRangkaRangkap21Click(
  Sender: TObject);
begin
  if MessageDlg('Yakin data akan dicetak dalam kertas label?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
    begin
      uniSPTampil.First;
      while not uniSPTampil.Eof do
      begin
        CetakBarcodeLabelRangkap2(uniSPTampil.FieldByName('no_bpkb').AsString,uniSPTampil.FieldByName('no_bpkb').AsString,
                          uniSPTampil.FieldByName('TGL_KELUAR2').AsString,
                          uniSPTampil.FieldByName('nreg_bpkb').AsString,uniSPTampil.FieldByName('jns_kendaraan').AsString);
        Application.ProcessMessages;
      uniSPTampil.Next;
      end;
    end;

    // cetak label bri
    RefreshDataCetakBRI;

    if (uniSPTampil2.Active) and (uniSPTampil2.RecordCount > 0) then
    begin
      uniSPTampil2.First;
      while not uniSPTampil2.Eof do
      begin
        CetakBarcodeLabelBRI(uniSPTampil2.FieldByName('BRI_BARCODE').AsString,
                          uniSPTampil2.FieldByName('BRI_NO').AsString,
                          uniSPTampil2.FieldByName('TGL_KELUAR').AsString,
                          uniSPTampil2.FieldByName('JNS_PENERBITAN').AsString);

        // update status cetak

        Q.Close;
        Q.SQL.Text := 'UPDATE T_BRI SET IS_PROSES=''1'' WHERE BRI_BARCODE=:BRI';
        try
          Q.Params[0].AsString := uniSPTampil2.FieldByName('BRI_BARCODE').AsString;
          Q.Execute;
        except on E: Exception do
        begin
          ErrorProgDialog('Error,.. update status cetak barcode bri%Error '+E.Message);
        end;
        end;
        Application.ProcessMessages;
        //RefreshData;
      uniSPTampil2.Next;
      end;
    end;
  end;
end;

procedure TfLabelBPKB.CetakLabelKertasLabelBuktiBayarNRegNoBPKBKeyNoBPKBRangkap11Click(
  Sender: TObject);
begin
  if MessageDlg('Yakin data akan dicetak dalam kertas label?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
    begin
      uniSPTampil.First;
      while not uniSPTampil.Eof do
      begin
        CetakBarcodeLabel(uniSPTampil.FieldByName('no_bpkb').AsString,uniSPTampil.FieldByName('no_bpkb').AsString,
                          uniSPTampil.FieldByName('TGL_KELUAR2').AsString,
                          uniSPTampil.FieldByName('nreg_bpkb').AsString,uniSPTampil.FieldByName('jns_kendaraan').AsString);
        Application.ProcessMessages;
      uniSPTampil.Next;
      end;
    end;

    // cetak label bri
    RefreshDataCetakBRI;

    if (uniSPTampil2.Active) and (uniSPTampil2.RecordCount > 0) then
    begin
      uniSPTampil2.First;
      while not uniSPTampil2.Eof do
      begin
        CetakBarcodeLabelBRI(uniSPTampil2.FieldByName('BRI_BARCODE').AsString,
                          uniSPTampil2.FieldByName('BRI_NO').AsString,
                          uniSPTampil2.FieldByName('TGL_KELUAR').AsString,
                          uniSPTampil2.FieldByName('JNS_PENERBITAN').AsString);

        // update status cetak

        Q.Close;
        Q.SQL.Text := 'UPDATE T_BRI SET IS_PROSES=''1'' WHERE BRI_BARCODE=:BRI';
        try
          Q.Params[0].AsString := uniSPTampil2.FieldByName('BRI_BARCODE').AsString;
          Q.Execute;
        except on E: Exception do
        begin
          ErrorProgDialog('Error,.. update status cetak barcode bri%Error '+E.Message);
        end;
        end;
        Application.ProcessMessages;
        //RefreshData;
      uniSPTampil2.Next;
      end;
    end;
  end;
end;

procedure TfLabelBPKB.CetakLabelKertasLabelBuktiBayarNRegNoBPKBKeyNoBPKBRangkap21Click(
  Sender: TObject);
begin
  if MessageDlg('Yakin data akan dicetak dalam kertas label?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (uniSPTampil.Active) and (uniSPTampil.RecordCount > 0) then
    begin
      uniSPTampil.First;
      while not uniSPTampil.Eof do
      begin
        CetakBarcodeLabelRangkap2(uniSPTampil.FieldByName('no_bpkb').AsString,uniSPTampil.FieldByName('no_bpkb').AsString,
                          uniSPTampil.FieldByName('TGL_KELUAR2').AsString,
                          uniSPTampil.FieldByName('nreg_bpkb').AsString,uniSPTampil.FieldByName('jns_kendaraan').AsString);
        Application.ProcessMessages;
      uniSPTampil.Next;
      end;
    end;

    // cetak label bri
    RefreshDataCetakBRI;

    if (uniSPTampil2.Active) and (uniSPTampil2.RecordCount > 0) then
    begin
      uniSPTampil2.First;
      while not uniSPTampil2.Eof do
      begin
        CetakBarcodeLabelBRI(uniSPTampil2.FieldByName('BRI_BARCODE').AsString,
                          uniSPTampil2.FieldByName('BRI_NO').AsString,
                          uniSPTampil2.FieldByName('TGL_KELUAR').AsString,
                          uniSPTampil2.FieldByName('JNS_PENERBITAN').AsString);

        // update status cetak

        Q.Close;
        Q.SQL.Text := 'UPDATE T_BRI SET IS_PROSES=''1'' WHERE BRI_BARCODE=:BRI';
        try
          Q.Params[0].AsString := uniSPTampil2.FieldByName('BRI_BARCODE').AsString;
          Q.Execute;
        except on E: Exception do
        begin
          ErrorProgDialog('Error,.. update status cetak barcode bri%Error '+E.Message);
        end;
        end;
        Application.ProcessMessages;
        //RefreshData;
      uniSPTampil2.Next;
      end;
    end;
  end;
end;

procedure TfLabelBPKB.dtTgl2Click(Sender: TObject);
begin
  rbTgl.Checked := True;
end;

end.
