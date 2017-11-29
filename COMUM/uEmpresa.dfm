inherited frmEmpresa: TfrmEmpresa
  ActiveControl = cmb1
  AutoSize = True
  BorderStyle = bsNone
  Caption = 'frmEmpresa'
  ClientHeight = 42
  ClientWidth = 416
  FormStyle = fsStayOnTop
  ExplicitWidth = 416
  ExplicitHeight = 42
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 0
    Width = 416
    ExplicitTop = 0
    ExplicitWidth = 416
    inherited pnlBtnClose: TPanel
      Left = 322
      TabOrder = 1
      ExplicitLeft = 322
    end
    inherited pnlBase: TPanel
      Width = 321
      TabOrder = 0
      ExplicitWidth = 321
      object cmb1: TcxImageComboBox
        Left = 5
        Top = 8
        Properties.Items = <>
        TabOrder = 0
        Width = 271
      end
      object cxButton1: TcxButton
        AlignWithMargins = True
        Left = 286
        Top = 3
        Width = 32
        Height = 30
        Align = alRight
        Caption = '>>'
        TabOrder = 1
        OnClick = cxButton1Click
      end
    end
  end
  inherited Edit1: TEdit
    Left = 16
    Top = 11
    ExplicitLeft = 16
    ExplicitTop = 11
  end
end
