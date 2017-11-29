object frm: Tfrm
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 381
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object TPA: TPanel
    Left = 0
    Top = 339
    Width = 602
    Height = 42
    Align = alBottom
    BevelKind = bkSoft
    TabOrder = 0
    object pnlBtnClose: TPanel
      Left = 508
      Top = 1
      Width = 89
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      Caption = 'TPA'
      TabOrder = 0
      object btnSair: TcxButton
        AlignWithMargins = True
        Left = 8
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'SAIR'
        TabOrder = 0
        OnClick = btnSairClick
      end
    end
    object pnlBase: TPanel
      Left = 1
      Top = 1
      Width = 507
      Height = 36
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
    end
  end
  object Edit1: TEdit
    Left = 528
    Top = 8
    Width = 57
    Height = 23
    TabOrder = 1
    Text = 'nao mexer'
    Visible = False
  end
  object ini: TFormStorage
    Active = False
    IniFileName = 'autocom'
    Options = []
    StoredValues = <
      item
        Name = 'w'
        Value = 0
      end
      item
        Name = 'h'
        Value = 0
      end>
    Left = 8
    Top = 8
  end
  object FR: TFormResizer
    ResizeFonts = True
    MinFontSize = 8
    MaxFontSize = 12
    FontSize = 8
    Left = 48
    Top = 8
  end
  object EnterTab: TACBrEnterTab
    EnterAsTab = True
    Left = 88
    Top = 8
  end
end
