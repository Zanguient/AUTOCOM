inherited frmBoletoAvulso: TfrmBoletoAvulso
  Caption = 'frmBoletoAvulso'
  ClientHeight = 503
  ExplicitHeight = 532
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 441
    TabOrder = 11
    ExplicitTop = 441
    inherited pnlBtnClose: TPanel
      TabOrder = 1
    end
    inherited pnlBase: TPanel
      TabOrder = 0
      object cxButton2: TcxButton
        AlignWithMargins = True
        Left = 426
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'Gerar'
        TabOrder = 0
        OnClick = cxButton2Click
      end
      object cbPrint: TcxCheckBox
        AlignWithMargins = True
        Left = 341
        Top = 3
        Align = alRight
        Caption = 'Imprimir'
        TabOrder = 1
        ExplicitHeight = 0
        Width = 79
      end
      object crFormato: TcxRadioGroup
        Left = 157
        Top = -12
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'CARN'#202
            Value = '1'
          end
          item
            Caption = 'A4'
            Value = '2'
          end>
        ItemIndex = 1
        TabOrder = 2
        Height = 57
        Width = 179
      end
      object Label20: TcxLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alLeft
        Caption = 'FORMATO DE IMPRESS'#195'O'
        FocusControl = edbairro
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 18
      end
    end
  end
  inherited Edit1: TEdit
    Left = 526
    ExplicitLeft = 526
  end
  object cxGroupBox1: TcxGroupBox [2]
    Left = 0
    Top = 77
    Align = alTop
    Caption = 'SACADO'
    TabOrder = 3
    Height = 182
    Width = 602
    object btnCad: TcxButton
      Tag = 105
      AlignWithMargins = True
      Left = 566
      Top = 32
      Width = 32
      Height = 24
      Hint = 'Abre o cadastro de favorecidos'
      Margins.Left = 1
      Margins.Right = 1
      Caption = '>>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      WordWrap = True
      OnClick = btnCadClick
    end
    object edcnpj: TcxTextEdit
      Left = 7
      Top = 33
      TabOrder = 1
      Width = 124
    end
    object ednome: TcxTextEdit
      Left = 134
      Top = 33
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      Width = 426
    end
    object edlogradouro: TcxTextEdit
      Left = 7
      Top = 73
      TabOrder = 3
      Width = 476
    end
    object ednmro: TcxTextEdit
      Left = 486
      Top = 73
      TabOrder = 4
      Width = 33
    end
    object edbairro: TcxTextEdit
      Left = 7
      Top = 112
      TabOrder = 6
      Width = 222
    end
    object edmunic: TcxTextEdit
      Left = 230
      Top = 112
      TabOrder = 7
      Width = 329
    end
    object eduf: TcxTextEdit
      Left = 563
      Top = 112
      Properties.CharCase = ecUpperCase
      TabOrder = 8
      Width = 33
    end
    object edCep: TcxTextEdit
      Left = 522
      Top = 73
      TabOrder = 5
      Width = 74
    end
    object Label6: TcxLabel
      Left = 7
      Top = 17
      Caption = 'CNPJ/CPF'
      FocusControl = edcnpj
      Transparent = True
    end
    object Label7: TcxLabel
      Left = 131
      Top = 17
      Caption = 'NOME COMPLETO/RAZ'#195'O SOCIAL'
      FocusControl = ednome
      Transparent = True
    end
    object Label8: TcxLabel
      Left = 7
      Top = 57
      Caption = 'LOGRADOURO'
      FocusControl = edlogradouro
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 486
      Top = 57
      Caption = 'N'#186
      FocusControl = ednmro
      Transparent = True
    end
    object Label10: TcxLabel
      Left = 7
      Top = 96
      Caption = 'BAIRRO'
      FocusControl = edbairro
      Transparent = True
    end
    object Label11: TcxLabel
      Left = 230
      Top = 96
      Caption = 'MUNIC'#205'PIO'
      FocusControl = edmunic
      Transparent = True
    end
    object Label12: TcxLabel
      Left = 563
      Top = 96
      Caption = 'UF'
      FocusControl = eduf
      Transparent = True
    end
    object LbCep: TcxLabel
      Left = 522
      Top = 57
      Caption = 'CEP'
      FocusControl = edCep
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 7
      Top = 137
      Caption = 'e-MAIL'
      FocusControl = edmail
      Transparent = True
    end
    object edmail: TcxTextEdit
      Left = 7
      Top = 153
      TabOrder = 18
      Width = 589
    end
  end
  object cxGroupBox2: TcxGroupBox [3]
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'BOLETO'
    TabOrder = 0
    Height = 77
    Width = 602
    object cxDBSpinEdit1: TcxDBLabel
      Left = 9
      Top = 31
      DataBinding.DataField = 'numbanco'
      DataBinding.DataSource = DM.DSvwBoleto
      ParentColor = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWhite
      Height = 19
      Width = 34
    end
    object cxDBLabel1: TcxDBLabel
      Left = 43
      Top = 31
      DataBinding.DataField = 'nomebanco'
      DataBinding.DataSource = DM.DSvwBoleto
      ParentColor = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWhite
      Height = 19
      Width = 265
    end
    object cxDBLabel2: TcxDBLabel
      Left = 311
      Top = 31
      DataBinding.DataField = 'agencia'
      DataBinding.DataSource = DM.DSvwBoleto
      ParentColor = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWhite
      Height = 19
      Width = 53
    end
    object cxDBLabel3: TcxDBLabel
      Left = 363
      Top = 31
      DataBinding.DataField = 'agdig'
      DataBinding.DataSource = DM.DSvwBoleto
      ParentColor = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWhite
      Height = 19
      Width = 17
    end
    object cxDBLabel4: TcxDBLabel
      Left = 383
      Top = 31
      DataBinding.DataField = 'numconta'
      DataBinding.DataSource = DM.DSvwBoleto
      ParentColor = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWhite
      Height = 19
      Width = 53
    end
    object cxDBLabel5: TcxDBLabel
      Left = 435
      Top = 31
      DataBinding.DataField = 'condig'
      DataBinding.DataSource = DM.DSvwBoleto
      ParentColor = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWhite
      Height = 19
      Width = 17
    end
    object cxDBLabel6: TcxDBLabel
      Left = 66
      Top = 52
      DataBinding.DataField = 'cedente_nome'
      DataBinding.DataSource = DM.DSvwBoleto
      ParentColor = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWhite
      Height = 19
      Width = 386
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 470
      Top = 33
      Width = 116
      Height = 31
      Buttons.OnButtonClick = cxDBNavigator1ButtonsButtonClick
      Buttons.CustomButtons = <>
      Buttons.First.Visible = False
      Buttons.PriorPage.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.Last.Visible = False
      Buttons.Insert.Visible = False
      Buttons.Append.Visible = False
      Buttons.Delete.Visible = False
      Buttons.Edit.Visible = False
      Buttons.Post.Visible = False
      Buttons.Cancel.Visible = False
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = DM.DSvwBoleto
      TabOrder = 6
    end
    object Label14: TcxLabel
      Left = 9
      Top = 14
      Caption = 'BANCO'
      FocusControl = cxDBSpinEdit1
      Transparent = True
    end
    object Label16: TcxLabel
      Left = 311
      Top = 14
      Caption = 'AG'#202'NCIA'
      FocusControl = cxDBLabel2
      Transparent = True
    end
    object Label17: TcxLabel
      Left = 383
      Top = 14
      Caption = 'CONTA'
      FocusControl = cxDBLabel4
      Transparent = True
    end
    object Label18: TcxLabel
      Left = 9
      Top = 54
      Caption = 'CEDENTE'
      FocusControl = cxDBSpinEdit1
      Transparent = True
    end
  end
  object dtVenc: TcxDateEdit [4]
    Left = 111
    Top = 274
    TabOrder = 4
    Width = 100
  end
  object edValor: TcxCurrencyEdit [5]
    Left = 215
    Top = 274
    TabOrder = 5
    Width = 81
  end
  object edJuros: TcxCurrencyEdit [6]
    Left = 300
    Top = 274
    Properties.DecimalPlaces = 3
    Properties.DisplayFormat = '0.00#%'
    Properties.OnEditValueChanged = edJurosPropertiesEditValueChanged
    TabOrder = 6
    Width = 52
  end
  object edMulta: TcxCurrencyEdit [7]
    Left = 355
    Top = 274
    Properties.DecimalPlaces = 3
    Properties.DisplayFormat = '0.00#%'
    Properties.OnEditValueChanged = edMultaPropertiesEditValueChanged
    TabOrder = 7
    Width = 47
  end
  object eddesc: TcxCurrencyEdit [8]
    Left = 406
    Top = 274
    Properties.DecimalPlaces = 3
    Properties.DisplayFormat = '0.00#%'
    Properties.OnEditValueChanged = eddescPropertiesEditValueChanged
    TabOrder = 8
    Width = 71
  end
  object edcod1: TcxTextEdit [9]
    Left = 481
    Top = 274
    TabOrder = 9
    Width = 53
  end
  object edcod2: TcxTextEdit [10]
    Left = 539
    Top = 274
    TabOrder = 10
    Width = 54
  end
  object edInstr1: TcxTextEdit [11]
    Left = 9
    Top = 317
    ParentFont = False
    Properties.MaxLength = 78
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -9
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 12
    Width = 585
  end
  object edInstr2: TcxTextEdit [12]
    Left = 9
    Top = 337
    ParentFont = False
    Properties.MaxLength = 78
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -9
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 13
    Width = 585
  end
  object edInstr3: TcxTextEdit [13]
    Left = 9
    Top = 357
    ParentFont = False
    Properties.MaxLength = 78
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -9
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 14
    Width = 585
  end
  object edInstr4: TcxTextEdit [14]
    Left = 9
    Top = 377
    ParentFont = False
    Properties.MaxLength = 78
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -9
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 15
    Width = 585
  end
  object edInstr5: TcxTextEdit [15]
    Left = 9
    Top = 397
    ParentFont = False
    Properties.MaxLength = 78
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -9
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 16
    Width = 585
  end
  object dtDoc: TcxDateEdit [16]
    Left = 8
    Top = 274
    TabOrder = 2
    Width = 100
  end
  object edInstr6: TcxTextEdit [17]
    Left = 9
    Top = 417
    ParentFont = False
    Properties.MaxLength = 78
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -9
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 17
    Visible = False
    Width = 585
  end
  object Label1: TcxLabel [18]
    Left = 111
    Top = 258
    Caption = 'VENCIMENTO'
    FocusControl = dtVenc
    Transparent = True
  end
  object Label2: TcxLabel [19]
    Left = 217
    Top = 258
    Caption = 'VALOR'
    FocusControl = edValor
    Transparent = True
  end
  object Label3: TcxLabel [20]
    Left = 302
    Top = 258
    Caption = 'JUROS'
    FocusControl = edJuros
    Transparent = True
  end
  object Label4: TcxLabel [21]
    Left = 357
    Top = 258
    Caption = 'MULTA'
    FocusControl = edMulta
    Transparent = True
  end
  object Label5: TcxLabel [22]
    Left = 408
    Top = 258
    Caption = 'DESCONTO'
    FocusControl = eddesc
    Transparent = True
  end
  object Label13: TcxLabel [23]
    Left = 481
    Top = 258
    Caption = 'C'#211'DIGOS DE INSTR.'
    FocusControl = edcod1
    Transparent = True
  end
  object Label15: TcxLabel [24]
    Left = 8
    Top = 299
    Caption = 'INSTRU'#199#213'ES'
    Transparent = True
  end
  object Label19: TcxLabel [25]
    Left = 7
    Top = 258
    Caption = 'DT. DOCUMENTO'
    FocusControl = dtDoc
    Transparent = True
  end
  object Bar1: TdxStatusBar [26]
    Left = 0
    Top = 483
    Width = 602
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'cbPrint.Checked'
      'crFormato.ItemIndex')
    Left = 192
    Top = 343
  end
  inherited FR: TFormResizer
    Left = 232
    Top = 343
  end
  inherited EnterTab: TACBrEnterTab
    Left = 272
    Top = 343
  end
end
