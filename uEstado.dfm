inherited frmEstado: TfrmEstado
  Caption = 'Cadastro de Estados'
  ClientHeight = 251
  ClientWidth = 552
  ExplicitWidth = 568
  ExplicitHeight = 289
  PixelsPerInch = 96
  TextHeight = 18
  inherited Panel1: TPanel
    Top = 199
    Width = 552
    ExplicitTop = 199
    ExplicitWidth = 462
    inherited Panel2: TPanel
      Left = -26
      ExplicitLeft = -116
      inherited btnExcluir: TBitBtn
        OnClick = btnExcluirClick
      end
    end
  end
  inherited PageControl1: TPageControl
    Width = 552
    Height = 199
    ExplicitWidth = 462
    ExplicitHeight = 199
    inherited tsListagem: TTabSheet
      ExplicitWidth = 454
      ExplicitHeight = 166
      object edtIdEstado: TLabeledEdit
        Left = 11
        Top = 40
        Width = 121
        Height = 26
        EditLabel.Width = 21
        EditLabel.Height = 18
        EditLabel.Caption = 'ID:'
        TabOrder = 0
        OnExit = edtIdEstadoExit
      end
      object edtNome: TLabeledEdit
        Left = 11
        Top = 104
        Width = 311
        Height = 26
        CharCase = ecUpperCase
        EditLabel.Width = 44
        EditLabel.Height = 18
        EditLabel.Caption = 'Nome:'
        TabOrder = 1
      end
      object edtUF: TLabeledEdit
        Left = 195
        Top = 40
        Width = 127
        Height = 26
        CharCase = ecUpperCase
        EditLabel.Width = 23
        EditLabel.Height = 18
        EditLabel.Caption = 'UF:'
        TabOrder = 2
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitWidth = 454
      ExplicitHeight = 166
      object edtEstadoNome: TLabeledEdit
        Left = 19
        Top = 112
        Width = 311
        Height = 26
        CharCase = ecUpperCase
        EditLabel.Width = 44
        EditLabel.Height = 18
        EditLabel.Caption = 'Nome:'
        TabOrder = 0
      end
      object edtEstadoUF: TLabeledEdit
        Left = 19
        Top = 40
        Width = 127
        Height = 26
        CharCase = ecUpperCase
        EditLabel.Width = 23
        EditLabel.Height = 18
        EditLabel.Caption = 'UF:'
        TabOrder = 1
      end
    end
  end
end
