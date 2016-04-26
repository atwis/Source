unit uSettingDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, ExtCtrls, StdCtrls, cxButtons, cxTextEdit,
  dxSkinsCore, dxSkinsDefaultPainters;

type
  TfSettingDB = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    eUserName: TcxTextEdit;
    ePassw: TcxTextEdit;
    cxButton1: TcxButton;
    btnKeluar: TcxButton;
    eHost: TcxTextEdit;
    ePort: TcxTextEdit;
    eSID: TcxTextEdit;
    Label1: TLabel;
    Shape1: TShape;
    procedure FormShow(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSettingDB: TfSettingDB;

implementation

uses
   uModul, uVariabel, uDM, uMain;
{$R *.dfm}

procedure TfSettingDB.FormShow(Sender: TObject);
begin
  eUserName.Text := TUSER_SERVER;
  ePassw.Text := TPASSW_SERVER;
  eHost.Text := THOST_SERVER;
  ePort.Text := TPORT_SERVER;
  eSID.Text := TSID_SERVER;
  eUserName.SetFocus;
end;

procedure TfSettingDB.btnKeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfSettingDB.cxButton1Click(Sender: TObject);
begin
  TUSER_SERVER := eUserName.Text;
  TPASSW_SERVER := ePassw.Text;
  THOST_SERVER := eHost.Text;
  TPORT_SERVER := ePort.Text;
  TSID_SERVER := eSID.Text;

  if InitDB(DM.dbSrv) then
  begin
    fMain.InitConfig('1');
    Log('Setting Database Berhasil !');
    MessageDlg('Database Berhasil diSetting!',mtInformation,[mbOK],0);
    btnKeluar.Click;
  end
  else
    eUserName.SetFocus;
end;

end.
