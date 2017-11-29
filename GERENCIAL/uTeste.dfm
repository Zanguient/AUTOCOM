inherited frmteste: Tfrmteste
  Caption = 'frmteste'
  ExplicitWidth = 608
  ExplicitHeight = 410
  PixelsPerInch = 96
  TextHeight = 15
  object DBGrid1: TDBGrid [2]
    Left = 40
    Top = 40
    Width = 449
    Height = 120
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
  end
  object DBMemo1: TDBMemo [3]
    Left = 48
    Top = 192
    Width = 449
    Height = 113
    DataField = 'texto'
    DataSource = DataSource1
    TabOrder = 3
  end
  object grd: TcxGrid [4]
    Left = 0
    Top = 0
    Width = 602
    Height = 339
    Align = alClient
    TabOrder = 4
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    ExplicitLeft = -30
    ExplicitWidth = 632
    ExplicitHeight = 221
    object tbv: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataModeController.GridMode = True
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsSelection.InvertSelect = False
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
        Width = 29
      end
      object tbvcst: TcxGridDBColumn
        DataBinding.FieldName = 'cst'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'cst'
          end>
        Properties.ListSource = DM.dsCST
        HeaderAlignmentHorz = taCenter
      end
      object tbvicms_pc: TcxGridDBColumn
        Caption = 'AL'#205'Q.'
        DataBinding.FieldName = 'icms_pc'
        HeaderAlignmentHorz = taCenter
      end
      object tbvreduzir: TcxGridDBColumn
        Caption = 'RED.'
        DataBinding.FieldName = 'reduzir'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        Width = 33
      end
      object tbvtexto: TcxGridDBColumn
        Caption = 'INFORMA'#199#195'O COMPLEMENTAR'
        DataBinding.FieldName = 'texto'
        HeaderAlignmentHorz = taCenter
        Width = 347
      end
    end
    object lv: TcxGridLevel
      GridView = tbv
    end
  end
  object DataSource1: TDataSource
    DataSet = DM.QInfo_compl
    Left = 240
    Top = 152
  end
end
