object fPolres: TfPolres
  Left = 233
  Top = 202
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'POLRES'
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
  DesignSize = (
    920
    449)
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 126
    Height = 23
    Caption = 'Data POLRES'
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
  object Label4: TLabel
    Left = 8
    Top = 44
    Width = 93
    Height = 23
    Caption = 'Kode Polda'
    Transparent = True
  end
  object Label5: TLabel
    Left = 8
    Top = 75
    Width = 97
    Height = 23
    Caption = 'Kode Polres'
    Transparent = True
  end
  object Label6: TLabel
    Left = 8
    Top = 107
    Width = 104
    Height = 23
    Caption = 'Nama Polres'
    Transparent = True
  end
  object Button3: TButton
    Left = 175
    Top = 137
    Width = 113
    Height = 41
    Cursor = crHandPoint
    Caption = 'Simpan'
    TabOrder = 0
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 295
    Top = 137
    Width = 113
    Height = 41
    Cursor = crHandPoint
    Caption = 'Baru'
    TabOrder = 1
    OnClick = Button4Click
  end
  object eKodePolres: TcxTextEdit
    Left = 174
    Top = 70
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
    Width = 116
  end
  object eNamaPolres: TcxTextEdit
    Left = 174
    Top = 102
    Anchors = [akLeft, akTop, akRight]
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
    Width = 731
  end
  object cbPolda: TComboBox
    Left = 175
    Top = 37
    Width = 475
    Height = 31
    Style = csDropDownList
    ItemHeight = 23
    TabOrder = 4
    OnChange = cbPoldaChange
    OnDropDown = cbPoldaDropDown
  end
  object cxGrid: TcxGrid
    Left = 8
    Top = 184
    Width = 906
    Height = 262
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      OnCellClick = cxGridDBTableView1CellClick
      DataController.DataSource = DSQPOLRES
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
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.HeaderHeight = 45
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      Styles.StyleSheet = DM.SyteAku
      object cxGridDBTableView1Column1: TcxGridDBColumn
        Caption = 'POLRES KODE'
        DataBinding.FieldName = 'POLRES_KODE'
        Width = 153
      end
      object cxGridDBTableView1Column2: TcxGridDBColumn
        Caption = 'POLRES NAMA'
        DataBinding.FieldName = 'POLRES_NAMA'
        Width = 246
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object QPOLRES: TUniQuery
    Connection = DM.dbSrv
    Left = 16
    Top = 144
  end
  object DSQPOLRES: TUniDataSource
    DataSet = QPOLRES
    Left = 16
    Top = 168
  end
end
