inherited frmEstado: TfrmEstado
  Caption = 'Cadastro de Estados'
  ClientWidth = 462
  OnCreate = FormCreate
  ExplicitWidth = 478
  PixelsPerInch = 96
  TextHeight = 18
  inherited Panel1: TPanel
    Width = 462
    ExplicitWidth = 462
    inherited Panel2: TPanel
      Left = -116
      ExplicitLeft = -116
      inherited btnExcluir: TBitBtn
        OnClick = btnExcluirClick
      end
    end
  end
  inherited PageControl1: TPageControl
    Width = 462
    ExplicitWidth = 462
    inherited tsListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 29
      ExplicitWidth = 454
      ExplicitHeight = 303
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
        EditLabel.Width = 23
        EditLabel.Height = 18
        EditLabel.Caption = 'UF:'
        TabOrder = 2
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 29
      ExplicitWidth = 454
      ExplicitHeight = 303
      object edtEstadoNome: TLabeledEdit
        Left = 19
        Top = 112
        Width = 311
        Height = 26
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
        EditLabel.Width = 23
        EditLabel.Height = 18
        EditLabel.Caption = 'UF:'
        TabOrder = 1
      end
    end
  end
end
