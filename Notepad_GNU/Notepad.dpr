program Notepad;

uses
  Forms,
  NP in 'NP.pas' {MainFrm},
  LP in 'LP.pas' {AboutFrm},
  GP in 'GP.pas' {GoFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Блокнот GNU';
  Application.CreateForm(TMainFrm, MainFrm);
  Application.CreateForm(TAboutFrm, AboutFrm);
  Application.CreateForm(TGoFrm, GoFrm);
  Application.Run;
end.
