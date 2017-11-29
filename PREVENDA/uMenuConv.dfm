inherited frmMenu_Convenio: TfrmMenu_Convenio
  Caption = 'OP'#199#195'O PARA VENDA'
  ClientHeight = 251
  ClientWidth = 175
  ExplicitWidth = 181
  ExplicitHeight = 280
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 209
    Width = 175
    Visible = False
    ExplicitTop = 209
    ExplicitWidth = 175
    inherited pnlBtnClose: TPanel
      Left = 81
      ExplicitLeft = 81
    end
    inherited pnlBase: TPanel
      Width = 80
      ExplicitWidth = 80
    end
  end
  object btnF2: TcxButton [2]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 169
    Height = 46
    Align = alTop
    Caption = 'F2- VENDA NORMAL'
    ModalResult = 1
    TabOrder = 2
  end
  object btnF3: TcxButton [3]
    AlignWithMargins = True
    Left = 3
    Top = 55
    Width = 169
    Height = 46
    Align = alTop
    Caption = 'F3 - VENDA e-PHARMA'
    ModalResult = 2
    TabOrder = 3
  end
  object btnF4: TcxButton [4]
    AlignWithMargins = True
    Left = 3
    Top = 107
    Width = 169
    Height = 46
    Align = alTop
    Caption = 'F4 - TrnCentre'
    ModalResult = 3
    TabOrder = 4
  end
  object btnF8: TcxButton [5]
    AlignWithMargins = True
    Left = 3
    Top = 159
    Width = 169
    Height = 46
    Align = alTop
    Caption = 'F8 - SAIR'
    ModalResult = 8
    TabOrder = 5
  end
  inherited ini: TFormStorage
    Left = 40
    Top = 328
  end
  inherited FR: TFormResizer
    Left = 8
    Top = 336
  end
  inherited EnterTab: TACBrEnterTab
    Left = 80
    Top = 328
  end
end
