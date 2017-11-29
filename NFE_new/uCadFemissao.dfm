inherited frmCadFemissao: TfrmCadFemissao
  Caption = 'Cadastro de Formas de Emiss'#227'o'
  ClientHeight = 276
  ClientWidth = 474
  ExplicitWidth = 480
  ExplicitHeight = 305
  PixelsPerInch = 96
  TextHeight = 15
  object g1: TcxGrid [0]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 468
    Height = 228
    Align = alClient
    TabOrder = 2
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    LookAndFeel.SkinName = ''
    object tbv: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      FilterBox.Visible = fvNever
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.SyncMode = False
      DataController.DataSource = DM_NFE.DSFEmissao
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
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.NoDataToDisplayInfoText = '[[ VAZIO ]]'
      OptionsView.CellAutoHeight = True
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clYellow
      object tbvid: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id'
        HeaderAlignmentHorz = taCenter
        Width = 34
      end
      object tbvnome: TcxGridDBColumn
        Caption = 'DESCRI'#199#195'O'
        DataBinding.FieldName = 'nome'
        HeaderAlignmentHorz = taCenter
        Width = 129
      end
      object tbvcNF: TcxGridDBColumn
        Caption = 'SEQ. CHAVE'
        DataBinding.FieldName = 'cNF'
        HeaderAlignmentHorz = taCenter
      end
      object tbvnNF: TcxGridDBColumn
        Caption = 'N'#186' NF'
        DataBinding.FieldName = 'nNF'
        HeaderAlignmentHorz = taCenter
        Width = 79
      end
      object tbvserie: TcxGridDBColumn
        Caption = 'S'#201'RIE'
        DataBinding.FieldName = 'serie'
        HeaderAlignmentHorz = taCenter
        Width = 59
      end
      object tbvlote: TcxGridDBColumn
        Caption = 'LOTE'
        DataBinding.FieldName = 'lote'
        HeaderAlignmentHorz = taCenter
        Width = 59
      end
    end
    object g1Lvl1: TcxGridLevel
      GridView = tbv
    end
  end
  inherited TPA: TPanel
    Top = 234
    Width = 474
    ExplicitTop = 234
    ExplicitWidth = 474
    inherited pnlBtnClose: TPanel
      Left = 380
      ExplicitLeft = 380
    end
    inherited pnlBase: TPanel
      Width = 379
      ExplicitWidth = 379
      object nav1: TcxDBNavigator
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 371
        Height = 30
        Buttons.CustomButtons = <>
        Buttons.First.Hint = '1'#186' REGISTRO'
        Buttons.First.ImageIndex = 9
        Buttons.First.Visible = False
        Buttons.PriorPage.Visible = False
        Buttons.Prior.Hint = 'REGISTRO ANTERIOR'
        Buttons.Prior.ImageIndex = 6
        Buttons.Prior.Visible = True
        Buttons.Next.Hint = 'PR'#211'XIMO REGISTRO'
        Buttons.Next.ImageIndex = 7
        Buttons.Next.Visible = True
        Buttons.NextPage.Visible = False
        Buttons.Last.Hint = #218'LTIMO REGISTRO'
        Buttons.Last.ImageIndex = 8
        Buttons.Last.Visible = False
        Buttons.Insert.Hint = 'NOVO F5)'
        Buttons.Insert.ImageIndex = 0
        Buttons.Append.Visible = False
        Buttons.Delete.Hint = 'EXCLUIR (F6)'
        Buttons.Delete.ImageIndex = 1
        Buttons.Edit.Hint = 'ALTERAR (F7)'
        Buttons.Edit.ImageIndex = 2
        Buttons.Post.Hint = 'GRAVAR (F8)'
        Buttons.Post.ImageIndex = 3
        Buttons.Cancel.Hint = 'CANCELAR (F9)'
        Buttons.Cancel.ImageIndex = 4
        Buttons.Refresh.Visible = False
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Visible = False
        DataSource = DM_NFE.DSFEmissao
        Align = alClient
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
    end
  end
end
