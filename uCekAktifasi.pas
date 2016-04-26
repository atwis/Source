unit uCekAktifasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TfCekAktifasi = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lVersion: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    eKodeInisialisasi: TEdit;
    eKodeRegistrasi: TMemo;
    Label6: TLabel;
    ePolda: TEdit;
    Bevel2: TBevel;
    bCreate: TButton;
    Label7: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    laktifasi: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCreateClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCekAktifasi: TfCekAktifasi;

implementation
uses
   uMain, uVariabel, uModul, uLogin;
{$R *.dfm}

procedure TfCekAktifasi.FormCreate(Sender: TObject);
begin
  lVersion.Caption := fMain.Caption;
  ePolda.Text := TPerusahaan;
  eKodeInisialisasi.Text := tUUIDKey;
  eKodeRegistrasi.Text := '';
  laktifasi.Caption := tAktifasi;
end;

procedure TfCekAktifasi.FormShow(Sender: TObject);
begin
  ePolda.SetFocus;
end;

procedure TfCekAktifasi.bCreateClick(Sender: TObject);
begin
  if ePolda.Text <> '' then
  begin
    if Length(ePolda.Text) > 4 then
    begin
      if eKodeInisialisasi.Text <> '' then
      begin
        if eKodeRegistrasi.Text = EncryptText('Up1eXu',tUUIDKey) then
        begin
          tAktifasi := eKodeRegistrasi.Text;
          laktifasi.Caption := tAktifasi;
          TPerusahaan := ePolda.Text;
          fMain.InitConfig('1');
          MessageDlg('PROSES REGISTRASI SUKSES',mtInformation,[mbOK],0);
        end
        else
        begin
          MessageDlg('KODE REGISTRASI TIDAK SESUAI',mtError,[mbOK],0);
        end;
      end
      else
      begin
        MessageDlg('KODE INISIALISASI HARUS DIISI',mtError,[mbOK],0);
      end
    end
    else
    begin
      MessageDlg('PENULISAN UNTUK NAMA POLDA HARUS BENAR',mtError,[mbOK],0);
    end;
  end
  else
  begin
    MessageDlg('NAMA POLDA HARUS DIISI',mtError,[mbOK],0);
  end;
end;

procedure TfCekAktifasi.Button3Click(Sender: TObject);
begin
  if tAktifasi <> EncryptText(TPerusahaan+'#Up1EXu',ShowSNHDD) then
     Application.Terminate
  else
  begin
     fCekAktifasi.Close;
     if fFormAktif <> nil then
        fFormAktif.Close;
      fLogin := TfLogin.Create(nil);
      fLogin.Parent := fMain.pProses;
      fLogin.Show;
  end;
end;

end.
