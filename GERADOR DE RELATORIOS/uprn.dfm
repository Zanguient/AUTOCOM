object frmprn: Tfrmprn
  Left = 580
  Top = 420
  Caption = 'Impressora'
  ClientHeight = 108
  ClientWidth = 258
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlcom: TPanel
    Left = 0
    Top = 27
    Width = 258
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 2
      Width = 86
      Height = 13
      Margins.Bottom = 0
      Caption = 'COMANDOS ESC'
    end
    object cmb2: TComboBox
      Left = 7
      Top = 14
      Width = 245
      Height = 21
      BevelKind = bkSoft
      ItemIndex = 0
      TabOrder = 0
      Text = '-'
      Items.Strings = (
        '-'
        '-')
    end
  end
  object pnlPrn: TPanel
    Left = 0
    Top = 0
    Width = 258
    Height = 27
    Align = alTop
    TabOrder = 0
    TabStop = True
    object cmb1: TComboBox
      Left = 8
      Top = 3
      Width = 245
      Height = 21
      BevelKind = bkSoft
      ItemIndex = 0
      TabOrder = 0
      Text = '-'
      Items.Strings = (
        '-'
        '-')
    end
  end
  object btnCancel: TcxButton
    Left = 48
    Top = 74
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    LookAndFeel.SkinName = ''
    ModalResult = 2
    TabOrder = 2
  end
  object btnOK: TcxButton
    Left = 144
    Top = 74
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    LookAndFeel.SkinName = ''
    ModalResult = 1
    TabOrder = 3
  end
  object ini: TFormStorage
    Active = False
    Options = []
    StoredProps.Strings = (
      'cmb1.Text'
      'cmb2.Text')
    StoredValues = <
      item
        Name = 'w'
        Value = 0
      end
      item
        Name = 'h'
        Value = 0
      end>
    Left = 152
    Top = 8
  end
end
