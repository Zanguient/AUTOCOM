inherited frmCadCST: TfrmCadCST
  Caption = 'AUTOCOM GERENCIAL - CADASTRO DE CST'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgCad: TcxPageControl
    Height = 297
    ExplicitHeight = 297
    ClientRectBottom = 297
    inherited TabCad: TcxTabSheet
      ExplicitTop = 26
      ExplicitWidth = 640
      ExplicitHeight = 271
      inherited dbNav: TcxDBNavigator
        Top = 245
        ExplicitTop = 245
      end
    end
    inherited TabPesq: TcxTabSheet
      Caption = 'CST ICMS'
      ExplicitHeight = 271
      inherited grd: TcxGrid
        Height = 225
        ExplicitHeight = 225
        inherited tbv: TcxGridDBTableView
          OptionsData.Editing = True
          OptionsData.Inserting = True
          OptionsSelection.CellSelect = True
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 39
          end
          object tbvcst: TcxGridDBColumn
            DataBinding.FieldName = 'cst'
            HeaderAlignmentHorz = taCenter
            Width = 43
          end
          object tbvacbr: TcxGridDBColumn
            DataBinding.FieldName = 'acbr'
            HeaderAlignmentHorz = taCenter
            Width = 53
          end
          object tbvnome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 408
          end
          object tbvst: TcxGridDBColumn
            DataBinding.FieldName = 'st'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 29
          end
          object tbvSimplesNacional: TcxGridDBColumn
            DataBinding.FieldName = 'SimplesNacional'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 26
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 225
        Visible = False
        ExplicitTop = 225
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
    object tabipi: TcxTabSheet
      Caption = 'CST IPI'
      ImageIndex = 2
      object gipi: TcxGrid
        Left = 0
        Top = 0
        Width = 640
        Height = 271
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Coffee'
        object tbvipi: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnCellClick = tbvCellClick
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DM.DSIPI
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
          object tbvipiid: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 26
          end
          object tbvipicst: TcxGridDBColumn
            DataBinding.FieldName = 'cst'
            HeaderAlignmentHorz = taCenter
            Width = 37
          end
          object tbvipinome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 373
          end
          object tbvipiacbr: TcxGridDBColumn
            Caption = #205'NDICE'
            DataBinding.FieldName = 'acbr'
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object tbvipidestaca_valor: TcxGridDBColumn
            DataBinding.FieldName = 'destaca_valor'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 104
          end
        end
        object lvipi: TcxGridLevel
          GridView = tbvipi
        end
      end
    end
    object tabpis: TcxTabSheet
      Caption = 'CST PIS'
      ImageIndex = 3
      object gpis: TcxGrid
        Left = 0
        Top = 0
        Width = 640
        Height = 271
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Coffee'
        object tbvpis: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnCellClick = tbvCellClick
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DM.DSPIS
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
          object tbvpisid: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 32
          end
          object tbvpiscst: TcxGridDBColumn
            DataBinding.FieldName = 'cst'
            HeaderAlignmentHorz = taCenter
            Width = 36
          end
          object tbvpisnome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 382
          end
          object tbvpisacbr: TcxGridDBColumn
            Caption = #205'NDICE'
            DataBinding.FieldName = 'acbr'
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object tbvpisdestaca_valor: TcxGridDBColumn
            DataBinding.FieldName = 'destaca_valor'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 94
          end
        end
        object lvpis: TcxGridLevel
          GridView = tbvpis
        end
      end
    end
    object tabcofins: TcxTabSheet
      Caption = 'CST COFINS'
      ImageIndex = 4
      object gcofins: TcxGrid
        Left = 0
        Top = 0
        Width = 640
        Height = 271
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Coffee'
        object tbvcofins: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnCellClick = tbvCellClick
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DM.DSCOFINS
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
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 32
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'cst'
            HeaderAlignmentHorz = taCenter
            Width = 36
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 382
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = #205'NDICE'
            DataBinding.FieldName = 'acbr'
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'destaca_valor'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 94
          end
        end
        object lvcofins: TcxGridLevel
          GridView = tbvcofins
        end
      end
    end
  end
  object Panel4: TPanel [3]
    Left = 0
    Top = 297
    Width = 640
    Height = 23
    Align = alBottom
    Color = 12189695
    ParentBackground = False
    TabOrder = 3
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'F5-NOVO   F6-EXCLUIR   F7-ALTERAR   F8-GRAVAR   F9-CANCELAR'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.WordWrap = True
      Width = 638
      AnchorX = 320
    end
    object CheckBox1: TCheckBox
      Left = 511
      Top = 2
      Width = 118
      Height = 17
      Caption = 'Simples Nacional'
      TabOrder = 1
      OnClick = CheckBox1Click
    end
  end
  inherited ini: TFormStorage
    Left = 192
    Top = 256
  end
  inherited DS1: TDataSource
    DataSet = DM.QCST
    Left = 328
    Top = 172
  end
  inherited FR: TFormResizer
    Left = 460
    Top = 160
  end
  inherited EnterTab: TACBrEnterTab
    Left = 392
    Top = 164
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
