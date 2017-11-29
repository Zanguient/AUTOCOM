inherited frmVendedor: TfrmVendedor
  ActiveControl = edsenha
  Caption = 'VENDEDOR'
  ClientHeight = 114
  ClientWidth = 206
  ExplicitWidth = 212
  ExplicitHeight = 143
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 72
    Width = 206
    TabOrder = 3
    ExplicitTop = 72
    ExplicitWidth = 206
    inherited pnlBtnClose: TPanel
      Left = 112
      TabOrder = 1
      ExplicitLeft = 112
    end
    inherited pnlBase: TPanel
      Width = 111
      TabOrder = 0
      ExplicitWidth = 111
      object cxButton1: TcxButton
        AlignWithMargins = True
        Left = 30
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'OK'
        TabOrder = 0
        OnClick = cxButton1Click
      end
    end
  end
  inherited Edit1: TEdit
    TabStop = False
    TabOrder = 0
  end
  object edsenha: TcxTextEdit [2]
    Left = 40
    Top = 32
    Properties.EchoMode = eemPassword
    TabOrder = 1
    Width = 121
  end
  object cxLabel1: TcxLabel [3]
    Left = 40
    Top = 8
    Caption = 'Senha'
  end
  inherited ini: TFormStorage
    Left = 496
    Top = 48
  end
  inherited FR: TFormResizer
    Left = 536
    Top = 48
  end
  inherited EnterTab: TACBrEnterTab
    Left = 576
    Top = 48
  end
end
