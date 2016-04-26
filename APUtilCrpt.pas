{
@abstract(Strings encrypting / decripting functions.)
@author(Ascanio Pressato)
@created(October 20, 2001)
@lastmod(Febbrary 05, 2006)
This unit provide some functions to encrypt and decrypt a string included the
Sircam Virus Encrypt / Decrypt algorithm and, for void antivirus warnings, my
personal variation.

@preformatted(
   Software distributed under the License is distributed on an "AS IS" basis,
   WITHOUT WARRANTY OF ANY KIND, either expressed or implied.
   See the License at http://www.gnu.org/copyleft/gpl.html for the specific rights and limitations.
   (it may become MPL 1.1)

   The Original Code is: APCrypt.Pas, released on 2001-10-20.

   The Initial Developer of Original Code is: Ascanio Pressato
   Copyright (C) 2001, 2005 Ascanio Pressato
   All Rights Reserved.

   Initial Developer Contact Data:
   e-mail: apressato@supereva.it  -  Home Page: http://xxxxxxx.xx

   Contributor(s):
     None ( for Now )

   --------------------------------------------------------------------------

   History:

     Ver 1.5.0
    ---------------
     2006-02-05
       AP         Add     APEncrypt Function.
       AP         Add     APDecrypt Function.
       AP         Add     RandomPassword Function.
       AP         Add     WarezPassword Function.

     Ver 1.0.0
    ---------------
     2005-12-12
       AP         Add     Implement documentation.

     Ver 0.2.0
    ---------------
     2002-11-30
       AP         Add     APSirCamDecrypt Function.
       AP         Add     APSirCamEncrypt Function.

     Ver 0.1.0
    ---------------
     2001-10-20
       AP        	 Original Version

   --------------------------------------------------------------------------

   You may retrieve the latest version of this file at the
   xxxxxx home page, located at (Domain not registered yet)

   Known Issues:
     None.
)                                                                        }

Unit APUtilCrpt;

Interface

Const
  { @abstract(Length of the original Sircam OffSet Array. )}
  KOffArrayLen = 4;
  { @abstract(Original Sircam OffSet Array.) }
  KOffArray: Array [1..KOffArrayLen] Of Integer = (7, 4, 5, 6);


{ @abstract(Crypring function that take a string in input and return a numeric crypted string.)
  For Example 'APressato.Com' became '51220638316410859514630995176562582'.
  @seealso(StrDecrypt)}
Function StrEncrypt(S: String): String;
{ @abstract(Decrypting function that take a numeric crypted string and return the
  decrypted string.)
  For Example '51220638316410859514630995176562582' became 'APressato.Com'.
  @seealso(StrEncrypt)}
Function StrDecrypt(S: String): String;

{ @abstract(Decrypt Algorithm used by Sircam Virus.) @seealso(SirCamEncrypt)}
Function SirCamDecrypt(Const St: String): String;
{ @abstract(Encrypt Algorithm used by Sircam Virus.) @seealso(SirCamDecrypt)}
Function SirCamEncrypt(Const St: String): String;
{ @abstract(My Variant of Decrypt Algorithm used by Sircam Virus.)
  @seealso(APSirCamEncrypt)
  @seealso(SirCamDecrypt)
  @seealso(SirCamEncrypt)   }
Function APSirCamDecrypt(Const St: String): String;
{ @abstract(My Variant of Encrypt Algorithm used by Sircam Virus.)
  @seealso(APSirCamDecrypt)
  @seealso(SirCamDecrypt)
  @seealso(SirCamEncrypt)   }
Function APSirCamEncrypt(Const St: String): String;

{ @abstract(My latest variant of Sircam Decrypting Algorithm. Now is possible to specify
  Offset Array. )}
Function APDecrypt(Const St: String; OffArray: Array Of Integer): String;
{ @abstract(My latest variant of Sircam Crypting Algorithm. Now is possible to specify
  Offset Array. )}
Function APEncrypt(Const St: String; OffArray: Array Of Integer): String;

{ @abstract(Generate a random password according with CharSet an PswdLength.)
  CharSet is the range of chars that can be used to generate password and
  PswdLength is the length of the password. }
Function RandomPassword(PswdLength: Integer; CharSet: String): String;
{ @abstract(Convert a string i warez mode.)
  For Example 'APressato.Com' became '3Pr355470.C0m'.
  Char is changeg according with the follow table: 
  @preformatted(       A = 4
       E = 3
       I = 1
       O = 0
       S = 5
       T = 7)}
Function WarezPassword(aPswd: String): String;


Implementation

