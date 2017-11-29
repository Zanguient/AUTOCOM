inherited frmRateio: TfrmRateio
  Caption = 'Assistente para Rateio'
  ClientHeight = 483
  ClientWidth = 367
  ExplicitWidth = 373
  ExplicitHeight = 511
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 441
    Width = 367
    ExplicitTop = 441
    ExplicitWidth = 367
    inherited pnlBtnClose: TPanel
      Left = 273
      ExplicitLeft = 273
    end
    inherited pnlBase: TPanel
      Width = 272
      ExplicitWidth = 272
      object btnTrf: TcxButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 126
        Height = 30
        Align = alLeft
        Caption = 'Transferir para a NF'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnTrfClick
      end
      object lblvrprod: TcxLabel
        Left = 236
        Top = 8
        Caption = '0,00'
        Style.BorderStyle = ebsOffice11
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 266
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 367
    Height = 73
    Align = alTop
    TabOrder = 2
    object rbCampo: TcxRadioGroup
      Left = 1
      Top = 1
      Align = alLeft
      Caption = 'Campo'
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Desconto'
          Value = 'vDesc'
        end
        item
          Caption = 'ODA'
          Value = 'vOutro'
        end
        item
          Caption = 'Frete'
          Value = 'vFrete'
        end
        item
          Caption = 'Seguro'
          Value = 'vSeg'
        end>
      TabOrder = 0
      OnClick = rbCampoClick
      Height = 71
      Width = 160
    end
    object edValor: TcxCurrencyEdit
      Left = 204
      Top = 46
      TabOrder = 2
      Width = 114
    end
    object Label102: TcxLabel
      Left = 167
      Top = 46
      Caption = 'Valor'
      Transparent = True
    end
    object cxButton7: TcxButton
      AlignWithMargins = True
      Left = 321
      Top = 41
      Width = 39
      Height = 29
      Hint = 'Calcular'
      Caption = '>>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = cxButton7Click
    end
    object cxLabel1: TcxLabel
      Left = 185
      Top = 24
      Caption = '%'
      Transparent = True
    end
    object edPerc: TcxCurrencyEdit
      Left = 204
      Top = 21
      Properties.OnEditValueChanged = edPercPropertiesEditValueChanged
      TabOrder = 1
      Width = 114
    end
    object cxLabel2: TcxLabel
      Left = 167
      Top = 2
      Caption = 'INFORME O VALOR A CALCULAR'
      Transparent = True
    end
  end
  object g1: TcxGrid [3]
    AlignWithMargins = True
    Left = 3
    Top = 76
    Width = 361
    Height = 362
    Align = alClient
    TabOrder = 3
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    object tbv: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      FilterBox.Visible = fvNever
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = DS1
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0.00#'
          Kind = skSum
          FieldName = 'percent'
          Column = tbvpercent
        end
        item
          Format = '0.00#'
          Kind = skSum
          FieldName = 'valor'
          Column = tbvvalor
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
      OptionsBehavior.PostponedSynchronization = False
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.CopyPreviewToClipboard = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.NoDataToDisplayInfoText = '[[ VAZIO ]]'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clYellow
      object tbvitem: TcxGridDBColumn
        Caption = 'ITEM'
        DataBinding.FieldName = 'item'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 56
      end
      object tbvpercent: TcxGridDBColumn
        Caption = '% VALOR'
        DataBinding.FieldName = 'percent'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 65
      end
      object tbvvalor: TcxGridDBColumn
        Caption = 'VALOR'
        DataBinding.FieldName = 'valor'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 115
      end
      object tbvexcluir: TcxGridDBColumn
        Caption = 'N'#195'O INCLUIR'
        DataBinding.FieldName = 'excluir'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        HeaderAlignmentHorz = taCenter
        Width = 93
      end
    end
    object g1Lvl1: TcxGridLevel
      GridView = tbv
    end
  end
  inherited ini: TFormStorage
    Left = 48
    Top = 120
  end
  inherited FR: TFormResizer
    Left = 88
    Top = 120
  end
  inherited EnterTab: TACBrEnterTab
    Left = 128
    Top = 120
  end
  object T1: TFDMemTable
    Active = True
    AfterInsert = T1AfterInsert
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'item'
        DataType = ftInteger
      end
      item
        Name = 'percent'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'valor'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'excluir'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 49
    Top = 194
    object T1id: TIntegerField
      FieldName = 'id'
    end
    object T1item: TIntegerField
      FieldName = 'item'
      DisplayFormat = '000'
    end
    object T1percent: TCurrencyField
      FieldName = 'percent'
      DisplayFormat = '0.000'
    end
    object T1valor: TCurrencyField
      FieldName = 'valor'
    end
    object T1excluir: TBooleanField
      FieldName = 'excluir'
      DisplayValues = 'False'
    end
  end
  object DS1: TDataSource
    DataSet = T1
    Left = 96
    Top = 192
  end
end
