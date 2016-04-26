unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxTextEdit, Uni,
  dxGDIPlusClasses, cxImage, dxSkinsCore, dxSkinsDefaultPainters, jpeg;

type
  TfLogin = class(TForm)
    cxImage1: TcxImage;
    eUserName: TcxTextEdit;
    ePassword: TcxTextEdit;
    bLogin: TcxButton;
    bKeluar: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure eUserNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ePasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bLoginClick(Sender: TObject);
    procedure bKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ApplayHakAkses(vHakAkses: String) : Boolean;
    function Login(vUser,vPassw,vSID:String):String;
  end;

var
  fLogin: TfLogin;

implementation

uses
  uDM, uModul, uVariabel, uMain, APUtilCrpt, uSetting, DB, uTunggu, uWait;

{$R *.dfm}

procedure TfLogin.FormShow(Sender: TObject);
begin
  cxImage1.Picture.LoadFromFile(RootPath+'\login_form.png');
  Application.ProcessMessages;
  Left := 10;
  Top := 10;
  eUserName.Text := '';
  ePassword.Text := '';
  eUserName.SetFocus;
end;

procedure TfLogin.eUserNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     ePassword.SetFocus;
end;

procedure TfLogin.ePasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
     bLogin.Click;
end;

procedure TfLogin.bLoginClick(Sender: TObject);
begin
  fWait.Show;
  Application.ProcessMessages;
  if (eUserName.Text = 'Administrator') and (ePassword.Text = 'p1k1r3ndh3w3') then
  begin
    fWait.Hide;
    Application.ProcessMessages;
    if fFormAktif <> nil then
       fFormAktif.Close;
    fSetting := TfSetting.Create(nil);
    fSetting.Parent := fMain.pProses;
    fSetting.Show;
    Application.ProcessMessages;
  end
  else if (eUserName.Text <> '') and (ePassword.Text <> '') then
  begin
    Login(eUserName.Text,ePassword.Text,tUUIDKey);
    {DM.Q.Close;
    DM.Q.SQL.Clear;
    DM.Q.SQL.Text := 'SELECT OP_ID,OP_LOGIN,OP_AUTHHASH,OP_NAMA,OP_INITIAL,OP_NRP,OP_LASTLOGINDATE,OP_PANGKAT,'+
                     'WILAYAH_ID,POLDA_ID,POLRES_ID,LEVEL_AKSES,BLOCKED,SYSDATE AS TGL FROM T_OPERATOR WHERE OP_LOGIN = :username AND OP_AUTHHASH = (SELECT bpkb_histupie(:username, :password) FROM DUAL)';
    try
      DM.Q.Prepare;
      DM.Q.ParamByName('username').AsString := eUserName.Text;
      DM.Q.ParamByName('password').AsString := ePassword.Text;
      DM.Q.Open;

      if DM.Q.RecordCount > 0 then
      begin
        if DM.Q.FieldByName('BLOCKED').AsString = '1' then
        begin
          fWait.Hide;
          Application.ProcessMessages;
          MessageDlg('Anda tidak diperkenankan menggunakan aplikasi ini'+#$D#$A+
                     'Hubungi Administrator untuk keterangan lebih lanjut',mtWarning,[mbOK],0);
          eUserName.Text := '';
          ePassword.Text := '';
          eUserName.SetFocus;
        end
        else
        begin
          // cek tid
          DM.Q1.Close;
          DM.Q1.SQL.Text := 'SELECT ID_ALAT,NAMA_ALAT,LOKASI,BLOCKED,POLDA_ID,POLRES_ID FROM T_ALAT'+
                            ' WHERE ID_ALAT=:ALAT';
          try
            DM.Q1.Params[0].AsString := TLoket;
            DM.Q1.Open;
            if DM.Q1.RecordCount > 0 then
            begin
              if DM.Q1.FieldByName('BLOCKED').AsString='1' then
              begin
                fWait.Hide;
                Application.ProcessMessages;
                MessageDlg('Anda tidak diperkenankan menggunakan aplikasi ini'+#$D#$A+
                           'ID Alat Ter-BLOKIR'+#$D#$A+
                           'Hubungi Administrator untuk keterangan lebih lanjut',mtWarning,[mbOK],0);
                eUserName.Text := '';
                ePassword.Text := '';
                eUserName.SetFocus;
              end
              else
              begin
                DM.Q2.Close;
                DM.Q2.SQL.Text := 'select AWALAN_TNKB,SERI_BPKB,KODE_WIL_BPKB,AKHIRAN_NOREG,TEMPAT_KELUAR_BPKB,BPKB_DIKELUARKAN_OLEH,PNBPR2,PNBPR4,TOLERANSI_KOORDINAT from t_config where polda_id=:polda and polres_id=:polres';
                try
                  DM.Q2.Params[0].AsString := DM.Q1.FieldByName('POLDA_ID').AsString;
                  DM.Q2.Params[1].AsString := DM.Q1.FieldByName('POLRES_ID').AsString;
                  DM.Q2.Open;
                  if DM.Q2.RecordCount > 0 then
                  begin
                    fWait.Hide;
                    Application.ProcessMessages;
                    vIDPetugas := UpperCase(DM.Q.FieldByName('OP_ID').AsString);
                    vNamaPetugas := UpperCase(DM.Q.FieldByName('OP_NAMA').AsString);
                    vLevelPetugas := DM.Q.FieldByName('LEVEL_AKSES').AsString;
                    vJabatanPetugas := DM.Q.FieldByName('OP_PANGKAT').AsString;
                    vNRP := DM.Q.FieldByName('OP_NRP').AsString;
                    vPetugasInisial := DM.Q.FieldByName('OP_INITIAL').AsString;
                    vPassword := ePassword.Text;
                    TTglSrvSkr := DM.Q.FieldByName('TGL').AsDateTime;
                    TKDSamsat := DM.Q1.FieldByName('LOKASI').AsString;
                    vBLTHNRegBPKB := '/'+IntToRoman(StrToInt(FormatDateTime('mm',TTglSrvSkr)))+'/'+FormatDateTime('yyyy',TTglSrvSkr);
                    vPOLDAID := DM.Q1.FieldByName('POLDA_ID').AsString;
                    vPOLRESID := DM.Q1.FieldByName('POLRES_ID').AsString;
                    vSeriBPKB := DM.Q2.FieldByName('SERI_BPKB').AsString;
                    vKdWilayahBPKB := DM.Q2.FieldByName('KODE_WIL_BPKB').AsString;
                    vAkhiranNRegBPKB := DM.Q2.FieldByName('AKHIRAN_NOREG').AsString;
                    vKota := DM.Q2.FieldByName('TEMPAT_KELUAR_BPKB').AsString;
                    vNopolAwal := DM.Q2.FieldByName('AWALAN_TNKB').AsString;
                    vBPKBDikeluarkanOleh := DM.Q2.FieldByName('BPKB_DIKELUARKAN_OLEH').AsString;
                    vPNBPR2 := DM.Q2.FieldByName('PNBPR2').Value;
                    vPNBPR4 := DM.Q2.FieldByName('PNBPR4').Value;
                    tToleransi := DM.Q2.FieldByName('TOLERANSI_KOORDINAT').Value;

                    Log('LOGIN ONLINE SUKSES, USER '+vIDPetugas+' NAMA LENGKAP '+vNamaPetugas+' HAK AKSES '+vLevelPetugas);
                    fMain.StatusBar1.Panels[1].Text := FormatDateTime('dddd dd-mm-yyyy',TTglSrvSkr);
                    fMain.StatusBar1.Panels[2].Text := 'ON-LINE';
                    fMain.StatusBar1.Panels[3].Text := '*** '+vNamaPetugas+' | POLDA ID : '+vPOLDAID+' | POLRES ID : '+vPOLRESID+' | LOGIN TIME : '+UpperCase(DM.Q.FieldByName('TGL').Value)+' ***';
                    Messagedlg('------------------------------------------------------------------------------------'+#$D#$A+
                               'SELAMAT DATANG DI SISTEM INFORMASI BPKB'+#$D#$A+
                               '------------------------------------------------------------------------------------'+#$D#$A+
                               'ID PETUGAS              : '+ eUserName.Text+#$D#$A+
                               'NAMA LENGKAP     : '+ vNamaPetugas+#$D#$A+
                               'TANGGAL                 : '+ UpperCase(DM.Q.FieldByName('TGL').Value)+#$D#$A+
                               '------------------------------------------------------------------------------------'+#$D#$A+
                               'SELAMAT BEKERJA !!!'+#$D#$A+
                               '------------------------------------------------------------------------------------',mtInformation,[mbOK],0);
                    Close;
                    fFormAktif := nil;

                    fMain.MenuAktif;
                  end
                  else
                  begin
                    fWait.Hide;
                    Application.ProcessMessages;
                    MessageDlg('Konfigurasi dari Sistem Belum Terdata'+#$D#$A+
                               'Hubungi Administrator untuk keterangan lebih lanjut',mtWarning,[mbOK],0);
                    eUserName.Text := '';
                    ePassword.Text := '';
                    eUserName.SetFocus;
                  end;
                except on E: Exception do
                begin
                  ErrorProg('Error, Select Config ..'+E.Message);
                end;
                end;
              end;
            end
            else
            begin
              fWait.Hide;
              Application.ProcessMessages;
              MessageDlg('Anda tidak diperkenankan menggunakan aplikasi ini'+#$D#$A+
                         'ID Alat tidak terdaftar'+#$D#$A+
                         'Hubungi Administrator untuk keterangan lebih lanjut',mtWarning,[mbOK],0);
              eUserName.Text := '';
              ePassword.Text := '';
              eUserName.SetFocus;
            end;
          except on E: Exception do
          begin
            ErrorProg('Error, Select TID ..'+E.Message);
          end;
          end;
        end
      end
      else
      begin
        MessageDlg('DATA USER TIDAK DITEMUKAN',mtError,[mbOK],0);
        eUserName.SetFocus;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error Cek User OnLine. Ket error : '+E.Message);
    end;
    end;}
  end
  else
  begin
    MessageDlg('USER NAME & PASSWORD HARUS DIISI DENGAN BENAR',mtError,[mbOK],0);
    eUserName.SetFocus;
  end;
