object fJenisPerubahan: TfJenisPerubahan
  Left = 242
  Top = 157
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'JENIS PERUBAHAN'
  ClientHeight = 443
  ClientWidth = 793
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  DesignSize = (
    793
    443)
  PixelsPerInch = 96
  TextHeight = 23
  object lJudul: TLabel
    Left = 8
    Top = 3
    Width = 156
    Height = 23
    Caption = 'Jenis Perubahan'
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
    Width = 793
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object cxGrid: TcxGrid
    Left = 3
    Top = 88
    Width = 787
    Height = 355
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
      DataController.DataSource = dsQDetail
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
      OptionsView.Navigator = True
      OptionsView.Footer = True
      OptionsView.HeaderHeight = 45
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      Styles.StyleSheet = DM.SyteAku
      object cxGridDBTableView1Column1: TcxGridDBColumn
        Caption = 'Nama Perubahan'
        DataBinding.FieldName = 'NAMA_PRB'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Options.ShowEditButtons = isebAlways
        Width = 300
      end
      object cxGridDBTableView1Column4: TcxGridDBColumn
        Caption = 'Kode Awal'
        DataBinding.FieldName = 'KD_AWAL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Width = 67
      end
      object cxGridDBTableView1Column9: TcxGridDBColumn
        Caption = 'Kode Akhir'
        DataBinding.FieldName = 'KD_AKHIR'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Width = 123
      end
      object cxGridDBTableView1Column2: TcxGridDBColumn
        Caption = 'Ganti Nama'
        DataBinding.FieldName = 'RBH_NAMA'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 100
      end
      object cxGridDBTableView1Column3: TcxGridDBColumn
        Caption = 'Ganti Alamat'
        DataBinding.FieldName = 'RBH_ALAMAT'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 100
      end
      object cxGridDBTableView1Column5: TcxGridDBColumn
        Caption = 'Ganti Warna'
        DataBinding.FieldName = 'RBH_WARNA'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 100
      end
      object cxGridDBTableView1Column6: TcxGridDBColumn
        Caption = 'Ganti No Polisi'
        DataBinding.FieldName = 'RBH_NOPOL'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 100
      end
      object cxGridDBTableView1Column7: TcxGridDBColumn
        Caption = 'Rubah Bentuk'
        DataBinding.FieldName = 'RBH_MODEL'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 100
      end
      object cxGridDBTableView1Column10: TcxGridDBColumn
        Caption = 'Ganti No Mesin'
        DataBinding.FieldName = 'RBH_MESIN'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 97
      end
      object cxGridDBTableView1Column11: TcxGridDBColumn
        Caption = 'Dasar'
        DataBinding.FieldName = 'RBH_DASAR'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 97
      end
      object cxGridDBTableView1Column8: TcxGridDBColumn
        Caption = 'IS AKTIF'
        DataBinding.FieldName = 'ENABLED'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 100
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object bGetDataRegister: TcxButton
    Left = 9
    Top = 36
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
    TabOrder = 1
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
  object dsQDetail: TUniDataSource
    DataSet = Q3
    Left = 551
    Top = 32
  end
  object Q3: TUniQuery
    Connection = DM.dbSrv
    Left = 552
    Top = 65535
  end
end
