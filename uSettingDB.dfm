object fSettingDB: TfSettingDB
  Left = 237
  Top = 156
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Setting Database'
  ClientHeight = 233
  ClientWidth = 457
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    457
    233)
  PixelsPerInch = 96
  TextHeight = 16
  object Label2: TLabel
    Left = 16
    Top = 63
    Width = 68
    Height = 16
    Caption = 'USER NAME'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 91
    Width = 68
    Height = 16
    Caption = 'PASSWORD'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 119
    Width = 61
    Height = 16
    Caption = 'HOST SRV'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 256
    Top = 119
    Width = 60
    Height = 16
    Caption = 'PORT SRV'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 17
    Top = 147
    Width = 48
    Height = 16
    Caption = 'SID SRV'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 334
    Height = 23
    Caption = 'SETTING CONNECTION DATABASE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 9
    Top = 38
    Width = 439
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object eUserName: TcxTextEdit
    Left = 90
    Top = 57
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Width = 320
  end
  object ePassw: TcxTextEdit
    Left = 90
    Top = 85
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 320
  end
  object cxButton1: TcxButton
    Left = 90
    Top = 186
    Width = 88
    Height = 35
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = cxButton1Click
    Glyph.Data = {
      C6070000424DC607000000000000360000002800000016000000160000000100
      2000000000009007000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000012100D0D781D18148C1A16148A1A16138A1B17
      128A1915148A1C17128A1915148A1C17128A1A16148A1815158A1B15168A1B15
      168A1915158A1915158A1915158A1915158A1915158A1A17158C0E0A0A7D0000
      001C2923218FDBC8B5FFC3B8D3FFD2C2C1FFCABECAFFC8BDCCFFDFCEC0FFBAB2
      D2FFDECDBDFFBFB5D3FFD5C5C0FFE0CABAFFC4CEB0FFC9CBB2FFDEC9BAFFDBC8
      B7FFDBC8B7FFDBC8B7FFDBC8B7FFDECCBAFFCEB9ABFF14100F83594A43C1DFC3
      9CFF5F59D3FF6258C9FF998BB8FF2A29E6FFBDAAA4FF312FE5FFA392ADFF5450
      DCFF7065C1FFE1BB9EFF76B562FF47B53DFFCFAE9EFFCAAF98FFC9AF98FFC9AF
      98FFC9AF98FFCAB098FFD4B8A0FF2D25209D4D3D35BDC9A681FF8C738BFF443F
      D3FF977C7AFF3934D8FF8A7799FF6251AAFF695DB5FF7B658EFF4743CCFFB594
      7AFF9E9267FF49A943FFA0926EFFBE9B81FFB99A7EFFB99A7EFFB99A7EFFBA9B
      7EFFC1A084FF261E199B473832B4C3A387FFB8987AFF8B7791FFA88B79FF977E
      8CFF96808CFFAB8D7CFF8B778FFFAF9178FF857291FFAC8E79FFBA987CFF9290
      68FF9F906CFFBD9B80FFB8997DFFB8997DFFB8997DFFB99A7EFFC2A388FF231C
      18933D33319BEEE0D5FFEBDFD3FFECDFCCFFEBDFD2FFECDFCDFFECDFCEFFECDF
      D2FFEDE0CDFFECE0D4FFEEE0CDFFECDFD4FFEBE0D5FFEEDED5FFEDDFD6FFEBE0
      D6FFECE0D6FFECE0D6FFECE0D7FFECE1D6FFEBDCD1FF1C181683251C1A86D5BD
      A9FFD3BDA9FFD2BBA8FFD2BBA8FFD2BDA9FFD4BFABFFD5C0AEFFD7C3B2FFD9C5
      B4FFDBC8B7FFDCCABAFFDECCBDFFE0CFC0FFE1D1C3FFE2D3C5FFE5D6C8FFE6D7
      CBFFE9DCCFFFE5D4C7FFCCB5A0FF0F0B097416110E6FC8AC94FFC5AA91FFC4A9
      90FFC4AA92FFC7AD95FFC8AF98FFCAB29BFFCCB59FFFCEB7A2FFD1B9A6FFD2BB
      A9FFD4BFACFFD6C2AFFFD7C4B3FFD9C7B6FFDCCAB9FFDDCCBDFFE1D2C3FFD7C3
      B0FFB99F87FF0704035E0A060657BDA087FFC2A58BFFC0A48BFFC2A68DFFC3AA
      91FFC5AC95FFC9AE98FFCAB29BFFCCB59FFFCFB7A2FFCFBAA5FFD2BDA9FFD5C0
      ADFFD6C2B0FFD8C5B4FFDBC8B7FFDDCBBAFFE0D1C1FFD3BBA6FFA98C76FF0200
      004604020240AD8F79FEBFA084FFBDA084FFBFA288FFC1A58DFFC3A890FFC5AB
      94FFC8AE97FFCAB29BFFCCB49FFFCEB7A2FFD1BAA5FFD3BDAAFFD4C0AEFFD7C3
      B2FFD8C5B5FFDCC9B9FFDECDBEFFCDB39AFF957865F90000002F000000269B7E
      6AF7BFA083FFBDA085FFC0A48AFFC2A68DFFC4A990FFC7AC95FFC9AF99FFCAB2
      9CFFCDB5A0FFCFB7A4FFD1BAA6FFD3BEABFFD6C1AEFFD7C3B3FFD9C8B7FFDCCA
      BAFFDDCBBDFFC9AD92FF7C6453EB0000001C000000118A6F5CEDC2A285FFBEA2
      88FFBFA38CFFC2A68FFFC2A992FFC7AC97FFC8AF9AFFCCB5A0FFCFB8A3FFD1BA
      A6FFD3BDAAFFD5C1AEFFD7C4B3FFD9C7B6FFDCCABAFFDECDBEFFDECDBEFFC8AA
      8DFF634E42D800000010000000086F594BD7C4A486FFB99E85FFA18875FFB399
      84FFA8907DFFB59C88FFB29A87FFD2BAA5FFD1B9A6FFD2BDAAFFD5C0ADFFD7C2
      B2FFD9C7B6FFDCCAB9FFDDCCBDFFE0D1C1FFDDCBBBFFC5A588FF4C3C33C50000
      000500000001534237BEC4A486FFBFA38BFFB69E88FFC0A890FFBBA48FFFC2AB
      96FFC2AC98FFD2BBA8FFD3BDAAFFD4C0ADFFD6C3B0FFD9C5B5FFDBC9B8FFDDCC
      BBFFDFCEBFFFE3D4C5FFD9C7B6FFC2A185FF352923AD00000000000000003B2E
      27A6C3A286FFBBA088FFA58E7AFFB79F8AFFAD9683FFB8A18DFFB5A08DFFD5BF
      ACFFD4C0ACFFD6C2B0FFD7C5B4FFDBC9B7FFDCCABBFFDECEBFFFE1D2C3FFE6D7
      CBFFD6C2AFFFBF9E82FF231A1696000000000000000029201B90C0A084FFC2A6
      8EFFBDA591FFC5AE99FFC1AB97FFCAB3A0FFC5B09EFFD5BFACFFD6C1AFFFD7C4
      B3FFDBC8B7FFDCCABAFFDECDBEFFE1CFC2FFE2D4C5FFE8DBCEFFD3BDAAFFB998
      7CFF150F0D80000000000000000017110E73C1A083FFC4A98EFFAD9784FFC4AD
      97FFB49E8BFFC4AE9BFFBBA695FFE0CBB8FFDFCBB9FFE0CEBEFFE3D1C1FFE5D5
      C4FFE7D7C8FFE9D9CCFFECDFD2FFF1E3D8FFD5BDA5FFB29177FF0704045E0000
      00000000000000000020634C42CD917667F0998375F0998276F09C8679F09B86
      79F09F887DF09C877CF09E887FF09F8B80F0A08C83F0A28E85F0AB9990F0AC9A
      92F0A6958DF0A5938BF0957969F046342EB70000001100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000}
  end
  object btnKeluar: TcxButton
    Left = 186
    Top = 186
    Width = 88
    Height = 35
    Caption = 'Keluar'
    TabOrder = 6
    OnClick = btnKeluarClick
    Glyph.Data = {
      C6070000424DC607000000000000360000002800000016000000160000000100
      2000000000009007000000000000000000000000000000000000000000000000
      00000000000000001C6900000B5D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      257600000750000000000000000000000000000000000000000002022A768585
      FFFF6060DEF600000E6300000000000000000000000000000000000000000000
      0000000000000000000000000000000000020B0B428E8383FFFF3E3EC3EC0000
      054E00000000000000000000000001012A766C6CFFFF9090FFFFACACFFFF6464
      DBF400000E630000000000000000000000000000000000000000000000000000
      0000000000020C0C428E8787FFFF6161FFFF6363FFFF3232C0EA0000054E0000
      0000020239805555FFFF6F6FFFFF7575FFFF8D8DFFFFBABAFFFF6565DBF40000
      0D620000000000000000000000000000000000000000000000010B0B418D9090
      FFFF7474FFFF4545FFFF3232FFFF4545FFFF2222C2EB000007491414B5CB6363
      FFFF5959FFFF7373FFFF8787FFFF9E9EFFFFC3C3FFFF4F4FCAEF000004520000
      000000000000000000000000000102022F7D8C8CFFFF8989FFFF5A5AFFFF4646
      FFFF2C2CFFFF2424FFFF3C3CFFFF0000205F000002181D1D9DC26565FFFF6A6A
      FFFF7D7DFFFF8E8EFFFFA6A6FFFFB9B9FFFF4949C5ED00000D62000000000000
      00010909408D8888FFFF9494FFFF6A6AFFFF5555FFFF3B3BFFFF3434FFFF3E3E
      FFFF02023C790000000100000000000001151E1E9CC26B6BFFFF6F6FFFFF7F7F
      FFFF9090FFFFA0A0FFFFB2B2FFFF5656D8F400000D63080839898888FFFF9494
      FFFF7272FFFF5F5FFFFF4646FFFF4141FFFF4444FFFF03033B79000000000000
      00000000000000000000000001151D1D9AC26969FFFF6E6EFFFF7B7BFFFF8686
      FFFF8E8EFFFF9A9AFFFF5757EEFC7575FFFF8888FFFF6F6FFFFF6161FFFF4C4C
      FFFF4848FFFF4343FEFE02023A79000000000000000000000000000000000000
      0000000000000000011513138EBB6363FFFF6868FFFF6F6FFFFF7676FFFF7878
      FFFF8282FFFF7878FFFF6767FFFF5D5DFFFF4C4CFFFF4949FFFF4040FFFF0000
      2765000000000000000000000000000000000000000000000000000000000000
      000000000114181897C25A5AFFFF5D5DFFFF6060FFFF6161FFFF6060FFFF5B5B
      FFFF5454FFFF4949FFFF4343FFFF3E3EFFFF0101387900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0113121289BC4646FFFF4B4BFFFF4E4EFFFF4A4AFFFF4040FFFF3939FFFF3838
      FFFF3131FBFB0000327600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000042942B2B
      FFFF4646FFFF4C4CFFFF4A4AFFFF3A3AFFFF2121FFFF2020FFFF1212E2F70000
      0860000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000010000378D0C0CFFFF3F3FFFFF5050FFFF5050
      FFFF5454FFFF5050FFFF3C3CFFFF1717FFFF0000FFFF0000CDF3000009620000
      0000000000000000000000000000000000000000000000000000000000000000
      00010000267D0000FFFF3535FFFF5A5AFFFF5858FFFF5E5EFFFF4141FFFF4E4E
      FFFF5B5BFFFF5454FFFF2F2FFFFF0202FFFF0000B9EF00000252000000000000
      000000000000000000000000000000000000000000020000368D0000FFFF4040
      FFFF7474FFFF7272FFFF7B7BFFFF4B4BFFFF0000FFFF1313FFFF6B6BFFFF7878
      FFFF7575FFFF6868FFFF1818FFFF0000B3ED0000096200000000000000000000
      000000000000000000020000358E0000FFFF5757FFFF9393FFFF9191FFFF9696
      FFFF5454FFFF0000FFFF00003A83000081BB1C1CFFFF8181FFFF9595FFFF9292
      FFFF8686FFFF2222FFFF0000C9F4000009630000000000000000000000040000
      348E0000FFFF7878FFFFB6B6FFFFAFAFFFFFB5B5FFFF5F5FFFFF0000FEFE0000
      2F79000000000000001300008AC21515FFFF9494FFFFB5B5FFFFB0B0FFFFAAAA
      FFFF3E3EFFFF0000C7F40000086300000000000037910202FFFF8E8EFFFFD5D5
      FFFFCACAFFFFD9D9FFFF7979FFFF0000FFFF00001F6500000000000000000000
      00000000001500007CBB1919FFFFB9B9FFFFD3D3FFFFCECEFFFFCDCDFFFF4949
      FFFF0000C8F60000065400008CB61212FFFFCBCBFFFFF2F2FFFFF4F4FFFF9E9E
      FFFF0101FFFF00002E7900000000000000000000000000000000000000000000
      0014000087C23232FFFFDADAFFFFEFEFFFFFF7F7FFFF7E7EFFFF0000FDFE0000
      10520000070C000083AD2828FFFFE8E8FFFFB4B4FFFF0404FFFF00002D790000
      0000000000000000000000000000000000000000000000000000000000150000
      86C23C3CFFFFF8F8FFFF9F9FFFFF0000F4FB00001A6100000000000000000000
      050A00007FAD1919FFFF0101FFFF00002C790000000000000000000000000000
      0000000000000000000000000000000000000000000000000015000083C22323
      FFFF0000EFFA00001961000000000000000000000000000000000000050A0000
      83B50000307F0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000016000084C60000236E0000
      00000000000000000000}
  end
  object eHost: TcxTextEdit
    Left = 90
    Top = 113
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 159
  end
  object ePort: TcxTextEdit
    Left = 330
    Top = 113
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 80
  end
  object eSID: TcxTextEdit
    Left = 90
    Top = 141
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 159
  end
end
