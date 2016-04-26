unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, clProgressBar, IniFiles, clDownLoader, clWinInet, clDC,
  clDCUtils, clMultiDC, clSingleDC, ExtCtrls, ComCtrls, zlib, ZipForge, ShellApi;

type
  TfMain = class(TForm)
    Label1: TLabel;
    edtStatistic: TEdit;
    clProgressBar1: TclProgressBar;
    Button1: TButton;
    clDownLoader1: TclDownLoader;
    Memo1: TMemo;
    Archiver: TZipForge;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CanClose: Boolean);
    procedure clDownLoader1DataItemProceed(Sender: TObject;
      ResourceInfo: TclResourceInfo; AStateItem: TclResourceStateItem;
      CurrentData: PAnsiChar; CurrentDataSize: Integer);
    procedure clDownLoader1GetResourceInfo(Sender: TObject;
      ResourceInfo: TclResourceInfo);
    procedure clDownLoader1StatusChanged(Sender: TObject;
      Status: TclProcessStatus);
  private
    { Private declarations }
  public
    { Public declarations }
    tURLUpdate,RootPath : String;
    tThreadUpdate, tBufferUpdate : integer;
    procedure InitIni(Jenis: Char);
    function KillApp(const sCapt: PChar) : boolean;
  end;

var
  fMain: TfMain;

implementation
{$R *.dfm}

{ TfMain }

procedure TfMain.InitIni(Jenis: Char);
begin
  With TIniFile.Create(RootPath+'update_sinranmor.ini') do
  begin
    Case Jenis of
    '0' : begin //init default
            WriteString('SETTING','URL','http://localhost/filedownload');
            WriteInteger('SETTING','THREAD',4);
            WriteInteger('SETTING','BUFFER',4);
          end;
    '1' : begin //baca
            tURLUpdate := ReadString('SETTING','URL','http://localhost/filedownload');
            tThreadUpdate := ReadInteger('SETTING','THREAD',4);
            tBufferUpdate := ReadInteger('SETTING','BUFFER',4);
          end;
    '2' : begin //tulis
            WriteString('SETTING','URL',tURLUpdate);
            WriteInteger('SETTING','THREAD',tThreadUpdate);
            WriteInteger('SETTING','BUFFER',tBufferUpdate);
          end;
    end;
    Free;
  end;
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
  RootPath := ExtractFilePath(Application.Exename);
  If Not FileExists(RootPath+'\update_sinranmor.ini') then
  begin
    InitIni('0');
  end;
  InitIni('1');
end;

procedure TfMain.Button1Click(Sender: TObject);
begin
  clDownLoader1.URL := tURLUpdate;
  clDownLoader1.UserName := '';
  clDownLoader1.Password := '';
  clDownLoader1.LocalFile := RootPath+'\SIMRANMOR.rar';
  clDownLoader1.LocalFolder := RootPath;
  clDownLoader1.ThreadCount := tThreadUpdate;
  clDownLoader1.BatchSize := tBufferUpdate;
  clDownLoader1.Start(True);
  Memo1.Lines.Add('Tunggu Sebentar ...');
end;

procedure TfMain.FormClose(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := not clDownLoader1.IsBusy;
end;

procedure TfMain.clDownLoader1DataItemProceed(Sender: TObject;
  ResourceInfo: TclResourceInfo; AStateItem: TclResourceStateItem;
  CurrentData: PAnsiChar; CurrentDataSize: Integer);
var
  State: TclResourceStateList;
begin
  State := AStateItem.ResourceState;
  edtStatistic.Text := Format('%.2n of %.2n Kb proceed, speed %.2n Kb/sec, elapsed %.2n min, remains %.2n min',
    [State.BytesProceed / 1024, State.ResourceSize / 1024, State.Speed / 1024,
    State.ElapsedTime / 60, State.RemainingTime / 60]);
end;

procedure TfMain.clDownLoader1GetResourceInfo(Sender: TObject;
  ResourceInfo: TclResourceInfo);
var
  s: String;
begin
  if (ResourceInfo <> nil) then
  begin
    s := 'Resource ' + ResourceInfo.Name + '; Size ' + IntToStr(ResourceInfo.Size)
      + '; Date ' + DateTimeToStr(ResourceInfo.Date)
      + '; Type ' + ResourceInfo.ContentType;
    if ResourceInfo.Compressed then
    begin
      s := s + '; Compressed';
    end;
  end else
  begin
    s := 'There are no any info available.';
  end;
  Memo1.Lines.Add(s);
end;

procedure TfMain.clDownLoader1StatusChanged(Sender: TObject;
  Status: TclProcessStatus);
var
  s: String;
begin
  case Status of
    psSuccess:
    begin
      Memo1.Lines.Add('Process completed successfully');
      Memo1.Lines.Add('ExtractFiles ...');
      with Archiver do
      begin
        FileName := RootPath+'\SIMRANMOR.zip';
        OpenArchive(fmOpenRead);
        BaseDir := RootPath;
        ExtractFiles('*.*');
        CloseArchive();
        Memo1.Lines.Add('ExtractFiles True')
      end;
      ShellExecute(0,'open','SIMRANMOR.exe','','',SW_NORMAL);
      Application.Terminate;
    end;
    psFailed:
      begin
        s := (Sender as TclDownLoader).Errors.Text;
        MessageBox(0, PChar(s), 'Error', 0);
      end;
    psTerminated: MessageBox(0, 'Process stopped', 'Message', 0);
    psErrors: MessageBox(0, 'Process completed with some warnings', 'Message', 0);
  end;
end;
function TfMain.KillApp(const sCapt: PChar): boolean;
var
  AppHandle:THandle;
begin
  AppHandle:=FindWindow(Nil, sCapt) ;
  Result:=PostMessage(AppHandle, WM_QUIT, 0, 0) ;
end;

end.
