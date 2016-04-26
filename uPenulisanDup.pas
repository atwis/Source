unit uPenulisanDup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, Uni, frxClass, frxDBSet, DB, MemDS, DBAccess,
  frxBarcode, frxDesgn, cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo,
  cxPC, StdCtrls, cxButtons, cxTextEdit, ExtCtrls, Math, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxRadioGroup;

type
  TfPenulisanDup = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    eNoBPKB_CB: TcxTextEdit;
    eNoRangka_CB: TcxTextEdit;
    eNoBarcode_CB: TcxTextEdit;
    bCari_CB: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    eInfoPekerjaan_CB: TcxTextEdit;
    eInfoNoIdentitas_CB: TcxTextEdit;
    eInfoNamaPemilik_CB: TcxMemo;
    eInfoAlamatPemilik_CB: TcxMemo;
    cxTabSheet2: TcxTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    eInfoNopol_CB: TcxTextEdit;
    eInfoMek_CB: TcxTextEdit;
    eInfoTipe_CB: TcxTextEdit;
    eInfoJenis_CB: TcxTextEdit;
    eInfoModel_CB: TcxTextEdit;
    eInfoThnBuat_CB: TcxTextEdit;
    eInfoSilinder_CB: TcxTextEdit;
    eInfoWarna_CB: TcxTextEdit;
    eInfoNoRangka_CB: TcxTextEdit;
    eInfoNoMesin_CB: TcxTextEdit;
    eInfoJmlRoda_CB: TcxTextEdit;
    eInfoJmlSumbu_CB: TcxTextEdit;
    eInfoBB_CB: TcxTextEdit;
    cxTabSheet3: TcxTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    eInfoNoFaktur_CB: TcxTextEdit;
    eInfoTglFaktur_CB: TcxTextEdit;
    eInfoAPM_CB: TcxTextEdit;
    eInfoTglFormAB_CB: TcxTextEdit;
    eInfoKantorBeaCukai_CB: TcxTextEdit;
    eInfoNoSUT_CB: TcxTextEdit;
    eInfoNoTPT_CB: TcxTextEdit;
    eInfoKetLain2_CB: TcxMemo;
    eInfoNoPIB_CB: TcxTextEdit;
    eInfoTglPIB_CB: TcxTextEdit;
    eInfoNoFormAB_CB: TcxTextEdit;
    cxTabSheet4: TcxTabSheet;
    Label33: TLabel;
    Label34: TLabel;
    eInfoDikeluarkanOleh_CB: TcxTextEdit;
    eInfoNRegBPKB2_CB: TcxTextEdit;
    bCetakBuku_CB: TcxButton;
    eX1_CB: TcxTextEdit;
    eY1_CB: TcxTextEdit;
    eX2_CB: TcxTextEdit;
    eY2_CB: TcxTextEdit;
    eX3_CB: TcxTextEdit;
    eY3_CB: TcxTextEdit;
    eX4_CB: TcxTextEdit;
    eY4_CB: TcxTextEdit;
    eInfoNoBPKB_CB: TcxTextEdit;
    eInfoNRegBPKB_CB: TcxTextEdit;
    eInfoTempat_CB: TcxTextEdit;
    eInfoTgl_CB: TcxTextEdit;
    bBaru_CB: TcxButton;
    dtTgl: TcxDateEdit;
    frxReport_CB: TfrxReport;
    frxDesigner1_CB: TfrxDesigner;
    frxBarCodeObject1_CB: TfrxBarCodeObject;
    Q: TUniQuery;
    frxDBDatasetCB: TfrxDBDataset;
    Q2: TUniQuery;
    Q3: TUniQuery;
    uniSPCetak: TUniStoredProc;
    PopupMenu1: TPopupMenu;
    Halaman11: TMenuItem;
    Halaman21: TMenuItem;
    Halaman31: TMenuItem;
    Halaman41: TMenuItem;
    Label44: TLabel;
    rbBukuBaru: TcxRadioButton;
    rbBukuLama: TcxRadioButton;
    cxButton1: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCari_CBClick(Sender: TObject);
    procedure bBaru_CBClick(Sender: TObject);
    procedure bCetakBuku_CBClick(Sender: TObject);
    procedure frxReport_CBBeforePrint(Sender: TfrxReportComponent);
    procedure frxReport_CBGetValue(const VarName: String;
      var Value: Variant);
    procedure Halaman11Click(Sender: TObject);
    procedure Halaman21Click(Sender: TObject);
    procedure Halaman31Click(Sender: TObject);
    procedure Halaman41Click(Sender: TObject);
    procedure eNoBPKB_CBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoRangka_CBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eNoBarcode_CBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    vIsBBN : String;
    vIsCetakTandaTangan : String; // 1=bbn1 R2; 2=bbn1 R4; 3=Balik Nama R2; 4=Balik Nama R4; 5=Perubahan Identitas; 6=Mutasi Luar Daerah;
    vBPKBIDCetakBuku,vBerkasIDCetakBuku : String;
    vPagePosisi : Integer; // posisi cetak buku
  public
    { Public declarations }
    isPersatu : String;
    procedure TampilAwal;
    procedure CariData;
    procedure CekSelisihKoordinat(vX,vY :Real; vPage : integer);
    procedure DuplicateDataKoordinat;
    procedure DuplicateDataKoordinatBukuLama;
    procedure CetakBukuBPKB;
    procedure CetakBukuBPKBPerSatu;
    procedure TahapAwalCetakBuku;
  end;

var
  fPenulisanDup: TfPenulisanDup;

implementation
Uses
  uDM, uVariabel, uModul, uWait, uMain;
{$R *.dfm}

{ TfPenulisanExLD }

procedure TfPenulisanDup.CariData;
var
  uniSP : TUniStoredProc;
