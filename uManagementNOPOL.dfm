object fManagementNOPOL: TfManagementNOPOL
  Left = 271
  Top = 130
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'MANAGEMENT NOPOL'
  ClientHeight = 449
  ClientWidth = 1038
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
    1038
    449)
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 191
    Height = 23
    Caption = 'Daftar List No Polisi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 8
    Top = 28
    Width = 1027
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object Shape2: TShape
    Left = 8
    Top = 173
    Width = 1027
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object Label2: TLabel
    Left = 592
    Top = 136
    Width = 138
    Height = 23
    Caption = 'Jumlah Record :'
  end
  object lRecord: TLabel
    Left = 735
    Top = 136
    Width = 33
    Height = 23
    Caption = 'XXX'
  end
  object Label3: TLabel
    Left = 592
    Top = 31
    Width = 410
    Height = 64
    Caption = 
      'Pembatalan Penggunaan NOPOL'#13#10'-----------------------------------' +
      '------------------'#13#10'1. Cari Data NOPOL'#13#10'2. Klik kanan pada list ' +
      'data kemudian "Pembatalan Penggunaan NOPOL"'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cxGrid: TcxGrid
    Left = 8
    Top = 179
    Width = 1028
    Height = 270
    Anchors = [akLeft, akTop, akRight, akBottom]
    PopupMenu = PopupMenu1
    TabOrder = 0
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.GridModeBufferCount = 1000
      DataController.DataSource = dsQ
      DataController.Filter.PercentWildcard = '*'
      DataController.Filter.UnderscoreWildcard = '?'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skCount
          FieldName = 'KD_WILAYAH'
          Column = cxGridDBTableView1Column1
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
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 45
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      Styles.StyleSheet = DM.SyteAku
      object cxGridDBTableView1Column1: TcxGridDBColumn
        Caption = 'KD Wilayah'
        DataBinding.FieldName = 'KD_WILAYAH'
        Options.ShowEditButtons = isebAlways
        Width = 89
      end
      object cxGridDBTableView1Column2: TcxGridDBColumn
        Caption = 'No Urut'
        DataBinding.FieldName = 'NOURUT'
        Width = 126
      end
      object cxGridDBTableView1Column3: TcxGridDBColumn
        Caption = 'Huruf Seri'
        DataBinding.FieldName = 'HSERI'
        Width = 113
      end
      object cxGridDBTableView1Column4: TcxGridDBColumn
        Caption = 'No Polisi'
        DataBinding.FieldName = 'NOPOL'
        Width = 167
      end
      object cxGridDBTableView1Column6: TcxGridDBColumn
        Caption = 'Kabutapen'
        DataBinding.FieldName = 'KABUPATEN'
        Width = 257
      end
      object cxGridDBTableView1Column5: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS'
        Width = 231
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 413
    Top = 42
    Width = 168
    Height = 126
    Cursor = crHandPoint
    Caption = 'Cari Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = cxButton1Click
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
  object cbKdDepan: TComboBox
    Left = 287
    Top = 42
    Width = 115
    Height = 31
    BevelInner = bvNone
    BevelKind = bkFlat
    CharCase = ecUpperCase
    Ctl3D = False
    ItemHeight = 23
    ParentCtl3D = False
    TabOrder = 2
    OnDropDown = cbKdDepanDropDown
  end
  object rbKodeDepan: TcxRadioButton
    Left = 10
    Top = 43
    Width = 158
    Height = 25
    Caption = 'Kode Wilayah'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = rbKodeDepanClick
    Transparent = True
  end
  object rbStatus: TcxRadioButton
    Left = 10
    Top = 78
    Width = 158
    Height = 25
    Caption = 'Status'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = rbStatusClick
    Transparent = True
  end
  object cbStatus: TComboBox
    Left = 144
    Top = 74
    Width = 258
    Height = 31
    BevelInner = bvNone
    BevelKind = bkFlat
    CharCase = ecUpperCase
    Ctl3D = False
    ItemHeight = 23
    ParentCtl3D = False
    TabOrder = 5
    Items.Strings = (
      'BELUM TERPAKAI'
      'SUDAH TERPAKAI'
      'NOPOL DIPESAN/REKOM')
  end
  object rbKabupaten: TcxRadioButton
    Left = 10
    Top = 110
    Width = 158
    Height = 25
    Caption = 'Kabupaten'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = rbKabupatenClick
    Transparent = True
  end
  object cbKabupeten: TComboBox
    Left = 144
    Top = 106
    Width = 258
    Height = 31
    BevelInner = bvNone
    BevelKind = bkFlat
    CharCase = ecUpperCase
    Ctl3D = False
    ItemHeight = 23
    ParentCtl3D = False
    TabOrder = 7
  end
  object rbNOPOL: TcxRadioButton
    Left = 10
    Top = 139
    Width = 158
    Height = 25
    Caption = 'NOPOL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = rbNOPOLClick
    Transparent = True
  end
  object eNOPOL: TcxTextEdit
    Left = 143
    Top = 137
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
    Width = 261
  end
  object Button1: TButton
    Left = 690
    Top = 105
    Width = 97
    Height = 31
    Caption = 'Last Record'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 590
    Top = 105
    Width = 97
    Height = 31
    Caption = 'First Record'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = Button2Click
  end
  object dsQ: TUniDataSource
    DataSet = Q
    Left = 584
    Top = 182
  end
  object Q: TUniQuery
    Connection = DM.dbSrv
    SQL.Strings = (
      'select * from t_nopol_bank')
    Left = 584
    Top = 158
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 272
    object PEMBATALANPENGGUNAANNOPOL1: TMenuItem
      Caption = 'PEMBATALAN PENGGUNAAN NOPOL'
      OnClick = PEMBATALANPENGGUNAANNOPOL1Click
    end
  end
end
