unit uModul;
interface
uses
   SysUtils, Forms, Dialogs, Windows, StdCtrls, DB, MemDS, DBAccess, Messages, Controls,
   Uni, UniProvider, OracleUniProvider, Classes, Variants, Graphics;

Const
   _Key  = ' !a=dc@be)f:i}hg,o[klt;njy#qrs~mu<vz+xp*w9(51]742>63{80PI.WUZ"KR$HB|JF?LMY%OAQ/GS^TDV`CX_N-E&\';
   _Subs = ' Ez=v:Pl}AScgekin-<hbm7,&sW5Iy]t"[da20ZBQG{q1~;U+|TN(Hx@rV#4puJ/X8*>KD^CO%YM)wR9f?6F.`L$_3o!j\';

  function ClearEncrypt(Data: String): String;
  function ClearDecrypt(Data: String): String;
  function ShowSNHDD: String;
  function IntToRoman(m: integer): string;

  function StringToHexStr(const value: string): string;
  function HexStrToString(const value: string): string;
  function hashKey(const Key: String): Integer;
  function __encrypt(const Key, Source: String): String;
  function EncryptText(const Key, Source: String): String;
  function DecryptText(const Key, Source: String): String;

  function MessageDlgUpdate(Keterangan:String):Integer;
  function MessageDlgInsert(Keterangan:String):Integer;
  function MessageDlgError(Keterangan:String):Integer;
  function MessageDlgInformation(Keterangan:String):Integer;
  function MessageDlgWarning(Keterangan:String):Integer;

  procedure Log(Kegiatan : String);
  procedure LogDelete(Kegiatan : String);
  procedure ErrorProg(Keterangan: String);
  procedure ErrorProgNoDialog(Keterangan: String);
  procedure ErrorProgDialog(Keterangan: String);
  procedure LebarkanListCombobox(vForm : TForm; vCombobox : TComboBox);
  procedure CenterControl(ParentObject, CenterObject: TControl; bTop, bLeft: Boolean;Space: Integer);
  procedure AktifModeIndonesia;
  procedure SetupMonthDayNames;
  
  function InitDB(Db: TUniConnection): Boolean;
  function GetVersionApplication(sFileName:string): string;

  function FormatKeUang(Data: Extended): String;
  function BuangTitik(Data: String): Currency;
  Function HitungUang(Uang: String):String;
  function IsStrANumber(const S: Variant): Boolean;
  function IsStrANumber2(const S: String): Boolean;
  function ParsingStr(Data: String; Pola: String): String;
  function RemoveWhiteSpace(const s: string): string;

  function CekNoUrut(vField:String): String;
  procedure UpdateNoUrut(vFeidl:String);

  function StrToDate(vStr,vFormatDate:String):TDateTime;
  function StrToDate2(vStr:String):TDateTime;
  function IsAngka(Key: Char): Boolean;

  function TitleCase(Kata:String):String;

implementation
Uses
   uVariabel, uDM;

function TitleCase(Kata:String):String;
var i:integer;
 s:string;
begin
if Kata='' then Abort;
 s:=UpperCase(Kata[1]);
 for i:=2 to Length(Kata) do
 if (Kata[i-1] in [' ',',',':',';','.']) then s:=s+UpperCase(Kata[i])
 else s:=s+LowerCase(Kata[i]);
Result:=s;
end;

procedure SetupMonthDayNames;
var
  I, Day: Integer;
const
  IndonesianLCID = 1057;

begin
  for I := 1 to 12 do
  begin
    ShortMonthNames[I] := GetLocaleStr(IndonesianLCID,  LOCALE_SABBREVMONTHNAME1 + I - 1, ShortMonthNames[I]);
    LongMonthNames[I] := GetLocaleStr(IndonesianLCID,  LOCALE_SMONTHNAME1 + I - 1, LongMonthNames[I]);
  end;

  for I := 1 to 7 do
  begin
    Day := (I + 5) mod 7;
    ShortDayNames[I] := GetLocaleStr(IndonesianLCID,  LOCALE_SABBREVDAYNAME1 + Day, ShortDayNames[I]);
    LongDayNames[I] := GetLocaleStr(IndonesianLCID,  LOCALE_SDAYNAME1 + Day, LongDayNames[I]);
  end;
end;

function RemoveWhiteSpace(const s: string): string;
var
  i, j: Integer;
