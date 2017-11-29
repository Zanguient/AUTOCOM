inherited frmIntBal: TfrmIntBal
  Left = 240
  Top = 175
  Hint = 'INTEGRA'#199#195'O COM BALAN'#199'AS'
  Caption = 'frmIntBal'
  ClientHeight = 573
  ClientWidth = 733
  Position = poDesigned
  ExplicitWidth = 739
  ExplicitHeight = 601
  PixelsPerInch = 96
  TextHeight = 15
  object RxLabel1: TRxLabel [0]
    Left = 1
    Top = 0
    Width = 172
    Height = 14
    Margins.Bottom = 0
    Caption = 'RELA'#199#195'O PRODUTO/TECLADO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object cxGrid1: TcxGrid [1]
    Left = 157
    Top = 376
    Width = 369
    Height = 147
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    LookAndFeel.Kind = lfOffice11
    object tbv: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      FilterBox.Visible = fvNever
      OnCellClick = tbvCellClick
      DataController.DataSource = DS1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Deleting = False
      OptionsSelection.InvertSelect = False
      OptionsView.NavigatorOffset = 100
      OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
      OptionsView.ScrollBars = ssVertical
      OptionsView.ShowEditButtons = gsebForFocusedRecord
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      object tbvsessao: TcxGridDBColumn
        DataBinding.FieldName = 'sessao'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
      end
      object tbvbalanca: TcxGridDBColumn
        DataBinding.FieldName = 'balanca'
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object tbvtransferir: TcxGridDBColumn
        DataBinding.FieldName = 'transferir'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = 'Sim'
        Properties.DisplayUnchecked = 'N'#227'o'
        Properties.DisplayGrayed = 'N'#227'o'
        Properties.ImmediatePost = True
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tbv
    end
  end
  object cxGrid2: TcxGrid [2]
    Left = 0
    Top = 18
    Width = 735
    Height = 313
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    LookAndFeel.Kind = lfOffice11
    object tbv1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      FilterBox.Visible = fvNever
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = DS2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.NavigatorOffset = 100
      OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
      OptionsView.ScrollBars = ssVertical
      OptionsView.ShowEditButtons = gsebForFocusedRecord
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      object tbv1cod_barra: TcxGridDBColumn
        Caption = 'C'#211'DIGO'
        DataBinding.FieldName = 'cod_barra'
        OnCustomDrawCell = tbv1cod_barraCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 97
      end
      object tbv1nome: TcxGridDBColumn
        Caption = 'DESCRI'#199#195'O'
        DataBinding.FieldName = 'nome'
        OnCustomDrawCell = tbv1cod_barraCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 396
      end
      object tbv1validade: TcxGridDBColumn
        DataBinding.FieldName = 'validade'
        HeaderAlignmentHorz = taCenter
      end
      object tbv1tecla_a: TcxGridDBColumn
        Caption = 'T. ATUAL'
        DataBinding.FieldName = 'tecla_a'
        OnCustomDrawCell = tbv1cod_barraCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 70
      end
      object tbv1tecla_n: TcxGridDBColumn
        Caption = 'T. NOVA'
        DataBinding.FieldName = 'tecla_n'
        HeaderAlignmentHorz = taCenter
        Width = 59
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = tbv1
    end
  end
  object g1: TDBCtrlGrid [3]
    Left = 0
    Top = 331
    Width = 710
    Height = 36
    AllowDelete = False
    AllowInsert = False
    ColCount = 63
    Color = 15461355
    DataSource = DS3
    PanelHeight = 12
    PanelWidth = 11
    ParentColor = False
    ParentShowHint = False
    TabOrder = 3
    TabStop = False
    SelectedColor = 8454143
    ShowHint = True
    OnClick = g1Click
    OnPaintPanel = g1PaintPanel
    object Shape1: TShape
      Left = 0
      Top = 0
      Width = 11
      Height = 12
      Align = alClient
      ExplicitWidth = 12
      ExplicitHeight = 13
    end
    object dbt1: TDBText
      Left = 0
      Top = 0
      Width = 11
      Height = 12
      Align = alClient
      Alignment = taCenter
      Color = 5677033
      DataField = 'tecla'
      DataSource = DS3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      OnMouseEnter = dbt1MouseEnter
      ExplicitWidth = 12
      ExplicitHeight = 13
    end
  end
  object Button1: TButton [4]
    Left = 660
    Top = 1
    Width = 24
    Height = 15
    Caption = '-'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton [5]
    Tag = 1
    Left = 691
    Top = 1
    Width = 24
    Height = 15
    Caption = '+'
    TabOrder = 5
    OnClick = Button1Click
  end
  inherited TPA: TPanel
    Top = 531
    Width = 733
    ExplicitTop = 531
    ExplicitWidth = 733
    inherited pnlBtnClose: TPanel
      Left = 639
      ExplicitLeft = 639
    end
    inherited pnlBase: TPanel
      Width = 638
      ExplicitWidth = 638
      object Label1: TRxLabel
        Left = 84
        Top = 11
        Width = 170
        Height = 14
        Margins.Bottom = 0
        Caption = 'Selecione o modelo da balan'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object btnF6: TcxButton
        AlignWithMargins = True
        Left = 545
        Top = 2
        Width = 91
        Height = 32
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alRight
        Caption = 'EXPORTAR'
        Enabled = False
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = 'Office2007Silver'
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Spacing = -10
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnF6Click
      end
      object cmb1: TComboBox
        Left = 269
        Top = 7
        Width = 177
        Height = 23
        BevelKind = bkSoft
        TabOrder = 1
        OnClick = cmb1Click
      end
      object cxButton1: TcxButton
        Left = 449
        Top = 7
        Width = 23
        Height = 23
        Hint = 'Abre o cadastro de Balan'#231'as'
        Caption = '>>'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        OnClick = cxButton1Click
      end
    end
  end
  inherited Edit1: TEdit
    Left = 649
    Top = 112
    ExplicitLeft = 649
    ExplicitTop = 112
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'tbvbalanca.Width'
      'tbvsessao.Width'
      'tbvtransferir.Width'
      'tbv1nome.Width'
      'tbv1cod_barra.Width')
    Left = 63
    Top = 90
  end
  inherited FR: TFormResizer
    Left = 40
    Top = 48
  end
  inherited EnterTab: TACBrEnterTab
    Top = 40
  end
  object DS1: TDataSource
    DataSet = T1
    Left = 82
    Top = 138
  end
  object DS2: TDataSource
    DataSet = T2
    Left = 82
    Top = 186
  end
  object DS3: TDataSource
    DataSet = T3
    Left = 82
    Top = 238
  end
  object T1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 32
    Top = 136
    object T1sessao: TStringField
      DisplayLabel = 'SESS'#195'O'
      DisplayWidth = 20
      FieldName = 'sessao'
    end
    object T1balanca: TStringField
      DisplayLabel = 'BALAN'#199'A'
      DisplayWidth = 20
      FieldName = 'balanca'
    end
    object T1transferir: TBooleanField
      DisplayLabel = 'TRANSFERIR'
      DisplayWidth = 5
      FieldName = 'transferir'
    end
    object T1id: TIntegerField
      DisplayWidth = 10
      FieldName = 'id'
    end
  end
  object T3: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 32
    Top = 184
    object T3tecla: TIntegerField
      DisplayWidth = 10
      FieldName = 'tecla'
    end
    object T3teclareal: TIntegerField
      DisplayWidth = 10
      FieldName = 'teclareal'
    end
    object T3usado: TBooleanField
      DisplayWidth = 5
      FieldName = 'usado'
    end
    object T3repetido: TBooleanField
      DisplayWidth = 5
      FieldName = 'repetido'
    end
  end
  object T2: TFDMemTable
    AfterPost = T2AfterPost
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 32
    Top = 232
    object T2id: TIntegerField
      DisplayWidth = 10
      FieldName = 'id'
    end
    object T2cod_barra: TStringField
      DisplayWidth = 20
      FieldName = 'cod_barra'
    end
    object T2nome: TStringField
      DisplayWidth = 50
      FieldName = 'nome'
      Size = 50
    end
    object T2tecla_a: TIntegerField
      DisplayWidth = 10
      FieldName = 'tecla_a'
    end
    object T2tecla_n: TIntegerField
      DisplayWidth = 10
      FieldName = 'tecla_n'
      OnValidate = T2tecla_nValidate
    end
    object T2validade: TIntegerField
      DisplayLabel = 'VALID.'
      FieldName = 'validade'
    end
  end
end
