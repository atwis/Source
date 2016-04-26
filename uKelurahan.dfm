object fKelurahan: TfKelurahan
  Left = 237
  Top = 113
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'KELURAHAN'
  ClientHeight = 570
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
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    920
    570)
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 146
    Height = 23
    Caption = 'Data Kelurahan'
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
  object cxPageControl1: TcxPageControl
    Left = 3
    Top = 32
    Width = 914
    Height = 535
    ActivePage = cxTabSheet4
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnClick = cxPageControl1Click
    ClientRectBottom = 535
    ClientRectRight = 914
    ClientRectTop = 34
    object cxTabSheet1: TcxTabSheet
      Caption = 'Propinsi'
      ImageIndex = 0
      DesignSize = (
        914
        501)
      object Label2: TLabel
        Left = 7
        Top = 11
        Width = 113
        Height = 23
        Caption = 'Kode Propinsi'
        Transparent = True
      end
      object Label3: TLabel
        Left = 7
        Top = 42
        Width = 120
        Height = 23
        Caption = 'Nama Propinsi'
        Transparent = True
      end
      object eKodeProp: TcxTextEdit
        Left = 136
        Top = 7
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
        TabOrder = 0
        Width = 81
      end
      object Button1: TButton
        Left = 136
        Top = 72
        Width = 113
        Height = 41
        Cursor = crHandPoint
        Caption = 'Simpan'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 256
        Top = 72
        Width = 113
        Height = 41
        Cursor = crHandPoint
        Caption = 'Baru'
        TabOrder = 2
        OnClick = Button2Click
      end
      object CRDBGrid1: TCRDBGrid
        Left = 8
        Top = 120
        Width = 897
        Height = 379
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsQProp
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = CRDBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'nama_prop'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'PROPINSI'
            Width = 825
            Visible = True
          end>
      end
      object eNamaProp: TcxTextEdit
        Left = 136
        Top = 38
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
        TabOrder = 4
        Width = 774
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Kabupaten'
      ImageIndex = 1
      DesignSize = (
        914
        501)
      object Label4: TLabel
        Left = 7
        Top = 11
        Width = 113
        Height = 23
        Caption = 'Kode Propinsi'
        Transparent = True
      end
      object Label5: TLabel
        Left = 7
        Top = 42
        Width = 139
        Height = 23
        Caption = 'Kode Kabupaten'
        Transparent = True
      end
      object Label6: TLabel
        Left = 7
        Top = 74
        Width = 146
        Height = 23
        Caption = 'Nama Kabupaten'
        Transparent = True
      end
      object Button3: TButton
        Left = 174
        Top = 104
        Width = 113
        Height = 41
        Cursor = crHandPoint
        Caption = 'Simpan'
        TabOrder = 3
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 294
        Top = 104
        Width = 113
        Height = 41
        Cursor = crHandPoint
        Caption = 'Baru'
        TabOrder = 4
        OnClick = Button4Click
      end
      object CRDBGrid2: TCRDBGrid
        Left = 8
        Top = 151
        Width = 897
        Height = 349
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsQKab
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = CRDBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'nama_kab'
            Title.Alignment = taCenter
            Title.Caption = 'KABUPATEN'
            Width = 175
            Visible = True
          end>
      end
      object eKodeKab: TcxTextEdit
        Left = 173
        Top = 37
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
        TabOrder = 1
        Width = 116
      end
      object eNamaKab: TcxTextEdit
        Left = 173
        Top = 69
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
        TabOrder = 2
        Width = 731
      end
      object cbProp_kab: TComboBox
        Left = 174
        Top = 4
        Width = 475
        Height = 31
        Style = csDropDownList
        ItemHeight = 23
        TabOrder = 0
        OnChange = cbProp_kabChange
        OnDropDown = cbProp_kabDropDown
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Kecamatan'
      ImageIndex = 2
      DesignSize = (
        914
        501)
      object Label7: TLabel
        Left = 7
        Top = 11
        Width = 113
        Height = 23
        Caption = 'Kode Propinsi'
        Transparent = True
      end
      object Label8: TLabel
        Left = 7
        Top = 42
        Width = 139
        Height = 23
        Caption = 'Kode Kabupaten'
        Transparent = True
      end
      object Label9: TLabel
        Left = 7
        Top = 74
        Width = 141
        Height = 23
        Caption = 'Kode Kecamatan'
        Transparent = True
      end
      object Label10: TLabel
        Left = 7
        Top = 103
        Width = 148
        Height = 23
        Caption = 'Nama Kecamatan'
        Transparent = True
      end
      object Button5: TButton
        Left = 174
        Top = 136
        Width = 113
        Height = 41
        Cursor = crHandPoint
        Caption = 'Simpan'
        TabOrder = 4
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 294
        Top = 136
        Width = 113
        Height = 41
        Cursor = crHandPoint
        Caption = 'Baru'
        TabOrder = 5
        OnClick = Button6Click
      end
      object CRDBGrid3: TCRDBGrid
        Left = 8
        Top = 184
        Width = 897
        Height = 316
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsQKec
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 6
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = CRDBGrid3DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'nama_kec'
            Title.Alignment = taCenter
            Title.Caption = 'KECAMATAN'
            Width = 60
            Visible = True
          end>
      end
      object eKDKec: TcxTextEdit
        Left = 173
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
        Width = 108
      end
      object cbProp_kec: TComboBox
        Left = 174
        Top = 4
        Width = 475
        Height = 31
        Style = csDropDownList
        ItemHeight = 23
        TabOrder = 0
        OnDropDown = cbProp_kecDropDown
      end
      object eNamaKec: TcxTextEdit
        Left = 173
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
      object cbKab_kec: TComboBox
        Left = 174
        Top = 37
        Width = 475
        Height = 31
        Style = csDropDownList
        ItemHeight = 23
        TabOrder = 1
        OnChange = cbKab_kecChange
        OnDropDown = cbKab_kecDropDown
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Kelurahan'
      ImageIndex = 3
      DesignSize = (
        914
        501)
      object Label11: TLabel
        Left = 7
        Top = 11
        Width = 113
        Height = 23
        Caption = 'Kode Propinsi'
        Transparent = True
      end
      object Label12: TLabel
        Left = 7
        Top = 42
        Width = 139
        Height = 23
        Caption = 'Kode Kabupaten'
        Transparent = True
      end
      object Label13: TLabel
        Left = 7
        Top = 107
        Width = 133
        Height = 23
        Caption = 'Kode Kelurahan'
        Transparent = True
      end
      object Label14: TLabel
        Left = 7
        Top = 136
        Width = 140
        Height = 23
        Caption = 'Nama Kelurahan'
        Transparent = True
      end
      object Label15: TLabel
        Left = 7
        Top = 75
        Width = 141
        Height = 23
        Caption = 'Kode Kecamatan'
        Transparent = True
      end
      object Button7: TButton
        Left = 174
        Top = 170
        Width = 113
        Height = 41
        Cursor = crHandPoint
        Caption = 'Simpan'
        TabOrder = 5
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 294
        Top = 170
        Width = 113
        Height = 41
        Cursor = crHandPoint
        Caption = 'Baru'
        TabOrder = 6
        OnClick = Button8Click
      end
      object CRDBGrid4: TCRDBGrid
        Left = 8
        Top = 216
        Width = 897
        Height = 284
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsQKel
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 7
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = CRDBGrid4DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'nama_kel'
            Title.Alignment = taCenter
            Title.Caption = 'KELURAHAN'
            Width = 60
            Visible = True
          end>
      end
      object eKDKel: TcxTextEdit
        Left = 173
        Top = 103
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
        Width = 108
      end
      object cbProp_Kel: TComboBox
        Left = 174
        Top = 4
        Width = 475
        Height = 31
        Style = csDropDownList
        ItemHeight = 23
        TabOrder = 0
        OnDropDown = cbProp_KelDropDown
      end
      object eNamaKel: TcxTextEdit
        Left = 173
        Top = 135
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
        TabOrder = 4
        Width = 731
      end
      object cbKab_Kel: TComboBox
        Left = 174
        Top = 37
        Width = 475
        Height = 31
        Style = csDropDownList
        ItemHeight = 23
        TabOrder = 1
        OnDropDown = cbKab_KelDropDown
      end
      object cbKec_Kel: TComboBox
        Left = 174
        Top = 70
        Width = 475
        Height = 31
        Style = csDropDownList
        ItemHeight = 23
        TabOrder = 2
        OnChange = cbKec_KelChange
        OnDropDown = cbKec_KelDropDown
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Samsat'
      ImageIndex = 4
      DesignSize = (
        914
        501)
      object Label16: TLabel
        Left = 7
        Top = 11
        Width = 298
        Height = 23
        Caption = 'Informasi data dari data DISPENDA'
        Transparent = True
      end
      object Label17: TLabel
        Left = 7
        Top = 48
        Width = 109
        Height = 23
        Caption = 'Kode Samsat'
        Transparent = True
      end
      object Label18: TLabel
        Left = 7
        Top = 114
        Width = 94
        Height = 23
        Caption = 'Kode UPTD'
        Transparent = True
      end
      object Label20: TLabel
        Left = 7
        Top = 147
        Width = 113
        Height = 23
        Caption = 'Kode Propinsi'
        Transparent = True
      end
      object Label21: TLabel
        Left = 7
        Top = 180
        Width = 139
        Height = 23
        Caption = 'Kode Kabupaten'
        Transparent = True
      end
      object Label22: TLabel
        Left = 7
        Top = 213
        Width = 141
        Height = 23
        Caption = 'Kode Kecamatan'
        Transparent = True
      end
      object Label23: TLabel
        Left = 7
        Top = 246
        Width = 104
        Height = 23
        Caption = 'Kode POLDA'
        Transparent = True
      end
      object Label24: TLabel
        Left = 7
        Top = 279
        Width = 114
        Height = 23
        Caption = 'Kode POLRES'
        Transparent = True
      end
      object Label25: TLabel
        Left = 278
        Top = 50
        Width = 116
        Height = 23
        Caption = 'Nama Samsat'
        Transparent = True
      end
      object Label26: TLabel
        Left = 278
        Top = 109
        Width = 101
        Height = 23
        Caption = 'Nama UPTD'
        Transparent = True
      end
      object Label19: TLabel
        Left = 6
        Top = 81
        Width = 124
        Height = 23
        Caption = 'Alamat Samsat'
        Transparent = True
      end
      object eKodeSamsat: TcxTextEdit
        Left = 159
        Top = 47
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
        TabOrder = 0
        Width = 108
      end
      object eKodeUPTD: TcxTextEdit
        Left = 159
        Top = 108
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
        Width = 108
      end
      object eNamaUPTD: TcxTextEdit
        Left = 408
        Top = 108
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
        TabOrder = 4
        Width = 483
      end
      object cb_prop_samsat: TComboBox
        Left = 160
        Top = 140
        Width = 475
        Height = 31
        Style = csDropDownList
        ItemHeight = 23
        TabOrder = 5
        OnDropDown = cb_prop_samsatDropDown
      end
      object cb_kab_samsat: TComboBox
        Left = 160
        Top = 173
        Width = 475
        Height = 31
        Style = csDropDownList
        ItemHeight = 23
        TabOrder = 6
        OnDropDown = cb_kab_samsatDropDown
      end
      object cb_kec_samsat: TComboBox
        Left = 160
        Top = 206
        Width = 475
        Height = 31
        Style = csDropDownList
        ItemHeight = 23
        TabOrder = 7
        OnDropDown = cb_kec_samsatDropDown
      end
      object Button9: TButton
        Left = 160
        Top = 307
        Width = 113
        Height = 41
        Cursor = crHandPoint
        Caption = 'Simpan'
        TabOrder = 10
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 280
        Top = 307
        Width = 113
        Height = 41
        Cursor = crHandPoint
        Caption = 'Baru'
        TabOrder = 11
        OnClick = Button10Click
      end
      object CRDBGrid5: TCRDBGrid
        Left = 8
        Top = 352
        Width = 897
        Height = 147
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsSamsat
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 12
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SAMSAT_NAMA'
            Title.Alignment = taCenter
            Title.Caption = 'SAMSAT'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAMA_UPTD'
            Title.Alignment = taCenter
            Title.Caption = 'UPTD'
            Width = 300
            Visible = True
          end>
      end
      object cb_polda_samsat: TComboBox
        Left = 160
        Top = 239
        Width = 475
        Height = 31
        Style = csDropDownList
        ItemHeight = 23
        TabOrder = 8
        OnDropDown = cb_polda_samsatDropDown
      end
      object cb_polres_samsat: TComboBox
        Left = 160
        Top = 272
        Width = 475
        Height = 31
        Style = csDropDownList
        ItemHeight = 23
        TabOrder = 9
        OnDropDown = cb_polres_samsatDropDown
      end
      object eNamaSamsat: TcxTextEdit
        Left = 408
        Top = 47
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
        TabOrder = 1
        Width = 483
      end
      object eAlamatSamsat: TcxTextEdit
        Left = 159
        Top = 77
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
        TabOrder = 2
        Width = 732
      end
    end
  end
  object QProp: TUniQuery
    Connection = DM.dbSrv
    Left = 16
    Top = 336
  end
  object dsQProp: TUniDataSource
    DataSet = QProp
    Left = 16
    Top = 360
  end
  object QKab: TUniQuery
    Connection = DM.dbSrv
    Left = 56
    Top = 336
  end
  object dsQKab: TUniDataSource
    DataSet = QKab
    Left = 56
    Top = 360
  end
  object QKec: TUniQuery
    Connection = DM.dbSrv
    Left = 104
    Top = 336
  end
  object dsQKec: TUniDataSource
    DataSet = QKec
    Left = 104
    Top = 360
  end
  object QKel: TUniQuery
    Connection = DM.dbSrv
    Left = 144
    Top = 336
  end
  object dsQKel: TUniDataSource
    DataSet = QKel
    Left = 144
    Top = 360
  end
  object dsSamsat: TUniDataSource
    DataSet = QSamsat
    Left = 192
    Top = 360
  end
  object QSamsat: TUniQuery
    Connection = DM.dbSrv
    Left = 192
    Top = 336
  end
end
