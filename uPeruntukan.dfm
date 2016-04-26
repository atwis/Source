object fPeruntukan: TfPeruntukan
  Left = 233
  Top = 202
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'PERUNTUKAN'
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
  OnCanResize = FormCanResize
  OnShow = FormShow
  DesignSize = (
    920
    449)
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 159
    Height = 23
    Caption = 'Data Peruntukan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 3
    Top = 28
    Width = 913
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object cxGrid: TcxGrid
    Left = 3
    Top = 32
    Width = 913
    Height = 369
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
      DataController.DataSource = dsQPeruntukan
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
        Caption = 'PERUNTUKAN'
        DataBinding.FieldName = 'PRT_NAMA'
        Width = 372
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 4
    Top = 405
    Width = 234
    Height = 42
    DataSource = dsQPeruntukan
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
    Anchors = [akLeft, akBottom]
    TabOrder = 1
  end
  object QPeruntukan: TUniQuery
    Connection = DM.dbSrv
    Left = 24
    Top = 224
  end
  object dsQPeruntukan: TUniDataSource
    DataSet = QPeruntukan
    Left = 24
    Top = 248
  end
end
