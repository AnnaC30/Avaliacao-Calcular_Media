object frmMediaAluno: TfrmMediaAluno
  Left = 0
  Top = 0
  Caption = 'M'#233'dia do Aluno'
  ClientHeight = 441
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClick = btnCalcularClick
  TextHeight = 15
  object grpNotas: TGroupBox
    Left = 24
    Top = 16
    Width = 497
    Height = 121
    Caption = 'Notas (0 a 10)'
    TabOrder = 0
    object lblN1: TLabel
      Left = 24
      Top = 32
      Width = 38
      Height = 15
      Caption = 'Nota 1:'
    end
    object lblN2: TLabel
      Left = 192
      Top = 32
      Width = 38
      Height = 15
      Caption = 'Nota 2:'
    end
    object lblN3: TLabel
      Left = 352
      Top = 32
      Width = 38
      Height = 15
      Caption = 'Nota 3:'
    end
    object edtNota1: TEdit
      Left = 24
      Top = 53
      Width = 121
      Height = 23
      TabOrder = 0
      TextHint = 'Ex.: 7,5'
    end
    object edtNota2: TEdit
      Left = 192
      Top = 53
      Width = 121
      Height = 23
      TabOrder = 1
      TextHint = 'Ex.: 8'
    end
    object edtNota3: TEdit
      Left = 352
      Top = 53
      Width = 121
      Height = 23
      TabOrder = 2
      TextHint = 'Ex.: 6'
    end
  end
  object btnCalcular: TButton
    Left = 24
    Top = 160
    Width = 273
    Height = 25
    Caption = 'Calcular M'#233'dia'
    TabOrder = 1
    OnClick = btnCalcularClick
  end
  object grpResultado: TGroupBox
    Left = 24
    Top = 208
    Width = 497
    Height = 105
    Caption = 'Resultado'
    TabOrder = 2
    object lblMediaTitulo: TLabel
      Left = 24
      Top = 32
      Width = 36
      Height = 15
      Caption = 'M'#233'dia:'
    end
    object lblMediaValor: TLabel
      Left = 80
      Top = 32
      Width = 65
      Height = 15
    end
    object lblSituacaoTitulo: TLabel
      Left = 24
      Top = 72
      Width = 48
      Height = 15
      Caption = 'Situa'#231#227'o:'
    end
    object lblSituacaoValor: TLabel
      Left = 91
      Top = 72
      Width = 110
      Height = 15
    end
  end
end
