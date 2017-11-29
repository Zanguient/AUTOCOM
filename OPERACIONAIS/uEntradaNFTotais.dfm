inherited frmEntradaNF_Totais: TfrmEntradaNF_Totais
  ActiveControl = cxDBCalcEdit1
  Caption = 'TOTAIS DA NF'
  ClientHeight = 437
  ClientWidth = 543
  ExplicitWidth = 549
  ExplicitHeight = 465
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 395
    Width = 543
    TabOrder = 22
    ExplicitTop = 395
    ExplicitWidth = 543
    inherited pnlBtnClose: TPanel
      Left = 449
      TabOrder = 1
      ExplicitLeft = 449
      inherited btnSair: TcxButton
        Caption = 'CANCELAR'
      end
    end
    inherited pnlBase: TPanel
      Width = 448
      TabOrder = 0
      ExplicitWidth = 448
      object Label44: TLabel
        Left = 13
        Top = 5
        Width = 150
        Height = 15
        Alignment = taRightJustify
        Caption = '* Deve ser informado no item'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object btnGravar: TcxButton
        AlignWithMargins = True
        Left = 367
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'GRAVAR'
        TabOrder = 0
        OnClick = btnGravarClick
      end
    end
  end
  inherited Edit1: TEdit
    Left = 216
    Top = 313
    TabOrder = 25
    ExplicitLeft = 216
    ExplicitTop = 313
  end
  object Label11: TcxLabel [2]
    Left = 2
    Top = 1
    Caption = 'B.C. ICMS'
    FocusControl = cxDBCalcEdit1
    ParentFont = False
    Transparent = True
  end
  object Label13: TcxLabel [3]
    Left = 109
    Top = 1
    Caption = 'VR. ICMS'
    FocusControl = cxDBCalcEdit2
    ParentFont = False
    Transparent = True
  end
  object Label14: TcxLabel [4]
    Left = 323
    Top = 1
    Caption = 'BC. ICMS S.T.*'
    FocusControl = cxDBCalcEdit3
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clNavy
    Style.Font.Height = -11
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object Label15: TcxLabel [5]
    Left = 434
    Top = 1
    Caption = 'VR. ICMS S.T.*'
    FocusControl = cxDBCalcEdit4
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clNavy
    Style.Font.Height = -11
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object Label16: TcxLabel [6]
    Left = 434
    Top = 40
    Caption = 'VR. PRODUTOS'
    FocusControl = cxDBCalcEdit5
    ParentFont = False
    Transparent = True
  end
  object Label17: TcxLabel [7]
    Left = 2
    Top = 40
    Caption = 'VR. FRETE'
    FocusControl = cxDBCalcEdit6
    ParentFont = False
    Transparent = True
  end
  object Label18: TcxLabel [8]
    Left = 216
    Top = 1
    Caption = 'VR. SEGURO'
    FocusControl = cxDBCalcEdit7
    ParentFont = False
    Transparent = True
  end
  object Label19: TcxLabel [9]
    Left = 216
    Top = 40
    Caption = 'VR. DESCONTO'
    FocusControl = cxDBCalcEdit8
    ParentFont = False
    Transparent = True
  end
  object Label20: TcxLabel [10]
    Left = 109
    Top = 40
    Caption = 'VR. O.D.ACESS.'
    FocusControl = cxDBCalcEdit9
    ParentFont = False
    Transparent = True
  end
  object Label21: TcxLabel [11]
    Left = 364
    Top = 224
    Caption = 'VR. NOTA'
    FocusControl = cxDBCalcEdit10
    ParentFont = False
    Transparent = True
  end
  object Label22: TcxLabel [12]
    Left = 323
    Top = 40
    Caption = 'VR. IPI'
    FocusControl = cxDBCalcEdit11
    ParentFont = False
    Transparent = True
  end
  object cxDBCalcEdit1: TcxDBTextEdit [13]
    Left = 2
    Top = 19
    DataBinding.DataField = 'ICMSTot_vBC'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    TabOrder = 1
    Width = 103
  end
  object cxDBCalcEdit2: TcxDBTextEdit [14]
    Left = 109
    Top = 19
    DataBinding.DataField = 'ICMSTot_vICMS'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    TabOrder = 2
    Width = 103
  end
  object cxDBCalcEdit3: TcxDBTextEdit [15]
    Left = 325
    Top = 19
    DataBinding.DataField = 'ICMSTot_vBCST'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    Properties.ReadOnly = True
    TabOrder = 4
    Width = 103
  end
  object cxDBCalcEdit4: TcxDBTextEdit [16]
    Left = 434
    Top = 19
    DataBinding.DataField = 'ICMSTot_vST'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    Properties.ReadOnly = False
    Properties.OnEditValueChanged = cxDBCalcEdit7PropertiesEditValueChanged
    Style.Color = 13303807
    TabOrder = 5
    Width = 103
  end
  object cxDBCalcEdit5: TcxDBTextEdit [17]
    Left = 434
    Top = 57
    DataBinding.DataField = 'ICMSTot_vProd'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    Properties.OnEditValueChanged = cxDBCalcEdit7PropertiesEditValueChanged
    TabOrder = 15
    Width = 103
  end
  object cxDBCalcEdit6: TcxDBTextEdit [18]
    Left = 2
    Top = 57
    DataBinding.DataField = 'ICMSTot_vFrete'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    Properties.OnEditValueChanged = cxDBCalcEdit7PropertiesEditValueChanged
    Style.Color = 13303807
    TabOrder = 11
    Width = 103
  end
  object cxDBCalcEdit7: TcxDBTextEdit [19]
    Left = 216
    Top = 19
    DataBinding.DataField = 'ICMSTot_vSeg'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    Properties.OnEditValueChanged = cxDBCalcEdit7PropertiesEditValueChanged
    Style.Color = 13303807
    TabOrder = 3
    Width = 103
  end
  object cxDBCalcEdit8: TcxDBTextEdit [20]
    Left = 216
    Top = 57
    DataBinding.DataField = 'ICMSTot_vDesc'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    Properties.OnEditValueChanged = cxDBCalcEdit7PropertiesEditValueChanged
    Style.Color = 13303807
    TabOrder = 13
    Width = 103
  end
  object cxDBCalcEdit9: TcxDBTextEdit [21]
    Left = 109
    Top = 57
    DataBinding.DataField = 'ICMSTot_vOutro'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    Properties.OnEditValueChanged = cxDBCalcEdit7PropertiesEditValueChanged
    Style.Color = 13303807
    TabOrder = 12
    Width = 103
  end
  object cxDBCalcEdit10: TcxDBTextEdit [22]
    Left = 422
    Top = 222
    DataBinding.DataField = 'ICMSTot_vNF'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    Style.Color = 13303807
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 18
    Width = 115
  end
  object cxDBCalcEdit11: TcxDBTextEdit [23]
    Left = 325
    Top = 57
    DataBinding.DataField = 'ICMSTot_vIPI'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    Properties.OnEditValueChanged = cxDBCalcEdit7PropertiesEditValueChanged
    Style.Color = 13303807
    TabOrder = 14
    Width = 103
  end
  object cxGroupBox1: TcxGroupBox [24]
    Left = 2
    Top = 81
    Caption = 'OUTROS VALORES'
    TabOrder = 16
    Height = 73
    Width = 535
    object Label23: TcxLabel
      Left = 103
      Top = 18
      Caption = 'VR. INCID. IMPORT.'
      FocusControl = cxDBCalcEdit12
      ParentFont = False
      Transparent = True
    end
    object Label24: TcxLabel
      Left = 317
      Top = 18
      Caption = 'VR. PIS'
      FocusControl = cxDBCalcEdit13
      ParentFont = False
      Transparent = True
    end
    object Label25: TcxLabel
      Left = 210
      Top = 18
      Caption = 'VR. COFINS'
      FocusControl = cxDBCalcEdit14
      ParentFont = False
      Transparent = True
    end
    object cxDBCalcEdit12: TcxDBTextEdit
      Left = 103
      Top = 36
      DataBinding.DataField = 'ICMSTot_vII'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      TabOrder = 3
      Width = 103
    end
    object cxDBCalcEdit13: TcxDBTextEdit
      Left = 317
      Top = 36
      DataBinding.DataField = 'ICMSTot_vPIS'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      TabOrder = 6
      Width = 103
    end
    object cxDBCalcEdit14: TcxDBTextEdit
      Left = 210
      Top = 36
      DataBinding.DataField = 'ICMSTot_vCOFINS'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      TabOrder = 4
      Width = 103
    end
    object Label26: TcxLabel
      Left = 426
      Top = 18
      Caption = 'VR. ISS'
      FocusControl = cxDBCalcEdit15
      ParentFont = False
      Transparent = True
    end
    object cxDBCalcEdit15: TcxDBTextEdit
      Left = 426
      Top = 36
      DataBinding.DataField = 'ISSQNTot_vISS'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      TabOrder = 7
      Width = 103
    end
  end
  object cxGroupBox2: TcxGroupBox [25]
    Left = 2
    Top = 157
    Caption = 'RETEN'#199#213'ES'
    TabOrder = 17
    Height = 61
    Width = 535
    object Label27: TcxLabel
      Left = 103
      Top = 15
      Caption = 'VR. PIS'
      FocusControl = cxDBCalcEdit16
      ParentFont = False
      Transparent = True
    end
    object Label28: TcxLabel
      Left = 210
      Top = 15
      Caption = 'VR. COFINS'
      FocusControl = cxDBCalcEdit17
      ParentFont = False
      Transparent = True
    end
    object Label29: TcxLabel
      Left = 319
      Top = 15
      Caption = 'VR. CSLL'
      FocusControl = cxDBCalcEdit18
      ParentFont = False
      Transparent = True
    end
    object cxDBCalcEdit16: TcxDBTextEdit
      Left = 103
      Top = 32
      DataBinding.DataField = 'retTrib_vRetPIS'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      TabOrder = 3
      Width = 103
    end
    object cxDBCalcEdit17: TcxDBTextEdit
      Left = 210
      Top = 32
      DataBinding.DataField = 'retTrib_vRetCOFINS'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      TabOrder = 4
      Width = 103
    end
    object cxDBCalcEdit18: TcxDBTextEdit
      Left = 317
      Top = 32
      DataBinding.DataField = 'retTrib_vRetCSLL'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      TabOrder = 5
      Width = 103
    end
  end
  object cxDBMemo1: TcxDBMemo [26]
    AlignWithMargins = True
    Left = 3
    Top = 246
    DataBinding.DataField = 'infCpl'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -9
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 26
    Height = 75
    Width = 537
  end
  object cxLabel1: TcxLabel [27]
    Left = 5
    Top = 224
    Caption = 'INFORMA'#199#213'ES COMPLEMENTARES DA N.F.'
    FocusControl = cxDBCalcEdit16
    ParentFont = False
    Transparent = True
  end
  object cxDBMemo2: TcxDBMemo [28]
    AlignWithMargins = True
    Left = 3
    Top = 343
    DataBinding.DataField = 'infAdFisco'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -9
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 28
    Height = 50
    Width = 537
  end
  object cxLabel2: TcxLabel [29]
    Left = 5
    Top = 324
    Caption = 
      'OBSERVA'#199#213'ES DA N.F (Informe aqui as BC discriminadas nas Inf. Co' +
      'mplementares)'
    FocusControl = cxDBCalcEdit16
    ParentFont = False
    Transparent = True
  end
  inherited ini: TFormStorage
    Left = 112
    Top = 252
  end
  inherited FR: TFormResizer
    Left = 64
    Top = 252
  end
  inherited EnterTab: TACBrEnterTab
    Left = 160
    Top = 276
  end
end
