unit uImportDataFaktur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TfImportDataFaktur = class(TForm)
    lJudul: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Label10: TLabel;
    eLokasi: TEdit;
    bCariLokasi: TButton;
    TombolSound2: TButton;
    ComboBox1: TComboBox;
    Button1: TButton;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    DB: TADOConnection;
    ADOQuery1: TADOQuery;
    procedure TombolSound2Click(Sender: TObject);
    procedure bCariLokasiClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vNamaFileExel,vDirFileEXEL : String;
    procedure ConnectToExcel(vSource:String);
    procedure ConnectToExcel2007(vSource:String);
    procedure LogMemo(const Data: String);
    procedure InsertData;
  end;

var
  fImportDataFaktur: TfImportDataFaktur;

implementation
Uses
  uDM, uVariabel, uModul, uWait, uMain, Uni;

{$R *.dfm}

{ TfImportDataFaktur }

procedure TfImportDataFaktur.ConnectToExcel(vSource: String);
var
   strConn :  widestring;
begin
  LogMemo('Tunggu sebentar proses pembacaan data exel . . . . ');
  strConn:='Provider=Microsoft.Jet.OLEDB.4.0;' +
           'Data Source=' + vSource + ';' +
           'Extended Properties=Excel 8.0;';

  DB.Connected:=False;
  DB.ConnectionString:=strConn;
  try
    Cursor := crSQLWait;
    Application.ProcessMessages;
    DB.Open;
    DB.GetTableNames(ComboBox1.Items,True);
    ComboBox1.ItemIndex := 0;
    LogMemo('Proses pembacaan data exel berhasil!!!'+#13+
            'Silahkan lanjutkan ke proses import datanya');
    Cursor := crDefault;
    Application.ProcessMessages;
    TombolSound2.Enabled := False;
    Button1.Enabled := True;
  except
  On E: Exception do
  begin
    ErrorProg('Error.ConnectToExcel.KetError '+E.Message);
  end;
  end;
end;

procedure TfImportDataFaktur.ConnectToExcel2007(vSource: String);
var
  strConn :  widestring;
begin
  LogMemo('Tunggu sebentar proses pembacaan data exel 2007 . . . . ');
  strConn:='Provider=Microsoft.ACE.OLEDB.12.0;' +
           'Data Source=' + vSource + ';' +
           'Extended Properties="Excel 12.0;HDR=YES";';

  DB.Connected:=False;
  DB.ConnectionString:=strConn;
  try
    Cursor := crSQLWait;
    Application.ProcessMessages;
    DB.Open;
    DB.GetTableNames(ComboBox1.Items,True);
    ComboBox1.ItemIndex := 0;
    LogMemo('Proses pembacaan data exel 2007 berhasil!!!'+#13+
            'Silahkan lanjutkan ke proses import datanya');
    Cursor := crDefault;
    Application.ProcessMessages;
    TombolSound2.Enabled := False;
    Button1.Enabled := True;
  except
  On E: Exception do
  begin
    ErrorProg('Error.ConnectToExcel.KetError '+E.Message);
  end;
  end;
end;

procedure TfImportDataFaktur.LogMemo(const Data: String);
begin
  Memo1.Lines.Add(FormatDateTime('<ddmmyyyy - hh:nn:ss> ',Now)+Data);
  Log(Data);
  If Memo1.Lines.Count >= 1000 then
    Memo1.Clear;
end;

procedure TfImportDataFaktur.TombolSound2Click(Sender: TObject);
begin
  if UpperCase(Trim(Copy(vNamaFileExel,Pos('.',vNamaFileExel)+1,4)))='XLS' then
     ConnectToExcel(eLokasi.Text)
  else if UpperCase(Trim(Copy(vNamaFileExel,Pos('.',vNamaFileExel)+1,4)))='XLSX' then
     ConnectToExcel2007(eLokasi.Text);
end;

