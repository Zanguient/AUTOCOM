object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 24
    Top = 88
    Width = 185
    Height = 89
    Caption = 'cxButton1'
    TabOrder = 0
  end
  object icbSkins: TcxImageComboBox
    Left = 233
    Top = 122
    Properties.Items = <>
    Properties.OnEditValueChanged = icbSkinsPropertiesEditValueChanged
    TabOrder = 1
    Width = 228
  end
end
