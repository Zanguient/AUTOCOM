inherited frmCall_MenuFiscal: TfrmCall_MenuFiscal
  AlphaBlend = True
  AlphaBlendValue = 160
  BorderStyle = bsNone
  ClientHeight = 54
  ClientWidth = 113
  FormStyle = fsStayOnTop
  Position = poDefault
  ScreenSnap = True
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  ExplicitWidth = 113
  ExplicitHeight = 54
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 0
    Width = 113
    Height = 54
    Align = alClient
    ExplicitTop = 0
    ExplicitWidth = 113
    ExplicitHeight = 54
    inherited pnlBtnClose: TPanel
      Left = 1
      Width = 107
      Height = 48
      Align = alClient
      OnMouseDown = pnlBtnCloseMouseDown
      ExplicitLeft = 1
      ExplicitWidth = 107
      ExplicitHeight = 48
      inherited btnSair: TcxButton
        Left = 3
        Width = 101
        Height = 42
        Align = alClient
        Caption = 'Menu Fiscal'
        TabStop = False
        OnMouseEnter = btnSairMouseEnter
        OnMouseLeave = btnSairMouseLeave
        ExplicitLeft = 3
        ExplicitWidth = 101
        ExplicitHeight = 42
      end
    end
    inherited pnlBase: TPanel
      Left = 25
      Top = 62
      Align = alNone
      ExplicitLeft = 25
      ExplicitTop = 62
    end
  end
  inherited ini: TFormStorage
    IniSection = 'menufiscal'
    Options = [fpPosition]
    Top = 51
  end
  inherited FR: TFormResizer
    Top = 53
  end
  inherited EnterTab: TACBrEnterTab
    Top = 48
  end
end
