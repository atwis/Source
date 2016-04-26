object fModel: TfModel
  Left = 233
  Top = 202
  Align = alClient
  BorderStyle = bsSingle
  Caption = 'Model'
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
    Width = 215
    Height = 23
    Caption = 'Data Model Kendaraan'
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
  object Label2: TLabel
    Left = 7
    Top = 43
    Width = 105
    Height = 23
    Caption = 'Model Nama'
    Transparent = True
  end
  object Label3: TLabel
    Left = 7
    Top = 72
    Width = 41
    Height = 23
    Caption = 'Jenis'
    Transparent = True
  end
  object eModelNama: TcxTextEdit
    Left = 136
    Top = 39
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
    TabOrder = 0
    Width = 777
  end
  object cbJenis: TComboBox
    Left = 137
    Top = 73
    Width = 475
    Height = 31
    Style = csDropDownList
    ItemHeight = 23
    TabOrder = 1
    OnDropDown = cbJenisDropDown
  end
  object Button1: TButton
    Left = 136
    Top = 111
    Width = 113
    Height = 41
    Cursor = crHandPoint
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 111
    Width = 113
    Height = 41
    Cursor = crHandPoint
    Caption = 'Baru'
    TabOrder = 3
    OnClick = Button2Click
  end
  object CRDBGrid1: TCRDBGrid
    Left = 6
    Top = 159
    Width = 907
    Height = 287
    OptionsEx = [dgeEnableSort, dgeFilterBar, dgeLocalFilter, dgeLocalSorting, dgeRecordCount]
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsQModel
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = CRDBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'jenis_nama'
        Title.Alignment = taCenter
        Title.Caption = 'JENIS'
        Width = 334
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'model_nama'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'MODEL'
        Width = 542
        Visible = True
      end>
  end
  object QModel: TUniQuery
    Connection = DM.dbSrv
    Left = 24
    Top = 224
  end
  object dsQModel: TUniDataSource
    DataSet = QModel
    Left = 24
    Top = 248
  end
end
