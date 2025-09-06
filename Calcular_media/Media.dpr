program Media;

uses
  Vcl.Forms,
  Calcular_Media in 'Calcular_Media.pas' {frmMediaAluno};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMediaAluno, frmMediaAluno);
  Application.Run;
end.
