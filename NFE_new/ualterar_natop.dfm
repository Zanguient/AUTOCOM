inherited frmAlterar_NatOp: TfrmAlterar_NatOp
  Caption = 'TABELA DE NATUREZAS DE OPERA'#199#195'O'
  ClientHeight = 553
  ClientWidth = 756
  Color = clWindow
  Ctl3D = False
  ExplicitWidth = 762
  ExplicitHeight = 582
  PixelsPerInch = 96
  TextHeight = 15
  object Memo1: TMemo [0]
    Left = 0
    Top = 0
    Width = 756
    Height = 511
    Align = alClient
    Color = 14155775
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    WordWrap = False
  end
  inherited TPA: TPanel
    Top = 511
    Width = 756
    ExplicitTop = 511
    ExplicitWidth = 756
    inherited pnlBtnClose: TPanel
      Left = 662
      ExplicitLeft = 662
    end
    inherited pnlBase: TPanel
      Width = 661
      ExplicitWidth = 661
      object cxButton1: TcxButton
        AlignWithMargins = True
        Left = 536
        Top = 3
        Width = 122
        Height = 30
        Align = alRight
        Caption = 'F11 - Gravar'
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 0
        TabStop = False
        OnClick = cxButton1Click
      end
    end
  end
  inherited Edit1: TEdit
    Height = 21
    ExplicitHeight = 21
  end
end
