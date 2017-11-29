inherited frmParcelamento: TfrmParcelamento
  Caption = 'frmParcelamento'
  ClientHeight = 465
  ClientWidth = 404
  ExplicitWidth = 410
  ExplicitHeight = 494
  PixelsPerInch = 96
  TextHeight = 15
  object Label3: TLabel [0]
    Left = 117
    Top = 285
    Width = 38
    Height = 15
    Caption = 'PLANO'
    FocusControl = cmbPlano
  end
  inherited TPA: TPanel
    Top = 423
    Width = 404
    TabOrder = 11
    ExplicitTop = 423
    ExplicitWidth = 404
    inherited pnlBtnClose: TPanel
      Left = 310
      TabOrder = 1
      ExplicitLeft = 310
    end
    inherited pnlBase: TPanel
      Width = 309
      TabOrder = 0
      ExplicitWidth = 309
      object btnGerar: TcxButton
        AlignWithMargins = True
        Left = 248
        Top = 3
        Width = 58
        Height = 30
        Hint = 'Gera o parcelamento e os documentos'
        Align = alRight
        Caption = 'Gerar'
        TabOrder = 4
        OnClick = btnGerarClick
      end
      object btnCalc: TcxButton
        AlignWithMargins = True
        Left = 184
        Top = 3
        Width = 58
        Height = 30
        Hint = 'Efetua o c'#225'lculo das parcelas'
        Align = alRight
        Caption = 'Calcular'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnCalcClick
      end
      object cbPrint: TcxCheckBox
        Left = 80
        Top = -3
        TabStop = False
        Caption = 'Imprimir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Width = 80
      end
      object cbBoleto: TcxCheckBox
        Left = 0
        Top = -2
        TabStop = False
        Caption = 'Boleto'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = cbBoletoClick
        Width = 75
      end
      object cbCarne: TcxCheckBox
        Left = 0
        Top = 15
        TabStop = False
        Caption = 'Fatura'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = cbCarneClick
        Width = 75
      end
      object cbTela: TcxCheckBox
        Left = 80
        Top = 15
        TabStop = False
        Caption = 'Na Tela'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Width = 80
      end
    end
  end
  object edValor: TcxCurrencyEdit [3]
    Left = 316
    Top = 301
    Hint = 'Valor total do documento'
    TabStop = False
    ParentShowHint = False
    Properties.ReadOnly = True
    ShowHint = True
    TabOrder = 4
    Width = 81
  end
  object Label2: TcxLabel [4]
    Left = 316
    Top = 283
    Caption = 'TOTAL'
    FocusControl = edValor
    Transparent = True
  end
  object dtParc: TcxDateEdit [5]
    Left = 8
    Top = 301
    Hint = 'Data da 1'#170' parcela'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Width = 100
  end
  object Label1: TcxLabel [6]
    Left = 8
    Top = 285
    Caption = '1'#170' Parcela em:'
    FocusControl = dtParc
    Transparent = True
  end
  object Label15: TcxLabel [7]
    Left = 8
    Top = 325
    Caption = 'Observa'#231#227'o'
    Transparent = True
  end
  object edInstr1: TcxTextEdit [8]
    Left = 8
    Top = 343
    Hint = 'Essa informa'#231#227'o ser'#225' impressa na 1'#170' linha do boleto ou carn'#234
    ParentFont = False
    ParentShowHint = False
    Properties.MaxLength = 78
    ShowHint = True
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -9
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 6
    Width = 389
  end
  object grd: TcxGrid [9]
    Left = 0
    Top = 0
    Width = 404
    Height = 263
    Align = alTop
    TabOrder = 0
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    object tbv: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = DS1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'valor'
          Column = tbvvalor
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
      OptionsView.ScrollBars = ssVertical
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clYellow
      object tbvid: TcxGridDBColumn
        Caption = 'PARC.'
        DataBinding.FieldName = 'id'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 49
      end
      object tbvdias: TcxGridDBColumn
        Caption = 'DIAS'
        DataBinding.FieldName = 'dias'
        HeaderAlignmentHorz = taCenter
        Width = 45
      end
      object tbvvencimento: TcxGridDBColumn
        Caption = 'VENCIM.'
        DataBinding.FieldName = 'vencimento'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 89
      end
      object tbvvalor: TcxGridDBColumn
        Caption = 'VALOR'
        DataBinding.FieldName = 'valor'
        HeaderAlignmentHorz = taCenter
        Width = 81
      end
      object tbvjuros: TcxGridDBColumn
        Caption = 'FATOR'
        DataBinding.FieldName = 'juros'
        HeaderAlignmentHorz = taCenter
        Width = 94
      end
    end
    object lv: TcxGridLevel
      GridView = tbv
    end
  end
  object cbJuros: TcxCheckBox [10]
    Left = 286
    Top = 262
    TabStop = False
    Caption = 'N'#227'o Calc. Juros'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Width = 111
  end
  object pnlBol: TPanel [11]
    Left = 0
    Top = 373
    Width = 404
    Height = 50
    Align = alBottom
    TabOrder = 7
    Visible = False
    object cmbBoleto: TcxLookupComboBox
      Left = 7
      Top = 21
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'nomebanco'
        end
        item
          FieldName = 'agencia'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM.DSvwBoleto
      TabOrder = 0
      Width = 245
    end
    object Label11: TcxLabel
      Left = 7
      Top = 1
      Caption = 'BOLETO'
      Transparent = True
    end
    object crFormato: TcxRadioGroup
      Left = 258
      Top = -5
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
      TabOrder = 1
      Height = 57
      Width = 179
    end
  end
  object cmbPlano: TcxComboBox [12]
    Left = 113
    Top = 301
    TabOrder = 3
    Width = 196
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'crFormato.ItemIndex'
      'cbPrint.Checked')
    Left = 40
    Top = 168
  end
  inherited FR: TFormResizer
    Left = 80
    Top = 168
  end
  inherited EnterTab: TACBrEnterTab
    Left = 120
    Top = 168
  end
  object T1: TFDMemTable
    Active = True
    BeforeClose = T1BeforeClose
    AfterInsert = T1AfterInsert
    BeforePost = T1BeforePost
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'nmro_doc'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'dias'
        DataType = ftInteger
      end
      item
        Name = 'vencimento'
        DataType = ftDate
      end
      item
        Name = 'valor'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'juros'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'data'
        DataType = ftDate
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 32
    Top = 96
    object T1id: TIntegerField
      Alignment = taCenter
      FieldName = 'id'
      DisplayFormat = '00'
    end
    object T1nmro_doc: TStringField
      FieldName = 'nmro_doc'
      Size = 10
    end
    object T1dias: TIntegerField
      Alignment = taCenter
      FieldName = 'dias'
      DisplayFormat = '00'
    end
    object T1vencimento: TDateField
      Alignment = taCenter
      FieldName = 'vencimento'
    end
    object T1valor: TCurrencyField
      FieldName = 'valor'
      DisplayFormat = '#,##0.00'
    end
    object T1juros: TCurrencyField
      FieldName = 'juros'
      DisplayFormat = '0.0000####'
    end
    object T1data: TDateField
      FieldName = 'data'
    end
  end
  object DS1: TDataSource
    DataSet = T1
    Left = 104
    Top = 72
  end
end
