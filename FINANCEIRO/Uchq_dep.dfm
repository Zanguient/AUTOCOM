inherited frmchq_dep: Tfrmchq_dep
  Caption = 'DEP'#211'SITO DE CHEQUES EM CONTA'
  ClientHeight = 108
  ClientWidth = 516
  ExplicitWidth = 522
  ExplicitHeight = 137
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 66
    Width = 516
    inherited pnlBtnClose: TPanel
      Left = 422
    end
    inherited pnlBase: TPanel
      Width = 421
      object cxButton1: TcxButton
        AlignWithMargins = True
        Left = 307
        Top = 3
        Width = 111
        Height = 30
        Align = alRight
        Caption = 'PROSSEGUIR'
        TabOrder = 0
        OnClick = cxButton1Click
        ExplicitLeft = 80
      end
      object Bar1: TcxProgressBar
        Left = -3
        Top = 8
        TabOrder = 1
        Width = 289
      end
    end
  end
  object cmbbanco: TcxImageComboBox [2]
    Left = 3
    Top = 24
    Properties.Items = <>
    TabOrder = 2
    OnClick = cmbbancoClick
    Width = 277
  end
  object cxLabel3: TcxLabel [3]
    Left = 3
    Top = 4
    Caption = 'BANCO'
  end
  object cxLabel4: TcxLabel [4]
    Left = 374
    Top = 4
    Caption = 'CONTA'
  end
  object cmbConta: TcxImageComboBox [5]
    Left = 374
    Top = 24
    Properties.Items = <>
    TabOrder = 5
    Width = 102
  end
  object cxLabel10: TcxLabel [6]
    Left = 291
    Top = 4
    Caption = 'AGENCIA'
  end
  object cmbAg: TcxImageComboBox [7]
    Left = 286
    Top = 24
    Properties.Items = <>
    TabOrder = 7
    OnClick = cmbAgClick
    Width = 84
  end
  inherited ini: TFormStorage
    Left = 488
    Top = 16
  end
  inherited FR: TFormResizer
    Left = 536
    Top = 40
  end
  inherited EnterTab: TACBrEnterTab
    Left = 576
    Top = 40
  end
end
