inherited frmDesconto: TfrmDesconto
  ActiveControl = edDescU
  Caption = 'DESCONTO Tecle P=%, V=$'
  ClientHeight = 172
  ClientWidth = 212
  ExplicitWidth = 218
  ExplicitHeight = 201
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 130
    Width = 212
    ExplicitTop = 130
    ExplicitWidth = 212
    inherited pnlBtnClose: TPanel
      Left = 118
      ExplicitLeft = 118
      inherited btnSair: TcxButton
        TabStop = False
      end
    end
    inherited pnlBase: TPanel
      Width = 117
      ExplicitWidth = 117
      object btnF11: TcxButton
        AlignWithMargins = True
        Left = 1
        Top = 3
        Width = 85
        Height = 30
        Hint = '-'
        Margins.Left = 1
        Margins.Right = 1
        Align = alLeft
        Caption = 'F11 - OK'
        Enabled = False
        TabOrder = 0
        WordWrap = True
        OnClick = btnF11Click
      end
    end
  end
  object lblT: TcxLabel [2]
    Left = 0
    Top = 86
    Align = alBottom
    Caption = 'Sobre o Valor Total ($)'
    ParentFont = False
    ExplicitTop = 82
  end
  object edDescU: TcxCurrencyEdit [3]
    AlignWithMargins = True
    Left = 3
    Top = 20
    Align = alTop
    EditValue = 0.000000000000000000
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Properties.DecimalPlaces = 3
    Properties.DisplayFormat = '0.00#'
    Properties.OnChange = DescUPropertiesChange
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -24
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 3
    OnKeyDown = edDescUKeyDown
    Width = 206
  end
  object edDescT: TcxCurrencyEdit [4]
    AlignWithMargins = True
    Left = 3
    Top = 106
    Align = alBottom
    EditValue = 0.000000000000000000
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Properties.DecimalPlaces = 3
    Properties.DisplayFormat = '0.00#'
    Properties.OnChange = edDescTPropertiesChange
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -24
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 4
    OnKeyDown = edDescUKeyDown
    Width = 206
  end
  object lblU: TcxLabel [5]
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Sobre o Valor Unit'#225'rio ($)'
    ParentFont = False
  end
  inherited ini: TFormStorage
    Left = 176
    Top = 88
  end
  inherited FR: TFormResizer
    Left = 176
    Top = 48
  end
  inherited EnterTab: TACBrEnterTab
    Left = 176
  end
end
