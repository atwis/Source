unit uLapPenggunaanTTD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  ExtCtrls;

type
  TfLapPenggunaanTTD = class(TForm)
    Shape1: TShape;
    lJudul: TLabel;
    Label50: TLabel;
    Label1: TLabel;
    dtTglAwal: TcxDateEdit;
    dtTglAkhir: TcxDateEdit;
    bGetDataRegister: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLapPenggunaanTTD: TfLapPenggunaanTTD;

implementation
Uses
  uDM, uVariabel, uModul, uWait;
{$R *.dfm}

end.
