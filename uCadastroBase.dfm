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
        Left = 476
        Top = 5
        Width = 83
        Height = 42
        Caption = '&Fechar'
        TabOrder = 0
        OnClick = btnFecharClick
      end
      object btnExcluir: TBitBtn
        Left = 387
        Top = 5
        Width = 83
        Height = 42
        Caption = '&Excluir'
        TabOrder = 1
      end
      object btnAlterar: TBitBtn
        Left = 297
        Top = 5
        Width = 83
        Height = 42
        Caption = '&Alterar'
        TabOrder = 2
        OnClick = btnAlterarClick
      end
      object btnInserir: TBitBtn
        Left = 208
        Top = 5
        Width = 83
        Height = 42
        Caption = '&Inserir'
        TabOrder = 3
        OnClick = btnInserirClick
      end
      object btnSalvar: TBitBtn
        Left = 118
        Top = 5
        Width = 83
        Height = 42
        Caption = '&Salvar'
        TabOrder = 4
        OnClick = btnSalvarClick
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
