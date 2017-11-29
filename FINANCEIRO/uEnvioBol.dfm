inherited frmEnvioBol: TfrmEnvioBol
  Caption = 'ENVIO DE BOLETOS POR E-MAIL'
  ClientHeight = 238
  ExplicitWidth = 608
  ExplicitHeight = 266
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 196
    ExplicitTop = 196
    inherited pnlBase: TPanel
      object btnEnviar: TcxButton
        AlignWithMargins = True
        Left = 426
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'Enviar'
        TabOrder = 0
        OnClick = btnEnviarClick
      end
      object Bar1: TcxProgressBar
        AlignWithMargins = True
        Left = 3
        Top = 5
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alLeft
        TabOrder = 1
        Visible = False
        Width = 401
      end
    end
  end
  object grd: TcxGrid [2]
    Left = 0
    Top = 0
    Width = 602
    Height = 196
    Align = alClient
    TabOrder = 2
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    object tbv: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
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
      OptionsSelection.InvertSelect = False
      OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
      OptionsView.ScrollBars = ssVertical
      OptionsView.CellAutoHeight = True
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clYellow
      object tbvenviar: TcxGridDBColumn
        Caption = 'ENVIAR'
        DataBinding.FieldName = 'enviar'
        PropertiesClassName = 'TcxCheckBoxProperties'
        HeaderAlignmentHorz = taCenter
        Width = 51
      end
      object tbvnome: TcxGridDBColumn
        Caption = 'RAZ'#195'O SOCIAL/NOME COMPLETO'
        DataBinding.FieldName = 'nome'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 252
      end
      object tbvemail: TcxGridDBColumn
        Caption = 'e-MAIL'
        DataBinding.FieldName = 'email'
        HeaderAlignmentHorz = taCenter
        Width = 263
      end
    end
    object lv: TcxGridLevel
      GridView = tbv
    end
  end
  inherited ini: TFormStorage
    Left = 16
    Top = 64
  end
  inherited FR: TFormResizer
    Top = 64
  end
  inherited EnterTab: TACBrEnterTab
    Left = 80
    Top = 72
  end
  object DS1: TDataSource
    DataSet = cd1
    Left = 224
    Top = 56
  end
  object cd1: TFDMemTable
    Active = True
    BeforePost = cd1BeforePost
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 176
    Top = 56
    object cd1id: TIntegerField
      FieldName = 'id'
    end
    object cd1nome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object cd1email: TStringField
      FieldName = 'email'
      Size = 150
    end
    object cd1enviar: TBooleanField
      FieldName = 'enviar'
    end
  end
end
