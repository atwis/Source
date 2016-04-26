object fRegistrasiEXLD: TfRegistrasiEXLD
  Left = 394
  Top = 8
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'REGISTRASI EX-LUAR DAERAH'
  ClientHeight = 628
  ClientWidth = 939
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    939
    628)
  PixelsPerInch = 96
  TextHeight = 23
  object lJudul: TLabel
    Left = 8
    Top = 0
    Width = 262
    Height = 23
    Caption = 'Ex-Luar Daerah - Registrasi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 8
    Top = 24
    Width = 928
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object cxPageControl1: TcxPageControl
    Left = 4
    Top = 26
    Width = 931
    Height = 588
    ActivePage = cxTabSheet2
    Anchors = [akLeft, akTop, akRight, akBottom]
    Style = 8
    TabOrder = 0
    TabPosition = tpBottom
    ClientRectBottom = 554
    ClientRectRight = 931
    ClientRectTop = 0
    object cxTabSheet1: TcxTabSheet
      Caption = 'Entry Data BPKB'
      ImageIndex = 0
      DesignSize = (
        931
        554)
      object Shape2: TShape
        Left = 3
        Top = 94
        Width = 928
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Pen.Color = clWhite
      end
      object Label23: TLabel
        Left = 9
        Top = 465
        Width = 173
        Height = 23
        Caption = 'No Resi Pembayaran'
        Transparent = True
      end
      object Label57: TLabel
        Left = 580
        Top = 6
        Width = 132
        Height = 23
        Caption = 'No BPKB Mutasi'
        Transparent = True
      end
      object lStatusNOPOL: TLabel
        Left = 500
        Top = 466
        Width = 59
        Height = 23
        Caption = 'FALSE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label56: TLabel
        Left = 7
        Top = 6
        Width = 154
        Height = 23
        Caption = 'Tanggal Registrasi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label70: TLabel
        Left = 9
        Top = 492
        Width = 86
        Height = 23
        Caption = 'No Rekom'
        Transparent = True
      end
      object rbNoBPKB: TcxRadioButton
        Left = 211
        Top = 6
        Width = 158
        Height = 25
        Caption = 'No BPKB'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = rbNoBPKBClick
        Transparent = True
      end
      object rbNRegBPKB: TcxRadioButton
        Left = 211
        Top = 36
        Width = 158
        Height = 25
        Caption = 'No Rek BPKB'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = rbNRegBPKBClick
        Transparent = True
      end
      object rbBerkasBarcode: TcxRadioButton
        Left = 211
        Top = 66
        Width = 158
        Height = 25
        Caption = 'Barcode Berkas'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        TabStop = True
        OnClick = rbBerkasBarcodeClick
        Transparent = True
      end
      object eNoBPKB: TcxTextEdit
        Left = 368
        Top = 3
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
        TabOrder = 0
        OnClick = eNoBPKBClick
        OnKeyDown = eNoBPKBKeyDown
        Width = 193
      end
      object eNoRegBPKB: TcxTextEdit
        Left = 368
        Top = 33
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
        OnClick = eNoRegBPKBClick
        OnKeyDown = eNoRegBPKBKeyDown
        Width = 337
      end
      object eNoBarcode: TcxTextEdit
        Left = 368
        Top = 63
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
        OnClick = eNoBarcodeClick
        OnKeyDown = eNoBarcodeKeyDown
        Width = 337
      end
      object bCari: TcxButton
        Left = 719
        Top = 36
        Width = 168
        Height = 56
        Cursor = crHandPoint
        Caption = 'Cari Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = bCariClick
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
      end
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 96
        Width = 930
        Height = 366
        ActivePage = cxTabSheet3
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style = 8
        TabOrder = 8
        ClientRectBottom = 366
        ClientRectRight = 930
        ClientRectTop = 30
        object cxTabSheet3: TcxTabSheet
          Caption = 'I. Identitas Kendaraan'
          ImageIndex = 0
          object Label2: TLabel
            Left = 8
            Top = 9
            Width = 61
            Height = 19
            Caption = 'No BPKB'
            Transparent = True
          end
          object Label3: TLabel
            Left = 8
            Top = 38
            Width = 101
            Height = 19
            Caption = 'Dikeluarkan di'
            Transparent = True
          end
          object Label4: TLabel
            Left = 8
            Top = 68
            Width = 77
            Height = 19
            Caption = 'No Rangka'
            Transparent = True
          end
          object Label5: TLabel
            Left = 8
            Top = 98
            Width = 34
            Height = 19
            Caption = 'Merk'
            Transparent = True
          end
          object Label6: TLabel
            Left = 444
            Top = 98
            Width = 35
            Height = 19
            Caption = 'Jenis'
            Transparent = True
          end
          object Label7: TLabel
            Left = 8
            Top = 188
            Width = 64
            Height = 19
            Caption = 'Thn Buat'
            Transparent = True
          end
          object Label8: TLabel
            Left = 444
            Top = 158
            Width = 53
            Height = 19
            Caption = 'Silinder'
            Transparent = True
          end
          object Label9: TLabel
            Left = 8
            Top = 217
            Width = 66
            Height = 19
            Caption = 'Jml Roda'
            Transparent = True
          end
          object Label10: TLabel
            Left = 8
            Top = 247
            Width = 87
            Height = 19
            Caption = 'Bahan Bakar'
            Transparent = True
          end
          object Label11: TLabel
            Left = 8
            Top = 277
            Width = 80
            Height = 19
            Caption = 'Peruntukan'
            Transparent = True
          end
          object Label12: TLabel
            Left = 8
            Top = 307
            Width = 89
            Height = 19
            Caption = 'Warna TNKB'
            Transparent = True
          end
          object Label13: TLabel
            Left = 444
            Top = 9
            Width = 93
            Height = 19
            Caption = 'No Reg BPKB'
            Transparent = True
          end
          object Label14: TLabel
            Left = 444
            Top = 38
            Width = 57
            Height = 19
            Caption = 'Tanggal'
            Transparent = True
          end
          object Label15: TLabel
            Left = 444
            Top = 68
            Width = 65
            Height = 19
            Caption = 'No Mesin'
            Transparent = True
          end
          object Label16: TLabel
            Left = 7
            Top = 128
            Width = 31
            Height = 19
            Caption = 'Tipe'
            Transparent = True
          end
          object Label17: TLabel
            Left = 9
            Top = 157
            Width = 42
            Height = 19
            Caption = 'Model'
            Transparent = True
          end
          object Label18: TLabel
            Left = 444
            Top = 187
            Width = 68
            Height = 19
            Caption = 'Thn Rakit'
            Transparent = True
          end
          object Label19: TLabel
            Left = 444
            Top = 247
            Width = 45
            Height = 19
            Caption = 'Warna'
            Transparent = True
          end
          object Label20: TLabel
            Left = 444
            Top = 217
            Width = 80
            Height = 19
            Caption = 'Jml Sumbu'
            Transparent = True
          end
          object Label21: TLabel
            Left = 444
            Top = 277
            Width = 54
            Height = 19
            Caption = 'No TPT'
            Transparent = True
          end
          object Label22: TLabel
            Left = 444
            Top = 307
            Width = 55
            Height = 19
            Caption = 'No SUT'
            Transparent = True
          end
          object Label51: TLabel
            Left = 671
            Top = 158
            Width = 20
            Height = 19
            Caption = 'CC'
            Transparent = True
          end
          object Label68: TLabel
            Left = 444
            Top = 128
            Width = 40
            Height = 19
            Caption = 'Tipe2'
            Transparent = True
          end
          object eNoBPKBEntry: TcxTextEdit
            Left = 115
            Top = 2
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
            TabOrder = 0
            Width = 315
          end
          object eDikeluarkanEntry: TcxTextEdit
            Left = 115
            Top = 32
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
            Width = 315
          end
          object eNoRangkaEntry: TcxTextEdit
            Left = 115
            Top = 62
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            Properties.OnChange = eNoRangkaEntryPropertiesChange
            Style.Color = clWindow
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            OnKeyDown = eNoRangkaEntryKeyDown
            Width = 315
          end
          object cbMerkEntry: TcxDBLookupComboBox
            Left = 115
            Top = 92
            DataBinding.DataField = 'MERK_NAMA'
            DataBinding.DataSource = dsMerk1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'MERK_ID'
            Properties.ListColumns = <
              item
                FieldName = 'merk_nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsMerk2
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 271
          end
          object cbJenisEntry: TcxDBLookupComboBox
            Left = 551
            Top = 92
            DataBinding.DataField = 'jenis_nama'
            DataBinding.DataSource = dsJenis1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'jenis_id'
            Properties.ListColumns = <
              item
                FieldName = 'jenis_nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsJenis2
            Properties.OnChange = cbJenisEntryPropertiesChange
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 271
          end
          object eThnBuatEntry: TcxTextEdit
            Left = 115
            Top = 182
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
            Width = 118
          end
          object eSilinderEntry: TcxTextEdit
            Left = 551
            Top = 152
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
            Width = 118
          end
          object eJmlRodaEntry: TcxTextEdit
            Left = 115
            Top = 212
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
            Width = 118
          end
          object cbBahanBakarEntry: TcxDBLookupComboBox
            Left = 115
            Top = 242
            DataBinding.DataField = 'bb_nama'
            DataBinding.DataSource = dsQBB1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'bb_id'
            Properties.ListColumns = <
              item
                FieldName = 'bb_nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsQBB2
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 16
            Width = 269
          end
          object cbPeruntukanEntry: TcxDBLookupComboBox
            Left = 115
            Top = 272
            DataBinding.DataField = 'prt_nama'
            DataBinding.DataSource = dsPeruntukan1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'prt_id'
            Properties.ListColumns = <
              item
                FieldName = 'prt_nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsPeruntukan2
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 18
            Width = 269
          end
          object eNRegBPKBEntry: TcxTextEdit
            Left = 551
            Top = 2
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
            Width = 337
          end
          object eNoMesinEntry: TcxTextEdit
            Left = 551
            Top = 62
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
            TabOrder = 5
            Width = 337
          end
          object eTypeEntry: TcxTextEdit
            Left = 115
            Top = 122
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
            Width = 316
          end
          object cbModelEntry: TcxDBLookupComboBox
            Left = 115
            Top = 152
            DataBinding.DataField = 'model_nama'
            DataBinding.DataSource = dsModel1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'model_id'
            Properties.ListColumns = <
              item
                FieldName = 'model_nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsModel2
            Properties.OnPopup = cbModelEntryPropertiesPopup
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 10
            Width = 270
          end
          object eThnRakitEntry: TcxTextEdit
            Left = 551
            Top = 183
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
            Width = 118
          end
          object cbWarnaEntry: TcxDBLookupComboBox
            Left = 551
            Top = 243
            DataBinding.DataField = 'warna_nama'
            DataBinding.DataSource = dsWarna1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'warna_id'
            Properties.ListColumns = <
              item
                FieldName = 'warna_nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsWarna2
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 17
            Width = 294
          end
          object eJmlSumbuEntry: TcxTextEdit
            Left = 551
            Top = 213
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
            Width = 118
          end
          object enoTPTEntry: TcxTextEdit
            Left = 551
            Top = 273
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
            TabOrder = 19
            Width = 337
          end
          object eNoSUTEntry: TcxTextEdit
            Left = 551
            Top = 303
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
            TabOrder = 21
            Width = 337
          end
          object cbWarnaTNKBEntry: TcxDBLookupComboBox
            Left = 115
            Top = 302
            DataBinding.DataField = 'warnatnkb'
            DataBinding.DataSource = dsWarnaTNKB1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'warnatnkb_id'
            Properties.ListColumns = <
              item
                FieldName = 'warnatnkb'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsWarnaTNKB2
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 20
            Width = 269
          end
          object dtTglEntry: TcxDateEdit
            Left = 551
            Top = 32
            ParentFont = False
            Properties.ShowTime = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 139
          end
          object cxButton17: TcxButton
            Left = 387
            Top = 93
            Width = 41
            Height = 29
            Cursor = crHandPoint
            Hint = 'Refresh Warna'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 22
            OnClick = cxButton17Click
            Glyph.Data = {
              76060000424D7606000000000000360000002800000014000000140000000100
              2000000000004006000000000000000000000000000000000000000000005D5D
              5DEF616161FF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5D5D5DF00000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFADC887FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFEFFFEFF74A133FFAEC889FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFF75A134FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFF75A235FF74A1
              33FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFF75A235FFFDFEFDFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFEFDFF75A235FF74A133FF75A134FFFFFFFFFFFFFF
              FFFF75A134FF74A133FF75A235FFFDFEFDFFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFDFE
              FDFF75A235FFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FF74A133FF75A2
              35FFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75A1
              34FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74A133FFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFAEC889FF74A133FFFEFFFEFFFFFFFFFFFFFFFFFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FFADC887FFFFFFFFFFFFFF
              FFFFFEFEFEFFFDFDFDFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FF6767
              67FF676767FF676767FF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFFEFEFEFFFFFFFFFFC0C0C0FF666666D90000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FFFEFE
              FEFFC1C1C1FF696969DF0D0D0D1C000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFC1C1C1FF696969E00D0D0D1C000000000000
              00000000000000000000000000005E5E5EFB5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF616161FF6969
              69E00D0D0D1C0000000000000000000000000000000000000000}
            Layout = blGlyphTop
          end
          object cxButton18: TcxButton
            Left = 823
            Top = 93
            Width = 41
            Height = 29
            Cursor = crHandPoint
            Hint = 'Refresh Warna'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 23
            OnClick = cxButton18Click
            Glyph.Data = {
              76060000424D7606000000000000360000002800000014000000140000000100
              2000000000004006000000000000000000000000000000000000000000005D5D
              5DEF616161FF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5D5D5DF00000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFADC887FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFEFFFEFF74A133FFAEC889FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFF75A134FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFF75A235FF74A1
              33FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFF75A235FFFDFEFDFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFEFDFF75A235FF74A133FF75A134FFFFFFFFFFFFFF
              FFFF75A134FF74A133FF75A235FFFDFEFDFFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFDFE
              FDFF75A235FFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FF74A133FF75A2
              35FFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75A1
              34FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74A133FFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFAEC889FF74A133FFFEFFFEFFFFFFFFFFFFFFFFFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FFADC887FFFFFFFFFFFFFF
              FFFFFEFEFEFFFDFDFDFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FF6767
              67FF676767FF676767FF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFFEFEFEFFFFFFFFFFC0C0C0FF666666D90000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FFFEFE
              FEFFC1C1C1FF696969DF0D0D0D1C000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFC1C1C1FF696969E00D0D0D1C000000000000
              00000000000000000000000000005E5E5EFB5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF616161FF6969
              69E00D0D0D1C0000000000000000000000000000000000000000}
            Layout = blGlyphTop
          end
          object cxButton7: TcxButton
            Left = 387
            Top = 153
            Width = 41
            Height = 29
            Cursor = crHandPoint
            Hint = 'Refresh Warna'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 24
            OnClick = cxButton7Click
            Glyph.Data = {
              76060000424D7606000000000000360000002800000014000000140000000100
              2000000000004006000000000000000000000000000000000000000000005D5D
              5DEF616161FF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5D5D5DF00000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFADC887FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFEFFFEFF74A133FFAEC889FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFF75A134FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFF75A235FF74A1
              33FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFF75A235FFFDFEFDFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFEFDFF75A235FF74A133FF75A134FFFFFFFFFFFFFF
              FFFF75A134FF74A133FF75A235FFFDFEFDFFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFDFE
              FDFF75A235FFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FF74A133FF75A2
              35FFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75A1
              34FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74A133FFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFAEC889FF74A133FFFEFFFEFFFFFFFFFFFFFFFFFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FFADC887FFFFFFFFFFFFFF
              FFFFFEFEFEFFFDFDFDFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FF6767
              67FF676767FF676767FF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFFEFEFEFFFFFFFFFFC0C0C0FF666666D90000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FFFEFE
              FEFFC1C1C1FF696969DF0D0D0D1C000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFC1C1C1FF696969E00D0D0D1C000000000000
              00000000000000000000000000005E5E5EFB5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF616161FF6969
              69E00D0D0D1C0000000000000000000000000000000000000000}
            Layout = blGlyphTop
          end
          object cxButton8: TcxButton
            Left = 885
            Top = 154
            Width = 41
            Height = 33
            Cursor = crHandPoint
            Hint = 'Tambah Warna'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 25
            Visible = False
            OnClick = cxButton8Click
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000089AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF0000000000000000000000000000
              000087AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
              55FE89AD56FF87AB55FE87AB55FE89AD56FF0000000000000000000000000000
              000089AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF0000000000000000000000000000
              000087AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
              55FE89AD56FF87AB55FE87AB55FE89AD56FF0000000000000000000000000000
              000087AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
              55FE89AD56FF87AB55FE87AB55FE89AD56FF0000000000000000000000000000
              000083A552F584A653F583A552F583A552F584A653F583A552F583A552F589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE84A653F583A552F583A5
              52F584A653F583A552F583A552F584A653F50000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000010101020000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Layout = blGlyphTop
          end
          object cxButton19: TcxButton
            Left = 387
            Top = 243
            Width = 41
            Height = 29
            Cursor = crHandPoint
            Hint = 'Refresh Warna'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 26
            OnClick = cxButton19Click
            Glyph.Data = {
              76060000424D7606000000000000360000002800000014000000140000000100
              2000000000004006000000000000000000000000000000000000000000005D5D
              5DEF616161FF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5D5D5DF00000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFADC887FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFEFFFEFF74A133FFAEC889FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFF75A134FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFF75A235FF74A1
              33FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFF75A235FFFDFEFDFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFEFDFF75A235FF74A133FF75A134FFFFFFFFFFFFFF
              FFFF75A134FF74A133FF75A235FFFDFEFDFFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFDFE
              FDFF75A235FFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FF74A133FF75A2
              35FFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75A1
              34FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74A133FFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFAEC889FF74A133FFFEFFFEFFFFFFFFFFFFFFFFFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FFADC887FFFFFFFFFFFFFF
              FFFFFEFEFEFFFDFDFDFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FF6767
              67FF676767FF676767FF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFFEFEFEFFFFFFFFFFC0C0C0FF666666D90000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FFFEFE
              FEFFC1C1C1FF696969DF0D0D0D1C000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFC1C1C1FF696969E00D0D0D1C000000000000
              00000000000000000000000000005E5E5EFB5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF616161FF6969
              69E00D0D0D1C0000000000000000000000000000000000000000}
            Layout = blGlyphTop
          end
          object cxButton20: TcxButton
            Left = 387
            Top = 273
            Width = 41
            Height = 29
            Cursor = crHandPoint
            Hint = 'Refresh Warna'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 27
            OnClick = cxButton20Click
            Glyph.Data = {
              76060000424D7606000000000000360000002800000014000000140000000100
              2000000000004006000000000000000000000000000000000000000000005D5D
              5DEF616161FF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5D5D5DF00000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFADC887FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFEFFFEFF74A133FFAEC889FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFF75A134FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFF75A235FF74A1
              33FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFF75A235FFFDFEFDFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFEFDFF75A235FF74A133FF75A134FFFFFFFFFFFFFF
              FFFF75A134FF74A133FF75A235FFFDFEFDFFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFDFE
              FDFF75A235FFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FF74A133FF75A2
              35FFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75A1
              34FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74A133FFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFAEC889FF74A133FFFEFFFEFFFFFFFFFFFFFFFFFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FFADC887FFFFFFFFFFFFFF
              FFFFFEFEFEFFFDFDFDFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FF6767
              67FF676767FF676767FF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFFEFEFEFFFFFFFFFFC0C0C0FF666666D90000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FFFEFE
              FEFFC1C1C1FF696969DF0D0D0D1C000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFC1C1C1FF696969E00D0D0D1C000000000000
              00000000000000000000000000005E5E5EFB5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF616161FF6969
              69E00D0D0D1C0000000000000000000000000000000000000000}
            Layout = blGlyphTop
          end
          object cxButton21: TcxButton
            Left = 387
            Top = 303
            Width = 41
            Height = 29
            Cursor = crHandPoint
            Hint = 'Refresh Warna'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 28
            OnClick = cxButton21Click
            Glyph.Data = {
              76060000424D7606000000000000360000002800000014000000140000000100
              2000000000004006000000000000000000000000000000000000000000005D5D
              5DEF616161FF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5D5D5DF00000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFADC887FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFEFFFEFF74A133FFAEC889FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFF75A134FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFF75A235FF74A1
              33FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFF75A235FFFDFEFDFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFEFDFF75A235FF74A133FF75A134FFFFFFFFFFFFFF
              FFFF75A134FF74A133FF75A235FFFDFEFDFFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFDFE
              FDFF75A235FFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FF74A133FF75A2
              35FFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75A1
              34FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74A133FFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFAEC889FF74A133FFFEFFFEFFFFFFFFFFFFFFFFFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FFADC887FFFFFFFFFFFFFF
              FFFFFEFEFEFFFDFDFDFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FF6767
              67FF676767FF676767FF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFFEFEFEFFFFFFFFFFC0C0C0FF666666D90000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FFFEFE
              FEFFC1C1C1FF696969DF0D0D0D1C000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFC1C1C1FF696969E00D0D0D1C000000000000
              00000000000000000000000000005E5E5EFB5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF616161FF6969
              69E00D0D0D1C0000000000000000000000000000000000000000}
            Layout = blGlyphTop
          end
          object cxButton4: TcxButton
            Left = 845
            Top = 240
            Width = 38
            Height = 33
            Cursor = crHandPoint
            Hint = 'Refresh Warna'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 29
            OnClick = cxButton4Click
            Glyph.Data = {
              76060000424D7606000000000000360000002800000014000000140000000100
              2000000000004006000000000000000000000000000000000000000000005D5D
              5DEF616161FF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5D5D5DF00000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFADC887FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFEFFFEFF74A133FFAEC889FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFF75A134FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFF75A235FF74A1
              33FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFF75A235FFFDFEFDFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFEFDFF75A235FF74A133FF75A134FFFFFFFFFFFFFF
              FFFF75A134FF74A133FF75A235FFFDFEFDFFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFDFE
              FDFF75A235FFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FF74A133FF75A2
              35FFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75A1
              34FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74A133FFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFAEC889FF74A133FFFEFFFEFFFFFFFFFFFFFFFFFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FFADC887FFFFFFFFFFFFFF
              FFFFFEFEFEFFFDFDFDFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FF6767
              67FF676767FF676767FF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFFEFEFEFFFFFFFFFFC0C0C0FF666666D90000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FFFEFE
              FEFFC1C1C1FF696969DF0D0D0D1C000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFC1C1C1FF696969E00D0D0D1C000000000000
              00000000000000000000000000005E5E5EFB5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF616161FF6969
              69E00D0D0D1C0000000000000000000000000000000000000000}
            Layout = blGlyphTop
          end
          object cxButton5: TcxButton
            Left = 887
            Top = 217
            Width = 41
            Height = 33
            Cursor = crHandPoint
            Hint = 'Tambah Warna'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 30
            Visible = False
            OnClick = cxButton5Click
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000089AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF0000000000000000000000000000
              000087AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
              55FE89AD56FF87AB55FE87AB55FE89AD56FF0000000000000000000000000000
              000089AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF0000000000000000000000000000
              000087AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
              55FE89AD56FF87AB55FE87AB55FE89AD56FF0000000000000000000000000000
              000087AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
              55FE89AD56FF87AB55FE87AB55FE89AD56FF0000000000000000000000000000
              000083A552F584A653F583A552F583A552F584A653F583A552F583A552F589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE84A653F583A552F583A5
              52F584A653F583A552F583A552F584A653F50000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000010101020000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Layout = blGlyphTop
          end
          object eType2Entry: TcxTextEdit
            Left = 551
            Top = 122
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
            Width = 336
          end
        end
        object cxTabSheet4: TcxTabSheet
          Caption = 'II. Identitas Pemilik'
          ImageIndex = 1
          object Label24: TLabel
            Left = 8
            Top = 16
            Width = 86
            Height = 19
            Caption = 'No Identitas'
            Transparent = True
          end
          object Label25: TLabel
            Left = 8
            Top = 45
            Width = 97
            Height = 19
            Caption = 'Nama Pemilik'
            Transparent = True
          end
          object Label26: TLabel
            Left = 8
            Top = 118
            Width = 106
            Height = 19
            Caption = 'Alamat Pemilik'
            Transparent = True
          end
          object Label27: TLabel
            Left = 8
            Top = 215
            Width = 65
            Height = 19
            Caption = 'Kode Pos'
            Transparent = True
          end
          object Label28: TLabel
            Left = 8
            Top = 245
            Width = 71
            Height = 19
            Caption = 'No Ponsel'
            Transparent = True
          end
          object Label29: TLabel
            Left = 8
            Top = 276
            Width = 69
            Height = 19
            Caption = 'Pekerjaan'
            Transparent = True
          end
          object Label30: TLabel
            Left = 8
            Top = 307
            Width = 55
            Height = 19
            Caption = 'Wilayah'
            Transparent = True
          end
          object Label52: TLabel
            Left = 531
            Top = 204
            Width = 70
            Height = 19
            Caption = 'Kelurahan'
            Transparent = True
          end
          object Label53: TLabel
            Left = 531
            Top = 150
            Width = 76
            Height = 19
            Caption = 'Kecamatan'
            Transparent = True
          end
          object Label54: TLabel
            Left = 531
            Top = 98
            Width = 74
            Height = 19
            Caption = 'Kabupaten'
            Transparent = True
          end
          object Label55: TLabel
            Left = 531
            Top = 46
            Width = 57
            Height = 19
            Caption = 'Propinsi'
            Transparent = True
          end
          object eNoIdentitasEntry: TcxTextEdit
            Left = 131
            Top = 10
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
            TabOrder = 0
            Width = 378
          end
          object eNamaPemilikEntry: TcxMemo
            Left = 131
            Top = 41
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 71
            Width = 378
          end
          object eAlamatPemilikEntry: TcxMemo
            Left = 131
            Top = 112
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Height = 97
            Width = 378
          end
          object eKdPOSEntry: TcxTextEdit
            Left = 131
            Top = 209
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
            Width = 114
          end
          object ePonselEntry: TcxTextEdit
            Left = 131
            Top = 240
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
            TabOrder = 4
            Width = 378
          end
          object ePekerjaanEntry: TcxTextEdit
            Left = 131
            Top = 271
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
            TabOrder = 5
            Width = 378
          end
          object cbWilayahEntry: TcxDBLookupComboBox
            Left = 131
            Top = 301
            DataBinding.DataField = 'wilayah_nama'
            DataBinding.DataSource = dsWil1
            ParentFont = False
            Properties.KeyFieldNames = 'wilayah_kode'
            Properties.ListColumns = <
              item
                FieldName = 'wilayah_nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsWil2
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 293
          end
          object bSetKel: TcxButton
            Left = 532
            Top = 9
            Width = 205
            Height = 34
            Caption = 'Set Data Kelurahan'
            TabOrder = 7
            OnClick = bSetKelClick
          end
          object ePropinsi: TcxTextEdit
            Left = 530
            Top = 64
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
            Width = 339
          end
          object eKecamatan: TcxTextEdit
            Left = 530
            Top = 169
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
            Width = 339
          end
          object eKabupaten: TcxTextEdit
            Left = 530
            Top = 117
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
            Width = 339
          end
          object eKelurahan: TcxTextEdit
            Left = 530
            Top = 222
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
            Width = 339
          end
          object cxButton12: TcxButton
            Left = 424
            Top = 302
            Width = 41
            Height = 33
            Cursor = crHandPoint
            Hint = 'Refresh Warna'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 12
            OnClick = cxButton12Click
            Glyph.Data = {
              76060000424D7606000000000000360000002800000014000000140000000100
              2000000000004006000000000000000000000000000000000000000000005D5D
              5DEF616161FF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5D5D5DF00000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFADC887FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFEFFFEFF74A133FFAEC889FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFF75A134FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFF75A235FF74A1
              33FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFF75A235FFFDFEFDFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFEFDFF75A235FF74A133FF75A134FFFFFFFFFFFFFF
              FFFF75A134FF74A133FF75A235FFFDFEFDFFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFDFE
              FDFF75A235FFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FF74A133FF75A2
              35FFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75A1
              34FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74A133FFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFAEC889FF74A133FFFEFFFEFFFFFFFFFFFFFFFFFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FFADC887FFFFFFFFFFFFFF
              FFFFFEFEFEFFFDFDFDFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FF6767
              67FF676767FF676767FF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFFEFEFEFFFFFFFFFFC0C0C0FF666666D90000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FFFEFE
              FEFFC1C1C1FF696969DF0D0D0D1C000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFC1C1C1FF696969E00D0D0D1C000000000000
              00000000000000000000000000005E5E5EFB5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF616161FF6969
              69E00D0D0D1C0000000000000000000000000000000000000000}
            Layout = blGlyphTop
          end
          object cxButton13: TcxButton
            Left = 466
            Top = 302
            Width = 41
            Height = 33
            Cursor = crHandPoint
            Hint = 'Tambah Warna'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 13
            Visible = False
            OnClick = cxButton13Click
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000089AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF0000000000000000000000000000
              000087AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
              55FE89AD56FF87AB55FE87AB55FE89AD56FF0000000000000000000000000000
              000089AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF0000000000000000000000000000
              000087AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
              55FE89AD56FF87AB55FE87AB55FE89AD56FF0000000000000000000000000000
              000087AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
              55FE89AD56FF87AB55FE87AB55FE89AD56FF0000000000000000000000000000
              000083A552F584A653F583A552F583A552F584A653F583A552F583A552F589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE84A653F583A552F583A5
              52F584A653F583A552F583A552F584A653F50000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000010101020000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Layout = blGlyphTop
          end
        end
        object cxTabSheet5: TcxTabSheet
          Caption = 'III. Identitas Pabean/Asal Usul'
          ImageIndex = 2
          object Label31: TLabel
            Left = 8
            Top = 15
            Width = 100
            Height = 19
            Caption = 'Jenis Daftaran'
            Transparent = True
          end
          object Label32: TLabel
            Left = 8
            Top = 44
            Width = 69
            Height = 19
            Caption = 'No Faktur'
            Transparent = True
          end
          object Label33: TLabel
            Left = 8
            Top = 74
            Width = 76
            Height = 19
            Caption = 'No Pabean'
            Transparent = True
          end
          object Label34: TLabel
            Left = 8
            Top = 106
            Width = 73
            Height = 19
            Caption = 'Pelabuhan'
            Transparent = True
          end
          object Label35: TLabel
            Left = 8
            Top = 138
            Width = 49
            Height = 19
            Caption = 'No PIB'
            Transparent = True
          end
          object Label36: TLabel
            Left = 8
            Top = 168
            Width = 81
            Height = 19
            Caption = 'Cara Impor'
            Transparent = True
          end
          object Label37: TLabel
            Left = 8
            Top = 199
            Width = 143
            Height = 19
            Caption = 'Nama Importir/APM'
            Transparent = True
          end
          object Label38: TLabel
            Left = 8
            Top = 230
            Width = 92
            Height = 19
            Caption = 'Ket. Lain-lain'
            Transparent = True
          end
          object Label39: TLabel
            Left = 8
            Top = 302
            Width = 67
            Height = 19
            Caption = 'Pemohon'
            Transparent = True
          end
          object Label40: TLabel
            Left = 578
            Top = 48
            Width = 57
            Height = 19
            Caption = 'Tanggal'
            Transparent = True
          end
          object Label41: TLabel
            Left = 578
            Top = 79
            Width = 57
            Height = 19
            Caption = 'Tanggal'
            Transparent = True
          end
          object Label42: TLabel
            Left = 578
            Top = 140
            Width = 57
            Height = 19
            Caption = 'Tanggal'
            Transparent = True
          end
          object cbJnsDaftaranEntry: TcxDBLookupComboBox
            Left = 179
            Top = 10
            DataBinding.DataField = 'jd_nama'
            DataBinding.DataSource = dsJenisDaftar1
            ParentFont = False
            Properties.KeyFieldNames = 'jd_id'
            Properties.ListColumns = <
              item
                FieldName = 'jd_nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsJenisDaftar2
            Properties.OnChange = cbJnsDaftaranEntryPropertiesChange
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 338
          end
          object eNoFakturEntry: TcxTextEdit
            Left = 179
            Top = 41
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
            StyleDisabled.BorderColor = clBtnShadow
            StyleDisabled.Color = clBtnFace
            StyleDisabled.TextColor = clBtnShadow
            TabOrder = 1
            Width = 338
          end
          object eNoPabeanEntry: TcxTextEdit
            Left = 179
            Top = 72
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
            Width = 338
          end
          object ePelabuhanEntry: TcxTextEdit
            Left = 179
            Top = 103
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
            TabOrder = 5
            Width = 338
          end
          object eNoPIBEntry: TcxTextEdit
            Left = 179
            Top = 134
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
            TabOrder = 6
            Width = 338
          end
          object cbCaraImporEntry: TcxDBLookupComboBox
            Left = 179
            Top = 165
            DataBinding.DataField = 'IMPMTHD_NAME'
            DataBinding.DataSource = dsCaraImport1
            ParentFont = False
            Properties.KeyFieldNames = 'IMPMTHD_ID'
            Properties.ListColumns = <
              item
                FieldName = 'IMPMTHD_NAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsCaraImport2
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 8
            Width = 338
          end
          object eNamaImportirEntry: TcxTextEdit
            Left = 179
            Top = 196
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
            Width = 338
          end
          object eKetLainEntry: TcxMemo
            Left = 179
            Top = 227
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 10
            Height = 71
            Width = 338
          end
          object cbPemohonEntry: TcxDBLookupComboBox
            Left = 179
            Top = 297
            DataBinding.DataField = 'nama'
            DataBinding.DataSource = dsPemohon1
            ParentFont = False
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsPemohon2
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 11
            Width = 338
          end
          object dtTglFakturEntry: TcxDateEdit
            Left = 639
            Top = 42
            ParentFont = False
            Properties.ShowTime = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 139
          end
          object dtTglPabeanEntry: TcxDateEdit
            Left = 639
            Top = 73
            ParentFont = False
            Properties.ShowTime = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 139
          end
          object dtTglPIBEntry: TcxDateEdit
            Left = 639
            Top = 134
            ParentFont = False
            Properties.ShowTime = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 139
          end
          object cxButton22: TcxButton
            Left = 523
            Top = 10
            Width = 41
            Height = 29
            Cursor = crHandPoint
            Hint = 'Refresh Warna'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 12
            OnClick = cxButton22Click
            Glyph.Data = {
              76060000424D7606000000000000360000002800000014000000140000000100
              2000000000004006000000000000000000000000000000000000000000005D5D
              5DEF616161FF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5D5D5DF00000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFADC887FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFEFFFEFF74A133FFAEC889FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFF75A134FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFF75A235FF74A1
              33FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFF75A235FFFDFEFDFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFEFDFF75A235FF74A133FF75A134FFFFFFFFFFFFFF
              FFFF75A134FF74A133FF75A235FFFDFEFDFFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFDFE
              FDFF75A235FFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FF74A133FF75A2
              35FFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75A1
              34FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74A133FFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFAEC889FF74A133FFFEFFFEFFFFFFFFFFFFFFFFFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FFADC887FFFFFFFFFFFFFF
              FFFFFEFEFEFFFDFDFDFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FF6767
              67FF676767FF676767FF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFFEFEFEFFFFFFFFFFC0C0C0FF666666D90000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FFFEFE
              FEFFC1C1C1FF696969DF0D0D0D1C000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFC1C1C1FF696969E00D0D0D1C000000000000
              00000000000000000000000000005E5E5EFB5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF616161FF6969
              69E00D0D0D1C0000000000000000000000000000000000000000}
            Layout = blGlyphTop
          end
          object cxButton23: TcxButton
            Left = 523
            Top = 166
            Width = 41
            Height = 29
            Cursor = crHandPoint
            Hint = 'Refresh Warna'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 13
            OnClick = cxButton23Click
            Glyph.Data = {
              76060000424D7606000000000000360000002800000014000000140000000100
              2000000000004006000000000000000000000000000000000000000000005D5D
              5DEF616161FF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5D5D5DF00000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFADC887FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFEFFFEFF74A133FFAEC889FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFF75A134FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFF75A235FF74A1
              33FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFF75A235FFFDFEFDFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFEFDFF75A235FF74A133FF75A134FFFFFFFFFFFFFF
              FFFF75A134FF74A133FF75A235FFFDFEFDFFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFDFE
              FDFF75A235FFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FF74A133FF75A2
              35FFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75A1
              34FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74A133FFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFAEC889FF74A133FFFEFFFEFFFFFFFFFFFFFFFFFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FFADC887FFFFFFFFFFFFFF
              FFFFFEFEFEFFFDFDFDFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FF6767
              67FF676767FF676767FF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFFEFEFEFFFFFFFFFFC0C0C0FF666666D90000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FFFEFE
              FEFFC1C1C1FF696969DF0D0D0D1C000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFC1C1C1FF696969E00D0D0D1C000000000000
              00000000000000000000000000005E5E5EFB5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF616161FF6969
              69E00D0D0D1C0000000000000000000000000000000000000000}
            Layout = blGlyphTop
          end
          object cxButton3: TcxButton
            Left = 521
            Top = 295
            Width = 41
            Height = 33
            Cursor = crHandPoint
            Hint = 'Refresh Pemohon'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 14
            OnClick = cxButton3Click
            Glyph.Data = {
              76060000424D7606000000000000360000002800000014000000140000000100
              2000000000004006000000000000000000000000000000000000000000005D5D
              5DEF616161FF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5D5D5DF00000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFADC887FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFEFFFEFF74A133FFAEC889FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFF74A133FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFF75A134FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFF75A235FF74A1
              33FF74A133FF74A133FF74A133FFFFFFFFFFFFFFFFFF75A235FFFDFEFDFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFEFDFF75A235FF74A133FF75A134FFFFFFFFFFFFFF
              FFFF75A134FF74A133FF75A235FFFDFEFDFFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFDFE
              FDFF75A235FFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FF74A133FF75A2
              35FFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75A1
              34FFDEE8CFFF74A133FFDEE8CFFF75A134FFFFFFFFFFFEFEFEFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74A133FFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFAEC889FF74A133FFFEFFFEFFFFFFFFFFFFFFFFFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFDFDFDFFFFFF
              FFFFFFFFFFFFFFFFFFFF74A133FF74A133FF74A133FFADC887FFFFFFFFFFFFFF
              FFFFFEFEFEFFFDFDFDFF5F5F5FFF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFF5F5F5FFF0000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FF6767
              67FF676767FF676767FF616161FF000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFFEFEFEFFFFFFFFFFC0C0C0FF666666D90000
              00000000000000000000000000005F5F5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF676767FFFEFE
              FEFFC1C1C1FF696969DF0D0D0D1C000000000000000000000000000000005F5F
              5FFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF676767FFC1C1C1FF696969E00D0D0D1C000000000000
              00000000000000000000000000005E5E5EFB5F5F5FFF5F5F5FFF5F5F5FFF5F5F
              5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF616161FF6969
              69E00D0D0D1C0000000000000000000000000000000000000000}
            Layout = blGlyphTop
          end
          object cxButton1: TcxButton
            Left = 564
            Top = 295
            Width = 41
            Height = 33
            Cursor = crHandPoint
            Hint = 'Tambah Pemohon'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 15
            Visible = False
            OnClick = cxButton1Click
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE0607040B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000089AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF0000000000000000000000000000
              000087AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
              55FE89AD56FF87AB55FE87AB55FE89AD56FF0000000000000000000000000000
              000089AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF0000000000000000000000000000
              000087AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
              55FE89AD56FF87AB55FE87AB55FE89AD56FF0000000000000000000000000000
              000087AB55FE89AD56FF87AB55FE87AB55FE89AD56FF87AB55FE87AB55FE89AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE89AD56FF87AB55FE87AB
              55FE89AD56FF87AB55FE87AB55FE89AD56FF0000000000000000000000000000
              000083A552F584A653F583A552F583A552F584A653F583A552F583A552F589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE84A653F583A552F583A5
              52F584A653F583A552F583A552F584A653F50000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF87AB55FE89AD56FF87AB55FE87AB55FE87AB55FE00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000303020589AD
              56FF89AD56FF89AD56FF89AD56FF89AD56FF89AD56FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000010101020000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Layout = blGlyphTop
          end
        end
        object cxTabSheet6: TcxTabSheet
          Caption = 'IV. BPKB Yang Pertama'
          ImageIndex = 3
          object Label43: TLabel
            Left = 8
            Top = 16
            Width = 61
            Height = 19
            Caption = 'No BPKB'
            Transparent = True
          end
          object Label44: TLabel
            Left = 8
            Top = 47
            Width = 93
            Height = 19
            Caption = 'No Reg BPKB'
            Transparent = True
          end
          object Label45: TLabel
            Left = 8
            Top = 78
            Width = 142
            Height = 19
            Caption = 'Tempat Dikeluarkan'
            Transparent = True
          end
          object Label46: TLabel
            Left = 8
            Top = 109
            Width = 97
            Height = 19
            Caption = 'Nama Pemilik'
            Transparent = True
          end
          object Label47: TLabel
            Left = 8
            Top = 178
            Width = 106
            Height = 19
            Caption = 'Alamat Pemilik'
            Transparent = True
          end
          object Label48: TLabel
            Left = 512
            Top = 48
            Width = 144
            Height = 19
            Caption = 'Sebab Tidak Berlaku'
            Transparent = True
          end
          object Label49: TLabel
            Left = 513
            Top = 16
            Width = 57
            Height = 19
            Caption = 'Tanggal'
            Transparent = True
          end
          object Label1: TLabel
            Left = 512
            Top = 107
            Width = 84
            Height = 19
            Caption = 'Status BPKB'
            Transparent = True
          end
          object lStatusBPKB: TLabel
            Left = 616
            Top = 96
            Width = 174
            Height = 39
            Caption = 'Status BPKB'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -32
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label58: TLabel
            Left = 512
            Top = 155
            Width = 80
            Height = 19
            Caption = 'Jenis Blokir'
            Transparent = True
          end
          object lJenisBlokir: TLabel
            Left = 608
            Top = 144
            Width = 174
            Height = 39
            Caption = 'Status BPKB'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -32
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object eTempatKeluarPertama: TcxTextEdit
            Left = 158
            Top = 73
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
            TabOrder = 4
            Width = 339
          end
          object eNRegBPKBPertama: TcxTextEdit
            Left = 158
            Top = 42
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
            Width = 339
          end
          object eNoBPKBPertama: TcxTextEdit
            Left = 158
            Top = 11
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
            TabOrder = 0
            Width = 339
          end
          object eNamaPemilikPertama: TcxMemo
            Left = 158
            Top = 104
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 5
            Height = 71
            Width = 339
          end
          object eAlamatPertama: TcxMemo
            Left = 158
            Top = 175
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 6
            Height = 97
            Width = 339
          end
          object cbSbbTdkBerlaku: TcxDBLookupComboBox
            Left = 662
            Top = 42
            DataBinding.DataField = 'STB_NAMA'
            DataBinding.DataSource = dsQSTB1
            ParentFont = False
            Properties.KeyFieldNames = 'STB_ID'
            Properties.ListColumns = <
              item
                FieldName = 'STB_NAMA'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsQSTB2
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 261
          end
          object dtTglPertama: TcxDateEdit
            Left = 662
            Top = 11
            ParentFont = False
            Properties.ShowTime = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 139
          end
        end
      end
      object eResiPembayaran: TcxTextEdit
        Left = 207
        Top = 463
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
        Width = 289
      end
      object bRequestNopol: TcxButton
        Left = 8
        Top = 523
        Width = 185
        Height = 29
        Cursor = crHandPoint
        Caption = 'Cek/Get No Polisi'
        TabOrder = 10
        OnClick = bRequestNopolClick
      end
      object eNopolAwal: TcxTextEdit
        Left = 207
        Top = 522
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
        Width = 42
      end
      object eNopolTengah: TcxTextEdit
        Left = 248
        Top = 522
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
        Width = 82
      end
      object eNopolAkhir: TcxTextEdit
        Left = 329
        Top = 522
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
        TabOrder = 13
        Width = 50
      end
      object bSimpanEntry: TcxButton
        Left = 665
        Top = 484
        Width = 123
        Height = 66
        Cursor = crHandPoint
        Caption = 'Simpan (F10)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnClick = bSimpanEntryClick
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000010101152631352F556C764378
          99A75191B9CA5AA1CEE15EA9D9EC5EA9D9EC5AA2CFE25293BCCD457C9FAD335B
          757F1A2E3B400203040400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000030607082E526972599FCCDE66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF5EA8D7EA355F7A85060B0F100000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000111E272A569BC6D866B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF5CA5D3E6172A353A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B13191B5DA7D6E966B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF60ACDCF00E1A2124000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003B6A889466B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF3F71909D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004A85AAB966B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
          000000000000000000000000000081A848FF87B14CFF87B14CFF87B14CFF3B4D
          2174040608094983A8B766B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
          00000000000000000000000000000000000081A748FF84AC4AFF84AC4AFF84AC
          4AFF3C4E227B030607084983A8B766B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
          0000000000000000000000000000000000000000000083AB4AFF85AD4BFF85AD
          4BFF85AD4BFF3E512380030607084983A8B766B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
          0000000000000000000000000000000000000000000000000000577131A785AD
          4BFF85AD4BFF85AD4BFF41542585030607084882A6B566B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF87B14CFF87B1
          4CFF87B14CFF87B14CFF88B14CFF8AB44EFF84AC4AFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF42562588030607084B86ACBB66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF84AC4AFF84AC
          4AFF84AC4AFF84AC4AFF84AC4AFF84AC4AFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF83AA4AFF212B13372543555D66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF81A849FF81A8
          49FF81A849FF81A849FF81A849FF83AB4AFF85AD4BFF85AD4BFF85AD4BFF85AD
          4BFF85AD4BFF85AD4BFF85AD4BFF303F1B620407090A4F8EB6C666B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
          000000000000000000000000000000000000000000000000000050682D9A85AD
          4BFF85AD4BFF85AD4BFF33421D670407090A4C88ADBD66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
          00000000000000000000000000000000000000000000769A43E685AD4BFF85AD
          4BFF85AD4BFF34441E6A0407090A4B87ADBC66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
          00000000000000000000000000000000000068873BD085AD4BFF85AD4BFF85AD
          4BFF36471F6E040608094B86ACBB66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
          0000000000000000000000000000789C43FF81A849FF81A849FF81A849FF3647
          1E6F040608094A85ABBA66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004A85AAB966B7EAFF66B7EAFF66B7EAFF5FAAD9ED4D8BB1C13F71909D355F
          79842E52697228475B632643565E2542545C27465A622C4F656E345D76813E6F
          8E9B4C88ADBD5EA9D9EC66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000066B7EAFF599FCCDE30566E78111E272A0000000002040606101D25281C32
          3F452440525929495E662B4E636C2B4E636C29495E66244052591C324046101D
          262902040606000000000F1B22252E526972579CC8DA66B7EAFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002D506770030506071A2F3D423B6A88945496C0D164B4E6FB66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF65B5E7FC5497C2D33C6C8B971C334147030506072F546B75000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000C151B1D508FB7C766B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF5395BFD0101C2427000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000467DA0AE66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF4E8BB2C2000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000037627E8966B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF3F71909D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010102022C4F656E5AA1CEE066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF5BA3D0E330556D7702030404000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000001010113222B2F2A4B5F683C6B89954A84A9B85497
          C1D25BA4D1E460ACDBEF62B0E1F562B0E1F560ACDBEF5CA4D2E55497C2D34A85
          AAB93C6C8A962B4D626B14242E32000101010000000000000000000000000000
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
      object bBaruEntry: TcxButton
        Left = 790
        Top = 484
        Width = 123
        Height = 66
        Cursor = crHandPoint
        Caption = 'Baru (F11)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnClick = bBaruEntryClick
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000075AD23FD76AE23FF76AE23FF76AE
          23FF020301050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000075AD23FD76AE23FF76AE23FF76AE
          23FF020301050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000101010F27
          353522577676307BA7A73B95CACA41A6E1E144AEECEC44AEECEC42A7E2E23B97
          CDCD3280ADAD255E7F7F132F40400000000075AD23FD76AE23FF76AE23FF76AE
          23FF020301050000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000020608082154727240A4DEDE4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF0103040475AD23FD76AE23FF76AE23FF76AE
          23FF020301050000000000000000000000000000000000000000000000000000
          00000000000000000000000000000C1F2A2A3F9FD8D84ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF143446460102
          03030102030301020303010203030001010175AD23FD76AE23FF76AE23FF76AE
          23FF020301050000000000000000000000000000000000000000000000000000
          0000000000000000000008141B1B44ACE9E94ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF49BAFCFC0102000376AE
          23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE
          23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF02030105000000000000
          000000000000000000002B6D94944ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF49BAFCFC0102000376AE
          23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE
          23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF02030105000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF49BAFCFC0102000376AE
          23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE
          23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF02030105000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF49BAFCFC0102000373A9
          22F873A922F873A922F873A922F873A922F876AD23FE76AE23FF76AE23FF76AE
          23FF73A922F873A922F873A922F873A922F873A922F802030105000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF16384C4C0307
          09090307090903070909030709090001010175AD23FD76AE23FF76AE23FF76AE
          23FF020301050000000000000000000000000000000000000000000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF0104050575AD23FD76AE23FF76AE23FF76AE
          23FF020301050000000000000000000000000000000000000000000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF0104050575AD23FD76AE23FF76AE23FF76AE
          23FF020301050000000000000000000000000000000000000000000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF0104050575AD23FD76AE23FF76AE23FF76AE
          23FF020301050000000000000000000000000000000000000000000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF0104050575AD23FD76AE23FF76AE23FF76AE
          23FF020301050000000000000000000000000000000000000000000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF15374A4A0102030301020303010203030102
          0303000000000000000000000000000000000000000000000000000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF45AFEDED388E
          C1C12E749D9D26618484215472721D4963631B455E5E1B445C5C1C4862622051
          6E6E255F81812D729B9B378BBDBD44AEECEC4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000004ABCFFFF40A4DEDE235878780C1F2A2A000000000204
          06060C1D2828143345451A4259591E4B66661F506C6C1F506C6C1E4B66661A42
          5959143446460C1E292902040606000000000B1B2525215472723FA1DADA4ABC
          FFFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000002153707002050707133142422B6D94943D9AD1D149B9
          FBFB4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF49BAFCFC3D9CD3D32C6F979715344747020507072256
          7575000000000000000000000000000000000000000000000000000000000000
          0000000000000000000008151D1D3A93C7C74ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF3C99D0D00B1D
          2727000000000000000000000000000000000000000000000000000000000000
          000000000000000000003280AEAE4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF388F
          C2C2000000000000000000000000000000000000000000000000000000000000
          00000000000000000000286589894ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF2E74
          9D9D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000101020220516E6E41A5E0E04ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
          FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF42A7E3E3235877770103
          0404000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000101010E232F2F1E4D68682B6E
          95953588B8B83D9BD2D242A8E4E445B0EFEF47B5F5F547B5F5F545B0EFEF42A9
          E5E53D9CD3D33688B9B92C6F96961F4F6B6B0F25323200010101000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
      end
      object eNoBPKBCariBN: TcxTextEdit
        Left = 717
        Top = 2
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
        Width = 173
      end
      object cbNopol: TcxCheckBox
        Left = 398
        Top = 518
        Caption = 'Pakai NOPOL Lama'
        Properties.OnChange = cbNopolPropertiesChange
        TabOrder = 16
        Transparent = True
        Visible = False
        Width = 182
      end
      object dtTgl: TcxDateEdit
        Left = 36
        Top = 32
        ParentFont = False
        Properties.ShowTime = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 17
        Width = 143
      end
      object eNoRekom: TcxTextEdit
        Left = 207
        Top = 492
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
        TabOrder = 18
        Width = 315
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'List Data'
      ImageIndex = 1
      DesignSize = (
        931
        554)
      object Label50: TLabel
        Left = 6
        Top = 22
        Width = 117
        Height = 23
        Caption = 'Tanggal BPKB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object cxGrid: TcxGrid
        Left = 4
        Top = 56
        Width = 924
        Height = 498
        Anchors = [akLeft, akTop, akRight, akBottom]
        PopupMenu = PopupMenu1
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          PopupMenu = PopupMenu1
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Cancel.Visible = True
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          DataController.DataSource = dsQDeatail
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.PercentWildcard = '*'
          DataController.Filter.UnderscoreWildcard = '?'
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skCount
              FieldName = 'pemohon_id'
              Column = cxGridDBTableView1Column1
            end>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.Filters = [dtfRelativeDays, dtfRelativeDayPeriods, dtfRelativeWeeks, dtfRelativeMonths, dtfRelativeYears, dtfPastFuture, dtfMonths, dtfYears]
          DateTimeHandling.IgnoreTimeForFiltering = True
          DateTimeHandling.Grouping = dtgRelativeToToday
          Filtering.ColumnPopup.MaxDropDownItemCount = 30
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          NewItemRow.SeparatorColor = clYellow
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsView.Footer = True
          OptionsView.HeaderHeight = 45
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 15
          Styles.StyleSheet = DM.SyteAku
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'No BPKB'
            DataBinding.FieldName = 'NO_BPKB'
            Options.ShowEditButtons = isebAlways
            Width = 148
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = 'No Reg BPKB'
            DataBinding.FieldName = 'NREG_BPKB'
            Width = 224
          end
          object cxGridDBTableView1Column3: TcxGridDBColumn
            Caption = 'Tgl BPKB'
            DataBinding.FieldName = 'TGL_BPKB'
            Width = 155
          end
          object cxGridDBTableView1Column5: TcxGridDBColumn
            Caption = 'No Rangka'
            DataBinding.FieldName = 'NO_RANGKA'
            Width = 231
          end
          object cxGridDBTableView1Column6: TcxGridDBColumn
            Caption = 'No Mesin'
            DataBinding.FieldName = 'NO_MESIN'
            Width = 191
          end
          object cxGridDBTableView1Column7: TcxGridDBColumn
            Caption = 'No Polisi'
            DataBinding.FieldName = 'NO_POLISI'
            Width = 127
          end
          object cxGridDBTableView1Column8: TcxGridDBColumn
            Caption = 'Merk'
            DataBinding.FieldName = 'MERK_NAMA'
            Width = 137
          end
          object cxGridDBTableView1Column9: TcxGridDBColumn
            Caption = 'Model'
            DataBinding.FieldName = 'MODEL_NAMA'
            Width = 146
          end
          object cxGridDBTableView1Column10: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'JENIS_NAMA'
            Width = 138
          end
          object cxGridDBTableView1Column11: TcxGridDBColumn
            Caption = 'Jlm Roda'
            DataBinding.FieldName = 'JML_RODA'
          end
          object cxGridDBTableView1Column12: TcxGridDBColumn
            Caption = 'Warna TNKB'
            DataBinding.FieldName = 'WARNA_TNKB'
            Width = 132
          end
          object cxGridDBTableView1Column13: TcxGridDBColumn
            Caption = 'No Faktur'
            DataBinding.FieldName = 'NO_FAKTUR'
            Width = 194
          end
          object cxGridDBTableView1Column14: TcxGridDBColumn
            Caption = 'Nama Pemilik'
            DataBinding.FieldName = 'NAMA_PEMILIK'
            Width = 264
          end
          object cxGridDBTableView1Column15: TcxGridDBColumn
            Caption = 'Nama Pemohon'
            DataBinding.FieldName = 'NAMA_PEMOHON'
            Width = 145
          end
          object cxGridDBTableView1Column16: TcxGridDBColumn
            Caption = 'Operator'
            DataBinding.FieldName = 'OPERATOR'
            Width = 136
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object dtTglRegister: TcxDateEdit
        Left = 136
        Top = 20
        ParentFont = False
        Properties.ShowTime = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 155
      end
      object bGetDataRegister: TcxButton
        Left = 305
        Top = 6
        Width = 200
        Height = 44
        Cursor = crHandPoint
        Caption = 'Get From Server'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = bGetDataRegisterClick
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000082AA4AFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000203010482AA
          4AFF82AA4AFF7FA648F900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000303010582AA4AFF82AA
          4AFF82AA4AFF82AA4AFF82AA4AFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000303010582AA4AFF82AA4AFF82AA
          4AFF82AA4AFF82AA4AFF82AA4AFF82AA4AFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000082AA4AFF82AA4AFF82AA4AFF82AA
          4AFF82AA4AFF82AA4AFF82AA4AFF82AA4AFF82AA4AFF00000000000000000C07
          03116A431E9B9B632CE3AE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F
          31FFAE6F31FFAE6F31FF0000000082AA4AFF82AA4AFF82AA4AFF82AA4AFF82AA
          4AFF82AA4AFF82AA4AFF82AA4AFF82AA4AFF82AA4AFF82AA4AFF170E0621AC6D
          2FFFAC6D2FFFAE6F31FFAB6D2FFEAB6C2FFDAE6F31FFAB6C2FFDAB6C2FFDAE6F
          31FFAB6C2FFDAE6F31FF0000000082AA4AFF82AA4AFF81A94AFE0000000082AA
          4AFF82AA4AFF82AA4AFF0000000082AA4AFF82AA4AFF82AA4AFF885726C7AC6D
          2FFFAB6C2FFDAE6F31FFAB6C2FFDAB6C2FFDAE6F31FFAB6C2FFDAB6C2FFDAE6F
          31FFAB6C2FFDAE6F31FF0000000082AA4AFF82AA4AFF000000000000000082AA
          4AFF82AA4AFF82AA4AFF000000000000000082AA4AFF82AA4AFFAE6F31FFAE6F
          31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F
          31FFAE6F31FFAE6F31FF0000000082AA4AFF00000000000000000000000082AA
          4AFF82AA4AFF82AA4AFF00000000000000000000000082AA4AFFAE6F31FFAB6C
          2FFDAB6C2FFDAE6F31FFAB6C2FFDAB6C2FFDAE6F31FFAB6C2FFDAB6C2FFDAE6F
          31FFAB6C2FFDAE6F31FF000000000000000000000000AE6F31FF0000000082AA
          4AFF82AA4AFF82AA4AFF00000000AE6F31FF00000000000000009A622BE1AC6D
          2FFFAB6C2FFDAE6F31FFAB6C2FFDAB6C2FFDAE6F31FFAB6C2FFDAB6C2FFDAE6F
          31FFAB6C2FFDAE6F31FF0000000000000000AB6C2FFDAE6F31FF0000000082AA
          4AFF82AA4AFF82AA4AFF00000000AE6F31FFAC6D2FFF0906020D3E28115BAE6F
          31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F
          31FFAE6F31FFAE6F31FF0F0A0416AE6F31FFAE6F31FFAE6F31FF0000000082AA
          4AFF82AA4AFF82AA4AFF00000000AE6F31FFAE6F31FF945E2AD9000000005F3C
          1A8DAC6D2FFFAE6F31FFAB6C2FFDAB6C2FFDAE6F31FFAB6C2FFDAB6C2FFDAE6F
          31FFAB6C2FFDAE6F31FFAB6C2FFDAB6C2FFDAB6C2FFDAE6F31FF000000000000
          0000000000000000000000000000AE6F31FFAC6D2FFF9A612AE4000000000000
          00002D1D0D42AE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F
          31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F
          31FF000000003A251055AE6F31FFAE6F31FFAE6F31FF835425C0000000000000
          000000000000AE6F31FFAB6D2FFEAB6C2FFDAE6F31FFAB6C2FFDAB6C2FFDAE6F
          31FFAB6C2FFDAE6F31FFAC6D2FFFAC6D2FFFAC6D2FFFAE6F31FF986029E10906
          020D00000000AC6D2FFFAC6D2FFFAE6F31FFAC6D2FFF3D27115B000000000000
          0000000000006D461FA0AC6D2FFFAB6C2FFDAE6F31FFAB6C2FFDAB6C2FFDAE6F
          31FFAB6C2FFDAE6F31FF32200E4A0503010726180B390F0A041600000000100A
          0418AA6C30F9AC6D2FFFAB6D2FFEAE6F31FF8E5A27D300000000000000000000
          00000000000000000000A86A2EF9AC6D2FFFAE6F31FFAB6C2FFDAB6C2FFDAE6F
          31FFAC6D2FFF845425C1000000005F3C1A8D442B13654A2F156D7B4E22B6AC6D
          2FFFAE6F31FFAB6D2FFEAC6D2FFF724920A70000000000000000000000000000
          0000000000000000000006040209945E2AD9AE6F31FFAE6F31FFAE6F31FFAE6F
          31FF734A20A90000000050331675AE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F
          31FFAE6F31FFAE6F31FF623F1C90000000000000000000000000000000000000
          00000000000000000000000000000000000022160A324D311572472D146A0D08
          0413000000003B251156AC6D2FFFAB6D2FFEAB6C2FFDAE6F31FFAB6C2FFDAB6C
          2FFDAE6F31FFAC6D2FFF33200E4B000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002D1D
          0D428C5826CFAE6F31FFAB6D2FFEAB6C2FFDAB6C2FFDAE6F31FFAB6C2FFDAB6C
          2FFDAE6F31FFAA6C2EFC00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001A11
          0726AE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F31FFAE6F
          31FFAE6F31FF35220F4D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002F1D0D45AE6F31FFAC6D2FFFAB6D2FFEAB6C2FFDAE6F31FFAC6D2FFFAC6D
          2FFF5536187C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000120C051B835324C2AC6D2FFFAC6D2FFFAE6F31FF945E28DB2A1B
          0B3E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000100A051700000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      object cbSemua: TcxCheckBox
        Left = 518
        Top = 12
        Caption = 'Tampilkan Semua'
        TabOrder = 3
        Transparent = True
        OnClick = cbSemuaClick
        Width = 189
      end
    end
  end
  object cxMemo1: TcxMemo
    Left = 360
    Top = 603
    Properties.MaxLength = 0
    TabOrder = 1
    Visible = False
    Height = 121
    Width = 369
  end
  object pkdpos: TPanel
    Left = 275
    Top = 612
    Width = 777
    Height = 391
    BevelInner = bvLowered
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = clSilver
    TabOrder = 2
    Visible = False
    OnMouseDown = pkdposMouseDown
    object Shape3: TShape
      Left = 4
      Top = 4
      Width = 765
      Height = 379
      Align = alClient
      Brush.Color = clSkyBlue
      OnMouseDown = Shape3MouseDown
    end
    object Label59: TLabel
      Left = 7
      Top = 10
      Width = 220
      Height = 19
      Caption = 'DATA DETAIL KELURAHAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Button1: TButton
      Left = 736
      Top = 8
      Width = 24
      Height = 25
      Cursor = crHandPoint
      Caption = 'x'
      TabOrder = 0
      OnClick = Button1Click
    end
    object eCariKelurahan: TcxTextEdit
      Left = 8
      Top = 35
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Properties.OnChange = eCariKelurahanPropertiesChange
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyDown = eCariKelurahanKeyDown
      Width = 754
    end
    object rbKelurahan: TcxRadioButton
      Left = 8
      Top = 72
      Width = 113
      Height = 17
      Caption = 'Kelurahan'
      Checked = True
      TabOrder = 2
      TabStop = True
      Transparent = True
    end
    object rbKecamatan: TcxRadioButton
      Left = 176
      Top = 72
      Width = 113
      Height = 17
      Caption = 'Kecamatan'
      TabOrder = 3
      Transparent = True
    end
    object dbgData: TCRDBGrid
      Left = 11
      Top = 93
      Width = 753
      Height = 258
      DataSource = dsQ2
      TabOrder = 4
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -19
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgDataDblClick
      OnKeyDown = dbgDataKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'KELUARAHAN'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KECAMATAN'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KABUPATEN'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROPINSI'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KD_POS'
          Width = 150
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 356
      Width = 240
      Height = 25
      DataSource = dsQ2
      TabOrder = 5
    end
  end
  object pModel: TPanel
    Left = 288
    Top = 616
    Width = 697
    Height = 399
    BevelWidth = 3
    Color = clSilver
    TabOrder = 3
    Visible = False
    OnMouseDown = pModelMouseDown
    DesignSize = (
      697
      399)
    object Label60: TLabel
      Left = 8
      Top = 11
      Width = 140
      Height = 23
      Caption = 'Tambah Model'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape4: TShape
      Left = 1
      Top = 43
      Width = 695
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      Pen.Color = clWhite
    end
    object Label61: TLabel
      Left = 19
      Top = 53
      Width = 105
      Height = 23
      Caption = 'Model Nama'
      Transparent = True
    end
    object Label62: TLabel
      Left = 20
      Top = 87
      Width = 41
      Height = 23
      Caption = 'Jenis'
      Transparent = True
    end
    object Label63: TLabel
      Left = 20
      Top = 119
      Width = 106
      Height = 23
      Caption = 'Warna Kartu'
      Transparent = True
    end
    object cxButton9: TcxButton
      Left = 651
      Top = 6
      Width = 41
      Height = 33
      Cursor = crHandPoint
      Hint = 'Close'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = cxButton9Click
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
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
        00000000000000000000000000000E143644283CA0C8324BC8FA334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF324BC8FA283C
        A0C80E1436440000000000000000000000000000000000000000000000000000
        000000000000000000000E143644324BC9FB334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF324BC9FB0E14364400000000000000000000000000000000000000000000
        00000000000000000000283CA0C8334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF283CA0C800000000000000000000000000000000000000000000
        00000000000000000000324BC9FB334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF324BC8FA00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF3F56CFFF344DCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF344DCCFF3F56CFFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF435AD0FFDADEF5FFB0B9EBFF344DCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF344DCCFFAEB8EAFFDBDFF6FF435AD0FF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF3D54
        CEFFDADEF5FFFFFFFFFFFFFFFFFFB0B9EBFF344DCCFF334CCCFF334CCCFF344D
        CCFFAEB8EAFFFFFFFFFFFFFFFFFFDBDFF6FF3E55CEFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFFA3AEE8FFFFFFFFFFFFFFFFFFFFFFFFFFB0B9EBFF344DCCFF344DCCFFAEB8
        EAFFFFFFFFFFFFFFFFFFFFFFFFFFA6B1E8FF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFFA3AEE8FFFFFFFFFFFFFFFFFFFFFFFFFFB0B9EBFFAEB8EAFFFFFF
        FFFFFFFFFFFFFFFFFFFFA6B1E8FF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFFA3AEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA6B1E8FF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFFA3AFE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFA6B1E8FF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF344DCCFFAEB8EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB0B9EBFF344DCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF344DCCFFAEB8EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB0B9EBFF344DCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF344DCCFFAEB8EAFFFFFFFFFFFFFFFFFFFFFFFFFFA6B1E8FFA3AEE8FFFFFF
        FFFFFFFFFFFFFFFFFFFFB0B9EBFF344DCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF344D
        CCFFAEB8EAFFFFFFFFFFFFFFFFFFFFFFFFFFA6B1E8FF334CCCFF334CCCFFA3AE
        E8FFFFFFFFFFFFFFFFFFFFFFFFFFB0B9EBFF344DCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF3C54
        CEFFD3D8F4FFFFFFFFFFFFFFFFFFA6B1E8FF334CCCFF334CCCFF334CCCFF334C
        CCFFA3AEE8FFFFFFFFFFFFFFFFFFD4D9F4FF3D54CEFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF3F56CFFFD3D8F4FFA6B1E8FF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFFA3AEE8FFD4D9F4FF3F57CFFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF3B53CEFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF3B53CEFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000324BC9FB334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF324BC8FA00000000000000000000000000000000000000000000
        00000000000000000000283CA0C8334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF283CA0C800000000000000000000000000000000000000000000
        000000000000000000000E143644324BC9FB334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF324BC9FB0E14364400000000000000000000000000000000000000000000
        00000000000000000000000000000E143644283CA0C8324BC8FA334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF324BC8FA283C
        A0C80E1436440000000000000000000000000000000000000000000000000000
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
    object cxGrid1: TcxGrid
      Left = 8
      Top = 146
      Width = 681
      Height = 245
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 1
      object cxGridDBTableView2: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Delete.Enabled = False
        NavigatorButtons.Delete.Visible = False
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsqAddModel
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.Filter.Active = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0'
            Kind = skCount
            FieldName = 'pemohon_id'
            Column = cxGridDBColumn1
          end>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.Filters = [dtfRelativeDays, dtfRelativeDayPeriods, dtfRelativeWeeks, dtfRelativeMonths, dtfRelativeYears, dtfPastFuture, dtfMonths, dtfYears]
        DateTimeHandling.IgnoreTimeForFiltering = True
        DateTimeHandling.Grouping = dtgRelativeToToday
        Filtering.ColumnPopup.MaxDropDownItemCount = 30
        FilterRow.ApplyChanges = fracImmediately
        NewItemRow.SeparatorColor = clYellow
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsView.Navigator = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 45
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        Styles.StyleSheet = DM.SyteAku
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'Model Nama'
          DataBinding.FieldName = 'MODEL_NAMA'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          Options.Editing = False
          Options.ShowEditButtons = isebAlways
          Width = 248
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'Jenis'
          DataBinding.FieldName = 'JENIS_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'JENIS_ID'
          Properties.ListColumns = <
            item
              Caption = 'JENIS'
              FieldName = 'JENIS_NAMA'
            end>
          Options.Editing = False
          Width = 203
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = 'Warna Kartu Induk'
          DataBinding.FieldName = 'WK_NAMA'
          Options.Editing = False
          Width = 180
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object eModelNama: TcxTextEdit
      Left = 147
      Top = 49
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
      OnKeyDown = eModelNamaKeyDown
      Width = 315
    end
    object cbJenisModel: TcxDBLookupComboBox
      Left = 147
      Top = 81
      DataBinding.DataField = 'jenis_nama'
      DataBinding.DataSource = dsQJenisModel1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'jenis_id'
      Properties.ListColumns = <
        item
          FieldName = 'jenis_nama'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsQJenisModel2
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 315
    end
    object cbWarnaKartu: TcxDBLookupComboBox
      Left = 147
      Top = 113
      DataBinding.DataField = 'wk_nama'
      DataBinding.DataSource = dsQWarnaKartu1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'wk_id'
      Properties.ListColumns = <
        item
          FieldName = 'wk_nama'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsQWarnaKartu2
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 315
    end
    object cxButton10: TcxButton
      Left = 466
      Top = 49
      Width = 116
      Height = 94
      Cursor = crHandPoint
      Caption = 'Simpan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = cxButton10Click
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000010101152631352F556C764378
        99A75191B9CA5AA1CEE15EA9D9EC5EA9D9EC5AA2CFE25293BCCD457C9FAD335B
        757F1A2E3B400203040400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000030607082E526972599FCCDE66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF5EA8D7EA355F7A85060B0F100000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000111E272A569BC6D866B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF5CA5D3E6172A353A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000B13191B5DA7D6E966B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF60ACDCF00E1A2124000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003B6A889466B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF3F71909D000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004A85AAB966B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
        000000000000000000000000000081A848FF87B14CFF87B14CFF87B14CFF3B4D
        2174040608094983A8B766B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
        00000000000000000000000000000000000081A748FF84AC4AFF84AC4AFF84AC
        4AFF3C4E227B030607084983A8B766B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
        0000000000000000000000000000000000000000000083AB4AFF85AD4BFF85AD
        4BFF85AD4BFF3E512380030607084983A8B766B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
        0000000000000000000000000000000000000000000000000000577131A785AD
        4BFF85AD4BFF85AD4BFF41542585030607084882A6B566B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF87B14CFF87B1
        4CFF87B14CFF87B14CFF88B14CFF8AB44EFF84AC4AFF85AD4BFF85AD4BFF85AD
        4BFF85AD4BFF85AD4BFF85AD4BFF42562588030607084B86ACBB66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF84AC4AFF84AC
        4AFF84AC4AFF84AC4AFF84AC4AFF84AC4AFF85AD4BFF85AD4BFF85AD4BFF85AD
        4BFF85AD4BFF85AD4BFF85AD4BFF83AA4AFF212B13372543555D66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF81A849FF81A8
        49FF81A849FF81A849FF81A849FF83AB4AFF85AD4BFF85AD4BFF85AD4BFF85AD
        4BFF85AD4BFF85AD4BFF85AD4BFF303F1B620407090A4F8EB6C666B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
        000000000000000000000000000000000000000000000000000050682D9A85AD
        4BFF85AD4BFF85AD4BFF33421D670407090A4C88ADBD66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
        00000000000000000000000000000000000000000000769A43E685AD4BFF85AD
        4BFF85AD4BFF34441E6A0407090A4B87ADBC66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
        00000000000000000000000000000000000068873BD085AD4BFF85AD4BFF85AD
        4BFF36471F6E040608094B86ACBB66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
        0000000000000000000000000000789C43FF81A849FF81A849FF81A849FF3647
        1E6F040608094A85ABBA66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004A85AAB966B7EAFF66B7EAFF66B7EAFF5FAAD9ED4D8BB1C13F71909D355F
        79842E52697228475B632643565E2542545C27465A622C4F656E345D76813E6F
        8E9B4C88ADBD5EA9D9EC66B7EAFF66B7EAFF66B7EAFF66B7EAFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000066B7EAFF599FCCDE30566E78111E272A0000000002040606101D25281C32
        3F452440525929495E662B4E636C2B4E636C29495E66244052591C324046101D
        262902040606000000000F1B22252E526972579CC8DA66B7EAFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00002D506770030506071A2F3D423B6A88945496C0D164B4E6FB66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF65B5E7FC5497C2D33C6C8B971C334147030506072F546B75000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000C151B1D508FB7C766B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF5395BFD0101C2427000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000467DA0AE66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF4E8BB2C2000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000037627E8966B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF3F71909D000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000010102022C4F656E5AA1CEE066B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
        EAFF66B7EAFF66B7EAFF66B7EAFF5BA3D0E330556D7702030404000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000001010113222B2F2A4B5F683C6B89954A84A9B85497
        C1D25BA4D1E460ACDBEF62B0E1F562B0E1F560ACDBEF5CA4D2E55497C2D34A85
        AAB93C6C8A962B4D626B14242E32000101010000000000000000000000000000
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
    object cxButton11: TcxButton
      Left = 584
      Top = 49
      Width = 107
      Height = 94
      Cursor = crHandPoint
      Caption = 'Baru'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = cxButton11Click
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000075AD23FD76AE23FF76AE23FF76AE
        23FF020301050000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000075AD23FD76AE23FF76AE23FF76AE
        23FF020301050000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000101010F27
        353522577676307BA7A73B95CACA41A6E1E144AEECEC44AEECEC42A7E2E23B97
        CDCD3280ADAD255E7F7F132F40400000000075AD23FD76AE23FF76AE23FF76AE
        23FF020301050000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000020608082154727240A4DEDE4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF0103040475AD23FD76AE23FF76AE23FF76AE
        23FF020301050000000000000000000000000000000000000000000000000000
        00000000000000000000000000000C1F2A2A3F9FD8D84ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF143446460102
        03030102030301020303010203030001010175AD23FD76AE23FF76AE23FF76AE
        23FF020301050000000000000000000000000000000000000000000000000000
        0000000000000000000008141B1B44ACE9E94ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF49BAFCFC0102000376AE
        23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE
        23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF02030105000000000000
        000000000000000000002B6D94944ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF49BAFCFC0102000376AE
        23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE
        23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF02030105000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF49BAFCFC0102000376AE
        23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE
        23FF76AE23FF76AE23FF76AE23FF76AE23FF76AE23FF02030105000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF49BAFCFC0102000373A9
        22F873A922F873A922F873A922F873A922F876AD23FE76AE23FF76AE23FF76AE
        23FF73A922F873A922F873A922F873A922F873A922F802030105000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF16384C4C0307
        09090307090903070909030709090001010175AD23FD76AE23FF76AE23FF76AE
        23FF020301050000000000000000000000000000000000000000000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF0104050575AD23FD76AE23FF76AE23FF76AE
        23FF020301050000000000000000000000000000000000000000000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF0104050575AD23FD76AE23FF76AE23FF76AE
        23FF020301050000000000000000000000000000000000000000000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF0104050575AD23FD76AE23FF76AE23FF76AE
        23FF020301050000000000000000000000000000000000000000000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF0104050575AD23FD76AE23FF76AE23FF76AE
        23FF020301050000000000000000000000000000000000000000000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF15374A4A0102030301020303010203030102
        0303000000000000000000000000000000000000000000000000000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000004ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF45AFEDED388E
        C1C12E749D9D26618484215472721D4963631B455E5E1B445C5C1C4862622051
        6E6E255F81812D729B9B378BBDBD44AEECEC4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000004ABCFFFF40A4DEDE235878780C1F2A2A000000000204
        06060C1D2828143345451A4259591E4B66661F506C6C1F506C6C1E4B66661A42
        5959143446460C1E292902040606000000000B1B2525215472723FA1DADA4ABC
        FFFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000002153707002050707133142422B6D94943D9AD1D149B9
        FBFB4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF49BAFCFC3D9CD3D32C6F979715344747020507072256
        7575000000000000000000000000000000000000000000000000000000000000
        0000000000000000000008151D1D3A93C7C74ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF3C99D0D00B1D
        2727000000000000000000000000000000000000000000000000000000000000
        000000000000000000003280AEAE4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF388F
        C2C2000000000000000000000000000000000000000000000000000000000000
        00000000000000000000286589894ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF2E74
        9D9D000000000000000000000000000000000000000000000000000000000000
        000000000000000000000101020220516E6E41A5E0E04ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABC
        FFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF4ABCFFFF42A7E3E3235877770103
        0404000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000101010E232F2F1E4D68682B6E
        95953588B8B83D9BD2D242A8E4E445B0EFEF47B5F5F547B5F5F545B0EFEF42A9
        E5E53D9CD3D33688B9B92C6F96961F4F6B6B0F25323200010101000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphTop
    end
  end
  object pWarna: TPanel
    Left = 184
    Top = 616
    Width = 513
    Height = 153
    BevelWidth = 3
    Color = clSilver
    TabOrder = 4
    Visible = False
    OnMouseDown = pWarnaMouseDown
    DesignSize = (
      513
      153)
    object Label64: TLabel
      Left = 16
      Top = 11
      Width = 144
      Height = 23
      Caption = 'Tambah Warna'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape7: TShape
      Left = -266
      Top = 43
      Width = 786
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      Pen.Color = clWhite
    end
    object Label65: TLabel
      Left = 19
      Top = 53
      Width = 110
      Height = 23
      Caption = 'Nama Warna'
      Transparent = True
    end
    object cxButton6: TcxButton
      Left = 468
      Top = 2
      Width = 41
      Height = 33
      Cursor = crHandPoint
      Hint = 'Close'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = cxButton6Click
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
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
        00000000000000000000000000000E143644283CA0C8324BC8FA334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF324BC8FA283C
        A0C80E1436440000000000000000000000000000000000000000000000000000
        000000000000000000000E143644324BC9FB334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF324BC9FB0E14364400000000000000000000000000000000000000000000
        00000000000000000000283CA0C8334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF283CA0C800000000000000000000000000000000000000000000
        00000000000000000000324BC9FB334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF324BC8FA00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF3F56CFFF344DCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF344DCCFF3F56CFFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF435AD0FFDADEF5FFB0B9EBFF344DCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF344DCCFFAEB8EAFFDBDFF6FF435AD0FF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF3D54
        CEFFDADEF5FFFFFFFFFFFFFFFFFFB0B9EBFF344DCCFF334CCCFF334CCCFF344D
        CCFFAEB8EAFFFFFFFFFFFFFFFFFFDBDFF6FF3E55CEFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFFA3AEE8FFFFFFFFFFFFFFFFFFFFFFFFFFB0B9EBFF344DCCFF344DCCFFAEB8
        EAFFFFFFFFFFFFFFFFFFFFFFFFFFA6B1E8FF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFFA3AEE8FFFFFFFFFFFFFFFFFFFFFFFFFFB0B9EBFFAEB8EAFFFFFF
        FFFFFFFFFFFFFFFFFFFFA6B1E8FF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFFA3AEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA6B1E8FF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFFA3AFE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFA6B1E8FF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF344DCCFFAEB8EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB0B9EBFF344DCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF344DCCFFAEB8EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB0B9EBFF344DCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF344DCCFFAEB8EAFFFFFFFFFFFFFFFFFFFFFFFFFFA6B1E8FFA3AEE8FFFFFF
        FFFFFFFFFFFFFFFFFFFFB0B9EBFF344DCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF344D
        CCFFAEB8EAFFFFFFFFFFFFFFFFFFFFFFFFFFA6B1E8FF334CCCFF334CCCFFA3AE
        E8FFFFFFFFFFFFFFFFFFFFFFFFFFB0B9EBFF344DCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF3C54
        CEFFD3D8F4FFFFFFFFFFFFFFFFFFA6B1E8FF334CCCFF334CCCFF334CCCFF334C
        CCFFA3AEE8FFFFFFFFFFFFFFFFFFD4D9F4FF3D54CEFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF3F56CFFFD3D8F4FFA6B1E8FF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFFA3AEE8FFD4D9F4FF3F57CFFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF3B53CEFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF3B53CEFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000324BC9FB334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF324BC8FA00000000000000000000000000000000000000000000
        00000000000000000000283CA0C8334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF283CA0C800000000000000000000000000000000000000000000
        000000000000000000000E143644324BC9FB334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF324BC9FB0E14364400000000000000000000000000000000000000000000
        00000000000000000000000000000E143644283CA0C8324BC8FA334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF324BC8FA283C
        A0C80E1436440000000000000000000000000000000000000000000000000000
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
    object eInputWarna: TcxTextEdit
      Left = 146
      Top = 52
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
      TabOrder = 0
      OnKeyDown = eInputWarnaKeyDown
      Width = 351
    end
    object bBaruPendaftaranBBN1: TcxButton
      Left = 147
      Top = 88
      Width = 113
      Height = 47
      Cursor = crHandPoint
      Caption = 'Batal'
      TabOrder = 2
      OnClick = bBaruPendaftaranBBN1Click
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000101010121E1E
        1E1F1C1B1B1D1C1C1C1D1C1C1C1D1B1B1B1D1C1C1C1D1C1C1C1D1C1C1C1D1C1C
        1C1D1C1C1C1D1C1C1C1D1C1C1C1D1C1C1C1D1C1B1B1D1B1B1B1D1B1B1B1D1B1B
        1B1D1B1A1A1D1A1A1A1D1A1A1A1D1A1A1A1D1A1A1A1D1A19191D1919191D1919
        191D1918181D1918181D1818181D1818181D1919191E10101014302F2F36706F
        6F736767676D6968686D6968686D6767676D6A69696D6969696D6969696D6969
        696D6969696D6969696D6969696D6969696D6868686D6767676D6766666D6665
        656D6564646D6464636D6363626D6262616D6161616D6160606D605F5F6D5F5F
        5E6D5D5D5C6D5E5D5C6D5D5C5C6D5B5B5A6D605F5F723030303C58575773D7D6
        D6DDC7C6C6D2CAC9C9D2CAC9C9D2C6C6C6D2CBCBCBD2CBCACAD2CBCACAD2CBCA
        CAD2CBCACAD2CBCACAD2CBCACAD2CBCACAD2CBCACAD2C9C8C8D2C7C6C6D2C6C5
        C4D2C4C3C2D2C2C2C1D2C1C0BFD2BFBEBDD2BDBDBCD2BCBBBAD2BAB9B9D2B9B8
        B8D2B5B4B4D2B5B4B4D2B4B3B3D2B1AFAFD2BAB9B9DC5858587C6060608BF8F7
        F7FFE7E7E7FBEEEDEDF8EEEDEDF8E5E5E5FBF0EFEFF8EFEEEEF8EFEEEEF8EFEE
        EEF8EFEEEEF8EFEEEEF8EFEEEEF8EFEEEEF8EFEEEEF8EFEEEEF8EDEBECF8EBEA
        E9F8E9E8E7F8E7E6E6F8E6E5E4F8E4E3E2F8E2E1E0F8E0DFDEF8DEDDDDF8DDDC
        DBF8DBDADAFBD8D7D6F8D7D5D5F8D4D3D2FBDAD9D8FF63626296777776ACF8F7
        F7FFE1E1E1F8EAE9E9F4EAE9E9F4E1E0E0F8ECEBEBF4EBEAEAF4EBEAEAF4EBEA
        EAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4E9E8
        E8F4E8E7E6F4E6E5E4F4E4E3E2F4E2E1E0F4E0DFDEF4DEDDDCF4DCDBDBF4DBDA
        D9F4D6D4D4F8D6D4D4F4D5D3D3F4CDCCCBF7DCDBDAFF797978B8777776ACF8F7
        F7FFD9D9D9F6EAE9E9F4EAE9E9F4D9D8D8F6ECEBEBF4EBEAEAF4EBEAEAF4EBEA
        EAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEA
        EAF4E9E9E8F4E8E7E6F4E6E5E4F4E4E3E2F4E2E1E0F4E0DFDEF4DEDDDDF4DDDC
        DBF4CDCCCBF6D8D6D6F4D6D5D4F4C9C8C8F6DEDDDCFF7A7979B8777776ACF8F7
        F7FFD5D4D4F5EAE9E9F4EAE9E9F4D5D4D4F6ECEBEBF6ECEBEBF7ECEBEBF7ECEB
        EBF7ECEBEBF7ECEBEBF7ECEBEBF7ECEBEBF7ECEBEBF7ECEBEBF7ECEBEBF7ECEB
        EBF7EBEAEAF7E9E8E8F7E8E7E7F7E6E5E5F7E4E3E3F7E3E1E1F7E1E0DFF7DFDE
        DEF7C9C8C8F7DAD9D9F5D8D7D7F4C3C2C2F5E0DFDEFF7A7979B8777776ACF8F7
        F7FFCFCECEF6EAE9E9F4EBE9E9F6D6D6D6FBE0DFDFFCE0DFDFFCE0DFDFFCE0DF
        DFFCE0DFDFFCE0DFDFFCE0DFDFFCE0DFDFFCE0DFDFFCE0DFDFFCE0DFDFFCE0DF
        DFFCE0DFDFFCDFDEDEFCDEDDDDFCDCDBDBFCDAD9D9FCD9D8D7FCD7D6D6FCD6D5
        D5FCCBC9C9FBDCDBDAF8DAD8D8F4C0BFBEF6E2E0E0FF7B7A79B8777777ACF8F7
        F7FFCFCECEF6EBEAEAF5EBEAEAF9D5D3D3FCDFDEDEFCDFDEDEFCDFDEDEFCDFDE
        DEFCDFDEDEFCDFDEDEFCDFDEDEFCDFDEDEFCDFDEDEFCDFDEDEFCDFDEDEFCDFDE
        DEFCDFDEDEFCDFDEDEFCDEDEDEFCDDDCDCFCDBDADAFCDAD9D9FCD8D7D7FCD7D6
        D6FCCCCACAFCDEDCDCFBDDDCDBF6C2C1C0F6E4E3E2FF7B7A7AB8777777ACF8F7
        F7FFCFCECEF6EBEAEAF5EBEAEAF9D6D5D5FCE3E2E2FDE2E1E1FDE2E1E1FDE2E1
        E1FDE2E1E1FDE2E1E1FDE2E1E1FDE2E1E1FDE2E1E1FDE2E1E1FDE2E1E1FDE2E1
        E1FDE2E1E1FDE2E1E1FDE2E1E1FDE1E0E0FDDFDFDFFDDEDDDDFDDDDCDCFDDCDA
        DAFDCECECDFDDFDEDEFBDEDDDCF6C3C2C2F6E6E5E4FF7D7B7BB8777777ACF8F7
        F7FFCFCECEF6EBE9E9F5EDECECFADDDCDCFFF6F5F5FFF5F4F4FFF5F4F4FFF5F4
        F4FFF5F4F4FFF5F4F4FFF5F4F3FFF5F3F3FFF5F3F3FFF4F3F3FFF4F3F3FFF4F3
        F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF2F1F0FFF0EFEFFFEFED
        EDFFD7D5D5FFE6E5E5FDE0DFDEF6C5C4C4F6E8E7E6FF7D7C7BB8777777ACF8F7
        F7FFCFCECEF6EAE9E9F5F1F0F0FCDEDDDDFFF5F4F4FFF5F4F4FFF5F4F4FFF5F4
        F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F3FFF5F4F3FFF5F3F3FFF4F3F3FFF4F3
        F3FFF4F3F3FFF4F3F3FFF3F2F2FFF3F2F2FFF3F2F2FFF3F1F1FFF1EFEFFFEFEE
        EEFFD9D7D7FFECEAEAFFE3E1E1F6C6C5C5F6EAE8E9FF7D7D7CB8777777ACF8F7
        F7FFCFCECEF6EAE9E9F5F1F0F0FCDEDDDDFFF5F4F4FFF5F4F4FFF5F4F4FFF5F4
        F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4
        F3FFF5F4F3FFEFEFECFFDFE3DAFFD8DED3FFD8DED3FFD8DED3FFD7DED3FFDDE1
        D8FFD4D4D2FFEDECECFFE5E4E4F7C7C6C6F6ECEBEBFF7E7D7DB8777777ACF8F7
        F7FFCFCECEF6EAE9E9F5F1F0F0FCDEDDDDFFF5F4F4FFF5F4F4FFF5F4F4FFF5F4
        F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4
        F4FFF4F3F3FFE0E4DBFF53794CFF356231FF285B24FF286225FF336F32FF5584
        50FFC8CDC3FFEFEEEDFFE7E6E6F7C8C7C7F6EEEDEDFF7E7E7EB8777777ACF8F7
        F7FFCFCECEF6EAE9E9F5F1F0F0FCDEDDDDFFF5F4F5FFF5F4F4FFF5F4F4FFF5F4
        F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F3FFF5F3F3FFF5F3F3FFF4F3F3FFF4F3
        F3FFF3F2F2FFD8DED3FF365F32FF4AC755FF3FC44CFF42CA4FFF4ACF58FF3775
        34FFC3C9BDFFEFEEEEFFE8E7E7F7C9C8C8F6F0EFEFFF7F7E7EB8797878ADF9F8
        F8FFD8D7D7F8CCCBCBF9CFCECEFDD0CFCFFFD1D0D0FFD1D0D0FFD1D0D0FFD1D0
        D0FFD1D0CFFFD1CFCFFFD1CFCFFFD0CFCFFFD0CFCFFFD0CFCFFFD0CFCFFFD0CF
        CFFFCFCECEFFB9BFB3FF2C5726FF38A937FF03A913FF24CB34FF46D355FF286E
        25FFB8BDB2FFCECDCCFFCBCACAFBD3D3D3F8F2F1F1FF828180BA777676ABF4F3
        F3FDECEBEBF0E2E1E1F0EDECECFBF4F3F3FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2
        F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2
        F2FFF2F1F1FFD7DDD2FF33602DFF38AB38FF08AB18FF2CCD3BFF4CD75AFF2E79
        2CFFD7DDD2FFF2F1F1FFE3E2E2F3E8E7E6F0F1EFEFFC7C7C7CB5181818302626
        26751818186208080854727171C5EFEDEDFFE4E3E2FFE3E2E2FFE3E1E1FFE2E1
        E0FFE2E0E0FFE1E0DFFFE1DFDFFFE0DFDEFFDFDDDDFFDEDCDCFFDEDCDCFFDDDC
        DBFFDDDBDBFFC4CABEFF2F612AFF38AE38FF07A916FF2ACB39FF4BD759FF2A77
        28FFC6CCBFFA0F0F0F5114141470252424831C1C1C6B0606061A000000000000
        00000000000000000000575757BFF3F1F1FFE5E4E4FFE5E3E3FFE4E3E2FFE4E2
        E2FFE3E2E1FFE3E1E1FFE2E1E0FFDCDCD9FFCED1C8FFC7CDC0FFC7CCC0FFC6CC
        C0FFC5CBBFFFB2BDA8FF2F6629FF37AC37FF03A012FF21C230FF42D151FF2A77
        27FFB6C1AEFA1A20158800000000000000000000000000000000000000000000
        00000000000000000003545454C7F5F4F3FFE8E6E6FFE7E6E5FFE6E5E5FFE6E4
        E4FFE5E4E4FFE5E3E3FFE3E2E1FFCFD4CBFF4E7447FF366130FF305F2AFF3062
        2BFF30642BFF2E6428FF3F773DFF49B347FF008B0AFF0CB11CFF3DCA4CFF2178
        22FF2E782BFE0B5308E6003E03A7003A02A7053907A8062F078F000000000000
        00000000000000000003555454C7F7F6F5FFE9E8E8FFE9E7E7FFE8E7E7FFE8E7
        E6FFE7E6E6FFE6E5E5FFE5E4E3FFCBD1C6FF2F5B2BFF6EBE76FF099113FF0898
        14FF08A415FF09AA17FF12B320FF1CA823FF03750DFF13A020FF4CC856FF66CE
        6CFF66D06CFF6AD171FF6BCE71FF6BCA6FFF87D18DFF1E4723A8000000000000
        00000000000000000003575757C8F9F8F7FFEBEAEAFFEBEAE9FFEAE9E9FFEAE8
        E8FFE9E8E8FFE8E7E7FFE7E6E5FFCDD3C7FF285925FF62AF69FF007D0AFF039E
        12FF0FB11EFF17BA27FF1AB729FF1EAD2CFF2E9E39FF389541FF3CAB47FF46BD
        52FF53C75EFF5ACA65FF5DC968FF61C86BFF7EC885FF082C0C9F000000000000
        000000000000000000004A4A4ABDFFFFFFFFF2F1F0FFF1F0F0FFF1EFEFFFF0EF
        EFFFEFEEEEFFEFEEEDFFEDECECFFD3D8CDFF2A5C26FF62B56AFF03A612FF24C4
        33FF45DB53FF5BE869FF62E56EFF57D663FF46C352FF40A349FF44934CFF499F
        52FF51AB5AFF57AF60FF5EAF66FF68B16FFF81C187FF08210B9F000000000000
        000000000000000000001111116EE9E9E9F5F5F5F5FCF4F4F4FCF4F4F4FCF4F3
        F3FCF4F3F3FCF4F3F3FCF2F2F2FCD7DED2FC30642DFE67CA70FF89D78FFF9FE5
        A5FFAEF1B4FF89EF91FF89F093FF82EC8AFF5ED569FF4BB955FF69B36EFF8FD4
        95FF8CD092FF8ED193FF8FD095FF93D298FF90CA95FF28342AA8000000000000
        000000000000000000000B0B0B331C1C1C8E1414147F15151581151515811515
        158115151581151515811515158115151581123612C7114013D9083E0AD80744
        0AD807490AD8084E0BD8106715E986E88DFF72E27DFF59C564FF74BD78FF1C56
        20EE0A3B0CDB053105C1012802B1012301B10D2D0EB2122F1295000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000004203A480E487FF7AE384FF65C96EFF6BB26EFF0030
        01AB000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000004003A97DDA83FF79DD82FF6BC574FF73B175FF002F
        01B0000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000003A03A976CC7CFF74D27DFF73BA7AFF79B07CFF002D
        01B0000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000003502A973C078FF7CC383FF83BB89FF82B584FF0013
        007B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000063607ADAFDBB2FFABD8B0FFADD7B1FFB4DCB7FF0E33
        10B5000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000052B058F0C3C0FC5023204C5022E03C5103812C51030
        1094000000000000000000000000000000000000000000000000}
    end
    object bSimpan: TcxButton
      Left = 267
      Top = 88
      Width = 113
      Height = 47
      Cursor = crHandPoint
      Caption = 'Simpan'
      TabOrder = 1
      OnClick = bSimpanClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        00000101011A0505053205050540050505410505054505050545090909480F0F
        0F4C1111114E0B0B0B4906060646050505450505054505050545090909480F0F
        0F4C1212124E0C0C0C4A06060646050505450C0C0C4A0A0A0A49050505450505
        05450505054105050540050505320202021B0000000000000000000000000000
        001D0D0D0C56161614863C3A34FF3C3A34FF3C3A34FF3C3A34FF3D3B35FF413F
        3AFF46443EFF43413BFF3E3C36FF3C3A34FF3C3A34FF3C3A34FF3D3B35FF413F
        3AFF46443EFF44423CFF3F3D37FF3C3A34FF3D3B35FF47453FFF3D3B35FF3C3A
        34FF3C3A34FF3C3A34FF1B1A18970E0E0D530000001D00000000000000100F0F
        0D70393630F934332DF535342EFC393834FF393935FF3A3A36FF3B3A36FF3F3F
        3AFF44443FFF464641FF41423EFF3E3F3AFF3F403BFF40403CFF5D5E5BFF7071
        6EFF747572FF717370FF737572FF717270FF717270FF717371FF717371FF6D70
        6EFF646664FF3A3934FC373530F73A3832F913121079000000100000001B2C2B
        25DB3A3933FF3A3934FF3B3A35FF3B3B35FF3C3C36FF3D3C37FF3E3D38FF4040
        3BFF454540FF4A4A46FF474843FF43443FFF42423EFF43433FFF757673FF3031
        2EFF81827FFF363836FF838381FF333432FF7F807EFF333432FF393B39FF3436
        34FF7A7D7BFF4B4E4BFF4C4E4CFF4A4B48FF312F2AEA0000001B0000001B2F2E
        28E7393732FF3A3933FF3B3A34FF3B3A35FF3C3B36FF3D3C37FF3D3D38FF3E3E
        39FF40403BFF41413DFF41423EFF42423EFF42423EFF43433FFF666764FF7678
        75FF787A77FF787A77FF797A78FF797B79FF797B79FF797C7AFF7B7D7BFF7B7E
        7CFF6C706DFF4B4D4AFF4C4E4BFF4C4F4CFF35332DFE0000001B000000113737
        31E8737774FF898E8CFF8D9290FF8E9391FF8F9492FF909492FF909593FF9196
        94FF909593FF8E9391FF8C918FFF8A8F8DFF888D8BFF868B89FF858A88FF858A
        88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
        88FF858A88FF858A88FF858A88FF7D827FFF44443FFF00000011000000006D71
        6EEBBCC0BEFFF2F4F4FFFCFDFDFFFCFDFDFFE7E8E8FFE4E5E5FFE5E6E6FFE5E6
        E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7
        E7FFE6E7E7FFE7E8E8FFE7E8E8FFE6E8E8FFE6E7E7FFE5E6E6FFE5E6E6FFE6E7
        E7FFF8FAFAFFEAEBEBFFECEDECFFC6CBC9FF7F8380FB00000000000000007276
        75D6E8EAEAFFE3E5E5FFD9DAD9FFCBCCCBFFBABEBDFFEDEFEEFFEBEDECFFECED
        EDFFECEEEDFFEDEEEEFFEEEFEFFFEEF0EFFFEFF0F0FFEFF1F0FFF0F1F1FFF0F1
        F1FFEFF0F0FFEEEFEFFFEDEEEEFFEBEDECFFEAECEBFFE9EAEAFFECEDEDFFD0D4
        D3FFB4B9B8FFA0A4A2FFB3B6B4FFE8EBEAFF818583F300000000000000004749
        4886CED0D0FDF0F2F2FFD3D7D5FFC6CAC9FFD8DADAFFD5D9D8FFCBD0CEFFC8CD
        CBFFCCD0D0FFDDE0DFFFE9EAEAFFF1F2F2FFF5F6F6FFF8F8F8FFF7F8F7FFF7F8
        F8FFF4F5F5FFEEF0F0FFE8EAEAFFDCDFDEFFD3D8D7FFD0D4D3FFCDD2D0FFD6DA
        D9FFBEC2C0FFB4BAB8FFD4D8D7FFCFD2D1FF636665B700000000000000001D1E
        1E389A9E9BF4F3F4F4FFC9CCCBFFD5D9D7FFDADEDCFFDBDFDDFFE4E7E5FFF4F5
        F4FFF6F6F6FFE8EAE9FFE1E4E4FFE0E3E3FFE1E4E4FFE1E4E4FFE1E4E4FFE1E4
        E4FFE0E3E3FFE0E2E2FFDEE0E0FFD8DAD9FFCDD0CFFFCFD2D2FFD7DADAFFD5D9
        D8FFD1D5D4FFC5CAC8FFE0E2E2FFA9ADACF63334346100000000000000000202
        0203818684F4F0F1F1FFD5D7D5FFD6DAD8FFD9DDDCFFF3F4F4FFF0F1F1FFDFE1
        E1FFDDE0DFFFDDE0DFFFDDE0DFFFDDE0DFFFDDE0DFFFDDE0DFFFDDE0DFFFDDE0
        DFFFDDE0DFFFDDE0DFFFDDE0DFFFDDE0DFFFDBDEDDFFC4C7C6FFACB0ADFFCDD2
        D0FFD5D9D8FFD2D6D5FFEFF0F0FF888D8BF70E0E0E1A00000000000000000000
        00005E6160B0D7DBD9FFE0E3E3FFD1D5D4FFF3F4F4FFE1E4E2FFD8DCDBFFD8DC
        DBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DC
        DBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DCDBFFCDD2D1FF979A
        99FFCDD2D0FFDADDDCFFDFE2E1FF767A78DC0000000000000000000000000000
        00002F31305AA9ADACF5EEF0F0FFDEE1DFFFE7E8E8FFD4D8D7FFD4D8D7FFD4D8
        D7FFD4D8D7FFD4D8D7FFD4D8D7FFD4D8D7FFD3D7D6FFD0D3D2FFD1D4D3FFD3D6
        D5FFD4D8D7FFD4D8D7FFD4D8D7FFD4D8D7FFD4D8D7FFD4D8D7FFD4D8D7FFC2C6
        C5FFAFB5B4FFE1E4E3FFBEC2C1FC484A49880000000000000000000000000000
        0000090A0A12858A88F8F0F2F2FFE4E7E7FFD4D8D6FFCFD4D2FFCFD4D2FFCFD4
        D2FFCFD4D2FFCFD4D2FFCED3D1FFD2D4D3FFD5D7D6FFB7AFA7FF673818FFBEB5
        AEFFD8DBDBFFCDD2D0FFCED3D1FFCFD4D2FFCFD4D2FFCFD4D2FFCFD4D2FFCDD3
        D1FFB2B7B5FFE8EBEAFF919593F11F20203C0000000000000000000000000000
        000000000000707573D1DBDDDCFFDCDFDEFFCACECCFFCBD0CEFFCBD0CEFFCBD0
        CEFFC6CBC9FFC3C8C6FFBFC4C2FFD6D7D7FFC2BDB8FF6F4324FF956849FF7043
        24FFCEC8C3FFBDC1C0FFBFC4C2FFC3C8C6FFC6CBC9FFCBD0CEFFCBD0CEFFCBCF
        CEFFD5D8D7FFE8EAE9FF818684F4020202030000000000000000000000000000
        0000000000004042417AB6B9B8FAE5E7E7FFB5B8B7FFC2C7C4FFC6CBC9FFC1C6
        C4FFBDC1C0FFB7BCBAFFB3B8B6FFAAAAA5FF71472AFFA27655FFC59D7DFF9867
        42FF704628FFA9A9A4FFB3B8B6FFB7BCBAFFBDC1C0FFC1C6C4FFC7CCCBFFCBCF
        CFFFE5E7E7FFD2D5D5FF606362B2000000000000000000000000000000000000
        0000000000001718182D8B8F8DF4EBECECFFC6CCCAFFA5A9A7FFABB0AEFFBCC2
        C0FFB9BEBCFFB4B8B6FFADAFACFF754F33FF976947FFBF9270FFB7855FFFB27D
        54FF92623FFF754F33FFADAFACFFB4B8B6FFB9BEBCFFC2C6C5FFD2D5D5FFD9DD
        DCFFE7EAE9FFACAFAEF53233335F000000000000000000000000000000000000
        000000000000000000007D8280ECDCDFDEFFD2D6D4FFC7CDCBFFAEB4B3FFA3A9
        A7FFB9BEBCFFB5BAB7FF7D5C43FF8B5D3BFFBB8B66FFB48058FFB6845DFFA567
        37FFB48057FF8B5C3AFF7D5C43FFB5BAB7FFC4C8C7FFD7DBDAFFD7DBDAFFD9DC
        DBFFE8EAE9FF888D8BF80B0C0C16000000000000000000000000000000000000
        000000000000000000005357569DC0C4C2FED9DBDBFFC2C8C6FFC6CDCBFFA3A8
        A7FFB8BFBCFF886C57FF825535FFB5825AFFAE774CFFB37E55FFB6845DFFA465
        34FFA6693AFFB48158FF825535FF886C57FFCDD3D1FFD3D7D7FFBFC2C2FFD3D7
        D6FFD5D8D7FF747977D800000000000000000000000000000000000000000000
        000000000000000000002729284B969A99F2DADDDDFFBBBDBBFFCED2D1FFB6BC
        BBFF8D7664FF7B4E2DFFB38059FFA96E3FFFAC7346FFB37E55FFB6845DFFA465
        34FFA46534FFA86C3DFFB38059FF7B4E2DFF998170FFC8CCCBFFA2A4A3FFD2D3
        D3FFB5B9B7FB4648478500000000000000000000000000000000000000000000
        0000000000000000000004040408818684F4D0D4D2FFE2E5E4FFE1E4E3FFAD9C
        8EFF76492AFFAF7E56FFA96E40FFA46635FFAB7245FFB17D55FFB5825CFFA263
        32FFA26332FFA16232FFA76C3FFFAE7C55FF76482AFFAD9B8EFFE0E3E3FFDADC
        DCFF878D8BF41617162A00000000000000000000000000000000000000000000
        00000000000000000000000000002F31305A818583F3888D8BFF807469FF6D41
        22FFAB7B55FFB17F59FFB17E59FFA87147FFA56D42FFAC7951FFB07D58FF9C5D
        2EFF9B5D2EFFA66E44FFAF7D57FFAF7D57FFA97955FF6D4122FF7E7367FF8287
        85F8464948820000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000673818FF6738
        18FF673818FF673818FF693A1BFFAD7B57FF9F673DFFA7744DFFAB7955FF9658
        2AFF95572AFFAA7955FF693A1BFF673818FF673818FF673818FF673818FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000673818FFA77753FF9A633AFFA26E4AFFA67551FF8F52
        26FF8F5226FFA57451FF673818FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001C0F0743653B1FEB673818FF673818FF673818FF673818FF673818FF6738
        18FF673818FF673818FF673818FFA27350FF955D36FF9D6A46FFA1704EFF894C
        21FF894C21FFA1704DFF673818FF673818FF673818FF673818FF673818FF6738
        18FF673818FF673818FF673818FF653B1FEB1C10074400000000000000000000
        0000653D22E8DBCFC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBCFC8FF653D22E800000000000000000000
        0000673818FFFFFFFFFFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7
        D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFFFFFFFFF535755FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF673818FF00000000000000000000
        0000673818FFFFFFFFFFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7
        D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFFFFFFFFF535755FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF673818FF00000000000000000000
        0000673818FFFFFFFFFFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7
        D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFFFFFFFFF535755FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF673818FF00000000000000000000
        0000673818FFFFFFFFFFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7
        D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFFFFFFFFF535755FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF673818FF00000000000000000000
        0000653D22E8DBCFC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBCFC8FF653D22E800000000000000000000
        00001B0F0742653C20EB673818FF673818FF673818FF673818FF673818FF6738
        18FF673818FF673818FF673818FF673818FF673818FF673818FF673818FF6738
        18FF673818FF673818FF673818FF673818FF673818FF673818FF673818FF6738
        18FF673818FF673818FF673818FF653C20EB1C0F074300000000}
    end
  end
  object pWilayah: TPanel
    Left = 80
    Top = 624
    Width = 513
    Height = 153
    BevelWidth = 3
    Color = clSilver
    TabOrder = 5
    Visible = False
    OnMouseDown = pWilayahMouseDown
    DesignSize = (
      513
      153)
    object Label66: TLabel
      Left = 16
      Top = 11
      Width = 159
      Height = 23
      Caption = 'Tambah Wilayah'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape5: TShape
      Left = -266
      Top = 43
      Width = 786
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      Pen.Color = clWhite
    end
    object Label67: TLabel
      Left = 19
      Top = 53
      Width = 120
      Height = 23
      Caption = 'Nama Wilayah'
      Transparent = True
    end
    object cxButton14: TcxButton
      Left = 468
      Top = 2
      Width = 41
      Height = 33
      Cursor = crHandPoint
      Hint = 'Close'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = cxButton14Click
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
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
        00000000000000000000000000000E143644283CA0C8324BC8FA334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF324BC8FA283C
        A0C80E1436440000000000000000000000000000000000000000000000000000
        000000000000000000000E143644324BC9FB334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF324BC9FB0E14364400000000000000000000000000000000000000000000
        00000000000000000000283CA0C8334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF283CA0C800000000000000000000000000000000000000000000
        00000000000000000000324BC9FB334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF324BC8FA00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF3F56CFFF344DCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF344DCCFF3F56CFFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF435AD0FFDADEF5FFB0B9EBFF344DCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF344DCCFFAEB8EAFFDBDFF6FF435AD0FF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF3D54
        CEFFDADEF5FFFFFFFFFFFFFFFFFFB0B9EBFF344DCCFF334CCCFF334CCCFF344D
        CCFFAEB8EAFFFFFFFFFFFFFFFFFFDBDFF6FF3E55CEFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFFA3AEE8FFFFFFFFFFFFFFFFFFFFFFFFFFB0B9EBFF344DCCFF344DCCFFAEB8
        EAFFFFFFFFFFFFFFFFFFFFFFFFFFA6B1E8FF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFFA3AEE8FFFFFFFFFFFFFFFFFFFFFFFFFFB0B9EBFFAEB8EAFFFFFF
        FFFFFFFFFFFFFFFFFFFFA6B1E8FF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFFA3AEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA6B1E8FF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFFA3AFE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFA6B1E8FF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF344DCCFFAEB8EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB0B9EBFF344DCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF344DCCFFAEB8EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB0B9EBFF344DCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF344DCCFFAEB8EAFFFFFFFFFFFFFFFFFFFFFFFFFFA6B1E8FFA3AEE8FFFFFF
        FFFFFFFFFFFFFFFFFFFFB0B9EBFF344DCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF344D
        CCFFAEB8EAFFFFFFFFFFFFFFFFFFFFFFFFFFA6B1E8FF334CCCFF334CCCFFA3AE
        E8FFFFFFFFFFFFFFFFFFFFFFFFFFB0B9EBFF344DCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF3C54
        CEFFD3D8F4FFFFFFFFFFFFFFFFFFA6B1E8FF334CCCFF334CCCFF334CCCFF334C
        CCFFA3AEE8FFFFFFFFFFFFFFFFFFD4D9F4FF3D54CEFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF3F56CFFFD3D8F4FFA6B1E8FF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFFA3AEE8FFD4D9F4FF3F57CFFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF3B53CEFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF3B53CEFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF00000000000000000000000000000000000000000000
        00000000000000000000324BC9FB334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF324BC8FA00000000000000000000000000000000000000000000
        00000000000000000000283CA0C8334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF283CA0C800000000000000000000000000000000000000000000
        000000000000000000000E143644324BC9FB334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF324BC9FB0E14364400000000000000000000000000000000000000000000
        00000000000000000000000000000E143644283CA0C8324BC8FA334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF324BC8FA283C
        A0C80E1436440000000000000000000000000000000000000000000000000000
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
    object eWilayahTambah: TcxTextEdit
      Left = 146
      Top = 52
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
      TabOrder = 0
      OnKeyDown = eInputWarnaKeyDown
      Width = 351
    end
    object cxButton15: TcxButton
      Left = 147
      Top = 88
      Width = 113
      Height = 47
      Cursor = crHandPoint
      Caption = 'Batal'
      TabOrder = 2
      OnClick = cxButton15Click
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000101010121E1E
        1E1F1C1B1B1D1C1C1C1D1C1C1C1D1B1B1B1D1C1C1C1D1C1C1C1D1C1C1C1D1C1C
        1C1D1C1C1C1D1C1C1C1D1C1C1C1D1C1C1C1D1C1B1B1D1B1B1B1D1B1B1B1D1B1B
        1B1D1B1A1A1D1A1A1A1D1A1A1A1D1A1A1A1D1A1A1A1D1A19191D1919191D1919
        191D1918181D1918181D1818181D1818181D1919191E10101014302F2F36706F
        6F736767676D6968686D6968686D6767676D6A69696D6969696D6969696D6969
        696D6969696D6969696D6969696D6969696D6868686D6767676D6766666D6665
        656D6564646D6464636D6363626D6262616D6161616D6160606D605F5F6D5F5F
        5E6D5D5D5C6D5E5D5C6D5D5C5C6D5B5B5A6D605F5F723030303C58575773D7D6
        D6DDC7C6C6D2CAC9C9D2CAC9C9D2C6C6C6D2CBCBCBD2CBCACAD2CBCACAD2CBCA
        CAD2CBCACAD2CBCACAD2CBCACAD2CBCACAD2CBCACAD2C9C8C8D2C7C6C6D2C6C5
        C4D2C4C3C2D2C2C2C1D2C1C0BFD2BFBEBDD2BDBDBCD2BCBBBAD2BAB9B9D2B9B8
        B8D2B5B4B4D2B5B4B4D2B4B3B3D2B1AFAFD2BAB9B9DC5858587C6060608BF8F7
        F7FFE7E7E7FBEEEDEDF8EEEDEDF8E5E5E5FBF0EFEFF8EFEEEEF8EFEEEEF8EFEE
        EEF8EFEEEEF8EFEEEEF8EFEEEEF8EFEEEEF8EFEEEEF8EFEEEEF8EDEBECF8EBEA
        E9F8E9E8E7F8E7E6E6F8E6E5E4F8E4E3E2F8E2E1E0F8E0DFDEF8DEDDDDF8DDDC
        DBF8DBDADAFBD8D7D6F8D7D5D5F8D4D3D2FBDAD9D8FF63626296777776ACF8F7
        F7FFE1E1E1F8EAE9E9F4EAE9E9F4E1E0E0F8ECEBEBF4EBEAEAF4EBEAEAF4EBEA
        EAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4E9E8
        E8F4E8E7E6F4E6E5E4F4E4E3E2F4E2E1E0F4E0DFDEF4DEDDDCF4DCDBDBF4DBDA
        D9F4D6D4D4F8D6D4D4F4D5D3D3F4CDCCCBF7DCDBDAFF797978B8777776ACF8F7
        F7FFD9D9D9F6EAE9E9F4EAE9E9F4D9D8D8F6ECEBEBF4EBEAEAF4EBEAEAF4EBEA
        EAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEAEAF4EBEA
        EAF4E9E9E8F4E8E7E6F4E6E5E4F4E4E3E2F4E2E1E0F4E0DFDEF4DEDDDDF4DDDC
        DBF4CDCCCBF6D8D6D6F4D6D5D4F4C9C8C8F6DEDDDCFF7A7979B8777776ACF8F7
        F7FFD5D4D4F5EAE9E9F4EAE9E9F4D5D4D4F6ECEBEBF6ECEBEBF7ECEBEBF7ECEB
        EBF7ECEBEBF7ECEBEBF7ECEBEBF7ECEBEBF7ECEBEBF7ECEBEBF7ECEBEBF7ECEB
        EBF7EBEAEAF7E9E8E8F7E8E7E7F7E6E5E5F7E4E3E3F7E3E1E1F7E1E0DFF7DFDE
        DEF7C9C8C8F7DAD9D9F5D8D7D7F4C3C2C2F5E0DFDEFF7A7979B8777776ACF8F7
        F7FFCFCECEF6EAE9E9F4EBE9E9F6D6D6D6FBE0DFDFFCE0DFDFFCE0DFDFFCE0DF
        DFFCE0DFDFFCE0DFDFFCE0DFDFFCE0DFDFFCE0DFDFFCE0DFDFFCE0DFDFFCE0DF
        DFFCE0DFDFFCDFDEDEFCDEDDDDFCDCDBDBFCDAD9D9FCD9D8D7FCD7D6D6FCD6D5
        D5FCCBC9C9FBDCDBDAF8DAD8D8F4C0BFBEF6E2E0E0FF7B7A79B8777777ACF8F7
        F7FFCFCECEF6EBEAEAF5EBEAEAF9D5D3D3FCDFDEDEFCDFDEDEFCDFDEDEFCDFDE
        DEFCDFDEDEFCDFDEDEFCDFDEDEFCDFDEDEFCDFDEDEFCDFDEDEFCDFDEDEFCDFDE
        DEFCDFDEDEFCDFDEDEFCDEDEDEFCDDDCDCFCDBDADAFCDAD9D9FCD8D7D7FCD7D6
        D6FCCCCACAFCDEDCDCFBDDDCDBF6C2C1C0F6E4E3E2FF7B7A7AB8777777ACF8F7
        F7FFCFCECEF6EBEAEAF5EBEAEAF9D6D5D5FCE3E2E2FDE2E1E1FDE2E1E1FDE2E1
        E1FDE2E1E1FDE2E1E1FDE2E1E1FDE2E1E1FDE2E1E1FDE2E1E1FDE2E1E1FDE2E1
        E1FDE2E1E1FDE2E1E1FDE2E1E1FDE1E0E0FDDFDFDFFDDEDDDDFDDDDCDCFDDCDA
        DAFDCECECDFDDFDEDEFBDEDDDCF6C3C2C2F6E6E5E4FF7D7B7BB8777777ACF8F7
        F7FFCFCECEF6EBE9E9F5EDECECFADDDCDCFFF6F5F5FFF5F4F4FFF5F4F4FFF5F4
        F4FFF5F4F4FFF5F4F4FFF5F4F3FFF5F3F3FFF5F3F3FFF4F3F3FFF4F3F3FFF4F3
        F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF2F1F0FFF0EFEFFFEFED
        EDFFD7D5D5FFE6E5E5FDE0DFDEF6C5C4C4F6E8E7E6FF7D7C7BB8777777ACF8F7
        F7FFCFCECEF6EAE9E9F5F1F0F0FCDEDDDDFFF5F4F4FFF5F4F4FFF5F4F4FFF5F4
        F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F3FFF5F4F3FFF5F3F3FFF4F3F3FFF4F3
        F3FFF4F3F3FFF4F3F3FFF3F2F2FFF3F2F2FFF3F2F2FFF3F1F1FFF1EFEFFFEFEE
        EEFFD9D7D7FFECEAEAFFE3E1E1F6C6C5C5F6EAE8E9FF7D7D7CB8777777ACF8F7
        F7FFCFCECEF6EAE9E9F5F1F0F0FCDEDDDDFFF5F4F4FFF5F4F4FFF5F4F4FFF5F4
        F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4
        F3FFF5F4F3FFEFEFECFFDFE3DAFFD8DED3FFD8DED3FFD8DED3FFD7DED3FFDDE1
        D8FFD4D4D2FFEDECECFFE5E4E4F7C7C6C6F6ECEBEBFF7E7D7DB8777777ACF8F7
        F7FFCFCECEF6EAE9E9F5F1F0F0FCDEDDDDFFF5F4F4FFF5F4F4FFF5F4F4FFF5F4
        F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4
        F4FFF4F3F3FFE0E4DBFF53794CFF356231FF285B24FF286225FF336F32FF5584
        50FFC8CDC3FFEFEEEDFFE7E6E6F7C8C7C7F6EEEDEDFF7E7E7EB8777777ACF8F7
        F7FFCFCECEF6EAE9E9F5F1F0F0FCDEDDDDFFF5F4F5FFF5F4F4FFF5F4F4FFF5F4
        F4FFF5F4F4FFF5F4F4FFF5F4F4FFF5F4F3FFF5F3F3FFF5F3F3FFF4F3F3FFF4F3
        F3FFF3F2F2FFD8DED3FF365F32FF4AC755FF3FC44CFF42CA4FFF4ACF58FF3775
        34FFC3C9BDFFEFEEEEFFE8E7E7F7C9C8C8F6F0EFEFFF7F7E7EB8797878ADF9F8
        F8FFD8D7D7F8CCCBCBF9CFCECEFDD0CFCFFFD1D0D0FFD1D0D0FFD1D0D0FFD1D0
        D0FFD1D0CFFFD1CFCFFFD1CFCFFFD0CFCFFFD0CFCFFFD0CFCFFFD0CFCFFFD0CF
        CFFFCFCECEFFB9BFB3FF2C5726FF38A937FF03A913FF24CB34FF46D355FF286E
        25FFB8BDB2FFCECDCCFFCBCACAFBD3D3D3F8F2F1F1FF828180BA777676ABF4F3
        F3FDECEBEBF0E2E1E1F0EDECECFBF4F3F3FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2
        F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2
        F2FFF2F1F1FFD7DDD2FF33602DFF38AB38FF08AB18FF2CCD3BFF4CD75AFF2E79
        2CFFD7DDD2FFF2F1F1FFE3E2E2F3E8E7E6F0F1EFEFFC7C7C7CB5181818302626
        26751818186208080854727171C5EFEDEDFFE4E3E2FFE3E2E2FFE3E1E1FFE2E1
        E0FFE2E0E0FFE1E0DFFFE1DFDFFFE0DFDEFFDFDDDDFFDEDCDCFFDEDCDCFFDDDC
        DBFFDDDBDBFFC4CABEFF2F612AFF38AE38FF07A916FF2ACB39FF4BD759FF2A77
        28FFC6CCBFFA0F0F0F5114141470252424831C1C1C6B0606061A000000000000
        00000000000000000000575757BFF3F1F1FFE5E4E4FFE5E3E3FFE4E3E2FFE4E2
        E2FFE3E2E1FFE3E1E1FFE2E1E0FFDCDCD9FFCED1C8FFC7CDC0FFC7CCC0FFC6CC
        C0FFC5CBBFFFB2BDA8FF2F6629FF37AC37FF03A012FF21C230FF42D151FF2A77
        27FFB6C1AEFA1A20158800000000000000000000000000000000000000000000
        00000000000000000003545454C7F5F4F3FFE8E6E6FFE7E6E5FFE6E5E5FFE6E4
        E4FFE5E4E4FFE5E3E3FFE3E2E1FFCFD4CBFF4E7447FF366130FF305F2AFF3062
        2BFF30642BFF2E6428FF3F773DFF49B347FF008B0AFF0CB11CFF3DCA4CFF2178
        22FF2E782BFE0B5308E6003E03A7003A02A7053907A8062F078F000000000000
        00000000000000000003555454C7F7F6F5FFE9E8E8FFE9E7E7FFE8E7E7FFE8E7
        E6FFE7E6E6FFE6E5E5FFE5E4E3FFCBD1C6FF2F5B2BFF6EBE76FF099113FF0898
        14FF08A415FF09AA17FF12B320FF1CA823FF03750DFF13A020FF4CC856FF66CE
        6CFF66D06CFF6AD171FF6BCE71FF6BCA6FFF87D18DFF1E4723A8000000000000
        00000000000000000003575757C8F9F8F7FFEBEAEAFFEBEAE9FFEAE9E9FFEAE8
        E8FFE9E8E8FFE8E7E7FFE7E6E5FFCDD3C7FF285925FF62AF69FF007D0AFF039E
        12FF0FB11EFF17BA27FF1AB729FF1EAD2CFF2E9E39FF389541FF3CAB47FF46BD
        52FF53C75EFF5ACA65FF5DC968FF61C86BFF7EC885FF082C0C9F000000000000
        000000000000000000004A4A4ABDFFFFFFFFF2F1F0FFF1F0F0FFF1EFEFFFF0EF
        EFFFEFEEEEFFEFEEEDFFEDECECFFD3D8CDFF2A5C26FF62B56AFF03A612FF24C4
        33FF45DB53FF5BE869FF62E56EFF57D663FF46C352FF40A349FF44934CFF499F
        52FF51AB5AFF57AF60FF5EAF66FF68B16FFF81C187FF08210B9F000000000000
        000000000000000000001111116EE9E9E9F5F5F5F5FCF4F4F4FCF4F4F4FCF4F3
        F3FCF4F3F3FCF4F3F3FCF2F2F2FCD7DED2FC30642DFE67CA70FF89D78FFF9FE5
        A5FFAEF1B4FF89EF91FF89F093FF82EC8AFF5ED569FF4BB955FF69B36EFF8FD4
        95FF8CD092FF8ED193FF8FD095FF93D298FF90CA95FF28342AA8000000000000
        000000000000000000000B0B0B331C1C1C8E1414147F15151581151515811515
        158115151581151515811515158115151581123612C7114013D9083E0AD80744
        0AD807490AD8084E0BD8106715E986E88DFF72E27DFF59C564FF74BD78FF1C56
        20EE0A3B0CDB053105C1012802B1012301B10D2D0EB2122F1295000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000004203A480E487FF7AE384FF65C96EFF6BB26EFF0030
        01AB000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000004003A97DDA83FF79DD82FF6BC574FF73B175FF002F
        01B0000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000003A03A976CC7CFF74D27DFF73BA7AFF79B07CFF002D
        01B0000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000003502A973C078FF7CC383FF83BB89FF82B584FF0013
        007B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000063607ADAFDBB2FFABD8B0FFADD7B1FFB4DCB7FF0E33
        10B5000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000052B058F0C3C0FC5023204C5022E03C5103812C51030
        1094000000000000000000000000000000000000000000000000}
    end
    object cxButton16: TcxButton
      Left = 267
      Top = 88
      Width = 113
      Height = 47
      Cursor = crHandPoint
      Caption = 'Simpan'
      TabOrder = 1
      OnClick = cxButton16Click
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        00000101011A0505053205050540050505410505054505050545090909480F0F
        0F4C1111114E0B0B0B4906060646050505450505054505050545090909480F0F
        0F4C1212124E0C0C0C4A06060646050505450C0C0C4A0A0A0A49050505450505
        05450505054105050540050505320202021B0000000000000000000000000000
        001D0D0D0C56161614863C3A34FF3C3A34FF3C3A34FF3C3A34FF3D3B35FF413F
        3AFF46443EFF43413BFF3E3C36FF3C3A34FF3C3A34FF3C3A34FF3D3B35FF413F
        3AFF46443EFF44423CFF3F3D37FF3C3A34FF3D3B35FF47453FFF3D3B35FF3C3A
        34FF3C3A34FF3C3A34FF1B1A18970E0E0D530000001D00000000000000100F0F
        0D70393630F934332DF535342EFC393834FF393935FF3A3A36FF3B3A36FF3F3F
        3AFF44443FFF464641FF41423EFF3E3F3AFF3F403BFF40403CFF5D5E5BFF7071
        6EFF747572FF717370FF737572FF717270FF717270FF717371FF717371FF6D70
        6EFF646664FF3A3934FC373530F73A3832F913121079000000100000001B2C2B
        25DB3A3933FF3A3934FF3B3A35FF3B3B35FF3C3C36FF3D3C37FF3E3D38FF4040
        3BFF454540FF4A4A46FF474843FF43443FFF42423EFF43433FFF757673FF3031
        2EFF81827FFF363836FF838381FF333432FF7F807EFF333432FF393B39FF3436
        34FF7A7D7BFF4B4E4BFF4C4E4CFF4A4B48FF312F2AEA0000001B0000001B2F2E
        28E7393732FF3A3933FF3B3A34FF3B3A35FF3C3B36FF3D3C37FF3D3D38FF3E3E
        39FF40403BFF41413DFF41423EFF42423EFF42423EFF43433FFF666764FF7678
        75FF787A77FF787A77FF797A78FF797B79FF797B79FF797C7AFF7B7D7BFF7B7E
        7CFF6C706DFF4B4D4AFF4C4E4BFF4C4F4CFF35332DFE0000001B000000113737
        31E8737774FF898E8CFF8D9290FF8E9391FF8F9492FF909492FF909593FF9196
        94FF909593FF8E9391FF8C918FFF8A8F8DFF888D8BFF868B89FF858A88FF858A
        88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A88FF858A
        88FF858A88FF858A88FF858A88FF7D827FFF44443FFF00000011000000006D71
        6EEBBCC0BEFFF2F4F4FFFCFDFDFFFCFDFDFFE7E8E8FFE4E5E5FFE5E6E6FFE5E6
        E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE6E7E7FFE6E7E7FFE6E7E7FFE6E7
        E7FFE6E7E7FFE7E8E8FFE7E8E8FFE6E8E8FFE6E7E7FFE5E6E6FFE5E6E6FFE6E7
        E7FFF8FAFAFFEAEBEBFFECEDECFFC6CBC9FF7F8380FB00000000000000007276
        75D6E8EAEAFFE3E5E5FFD9DAD9FFCBCCCBFFBABEBDFFEDEFEEFFEBEDECFFECED
        EDFFECEEEDFFEDEEEEFFEEEFEFFFEEF0EFFFEFF0F0FFEFF1F0FFF0F1F1FFF0F1
        F1FFEFF0F0FFEEEFEFFFEDEEEEFFEBEDECFFEAECEBFFE9EAEAFFECEDEDFFD0D4
        D3FFB4B9B8FFA0A4A2FFB3B6B4FFE8EBEAFF818583F300000000000000004749
        4886CED0D0FDF0F2F2FFD3D7D5FFC6CAC9FFD8DADAFFD5D9D8FFCBD0CEFFC8CD
        CBFFCCD0D0FFDDE0DFFFE9EAEAFFF1F2F2FFF5F6F6FFF8F8F8FFF7F8F7FFF7F8
        F8FFF4F5F5FFEEF0F0FFE8EAEAFFDCDFDEFFD3D8D7FFD0D4D3FFCDD2D0FFD6DA
        D9FFBEC2C0FFB4BAB8FFD4D8D7FFCFD2D1FF636665B700000000000000001D1E
        1E389A9E9BF4F3F4F4FFC9CCCBFFD5D9D7FFDADEDCFFDBDFDDFFE4E7E5FFF4F5
        F4FFF6F6F6FFE8EAE9FFE1E4E4FFE0E3E3FFE1E4E4FFE1E4E4FFE1E4E4FFE1E4
        E4FFE0E3E3FFE0E2E2FFDEE0E0FFD8DAD9FFCDD0CFFFCFD2D2FFD7DADAFFD5D9
        D8FFD1D5D4FFC5CAC8FFE0E2E2FFA9ADACF63334346100000000000000000202
        0203818684F4F0F1F1FFD5D7D5FFD6DAD8FFD9DDDCFFF3F4F4FFF0F1F1FFDFE1
        E1FFDDE0DFFFDDE0DFFFDDE0DFFFDDE0DFFFDDE0DFFFDDE0DFFFDDE0DFFFDDE0
        DFFFDDE0DFFFDDE0DFFFDDE0DFFFDDE0DFFFDBDEDDFFC4C7C6FFACB0ADFFCDD2
        D0FFD5D9D8FFD2D6D5FFEFF0F0FF888D8BF70E0E0E1A00000000000000000000
        00005E6160B0D7DBD9FFE0E3E3FFD1D5D4FFF3F4F4FFE1E4E2FFD8DCDBFFD8DC
        DBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DC
        DBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DCDBFFD8DCDBFFCDD2D1FF979A
        99FFCDD2D0FFDADDDCFFDFE2E1FF767A78DC0000000000000000000000000000
        00002F31305AA9ADACF5EEF0F0FFDEE1DFFFE7E8E8FFD4D8D7FFD4D8D7FFD4D8
        D7FFD4D8D7FFD4D8D7FFD4D8D7FFD4D8D7FFD3D7D6FFD0D3D2FFD1D4D3FFD3D6
        D5FFD4D8D7FFD4D8D7FFD4D8D7FFD4D8D7FFD4D8D7FFD4D8D7FFD4D8D7FFC2C6
        C5FFAFB5B4FFE1E4E3FFBEC2C1FC484A49880000000000000000000000000000
        0000090A0A12858A88F8F0F2F2FFE4E7E7FFD4D8D6FFCFD4D2FFCFD4D2FFCFD4
        D2FFCFD4D2FFCFD4D2FFCED3D1FFD2D4D3FFD5D7D6FFB7AFA7FF673818FFBEB5
        AEFFD8DBDBFFCDD2D0FFCED3D1FFCFD4D2FFCFD4D2FFCFD4D2FFCFD4D2FFCDD3
        D1FFB2B7B5FFE8EBEAFF919593F11F20203C0000000000000000000000000000
        000000000000707573D1DBDDDCFFDCDFDEFFCACECCFFCBD0CEFFCBD0CEFFCBD0
        CEFFC6CBC9FFC3C8C6FFBFC4C2FFD6D7D7FFC2BDB8FF6F4324FF956849FF7043
        24FFCEC8C3FFBDC1C0FFBFC4C2FFC3C8C6FFC6CBC9FFCBD0CEFFCBD0CEFFCBCF
        CEFFD5D8D7FFE8EAE9FF818684F4020202030000000000000000000000000000
        0000000000004042417AB6B9B8FAE5E7E7FFB5B8B7FFC2C7C4FFC6CBC9FFC1C6
        C4FFBDC1C0FFB7BCBAFFB3B8B6FFAAAAA5FF71472AFFA27655FFC59D7DFF9867
        42FF704628FFA9A9A4FFB3B8B6FFB7BCBAFFBDC1C0FFC1C6C4FFC7CCCBFFCBCF
        CFFFE5E7E7FFD2D5D5FF606362B2000000000000000000000000000000000000
        0000000000001718182D8B8F8DF4EBECECFFC6CCCAFFA5A9A7FFABB0AEFFBCC2
        C0FFB9BEBCFFB4B8B6FFADAFACFF754F33FF976947FFBF9270FFB7855FFFB27D
        54FF92623FFF754F33FFADAFACFFB4B8B6FFB9BEBCFFC2C6C5FFD2D5D5FFD9DD
        DCFFE7EAE9FFACAFAEF53233335F000000000000000000000000000000000000
        000000000000000000007D8280ECDCDFDEFFD2D6D4FFC7CDCBFFAEB4B3FFA3A9
        A7FFB9BEBCFFB5BAB7FF7D5C43FF8B5D3BFFBB8B66FFB48058FFB6845DFFA567
        37FFB48057FF8B5C3AFF7D5C43FFB5BAB7FFC4C8C7FFD7DBDAFFD7DBDAFFD9DC
        DBFFE8EAE9FF888D8BF80B0C0C16000000000000000000000000000000000000
        000000000000000000005357569DC0C4C2FED9DBDBFFC2C8C6FFC6CDCBFFA3A8
        A7FFB8BFBCFF886C57FF825535FFB5825AFFAE774CFFB37E55FFB6845DFFA465
        34FFA6693AFFB48158FF825535FF886C57FFCDD3D1FFD3D7D7FFBFC2C2FFD3D7
        D6FFD5D8D7FF747977D800000000000000000000000000000000000000000000
        000000000000000000002729284B969A99F2DADDDDFFBBBDBBFFCED2D1FFB6BC
        BBFF8D7664FF7B4E2DFFB38059FFA96E3FFFAC7346FFB37E55FFB6845DFFA465
        34FFA46534FFA86C3DFFB38059FF7B4E2DFF998170FFC8CCCBFFA2A4A3FFD2D3
        D3FFB5B9B7FB4648478500000000000000000000000000000000000000000000
        0000000000000000000004040408818684F4D0D4D2FFE2E5E4FFE1E4E3FFAD9C
        8EFF76492AFFAF7E56FFA96E40FFA46635FFAB7245FFB17D55FFB5825CFFA263
        32FFA26332FFA16232FFA76C3FFFAE7C55FF76482AFFAD9B8EFFE0E3E3FFDADC
        DCFF878D8BF41617162A00000000000000000000000000000000000000000000
        00000000000000000000000000002F31305A818583F3888D8BFF807469FF6D41
        22FFAB7B55FFB17F59FFB17E59FFA87147FFA56D42FFAC7951FFB07D58FF9C5D
        2EFF9B5D2EFFA66E44FFAF7D57FFAF7D57FFA97955FF6D4122FF7E7367FF8287
        85F8464948820000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000673818FF6738
        18FF673818FF673818FF693A1BFFAD7B57FF9F673DFFA7744DFFAB7955FF9658
        2AFF95572AFFAA7955FF693A1BFF673818FF673818FF673818FF673818FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000673818FFA77753FF9A633AFFA26E4AFFA67551FF8F52
        26FF8F5226FFA57451FF673818FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001C0F0743653B1FEB673818FF673818FF673818FF673818FF673818FF6738
        18FF673818FF673818FF673818FFA27350FF955D36FF9D6A46FFA1704EFF894C
        21FF894C21FFA1704DFF673818FF673818FF673818FF673818FF673818FF6738
        18FF673818FF673818FF673818FF653B1FEB1C10074400000000000000000000
        0000653D22E8DBCFC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBCFC8FF653D22E800000000000000000000
        0000673818FFFFFFFFFFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7
        D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFFFFFFFFF535755FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF673818FF00000000000000000000
        0000673818FFFFFFFFFFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7
        D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFFFFFFFFF535755FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF673818FF00000000000000000000
        0000673818FFFFFFFFFFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7
        D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFFFFFFFFF535755FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF673818FF00000000000000000000
        0000673818FFFFFFFFFFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7
        D3FFCFD7D3FFCFD7D3FFCFD7D3FFCFD7D3FFFFFFFFFF535755FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF673818FF00000000000000000000
        0000653D22E8DBCFC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBCFC8FF653D22E800000000000000000000
        00001B0F0742653C20EB673818FF673818FF673818FF673818FF673818FF6738
        18FF673818FF673818FF673818FF673818FF673818FF673818FF673818FF6738
        18FF673818FF673818FF673818FF673818FF673818FF673818FF673818FF6738
        18FF673818FF673818FF673818FF653C20EB1C0F074300000000}
    end
  end
  object QMerk1: TUniQuery
    Connection = DM.dbSrv
    Left = 40
    Top = 286
  end
  object QMerk2: TUniQuery
    Connection = DM.dbSrv
    Left = 72
    Top = 286
  end
  object dsMerk2: TUniDataSource
    DataSet = QMerk2
    Left = 72
    Top = 310
  end
  object dsMerk1: TUniDataSource
    DataSet = QMerk1
    Left = 40
    Top = 310
  end
  object QJenis1: TUniQuery
    Connection = DM.dbSrv
    Left = 40
    Top = 342
  end
  object QJenis2: TUniQuery
    Connection = DM.dbSrv
    Left = 72
    Top = 342
  end
  object dsJenis2: TUniDataSource
    DataSet = QJenis2
    Left = 72
    Top = 366
  end
  object dsJenis1: TUniDataSource
    DataSet = QJenis1
    Left = 40
    Top = 366
  end
  object QBB1: TUniQuery
    Connection = DM.dbSrv
    Left = 40
    Top = 398
  end
  object QBB2: TUniQuery
    Connection = DM.dbSrv
    Left = 72
    Top = 398
  end
  object dsQBB2: TUniDataSource
    DataSet = QBB2
    Left = 72
    Top = 422
  end
  object dsQBB1: TUniDataSource
    DataSet = QBB1
    Left = 40
    Top = 422
  end
  object QPeruntukan1: TUniQuery
    Connection = DM.dbSrv
    Left = 40
    Top = 454
  end
  object QPeruntukan2: TUniQuery
    Connection = DM.dbSrv
    Left = 72
    Top = 454
  end
  object dsPeruntukan2: TUniDataSource
    DataSet = QPeruntukan2
    Left = 72
    Top = 478
  end
  object dsPeruntukan1: TUniDataSource
    DataSet = QPeruntukan1
    Left = 40
    Top = 478
  end
  object QWarnaTNKB1: TUniQuery
    Connection = DM.dbSrv
    Left = 40
    Top = 510
  end
  object QWarnaTNKB2: TUniQuery
    Connection = DM.dbSrv
    Left = 72
    Top = 510
  end
  object dsWarnaTNKB2: TUniDataSource
    DataSet = QWarnaTNKB2
    Left = 72
    Top = 534
  end
  object dsWarnaTNKB1: TUniDataSource
    DataSet = QWarnaTNKB1
    Left = 40
    Top = 534
  end
  object QModel1: TUniQuery
    Connection = DM.dbSrv
    Left = 856
    Top = 344
  end
  object QModel2: TUniQuery
    Connection = DM.dbSrv
    Left = 888
    Top = 344
  end
  object dsModel2: TUniDataSource
    DataSet = QModel2
    Left = 888
    Top = 368
  end
  object dsModel1: TUniDataSource
    DataSet = QModel1
    Left = 856
    Top = 368
  end
  object QWarna1: TUniQuery
    Connection = DM.dbSrv
    Left = 856
    Top = 400
  end
  object QWarna2: TUniQuery
    Connection = DM.dbSrv
    Left = 888
    Top = 400
  end
  object dsWarna2: TUniDataSource
    DataSet = QWarna2
    Left = 888
    Top = 424
  end
  object dsWarna1: TUniDataSource
    DataSet = QWarna1
    Left = 856
    Top = 424
  end
  object QWil1: TUniQuery
    Connection = DM.dbSrv
    Left = 856
    Top = 456
  end
  object QWil2: TUniQuery
    Connection = DM.dbSrv
    Left = 888
    Top = 456
  end
  object dsWil2: TUniDataSource
    DataSet = QWil2
    Left = 888
    Top = 480
  end
  object dsWil1: TUniDataSource
    DataSet = QWil1
    Left = 856
    Top = 480
  end
  object QJenisDaftar1: TUniQuery
    Connection = DM.dbSrv
    Left = 856
    Top = 291
  end
  object QJenisDaftar2: TUniQuery
    Connection = DM.dbSrv
    Left = 888
    Top = 291
  end
  object dsJenisDaftar2: TUniDataSource
    DataSet = QJenisDaftar2
    Left = 888
    Top = 315
  end
  object dsJenisDaftar1: TUniDataSource
    DataSet = QJenisDaftar1
    Left = 856
    Top = 315
  end
  object QCaraImport1: TUniQuery
    Connection = DM.dbSrv
    Left = 864
    Top = 171
  end
  object QCaraImport2: TUniQuery
    Connection = DM.dbSrv
    Left = 896
    Top = 171
  end
  object dsCaraImport2: TUniDataSource
    DataSet = QCaraImport2
    Left = 896
    Top = 195
  end
  object dsCaraImport1: TUniDataSource
    DataSet = QCaraImport1
    Left = 864
    Top = 195
  end
  object QPemohon1: TUniQuery
    Connection = DM.dbSrv
    Left = 856
    Top = 520
  end
  object QPemohon2: TUniQuery
    Connection = DM.dbSrv
    Left = 888
    Top = 520
  end
  object dsPemohon2: TUniDataSource
    DataSet = QPemohon2
    Left = 888
    Top = 544
  end
  object dsPemohon1: TUniDataSource
    DataSet = QPemohon1
    Left = 856
    Top = 544
  end
  object QDeatilRegister: TUniQuery
    Connection = DM.dbSrv
    SQL.Strings = (
      'select * from t_detail_register order by bpkb_id')
    ReadOnly = True
    Left = 824
    Top = 8
    object QDeatilRegisterBERKAS_ID: TIntegerField
      FieldName = 'BERKAS_ID'
      Required = True
    end
    object QDeatilRegisterBPKB_ID: TIntegerField
      FieldName = 'BPKB_ID'
      Required = True
    end
    object QDeatilRegisterNO_BPKB: TStringField
      FieldName = 'NO_BPKB'
      Required = True
      Size = 15
    end
    object QDeatilRegisterNREG_BPKB: TStringField
      FieldName = 'NREG_BPKB'
      Required = True
      Size = 50
    end
    object QDeatilRegisterTGL_BPKB: TDateField
      FieldName = 'TGL_BPKB'
      Required = True
    end
    object QDeatilRegisterNO_POLISI: TStringField
      FieldName = 'NO_POLISI'
      Required = True
      Size = 12
    end
    object QDeatilRegisterNAMA_PEMILIK: TStringField
      FieldName = 'NAMA_PEMILIK'
      Required = True
      Size = 200
    end
    object QDeatilRegisterALAMAT_PEMILIK: TStringField
      FieldName = 'ALAMAT_PEMILIK'
      Required = True
      Size = 255
    end
    object QDeatilRegisterMERK_NAMA: TStringField
      FieldName = 'MERK_NAMA'
      Required = True
      Size = 50
    end
    object QDeatilRegisterTIPE: TStringField
      FieldName = 'TIPE'
      Required = True
      Size = 50
    end
    object QDeatilRegisterJENIS_NAMA: TStringField
      FieldName = 'JENIS_NAMA'
      Required = True
      Size = 30
    end
    object QDeatilRegisterMODEL_NAMA: TStringField
      FieldName = 'MODEL_NAMA'
      Required = True
      Size = 30
    end
    object QDeatilRegisterTHN_BUAT: TIntegerField
      FieldName = 'THN_BUAT'
      Required = True
    end
    object QDeatilRegisterTHN_RAKIT: TIntegerField
      FieldName = 'THN_RAKIT'
      Required = True
    end
    object QDeatilRegisterVOL_SILINDER: TIntegerField
      FieldName = 'VOL_SILINDER'
      Required = True
    end
    object QDeatilRegisterJML_RODA: TIntegerField
      FieldName = 'JML_RODA'
      Required = True
    end
    object QDeatilRegisterJML_SUMBU: TIntegerField
      FieldName = 'JML_SUMBU'
    end
    object QDeatilRegisterWARNA_NAMA: TStringField
      FieldName = 'WARNA_NAMA'
      Required = True
      Size = 30
    end
    object QDeatilRegisterNO_RANGKA: TStringField
      FieldName = 'NO_RANGKA'
      Required = True
      Size = 30
    end
    object QDeatilRegisterNO_MESIN: TStringField
      FieldName = 'NO_MESIN'
      Required = True
      Size = 30
    end
    object QDeatilRegisterBB_NAMA: TStringField
      FieldName = 'BB_NAMA'
    end
    object QDeatilRegisterWARNA_TNKB: TStringField
      FieldName = 'WARNA_TNKB'
      Required = True
      Size = 30
    end
    object QDeatilRegisterATPM_NAMA: TStringField
      FieldName = 'ATPM_NAMA'
      Size = 60
    end
    object QDeatilRegisterNO_FAKTUR: TStringField
      FieldName = 'NO_FAKTUR'
      Size = 40
    end
    object QDeatilRegisterTGL_FAKTUR: TDateField
      FieldName = 'TGL_FAKTUR'
    end
    object QDeatilRegisterOPERATOR: TStringField
      FieldName = 'OPERATOR'
      Size = 60
    end
    object QDeatilRegisterNAMA_PEMOHON: TStringField
      FieldName = 'NAMA_PEMOHON'
      Size = 60
    end
  end
  object dsQDeatilRegister: TUniDataSource
    DataSet = QDeatilRegister
    Left = 824
    Top = 32
  end
  object Q2: TUniQuery
    Connection = DM.dbSrv
    SQL.Strings = (
      
        'select keluarahan,kecamatan,kabupaten,propinsi,kd_pos from M_KOD' +
        'E_POS order by keluarahan')
    Left = 480
    Top = 200
    object Q2KELUARAHAN: TStringField
      FieldName = 'KELUARAHAN'
      Required = True
      Size = 240
    end
    object Q2KECAMATAN: TStringField
      FieldName = 'KECAMATAN'
      Required = True
      Size = 240
    end
    object Q2KABUPATEN: TStringField
      FieldName = 'KABUPATEN'
      Required = True
      Size = 240
    end
    object Q2PROPINSI: TStringField
      FieldName = 'PROPINSI'
      Required = True
      Size = 240
    end
    object Q2KD_POS: TStringField
      FieldName = 'KD_POS'
      Required = True
      Size = 40
    end
  end
  object dsQ2: TDataSource
    DataSet = Q2
    Left = 480
    Top = 233
  end
  object QSTB1: TUniQuery
    Connection = DM.dbSrv
    Left = 856
    Top = 241
  end
  object dsQSTB1: TUniDataSource
    DataSet = QSTB1
    Left = 856
    Top = 265
  end
  object dsQSTB2: TUniDataSource
    DataSet = QSTB2
    Left = 888
    Top = 265
  end
  object QSTB2: TUniQuery
    Connection = DM.dbSrv
    Left = 888
    Top = 241
  end
  object QKel1: TUniQuery
    Connection = DM.dbSrv
    Left = 752
    Top = 182
  end
  object dsQKel1: TUniDataSource
    DataSet = QKel1
    Left = 752
    Top = 206
  end
  object dsQKel2: TUniDataSource
    DataSet = QKel2
    Left = 784
    Top = 206
  end
  object QKel2: TUniQuery
    Connection = DM.dbSrv
    Left = 784
    Top = 182
  end
  object uniSPTampil: TUniStoredProc
    Connection = DM.dbSrv
    Left = 16
    Top = 229
  end
  object dsQDeatail: TUniDataSource
    DataSet = uniSPTampil
    Left = 16
    Top = 264
  end
  object PopupMenu1: TPopupMenu
    Images = DM.cxImageList1
    Left = 168
    Top = 222
    object EDITDATA1: TMenuItem
      Caption = 'EDIT DATA'
      ImageIndex = 2
      OnClick = EDITDATA1Click
    end
  end
  object QJenisModel1: TUniQuery
    Connection = DM.dbSrv
    Left = 88
    Top = 72
  end
  object dsQJenisModel1: TUniDataSource
    DataSet = QJenisModel1
    Left = 88
    Top = 96
  end
  object dsQJenisModel2: TUniDataSource
    DataSet = QJenisModel2
    Left = 120
    Top = 96
  end
  object QJenisModel2: TUniQuery
    Connection = DM.dbSrv
    Left = 120
    Top = 72
  end
  object QWarnaKartu1: TUniQuery
    Connection = DM.dbSrv
    Left = 24
    Top = 72
  end
  object QWarnaKartu2: TUniQuery
    Connection = DM.dbSrv
    Left = 56
    Top = 72
  end
  object dsQWarnaKartu2: TUniDataSource
    DataSet = QWarnaKartu2
    Left = 56
    Top = 96
  end
  object dsQWarnaKartu1: TUniDataSource
    DataSet = QWarnaKartu1
    Left = 24
    Top = 96
  end
  object qAddModel: TUniQuery
    Connection = DM.dbSrv
    Left = 184
    Top = 72
  end
  object dsqAddModel: TUniDataSource
    DataSet = qAddModel
    Left = 184
    Top = 104
  end
end
