object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 259
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 240
    Top = 88
    Width = 209
    Height = 105
    Caption = 'TESTAR'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 32
    Width = 497
    Height = 21
    TabOrder = 1
    Text = 'http://'
  end
  object RG1: TRadioGroup
    Left = 16
    Top = 72
    Width = 185
    Height = 161
    Caption = 'TESTAR'
    ItemIndex = 4
    Items.Strings = (
      'http://service.datasus.org'
      'http://google.com'
      'http://google.com.br'
      'http://registro.br'
      'manual')
    TabOrder = 2
  end
end