begin
  SetLength(Result, Length(s));
  j := 0;
  for i := 1 to Length(s) do begin
    if not (s[i] in [#9,#32]) then begin
      inc(j);
      Result[j] := s[i];
    end;
  end;
  SetLength(Result, j);
end;

function GetVersionApplication(sFileName:string): string;
  var
    VerInfoSize: DWORD;
    VerInfo: Pointer;
    VerValueSize: DWORD;
    VerValue: PVSFixedFileInfo;
    Dummy: DWORD;
  begin
    VerInfoSize := GetFileVersionInfoSize(PChar(sFileName), Dummy);
    GetMem(VerInfo, VerInfoSize);
    GetFileVersionInfo(PChar(sFileName), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
    with VerValue^ do
    begin
      Result := IntToStr(dwFileVersionMS shr 16);
      Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
      Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
      Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
    end;
    FreeMem(VerInfo, VerInfoSize);
end;

function IsAngka(Key: Char): Boolean;
begin
  If Key in ['0'..'9',CHR(VK_DELETE),CHR(VK_BACK),CHR(VK_LEFT),CHR(VK_RIGHT),CHR(VK_TAB)] then
    Result := True
  else
    Result := False;
end;

function StringToHexStr(const value: string): string;
begin
  SetLength(Result, Length(value) *2);
  if Length(value) > 0 then
    BinToHex(PChar(value), PChar(Result), Length(value));
end;

function HexStrToString(const value: string): string;
begin
  SetLength(Result, Length(value) div 2);
  if Length(value) > 0 then
    HexToBin(PChar(value), PChar(Result), Length(value));
end;

function hashKey(const Key: String): Integer;
var
  Index: Integer;
begin
  Result := 0;;
  for Index := 1 to Length(Key) do
    Result := ((Result shl 7) or (Result shr 25)) + Ord(Key[Index]);
end;

function __encrypt(const Key, Source: String): String;
// this function should not be used directly
// use EncryptText and DecryptText
const
  szBuffer = SizeOf(Integer); (* 4 bytes *)
  szByteBuffer = SizeOf(Byte); (* 1 byte *)
var
  byteBuffer,
  buffer,
  index,
  theKey: Integer;
  StreamOut,
  StreamIn: TStringStream;
begin
  (* hash the key and store it on local integer variable *)
  theKey := hashKey(Key);
  (* create two TStringStream's:
     - one for the actual data
     - the other one for the encrypted/decrypted data *)
  StreamIn := TStringStream.Create(Source);
  StreamOut := TStringStream.Create('');
  (* make sure position is set to ZERO !! *)
  StreamIn.Position := 0;
  StreamOut.Position := 0;

  (* now loop WHILE number of bytes read is less than
     number of total bytes AND the difference between
     position and size is greater or equal to szBuffer
     which is 4 bytes *)
  while (StreamIn.Position < StreamIn.Size) and
    ((StreamIn.Size -StreamIn.Position) >= szBuffer) do begin
    (* read 4 bytes at a time into a local integer variable *)
    StreamIn.ReadBuffer(buffer, szBuffer);
    (* the XOR encryption/decryption *)
    buffer := buffer xor theKey;
    buffer := buffer xor $E0F;
    (* write data to output stream *)
    StreamOut.WriteBuffer(buffer, szBuffer);
  end;

  (* check if we have some bytes left, there's a fat
     chance we do... *)
  if (StreamIn.Size -StreamIn.Position) >= 1 then
    for index := StreamIn.Position to StreamIn.Size -1 do begin
      (* we should have 1, 2 or 3 bytes left MAX, so we
         read 1 byte at a time *)
      StreamIn.ReadBuffer(byteBuffer, szByteBuffer);
      (* the XOR encryption/decryption *)
      byteBuffer := byteBuffer xor $F;
      (* write data to output stream *)
      StreamOut.WriteBuffer(byteBuffer, szByteBuffer);
    end;

  (* set output stream's postion to ZERO so we can
     read it's data *)
  StreamOut.Position := 0;
  (* read data from output stream and return it's value *)
  Result := StreamOut.ReadString(StreamOut.Size);

  (* free allocated memory *)
  FreeAndNil(StreamIn);
  FreeAndNil(StreamOut);
end;

(* this function should be used ONLY for encryption *)
function EncryptText(const Key, Source: String): String;
begin
  (* return the encrypted data *)
  Result := __encrypt(Key, Source);
  (* convert string to hex string *)
  Result := StringToHexStr(Result);
end;

(* this function should be used ONLY for decryption *)
function DecryptText(const Key, Source: String): String;
begin
  (* convert each hex string to string *)
  Result := HexStrToString(Source);
  (* return the decrypted data *)
  Result := __encrypt(Key, Result);
end;

function StrToDate(vStr,vFormatDate:String):TDateTime;
var
  Thn,Bln,Hr : Word;
begin
  Thn := 0;
  Bln := 0;
  Hr := 0;
  if vFormatDate='YYYYMMDD' then
  begin
    Thn := StrToInt(Copy(vStr,1,4));
    Bln := StrToInt(Copy(vStr,5,2));
    hr := StrToInt(Copy(vStr,7,2));
  end
  else if vFormatDate='YYYY-MM-DD' then
  begin
    Thn := StrToInt(Copy(vStr,1,4));
    Bln := StrToInt(Copy(vStr,6,2));
    hr := StrToInt(Copy(vStr,9,2));
  end
  else if vFormatDate='YYYY/MM/DD' then
  begin
    Thn := StrToInt(Copy(vStr,1,4));
    Bln := StrToInt(Copy(vStr,6,2));
    hr := StrToInt(Copy(vStr,9,2));
  end;
  Result := EncodeDate(Thn,Bln,Hr);
end;

function StrToDate2(vStr:String):TDateTime;
var
  //d: TDateTime;
  FmtStngs: TFormatSettings;
begin
  GetLocaleFormatSettings( GetThreadLocale, FmtStngs );
  FmtStngs.DateSeparator := #32;
  FmtStngs.ShortDateFormat := 'dd mmmm yyyy';
  FmtStngs.TimeSeparator := ':';
  FmtStngs.LongTimeFormat := 'hh:nn';

  Result := VarToDateTime(vStr);
end;

function ParsingStr(Data: String; Pola: String): String;
Var I : Integer;
    Temp : String;
begin
  Temp := '';
  For I := 1 To Length(Data) do
  begin
    If Data[I] = Pola then
    begin
       Temp := Temp + #$D#$A;
    end
    else
      Temp := Temp + Data[I];
  end;
  Result := Temp;
end;

function IsStrANumber2(const S: String): Boolean;
var
  P: PChar;
begin
  P      := PChar(S);
  Result := False;
  while P^ <> #0 do
  begin
    if not (P^ in ['0'..'9']) then Exit;
    Inc(P);
  end;
  Result := True;
end;

function IsStrANumber(const S: Variant): Boolean;
begin
  Result := True;
  try
    StrToInt(S);
  except
    Result := False;
  end;
end;

procedure UpdateNoUrut(vFeidl:String);
begin
  with DM.Q do
  begin
    Close;
    SQL.Text := 'update t_nodoc set '+vFeidl+'='+vFeidl+'+1 where tahun=:tahun';
    Params[0].AsString := FormatDateTime('yyyy',TTglSrvSkr);
    Execute;
  end;
end;

function CekNoUrut(vField:String): String;
begin
  Result:= '000000';
  with DM.Q do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select ('+vField+'+1) as no from T_NODOC where tahun=:tahun');
    Params[0].AsString := FormatDateTime('yyyy',TTglSrvSkr);
    Open;
    If RecordCount > 0 then
    begin
     If FieldByName('no').AsInteger = 999999 then
     begin
       Close;
       SQL.Clear;
       SQL.Add('update T_NODOC set '+vField+'="1" where tahun=:tahun');
       Params[0].AsString := FormatDateTime('yyyy',TTglSrvSkr);
       Execute;
       Result := '000001';
     end
     else if (FieldByName('no').AsString = '') or (FieldByName('no').AsString = '0') then
     begin
       Result := '000001';
     end
     else
     begin
       Result := Format('%.6d',[FieldByName('no').AsInteger]);
     end;
    end
    else
    begin
     Close;
     SQL.Clear;
     SQL.Add('insert into T_NODOC (tahun) values (:tahun)');
     Try
       Params[0].AsString := FormatDateTime('yyyy',TTglSrvSkr);
       Execute;
       Result := '000001';
     Except
       on E: Exception do
         ErrorProgDialog('Nourut.Error T_NODOC : '+E.Message);
     end;
    end;
  end;
end;

function InitDB(Db: TUniConnection): Boolean;
begin
  Result := False;
  Db.Server := THOST_SERVER+':'+TPORT_SERVER+':'+TSID_SERVER;
  Db.Username := TUSER_SERVER;
  Db.Password := TPASSW_SERVER;
  //Db.Port := StrToInt(TPORT_SERVER);
  Db.Connected := False;
  Try
    Db.Connected := True;
    Result := True;
  Except
   On E: Exception do
   begin
     Messagedlg('Gagal koneksi ke database '+Db.Server+#13+
                'Error: '+E.Message,mtError,[mbOK],0);
     ErrorProg('Gagal koneksi ke database '+Db.Server+#13+
                'Error: '+E.Message);
   end;
  end;
end;

function FormatKeUang(Data: Extended): String;
begin
  Result := FormatFloat('#,##0',Data);
end;

function BuangTitik(Data: String): Currency;
Var I     : Integer;
    TempI : Currency;
    Temp: String;
begin
   Temp := '';
   For I := 1 to Length(Data) do
   begin
     If (Data[I] = ',') or (Data[I] = '.') then
       Continue
     else
       Temp := Temp + Data[I];
   end;
   TempI := StrToInt64(Temp);
   Result := TempI;
end;

Function HitungUang(Uang: String):String;
const
  angka : array [0..9] of string = ('', 'SATU ', 'DUA ', 'TIGA ', 'EMPAT ',
    'LIMA ', 'ENAM ', 'TUJUH ', 'DELAPAN ', 'SEMBILAN ');
  level : array [0..7] of string = ('', 'RIBU', 'JUTA', 'MILYAR', 'TRILIYUN',
    'KUADRILIUM', 'Aujubiliun', 'Banyakamitiliun');
var
   x, grup3 : byte;
   hasil,
   processed,
   n, n1, n2, n3,TempHasil : string;
begin
   hasil := '';
   // Pad text so it fits into chunks of three character
   for x := 1 to 3-(length(Uang) mod 3) do insert ('0',Uang,1);
   // Grup3 is the number of group of 3 character
   grup3 := length(Uang) div 3;
   for x := grup3-1 downto 0 do begin
      processed := copy(Uang, 1, 3);
      Uang := copy(Uang, 4, length(Uang)-3);
      n1 := ''; n2 := ''; n3 := '';

      if processed[1] = '1' then n1 := 'SE'
        else n1 := angka[strtoint(processed[1])];
      if length(n1) > 0 then n1 := n1 + 'RATUS ';

      n2 := angka[strtoint(processed[2])];
      if length(n2) > 0 then n2 := n2 + 'PULUH ';
      n3 := angka[strtoint(processed[3])];

      if processed[2] = '1' then begin
         n2 := '';
         if processed [3] = '0' then n3 := 'SEPULUH '
         else if processed [3] = '1' then n3 := 'SEBELAS '
         else n3 := angka[strtoint(processed[3])] + 'BELAS ';
      end;
      n := n1+n2+n3;
      // untuk seribu
      if (n = 'SATU ') and (grup3 = 2) then n := 'SE';
      hasil := hasil + n;
      if n <> '' then hasil := hasil + level[x]+' ';
   end;
   TempHasil := Copy(Hasil,1,Length(Hasil)-1);
   If Hasil <> '' then
     HitungUang := TempHasil
   else
     HitungUang := 'NOL ';
end;

procedure AktifModeIndonesia;
Const hari  : Array[1..7] of string =('Minggu','Senin','Selasa','Rabu',
             'Kamis','Jumat','Sabtu');
      Bulan : Array[1..12] of String =('Januari','Februari','Maret','April',
             'Mei','Juni','Juli','Agustus','September','Oktober','November','Desember');
Var
    I : Byte;
begin
  DateSeparator := '/';
  ThousandSeparator := ',';
  DecimalSeparator := '.';
  CurrencyString := 'Rp. ';
  For I := 1 to 7 do
    LongDayNames[I] := Hari[I];
  For I := 1 to 12 do
    LongMonthNames[I] := Bulan[I];
  LongDateFormat := 'dddd, dd mmmm yyyy';
  ShortDateFormat := 'dd/mm/yyyy';
end;

procedure CenterControl(ParentObject, CenterObject: TControl; bTop, bLeft: Boolean;Space: Integer);
begin
  with CenterObject do
  begin
    if bLeft then
      Left := ParentObject.Width div 2 - Width div 2 + Space;

    if bTop then
      Top := ParentObject.Height div 2 - Height div 2;
  end;
end;

function IntToRoman(m: integer): string;
const
  k=10;
  roman_unit:array[1..k] of string = ('','I','II','III','IV','V','VI','VII','VIII','IX');
  roman_tens:array[1..k] of string = ('','X','XX','XXX','XL','L','LX','LXX','LXXX','XC');
  roman_hund:array[1..k] of string = ('','C','CC','CCC','CD','D','DC','DCC','DCCC','CM');
  roman_thou:array[1..6] of string = ('','M','MM','MMM','MMMM','MMMMM');
var
  n, v,w,x,y:integer;
begin
  n := m;
  if (n < 1) and ( n > 5999) then
    result:='5999';
  v := ((n - (n mod 1000)) div 1000)+1;
  n := (n mod 1000);
  w := ((n - (n mod 100)) div 100)+1;
  n := (n mod 100);
  x := ((n - (n mod 10)) div 10)+1;
  y := (n mod 10) + 1;

  result:= roman_thou[v] + roman_hund[w] + roman_tens[x] + roman_unit[y];
end;

procedure LebarkanListCombobox(vForm : TForm; vCombobox : TComboBox);
var
  i, ItemWidth : Integer;
begin
  ItemWidth := 0;
  With vCombobox do
  begin
  for i := 0 to Items.Count - 1 do
    if (vForm.Canvas.TextWidth(Items[i]) > ItemWidth) then
       ItemWidth := vForm.Canvas.TextWidth((Items[i])) + 50;
  Perform(CB_SETDROPPEDWIDTH, ItemWidth, 0);
  end;
end;

function ShowSNHDD: String;
var
  SerialNum: DWord;
  A,B: DWord;
  C: array [0..255] of Char;
  Buffer: array [0..255] of Char;
begin
  Result := 'xxxx';
  if GetVolumeInformation(
    PChar('C:\'),
    Buffer,
    256,
    @SerialNum,
    A,
    B,
    C,
    256) then Result := IntToStr(SerialNum);
end;

procedure LOG(Kegiatan: String);
Var F                : TextFile;
    NamaFile,NamaDir : String;
begin
  Try
   NamaDir := RootPath+'\LOG\KEGIATAN\'+FormatDateTime('mmyyyy',Now);
   If Not DirectoryExists(NamaDir) then
     ForceDirectories(NamaDir);

   NamaFile := FormatDateTime('ddmmyyyy',Now)+'.Log';
   AssignFile(F,NamaDir+'\'+NamaFile);
   FileMode := 0;
   If FileExists(NamaDir+'\'+NamaFile) then
     Append(F)
   else
     Rewrite(F);
   Writeln(F,FormatDateTime('hh:nn:ss:zzz ',Now)+Kegiatan);
   CloseFile(F);
  Except
  on E: Exception do
     Errorprog('Log.'+E.Message);
  end;
end;

procedure LOGDELETE(Kegiatan: String);
Var F                : TextFile;
    NamaFile,NamaDir : String;
begin
  Try
   NamaDir := RootPath+'\LOG\DELETE\';
   If Not DirectoryExists(NamaDir) then
     ForceDirectories(NamaDir);

   NamaFile := FormatDateTime('ddmmyyyy',Now)+'.Log';
   AssignFile(F,NamaDir+'\'+NamaFile);
   FileMode := 0;
   If FileExists(NamaDir+'\'+NamaFile) then
     Append(F)
   else
     Rewrite(F);
   Writeln(F,FormatDateTime('hh:nn:ss:zzz ',Now)+Kegiatan);
   CloseFile(F);
  Except
  on E: Exception do
     Errorprog('Log.'+E.Message);
  end;
end;

procedure ErrorProg(Keterangan: String);
Var F                : TextFile;
    NamaFile,NamaDir : String;
begin
  Try
   NamaDir := RootPath+'\LOG\ERROR\'+FormatDateTime('mmyyyy',Now);
   If Not DirectoryExists(NamaDir) then
     ForceDirectories(NamaDir);
   NamaFile := 'ProgError'+FormatDateTime('ddmmyyyy',Now)+'.Log';
   AssignFile(F,NamaDir+'\'+NamaFile);
   If FileExists(NamaDir+'\'+NamaFile) then
     Append(F)
   else
     Rewrite(F);
   Writeln(F,FormatDateTime('hh:nn:ss:zzz ',Now)+Keterangan);
   MessageDlgError('Error --> '+Keterangan);
   CloseFile(F);
  Except
  on E: Exception do
     Errorprog('ErrorProg.'+E.Message);
  end;
end;

procedure ErrorProgNoDialog(Keterangan: String);
Var F                : TextFile;
    NamaFile,NamaDir : String;
begin
  Try
   NamaDir := RootPath+'\LOG\ERROR\'+FormatDateTime('mmyyyy',Now);
   If Not DirectoryExists(NamaDir) then
     ForceDirectories(NamaDir);
   NamaFile := 'ProgError'+FormatDateTime('ddmmyyyy',Now)+'.Log';
   AssignFile(F,NamaDir+'\'+NamaFile);
   If FileExists(NamaDir+'\'+NamaFile) then
     Append(F)
   else
     Rewrite(F);
   Writeln(F,FormatDateTime('hh:nn:ss:zzz ',Now)+Keterangan);
   CloseFile(F);
  Except
  on E: Exception do
     Errorprog('ErrorProg.'+E.Message);
  end;
end;

procedure ErrorProgDialog(Keterangan: String);
Var F                : TextFile;
    NamaFile,NamaDir : String;
begin
  Try
   NamaDir := RootPath+'\LOG\ERROR\'+FormatDateTime('mmyyyy',Now);
   If Not DirectoryExists(NamaDir) then
     ForceDirectories(NamaDir);
   NamaFile := 'ProgError'+FormatDateTime('ddmmyyyy',Now)+'.Log';
   AssignFile(F,NamaDir+'\'+NamaFile);
   If FileExists(NamaDir+'\'+NamaFile) then
     Append(F)
   else
     Rewrite(F);
   Writeln(F,FormatDateTime('hh:nn:ss:zzz ',Now)+Keterangan);
   CloseFile(F);
   MessageDlgError(Keterangan);
  Except
  on E: Exception do
     Errorprog('ErrorProg.'+E.Message);
  end;
end;

function ClearEncrypt(Data: String): String;
Var I,J : Integer;
    S,Hasil : String;
begin
   S := Data;
   Hasil := '';
   For I := 1 to Length(S) do
     For J := 1 to Length(_Key) do
     begin
      If S[I] = _Key[J] then
      begin
        Hasil := Hasil + _Subs[J];
      end;
     end;
   Result := Hasil;
end;

function ClearDecrypt(Data: String): String;
Var I,J : Integer;
    S,Hasil : String;
begin
   S := Data;
   Hasil := '';
   For I := 1 to Length(S) do
     For J := 1 to Length(_Subs) do
     begin
      If S[I] = _Subs[J] then
      begin
        Hasil := Hasil + _Key[J];
      end;
     end;
   Result := Hasil;
end;

function MessageDlgWarning(Keterangan: String):Integer;
var
    frm              : TForm;
begin
   frm := Dialogs.CreateMessageDialog(Keterangan,dialogs.mtWarning,[dialogs.mbOK]);
   frm.Color := clOlive;
   frm.Font.Color := clBlack;
   Result := frm.ShowModal;
end;

function MessageDlgUpdate(Keterangan: String):Integer;
var
    frm              : TForm;
begin
   frm := Dialogs.CreateMessageDialog(Keterangan,dialogs.mtConfirmation,[dialogs.mbYes,dialogs.mbNo]);
   frm.Color := clYellow;
   frm.Font.Color := clBlack;
   Result := frm.ShowModal;
end;

function MessageDlgInsert(Keterangan: String):Integer;
var
    frm              : TForm;
begin
   frm := Dialogs.CreateMessageDialog(Keterangan,dialogs.mtConfirmation,[dialogs.mbYes,dialogs.mbNo]);
   frm.Color := clGreen;
   frm.Font.Color := clYellow;
   Result := frm.ShowModal;
end;

function MessageDlgError(Keterangan: String):Integer;
var
    frm              : TForm;
begin
   frm := Dialogs.CreateMessageDialog(Keterangan,dialogs.mtError,[dialogs.mbOK]);
   frm.Color := clRed;
   frm.Font.Color := clWhite;
   Result := frm.ShowModal;
end;

function MessageDlgInformation(Keterangan: String):Integer;
var
    frm              : TForm;
begin
   frm := Dialogs.CreateMessageDialog(Keterangan,dialogs.mtInformation,[dialogs.mbOK]);
   frm.Color := clSkyBlue;
   frm.Font.Color := clBlack;
   Result := frm.ShowModal;
end;

end.
