object fHistoryBlokir: TfHistoryBlokir
  Left = 240
  Top = 74
  Width = 1058
  Height = 624
  BorderIcons = [biSystemMenu]
  Caption = 'History Data Blokir 2009 sd 2014'
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    1042
    585)
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 279
    Height = 23
    Caption = 'History Blokir 2009 s/d 2014'
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
    Width = 1040
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 32
    Width = 1041
    Height = 551
    ActivePage = cxTabSheet1
    TabOrder = 0
    ClientRectBottom = 551
    ClientRectRight = 1041
    ClientRectTop = 34
    object cxTabSheet1: TcxTabSheet
      Caption = 'Import Data From Exel'
      ImageIndex = 0
      DesignSize = (
        1041
        517)
      object Label4: TLabel
        Left = 25
        Top = 94
        Width = 113
        Height = 21
        Caption = 'Lokasi File Exel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 200
        Top = 130
        Width = 72
        Height = 16
        Caption = 'Nama File'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 280
        Top = 130
        Width = 72
        Height = 16
        Caption = 'Nama File'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 201
        Top = 165
        Width = 53
        Height = 16
        Caption = 'Sheets:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape2: TShape
        Left = 1
        Top = 189
        Width = 1037
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Pen.Color = clWhite
      end
      object Shape3: TShape
        Left = 1
        Top = 241
        Width = 1037
        Height = 2
        Anchors = [akLeft, akTop, akRight]
        Pen.Color = clWhite
      end
      object Label18: TLabel
        Left = 603
        Top = 243
        Width = 540
        Height = 18
        Caption = 
          '----------------------------------------------------------------' +
          '--------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 609
        Top = 263
        Width = 133
        Height = 18
        Caption = 'Jumlah Sukses Blokir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lSukses: TLabel
        Left = 885
        Top = 261
        Width = 86
        Height = 18
        Caption = 'TJMLSUKSES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 609
        Top = 303
        Width = 163
        Height = 18
        Caption = 'Jumlah Sukses Insert HB'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lInsertHB: TLabel
        Left = 885
        Top = 301
        Width = 80
        Height = 18
        Caption = 'TJMLGAGAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 603
        Top = 281
        Width = 540
        Height = 18
        Caption = 
          '----------------------------------------------------------------' +
          '--------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 603
        Top = 323
        Width = 540
        Height = 18
        Caption = 
          '----------------------------------------------------------------' +
          '--------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 609
        Top = 484
        Width = 83
        Height = 18
        Caption = 'Total Record'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lTotal: TLabel
        Left = 885
        Top = 484
        Width = 80
        Height = 18
        Caption = 'TJMLGAGAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 604
        Top = 500
        Width = 540
        Height = 18
        Caption = 
          '----------------------------------------------------------------' +
          '--------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 604
        Top = 364
        Width = 540
        Height = 18
        Caption = 
          '----------------------------------------------------------------' +
          '--------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 609
        Top = 343
        Width = 195
        Height = 18
        Caption = 'Jumlah Gagal, BPKB Non Aktif'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lNonAktif: TLabel
        Left = 885
        Top = 342
        Width = 80
        Height = 18
        Caption = 'TJMLGAGAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 605
        Top = 399
        Width = 540
        Height = 18
        Caption = 
          '----------------------------------------------------------------' +
          '--------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 609
        Top = 384
        Width = 214
        Height = 18
        Caption = 'Jumlah Gagal, BPKB Sudah Blokir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lSudahBlokir: TLabel
        Left = 885
        Top = 383
        Width = 80
        Height = 18
        Caption = 'TJMLGAGAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 606
        Top = 436
        Width = 540
        Height = 18
        Caption = 
          '----------------------------------------------------------------' +
          '--------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 609
        Top = 419
        Width = 245
        Height = 18
        Caption = 'Jumlah Gagal, BPKB Sudah Mutasi LD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lMutasiLD: TLabel
        Left = 885
        Top = 419
        Width = 80
        Height = 18
        Caption = 'TJMLGAGAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 609
        Top = 470
        Width = 540
        Height = 18
        Caption = 
          '----------------------------------------------------------------' +
          '--------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 609
        Top = 454
        Width = 36
        Height = 18
        Caption = 'Error '
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lerror: TLabel
        Left = 885
        Top = 454
        Width = 80
        Height = 18
        Caption = 'TJMLGAGAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object eLokasi: TcxTextEdit
        Left = 143
        Top = 91
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clWindow
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 794
      end
      object bBaru: TcxButton
        Left = 941
        Top = 91
        Width = 47
        Height = 28
        Cursor = crHandPoint
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = bBaruClick
      end
      object TombolSound2: TButton
        Left = 24
        Top = 131
        Width = 144
        Height = 57
        Caption = 'Connect'
        TabOrder = 2
        OnClick = TombolSound2Click
      end
      object ComboBox1: TComboBox
        Left = 282
        Top = 152
        Width = 311
        Height = 31
        ItemHeight = 23
        TabOrder = 3
      end
      object TombolSound3: TButton
        Left = 24
        Top = 197
        Width = 144
        Height = 39
        Caption = 'New'
        TabOrder = 4
        OnClick = TombolSound3Click
      end
      object TombolSound1: TButton
        Left = 174
        Top = 197
        Width = 419
        Height = 39
        Caption = 'Proses'
        TabOrder = 5
        OnClick = TombolSound1Click
      end
      object Memo1: TMemo
        Left = 24
        Top = 248
        Width = 569
        Height = 267
        Anchors = [akLeft, akTop, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 6
      end
      object RadioGroup1: TRadioGroup
        Left = 24
        Top = 8
        Width = 1007
        Height = 78
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Polda'
        TabOrder = 7
      end
      object cbPolda: TComboBox
        Left = 48
        Top = 32
        Width = 941
        Height = 31
        ItemHeight = 23
        TabOrder = 8
        Text = 'cbPolda'
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Data History'
      ImageIndex = 1
      DesignSize = (
        1041
        517)
      object cxGrid: TcxGrid
        Left = 0
        Top = 49
        Width = 1041
        Height = 468
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
          DataController.DataSource = DataSource1
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
            DataBinding.FieldName = 'TUJUAN'
            Options.ShowEditButtons = isebAlways
            Width = 148
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = 'ALAMAT'
            Width = 224
          end
          object cxGridDBTableView1Column3: TcxGridDBColumn
            Caption = 'NO SRT&TGL'
            DataBinding.FieldName = 'NO_TGL_SURAT'
            Width = 155
          end
          object cxGridDBTableView1Column5: TcxGridDBColumn
            DataBinding.FieldName = 'ALASAN'
            Width = 231
          end
          object cxGridDBTableView1Column6: TcxGridDBColumn
            DataBinding.FieldName = 'NOBPKB'
            Width = 191
          end
          object cxGridDBTableView1Column7: TcxGridDBColumn
            DataBinding.FieldName = 'NOREG'
            Width = 127
          end
          object cxGridDBTableView1Column8: TcxGridDBColumn
            Caption = 'T4BIT'
            DataBinding.FieldName = 'TEMPAT'
            Width = 137
          end
          object cxGridDBTableView1Column9: TcxGridDBColumn
            Caption = 'TGLBIT'
            DataBinding.FieldName = 'TGL_BLOKIR'
            Width = 146
          end
          object cxGridDBTableView1Column10: TcxGridDBColumn
            DataBinding.FieldName = 'NOPOL'
            Width = 138
          end
          object cxGridDBTableView1Column11: TcxGridDBColumn
            Caption = 'WRNTNKB'
            DataBinding.FieldName = 'WARNA_TNKB'
          end
          object cxGridDBTableView1Column12: TcxGridDBColumn
            Caption = 'NM PEMLK'
            DataBinding.FieldName = 'NAMA_PEMILIK'
            Width = 132
          end
          object cxGridDBTableView1Column13: TcxGridDBColumn
            Caption = 'ALMT PMLK'
            DataBinding.FieldName = 'ALAMAT_PEMILIK'
            Width = 194
          end
          object cxGridDBTableView1Column14: TcxGridDBColumn
            Caption = 'MEREK'
            DataBinding.FieldName = 'MERK'
            Width = 264
          end
          object cxGridDBTableView1Column15: TcxGridDBColumn
            Caption = 'TYPE'
            DataBinding.FieldName = 'TIPE'
            Width = 145
          end
          object cxGridDBTableView1Column16: TcxGridDBColumn
            DataBinding.FieldName = 'JENIS'
            Width = 136
          end
          object cxGridDBTableView1Column4: TcxGridDBColumn
            DataBinding.FieldName = 'MODEL'
          end
          object cxGridDBTableView1Column17: TcxGridDBColumn
            Caption = 'THBUAT'
            DataBinding.FieldName = 'THN_BUAT'
          end
          object cxGridDBTableView1Column18: TcxGridDBColumn
            Caption = 'THRAKIT'
            DataBinding.FieldName = 'THN_RAKIT'
          end
          object cxGridDBTableView1Column19: TcxGridDBColumn
            Caption = 'CC'
            DataBinding.FieldName = 'CILINDER'
          end
          object cxGridDBTableView1Column20: TcxGridDBColumn
            DataBinding.FieldName = 'WARNA'
          end
          object cxGridDBTableView1Column21: TcxGridDBColumn
            Caption = 'NORAK'
            DataBinding.FieldName = 'NO_RANGKA'
          end
          object cxGridDBTableView1Column22: TcxGridDBColumn
            Caption = 'NOSIN'
            DataBinding.FieldName = 'NO_MESIN'
          end
          object cxGridDBTableView1Column23: TcxGridDBColumn
            Caption = 'JMLSMB'
            DataBinding.FieldName = 'SUMBU'
          end
          object cxGridDBTableView1Column24: TcxGridDBColumn
            Caption = 'JMLRODA'
            DataBinding.FieldName = 'RODA'
          end
          object cxGridDBTableView1Column25: TcxGridDBColumn
            Caption = 'BBM'
            DataBinding.FieldName = 'BAHAN_BAKAR'
          end
          object cxGridDBTableView1Column26: TcxGridDBColumn
            DataBinding.FieldName = 'KODE'
          end
          object cxGridDBTableView1Column27: TcxGridDBColumn
            Caption = 'KETERANGAN'
            DataBinding.FieldName = 'KET'
            Width = 200
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxButton1: TcxButton
        Left = 914
        Top = 4
        Width = 123
        Height = 41
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
        OnClick = cxButton1Click
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 628
    Top = 4
  end
  object OpenDialog1: TOpenDialog
    Filter = 'excel|*.xls'
    Title = 'Ambil Data Faktur'
    Left = 408
    Top = 16
  end
  object ADOConnection1: TADOConnection
    CursorLocation = clUseServer
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 544
    Top = 4
  end
  object UniQuery1: TUniQuery
    Connection = DM.dbSrv
    Left = 216
    Top = 250
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 264
    Top = 250
  end
end