Uses
  Windows, SysUtils, Classes;

{****************************************************************}
{ [ Old Encrypt / Decrypt Functions Provide by Adriano Wendler ] }
{________________________________________________________________}

Function StrEncrypt(S: String): String;
Type
  PWORD = ^WORD;
Var
  Len: Integer;
  I: Integer;
  V: DWORD;
  P: PChar;
  Buffer: String[255];
Begin
  Buffer := S;
  Len := Length(Buffer) + 1;
  If (Len Mod 2) <> 0 Then
    Inc(Len);

  If Len < 10 Then
    Len := 10;

  I := Length(Buffer);
  If I = 0 Then
    Buffer := IntToStr(GetTickCount)
  Else
    While Length(Buffer) < 10 Do
      Buffer := Buffer + Buffer;
  SetLength(Buffer, I);

  Result := '';
  P := PChar(@Buffer[0]);
  For I := 1 To Len Div 2 Do
  Begin
    V := 34567 + PWORD(P)^;
    P := P + 2;
    Result := Result + Format('%5.5d', [V]);
  End;
End;

Function StrDecrypt(S: String): String;
Type
  PWORD = ^WORD;
Var
  Buffer: String;
  PW: String[255];
  P: PWORD;
  I: Integer;
  V: Integer;
Begin
  PW := '                                   ';
  P := PWORD(@PW[0]);
  I := 1;
  While I <= Length(S) Do
  Begin
    Buffer := Copy(S, I, 5);
    I := I + 5;
    V := StrToInt(Buffer) - 34567;
    P^ := V;
    Inc(P);
  End;
  Result := PW;
End;


{*************************************************************}
{       [ My latest Crypting / Decrypting functions ]         }
{_____________________________________________________________}

Function GetOffSet(Const aPos: Integer; OffArray: Array Of Integer): Integer;
Begin
  Result := OffArray[High(OffArray)];
  If (aPos Mod High(OffArray)) > 0 Then
    Result := OffArray[aPos Mod High(OffArray)];
End;

Function APDecrypt(Const St: String; OffArray: Array Of Integer): String;
Var
  I: Integer;
Begin
  Result := '';
  For I := 1 To Length(St) Do
    Result := Result + Chr(Ord(St[I]) - Length(St) - I - GetOffSet(I, OffArray));
End;

Function APEncrypt(Const St: String; OffArray: Array Of Integer): String;
Var
  I: Integer;
Begin
  Result := '';
  For I := 1 To Length(St) Do
    Result := Result + Chr(Ord(St[I]) + Length(St) + I + GetOffSet(I, OffArray));
End;


{*************************************************************}
{      [ SirCam Virus Crypting / Decrypting functions ]       }
{_____________________________________________________________}

Function GetSirCamOffSet(Const aPos: Integer): Integer;
Begin
  Result := GetOffSet(aPos, KOffArray);
End;

Function SirCamDecrypt(Const St: String): String;
Var
  I: Integer;
Begin
  Result := '';
  For I := 1 To Length(St) Do
    Result := Result + Chr(Ord(St[I]) - Length(St) - GetSirCamOffSet(I));
End;

Function SirCamEncrypt(Const St: String): String;
Var
  I: Integer;
Begin
  Result := '';
  For I := 1 To Length(St) Do
    Result := Result + Chr(Ord(St[I]) + Length(St) + GetSirCamOffSet(I));
End;

Function APSirCamDecrypt(Const St: String): String;
Begin
  Result := APDecrypt(St, KOffArray);
End;

Function APSirCamEncrypt(Const St: String): String;
Begin
  Result := APEncrypt(st, KOffArray);
End;

{*************************************************************}
{                 [ Miscellaneus Funtions. ]                  }
{_____________________________________________________________}


Function RandomPassword(PswdLength: Integer; CharSet: String): String;
Var
  CharCount: Integer;
Begin
  Result := EmptyStr;
  For CharCount := 1 To PswdLength Do
  Begin
    Randomize;
    Result := Format('%s%s', [Result, CharSet[Random(Length(CharSet)) + 1]]);
  End;
end;

Function WarezPassword(aPswd: String): String;
Const
  AlphaNormal = 'AEIOST';
  AlphaWarez  = '431057';
Var
  I, J: Byte;
Begin
  Result := aPswd;
  For I := 1 To Length(AlphaNormal) Do
  Begin
    Repeat
      J := Pos(AlphaNormal[I], UpperCase(Result));
      If J > 0 Then
        Result[J] := AlphaWarez[I];
    Until J = 0;
  End;
End;


End.