end;

function TfLogin.ApplayHakAkses(vHakAkses: String): Boolean;
var
  i    : integer;
begin
  Result := False;
  with DM.Q do
  begin
    Close;
    SQL.Text := 'select ket from group_hak_akses where kode=:kode';
    try
      Params[0].AsString := vHakAkses;
      Open;
      //ShowMessage(IntToStr(RecordCount));
      if recordcount > 0 then
      begin
        for i := 0 to fMain.dxNavBar1.Items.Count-1 do
        begin
          //if fMain.dxNavBar1.Items[i] is TdxNavBarItem then
          begin
            with fMain.Components[i] as tMenuItem do
            begin
              if DM.Q.Locate('ket',uppercase(name),[]) or
                (uppercase(Name) = 'SISTEM1') or
                  (uppercase(Name) = 'MENULOGIN') or
                  (uppercase(Name) = 'MENUKUNCISISTEM') or
                  (uppercase(Name) = 'MENUKELUAR') or
                (uppercase(Name) = 'MHELP') or
                  (uppercase(Name) = 'HELP1') or
                  (uppercase(Name) = 'ABOUT1')
                then
                  Visible := true
              else
                  Visible := false;
            end;
          end;
        end;
        Result := True;
      end
      else
      begin
        Result := False;
      end;
    except on E: Exception do
    begin
      ErrorProg('Error, Select ket from group_hak_ases where kode= '+vHakAkses+' Ket error '+E.Message);
    end;
    end;
  end;
