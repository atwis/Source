object fSetting: TfSetting
  Left = 186
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'SETTING APLIKASI'
  ClientHeight = 691
  ClientWidth = 1135
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    1135
    691)
  PixelsPerInch = 96
  TextHeight = 19
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1135
    Height = 612
    ActivePage = cxTabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ClientRectBottom = 612
    ClientRectRight = 1135
    ClientRectTop = 30
    object cxTabSheet1: TcxTabSheet
      Caption = 'Setting I'
      ImageIndex = 0
      object Label2: TLabel
        Left = 17
        Top = 11
        Width = 103
        Height = 19
        Caption = 'PERUSAHAAN'
      end
      object Label3: TLabel
        Left = 17
        Top = 39
        Width = 63
        Height = 19
        Caption = 'ALAMAT'
      end
      object Label4: TLabel
        Left = 17
        Top = 114
        Width = 36
        Height = 19
        Caption = 'TELP'
      end
      object Label5: TLabel
        Left = 297
        Top = 114
        Width = 28
        Height = 19
        Caption = 'FAX'
      end
      object Label6: TLabel
        Left = 17
        Top = 143
        Width = 42
        Height = 19
        Caption = 'KOTA'
      end
      object Label7: TLabel
        Left = 17
        Top = 207
        Width = 60
        Height = 19
        Caption = 'REPORT'
      end
      object Label8: TLabel
        Left = 172
        Top = 206
        Width = 319
        Height = 14
        Caption = '1=DESIGN REPORT, 0=NO DESIGN REPORT, 2=PREVIEW'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 17
        Top = 234
        Width = 90
        Height = 19
        Caption = 'LIMIT DATA'
      end
      object Label10: TLabel
        Left = 17
        Top = 263
        Width = 27
        Height = 19
        Caption = 'TID'
      end
      object Label22: TLabel
        Left = 25
        Top = 314
        Width = 76
        Height = 19
        Caption = 'HOST SRV'
      end
      object Label23: TLabel
        Left = 25
        Top = 343
        Width = 75
        Height = 19
        Caption = 'PORT SRV'
      end
      object Label24: TLabel
        Left = 10
        Top = 290
        Width = 110
        Height = 19
        Caption = 'SERVER APM : '
      end
      object Bevel2: TBevel
        Left = 122
        Top = 300
        Width = 379
        Height = 2
      end
      object Label11: TLabel
        Left = 25
        Top = 395
        Width = 87
        Height = 19
        Caption = 'USER NAME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 25
        Top = 423
        Width = 85
        Height = 19
        Caption = 'PASSWORD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 25
        Top = 454
        Width = 76
        Height = 19
        Caption = 'HOST SRV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 290
        Top = 459
        Width = 75
        Height = 19
        Caption = 'PORT SRV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 26
        Top = 485
        Width = 60
        Height = 19
        Caption = 'SID SRV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 10
        Top = 369
        Width = 97
        Height = 19
        Caption = 'DATA BASE :'
      end
      object Bevel1: TBevel
        Left = 122
        Top = 379
        Width = 379
        Height = 2
      end
      object Label41: TLabel
        Left = 583
        Top = 169
        Width = 179
        Height = 19
        Caption = 'CARI LANGSUNG CETAK'
        Transparent = True
      end
      object Label42: TLabel
        Left = 820
        Top = 163
        Width = 267
        Height = 38
        Caption = '0=CARI DNG 2 KONDISI'#13#10'1=CARI LANGSUNG DNG 1 KONDISI'
        Transparent = True
      end
      object Label43: TLabel
        Left = 18
        Top = 175
        Width = 72
        Height = 19
        Caption = 'PROPINSI'
      end
      object Label44: TLabel
        Left = 218
        Top = 235
        Width = 92
        Height = 19
        Caption = 'PERUBAHAN'
      end
      object Label45: TLabel
        Left = 360
        Top = 231
        Width = 143
        Height = 14
        Caption = '0=NOPOL LAMA DITULIS,'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label46: TLabel
        Left = 360
        Top = 246
        Width = 182
        Height = 14
        Caption = '1=NOPOL LAMA TIDAK DITULIS,'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Bevel5: TBevel
        Left = 715
        Top = 14
        Width = 320
        Height = 2
      end
      object Label18: TLabel
        Left = 602
        Top = 35
        Width = 64
        Height = 19
        Caption = 'defWSDL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 602
        Top = 68
        Width = 51
        Height = 19
        Caption = 'defURL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 579
        Top = 4
        Width = 219
        Height = 19
        Caption = 'SERVER BPKB WEB SERVICE : '
      end
      object Label25: TLabel
        Left = 602
        Top = 102
        Width = 46
        Height = 19
        Caption = 'defSvc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 602
        Top = 134
        Width = 42
        Height = 19
        Caption = 'defPrt'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Bevel3: TBevel
        Left = 553
        Top = 7
        Width = 2
        Height = 617
      end
      object Label15: TLabel
        Left = 582
        Top = 207
        Width = 86
        Height = 19
        Caption = 'KODE BANK'
      end
      object Label16: TLabel
        Left = 582
        Top = 239
        Width = 97
        Height = 19
        Caption = 'KODE BAYAR'
        Transparent = True
      end
      object Label17: TLabel
        Left = 739
        Top = 234
        Width = 215
        Height = 38
        Caption = '1=OTOMATIS KODE BAYAR, '#13#10'0=MANUAL KODE BAYAR'
        Transparent = True
      end
      object Label27: TLabel
        Left = 582
        Top = 276
        Width = 94
        Height = 38
        Caption = 'CETAK '#13#10'STRUK BANK'
        Transparent = True
      end
      object Label28: TLabel
        Left = 738
        Top = 278
        Width = 221
        Height = 38
        Caption = '1=CETAK STRUK BANK, '#13#10'0=TIDAK CETAK STRUK BANK'
        Transparent = True
      end
      object Label29: TLabel
        Left = 582
        Top = 324
        Width = 99
        Height = 38
        Caption = 'CETAK LABEL'#13#10'REGISTER'
        Transparent = True
      end
      object Label30: TLabel
        Left = 740
        Top = 326
        Width = 251
        Height = 38
        Caption = '1=CETAK LABEL REGISTER, '#13#10'0=TIDAK CETAK LABEL REGISTER'
        Transparent = True
      end
      object Label32: TLabel
        Left = 581
        Top = 380
        Width = 93
        Height = 19
        Caption = 'ENABLE LOG'
        Transparent = True
      end
      object Label33: TLabel
        Left = 739
        Top = 374
        Width = 215
        Height = 38
        Caption = '1=ENABLE LOG TRANSAKSI, '#13#10'0=DISABLE LOG TRANSAKSI'
        Transparent = True
      end
      object Label34: TLabel
        Left = 581
        Top = 427
        Width = 106
        Height = 19
        Caption = 'PRINTER BPKB'
      end
      object Label35: TLabel
        Left = 581
        Top = 456
        Width = 88
        Height = 19
        Caption = 'PRINTER CF'
      end
      object Label36: TLabel
        Left = 581
        Top = 485
        Width = 105
        Height = 19
        Caption = 'KEY BARCODE'
      end
      object eNamaPerusahaan: TEdit
        Left = 128
        Top = 8
        Width = 366
        Height = 27
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object eAlamatPerusahaan: TMemo
        Left = 128
        Top = 36
        Width = 366
        Height = 73
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object eTelp: TEdit
        Left = 128
        Top = 111
        Width = 158
        Height = 27
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object eFax: TEdit
        Left = 336
        Top = 111
        Width = 158
        Height = 27
        CharCase = ecUpperCase
        TabOrder = 3
      end
      object eKota: TEdit
        Left = 128
        Top = 140
        Width = 366
        Height = 27
        CharCase = ecUpperCase
        TabOrder = 4
      end
      object cbReport: TComboBox
        Left = 128
        Top = 202
        Width = 42
        Height = 27
        Style = csDropDownList
        ItemHeight = 19
        ItemIndex = 0
        TabOrder = 5
        Text = '0'
        Items.Strings = (
          '0'
          '1'
          '2')
      end
      object eLimitData: TEdit
        Left = 128
        Top = 231
        Width = 78
        Height = 27
        CharCase = ecUpperCase
        TabOrder = 6
      end
      object eTID: TEdit
        Left = 128
        Top = 260
        Width = 78
        Height = 27
        CharCase = ecUpperCase
        TabOrder = 7
      end
      object eHostSrvAPM: TEdit
        Left = 128
        Top = 309
        Width = 366
        Height = 27
        CharCase = ecUpperCase
        TabOrder = 8
      end
      object ePortSrvAPM: TEdit
        Left = 128
        Top = 338
        Width = 103
        Height = 27
        CharCase = ecUpperCase
        TabOrder = 9
      end
      object eUserName: TcxTextEdit
        Left = 124
        Top = 391
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 10
        Width = 373
      end
      object ePassw: TcxTextEdit
        Left = 124
        Top = 422
        ParentFont = False
        Properties.PasswordChar = '*'
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 11
        Width = 373
      end
      object eHost: TcxTextEdit
        Left = 124
        Top = 453
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 12
        Width = 159
      end
      object ePort: TcxTextEdit
        Left = 374
        Top = 453
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 13
        Width = 123
      end
      object eSID: TcxTextEdit
        Left = 124
        Top = 484
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 14
        Width = 159
      end
      object cxButton1: TcxButton
        Left = 291
        Top = 485
        Width = 205
        Height = 28
        Caption = 'Test Connection'
        TabOrder = 15
        OnClick = cxButton1Click
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002F1904006D3A0900442506000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002815
          0300A6580D00B7631100B4600E00B7631100B4600E004E290600000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000062350900B763
          1100B7631100B7631100B5621000B7621000B7631100B763110094500E000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000723D0900B7631100B360
          0E00B25D0A00B0560000B6641200AE560000B05A0700B35F0E00B4600E00A559
          0F00000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000060330700B4600E00B7631100AF57
          0300BE752C00FFF9E800FDFDFD00FFFFFF00D3995F00AD530000B35F0E00B763
          11009A520C000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000371E0500B7631100B7631100B0580100D79F
          6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8D7B800AE540000B562
          1000B76311007B430B0000000000000000000000000000000000000000000000
          0000000000000000000000000000B7631100B4600E00AF580400D2955900FDFD
          FD00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FDFDFD00F6D4B600AD54
          0000B35F0E00B4600E00361D0500000000000000000000000000000000000000
          00000000000000000000753E0900B7631100B25D0B00BD702300FFFFFF00FDFD
          FD00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00DDA9
          7400AF580300B4600E00B05F1000000000000000000000000000000000000000
          00000000000007040100B7631100B7621000AD540000FFFFFB00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00B8671800B5600E00B7631100422406000000000000000000000000000000
          000000000000582F0700B4600E00B45E0A00CE915300FDFDFD00FFFFFF00FDFD
          FD00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FFFF
          FF00F2CEAD00AF570100B763110096500C000000000000000000000000000000
          0000000000009F560F00B7631100B0580000FFEAD200FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00B0560000B5621000B76311000905010000000000000000000000
          000005030000B4600E00B3600E00B0590100FDFDFD00FDFDFD00FFFFFF00FDFD
          FD00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FFFF
          FF00FDFDFD00C7833F00B45F0B00B4600E004625050000000000000000000000
          0000331C0500B4600E007C4208005E391700B8B8B800FDFDFD00FFFFFF00FDFD
          FD00FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FEFEFE00FDFDFD00FFFF
          FF00FDFDFD00E2B48700B35C0700B4600E007740090000000000000000000000
          000028160400AD5C0D0005040300175B85000D0D0D00F9F9F90083838300A2A2
          A200FDFDFD00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FFFF
          FF00FDFDFD00F6D5B900B1590300B4600E00A1560D0000000000000000000617
          22000F3B57002C180400030E14002CAEFF00030C1100535353000C314800081B
          2600A4A4A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFEBD600B0580100B7631100B763110000000000000000000A28
          3B0029A4F00010415F00071B27002CAEFF00071A26000D334B002AA5F2000D32
          4A007F7F7F00FFFFFF00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FFFF
          FF00FDFDFD00FDEFDB00B0580000B35F0E00B4600E0009050100000000000000
          00000B2A3D0029A4F000248ED0002CAEFF002389C9002AA5F2000D354E004848
          4800F4F4F400FFFFFF00FDFDFD00FFFFFF00FDFDFD00FDFDFD00FDFDFD00FFFF
          FF00FDFDFD00FDE5CB00B1590100B35F0E00B4600E001C0F0300010203000410
          1700081E2C00238BCB00279BE30016577F00289DE6002388C800071C29000410
          18000B0E0E00BFBFBF00FFFFFF00FFFFFF00FFFFFF00FFF1DA00DEA97400C884
          4000C67E3A00BE712800B5600E00B7631100B76311002514030019628F002CAE
          FF002CAEFF002CAEFF0016557D0003020000175B85002CAEFF002CAEFF002CAD
          FE001551770087827900FDFDFD00FFFFFB00BF732B00AC510000B05A0600B45F
          0B00B25D0A00B35E0D00B7631100B35F0E00B4600E0022130300000000000105
          070004101800238CCD00289DE600175B8600289FE9002285C300040E15000103
          04001008010088420000DCA87500B35B0400B25D0A00B3600E00B4600E00B763
          1100B4600E00B4600E00B7631100B4600E00B4600E0007040100000000000000
          0000103F5C002AA4F1002286C4002CAEFF002287C6002AA5F2000D344C004123
          0600B5621100B7621000B35E0900B5621000B7631100B7631100B16010006A39
          0A003B200500190E02000A060100080401001A0E020000000000000000000E38
          52002AA4F1000B2C400004121A002CAEFF00071A26000D354E002AA5F2000C30
          4600562E0700B7631100B3600E00B7631100A1560D00321B0400000000000000
          0000000000000000000000000000000000000000000000000000000000000412
          1A000A293C0000000000010507002CADFE00030B1000000000000C3047000512
          1B000000000043240600B4600E00562F08000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000175C87000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      object cbCariLangsung: TComboBox
        Left = 774
        Top = 163
        Width = 42
        Height = 27
        Style = csDropDownList
        ItemHeight = 19
        TabOrder = 16
        Items.Strings = (
          '0'
          '1')
      end
      object cbPropinsi: TcxDBLookupComboBox
        Left = 128
        Top = 169
        DataBinding.DataField = 'NAMA_PROP'
        DataBinding.DataSource = dsQProp1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'NO_PROP'
        Properties.ListColumns = <
          item
            FieldName = 'NAMA_PROP'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsQProp2
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 17
        Width = 366
      end
      object cbBBN2Nopol: TComboBox
        Left = 313
        Top = 231
        Width = 42
        Height = 27
        Style = csDropDownList
        ItemHeight = 19
        TabOrder = 18
        Items.Strings = (
          '0'
          '1')
      end
      object eDefWSDL: TEdit
        Left = 683
        Top = 27
        Width = 353
        Height = 31
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
      end
      object eDefURL: TEdit
        Left = 683
        Top = 60
        Width = 353
        Height = 31
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
      end
      object eDefSvc: TEdit
        Left = 683
        Top = 93
        Width = 151
        Height = 31
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 21
      end
      object eDefPrt: TEdit
        Left = 683
        Top = 126
        Width = 151
        Height = 31
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
      end
      object eKodeBank: TEdit
        Left = 693
        Top = 204
        Width = 158
        Height = 27
        CharCase = ecUpperCase
        TabOrder = 23
      end
      object cbKodeBayar: TComboBox
        Left = 693
        Top = 234
        Width = 42
        Height = 27
        Style = csDropDownList
        ItemHeight = 19
        ItemIndex = 0
        TabOrder = 24
        Text = '0'
        Items.Strings = (
          '0'
          '1')
      end
      object cbCetakStrukBank: TComboBox
        Left = 692
        Top = 278
        Width = 42
        Height = 27
        Style = csDropDownList
        ItemHeight = 19
        ItemIndex = 0
        TabOrder = 25
        Text = '0'
        Items.Strings = (
          '0'
          '1')
      end
      object cbCetakLabelReg: TComboBox
        Left = 694
        Top = 326
        Width = 42
        Height = 27
        Style = csDropDownList
        ItemHeight = 19
        ItemIndex = 0
        TabOrder = 26
        Text = '0'
        Items.Strings = (
          '0'
          '1')
      end
      object cbLog: TComboBox
        Left = 693
        Top = 374
        Width = 42
        Height = 27
        Style = csDropDownList
        ItemHeight = 19
        ItemIndex = 0
        TabOrder = 27
        Text = '0'
        Items.Strings = (
          '0'
          '1')
      end
      object cbPrinterBPKB: TComboBox
        Left = 699
        Top = 422
        Width = 353
        Height = 27
        ItemHeight = 19
        TabOrder = 28
      end
      object cbPrinterCF: TComboBox
        Left = 699
        Top = 451
        Width = 353
        Height = 27
        ItemHeight = 19
        TabOrder = 29
      end
      object cbKeyBarcode: TComboBox
        Left = 699
        Top = 480
        Width = 353
        Height = 27
        ItemHeight = 19
        TabOrder = 30
        Items.Strings = (
          'BARCODE BERKAS'
          'NO BPKB')
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Setting II'
      ImageIndex = 1
      object Label47: TLabel
        Left = 11
        Top = 121
        Width = 96
        Height = 19
        Caption = 'Awal No MLD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label48: TLabel
        Left = 11
        Top = 153
        Width = 99
        Height = 19
        Caption = 'Akhir No MLD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label37: TLabel
        Left = 11
        Top = 23
        Width = 80
        Height = 19
        Caption = 'ONLINE CF'
        Transparent = True
      end
      object Label38: TLabel
        Left = 214
        Top = 17
        Width = 164
        Height = 38
        Caption = '0=OFF LINE CEK FISIK'#13#10'1=ON LINE CEK FISIK'
        Transparent = True
      end
      object Label39: TLabel
        Left = 11
        Top = 75
        Width = 143
        Height = 19
        Caption = 'NOPOL FROM STNK'
        Transparent = True
      end
      object Label40: TLabel
        Left = 214
        Top = 69
        Width = 164
        Height = 38
        Caption = '0=NOPOL FROM BPKB'#13#10'1=NOPOL FROM STNK'
        Transparent = True
      end
      object eNoAkhirMLD: TEdit
        Left = 167
        Top = 145
        Width = 192
        Height = 31
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object eNoAwalMLD: TEdit
        Left = 167
        Top = 112
        Width = 41
        Height = 31
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object CbOnlineCF: TComboBox
        Left = 168
        Top = 17
        Width = 42
        Height = 27
        Style = csDropDownList
        ItemHeight = 19
        TabOrder = 2
        Items.Strings = (
          '0'
          '1')
      end
      object cbNopolFromSTNK: TComboBox
        Left = 168
        Top = 69
        Width = 42
        Height = 27
        Style = csDropDownList
        ItemHeight = 19
        TabOrder = 3
        Items.Strings = (
          '0'
          '1')
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Setting III'
      ImageIndex = 2
    end
  end
  object bSimpan: TcxButton
    Left = 27
    Top = 623
    Width = 1094
    Height = 59
    Cursor = crHandPoint
    Anchors = [akLeft, akRight]
    Caption = 'Simpan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
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
  object QProp2: TUniQuery
    Connection = DM.dbSrv
    Left = 64
    Top = 104
  end
  object dsQProp2: TUniDataSource
    DataSet = QProp2
    Left = 64
    Top = 128
  end
  object QProp1: TUniQuery
    Connection = DM.dbSrv
    Left = 96
    Top = 104
  end
  object dsQProp1: TUniDataSource
    DataSet = QProp1
    Left = 96
    Top = 128
  end
end
