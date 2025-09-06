unit Calcular_Media;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMediaAluno = class(TForm)
    grpNotas: TGroupBox;
    lblN1: TLabel;
    lblN2: TLabel;
    lblN3: TLabel;
    edtNota1: TEdit;
    edtNota2: TEdit;
    edtNota3: TEdit;
    btnCalcular: TButton;
    grpResultado: TGroupBox;
    lblMediaTitulo: TLabel;
    lblMediaValor: TLabel;
    lblSituacaoTitulo: TLabel;
    lblSituacaoValor: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    function LerNota(Edit: TEdit; const Nome: string; out Valor: Double): Boolean;
  public
  end;

var
  frmMediaAluno: TfrmMediaAluno;

implementation

{$R *.dfm}

function TfrmMediaAluno.LerNota(Edit: TEdit; const Nome: string; out Valor: Double): Boolean;
begin
  Result := False;
  if Edit.Text = '' then
  begin
    ShowMessage('Preencha a ' + Nome);
    Edit.SetFocus;
    Exit;
  end;

  if not TryStrToFloat(StringReplace(Edit.Text, '.', ',', [rfReplaceAll]), Valor) then
  begin
    ShowMessage(Nome + ' inválida. Digite um número entre 0 e 10');
    Edit.SetFocus;
    Exit;
  end;

  if (Valor < 0) or (Valor > 10) then
  begin
    ShowMessage(Nome + ' deve estar entre 0 e 10');
    Edit.SetFocus;
    Exit;
  end;

  Result := True;
end;

procedure TfrmMediaAluno.btnCalcularClick(Sender: TObject);
var
  N1, N2, N3, Media: Double;
begin
  if not LerNota(edtNota1, 'Nota 1', N1) then Exit;
  if not LerNota(edtNota2, 'Nota 2', N2) then Exit;
  if not LerNota(edtNota3, 'Nota 3', N3) then Exit;

  Media := (N1 + N2 + N3) / 3;

  lblMediaValor.Caption := FormatFloat('0.00', Media);

  if Media >= 7.0 then
    lblSituacaoValor.Caption := 'Aprovado'
  else if Media >= 5.0 then
    lblSituacaoValor.Caption := 'Recuperação'
  else
    lblSituacaoValor.Caption := 'Reprovado';
end;

end.


