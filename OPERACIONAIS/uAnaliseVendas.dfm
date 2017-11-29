inherited frmAnaliseVendas: TfrmAnaliseVendas
  ActiveControl = D1
  Caption = 'AUTOCOM GERENCIAL - VENDAS'
  ClientHeight = 546
  ClientWidth = 747
  ExplicitWidth = 753
  ExplicitHeight = 574
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 448
    Width = 747
    Height = 98
    ExplicitTop = 448
    ExplicitWidth = 747
    ExplicitHeight = 98
    inherited pnlBtnClose: TPanel
      Left = 653
      Height = 92
      ExplicitLeft = 653
      ExplicitHeight = 92
      inherited btnSair: TcxButton
        Height = 86
        ExplicitHeight = 86
      end
    end
    inherited pnlBase: TPanel
      Width = 652
      Height = 92
      ExplicitWidth = 652
      ExplicitHeight = 92
      object rgFiltro: TcxRadioGroup
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alLeft
        Caption = 'Filtro'
        ParentFont = False
        Properties.Items = <
          item
            Caption = 'VENDAS ECF'
          end
          item
            Caption = 'VENDAS NF'
          end>
        ItemIndex = 0
        TabOrder = 0
        OnClick = rgFiltroClick
        Height = 86
        Width = 118
      end
      object cxGroupBox1: TcxGroupBox
        AlignWithMargins = True
        Left = 127
        Top = 3
        Align = alLeft
        Caption = 'Per'#237'odo'
        ParentFont = False
        TabOrder = 1
        Height = 86
        Width = 138
        object D1: TcxDateEdit
          Left = 8
          Top = 15
          ParentFont = False
          Properties.DateButtons = []
          Properties.OnChange = D1PropertiesChange
          TabOrder = 0
          Width = 121
        end
        object D2: TcxDateEdit
          Left = 8
          Top = 40
          ParentFont = False
          Properties.DateButtons = []
          TabOrder = 1
          Width = 121
        end
        object cbCanc: TcxCheckBox
          Left = 8
          Top = 62
          TabStop = False
          AutoSize = False
          Caption = 'Canceladas'
          ParentFont = False
          TabOrder = 2
          OnClick = cbCancClick
          Height = 18
          Width = 92
        end
      end
      object btncli: TcxButton
        Left = 413
        Top = 7
        Width = 72
        Height = 37
        Caption = 'CORRIGIR CLIENTE'
        Enabled = False
        TabOrder = 3
        WordWrap = True
        OnClick = btncliClick
      end
      object btnven: TcxButton
        Left = 488
        Top = 7
        Width = 72
        Height = 37
        Caption = 'CORRIGIR VENDEDOR'
        Enabled = False
        TabOrder = 4
        WordWrap = True
        OnClick = btnvenClick
      end
      object btnCan: TcxButton
        Left = 413
        Top = 47
        Width = 72
        Height = 37
        Caption = 'CANCELAR VENDA'
        Enabled = False
        TabOrder = 5
        WordWrap = True
        OnClick = btnCanClick
      end
      object btnPrint: TcxButton
        Left = 488
        Top = 47
        Width = 72
        Height = 37
        Caption = 'IMPRIMIR 2'#170' VIA'
        Enabled = False
        TabOrder = 6
        WordWrap = True
        OnClick = btnPrintClick
      end
      object btnExibir: TcxButton
        Left = 292
        Top = 36
        Width = 85
        Height = 37
        Caption = 'EXIBIR'
        TabOrder = 2
        WordWrap = True
        OnClick = btnExibirClick
      end
      object cbTela: TcxCheckBox
        Left = 561
        Top = 56
        TabStop = False
        Caption = 'Na tela'
        ParentFont = False
        State = cbsChecked
        TabOrder = 7
      end
    end
  end
  object g1: TcxGrid [2]
    Left = 0
    Top = 0
    Width = 747
    Height = 373
    Align = alClient
    TabOrder = 2
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    object tbv: TcxGridDBTableView
      OnDblClick = tbvDblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      FilterBox.Visible = fvNever
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.SyncMode = False
      DataController.DataSource = DSVenda
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
      OptionsCustomize.ColumnHiding = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
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
        Options.Editing = False
        Width = 54
        OnHeaderClick = tbvidHeaderClick
      end
      object tbvcancelado: TcxGridDBColumn
        Caption = 'CANC'
        DataBinding.FieldName = 'cancelado'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object tbvdata: TcxGridDBColumn
        DataBinding.FieldName = 'data'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        OnHeaderClick = tbvidHeaderClick
      end
      object tbvhora: TcxGridDBColumn
        DataBinding.FieldName = 'hora'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tbvcoo: TcxGridDBColumn
        DataBinding.FieldName = 'coo'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        OnHeaderClick = tbvidHeaderClick
      end
      object tbvvalor: TcxGridDBColumn
        DataBinding.FieldName = 'valor'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        OnHeaderClick = tbvidHeaderClick
      end
      object tbvvr_pago: TcxGridDBColumn
        DataBinding.FieldName = 'vr_pago'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tbvtroco: TcxGridDBColumn
        DataBinding.FieldName = 'troco'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tbvterminal: TcxGridDBColumn
        Caption = 'TERM'
        DataBinding.FieldName = 'terminal'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 68
        OnHeaderClick = tbvidHeaderClick
      end
      object tbvvr_desconto: TcxGridDBColumn
        DataBinding.FieldName = 'vr_desconto'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tbvvr_din: TcxGridDBColumn
        Caption = 'DIN'
        DataBinding.FieldName = 'vr_din'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tbvvr_chq: TcxGridDBColumn
        DataBinding.FieldName = 'vr_chq'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tbvvr_card: TcxGridDBColumn
        DataBinding.FieldName = 'vr_card'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tbvvr_outros: TcxGridDBColumn
        DataBinding.FieldName = 'vr_outros'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tbvvr_tkt: TcxGridDBColumn
        DataBinding.FieldName = 'vr_tkt'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
    end
    object g1Lvl1: TcxGridLevel
      GridView = tbv
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 373
    Width = 747
    Height = 75
    Align = alBottom
    TabOrder = 3
    object Label1: TLabel
      Left = 3
      Top = 3
      Width = 107
      Height = 15
      Caption = 'NOME DO CLIENTE'
      FocusControl = cxDBTextEdit1
    end
    object Label2: TLabel
      Left = 459
      Top = 3
      Width = 29
      Height = 15
      Caption = 'CNPJ'
      FocusControl = cxDBTextEdit2
    end
    object Label3: TLabel
      Left = 564
      Top = 3
      Width = 31
      Height = 15
      Caption = 'FONE'
      FocusControl = cxDBTextEdit3
    end
    object Label4: TLabel
      Left = 651
      Top = 3
      Width = 49
      Height = 15
      Caption = 'CELULAR'
      FocusControl = cxDBTextEdit4
    end
    object Label5: TLabel
      Left = 3
      Top = 37
      Width = 44
      Height = 15
      Caption = 'CIDADE'
      FocusControl = cxDBTextEdit5
    end
    object Label6: TLabel
      Left = 395
      Top = 37
      Width = 62
      Height = 15
      Caption = 'VENDEDOR'
      FocusControl = cxDBTextEdit6
    end
    object Label7: TLabel
      Left = 482
      Top = 37
      Width = 61
      Height = 15
      Caption = 'OPERADOR'
      FocusControl = cxDBTextEdit7
    end
    object Label8: TLabel
      Left = 569
      Top = 37
      Width = 32
      Height = 15
      Caption = 'N'#186' NF'
      FocusControl = cxDBLabel1
    end
    object Label9: TLabel
      Left = 658
      Top = 37
      Width = 49
      Height = 15
      Caption = 'DATA NF'
      FocusControl = cxDBLabel2
    end
    object cxDBTextEdit1: TcxDBLabel
      Left = 3
      Top = 19
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = DSVenda
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Color = clWhite
      Height = 19
      Width = 453
    end
    object cxDBTextEdit2: TcxDBLabel
      Left = 459
      Top = 19
      DataBinding.DataField = 'cnpj'
      DataBinding.DataSource = DSVenda
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Color = clWhite
      Height = 19
      Width = 102
    end
    object cxDBTextEdit3: TcxDBLabel
      Left = 564
      Top = 19
      DataBinding.DataField = 'tel1'
      DataBinding.DataSource = DSVenda
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Color = clWhite
      Height = 19
      Width = 84
    end
    object cxDBTextEdit4: TcxDBLabel
      Left = 651
      Top = 19
      DataBinding.DataField = 'celular'
      DataBinding.DataSource = DSVenda
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Color = clWhite
      Height = 19
      Width = 84
    end
    object cxDBTextEdit5: TcxDBLabel
      Left = 3
      Top = 53
      DataBinding.DataField = 'cidade'
      DataBinding.DataSource = DSVenda
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Color = clWhite
      Height = 19
      Width = 389
    end
    object cxDBTextEdit6: TcxDBLabel
      Left = 395
      Top = 53
      DataBinding.DataField = 'vendedor_nome'
      DataBinding.DataSource = DSVenda
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Color = clWhite
      Height = 19
      Width = 84
    end
    object cxDBTextEdit7: TcxDBLabel
      Left = 482
      Top = 53
      DataBinding.DataField = 'operador_nome'
      DataBinding.DataSource = DSVenda
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Color = clWhite
      Height = 19
      Width = 84
    end
    object cxDBLabel1: TcxDBLabel
      Left = 569
      Top = 53
      DataBinding.DataField = 'Ide_nNF'
      DataBinding.DataSource = DSVenda
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Color = clWhite
      Height = 19
      Width = 84
    end
    object cxDBLabel2: TcxDBLabel
      Left = 656
      Top = 53
      DataBinding.DataField = 'Ide_dEmi'
      DataBinding.DataSource = DSVenda
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Color = clWhite
      Height = 19
      Width = 84
    end
  end
  inherited ini: TFormStorage
    Left = 16
    Top = 48
  end
  inherited FR: TFormResizer
    Left = 56
    Top = 32
  end
  inherited EnterTab: TACBrEnterTab
    Left = 96
    Top = 32
  end
  object QVenda: TFDQuery
    AfterOpen = QVendaAfterOpen
    AfterScroll = QVendaAfterScroll
    Connection = DM.DB
    SQL.Strings = (
      'select c.nome, c.cnpj, c.tel1, c.celular, c.cidade, '
      'vd.nome as vendedor_nome, o.nome as operador_nome, '
      'n.Ide_nNF, n.Ide_dEmi, v.*'
      'from cliente c, venda v'
      'left join nf n on n.id=v.nf'
      'left join vendedor vd on vd.id=v.vendedor'
      'left join operador o on o.id=v.operador'
      'where c.id = v.cliente and v.tipo=:tipo and '
      'v.cancelado=:canc and v.data between :d1 and :d2')
    Left = 504
    Top = 132
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CANC'
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
    object QVendaid: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInKey]
      ReadOnly = True
      DisplayFormat = '000000'
    end
    object QVendanome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME DO CLIENTE'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QVendacnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object QVendatel1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'FONE'
      FieldName = 'tel1'
      Origin = 'tel1'
      Size = 15
    end
    object QVendacelular: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CELULAR'
      FieldName = 'celular'
      Origin = 'celular'
      Size = 15
    end
    object QVendacidade: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CIDADE'
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object QVendaIde_nNF: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NF N'#186
      FieldName = 'Ide_nNF'
      Origin = 'Ide_nNF'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '000000'
    end
    object QVendaIde_dEmi: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DATA NF'
      FieldName = 'Ide_dEmi'
      Origin = 'Ide_dEmi'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QVendatipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object QVendacliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cliente'
      Origin = 'cliente'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVendavendedor_nome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'VENDEDOR'
      FieldName = 'vendedor_nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QVendaoperador_nome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'OPERADOR'
      FieldName = 'operador_nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QVendaoperador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'operador'
      Origin = 'operador'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVendavendedor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'vendedor'
      Origin = 'vendedor'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVendacancelado: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'cancelado'
      Origin = 'cancelado'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QVendadata: TDateField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'DATA'
      FieldName = 'data'
      Origin = 'data'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QVendahora: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'HORA'
      FieldName = 'hora'
      Origin = 'hora'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object QVendacoa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'coa'
      Origin = 'coa'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVendacoo: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'COO'
      FieldName = 'coo'
      Origin = 'coo'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '000000'
    end
    object QVendaccf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ccf'
      Origin = 'ccf'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVendapv: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pv'
      Origin = 'pv'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QVendanf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVendaserie_d: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'serie_d'
      Origin = 'serie_d'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVendacv: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'cv'
      Origin = 'cv'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object QVendavalor: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'VALOR'
      FieldName = 'valor'
      Origin = 'valor'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object QVendavr_desconto: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESC'
      FieldName = 'vr_desconto'
      Origin = 'vr_desconto'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object QVendavr_desc_posvenda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_desc_posvenda'
      Origin = 'vr_desc_posvenda'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object QVendavr_pago: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'PAGO'
      FieldName = 'vr_pago'
      Origin = 'vr_pago'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object QVendavr_comissao: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_comissao'
      Origin = 'vr_comissao'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object QVendavr_abat: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_abat'
      Origin = 'vr_abat'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object QVendavr_din: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DINHEIRO'
      FieldName = 'vr_din'
      Origin = 'vr_din'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object QVendavr_chq: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CHEQUE'
      FieldName = 'vr_chq'
      Origin = 'vr_chq'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object QVendavr_card: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CART'#195'O'
      FieldName = 'vr_card'
      Origin = 'vr_card'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object QVendavr_outros: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'FATURA'
      FieldName = 'vr_outros'
      Origin = 'vr_outros'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object QVendavr_tkt: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'OUTROS'
      FieldName = 'vr_tkt'
      Origin = 'vr_tkt'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object QVendatroco: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'TROCO'
      FieldName = 'troco'
      Origin = 'troco'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object QVendaobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object QVendaterminal: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'TERMINAL'
      FieldName = 'terminal'
      Origin = 'terminal'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVendaoper_crt: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'oper_crt'
      Origin = 'oper_crt'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QVendatipo_crt: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_crt'
      Origin = 'tipo_crt'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QVendadt_atualiz: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'dt_atualiz'
      Origin = 'dt_atualiz'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object QVendamd5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 32
    end
    object QVendahash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object QVenda_Item: TFDQuery
    MasterSource = DSVenda
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      'select * from venda_item where'
      'ecf_aliq<>'#39'CANC'#39' and'
      'venda=:id order by nItem')
    Left = 504
    Top = 188
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QVenda_Itemid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '000'
    end
    object QVenda_Itemvenda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'venda'
      Origin = 'venda'
    end
    object QVenda_ItemnItem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nItem'
      Origin = 'nItem'
      DisplayFormat = '000'
    end
    object QVenda_ItemcProd: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cProd'
      Origin = 'cProd'
    end
    object QVenda_ItemcEAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cEAN'
      Origin = 'cEAN'
    end
    object QVenda_ItemxProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'xProd'
      Origin = 'xProd'
      Size = 120
    end
    object QVenda_ItemNCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object QVenda_ItemEXTIPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EXTIPI'
      Origin = 'EXTIPI'
      Size = 3
    end
    object QVenda_ItemCFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object QVenda_ItemuCom: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uCom'
      Origin = 'uCom'
      Size = 6
    end
    object QVenda_ItemqCom: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qCom'
      Origin = 'qCom'
      DisplayFormat = '0.00'
    end
    object QVenda_ItemvUnCom: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vUnCom'
      Origin = 'vUnCom'
      DisplayFormat = '0.00'
    end
    object QVenda_ItemvProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vProd'
      Origin = 'vProd'
      DisplayFormat = '0.00'
    end
    object QVenda_ItemcEANTrib: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cEANTrib'
      Origin = 'cEANTrib'
    end
    object QVenda_ItemuTrib: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uTrib'
      Origin = 'uTrib'
      Size = 6
    end
    object QVenda_ItemqTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qTrib'
      Origin = 'qTrib'
    end
    object QVenda_ItemvUnTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vUnTrib'
      Origin = 'vUnTrib'
    end
    object QVenda_ItemvOutro: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vOutro'
      Origin = 'vOutro'
    end
    object QVenda_ItemvFrete: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vFrete'
      Origin = 'vFrete'
    end
    object QVenda_ItemvSeg: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vSeg'
      Origin = 'vSeg'
    end
    object QVenda_ItemvDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vDesc'
      Origin = 'vDesc'
    end
    object QVenda_IteminfAdProd: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'infAdProd'
      Origin = 'infAdProd'
      BlobType = ftMemo
    end
    object QVenda_ItemICMS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
    end
    object QVenda_ItemICMS_orig: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_orig'
      Origin = 'ICMS_orig'
    end
    object QVenda_ItemICMS_modBC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBC'
      Origin = 'ICMS_modBC'
    end
    object QVenda_ItemICMS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBC'
      Origin = 'ICMS_vBC'
    end
    object QVenda_ItemICMS_pICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
    end
    object QVenda_ItemICMS_vICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMS'
      Origin = 'ICMS_vICMS'
    end
    object QVenda_ItemICMS_CSOSN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
    end
    object QVenda_ItemICMS_pCredSN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pCredSN'
      Origin = 'ICMS_pCredSN'
    end
    object QVenda_ItemICMS_vCredICMSSN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vCredICMSSN'
      Origin = 'ICMS_vCredICMSSN'
    end
    object QVenda_ItemICMS_modBCST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBCST'
      Origin = 'ICMS_modBCST'
    end
    object QVenda_ItemICMS_pMVAST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pMVAST'
      Origin = 'ICMS_pMVAST'
    end
    object QVenda_ItemICMS_vTabelaST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vTabelaST'
      Origin = 'ICMS_vTabelaST'
    end
    object QVenda_ItemICMS_pRedBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBCST'
      Origin = 'ICMS_pRedBCST'
    end
    object QVenda_ItemICMS_vBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCST'
      Origin = 'ICMS_vBCST'
    end
    object QVenda_ItemICMS_pICMSST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMSST'
      Origin = 'ICMS_pICMSST'
    end
    object QVenda_ItemICMS_vICMSST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSST'
      Origin = 'ICMS_vICMSST'
    end
    object QVenda_ItemICMS_pRedBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBC'
      Origin = 'ICMS_pRedBC'
    end
    object QVenda_ItemIPI_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CST'
      Origin = 'IPI_CST'
    end
    object QVenda_ItemIPI_clEnq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_clEnq'
      Origin = 'IPI_clEnq'
      Size = 5
    end
    object QVenda_ItemIPI_CNPJProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CNPJProd'
      Origin = 'IPI_CNPJProd'
    end
    object QVenda_ItemIPI_cSelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cSelo'
      Origin = 'IPI_cSelo'
      Size = 60
    end
    object QVenda_ItemIPI_qSelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qSelo'
      Origin = 'IPI_qSelo'
    end
    object QVenda_ItemIPI_cEnq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cEnq'
      Origin = 'IPI_cEnq'
      Size = 3
    end
    object QVenda_ItemIPI_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vBC'
      Origin = 'IPI_vBC'
    end
    object QVenda_ItemIPI_qUnid: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qUnid'
      Origin = 'IPI_qUnid'
    end
    object QVenda_ItemIPI_vUnid: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vUnid'
      Origin = 'IPI_vUnid'
    end
    object QVenda_ItemIPI_pIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_pIPI'
      Origin = 'IPI_pIPI'
    end
    object QVenda_ItemIPI_vIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vIPI'
      Origin = 'IPI_vIPI'
    end
    object QVenda_ItemII_vBc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vBc'
      Origin = 'II_vBc'
    end
    object QVenda_ItemII_vDespAdu: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vDespAdu'
      Origin = 'II_vDespAdu'
    end
    object QVenda_ItemII_vII: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vII'
      Origin = 'II_vII'
    end
    object QVenda_ItemII_vIOF: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vIOF'
      Origin = 'II_vIOF'
    end
    object QVenda_ItemPIS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
    end
    object QVenda_ItemPIS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vBC'
      Origin = 'PIS_vBC'
    end
    object QVenda_ItemPIS_pPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_pPIS'
      Origin = 'PIS_pPIS'
    end
    object QVenda_ItemPIS_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vPIS'
      Origin = 'PIS_vPIS'
    end
    object QVenda_ItemPIS_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_qBCProd'
      Origin = 'PIS_qBCProd'
    end
    object QVenda_ItemPIS_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vAliqProd'
      Origin = 'PIS_vAliqProd'
    end
    object QVenda_ItemPISST_vBc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vBc'
      Origin = 'PISST_vBc'
    end
    object QVenda_ItemPISST_pPis: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_pPis'
      Origin = 'PISST_pPis'
    end
    object QVenda_ItemPISST_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_qBCProd'
      Origin = 'PISST_qBCProd'
    end
    object QVenda_ItemPISST_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vAliqProd'
      Origin = 'PISST_vAliqProd'
    end
    object QVenda_ItemPISST_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vPIS'
      Origin = 'PISST_vPIS'
    end
    object QVenda_ItemCOFINS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
    end
    object QVenda_ItemCOFINS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vBC'
      Origin = 'COFINS_vBC'
    end
    object QVenda_ItemCOFINS_pCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_pCOFINS'
      Origin = 'COFINS_pCOFINS'
    end
    object QVenda_ItemCOFINS_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vCOFINS'
      Origin = 'COFINS_vCOFINS'
    end
    object QVenda_ItemCOFINS_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_qBCProd'
      Origin = 'COFINS_qBCProd'
    end
    object QVenda_ItemCOFINS_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vAliqProd'
      Origin = 'COFINS_vAliqProd'
    end
    object QVenda_ItemCOFINSST_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vBC'
      Origin = 'COFINSST_vBC'
    end
    object QVenda_ItemCOFINSST_pCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_pCOFINS'
      Origin = 'COFINSST_pCOFINS'
    end
    object QVenda_ItemCOFINSST_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_qBCProd'
      Origin = 'COFINSST_qBCProd'
    end
    object QVenda_ItemCOFINSST_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vAliqProd'
      Origin = 'COFINSST_vAliqProd'
    end
    object QVenda_ItemCOFINSST_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vCOFINS'
      Origin = 'COFINSST_vCOFINS'
    end
    object QVenda_ItemISSQN_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vBC'
      Origin = 'ISSQN_vBC'
    end
    object QVenda_ItemISSQN_vAliq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vAliq'
      Origin = 'ISSQN_vAliq'
    end
    object QVenda_ItemISSQN_vISSQN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vISSQN'
      Origin = 'ISSQN_vISSQN'
    end
    object QVenda_ItemISSQN_cMunFG: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cMunFG'
      Origin = 'ISSQN_cMunFG'
    end
    object QVenda_ItemISSQN_cListServ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cListServ'
      Origin = 'ISSQN_cListServ'
    end
    object QVenda_ItemISSQN_SitTrib: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_SitTrib'
      Origin = 'ISSQN_SitTrib'
    end
    object QVenda_ItemICMS_vBCSTRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCSTRet'
      Origin = 'ICMS_vBCSTRet'
    end
    object QVenda_ItemICMS_vICMSSTRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSSTRet'
      Origin = 'ICMS_vICMSSTRet'
    end
    object QVenda_ItemvTotTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vTotTrib'
      Origin = 'vTotTrib'
    end
    object QVenda_Itemecf_aliq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ecf_aliq'
      Origin = 'ecf_aliq'
      Size = 4
    end
    object QVenda_Itemtrn: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'trn'
      Origin = 'trn'
      FixedChar = True
      Size = 1
    end
    object QVenda_ItemvComissao: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vComissao'
      Origin = 'vComissao'
      currency = True
    end
  end
  object DSVenda: TDataSource
    DataSet = QVenda
    Left = 568
    Top = 136
  end
  object DSItem: TDataSource
    DataSet = QVenda_Item
    Left = 568
    Top = 192
  end
end
