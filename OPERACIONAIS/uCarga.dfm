inherited frmCarga: TfrmCarga
  Caption = 'frmCarga'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgCad: TcxPageControl
    inherited TabCad: TcxTabSheet
      Caption = 'CARGA'
      TabVisible = False
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 632
      ExplicitHeight = 290
      inherited dbNav: TcxDBNavigator
        Visible = False
      end
    end
    inherited TabPesq: TcxTabSheet
      Caption = 'LISTA DE TERMINAIS'
      inherited grd: TcxGrid
        Top = 25
        Height = 196
        ExplicitTop = 25
        ExplicitHeight = 196
        inherited tbv: TcxGridDBTableView
          OptionsData.Editing = True
          OptionsSelection.CellSelect = True
          OptionsSelection.InvertSelect = True
          OptionsSelection.MultiSelect = True
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 32
          end
          object tbvterminal: TcxGridDBColumn
            DataBinding.FieldName = 'terminal'
            HeaderAlignmentHorz = taCenter
            Width = 223
          end
          object tbvpath: TcxGridDBColumn
            DataBinding.FieldName = 'path'
            HeaderAlignmentHorz = taCenter
            Width = 338
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 221
        Visible = False
        ExplicitTop = 221
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 267
        Width = 632
        Height = 23
        Align = alBottom
        Color = 12189695
        ParentBackground = False
        TabOrder = 2
        object cxLabel1: TcxLabel
          Left = 1
          Top = 1
          Align = alClient
          Caption = 'F5-NOVO   F6-EXCLUIR   F7-ALTERAR   F8-GRAVAR   F9-CANCELAR'
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.WordWrap = True
          Width = 438
          AnchorX = 220
        end
        object btnCargaFull: TcxButton
          AlignWithMargins = True
          Left = 440
          Top = 2
          Width = 190
          Height = 19
          Hint = 'Restaura o tamanho das colunas na lista'
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alRight
          Caption = 'Efetuar carga completa'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TabStop = False
          OnClick = btnCargaFullClick
        end
      end
      object Bar2: TcxProgressBar
        AlignWithMargins = True
        Left = 1
        Top = 2
        Margins.Left = 1
        Margins.Top = 2
        Margins.Right = 1
        Margins.Bottom = 2
        Align = alTop
        ParentFont = False
        Position = 50.000000000000000000
        Properties.BarStyle = cxbsGradientLEDs
        Properties.PeakValue = 50.000000000000000000
        Properties.ShowPeak = True
        TabOrder = 3
        Transparent = True
        Visible = False
        Width = 630
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'LISTA DE TABELAS PARA CARGA FULL'
      ImageIndex = 1
      object grdCfull: TcxGrid
        Left = 0
        Top = 0
        Width = 632
        Height = 267
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object tbvCfull: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnCellClick = tbvCellClick
          DataController.DataModeController.GridMode = True
          DataController.DataSource = ds2
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
          OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
          OptionsView.ScrollBars = ssVertical
          OptionsView.CellAutoHeight = True
          OptionsView.GridLineColor = clBlack
          OptionsView.GroupByBox = False
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clYellow
          object tbvCfullid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 39
          end
          object tbvCfullnome_arq: TcxGridDBColumn
            DataBinding.FieldName = 'nome_arq'
            HeaderAlignmentHorz = taCenter
            Width = 118
          end
          object tbvCfullscript: TcxGridDBColumn
            DataBinding.FieldName = 'script'
            PropertiesClassName = 'TcxMemoProperties'
            HeaderAlignmentHorz = taCenter
            Width = 439
          end
        end
        object LvCfull: TcxGridLevel
          GridView = tbvCfull
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 267
        Width = 632
        Height = 23
        Align = alBottom
        Color = 12189695
        ParentBackground = False
        TabOrder = 1
        object cxLabel2: TcxLabel
          Left = 1
          Top = 1
          Align = alClient
          Caption = 'F5-NOVO   F6-EXCLUIR   F7-ALTERAR   F8-GRAVAR   F9-CANCELAR'
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.WordWrap = True
          Width = 630
          AnchorX = 316
        end
      end
    end
  end
  inherited DS1: TDataSource
    DataSet = DM.QCarga
  end
  object ds2: TDataSource
    AutoEdit = False
    DataSet = DM.QCargaFull
    OnStateChange = DS1StateChange
    Left = 104
    Top = 240
  end
end
