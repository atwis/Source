object fImportDataFaktur: TfImportDataFaktur
  Left = 243
  Top = 179
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'IMPORT DATA FAKTUR'
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
  DesignSize = (
    912
    442)
  PixelsPerInch = 96
  TextHeight = 23
  object lJudul: TLabel
    Left = 8
    Top = 3
    Width = 184
    Height = 23
    Caption = 'Import Data Faktur'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Shape1: TShape
    Left = 0
    Top = 28
    Width = 913
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object Label2: TLabel
    Left = 9
    Top = 46
    Width = 123
    Height = 23
    Caption = 'Lokasi File exel'
  end
  object Label10: TLabel
    Left = 102
    Top = 83
    Width = 63
    Height = 23
    Caption = 'Sheets:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object eLokasi: TEdit
    Left = 142
    Top = 35
    Width = 687
    Height = 31
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object bCariLokasi: TButton
    Left = 833
    Top = 34
    Width = 75
    Height = 33
    Cursor = crHandPoint
    Anchors = [akTop, akRight]
    Caption = 'Cari'
    TabOrder = 1
    OnClick = bCariLokasiClick
  end
  object TombolSound2: TButton
    Left = 8
    Top = 78
    Width = 88
    Height = 36
    Caption = 'Connect'
    TabOrder = 2
    OnClick = TombolSound2Click
  end
  object ComboBox1: TComboBox
    Left = 170
    Top = 80
    Width = 657
    Height = 31
    ItemHeight = 23
    TabOrder = 3
  end
  object Button1: TButton
    Left = 833
    Top = 79
    Width = 74
    Height = 33
    Caption = 'Proses'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 7
    Top = 120
    Width = 899
    Height = 318
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssBoth
    TabOrder = 5
  end
  object OpenDialog1: TOpenDialog
    Filter = 'excel|*.xls|excel 2007|*.xlsx'
    Title = 'Ambil Data Faktur'
    Left = 264
  end
  object DB: TADOConnection
    CursorLocation = clUseServer
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 600
    Top = 164
  end
  object ADOQuery1: TADOQuery
    Connection = DB
    Parameters = <>
    Left = 636
    Top = 164
  end
end
