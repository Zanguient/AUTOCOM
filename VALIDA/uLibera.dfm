object frmLibera: TfrmLibera
  Left = 0
  Top = 0
  ActiveControl = e1
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'LIBERA'#199#195'O DO SISTEMA'
  ClientHeight = 275
  ClientWidth = 408
  Color = 11786713
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 188
    Top = 44
    Width = 213
    Height = 46
    Shape = stRoundRect
  end
  object Label4: TLabel
    Left = 202
    Top = 48
    Width = 121
    Height = 13
    Margins.Bottom = 0
    Caption = 'Digite o RESET informado'
    Transparent = True
  end
  object Shape1: TShape
    Left = 188
    Top = 10
    Width = 213
    Height = 28
    Shape = stRoundRect
  end
  object Label3: TLabel
    Left = 317
    Top = 12
    Width = 56
    Height = 24
    Margins.Bottom = 0
    Caption = '00000'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label2: TLabel
    Left = 196
    Top = 18
    Width = 103
    Height = 13
    Margins.Bottom = 0
    Caption = 'Informe este c'#243'digo: '
    Transparent = True
  end
  object cxImage1: TcxImage
    Left = 0
    Top = 0
    TabStop = False
    Align = alClient
    Properties.GraphicClassName = 'TdxPNGImage'
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    Style.BorderStyle = ebsOffice11
    Style.Color = 12377822
    Style.HotTrack = False
    Style.Shadow = False
    Style.TransparentBorder = False
    TabOrder = 5
    Transparent = True
    ExplicitLeft = 40
    ExplicitTop = 64
    Height = 275
    Width = 408
  end
  object e1: TEdit
    Left = 202
    Top = 63
    Width = 53
    Height = 19
    CharCase = ecUpperCase
    Color = 14155735
    Ctl3D = False
    MaxLength = 5
    ParentCtl3D = False
    TabOrder = 0
    OnChange = e1Change
  end
  object e2: TEdit
    Left = 258
    Top = 63
    Width = 53
    Height = 19
    CharCase = ecUpperCase
    Color = 14155735
    Ctl3D = False
    MaxLength = 5
    ParentCtl3D = False
    TabOrder = 1
    OnChange = e2Change
  end
  object e3: TEdit
    Left = 314
    Top = 63
    Width = 53
    Height = 19
    CharCase = ecUpperCase
    Color = 14155735
    Ctl3D = False
    MaxLength = 5
    ParentCtl3D = False
    TabOrder = 2
    OnChange = e3Change
  end
  object e4: TEdit
    Left = 370
    Top = 63
    Width = 21
    Height = 19
    CharCase = ecUpperCase
    Color = 14155735
    Ctl3D = False
    MaxLength = 1
    ParentCtl3D = False
    TabOrder = 3
    OnChange = e4Change
  end
  object OK: TButton
    Tag = 16
    Left = 248
    Top = 143
    Width = 119
    Height = 38
    Caption = 'FECHAR'
    TabOrder = 4
    OnClick = OKClick
  end
end