procedure TfImportDataFaktur.bCariLokasiClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    eLokasi.Text := OpenDialog1.FileName;
    vDirFileEXEL := extractfilepath(OpenDialog1.FileName);
    vNamaFileExel := ExtractFileName(OpenDialog1.FileName);
  end;
end;

procedure TfImportDataFaktur.InsertData;
var
  tJML,i : integer;
  TTglFaktur,TTglLahir,TTglFormA : TDateTime;
  Thn,Bln,Hr : Word;
begin
  TTglFaktur := Now;
  TTglLahir := Now;
  TTglFormA := Now;
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'SELECT * FROM ['+ComboBox1.Text+']';
  try
    ADOQuery1.Open;
    if ADOQuery1.RecordCount > 0 then
    begin
      tJML := ADOQuery1.RecordCount;
      i := 1;
      LogMemo('JUMLAH DATA YANG AKAN DIPROSES SEBANYAK '+IntToStr(ADOQuery1.RecordCount));
      while not ADOQuery1.eof do
      begin
        try
          Application.ProcessMessages;
          if ADOQuery1.FieldByName('tgl_lahir').AsString <> '' then
          begin
            if Length(ADOQuery1.FieldByName('tgl_lahir').AsString)=8 then
            begin
              Thn := StrToInt(Copy(ADOQuery1.FieldByName('tgl_lahir').AsString,1,4));
              Bln := StrToInt(Copy(ADOQuery1.FieldByName('tgl_lahir').AsString,5,2));
              hr := StrToInt(Copy(ADOQuery1.FieldByName('tgl_lahir').AsString,7,2));
              TTglLahir := EncodeDate(Thn,Bln,Hr);
            end;
          end;

          if ADOQuery1.FieldByName('tgl_faktur').AsString <> '' then
          begin
            if Length(ADOQuery1.FieldByName('tgl_faktur').AsString)=8 then
            begin
              Thn := StrToInt(Copy(ADOQuery1.FieldByName('tgl_faktur').AsString,1,4));
              Bln := StrToInt(Copy(ADOQuery1.FieldByName('tgl_faktur').AsString,5,2));
              hr := StrToInt(Copy(ADOQuery1.FieldByName('tgl_faktur').AsString,7,2));
              TTglFaktur := EncodeDate(Thn,Bln,Hr);
            end;
          end;

          if ADOQuery1.FieldByName('tgl_form_a').AsString <> '' then
          begin
            if Length(ADOQuery1.FieldByName('tgl_form_a').AsString)=8 then
            begin
              Thn := StrToInt(Copy(ADOQuery1.FieldByName('tgl_form_a').AsString,1,4));
              Bln := StrToInt(Copy(ADOQuery1.FieldByName('tgl_form_a').AsString,5,2));
              hr := StrToInt(Copy(ADOQuery1.FieldByName('tgl_form_a').AsString,7,2));
              TTglFormA := EncodeDate(Thn,Bln,Hr);
            end;
          end;

          Application.ProcessMessages;
          with DM.Q2 do
          begin
            Close;
            SQL.Text := 'INSERT INTO DBATPM.T_FAKTUR (NO_FAKTUR,NO_RANGKA,NO_MESIN,KD_DELER,NAMA_DELER,KOTA_DELER,'+
                        'MEREK,MODEL,JENIS,TIPE,WARNA,NAMA_PEMILIK,KTP,ALAMAT1,ALAMAT2,KELURAHAN,'+
                        'KECAMATAN,KOTA,PROPINSI,KODE_POS,PEKERJAAN,TGLLAHIR,PHONE,PENDIDIKAN,TGL_FAKTUR,'+
                        'THN_PERAKITAN,THN_PEMBUATAN,CC,NO_FORM_A,TGL_FORM_A,NO_PIB,NO_SUT,NO_SRUT,'+
                        'NO_TPT,SOURCE,ADMIN,JML_RODA,JML_SUMBU,BAHAN_BAKAR,LASTUPDATE)'+
                        ' VALUES (:NO_FAKTUR,:NO_RANGKA,:NO_MESIN,:KD_DELER,:NAMA_DELER,:KOTA_DELER,'+
                        ':MEREK,:MODEL,:JENIS,:TIPE,:WARNA,:NAMA_PEMILIK,:KTP,:ALAMAT1,:ALAMAT2,:KELURAHAN,'+
                        ':KECAMATAN,:KOTA,:PROPINSI,:KODE_POS,:PEKERJAAN,:TGLLAHIR,:PHONE,:PENDIDIKAN,:TGL_FAKTUR,'+
                        ':THN_PERAKITAN,:THN_PEMBUATAN,:CC,:NO_FORM_A,:TGL_FORM_A,:NO_PIB,:NO_SUT,:NO_SRUT,'+
                        ':NO_TPT,:SOURCE,:ADMIN,:JML_RODA,:JML_SUMBU,:BAHAN_BAKAR,SYSDATE)';
            try
              ParamByName('NO_FAKTUR').AsString := ADOQuery1.FieldByName('no_faktur').AsString;
              ParamByName('NO_RANGKA').AsString := ADOQuery1.FieldByName('no_rangka').AsString;
              ParamByName('NO_MESIN').AsString := ADOQuery1.FieldByName('no_mesin').AsString;
              ParamByName('KD_DELER').AsString := ADOQuery1.FieldByName('kd_deler').AsString;
              ParamByName('NAMA_DELER').AsString := ADOQuery1.FieldByName('nama_deler').AsString;
              ParamByName('KOTA_DELER').AsString := ADOQuery1.FieldByName('kota_deler').AsString;
              ParamByName('MEREK').AsString := 'YAMAHA  (R2)';
              ParamByName('MODEL').AsString := ADOQuery1.FieldByName('model').AsString;
              ParamByName('JENIS').AsString := ADOQuery1.FieldByName('jenis').AsString;
              ParamByName('TIPE').AsString := ADOQuery1.FieldByName('type').AsString;
              ParamByName('WARNA').AsString := ADOQuery1.FieldByName('warna').AsString;
              ParamByName('NAMA_PEMILIK').AsString := ADOQuery1.FieldByName('nama_pemilik').AsString;
              ParamByName('KTP').AsString := ADOQuery1.FieldByName('no_ktp').AsString;
              ParamByName('ALAMAT1').AsString := ADOQuery1.FieldByName('alamat_pemilik').AsString;
              ParamByName('ALAMAT2').AsString := '';
              ParamByName('KELURAHAN').AsString := ADOQuery1.FieldByName('kelurahan').AsString;
              ParamByName('KECAMATAN').AsString := ADOQuery1.FieldByName('kecamatan').AsString;
              ParamByName('KOTA').AsString := ADOQuery1.FieldByName('kabupaten').AsString;
              ParamByName('PROPINSI').AsString := ADOQuery1.FieldByName('propinsi').AsString;
              ParamByName('KODE_POS').AsString := ADOQuery1.FieldByName('kd_pos').AsString;
              ParamByName('PEKERJAAN').AsString := ADOQuery1.FieldByName('pekerjaan').AsString;
              if ADOQuery1.FieldByName('tgl_lahir').AsString <> '' then
              begin
                 if Length(ADOQuery1.FieldByName('tgl_lahir').AsString)=8 then
                    ParamByName('TGLLAHIR').AsDate := TTglLahir
                 else
                    ParamByName('TGLLAHIR').Clear;
              end
              else
                 ParamByName('TGLLAHIR').Clear;
              ParamByName('PHONE').AsString := ADOQuery1.FieldByName('telp').AsString;
              ParamByName('PENDIDIKAN').AsString := ADOQuery1.FieldByName('pendidikan').AsString;
              if ADOQuery1.FieldByName('tgl_faktur').AsString <> '' then
              begin
                 if Length(ADOQuery1.FieldByName('tgl_faktur').AsString)=8 then
                    ParamByName('TGL_FAKTUR').AsDate := TTglFaktur
                 else
                    ParamByName('TGL_FAKTUR').Clear;
              end
              else
                 ParamByName('TGL_FAKTUR').Clear;
              ParamByName('THN_PERAKITAN').AsString := ADOQuery1.FieldByName('thn_perakitan').AsString;
              ParamByName('THN_PEMBUATAN').AsString := ADOQuery1.FieldByName('thn_pembuatan').AsString;
              ParamByName('CC').AsString := ADOQuery1.FieldByName('silinder').AsString;
              ParamByName('NO_FORM_A').AsString := ADOQuery1.FieldByName('no_form_a').AsString;
              if ADOQuery1.FieldByName('tgl_form_a').AsString <> '' then
              begin
                 if Length(ADOQuery1.FieldByName('tgl_form_a').AsString)=8 then
                    ParamByName('TGL_FORM_A').AsDate := TTglFormA
                 else
                    ParamByName('TGL_FORM_A').Clear;
              end
              else
                 ParamByName('TGL_FORM_A').Clear;
              ParamByName('NO_PIB').AsString := ADOQuery1.FieldByName('no_pib').AsString;
              ParamByName('NO_SUT').AsString := ADOQuery1.FieldByName('no_sut').AsString;
              ParamByName('NO_SRUT').AsString := ADOQuery1.FieldByName('no_srut').AsString;
              ParamByName('NO_TPT').AsString := ADOQuery1.FieldByName('no_tpt').AsString;
              ParamByName('SOURCE').AsString := vNamaFileExel;
              ParamByName('ADMIN').AsString := vIDPetugas;
              //ParamByName('LASTUPDATE').AsString := ADOQuery1.FieldByName('').AsString;
              ParamByName('JML_RODA').AsString := '2';
              ParamByName('JML_SUMBU').AsString := '';
              ParamByName('BAHAN_BAKAR').AsString := 'BENSIN';
              Execute;
              LogMemo('['+FormatKeUang(I)+'/'+FormatKeUang(tJML)+'] - INSERT DATA NO RANGKA '+ADOQuery1.FieldByName('no_rangka ').AsString+' BERHASIL');
              Application.ProcessMessages;
            except on E: Exception do
            begin
              LogMemo('['+FormatKeUang(I)+'/'+FormatKeUang(tJML)+'] - **** ERROR **** INSERT DATA NO RANGKA '+ADOQuery1.FieldByName('no_rangka ').AsString+' KET ERROR '+E.Message);
              ErrorProg('['+FormatKeUang(I)+'/'+FormatKeUang(tJML)+'] - **** ERROR **** INSERT DATA NO RANGKA '+ADOQuery1.FieldByName('no_rangka ').AsString+' KET ERROR '+E.Message);
            end;
            end;
          end;
        except on E: Exception do
        begin
          LogMemo('['+FormatKeUang(I)+'/'+FormatKeUang(tJML)+'] - **** ERROR **** INSERT DATA NO RANGKA '+ADOQuery1.FieldByName('no_rangka ').AsString+' KET ERROR '+E.Message);
          ErrorProg('['+FormatKeUang(I)+'/'+FormatKeUang(tJML)+'] - **** ERROR **** INSERT DATA NO RANGKA '+ADOQuery1.FieldByName('no_rangka ').AsString+' KET ERROR '+E.Message);
        end;
        end;
        Inc(I);
      ADOQuery1.Next;
      end;
      LogMemo('PROSES INSERT DATA FAKTUR SELESAI');
      ADOQuery1.Close;
    end
    else
    begin
      LogMemo('TIDAK ADA DATA YANG AKAN DIPROSES');
    end;
  except on E:Exception do
  begin
    ErrorProgDialog('error, select data exel Ket error '+e.Message);
  end
  end;
end;

procedure TfImportDataFaktur.Button1Click(Sender: TObject);
begin
  if MessageDlg('YAKIN DATA AKAN DISIMPAN',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     InsertData;
end;

end.
