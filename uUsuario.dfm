inherited frmUsuario: TfrmUsuario
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 414
  ClientWidth = 836
  ExplicitWidth = 852
  ExplicitHeight = 452
  PixelsPerInch = 96
  TextHeight = 18
  inherited Panel1: TPanel
    Top = 362
    Width = 836
    ExplicitTop = 362
    ExplicitWidth = 836
    inherited Panel2: TPanel
      Left = 258
      ExplicitLeft = 258
    end
  end
  inherited PageControl1: TPageControl
    Width = 836
    Height = 362
    ActivePage = tsCadastro
    ExplicitWidth = 836
    ExplicitHeight = 362
    inherited tsListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 29
      ExplicitWidth = 828
      ExplicitHeight = 329
      object Label1: TLabel
        Left = 28
        Top = 233
        Width = 49
        Height = 18
        Caption = 'Estado:'
      end
      object Label2: TLabel
        Left = 332
        Top = 233
        Width = 62
        Height = 18
        Caption = 'Munic'#237'pio:'
      end
      object Label3: TLabel
        Left = 574
        Top = 7
        Width = 146
        Height = 18
        Caption = 'Data de Naqscimento:'
      end
      object LabeledEdit4: TLabeledEdit
        Left = 297
        Top = 85
        Width = 254
        Height = 26
        EditLabel.Width = 42
        EditLabel.Height = 18
        EditLabel.Caption = 'Bairro:'
        TabOrder = 3
      end
      object LabeledEdit7: TLabeledEdit
        Left = 332
        Top = 196
        Width = 466
        Height = 26
        EditLabel.Width = 102
        EditLabel.Height = 18
        EditLabel.Caption = 'Complementos:'
        TabOrder = 5
      end
      object LabeledEdit8: TLabeledEdit
        Left = 297
        Top = 143
        Width = 254
        Height = 26
        EditLabel.Width = 47
        EditLabel.Height = 18
        EditLabel.Caption = 'Celular:'
        TabOrder = 6
      end
      object LabeledEdit9: TLabeledEdit
        Left = 574
        Top = 85
        Width = 224
        Height = 26
        EditLabel.Width = 38
        EditLabel.Height = 18
        EditLabel.Caption = 'Login:'
        TabOrder = 7
      end
      object LabeledEdit10: TLabeledEdit
        Left = 28
        Top = 143
        Width = 248
        Height = 26
        EditLabel.Width = 62
        EditLabel.Height = 18
        EditLabel.Caption = 'Telefone:'
        TabOrder = 8
      end
      object LabeledEdit11: TLabeledEdit
        Left = 28
        Top = 196
        Width = 277
        Height = 26
        EditLabel.Width = 43
        EditLabel.Height = 18
        EditLabel.Caption = 'E-mail:'
        TabOrder = 9
      end
      object LabeledEdit12: TLabeledEdit
        Left = 574
        Top = 143
        Width = 224
        Height = 26
        EditLabel.Width = 45
        EditLabel.Height = 18
        EditLabel.Caption = 'Senha:'
        PasswordChar = '*'
        TabOrder = 10
      end
      object LabeledEdit2: TLabeledEdit
        Left = 146
        Top = 31
        Width = 248
        Height = 26
        EditLabel.Width = 44
        EditLabel.Height = 18
        EditLabel.Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object LabeledEdit3: TLabeledEdit
        Left = 28
        Top = 85
        Width = 248
        Height = 26
        EditLabel.Width = 78
        EditLabel.Height = 18
        EditLabel.Caption = 'Logradouro:'
        TabOrder = 2
      end
      object LabeledEdit6: TLabeledEdit
        Left = 414
        Top = 31
        Width = 137
        Height = 26
        EditLabel.Width = 135
        EditLabel.Height = 18
        EditLabel.Caption = 'N'#250'mero Logradouro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object LabeledEdit1: TLabeledEdit
        Left = 28
        Top = 31
        Width = 97
        Height = 26
        EditLabel.Width = 21
        EditLabel.Height = 18
        EditLabel.Caption = 'ID:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dtpDataNascimento: TDateTimePicker
        Left = 574
        Top = 31
        Width = 224
        Height = 26
        Date = 42847.691544097220000000
        Time = 42847.691544097220000000
        TabOrder = 11
      end
      object cmbEstado: TComboBox
        Left = 28
        Top = 257
        Width = 277
        Height = 26
        TabOrder = 12
      end
      object cmbMunicipio: TComboBox
        Left = 332
        Top = 257
        Width = 277
        Height = 26
        TabOrder = 13
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 29
      ExplicitWidth = 828
      ExplicitHeight = 329
      object Label4: TLabel
        Left = 36
        Top = 241
        Width = 49
        Height = 18
        Caption = 'Estado:'
      end
      object Label5: TLabel
        Left = 340
        Top = 241
        Width = 62
        Height = 18
        Caption = 'Munic'#237'pio:'
      end
      object Label6: TLabel
        Left = 582
        Top = 15
        Width = 146
        Height = 18
        Caption = 'Data de Naqscimento:'
      end
      object cmbCadMunicipio: TComboBox
        Left = 340
        Top = 265
        Width = 277
        Height = 26
        TabOrder = 0
        OnEnter = cmbCadMunicipioEnter
      end
      object edtCadComplementos: TLabeledEdit
        Left = 340
        Top = 204
        Width = 466
        Height = 26
        EditLabel.Width = 102
        EditLabel.Height = 18
        EditLabel.Caption = 'Complementos:'
        TabOrder = 1
      end
      object edtCadSenha: TLabeledEdit
        Left = 582
        Top = 151
        Width = 224
        Height = 26
        EditLabel.Width = 45
        EditLabel.Height = 18
        EditLabel.Caption = 'Senha:'
        PasswordChar = '*'
        TabOrder = 2
      end
      object edtCadLogin: TLabeledEdit
        Left = 582
        Top = 93
        Width = 224
        Height = 26
        EditLabel.Width = 38
        EditLabel.Height = 18
        EditLabel.Caption = 'Login:'
        TabOrder = 3
      end
      object dtpCadDatanascimento: TDateTimePicker
        Left = 582
        Top = 39
        Width = 224
        Height = 26
        Date = 42847.000000000000000000
        Time = 42847.000000000000000000
        TabOrder = 4
      end
      object edtCadNumeroLogradouro: TLabeledEdit
        Left = 305
        Top = 39
        Width = 254
        Height = 26
        EditLabel.Width = 135
        EditLabel.Height = 18
        EditLabel.Caption = 'N'#250'mero Logradouro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object edtCadBairro: TLabeledEdit
        Left = 305
        Top = 93
        Width = 254
        Height = 26
        EditLabel.Width = 42
        EditLabel.Height = 18
        EditLabel.Caption = 'Bairro:'
        TabOrder = 6
      end
      object edtCadCelular: TLabeledEdit
        Left = 305
        Top = 151
        Width = 254
        Height = 26
        EditLabel.Width = 47
        EditLabel.Height = 18
        EditLabel.Caption = 'Celular:'
        TabOrder = 7
      end
      object edtCadNome: TLabeledEdit
        Left = 36
        Top = 39
        Width = 248
        Height = 26
        EditLabel.Width = 44
        EditLabel.Height = 18
        EditLabel.Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object edtCadLogradouro: TLabeledEdit
        Left = 36
        Top = 93
        Width = 248
        Height = 26
        EditLabel.Width = 78
        EditLabel.Height = 18
        EditLabel.Caption = 'Logradouro:'
        TabOrder = 9
      end
      object edtCadTelefone: TLabeledEdit
        Left = 36
        Top = 151
        Width = 248
        Height = 26
        EditLabel.Width = 62
        EditLabel.Height = 18
        EditLabel.Caption = 'Telefone:'
        TabOrder = 10
      end
      object edtCadEmail: TLabeledEdit
        Left = 36
        Top = 204
        Width = 277
        Height = 26
        EditLabel.Width = 43
        EditLabel.Height = 18
        EditLabel.Caption = 'E-mail:'
        TabOrder = 11
      end
      object cmbCadEstado: TComboBox
        Left = 36
        Top = 265
        Width = 277
        Height = 26
        TabOrder = 12
      end
    end
  end
end
