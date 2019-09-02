program LesIndiens;

uses
  FMX.Forms,
  fd.Base in 'fd.Base.pas' {FormBase},
  fd.start.menu in 'fd.start.menu.pas' {FormStartMnu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormStartMnu, FormStartMnu);
  Application.Run;
end.
