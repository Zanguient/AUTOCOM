inherited frmPesqProduto: TfrmPesqProduto
  Caption = 'LISTAGEM DE PRODUTOS E SERVI'#199'OS'
  ClientHeight = 386
  ClientWidth = 805
  OnKeyDown = FormKeyDown
  ExplicitWidth = 811
  ExplicitHeight = 415
  PixelsPerInch = 96
  TextHeight = 15
  object g1: TcxGrid [0]
    Left = 0
    Top = 0
    Width = 805
    Height = 325
    Align = alClient
    TabOrder = 2
    TabStop = False
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    object tbv: TcxGridDBTableView
      FilterBox.CustomizeDialog = False
      FilterBox.Visible = fvNever
      OnCellClick = tbvCellClick
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.SyncMode = False
      DataController.DataSource = DSProduto
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
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
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.NoDataToDisplayInfoText = '[[ VAZIO ]]'
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
        Width = 50
        OnHeaderClick = tbvidHeaderClick
      end
      object tbvgtin: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'gtin'
        HeaderAlignmentHorz = taCenter
        OnHeaderClick = tbvidHeaderClick
      end
      object tbvcod_fabr: TcxGridDBColumn
        Caption = 'C'#211'D SECUND.'
        DataBinding.FieldName = 'cod_fabr'
        HeaderAlignmentHorz = taCenter
        Width = 112
        OnHeaderClick = tbvidHeaderClick
      end
      object tbvxprod: TcxGridDBColumn
        Caption = 'DESCRI'#199#195'O DO PRODUTO/SERV.'
        DataBinding.FieldName = 'xprod'
        HeaderAlignmentHorz = taCenter
        Width = 262
        OnHeaderClick = tbvidHeaderClick
      end
      object tbvvr_custo_nf: TcxGridDBColumn
        Caption = 'VR CUSTO'
        DataBinding.FieldName = 'vr_custo_nf'
        HeaderAlignmentHorz = taCenter
        Width = 97
      end
      object tbvvrunit: TcxGridDBColumn
        Caption = 'VR UNIT'
        DataBinding.FieldName = 'vrunit'
        HeaderAlignmentHorz = taCenter
      end
      object tbvvrunitpz: TcxGridDBColumn
        Caption = 'VR UN PRZ'
        DataBinding.FieldName = 'vrunitpz'
        HeaderAlignmentHorz = taCenter
        Width = 96
      end
    end
    object g1Lvl1: TcxGridLevel
      GridView = tbv
    end
  end
  inherited TPA: TPanel
    Top = 325
    Width = 805
    Height = 61
    ExplicitTop = 325
    ExplicitWidth = 805
    ExplicitHeight = 61
    inherited pnlBtnClose: TPanel
      Left = 711
      Height = 55
      ExplicitLeft = 711
      ExplicitHeight = 55
      inherited btnSair: TcxButton
        Height = 49
        ExplicitHeight = 49
      end
    end
    inherited pnlBase: TPanel
      Width = 710
      Height = 55
      ExplicitWidth = 710
      ExplicitHeight = 55
      object lblPesq: TcxLabel
        Left = 6
        Top = 0
        Caption = 'PESQUISAR POR:'
        Style.Shadow = False
        Properties.LabelStyle = cxlsLowered
        Transparent = True
      end
      object edPesq: TcxTextEdit
        Tag = 473
        Left = 7
        Top = 17
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 48
        Properties.OnChange = edPesqPropertiesChange
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -13
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        OnKeyDown = edPesqKeyDown
        Width = 510
      end
      object cxLabel1: TcxLabel
        Left = 7
        Top = 39
        Caption = 'Tecle ? para exibir todos os registros'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -9
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = []
        Style.Shadow = False
        Style.IsFontAssigned = True
        Properties.LabelStyle = cxlsLowered
        Transparent = True
      end
      object btnCadastro: TcxButton
        AlignWithMargins = True
        Left = 527
        Top = 3
        Width = 95
        Height = 49
        Align = alRight
        Caption = 'F2 - CADASTRO'
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 3
        TabStop = False
        OnClick = btnCadastroClick
      end
      object btnok: TcxButton
        AlignWithMargins = True
        Left = 628
        Top = 3
        Width = 79
        Height = 49
        Align = alRight
        Caption = 'F11 - OK'
        ModalResult = 1
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 4
        TabStop = False
      end
    end
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'tbvxprod.Tag'
      'tbvvrunitpz.Tag'
      'tbvvrunit.Tag'
      'tbvvr_custo_nf.Tag'
      'tbvid.Tag'
      'tbvgtin.Tag'
      'tbvcod_fabr.Tag')
  end
  object DSProduto: TMyDataSource
    AutoEdit = False
    DataSet = DM_serv.QProduto
    Left = 528
    Top = 168
  end
end
