object frmMunicipio: TfrmMunicipio
  Left = 97
  Top = 55
  Caption = 'Cadastro de Munic'#237'pio'
  ClientHeight = 282
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 227
    Width = 432
    Height = 55
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 218
    ExplicitWidth = 510
    object Panel2: TPanel
      Left = -6
      Top = 1
      Width = 437
      Height = 53
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 72
      object btnFechar: TBitBtn
        Left = 345
        Top = 6
        Width = 76
        Height = 42
        Caption = '&Fechar'
        TabOrder = 0
      end
      object btnExcluir: TBitBtn
        Left = 261
        Top = 6
        Width = 76
        Height = 42
        Caption = '&Excluir'
        TabOrder = 1
      end
      object btnEditar: TBitBtn
        Left = 176
        Top = 6
        Width = 76
        Height = 42
        Caption = '&Editar'
        TabOrder = 2
        OnClick = btnEditarClick
      end
      object btnSalvar: TBitBtn
        Left = 94
        Top = 5
        Width = 76
        Height = 42
        Caption = '&Salvar'
        TabOrder = 3
        OnClick = btnSalvarClick
      end
      object btnInserir: TBitBtn
        Left = 12
        Top = 5
        Width = 76
        Height = 42
        Caption = '&Inserir'
        TabOrder = 4
        OnClick = btnInserirClick
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 432
    Height = 227
    ActivePage = tsListagem
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 510
    ExplicitHeight = 218
    object tsListagem: TTabSheet
      Caption = '  &Listagem  '
      ExplicitWidth = 502
      ExplicitHeight = 190
      object edtListagemNome: TLabeledEdit
        Left = 19
        Top = 73
        Width = 267
        Height = 21
        EditLabel.Width = 31
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome:'
        TabOrder = 0
      end
      object edtListagemIBGE: TLabeledEdit
        Left = 123
        Top = 25
        Width = 163
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'IBGE:'
        TabOrder = 1
      end
      object edtListagemIDMunicipio: TLabeledEdit
        Left = 19
        Top = 25
        Width = 78
        Height = 21
        EditLabel.Width = 15
        EditLabel.Height = 13
        EditLabel.Caption = 'ID:'
        TabOrder = 2
      end
      object edtListagemCep: TLabeledEdit
        Left = 123
        Top = 111
        Width = 163
        Height = 21
        EditLabel.Width = 23
        EditLabel.Height = 13
        EditLabel.Caption = 'CEP:'
        TabOrder = 3
      end
      object edtListagemDDD: TLabeledEdit
        Left = 19
        Top = 111
        Width = 78
        Height = 21
        EditLabel.Width = 25
        EditLabel.Height = 13
        EditLabel.Caption = 'DDD:'
        TabOrder = 4
      end
    end
    object tsCadastro: TTabSheet
      Caption = '  &Cadastro  '
      ImageIndex = 1
      ExplicitLeft = 6
      ExplicitTop = 23
      object LabeledEdit1: TLabeledEdit
        Left = 131
        Top = 119
        Width = 163
        Height = 21
        EditLabel.Width = 23
        EditLabel.Height = 13
        EditLabel.Caption = 'CEP:'
        TabOrder = 0
      end
      object LabeledEdit2: TLabeledEdit
        Left = 27
        Top = 119
        Width = 78
        Height = 21
        EditLabel.Width = 25
        EditLabel.Height = 13
        EditLabel.Caption = 'DDD:'
        TabOrder = 1
      end
      object LabeledEdit3: TLabeledEdit
        Left = 27
        Top = 81
        Width = 267
        Height = 21
        EditLabel.Width = 31
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome:'
        TabOrder = 2
      end
      object LabeledEdit5: TLabeledEdit
        Left = 27
        Top = 33
        Width = 163
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'IBGE:'
        TabOrder = 3
      end
    end
  end
end
