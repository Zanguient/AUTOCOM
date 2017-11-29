inherited frmChqDev: TfrmChqDev
  Caption = 'REGISTRO DE DEVOLU'#199#195'O DE CHEQUE'
  ClientHeight = 194
  ClientWidth = 440
  ExplicitWidth = 446
  ExplicitHeight = 223
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 152
    Width = 440
    ExplicitTop = 152
    ExplicitWidth = 440
    inherited pnlBtnClose: TPanel
      Left = 346
      ExplicitLeft = 346
    end
    inherited pnlBase: TPanel
      Width = 345
      ExplicitWidth = 345
      object btnOk: TcxButton
        AlignWithMargins = True
        Left = 231
        Top = 3
        Width = 111
        Height = 30
        Align = alRight
        Caption = 'PROSSEGUIR'
        Enabled = False
        TabOrder = 0
        OnClick = btnOkClick
        ExplicitLeft = 228
        ExplicitTop = -5
      end
    end
  end
  object GRD1: TcxGrid [2]
    Left = 0
    Top = 0
    Width = 440
    Height = 152
    Align = alClient
    TabOrder = 2
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    ExplicitLeft = -268
    ExplicitTop = -50
    ExplicitWidth = 708
    ExplicitHeight = 244
    object tbv1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      OnCellClick = tbv1CellClick
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
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
      OptionsView.CellAutoHeight = True
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clYellow
      object tbv1id: TcxGridDBColumn
        Caption = 'AL'#205'NEA'
        DataBinding.FieldName = 'id'
        HeaderAlignmentHorz = taCenter
        Width = 58
      end
      object tbv1alinea: TcxGridDBColumn
        Caption = 'DESCRI'#199#195'O DA AL'#205'NEA'
        DataBinding.FieldName = 'alinea'
        HeaderAlignmentHorz = taCenter
        Width = 345
      end
    end
    object lv1: TcxGridLevel
      GridView = tbv1
    end
  end
  inherited ini: TFormStorage
    Left = 472
    Top = 136
  end
  inherited FR: TFormResizer
    Left = 512
    Top = 136
  end
  inherited EnterTab: TACBrEnterTab
    Left = 552
    Top = 136
  end
  object DS1: TDataSource
    DataSet = DM.QFinan_ch_alinea
    Left = 104
    Top = 144
  end
end
