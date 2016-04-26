object fPermintaanBonArsip: TfPermintaanBonArsip
  Left = 203
  Top = 157
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'PERMINTAAN BON ARSIP'
  ClientHeight = 449
  ClientWidth = 920
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
    920
    449)
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 339
    Height = 23
    Caption = 'Ganti Nama - Permintaan Bon Arsip'
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
    Width = 907
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object Label2: TLabel
    Left = 15
    Top = 48
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
  object Shape2: TShape
    Left = 6
    Top = 89
    Width = 907
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object dtTgl: TcxDateEdit
    Left = 100
    Top = 43
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
  object bTampilData: TcxButton
    Left = 278
    Top = 35
    Width = 153
    Height = 50
    Cursor = crHandPoint
    Caption = 'Tampil Data'
    TabOrder = 1
    OnClick = bTampilDataClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000545454BF5454
      54BF545454BF545454BF545454BF545454BF1D1D1D3016161624161616241616
      16241616162400000000000000000000000000000000000000006A6A6ACCF8F8
      F8FFF2F2F2FEEBEBEBFFEBEBEBFF565656B55151515651515156515151565151
      51562F2F2F4A0000000000000000000000000000000000000000888888E3FBFB
      FBFFF5F5F5FFEFEFEFFFE9E9E9FF646464C34C4C4C4D4B4B4B4D4949494D4747
      474D2525253A0000000100000000000000000000000000000000888888E3FBFB
      FBFFF5F5F5FFEFEFEFFFE9E9E9FF646464C34D4D4D4D4B4B4B4D171717CA0F0F
      0FDB101010CA010101CC010101E1010101EB010101F2010101F9888888E3FCFC
      FCFFF6F6F6FFF0F0F0FFEAEAEAFF646464C34D4D4D4D4B4B4B4D4949494D4545
      454A2525253A0000000100000000000000000000000000000000888888E39494
      94E3949494E3939393E3939393E3646464C33333334D3333334D3333334D4444
      44673F3F3F670000000100000000000000000000000000000000848484E3F7F7
      F7FFF6F6F6FFF5F5F5FFF5F5F5FF606060C65151515651515156515151565151
      5156252525440000000100000000000000000000000000000000888888E3FBFB
      FBFFF5F5F5FFF1F1F1FFF3F3F3FF646464C34C4C4C4D4B4B4B4D4949494D4747
      474D2525253A0000000100000000000000000000000000000000888888E3FBFB
      FBFFF5F5F5FFEFEFEFFFEAEAEAFF646464C34D4D4D4D4B4B4B4D131313D30101
      01D60D0D0DD3010101E5010101F5010101F5010101F9010101FF888888E3FCFC
      FCFFF6F6F6FFF0F0F0FFEAEAEAFF646464C34D4D4D4D4B4B4B4D4949494D4747
      474D1B1B1B2B0000000100000000000000000000000000000000848484E38787
      87E3868686E3868686E3858585E3606060C63232324F3232324F3232324F3232
      324F151515260000000100000000000000000000000000000000888888E3FBFB
      FBFFF5F5F5FFEFEFEFFFE9E9E9FF646464C34C4C4C4D4A4A4A4D4848484D4747
      474D2525253A0000000100000000000000000000000000000000888888E3FBFB
      FBFFF5F5F5FFEFEFEFFFE9E9E9FF646464C34C4C4C4D4B4B4B4D4949494D4747
      474D2525253A0000000100000000000000000000000000000000888888E3FBFB
      FBFFF6F6F6FFEFEFEFFFEAEAEAFF646464C34D4D4D4D4B4B4B4D131313D30101
      01D60D0D0DD3010101E5010101F5010101F5010101F9010101F9888888E3FCFC
      FCFFF6F6F6FFF0F0F0FFEAEAEAFF646464C34D4D4D4D4B4B4B4D4949494D4848
      484D2525253A00000001000000000000000000000000000000006A6A6ACC7171
      71CC707070CC6F6F6FCC6E6E6ECC565656B52D2D2D3A2D2D2D3A2C2C2C3A2B2B
      2B3A2020203A0000000000000000000000000000000000000000}
  end
  object cxGrid: TcxGrid
    Left = 6
    Top = 98
    Width = 907
    Height = 343
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    object cxGridDBTableView1: TcxGridDBTableView
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
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 45
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      Styles.StyleSheet = DM.SyteAku
      object cxGridDBTableView1Column1: TcxGridDBColumn
        Caption = 'NO BPKB BARU'
        DataBinding.FieldName = 'no_bpkb_baru'
        Options.ShowEditButtons = isebAlways
        Width = 156
      end
      object cxGridDBTableView1Column2: TcxGridDBColumn
        Caption = 'NO BPKB LAMA'
        DataBinding.FieldName = 'no_bpkb_lama'
        Width = 229
      end
      object cxGridDBTableView1Column3: TcxGridDBColumn
        Caption = 'NO POLISI'
        DataBinding.FieldName = 'no_polisi'
        Width = 238
      end
      object cxGridDBTableView1Column5: TcxGridDBColumn
        Caption = 'JENIS'
        DataBinding.FieldName = 'jenis_nama'
        Width = 259
      end
      object cxGridDBTableView1Column6: TcxGridDBColumn
        Caption = 'WARNA KARTU'
        DataBinding.FieldName = 'wk_nama'
        Width = 191
      end
      object cxGridDBTableView1Column4: TcxGridDBColumn
        Caption = 'PEMOHON'
        DataBinding.FieldName = 'op_nama'
        Width = 150
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 438
    Top = 35
    Width = 153
    Height = 50
    Cursor = crHandPoint
    Caption = 'Cetak Data'
    TabOrder = 3
    OnClick = cxButton1Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000545454BF5454
      54BF545454BF545454BF545454BF545454BF1D1D1D3016161624161616241616
      16241616162400000000000000000000000000000000000000006A6A6ACCF8F8
      F8FFF2F2F2FEEBEBEBFFEBEBEBFF565656B55151515651515156515151565151
      51562F2F2F4A0000000000000000000000000000000000000000888888E3FBFB
      FBFFF5F5F5FFEFEFEFFFE9E9E9FF646464C34C4C4C4D4B4B4B4D4949494D4747
      474D2525253A0000000100000000000000000000000000000000888888E3FBFB
      FBFFF5F5F5FFEFEFEFFFE9E9E9FF646464C34D4D4D4D4B4B4B4D171717CA0F0F
      0FDB101010CA010101CC010101E1010101EB010101F2010101F9888888E3FCFC
      FCFFF6F6F6FFF0F0F0FFEAEAEAFF646464C34D4D4D4D4B4B4B4D4949494D4545
      454A2525253A0000000100000000000000000000000000000000888888E39494
      94E3949494E3939393E3939393E3646464C33333334D3333334D3333334D4444
      44673F3F3F670000000100000000000000000000000000000000848484E3F7F7
      F7FFF6F6F6FFF5F5F5FFF5F5F5FF606060C65151515651515156515151565151
      5156252525440000000100000000000000000000000000000000888888E3FBFB
      FBFFF5F5F5FFF1F1F1FFF3F3F3FF646464C34C4C4C4D4B4B4B4D4949494D4747
      474D2525253A0000000100000000000000000000000000000000888888E3FBFB
      FBFFF5F5F5FFEFEFEFFFEAEAEAFF646464C34D4D4D4D4B4B4B4D131313D30101
      01D60D0D0DD3010101E5010101F5010101F5010101F9010101FF888888E3FCFC
      FCFFF6F6F6FFF0F0F0FFEAEAEAFF646464C34D4D4D4D4B4B4B4D4949494D4747
      474D1B1B1B2B0000000100000000000000000000000000000000848484E38787
      87E3868686E3868686E3858585E3606060C63232324F3232324F3232324F3232
      324F151515260000000100000000000000000000000000000000888888E3FBFB
      FBFFF5F5F5FFEFEFEFFFE9E9E9FF646464C34C4C4C4D4A4A4A4D4848484D4747
      474D2525253A0000000100000000000000000000000000000000888888E3FBFB
      FBFFF5F5F5FFEFEFEFFFE9E9E9FF646464C34C4C4C4D4B4B4B4D4949494D4747
      474D2525253A0000000100000000000000000000000000000000888888E3FBFB
      FBFFF6F6F6FFEFEFEFFFEAEAEAFF646464C34D4D4D4D4B4B4B4D131313D30101
      01D60D0D0DD3010101E5010101F5010101F5010101F9010101F9888888E3FCFC
      FCFFF6F6F6FFF0F0F0FFEAEAEAFF646464C34D4D4D4D4B4B4B4D4949494D4848
      484D2525253A00000001000000000000000000000000000000006A6A6ACC7171
      71CC707070CC6F6F6FCC6E6E6ECC565656B52D2D2D3A2D2D2D3A2C2C2C3A2B2B
      2B3A2020203A0000000000000000000000000000000000000000}
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
  object frxReport: TfrxReport
    Version = '4.15.6'
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
    OnGetValue = frxReportGetValue
    Left = 96
    Top = 216
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDesigner1: TfrxDesigner
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
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 128
    Top = 216
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 128
    Top = 248
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDatasetKI'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 96
    Top = 248
  end
end
