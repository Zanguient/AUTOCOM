inherited frmQtdMed: TfrmQtdMed
  Caption = 'MEDICAMENTO'
  ClientHeight = 170
  ClientWidth = 187
  ExplicitWidth = 193
  ExplicitHeight = 199
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 128
    Width = 187
    TabOrder = 4
    ExplicitTop = 128
    ExplicitWidth = 187
    inherited pnlBtnClose: TPanel
      Left = 93
      TabOrder = 1
      ExplicitLeft = 93
    end
    inherited pnlBase: TPanel
      Width = 92
      TabOrder = 0
      ExplicitWidth = 92
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
        TabOrder = 0
        WordWrap = True
        OnClick = btnF11Click
      end
    end
  end
  inherited Edit1: TEdit
    TabOrder = 0
  end
  object cxLabel1: TcxLabel [2]
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'QUANTIDADE '
    ParentFont = False
  end
  object edQtd: TcxCurrencyEdit [3]
    Left = 0
    Top = 17
    Align = alTop
    EditValue = 0.000000000000000000
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Properties.DecimalPlaces = 3
    Properties.DisplayFormat = '0.00#'
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -24
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 187
  end
  object pnlpfp: TPanel [4]
    Left = 0
    Top = 60
    Width = 187
    Height = 67
    Align = alTop
    TabOrder = 2
    object cxLabel2: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'PRESCRI'#199#195'O DI'#193'RIA'
      ParentFont = False
    end
    object edQtPrescr: TcxCurrencyEdit
      Left = 1
      Top = 18
      Align = alTop
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 185
    end
  end
  inherited ini: TFormStorage
    Left = 288
    Top = 168
  end
  inherited FR: TFormResizer
    Left = 296
    Top = 96
  end
  inherited EnterTab: TACBrEnterTab
    Left = 288
    Top = 32
  end
end
