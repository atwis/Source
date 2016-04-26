object FAPM: TFAPM
  Left = 243
  Top = 194
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'DATA APM'
  ClientHeight = 442
  ClientWidth = 912
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCanResize = FormCanResize
  OnShow = FormShow
  DesignSize = (
    912
    442)
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 92
    Height = 23
    Caption = 'Data APM'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 2
    Top = 28
    Width = 906
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object Label2: TLabel
    Left = 7
    Top = 42
    Width = 91
    Height = 23
    Caption = 'Nama APM'
    Transparent = True
  end
  object CRDBGrid1: TCRDBGrid
    Left = 8
    Top = 119
    Width = 897
    Height = 320
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsQTampil
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = CRDBGrid1DblClick
  end
  object eNamaAPM: TcxTextEdit
    Left = 102
    Top = 38
    Anchors = [akLeft, akTop, akRight]
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = False
    Style.Color = clWindow
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 803
  end
  object Button1: TButton
    Left = 104
    Top = 73
    Width = 113
    Height = 41
    Cursor = crHandPoint
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 73
    Width = 113
    Height = 41
    Cursor = crHandPoint
    Caption = 'Baru'
    TabOrder = 3
    OnClick = Button2Click
  end
  object QTampil: TUniQuery
    Connection = DM.dbSrv
    Left = 416
    Top = 88
  end
  object dsQTampil: TUniDataSource
    DataSet = QTampil
    Left = 416
    Top = 112
  end
end