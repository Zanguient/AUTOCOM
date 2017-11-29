inherited frmMenu: TfrmMenu
  Caption = 'MENU DE OP'#199#213'ES'
  ClientHeight = 116
  ClientWidth = 660
  ExplicitWidth = 666
  ExplicitHeight = 144
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 0
    Width = 660
    Height = 116
    Align = alClient
    ExplicitTop = 0
    ExplicitWidth = 660
    ExplicitHeight = 116
    inherited pnlBtnClose: TPanel
      Left = 582
      Top = 53
      Width = 73
      Height = 58
      ExplicitLeft = 582
      ExplicitTop = 53
      ExplicitWidth = 73
      ExplicitHeight = 58
      inherited btnSair: TcxButton
        Left = 5
        Width = 65
        Height = 52
        Caption = 'ESC SAIR'
        WordWrap = True
        ExplicitLeft = 5
        ExplicitWidth = 65
        ExplicitHeight = 52
      end
    end
    inherited pnlBase: TPanel
      Top = 53
      Width = 581
      Height = 58
      ExplicitTop = 53
      ExplicitWidth = 581
      ExplicitHeight = 58
      object btnF6: TcxButton
        Tag = 6
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 110
        Height = 52
        Align = alLeft
        Caption = 'F6 CAIXA'
        TabOrder = 0
        WordWrap = True
        OnClick = btnF6Click
      end
      object btnF8: TcxButton
        Tag = 8
        AlignWithMargins = True
        Left = 235
        Top = 3
        Width = 110
        Height = 52
        Align = alLeft
        Caption = 'F8 RECEBIMENTOS'
        TabOrder = 1
        Visible = False
        WordWrap = True
        OnClick = btnF8Click
      end
      object btnF9: TcxButton
        Tag = 9
        AlignWithMargins = True
        Left = 351
        Top = 3
        Width = 110
        Height = 52
        Align = alLeft
        Caption = 'F9 PRE'#199'OS'
        TabOrder = 2
        WordWrap = True
        OnClick = btnF9Click
      end
      object btnF12: TcxButton
        Tag = 12
        AlignWithMargins = True
        Left = 467
        Top = 3
        Width = 110
        Height = 52
        Align = alLeft
        Caption = 'F12 CANCELAMENTO'
        TabOrder = 3
        WordWrap = True
        OnClick = btnF12Click
      end
      object btnF7: TcxButton
        Tag = 7
        AlignWithMargins = True
        Left = 119
        Top = 3
        Width = 110
        Height = 52
        Align = alLeft
        Caption = 'F7 NF S'#233'rie D'
        TabOrder = 4
        WordWrap = True
        OnClick = btnF7Click
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 654
      Height = 52
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object btnF5: TcxButton
        Tag = 5
        AlignWithMargins = True
        Left = 467
        Top = 3
        Width = 110
        Height = 46
        Align = alLeft
        Caption = 'F5 NF-e'
        TabOrder = 0
        WordWrap = True
        OnClick = btnF5Click
      end
      object btnF3: TcxButton
        Tag = 3
        AlignWithMargins = True
        Left = 235
        Top = 3
        Width = 110
        Height = 46
        Align = alLeft
        Caption = 'F3 CLIENTES'
        TabOrder = 1
        WordWrap = True
        OnClick = btnF3Click
      end
      object btnF1: TcxButton
        Tag = 1
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 110
        Height = 46
        Align = alLeft
        Caption = 'F1 CONFIGURA'#199#213'ES'
        TabOrder = 2
        WordWrap = True
        OnClick = btnF1Click
      end
      object btnF2: TcxButton
        Tag = 2
        AlignWithMargins = True
        Left = 119
        Top = 3
        Width = 110
        Height = 46
        Align = alLeft
        Caption = 'F2 CARGA'
        TabOrder = 3
        WordWrap = True
        OnClick = btnF2Click
      end
      object btnF4: TcxButton
        Tag = 4
        AlignWithMargins = True
        Left = 351
        Top = 3
        Width = 110
        Height = 46
        Align = alLeft
        Caption = 'F4  F. PGTO.'
        TabOrder = 4
        WordWrap = True
        OnClick = btnF4Click
      end
      object btnF10: TcxButton
        Tag = 5
        AlignWithMargins = True
        Left = 583
        Top = 3
        Width = 68
        Height = 46
        Align = alLeft
        Caption = 'F10 - PFP'
        TabOrder = 5
        WordWrap = True
        OnClick = btnF10Click
      end
    end
  end
  inherited Edit1: TEdit
    Left = 726
    ExplicitLeft = 726
  end
  inherited ini: TFormStorage
    Left = 688
    Top = 13
  end
  inherited FR: TFormResizer
    Left = 728
    Top = 13
  end
  inherited EnterTab: TACBrEnterTab
    Left = 768
    Top = 13
  end
end
