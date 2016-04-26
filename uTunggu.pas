unit uTunggu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxProgressBar,
  StdCtrls, clProgressBar;

type
  TfTunggu = class(TForm)
    cxProgressBar1: TcxProgressBar;
    Label1: TLabel;
    clProgressBar1: TclProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTunggu: TfTunggu;

implementation
uses
  uMain;
{$R *.dfm}

end.
