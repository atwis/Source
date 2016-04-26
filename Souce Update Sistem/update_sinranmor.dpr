program update_sinranmor;

uses
  Forms,
  uMain in 'uMain.pas' {fMain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'update';
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
