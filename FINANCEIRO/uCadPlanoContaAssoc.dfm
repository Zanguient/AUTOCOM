inherited frmCadPlanoContasAssoc: TfrmCadPlanoContasAssoc
  Caption = 'frmCadPlanoContasAssoc'
  ClientWidth = 432
  ExplicitWidth = 438
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Width = 432
    ExplicitWidth = 432
    inherited pnlBtnClose: TPanel
      Left = 344
      ExplicitLeft = 344
    end
    inherited pnlBase: TPanel
      Width = 343
      ExplicitWidth = 343
      inherited pnlbasebotton: TPanel
        Width = 296
        ExplicitWidth = 296
        inherited Bar1: TdxStatusBar
          Width = 294
          ExplicitWidth = 294
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 432
    ExplicitWidth = 432
    ClientRectRight = 428
    inherited TabCad: TcxTabSheet
      TabVisible = False
      ExplicitWidth = 424
      inherited dbNav: TcxDBNavigator
        Width = 415
        ExplicitWidth = 415
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 424
      inherited grd: TcxGrid
        Width = 424
        Height = 221
        ExplicitWidth = 424
        ExplicitHeight = 221
        inherited tbv: TcxGridDBTableView
          OptionsData.Editing = True
          OptionsSelection.CellSelect = True
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 35
          end
          object tbvcodigo: TcxGridDBColumn
            DataBinding.FieldName = 'codigo'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 64
          end
          object tbvoperacao: TcxGridDBColumn
            DataBinding.FieldName = 'operacao'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
          object tbvdescricao: TcxGridDBColumn
            DataBinding.FieldName = 'descricao'
            HeaderAlignmentHorz = taCenter
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 221
        Width = 424
        Visible = False
        ExplicitTop = 221
        ExplicitWidth = 424
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 267
        Width = 424
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
          Width = 422
          AnchorX = 212
        end
      end
    end
    object TabSis: TcxTabSheet
      Caption = 'OPERA'#199#213'ES DO SISTEMA ASSOCIADOS'
      ImageIndex = 1
      OnShow = TabSisShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdOpSis: TcxGrid
        Left = 0
        Top = 0
        Width = 424
        Height = 290
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object tbvOpSis: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnCellClick = tbvCellClick
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DSOpSis
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
          object tbvOpSisoperacao: TcxGridDBColumn
            Caption = 'OPERA'#199#195'O'
            DataBinding.FieldName = 'operacao'
            HeaderAlignmentHorz = taCenter
            Width = 107
          end
          object tbvOpSisplano: TcxGridDBColumn
            Caption = 'PLANO'
            DataBinding.FieldName = 'plano'
            HeaderAlignmentHorz = taCenter
          end
          object tbvOpSisdescrio: TcxGridDBColumn
            Caption = 'DESCRICAO'
            DataBinding.FieldName = 'descricao'
            HeaderAlignmentHorz = taCenter
            Width = 212
          end
        end
        object lvOpSis: TcxGridLevel
          GridView = tbvOpSis
        end
      end
    end
  end
  inherited ini: TFormStorage
    Left = 16
    Top = 168
  end
  inherited DS1: TDataSource
    DataSet = Q1
    Left = 16
    Top = 120
  end
  inherited FR: TFormResizer
    Left = 16
    Top = 264
  end
  inherited EnterTab: TACBrEnterTab
    Left = 16
    Top = 216
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
  object Q1: TFDQuery
    BeforeInsert = Q1BeforeInsert
    SQL.Strings = (
      'select * from finan_centro_custo_assoc')
    Left = 16
    Top = 68
    object Q1id: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'finan_centro_custo_assoc.id'
      ReadOnly = True
      DisplayFormat = '00'
    end
    object Q1codigo: TStringField
      DisplayLabel = 'PLANO'
      FieldName = 'codigo'
      Origin = 'finan_centro_custo_assoc.codigo'
      ReadOnly = True
    end
    object Q1operacao: TStringField
      Alignment = taCenter
      DisplayLabel = 'OPERA'#199#195'O'
      FieldName = 'operacao'
      Origin = 'finan_centro_custo_assoc.operacao'
      ReadOnly = True
      Size = 10
    end
    object Q1descricao: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'descricao'
      Origin = 'finan_centro_custo_assoc.descricao'
      Size = 30
    end
  end
  object TOpSis: TFDMemTable
    Active = True
    AfterOpen = TOpSisAfterOpen
    BeforeClose = TOpSisBeforeClose
    FieldDefs = <
      item
        Name = 'operacao'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'plano'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'descricao'
        DataType = ftMemo
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 224
    Top = 88
    object TOpSisoperacao: TStringField
      FieldName = 'operacao'
      Size = 50
    end
    object TOpSisplano: TStringField
      FieldName = 'plano'
      Size = 10
    end
    object TOpSisdescricao: TMemoField
      FieldName = 'descricao'
      BlobType = ftMemo
    end
  end
  object DSOpSis: TDataSource
    AutoEdit = False
    DataSet = TOpSis
    OnStateChange = DS1StateChange
    Left = 224
    Top = 144
  end
end
