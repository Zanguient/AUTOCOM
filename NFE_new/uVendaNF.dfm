inherited frmVendaNF: TfrmVendaNF
  Caption = 'Assistente para gera'#231#227'o de NF via venda'
  ClientHeight = 489
  ClientWidth = 530
  ExplicitWidth = 536
  ExplicitHeight = 517
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 447
    Width = 530
    ExplicitTop = 447
    ExplicitWidth = 530
    inherited pnlBtnClose: TPanel
      Left = 436
      ExplicitLeft = 436
    end
    inherited pnlBase: TPanel
      Width = 435
      ExplicitWidth = 435
      object btnVoltar: TcxButton
        AlignWithMargins = True
        Left = 270
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'VOLTAR'
        TabOrder = 0
        OnClick = btnVoltarClick
      end
      object btnGerar: TcxButton
        AlignWithMargins = True
        Left = 354
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'GERAR'
        Enabled = False
        TabOrder = 1
        Visible = False
        OnClick = btnGerarClick
      end
      object cb1: TcxCheckBox
        Left = 1
        Top = 6
        Caption = 'Exibir Dados adicionais'
        TabOrder = 2
        OnClick = cb1Click
        Width = 152
      end
      object bar1: TcxProgressBar
        Left = 172
        Top = 6
        TabOrder = 3
        Visible = False
        Width = 90
      end
    end
  end
  object pg1: TcxPageControl [2]
    Left = 0
    Top = 0
    Width = 530
    Height = 447
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = TAB1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 447
    ClientRectRight = 530
    ClientRectTop = 26
    object TAB1: TcxTabSheet
      ImageIndex = 0
      OnShow = TAB1Show
      object rg1: TcxRadioGroup
        Left = 27
        Top = 104
        Caption = 'SELECIONE:'
        Properties.Items = <
          item
            Caption = 'VENDAS NF'
            Value = 'NF'
          end
          item
            Caption = 'VENDAS CUPOM FISCAL'
            Value = 'ECF'
          end>
        ItemIndex = 1
        TabOrder = 0
        Height = 65
        Width = 185
      end
      object D1: TcxDateEdit
        Left = 227
        Top = 136
        Properties.DateButtons = []
        TabOrder = 1
        Width = 121
      end
      object D2: TcxDateEdit
        Left = 354
        Top = 136
        Properties.DateButtons = []
        TabOrder = 2
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 227
        Top = 112
        Caption = 'PER'#205'ODO'
      end
      object btnExibir: TcxButton
        Left = 189
        Top = 272
        Width = 148
        Height = 57
        Caption = 'EXIBIR'
        TabOrder = 4
        OnClick = btnExibirClick
      end
      object cmbDest: TcxImageComboBox
        Left = 27
        Top = 200
        Properties.Items = <>
        TabOrder = 5
        Width = 448
      end
      object cxLabel2: TcxLabel
        Left = 27
        Top = 175
        Caption = 'DESTINAT'#193'RIO'
      end
    end
    object tab2: TcxTabSheet
      ImageIndex = 1
      OnShow = tab2Show
      object grd: TcxGrid
        Left = 0
        Top = 25
        Width = 530
        Height = 299
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object tbv: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnSelectionChanged = tbvSelectionChanged
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DSVendas
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
          OptionsSelection.MultiSelect = True
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
          OptionsView.ScrollBars = ssVertical
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
          end
          object tbvdata: TcxGridDBColumn
            Caption = 'DATA'
            DataBinding.FieldName = 'data'
            HeaderAlignmentHorz = taCenter
          end
          object tbvhora: TcxGridDBColumn
            Caption = 'HORA'
            DataBinding.FieldName = 'hora'
            HeaderAlignmentHorz = taCenter
          end
          object tbvcoo: TcxGridDBColumn
            Caption = 'COO'
            DataBinding.FieldName = 'coo'
            HeaderAlignmentHorz = taCenter
          end
          object tbvvalor: TcxGridDBColumn
            Caption = 'VALOR'
            DataBinding.FieldName = 'valor'
            HeaderAlignmentHorz = taCenter
          end
          object tbvterminal: TcxGridDBColumn
            Caption = 'TERMINAL'
            DataBinding.FieldName = 'terminal'
            HeaderAlignmentHorz = taCenter
          end
        end
        object lv: TcxGridLevel
          GridView = tbv
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 530
        Height = 25
        Align = alTop
        Caption = 'Panel1'
        TabOrder = 1
      end
      object mmDadosAdic: TcxMemo
        Left = 0
        Top = 324
        Align = alBottom
        TabOrder = 2
        Visible = False
        Height = 97
        Width = 530
      end
    end
  end
  inherited ini: TFormStorage
    Left = 456
  end
  inherited FR: TFormResizer
    Left = 512
  end
  inherited EnterTab: TACBrEnterTab
    Left = 560
    Top = 0
  end
  object QVendas: TFDQuery
    Connection = DM.DB
    SQL.Strings = (
      'select * from venda '
      'where cliente=:cliente and '
      'cancelado="N" and '
      'tipo=:tipo and'
      'data between :d1 and :d2 and'
      'venda.nf=0')
    Left = 244
    Top = 82
    ParamData = <
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'D1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'D2'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object QVendasid: TFDAutoIncField
      Alignment = taCenter
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '000000'
    end
    object QVendastipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 3
    end
    object QVendascliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cliente'
      Origin = 'cliente'
    end
    object QVendasoperador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'operador'
      Origin = 'operador'
    end
    object QVendasvendedor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'vendedor'
      Origin = 'vendedor'
    end
    object QVendascancelado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cancelado'
      Origin = 'cancelado'
      FixedChar = True
      Size = 1
    end
    object QVendasdata: TDateField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QVendashora: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'hora'
      Origin = 'hora'
      Size = 5
    end
    object QVendascoa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'coa'
      Origin = 'coa'
    end
    object QVendascoo: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'coo'
      Origin = 'coo'
      DisplayFormat = '000000'
    end
    object QVendasccf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ccf'
      Origin = 'ccf'
    end
    object QVendaspv: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pv'
      Origin = 'pv'
      Size = 10
    end
    object QVendasnf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QVendasserie_d: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'serie_d'
      Origin = 'serie_d'
    end
    object QVendascv: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'cv'
      Origin = 'cv'
      BlobType = ftMemo
    end
    object QVendasvalor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object QVendasvr_desconto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_desconto'
      Origin = 'vr_desconto'
    end
    object QVendasvr_desc_posvenda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_desc_posvenda'
      Origin = 'vr_desc_posvenda'
    end
    object QVendasvr_pago: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_pago'
      Origin = 'vr_pago'
    end
    object QVendasvr_comissao: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_comissao'
      Origin = 'vr_comissao'
    end
    object QVendasvr_abat: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_abat'
      Origin = 'vr_abat'
    end
    object QVendasvr_din: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_din'
      Origin = 'vr_din'
    end
    object QVendasvr_chq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_chq'
      Origin = 'vr_chq'
    end
    object QVendasvr_card: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_card'
      Origin = 'vr_card'
    end
    object QVendasvr_outros: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_outros'
      Origin = 'vr_outros'
    end
    object QVendasvr_tkt: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_tkt'
      Origin = 'vr_tkt'
    end
    object QVendastroco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'troco'
      Origin = 'troco'
    end
    object QVendasobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object QVendasterminal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'terminal'
      Origin = 'terminal'
    end
    object QVendasoper_crt: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'oper_crt'
      Origin = 'oper_crt'
      Size = 30
    end
    object QVendastipo_crt: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_crt'
      Origin = 'tipo_crt'
      FixedChar = True
      Size = 1
    end
    object QVendasdt_atualiz: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'dt_atualiz'
      Origin = 'dt_atualiz'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object QVendasmd5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object QVendashash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      Size = 32
    end
  end
  object DSVendas: TDataSource
    DataSet = QVendas
    Left = 316
    Top = 90
  end
  object T1: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 412
    Top = 90
    object T1id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
      DisplayFormat = '0000'
    end
    object T1item: TIntegerField
      DisplayLabel = 'ITEM'
      FieldName = 'item'
      DisplayFormat = '000'
    end
    object T1cod_gtin: TStringField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'cod_gtin'
    end
    object T1nome: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'nome'
      Size = 100
    end
    object T1vr_custo: TCurrencyField
      DisplayLabel = 'VR CUSTO'
      FieldName = 'vr_custo'
    end
    object T1bc_icms: TCurrencyField
      FieldName = 'bc_icms'
    end
    object T1pc_icms: TCurrencyField
      FieldName = 'pc_icms'
      DisplayFormat = '0.00#'
      currency = False
    end
    object T1bc_icms_st: TCurrencyField
      FieldName = 'bc_icms_st'
    end
    object T1vr_icms_st: TCurrencyField
      FieldName = 'vr_icms_st'
    end
    object T1vr_ipi: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'vr_ipi'
      Calculated = True
    end
    object T1qtd: TCurrencyField
      DisplayLabel = 'QTD'
      FieldName = 'qtd'
      DisplayFormat = '0.00#'
      currency = False
    end
    object T1unid: TStringField
      FieldName = 'unid'
      Size = 5
    end
    object T1cfop: TStringField
      FieldName = 'cfop'
      Size = 4
    end
  end
end
