object frmListaVL: TfrmListaVL
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Vida Link'
  ClientHeight = 306
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 268
    Width = 417
    Height = 38
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 2
      Width = 53
      Height = 13
      Caption = 'N'#186' Autoriz.'
    end
    object Label2: TLabel
      Left = 82
      Top = 2
      Width = 102
      Height = 13
      Caption = 'Nome do Conveniado'
    end
    object cxDBTextEdit1: TDBText
      Left = 8
      Top = 18
      Width = 73
      Height = 21
      Color = clBtnFace
      DataField = 'Nautor'
      DataSource = DMVLink.DSTVL
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object cxDBTextEdit2: TDBText
      Left = 82
      Top = 18
      Width = 183
      Height = 21
      Color = clBtnFace
      DataField = 'NomeConveniado'
      DataSource = DMVLink.DSTVL
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object btnf11: TcxButton
      AlignWithMargins = True
      Left = 270
      Top = 3
      Width = 69
      Height = 32
      Margins.Left = 2
      Margins.Top = 2
      Margins.Bottom = 2
      Align = alRight
      Caption = 'F11 CONCLUIR'
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 1
      OptionsImage.Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object cxButton1: TcxButton
      AlignWithMargins = True
      Left = 344
      Top = 3
      Width = 69
      Height = 32
      Margins.Left = 2
      Margins.Top = 2
      Margins.Bottom = 2
      Align = alRight
      Caption = 'ESC -  SAIR'
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 2
      OptionsImage.Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
  end
  object g1: TcxGrid
    Left = 0
    Top = 0
    Width = 417
    Height = 268
    Align = alClient
    TabOrder = 1
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    LookAndFeel.Kind = lfOffice11
    object tbv: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      FilterBox.Visible = fvNever
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.SyncMode = False
      DataController.DataSource = DMVLink.DSTVLITENS
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
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
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
      object tbvItem: TcxGridDBColumn
        Caption = 'ITEM'
        DataBinding.FieldName = 'Item'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tbvEAN: TcxGridDBColumn
        Caption = 'C'#211'DIGO MEDICAM.'
        DataBinding.FieldName = 'EAN'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 119
      end
      object tbvQtd: TcxGridDBColumn
        Caption = 'QTD'
        DataBinding.FieldName = 'Qtd'
        HeaderAlignmentHorz = taCenter
      end
      object tbvvrVenda: TcxGridDBColumn
        Caption = 'VALOR'
        DataBinding.FieldName = 'vrVenda'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 91
      end
      object tbvprocessado: TcxGridDBColumn
        Caption = '$'
        DataBinding.FieldName = 'processado'
        PropertiesClassName = 'TcxCheckBoxProperties'
        HeaderAlignmentHorz = taCenter
      end
    end
    object g1Lvl1: TcxGridLevel
      GridView = tbv
    end
  end
end
