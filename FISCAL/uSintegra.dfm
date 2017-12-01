inherited frmSintegra: TfrmSintegra
  Caption = 'SINTEGRA'
  ClientHeight = 212
  ClientWidth = 340
  ExplicitWidth = 346
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 170
    Width = 340
    ExplicitTop = 170
    ExplicitWidth = 340
    inherited pnlBtnClose: TPanel
      Left = 246
      ExplicitLeft = 246
    end
    inherited pnlBase: TPanel
      Width = 245
      ExplicitWidth = 245
      object btnGerar: TcxButton
        AlignWithMargins = True
        Left = 164
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'GERAR'
        TabOrder = 0
        OnClick = btnGerarClick
      end
    end
  end
  object cxGroupBox1: TcxGroupBox [2]
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'GERAR OS SEGUINTES REGISTROS'
    TabOrder = 2
    Height = 164
    Width = 340
    object cb50: TcxCheckBox
      Left = 3
      Top = 16
      Caption = 'Registros 50 e 54'
      State = cbsChecked
      TabOrder = 0
    end
    object cb60: TcxCheckBox
      Left = 3
      Top = 34
      Caption = 'Registros 60 (60M, 60A, 60D)'
      State = cbsChecked
      TabOrder = 1
    end
    object cb60i: TcxCheckBox
      Left = 3
      Top = 53
      Caption = 'Registros 60I'
      State = cbsChecked
      TabOrder = 2
    end
    object cb60r: TcxCheckBox
      Left = 3
      Top = 72
      Caption = 'Registros 60R'
      State = cbsChecked
      TabOrder = 3
    end
    object cb61: TcxCheckBox
      Left = 3
      Top = 91
      Caption = 'Registros 61'
      State = cbsChecked
      TabOrder = 4
    end
    object cb74: TcxCheckBox
      Left = 3
      Top = 110
      Caption = 'Registros 74 (Invent'#225'rio)'
      TabOrder = 5
      OnClick = cb74Click
    end
    object cbarq: TcxCheckBox
      Left = 3
      Top = 138
      Caption = 'Abrir local do arquivo'
      State = cbsChecked
      TabOrder = 6
    end
    object D1: TcxDateEdit
      Left = 209
      Top = 34
      Properties.DateButtons = []
      TabOrder = 7
      Width = 121
    end
    object D2: TcxDateEdit
      Left = 209
      Top = 62
      Properties.DateButtons = []
      TabOrder = 8
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 210
      Top = 16
      Caption = 'PER'#205'ODO'
    end
    object cxLabel2: TcxLabel
      Left = 209
      Top = 88
      Caption = 'Data do Invent'#225'rio'
      Visible = False
    end
    object cmb1: TcxComboBox
      Left = 210
      Top = 107
      TabOrder = 11
      Visible = False
      Width = 120
    end
  end
  inherited ini: TFormStorage
    Left = 56
    Top = 168
  end
  inherited FR: TFormResizer
    Left = 168
    Top = 72
  end
  inherited EnterTab: TACBrEnterTab
    Left = 104
    Top = 160
  end
end
