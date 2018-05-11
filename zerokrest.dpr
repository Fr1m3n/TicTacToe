program zerokrest;

uses
  Forms,
  zerokrestmain in 'zerokrestmain.pas' {Form1},
  mode in 'mode.pas' {Form2};


{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
