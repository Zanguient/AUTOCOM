inherited frmChqTroca: TfrmChqTroca
  Caption = 'TROCA DE CHEQUE'
  ClientHeight = 97
  ClientWidth = 289
  ExplicitWidth = 295
  ExplicitHeight = 126
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 55
    Width = 289
    inherited pnlBtnClose: TPanel
      Left = 195
    end
    inherited pnlBase: TPanel
      Width = 194
      object cxButton1: TcxButton
        AlignWithMargins = True
        Left = 80
        Top = 3
        Width = 111
        Height = 30
        Align = alRight
        Caption = 'PROSSEGUIR'
        TabOrder = 0
        OnClick = cxButton1Click
      end
    end
  end
  object cxLabel1: TcxLabel [2]
    Left = 0
    Top = 0
    Align = alTop
    AutoSize = False
    Caption = 
      'Este '#233' o procedimento de troca do cheque pelo valor corresponden' +
      'te em esp'#233'cie. o valor ser'#225' adicionado ao caixa do dia. '
    Properties.WordWrap = True
    Height = 49
    Width = 289
  end
  inherited ini: TFormStorage
    Left = 464
    Top = 48
  end
  inherited FR: TFormResizer
    Left = 504
    Top = 48
  end
  inherited EnterTab: TACBrEnterTab
    Left = 544
    Top = 48
  end
end
