program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {ClientHost};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TClientHost, ClientHost);
  Application.Run;
end.
