inherited frmCliEvent: TfrmCliEvent
  Caption = 'INFORME OS DADOS DO CLIENTE'
  ClientHeight = 211
  ClientWidth = 516
  ExplicitWidth = 522
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 169
    Width = 516
    TabOrder = 7
    ExplicitTop = 169
    ExplicitWidth = 516
    inherited pnlBtnClose: TPanel
      Left = 422
      TabOrder = 1
      ExplicitLeft = 422
      inherited btnSair: TcxButton
        Caption = 'ESC - SAIR'
        TabStop = False
      end
    end
    inherited pnlBase: TPanel
      Width = 421
      TabOrder = 0
      ExplicitWidth = 421
      object btnOK: TcxButton
        AlignWithMargins = True
        Left = 340
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'F11 - OK'
        TabOrder = 0
        TabStop = False
        OnClick = btnOKClick
        ExplicitLeft = 8
      end
    end
  end
  inherited Edit1: TEdit
    TabStop = False
    TabOrder = 0
  end
  object edNome: TcxTextEdit [2]
    Left = 8
    Top = 32
    Properties.CharCase = ecUpperCase
    TabOrder = 1
    Width = 502
  end
  object cxLabel1: TcxLabel [3]
    Left = 8
    Top = 8
    Caption = 'Nome/Raz'#227'o social'
  end
  object cxLabel2: TcxLabel [4]
    Left = 10
    Top = 58
    Caption = 'CPF/CNPJ'
  end
  object edCNPJ: TcxTextEdit [5]
    Left = 8
    Top = 82
    TabOrder = 2
    OnKeyPress = edCNPJKeyPress
    Width = 145
  end
  object cxLabel3: TcxLabel [6]
    Left = 8
    Top = 107
    Caption = 'Endere'#231'o'
  end
  object edEnder: TcxTextEdit [7]
    Left = 8
    Top = 132
    Properties.CharCase = ecUpperCase
    TabOrder = 4
    Width = 502
  end
  inherited ini: TFormStorage
    Left = 80
    Top = 176
  end
  inherited FR: TFormResizer
    Left = 120
    Top = 176
  end
  inherited EnterTab: TACBrEnterTab
    Left = 160
    Top = 176
  end
end
