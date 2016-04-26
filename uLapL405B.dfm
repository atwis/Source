object fLapL405B: TfLapL405B
  Left = 286
  Top = 191
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Laporan L-405 B'
  ClientHeight = 442
  ClientWidth = 912
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  DesignSize = (
    912
    442)
  PixelsPerInch = 96
  TextHeight = 23
  object Shape1: TShape
    Left = -14
    Top = 28
    Width = 926
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object lJudul: TLabel
    Left = 8
    Top = 3
    Width = 173
    Height = 23
    Caption = 'LAPORAN L-405 B'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label50: TLabel
    Left = 6
    Top = 45
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
  object Label1: TLabel
    Left = 293
    Top = 45
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
  object cxPageControl1: TcxPageControl
    Left = 2
    Top = 95
    Width = 907
    Height = 345
    ActivePage = cxTabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ClientRectBottom = 345
    ClientRectRight = 907
    ClientRectTop = 34
    object cxTabSheet1: TcxTabSheet
      Caption = 'Lap I'
      ImageIndex = 0
      object cxDBPivotGrid1: TcxDBPivotGrid
        Left = 0
        Top = 0
        Width = 907
        Height = 311
        Align = alClient
        DataSource = dsuniSPLapI
        Groups = <>
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = ''
        OptionsView.GrandTotalWidth = 177
        TabOrder = 0
        object cxDBPivotGrid1Field1: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 0
          IsCaptionAssigned = True
          Caption = 'JENIS DAFTARAN'
          DataBinding.FieldName = 'Jenis_Daftaran'
          Visible = True
        end
        object cxDBPivotGrid1Field2: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 0
          IsCaptionAssigned = True
          Caption = 'JENIS KENDARAAN'
          DataBinding.FieldName = 'Jenis'
          Visible = True
        end
        object cxDBPivotGrid1Field3: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          DataBinding.FieldName = 'JUMLAH'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0'
          Visible = True
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Lap II'
      ImageIndex = 1
      object cxDBPivotGrid2: TcxDBPivotGrid
        Left = 0
        Top = 0
        Width = 907
        Height = 311
        Align = alClient
        DataSource = dsuniSPLapII
        Groups = <>
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = ''
        OptionsView.GrandTotalWidth = 177
        TabOrder = 0
        object cxDBPivotGridField1: TcxDBPivotGridField
          AreaIndex = 3
          IsCaptionAssigned = True
          Caption = 'JENIS'
          DataBinding.FieldName = 'JENIS'
          Visible = True
        end
        object cxDBPivotGridField2: TcxDBPivotGridField
          AreaIndex = 2
          IsCaptionAssigned = True
          Caption = 'GANTI_KEPEMILIKAN'
          DataBinding.FieldName = 'GANTI_KEPEMILIKAN'
          Visible = True
        end
        object cxDBPivotGridField3: TcxDBPivotGridField
          AreaIndex = 1
          IsCaptionAssigned = True
          Caption = 'RUSAK_TERBACA'
          DataBinding.FieldName = 'RUSAK_TERBACA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0'
          Visible = True
        end
        object cxDBPivotGrid2Field1: TcxDBPivotGridField
          AreaIndex = 0
          DataBinding.FieldName = 'HAL_HABIS'
          Visible = True
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Lap III'
      ImageIndex = 2
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 907
        Height = 311
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.StyleSheet = DM.SyteAku
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Jenis Mutasi'
            DataBinding.FieldName = 'no'
            HeaderAlignmentHorz = taCenter
            Width = 311
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Mobil Penumpang'
            DataBinding.FieldName = 'bpkb_no'
            HeaderAlignmentHorz = taCenter
            Width = 125
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'Bus'
            DataBinding.FieldName = 'is_cetak_tt'
            HeaderAlignmentHorz = taCenter
            Width = 129
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'Mobil Barang'
            HeaderAlignmentHorz = taCenter
            Width = 128
          end
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'Sepeda Motor'
            HeaderAlignmentHorz = taCenter
            Width = 147
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'Ransus'
            HeaderAlignmentHorz = taCenter
            Width = 124
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'Jumlah'
            HeaderAlignmentHorz = taCenter
            Width = 111
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Lap IV'
      ImageIndex = 3
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 907
        Height = 311
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGridDBTableView3: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.StyleSheet = DM.SyteAku
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = 'Nama Perubahan'
            DataBinding.FieldName = 'no'
            HeaderAlignmentHorz = taCenter
            Width = 311
          end
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'Mobil Penumpang'
            DataBinding.FieldName = 'bpkb_no'
            HeaderAlignmentHorz = taCenter
            Width = 125
          end
          object cxGridDBColumn17: TcxGridDBColumn
            Caption = 'Bus'
            DataBinding.FieldName = 'is_cetak_tt'
            HeaderAlignmentHorz = taCenter
            Width = 129
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'Mobil Barang'
            HeaderAlignmentHorz = taCenter
            Width = 128
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'Sepeda Motor'
            HeaderAlignmentHorz = taCenter
            Width = 147
          end
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = 'Ransus'
            HeaderAlignmentHorz = taCenter
            Width = 124
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = 'Jumlah'
            HeaderAlignmentHorz = taCenter
            Width = 111
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Lap V'
      ImageIndex = 4
      object cxGrid5: TcxGrid
        Left = 0
        Top = 0
        Width = 907
        Height = 311
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGridDBTableView4: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.StyleSheet = DM.SyteAku
          object cxGridDBColumn22: TcxGridDBColumn
            Caption = 'Penggunaan Material BPKB'
            DataBinding.FieldName = 'no'
            HeaderAlignmentHorz = taCenter
            Width = 311
          end
          object cxGridDBColumn23: TcxGridDBColumn
            Caption = 'Mobil Penumpang'
            DataBinding.FieldName = 'bpkb_no'
            HeaderAlignmentHorz = taCenter
            Width = 125
          end
          object cxGridDBColumn24: TcxGridDBColumn
            Caption = 'Bus'
            DataBinding.FieldName = 'is_cetak_tt'
            HeaderAlignmentHorz = taCenter
            Width = 129
          end
          object cxGridDBColumn25: TcxGridDBColumn
            Caption = 'Mobil Barang'
            HeaderAlignmentHorz = taCenter
            Width = 128
          end
          object cxGridDBColumn26: TcxGridDBColumn
            Caption = 'Sepeda Motor'
            HeaderAlignmentHorz = taCenter
            Width = 147
          end
          object cxGridDBColumn27: TcxGridDBColumn
            Caption = 'Ransus'
            HeaderAlignmentHorz = taCenter
            Width = 124
          end
          object cxGridDBColumn28: TcxGridDBColumn
            Caption = 'Jumlah'
            HeaderAlignmentHorz = taCenter
            Width = 111
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
    end
    object cxTabSheet6: TcxTabSheet
      Caption = 'Lap VI'
      ImageIndex = 5
      object cxGrid6: TcxGrid
        Left = 0
        Top = 0
        Width = 907
        Height = 311
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGridDBTableView5: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.StyleSheet = DM.SyteAku
          object cxGridDBColumn29: TcxGridDBColumn
            Caption = 'Lain-lain'
            DataBinding.FieldName = 'no'
            HeaderAlignmentHorz = taCenter
            Width = 311
          end
          object cxGridDBColumn30: TcxGridDBColumn
            Caption = 'Mobil Penumpang'
            DataBinding.FieldName = 'bpkb_no'
            HeaderAlignmentHorz = taCenter
            Width = 125
          end
          object cxGridDBColumn31: TcxGridDBColumn
            Caption = 'Bus'
            DataBinding.FieldName = 'is_cetak_tt'
            HeaderAlignmentHorz = taCenter
            Width = 129
          end
          object cxGridDBColumn32: TcxGridDBColumn
            Caption = 'Mobil Barang'
            HeaderAlignmentHorz = taCenter
            Width = 128
          end
          object cxGridDBColumn33: TcxGridDBColumn
            Caption = 'Sepeda Motor'
            HeaderAlignmentHorz = taCenter
            Width = 147
          end
          object cxGridDBColumn34: TcxGridDBColumn
            Caption = 'Ransus'
            HeaderAlignmentHorz = taCenter
            Width = 124
          end
          object cxGridDBColumn35: TcxGridDBColumn
            Caption = 'Jumlah'
            HeaderAlignmentHorz = taCenter
            Width = 111
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBTableView5
        end
      end
    end
  end
  object dtTglAwal: TcxDateEdit
    Left = 127
    Top = 43
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
  object dtTglAkhir: TcxDateEdit
    Left = 335
    Top = 43
    ParentFont = False
    Properties.ShowTime = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 155
  end
  object bGetDataRegister: TcxButton
    Left = 497
    Top = 37
    Width = 408
    Height = 44
    Cursor = crHandPoint
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Tampilkan Laporan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
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
  object uniSPLapI: TUniStoredProc
    Connection = DM.dbSrv
    Left = 400
    Top = 221
  end
  object dsuniSPLapI: TUniDataSource
    DataSet = uniSPLapI
    Left = 430
    Top = 221
  end
  object dsuniSPLapII: TUniDataSource
    DataSet = uniSPLapII
    Left = 430
    Top = 253
  end
  object uniSPLapII: TUniStoredProc
    Connection = DM.dbSrv
    Left = 400
    Top = 253
  end
end