begin
  try
    if (rbBukuBaru.Checked=False) and (rbBukuLama.Checked=False) then
    begin
      MessageDlg('JENIS BUKU HARUS DIPILIH TERLEBIH DAHULU',mtError,[mbOK],0);
      rbBukuBaru.SetFocus;
    end
    else
    begin
      fMain.InitIni('1');
      fWait.Show;
      Application.ProcessMessages;
      uniSP := TUniStoredProc.Create(Application);
      uniSP.Connection := DM.dbSrv;
      uniSP.Close;
      if vIsCariLangsung = '0' then
         uniSP.StoredProcName := 'bpkb_get_cetak_bpkb'
      else
         uniSP.StoredProcName := 'bpkb_get_cetak_bpkb2';
      try
        uniSP.Params.Clear;
        uniSP.Params.CreateParam(ftString,'v_polda_id',ptInput).AsString := vPOLDAID;
        uniSP.Params.CreateParam(ftString,'v_polres_id',ptInput).AsString := vPOLRESID;
        uniSP.Params.CreateParam(ftString,'v_no_bpkb',ptInput).AsString := eNoBPKB_CB.Text;
        uniSP.Params.CreateParam(ftString,'v_no_rangka',ptInput).AsString := eNoRangka_CB.Text;
        uniSP.Params.CreateParam(ftString,'v_no_barcode',ptInput).AsString := eNoBarcode_CB.Text;
        uniSP.Params.CreateParam(ftString,'v_bbn',ptInput).AsString := vIsBBN;
        uniSP.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
        uniSP.Active := True;

        if uniSP.RecordCount > 0 then
        begin
          if uniSP.FieldByName('PRINT_PERMIT').AsString = '1' then
          begin
            vBPKBIDCetakBuku := uniSP.FieldByName('BPKB_ID').Text;
            vBerkasIDCetakBuku := uniSP.FieldByName('BERKAS_ID').Text;
            eInfoNoBPKB_CB.Text := uniSP.FieldByName('NO_BPKB').Text;
            eInfoNRegBPKB_CB.Text := uniSP.FieldByName('NREG_BPKB').Text;
            eInfoTempat_CB.Text := uniSP.FieldByName('TEMPAT_KELUAR').Text;
            eInfoTgl_CB.Text := uniSP.FieldByName('TGL_BPKB').Text;
            eInfoPekerjaan_CB.Text := uniSP.FieldByName('PEKERJAAN_PEMILIK').Text;
            eInfoNoIdentitas_CB.Text := uniSP.FieldByName('NO_IDENTITAS').Text;
            eInfoNamaPemilik_CB.Text := uniSP.FieldByName('NAMA_PEMILIK').Text;
            eInfoAlamatPemilik_CB.Text := uniSP.FieldByName('ALAMAT_PEMILIK').Text;
            eInfoNopol_CB.Text := uniSP.FieldByName('NO_POLISI').Text;
            eInfoMek_CB.Text := uniSP.FieldByName('MERK_NAMA').Text;
            eInfoTipe_CB.Text := uniSP.FieldByName('TIPE').Text;
            eInfoJenis_CB.Text := uniSP.FieldByName('JENIS_NAMA').Text;
            eInfoModel_CB.Text := uniSP.FieldByName('MODEL_NAMA').Text;
            eInfoThnBuat_CB.Text := uniSP.FieldByName('THN_BUAT').Text;
            eInfoSilinder_CB.Text := uniSP.FieldByName('VOL_SILINDER').Text;
            eInfoWarna_CB.Text := uniSP.FieldByName('WARNA_NAMA').Text;
            eInfoNoRangka_CB.Text := uniSP.FieldByName('NO_RANGKA').Text;
            eInfoNoMesin_CB.Text := uniSP.FieldByName('NO_MESIN').Text;
            eInfoJmlRoda_CB.Text := uniSP.FieldByName('JML_RODA').Text;
            eInfoJmlSumbu_CB.Text := uniSP.FieldByName('JML_SUMBU').Text;
            eInfoBB_CB.Text := uniSP.FieldByName('BB_NAMA').Text;
            eInfoNoFaktur_CB.Text := uniSP.FieldByName('NO_FAKTUR').Text;
            eInfoTglFaktur_CB.Text := uniSP.FieldByName('TGL_FAKTUR').Text;
            eInfoAPM_CB.Text := uniSP.FieldByName('NAMA_IMPORTIR').Text;
            eInfoTglFormAB_CB.Text := uniSP.FieldByName('TGL_PABEAN').Text;
            eInfoKantorBeaCukai_CB.Text := uniSP.FieldByName('PELABUHAN').Text;
            eInfoNoSUT_CB.Text := uniSP.FieldByName('NO_SUT').Text;
            eInfoNoTPT_CB.Text := uniSP.FieldByName('NO_TPT').Text;
            eInfoKetLain2_CB.Text := uniSP.FieldByName('KETR_PABEAN').Text;
            eInfoNoPIB_CB.Text := uniSP.FieldByName('NO_PIB').Text;
            eInfoTglPIB_CB.Text := uniSP.FieldByName('TGL_PIB').Text;
            eInfoNoFormAB_CB.Text := uniSP.FieldByName('NO_PABEAN').Text;
            eInfoDikeluarkanOleh_CB.Text := vBPKBDikeluarkanOleh ;
            eInfoNRegBPKB2_CB.Text := uniSP.FieldByName('NREG_BPKB').Text;

            if rbBukuBaru.Checked=True then
            begin
              if veX1_CB=0 then
              begin
                Q.Close;
                Q.SQL.Text := 'select a.X,a.Y from t_prnbook_coord a'+
                              ' inner join t_PRNBOOK_CFG c on c.CFG_ID = a.CFG_ID'+
                              ' where c.IS_ACTIVE = 1 and a.ELM_IDENTIFIER=''BukuFrDsNAMA_PEMILIK'' and a.PAGE_NO=''1''';
                Q.Open;
                eX1_CB.Text := Q.Fields[0].AsString;
                eY1_CB.Text := Q.Fields[1].AsString;
                veX1_CB := Q.Fields[0].AsFloat;
                veY1_CB := Q.Fields[1].AsFloat;
              end
              else
              begin
                eX1_CB.Text := FloatToStr(veX1_CB);
                eY1_CB.Text := FloatToStr(veY1_CB);
              end;

              if veX2_CB=0 then
              begin
                Q.Close;
                Q.SQL.Text := 'select a.X,a.Y from t_prnbook_coord a'+
                              ' inner join t_PRNBOOK_CFG c on c.CFG_ID = a.CFG_ID'+
                              ' where c.IS_ACTIVE = 1 and a.ELM_IDENTIFIER=''BukuFrDsNO_POLISI'' and a.PAGE_NO=''2''';
                Q.Open;
                eX2_CB.Text := Q.Fields[0].AsString;
                eY2_CB.Text := Q.Fields[1].AsString;
                veX2_CB := Q.Fields[0].AsFloat;
                veY2_CB := Q.Fields[1].AsFloat;
              end
              else
              begin
                eX2_CB.Text := FloatToStr(veX2_CB);
                eY2_CB.Text := FloatToStr(veY2_CB);
              end;

              if veX3_CB=0 then
              begin
                Q.Close;
                Q.SQL.Text := 'select a.X,a.Y from t_prnbook_coord a'+
                              ' inner join t_PRNBOOK_CFG c on c.CFG_ID = a.CFG_ID'+
                              ' where c.IS_ACTIVE = 1 and a.ELM_IDENTIFIER=''BukuFrDsNO_FAKTUR'' and a.PAGE_NO=''3''';
                Q.Open;
                eX3_CB.Text := Q.Fields[0].AsString;
                eY3_CB.Text := Q.Fields[1].AsString;
                veX3_CB := Q.Fields[0].AsFloat;
                veY3_CB := Q.Fields[1].AsFloat;
              end
              else
              begin
                eX3_CB.Text := FloatToStr(veX3_CB);
                eY3_CB.Text := FloatToStr(veY3_CB);
              end;

              if veX4_CB=0 then
              begin
                Q.Close;
                Q.SQL.Text := 'select a.X,a.Y from t_prnbook_coord a'+
                              ' inner join t_PRNBOOK_CFG c on c.CFG_ID = a.CFG_ID'+
                              ' where c.IS_ACTIVE = 1 and a.ELM_IDENTIFIER=''BukuFrDsTEMPAT_KELUAR'' and a.PAGE_NO=''4''';
                Q.Open;
                eX4_CB.Text := Q.Fields[0].AsString;
                eY4_CB.Text := Q.Fields[1].AsString;
                veX4_CB := Q.Fields[0].AsFloat;
                veY4_CB := Q.Fields[1].AsFloat;
              end
              else
              begin
                eX4_CB.Text := FloatToStr(veX4_CB);
                eY4_CB.Text := FloatToStr(veY4_CB);
              end;
            end
            else if rbBukuLama.Checked=True then
            begin
              if veX1_BL_CB=0 then
              begin
                Q.Close;
                Q.SQL.Text := 'select a.X,a.Y from t_prnbook_coord a'+
                              //' inner join t_PRNBOOK_CFG c on c.CFG_ID = a.CFG_ID'+
                              ' where a.CFG_ID = 1 and a.ELM_IDENTIFIER=''BukuFrDsNREG_BPKB'' and a.PAGE_NO=''1''';
                Q.Open;
                eX1_CB.Text := Q.Fields[0].AsString;
                eY1_CB.Text := Q.Fields[1].AsString;
                veX1_BL_CB := Q.Fields[0].AsFloat;
                veY1_BL_CB := Q.Fields[1].AsFloat;
              end
              else
              begin
                eX1_CB.Text := FloatToStr(veX1_BL_CB);
                eY1_CB.Text := FloatToStr(veY1_BL_CB);
              end;

              if veX2_BL_CB=0 then
              begin
                Q.Close;
                Q.SQL.Text := 'select a.X,a.Y from t_prnbook_coord a'+
                              //' inner join t_PRNBOOK_CFG c on c.CFG_ID = a.CFG_ID'+
                              ' where a.CFG_ID = 1 and a.ELM_IDENTIFIER=''BukuFrDsNAMA_PEMILIK'' and a.PAGE_NO=''2''';
                Q.Open;
                eX2_CB.Text := Q.Fields[0].AsString;
                eY2_CB.Text := Q.Fields[1].AsString;
                veX2_BL_CB := Q.Fields[0].AsFloat;
                veY2_BL_CB := Q.Fields[1].AsFloat;
              end
              else
              begin
                eX2_CB.Text := FloatToStr(veX2_BL_CB);
                eY2_CB.Text := FloatToStr(veY2_BL_CB);
              end;

              if veX3_BL_CB=0 then
              begin
                Q.Close;
                Q.SQL.Text := 'select a.X,a.Y from t_prnbook_coord a'+
                              //' inner join t_PRNBOOK_CFG c on c.CFG_ID = a.CFG_ID'+
                              ' where a.CFG_ID = 1 and a.ELM_IDENTIFIER=''BukuFrDsNO_PABEAN'' and a.PAGE_NO=''3''';
                Q.Open;
                eX3_CB.Text := Q.Fields[0].AsString;
                eY3_CB.Text := Q.Fields[1].AsString;
                veX3_BL_CB := Q.Fields[0].AsFloat;
                veY3_BL_CB := Q.Fields[1].AsFloat;
              end
              else
              begin
                eX3_CB.Text := FloatToStr(veX3_BL_CB);
                eY3_CB.Text := FloatToStr(veY3_BL_CB);
              end;

              if veX4_BL_CB=0 then
              begin
                Q.Close;
                Q.SQL.Text := 'select a.X,a.Y from t_prnbook_coord a'+
                              //' inner join t_PRNBOOK_CFG c on c.CFG_ID = a.CFG_ID'+
                              ' where a.CFG_ID = 1 and a.ELM_IDENTIFIER=''BukuFrDsNO_BPKB_PERTAMA'' and a.PAGE_NO=''4''';
                Q.Open;
                eX4_CB.Text := Q.Fields[0].AsString;
                eY4_CB.Text := Q.Fields[1].AsString;
                veX4_BL_CB := Q.Fields[0].AsFloat;
                veY4_BL_CB := Q.Fields[1].AsFloat;
              end
              else
              begin
                eX4_CB.Text := FloatToStr(veX4_BL_CB);
                eY4_CB.Text := FloatToStr(veY4_BL_CB);
              end;
            end;

            if uniSP.FieldByName('P1DONE').Text='0' then
            begin
              vPagePosisi := 1;
              eX1_CB.Enabled := True;
              eY1_CB.Enabled := True;
              eX2_CB.Enabled := True;
              eY2_CB.Enabled := True;
              eX3_CB.Enabled := True;
              eY3_CB.Enabled := True;
              eX4_CB.Enabled := True;
              eY4_CB.Enabled := True;
              {eX1_CB.Enabled := True;
              eY1_CB.Enabled := True;
              eX2_CB.Enabled := False;
              eY2_CB.Enabled := False;
              eX3_CB.Enabled := False;
              eY3_CB.Enabled := False;
              eX4_CB.Enabled := False;
              eY4_CB.Enabled := False;}
            end
            else if uniSP.FieldByName('P2DONE').Text='0' then
            begin
              vPagePosisi := 2;
              eX1_CB.Enabled := True;
              eY1_CB.Enabled := True;
              eX2_CB.Enabled := True;
              eY2_CB.Enabled := True;
              eX3_CB.Enabled := True;
              eY3_CB.Enabled := True;
              eX4_CB.Enabled := True;
              eY4_CB.Enabled := True;
              {eX1_CB.Enabled := False;
              eY1_CB.Enabled := False;
              eX2_CB.Enabled := True;
              eY2_CB.Enabled := True;
              eX3_CB.Enabled := False;
              eY3_CB.Enabled := False;
              eX4_CB.Enabled := False;
              eY4_CB.Enabled := False;}
            end
            else if uniSP.FieldByName('P3DONE').Text='0' then
            begin
              vPagePosisi := 3;
              eX1_CB.Enabled := True;
              eY1_CB.Enabled := True;
              eX2_CB.Enabled := True;
              eY2_CB.Enabled := True;
              eX3_CB.Enabled := True;
              eY3_CB.Enabled := True;
              eX4_CB.Enabled := True;
              eY4_CB.Enabled := True;
              {eX1_CB.Enabled := False;
              eY1_CB.Enabled := False;
              eX2_CB.Enabled := False;
              eY2_CB.Enabled := False;
              eX3_CB.Enabled := True;
              eY3_CB.Enabled := True;
              eX4_CB.Enabled := False;
              eY4_CB.Enabled := False;}
            end
            else if uniSP.FieldByName('P4DONE').Text='0' then
            begin
              vPagePosisi := 4;
              eX1_CB.Enabled := True;
              eY1_CB.Enabled := True;
              eX2_CB.Enabled := True;
              eY2_CB.Enabled := True;
              eX3_CB.Enabled := True;
              eY3_CB.Enabled := True;
              eX4_CB.Enabled := True;
              eY4_CB.Enabled := True;
              {eX1_CB.Enabled := False;
              eY1_CB.Enabled := False;
              eX2_CB.Enabled := False;
              eY2_CB.Enabled := False;
              eX3_CB.Enabled := False;
              eY3_CB.Enabled := False;
              eX4_CB.Enabled := True;
              eY4_CB.Enabled := True;}
            end;

            cxPageControl1.ActivePage := cxTabSheet1;

            if (uniSP.FieldByName('P1DONE').Text='1') and
               (uniSP.FieldByName('P2DONE').Text='1') and
               (uniSP.FieldByName('P3DONE').Text='1') and
               (uniSP.FieldByName('P4DONE').Text='1') then
            begin
              fWait.Hide;
              Application.ProcessMessages;
              vPagePosisi := 0;
              bCetakBuku_CB.Enabled := False;
              MessageDlg('Proses Pencetakan buku tidak bisa dilakukan'+#13+
                         'Buku sudah dicetak',mtInformation,[mbOK],0);
              eNoBPKB_CB.SetFocus;
            end
            else
            begin
              fWait.Hide;
              Application.ProcessMessages;
              bCetakBuku_CB.Enabled := True;
              bCetakBuku_CB.SetFocus;
            end;
          end
          else
          begin
            fWait.Hide;
            Application.ProcessMessages;
            MessageDlg('BERKAS BPKB '+eNoBPKB_CB.Text+' BELUM BISA DICETAK'+#13+
                       'PROSES PENCETAKAN BLM MENDAPATKAN IJIN DARI DIREKTUR',mtError,[mbOK],0);
          end;
        end
        else
        begin
          FWait.Hide;
          Application.ProcessMessages;
          MessageDlg('DATA TIDAK DITEMUKAN!!',mtInformation,[mbOK],0);
        end;
      except on E:Exception do
      begin
        ErrorProgDialog('Error,..bpkb_get_cetak_bpkb.Open%Error :'+E.Message);
      end;
      end;
    end;
  finally
    FreeAndNil(uniSP);
  end;
end;

procedure TfPenulisanDup.CekSelisihKoordinat(vX, vY: Real;
  vPage: integer);
var
  tX,tY : Real; // nilai selisih
