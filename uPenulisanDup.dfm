object fPenulisanDup: TfPenulisanDup
  Left = 244
  Top = 63
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'PENULISAN'
  ClientHeight = 629
  ClientWidth = 942
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    942
    629)
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 192
    Height = 23
    Caption = 'Penulisan - Duplikat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = -3
    Top = 27
    Width = 944
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object Label2: TLabel
    Left = 219
    Top = 41
    Width = 72
    Height = 23
    Caption = 'No BPKB'
    Transparent = True
  end
  object Label3: TLabel
    Left = 219
    Top = 70
    Width = 92
    Height = 23
    Caption = 'No Rangka'
    Transparent = True
  end
  object Label4: TLabel
    Left = 219
    Top = 100
    Width = 129
    Height = 23
    Caption = 'Barcode Berkas'
    Transparent = True
  end
  object Shape2: TShape
    Left = -3
    Top = 134
    Width = 944
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object Shape3: TShape
    Left = -3
    Top = 228
    Width = 944
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object Label35: TLabel
    Left = 380
    Top = 138
    Width = 90
    Height = 23
    Caption = 'Halaman 1'
    Transparent = True
  end
  object Label36: TLabel
    Left = 502
    Top = 138
    Width = 90
    Height = 23
    Caption = 'Halaman 2'
    Transparent = True
  end
  object Label37: TLabel
    Left = 625
    Top = 138
    Width = 90
    Height = 23
    Caption = 'Halaman 3'
    Transparent = True
  end
  object Label38: TLabel
    Left = 748
    Top = 138
    Width = 90
    Height = 23
    Caption = 'Halaman 4'
    Transparent = True
  end
  object Label39: TLabel
    Left = 8
    Top = 240
    Width = 72
    Height = 23
    Caption = 'No BPKB'
    Transparent = True
  end
  object Label40: TLabel
    Left = 8
    Top = 269
    Width = 111
    Height = 23
    Caption = 'No Reg BPKB'
    Transparent = True
  end
  object Label41: TLabel
    Left = 596
    Top = 240
    Width = 64
    Height = 23
    Caption = 'Tempat'
    Transparent = True
  end
  object Label42: TLabel
    Left = 596
    Top = 269
    Width = 68
    Height = 23
    Caption = 'Tanggal'
    Transparent = True
  end
  object Label43: TLabel
    Left = 7
    Top = 37
    Width = 153
    Height = 23
    Caption = 'Tanggal Penulisan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label44: TLabel
    Left = 11
    Top = 143
    Width = 89
    Height = 23
    Caption = 'Jenis Buku'
    Transparent = True
  end
  object eNoBPKB_CB: TcxTextEdit
    Left = 353
    Top = 37
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
    OnKeyDown = eNoBPKB_CBKeyDown
    Width = 311
  end
  object eNoRangka_CB: TcxTextEdit
    Left = 353
    Top = 67
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
    OnKeyDown = eNoRangka_CBKeyDown
    Width = 311
  end
  object eNoBarcode_CB: TcxTextEdit
    Left = 353
    Top = 97
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
    OnKeyDown = eNoBarcode_CBKeyDown
    Width = 311
  end
  object bCari_CB: TcxButton
    Left = 666
    Top = 38
    Width = 155
    Height = 90
    Cursor = crHandPoint
    Caption = 'Cari Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = bCari_CBClick
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000150D
      051FAC6B2CFF4D30137100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AC6B
      2CFFAC6B2CFFAC6B2CFF4C2F1370000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000101011526
      31352F556C76437899A75191B9CA5AA1CEE15EA9D9EC060B0F10000000004028
      105FAC6B2CFFAC6B2CFFAC6B2CFF432A1163241709338E5825CDB06D2DFFB06D
      2DFF935B26D43D26105400000000000000000000000000000000000000000000
      000000000000000000000000000000000000030607082E526972599FCCDE66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF5090B8C9070C10110000
      00003F27105DAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B
      2CFFAC6B2CFFAC6B2CFFA3662AF2000000000000000000000000000000000000
      0000000000000000000000000000111E272A569BC6D866B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF5090B8C9070C
      10110000000037220E52AC6B2CFFAC6B2CFFAC6B2CFFD3B08FFFF4ECE3FEF8F1
      EBFFD8B99CFEAC6B2CFFAC6B2CFFA7682BF80000000000000000000000000000
      000000000000000000000B13191B5DA7D6E966B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF2039
      49500000000024160934AC6B2CFFAC6B2CFFF9F4EFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFAC6B2CFFAC6B2CFF4A2E136800000000000000000000
      000000000000000000003B6A889466B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF65B5E7FC060A
      0D0E000000008B5623CCAC6B2CFFD1AD8AFFFFFFFFFFFDFDFDFEFDFDFDFEFFFF
      FFFFFDFDFDFEFDFDFDFEDFC7AEFFAC6B2CFFA2652AEC00000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF59A0CDDF0000
      000000000000AC6B2CFFAC6B2CFFF3E9DFFEFFFFFFFFFDFDFDFEFDFDFDFEFFFF
      FFFFFDFDFDFEFDFDFDFEFFFFFFFFAC6B2CFFAC6B2CFF00000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF599FCCDE0000
      000000000000AC6B2CFFAC6B2CFFF6ECE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFAC6B2CFFAC6B2CFF00000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF64B4E6FB0407
      090A000000008E5924D1AC6B2CFFD6B594FFFFFFFFFFFDFDFDFEFDFDFDFEFFFF
      FFFFFDFDFDFEFDFDFDFEE3CDB7FFAC6B2CFFA7682BF500000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF1F38
      484E0000000039230F51AC6B2CFFAC6B2CFFFFFFFFFFFDFDFDFEFDFDFDFEFFFF
      FFFFFDFDFDFEFDFDFDFEAC6B2CFFAC6B2CFF5635167A00000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF4D8A
      B0C00101020200000000A06329EDAC6B2CFFAC6B2CFFDCBFA4FFFDFAF7FFFEFD
      FCFFE2CBB4FFAC6B2CFFAC6B2CFFAC6B2CFF0000000000000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF2C4F656E0000000000000000A5662AF4AC6B2CFFAC6B2CFFAC6B2CFFAC6B
      2CFFAC6B2CFFAC6B2CFFAC6B2CFF000000000000000000000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF65B5E7FC2B4D626B0000000000000000442A11629C6128E8AC6B2CFFAC6B
      2CFFA3662AF25434157900000000000000000000000000000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF4983A7B6192D3A3F0203040400000000000000000101
      0202000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF61AEDEF25191B9CA5090B8C85FAA
      D9ED000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066B7EAFF66B7EAFF66B7EAFF66B7EAFF5FAAD9ED4D8B
      B1C13F71909D355F79842E52697228475B632643565E2542545C27465A622C4F
      656E345D76813E6F8E9B4C88ADBD5EA9D9EC66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066B7EAFF599FCCDE30566E78111E272A000000000204
      0606101D25281C323F452440525929495E662B4E636C2B4E636C29495E662440
      52591C324046101D262902040606000000000F1B22252E526972579CC8DA66B7
      EAFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000002D506770030506071A2F3D423B6A88945496C0D164B4
      E6FB66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF65B5E7FC5497C2D33C6C8B971C334147030506072F54
      6B75000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C151B1D508FB7C766B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF5395BFD0101C
      2427000000000000000000000000000000000000000000000000000000000000
      00000000000000000000467DA0AE66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF4E8B
      B2C2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000037627E8966B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF3F71
      909D000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010102022C4F656E5AA1CEE066B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
      EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF5BA3D0E330556D770203
      0404000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001010113222B2F2A4B5F683C6B
      89954A84A9B85497C1D25BA4D1E460ACDBEF62B0E1F562B0E1F560ACDBEF5CA4
      D2E55497C2D34A85AAB93C6C8A962B4D626B14242E3200010101000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    Layout = blGlyphTop
  end
  object cxPageControl1: TcxPageControl
    Left = 1
    Top = 302
    Width = 939
    Height = 323
    ActivePage = cxTabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    Style = 8
    TabOrder = 20
    ClientRectBottom = 323
    ClientRectRight = 939
    ClientRectTop = 34
    object cxTabSheet1: TcxTabSheet
      Caption = 'I. Identitas Pemilik'
      ImageIndex = 0
      DesignSize = (
        939
        289)
      object Label5: TLabel
        Left = 16
        Top = 13
        Width = 112
        Height = 23
        Caption = 'Nama Pemilik'
        Transparent = True
      end
      object Label6: TLabel
        Left = 16
        Top = 68
        Width = 120
        Height = 23
        Caption = 'Alamat Pemilik'
        Transparent = True
      end
      object Label7: TLabel
        Left = 16
        Top = 145
        Width = 145
        Height = 23
        Caption = 'Pekerjaan Pemilik'
        Transparent = True
      end
      object Label8: TLabel
        Left = 16
        Top = 176
        Width = 102
        Height = 23
        Caption = 'No Identitas'
        Transparent = True
      end
      object eInfoPekerjaan_CB: TcxTextEdit
        Left = 167
        Top = 141
        Anchors = [akLeft, akTop, akRight]
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 763
      end
      object eInfoNoIdentitas_CB: TcxTextEdit
        Left = 167
        Top = 172
        Anchors = [akLeft, akTop, akRight]
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 763
      end
      object eInfoNamaPemilik_CB: TcxMemo
        Left = 167
        Top = 9
        Anchors = [akLeft, akTop, akRight]
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 0
        Height = 54
        Width = 763
      end
      object eInfoAlamatPemilik_CB: TcxMemo
        Left = 167
        Top = 64
        Anchors = [akLeft, akTop, akRight]
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 1
        Height = 77
        Width = 763
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'II. Identitas Kendaraan'
      ImageIndex = 1
      object Label9: TLabel
        Left = 19
        Top = 12
        Width = 69
        Height = 23
        Caption = 'No Polisi'
        Transparent = True
      end
      object Label10: TLabel
        Left = 19
        Top = 41
        Width = 41
        Height = 23
        Caption = 'Merk'
        Transparent = True
      end
      object Label11: TLabel
        Left = 19
        Top = 70
        Width = 36
        Height = 23
        Caption = 'Tipe'
        Transparent = True
      end
      object Label12: TLabel
        Left = 19
        Top = 100
        Width = 41
        Height = 23
        Caption = 'Jenis'
        Transparent = True
      end
      object Label13: TLabel
        Left = 19
        Top = 129
        Width = 50
        Height = 23
        Caption = 'Model'
        Transparent = True
      end
      object Label14: TLabel
        Left = 19
        Top = 159
        Width = 98
        Height = 23
        Caption = 'Tahun Buat'
        Transparent = True
      end
      object Label15: TLabel
        Left = 19
        Top = 188
        Width = 62
        Height = 23
        Caption = 'Silinder'
        Transparent = True
      end
      object Label16: TLabel
        Left = 19
        Top = 218
        Width = 55
        Height = 23
        Caption = 'Warna'
        Transparent = True
      end
      object Label17: TLabel
        Left = 480
        Top = 12
        Width = 92
        Height = 23
        Caption = 'No Rangka'
        Transparent = True
      end
      object Label18: TLabel
        Left = 480
        Top = 41
        Width = 77
        Height = 23
        Caption = 'No Mesin'
        Transparent = True
      end
      object Label19: TLabel
        Left = 480
        Top = 70
        Width = 77
        Height = 23
        Caption = 'Jml Roda'
        Transparent = True
      end
      object Label20: TLabel
        Left = 480
        Top = 99
        Width = 94
        Height = 23
        Caption = 'Jml Sumbu'
        Transparent = True
      end
      object Label21: TLabel
        Left = 480
        Top = 129
        Width = 106
        Height = 23
        Caption = 'Bahan Bakar'
        Transparent = True
      end
      object eInfoNopol_CB: TcxTextEdit
        Left = 166
        Top = 9
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 292
      end
      object eInfoMek_CB: TcxTextEdit
        Left = 166
        Top = 39
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 292
      end
      object eInfoTipe_CB: TcxTextEdit
        Left = 166
        Top = 69
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 292
      end
      object eInfoJenis_CB: TcxTextEdit
        Left = 166
        Top = 99
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 292
      end
      object eInfoModel_CB: TcxTextEdit
        Left = 166
        Top = 129
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 292
      end
      object eInfoThnBuat_CB: TcxTextEdit
        Left = 166
        Top = 159
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Width = 292
      end
      object eInfoSilinder_CB: TcxTextEdit
        Left = 166
        Top = 189
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 6
        Width = 292
      end
      object eInfoWarna_CB: TcxTextEdit
        Left = 166
        Top = 220
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 7
        Width = 292
      end
      object eInfoNoRangka_CB: TcxTextEdit
        Left = 594
        Top = 9
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 8
        Width = 315
      end
      object eInfoNoMesin_CB: TcxTextEdit
        Left = 594
        Top = 39
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 9
        Width = 315
      end
      object eInfoJmlRoda_CB: TcxTextEdit
        Left = 594
        Top = 69
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 10
        Width = 315
      end
      object eInfoJmlSumbu_CB: TcxTextEdit
        Left = 594
        Top = 99
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 11
        Width = 315
      end
      object eInfoBB_CB: TcxTextEdit
        Left = 594
        Top = 129
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 12
        Width = 315
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'III. Dok Reg Pertama'
      ImageIndex = 2
      object Label22: TLabel
        Left = 19
        Top = 12
        Width = 82
        Height = 23
        Caption = 'No Faktur'
        Transparent = True
      end
      object Label23: TLabel
        Left = 19
        Top = 42
        Width = 85
        Height = 23
        Caption = 'Tgl Faktur'
        Transparent = True
      end
      object Label24: TLabel
        Left = 19
        Top = 72
        Width = 111
        Height = 23
        Caption = 'APM/Importir'
        Transparent = True
      end
      object Label25: TLabel
        Left = 476
        Top = 103
        Width = 110
        Height = 23
        Caption = 'Tgl Form A/B'
        Transparent = True
      end
      object Label26: TLabel
        Left = 19
        Top = 102
        Width = 143
        Height = 23
        Caption = 'Kantor Bea Cukai'
        Transparent = True
      end
      object Label27: TLabel
        Left = 19
        Top = 132
        Width = 63
        Height = 23
        Caption = 'No SUT'
        Transparent = True
      end
      object Label28: TLabel
        Left = 19
        Top = 162
        Width = 61
        Height = 23
        Caption = 'No TPT'
        Transparent = True
      end
      object Label29: TLabel
        Left = 19
        Top = 193
        Width = 109
        Height = 23
        Caption = 'Ket. Lain-lain'
        Transparent = True
      end
      object Label30: TLabel
        Left = 476
        Top = 12
        Width = 57
        Height = 23
        Caption = 'No PIB'
        Transparent = True
      end
      object Label31: TLabel
        Left = 476
        Top = 41
        Width = 60
        Height = 23
        Caption = 'Tgl PIB'
        Transparent = True
      end
      object Label32: TLabel
        Left = 476
        Top = 70
        Width = 107
        Height = 23
        Caption = 'No Form A/B'
        Transparent = True
      end
      object eInfoNoFaktur_CB: TcxTextEdit
        Left = 166
        Top = 9
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 292
      end
      object eInfoTglFaktur_CB: TcxTextEdit
        Left = 166
        Top = 39
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 292
      end
      object eInfoAPM_CB: TcxTextEdit
        Left = 166
        Top = 69
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 292
      end
      object eInfoTglFormAB_CB: TcxTextEdit
        Left = 594
        Top = 99
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 10
        Width = 315
      end
      object eInfoKantorBeaCukai_CB: TcxTextEdit
        Left = 166
        Top = 99
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 292
      end
      object eInfoNoSUT_CB: TcxTextEdit
        Left = 166
        Top = 129
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 292
      end
      object eInfoNoTPT_CB: TcxTextEdit
        Left = 166
        Top = 159
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Width = 292
      end
      object eInfoKetLain2_CB: TcxMemo
        Left = 166
        Top = 189
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 6
        Height = 77
        Width = 292
      end
      object eInfoNoPIB_CB: TcxTextEdit
        Left = 594
        Top = 9
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 7
        Width = 315
      end
      object eInfoTglPIB_CB: TcxTextEdit
        Left = 594
        Top = 39
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 8
        Width = 315
      end
      object eInfoNoFormAB_CB: TcxTextEdit
        Left = 594
        Top = 69
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 9
        Width = 315
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'IV. Dikeluarkan Oleh/NoReg'
      ImageIndex = 3
      DesignSize = (
        939
        289)
      object Label33: TLabel
        Left = 19
        Top = 12
        Width = 142
        Height = 23
        Caption = 'Dikeluarkan Oleh'
        Transparent = True
      end
      object Label34: TLabel
        Left = 19
        Top = 41
        Width = 123
        Height = 23
        Caption = 'No. Reg. BPKB'
        Transparent = True
      end
      object eInfoDikeluarkanOleh_CB: TcxTextEdit
        Left = 166
        Top = 9
        Anchors = [akLeft, akTop, akRight]
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 763
      end
      object eInfoNRegBPKB2_CB: TcxTextEdit
        Left = 166
        Top = 39
        Anchors = [akLeft, akTop, akRight]
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 763
      end
    end
  end
  object bCetakBuku_CB: TcxButton
    Left = 221
    Top = 142
    Width = 139
    Height = 81
    Cursor = crHandPoint
    Caption = 'Cetak Buku'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 7
    OnClick = bCetakBuku_CBClick
    Glyph.Data = {
      36240000424D3624000000000000360000002800000030000000300000000100
      2000000000000024000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000030000000400000004000000040000000400000004000000040000
      0004000000040000000400000004000000040000000400000004000000040000
      0004000000040000000400000004000000040000000400000004000000040000
      0004000000040000000400000004000000040000000400000004000000030000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001D0000001F0000002200000022000000220000002200000022000000220000
      0022000000220000002200000022000000220000002200000022000000220000
      0022000000220000002200000022000000220000002200000022000000220000
      0022000000220000002200000022000000220000002200000022000000060000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF000000090000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      55FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FF555555FF000000090000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      55FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FF555555FF000000090000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      55FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FF555555FF000000090000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      55FFE0E1E3FFE0E1E3FFE0E1E3FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FFE0E1E3FFE0E1E3FFE0E1E3FF555555FF000000090000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000045555
      55FFE0E1E3FFE0E1E3FFE0E1E3FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FFE0E1E3FFE0E1E3FFE0E1E3FF555555FF0000000A0000
      0006000000040000000300000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000001D0000001F000000225555
      55FFE0E1E3FFE0E1E3FFE0E1E3FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FFE0E1E3FFE0E1E3FFE0E1E3FF555555FF000000250000
      0023000000220000000600000003000000000000000000000000000000000000
      000000000000000000000000000000000000555555FF555555FF555555FF5555
      55FF565A58FF565A58FF565A58FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF3978B2FF3978B2FF3978B2FFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF3978B2FF408CD5FF3978B2FFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF3978B2FF3978B2FF3978B2FFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF555555FF555555FF555555FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF5555
      55FF555555FF555555FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF555555FF555555FF555555FF6D7277FF6D72
      77FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D72
      77FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF5555
      55FF555555FF555555FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF555555FF555555FF555555FF6D7277FF6D72
      77FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D72
      77FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF5555
      55FF555555FF555555FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF555555FF555555FF555555FF6D7277FF6D72
      77FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D72
      77FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF5555
      55FF555555FF555555FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF555555FF555555FF555555FFC8D1D7FFC8D1
      D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1
      D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FF5555
      55FF555555FF555555FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000700000003000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFFEFEFEFFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFE0E1
      E3FF555555FF0000000500000001000000000000000000000000000000000000
      0000000000000000000000000000000000003D3F3E71555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1E3FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF3C3F3E730000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FFC8D1D7FFC8D1D7FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFE0E1E3FFEAEBEDFFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FF5555
      55FFC8D1D7FFC8D1D7FF6D7277FF555555FF0000000900000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FFC8D1D7FFC8D1D7FF555555FFFFFFFFFFEAEB
      EDFF555555FFEAEBEDFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFFEAEBEDFFE0E1E3FF5555
      55FFC8D1D7FFC8D1D7FF6D7277FF555555FF0000000900000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FFC8D1D7FFC8D1D7FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FF5555
      55FFC8D1D7FFC8D1D7FF6D7277FF555555FF0000000900000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FFC8D1D7FFC8D1D7FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFFEAEBEDFFE0E1E3FF5555
      55FFC8D1D7FFC8D1D7FF6D7277FF555555FF0000000900000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FFC8D1D7FFC8D1D7FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFE0E1E3FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1E3FF5555
      55FFC8D1D7FFC8D1D7FF6D7277FF555555FF0000000900000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FFC8D1D7FFC8D1D7FF555555FFFFFFFFFFEAEB
      EDFF555555FFEAEBEDFFEAEBEDFFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFEAEBEDFFEAEBEDFFE0E1E3FF5555
      55FFC8D1D7FFC8D1D7FF6D7277FF555555FF0000000900000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FFC8D1D7FFC8D1D7FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1E3FF5555
      55FFC8D1D7FFC8D1D7FF6D7277FF555555FF0000000900000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FF6D7277FF6D7277FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FF5555
      55FF6D7277FF6D7277FF6D7277FF555555FF0000000600000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF555555FF555555FF555555FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFFEAEBEDFFE0E1E3FF5555
      55FF555555FF555555FF555555FF555555FF0000000300000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFE0E1E3FFEAEBEDFFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FF5555
      55FF000000090000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000555555FFFFFFFFFFEAEB
      EDFF555555FFEAEBEDFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFFEAEBEDFFE0E1E3FF5555
      55FF000000090000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1E3FF5555
      55FF000000090000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1E3FF5555
      55FF000000090000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000555555FFFFFFFFFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFE0E1E3FF5555
      55FF000000060000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF000000030000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    Layout = blGlyphTop
  end
  object eX1_CB: TcxTextEdit
    Left = 378
    Top = 163
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
    TabOrder = 8
    Width = 92
  end
  object eY1_CB: TcxTextEdit
    Left = 378
    Top = 193
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
    TabOrder = 9
    Width = 92
  end
  object eX2_CB: TcxTextEdit
    Left = 502
    Top = 163
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
    TabOrder = 10
    Width = 92
  end
  object eY2_CB: TcxTextEdit
    Left = 502
    Top = 193
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
    TabOrder = 11
    Width = 92
  end
  object eX3_CB: TcxTextEdit
    Left = 624
    Top = 164
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
    TabOrder = 12
    Width = 92
  end
  object eY3_CB: TcxTextEdit
    Left = 624
    Top = 194
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
    TabOrder = 13
    Width = 92
  end
  object eX4_CB: TcxTextEdit
    Left = 748
    Top = 164
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
    TabOrder = 14
    Width = 92
  end
  object eY4_CB: TcxTextEdit
    Left = 748
    Top = 194
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
    TabOrder = 15
    Width = 92
  end
  object eInfoNoBPKB_CB: TcxTextEdit
    Left = 144
    Top = 236
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    Style.Color = clWindow
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 16
    Width = 442
  end
  object eInfoNRegBPKB_CB: TcxTextEdit
    Left = 144
    Top = 266
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    Style.Color = clWindow
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 17
    Width = 442
  end
  object eInfoTempat_CB: TcxTextEdit
    Left = 671
    Top = 236
    Anchors = [akLeft, akTop, akRight]
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    Style.Color = clWindow
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 18
    Width = 260
  end
  object eInfoTgl_CB: TcxTextEdit
    Left = 671
    Top = 266
    Anchors = [akLeft, akTop, akRight]
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    Style.Color = clWindow
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 19
    Width = 260
  end
  object bBaru_CB: TcxButton
    Left = 824
    Top = 38
    Width = 109
    Height = 90
    Cursor = crHandPoint
    Caption = 'Baru'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
    OnClick = bBaru_CBClick
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000000000000000000000969696FF969696FFFFFFFFFFBCBCBCFFBCBC
      BCFFFFFFFFFFCCCCCCFFFFFFFFFF737373FF737373FF737373FF737373FF7373
      73FF737373FF737373FFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFF7373
      73FF737373FFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000000000000000000000969696FF969696FFFFFFFFFFBCBCBCFFBCBC
      BCFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFCCCCCCFFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000000000000000000000969696FF969696FFFFFFFFFFBCBCBCFFBCBC
      BCFFFFFFFFFFCCCCCCFFF3F3F3FF737373FF737373FF737373FF737373FF7373
      73FF737373FF737373FF737373FFF3F3F3FFCCCCCCFFF3F3F3FF314ACCFF314A
      CCFF314ACCFFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000000000000000000000969696FF969696FFFFFFFFFFBCBCBCFFBCBC
      BCFFFFFFFFFFCCCCCCFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFCCCCCCFFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000000000000000000000969696FF969696FFFFFFFFFFBCBCBCFFBCBC
      BCFFFFFFFFFFCCCCCCFFFFFFFFFF737373FF737373FF737373FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFF737373FF7373
      73FF737373FFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000000000000000000000969696FF969696FFFFFFFFFFBCBCBCFFBCBC
      BCFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFCCCCCCFFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      00000000000000000000000000007E7E7ED7666666AED9D9D9D9BCBCBCFFBCBC
      BCFFFFFFFFFFCCCCCCFFF3F3F3FF737373FF737373FF737373FF737373FF7373
      73FF737373FF737373FF737373FFF3F3F3FFCCCCCCFFF3F3F3FF314ACCFF314A
      CCFF314ACCFFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000000000000000000000080B0D1219374A520D101112B6B6B6F7BCBC
      BCFFFEFEFEFE8C8C8CAFD1D1D1DBF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFCCCCCCFFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF01030404132B
      3A400000000000000000000000000D1D272B4DABE7FF0D1C262A4F94C4D7FBFB
      FBFB616161610F212C3111131519ADADADD8CCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF0E1F2A2E49A3
      DCF32047606A0000000000000000152E3E444DABE7FF152E3E44427CA4B44D4D
      4D4D1734464D4AA4DDF4142C3C4296969696FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000001732
      444B4BA7E2F92654727E000000001C3E535C4DABE7FF1C3F555E101010161C3F
      555E4BA8E2FA20465F6947474747707070F8737373FF737373FF737373FF7373
      73FF737373FF737373FFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFF7373
      73FF737373FFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      00001B3D525B4CAAE5FD306B91A03D87B7CA4DABE7FF3D87B6C9295B7B884CAA
      E5FD25526F7B2B2B2B36F4F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000002A5D7E8B4DABE7FF4DABE7FF56AFE8FF4DABE7FF4DABE7FF306A
      8F9E0E0E0E0E8E8E8EB1AEAEAED9C5C5C5F6CCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF0C1B2428142C
      3C421B3D525B3F8BBCCF4DABE7FF64B4E9FE60ADE0F464B4E9FE4DABE7FF3C86
      B5C81A394D55132A383E0C1A23270C0F1112CCCCCCD6F3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFCCCCCCFFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF4DABE7FF4DAB
      E7FF4DABE7FF4DABE7FF56AFE8FF60ADE0F44B4B4B8060ADE0F456AFE8FF4DAB
      E7FF4DABE7FF4DABE7FF4DABE7FF1B3B50584C4C4CA9737373FF737373FF7373
      73FF737373FFF3F3F3FFF3F3F3FFF3F3F3FFCCCCCCFFF3F3F3FF737373FF7373
      73FF737373FFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF0A161E211126
      3439183649513F8BBCD04DABE7FF64B4E9FE60ADE0F464B4E9FE4DABE7FF3D87
      B7CA1835484F112634390A171F220D0F1112CDCDCDD7F3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFCCCCCCFFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000306B91A04DABE7FF4DABE7FF56AFE8FF4DABE7FF4DABE7FF2B60
      828F1A1A1A1A999999BFB2B2B2DFC7C7C7F9CCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000244F6B764DAAE6FE2C6385933F8BBCCF4DABE7FF3F8DBED2306B909F4DAA
      E6FE1D4158614A4A4A4AF9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EAFE9FF5EAFE9FF000000001E43
      5B644BA8E2FA1E425962000000001835484F4DABE7FF1F445C66030608092450
      6C774BA8E2FA183649512341565E5EAEE8FE5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF1229373D4AA4
      DDF4183649510000000000000000112634394DABE7FF183648503B6D919F1527
      34391E435B644AA4DDF40F222D3240779EAD5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF010304040F21
      2C310000000000000000000000000B1720234DABE7FF1227353A000000000000
      000000000000132A383E02030505000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    Layout = blGlyphTop
  end
  object dtTgl: TcxDateEdit
    Left = 8
    Top = 63
    ParentFont = False
    Properties.ShowTime = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Width = 193
  end
  object rbBukuBaru: TcxRadioButton
    Left = 56
    Top = 167
    Width = 113
    Height = 17
    Caption = 'Buku Baru'
    TabOrder = 5
  end
  object rbBukuLama: TcxRadioButton
    Left = 56
    Top = 191
    Width = 113
    Height = 17
    Caption = 'Buku Lama'
    TabOrder = 6
  end
  object cxButton1: TcxButton
    Left = 848
    Top = 164
    Width = 88
    Height = 59
    Cursor = crHandPoint
    Caption = 'Simpan'#13#10'Koordinat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
    OnClick = cxButton1Click
    Layout = blGlyphTop
  end
  object frxReport_CB: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41600.385754918980000000
    ReportOptions.LastChange = 41600.385754918980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = frxReport_CBBeforePrint
    OnGetValue = frxReport_CBGetValue
    Left = 291
    Top = 48
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDesigner1_CB: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    Left = 323
    Top = 48
  end
  object frxBarCodeObject1_CB: TfrxBarCodeObject
    Left = 323
    Top = 80
  end
  object Q: TUniQuery
    Connection = DM.dbSrv
    Left = 104
    Top = 240
  end
  object frxDBDatasetCB: TfrxDBDataset
    UserName = 'FrDBCB'
    CloseDataSource = False
    DataSet = uniSPCetak
    Left = 283
    Top = 80
  end
  object Q2: TUniQuery
    Connection = DM.dbSrv
    Left = 144
    Top = 240
  end
  object Q3: TUniQuery
    Connection = DM.dbSrv
    Left = 176
    Top = 240
  end
  object uniSPCetak: TUniStoredProc
    Connection = DM.dbSrv
    Left = 248
    Top = 45
  end
  object PopupMenu1: TPopupMenu
    Left = 373
    Top = 120
    object Halaman11: TMenuItem
      Caption = 'Halaman 1'
      OnClick = Halaman11Click
    end
    object Halaman21: TMenuItem
      Caption = 'Halaman 2'
      OnClick = Halaman21Click
    end
    object Halaman31: TMenuItem
      Caption = 'Halaman 3'
      OnClick = Halaman31Click
    end
    object Halaman41: TMenuItem
      Caption = 'Halaman 4'
      OnClick = Halaman41Click
    end
  end
end
