inherited frmConcluir: TfrmConcluir
  Caption = 'CONCLUS'#195'O DA VENDA'
  ClientHeight = 400
  ClientWidth = 478
  OnKeyPress = FormKeyPress
  ExplicitWidth = 484
  ExplicitHeight = 428
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 358
    Width = 478
    ExplicitTop = 358
    ExplicitWidth = 478
    inherited pnlBtnClose: TPanel
      Left = 352
      Width = 121
      ExplicitLeft = 352
      ExplicitWidth = 121
      inherited btnSair: TcxButton
        Left = 3
        Width = 115
        Align = alClient
        Caption = 'ESC - CANCELAR'
        TabStop = False
        ExplicitLeft = 3
        ExplicitWidth = 115
      end
    end
    inherited pnlBase: TPanel
      Width = 351
      ExplicitWidth = 351
      object btnf3: TcxButton
        AlignWithMargins = True
        Left = 2
        Top = 2
        Width = 78
        Height = 32
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 0
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'F3'#13#10'CLIENTES'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
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
        OnClick = btnf3Click
      end
      object btnf4: TcxButton
        AlignWithMargins = True
        Left = 82
        Top = 2
        Width = 69
        Height = 32
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 0
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'F4 '#13#10'A VISTA'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
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
        OnClick = btnf4Click
      end
      object btnF5: TcxButton
        AlignWithMargins = True
        Left = 153
        Top = 2
        Width = 88
        Height = 32
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 0
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'F5 - VENDEDOR'
        Enabled = False
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object btnF11: TcxButton
        AlignWithMargins = True
        Left = 243
        Top = 2
        Width = 106
        Height = 32
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alRight
        Caption = 'F11  - CONCLUIR'
        Enabled = False
        TabOrder = 3
        TabStop = False
        WordWrap = True
        OnClick = btnF11Click
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 52
    Width = 257
    Height = 306
    Align = alLeft
    TabOrder = 2
    object grd1: TcxGrid
      Left = 1
      Top = 26
      Width = 255
      Height = 279
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LevelTabs.Slants.Kind = skCutCorner
      LevelTabs.Style = 6
      LookAndFeel.Kind = lfOffice11
      ExplicitTop = 29
      ExplicitHeight = 276
      object tbv: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        FilterBox.Visible = fvNever
        OnEditKeyPress = tbvEditKeyPress
        OnEditKeyUp = tbvEditKeyUp
        DataController.DataModeController.GridMode = True
        DataController.DataSource = DSFPag
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'valor'
            Column = tbvvalor
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.DragHighlighting = False
        OptionsBehavior.DragOpening = False
        OptionsBehavior.DragScrolling = False
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.CopyPreviewToClipboard = False
        OptionsBehavior.ExpandMasterRowOnDblClick = False
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnHorzSizing = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NavigatorOffset = 100
        OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
        OptionsView.ScrollBars = ssNone
        OptionsView.DataRowHeight = 20
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.Footer = True
        OptionsView.GridLineColor = clBlack
        OptionsView.GroupByBox = False
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
        OptionsView.RowSeparatorColor = clBlack
        Preview.AutoHeight = False
        object tbvnome: TcxGridDBColumn
          Caption = 'TOTALIZADOR'
          DataBinding.FieldName = 'nome'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 150
        end
        object tbvvalor: TcxGridDBColumn
          Caption = 'VALOR'
          DataBinding.FieldName = 'valor'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
      end
      object grd1Level1: TcxGridLevel
        GridView = tbv
      end
    end
    object Label6: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'TOTALIZADORES'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.Shadow = True
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsLowered
      Properties.Orientation = cxoLeftBottom
      AnchorX = 129
    end
  end
  object Panel2: TPanel [3]
    Left = 257
    Top = 52
    Width = 221
    Height = 306
    Align = alClient
    TabOrder = 3
    object cxLabel4: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'VALOR A PAGAR'
    end
    object lblTotalPagar: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 23
      Align = alTop
      AutoSize = False
      Caption = '0,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -48
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.Shadow = True
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Depth = 2
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsLowered
      Properties.LineOptions.Visible = True
      Properties.Orientation = cxoLeftBottom
      Height = 69
      Width = 213
      AnchorX = 217
    end
    object cxLabel2: TcxLabel
      Left = 1
      Top = 143
      Align = alTop
      Caption = 'DIFEREN'#199'A'
      ExplicitTop = 145
    end
    object LblDif: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 165
      Align = alTop
      AutoSize = False
      Caption = '0,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.Shadow = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Depth = 1
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsLowered
      Properties.LineOptions.Visible = True
      Properties.Orientation = cxoLeftTop
      ExplicitTop = 167
      Height = 29
      Width = 213
      AnchorX = 217
    end
    object LblTroco: TcxLabel
      AlignWithMargins = True
      Left = 4
      Top = 219
      Align = alTop
      AutoSize = False
      Caption = '0,00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.Shadow = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Depth = 1
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsLowered
      Properties.LineOptions.Visible = True
      Properties.Orientation = cxoLeftTop
      ExplicitTop = 223
      Height = 29
      Width = 213
      AnchorX = 217
    end
    object Lbt1: TcxLabel
      Left = 1
      Top = 197
      Align = alTop
      Caption = 'TROCO'
      ExplicitTop = 199
    end
    object lblVrCompra: TcxLabel
      Left = 1
      Top = 114
      Align = alTop
      AutoSize = False
      Caption = '0,00 '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.Shadow = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Depth = 1
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsLowered
      Properties.LineOptions.Visible = True
      Properties.Orientation = cxoLeftTop
      ExplicitTop = 116
      Height = 29
      Width = 219
      AnchorX = 220
    end
    object cxLabel1: TcxLabel
      Left = 1
      Top = 95
      Align = alTop
      Caption = 'VALOR DA COMPRA'
    end
    object Panel3: TPanel
      Left = 1
      Top = 259
      Width = 219
      Height = 46
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 8
      object Panel4: TPanel
        Left = 144
        Top = 0
        Width = 75
        Height = 46
        Align = alRight
        TabOrder = 0
        object cxLabel3: TcxLabel
          Left = 1
          Top = 1
          Align = alClient
          Caption = 'Parcelado em  0X'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.WordWrap = True
          Visible = False
          Width = 73
          AnchorX = 38
          AnchorY = 23
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 144
        Height = 46
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
  end
  object Panel6: TPanel [4]
    Left = 0
    Top = 0
    Width = 478
    Height = 52
    Align = alTop
    TabOrder = 4
    object Label3: TLabel
      Left = 21
      Top = 2
      Width = 32
      Height = 15
      Caption = 'Nome:'
    end
    object Label4: TLabel
      Left = 10
      Top = 16
      Width = 46
      Height = 15
      Caption = 'R.Social:'
    end
    object Label5: TLabel
      Left = 16
      Top = 32
      Width = 38
      Height = 15
      Caption = 'Cidade:'
    end
    object DBText3: TDBText
      Left = 56
      Top = 32
      Width = 400
      Height = 17
      DataField = 'CIDADE'
      DataSource = DSCLi
    end
    object DBText2: TDBText
      Left = 56
      Top = 16
      Width = 400
      Height = 17
      DataField = 'RAZAOSOCIAL'
      DataSource = DSCLi
    end
    object DBText1: TDBText
      Left = 56
      Top = 2
      Width = 400
      Height = 17
      DataField = 'NOME'
      DataSource = DSCLi
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited ini: TFormStorage
    Left = 24
    Top = 152
  end
  inherited FR: TFormResizer
    Left = 64
    Top = 120
  end
  inherited EnterTab: TACBrEnterTab
    Left = 104
    Top = 128
  end
  object DSFPag: TDataSource
    DataSet = TFPag
    Left = 64
    Top = 208
  end
  object TFPag: TFDMemTable
    BeforePost = TFPagBeforePost
    AfterPost = TFPagAfterPost
    AfterScroll = TFPagAfterScroll
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 208
    Top = 116
    object TFPagid: TIntegerField
      FieldName = 'id'
    end
    object TFPagnome: TStringField
      FieldName = 'nome'
    end
    object TFPagtipo: TStringField
      FieldName = 'tipo'
      Size = 3
    end
    object TFPagvalor: TCurrencyField
      FieldName = 'valor'
    end
    object TFPagparcelas: TIntegerField
      FieldName = 'parcelas'
    end
    object TFPagecf: TStringField
      FieldName = 'ecf'
      Size = 2
    end
  end
  object DSCLi: TDataSource
    DataSet = DM.QCli
    Left = 160
    Top = 192
  end
end
