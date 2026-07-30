program Teste_Questores;

uses
  Vcl.Forms,
  Model.Entities in 'Model.Entities.pas',
  Service.Geral in 'Service.Geral.pas' {fmGeral},
  database.connection in 'database.connection.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmGeral, fmGeral);
  Application.Run;
end.
