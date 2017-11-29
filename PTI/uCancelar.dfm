inherited frmCancelar: TfrmCancelar
  ActiveControl = edItemCanc
  AutoSize = True
  Caption = 'CANCELAMENTO'
  ClientHeight = 168
  ClientWidth = 234
  ExplicitWidth = 240
  ExplicitHeight = 197
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 126
    Width = 234
    ExplicitTop = 126
    ExplicitWidth = 234
    inherited pnlBtnClose: TPanel
      Left = 140
      ExplicitLeft = 140
    end
    inherited pnlBase: TPanel
      Width = 139
      ExplicitWidth = 139
    end
  end
  inherited Edit1: TEdit
    Left = 0
    ExplicitLeft = 0
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 82
    Width = 234
    Height = 41
    Align = alTop
    ParentBackground = False
    TabOrder = 2
    object btnF2: TcxButton
      Tag = 3
      AlignWithMargins = True
      Left = 120
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
    Width = 234
    Height = 41
    Align = alTop
    TabOrder = 3
    object btnF3: TcxButton
      Tag = 3
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 226
      Height = 33
      Align = alClient
      Caption = 'F3 cancelar Venda'
      TabOrder = 0
      WordWrap = True
      OnClick = btnF3Click
    end
  end
  object pnltrn: TPanel [4]
    Left = 0
    Top = 0
    Width = 234
    Height = 41
    Align = alTop
    TabOrder = 4
    object btnF6: TcxButton
      Tag = 3
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 226
      Height = 33
      Align = alClient
      Caption = 'F6 Extornar TRN'
      TabOrder = 0
      WordWrap = True
      OnClick = btnF6Click
    end
  end
  inherited ini: TFormStorage
    Top = 136
  end
  inherited FR: TFormResizer
    Left = 40
    Top = 144
  end
  inherited EnterTab: TACBrEnterTab
    Left = 96
    Top = 136
  end
end
