inherited frmPrecificacao: TfrmPrecificacao
  Caption = 'Assistente de Precifica'#231#227'o'
  ClientHeight = 557
  ClientWidth = 434
  ExplicitWidth = 440
  ExplicitHeight = 586
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 505
    Width = 434
    Height = 52
    TabOrder = 6
    ExplicitTop = 505
    ExplicitWidth = 434
    ExplicitHeight = 52
    inherited pnlBtnClose: TPanel
      Left = 375
      Width = 54
      Height = 46
      TabOrder = 1
      ExplicitLeft = 375
      ExplicitWidth = 54
      ExplicitHeight = 46
      inherited btnSair: TcxButton
        Left = 0
        Width = 51
        Height = 40
        ExplicitLeft = 0
        ExplicitWidth = 51
        ExplicitHeight = 40
      end
    end
    inherited pnlBase: TPanel
      Width = 374
      Height = 46
      TabOrder = 0
      ExplicitWidth = 374
      ExplicitHeight = 46
      object btnRecalc: TcxButton
        AlignWithMargins = True
        Left = 161
        Top = 3
        Width = 67
        Height = 40
        Align = alLeft
        Caption = 'Recalcular'
        TabOrder = 2
        OnClick = btnRecalcClick
      end
      object btnAssociar: TcxButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 61
        Height = 40
        Align = alLeft
        Caption = 'Associar'
        TabOrder = 0
      end
      object btnCo: TcxButton
        AlignWithMargins = True
        Left = 70
        Top = 3
        Width = 85
        Height = 40
        Hint = 'Tabela de Custo operacional'
        Align = alLeft
        Caption = 'Custo Operac.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnCoClick
      end
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 474
    Width = 434
    Height = 31
    Align = alBottom
    TabOrder = 5
    object ed_co: TcxCurrencyEdit
      AlignWithMargins = True
      Left = 124
      Top = 4
      Align = alLeft
      AutoSize = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.DisplayFormat = '0.00#'
      Style.Color = 8454143
      TabOrder = 0
      Height = 23
      Width = 89
    end
    object cxButton2: TcxButton
      AlignWithMargins = True
      Left = 413
      Top = 4
      Width = 17
      Height = 23
      Hint = 'Ajuda'
      Align = alRight
      Caption = '?'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object Label25: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Align = alLeft
      Caption = 'Custo Operacional (%)'
      FocusControl = ed_co
      ParentFont = False
      Transparent = True
    end
  end
  object Panel4: TPanel [3]
    Left = 0
    Top = 0
    Width = 434
    Height = 37
    Align = alTop
    TabOrder = 0
    object cxDBTextEdit15: TcxDBLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Align = alTop
      AutoSize = True
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DS1
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel5: TPanel [4]
    Left = 290
    Top = 37
    Width = 144
    Height = 437
    Align = alRight
    TabOrder = 4
    object ed_dif_custo_a: TcxCurrencyEdit
      AlignWithMargins = True
      Left = 4
      Top = 42
      TabStop = False
      Align = alTop
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Color = 15263976
      TabOrder = 0
      Width = 136
    end
    object ed_dif_custo_b: TcxCurrencyEdit
      AlignWithMargins = True
      Left = 4
      Top = 90
      TabStop = False
      Align = alTop
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Color = 15263976
      TabOrder = 1
      Width = 136
    end
    object ed_p_dif: TcxCurrencyEdit
      AlignWithMargins = True
      Left = 4
      Top = 138
      TabStop = False
      Align = alTop
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.ReadOnly = True
      Style.Color = 15263976
      TabOrder = 2
      Width = 136
    end
    object ed_dif_vrvenda: TcxCurrencyEdit
      AlignWithMargins = True
      Left = 4
      Top = 342
      TabStop = False
      Align = alTop
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#%'
      Properties.ReadOnly = True
      Style.Color = 15263976
      TabOrder = 13
      Width = 136
    end
    object ed_vmg_calc: TcxCurrencyEdit
      AlignWithMargins = True
      Left = 4
      Top = 294
      TabStop = False
      Align = alTop
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
      Properties.ReadOnly = True
      Style.Color = 15263976
      TabOrder = 5
      Width = 136
    end
    object ed_pmg_calc: TcxCurrencyEdit
      AlignWithMargins = True
      Left = 4
      Top = 246
      TabStop = False
      Align = alTop
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#%'
      Properties.ReadOnly = True
      Style.Color = 15263976
      TabOrder = 3
      Width = 136
    end
    object Label20: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'DIFER'#202'N'#199'AS'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Transparent = True
      AnchorX = 72
    end
    object Label21: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 21
      Margins.Bottom = 1
      Align = alTop
      Caption = 'CUSTO A'
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object Label22: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 69
      Margins.Bottom = 1
      Align = alTop
      Caption = 'CUSTO B'
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object Label23: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 117
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Diferen'#231'a (%)'
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl1: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 182
      Margins.Top = 20
      Margins.Bottom = 20
      Align = alTop
      Caption = 'Houve acr'#233'scimo'
      ParentColor = False
      ParentFont = False
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      AnchorX = 72
    end
    object Label26: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 321
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Reaj. Pr'#231' Venda'
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitTop = 329
    end
    object Label27: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 273
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Mg. calcul.(R$)'
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitTop = 277
    end
    object Label28: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 225
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Mg. calcul.(%)'
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object Panel6: TPanel [5]
    Left = 146
    Top = 37
    Width = 144
    Height = 437
    Align = alRight
    TabOrder = 3
    object cxDBLabel9: TcxDBLabel
      AlignWithMargins = True
      Left = 4
      Top = 42
      Hint = 'Valor de custo l'#237'quido'
      Align = alTop
      AutoSize = True
      DataBinding.DataField = 'vUnCom'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Color = clWhite
      ExplicitTop = 50
    end
    object cxDBLabel10: TcxDBLabel
      AlignWithMargins = True
      Left = 4
      Top = 86
      Hint = 'Valor de custo com agrega'#231#245'es'
      Align = alTop
      AutoSize = True
      DataBinding.DataField = 'VR_CUSTO'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Color = clWhite
      ExplicitTop = 98
    end
    object ed_p_dif_nf: TcxCurrencyEdit
      AlignWithMargins = True
      Left = 4
      Top = 130
      Hint = 'Diferen'#231'a ente custo A e custo B em %'
      TabStop = False
      Align = alTop
      EditValue = 0.000000000000000000
      ParentFont = False
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clWhite
      TabOrder = 2
      Width = 136
    end
    object ed_vdif_nf: TcxCurrencyEdit
      AlignWithMargins = True
      Left = 4
      Top = 178
      Hint = 'Diferen'#231'a ente custo A e custo B em R$'
      TabStop = False
      Align = alTop
      EditValue = 0.000000000000000000
      ParentFont = False
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      ShowHint = True
      Style.Color = clWhite
      TabOrder = 3
      Width = 136
    end
    object ed_p_mg: TcxCurrencyEdit
      AlignWithMargins = True
      Left = 4
      Top = 226
      Hint = 'Margem sobre o custo B em %'
      Align = alTop
      EditValue = 0.000000000000000000
      ParentFont = False
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.OnEditValueChanged = ed_p_mgPropertiesEditValueChanged
      ShowHint = True
      Style.Color = 8454143
      TabOrder = 4
      Width = 136
    end
    object ed_v_mg: TcxCurrencyEdit
      AlignWithMargins = True
      Left = 4
      Top = 274
      Hint = 'Margem sobre o custo B em R$'
      Align = alTop
      EditValue = 0.000000000000000000
      ParentFont = False
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.OnEditValueChanged = ed_v_mgPropertiesEditValueChanged
      ShowHint = True
      Style.Color = 8454143
      TabOrder = 6
      Width = 136
    end
    object ed_vr_venda: TcxCurrencyEdit
      AlignWithMargins = True
      Left = 4
      Top = 322
      Hint = 'Valor unit. de venda sugerido'
      Align = alTop
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.OnEditValueChanged = ed_vr_vendaPropertiesEditValueChanged
      Style.Color = 8454143
      TabOrder = 14
      Width = 136
    end
    object Label11: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'ITEM DA NOTA'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Transparent = True
      AnchorX = 72
    end
    object Label12: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 21
      Margins.Bottom = 1
      Align = alTop
      Caption = 'CUSTO A'
      FocusControl = cxDBLabel9
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object Label13: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 65
      Margins.Bottom = 1
      Align = alTop
      Caption = 'CUSTO B'
      FocusControl = cxDBLabel10
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object Label14: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 109
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Diferen'#231'a (%)'
      FocusControl = ed_p_dif_nf
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object Label15: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 157
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Difer'#234'n'#231'a (R$)'
      FocusControl = ed_vdif_nf
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object Label16: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 205
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Mg Venda (%)'
      FocusControl = ed_p_mg
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object Label17: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 253
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Mg Venda (R$)'
      FocusControl = ed_v_mg
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object Label18: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 301
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Pr'#231' Venda Sug.'
      FocusControl = ed_vr_venda
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object Panel8: TPanel
      Left = 1
      Top = 368
      Width = 142
      Height = 68
      Align = alBottom
      TabOrder = 15
      object cxDBLabel11: TcxDBLabel
        AlignWithMargins = True
        Left = 4
        Top = 25
        Hint = 'Quantidade adquirida'
        Align = alTop
        AutoSize = True
        DataBinding.DataField = 'QTD'
        DataBinding.DataSource = DM_NF_Entr.DScdNF_Item
        ParentColor = False
        ParentFont = False
        Style.Color = clWhite
        ExplicitTop = 29
      end
      object Label19: TcxLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Margins.Bottom = 1
        Align = alTop
        Caption = 'Quant. Adquir.'
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
  end
  object Panel7: TPanel [6]
    Left = 2
    Top = 37
    Width = 144
    Height = 437
    Align = alRight
    TabOrder = 2
    object cxDBLabel1: TcxDBLabel
      AlignWithMargins = True
      Left = 4
      Top = 42
      Hint = 'Valor de custo l'#237'quido'
      Align = alTop
      AutoSize = True
      DataBinding.DataField = 'custo_a'
      DataBinding.DataSource = DS1
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Color = clWhite
      ExplicitTop = 50
    end
    object cxDBLabel2: TcxDBLabel
      AlignWithMargins = True
      Left = 4
      Top = 86
      Hint = 'Valor de custo com agrega'#231#245'es'
      Align = alTop
      AutoSize = True
      DataBinding.DataField = 'custo_b'
      DataBinding.DataSource = DS1
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Color = clWhite
      ExplicitTop = 98
    end
    object cxDBLabel3: TcxDBLabel
      AlignWithMargins = True
      Left = 4
      Top = 130
      Hint = 'Diferen'#231'a ente custo A e custo B em %'
      Align = alTop
      AutoSize = True
      DataBinding.DataField = 'p_dif'
      DataBinding.DataSource = DS1
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Color = clWhite
      ExplicitTop = 146
    end
    object cxDBLabel4: TcxDBLabel
      AlignWithMargins = True
      Left = 4
      Top = 174
      Hint = 'Diferen'#231'a ente custo A e custo B em R$'
      Align = alTop
      AutoSize = True
      DataBinding.DataField = 'v_dif'
      DataBinding.DataSource = DS1
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Color = clWhite
      ExplicitTop = 194
    end
    object cxDBLabel5: TcxDBLabel
      AlignWithMargins = True
      Left = 4
      Top = 218
      Hint = 'Margem sobre o custo B em %'
      Align = alTop
      AutoSize = True
      DataBinding.DataField = 'p_mg'
      DataBinding.DataSource = DS1
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Color = clWhite
      ExplicitTop = 242
    end
    object cxDBLabel6: TcxDBLabel
      AlignWithMargins = True
      Left = 4
      Top = 262
      Hint = 'Margem sobre o custo B em R$'
      Align = alTop
      AutoSize = True
      DataBinding.DataField = 'v_mg'
      DataBinding.DataSource = DS1
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Color = clWhite
      ExplicitTop = 290
    end
    object cxDBLabel7: TcxDBLabel
      AlignWithMargins = True
      Left = 4
      Top = 306
      Hint = 'Valor Unit'#225'rio de Venda conforme cadastro'
      Align = alTop
      AutoSize = True
      DataBinding.DataField = 'vrvenda_vista'
      DataBinding.DataSource = DS1
      ParentColor = False
      ParentFont = False
      Style.Color = clWhite
      ExplicitTop = 338
    end
    object cxDBLabel8: TcxDBLabel
      AlignWithMargins = True
      Left = 4
      Top = 350
      Hint = 'Quantidade atual'
      Align = alTop
      AutoSize = True
      DataBinding.DataField = 'quant'
      DataBinding.DataSource = DS1
      ParentColor = False
      ParentFont = False
      Style.Color = clWhite
      ExplicitTop = 386
    end
    object Label2: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 21
      Margins.Bottom = 1
      Align = alTop
      Caption = 'CUSTO A'
      FocusControl = cxDBLabel1
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitTop = 25
    end
    object Label3: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 65
      Margins.Bottom = 1
      Align = alTop
      Caption = 'CUSTO B'
      FocusControl = cxDBLabel2
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitTop = 69
    end
    object Label4: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 109
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Diferen'#231'a (%)'
      FocusControl = cxDBLabel3
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitTop = 113
    end
    object Label5: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 153
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Difer'#234'n'#231'a (R$)'
      FocusControl = cxDBLabel4
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitTop = 157
    end
    object Label6: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 197
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Mg Venda (%)'
      FocusControl = cxDBLabel5
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitTop = 201
    end
    object Label7: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 241
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Mg Venda (R$)'
      FocusControl = cxDBLabel6
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitTop = 245
    end
    object Label8: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 285
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Pr'#231' Venda atual'
      FocusControl = cxDBLabel7
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitTop = 289
    end
    object Label9: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 329
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Estoque atual'
      FocusControl = cxDBLabel8
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      ExplicitTop = 333
    end
    object Label10: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'ESTOQUE'
      FocusControl = cxDBLabel1
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Transparent = True
      AnchorX = 72
    end
  end
  inherited ini: TFormStorage
    Left = 216
    Top = 0
  end
  inherited FR: TFormResizer
    Left = 44
    Top = 411
  end
  inherited EnterTab: TACBrEnterTab
    Left = 256
    Top = 0
  end
  object Q1: TFDQuery
    Connection = DM.DB
    SQL.Strings = (
      'select * from vw_precificacao where id=:id')
    Left = 104
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Q1id: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'vw_precificacao.id'
    end
    object Q1nome: TStringField
      FieldName = 'nome'
      Origin = 'vw_precificacao.nome'
      Size = 100
    end
    object Q1custo_a: TFloatField
      FieldName = 'custo_a'
      Origin = 'vw_precificacao.custo_a'
      currency = True
    end
    object Q1custo_b: TFloatField
      FieldName = 'custo_b'
      Origin = 'vw_precificacao.custo_b'
      currency = True
    end
    object Q1v_dif: TFloatField
      FieldName = 'v_dif'
      Origin = 'vw_precificacao.v_dif'
      currency = True
    end
    object Q1p_dif: TFloatField
      FieldName = 'p_dif'
      Origin = 'vw_precificacao.p_dif'
      DisplayFormat = '0.00#%'
    end
    object Q1v_mg: TFloatField
      FieldName = 'v_mg'
      Origin = 'vw_precificacao.v_mg'
      currency = True
    end
    object Q1p_mg: TFloatField
      FieldName = 'p_mg'
      Origin = 'vw_precificacao.p_mg'
      DisplayFormat = '0.00#%'
    end
    object Q1vrvenda_vista: TFloatField
      FieldName = 'vrvenda_vista'
      Origin = 'vw_precificacao.vrvenda_vista'
      currency = True
    end
    object Q1quant: TFloatField
      FieldName = 'quant'
      Origin = 'vw_precificacao.quant'
      DisplayFormat = '0.00#'
    end
  end
  object DS1: TDataSource
    DataSet = Q1
    Left = 144
  end
end
