inherited frmCancelar: TfrmCancelar
  Caption = 'CANCELAMENTO'
  ClientHeight = 127
  ClientWidth = 229
  ExplicitWidth = 235
  ExplicitHeight = 156
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 85
    Width = 229
    ExplicitTop = 85
    ExplicitWidth = 229
    inherited pnlBtnClose: TPanel
      Left = 135
      ExplicitLeft = 135
    end
    inherited pnlBase: TPanel
      Width = 134
      ExplicitWidth = 134
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 229
    Height = 41
    Align = alTop
    ParentBackground = False
    TabOrder = 2
    object btnF2: TcxButton
      Tag = 3
      AlignWithMargins = True
      Left = 115
      Top = 4
      Width = 110
      Height = 33
      Align = alRight
      Caption = 'F2 cancelar item'
      Enabled = False
      TabOrder = 0
      WordWrap = True
      OnClick = btnF2Click
    end
    object cxLabel12: TcxLabel
      Left = 4
      Top = 11
      Caption = #205'tem'
      ParentFont = False
    end
    object edItemCanc: TcxComboBox
      Left = 38
      Top = 14
      ParentFont = False
      TabOrder = 1
      OnClick = edItemCancClick
      Width = 70
    end
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 41
    Width = 229
    Height = 41
    Align = alTop
    TabOrder = 3
    object btnF3: TcxButton
      Tag = 3
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 221
      Height = 33
      Align = alClient
      Caption = 'F3 cancelar Venda'
      TabOrder = 0
      WordWrap = True
      OnClick = btnF3Click
    end
  end
  inherited ini: TFormStorage
    Left = 16
    Top = 176
  end
  inherited FR: TFormResizer
    Left = 56
    Top = 176
  end
  inherited EnterTab: TACBrEnterTab
    Left = 96
    Top = 176
  end
end
