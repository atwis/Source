unit uWait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxProgressBar, clProgressBar;

type
  TfWait = class(TForm)
    Label1: TLabel;
    cxProgressBar1: TcxProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fWait: TfWait;

implementation

{$R *.dfm}

end.
