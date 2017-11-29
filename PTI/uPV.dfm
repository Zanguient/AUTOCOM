inherited frmpv: Tfrmpv
  Caption = 'PR'#201'-VENDAS'
  ClientWidth = 453
  ExplicitWidth = 459
  ExplicitHeight = 410
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Width = 453
    ExplicitWidth = 453
    inherited pnlBtnClose: TPanel
      Left = 359
      ExplicitLeft = 359
    end
    inherited pnlBase: TPanel
      Width = 358
      ExplicitWidth = 358
      object btnGerar: TcxButton
        AlignWithMargins = True
        Left = 248
        Top = 3
        Width = 107
        Height = 30
        Align = alRight
        Caption = 'Gerar Cupom'
        TabOrder = 0
        OnClick = btnGerarClick
      end
    end
  end
  object grd: TcxGrid [2]
    Left = 0
    Top = 0
    Width = 453
    Height = 339
    Align = alClient
    TabOrder = 2
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    object tbv: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      OnCustomDrawCell = tbvCustomDrawCell
      DataController.DataModeController.GridMode = True
      DataController.DataSource = DS1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
      OptionsView.ScrollBars = ssVertical
      OptionsView.CellAutoHeight = True
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clYellow
      object tbvid: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object tbvcoa: TcxGridDBColumn
        Caption = 'N'#186' DA PR'#201'-VENDA'
        DataBinding.FieldName = 'pv'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 132
      end
      object tbvdata: TcxGridDBColumn
        DataBinding.FieldName = 'data'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tbvhora: TcxGridDBColumn
        DataBinding.FieldName = 'hora'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tbvvalor: TcxGridDBColumn
        DataBinding.FieldName = 'valor'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 82
      end
      object tbvgerar: TcxGridDBColumn
        DataBinding.FieldName = 'gerar'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        HeaderAlignmentHorz = taCenter
        Width = 54
      end
      object tbvcanc: TcxGridDBColumn
        DataBinding.FieldName = 'canc'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
    end
    object lv: TcxGridLevel
      GridView = tbv
    end
  end
  inherited ini: TFormStorage
    Left = 32
    Top = 104
  end
  inherited FR: TFormResizer
    Left = 72
    Top = 104
  end
  inherited EnterTab: TACBrEnterTab
    Left = 112
    Top = 104
  end
  object DS1: TDataSource
    DataSet = T1
    Left = 248
    Top = 104
  end
  object T1: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 184
    Top = 104
    object T1id: TIntegerField
      FieldName = 'id'
      DisplayFormat = '0000'
    end
    object T1pv: TStringField
      FieldName = 'pv'
      Size = 10
    end
    object T1data: TDateField
      FieldName = 'data'
    end
    object T1hora: TStringField
      FieldName = 'hora'
      Size = 5
    end
    object T1valor: TCurrencyField
      FieldName = 'valor'
      DisplayFormat = '#,##0.00'
      currency = False
    end
    object T1canc: TBooleanField
      FieldName = 'canc'
    end
    object T1gerar: TBooleanField
      FieldName = 'gerar'
    end
  end
end