begin
  with Q2 do
  begin
    Close;
    SQL.Text := 'select X2,Y2 from t_prnbook_coord_temp where cfg_id=:cfg_id and page_no=:page and titik_awal_ukur=''1''';
    Params[0].AsString := tSNHDD;
    Params[1].AsString := IntToStr(vPage);
    Open;
    if Q2.RecordCount > 0 then
    begin
      if vX > Q2.Fields[0].AsFloat then
      begin
        tX := (vX - Q2.Fields[0].AsFloat);
      end
      else if vX < Q2.Fields[0].AsFloat then
      begin
        tX := (vX - Q2.Fields[0].AsFloat);
      end
      else
        tX := 0;

      if vY > Q2.Fields[1].AsFloat then
      begin
        tY := (vY - Q2.Fields[1].AsFloat);
      end
      else if vY < Q2.Fields[1].AsFloat then
      begin
        tY := (vY - Q2.Fields[1].AsFloat);
      end
      else
        tY := 0;

      Close;
      SQL.Text := 'select X2,Y2,ELM_IDENTIFIER from t_prnbook_coord_temp where page_no=:page and cfg_id=:cfg_id';
      Params[0].AsString := IntToStr(vPage);
      Params[1].AsString := tSNHDD;
      Open;

      while not Q2.Eof do
      begin
        if Pos('Titik',Q2.Fields[2].AsString) > 0 then
        begin
          Q3.Close;
          Q3.SQL.Text := 'update t_prnbook_coord_temp set X=:X,Y=:Y where ELM_IDENTIFIER=:ELM_IDENTIFIER and cfg_id=:cfg_id';
          Q3.Params[0].AsFloat := Q2.Fields[0].AsFloat+tX+RandomRange(1,3);
          Q3.Params[1].AsFloat := Q2.Fields[1].AsFloat+tY+RandomRange(1,2);
          Q3.Params[2].AsString := Q2.Fields[2].AsString;
          Q3.Params[3].AsString := tSNHDD;
          Q3.Execute;
        end
        else
        begin
          Q3.Close;
          Q3.SQL.Text := 'update t_prnbook_coord_temp set X=:X,Y=:Y where ELM_IDENTIFIER=:ELM_IDENTIFIER and cfg_id=:cfg_id';
          Q3.Params[0].AsFloat := Q2.Fields[0].AsFloat+tX;
          Q3.Params[1].AsFloat := Q2.Fields[1].AsFloat+tY;
          Q3.Params[2].AsString := Q2.Fields[2].AsString;
          Q3.Params[3].AsString := tSNHDD;
          Q3.Execute;
        end;
      Q2.Next;
      end;
      if isPersatu='1' then
         CetakBukuBPKBPerSatu
      else
         CetakBukuBPKB;
    end
    else
    begin
      MessageDlg('Proses setting ukuran tidak bisa dilakukan, data tidak ada',mtError,[mbOK],0);
    end;
  end;
end;

procedure TfPenulisanDup.CetakBukuBPKB;
var
  uniSP,uniSP2 : TUniStoredProc;
  vPage : String;
begin
  with Q3 do
  begin
    Close;
    SQL.Text := 'select ELM_IDENTIFIER,PAGE_NO,X,Y from t_prnbook_coord_temp where PAGE_NO=:page and cfg_id=:cfg_id';
    Params[0].AsInteger := vPagePosisi;
    Params[1].AsString := tSNHDD;
    Open;

    if Q3.RecordCount > 0 then
    begin
      while Not Q3.Eof do
      begin
        Q2.Close;
        Q2.SQL.Text := 'DELETE FROM T_PRNBOOK_HISTORY WHERE  BPKB_ID=:BPKB_ID'+
                       ' AND ELM_IDENTIFIER=:ELM AND PAGE_NO=:PAGE_NO';
        Q2.Params[0].AsString := vBPKBIDCetakBuku;
        Q2.Params[1].AsString := Q3.Fields[0].AsString;
        Q2.Params[2].AsString := Q3.Fields[1].AsString;
        Q2.Execute;

        Q2.Close;
        Q2.SQL.Text := 'INSERT INTO T_PRNBOOK_HISTORY(BPKB_ID,ELM_IDENTIFIER,PAGE_NO,X,Y)'+
                       ' VALUES(:BPKB_ID,:ELM_IDENTIFIER,:PAGE_NO,:X,:Y)';
        Q2.Params[0].AsString := vBPKBIDCetakBuku;
        Q2.Params[1].AsString := Q3.Fields[0].AsString;
        Q2.Params[2].AsInteger := Q3.Fields[1].AsInteger;
        Q2.Params[3].AsFloat := Q3.Fields[2].AsFloat;
        Q2.Params[4].AsFloat := Q3.Fields[3].AsFloat;
        Q2.Execute;
        
        Q3.Next;
      end;

      try
        fWait.Show;
        Application.ProcessMessages;
        uniSP := TUniStoredProc.Create(Application);
        uniSP.Connection := DM.dbSrv;
        uniSP.Close;
        uniSP.StoredProcName := 'bpkb_set_print_page_done';
        try
          uniSP.Params.Clear;
          uniSP.Params.CreateParam(ftString,'v_bpkb_id',ptInput).AsString := vBPKBIDCetakBuku;
          uniSP.Params.CreateParam(ftString,'v_page_no',ptInput).AsString := Q3.Fields[1].AsString;
          uniSP.Params.CreateParam(ftString,'v_op_id',ptInput).AsString := vIDPetugas;
          uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
          uniSP.ExecProc;

          fWait.Hide;
          Application.ProcessMessages;
          if Copy(uniSP.Params.ParamValues['RESULT'],1,2)='00' then
          begin
            // inisialisai yg melalukan proses verifikasi
            uniSP2 := TUniStoredProc.Create(Application);
            uniSP2.Connection := DM.dbSrv;
            uniSP2.Close;
            uniSP2.StoredProcName := 'bpkb_check_point';
            try
              uniSP2.Params.Clear;
              uniSP2.Params.CreateParam(ftString,'v_BerkasId',ptInput).AsString := vBerkasIDCetakBuku;
              uniSP2.Params.CreateParam(ftString,'v_CkKind',ptInput).AsString := '3';
              uniSP2.Params.CreateParam(ftString,'v_By',ptInput).AsString := vIDPetugas;
              uniSP2.Params.CreateParam(ftString,'vTGL',ptInput).AsString := FormatDateTime('YYYYMMDD',dtTgl.Date);
              uniSP2.Params.CreateParam(ftString,'RESULT',ptResult).Value;
              uniSP2.ExecProc;
              Log('bpkb_check_point Verifikasi Otomatis pada saat proses pencetakan : berkas id '+vBerkasIDCetakBuku+' check point '+'Verifikasi'+' by '+vIDPetugas);
            except on E: Exception do
            begin
              ErrorProgDialog('Error...Verifikasi otomastis pada proses pencetakan '+E.Message);
            end;
            end;

            // INISIALISASI YG MELAKUKAN PENCETAKAN
            uniSP2 := TUniStoredProc.Create(Application);
            uniSP2.Connection := DM.dbSrv;
            uniSP2.Close;
            uniSP2.StoredProcName := 'bpkb_check_point';
            try
              uniSP2.Params.Clear;
              uniSP2.Params.CreateParam(ftString,'v_BerkasId',ptInput).AsString := vBerkasIDCetakBuku;
              uniSP2.Params.CreateParam(ftString,'v_CkKind',ptInput).AsString := '4';
              uniSP2.Params.CreateParam(ftString,'v_By',ptInput).AsString := vIDPetugas;
              uniSP2.Params.CreateParam(ftString,'vTGL',ptInput).AsString := FormatDateTime('YYYYMMDD',dtTgl.Date);
              uniSP2.Params.CreateParam(ftString,'RESULT',ptResult).Value;
              uniSP2.ExecProc;
              Log('bpkb_check_point : berkas id '+vBerkasIDCetakBuku+' check point '+'4'+' by '+vIDPetugas);
              if Copy(uniSP2.Params.ParamValues['RESULT'],1,2)='00' then
              begin
                vPage := copy(uniSP.Params.ParamValues['RESULT'],4,1);
                uniSPCetak.Active := False;
                if rbBukuBaru.Checked=True then
                   uniSPCetak.StoredProcName := 'bpkb_get_cetak_buku'
                else if rbBukuLama.Checked=True then
                   uniSPCetak.StoredProcName := 'bpkb_get_cetak_buku_dup';
                try
                  uniSPCetak.Params.Clear;
                  uniSPCetak.Params.CreateParam(ftString,'v_signtype',ptinput).AsString := vIsCetakTandaTangan;
                  uniSPCetak.Params.CreateParam(ftString,'v_berkas',ptinput).AsString := vBPKBIDCetakBuku;
                  uniSPCetak.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
                  uniSPCetak.Open;

                  if uniSPCetak.RecordCount > 0 then
                  begin
                    frxReport_CB.DataSet := frxDBDatasetCB;
                    frxReport_CB.Clear;
                    // proses cetak buku
                    if vPage='1' then
                    begin
                      if rbBukuBaru.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\i_pemilik_v4.fr3')
                      else if rbBukuLama.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\i_bpkb_v1.fr3');
                      fWait.Hide;
                      Application.ProcessMessages;
                      if TReport='1' then
                      begin
                        frxReport_CB.DesignReport();
                      end
                      else
                      begin
                        //frxReport_CB.ShowReport();
                        frxReport_CB.PrintOptions.ShowDialog := False;
                        frxReport_CB.PrintOptions.Printer := TPRINTER_BPKB;
                        frxReport_CB.PrepareReport;
                        frxReport_CB.Print;
                      end;
                      MessageDlg('Lanjut ke pencetakan halaman ke - 2',mtInformation,[mbOK],0);
                      {eX1_CB.Enabled := False;
                      eY1_CB.Enabled := False;
                      eX2_CB.Enabled := True;
                      eY2_CB.Enabled := True;
                      eX3_CB.Enabled := False;
                      eY3_CB.Enabled := False;
                      eX4_CB.Enabled := False;
                      eY4_CB.Enabled := False;}
                      eX1_CB.Enabled := True;
                      eY1_CB.Enabled := True;
                      eX2_CB.Enabled := True;
                      eY2_CB.Enabled := True;
                      eX3_CB.Enabled := True;
                      eY3_CB.Enabled := True;
                      eX4_CB.Enabled := True;
                      eY4_CB.Enabled := True;
                      eX1_CB.Style.Color := clWindow;
                      eY1_CB.Style.Color := clWindow;
                      eX2_CB.Style.Color := clBlue;
                      eY2_CB.Style.Color := clBlue;
                      eX3_CB.Style.Color := clWindow;
                      eY3_CB.Style.Color := clWindow;
                      eX4_CB.Style.Color := clWindow;
                      eY4_CB.Style.Color := clWindow;
                      if rbBukuBaru.Checked=True then
                      begin
                        veX1_CB := StrToFloat(eX1_CB.Text);
                        veY1_CB := StrToFloat(eY1_CB.Text);
                      end
                      else if rbBukuLama.Checked=True then
                      begin
                        veX1_BL_CB := StrToFloat(eX1_CB.Text);
                        veY1_BL_CB := StrToFloat(eY1_CB.Text);
                      end;
                      fMain.InitIni('2');
                      cxPageControl1.ActivePage := cxTabSheet2;
                      vPagePosisi := 2;
                      //bCetakBuku_CB.SetFocus;
                    end
                    else if vPage='2' then
                    begin
                      if rbBukuBaru.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\ii_kend_v4.fr3')
                      else if rbBukuLama.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\ii_bpkb_v1.fr3');
                      fWait.Hide;
                      Application.ProcessMessages;
                      if TReport='1' then
                      begin
                        frxReport_CB.DesignReport();
                      end
                      else
                      begin
                        //frxReport_CB.ShowReport();
                        frxReport_CB.PrintOptions.ShowDialog := False;
                        frxReport_CB.PrintOptions.Printer := TPRINTER_BPKB;
                        frxReport_CB.PrepareReport;
                        frxReport_CB.Print;
                      end;
                      MessageDlg('Lanjut ke pencetakan halaman ke - 3',mtInformation,[mbOK],0);
                      {eX1_CB.Enabled := False;
                      eY1_CB.Enabled := False;
                      eX2_CB.Enabled := False;
                      eY2_CB.Enabled := False;
                      eX3_CB.Enabled := True;
                      eY3_CB.Enabled := True;
                      eX4_CB.Enabled := False;
                      eY4_CB.Enabled := False;}
                      eX1_CB.Enabled := True;
                      eY1_CB.Enabled := True;
                      eX2_CB.Enabled := True;
                      eY2_CB.Enabled := True;
                      eX3_CB.Enabled := True;
                      eY3_CB.Enabled := True;
                      eX4_CB.Enabled := True;
                      eY4_CB.Enabled := True;
                      eX1_CB.Style.Color := clWindow;
                      eY1_CB.Style.Color := clWindow;
                      eX2_CB.Style.Color := clWindow;
                      eY2_CB.Style.Color := clWindow;
                      eX3_CB.Style.Color := clBlue;
                      eY3_CB.Style.Color := clBlue;
                      eX4_CB.Style.Color := clWindow;
                      eY4_CB.Style.Color := clWindow;
                      if rbBukuBaru.Checked=True then
                      begin
                        veX2_CB := StrToFloat(eX2_CB.Text);
                        veY2_CB := StrToFloat(eY2_CB.Text);
                      end
                      else if rbBukuLama.Checked=True then
                      begin
                        veX2_BL_CB := StrToFloat(eX2_CB.Text);
                        veY2_BL_CB := StrToFloat(eY2_CB.Text);
                      end;
                      fMain.InitIni('2');
                      cxPageControl1.ActivePage := cxTabSheet3;
                      vPagePosisi := 3;
                      //bCetakBuku_CB.SetFocus;
                    end
                    else if vPage='3' then
                    begin
                      if rbBukuBaru.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\iii_reg_v4.fr3')
                      else if rbBukuLama.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\iii_bpkb_v1.fr3');
                      fWait.Hide;
                      Application.ProcessMessages;
                      if TReport='1' then
                      begin
                        frxReport_CB.DesignReport();
                      end
                      else
                      begin
                        //frxReport_CB.ShowReport();
                        frxReport_CB.PrintOptions.ShowDialog := False;
                        frxReport_CB.PrintOptions.Printer := TPRINTER_BPKB;
                        frxReport_CB.PrepareReport;
                        frxReport_CB.Print;
                      end;
                      MessageDlg('Lanjut ke pencetakan halaman ke - 4',mtInformation,[mbOK],0);
                      {eX1_CB.Enabled := False;
                      eY1_CB.Enabled := False;
                      eX2_CB.Enabled := False;
                      eY2_CB.Enabled := False;
                      eX3_CB.Enabled := False;
                      eY3_CB.Enabled := False;
                      eX4_CB.Enabled := True;
                      eY4_CB.Enabled := True;}
                      eX1_CB.Enabled := True;
                      eY1_CB.Enabled := True;
                      eX2_CB.Enabled := True;
                      eY2_CB.Enabled := True;
                      eX3_CB.Enabled := True;
                      eY3_CB.Enabled := True;
                      eX4_CB.Enabled := True;
                      eY4_CB.Enabled := True;
                      eX1_CB.Style.Color := clWindow;
                      eY1_CB.Style.Color := clWindow;
                      eX2_CB.Style.Color := clWindow;
                      eY2_CB.Style.Color := clWindow;
                      eX3_CB.Style.Color := clWindow;
                      eY3_CB.Style.Color := clWindow;
                      eX4_CB.Style.Color := clBlue;
                      eY4_CB.Style.Color := clBlue;
                      if rbBukuBaru.Checked=True then
                      begin
                        veX3_CB := StrToFloat(eX3_CB.Text);
                        veY3_CB := StrToFloat(eY3_CB.Text);
                      end
                      else if rbBukuLama.Checked=True then
                      begin
                        veX3_BL_CB := StrToFloat(eX3_CB.Text);
                        veY3_BL_CB := StrToFloat(eY3_CB.Text);
                      end;
                      fMain.InitIni('2');
                      cxPageControl1.ActivePage := cxTabSheet4;
                      vPagePosisi := 4;
                      //bCetakBuku_CB.SetFocus;
                    end
                    else if vPage='4' then
                    begin
                      if rbBukuBaru.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\iv_noreg.fr3')
                      else if rbBukuLama.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\iv_bpkb_v1.fr3');
                      fWait.Hide;
                      Application.ProcessMessages;
                      if TReport='1' then
                      begin
                        frxReport_CB.DesignReport();
                      end
                      else
                      begin
                        //frxReport_CB.ShowReport();
                        frxReport_CB.PrintOptions.ShowDialog := False;
                        frxReport_CB.PrintOptions.Printer := TPRINTER_BPKB;
                        frxReport_CB.PrepareReport;
                        frxReport_CB.Print;
                      end;
                      MessageDlg('Proses pencetakan selesai!',mtInformation,[mbOK],0);
                      {eX1_CB.Enabled := False;
                      eY1_CB.Enabled := False;
                      eX2_CB.Enabled := False;
                      eY2_CB.Enabled := False;
                      eX3_CB.Enabled := False;
                      eY3_CB.Enabled := False;
                      eX4_CB.Enabled := False;
                      eY4_CB.Enabled := False;}
                      eX1_CB.Enabled := True;
                      eY1_CB.Enabled := True;
                      eX2_CB.Enabled := True;
                      eY2_CB.Enabled := True;
                      eX3_CB.Enabled := True;
                      eY3_CB.Enabled := True;
                      eX4_CB.Enabled := True;
                      eY4_CB.Enabled := True;
                      eX1_CB.Style.Color := clWindow;
                      eY1_CB.Style.Color := clWindow;
                      eX2_CB.Style.Color := clWindow;
                      eY2_CB.Style.Color := clWindow;
                      eX3_CB.Style.Color := clWindow;
                      eY3_CB.Style.Color := clWindow;
                      eX4_CB.Style.Color := clWindow;
                      eY4_CB.Style.Color := clWindow;
                      if rbBukuBaru.Checked=True then
                      begin
                        veX4_CB := StrToFloat(eX4_CB.Text);
                        veY4_CB := StrToFloat(eY4_CB.Text);
                      end
                      else if rbBukuLama.Checked=True then
                      begin
                        veX4_BL_CB := StrToFloat(eX4_CB.Text);
                        veY4_BL_CB := StrToFloat(eY4_CB.Text);
                      end;
                      fMain.InitIni('2');
                      cxPageControl1.ActivePage := cxTabSheet1;
                      vPagePosisi := 1;
                      bBaru_CB.Click;
                    end;
                  end
                  else
                  begin
                    fWait.Hide;
                    Application.ProcessMessages;
                    MessageDlg('Tidak ada data yg akan dicetak',mtInformation,[mbOK],0);
                  end;
                except on E: Exception do
                begin
                  ErrorProg('Error, '+E.Message);
                end;
                end;
              end
              else
              begin
                fWait.Hide;
                Application.ProcessMessages;
                MessageDlg('Proses update cek point gagal',mtInformation,[mbOK],0);
              end;
            except on E: Exception do
            begin
              ErrorProgDialog('Error... bpkb_check_point. print_bpkb'+E.Message);
            end;
            end;
          end;
        except on E:Exception do
        begin
          ErrorProgDialog('Error,..BPKB_ADD.Open%Error :'+E.Message);
        end;
        end;
      finally
        FreeAndNil(uniSP);
      end;
    end;
  end;
