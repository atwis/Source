object fEditDataBPKB: TfEditDataBPKB
  Left = 243
  Top = 37
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'EDIT DATA BPKB'
  ClientHeight = 639
  ClientWidth = 936
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
    936
    639)
  PixelsPerInch = 96
  TextHeight = 23
  object Shape1: TShape
    Left = 4
    Top = 28
    Width = 926
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object lJudul: TLabel
    Left = 8
    Top = 3
    Width = 162
    Height = 23
    Caption = 'EDIT DATA BPKB'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object cxPageControl1: TcxPageControl
    Left = 4
    Top = 32
    Width = 928
    Height = 604
    ActivePage = cxTabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    Style = 8
    TabOrder = 0
    OnChange = cxPageControl1Change
    ClientRectBottom = 604
    ClientRectRight = 928
    ClientRectTop = 34
    object cxTabSheet1: TcxTabSheet
      Caption = 'Pencarian Data'
      ImageIndex = 0
      DesignSize = (
        928
        570)
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 72
        Height = 23
        Caption = 'No BPKB'
        Transparent = True
      end
      object Label2: TLabel
        Left = 24
        Top = 64
        Width = 111
        Height = 23
        Caption = 'No Reg BPKB'
        Transparent = True
      end
      object Label3: TLabel
        Left = 24
        Top = 105
        Width = 69
        Height = 23
        Caption = 'No Polisi'
        Transparent = True
      end
      object Label4: TLabel
        Left = 24
        Top = 146
        Width = 92
        Height = 23
        Caption = 'No Rangka'
        Transparent = True
      end
      object Label5: TLabel
        Left = 24
        Top = 187
        Width = 77
        Height = 23
        Caption = 'No Mesin'
        Transparent = True
      end
      object Label6: TLabel
        Left = 24
        Top = 228
        Width = 112
        Height = 23
        Caption = 'Nama Pemilik'
        Transparent = True
      end
      object Label7: TLabel
        Left = 24
        Top = 269
        Width = 82
        Height = 23
        Caption = 'No Faktur'
        Transparent = True
      end
      object Shape2: TShape
        Left = 2
        Top = 321
        Width = 926
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Pen.Color = clWhite
      end
      object Label8: TLabel
        Left = 24
        Top = 329
        Width = 184
        Height = 23
        Caption = 'Data Yang Ditemukan'
        Transparent = True
      end
      object cxGrid: TcxGrid
        Left = 4
        Top = 358
        Width = 919
        Height = 208
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Cancel.Visible = True
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          OnCellDblClick = cxGridDBTableView1CellDblClick
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
          FilterRow.ApplyChanges = fracImmediately
          NewItemRow.SeparatorColor = clYellow
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 45
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 15
          Styles.StyleSheet = DM.SyteAku
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'No BPKB'
            DataBinding.FieldName = 'NO_BPKB'
            Options.Editing = False
            Options.ShowEditButtons = isebAlways
            Width = 148
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = 'No Reg BPKB'
            DataBinding.FieldName = 'NREG_BPKB'
            Options.Editing = False
            Width = 224
          end
          object cxGridDBTableView1Column3: TcxGridDBColumn
            Caption = 'Tgl BPKB'
            DataBinding.FieldName = 'TGL_BPKB'
            Options.Editing = False
            Width = 155
          end
          object cxGridDBTableView1Column7: TcxGridDBColumn
            Caption = 'No Polisi'
            DataBinding.FieldName = 'NO_POLISI'
            Width = 127
          end
          object cxGridDBTableView1Column13: TcxGridDBColumn
            Caption = 'No Faktur'
            DataBinding.FieldName = 'NO_FAKTUR'
            Width = 194
          end
          object cxGridDBTableView1Column16: TcxGridDBColumn
            Caption = 'Tgl Faktur'
            DataBinding.FieldName = 'TGL_FAKTUR'
            Width = 136
          end
          object cxGridDBTableView1Column5: TcxGridDBColumn
            Caption = 'No Rangka'
            DataBinding.FieldName = 'NO_RANGKA'
            Options.Editing = False
            Width = 231
          end
          object cxGridDBTableView1Column6: TcxGridDBColumn
            Caption = 'No Mesin'
            DataBinding.FieldName = 'NO_MESIN'
            Options.Editing = False
            Width = 191
          end
          object cxGridDBTableView1Column8: TcxGridDBColumn
            Caption = 'Merk'
            DataBinding.FieldName = 'MERK_NAMA'
            Width = 137
          end
          object cxGridDBTableView1Column9: TcxGridDBColumn
            DataBinding.FieldName = 'TIPE'
            Width = 146
          end
          object cxGridDBTableView1Column10: TcxGridDBColumn
            Caption = 'JENIS'
            DataBinding.FieldName = 'JENIS_NAMA'
            Width = 138
          end
          object cxGridDBTableView1Column11: TcxGridDBColumn
            Caption = 'MODEL'
            DataBinding.FieldName = 'MODEL_NAMA'
            Width = 181
          end
          object cxGridDBTableView1Column12: TcxGridDBColumn
            Caption = 'WARNA'
            DataBinding.FieldName = 'WARNA_NAMA'
            Width = 171
          end
          object cxGridDBTableView1Column14: TcxGridDBColumn
            Caption = 'NAMA PEMILIK'
            DataBinding.FieldName = 'NAMA_PEMILIK'
            Width = 264
          end
          object cxGridDBTableView1Column15: TcxGridDBColumn
            Caption = 'ALAMAT PEMILIK'
            DataBinding.FieldName = 'ALAMAT_PEMILIK'
            Width = 365
          end
          object cxGridDBTableView1Column4: TcxGridDBColumn
            Caption = 'STATUS'
            DataBinding.FieldName = 'BPKB_STATUS'
            Width = 121
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cbNoBPKB: TcxComboBox
        Left = 152
        Top = 19
        Properties.Items.Strings = (
          'Sama Dengan'
          'Mengandung')
        TabOrder = 1
        Text = 'Sama Dengan'
        Width = 195
      end
      object cbNRegBPKB: TcxComboBox
        Left = 152
        Top = 60
        Properties.Items.Strings = (
          'Sama Dengan'
          'Mengandung')
        TabOrder = 2
        Text = 'Sama Dengan'
        Width = 195
      end
      object cbNoPolisi: TcxComboBox
        Left = 152
        Top = 101
        Properties.Items.Strings = (
          'Sama Dengan'
          'Mengandung')
        TabOrder = 3
        Text = 'Sama Dengan'
        Width = 195
      end
      object cbNoRangka: TcxComboBox
        Left = 152
        Top = 143
        Properties.Items.Strings = (
          'Sama Dengan'
          'Mengandung')
        TabOrder = 4
        Text = 'Sama Dengan'
        Width = 195
      end
      object cbNoMesin: TcxComboBox
        Left = 152
        Top = 184
        Properties.Items.Strings = (
          'Sama Dengan'
          'Mengandung')
        TabOrder = 5
        Text = 'Sama Dengan'
        Width = 195
      end
      object cbNamaPemilik: TcxComboBox
        Left = 152
        Top = 225
        Properties.Items.Strings = (
          'Sama Dengan'
          'Mengandung')
        TabOrder = 6
        Text = 'Sama Dengan'
        Width = 195
      end
      object cbNoFaktur: TcxComboBox
        Left = 152
        Top = 267
        Properties.Items.Strings = (
          'Sama Dengan'
          'Mengandung')
        TabOrder = 7
        Text = 'Sama Dengan'
        Width = 195
      end
      object eNoBPKB: TcxTextEdit
        Left = 361
        Top = 19
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = False
        Properties.OnChange = eNoBPKBPropertiesChange
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
      object eNRegBPKB: TcxTextEdit
        Left = 361
        Top = 60
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = False
        Properties.OnChange = eNRegBPKBPropertiesChange
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
      object eNoPolisi: TcxTextEdit
        Left = 361
        Top = 101
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = False
        Properties.OnChange = eNoPolisiPropertiesChange
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
      object eNoRangka: TcxTextEdit
        Left = 361
        Top = 143
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = False
        Properties.OnChange = eNoRangkaPropertiesChange
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
      object eNoMesin: TcxTextEdit
        Left = 361
        Top = 184
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = False
        Properties.OnChange = eNoMesinPropertiesChange
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
      object eNamaPemilik: TcxTextEdit
        Left = 361
        Top = 225
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = False
        Properties.OnChange = eNamaPemilikPropertiesChange
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 13
        Width = 315
      end
      object eNoFaktur: TcxTextEdit
        Left = 361
        Top = 267
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = False
        Properties.OnChange = eNoFakturPropertiesChange
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 14
        Width = 315
      end
      object bCari: TcxButton
        Left = 694
        Top = 19
        Width = 230
        Height = 87
        Cursor = crHandPoint
        Caption = 'Cari Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
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
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Detail Data'
      ImageIndex = 1
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 0
        Width = 928
        Height = 570
        ActivePage = cxTabSheet3
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 570
        ClientRectRight = 928
        ClientRectTop = 34
        object cxTabSheet3: TcxTabSheet
          Caption = 'Data Utama BPKB'
          ImageIndex = 0
          DesignSize = (
            928
            536)
          object cxDBVerticalGrid2: TcxDBVerticalGrid
            Left = 2
            Top = 5
            Width = 924
            Height = 500
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = []
            OptionsView.RowHeaderWidth = 249
            ParentFont = False
            Styles.Background = DM.cxStyle1
            Styles.Content = DM.cxStyle6
            Styles.Inactive = DM.cxStyle12
            Styles.Selection = DM.cxStyle24
            Styles.Category = DM.cxStyle12
            Styles.Header = DM.cxStyle14
            Styles.IncSearch = DM.cxStyle22
            TabOrder = 0
            DataController.DataSource = dsQDataUtama
            Version = 1
            object cxDBVerticalGrid2NO_BPKB: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'NO_BPKB'
              ID = 0
              ParentID = -1
              Index = 0
              Version = 1
            end
            object cxDBVerticalGrid2TGL_BPKB: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxDateEditProperties'
              Properties.DataBinding.FieldName = 'TGL_BPKB'
              ID = 1
              ParentID = -1
              Index = 1
              Version = 1
            end
            object cxDBVerticalGrid2TGL_FAKTUR: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxDateEditProperties'
              Properties.DataBinding.FieldName = 'TGL_FAKTUR'
              ID = 2
              ParentID = -1
              Index = 2
              Version = 1
            end
            object cxDBVerticalGrid2NO_RANGKA: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'NO_RANGKA'
              ID = 3
              ParentID = -1
              Index = 3
              Version = 1
            end
            object cxDBVerticalGrid2NO_MESIN: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'NO_MESIN'
              ID = 4
              ParentID = -1
              Index = 4
              Version = 1
            end
            object cxDBVerticalGrid2NREG_BPKB: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'NREG_BPKB'
              ID = 5
              ParentID = -1
              Index = 5
              Version = 1
            end
            object cxDBVerticalGrid2JML_RODA: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'JML_RODA'
              ID = 6
              ParentID = -1
              Index = 6
              Version = 1
            end
            object cxDBVerticalGrid2THN_BUAT: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'THN_BUAT'
              ID = 7
              ParentID = -1
              Index = 7
              Version = 1
            end
            object cxDBVerticalGrid2THN_RAKIT: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'THN_RAKIT'
              ID = 8
              ParentID = -1
              Index = 8
              Version = 1
            end
            object cxDBVerticalGrid2JML_SUMBU: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'JML_SUMBU'
              ID = 9
              ParentID = -1
              Index = 9
              Version = 1
            end
            object cxDBVerticalGrid2VOL_SILINDER: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'VOL_SILINDER'
              ID = 10
              ParentID = -1
              Index = 10
              Version = 1
            end
            object cxDBVerticalGrid2BB_ID: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.EditProperties.CharCase = ecUpperCase
              Properties.EditProperties.DropDownListStyle = lsFixedList
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.KeyFieldNames = 'BB_ID'
              Properties.EditProperties.ListColumns = <
                item
                  Caption = 'BAHAN BAKAR'
                  FieldName = 'bb_nama'
                end>
              Properties.EditProperties.ListSource = dsQBB
              Properties.DataBinding.FieldName = 'BB_ID'
              ID = 11
              ParentID = -1
              Index = 11
              Version = 1
            end
            object cxDBVerticalGrid2MERK_ID: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.EditProperties.CharCase = ecUpperCase
              Properties.EditProperties.DropDownListStyle = lsFixedList
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.KeyFieldNames = 'MERK_ID'
              Properties.EditProperties.ListColumns = <
                item
                  Caption = 'MERK'
                  FieldName = 'MERK_NAMA_R'
                end>
              Properties.EditProperties.ListSource = dsQMerk
              Properties.DataBinding.FieldName = 'MERK_ID'
              ID = 12
              ParentID = -1
              Index = 12
              Version = 1
            end
            object cxDBVerticalGrid2TIPE: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'TIPE'
              ID = 13
              ParentID = -1
              Index = 13
              Version = 1
            end
            object cxDBVerticalGrid2JENIS_ID: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.EditProperties.KeyFieldNames = 'JENIS_ID'
              Properties.EditProperties.ListColumns = <
                item
                  Caption = 'JENIS'
                  FieldName = 'JENIS_NAMA'
                end>
              Properties.EditProperties.ListSource = dsQJenis
              Properties.DataBinding.FieldName = 'JENIS_ID'
              ID = 14
              ParentID = -1
              Index = 14
              Version = 1
            end
            object cxDBVerticalGrid2NO_UJI_TIPE: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'NO_UJI_TIPE'
              ID = 15
              ParentID = -1
              Index = 15
              Version = 1
            end
            object cxDBVerticalGrid2NO_UJI_BERKALA: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'NO_UJI_BERKALA'
              ID = 16
              ParentID = -1
              Index = 16
              Version = 1
            end
            object cxDBVerticalGrid2JD_ID: TcxDBEditorRow
              Properties.Caption = 'Jns Daftaran'
              Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.EditProperties.DropDownListStyle = lsFixedList
              Properties.EditProperties.KeyFieldNames = 'JD_ID'
              Properties.EditProperties.ListColumns = <
                item
                  Caption = 'JNS DAFTARAN'
                  FieldName = 'JD_NAMA'
                end>
              Properties.EditProperties.ListSource = dsQJD
              Properties.DataBinding.FieldName = 'JD_ID'
              ID = 17
              ParentID = -1
              Index = 17
              Version = 1
            end
            object cxDBVerticalGrid2TEMPAT_KELUAR: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'TEMPAT_KELUAR'
              ID = 18
              ParentID = -1
              Index = 18
              Version = 1
            end
            object cxDBVerticalGrid2NO_PABEAN: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'NO_PABEAN'
              ID = 19
              ParentID = -1
              Index = 19
              Version = 1
            end
            object cxDBVerticalGrid2TGL_PABEAN: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'TGL_PABEAN'
              ID = 20
              ParentID = -1
              Index = 20
              Version = 1
            end
            object cxDBVerticalGrid2PELABUHAN: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'PELABUHAN'
              ID = 21
              ParentID = -1
              Index = 21
              Version = 1
            end
            object cxDBVerticalGrid2IMPMTHD_ID: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.EditProperties.KeyFieldNames = 'IMPMTHD_ID'
              Properties.EditProperties.ListColumns = <
                item
                  Caption = 'IMP Metode'
                  FieldName = 'IMPMTHD_NAME'
                end>
              Properties.EditProperties.ListSource = dsQImpMetode
              Properties.DataBinding.FieldName = 'IMPMTHD_ID'
              ID = 22
              ParentID = -1
              Index = 22
              Version = 1
            end
            object cxDBVerticalGrid2NO_FAKTUR: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'NO_FAKTUR'
              ID = 23
              ParentID = -1
              Index = 23
              Version = 1
            end
            object cxDBVerticalGrid2NO_CKD: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'NO_CKD'
              ID = 24
              ParentID = -1
              Index = 24
              Version = 1
            end
            object cxDBVerticalGrid2KETR_PABEAN: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'KETR_PABEAN'
              ID = 25
              ParentID = -1
              Index = 25
              Version = 1
            end
            object cxDBVerticalGrid2PRT_ID: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.EditProperties.KeyFieldNames = 'PRT_ID'
              Properties.EditProperties.ListColumns = <
                item
                  Caption = 'PERUNTUKAN'
                  FieldName = 'PRT_NAMA'
                end>
              Properties.EditProperties.ListSource = dsQPeruntukan
              Properties.DataBinding.FieldName = 'PRT_ID'
              ID = 26
              ParentID = -1
              Index = 26
              Version = 1
            end
            object cxDBVerticalGrid2BPKB_STATUS: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'BPKB_STATUS'
              ID = 27
              ParentID = -1
              Index = 27
              Version = 1
            end
            object cxDBVerticalGrid2DUP_NR_COUNT: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'DUP_NR_COUNT'
              ID = 28
              ParentID = -1
              Index = 28
              Version = 1
            end
            object cxDBVerticalGrid2DUP_NM_COUNT: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'DUP_NM_COUNT'
              ID = 29
              ParentID = -1
              Index = 29
              Version = 1
            end
            object cxDBVerticalGrid2INACTIVE_DATE: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'INACTIVE_DATE'
              ID = 30
              ParentID = -1
              Index = 30
              Version = 1
            end
            object cxDBVerticalGrid2CURRENT_HISTID: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'CURRENT_HISTID'
              ID = 31
              ParentID = -1
              Index = 31
              Version = 1
            end
            object cxDBVerticalGrid2TGL_PIB: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'TGL_PIB'
              ID = 32
              ParentID = -1
              Index = 32
              Version = 1
            end
            object cxDBVerticalGrid2NAMA_IMPORTIR: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'NAMA_IMPORTIR'
              ID = 33
              ParentID = -1
              Index = 33
              Version = 1
            end
            object cxDBVerticalGrid2IS_BBN2: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'IS_BBN2'
              ID = 34
              ParentID = -1
              Index = 34
              Version = 1
            end
            object cxDBVerticalGrid2NO_PIB: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'NO_PIB'
              ID = 35
              ParentID = -1
              Index = 35
              Version = 1
            end
            object cxDBVerticalGrid2POLDA_ID: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'POLDA_NAMA'
              ID = 36
              ParentID = -1
              Index = 36
              Version = 1
            end
            object cxDBVerticalGrid2POLRES_ID: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'POLRES_NAMA'
              ID = 37
              ParentID = -1
              Index = 37
              Version = 1
            end
            object cxDBVerticalGrid2NO_TPT: TcxDBEditorRow
              Properties.DataBinding.FieldName = 'NO_TPT'
              ID = 38
              ParentID = -1
              Index = 38
              Version = 1
            end
          end
          object DBNavigator1: TDBNavigator
            Left = 693
            Top = 506
            Width = 232
            Height = 29
            DataSource = dsQDataUtama
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
            Anchors = [akRight, akBottom]
            TabOrder = 1
          end
        end
        object cxTabSheet4: TcxTabSheet
          Caption = 'Status Penerbitan BPKB'
          ImageIndex = 1
          DesignSize = (
            928
            536)
          object cxDBVerticalGrid1: TcxDBVerticalGrid
            Left = 0
            Top = 0
            Width = 928
            Height = 502
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = []
            OptionsView.RowHeaderWidth = 249
            ParentFont = False
            Styles.Background = DM.cxStyle1
            Styles.Content = DM.cxStyle6
            Styles.Inactive = DM.cxStyle12
            Styles.Selection = DM.cxStyle24
            Styles.Category = DM.cxStyle12
            Styles.Header = DM.cxStyle14
            Styles.IncSearch = DM.cxStyle22
            TabOrder = 0
            DataController.DataSource = dsQPenerbitanBPKB
            Version = 1
            object cxCategoryPendaftaran: TcxCategoryRow
              Properties.Caption = 'Pendaftaran'
              ID = 0
              ParentID = -1
              Index = 0
              Version = 1
            end
            object cxDBMultiPendaftaran: TcxDBMultiEditorRow
              Properties.Editors = <
                item
                  Caption = 'Tanggal'
                  EditPropertiesClassName = 'TcxDateEditProperties'
                  DataBinding.FieldName = 'DAFTAR_DATE'
                end
                item
                  Caption = 'Oleh'
                  EditPropertiesClassName = 'TcxLookupComboBoxProperties'
                  EditProperties.DropDownListStyle = lsEditList
                  EditProperties.KeyFieldNames = 'OP_ID'
                  EditProperties.ListColumns = <
                    item
                      FieldName = 'OP_NAMA'
                    end>
                  EditProperties.ListSource = dsQOperator
                  DataBinding.FieldName = 'DAFTAR_BY'
                end>
              ID = 1
              ParentID = -1
              Index = 1
              Version = 1
            end
            object cxCatergoryEntryData: TcxCategoryRow
              Properties.Caption = 'Entry Data'
              ID = 2
              ParentID = -1
              Index = 2
              Version = 1
            end
            object cxDBMultiEntryData: TcxDBMultiEditorRow
              Properties.Editors = <
                item
                  Caption = 'Tanggal'
                  EditPropertiesClassName = 'TcxDateEditProperties'
                  DataBinding.FieldName = 'ENTRI_DATE'
                end
                item
                  Caption = 'Oleh'
                  EditPropertiesClassName = 'TcxLookupComboBoxProperties'
                  EditProperties.DropDownListStyle = lsEditList
                  EditProperties.KeyFieldNames = 'OP_ID'
                  EditProperties.ListColumns = <
                    item
                      FieldName = 'OP_NAMA'
                    end>
                  EditProperties.ListSource = dsQOperator
                  DataBinding.FieldName = 'ENTRI_BY'
                end>
              ID = 3
              ParentID = -1
              Index = 3
              Version = 1
            end
            object cxCategoryCetakKI: TcxCategoryRow
              Properties.Caption = 'Cetak Kartu Induk'
              ID = 4
              ParentID = -1
              Index = 4
              Version = 1
            end
            object cxDBMultiKI: TcxDBMultiEditorRow
              Properties.Editors = <
                item
                  Caption = 'Tanggal'
                  EditPropertiesClassName = 'TcxDateEditProperties'
                  DataBinding.FieldName = 'PRINT_KI_DATE'
                end
                item
                  Caption = 'Oleh'
                  EditPropertiesClassName = 'TcxLookupComboBoxProperties'
                  EditProperties.DropDownListStyle = lsEditList
                  EditProperties.KeyFieldNames = 'OP_ID'
                  EditProperties.ListColumns = <
                    item
                      FieldName = 'OP_NAMA'
                    end>
                  EditProperties.ListSource = dsQOperator
                  DataBinding.FieldName = 'PRINT_KI_BY'
                end>
              ID = 5
              ParentID = -1
              Index = 5
              Version = 1
            end
            object cxCategoryVerifikasi: TcxCategoryRow
              Properties.Caption = 'Verifikasi'
              ID = 6
              ParentID = -1
              Index = 6
              Version = 1
            end
            object cxDBverifikasi: TcxDBMultiEditorRow
              Properties.Editors = <
                item
                  Caption = 'Tanggal'
                  EditPropertiesClassName = 'TcxDateEditProperties'
                  DataBinding.FieldName = 'VERIFY_DATE'
                end
                item
                  Caption = 'Oleh'
                  EditPropertiesClassName = 'TcxLookupComboBoxProperties'
                  EditProperties.DropDownListStyle = lsEditList
                  EditProperties.KeyFieldNames = 'OP_ID'
                  EditProperties.ListColumns = <
                    item
                      FieldName = 'OP_NAMA'
                    end>
                  EditProperties.ListSource = dsQOperator
                  DataBinding.FieldName = 'VERIFY_BY'
                end>
              ID = 7
              ParentID = -1
              Index = 7
              Version = 1
            end
            object cxCategoryCetakBPKB: TcxCategoryRow
              Properties.Caption = 'Cetak BPKB'
              ID = 8
              ParentID = -1
              Index = 8
              Version = 1
            end
            object cxDBMultiCetakBPKB: TcxDBMultiEditorRow
              Properties.Editors = <
                item
                  Caption = 'Tanggal'
                  EditPropertiesClassName = 'TcxDateEditProperties'
                  DataBinding.FieldName = 'PRINT_BPKB_DATE'
                end
                item
                  Caption = 'Oleh'
                  EditPropertiesClassName = 'TcxLookupComboBoxProperties'
                  EditProperties.DropDownListStyle = lsEditList
                  EditProperties.KeyFieldNames = 'OP_ID'
                  EditProperties.ListColumns = <
                    item
                      FieldName = 'OP_NAMA'
                    end>
                  EditProperties.ListSource = dsQOperator
                  DataBinding.FieldName = 'PRINT_BPKB_BY'
                end>
              ID = 9
              ParentID = -1
              Index = 9
              Version = 1
            end
            object cxCategoryTandaTeriam: TcxCategoryRow
              Properties.Caption = 'Pencetakan Tanda Terima'
              ID = 10
              ParentID = -1
              Index = 10
              Version = 1
            end
            object cxDBMultiEditorTandaTerima: TcxDBMultiEditorRow
              Properties.Editors = <
                item
                  Caption = 'Tanggal'
                  EditPropertiesClassName = 'TcxDateEditProperties'
                  DataBinding.FieldName = 'TT_DATE'
                end
                item
                  Caption = 'Oleh'
                  EditPropertiesClassName = 'TcxLookupComboBoxProperties'
                  EditProperties.DropDownListStyle = lsEditList
                  EditProperties.KeyFieldNames = 'OP_ID'
                  EditProperties.ListColumns = <
                    item
                      FieldName = 'OP_NAMA'
                    end>
                  EditProperties.ListSource = dsQOperator
                  DataBinding.FieldName = 'TT_BY'
                end>
              ID = 11
              ParentID = -1
              Index = 11
              Version = 1
            end
            object cxCategoryPenyerahan: TcxCategoryRow
              Properties.Caption = 'Penyerahan'
              ID = 12
              ParentID = -1
              Index = 12
              Version = 1
            end
            object cxMultiPenyerahan: TcxDBMultiEditorRow
              Properties.Editors = <
                item
                  Caption = 'Tanggal'
                  EditPropertiesClassName = 'TcxDateEditProperties'
                  DataBinding.FieldName = 'DELIVER_DATE'
                end
                item
                  Caption = 'Oleh'
                  EditPropertiesClassName = 'TcxLookupComboBoxProperties'
                  EditProperties.DropDownListStyle = lsEditList
                  EditProperties.KeyFieldNames = 'OP_ID'
                  EditProperties.ListColumns = <
                    item
                      FieldName = 'OP_NAMA'
                    end>
                  EditProperties.ListSource = dsQOperator
                  DataBinding.FieldName = 'DELIVER_BY'
                end>
              ID = 13
              ParentID = -1
              Index = 13
              Version = 1
            end
          end
          object DBNavigator2: TDBNavigator
            Left = 693
            Top = 506
            Width = 232
            Height = 29
            DataSource = dsQPenerbitanBPKB
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
            Anchors = [akRight, akBottom]
            TabOrder = 1
          end
        end
        object cxTabSheet6: TcxTabSheet
          Caption = 'Pendaftaran'
          ImageIndex = 3
          DesignSize = (
            928
            536)
          object cxDBVerticalGrid3: TcxDBVerticalGrid
            Left = 2
            Top = 5
            Width = 924
            Height = 500
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = []
            OptionsView.RowHeaderWidth = 249
            ParentFont = False
            Styles.Background = DM.cxStyle1
            Styles.Content = DM.cxStyle6
            Styles.Inactive = DM.cxStyle12
            Styles.Selection = DM.cxStyle24
            Styles.Category = DM.cxStyle12
            Styles.Header = DM.cxStyle14
            Styles.IncSearch = DM.cxStyle22
            TabOrder = 0
            DataController.DataSource = dsQPendaftaran
            Version = 1
            object cxDBVerticalGrid3CategoryRow1: TcxCategoryRow
              Properties.Caption = 'PENDAFTARAN'
              ID = 0
              ParentID = -1
              Index = 0
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow1: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.DataBinding.FieldName = 'NO_RANGKA'
              ID = 1
              ParentID = -1
              Index = 1
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow2: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.DataBinding.FieldName = 'DUP_NR_COUNT'
              ID = 2
              ParentID = -1
              Index = 2
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow3: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxDateEditProperties'
              Properties.DataBinding.FieldName = 'TGL_DAFTAR'
              ID = 3
              ParentID = -1
              Index = 3
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow4: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.DataBinding.FieldName = 'BERKAS_ID'
              ID = 4
              ParentID = -1
              Index = 4
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow5: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.EditProperties.KeyFieldNames = 'PEMOHON_ID'
              Properties.EditProperties.ListColumns = <
                item
                  FieldName = 'PEMOHON_NAMA'
                end>
              Properties.EditProperties.ListSource = dsQPemohon
              Properties.DataBinding.FieldName = 'PEMOHON_ID'
              ID = 5
              ParentID = -1
              Index = 5
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow6: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxDateEditProperties'
              Properties.DataBinding.FieldName = 'TGL_ENTRI'
              ID = 6
              ParentID = -1
              Index = 6
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow7: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.EditProperties.KeyFieldNames = 'OP_ID'
              Properties.EditProperties.ListColumns = <
                item
                  FieldName = 'OP_NAMA'
                end>
              Properties.EditProperties.ListSource = dsQOperator
              Properties.DataBinding.FieldName = 'OP_ID'
              ID = 7
              ParentID = -1
              Index = 7
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow8: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.DataBinding.FieldName = 'LOKET_NO'
              ID = 8
              ParentID = -1
              Index = 8
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow9: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.DataBinding.FieldName = 'TIPE_DAFTARAN'
              ID = 9
              ParentID = -1
              Index = 9
              Version = 1
            end
            object cxDBVerticalGrid3CategoryRow2: TcxCategoryRow
              Properties.Caption = 'PAYMENT'
              ID = 10
              ParentID = -1
              Index = 10
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow10: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.DataBinding.FieldName = 'PMT_PROD'
              ID = 11
              ParentID = -1
              Index = 11
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow11: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.DataBinding.FieldName = 'BARCODE'
              ID = 12
              ParentID = -1
              Index = 12
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow12: TcxDBEditorRow
              Properties.EditPropertiesClassName = 'TcxDateEditProperties'
              Properties.DataBinding.FieldName = 'CONF_DATE'
              ID = 13
              ParentID = -1
              Index = 13
              Version = 1
            end
          end
          object DBNavigator3: TDBNavigator
            Left = 693
            Top = 506
            Width = 232
            Height = 29
            DataSource = dsQPendaftaran
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
            Anchors = [akRight, akBottom]
            TabOrder = 1
          end
        end
        object cxTabSheet7: TcxTabSheet
          Caption = 'History'
          ImageIndex = 4
          object cxPageControl3: TcxPageControl
            Left = 0
            Top = 0
            Width = 928
            Height = 536
            ActivePage = cxTabSheet5
            Align = alClient
            NavigatorPosition = npLeftBottom
            TabOrder = 0
            TabPosition = tpBottom
            ClientRectBottom = 502
            ClientRectRight = 928
            ClientRectTop = 0
            object cxTabSheet5: TcxTabSheet
              Caption = 'Detail History'
              ImageIndex = 0
              DesignSize = (
                928
                502)
              object cxGrid2: TcxGrid
                Left = 2
                Top = 2
                Width = 925
                Height = 264
                Anchors = [akLeft, akTop, akRight, akBottom]
                TabOrder = 0
                object cxGridDBTableView3: TcxGridDBTableView
                  NavigatorButtons.ConfirmDelete = False
                  NavigatorButtons.PriorPage.Visible = False
                  NavigatorButtons.NextPage.Visible = False
                  NavigatorButtons.Cancel.Visible = True
                  NavigatorButtons.SaveBookmark.Visible = False
                  NavigatorButtons.GotoBookmark.Visible = False
                  NavigatorButtons.Filter.Visible = False
                  OnCellDblClick = cxGridDBTableView3CellDblClick
                  DataController.DataSource = dsQHistory
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
                      Column = cxGridDBColumn5
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
                  OptionsData.Appending = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 45
                  OptionsView.Indicator = True
                  OptionsView.IndicatorWidth = 15
                  Styles.StyleSheet = DM.SyteAku
                  object cxGridDBColumn5: TcxGridDBColumn
                    DataBinding.FieldName = 'HIST_ID'
                    Options.Editing = False
                    Options.ShowEditButtons = isebAlways
                    Width = 120
                  end
                  object cxGridDBColumn6: TcxGridDBColumn
                    DataBinding.FieldName = 'BPKB_ID'
                    Options.Editing = False
                    Width = 164
                  end
                  object cxGridDBColumn7: TcxGridDBColumn
                    DataBinding.FieldName = 'HIST_DATE'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Width = 162
                  end
                  object cxGridDBColumn8: TcxGridDBColumn
                    DataBinding.FieldName = 'OP_ID'
                    PropertiesClassName = 'TcxLookupComboBoxProperties'
                    Properties.DropDownListStyle = lsEditList
                    Properties.KeyFieldNames = 'OP_ID'
                    Properties.ListColumns = <
                      item
                        FieldName = 'OP_NAMA'
                      end>
                    Properties.ListSource = dsQOperator
                    Width = 127
                  end
                  object cxGridDBColumn9: TcxGridDBColumn
                    DataBinding.FieldName = 'HIST_TITLE'
                    Width = 194
                  end
                  object cxGridDBColumn10: TcxGridDBColumn
                    DataBinding.FieldName = 'NREG'
                    Width = 136
                  end
                  object cxGridDBColumn11: TcxGridDBColumn
                    DataBinding.FieldName = 'REG_DATE'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Width = 155
                  end
                  object cxGridDBColumn12: TcxGridDBColumn
                    DataBinding.FieldName = 'PRINTED_BY'
                    PropertiesClassName = 'TcxLookupComboBoxProperties'
                    Properties.DropDownListStyle = lsEditList
                    Properties.KeyFieldNames = 'OP_ID'
                    Properties.ListColumns = <
                      item
                        FieldName = 'OP_NAMA'
                      end>
                    Properties.ListSource = dsQOperator
                    Width = 191
                  end
                  object cxGridDBColumn16: TcxGridDBColumn
                    DataBinding.FieldName = 'PRINTED_DATE'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Width = 153
                  end
                  object cxGridDBColumn13: TcxGridDBColumn
                    DataBinding.FieldName = 'DASAR_PERUBAHAN'
                    Width = 287
                  end
                  object cxGridDBColumn14: TcxGridDBColumn
                    DataBinding.FieldName = 'PRB_ID'
                    PropertiesClassName = 'TcxLookupComboBoxProperties'
                    Properties.DropDownListStyle = lsEditList
                    Properties.KeyFieldNames = 'PRB_ID'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NAMA_PRB'
                      end>
                    Properties.ListSource = dsqPRB
                    Width = 146
                  end
                  object cxGridDBColumn15: TcxGridDBColumn
                    DataBinding.FieldName = 'PEMOHON'
                    PropertiesClassName = 'TcxLookupComboBoxProperties'
                    Properties.DropDownListStyle = lsEditList
                    Properties.KeyFieldNames = 'PEMOHON_ID'
                    Properties.ListColumns = <
                      item
                        FieldName = 'PEMOHON_NAMA'
                      end>
                    Properties.ListSource = dsQPemohon
                    Width = 138
                  end
                  object cxGridDBColumn17: TcxGridDBColumn
                    DataBinding.FieldName = 'PRINTED_KI_BY'
                    PropertiesClassName = 'TcxLookupComboBoxProperties'
                    Properties.DropDownListStyle = lsEditList
                    Properties.KeyFieldNames = 'OP_ID'
                    Properties.ListColumns = <
                      item
                        FieldName = 'OP_NAMA'
                      end>
                    Properties.ListSource = dsQOperator
                    Width = 156
                  end
                  object cxGridDBColumn18: TcxGridDBColumn
                    DataBinding.FieldName = 'PRINTED_KI_DATE'
                    PropertiesClassName = 'TcxDateEditProperties'
                    Width = 264
                  end
                end
                object cxGridLevel3: TcxGridLevel
                  GridView = cxGridDBTableView3
                end
              end
              object cxPageControl4: TcxPageControl
                Left = 0
                Top = 309
                Width = 929
                Height = 190
                ActivePage = cxTabSheet18
                Anchors = [akLeft, akTop, akRight, akBottom]
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                ClientRectBottom = 190
                ClientRectRight = 929
                ClientRectTop = 30
                object cxTabSheet18: TcxTabSheet
                  Caption = 'Hist Nama Pemilik'
                  ImageIndex = 0
                  DesignSize = (
                    929
                    160)
                  object DBNavigator5: TDBNavigator
                    Left = 695
                    Top = 131
                    Width = 232
                    Height = 29
                    DataSource = dsQHistNamaPemilik
                    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
                    Anchors = [akRight, akBottom]
                    TabOrder = 0
                  end
                  object cxGrid8: TcxGrid
                    Left = 2
                    Top = 2
                    Width = 925
                    Height = 125
                    Anchors = [akLeft, akTop, akRight, akBottom]
                    TabOrder = 1
                    object cxGridDBTableView9: TcxGridDBTableView
                      NavigatorButtons.ConfirmDelete = False
                      NavigatorButtons.PriorPage.Visible = False
                      NavigatorButtons.NextPage.Visible = False
                      NavigatorButtons.Cancel.Visible = True
                      NavigatorButtons.SaveBookmark.Visible = False
                      NavigatorButtons.GotoBookmark.Visible = False
                      NavigatorButtons.Filter.Visible = False
                      DataController.DataSource = dsQHistNamaPemilik
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
                          Column = cxGridDBColumn28
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
                      OptionsData.Appending = True
                      OptionsView.Footer = True
                      OptionsView.GroupByBox = False
                      OptionsView.HeaderHeight = 25
                      OptionsView.Indicator = True
                      OptionsView.IndicatorWidth = 15
                      Styles.StyleSheet = DM.SyteAku
                      object cxGridDBColumn28: TcxGridDBColumn
                        DataBinding.FieldName = 'NO_IDENTITAS'
                        Options.ShowEditButtons = isebAlways
                        Width = 220
                      end
                      object cxGridDBColumn29: TcxGridDBColumn
                        DataBinding.FieldName = 'NAMA_PEMILIK'
                        Width = 328
                      end
                      object cxGridDBColumn30: TcxGridDBColumn
                        DataBinding.FieldName = 'PEKERJAAN_PEMILIK'
                        PropertiesClassName = 'TcxLookupComboBoxProperties'
                        Properties.DropDownListStyle = lsEditList
                        Properties.KeyFieldNames = 'PEKERJAAN_NAMA'
                        Properties.ListColumns = <
                          item
                            FieldName = 'PEKERJAAN_NAMA'
                          end>
                        Properties.ListSource = dsQPekerjaan
                        Width = 285
                      end
                      object cxGridDBTableView9Column1: TcxGridDBColumn
                        DataBinding.FieldName = 'NO_PONSEL'
                        Width = 177
                      end
                    end
                    object cxGridLevel9: TcxGridLevel
                      GridView = cxGridDBTableView9
                    end
                  end
                end
                object cxTabSheet19: TcxTabSheet
                  Caption = 'Hist Alamat Pemilik'
                  ImageIndex = 1
                  DesignSize = (
                    929
                    160)
                  object cxGrid3: TcxGrid
                    Left = -3
                    Top = 0
                    Width = 930
                    Height = 129
                    Anchors = [akLeft, akTop, akRight, akBottom]
                    TabOrder = 0
                    object cxGridDBTableView4: TcxGridDBTableView
                      NavigatorButtons.ConfirmDelete = False
                      NavigatorButtons.PriorPage.Visible = False
                      NavigatorButtons.NextPage.Visible = False
                      NavigatorButtons.Cancel.Visible = True
                      NavigatorButtons.SaveBookmark.Visible = False
                      NavigatorButtons.GotoBookmark.Visible = False
                      NavigatorButtons.Filter.Visible = False
                      DataController.DataSource = dsQHistAlamat
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
                          Column = cxGridDBColumn19
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
                      OptionsData.Appending = True
                      OptionsView.Footer = True
                      OptionsView.GroupByBox = False
                      OptionsView.HeaderHeight = 25
                      OptionsView.Indicator = True
                      OptionsView.IndicatorWidth = 15
                      Styles.StyleSheet = DM.SyteAku
                      object cxGridDBColumn19: TcxGridDBColumn
                        DataBinding.FieldName = 'ALAMAT_PEMILIK'
                        Options.ShowEditButtons = isebAlways
                        Width = 571
                      end
                      object cxGridDBColumn20: TcxGridDBColumn
                        DataBinding.FieldName = 'KODE_POS'
                        Width = 164
                      end
                      object cxGridDBColumn21: TcxGridDBColumn
                        DataBinding.FieldName = 'WILAYAH_ID'
                        PropertiesClassName = 'TcxLookupComboBoxProperties'
                        Properties.CharCase = ecUpperCase
                        Properties.DropDownListStyle = lsFixedList
                        Properties.ImmediatePost = True
                        Properties.KeyFieldNames = 'WILAYAH_ID'
                        Properties.ListColumns = <
                          item
                            FieldName = 'WILAYAH_NAMA'
                          end>
                        Properties.ListSource = dsQWilayah
                        Width = 162
                      end
                      object cxGridDBColumn22: TcxGridDBColumn
                        Caption = 'KELURAHAN'
                        DataBinding.FieldName = 'KEL_ID'
                        Width = 127
                      end
                      object cxGridDBColumn23: TcxGridDBColumn
                        Caption = 'KECAMATAN'
                        DataBinding.FieldName = 'KEC_ID'
                        Width = 194
                      end
                      object cxGridDBColumn24: TcxGridDBColumn
                        Caption = 'KABUPATEN'
                        DataBinding.FieldName = 'KAB_ID'
                        Width = 136
                      end
                      object cxGridDBColumn25: TcxGridDBColumn
                        Caption = 'PROPINSI'
                        DataBinding.FieldName = 'PROP_ID'
                        Width = 155
                      end
                    end
                    object cxGridLevel4: TcxGridLevel
                      GridView = cxGridDBTableView4
                    end
                  end
                  object DBNavigator6: TDBNavigator
                    Left = 695
                    Top = 131
                    Width = 232
                    Height = 29
                    DataSource = dsQHistAlamat
                    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
                    Anchors = [akRight, akBottom]
                    TabOrder = 1
                  end
                end
                object cxTabSheet20: TcxTabSheet
                  Caption = 'Hist Bentuk'
                  ImageIndex = 2
                  DesignSize = (
                    929
                    160)
                  object cxGrid4: TcxGrid
                    Left = 2
                    Top = 3
                    Width = 925
                    Height = 126
                    Anchors = [akLeft, akTop, akRight, akBottom]
                    TabOrder = 0
                    object cxGridDBTableView5: TcxGridDBTableView
                      NavigatorButtons.ConfirmDelete = False
                      NavigatorButtons.PriorPage.Visible = False
                      NavigatorButtons.NextPage.Visible = False
                      NavigatorButtons.Cancel.Visible = True
                      NavigatorButtons.SaveBookmark.Visible = False
                      NavigatorButtons.GotoBookmark.Visible = False
                      NavigatorButtons.Filter.Visible = False
                      DataController.DataSource = dsQBentuk
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
                          Column = cxGridDBColumn26
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
                      OptionsData.Appending = True
                      OptionsView.Footer = True
                      OptionsView.GroupByBox = False
                      OptionsView.HeaderHeight = 25
                      OptionsView.Indicator = True
                      OptionsView.IndicatorWidth = 15
                      Styles.StyleSheet = DM.SyteAku
                      object cxGridDBColumn26: TcxGridDBColumn
                        Caption = 'MODEL'
                        DataBinding.FieldName = 'MODEL_ID'
                        PropertiesClassName = 'TcxLookupComboBoxProperties'
                        Properties.DropDownListStyle = lsEditList
                        Properties.KeyFieldNames = 'MODEL_ID'
                        Properties.ListColumns = <
                          item
                            FieldName = 'MODEL_NAMA'
                          end>
                        Properties.ListSource = dsQModel
                        Options.ShowEditButtons = isebAlways
                        Width = 240
                      end
                      object cxGridDBColumn27: TcxGridDBColumn
                        Caption = 'JENIS'
                        DataBinding.FieldName = 'JENIS_ID'
                        PropertiesClassName = 'TcxLookupComboBoxProperties'
                        Properties.DropDownListStyle = lsEditList
                        Properties.KeyFieldNames = 'JENIS_ID'
                        Properties.ListColumns = <
                          item
                            FieldName = 'JENIS_NAMA'
                          end>
                        Properties.ListSource = dsQJenis
                        Width = 382
                      end
                    end
                    object cxGridLevel5: TcxGridLevel
                      GridView = cxGridDBTableView5
                    end
                  end
                  object DBNavigator7: TDBNavigator
                    Left = 695
                    Top = 132
                    Width = 232
                    Height = 29
                    DataSource = dsQBentuk
                    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
                    Anchors = [akRight, akBottom]
                    TabOrder = 1
                  end
                end
                object cxTabSheet21: TcxTabSheet
                  Caption = 'Hist No Polisi'
                  ImageIndex = 3
                  DesignSize = (
                    929
                    160)
                  object cxGrid6: TcxGrid
                    Left = 2
                    Top = 2
                    Width = 925
                    Height = 125
                    Anchors = [akLeft, akTop, akRight, akBottom]
                    TabOrder = 0
                    object cxGridDBTableView7: TcxGridDBTableView
                      NavigatorButtons.ConfirmDelete = False
                      NavigatorButtons.PriorPage.Visible = False
                      NavigatorButtons.NextPage.Visible = False
                      NavigatorButtons.Cancel.Visible = True
                      NavigatorButtons.SaveBookmark.Visible = False
                      NavigatorButtons.GotoBookmark.Visible = False
                      NavigatorButtons.Filter.Visible = False
                      DataController.DataSource = dsQHistNopol
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
                          Column = cxGridDBColumn40
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
                      OptionsData.Appending = True
                      OptionsView.Footer = True
                      OptionsView.GroupByBox = False
                      OptionsView.HeaderHeight = 25
                      OptionsView.Indicator = True
                      OptionsView.IndicatorWidth = 15
                      Styles.StyleSheet = DM.SyteAku
                      object cxGridDBColumn40: TcxGridDBColumn
                        DataBinding.FieldName = 'NO_POLISI'
                        Options.ShowEditButtons = isebAlways
                        Width = 148
                      end
                      object cxGridDBColumn41: TcxGridDBColumn
                        DataBinding.FieldName = 'WARNATNKB_ID'
                        PropertiesClassName = 'TcxLookupComboBoxProperties'
                        Properties.DropDownListStyle = lsEditList
                        Properties.KeyFieldNames = 'WARNATNKB_ID'
                        Properties.ListColumns = <
                          item
                            FieldName = 'WARNATNKB'
                          end>
                        Properties.ListSource = dsQWarnaTNKB
                        Width = 164
                      end
                      object cxGridDBColumn42: TcxGridDBColumn
                        DataBinding.FieldName = 'DUP_NP_COUNT'
                        Width = 162
                      end
                      object cxGridDBTableView7Column1: TcxGridDBColumn
                        Caption = 'NOPOL LAMA'
                        DataBinding.FieldName = 'NO_POLISI_LAMA'
                        Width = 152
                      end
                    end
                    object cxGridLevel7: TcxGridLevel
                      GridView = cxGridDBTableView7
                    end
                  end
                  object DBNavigator9: TDBNavigator
                    Left = 695
                    Top = 131
                    Width = 232
                    Height = 29
                    DataSource = dsQHistNopol
                    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
                    Anchors = [akRight, akBottom]
                    TabOrder = 1
                  end
                end
                object cxTabSheet22: TcxTabSheet
                  Caption = 'Hist Warna'
                  ImageIndex = 4
                  DesignSize = (
                    929
                    160)
                  object cxGrid7: TcxGrid
                    Left = 2
                    Top = 1
                    Width = 925
                    Height = 126
                    Anchors = [akLeft, akTop, akRight, akBottom]
                    TabOrder = 0
                    object cxGridDBTableView8: TcxGridDBTableView
                      NavigatorButtons.ConfirmDelete = False
                      NavigatorButtons.PriorPage.Visible = False
                      NavigatorButtons.NextPage.Visible = False
                      NavigatorButtons.Cancel.Visible = True
                      NavigatorButtons.SaveBookmark.Visible = False
                      NavigatorButtons.GotoBookmark.Visible = False
                      NavigatorButtons.Filter.Visible = False
                      DataController.DataSource = dsQHistWarna
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
                          Column = cxGridDBColumn47
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
                      OptionsData.Appending = True
                      OptionsView.Footer = True
                      OptionsView.GroupByBox = False
                      OptionsView.HeaderHeight = 25
                      OptionsView.Indicator = True
                      OptionsView.IndicatorWidth = 15
                      Styles.StyleSheet = DM.SyteAku
                      object cxGridDBColumn47: TcxGridDBColumn
                        DataBinding.FieldName = 'WARNA_ID'
                        PropertiesClassName = 'TcxLookupComboBoxProperties'
                        Properties.KeyFieldNames = 'WARNA_ID'
                        Properties.ListColumns = <
                          item
                            FieldName = 'WARNA_NAMA'
                          end>
                        Properties.ListSource = dsQWarna
                        Options.ShowEditButtons = isebAlways
                        Width = 571
                      end
                    end
                    object cxGridLevel8: TcxGridLevel
                      GridView = cxGridDBTableView8
                    end
                  end
                  object DBNavigator10: TDBNavigator
                    Left = 695
                    Top = 132
                    Width = 232
                    Height = 29
                    DataSource = dsQHistWarna
                    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
                    Anchors = [akRight, akBottom]
                    TabOrder = 1
                  end
                end
              end
              object cxButton2: TcxButton
                Left = 3
                Top = 268
                Width = 230
                Height = 38
                Cursor = crHandPoint
                Caption = 'Cetak History'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                Glyph.Data = {
                  36100000424D3610000000000000360000002800000020000000200000000100
                  2000000000000010000000000000000000000000000000000000000000000000
                  0000000000000000000000000000666666FF666666FF666666FF666666FF6666
                  66FF666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
                  66FF666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
                  66FF666666FF0000000000000000000000000000000000000000000000000000
                  000000000000000000004D4D4DFF666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF666666FF4D4D4DFF00000000000000000000000000000000000000000000
                  000000000000000000004D4D4DFF666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF666666FF4D4D4DFF00000000000000000000000000000000000000000000
                  00000000000000000000979797FF666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF666666FF979797FF00000000000000000000000000000000000000000000
                  00000000000000000000979797FF666666FFF2F2F2FFF2F2F2FFABABABFFD0D0
                  D0FFBDBDBDFFB4B4B4FFD0D0D0FFF2F2F2FFABABABFFD0D0D0FFBDBDBDFFB4B4
                  B4FFD0D0D0FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FF666666FF979797FF00000000000000000000000000000000565656FF5656
                  56FF565656FF565656FF979797FF666666FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FF666666FF979797FF565656FF565656FF565656FF565656FF565656FFF7F7
                  F7FFF7F7F7FFF7F7F7FF404040FF666666FFE5E5E5FFE5E5E5FFA6A6A6FFC7C7
                  C7FFB6B6B6FFAEAEAEFFC7C7C7FFA6A6A6FFC7C7C7FFB6B6B6FFAEAEAEFFC7C7
                  C7FFE5E5E5FFA6A6A6FFC7C7C7FFB6B6B6FFAEAEAEFFC7C7C7FFE5E5E5FFE5E5
                  E5FF666666FF404040FFF7F7F7FFF7F7F7FFF7F7F7FF565656FF565656FFB2B2
                  B2FFD8D8D8FFB2B2B2FF404040FF666666FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
                  CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
                  CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
                  CCFF666666FF404040FFB2B2B2FFD8D8D8FFB2B2B2FF565656FF565656FFB2B2
                  B2FFD8D8D8FFB2B2B2FF404040FF666666FFACACACFFACACACFFACACACFFACAC
                  ACFFACACACFFACACACFFACACACFFACACACFFACACACFFACACACFFACACACFFACAC
                  ACFFACACACFFACACACFFACACACFFACACACFFACACACFFACACACFFACACACFFACAC
                  ACFF666666FF404040FFB2B2B2FFD8D8D8FFB2B2B2FF565656FF565656FFB2B2
                  B2FFD8D8D8FFB2B2B2FF010101FF3E3E3EFF898989FF898989FF898989FF8989
                  89FF898989FF898989FF898989FF898989FF898989FF898989FF898989FF8989
                  89FF898989FF898989FF898989FF898989FF898989FF898989FF898989FF8989
                  89FF3E3E3EFF010101FFB2B2B2FFD8D8D8FFB2B2B2FF565656FF565656FFB2B2
                  B2FFD8D8D8FFB2B2B2FF010101FF010101FF010101FF010101FF010101FF0101
                  01FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF0101
                  01FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF0101
                  01FF010101FF010101FFB2B2B2FFD8D8D8FFB2B2B2FF565656FF565656FFB2B2
                  B2FFD8D8D8FFB2B2B2FF010101FF010101FF010101FF010101FF010101FF0101
                  01FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF0101
                  01FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF0101
                  01FF010101FF010101FFB2B2B2FFD8D8D8FFB2B2B2FF565656FF565656FFB2B2
                  B2FFD8D8D8FFD8D8D8FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2
                  B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2
                  B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2
                  B2FFB2B2B2FFB2B2B2FFD8D8D8FFD8D8D8FFB2B2B2FF565656FF565656FFB2B2
                  B2FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8
                  D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FF8989
                  89FF898989FF898989FF898989FF898989FF898989FF898989FFD8D8D8FF5057
                  E4FF3450C4FF3450C4FFD8D8D8FFD8D8D8FFB2B2B2FF565656FF565656FFB2B2
                  B2FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8
                  D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FF8989
                  89FF68AD77FF91D39CFF68AD77FF91D39CFF68AD77FF898989FFD8D8D8FF5057
                  E4FF5057E4FF3450C4FFD8D8D8FFD8D8D8FFB2B2B2FF565656FF565656FFB2B2
                  B2FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8
                  D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FF8989
                  89FF898989FF898989FF898989FF898989FF898989FF898989FFD8D8D8FF7D8F
                  F5FF5057E4FF5057E4FFD8D8D8FFD8D8D8FFB2B2B2FF565656FF565656FFF7F7
                  F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
                  F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
                  F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
                  F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF565656FF565656FFD8D8
                  D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8
                  D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8
                  D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8
                  D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FF565656FF565656FFB2B2
                  B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2
                  B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2
                  B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2
                  B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FF565656FF565656FFA7A7
                  A7FFA7A7A7FFA7A7A7FF4D4D4DFF010101FF010101FF010101FF010101FF0101
                  01FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF0101
                  01FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF0101
                  01FF010101FF4D4D4DFFA7A7A7FFA7A7A7FFA7A7A7FF565656FF565656FF8989
                  89FF898989FF898989FF4D4D4DFF666666FFE5E5E5FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFE5E5
                  E5FF666666FF4D4D4DFF898989FF898989FF898989FF565656FF000000005656
                  56FF565656FF565656FF4D4D4DFF666666FFE5E5E5FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFAFAFAFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5
                  E5FF666666FF4D4D4DFF565656FF565656FF565656FF00000000000000000000
                  0000000000000000000000000000666666FFE5E5E5FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFE5E5
                  E5FF666666FF0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000666666FFE5E5E5FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
                  FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFE5E5
                  E5FF666666FF0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000666666FFE5E5E5FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
                  FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFE5E5
                  E5FF666666FF0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000666666FFE5E5E5FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
                  FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFE5E5
                  E5FF666666FF0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000666666FFE5E5E5FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
                  FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFE5E5
                  E5FF666666FF0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000666666FFE5E5E5FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
                  FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFE5E5
                  E5FF666666FF0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000666666FFE5E5E5FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
                  FAFFFAFAFAFFFAFAFAFFFAFAFAFFFFFFFFFFFAFAFAFFFAFAFAFFFAFAFAFFE5E5
                  E5FF666666FF0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000666666FFE5E5E5FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFFAFAFAFFFAFAFAFFE5E5
                  E5FF666666FF0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000666666FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
                  E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
                  E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
                  E5FF666666FF0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000666666FF666666FF666666FF666666FF6666
                  66FF666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
                  66FF666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
                  66FF666666FF0000000000000000000000000000000000000000}
              end
              object DBNavigator4: TDBNavigator
                Left = 695
                Top = 268
                Width = 232
                Height = 37
                DataSource = dsQHistory
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
                Anchors = [akRight, akBottom]
                TabOrder = 3
              end
            end
          end
        end
        object cxTabSheet8: TcxTabSheet
          Caption = 'Status Cetak BPKB'
          ImageIndex = 5
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 928
            Height = 536
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Delete.Visible = False
              NavigatorButtons.Cancel.Visible = True
              NavigatorButtons.SaveBookmark.Visible = False
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              DataController.DataSource = dsQCetakBPKB
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
              OptionsData.Appending = True
              OptionsView.Navigator = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 45
              OptionsView.Indicator = True
              OptionsView.IndicatorWidth = 15
              Styles.StyleSheet = DM.SyteAku
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = 'Halaman 1'
                DataBinding.FieldName = 'P1DONE'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                Options.ShowEditButtons = isebAlways
                Width = 150
              end
              object cxGridDBColumn2: TcxGridDBColumn
                Caption = 'Halaman 2'
                DataBinding.FieldName = 'P2DONE'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                Width = 150
              end
              object cxGridDBColumn3: TcxGridDBColumn
                Caption = 'Halaman 3'
                DataBinding.FieldName = 'P3DONE'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                Width = 150
              end
              object cxGridDBColumn4: TcxGridDBColumn
                Caption = 'Halaman 4'
                DataBinding.FieldName = 'P4DONE'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                Width = 150
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
        end
        object cxTabSheet9: TcxTabSheet
          Caption = 'History Blokir'
          ImageIndex = 6
          DesignSize = (
            928
            536)
          object cxGrid5: TcxGrid
            Left = 2
            Top = 2
            Width = 925
            Height = 487
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 0
            object cxGridDBTableView6: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.PriorPage.Visible = False
              NavigatorButtons.NextPage.Visible = False
              NavigatorButtons.Cancel.Visible = True
              NavigatorButtons.SaveBookmark.Visible = False
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              DataController.DataSource = dsQHistBlokir
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
                  Column = cxGridDBColumn33
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
              OptionsData.Appending = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 45
              OptionsView.Indicator = True
              OptionsView.IndicatorWidth = 15
              Styles.StyleSheet = DM.SyteAku
              object cxGridDBColumn33: TcxGridDBColumn
                DataBinding.FieldName = 'HB_ID'
                Options.Editing = False
                Options.ShowEditButtons = isebAlways
                Width = 147
              end
              object cxGridDBColumn34: TcxGridDBColumn
                DataBinding.FieldName = 'TGL_ENTRI'
                Width = 164
              end
              object cxGridDBColumn35: TcxGridDBColumn
                DataBinding.FieldName = 'BPKB_ID'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownListStyle = lsEditList
                Properties.KeyFieldNames = 'WILAYAH_KODE'
                Properties.ListColumns = <
                  item
                    FieldName = 'WILAYAH_NAMA'
                  end>
                Properties.ListSource = dsQWilayah
                Options.Editing = False
                Width = 162
              end
              object cxGridDBColumn36: TcxGridDBColumn
                DataBinding.FieldName = 'HB_BLOKIR'
                Width = 127
              end
              object cxGridDBColumn37: TcxGridDBColumn
                DataBinding.FieldName = 'HB_NOSURAT'
                Width = 194
              end
              object cxGridDBColumn38: TcxGridDBColumn
                DataBinding.FieldName = 'HB_TANGGAL'
                Width = 136
              end
              object cxGridDBColumn39: TcxGridDBColumn
                DataBinding.FieldName = 'HB_ALASAN'
                Width = 155
              end
              object cxGridDBTableView6Column1: TcxGridDBColumn
                DataBinding.FieldName = 'HB_PEMOHON'
                Width = 120
              end
              object cxGridDBTableView6Column2: TcxGridDBColumn
                DataBinding.FieldName = 'HB_ALAMATPEMOHON'
                Width = 120
              end
              object cxGridDBTableView6Column3: TcxGridDBColumn
                DataBinding.FieldName = 'HB_NOSURATPEMOHON'
                Width = 120
              end
              object cxGridDBTableView6Column4: TcxGridDBColumn
                DataBinding.FieldName = 'HB_TGLSURATPEMOHON'
                Width = 120
              end
              object cxGridDBTableView6Column5: TcxGridDBColumn
                DataBinding.FieldName = 'HB_PERIHALSRTPMHN'
                Width = 120
              end
              object cxGridDBTableView6Column6: TcxGridDBColumn
                DataBinding.FieldName = 'OP_ID'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'OP_ID'
                Properties.ListColumns = <
                  item
                    Caption = 'OPERATOR'
                    FieldName = 'OP_NAMA'
                  end>
                Properties.ListSource = dsQOperator
                Width = 120
              end
              object cxGridDBTableView6Column9: TcxGridDBColumn
                DataBinding.FieldName = 'HB_NOSURATBLKREF'
                Width = 120
              end
              object cxGridDBTableView6Column10: TcxGridDBColumn
                DataBinding.FieldName = 'JENIS_BLOKIR'
                Width = 120
              end
              object cxGridDBTableView6Column11: TcxGridDBColumn
                DataBinding.FieldName = 'OPERATOR_NAMA'
                Width = 120
              end
              object cxGridDBTableView6Column12: TcxGridDBColumn
                DataBinding.FieldName = 'POLDA_ID'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'POLDA_ID'
                Properties.ListColumns = <
                  item
                    Caption = 'POLDA'
                    FieldName = 'POLDA_NAMA'
                  end>
                Properties.ListSource = dsQPolda
                Width = 120
              end
              object cxGridDBTableView6Column13: TcxGridDBColumn
                DataBinding.FieldName = 'POLRES_ID'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'POLRES_KODE'
                Properties.ListColumns = <
                  item
                    Caption = 'POLRES'
                    FieldName = 'POLRES_NAMA'
                  end>
                Properties.ListSource = dsQPolres
                Width = 120
              end
              object cxGridDBTableView6Column14: TcxGridDBColumn
                DataBinding.FieldName = 'HB_TGL_AKHIR'
                Width = 120
              end
              object cxGridDBTableView6Column15: TcxGridDBColumn
                DataBinding.FieldName = 'HB_KOTAPMH'
                Width = 120
              end
            end
            object cxGridLevel6: TcxGridLevel
              GridView = cxGridDBTableView6
            end
          end
          object DBNavigator8: TDBNavigator
            Left = 695
            Top = 494
            Width = 232
            Height = 37
            DataSource = dsQHistBlokir
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
            Anchors = [akRight, akBottom]
            TabOrder = 1
          end
        end
        object cxTabSheet10: TcxTabSheet
          Caption = 'Mutasi LD'
          ImageIndex = 7
        end
      end
    end
    object cxTabSheet11: TcxTabSheet
      Caption = 'Tukar BPKB'
      ImageIndex = 2
      DesignSize = (
        928
        570)
      object Label9: TLabel
        Left = 24
        Top = 16
        Width = 129
        Height = 23
        Caption = 'NO BPKB AWAL'
        Transparent = True
      end
      object Label10: TLabel
        Left = 24
        Top = 49
        Width = 168
        Height = 23
        Caption = 'RUBAH KE NO BPKB'
        Transparent = True
      end
      object Label11: TLabel
        Left = 24
        Top = 82
        Width = 191
        Height = 23
        Caption = 'TANGGAL PERUBAHAN'
        Transparent = True
      end
      object Label12: TLabel
        Left = 24
        Top = 118
        Width = 227
        Height = 23
        Caption = 'KETERANGAN PERUBAHAN'
        Transparent = True
      end
      object eNoBPKB1Tukar: TcxTextEdit
        Left = 261
        Top = 8
        TabOrder = 0
        Width = 176
      end
      object eNoBPKB2Tukar: TcxTextEdit
        Left = 261
        Top = 41
        TabOrder = 1
        Width = 176
      end
      object dtTukar: TcxDateEdit
        Left = 261
        Top = 74
        TabOrder = 2
        Width = 177
      end
      object mKeterangan: TcxMemo
        Left = 261
        Top = 108
        Anchors = [akLeft, akTop, akRight]
        Properties.CharCase = ecUpperCase
        Properties.ScrollBars = ssVertical
        TabOrder = 3
        Height = 89
        Width = 660
      end
      object cxButton1: TcxButton
        Left = 262
        Top = 203
        Width = 170
        Height = 87
        Cursor = crHandPoint
        Caption = 'Cari Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
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
      object cxButton10: TcxButton
        Left = 435
        Top = 202
        Width = 170
        Height = 89
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
        Left = 608
        Top = 202
        Width = 170
        Height = 89
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
      object CRDBGrid1: TCRDBGrid
        Left = 6
        Top = 304
        Width = 915
        Height = 255
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clSkyBlue
        DataSource = dsuniSPTampilBPKBTukar
        TabOrder = 7
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object cxTabSheet12: TcxTabSheet
      Caption = 'PERBAIKAN DATA BN'
      ImageIndex = 3
      object Label13: TLabel
        Left = 8
        Top = 8
        Width = 285
        Height = 23
        Caption = 'Proses Perbaikan Data Balik Nama'
        Transparent = True
      end
      object Label14: TLabel
        Left = 24
        Top = 40
        Width = 72
        Height = 23
        Caption = 'No BPKB'
        Transparent = True
      end
      object Label15: TLabel
        Left = 24
        Top = 69
        Width = 68
        Height = 23
        Caption = 'Tanggal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 24
        Top = 95
        Width = 125
        Height = 23
        Caption = 'Jenis Pemohon'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 24
        Top = 126
        Width = 78
        Height = 23
        Caption = 'Pemohon'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 24
        Top = 159
        Width = 173
        Height = 23
        Caption = 'No Resi Pembayaran'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 24
        Top = 187
        Width = 66
        Height = 23
        Caption = 'Petugas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object eNoBPKB_Perbaikan: TcxTextEdit
        Left = 208
        Top = 32
        TabOrder = 0
        Width = 176
      end
      object dtTgl_Perbaikan: TcxDateEdit
        Left = 208
        Top = 63
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
      object rbPribadi_Perbaikan: TRadioButton
        Left = 208
        Top = 97
        Width = 157
        Height = 25
        Caption = 'Pribadi'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = rbPribadi_PerbaikanClick
      end
      object rbBJ_Perbaikan: TRadioButton
        Left = 356
        Top = 97
        Width = 157
        Height = 25
        Caption = 'Biro Jasa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = rbBJ_PerbaikanClick
      end
      object cbPemohon_Perbaikan: TcxDBLookupComboBox
        Left = 208
        Top = 125
        DataBinding.DataField = 'nama'
        DataBinding.DataSource = dsQPemohon1
        ParentFont = False
        Properties.KeyFieldNames = 'kode'
        Properties.ListColumns = <
          item
            FieldName = 'nama'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsQPemohon2
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 364
      end
      object eNoResiPembayaran_Perbaikan: TcxTextEdit
        Left = 208
        Top = 156
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
        Width = 365
      end
      object cbPetugas_Perbaikan: TcxDBLookupComboBox
        Left = 208
        Top = 186
        DataBinding.DataField = 'nama'
        DataBinding.DataSource = dsQPetugas1
        ParentFont = False
        Properties.KeyFieldNames = 'kode'
        Properties.ListColumns = <
          item
            FieldName = 'nama'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsQPetugas2
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 6
        Width = 364
      end
      object bSimpan_Perbaikan: TcxButton
        Left = 211
        Top = 226
        Width = 170
        Height = 89
        Cursor = crHandPoint
        Caption = 'Simpan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = bSimpan_PerbaikanClick
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
      object bBaru_Perbaikan: TcxButton
        Left = 384
        Top = 226
        Width = 170
        Height = 89
        Cursor = crHandPoint
        Caption = 'Baru'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = bBaru_PerbaikanClick
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
    object cxTabSheet13: TcxTabSheet
      Caption = 'Edit Data NReg BPKB'
      ImageIndex = 4
      object Label20: TLabel
        Left = 8
        Top = 8
        Width = 222
        Height = 23
        Caption = 'Proses Update No Register'
        Transparent = True
      end
      object Label21: TLabel
        Left = 24
        Top = 44
        Width = 72
        Height = 23
        Caption = 'No BPKB'
        Transparent = True
      end
      object Label22: TLabel
        Left = 24
        Top = 140
        Width = 162
        Height = 23
        Caption = 'No Reg BPKB Lama'
        Transparent = True
      end
      object Label23: TLabel
        Left = 24
        Top = 212
        Width = 156
        Height = 23
        Caption = 'No Reg BPKB Baru'
        Transparent = True
      end
      object Label24: TLabel
        Left = 299
        Top = 174
        Width = 139
        Height = 23
        Caption = 'Dirubah Menjadi'
        Transparent = True
      end
      object cxTextEdit1: TcxTextEdit
        Left = 144
        Top = 40
        TabOrder = 0
        Width = 176
      end
      object cxButton3: TcxButton
        Left = 145
        Top = 75
        Width = 170
        Height = 49
        Cursor = crHandPoint
        Caption = 'Cari Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = cxButton3Click
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
      object cxTextEdit2: TcxTextEdit
        Left = 200
        Top = 136
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 377
      end
      object cxTextEdit3: TcxTextEdit
        Left = 200
        Top = 208
        TabOrder = 3
        Width = 377
      end
      object cxButton4: TcxButton
        Left = 203
        Top = 250
        Width = 374
        Height = 82
        Cursor = crHandPoint
        Caption = 'Simpan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = cxButton4Click
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
    end
    object cxTabSheet14: TcxTabSheet
      Caption = 'Rubah No BPKB'
      ImageIndex = 5
      DesignSize = (
        928
        570)
      object Label25: TLabel
        Left = 24
        Top = 16
        Width = 129
        Height = 23
        Caption = 'NO BPKB AWAL'
        Transparent = True
      end
      object Label26: TLabel
        Left = 24
        Top = 49
        Width = 168
        Height = 23
        Caption = 'RUBAH KE NO BPKB'
        Transparent = True
      end
      object Label27: TLabel
        Left = 24
        Top = 82
        Width = 191
        Height = 23
        Caption = 'TANGGAL PERUBAHAN'
        Transparent = True
      end
      object Label28: TLabel
        Left = 24
        Top = 118
        Width = 227
        Height = 23
        Caption = 'KETERANGAN PERUBAHAN'
        Transparent = True
      end
      object cxTextEdit4: TcxTextEdit
        Left = 261
        Top = 8
        TabOrder = 0
        Width = 176
      end
      object cxTextEdit5: TcxTextEdit
        Left = 261
        Top = 41
        TabOrder = 1
        Width = 176
      end
      object cxDateEdit1: TcxDateEdit
        Left = 261
        Top = 74
        TabOrder = 2
        Width = 177
      end
      object cxMemo1: TcxMemo
        Left = 261
        Top = 108
        Anchors = [akLeft, akTop, akRight]
        Properties.CharCase = ecUpperCase
        Properties.ScrollBars = ssVertical
        TabOrder = 3
        Height = 89
        Width = 660
      end
      object cxButton5: TcxButton
        Left = 262
        Top = 203
        Width = 170
        Height = 87
        Cursor = crHandPoint
        Caption = 'Cari Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = cxButton5Click
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
      object cxButton6: TcxButton
        Left = 435
        Top = 202
        Width = 170
        Height = 89
        Cursor = crHandPoint
        Caption = 'Simpan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
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
      object cxButton7: TcxButton
        Left = 608
        Top = 202
        Width = 170
        Height = 89
        Cursor = crHandPoint
        Caption = 'Baru'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = cxButton7Click
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
      object CRDBGrid2: TCRDBGrid
        Left = 6
        Top = 304
        Width = 915
        Height = 255
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clSkyBlue
        DataSource = dsuniSPTampilBPKBTukar
        TabOrder = 7
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object uniSPTampil: TUniStoredProc
    Connection = DM.dbSrv
    Left = 16
    Top = 221
  end
  object dsQDeatail: TUniDataSource
    DataSet = uniSPTampil
    Left = 16
    Top = 264
  end
  object dsQDataUtama: TUniDataSource
    DataSet = QDataUtama
    Left = 265
    Top = 148
  end
  object QModel: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 231
    Top = 504
  end
  object dsQModel: TUniDataSource
    DataSet = QModel
    Left = 231
    Top = 536
  end
  object QJenis: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 263
    Top = 504
  end
  object dsQJenis: TUniDataSource
    DataSet = QJenis
    Left = 263
    Top = 536
  end
  object QWarna: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 295
    Top = 504
  end
  object dsQWarna: TUniDataSource
    DataSet = QWarna
    Left = 295
    Top = 536
  end
  object QBB: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 200
    Top = 504
  end
  object dsQBB: TUniDataSource
    DataSet = QBB
    Left = 200
    Top = 536
  end
  object QMerk: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 168
    Top = 504
  end
  object dsQMerk: TUniDataSource
    DataSet = QMerk
    Left = 168
    Top = 536
  end
  object QJD: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 136
    Top = 504
  end
  object dsQJD: TUniDataSource
    DataSet = QJD
    Left = 136
    Top = 536
  end
  object QImpMetode: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 104
    Top = 504
  end
  object dsQImpMetode: TUniDataSource
    DataSet = QImpMetode
    Left = 104
    Top = 536
  end
  object QPeruntukan: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 327
    Top = 504
  end
  object dsQPeruntukan: TUniDataSource
    DataSet = QPeruntukan
    Left = 327
    Top = 536
  end
  object QCetakBPKB: TUniQuery
    Connection = DM.dbSrv
    Left = 304
    Top = 120
  end
  object dsQCetakBPKB: TUniDataSource
    DataSet = QCetakBPKB
    Left = 305
    Top = 148
  end
  object QPenerbitanBPKB: TUniQuery
    Connection = DM.dbSrv
    Left = 344
    Top = 120
  end
  object dsQPenerbitanBPKB: TUniDataSource
    DataSet = QPenerbitanBPKB
    Left = 345
    Top = 148
  end
  object QOperator: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 359
    Top = 504
  end
  object dsQOperator: TUniDataSource
    DataSet = QOperator
    Left = 359
    Top = 536
  end
  object QPendaftaran: TUniQuery
    Connection = DM.dbSrv
    Left = 384
    Top = 120
  end
  object dsQPendaftaran: TUniDataSource
    DataSet = QPendaftaran
    Left = 385
    Top = 148
  end
  object QPemohon: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 391
    Top = 504
  end
  object dsQPemohon: TUniDataSource
    DataSet = QPemohon
    Left = 391
    Top = 536
  end
  object QTukar: TUniQuery
    Connection = DM.dbSrv
    Left = 424
    Top = 120
  end
  object dsQTukar: TUniDataSource
    DataSet = QTukar
    Left = 425
    Top = 148
  end
  object uniSPTampilBPKBTukar: TUniStoredProc
    Connection = DM.dbSrv
    Left = 464
    Top = 117
  end
  object dsuniSPTampilBPKBTukar: TUniDataSource
    DataSet = uniSPTampilBPKBTukar
    Left = 464
    Top = 144
  end
  object QHistory: TUniQuery
    Connection = DM.dbSrv
    Left = 264
    Top = 184
  end
  object dsQHistory: TUniDataSource
    DataSet = QHistory
    Left = 265
    Top = 212
  end
  object qPRB: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 72
    Top = 504
  end
  object dsqPRB: TUniDataSource
    DataSet = qPRB
    Left = 72
    Top = 536
  end
  object QHistNamaPemilik: TUniQuery
    Connection = DM.dbSrv
    Left = 304
    Top = 184
  end
  object dsQHistNamaPemilik: TUniDataSource
    DataSet = QHistNamaPemilik
    Left = 305
    Top = 212
  end
  object QHistAlamat: TUniQuery
    Connection = DM.dbSrv
    Left = 344
    Top = 184
  end
  object dsQHistAlamat: TUniDataSource
    DataSet = QHistAlamat
    Left = 345
    Top = 212
  end
  object QWilayah: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 423
    Top = 504
  end
  object dsQWilayah: TUniDataSource
    DataSet = QWilayah
    Left = 423
    Top = 536
  end
  object QBentuk: TUniQuery
    Connection = DM.dbSrv
    Left = 384
    Top = 184
  end
  object dsQBentuk: TUniDataSource
    DataSet = QBentuk
    Left = 385
    Top = 212
  end
  object QHistBlokir: TUniQuery
    Connection = DM.dbSrv
    Left = 424
    Top = 184
  end
  object dsQHistBlokir: TUniDataSource
    DataSet = QHistBlokir
    Left = 425
    Top = 212
  end
  object QHistNopol: TUniQuery
    Connection = DM.dbSrv
    Left = 464
    Top = 184
  end
  object dsQHistNopol: TUniDataSource
    DataSet = QHistNopol
    Left = 465
    Top = 212
  end
  object QHistWarna: TUniQuery
    Connection = DM.dbSrv
    Left = 496
    Top = 184
  end
  object dsQHistWarna: TUniDataSource
    DataSet = QHistWarna
    Left = 497
    Top = 212
  end
  object QWarnaTNKB: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 455
    Top = 504
  end
  object dsQWarnaTNKB: TUniDataSource
    DataSet = QWarnaTNKB
    Left = 455
    Top = 536
  end
  object QPemohon1: TUniQuery
    Connection = DM.dbSrv
    Left = 56
    Top = 392
  end
  object QPemohon2: TUniQuery
    Connection = DM.dbSrv
    Left = 88
    Top = 392
  end
  object dsQPemohon2: TUniDataSource
    DataSet = QPemohon2
    Left = 88
    Top = 424
  end
  object dsQPemohon1: TUniDataSource
    DataSet = QPemohon1
    Left = 56
    Top = 424
  end
  object QPetugas1: TUniQuery
    Connection = DM.dbSrv
    Left = 128
    Top = 392
  end
  object QPetugas2: TUniQuery
    Connection = DM.dbSrv
    Left = 160
    Top = 392
  end
  object dsQPetugas2: TUniDataSource
    DataSet = QPetugas2
    Left = 160
    Top = 424
  end
  object dsQPetugas1: TUniDataSource
    DataSet = QPetugas1
    Left = 128
    Top = 424
  end
  object Q: TUniQuery
    Connection = DM.dbSrv
    Left = 16
    Top = 320
  end
  object Q2: TUniQuery
    Connection = DM.dbSrv
    Left = 16
    Top = 352
  end
  object QPekerjaan: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 487
    Top = 504
  end
  object dsQPekerjaan: TUniDataSource
    DataSet = QPekerjaan
    Left = 487
    Top = 536
  end
  object QPolda: TUniQuery
    Connection = DM.dbSrv
    Left = 528
    Top = 184
  end
  object dsQPolda: TUniDataSource
    DataSet = QPolda
    Left = 529
    Top = 212
  end
  object QPolres: TUniQuery
    Connection = DM.dbSrv
    Left = 560
    Top = 184
  end
  object dsQPolres: TUniDataSource
    DataSet = QPolres
    Left = 561
    Top = 212
  end
  object QDataUtama: TUniQuery
    Connection = DM.dbSrv
    Left = 264
    Top = 120
  end
end
