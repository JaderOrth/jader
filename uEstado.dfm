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
    Left = 48
    Top = 48
    Width = 289
    Height = 193
    ActivePage = tsListagem
    TabOrder = 0
    object tsListagem: TTabSheet
      Caption = '  &Listagem   '
    end
    object tsCadastro: TTabSheet
      Caption = '  &Cadastro   '
      ImageIndex = 1
      ExplicitLeft = 0
    end
  end
end