end;

procedure TfLogin.bKeluarClick(Sender: TObject);
begin
  if MessageDlg('Yakin akan keluar dari aplikasi?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     Application.Terminate
  else
     Application.Run;
end;

function TfLogin.Login(vUser, vPassw, vSID: String): String;
var
  uniSP : TUniStoredProc;
  SData,SField : TStringList;
  Thn,Bln,Hr : Word;
  vTempStr : String;
begin
  try
    fWait.Show;
    Application.ProcessMessages;
    SData := TStringList.Create;
    SField := TStringList.Create;
    uniSP := TUniStoredProc.Create(Application);
    uniSP.Connection := DM.dbSrv;
    uniSP.Close;
    uniSP.StoredProcName := 'bpkb_login';
    try
      uniSP.Params.Clear;
      uniSP.Params.CreateParam(ftString,'v_user_name',ptInput).AsString := vUser;
      uniSP.Params.CreateParam(ftString,'v_password',ptInput).AsString := vPassw;
      uniSP.Params.CreateParam(ftString,'v_id_alat',ptInput).AsString := vSID;
      uniSP.Params.CreateParam(ftString,'RESULT',ptResult).Value;
      uniSP.ExecProc;
      fWait.Hide;
      Application.ProcessMessages;
      if Pos('Error',uniSP.Params.ParamValues['RESULT']) > 0 then
      begin
        MessageDlg('Error Login, Ket error : '+uniSP.Params.ParamValues['RESULT'],mtError,[mbOK],0);
      end
      else
      begin
        SData.Clear;
        SData.Text := ParsingStr(uniSP.Params.ParamValues['RESULT'],'#');

        if SData.Strings[0]='1' then
        begin
          SField.Clear;
          SField.Text := ParsingStr(SData.Strings[1],'|');
          if SField.Count = 28 then
          begin
            vIDPetugas := SField.Strings[0];
            vNamaPetugas := SField.Strings[3];
            vLevelPetugas := SField.Strings[11];
            vJabatanPetugas := SField.Strings[7];
            vNRP := SField.Strings[5];
            vPetugasInisial := SField.Strings[4];
            vPassword := ePassword.Text;
            vTempStr := SField.Strings[13];   //dd-mm-yyyy
            Thn := StrToInt(Copy(vTempStr,7,4));
            Bln := StrToInt(Copy(vTempStr,4,2));
            hr := StrToInt(Copy(vTempStr,1,2));
            TTglSrvSkr := EncodeDate(Thn,Bln,Hr);
            TKDSamsat := SField.Strings[16];
            vBLTHNRegBPKB := '/'+IntToRoman(StrToInt(FormatDateTime('mm',TTglSrvSkr)))+'/'+FormatDateTime('yyyy',TTglSrvSkr);
            vPOLDAID := SField.Strings[9];
            vPOLRESID := SField.Strings[10];
            vSeriBPKB := SField.Strings[19];
            vKdWilayahBPKB := SField.Strings[20];
            vAkhiranNRegBPKB := SField.Strings[21];
            vKota := SField.Strings[22];
            vNopolAwal := SField.Strings[18];
            vBPKBDikeluarkanOleh := SField.Strings[23];
            vPNBPR2 := StrToInt(SField.Strings[24]);
            vPNBPR4 := StrToInt(SField.Strings[25]);
            tToleransi := StrToFloat(SField.Strings[26]);

            Log('LOGIN ONLINE SUKSES, USER '+vIDPetugas+' NAMA LENGKAP '+vNamaPetugas+' HAK AKSES '+vLevelPetugas);
            fMain.StatusBar1.Panels[1].Text := FormatDateTime('dddd dd-mm-yyyy',TTglSrvSkr);
            fMain.StatusBar1.Panels[2].Text := 'ON-LINE';
            fMain.StatusBar1.Panels[3].Text := '*** '+vNamaPetugas+' | POLDA ID : '+vPOLDAID+' | POLRES ID : '+vPOLRESID+' | LOGIN TIME : '+UpperCase(SField.Strings[27])+' ***';
            MessageDlgInformation('------------------------------------------------------------------------------------'+#$D#$A+
                       'SELAMAT DATANG DI SISTEM INFORMASI BPKB'+#$D#$A+
                       '------------------------------------------------------------------------------------'+#$D#$A+
                       'ID PETUGAS              : '+ eUserName.Text+#$D#$A+
                       'NAMA LENGKAP     : '+ vNamaPetugas+#$D#$A+
                       'TANGGAL                 : '+ UpperCase(SField.Strings[27])+#$D#$A+
                       '------------------------------------------------------------------------------------'+#$D#$A+
                       'SELAMAT BEKERJA !!!'+#$D#$A+
                       '------------------------------------------------------------------------------------');
            Close;
            fFormAktif := nil;

            fMain.MenuAktif;
          end
          else
          begin
            MessageDlg('Login Gagal'+#$D#$A+
                       'Data Response Tidak Valid : '+SData.Strings[1]+#$D#$A+
                       'Terimakasih',mtWarning,[mbOK],0);
          end;
        end
        else
        begin
          MessageDlg('Login Gagal'+#$D#$A+
                     'Keterangan : '+SData.Strings[1]+#$D#$A+
                     'Terimakasih',mtWarning,[mbOK],0);
        end;
      end;
    except on E: Exception do
    begin
      ErrorProgDialog('Error,..bpkb_login.Open%Error :'+E.Message);
    end
    end;
  finally
    FreeAndNil(uniSP);
    FreeAndNil(SData);
    FreeAndNil(SField);
  end;
end;

end.
