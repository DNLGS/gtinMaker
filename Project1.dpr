program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  SG0144 in 'SG0144.pas' {Sg_0144};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSg_0144, Sg_0144);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
