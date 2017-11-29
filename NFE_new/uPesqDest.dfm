inherited frmPesqDest: TfrmPesqDest
  Caption = 'Pesquisar Destin'#225'rio/Emitente'
  ClientHeight = 434
  ClientWidth = 778
  OnKeyDown = FormKeyDown
  ExplicitWidth = 784
  ExplicitHeight = 463
  PixelsPerInch = 96
  TextHeight = 15
  object g1: TcxGrid [0]
    Left = 0
    Top = 0
    Width = 778
    Height = 369
    Align = alClient
    TabOrder = 2
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    object tbv: TcxGridDBTableView
      FilterBox.CustomizeDialog = False
      FilterBox.Visible = fvNever
      OnCellClick = tbvCellClick
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.SyncMode = False
      DataController.DataSource = DSDest_NF
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
      OptionsCustomize.ColumnMoving = False
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
      object tbvcnpj: TcxGridDBColumn
        Caption = 'CNPJ'
        DataBinding.FieldName = 'cnpj'
        HeaderAlignmentHorz = taCenter
        Width = 112
        OnHeaderClick = tbvcnpjHeaderClick
      end
      object tbvnome: TcxGridDBColumn
        Caption = 'NOME FANTASIA'
        DataBinding.FieldName = 'nome'
        HeaderAlignmentHorz = taCenter
        Width = 211
        OnHeaderClick = tbvcnpjHeaderClick
      end
      object tbvrazaosocial: TcxGridDBColumn
        Tag = 1
        Caption = 'RAZ'#195'O SOCIAL'
        DataBinding.FieldName = 'razaosocial'
        HeaderAlignmentHorz = taCenter
        Width = 221
        OnHeaderClick = tbvcnpjHeaderClick
      end
      object tbvcidade: TcxGridDBColumn
        Caption = 'MUNIC'#205'PIO'
        DataBinding.FieldName = 'cidade'
        HeaderAlignmentHorz = taCenter
        Width = 162
        OnHeaderClick = tbvcnpjHeaderClick
      end
      object tbvuf: TcxGridDBColumn
        Caption = 'UF'
        DataBinding.FieldName = 'uf'
        HeaderAlignmentHorz = taCenter
        Width = 33
      end
    end
    object g1Lvl1: TcxGridLevel
      GridView = tbv
    end
  end
  inherited TPA: TPanel
    Top = 369
    Width = 778
    Height = 65
    ExplicitTop = 369
    ExplicitWidth = 778
    ExplicitHeight = 65
    inherited pnlBtnClose: TPanel
      Left = 684
      Height = 59
      ExplicitLeft = 684
      ExplicitHeight = 59
      inherited btnSair: TcxButton
        Height = 53
        ExplicitHeight = 53
      end
    end
    inherited pnlBase: TPanel
      Width = 683
      Height = 59
      ExplicitWidth = 683
      ExplicitHeight = 59
      object lblPesq: TcxLabel
        Left = 6
        Top = -1
        Caption = 'PESQUISAR POR:'
        Style.Shadow = False
        Properties.LabelStyle = cxlsLowered
        Transparent = True
      end
      object edPesq: TcxTextEdit
        Tag = 473
        Left = 7
        Top = 18
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
        Width = 562
      end
      object cxLabel1: TcxLabel
        Left = 7
        Top = 40
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
      object btnOK: TcxButton
        AlignWithMargins = True
        Left = 584
        Top = 3
        Width = 96
        Height = 53
        Align = alRight
        Caption = 'F11 - OK'
        ModalResult = 1
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 3
        TabStop = False
      end
    end
  end
  inherited ini: TFormStorage
    Left = 384
    Top = 308
  end
  inherited EnterTab: TACBrEnterTab
    Left = 444
    Top = 312
  end
  object DSDest_NF: TMyDataSource
    AutoEdit = False
    DataSet = DM_serv.QDest_NF
    Left = 460
    Top = 164
  end
end
