object fSKETBPKB: TfSKETBPKB
  Left = 243
  Top = 194
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Cetak Surat Keterangan BPKB'
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
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 283
    Height = 23
    Caption = 'Cetak Surat Keterangan BPKB'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 5
    Top = 28
    Width = 901
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Pen.Color = clWhite
  end
  object Label2: TLabel
    Left = 27
    Top = 41
    Width = 72
    Height = 23
    Caption = 'No BPKB'
    Transparent = True
  end
  object eNoBPKB_CB: TcxTextEdit
    Left = 161
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
    TabOrder = 0
    Width = 311
  end
  object bBaru_CB: TcxButton
    Left = 305
    Top = 71
    Width = 113
    Height = 82
    Cursor = crHandPoint
    Caption = 'Baru'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = bBaru_CBClick
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000000000000000000000969696FF969696FFFFFFFFFFBCBCBCFFBCBC
      BCFFFFFFFFFFCCCCCCFFFFFFFFFF737373FF737373FF737373FF737373FF7373
      73FF737373FF737373FFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFF7373
      73FF737373FFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000000000000000000000969696FF969696FFFFFFFFFFBCBCBCFFBCBC
      BCFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFCCCCCCFFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000000000000000000000969696FF969696FFFFFFFFFFBCBCBCFFBCBC
      BCFFFFFFFFFFCCCCCCFFF3F3F3FF737373FF737373FF737373FF737373FF7373
      73FF737373FF737373FF737373FFF3F3F3FFCCCCCCFFF3F3F3FF314ACCFF314A
      CCFF314ACCFFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000000000000000000000969696FF969696FFFFFFFFFFBCBCBCFFBCBC
      BCFFFFFFFFFFCCCCCCFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFCCCCCCFFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000000000000000000000969696FF969696FFFFFFFFFFBCBCBCFFBCBC
      BCFFFFFFFFFFCCCCCCFFFFFFFFFF737373FF737373FF737373FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFF737373FF7373
      73FF737373FFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000000000000000000000969696FF969696FFFFFFFFFFBCBCBCFFBCBC
      BCFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FFFFFF
      FFFFFFFFFFFFCCCCCCFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFCCCCCCFFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      00000000000000000000000000007E7E7ED7666666AED9D9D9D9BCBCBCFFBCBC
      BCFFFFFFFFFFCCCCCCFFF3F3F3FF737373FF737373FF737373FF737373FF7373
      73FF737373FF737373FF737373FFF3F3F3FFCCCCCCFFF3F3F3FF314ACCFF314A
      CCFF314ACCFFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000000000000000000000080B0D1219374A520D101112B6B6B6F7BCBC
      BCFFFEFEFEFE8C8C8CAFD1D1D1DBF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFCCCCCCFFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF01030404132B
      3A400000000000000000000000000D1D272B4DABE7FF0D1C262A4F94C4D7FBFB
      FBFB616161610F212C3111131519ADADADD8CCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF0E1F2A2E49A3
      DCF32047606A0000000000000000152E3E444DABE7FF152E3E44427CA4B44D4D
      4D4D1734464D4AA4DDF4142C3C4296969696FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000001732
      444B4BA7E2F92654727E000000001C3E535C4DABE7FF1C3F555E101010161C3F
      555E4BA8E2FA20465F6947474747707070F8737373FF737373FF737373FF7373
      73FF737373FF737373FFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFF7373
      73FF737373FFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      00001B3D525B4CAAE5FD306B91A03D87B7CA4DABE7FF3D87B6C9295B7B884CAA
      E5FD25526F7B2B2B2B36F4F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000000000002A5D7E8B4DABE7FF4DABE7FF56AFE8FF4DABE7FF4DABE7FF306A
      8F9E0E0E0E0E8E8E8EB1AEAEAED9C5C5C5F6CCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF0C1B2428142C
      3C421B3D525B3F8BBCCF4DABE7FF64B4E9FE60ADE0F464B4E9FE4DABE7FF3C86
      B5C81A394D55132A383E0C1A23270C0F1112CCCCCCD6F3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFCCCCCCFFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF4DABE7FF4DAB
      E7FF4DABE7FF4DABE7FF56AFE8FF60ADE0F44B4B4B8060ADE0F456AFE8FF4DAB
      E7FF4DABE7FF4DABE7FF4DABE7FF1B3B50584C4C4CA9737373FF737373FF7373
      73FF737373FFF3F3F3FFF3F3F3FFF3F3F3FFCCCCCCFFF3F3F3FF737373FF7373
      73FF737373FFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF0A161E211126
      3439183649513F8BBCD04DABE7FF64B4E9FE60ADE0F464B4E9FE4DABE7FF3D87
      B7CA1835484F112634390A171F220D0F1112CDCDCDD7F3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFCCCCCCFFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      000000000000306B91A04DABE7FF4DABE7FF56AFE8FF4DABE7FF4DABE7FF2B60
      828F1A1A1A1A999999BFB2B2B2DFC7C7C7F9CCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF000000000000
      0000244F6B764DAAE6FE2C6385933F8BBCCF4DABE7FF3F8DBED2306B909F4DAA
      E6FE1D4158614A4A4A4AF9F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EAFE9FF5EAFE9FF000000001E43
      5B644BA8E2FA1E425962000000001835484F4DABE7FF1F445C66030608092450
      6C774BA8E2FA183649512341565E5EAEE8FE5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF1229373D4AA4
      DDF4183649510000000000000000112634394DABE7FF183648503B6D919F1527
      34391E435B644AA4DDF40F222D3240779EAD5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF010304040F21
      2C310000000000000000000000000B1720234DABE7FF1227353A000000000000
      000000000000132A383E02030505000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    Layout = blGlyphTop
  end
  object bCetakBuku_CB: TcxButton
    Left = 163
    Top = 72
    Width = 139
    Height = 81
    Cursor = crHandPoint
    Caption = 'Cetak Buku'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = bCetakBuku_CBClick
    Glyph.Data = {
      36240000424D3624000000000000360000002800000030000000300000000100
      2000000000000024000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000030000000400000004000000040000000400000004000000040000
      0004000000040000000400000004000000040000000400000004000000040000
      0004000000040000000400000004000000040000000400000004000000040000
      0004000000040000000400000004000000040000000400000004000000030000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001D0000001F0000002200000022000000220000002200000022000000220000
      0022000000220000002200000022000000220000002200000022000000220000
      0022000000220000002200000022000000220000002200000022000000220000
      0022000000220000002200000022000000220000002200000022000000060000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF000000090000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      55FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FF555555FF000000090000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      55FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FF555555FF000000090000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      55FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FF555555FF000000090000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005555
      55FFE0E1E3FFE0E1E3FFE0E1E3FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FFE0E1E3FFE0E1E3FFE0E1E3FF555555FF000000090000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000045555
      55FFE0E1E3FFE0E1E3FFE0E1E3FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FFE0E1E3FFE0E1E3FFE0E1E3FF555555FF0000000A0000
      0006000000040000000300000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000001D0000001F000000225555
      55FFE0E1E3FFE0E1E3FFE0E1E3FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FFE0E1E3FFE0E1E3FFE0E1E3FF555555FF000000250000
      0023000000220000000600000003000000000000000000000000000000000000
      000000000000000000000000000000000000555555FF555555FF555555FF5555
      55FF565A58FF565A58FF565A58FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF3978B2FF3978B2FF3978B2FFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF3978B2FF408CD5FF3978B2FFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF3978B2FF3978B2FF3978B2FFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF555555FF555555FF555555FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF5555
      55FF555555FF555555FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF555555FF555555FF555555FF6D7277FF6D72
      77FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D72
      77FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF5555
      55FF555555FF555555FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF555555FF555555FF555555FF6D7277FF6D72
      77FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D72
      77FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF5555
      55FF555555FF555555FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF555555FF555555FF555555FF6D7277FF6D72
      77FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D72
      77FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF6D7277FF5555
      55FF555555FF555555FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF555555FF555555FF555555FFC8D1D7FFC8D1
      D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1
      D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FFC8D1D7FF5555
      55FF555555FF555555FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000900000004000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1
      E3FF555555FF0000000700000003000000000000000000000000000000000000
      000000000000000000000000000000000000555555FFFEFEFEFFFEFEFEFFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C45FF3B3C
      45FF3B3C45FF3B3C45FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFE0E1
      E3FF555555FF0000000500000001000000000000000000000000000000000000
      0000000000000000000000000000000000003D3F3E71555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1E3FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF3C3F3E730000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FFC8D1D7FFC8D1D7FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFE0E1E3FFEAEBEDFFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FF5555
      55FFC8D1D7FFC8D1D7FF6D7277FF555555FF0000000900000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FFC8D1D7FFC8D1D7FF555555FFFFFFFFFFEAEB
      EDFF555555FFEAEBEDFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFFEAEBEDFFE0E1E3FF5555
      55FFC8D1D7FFC8D1D7FF6D7277FF555555FF0000000900000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FFC8D1D7FFC8D1D7FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FF5555
      55FFC8D1D7FFC8D1D7FF6D7277FF555555FF0000000900000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FFC8D1D7FFC8D1D7FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFFEAEBEDFFE0E1E3FF5555
      55FFC8D1D7FFC8D1D7FF6D7277FF555555FF0000000900000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FFC8D1D7FFC8D1D7FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFE0E1E3FFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1E3FF5555
      55FFC8D1D7FFC8D1D7FF6D7277FF555555FF0000000900000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FFC8D1D7FFC8D1D7FF555555FFFFFFFFFFEAEB
      EDFF555555FFEAEBEDFFEAEBEDFFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFEAEBEDFFEAEBEDFFE0E1E3FF5555
      55FFC8D1D7FFC8D1D7FF6D7277FF555555FF0000000900000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FFC8D1D7FFC8D1D7FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1E3FF5555
      55FFC8D1D7FFC8D1D7FF6D7277FF555555FF0000000900000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF6D7277FF6D7277FF6D7277FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FF5555
      55FF6D7277FF6D7277FF6D7277FF555555FF0000000600000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555FF555555FF555555FF555555FF555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFFEAEBEDFFE0E1E3FF5555
      55FF555555FF555555FF555555FF555555FF0000000300000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFE0E1E3FFEAEBEDFFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1
      E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FFE0E1E3FF5555
      55FF000000090000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000555555FFFFFFFFFFEAEB
      EDFF555555FFEAEBEDFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFFEAEBEDFFE0E1E3FF5555
      55FF000000090000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1E3FF5555
      55FF000000090000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000555555FFFFFFFFFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEB
      EDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFEAEBEDFFE0E1E3FF5555
      55FF000000090000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000555555FFFFFFFFFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFE0E1E3FF5555
      55FF000000060000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF555555FF555555FF555555FF555555FF555555FF555555FF555555FF5555
      55FF000000030000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    Layout = blGlyphTop
  end
  object QTT: TUniQuery
    Connection = DM.dbSrv
    ReadOnly = True
    Left = 200
    Top = 200
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'FrDB'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 232
    Top = 200
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
    Left = 232
    Top = 168
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
    Left = 264
    Top = 168
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 264
    Top = 200
  end
end
