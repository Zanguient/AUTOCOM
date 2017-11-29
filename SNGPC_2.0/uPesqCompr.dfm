object frmPesqCompr: TfrmPesqCompr
  Left = 0
  Top = 0
  ActiveControl = edPesq
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PESQUISAR COMPRADORES'
  ClientHeight = 309
  ClientWidth = 404
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 259
    Width = 404
    Height = 50
    Align = alBottom
    TabOrder = 0
    object btnFechar: TcxButton
      AlignWithMargins = True
      Left = 354
      Top = 4
      Width = 48
      Height = 42
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      Caption = 'Sair'
      ModalResult = 2
      TabOrder = 0
    end
    object edPesq: TcxTextEdit
      Left = 7
      Top = 20
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edPesqPropertiesChange
      TabOrder = 1
      Width = 283
    end
    object lblPesqMovi: TcxLabel
      Left = 7
      Top = 4
      Caption = 'Pesquisar'
      ParentFont = False
      Transparent = True
    end
    object cxButton1: TcxButton
      AlignWithMargins = True
      Left = 304
      Top = 4
      Width = 48
      Height = 42
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 3
    end
  end
  object grdPerda: TcxGrid
    Left = 0
    Top = 0
    Width = 404
    Height = 259
    Align = alClient
    TabOrder = 1
    TabStop = False
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    object tbv: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataModeController.GridMode = True
      DataController.DataSource = DM.DSPesqCompr
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.InvertSelect = False
      OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
      OptionsView.ScrollBars = ssVertical
      OptionsView.CellAutoHeight = True
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clYellow
      object tbvcomprador: TcxGridDBColumn
        DataBinding.FieldName = 'comprador'
        HeaderAlignmentHorz = taCenter
        Width = 243
      end
      object tbvdoc: TcxGridDBColumn
        DataBinding.FieldName = 'doc'
        HeaderAlignmentHorz = taCenter
        Width = 130
      end
    end
    object lvPerda: TcxGridLevel
      GridView = tbv
    end
  end
end
