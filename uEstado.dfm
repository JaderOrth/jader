object frmEstado: TfrmEstado
  Left = 0
  Top = 0
  Caption = 'Cadastro do Estado'
  ClientHeight = 335
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pcListagem: TPageControl
    Left = 0
    Top = 0
    Width = 609
    Height = 280
    ActivePage = tsListagem
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 144
    ExplicitTop = 8
    ExplicitWidth = 289
    ExplicitHeight = 193
    object tsListagem: TTabSheet
      Caption = '  &Listagem   '
      ExplicitWidth = 281
      ExplicitHeight = 165
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 601
        Height = 252
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tsCadastro: TTabSheet
      Caption = '  &Cadastro   '
      ImageIndex = 1
      ExplicitLeft = 52
      ExplicitTop = 0
      ExplicitWidth = 281
      ExplicitHeight = 165
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 280
    Width = 609
    Height = 55
    Align = alBottom
    TabOrder = 1
    object Panel2: TPanel
      Left = 240
      Top = 1
      Width = 368
      Height = 53
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 241
      object BitBtn1: TBitBtn
        Left = 278
        Top = 6
        Width = 76
        Height = 42
        Caption = '&Fechar'
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        Left = 194
        Top = 6
        Width = 76
        Height = 42
        Caption = '&Excluir'
        TabOrder = 1
      end
      object BitBtn3: TBitBtn
        Left = 111
        Top = 6
        Width = 76
        Height = 42
        Caption = '&Editar'
        TabOrder = 2
      end
      object BitBtn4: TBitBtn
        Left = 26
        Top = 6
        Width = 76
        Height = 42
        Caption = '&Salvar'
        TabOrder = 3
      end
    end
  end
end
