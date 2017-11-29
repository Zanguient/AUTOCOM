inherited frmOpc: TfrmOpc
  Caption = 'OP'#199#213'ES'
  ClientHeight = 135
  ClientWidth = 149
  ExplicitWidth = 155
  ExplicitHeight = 164
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 88
    Width = 149
    Height = 47
    ExplicitTop = 88
    ExplicitWidth = 149
    ExplicitHeight = 47
    inherited pnlBtnClose: TPanel
      Left = 1
      Width = 143
      Height = 41
      Align = alClient
      inherited btnSair: TcxButton
        Left = 3
        Width = 137
        Height = 35
        Align = alClient
        ModalResult = 2
        ExplicitLeft = 6
        ExplicitWidth = 83
      end
    end
    inherited pnlBase: TPanel
      Left = 144
      Width = 364
      Align = alNone
      ExplicitLeft = 144
      ExplicitWidth = 364
    end
  end
  object btnF2: TcxButton [2]
    AlignWithMargins = True
    Left = 3
    Top = 48
    Width = 143
    Height = 37
    Align = alClient
    Caption = 'F2 - VENDA P/NF'
    ModalResult = 7
    TabOrder = 2
    ExplicitLeft = 11
    ExplicitTop = 11
    ExplicitWidth = 137
    ExplicitHeight = 30
  end
  object btnF1: TcxButton [3]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 143
    Height = 39
    Align = alTop
    Caption = 'F1 - PR'#201'-VENDA'
    ModalResult = 6
    TabOrder = 3
    ExplicitLeft = 6
  end
  inherited ini: TFormStorage
    Left = 552
    Top = 216
  end
  inherited FR: TFormResizer
    Left = 528
    Top = 144
  end
  inherited EnterTab: TACBrEnterTab
    Left = 528
    Top = 64
  end
end
