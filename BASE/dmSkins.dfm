object DMSkin: TDMSkin
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 140
  Width = 331
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Coffee'
    Left = 40
    Top = 8
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    NativeStyle = False
    SkinName = 'Coffee'
    Left = 152
    Top = 8
  end
  object cxLocalizer1: TcxLocalizer
    Left = 248
    Top = 12
  end
  object cxHintStyleController1: TcxHintStyleController
    HintStyleClassName = 'TcxHintStyle'
    HintStyle.CaptionFont.Charset = DEFAULT_CHARSET
    HintStyle.CaptionFont.Color = clWindowText
    HintStyle.CaptionFont.Height = -11
    HintStyle.CaptionFont.Name = 'Tahoma'
    HintStyle.CaptionFont.Style = []
    HintStyle.Font.Charset = DEFAULT_CHARSET
    HintStyle.Font.Color = clWindowText
    HintStyle.Font.Height = -11
    HintStyle.Font.Name = 'Tahoma'
    HintStyle.Font.Style = []
    HintStyle.Rounded = True
    HintHidePause = 5000
    Left = 256
    Top = 72
  end
  object DSC1: TcxDefaultEditStyleController
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Left = 176
    Top = 56
    PixelsPerInch = 96
  end
end
