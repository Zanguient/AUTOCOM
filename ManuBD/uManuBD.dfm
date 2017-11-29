object frmManuBD: TfrmManuBD
  Left = 0
  Top = 0
  Hint = 'M'#243'dulo C'#243'pia de Seguran'#231'a'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lista de opera'#231#245'es de manuten'#231#227'o nas bases de dados'
  ClientHeight = 149
  ClientWidth = 468
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 468
    Height = 108
    Align = alClient
    Color = 15263976
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 108
    Width = 468
    Height = 41
    Cursor = crHandPoint
    Align = alBottom
    Alignment = taLeftJustify
    Caption = 'Aguarde....'
    Enabled = False
    TabOrder = 1
    OnClick = Panel1Click
    object Bar1: TProgressBar
      Left = 1
      Top = 1
      Width = 466
      Height = 7
      Align = alTop
      Smooth = True
      Step = 1
      TabOrder = 0
    end
    object cb1: TCheckBox
      Left = 284
      Top = 8
      Width = 183
      Height = 32
      Align = alRight
      Caption = 'N'#227'o mostrar detalhes (mais r'#225'pido)'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 104
    Top = 96
  end
  object sd1: TSaveDialog
    DefaultExt = '.sql'
    Filter = 'Arquivos de Back-up|*.sql'
    InitialDir = 'c:\'
    Left = 160
    Top = 100
  end
end
