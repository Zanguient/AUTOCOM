inherited frmItem: TfrmItem
  ActiveControl = edQtd
  Caption = 'VENDA DE ITEM'
  ClientHeight = 358
  ClientWidth = 203
  ExplicitWidth = 209
  ExplicitHeight = 386
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 316
    Width = 203
    TabOrder = 3
    ExplicitTop = 316
    ExplicitWidth = 203
    inherited pnlBtnClose: TPanel
      Left = 109
      TabOrder = 1
      TabStop = True
      ExplicitLeft = 109
      inherited btnSair: TcxButton
        TabStop = False
      end
    end
    inherited pnlBase: TPanel
      Width = 108
      TabOrder = 0
      ExplicitWidth = 108
      object btnF11: TcxButton
        AlignWithMargins = True
        Left = 1
        Top = 3
        Width = 85
        Height = 30
        Hint = '-'
        Margins.Left = 1
        Margins.Right = 1
        Align = alLeft
        Caption = 'F11 - OK'
        Enabled = False
        TabOrder = 0
        WordWrap = True
        OnClick = btnF11Click
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 203
    Height = 45
    Align = alTop
    TabOrder = 0
    object cxDBLabel1: TcxDBLabel
      Left = 1
      Top = 1
      Align = alTop
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DM.DSEstoque
      ParentFont = False
      Height = 21
      Width = 201
    end
    object cxDBLabel2: TcxDBLabel
      Left = 1
      Top = 22
      Align = alTop
      DataBinding.DataField = 'vrvenda_vista'
      DataBinding.DataSource = DM.DSEstoque
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Height = 21
      Width = 201
      AnchorX = 202
    end
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 45
    Width = 203
    Height = 271
    Align = alClient
    TabOrder = 2
    object edQtd: TcxCurrencyEdit
      Left = 1
      Top = 18
      Align = alTop
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.00#'
      Properties.OnChange = edQtdPropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyDown = edQtdKeyDown
      Width = 201
    end
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'QUANTIDADE (tecle "D" p/ desconto)'
      ParentFont = False
    end
    object pnlDesc: TPanel
      Left = 1
      Top = 130
      Width = 201
      Height = 140
      Align = alBottom
      TabOrder = 2
      object lblU: TcxLabel
        Left = 1
        Top = 1
        Align = alTop
        Caption = 'DESCONTO SOBRE O VR. UNIT'#193'RIO'
        ParentFont = False
      end
      object edDescU: TcxCurrencyEdit
        Left = 1
        Top = 18
        Align = alTop
        EditValue = 0.000000000000000000
        Enabled = False
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '0.00#'
        Properties.OnChange = edDescUPropertiesChange
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -24
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 1
        OnKeyDown = edDescUKeyDown
        Width = 199
      end
      object lblT: TcxLabel
        Left = 1
        Top = 56
        Align = alBottom
        Caption = 'DESCONTO SOBRE O VALOR TOTAL'
        ParentFont = False
        ExplicitTop = 78
      end
      object edDescT: TcxCurrencyEdit
        Left = 1
        Top = 73
        Align = alBottom
        EditValue = 0.000000000000000000
        Enabled = False
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '0.00#'
        Properties.OnChange = edDescTPropertiesChange
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -24
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 3
        OnKeyDown = edDescUKeyDown
        ExplicitTop = 95
        Width = 199
      end
      object cxLabel4: TcxLabel
        AlignWithMargins = True
        Left = 4
        Top = 119
        Align = alBottom
        Caption = 'Tecle P =%, V= $'
        ParentFont = False
      end
    end
    object pnlpfp: TPanel
      Left = 1
      Top = 61
      Width = 201
      Height = 67
      Align = alTop
      TabOrder = 3
      object cxLabel2: TcxLabel
        Left = 1
        Top = 1
        Align = alTop
        Caption = 'VALOR UNIT'#193'RIO'
        ParentFont = False
      end
      object edVrUnit: TcxCurrencyEdit
        Left = 1
        Top = 18
        Align = alTop
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '0.00#'
        Properties.OnChange = edDescUPropertiesChange
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -24
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 1
        OnKeyDown = edDescUKeyDown
        Width = 199
      end
    end
  end
  inherited ini: TFormStorage
    Left = 104
  end
  inherited FR: TFormResizer
    Left = 72
  end
  inherited EnterTab: TACBrEnterTab
    Left = 168
    Top = 64
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 144
    Top = 8
  end
end