end;

procedure TfPenulisanDup.DuplicateDataKoordinat;
begin
  with DM.Q2 do
  begin
    Close;
    SQL.Text := 'DELETE FROM T_PRNBOOK_COORD_TEMP WHERE CFG_ID=:CFG_ID';
    Params[0].AsString := tSNHDD;
    Execute;

    Close;
    SQL.Text := 'INSERT INTO T_PRNBOOK_COORD_TEMP(CFG_ID,ELM_IDENTIFIER,PAGE_NO,X,Y,DESCRIPTION,TITIK_AWAL_UKUR,X2,Y2)'+
                ' SELECT '''+tSNHDD+''',E.ELM_IDENTIFIER,E.PAGE_NO,E.X,E.Y,E.DESCRIPTION,E.TITIK_AWAL_UKUR,E.X,E.Y FROM T_PRNBOOK_COORD E'+
                ' inner join t_PRNBOOK_CFG c on c.CFG_ID = e.CFG_ID'+
                ' where c.IS_ACTIVE = 1 order by e.PAGE_NO, e.ELM_IDENTIFIER';
    Execute;

  end;
end;

procedure TfPenulisanDup.TampilAwal;
begin
  //'1=GANTI NAMA; 2=MUTASI KELUAR; 3=EX LUAR DAERAH; 4=GANTI BUKU; 5=DUPLIKAT';
  vIsBBN := '5';
  dtTgl.Date := TTglSrvSkr;
  vPagePosisi := 0;
  vBPKBIDCetakBuku := '';
  vBPKBIDCetakBuku := '';
  vBerkasIDCetakBuku := '';
  eNoBPKB_CB.Text := '';
  eNoRangka_CB.Text := '';
  eNoBarcode_CB.Text := '';
  bCetakBuku_CB.Enabled := False;
  eX1_CB.Text := '';
  eY1_CB.Text := '';
  eX2_CB.Text := '';
  eY2_CB.Text := '';
  eX3_CB.Text := '';
  eY3_CB.Text := '';
  eX4_CB.Text := '';
  eY4_CB.Text := '';
  eX1_CB.Style.Color := clWindow;
  eY1_CB.Style.Color := clWindow;
  eX2_CB.Style.Color := clWindow;
  eY2_CB.Style.Color := clWindow;
  eX3_CB.Style.Color := clWindow;
  eY3_CB.Style.Color := clWindow;
  eX4_CB.Style.Color := clWindow;
  eY4_CB.Style.Color := clWindow;
  eInfoNoBPKB_CB.Text := '';
  eInfoNRegBPKB_CB.Text := '';
  eInfoTempat_CB.Text := '';
  eInfoTgl_CB.Text := '';
  eInfoNamaPemilik_CB.Text := '';
  eInfoAlamatPemilik_CB.Text := '';
  eInfoPekerjaan_CB.Text := '';
  eInfoNoIdentitas_CB.Text := '';
  eInfoNopol_CB.Text := '';
  eInfoMek_CB.Text := '';
  eInfoTipe_CB.Text := '';
  eInfoJenis_CB.Text := '';
  eInfoModel_CB.Text := '';
  eInfoThnBuat_CB.Text := '';
  eInfoSilinder_CB.Text := '';
  eInfoWarna_CB.Text := '';
  eInfoNoRangka_CB.Text := '';
  eInfoNoMesin_CB.Text := '';
  eInfoJmlRoda_CB.Text := '';
  eInfoJmlSumbu_CB.Text := '';
  eInfoBB_CB.Text := '';
  eInfoNoFaktur_CB.Text := '';
  eInfoTglFaktur_CB.Text := '';
  eInfoAPM_CB.Text := '';
  eInfoKantorBeaCukai_CB.Text := '';
  eInfoNoSUT_CB.Text := '';
  eInfoNoTPT_CB.Text := '';
  eInfoKetLain2_CB.Text := '';
  eInfoNoPIB_CB.Text := '';
  eInfoTglPIB_CB.Text := '';
  eInfoNoFormAB_CB.Text := '';
  eInfoTglFormAB_CB.Text := '';
  eInfoDikeluarkanOleh_CB.Text := '';
  eInfoNRegBPKB2_CB.Text := '';
  rbBukuBaru.Checked := False;
  rbBukuLama.Checked := False;
  cxPageControl1.ActivePage := cxTabSheet1;
  eNoBPKB_CB.SetFocus;
end;

procedure TfPenulisanDup.FormCreate(Sender: TObject);
begin
  fWait.Show;
  fWait.Label1.Caption := 'Tunggu Sebentar ...';
  fWait.cxProgressBar1.Visible := True;
  Application.ProcessMessages;
  // create folder u/ install font
  vNamaDirFontInstall := 'C:\Users\Public\Documents\CheckPoint\';
  If Not DirectoryExists(vNamaDirFontInstall) then
    ForceDirectories(vNamaDirFontInstall);
  // ambil fontnya
  DM.Q.Close;
  DM.Q.SQL.Text := 'SELECT NM_FONT,BIN_FONT FROM T_FONT_BPKB WHERE KDPOLDA=:KDPOLDA AND KDPOLRES=:KDPOLRES AND ISAKTIF=:ISAKTIF';
  DM.Q.Params[0].AsString := vPOLDAID;
  DM.Q.Params[1].AsString := vPOLRESID;
  DM.Q.Params[2].AsString := '1';
  DM.Q.Open;
  if DM.Q.RecordCount > 0 then
  begin
    vNamaFileFont := DM.Q.FieldByName('NM_FONT').AsString+'.ttf';
    vNamaFont := DM.Q.FieldByName('NM_FONT').AsString;
    if FileExists(vNamaDirFontInstall+vNamaFileFont) = True then
    begin
      if Screen.Fonts.IndexOf(vNamaFont) <> -1 then  // cek apakah font sudah ter install di sistem apa blm
      begin
        Log('Sistem Sudah Ter-Install Font Sistem BPKB');
        fWait.Hide;
        Application.ProcessMessages;
      end
      else
      begin
        AddFontResource(PChar(vNamaDirFontInstall+vNamaFileFont));
        //SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ; // update 20/03/2014
        PostMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;
        eNoBPKB_CB.Enabled := True;
        eNoRangka_CB.Enabled := True;
        eNoBarcode_CB.Enabled := True;
        bCari_CB.Enabled := True;
        bBaru_CB.Enabled := True;
        DeleteFile(RootPath+vNamaFileFont);
        fWait.Hide;
        Application.ProcessMessages;
      end;
    end
    else
    begin
      TBlobField(DM.Q.FieldByName('bin_font')).SaveToFile(vNamaDirFontInstall+vNamaFileFont);

      if FileExists(vNamaDirFontInstall+vNamaFileFont) = True then
      begin
        AddFontResource(PChar(vNamaDirFontInstall+vNamaFileFont));
        //SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ; // update 20/03/2014
        PostMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;
        eNoBPKB_CB.Enabled := True;
        eNoRangka_CB.Enabled := True;
        eNoBarcode_CB.Enabled := True;
        bCari_CB.Enabled := True;
        bBaru_CB.Enabled := True;
        DeleteFile(RootPath+vNamaFileFont);
        fWait.Hide;
        Application.ProcessMessages;
      end
      else
      begin
        fWait.Hide;
        Application.ProcessMessages;
        MessageDlg('Proses install font tidak bisa dilakukan'+#13+
                   'Font tidak ada di-Sistem'+#13+
                   'Close Media Cetak Buku atau Hubungi Administrator',mtWarning,[mbOK],0);
        eNoBPKB_CB.Enabled := False;
        eNoRangka_CB.Enabled := False;
        eNoBarcode_CB.Enabled := False;
        bCari_CB.Enabled := False;
        bBaru_CB.Enabled := False;
      end;
    end;
  end
  else
  begin
    bBaru_CB.Enabled := False;
    bCari_CB.Enabled := False;
    bCetakBuku_CB.Enabled := False;
    MessageDlg('FONT TIDAK TERDEFINISI DI DATABASE!'+#13+
               'HUBUNGI ADMINISTRATOR',mtError,[mbOK],0);
  end;
end;

procedure TfPenulisanDup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfPenulisanDup.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
end;

procedure TfPenulisanDup.FormDestroy(Sender: TObject);
begin
  RemoveFontResource(PChar(vNamaDirFontInstall+vNamaFileFont));
  //SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;
  PostMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;
  DeleteFile(vNamaDirFontInstall+vNamaFileFont);
end;

procedure TfPenulisanDup.FormShow(Sender: TObject);
begin
  eNoBPKB_CB.Style.Font.Name := vNamaFont;
  eNoRangka_CB.Style.Font.Name := vNamaFont;
  eNoBarcode_CB.Style.Font.Name := vNamaFont;
  eInfoNoBPKB_CB.Style.Font.Name := vNamaFont;
  eInfoNRegBPKB_CB.Style.Font.Name := vNamaFont;
  eInfoTempat_CB.Style.Font.Name := vNamaFont;
  eInfoTgl_CB.Style.Font.Name := vNamaFont;
  eInfoNamaPemilik_CB.Style.Font.Name := vNamaFont;
  eInfoAlamatPemilik_CB.Style.Font.Name := vNamaFont;
  eInfoPekerjaan_CB.Style.Font.Name := vNamaFont;
  eInfoNoIdentitas_CB.Style.Font.Name := vNamaFont;
  eInfoNopol_CB.Style.Font.Name := vNamaFont;
  eInfoMek_CB.Style.Font.Name := vNamaFont;
  eInfoTipe_CB.Style.Font.Name := vNamaFont;
  eInfoJenis_CB.Style.Font.Name := vNamaFont;
  eInfoModel_CB.Style.Font.Name := vNamaFont;
  eInfoThnBuat_CB.Style.Font.Name := vNamaFont;
  eInfoSilinder_CB.Style.Font.Name := vNamaFont;
  eInfoWarna_CB.Style.Font.Name := vNamaFont;
  eInfoNoRangka_CB.Style.Font.Name := vNamaFont;
  eInfoNoMesin_CB.Style.Font.Name := vNamaFont;
  eInfoJmlRoda_CB.Style.Font.Name := vNamaFont;
  eInfoJmlSumbu_CB.Style.Font.Name := vNamaFont;
  eInfoBB_CB.Style.Font.Name := vNamaFont;
  eInfoNoFaktur_CB.Style.Font.Name := vNamaFont;
  eInfoTglFaktur_CB.Style.Font.Name := vNamaFont;
  eInfoAPM_CB.Style.Font.Name := vNamaFont;
  eInfoKantorBeaCukai_CB.Style.Font.Name := vNamaFont;
  eInfoNoSUT_CB.Style.Font.Name := vNamaFont;
  eInfoNoTPT_CB.Style.Font.Name := vNamaFont;
  eInfoKetLain2_CB.Style.Font.Name := vNamaFont;
  eInfoNoPIB_CB.Style.Font.Name := vNamaFont;
  eInfoTglPIB_CB.Style.Font.Name := vNamaFont;
  eInfoNoFormAB_CB.Style.Font.Name := vNamaFont;
  eInfoTglFormAB_CB.Style.Font.Name := vNamaFont;
  eInfoDikeluarkanOleh_CB.Style.Font.Name :=  vNamaFont;
  eInfoNRegBPKB2_CB.Style.Font.Name := vNamaFont;
  TampilAwal;
end;

procedure TfPenulisanDup.bCari_CBClick(Sender: TObject);
begin
  if Screen.Fonts.IndexOf(vNamaFont) <> -1 then // cek apakah font udah siap dipakai apa blm dalam sistem
  begin
    if eNoBPKB_CB.Text <> '' then
    begin
      if vIsCariLangsung = '0' then
      begin
        if (eNoRangka_CB.Text <> '') or (eNoBarcode_CB.Text <> '') then
        begin
          fWait.Show;
          fWait.Label1.Caption := 'Tunggu Sebentar ...';
          fWait.cxProgressBar1.Visible := True;
          Application.ProcessMessages;
          CariData;
        end
        else
        begin
          MessageDlg('Salah satu antara no rangka atau no barcode harus diisi',mtWarning,[mbOK],0);
          eNoRangka_CB.SetFocus;
        end;
      end
      else if vIsCariLangsung = '1' then
      begin
        fWait.Show;
        fWait.Label1.Caption := 'Tunggu Sebentar ...';
        fWait.cxProgressBar1.Visible := True;
        Application.ProcessMessages;
        CariData;
      end;
    end
    else
    begin
      MessageDlg('No BPKB harus diisi',mtWarning,[mbOK],0);
      eNoBPKB_CB.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('FONT BPKB BLM TERINSTALL PADA SISTEM'+#13+
               'RESTART PC UNTUK MEMAKSIMALKAN PROSES INSTALLASI PADA FONT BPKB'+#13+
               'TERIMAKASIH',mtWarning,[mbOK],0);
  end;
end;

procedure TfPenulisanDup.bBaru_CBClick(Sender: TObject);
begin
  TampilAwal;
end;

procedure TfPenulisanDup.bCetakBuku_CBClick(Sender: TObject);
begin
  if rbBukuBaru.Checked = True then
  begin
    TahapAwalCetakBuku;
  end
  else if rbBukuLama.Checked = True then
  begin
    TahapAwalCetakBuku;
  end
  else
  begin
    MessageDlg('MOHON JENIS BUKU DIPILIH TERLEBIH DAHULU',mtWarning,[mbOK],0);
  end;
end;

procedure TfPenulisanDup.frxReport_CBBeforePrint(
  Sender: TfrxReportComponent);
begin
  with Q do
  begin
    if vPagePosisi=1 then
    begin
      Close;
      SQL.Text := 'select ELM_IDENTIFIER,X,Y from t_prnbook_coord_temp where PAGE_NO=''1'' and cfg_id=:cfg';
      Params[0].AsString := tSNHDD;
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          if (Q.Fields[0].AsString <> 'Signature') then
          begin
            if (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView) <> nil then
            begin
              if Pos('SIGN',UpperCase(Q.Fields[0].AsString)) > 0 then
              begin
                (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Left := 37.7953 * (Q.Fields[1].AsFloat - 3.7);
                (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Top := (37.7953 * Q.Fields[2].AsFloat) + (37.7953 * 9.45);
              end
              else
              begin
                (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Font.Name := vNamaFont;
                (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Left := 37.7953 * Q.Fields[1].AsFloat;
                if Q.Fields[0].AsString = 'BukuFrDsNAMA_PEMILIK' then
                begin
                  if eInfoNamaPemilik_CB.Lines.Count > 1 then
                     (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Top := (37.7953 * Q.Fields[2].AsFloat) + (37.7953 * 8.9)
                  else
                     (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Top := (37.7953 * Q.Fields[2].AsFloat) + (37.7953 * 9.45);
                end
                else
                   (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Top := (37.7953 * Q.Fields[2].AsFloat) + (37.7953 * 9.45);
              end;
            end
          end
          else
          begin
            if (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxPictureView) <> nil then
            begin
              //(frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxPictureView).Picture.LoadFromFile('D:\ttd.jpg');
              (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxPictureView).Left := 37.7953 * (Q.Fields[1].AsFloat - 3.7);
              (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxPictureView).Top := (37.7953 * Q.Fields[2].AsFloat) + (37.7953 * 9.45);
            end;
          end;
          Next;
        end;
      end;
    end
    else if vPagePosisi=2 then
    begin
      Close;
      SQL.Text := 'select ELM_IDENTIFIER,X,Y from t_prnbook_coord_temp where PAGE_NO=''2'' and cfg_id=:cfg';
      Params[0].AsString := tSNHDD;
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          if (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView) <> nil then
          begin
            (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Font.Name := vNamaFont;
            (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Left := 37.7953 * Q.Fields[1].AsFloat;
            (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Top := (37.7953 * Q.Fields[2].AsFloat) + (37.7953 * 9.45);
          end;
          Next;
        end;
      end;
    end
    else if vPagePosisi=3 then
    begin
      Close;
      SQL.Text := 'select ELM_IDENTIFIER,X,Y from t_prnbook_coord_temp where PAGE_NO=''3'' and cfg_id=:cfg';
      Params[0].AsString := tSNHDD;
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          if (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView) <> nil then
          begin
            (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Font.Name := vNamaFont;
            (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Left := 37.7953 * Q.Fields[1].AsFloat;
            (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Top := (37.7953 * Q.Fields[2].AsFloat) + (37.7953 * 9.45);
          end;
          Next;
        end;
      end;
    end
    else if vPagePosisi=4 then
    begin
      Close;
      SQL.Text := 'select ELM_IDENTIFIER,X,Y from t_prnbook_coord_temp where PAGE_NO=''4'' and cfg_id=:cfg';
      Params[0].AsString := tSNHDD;
      Open;
      if recordcount > 0 then
      begin
        while not eof do
        begin
          if (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView) <> nil then
          begin
            (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Font.Name := vNamaFont;
            (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Left := 37.7953 * Q.Fields[1].AsFloat;
            (frxReport_CB.FindObject(Q.Fields[0].AsString) as TfrxMemoView).Top := (37.7953 * Q.Fields[2].AsFloat) + (37.7953 * 9.45);
          end;
          Next;
        end;
      end;
    end;
  end;
end;

procedure TfPenulisanDup.frxReport_CBGetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName = 'CBPKB' then
    Value := vPetugasInisial;
  if VarName = 'DITERBITKAN_OLEH' then
    Value := vBPKBDikeluarkanOleh;
  if VarName = 'JML_SUMBU' then
  begin
    if eInfoJmlSumbu_CB.Text = '0' then
       Value := ''
    else
       Value := eInfoJmlSumbu_CB.Text + ' ('+Trim(HitungUang(eInfoJmlSumbu_CB.Text))+')';
  end;
  if VarName = 'JML_RODA' then
    Value := eInfoJmlRoda_CB.Text+' ('+Trim(HitungUang(eInfoJmlRoda_CB.Text))+')';
end;

procedure TfPenulisanDup.Halaman11Click(Sender: TObject);
begin
  if rbBukuBaru.Checked = True then
  begin
    fWait.Show;
    fWait.Label1.Caption := 'Tunggu Sebentar ...';
    fWait.cxProgressBar1.Visible := True;
    Application.ProcessMessages;
    isPersatu := '1';
    if rbBukuBaru.Checked = True then
       DuplicateDataKoordinat
    else if rbBukuLama.Checked = True then
       DuplicateDataKoordinatBukuLama;

    if (StrToInt(eInfoJmlRoda_CB.Text) = 2) or (StrToInt(eInfoJmlRoda_CB.Text) = 3) then
       vIsCetakTandaTangan := '1'
    else if StrToInt(eInfoJmlRoda_CB.Text) >= 4 then
       vIsCetakTandaTangan := '2';

    vPagePosisi := 1;
    fWait.Hide;
    Application.ProcessMessages;
    if MessageDlg('YAKIN AKAN MELAKUKAN PROSES PENCETAKAN HALAMAN KE 1?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
     bCetakBuku_CB.Enabled := False;
     eX1_CB.Style.Color := clBlue;
     eY1_CB.Style.Color := clBlue;
     eX2_CB.Style.Color := clWindow;
     eY2_CB.Style.Color := clWindow;
     eX3_CB.Style.Color := clWindow;
     eY3_CB.Style.Color := clWindow;
     eX4_CB.Style.Color := clWindow;
     eY4_CB.Style.Color := clWindow;
     CekSelisihKoordinat(StrToFloat(eX1_CB.Text),StrToFloat(eY1_CB.Text),vPagePosisi);
    end;
  end
  else if rbBukuLama.Checked = True then
  begin
    fWait.Show;
    fWait.Label1.Caption := 'Tunggu Sebentar ...';
    fWait.cxProgressBar1.Visible := True;
    Application.ProcessMessages;
    isPersatu := '1';
    if rbBukuBaru.Checked = True then
       DuplicateDataKoordinat
    else if rbBukuLama.Checked = True then
       DuplicateDataKoordinatBukuLama;

    if (StrToInt(eInfoJmlRoda_CB.Text) = 2) or (StrToInt(eInfoJmlRoda_CB.Text) = 3) then
       vIsCetakTandaTangan := '1'
    else if StrToInt(eInfoJmlRoda_CB.Text) >= 4 then
       vIsCetakTandaTangan := '2';

    vPagePosisi := 1;
    fWait.Hide;
    Application.ProcessMessages;
    if MessageDlg('YAKIN AKAN MELAKUKAN PROSES PENCETAKAN HALAMAN KE 1?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
     bCetakBuku_CB.Enabled := False;
     eX1_CB.Style.Color := clBlue;
     eY1_CB.Style.Color := clBlue;
     eX2_CB.Style.Color := clWindow;
     eY2_CB.Style.Color := clWindow;
     eX3_CB.Style.Color := clWindow;
     eY3_CB.Style.Color := clWindow;
     eX4_CB.Style.Color := clWindow;
     eY4_CB.Style.Color := clWindow;
     CekSelisihKoordinat(StrToFloat(eX1_CB.Text),StrToFloat(eY1_CB.Text),vPagePosisi);
    end;
  end
  else
  begin
    MessageDlg('MOHON JENIS BUKU DIPILIH TERLEBIH DAHULU',mtWarning,[mbOK],0);
  end;
end;

procedure TfPenulisanDup.Halaman21Click(Sender: TObject);
begin
  if rbBukuBaru.Checked = True then
  begin
    fWait.Show;
    fWait.Label1.Caption := 'Tunggu Sebentar ...';
    fWait.cxProgressBar1.Visible := True;
    Application.ProcessMessages;
    isPersatu := '1';

    if rbBukuBaru.Checked = True then
       DuplicateDataKoordinat
    else if rbBukuLama.Checked = True then
       DuplicateDataKoordinatBukuLama;

    if (StrToInt(eInfoJmlRoda_CB.Text) = 2) or (StrToInt(eInfoJmlRoda_CB.Text) = 3) then
       vIsCetakTandaTangan := '1'
    else if StrToInt(eInfoJmlRoda_CB.Text) >= 4 then
       vIsCetakTandaTangan := '2';

    vPagePosisi := 2;
    fWait.Hide;
    Application.ProcessMessages;
    if MessageDlg('YAKIN AKAN MELAKUKAN PROSES PENCETAKAN HALAMAN KE 2?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
     bCetakBuku_CB.Enabled := False;
     CekSelisihKoordinat(StrToFloat(eX2_CB.Text),StrToFloat(eY2_CB.Text),vPagePosisi);
    end;
  end
  else if rbBukuLama.Checked = True then
  begin
    fWait.Show;
    fWait.Label1.Caption := 'Tunggu Sebentar ...';
    fWait.cxProgressBar1.Visible := True;
    Application.ProcessMessages;
    isPersatu := '1';

    if rbBukuBaru.Checked = True then
       DuplicateDataKoordinat
    else if rbBukuLama.Checked = True then
       DuplicateDataKoordinatBukuLama;

    if (StrToInt(eInfoJmlRoda_CB.Text) = 2) or (StrToInt(eInfoJmlRoda_CB.Text) = 3) then
       vIsCetakTandaTangan := '1'
    else if StrToInt(eInfoJmlRoda_CB.Text) >= 4 then
       vIsCetakTandaTangan := '2';

    vPagePosisi := 2;
    fWait.Hide;
    Application.ProcessMessages;
    if MessageDlg('YAKIN AKAN MELAKUKAN PROSES PENCETAKAN HALAMAN KE 2?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
     bCetakBuku_CB.Enabled := False;
     CekSelisihKoordinat(StrToFloat(eX2_CB.Text),StrToFloat(eY2_CB.Text),vPagePosisi);
    end;
  end
  else
  begin
    MessageDlg('MOHON JENIS BUKU DIPILIH TERLEBIH DAHULU',mtWarning,[mbOK],0);
  end;
end;

procedure TfPenulisanDup.Halaman31Click(Sender: TObject);
begin
  if rbBukuBaru.Checked = True then
  begin
    fWait.Show;
    fWait.Label1.Caption := 'Tunggu Sebentar ...';
    fWait.cxProgressBar1.Visible := True;
    isPersatu := '1';
    Application.ProcessMessages;

    if rbBukuBaru.Checked = True then
       DuplicateDataKoordinat
    else if rbBukuLama.Checked = True then
       DuplicateDataKoordinatBukuLama;

    if (StrToInt(eInfoJmlRoda_CB.Text) = 2) or (StrToInt(eInfoJmlRoda_CB.Text) = 3) then
       vIsCetakTandaTangan := '1'
    else if StrToInt(eInfoJmlRoda_CB.Text) >= 4 then
       vIsCetakTandaTangan := '2';

    vPagePosisi := 3;
    fWait.Hide;
    Application.ProcessMessages;
    if MessageDlg('YAKIN AKAN MELAKUKAN PROSES PENCETAKAN HALAMAN KE 3?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
     bCetakBuku_CB.Enabled := False;
     CekSelisihKoordinat(StrToFloat(eX3_CB.Text),StrToFloat(eY3_CB.Text),vPagePosisi);
    end;
  end
  else if rbBukuLama.Checked = True then
  begin
    fWait.Show;
    fWait.Label1.Caption := 'Tunggu Sebentar ...';
    fWait.cxProgressBar1.Visible := True;
    isPersatu := '1';
    Application.ProcessMessages;

    if rbBukuBaru.Checked = True then
       DuplicateDataKoordinat
    else if rbBukuLama.Checked = True then
       DuplicateDataKoordinatBukuLama;

    if (StrToInt(eInfoJmlRoda_CB.Text) = 2) or (StrToInt(eInfoJmlRoda_CB.Text) = 3) then
       vIsCetakTandaTangan := '1'
    else if StrToInt(eInfoJmlRoda_CB.Text) >= 4 then
       vIsCetakTandaTangan := '2';

    vPagePosisi := 3;
    fWait.Hide;
    Application.ProcessMessages;
    if MessageDlg('YAKIN AKAN MELAKUKAN PROSES PENCETAKAN HALAMAN KE 3?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
     bCetakBuku_CB.Enabled := False;
     CekSelisihKoordinat(StrToFloat(eX3_CB.Text),StrToFloat(eY3_CB.Text),vPagePosisi);
    end;
  end
  else
  begin
    MessageDlg('MOHON JENIS BUKU DIPILIH TERLEBIH DAHULU',mtWarning,[mbOK],0);
  end;
end;

procedure TfPenulisanDup.Halaman41Click(Sender: TObject);
begin
  if rbBukuBaru.Checked = True then
  begin
    fWait.Show;
    fWait.Label1.Caption := 'Tunggu Sebentar ...';
    fWait.cxProgressBar1.Visible := True;
    Application.ProcessMessages;
    isPersatu := '1';

    if rbBukuBaru.Checked = True then
       DuplicateDataKoordinat
    else if rbBukuLama.Checked = True then
       DuplicateDataKoordinatBukuLama;
     
    if (StrToInt(eInfoJmlRoda_CB.Text) = 2) or (StrToInt(eInfoJmlRoda_CB.Text) = 3) then
       vIsCetakTandaTangan := '1'
    else if StrToInt(eInfoJmlRoda_CB.Text) >= 4 then
       vIsCetakTandaTangan := '2';

    vPagePosisi := 4;
    fWait.Hide;
    Application.ProcessMessages;
    if MessageDlg('YAKIN AKAN MELAKUKAN PROSES PENCETAKAN HALAMAN KE 4?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
     bCetakBuku_CB.Enabled := False;
     CekSelisihKoordinat(StrToFloat(eX4_CB.Text),StrToFloat(eY4_CB.Text),vPagePosisi);
    end;
  end
  else if rbBukuLama.Checked = True then
  begin
    fWait.Show;
    fWait.Label1.Caption := 'Tunggu Sebentar ...';
    fWait.cxProgressBar1.Visible := True;
    Application.ProcessMessages;
    isPersatu := '1';

    if rbBukuBaru.Checked = True then
       DuplicateDataKoordinat
    else if rbBukuLama.Checked = True then
       DuplicateDataKoordinatBukuLama;
     
    if (StrToInt(eInfoJmlRoda_CB.Text) = 2) or (StrToInt(eInfoJmlRoda_CB.Text) = 3) then
       vIsCetakTandaTangan := '1'
    else if StrToInt(eInfoJmlRoda_CB.Text) >= 4 then
       vIsCetakTandaTangan := '2';

    vPagePosisi := 4;
    fWait.Hide;
    Application.ProcessMessages;
    if MessageDlg('YAKIN AKAN MELAKUKAN PROSES PENCETAKAN HALAMAN KE 4?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
     bCetakBuku_CB.Enabled := False;
     CekSelisihKoordinat(StrToFloat(eX4_CB.Text),StrToFloat(eY4_CB.Text),vPagePosisi);
    end;
  end
  else
  begin
    MessageDlg('MOHON JENIS BUKU DIPILIH TERLEBIH DAHULU',mtWarning,[mbOK],0);
  end;
end;

procedure TfPenulisanDup.eNoBPKB_CBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    if vIsCariLangsung = '0' then
    begin
      if (eNoBPKB_CB.Text <> '') and (eNoRangka_CB.Text <> '') then
         bCari_CB.Click
      else if (eNoBPKB_CB.Text <> '') and (eNoBarcode_CB.Text <> '') then
         bCari_CB.Click
      else if (eNoRangka_CB.Text <> '') and (eNoBarcode_CB.Text <> '') then
         bCari_CB.Click
      else
      begin
        MessageDlg('DUA KONDISI HARUS DIPENUHI !!!',mtError,[mbOK],0);
        eNoBPKB_CB.SetFocus;
      end;
    end
    else
    begin
      if eNoBPKB_CB.Text <> '' then
         bCari_CB.Click
      else if eNoRangka_CB.Text <> '' then
         bCari_CB.Click
      else if eNoBarcode_CB.Text <> '' then
         bCari_CB.Click
      else
      begin
         MessageDlg('KODE BERKAS HARUS DIISI!!!',mtError,[mbOK],0);
         eNoBPKB_CB.SetFocus;
      end;
    end;
  end;
end;

procedure TfPenulisanDup.eNoRangka_CBKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    if vIsCariLangsung = '0' then
    begin
      if (eNoBPKB_CB.Text <> '') and (eNoRangka_CB.Text <> '') then
         bCari_CB.Click
      else if (eNoBPKB_CB.Text <> '') and (eNoBarcode_CB.Text <> '') then
         bCari_CB.Click
      else if (eNoRangka_CB.Text <> '') and (eNoBarcode_CB.Text <> '') then
         bCari_CB.Click
      else
      begin
        MessageDlg('DUA KONDISI HARUS DIPENUHI !!!',mtError,[mbOK],0);
        eNoBPKB_CB.SetFocus;
      end;
    end
    else
    begin
      if eNoBPKB_CB.Text <> '' then
         bCari_CB.Click
      else if eNoRangka_CB.Text <> '' then
         bCari_CB.Click
      else if eNoBarcode_CB.Text <> '' then
         bCari_CB.Click
      else
      begin
         MessageDlg('KODE BERKAS HARUS DIISI!!!',mtError,[mbOK],0);
         eNoRangka_CB.SetFocus;
      end;
    end;
  end;
end;

procedure TfPenulisanDup.eNoBarcode_CBKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    if vIsCariLangsung = '0' then
    begin
      if (eNoBPKB_CB.Text <> '') and (eNoRangka_CB.Text <> '') then
         bCari_CB.Click
      else if (eNoBPKB_CB.Text <> '') and (eNoBarcode_CB.Text <> '') then
         bCari_CB.Click
      else if (eNoRangka_CB.Text <> '') and (eNoBarcode_CB.Text <> '') then
         bCari_CB.Click
      else
      begin
        MessageDlg('DUA KONDISI HARUS DIPENUHI !!!',mtError,[mbOK],0);
        eNoBPKB_CB.SetFocus;
      end;
    end
    else
    begin
      if eNoBPKB_CB.Text <> '' then
         bCari_CB.Click
      else if eNoRangka_CB.Text <> '' then
         bCari_CB.Click
      else if eNoBarcode_CB.Text <> '' then
         bCari_CB.Click
      else
      begin
         MessageDlg('KODE BERKAS HARUS DIISI!!!',mtError,[mbOK],0);
         eNoBarcode_CB.SetFocus;
      end;
    end;
  end;
end;

procedure TfPenulisanDup.CetakBukuBPKBPerSatu;
var
  uniSP,uniSP2 : TUniStoredProc;
  vPage : String;
begin
  with Q3 do
  begin
    Close;
    SQL.Text := 'select ELM_IDENTIFIER,PAGE_NO,X,Y from t_prnbook_coord_temp where PAGE_NO=:page and cfg_id=:cfg_id';
    Params[0].AsInteger := vPagePosisi;
    Params[1].AsString := tSNHDD;
    Open;

    if Q3.RecordCount > 0 then
    begin
      while Not Q3.Eof do
      begin
        Q2.Close;
        Q2.SQL.Text := 'DELETE FROM T_PRNBOOK_HISTORY WHERE  BPKB_ID=:BPKB_ID'+
                       ' AND ELM_IDENTIFIER=:ELM AND PAGE_NO=:PAGE_NO';
        Q2.Params[0].AsString := vBPKBIDCetakBuku;
        Q2.Params[1].AsString := Q3.Fields[0].AsString;
        Q2.Params[2].AsString := Q3.Fields[1].AsString;
        Q2.Execute;

        Q2.Close;
        Q2.SQL.Text := 'INSERT INTO T_PRNBOOK_HISTORY(BPKB_ID,ELM_IDENTIFIER,PAGE_NO,X,Y)'+
                       ' VALUES(:BPKB_ID,:ELM_IDENTIFIER,:PAGE_NO,:X,:Y)';
        Q2.Params[0].AsString := vBPKBIDCetakBuku;
        Q2.Params[1].AsString := Q3.Fields[0].AsString;
        Q2.Params[2].AsInteger := Q3.Fields[1].AsInteger;
        Q2.Params[3].AsFloat := Q3.Fields[2].AsFloat;
        Q2.Params[4].AsFloat := Q3.Fields[3].AsFloat;
        Q2.Execute;
        
        Q3.Next;
      end;

      try
        fWait.Show;
        Application.ProcessMessages;
        uniSP := TUniStoredProc.Create(Application);
        uniSP.Connection := DM.dbSrv;
        uniSP.Close;
        uniSP.StoredProcName := 'bpkb_set_print_page_done';
        try
          uniSP.Params.Clear;
          uniSP.Params.CreateParam(ftString,'v_bpkb_id',ptInput).AsString := vBPKBIDCetakBuku;
          uniSP.Params.CreateParam(ftString,'v_page_no',ptInput).AsString := Q3.Fields[1].AsString;
          uniSP.Params.CreateParam(ftString,'v_op_id',ptInput).AsString := vIDPetugas;
          uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
          uniSP.ExecProc;

          fWait.Hide;
          Application.ProcessMessages;
          if Copy(uniSP.Params.ParamValues['RESULT'],1,2)='00' then
          begin
            // inisialisai yg melalukan proses verifikasi
            uniSP2 := TUniStoredProc.Create(Application);
            uniSP2.Connection := DM.dbSrv;
            uniSP2.Close;
            uniSP2.StoredProcName := 'bpkb_check_point';
            try
              uniSP2.Params.Clear;
              uniSP2.Params.CreateParam(ftString,'v_BerkasId',ptInput).AsString := vBerkasIDCetakBuku;
              uniSP2.Params.CreateParam(ftString,'v_CkKind',ptInput).AsString := '3';
              uniSP2.Params.CreateParam(ftString,'v_By',ptInput).AsString := vIDPetugas;
              uniSP2.Params.CreateParam(ftString,'vTGL',ptInput).AsString := FormatDateTime('YYYYMMDD',dtTgl.Date);
              uniSP2.Params.CreateParam(ftString,'RESULT',ptResult).Value;
              uniSP2.ExecProc;
              Log('bpkb_check_point Verifikasi Otomatis pada saat proses pencetakan : berkas id '+vBerkasIDCetakBuku+' check point '+'Verifikasi'+' by '+vIDPetugas);
            except on E: Exception do
            begin
              ErrorProgDialog('Error...Verifikasi otomastis pada proses pencetakan '+E.Message);
            end;
            end;

            // INISIALISASI YG MELAKUKAN PENCETAKAN
            uniSP2 := TUniStoredProc.Create(Application);
            uniSP2.Connection := DM.dbSrv;
            uniSP2.Close;
            uniSP2.StoredProcName := 'bpkb_check_point';
            try
              uniSP2.Params.Clear;
              uniSP2.Params.CreateParam(ftString,'v_BerkasId',ptInput).AsString := vBerkasIDCetakBuku;
              uniSP2.Params.CreateParam(ftString,'v_CkKind',ptInput).AsString := '4';
              uniSP2.Params.CreateParam(ftString,'v_By',ptInput).AsString := vIDPetugas;
              uniSP2.Params.CreateParam(ftString,'vTGL',ptInput).AsString := FormatDateTime('YYYYMMDD',dtTgl.Date);
              uniSP2.Params.CreateParam(ftString,'RESULT',ptResult).Value;
              uniSP2.ExecProc;
              Log('bpkb_check_point : berkas id '+vBerkasIDCetakBuku+' check point '+'4'+' by '+vIDPetugas);
              if Copy(uniSP2.Params.ParamValues['RESULT'],1,2)='00' then
              begin
                vPage := copy(uniSP.Params.ParamValues['RESULT'],4,1);
                uniSPCetak.Active := False;
                //uniSPCetak.StoredProcName := 'bpkb_get_cetak_buku';
                if rbBukuBaru.Checked=True then
                   uniSPCetak.StoredProcName := 'bpkb_get_cetak_buku'
                else if rbBukuLama.Checked=True then
                   uniSPCetak.StoredProcName := 'bpkb_get_cetak_buku_dup';
                try
                  uniSPCetak.Params.Clear;
                  uniSPCetak.Params.CreateParam(ftString,'v_signtype',ptinput).AsString := vIsCetakTandaTangan;
                  uniSPCetak.Params.CreateParam(ftString,'v_berkas',ptinput).AsString := vBPKBIDCetakBuku;
                  uniSPCetak.Params.CreateParam(ftCursor,'CUR',ptOutput).Value;
                  uniSPCetak.Open;

                  if uniSPCetak.RecordCount > 0 then
                  begin
                    frxReport_CB.DataSet := frxDBDatasetCB;
                    frxReport_CB.Clear;
                    // proses cetak buku
                    if vPage='1' then
                    begin
                      if rbBukuBaru.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\i_pemilik_v4.fr3')
                      else if rbBukuLama.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\i_bpkb_v1.fr3');

                      fWait.Hide;
                      Application.ProcessMessages;
                      if TReport='1' then
                      begin
                        frxReport_CB.DesignReport();
                      end
                      else if TReport='0' then
                      begin
                        //frxReport_CB.ShowReport();
                        frxReport_CB.PrintOptions.ShowDialog := False;
                        frxReport_CB.PrintOptions.Printer := TPRINTER_BPKB;
                        frxReport_CB.PrepareReport;
                        frxReport_CB.Print;
                      end
                      else if TReport='2' then
                      begin
                        frxReport_CB.ShowReport();
                      end;
                      if rbBukuBaru.Checked=True then
                      begin
                        veX1_CB := StrToFloat(eX1_CB.Text);
                        veY1_CB := StrToFloat(eY1_CB.Text);
                      end
                      else if rbBukuLama.Checked=True then
                      begin
                        veX1_BL_CB := StrToFloat(eX1_CB.Text);
                        veY1_BL_CB := StrToFloat(eY1_CB.Text);
                      end;
                      fMain.InitIni('2');
                      bCetakBuku_CB.Enabled := False;
                    end
                    else if vPage='2' then
                    begin
                      if rbBukuBaru.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\ii_kend_v4.fr3')
                      else if rbBukuLama.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\ii_bpkb_v1.fr3');
                      fWait.Hide;
                      Application.ProcessMessages;
                      if TReport='1' then
                      begin
                        frxReport_CB.DesignReport();
                      end
                      else if TReport='0' then
                      begin
                        //frxReport_CB.ShowReport();
                        frxReport_CB.PrintOptions.ShowDialog := False;
                        frxReport_CB.PrintOptions.Printer := TPRINTER_BPKB;
                        frxReport_CB.PrepareReport;
                        frxReport_CB.Print;
                      end
                      else if TReport='2' then
                      begin
                        frxReport_CB.ShowReport();
                      end;
                      if rbBukuBaru.Checked=True then
                      begin
                        veX2_CB := StrToFloat(eX2_CB.Text);
                        veY2_CB := StrToFloat(eY2_CB.Text);
                      end
                      else if rbBukuLama.Checked=True then
                      begin
                        veX2_BL_CB := StrToFloat(eX2_CB.Text);
                        veY2_BL_CB := StrToFloat(eY2_CB.Text);
                      end;
                      fMain.InitIni('2');
                      bCetakBuku_CB.Enabled := False;
                    end
                    else if vPage='3' then
                    begin
                      if rbBukuBaru.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\iii_reg_v4.fr3')
                      else if rbBukuLama.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\iii_bpkb_v1.fr3');
                      fWait.Hide;
                      Application.ProcessMessages;
                      if TReport='1' then
                      begin
                        frxReport_CB.DesignReport();
                      end
                      else if TReport='0' then
                      begin
                        //frxReport_CB.ShowReport();
                        frxReport_CB.PrintOptions.ShowDialog := False;
                        frxReport_CB.PrintOptions.Printer := TPRINTER_BPKB;
                        frxReport_CB.PrepareReport;
                        frxReport_CB.Print;
                      end
                      else if TReport='2' then
                      begin
                        frxReport_CB.ShowReport();
                      end;
                      if rbBukuBaru.Checked=True then
                      begin
                        veX3_CB := StrToFloat(eX3_CB.Text);
                        veY3_CB := StrToFloat(eY3_CB.Text);
                      end
                      else if rbBukuLama.Checked=True then
                      begin
                        veX3_BL_CB := StrToFloat(eX3_CB.Text);
                        veY3_BL_CB := StrToFloat(eY3_CB.Text);
                      end;
                      fMain.InitIni('2');
                      bCetakBuku_CB.Enabled := False;
                    end
                    else if vPage='4' then
                    begin
                      if rbBukuBaru.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\iv_noreg.fr3')
                      else if rbBukuLama.Checked=True then
                         frxReport_CB.LoadFromFile(RootPath+'\iv_bpkb_v1.fr3');

                      fWait.Hide;
                      Application.ProcessMessages;
                      if TReport='1' then
                      begin
                        frxReport_CB.DesignReport();
                      end
                      else if TReport='0' then
                      begin
                        //frxReport_CB.ShowReport();
                        frxReport_CB.PrintOptions.ShowDialog := False;
                        frxReport_CB.PrintOptions.Printer := TPRINTER_BPKB;
                        frxReport_CB.PrepareReport;
                        frxReport_CB.Print;
                      end
                      else if TReport='2' then
                      begin
                        frxReport_CB.ShowReport();
                      end;
                      if rbBukuBaru.Checked=True then
                      begin
                        veX4_CB := StrToFloat(eX4_CB.Text);
                        veY4_CB := StrToFloat(eY4_CB.Text);
                      end
                      else if rbBukuLama.Checked=True then
                      begin
                        veX4_BL_CB := StrToFloat(eX4_CB.Text);
                        veY4_BL_CB := StrToFloat(eY4_CB.Text);
                      end;
                      fMain.InitIni('2');
                      bCetakBuku_CB.Enabled := False;
                    end;
                  end
                  else
                  begin
                    fWait.Hide;
                    Application.ProcessMessages;
                    MessageDlg('Tidak ada data yg akan dicetak',mtInformation,[mbOK],0);
                  end;
                except on E: Exception do
                begin
                  ErrorProg('Error, '+E.Message);
                end;
                end;
              end
              else
              begin
                fWait.Hide;
                Application.ProcessMessages;
                MessageDlg('Proses update cek point gagal',mtInformation,[mbOK],0);
              end;
            except on E: Exception do
            begin
              ErrorProgDialog('Error... bpkb_check_point. print_bpkb'+E.Message);
            end;
            end;
          end;
        except on E:Exception do
        begin
          ErrorProgDialog('Error,..BPKB_ADD.Open%Error :'+E.Message);
        end;
        end;
      finally
        FreeAndNil(uniSP);
      end;
    end;
  end;
end;

procedure TfPenulisanDup.TahapAwalCetakBuku;
begin
  fWait.Show;
  fWait.Label1.Caption := 'Tunggu Sebentar ...';
  fWait.cxProgressBar1.Visible := True;
  Application.ProcessMessages;
  isPersatu := '0';

  if rbBukuBaru.Checked = True then
     DuplicateDataKoordinat
  else if rbBukuLama.Checked = True then
     DuplicateDataKoordinatBukuLama;
     
  if (StrToInt(eInfoJmlRoda_CB.Text) = 2) or (StrToInt(eInfoJmlRoda_CB.Text) = 3) then
     vIsCetakTandaTangan := '1'
  else if StrToInt(eInfoJmlRoda_CB.Text) >= 4 then
     vIsCetakTandaTangan := '2';

  if vPagePosisi = 1 then
  begin
     fWait.Hide;
     Application.ProcessMessages;
     if MessageDlg('YAKIN AKAN MELAKUKAN PROSES PENCETAKAN HALAMAN KE 1?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     begin
       bCetakBuku_CB.Enabled := False;
       eX1_CB.Style.Color := clBlue;
       eY1_CB.Style.Color := clBlue;
       eX2_CB.Style.Color := clWindow;
       eY2_CB.Style.Color := clWindow;
       eX3_CB.Style.Color := clWindow;
       eY3_CB.Style.Color := clWindow;
       eX4_CB.Style.Color := clWindow;
       eY4_CB.Style.Color := clWindow;
       CekSelisihKoordinat(StrToFloat(eX1_CB.Text),StrToFloat(eY1_CB.Text),vPagePosisi);
       bCetakBuku_CB.Enabled := True;
       bCetakBuku_CB.SetFocus;
     end;
  end
  else if vPagePosisi = 2 then
  begin
     fWait.Hide;
     Application.ProcessMessages;
     if MessageDlg('YAKIN AKAN MELAKUKAN PROSES PENCETAKAN HALAMAN KE 2?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     begin
       bCetakBuku_CB.Enabled := False;
       CekSelisihKoordinat(StrToFloat(eX2_CB.Text),StrToFloat(eY2_CB.Text),vPagePosisi);
       bCetakBuku_CB.Enabled := True;
       bCetakBuku_CB.SetFocus;
     end
  end
  else if vPagePosisi = 3 then
  begin
     fWait.Hide;
     Application.ProcessMessages;
     if MessageDlg('YAKIN AKAN MELAKUKAN PROSES PENCETAKAN HALAMAN KE 3?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     begin
       bCetakBuku_CB.Enabled := False;
       CekSelisihKoordinat(StrToFloat(eX3_CB.Text),StrToFloat(eY3_CB.Text),vPagePosisi);
       bCetakBuku_CB.Enabled := True;
       bCetakBuku_CB.SetFocus;
     end;
  end
  else if vPagePosisi = 4 then
  begin
     fWait.Hide;
     Application.ProcessMessages;
     if MessageDlg('YAKIN AKAN MELAKUKAN PROSES PENCETAKAN HALAMAN KE 4?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     begin
       bCetakBuku_CB.Enabled := False;
       CekSelisihKoordinat(StrToFloat(eX4_CB.Text),StrToFloat(eY4_CB.Text),vPagePosisi);
       bCetakBuku_CB.Enabled := True;
       bCetakBuku_CB.SetFocus;
     end;
  end;
end;

procedure TfPenulisanDup.DuplicateDataKoordinatBukuLama;
begin
  with DM.Q2 do
  begin
    Close;
    SQL.Text := 'DELETE FROM T_PRNBOOK_COORD_TEMP WHERE CFG_ID=:CFG_ID';
    Params[0].AsString := tSNHDD;
    Execute;

    Close;
    SQL.Text := 'INSERT INTO T_PRNBOOK_COORD_TEMP(CFG_ID,ELM_IDENTIFIER,PAGE_NO,X,Y,DESCRIPTION,TITIK_AWAL_UKUR,X2,Y2)'+
                ' SELECT '''+tSNHDD+''',E.ELM_IDENTIFIER,E.PAGE_NO,E.X,E.Y,E.DESCRIPTION,E.TITIK_AWAL_UKUR,E.X,E.Y FROM T_PRNBOOK_COORD E'+
                ' inner join t_PRNBOOK_CFG c on c.CFG_ID = e.CFG_ID'+
                ' where c.CFG_ID = 1 order by e.PAGE_NO, e.ELM_IDENTIFIER';
    Execute;

  end;
end;

procedure TfPenulisanDup.cxButton1Click(Sender: TObject);
begin
  if rbBukuBaru.Checked=True then
  begin
    veX1_CB := StrToFloat(eX1_CB.Text);
    veY1_CB := StrToFloat(eY1_CB.Text);
    veX2_CB := StrToFloat(eX2_CB.Text);
    veY2_CB := StrToFloat(eY2_CB.Text);
    veX3_CB := StrToFloat(eX3_CB.Text);
    veY3_CB := StrToFloat(eY3_CB.Text);
    veX4_CB := StrToFloat(eX4_CB.Text);
    veY4_CB := StrToFloat(eY4_CB.Text);
  end
  else if rbBukuLama.Checked=True then
  begin
    veX1_BL_CB := StrToFloat(eX1_CB.Text);
    veY1_BL_CB := StrToFloat(eY1_CB.Text);
    veX2_BL_CB := StrToFloat(eX2_CB.Text);
    veY2_BL_CB := StrToFloat(eY2_CB.Text);
    veX3_BL_CB := StrToFloat(eX3_CB.Text);
    veY3_BL_CB := StrToFloat(eY4_CB.Text);
    veX4_BL_CB := StrToFloat(eX4_CB.Text);
    veY4_BL_CB := StrToFloat(eY4_CB.Text);
  end;
  fMain.InitIni('2');
end;

end.
