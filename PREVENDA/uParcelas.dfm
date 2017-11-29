inherited frmParcelas: TfrmParcelas
  Caption = 'frmParcelas'
  ClientHeight = 138
  ClientWidth = 205
  ExplicitWidth = 211
  ExplicitHeight = 167
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 96
    Width = 205
    inherited pnlBtnClose: TPanel
      Left = 111
    end
    inherited pnlBase: TPanel
      Width = 110
      object cxButton1: TcxButton
        AlignWithMargins = True
        Left = 29
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'OK'
        ModalResult = 1
        TabOrder = 0
        ExplicitLeft = 8
      end
    end
  end
  inherited ini: TFormStorage
    Top = 40
  end
  inherited FR: TFormResizer
    Top = 40
  end
  inherited EnterTab: TACBrEnterTab
    Top = 40
  end
end
