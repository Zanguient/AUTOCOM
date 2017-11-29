inherited frmSerieD: TfrmSerieD
  ActiveControl = Edit1
  Caption = 'Informar NF S'#233'rie D'
  ClientHeight = 128
  ClientWidth = 203
  ExplicitWidth = 209
  ExplicitHeight = 157
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 86
    Width = 203
    TabOrder = 2
    ExplicitTop = 86
    ExplicitWidth = 203
    inherited pnlBtnClose: TPanel
      Left = 109
      TabOrder = 1
      ExplicitLeft = 109
    end
    inherited pnlBase: TPanel
      Width = 108
      TabOrder = 0
      ExplicitWidth = 108
      object bntF11: TcxButton
        AlignWithMargins = True
        Left = 27
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'F11 - OK'
        TabOrder = 0
        OnClick = bntF11Click
      end
    end
  end
  inherited Edit1: TEdit
    TabOrder = 0
  end
  object edNF: TcxCurrencyEdit [2]
    Left = 40
    Top = 16
    EditValue = 1.000000000000000000
    ParentFont = False
    Properties.DecimalPlaces = 0
    Properties.DisplayFormat = '000000'
    Properties.MinValue = 1.000000000000000000
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -29
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 121
  end
  inherited ini: TFormStorage
    Left = 200
  end
  inherited FR: TFormResizer
    Left = 312
  end
  inherited EnterTab: TACBrEnterTab
    Left = 256
  end
end
