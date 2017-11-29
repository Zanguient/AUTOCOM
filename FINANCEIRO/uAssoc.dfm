inherited frmAssoc: TfrmAssoc
  Caption = 'frmAssoc'
  ClientHeight = 179
  ClientWidth = 271
  ExplicitWidth = 277
  ExplicitHeight = 208
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 46
    Width = 223
    Height = 15
    Caption = 'Essa opera'#231#227'o ser'#225' associada com o c'#243'digo '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 77
    Width = 182
    Height = 13
    Caption = 'Informe uma descri'#231#227'o para essa opera'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 0
    Top = 8
    Width = 12
    Height = 15
    Caption = '---'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  inherited TPA: TPanel
    Top = 137
    Width = 271
    ExplicitTop = 137
    ExplicitWidth = 271
    inherited pnlBtnClose: TPanel
      Left = 177
      ExplicitLeft = 177
    end
    inherited pnlBase: TPanel
      Width = 176
      ExplicitWidth = 176
      object btnAss: TcxButton
        AlignWithMargins = True
        Left = 74
        Top = 1
        Width = 101
        Height = 34
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alRight
        Caption = 'ASSOCIAR'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        OnClick = btnAssClick
      end
    end
  end
  object edDescr: TcxTextEdit [5]
    Left = 8
    Top = 91
    Properties.CharCase = ecUpperCase
    TabOrder = 2
    Width = 194
  end
  inherited ini: TFormStorage
    Left = 56
    Top = 192
  end
  inherited FR: TFormResizer
    Left = 96
    Top = 192
  end
  inherited EnterTab: TACBrEnterTab
    Left = 136
    Top = 192
  end
end
