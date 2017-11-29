object Form1: TForm1
  Left = 391
  Top = 307
  ActiveControl = Edit1
  Caption = 'Validador'
  ClientHeight = 184
  ClientWidth = 174
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 136
    Width = 176
    Height = 13
    Margins.Bottom = 0
    Alignment = taCenter
    AutoSize = False
    Caption = 'INFORME ESTE C'#211'DIGO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
  end
  object RG1: TRadioGroup
    Left = 8
    Top = 57
    Width = 157
    Height = 76
    ItemIndex = 2
    Items.Strings = (
      '30 dias'
      '60 dias'
      '90 dias')
    TabOrder = 4
    OnClick = RG1Click
  end
  object Button1: TButton
    Left = 3
    Top = 30
    Width = 47
    Height = 25
    Caption = 'GERAR'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 53
    Top = 30
    Width = 64
    Height = 25
    Caption = 'VERIFICAR'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 0
    Top = 0
    Width = 170
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    Text = 'C'#211'DIGO'
  end
  object Button3: TButton
    Left = 5
    Top = 154
    Width = 161
    Height = 25
    Caption = 'SAIR'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 120
    Top = 30
    Width = 52
    Height = 25
    Caption = 'Pesq.'
    TabOrder = 5
    OnClick = Button4Click
  end
  object cb1: TCheckBox
    Left = 80
    Top = 92
    Width = 80
    Height = 17
    Caption = 'For'#231'a Bruta'
    TabOrder = 6
  end
end
