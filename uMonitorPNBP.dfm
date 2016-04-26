object fMonitorPNBP: TfMonitorPNBP
  Left = 274
  Top = 17
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'Monitor PNBP'
  ClientHeight = 669
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
    669)
  PixelsPerInch = 96
  TextHeight = 23
  object Shape2: TShape
    Left = 0
    Top = 36
    Width = 911
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object lJudul: TLabel
    Left = 8
    Top = 5
    Width = 133
    Height = 23
    Caption = 'Monitor PNBP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 15
    Top = 53
    Width = 113
    Height = 23
    Caption = 'Tanggal Awal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 356
    Top = 53
    Width = 116
    Height = 23
    Caption = 'Tanggal Akhir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape1: TShape
    Left = 0
    Top = 90
    Width = 911
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object dtTglAwal: TcxDateEdit
    Left = 138
    Top = 51
    ParentFont = False
    Properties.ShowTime = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Width = 193
  end
  object dtTglAkhir: TcxDateEdit
    Left = 484
    Top = 51
    ParentFont = False
    Properties.ShowTime = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 193
  end
  object bCari: TcxButton
    Left = 689
    Top = 41
    Width = 218
    Height = 45
    Cursor = crHandPoint
    Caption = 'Cari Data'
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
  object cxGrid1: TcxGrid
    Left = 2
    Top = 96
    Width = 903
    Height = 328
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    object cxGrid1BandedTableView1: TcxGridBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Column = cxBPKBBaruR2Jml
        end
        item
          Column = cxBPKBBaruR2Rp
        end
        item
          Column = cxBPKBBaruR4Jml
        end
        item
          Column = cxBPKBBaruR4Rp
        end
        item
          Column = cxBPKBBaruTotalJml
        end
        item
          Column = cxBPKBBaruTotalRp
        end
        item
          Column = cxBPKBDupR2Jml
        end
        item
          Column = cxBPKBDupR2Rp
        end
        item
          Column = cxBPKBDupR4Jml
        end
        item
          Column = cxBPKBDupR4Rp
        end
        item
          Column = cxBPKBDupTotJml
        end
        item
          Column = cxBPKBDupTotRp
        end
        item
          Column = cxBPKBGNR2Jml
        end
        item
          Column = cxBPKBGNR2Rp
        end
        item
          Column = cxBPKBGNR4Jml
        end
        item
          Column = cxBPKBGNR4Rp
        end
        item
          Column = cxBPKBGNTotJml
        end
        item
          Column = cxBPKBGNTotRp
        end
        item
          Column = cxTotalJml
        end
        item
          Column = cxTotalRp
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <>
          SummaryItems = <>
        end>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.StyleSheet = DM.GridBandedTableViewStyleSheetDevExpress
      Bands = <
        item
          Caption = '###'
          Width = 300
        end
        item
          Caption = 'BPKB Baru'
          Width = 700
        end
        item
          Caption = 'BPKB Duplikat'
          Width = 700
        end
        item
          Caption = 'BPKB Ganti Pemilik'
          Width = 700
        end
        item
          Caption = 'Total'
          Width = 400
        end
        item
          Caption = 'R2'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Width = 244
        end
        item
          Caption = 'R4'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Width = 244
        end
        item
          Caption = 'TOTAL'
          Position.BandIndex = 1
          Position.ColIndex = 2
          Width = 300
        end
        item
          Caption = 'R2'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Width = 244
        end
        item
          Caption = 'R4'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Width = 244
        end
        item
          Caption = 'TOTAL'
          Position.BandIndex = 2
          Position.ColIndex = 2
          Width = 300
        end
        item
          Caption = 'R2'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Width = 244
        end
        item
          Caption = 'R4'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Width = 244
        end
        item
          Caption = 'TOTAL'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Width = 300
        end>
      object cxJenis: TcxGridBandedColumn
        Caption = 'JENIS'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxBPKBBaruR2Jml: TcxGridBandedColumn
        Caption = '#'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxBPKBBaruR2Rp: TcxGridBandedColumn
        Caption = 'Rp'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxBPKBBaruR4Jml: TcxGridBandedColumn
        Caption = '#'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxBPKBBaruR4Rp: TcxGridBandedColumn
        Caption = 'Rp'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxBPKBBaruTotalJml: TcxGridBandedColumn
        Caption = '#'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxBPKBBaruTotalRp: TcxGridBandedColumn
        Caption = 'Rp'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 7
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxBPKBDupR2Jml: TcxGridBandedColumn
        Caption = '#'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxBPKBDupR2Rp: TcxGridBandedColumn
        Caption = 'Rp'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 8
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxBPKBDupR4Jml: TcxGridBandedColumn
        Caption = '#'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxBPKBDupR4Rp: TcxGridBandedColumn
        Caption = 'Rp'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 9
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxBPKBDupTotJml: TcxGridBandedColumn
        Caption = '#'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 10
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxBPKBDupTotRp: TcxGridBandedColumn
        Caption = 'Rp'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 10
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxBPKBGNR2Jml: TcxGridBandedColumn
        Caption = '#'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 11
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxBPKBGNR2Rp: TcxGridBandedColumn
        Caption = 'Rp'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 11
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxBPKBGNR4Jml: TcxGridBandedColumn
        Caption = '#'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 12
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxBPKBGNR4Rp: TcxGridBandedColumn
        Caption = 'Rp'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 12
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxBPKBGNTotJml: TcxGridBandedColumn
        Caption = '#'
        HeaderAlignmentHorz = taCenter
        Width = 40
        Position.BandIndex = 13
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxBPKBGNTotRp: TcxGridBandedColumn
        Caption = 'Rp'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 13
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxTotalJml: TcxGridBandedColumn
        Caption = '#'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxTotalRp: TcxGridBandedColumn
        Caption = 'Rp'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1BandedTableView1
    end
  end
  object cxGrid: TcxGrid
    Left = 2
    Top = 425
    Width = 904
    Height = 238
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 4
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.PercentWildcard = '*'
      DataController.Filter.UnderscoreWildcard = '?'
      DataController.Filter.Active = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'pemohon_id'
          Column = cxGridDBTableView1Column2
        end
        item
          Format = '#,##0'
          Kind = skSum
          Column = cxGridDBTableView1Column3
        end
        item
          Format = '#,##0'
          Kind = skSum
          Column = cxGridDBTableView1Column4
        end
        item
          Format = '#,##0'
          Kind = skSum
          Column = cxGridDBTableView1Column5
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
        Caption = 'JENIS'
        DataBinding.FieldName = 'NO_BPKB'
        Options.Editing = False
        Options.ShowEditButtons = isebAlways
        Width = 289
      end
      object cxGridDBTableView1Column2: TcxGridDBColumn
        Caption = 'BBN2'
        DataBinding.FieldName = 'PEMOHON_NAMA'
        Options.Editing = False
        Width = 150
      end
      object cxGridDBTableView1Column3: TcxGridDBColumn
        Caption = 'MUTASI LD'
        DataBinding.FieldName = 'DAFTAR_BY'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Options.Editing = False
        Width = 150
      end
      object cxGridDBTableView1Column4: TcxGridDBColumn
        Caption = 'BLOKIR'
        DataBinding.FieldName = 'ENTRI_BY'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Options.Editing = False
        Width = 150
      end
      object cxGridDBTableView1Column5: TcxGridDBColumn
        Caption = 'BUKA BLOKIR'
        DataBinding.FieldName = 'PRINT_KI_BY'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Options.Editing = False
        Width = 150
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
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
  object uniSPTampil2: TUniStoredProc
    Connection = DM.dbSrv
    Left = 24
    Top = 477
  end
  object dsuniSPTampil2: TUniDataSource
    DataSet = uniSPTampil2
    Left = 24
    Top = 520
  end
end
