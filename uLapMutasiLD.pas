unit uLapMutasiLD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, cxButtons, DB, DBAccess, Uni, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, MemDS, VirtualTable;

type
  TfLapMutasiLD = class(TForm)
    Shape1: TShape;
    lJudul: TLabel;
    Label50: TLabel;
    Label1: TLabel;
    dtTglAwal: TcxDateEdit;
    dtTglAkhir: TcxDateEdit;
    bGetDataRegister: TcxButton;
    vt: TVirtualTable;
    vtpolda_nama: TStringField;
    vtmobil_barang: TIntegerField;
    vtmobil_penumpang: TIntegerField;
    vtsepeda_motor: TIntegerField;
    vttotal: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLapMutasiLD: TfLapMutasiLD;

implementation
Uses
  uDM, uVariabel, uModul, uWait;
{$R *.dfm}

end.
