inherited frmCadSpedTabelas: TfrmCadSpedTabelas
  Caption = 'AUTOCOM GERENCIAL - TABELAS DA EFD'
  ClientWidth = 710
  ExplicitWidth = 716
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Width = 710
    ExplicitWidth = 710
    inherited pnlBtnClose: TPanel
      Left = 616
      ExplicitLeft = 616
    end
    inherited pnlBase: TPanel
      Width = 615
      ExplicitWidth = 615
    end
  end
  object grd: TcxGrid [2]
    Left = 0
    Top = 0
    Width = 153
    Height = 339
    Align = alLeft
    TabOrder = 2
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    LookAndFeel.Kind = lfStandard
    object tbv: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataModeController.GridMode = True
      DataController.DataSource = DM.dsSped_cst_tabela
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
      OptionsSelection.InvertSelect = False
      OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
      OptionsView.ScrollBars = ssVertical
      OptionsView.CellAutoHeight = True
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clYellow
      object tbvcst: TcxGridDBColumn
        DataBinding.FieldName = 'cst'
        HeaderAlignmentHorz = taCenter
        Width = 45
      end
      object tbvtabela: TcxGridDBColumn
        DataBinding.FieldName = 'tabela'
        HeaderAlignmentHorz = taCenter
      end
    end
    object lv: TcxGridLevel
      GridView = tbv
    end
  end
  object Panel3: TPanel [3]
    Left = 153
    Top = 0
    Width = 557
    Height = 339
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 3
    object grd1: TcxGrid
      Left = 1
      Top = 1
      Width = 555
      Height = 279
      Align = alClient
      TabOrder = 0
      LevelTabs.Slants.Kind = skCutCorner
      LevelTabs.Style = 6
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = True
      object tbv1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        DataController.DataModeController.GridMode = True
        DataController.DataSource = DSSpedTabela
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
        OptionsSelection.InvertSelect = False
        OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
        OptionsView.ScrollBars = ssVertical
        OptionsView.CellAutoHeight = True
        OptionsView.GridLineColor = clBlack
        OptionsView.GroupByBox = False
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
        OptionsView.Indicator = True
        OptionsView.RowSeparatorColor = clYellow
        object tbv1cod: TcxGridDBColumn
          DataBinding.FieldName = 'cod'
          HeaderAlignmentHorz = taCenter
          Width = 59
        end
        object tbv1pc_aliq_pis: TcxGridDBColumn
          DataBinding.FieldName = 'pc_aliq_pis'
          HeaderAlignmentHorz = taCenter
          Width = 64
        end
        object tbv1pc_aliq_cofins: TcxGridDBColumn
          DataBinding.FieldName = 'pc_aliq_cofins'
          HeaderAlignmentHorz = taCenter
          Width = 87
        end
        object tbv1pc_cred_pis: TcxGridDBColumn
          DataBinding.FieldName = 'pc_cred_pis'
          HeaderAlignmentHorz = taCenter
        end
        object tbv1pc_cred_cofins: TcxGridDBColumn
          Caption = 'CRED COFINS'
          DataBinding.FieldName = 'pc_cred_cofins'
          HeaderAlignmentHorz = taCenter
        end
        object tbv1unidade: TcxGridDBColumn
          Caption = 'UNID.DE MED.'
          DataBinding.FieldName = 'unidade'
          HeaderAlignmentHorz = taCenter
          Width = 116
        end
      end
      object lv1: TcxGridLevel
        GridView = tbv1
      end
    end
    object cxDBMemo1: TcxDBMemo
      Left = 1
      Top = 280
      Align = alBottom
      DataBinding.DataField = 'texto'
      DataBinding.DataSource = DSSpedTabela
      ParentFont = False
      TabOrder = 1
      Height = 58
      Width = 555
    end
  end
  inherited ini: TFormStorage
    Left = 408
    Top = 104
  end
  inherited FR: TFormResizer
    Left = 336
    Top = 88
  end
  inherited EnterTab: TACBrEnterTab
    Left = 280
    Top = 80
  end
  object DSSpedTabela: TDataSource
    DataSet = DM.QSped_Tabela
    Left = 272
    Top = 208
  end
end
