object fMain: TfMain
  Left = 358
  Top = 215
  Width = 577
  Height = 292
  BorderIcons = [biSystemMenu]
  Caption = 'Update SINRANMOR'
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 162
    Height = 16
    Caption = 'Update Aplikasi SINRANMOR'
  end
  object clProgressBar1: TclProgressBar
    Left = 17
    Top = 40
    Width = 535
    Height = 31
    ProgressSplit = 50
    InternetControl = clDownLoader1
  end
  object edtStatistic: TEdit
    Left = 16
    Top = 73
    Width = 535
    Height = 29
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 452
    Top = 107
    Width = 99
    Height = 41
    Caption = 'Download'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 152
    Width = 534
    Height = 96
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object clDownLoader1: TclDownLoader
    BatchSize = 4096
    InternetAgent = 'Mozilla/4.0 (compatible; Clever Internet Suite)'
    ThreadCount = 2
    URL = 'http://www.clevercomponents.com/images/testimage.jpg'
    LocalFile = 'c:\testimage.jpg'
    OnStatusChanged = clDownLoader1StatusChanged
    OnGetResourceInfo = clDownLoader1GetResourceInfo
    OnDataItemProceed = clDownLoader1DataItemProceed
    LocalFolder = 'c:\'
    Left = 154
    Top = 57
  end
  object Archiver: TZipForge
    ExtractCorruptedFiles = False
    CompressionLevel = clMax
    CompressionMode = 9
    CurrentVersion = '6.10 '
    SpanningMode = smNone
    SpanningOptions.AdvancedNaming = True
    SpanningOptions.VolumeSize = vsAutoDetect
    Options.ShareMode = smShareCompat
    Options.FlushBuffers = True
    Options.OEMFileNames = True
    InMemory = False
    Zip64Mode = zmDisabled
    UnicodeFilenames = False
    EncryptionMethod = caPkzipClassic
    Left = 8
    Top = 80
  end
end
