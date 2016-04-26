object fLaporanBBN1: TfLaporanBBN1
  Left = 224
  Top = 80
  Align = alClient
  BorderStyle = bsNone
  Caption = 'LAPORAN BBN1'
  ClientHeight = 566
  ClientWidth = 1080
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1080
    566)
  PixelsPerInch = 96
  TextHeight = 23
  object Shape1: TShape
    Left = 2
    Top = 28
    Width = 1074
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 210
    Height = 23
    Caption = 'LAPORAN DATA BBN1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label50: TLabel
    Left = 6
    Top = 38
    Width = 113
    Height = 23
    Caption = 'Tanggal Awal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 290
    Top = 39
    Width = 26
    Height = 23
    Caption = 's/d'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape2: TShape
    Left = 0
    Top = 68
    Width = 1074
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object Label4: TLabel
    Left = 496
    Top = 30
    Width = 524
    Height = 38
    Caption = 
      'Monitoring -- Tgl BPKB; Pendaftaran -- Tgl Pendaftaran; Entri --' +
      ' Tgl Entri;'#13#10'Verifikasi -- Tgl Verifikasi; Cetak -- Tgl Cetak BP' +
      'KB'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dtTgl1: TcxDateEdit
    Left = 128
    Top = 33
    ParentFont = False
    Properties.ShowTime = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Width = 155
  end
  object dtTgl2: TcxDateEdit
    Left = 326
    Top = 34
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 72
    Width = 1079
    Height = 493
    ActivePage = cxTabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    ClientRectBottom = 493
    ClientRectRight = 1079
    ClientRectTop = 34
    object cxTabSheet1: TcxTabSheet
      Caption = 'Monitoring'
      ImageIndex = 0
      DesignSize = (
        1079
        459)
      object Label3: TLabel
        Left = 8
        Top = 172
        Width = 179
        Height = 19
        Caption = 'Detail Data Entri Terakhir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lTimer: TLabel
        Left = 254
        Top = 173
        Width = 42
        Height = 19
        Caption = 'Timer'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Panel1: TPanel
        Left = 8
        Top = 8
        Width = 1065
        Height = 161
        Anchors = [akLeft, akTop, akRight]
        Color = clBlack
        TabOrder = 0
        object Panel3: TPanel
          Left = 32
          Top = 3
          Width = 869
          Height = 156
          BevelOuter = bvNone
          Color = clBlack
          TabOrder = 0
          object lJudul: TLabel
            Left = 0
            Top = 0
            Width = 869
            Height = 33
            Align = alTop
            Alignment = taCenter
            Caption = 'Monitoring Tanggal 20 Desember 2013'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -27
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Panel4: TPanel
            Left = 71
            Top = 40
            Width = 143
            Height = 41
            BevelOuter = bvNone
            Caption = 'DAFTAR'
            Color = clBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Panel5: TPanel
            Left = 217
            Top = 40
            Width = 143
            Height = 41
            BevelOuter = bvNone
            Caption = 'ENTRI'
            Color = clBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object Panel6: TPanel
            Left = 363
            Top = 40
            Width = 143
            Height = 41
            BevelOuter = bvNone
            Caption = 'VERIFIKASI'
            Color = clBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object Panel7: TPanel
            Left = 509
            Top = 40
            Width = 143
            Height = 41
            BevelOuter = bvNone
            Caption = 'PRINT'
            Color = clBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object Panel8: TPanel
            Left = 655
            Top = 40
            Width = 143
            Height = 41
            BevelOuter = bvNone
            Caption = 'PENYERAHAN'
            Color = clBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object pDaftar: TPanel
            Left = 71
            Top = 84
            Width = 143
            Height = 56
            BevelOuter = bvNone
            Caption = '0'
            Color = clBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -24
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object pEntry: TPanel
            Left = 217
            Top = 84
            Width = 143
            Height = 56
            BevelOuter = bvNone
            Caption = '0'
            Color = clBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -24
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object pVerifikasi: TPanel
            Left = 363
            Top = 84
            Width = 143
            Height = 56
            BevelOuter = bvNone
            Caption = '0'
            Color = clBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -24
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object pTTD: TPanel
            Left = 509
            Top = 84
            Width = 143
            Height = 56
            BevelOuter = bvNone
            Caption = '0'
            Color = clBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -24
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object pPengesahan: TPanel
            Left = 655
            Top = 84
            Width = 143
            Height = 56
            BevelOuter = bvNone
            Caption = '0'
            Color = clBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -24
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
        end
      end
      object cxGrid: TcxGrid
        Left = 9
        Top = 194
        Width = 1064
        Height = 263
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Cancel.Visible = True
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          DataController.DataSource = dsuniSPDetail
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
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
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
            Width = 161
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = 'TNKB'
            DataBinding.FieldName = 'NO_POLISI'
            Options.Editing = False
            Width = 143
          end
          object cxGridDBTableView1Column3: TcxGridDBColumn
            Caption = 'No Rangka'
            DataBinding.FieldName = 'NO_RANGKA'
            Options.Editing = False
            Width = 211
          end
          object cxGridDBTableView1Column5: TcxGridDBColumn
            Caption = 'Jenis Nama'
            DataBinding.FieldName = 'JENIS_NAMA'
            Options.Editing = False
            Width = 180
          end
          object cxGridDBTableView1Column6: TcxGridDBColumn
            Caption = 'Wilayah Nama'
            DataBinding.FieldName = 'WILAYAH_NAMA'
            Options.Editing = False
            Width = 165
          end
          object cxGridDBTableView1Column7: TcxGridDBColumn
            Caption = 'Waktu Entri'
            DataBinding.FieldName = 'ENTRI_DATE'
            Width = 151
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxButton1: TcxButton
        Left = 998
        Top = 170
        Width = 75
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Refresh'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = cxButton1Click
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Detail Data Pendaftaran'
      ImageIndex = 1
      DesignSize = (
        1079
        459)
      object cxButton2: TcxButton
        Left = 998
        Top = 2
        Width = 75
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Refresh'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cxButton2Click
      end
      object cxGrid1: TcxGrid
        Left = 4
        Top = 26
        Width = 1069
        Height = 423
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        object cxGridDBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Cancel.Visible = True
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          DataController.DataSource = dsuniSPTampil
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
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'No BPKB'
            DataBinding.FieldName = 'NO_BPKB'
            Options.ShowEditButtons = isebAlways
            Width = 148
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'No Rangka'
            DataBinding.FieldName = 'NO_RANGKA'
            Width = 204
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'No Faktur'
            DataBinding.FieldName = 'no_faktur'
            Width = 224
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Barcode'
            DataBinding.FieldName = 'barcode'
            Width = 192
          end
          object cxGridDBTableView1Column8: TcxGridDBColumn
            Caption = 'Pemohon'
            DataBinding.FieldName = 'pemohon_nama'
            Width = 137
          end
          object cxGridDBTableView1Column9: TcxGridDBColumn
            Caption = 'Tipe Daftaran'
            DataBinding.FieldName = 'tipe_daftaran'
            Visible = False
            Width = 146
          end
          object cxGridDBTableView1Column10: TcxGridDBColumn
            Caption = 'Diplomat'
            DataBinding.FieldName = 'diplomat'
            Width = 138
          end
          object cxGridDBTableView1Column11: TcxGridDBColumn
            Caption = 'Proses'
            DataBinding.FieldName = 'sudah_diproses'
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Detail Data Entri'
      ImageIndex = 2
      DesignSize = (
        1079
        459)
      object cxGrid2: TcxGrid
        Left = 4
        Top = 26
        Width = 1069
        Height = 423
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
          DataController.DataSource = dsuniSPEntri
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.PercentWildcard = '*'
          DataController.Filter.UnderscoreWildcard = '?'
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0'
              Kind = skCount
              FieldName = 'operator_nama'
              Column = cxGridDBOperator
            end
            item
              Kind = skCount
              Position = spFooter
              Column = cxGridDBOperator
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skCount
              FieldName = 'no_bpkb'
              Column = cxGridDBColumn5
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
          object cxGridDBOperator: TcxGridDBColumn
            Caption = 'OPERATOR'
            DataBinding.FieldName = 'OP_NAMA'
            Visible = False
            GroupIndex = 0
            Width = 230
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'No BPKB'
            DataBinding.FieldName = 'NO_BPKB'
            Options.ShowEditButtons = isebAlways
            Width = 165
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'TNKB'
            DataBinding.FieldName = 'no_polisi'
            Width = 204
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'No Rangka'
            DataBinding.FieldName = 'no_rangka'
            Width = 271
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'JENIS_NAMA'
            Width = 213
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Wilayah'
            DataBinding.FieldName = 'WILAYAH_NAMA'
            Width = 185
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'Waktu'
            DataBinding.FieldName = 'TANGGAL'
            Width = 203
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object cxButton3: TcxButton
        Left = 998
        Top = 2
        Width = 75
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Refresh'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = cxButton3Click
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Detail Data Verifikasi'
      ImageIndex = 3
      DesignSize = (
        1079
        459)
      object cxButton4: TcxButton
        Left = 998
        Top = 2
        Width = 75
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Refresh'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cxButton4Click
      end
      object cxGrid3: TcxGrid
        Left = 4
        Top = 26
        Width = 1069
        Height = 423
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        object cxGridDBTableView4: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Cancel.Visible = True
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          DataController.DataSource = dsuniSPVerifikasi
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.PercentWildcard = '*'
          DataController.Filter.UnderscoreWildcard = '?'
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0'
              Kind = skCount
              FieldName = 'operator_nama'
              Column = cxGridDBColumn11
            end
            item
              Kind = skCount
              Position = spFooter
              Column = cxGridDBColumn11
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skCount
              FieldName = 'no_bpkb'
              Column = cxGridDBColumn12
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
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'OPERATOR'
            DataBinding.FieldName = 'OP_NAMA'
            Visible = False
            GroupIndex = 0
            Width = 230
          end
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'No BPKB'
            DataBinding.FieldName = 'NO_BPKB'
            Options.ShowEditButtons = isebAlways
            Width = 165
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'TNKB'
            DataBinding.FieldName = 'no_polisi'
            Width = 204
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'No Rangka'
            DataBinding.FieldName = 'no_rangka'
            Width = 271
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'JENIS_NAMA'
            Width = 213
          end
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'Wilayah'
            DataBinding.FieldName = 'WILAYAH_NAMA'
            Width = 204
          end
          object cxGridDBColumn23: TcxGridDBColumn
            Caption = 'Waktu'
            DataBinding.FieldName = 'TANGGAL'
            Width = 146
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Detail Data Cetak BPKB'
      ImageIndex = 4
      DesignSize = (
        1079
        459)
      object cxButton5: TcxButton
        Left = 998
        Top = 2
        Width = 75
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Refresh'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cxButton5Click
      end
      object cxGrid4: TcxGrid
        Left = 4
        Top = 26
        Width = 1069
        Height = 423
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        object cxGridDBTableView5: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Cancel.Visible = True
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          DataController.DataSource = dsuniSPCetak
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.PercentWildcard = '*'
          DataController.Filter.UnderscoreWildcard = '?'
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0'
              Kind = skCount
              FieldName = 'operator_nama'
              Column = cxGridDBColumn17
            end
            item
              Kind = skCount
              Position = spFooter
              Column = cxGridDBColumn17
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skCount
              FieldName = 'no_bpkb'
              Column = cxGridDBColumn18
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
          object cxGridDBColumn17: TcxGridDBColumn
            Caption = 'OPERATOR'
            DataBinding.FieldName = 'OP_NAMA'
            Visible = False
            GroupIndex = 0
            Width = 230
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'No BPKB'
            DataBinding.FieldName = 'NO_BPKB'
            Options.ShowEditButtons = isebAlways
            Width = 165
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'TNKB'
            DataBinding.FieldName = 'no_polisi'
            Width = 204
          end
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = 'No Rangka'
            DataBinding.FieldName = 'no_rangka'
            Width = 271
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = 'Jenis'
            DataBinding.FieldName = 'JENIS_NAMA'
            Width = 213
          end
          object cxGridDBColumn22: TcxGridDBColumn
            Caption = 'Wilayah'
            DataBinding.FieldName = 'WILAYAH_NAMA'
            Width = 185
          end
          object cxGridDBColumn24: TcxGridDBColumn
            Caption = 'Waktu'
            DataBinding.FieldName = 'TANGGAL'
            Width = 201
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBTableView5
        end
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 23
    Top = 176
  end
  object dsuniSPDetail: TUniDataSource
    DataSet = uniSPDetail
    Left = 24
    Top = 248
  end
  object uniSPDetail: TUniStoredProc
    Connection = DM.dbSrv
    Left = 24
    Top = 213
  end
  object uniSPSUM: TUniStoredProc
    Connection = DM.dbSrv
    Left = 64
    Top = 213
  end
  object uniSPTampil: TUniStoredProc
    Connection = DM.dbSrv
    Left = 24
    Top = 285
  end
  object dsuniSPTampil: TUniDataSource
    DataSet = uniSPTampil
    Left = 24
    Top = 320
  end
  object uniSPEntri: TUniStoredProc
    Connection = DM.dbSrv
    Left = 64
    Top = 285
  end
  object dsuniSPEntri: TUniDataSource
    DataSet = uniSPEntri
    Left = 64
    Top = 320
  end
  object uniSPVerifikasi: TUniStoredProc
    Connection = DM.dbSrv
    Left = 104
    Top = 285
  end
  object dsuniSPVerifikasi: TUniDataSource
    DataSet = uniSPVerifikasi
    Left = 104
    Top = 320
  end
  object uniSPCetak: TUniStoredProc
    Connection = DM.dbSrv
    Left = 136
    Top = 285
  end
  object dsuniSPCetak: TUniDataSource
    DataSet = uniSPCetak
    Left = 136
    Top = 320
  end
end
