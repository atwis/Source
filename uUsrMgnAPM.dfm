object fUsrMgnAPM: TfUsrMgnAPM
  Left = 248
  Top = 93
  Align = alClient
  BorderStyle = bsNone
  Caption = 'USER MANAGEMENT FOR APM/DEALER'
  ClientHeight = 589
  ClientWidth = 912
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
    912
    589)
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 379
    Height = 23
    Caption = 'USER MANAGEMENT FOR APM/DEALER'
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
  object Label140: TLabel
    Left = 10
    Top = 42
    Width = 72
    Height = 23
    Caption = 'USER ID'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 368
    Top = 49
    Width = 72
    Height = 16
    Caption = 'Max 20 Char'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label141: TLabel
    Left = 10
    Top = 73
    Width = 102
    Height = 23
    Caption = 'USER NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label142: TLabel
    Left = 10
    Top = 105
    Width = 55
    Height = 23
    Caption = 'BLOCK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 138
    Width = 110
    Height = 23
    Caption = 'APM/DEALER'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object eIDPetugas: TEdit
    Left = 148
    Top = 39
    Width = 218
    Height = 29
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object eNamaLengkap: TEdit
    Left = 148
    Top = 70
    Width = 757
    Height = 29
    Anchors = [akLeft, akTop, akRight]
    CharCase = ecUpperCase
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object cbBlock: TComboBox
    Left = 148
    Top = 101
    Width = 133
    Height = 31
    BevelKind = bkFlat
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 23
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    Items.Strings = (
      'NON AKTIF'
      'AKTIF')
  end
  object BitBtn1: TBitBtn
    Left = 653
    Top = 132
    Width = 35
    Height = 31
    Cursor = crHandPoint
    Hint = 'Add APM/DEALER'
    Caption = '....'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object GroupBox9: TGroupBox
    Left = 7
    Top = 175
    Width = 487
    Height = 98
    Caption = 'MASUKKAN PASSWORD :: '
    TabOrder = 4
    object Label143: TLabel
      Left = 13
      Top = 31
      Width = 150
      Height = 23
      Caption = 'PASSWORD BARU'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label144: TLabel
      Left = 13
      Top = 60
      Width = 110
      Height = 23
      Caption = 'KONFIRMASI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EPass: TEdit
      Left = 188
      Top = 27
      Width = 287
      Height = 29
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object EPass1: TEdit
      Left = 188
      Top = 58
      Width = 287
      Height = 29
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object TbTambah: TButton
    Left = 10
    Top = 281
    Width = 119
    Height = 40
    Cursor = crHandPoint
    Caption = 'Tambah'
    TabOrder = 5
    OnClick = TbTambahClick
  end
  object TbSimpan: TButton
    Left = 130
    Top = 281
    Width = 119
    Height = 40
    Cursor = crHandPoint
    Caption = 'Simpan'
    TabOrder = 6
    OnClick = TbSimpanClick
  end
  object TbBatal: TButton
    Left = 250
    Top = 281
    Width = 119
    Height = 40
    Cursor = crHandPoint
    Caption = 'Batal'
    TabOrder = 7
    OnClick = TbBatalClick
  end
  object cxGrid: TcxGrid
    Left = 8
    Top = 328
    Width = 895
    Height = 258
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 8
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsQDealer
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
        DataBinding.FieldName = 'ID_USER'
        Options.Editing = False
        Options.ShowEditButtons = isebAlways
        Width = 148
      end
      object cxGridDBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'NAMA_USER'
        Options.Editing = False
        Width = 224
      end
      object cxGridDBTableView1Column3: TcxGridDBColumn
        DataBinding.FieldName = 'BLOCKED'
        Options.Editing = False
        Width = 155
      end
      object cxGridDBTableView1Column5: TcxGridDBColumn
        Caption = 'DEALER'
        DataBinding.FieldName = 'DEALER_NAMA'
        Options.Editing = False
        Width = 300
      end
      object cxGridDBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = 'PASSWORD'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cbDealer: TcxDBLookupComboBox
    Left = 147
    Top = 132
    DataBinding.DataField = 'DEALER_NAMA'
    DataBinding.DataSource = dsDealer1
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.KeyFieldNames = 'DEALER_ID'
    Properties.ListColumns = <
      item
        FieldName = 'DEALER_NAMA'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsDealer2
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 9
    Width = 502
  end
  object pAPM: TPanel
    Left = 80
    Top = 28
    Width = 769
    Height = 537
    BevelWidth = 4
    Color = clSkyBlue
    TabOrder = 10
    Visible = False
    OnMouseDown = pAPMMouseDown
    DesignSize = (
      769
      537)
    object Shape2: TShape
      Left = 2
      Top = 37
      Width = 764
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      Pen.Color = clWhite
    end
    object Label4: TLabel
      Left = 16
      Top = 9
      Width = 218
      Height = 23
      Caption = 'TAMBAH APM/DEALER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 20
      Top = 48
      Width = 123
      Height = 23
      Caption = 'DEALER NAMA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 20
      Top = 80
      Width = 93
      Height = 23
      Caption = 'DEALER ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 20
      Top = 112
      Width = 106
      Height = 23
      Caption = 'DEALER KEY'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 20
      Top = 196
      Width = 123
      Height = 23
      Caption = 'DEALER AKTIF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lDealerID: TLabel
      Left = 20
      Top = 152
      Width = 6
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 307
      Top = 195
      Width = 72
      Height = 23
      Caption = 'PNBP R2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 496
      Top = 195
      Width = 72
      Height = 23
      Caption = 'PNBP R4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object bClose: TButton
      Left = 728
      Top = 8
      Width = 35
      Height = 25
      Cursor = crHandPoint
      Caption = 'X'
      TabOrder = 0
      OnClick = bCloseClick
    end
    object eATPMNAMA: TEdit
      Left = 148
      Top = 45
      Width = 581
      Height = 29
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object eATPMID: TEdit
      Left = 148
      Top = 77
      Width = 581
      Height = 29
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object eATPMKEY: TMemo
      Left = 216
      Top = 110
      Width = 514
      Height = 71
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 3
    end
    object cbAktifAPM: TComboBox
      Left = 148
      Top = 192
      Width = 133
      Height = 31
      BevelKind = bkFlat
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 23
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      Items.Strings = (
        'NON AKTIF'
        'AKTIF')
    end
    object cxGrid1: TcxGrid
      Left = 17
      Top = 273
      Width = 735
      Height = 256
      Anchors = [akLeft, akTop, akRight, akBottom]
      PopupMenu = PopupMenu1
      TabOrder = 7
      object cxGridDBTableView2: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        OnCellDblClick = cxGridDBTableView2CellDblClick
        DataController.DataSource = dsQTampilAPM
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
            Column = cxGridDBColumn2
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 45
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        Styles.StyleSheet = DM.SyteAku
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'DEALER NAMA'
          DataBinding.FieldName = 'DEALER_NAMA'
          Width = 385
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'DEALER SNHDD'
          DataBinding.FieldName = 'DEALER_SNHDD'
          Options.ShowEditButtons = isebAlways
          Width = 243
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = 'DEALER KEY'
          DataBinding.FieldName = 'DEALER_KEY'
          Width = 364
        end
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = 'AKTIF'
          DataBinding.FieldName = 'DEALER_AKTIF'
          Width = 123
        end
        object cxGridDBTableView2Column1: TcxGridDBColumn
          DataBinding.FieldName = 'PNBP_R2'
          Width = 111
        end
        object cxGridDBTableView2Column2: TcxGridDBColumn
          DataBinding.FieldName = 'PNBP_R4'
          Width = 102
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object Button1: TButton
      Left = 147
      Top = 229
      Width = 119
      Height = 40
      Cursor = crHandPoint
      Caption = 'Tambah'
      TabOrder = 8
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 267
      Top = 229
      Width = 119
      Height = 40
      Cursor = crHandPoint
      Caption = 'Simpan'
      TabOrder = 9
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 387
      Top = 229
      Width = 119
      Height = 40
      Cursor = crHandPoint
      Caption = 'Batal'
      TabOrder = 10
      OnClick = Button3Click
    end
    object BitBtn2: TBitBtn
      Left = 149
      Top = 112
      Width = 65
      Height = 69
      Cursor = crHandPoint
      Hint = 'Add APM/DEALER'
      Caption = 'Create'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = BitBtn2Click
    end
    object ePNBPR2: TEdit
      Left = 385
      Top = 192
      Width = 92
      Height = 29
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      Text = '80000'
      OnChange = ePNBPR2Change
    end
    object ePNBPR4: TEdit
      Left = 578
      Top = 192
      Width = 92
      Height = 29
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      Text = '100000'
      OnChange = ePNBPR4Change
    end
  end
  object Q: TUniQuery
    Connection = DM.dbSrv
    Left = 848
    Top = 128
  end
  object dsQ: TUniDataSource
    DataSet = Q
    Left = 848
    Top = 160
  end
  object QTampilAPM: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 848
    Top = 208
  end
  object dsQTampilAPM: TUniDataSource
    DataSet = QTampilAPM
    Left = 848
    Top = 240
  end
  object dsDealer1: TUniDataSource
    DataSet = QDealer1
    Left = 712
    Top = 152
  end
  object QDealer1: TUniQuery
    Connection = DM.dbSrv
    Left = 712
    Top = 128
  end
  object dsDealer2: TUniDataSource
    DataSet = QDealer2
    Left = 744
    Top = 152
  end
  object QDealer2: TUniQuery
    Connection = DM.dbSrv
    Left = 744
    Top = 128
  end
  object QDealer: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 816
    Top = 208
  end
  object dsQDealer: TUniDataSource
    DataSet = QDealer
    Left = 816
    Top = 240
  end
  object icekey1: Ticekey
    Left = 200
    Top = 176
  end
  object PopupMenu1: TPopupMenu
    Left = 184
    Top = 364
    object E1: TMenuItem
      Caption = 'Edit Data'
      OnClick = E1Click
    end
  end
end
