inherited frmdadosItemNF: TfrmdadosItemNF
  ActiveControl = cmbCFOP
  Caption = 'Valores do Item'
  ClientHeight = 482
  ClientWidth = 642
  ExplicitWidth = 648
  ExplicitHeight = 510
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 440
    Width = 642
    TabOrder = 7
    ExplicitTop = 440
    ExplicitWidth = 642
    inherited pnlBtnClose: TPanel
      Left = 548
      TabOrder = 1
      Visible = False
      ExplicitLeft = 548
    end
    inherited pnlBase: TPanel
      Width = 547
      TabOrder = 0
      ExplicitWidth = 547
      object Label62: TLabel
        Left = 0
        Top = 0
        Width = 253
        Height = 36
        Align = alLeft
        AutoSize = False
        Caption = 
          '(*) Se estes valores forem informados no total da nota, os mesmo' +
          's ser'#227'o rateados entre os itens.'
        FocusControl = cmbCFOP
        WordWrap = True
        ExplicitLeft = 3
        ExplicitHeight = 33
      end
      object btnCancelar: TcxButton
        AlignWithMargins = True
        Left = 466
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = btnCancelarClick
      end
      object btnGravar: TcxButton
        AlignWithMargins = True
        Left = 382
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'Gravar'
        TabOrder = 0
        OnClick = btnGravarClick
      end
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 59
    Width = 642
    Height = 36
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 0
      Width = 24
      Height = 15
      Caption = 'Item'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 37
      Top = 0
      Width = 35
      Height = 15
      Caption = 'C'#243'digo'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 88
      Top = 0
      Width = 55
      Height = 15
      Caption = 'C'#243'd. GTIN'
      FocusControl = cxDBTextEdit2
    end
    object Label4: TLabel
      Left = 174
      Top = 0
      Width = 92
      Height = 15
      Caption = 'Descri'#231#227'o do item'
      FocusControl = cxDBTextEdit3
    end
    object Label5: TLabel
      Left = 556
      Top = 0
      Width = 26
      Height = 15
      Caption = 'NCM'
      FocusControl = cxDBTextEdit4
    end
    object cxDBSpinEdit1: TcxDBLabel
      Left = 3
      Top = 15
      DataBinding.DataField = 'nItem'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentColor = False
      ParentFont = False
      Style.Color = 12320767
      Height = 17
      Width = 33
    end
    object cxDBTextEdit1: TcxDBLabel
      Left = 37
      Top = 15
      DataBinding.DataField = 'cProd'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentColor = False
      ParentFont = False
      Style.Color = 12320767
      Height = 17
      Width = 50
    end
    object cxDBTextEdit2: TcxDBLabel
      Left = 88
      Top = 15
      DataBinding.DataField = 'cEAN'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentColor = False
      ParentFont = False
      Style.Color = 12320767
      Height = 17
      Width = 84
    end
    object cxDBTextEdit3: TcxDBLabel
      Left = 173
      Top = 15
      DataBinding.DataField = 'xProd'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentColor = False
      ParentFont = False
      Style.Color = 12320767
      Height = 17
      Width = 380
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 555
      Top = 16
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'NCM'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Properties.MaxLength = 8
      Style.Color = clWhite
      TabOrder = 4
      Height = 18
      Width = 80
    end
  end
  object cxGroupBox1: TcxGroupBox [3]
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Valores'
    ParentFont = False
    Style.Shadow = False
    TabOrder = 2
    ExplicitLeft = 1
    Height = 59
    Width = 642
    object Label6: TLabel
      Left = 7
      Top = 17
      Width = 27
      Height = 13
      Caption = 'CFOP'
      FocusControl = cmbCFOP
    end
    object Label7: TLabel
      Left = 73
      Top = 17
      Width = 18
      Height = 13
      Caption = 'UN.'
      FocusControl = cxDBTextEdit6
    end
    object Label8: TLabel
      Left = 103
      Top = 17
      Width = 30
      Height = 13
      Caption = 'Quant'
      FocusControl = edQtd
    end
    object Label10: TLabel
      Left = 153
      Top = 17
      Width = 41
      Height = 13
      Caption = 'Vr. Total'
      FocusControl = cxDBCalcEdit3
    end
    object Label11: TLabel
      Left = 274
      Top = 17
      Width = 48
      Height = 13
      Caption = 'VR. ODA*'
      FocusControl = cxDBCalcEdit4
    end
    object Label12: TLabel
      Left = 341
      Top = 17
      Width = 52
      Height = 13
      Caption = 'VR. Frete*'
      FocusControl = cxDBCalcEdit5
    end
    object Label13: TLabel
      Left = 408
      Top = 17
      Width = 44
      Height = 13
      Caption = 'VR. Seg*'
      FocusControl = cxDBCalcEdit6
    end
    object Label14: TLabel
      Left = 477
      Top = 17
      Width = 49
      Height = 13
      Caption = 'VR. Desc*'
      FocusControl = cxDBCalcEdit7
    end
    object Label63: TLabel
      Left = 544
      Top = 19
      Width = 70
      Height = 13
      Caption = 'VR. Un. Venda'
      FocusControl = cxDBTextEdit19
    end
    object Label9: TLabel
      Left = 217
      Top = 17
      Width = 43
      Height = 13
      Caption = 'VR. Unit.'
      FocusControl = cxDBCalcEdit2
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 73
      Top = 33
      AutoSize = False
      DataBinding.DataField = 'uCom'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 17
      Width = 28
    end
    object cxDBCalcEdit3: TcxDBTextEdit
      Left = 145
      Top = 33
      AutoSize = False
      DataBinding.DataField = 'vProd'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      OnEnter = cxDBCalcEdit3Enter
      Height = 17
      Width = 69
    end
    object cxDBCalcEdit4: TcxDBTextEdit
      Left = 274
      Top = 33
      AutoSize = False
      DataBinding.DataField = 'vOutro'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      OnEnter = cxDBCalcEdit4Enter
      Height = 17
      Width = 65
    end
    object cxDBCalcEdit5: TcxDBTextEdit
      Left = 341
      Top = 33
      AutoSize = False
      DataBinding.DataField = 'vFrete'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Height = 17
      Width = 65
    end
    object cxDBCalcEdit6: TcxDBTextEdit
      Left = 408
      Top = 33
      AutoSize = False
      DataBinding.DataField = 'vSeg'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 17
      Width = 65
    end
    object cxDBCalcEdit7: TcxDBTextEdit
      Left = 475
      Top = 33
      AutoSize = False
      DataBinding.DataField = 'vDesc'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 17
      Width = 65
    end
    object edQtd: TcxDBTextEdit
      Left = 103
      Top = 33
      AutoSize = False
      DataBinding.DataField = 'qCom'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 17
      Width = 40
    end
    object cxDBTextEdit19: TcxDBTextEdit
      Left = 542
      Top = 33
      AutoSize = False
      DataBinding.DataField = 'VR_VENDA'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 17
      Width = 90
    end
    object cmbCFOP: TcxDBComboBox
      Left = 6
      Top = 33
      AutoSize = False
      DataBinding.DataField = 'cfop'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 17
      Width = 65
    end
    object cxDBCalcEdit2: TcxDBTextEdit
      Left = 217
      Top = 33
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'vUnCom'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Color = 13565951
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      OnEnter = cxDBCalcEdit2Enter
      Height = 17
      Width = 56
    end
  end
  object cxGroupBox2: TcxGroupBox [4]
    Left = 0
    Top = 95
    Align = alTop
    Caption = 
      'IMPOSTOS ICMS - Os valores de ST devem, obrigatoriamente ser inf' +
      'ormados aqui.'
    ParentFont = False
    Style.Shadow = False
    TabOrder = 3
    Height = 96
    Width = 642
    object Label15: TLabel
      Left = 6
      Top = 19
      Width = 19
      Height = 13
      Caption = 'CST'
      FocusControl = cxDBSpinEdit2
    end
    object Label16: TLabel
      Left = 106
      Top = 19
      Width = 37
      Height = 13
      Caption = 'Mod.BC'
      FocusControl = cxDBSpinEdit3
    end
    object Label17: TLabel
      Left = 265
      Top = 19
      Width = 44
      Height = 13
      Caption = 'Valor. BC'
      FocusControl = cxDBCalcEdit8
    end
    object Label18: TLabel
      Left = 350
      Top = 19
      Width = 21
      Height = 13
      Caption = 'Aliq.'
      FocusControl = cxDBCalcEdit9
    end
    object Label19: TLabel
      Left = 397
      Top = 19
      Width = 52
      Height = 13
      Caption = 'Valor ICMS'
      FocusControl = cxDBCalcEdit10
    end
    object Label20: TLabel
      Left = 54
      Top = 19
      Width = 34
      Height = 13
      Caption = 'CSOSN'
      FocusControl = cxDBSpinEdit4
    end
    object Label21: TLabel
      Left = 482
      Top = 19
      Width = 53
      Height = 13
      Caption = 'Al.Cred.SN'
      FocusControl = cxDBCalcEdit11
    end
    object Label22: TLabel
      Left = 556
      Top = 19
      Width = 55
      Height = 13
      Caption = 'Vr.ICMS SN'
      FocusControl = cxDBCalcEdit12
    end
    object Label23: TLabel
      Left = 106
      Top = 54
      Width = 52
      Height = 13
      Caption = 'Mod.BC ST'
      FocusControl = cxDBSpinEdit5
    end
    object Label24: TLabel
      Left = 237
      Top = 54
      Width = 41
      Height = 13
      Caption = 'Aliq MVA'
      FocusControl = cxDBCalcEdit13
    end
    object Label25: TLabel
      Left = 294
      Top = 54
      Width = 54
      Height = 13
      Caption = 'Vr. Tab. ST'
      FocusControl = cxDBCalcEdit14
    end
    object Label26: TLabel
      Left = 359
      Top = 54
      Width = 63
      Height = 13
      Caption = 'Al.Red BC ST'
      FocusControl = cxDBCalcEdit15
    end
    object Label27: TLabel
      Left = 433
      Top = 54
      Width = 40
      Height = 13
      Caption = 'Valor BC'
      FocusControl = cxDBCalcEdit16
    end
    object Label28: TLabel
      Left = 496
      Top = 54
      Width = 36
      Height = 13
      Caption = 'Aliq. ST'
      FocusControl = cxDBCalcEdit17
    end
    object Label29: TLabel
      Left = 552
      Top = 54
      Width = 54
      Height = 13
      Caption = 'Vr.ICMS ST'
      FocusControl = cxDBCalcEdit18
    end
    object Label30: TLabel
      Left = 206
      Top = 19
      Width = 49
      Height = 13
      Caption = 'Al.Red.BC'
      FocusControl = cxDBCalcEdit19
    end
    object Label31: TLabel
      Left = 49
      Top = 70
      Width = 40
      Height = 13
      Caption = 'ICMS ST'
      FocusControl = cxDBSpinEdit5
    end
    object cxDBCalcEdit8: TcxDBTextEdit
      Left = 265
      Top = 35
      AutoSize = False
      DataBinding.DataField = 'ICMS_vBC'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 17
      Width = 80
    end
    object cxDBCalcEdit9: TcxDBTextEdit
      Left = 350
      Top = 35
      AutoSize = False
      DataBinding.DataField = 'ICMS_pICMS'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Height = 17
      Width = 42
    end
    object cxDBCalcEdit10: TcxDBTextEdit
      Left = 397
      Top = 35
      AutoSize = False
      DataBinding.DataField = 'ICMS_vICMS'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      OnEnter = cxDBCalcEdit10Enter
      Height = 17
      Width = 80
    end
    object cxDBCalcEdit11: TcxDBTextEdit
      Left = 480
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'ICMS_pCredSN'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 17
      Width = 70
    end
    object cxDBCalcEdit12: TcxDBTextEdit
      Left = 556
      Top = 35
      AutoSize = False
      DataBinding.DataField = 'ICMS_vCredICMSSN'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 17
      Width = 76
    end
    object cxDBCalcEdit13: TcxDBTextEdit
      Left = 235
      Top = 70
      AutoSize = False
      DataBinding.DataField = 'ICMS_pMVAST'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Height = 17
      Width = 50
    end
    object cxDBCalcEdit14: TcxDBTextEdit
      Left = 292
      Top = 70
      AutoSize = False
      DataBinding.DataField = 'ICMS_vTabelaST'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Height = 17
      Width = 58
    end
    object cxDBCalcEdit15: TcxDBTextEdit
      Left = 357
      Top = 70
      AutoSize = False
      DataBinding.DataField = 'ICMS_pRedBCST'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
      Height = 17
      Width = 68
    end
    object cxDBCalcEdit16: TcxDBTextEdit
      Left = 431
      Top = 70
      AutoSize = False
      DataBinding.DataField = 'ICMS_vBCST'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 13
      Height = 17
      Width = 57
    end
    object cxDBCalcEdit17: TcxDBTextEdit
      Left = 494
      Top = 70
      AutoSize = False
      DataBinding.DataField = 'ICMS_pICMSST'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 14
      Height = 17
      Width = 51
    end
    object cxDBCalcEdit18: TcxDBTextEdit
      Left = 552
      Top = 70
      AutoSize = False
      DataBinding.DataField = 'ICMS_vICMSST'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 15
      OnEnter = cxDBCalcEdit18Enter
      Height = 17
      Width = 80
    end
    object cxDBCalcEdit19: TcxDBTextEdit
      Left = 206
      Top = 35
      AutoSize = False
      DataBinding.DataField = 'ICMS_pRedBC'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 17
      Width = 54
    end
    object cxDBSpinEdit2: TcxDBLookupComboBox
      Left = 5
      Top = 35
      AutoSize = False
      DataBinding.DataField = 'ICMS_CST'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Properties.KeyFieldNames = 'acbr'
      Properties.ListColumns = <
        item
          FieldName = 'cst'
        end>
      Properties.ListSource = DM.dsCST
      Properties.OnChange = cxDBSpinEdit2PropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 17
      Width = 43
    end
    object cxDBSpinEdit4: TcxDBLookupComboBox
      Left = 54
      Top = 35
      AutoSize = False
      DataBinding.DataField = 'ICMS_CSOSN'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'csosn'
        end>
      Properties.ListSource = DM.dsCSOSN
      Properties.OnChange = cxDBSpinEdit4PropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 17
      Width = 48
    end
    object cxDBSpinEdit3: TcxDBLookupComboBox
      Left = 106
      Top = 35
      AutoSize = False
      DataBinding.DataField = 'ICMS_modBC'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'modbc'
        end>
      Properties.ListSource = DM.dsMod
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 17
      Width = 96
    end
    object cxDBSpinEdit5: TcxDBLookupComboBox
      Left = 104
      Top = 70
      AutoSize = False
      DataBinding.DataField = 'ICMS_modBCST'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'modbc'
        end>
      Properties.ListSource = DM.dsMod2
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 17
      Width = 125
    end
  end
  object cxGroupBox3: TcxGroupBox [5]
    Left = 0
    Top = 191
    Align = alTop
    BiDiMode = bdRightToLeft
    Caption = 'IMPOSTOS IPI'
    ParentBiDiMode = False
    ParentFont = False
    Style.Shadow = False
    TabOrder = 4
    Height = 59
    Width = 642
    object Label32: TLabel
      Left = 10
      Top = 17
      Width = 19
      Height = 13
      Caption = 'CST'
      FocusControl = cxDBSpinEdit6
    end
    object Label38: TLabel
      Left = 90
      Top = 17
      Width = 33
      Height = 13
      Caption = 'VR. BC'
      FocusControl = cxDBCalcEdit20
    end
    object Label39: TLabel
      Left = 178
      Top = 17
      Width = 21
      Height = 13
      Caption = 'QTD'
      FocusControl = cxDBCalcEdit21
    end
    object Label40: TLabel
      Left = 268
      Top = 17
      Width = 44
      Height = 13
      Caption = 'VR. UNIT'
      FocusControl = cxDBCalcEdit22
    end
    object Label41: TLabel
      Left = 353
      Top = 17
      Width = 24
      Height = 13
      Caption = 'ALIQ'
      FocusControl = cxDBCalcEdit23
    end
    object Label42: TLabel
      Left = 441
      Top = 17
      Width = 50
      Height = 13
      Caption = 'VALOR IPI'
      FocusControl = cxDBCalcEdit24
    end
    object cxDBCalcEdit20: TcxDBTextEdit
      Left = 89
      Top = 33
      AutoSize = False
      DataBinding.DataField = 'IPI_vBC'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 17
      Width = 70
    end
    object cxDBCalcEdit21: TcxDBTextEdit
      Left = 174
      Top = 33
      AutoSize = False
      DataBinding.DataField = 'IPI_qUnid'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 17
      Width = 70
    end
    object cxDBCalcEdit22: TcxDBTextEdit
      Left = 262
      Top = 33
      AutoSize = False
      DataBinding.DataField = 'IPI_vUnid'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 17
      Width = 70
    end
    object cxDBCalcEdit23: TcxDBTextEdit
      Left = 347
      Top = 33
      AutoSize = False
      DataBinding.DataField = 'IPI_pIPI'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 17
      Width = 70
    end
    object cxDBCalcEdit24: TcxDBTextEdit
      Left = 433
      Top = 33
      AutoSize = False
      DataBinding.DataField = 'IPI_vIPI'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Height = 17
      Width = 70
    end
    object cxDBSpinEdit6: TcxDBLookupComboBox
      Left = 3
      Top = 33
      AutoSize = False
      DataBinding.DataField = 'IPI_CST'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'cst'
        end>
      Properties.ListSource = DM.dsCST2
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 17
      Width = 41
    end
  end
  object cxGroupBox4: TcxGroupBox [6]
    Left = 0
    Top = 250
    Align = alTop
    BiDiMode = bdRightToLeft
    Caption = 'IMPOSTOS PIS'
    ParentBiDiMode = False
    ParentFont = False
    Style.Shadow = False
    TabOrder = 5
    Height = 96
    Width = 642
    object Label33: TLabel
      Left = 6
      Top = 17
      Width = 19
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'CST'
      ParentBiDiMode = False
    end
    object Label34: TLabel
      Left = 170
      Top = 18
      Width = 40
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Valor BC'
      FocusControl = cxDBCalcEdit25
      ParentBiDiMode = False
    end
    object Label35: TLabel
      Left = 260
      Top = 17
      Width = 40
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Aliq.(%)'
      FocusControl = cxDBCalcEdit26
      ParentBiDiMode = False
    end
    object Label36: TLabel
      Left = 433
      Top = 18
      Width = 33
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Vr. PIS'
      FocusControl = cxDBCalcEdit27
      ParentBiDiMode = False
    end
    object Label37: TLabel
      Left = 76
      Top = 18
      Width = 69
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Valor BC Prod.'
      FocusControl = cxDBCalcEdit28
      ParentBiDiMode = False
    end
    object Label43: TLabel
      Left = 343
      Top = 17
      Width = 39
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Aliq.(Vr)'
      FocusControl = cxDBCalcEdit29
      ParentBiDiMode = False
    end
    object Label44: TLabel
      Left = 76
      Top = 54
      Width = 40
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Valor BC'
      FocusControl = cxDBCalcEdit30
      ParentBiDiMode = False
    end
    object Label45: TLabel
      Left = 260
      Top = 54
      Width = 40
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Aliq.(%)'
      FocusControl = cxDBCalcEdit31
      ParentBiDiMode = False
    end
    object Label46: TLabel
      Left = 170
      Top = 54
      Width = 59
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Qtd BC Prod'
      FocusControl = cxDBCalcEdit32
      ParentBiDiMode = False
    end
    object Label47: TLabel
      Left = 343
      Top = 53
      Width = 39
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Aliq.(Vr)'
      FocusControl = cxDBCalcEdit33
      ParentBiDiMode = False
    end
    object Label48: TLabel
      Left = 431
      Top = 55
      Width = 44
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Vr PIS ST'
      FocusControl = cxDBCalcEdit34
      ParentBiDiMode = False
    end
    object Label49: TLabel
      Left = 17
      Top = 69
      Width = 31
      Height = 13
      Caption = 'PIS ST'
      FocusControl = cxDBSpinEdit5
    end
    object cxDBCalcEdit25: TcxDBTextEdit
      Left = 170
      Top = 34
      AutoSize = False
      DataBinding.DataField = 'PIS_vBC'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 17
      Width = 70
    end
    object cxDBCalcEdit26: TcxDBTextEdit
      Left = 260
      Top = 34
      AutoSize = False
      DataBinding.DataField = 'PIS_pPIS'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 17
      Width = 70
    end
    object cxDBCalcEdit27: TcxDBTextEdit
      Left = 431
      Top = 34
      AutoSize = False
      DataBinding.DataField = 'PIS_vPIS'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Height = 17
      Width = 70
    end
    object cxDBCalcEdit28: TcxDBTextEdit
      Left = 76
      Top = 34
      AutoSize = False
      DataBinding.DataField = 'PIS_qBCProd'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 17
      Width = 77
    end
    object cxDBCalcEdit29: TcxDBTextEdit
      Left = 343
      Top = 34
      AutoSize = False
      DataBinding.DataField = 'PIS_vAliqProd'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 17
      Width = 70
    end
    object cxDBCalcEdit30: TcxDBTextEdit
      Left = 76
      Top = 70
      AutoSize = False
      DataBinding.DataField = 'PISST_vBc'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Height = 17
      Width = 77
    end
    object cxDBCalcEdit31: TcxDBTextEdit
      Left = 260
      Top = 70
      AutoSize = False
      DataBinding.DataField = 'PISST_pPis'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 17
      Width = 70
    end
    object cxDBCalcEdit32: TcxDBTextEdit
      Left = 170
      Top = 70
      AutoSize = False
      DataBinding.DataField = 'PISST_qBCProd'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 17
      Width = 70
    end
    object cxDBCalcEdit33: TcxDBTextEdit
      Left = 343
      Top = 70
      AutoSize = False
      DataBinding.DataField = 'PISST_vAliqProd'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 17
      Width = 70
    end
    object cxDBCalcEdit34: TcxDBTextEdit
      Left = 431
      Top = 71
      AutoSize = False
      DataBinding.DataField = 'PISST_vPIS'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Height = 17
      Width = 70
    end
    object cxDBTextEdit7: TcxDBLookupComboBox
      Left = 5
      Top = 34
      AutoSize = False
      DataBinding.DataField = 'PIS_CST'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'cst'
        end>
      Properties.ListSource = DM.dsCSTPC
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 17
      Width = 41
    end
  end
  object cxGroupBox5: TcxGroupBox [7]
    Left = 0
    Top = 346
    Align = alTop
    BiDiMode = bdRightToLeft
    Caption = 'IMPOSTOS COFINS'
    ParentBiDiMode = False
    ParentFont = False
    Style.Shadow = False
    TabOrder = 6
    Height = 94
    Width = 642
    object Label50: TLabel
      Left = 6
      Top = 15
      Width = 19
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'CST'
      ParentBiDiMode = False
    end
    object Label51: TLabel
      Left = 159
      Top = 16
      Width = 40
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Valor BC'
      FocusControl = cxDBTextEdit8
      ParentBiDiMode = False
    end
    object Label52: TLabel
      Left = 249
      Top = 15
      Width = 40
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Aliq.(%)'
      FocusControl = cxDBTextEdit9
      ParentBiDiMode = False
    end
    object Label53: TLabel
      Left = 418
      Top = 15
      Width = 33
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Vr. PIS'
      FocusControl = cxDBTextEdit10
      ParentBiDiMode = False
    end
    object Label54: TLabel
      Left = 65
      Top = 16
      Width = 63
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Qtd BC Prod.'
      FocusControl = cxDBTextEdit11
      ParentBiDiMode = False
    end
    object Label55: TLabel
      Left = 332
      Top = 15
      Width = 39
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Aliq.(Vr)'
      FocusControl = cxDBTextEdit12
      ParentBiDiMode = False
    end
    object Label56: TLabel
      Left = 159
      Top = 51
      Width = 40
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Valor BC'
      FocusControl = cxDBTextEdit13
      ParentBiDiMode = False
    end
    object Label57: TLabel
      Left = 249
      Top = 52
      Width = 40
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Aliq.(%)'
      FocusControl = cxDBTextEdit14
      ParentBiDiMode = False
    end
    object Label58: TLabel
      Left = 67
      Top = 51
      Width = 59
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Qtd BC Prod'
      FocusControl = cxDBTextEdit15
      ParentBiDiMode = False
    end
    object Label59: TLabel
      Left = 332
      Top = 51
      Width = 39
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Aliq.(Vr)'
      FocusControl = cxDBTextEdit16
      ParentBiDiMode = False
    end
    object Label60: TLabel
      Left = 421
      Top = 51
      Width = 44
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Vr PIS ST'
      FocusControl = cxDBTextEdit17
      ParentBiDiMode = False
    end
    object Label61: TLabel
      Left = 1
      Top = 67
      Width = 53
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'COFINS ST'
      FocusControl = cxDBSpinEdit5
      ParentBiDiMode = False
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 159
      Top = 32
      AutoSize = False
      DataBinding.DataField = 'COFINS_vBC'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 17
      Width = 70
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 249
      Top = 32
      AutoSize = False
      DataBinding.DataField = 'COFINS_pCOFINS'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 17
      Width = 70
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 416
      Top = 31
      AutoSize = False
      DataBinding.DataField = 'COFINS_vCOFINS'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Height = 17
      Width = 70
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 65
      Top = 32
      AutoSize = False
      DataBinding.DataField = 'COFINS_qBCProd'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 17
      Width = 77
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 332
      Top = 32
      AutoSize = False
      DataBinding.DataField = 'COFINS_vAliqProd'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 17
      Width = 70
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 159
      Top = 67
      AutoSize = False
      DataBinding.DataField = 'COFINSST_vBC'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 17
      Width = 70
    end
    object cxDBTextEdit14: TcxDBTextEdit
      Left = 249
      Top = 68
      AutoSize = False
      DataBinding.DataField = 'COFINSST_pCOFINS'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 17
      Width = 70
    end
    object cxDBTextEdit15: TcxDBTextEdit
      Left = 65
      Top = 67
      AutoSize = False
      DataBinding.DataField = 'COFINSST_qBCProd'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Height = 17
      Width = 77
    end
    object cxDBTextEdit16: TcxDBTextEdit
      Left = 332
      Top = 68
      AutoSize = False
      DataBinding.DataField = 'COFINSST_vAliqProd'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 17
      Width = 70
    end
    object cxDBTextEdit17: TcxDBTextEdit
      Left = 416
      Top = 68
      AutoSize = False
      DataBinding.DataField = 'COFINSST_vCOFINS'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Height = 17
      Width = 70
    end
    object cxDBTextEdit18: TcxDBLookupComboBox
      Left = 5
      Top = 32
      AutoSize = False
      DataBinding.DataField = 'COFINS_CST'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentFont = False
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'cst'
        end>
      Properties.ListSource = DM.dsCSTPC
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 17
      Width = 41
    end
  end
  inherited ini: TFormStorage
    Left = 496
    Top = 386
  end
  inherited FR: TFormResizer
    Left = 536
    Top = 386
  end
  inherited EnterTab: TACBrEnterTab
    Left = 576
    Top = 386
  end
end
