inherited frmAssDevol: TfrmAssDevol
  Caption = 'ASSISTENTE PARA DEVOLU'#199#195'O DE COMPRAS'
  ExplicitWidth = 608
  ExplicitHeight = 409
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    inherited pnlBase: TPanel
      object btnPesqProd: TcxButton
        AlignWithMargins = True
        Left = 280
        Top = 3
        Width = 224
        Height = 30
        Align = alRight
        Caption = 'PESQUISAR NOTAS POR PRODUTO'
        TabOrder = 0
        OnClick = btnPesqProdClick
      end
      object btnMontar: TcxButton
        AlignWithMargins = True
        Left = 176
        Top = 3
        Width = 98
        Height = 30
        Align = alRight
        Caption = 'Montar a NF'
        TabOrder = 1
        Visible = False
        OnClick = btnMontarClick
      end
      object btnSel: TcxButton
        AlignWithMargins = True
        Left = 72
        Top = 3
        Width = 98
        Height = 30
        Align = alRight
        Caption = 'Selecionar a NF'
        TabOrder = 2
        Visible = False
        OnClick = btnSelClick
      end
    end
  end
  object pg1: TcxPageControl [2]
    Left = 0
    Top = 0
    Width = 602
    Height = 339
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = Tab1
    Properties.CustomButtons.Buttons = <>
    OnChange = pg1Change
    ClientRectBottom = 335
    ClientRectLeft = 4
    ClientRectRight = 598
    ClientRectTop = 26
    object Tab1: TcxTabSheet
      Caption = 'NOTA FISCAL DE COMPRA'
      ImageIndex = 0
      OnShow = Tab1Show
      ExplicitLeft = 0
      ExplicitWidth = 602
      ExplicitHeight = 313
      object edNmro: TcxTextEdit
        Left = 460
        Top = 23
        TabOrder = 2
        Width = 101
      end
      object edMotivo: TcxTextEdit
        Left = 152
        Top = 23
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Width = 302
      end
      object Panel1: TPanel
        Left = 0
        Top = 44
        Width = 582
        Height = 249
        BevelKind = bkSoft
        BevelOuter = bvNone
        TabOrder = 7
        object Label1: TLabel
          Left = 247
          Top = 130
          Width = 195
          Height = 15
          Caption = 'Informe o CFOP a ser utilizado na NF.'
        end
        object Label12: TcxLabel
          Left = 142
          Top = 1
          Caption = 'Raz'#227'o Social'
          FocusControl = cxDBTextEdit4
          ParentFont = False
          Transparent = True
        end
        object Label10: TcxLabel
          Left = 6
          Top = 1
          Caption = 'CNPJ/CPF'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel1: TcxDBLabel
          Left = 213
          Top = 1
          DataBinding.DataField = 'Emit_EnderEmit_xMun'
          DataBinding.DataSource = DM_NF_Entr.DSNF
          ParentFont = False
          Height = 17
          Width = 324
        end
        object cxDBLabel2: TcxDBLabel
          Left = 543
          Top = 1
          DataBinding.DataField = 'Emit_EnderEmit_UF'
          DataBinding.DataSource = DM_NF_Entr.DSNF
          ParentFont = False
          Height = 17
          Width = 31
        end
        object cxDBTextEdit4: TcxDBLabel
          Left = 142
          Top = 19
          TabStop = False
          DataBinding.DataField = 'Emit_xNome'
          DataBinding.DataSource = DM_NF_Entr.DSNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 431
        end
        object cxDBTextEdit2: TcxDBLabel
          Left = 6
          Top = 19
          TabStop = False
          DataBinding.DataField = 'Emit_CNPJCPF'
          DataBinding.DataSource = DM_NF_Entr.DSNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 131
        end
        object Label16: TcxLabel
          Left = 348
          Top = 198
          Caption = 'VR. PROD.'
          FocusControl = cxDBCalcEdit5
          ParentFont = False
          Transparent = True
        end
        object cxDBCalcEdit5: TcxDBLabel
          Left = 349
          Top = 215
          DataBinding.DataField = 'ICMSTot_vProd'
          DataBinding.DataSource = DM_NF_Entr.DSNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 74
        end
        object Label21: TcxLabel
          Left = 429
          Top = 198
          Caption = 'VR. NOTA'
          FocusControl = cxDBCalcEdit10
          ParentFont = False
          Transparent = True
        end
        object cxDBCalcEdit10: TcxDBLabel
          Left = 429
          Top = 215
          DataBinding.DataField = 'ICMSTot_vNF'
          DataBinding.DataSource = DM_NF_Entr.DSNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 117
        end
        object cxLabel3: TcxLabel
          Left = 6
          Top = 39
          Caption = 'NF-e Chave'
          ParentFont = False
          Transparent = True
        end
        object Label4: TcxLabel
          Left = 368
          Top = 39
          Caption = 'S'#233'rie'
          FocusControl = edSerie
          ParentFont = False
          Transparent = True
        end
        object Label7: TcxLabel
          Left = 415
          Top = 39
          Caption = 'Data de Emiss.'
          FocusControl = cxDBDateEdit1
          ParentFont = False
          Transparent = True
        end
        object Label8: TcxLabel
          Left = 496
          Top = 39
          Caption = 'Data de Entr.'
          FocusControl = cxDBDateEdit2
          ParentFont = False
          Transparent = True
        end
        object edchave: TcxDBLabel
          Left = 6
          Top = 57
          DataBinding.DataField = 'chave'
          DataBinding.DataSource = DM_NF_Entr.DSNF_Chave
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 322
        end
        object edSerie: TcxDBLabel
          Left = 369
          Top = 57
          DataBinding.DataField = 'Ide_serie'
          DataBinding.DataSource = DM_NF_Entr.DSNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 42
        end
        object cxDBDateEdit1: TcxDBLabel
          Left = 415
          Top = 57
          DataBinding.DataField = 'Ide_dEmi'
          DataBinding.DataSource = DM_NF_Entr.DSNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 77
        end
        object cxDBDateEdit2: TcxDBLabel
          Left = 496
          Top = 57
          DataBinding.DataField = 'Ide_dSaiEnt'
          DataBinding.DataSource = DM_NF_Entr.DSNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 77
        end
        object cxLabel4: TcxLabel
          Left = 332
          Top = 39
          Caption = 'Mod.'
          FocusControl = cxDBLabel3
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel3: TcxDBLabel
          Left = 333
          Top = 57
          DataBinding.DataField = 'Ide_serie'
          DataBinding.DataSource = DM_NF_Entr.DSNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 31
        end
        object rg1: TcxRadioGroup
          Left = 6
          Top = 80
          Caption = 'Atividade do Destinat'#225'rio'
          Properties.Items = <
            item
              Caption = 'COM'#201'RCIO'
            end
            item
              Caption = 'IND'#218'STRIA'
            end>
          TabOrder = 20
          Height = 68
          Width = 145
        end
        object Label106: TcxLabel
          Left = 169
          Top = 108
          Caption = 'CFOP'
          Transparent = True
        end
        object cmbCFOP: TcxImageComboBox
          Left = 169
          Top = 127
          Hint = 
            'Informar o C'#243'digo Fiscal de Opera'#231#245'es e Presta'#231#245'es relativo ao i' +
            'tem'
          Properties.Items = <>
          TabOrder = 21
          Width = 72
        end
      end
      object btnObterNF: TcxButton
        Left = 565
        Top = 23
        Width = 20
        Height = 23
        Caption = '>'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        OnClick = btnObterNFClick
      end
      object cxLabel1: TcxLabel
        Left = 155
        Top = 3
        Caption = 'MOTIVO DA DEVOLU'#199#195'O'
      end
      object cxLabel2: TcxLabel
        Left = 460
        Top = 3
        Caption = 'N'#186' NF ENTRADA'
      end
      object cmb1: TcxComboBox
        Left = 3
        Top = 23
        Properties.Items.Strings = (
          'PARCIAL'
          'TOTAL')
        TabOrder = 0
        Width = 143
      end
      object cxLabel5: TcxLabel
        Left = 3
        Top = 3
        Caption = 'DEVOLU'#199#195'O'
      end
    end
    object Tab2: TcxTabSheet
      Caption = 'ITENS DA NOTA'
      ImageIndex = 1
      OnShow = Tab2Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdItens: TcxGrid
        Left = 0
        Top = 0
        Width = 602
        Height = 292
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        object tbvItens: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = DataSource1
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
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
          OptionsView.CellAutoHeight = True
          OptionsView.GridLineColor = clBlack
          OptionsView.GroupByBox = False
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clYellow
          Styles.Content = cxStyle1
          Styles.Header = cxStyle1
          object tbvItensid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 37
          end
          object tbvItensitem: TcxGridDBColumn
            DataBinding.FieldName = 'item'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
          object tbvItenscod_gtin: TcxGridDBColumn
            DataBinding.FieldName = 'cod_gtin'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 81
          end
          object tbvItensnome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 278
          end
          object tbvItensvr_custo: TcxGridDBColumn
            DataBinding.FieldName = 'vr_custo'
            HeaderAlignmentHorz = taCenter
          end
          object tbvItensqtd: TcxGridDBColumn
            DataBinding.FieldName = 'qtd'
            HeaderAlignmentHorz = taCenter
          end
        end
        object lvItens: TcxGridLevel
          GridView = tbvItens
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 292
        Width = 602
        Height = 21
        Align = alBottom
        Caption = 'Os c'#225'lculos s'#227'o feitos com base no valor unit'#225'rio do produto'
        TabOrder = 1
      end
    end
    object Tab3: TcxTabSheet
      Caption = 'DADOS ADICIONAIS'
      ImageIndex = 2
      OnShow = Tab3Show
      object mmDadosAdic: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        Height = 288
        Width = 594
      end
      object Panel3: TPanel
        Left = 0
        Top = 288
        Width = 594
        Height = 21
        Align = alBottom
        Caption = 
          'Altere ou acrescente informa'#231#245'es neste quadro, conforme a sua ne' +
          'cessidade.'
        TabOrder = 1
        ExplicitTop = 292
        ExplicitWidth = 602
      end
    end
    object Tab4: TcxTabSheet
      Caption = 'NF POR PRODUTO'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 602
        Height = 313
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = DataSource2
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
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
          OptionsView.CellAutoHeight = True
          OptionsView.GridLineColor = clBlack
          OptionsView.GroupByBox = False
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clYellow
          Styles.Content = cxStyle1
          Styles.Header = cxStyle1
          object cxGridDBTableView1nmro: TcxGridDBColumn
            DataBinding.FieldName = 'nmro'
            HeaderAlignmentHorz = taCenter
            Width = 69
          end
          object cxGridDBTableView1data: TcxGridDBColumn
            DataBinding.FieldName = 'data'
            HeaderAlignmentHorz = taCenter
            Width = 72
          end
          object cxGridDBTableView1nome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 352
          end
          object cxGridDBTableView1valor: TcxGridDBColumn
            DataBinding.FieldName = 'valor'
            HeaderAlignmentHorz = taCenter
            Width = 73
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  inherited ini: TFormStorage
    Left = 176
    Top = 282
  end
  inherited FR: TFormResizer
    Left = 80
    Top = 250
  end
  inherited EnterTab: TACBrEnterTab
    Left = 120
    Top = 274
  end
  object T1: TFDMemTable
    BeforePost = T1BeforePost
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 220
    Top = 282
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
    object T1qtd_nf: TFloatField
      FieldName = 'qtd_nf'
      DisplayFormat = '0.00#'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Scalable = True
    Left = 40
    Top = 282
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object DataSource1: TDataSource
    DataSet = T1
    Left = 268
    Top = 282
  end
  object T2: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 516
    Top = 218
    object T2nmro: TIntegerField
      DisplayLabel = 'N'#186' NF'
      FieldName = 'nmro'
    end
    object T2data: TDateField
      DisplayLabel = 'DT EMISS'#195'O'
      FieldName = 'data'
    end
    object T2nome: TStringField
      DisplayLabel = 'EMITENTE'
      FieldName = 'nome'
      Size = 100
    end
    object T2valor: TCurrencyField
      DisplayLabel = 'VALOR'
      FieldName = 'valor'
    end
    object T2id: TIntegerField
      FieldName = 'id'
    end
  end
  object DataSource2: TDataSource
    DataSet = T2
    Left = 468
    Top = 220
  end
end
