program Demo;

uses
  Forms,
  DemoX in 'DemoX.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Demo';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
