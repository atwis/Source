unit uSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TfSpash = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    lblVersion: TLabel;
    lblLoading: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSpash: TfSpash;

implementation

{$R *.dfm}

end.
