inherited frmReplica: TfrmReplica
  Caption = 'AUTOCOM GERENCIAL - M'#211'DULO DE REPLICA'#199#195'O'
  ClientHeight = 412
  ClientWidth = 569
  ExplicitWidth = 575
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 370
    Width = 569
    ExplicitTop = 370
    ExplicitWidth = 569
    inherited pnlBtnClose: TPanel
      Left = 480
      Width = 84
      ExplicitLeft = 480
      ExplicitWidth = 84
      inherited btnSair: TcxButton
        Left = 3
        ExplicitLeft = -76
      end
    end
    inherited pnlBase: TPanel
      Width = 479
      ExplicitWidth = 327
      object btnInserir: TcxButton
        AlignWithMargins = True
        Left = 230
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'INSERIR'
        TabOrder = 0
        OnClick = btnInserirClick
        ExplicitLeft = -244
      end
      object btnExcluir: TcxButton
        AlignWithMargins = True
        Left = 314
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'EXCLUIR'
        Enabled = False
        TabOrder = 1
        OnClick = btnExcluirClick
        ExplicitLeft = 0
      end
      object btnConcluir: TcxButton
        AlignWithMargins = True
        Left = 398
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'CONCLUIR'
        Enabled = False
        TabOrder = 2
        OnClick = btnConcluirClick
        ExplicitLeft = 8
      end
      object Bar2: TcxProgressBar
        AlignWithMargins = True
        Left = 5
        Top = 5
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Align = alLeft
        ParentFont = False
        Position = 50.000000000000000000
        Properties.BarStyle = cxbsGradientLEDs
        Properties.PeakValue = 50.000000000000000000
        Properties.ShowPeak = True
        TabOrder = 3
        Transparent = True
        Visible = False
        Width = 221
      end
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 0
    Width = 569
    Height = 32
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 2
    object DBLabel1: TcxDBLabel
      Left = 4
      Top = 5
      DataBinding.DataField = 'cod_gtin'
      DataBinding.DataSource = DM.DSEstoque
      ParentColor = False
      ParentFont = False
      Style.Color = clWhite
      Height = 17
      Width = 90
    end
    object cxDBLabel1: TcxDBLabel
      Left = 96
      Top = 5
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DM.DSEstoque
      ParentColor = False
      ParentFont = False
      Style.Color = clWhite
      Height = 17
      Width = 498
    end
  end
  object grd: TcxGrid [3]
    Left = 0
    Top = 32
    Width = 569
    Height = 338
    Align = alClient
    TabOrder = 3
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
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
      object tbvcod_gtin: TcxGridDBColumn
        DataBinding.FieldName = 'cod_gtin'
        HeaderAlignmentHorz = taCenter
        Width = 102
      end
      object tbvdestinacao: TcxGridDBColumn
        Caption = 'DESTINA'#199#195'O'
        DataBinding.FieldName = 'destinacao'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Mercadoria para Revenda'
            ImageIndex = 0
            Value = '00'
          end
          item
            Description = 'Mat'#233'ria-Prima'
            Value = '01'
          end
          item
            Description = 'Embalagem'
            Value = '02'
          end
          item
            Description = 'Produto em Processo'
            Value = '03'
          end
          item
            Description = 'Produto Acabado'
            Value = '04'
          end
          item
            Description = 'Subproduto'
            Value = '05'
          end
          item
            Description = 'Produto Intermedi'#225'rio'
            Value = '06'
          end
          item
            Description = 'Uso e Consumo'
            Value = '07'
          end
          item
            Description = 'Ativo Imobilizado'
            Value = '08'
          end
          item
            Description = 'Servi'#231'os'
            Value = '09'
          end
          item
            Description = 'Outros Insumos'
            Value = '10'
          end
          item
            Description = 'Outras'
            Value = '99'
          end>
        HeaderAlignmentHorz = taCenter
        Width = 106
      end
      object tbvnome: TcxGridDBColumn
        DataBinding.FieldName = 'nome'
        HeaderAlignmentHorz = taCenter
        Width = 241
      end
      object tbvqtd: TcxGridDBColumn
        DataBinding.FieldName = 'qtd'
        HeaderAlignmentHorz = taCenter
      end
    end
    object lv: TcxGridLevel
      GridView = tbv
    end
  end
  inherited ini: TFormStorage
    Left = 292
    Top = 126
  end
  inherited FR: TFormResizer
    Left = 326
    Top = 126
  end
  inherited EnterTab: TACBrEnterTab
    Left = 366
    Top = 126
  end
  object DS1: TDataSource
    DataSet = cd1
    OnStateChange = DS1StateChange
    Left = 456
    Top = 128
  end
  object cd1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'cod_gtin'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'qtd'
        DataType = ftFloat
      end
      item
        Name = 'destinacao'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 416
    Top = 128
    object cd1cod_gtin: TStringField
      DisplayLabel = 'C'#211'DIGO GTIN'
      FieldName = 'cod_gtin'
    end
    object cd1nome: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'nome'
      Size = 100
    end
    object cd1qtd: TFloatField
      DisplayLabel = 'QTD'
      FieldName = 'qtd'
      DisplayFormat = '0.00#'
    end
    object cd1destinacao: TStringField
      FieldName = 'destinacao'
      Size = 2
    end
  end
end
