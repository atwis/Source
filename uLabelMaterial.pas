unit uLabelMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, cxButtons, cxTextEdit,
  cxDropDownEdit, cxMaskEdit, cxCalendar, dxSkinsCore,
  dxSkinsDefaultPainters;

type
  TfLabelMaterial = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Label28: TLabel;
    Label26: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    dtTglBPKB: TcxDateEdit;
    cbMaterial: TcxComboBox;
    eNoKTPPemilik: TcxTextEdit;
    ePekerjaanPemilik: TcxTextEdit;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton6: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLabelMaterial: TfLabelMaterial;

implementation

{$R *.dfm}

end.
