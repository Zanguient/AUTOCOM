object Form1: TForm1
  Left = 303
  Top = 162
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 267
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 128
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 24
    Top = 16
    Width = 297
    Height = 113
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
end
