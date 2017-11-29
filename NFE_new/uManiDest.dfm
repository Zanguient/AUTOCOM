inherited frmManiDest: TfrmManiDest
  ActiveControl = edChave
  Caption = 'MANIFESTA'#199#195'O DO DESTINAT'#193'RIO'
  ClientHeight = 169
  ClientWidth = 387
  ExplicitWidth = 393
  ExplicitHeight = 197
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 127
    Width = 387
    TabOrder = 5
    ExplicitTop = 127
    ExplicitWidth = 387
    inherited pnlBtnClose: TPanel
      Left = 293
      TabOrder = 1
      ExplicitLeft = 293
    end
    inherited pnlBase: TPanel
      Width = 292
      TabOrder = 0
      ExplicitWidth = 292
      object cxLabel2: TcxLabel
        Left = 0
        Top = -2
        Caption = 'CNPJ EMIT.:'
      end
      object lblcnpj: TcxLabel
        Left = 75
        Top = -2
      end
      object cxLabel4: TcxLabel
        Left = 33
        Top = 15
        Caption = 'N'#186' NF:'
      end
      object lblnmro: TcxLabel
        Left = 75
        Top = 15
      end
    end
  end
  inherited Edit1: TEdit
    Left = 600
    TabStop = False
    TabOrder = 0
    ExplicitLeft = 600
  end
  object gbOpc: TcxRadioGroup [2]
    Left = 3
    Top = 50
    Caption = 'Op'#231#245'es de manisfesta'#231#227'o'
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'Confirma'#231#227'o'
        Value = 2
      end
      item
        Caption = 'Ci'#234'ncia'
        Value = 3
      end
      item
        Caption = 'Desconhecimento'
        Value = 4
      end
      item
        Caption = 'Oper.N'#227'o Realizada'
        Value = 5
      end>
    TabOrder = 2
    OnClick = gbOpcClick
    Height = 71
    Width = 293
  end
  object btnEnviar: TcxButton [3]
    AlignWithMargins = True
    Left = 303
    Top = 76
    Width = 74
    Height = 30
    Caption = 'ENVIAR'
    Enabled = False
    TabOrder = 3
    OnClick = btnEnviarClick
  end
  object edChave: TcxMaskEdit [4]
    Left = 2
    Top = 20
    Properties.EditMask = '0000.0000.0000.0000.0000.0000.0000.0000.0000.0000.0000;0; '
    Properties.OnChange = edChavePropertiesChange
    TabOrder = 1
    Text = '                                            '
    Width = 382
  end
  object cxLabel1: TcxLabel [5]
    Left = 3
    Top = 2
    Caption = 'CHAVE DA NF-e'
  end
  inherited ini: TFormStorage
    Left = 24
    Top = 176
  end
  inherited FR: TFormResizer
    Left = 64
    Top = 176
  end
  inherited EnterTab: TACBrEnterTab
    Left = 104
    Top = 176
  end
end
