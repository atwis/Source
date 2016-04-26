object fDealer: TfDealer
  Left = 230
  Top = 154
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'Dealer'
  ClientHeight = 449
  ClientWidth = 922
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    922
    449)
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 111
    Height = 23
    Caption = 'Data Dealer'
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
    Width = 908
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object Label2: TLabel
    Left = 7
    Top = 42
    Width = 109
    Height = 23
    Caption = 'Nama Dealer'
    Transparent = True
  end
  object Label3: TLabel
    Left = 7
    Top = 74
    Width = 123
    Height = 23
    Caption = 'Dealer SNHDD'
    Transparent = True
  end
  object Label4: TLabel
    Left = 7
    Top = 106
    Width = 90
    Height = 23
    Caption = 'Dealer Key'
    Transparent = True
  end
  object Label5: TLabel
    Left = 7
    Top = 138
    Width = 72
    Height = 23
    Caption = 'PNBP R2'
    Transparent = True
  end
  object Label6: TLabel
    Left = 336
    Top = 138
    Width = 72
    Height = 23
    Caption = 'PNBP R4'
    Transparent = True
  end
  object Label7: TLabel
    Left = 600
    Top = 138
    Width = 57
    Height = 23
    Caption = 'Is Aktif'
    Transparent = True
  end
  object CRDBGrid1: TCRDBGrid
    Left = 8
    Top = 219
    Width = 899
    Height = 225
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
  object eNama: TcxTextEdit
    Left = 176
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
    Width = 731
  end
  object Button1: TButton
    Left = 178
    Top = 174
    Width = 113
    Height = 41
    Cursor = crHandPoint
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 298
    Top = 174
    Width = 113
    Height = 41
    Cursor = crHandPoint
    Caption = 'Baru'
    TabOrder = 8
    OnClick = Button2Click
  end
  object eSNHDD: TcxTextEdit
    Left = 176
    Top = 70
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
    TabOrder = 2
    Width = 731
  end
  object eKey: TcxTextEdit
    Left = 176
    Top = 102
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
    TabOrder = 3
    Width = 731
  end
  object ePNBPR2: TcxTextEdit
    Left = 176
    Top = 134
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = False
    Properties.OnChange = ePNBPR2PropertiesChange
    Style.Color = clWindow
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 145
  end
  object ePNBPR4: TcxTextEdit
    Left = 422
    Top = 134
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = False
    Properties.OnChange = ePNBPR4PropertiesChange
    Style.Color = clWindow
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Width = 145
  end
  object cbIsAktif: TComboBox
    Left = 671
    Top = 136
    Width = 145
    Height = 31
    ItemHeight = 23
    ItemIndex = 1
    TabOrder = 6
    Text = 'AKTIF'
    Items.Strings = (
      'NON AKTIF'
      'AKTIF')
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
