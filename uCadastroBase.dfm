object frmBase: TfrmBase
  Left = 0
  Top = 0
  Caption = 'Cadastro Base'
  ClientHeight = 388
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 18
  object Panel1: TPanel
    Left = 0
    Top = 336
    Width = 706
    Height = 52
    Align = alBottom
    TabOrder = 0
    object Panel2: TPanel
      Left = 128
      Top = 1
      Width = 577
      Height = 50
      Align = alRight
      TabOrder = 0
      object btnFechar: TBitBtn
        Left = 478
        Top = 5
        Width = 83
        Height = 42
        Caption = '&Fechar'
        TabOrder = 5
        OnClick = btnFecharClick
      end
      object btnExcluir: TBitBtn
        Left = 304
        Top = 5
        Width = 83
        Height = 42
        Caption = '&Excluir'
        TabOrder = 3
        OnClick = btnExcluirClick
      end
      object btnAlterar: TBitBtn
        Left = 214
        Top = 5
        Width = 83
        Height = 42
        Caption = '&Alterar'
        TabOrder = 2
        OnClick = btnAlterarClick
      end
      object btnInserir: TBitBtn
        Left = 125
        Top = 5
        Width = 83
        Height = 42
        Caption = '&Inserir'
        TabOrder = 1
        OnClick = btnInserirClick
      end
      object btnSalvar: TBitBtn
        Left = 35
        Top = 5
        Width = 83
        Height = 42
        Caption = '&Salvar'
        TabOrder = 0
        OnClick = btnSalvarClick
      end
      object btnCancelar: TBitBtn
        Left = 393
        Top = 5
        Width = 83
        Height = 42
        Caption = '&Cancelar'
        TabOrder = 4
        OnClick = btnCancelarClick
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 706
    Height = 336
    ActivePage = tsListagem
    Align = alClient
    TabOrder = 1
    object tsListagem: TTabSheet
      Caption = ' Listagem '
    end
    object tsCadastro: TTabSheet
      Caption = ' Cadastro '
      ImageIndex = 1
    end
  end
end
