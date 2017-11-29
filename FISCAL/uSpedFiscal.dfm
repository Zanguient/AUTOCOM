inherited frmSpedFiscal: TfrmSpedFiscal
  Caption = 'SPED FISCAL'
  ClientHeight = 276
  ClientWidth = 183
  ExplicitWidth = 189
  ExplicitHeight = 305
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 234
    Width = 183
    TabOrder = 13
    ExplicitTop = 216
    ExplicitWidth = 183
    inherited pnlBtnClose: TPanel
      Left = 89
      TabOrder = 1
      ExplicitLeft = 89
    end
    inherited pnlBase: TPanel
      Width = 88
      TabOrder = 0
      ExplicitWidth = 88
      object btnGerar: TcxButton
        AlignWithMargins = True
        Left = 7
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
  inherited Edit1: TEdit
    TabOrder = 0
  end
  object cxLabel1: TcxLabel [2]
    Left = 32
    Top = 115
    Caption = 'PER'#205'ODO'
  end
  object D1: TcxDateEdit [3]
    Left = 31
    Top = 133
    Properties.DateButtons = []
    TabOrder = 6
    Width = 121
  end
  object D2: TcxDateEdit [4]
    Left = 31
    Top = 161
    Properties.DateButtons = []
    TabOrder = 8
    Width = 121
  end
  object cmbVersao: TcxComboBox [5]
    Left = 3
    Top = 18
    Properties.Items.Strings = (
      '107'
      '106'
      '105'
      '104'
      '103'
      '102'
      '101'
      '100')
    TabOrder = 1
    Text = '107'
    Width = 44
  end
  object cxLabel2: TcxLabel [6]
    Left = 2
    Top = -1
    Caption = 'Vers'#227'o'
  end
  object cmbFinalidade: TcxComboBox [7]
    Left = 53
    Top = 18
    Properties.Items.Strings = (
      'Original'
      'Substituto')
    TabOrder = 2
    Text = 'Original'
    Width = 121
  end
  object cxLabel3: TcxLabel [8]
    Left = 53
    Top = -2
    Caption = 'Finalidade'
  end
  object lblStatus: TcxLabel [9]
    Left = 0
    Top = 215
    Align = alBottom
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    ExplicitTop = 197
    AnchorX = 92
    AnchorY = 225
  end
  object cbarq: TcxCheckBox [10]
    Left = 3
    Top = 184
    Caption = 'Abrir local do arquivo'
    State = cbsChecked
    TabOrder = 9
    Width = 173
  end
  object cmbMotivo: TcxComboBox [11]
    Left = 3
    Top = 62
    Properties.Items.Strings = (
      '01 - No final no per'#237'odo'
      '02 - Na mudan'#231'a de forma de trib. da mercadoria'
      '03 - Na solicita'#231#227'o de baixa cadastral'
      '04 - Na altera'#231#227'o de regime de pagamento'
      '05 - Por solicita'#231#227'o da fiscaliza'#231#227'o')
    TabOrder = 3
    Text = '01 - No final no per'#237'odo'
    Width = 177
  end
  object cxLabel4: TcxLabel [12]
    Left = 3
    Top = 42
    Caption = 'Motivo da gera'#231#227'o'
  end
  object cbInvent: TcxCheckBox [13]
    Left = 3
    Top = 91
    Caption = 'Gerar Invent'#225'rio'
    TabOrder = 4
    Width = 173
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'cmbFinalidade.ItemIndex')
    Left = 480
    Top = 48
  end
  inherited FR: TFormResizer
    Left = 520
    Top = 48
  end
  inherited EnterTab: TACBrEnterTab
    Left = 560
    Top = 48
  end
end
