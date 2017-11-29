inherited frmCad: TfrmCad
  Caption = 'frmCad'
  ClientHeight = 352
  ClientWidth = 640
  OnCloseQuery = FormCloseQuery
  OnKeyUp = FormKeyUp
  ExplicitWidth = 646
  ExplicitHeight = 380
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 320
    Width = 640
    Height = 32
    ExplicitTop = 320
    ExplicitWidth = 640
    ExplicitHeight = 32
    inherited pnlBtnClose: TPanel
      Left = 552
      Width = 83
      Height = 26
      ExplicitLeft = 552
      ExplicitWidth = 83
      ExplicitHeight = 26
      inherited btnSair: TcxButton
        Left = 4
        Top = 1
        Height = 24
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        ExplicitLeft = 4
        ExplicitTop = 1
        ExplicitHeight = 24
      end
    end
    inherited pnlBase: TPanel
      Width = 551
      Height = 26
      ExplicitWidth = 551
      ExplicitHeight = 26
      object pnlbasebotton: TPanel
        Left = 47
        Top = 0
        Width = 504
        Height = 26
        Align = alClient
        TabOrder = 0
        object Bar1: TdxStatusBar
          Left = 1
          Top = 5
          Width = 502
          Height = 20
          Panels = <
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              PanelStyle.Alignment = taCenter
              Text = 'INATIVO'
              Width = 150
            end
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              PanelStyle.Alignment = taCenter
            end>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
        end
      end
      object btnReset: TcxButton
        AlignWithMargins = True
        Left = 1
        Top = 1
        Width = 45
        Height = 24
        Hint = 'Restaura o tamanho das colunas na lista'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = 'Padr'#227'o'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        OnClick = btnResetClick
      end
    end
  end
  object pgCad: TcxPageControl [1]
    Left = 0
    Top = 0
    Width = 640
    Height = 320
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = TabPesq
    Properties.CustomButtons.Buttons = <>
    OnPageChanging = pgCadPageChanging
    ClientRectBottom = 316
    ClientRectLeft = 4
    ClientRectRight = 636
    ClientRectTop = 26
    object TabCad: TcxTabSheet
      Caption = 'CADASTRO'
      ImageIndex = 0
      OnShow = TabCadShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbNav: TcxDBNavigator
        AlignWithMargins = True
        Left = 3
        Top = 268
        Width = 632
        Height = 23
        Buttons.CustomButtons = <>
        Buttons.First.Visible = False
        Buttons.PriorPage.Visible = False
        Buttons.Prior.Visible = False
        Buttons.Next.Visible = False
        Buttons.NextPage.Visible = False
        Buttons.Last.Visible = False
        Buttons.Insert.Hint = 'F5 - Novo Registro'
        Buttons.Insert.Visible = True
        Buttons.Delete.Hint = 'F6 - Excluir  Registro'
        Buttons.Delete.Visible = True
        Buttons.Edit.Hint = 'F7 - Alterar Registro'
        Buttons.Post.Hint = 'F8 - Gravar Registro'
        Buttons.Cancel.Hint = 'F9 - Cancelar Mudan'#231'as no Registro'
        Buttons.Refresh.Visible = False
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Visible = False
        DataSource = DS1
        Align = alBottom
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
    end
    object TabPesq: TcxTabSheet
      Caption = 'PESQUISA'
      ImageIndex = 1
      OnShow = TabPesqShow
      ExplicitLeft = 0
      ExplicitWidth = 640
      ExplicitHeight = 294
      object grd: TcxGrid
        Left = 0
        Top = 0
        Width = 632
        Height = 244
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 640
        ExplicitHeight = 248
        object tbv: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnCellClick = tbvCellClick
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
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
          OptionsView.ScrollBars = ssVertical
          OptionsView.CellAutoHeight = True
          OptionsView.GridLineColor = clBlack
          OptionsView.GroupByBox = False
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clYellow
          Styles.Content = cxStyle3
          Styles.ContentEven = cxStyle2
          Styles.ContentOdd = cxStyle1
          Styles.IncSearch = cxStyle3
          Styles.Inactive = cxStyle3
          Styles.Indicator = cxStyle3
          Styles.Preview = cxStyle3
          Styles.Selection = cxStyle3
        end
        object lv: TcxGridLevel
          GridView = tbv
        end
      end
      object pnlPesq: TPanel
        Left = 0
        Top = 244
        Width = 632
        Height = 46
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 248
        ExplicitWidth = 640
        object edPesq: TcxTextEdit
          Left = 4
          Top = 21
          ParentFont = False
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          OnEnter = edPesqEnter
          OnExit = edPesqExit
          OnKeyDown = edPesqKeyDown
          Width = 365
        end
        object lblPesq: TcxLabel
          Left = 5
          Top = 5
          Caption = 'PESQUISAR POR:'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
      end
    end
  end
  inherited Edit1: TEdit
    Left = 188
    Top = 1
    Width = 437
    TabOrder = 2
    Text = 'nao mexer N'#195'O MUDAR FOCO DA ABA PESQUISA'
    ExplicitLeft = 188
    ExplicitTop = 1
    ExplicitWidth = 437
  end
  inherited ini: TFormStorage
    Left = 40
    Top = 192
  end
  object DS1: TDataSource [4]
    AutoEdit = False
    OnStateChange = DS1StateChange
    Left = 104
    Top = 192
  end
  inherited FR: TFormResizer
    Left = 208
    Top = 192
  end
  inherited EnterTab: TACBrEnterTab
    Left = 160
    Top = 192
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 64
    Top = 48
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 13750693
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clYellow
      TextColor = clBlack
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
  end
end
