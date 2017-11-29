inherited frmDetNF_Entr: TfrmDetNF_Entr
  Caption = 'DETALHES DA NF'
  ClientHeight = 476
  ClientWidth = 860
  ExplicitWidth = 866
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 434
    Width = 860
    ExplicitTop = 434
    ExplicitWidth = 860
    inherited pnlBtnClose: TPanel
      Left = 766
      ExplicitLeft = 766
    end
    inherited pnlBase: TPanel
      Width = 765
      ExplicitWidth = 765
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 860
    Height = 36
    Align = alTop
    TabOrder = 2
    object cxLabel24: TcxLabel
      Left = 180
      Top = -1
      Caption = 'CHAVE NF-e'
      FocusControl = cxDBLabel25
      ParentFont = False
      Transparent = True
    end
    object cxDBLabel25: TcxDBLabel
      Left = 180
      Top = 15
      DataBinding.DataField = 'chave'
      DataBinding.DataSource = DM_NF_Entr.DSNF_Chave
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Height = 17
      Width = 298
    end
    object cxLabel25: TcxLabel
      Left = 2
      Top = -1
      Caption = 'N'#186' NF'
      FocusControl = cxDBLabel26
      ParentFont = False
      Transparent = True
    end
    object cxDBLabel26: TcxDBLabel
      Left = 2
      Top = 15
      DataBinding.DataField = 'Ide_nNF'
      DataBinding.DataSource = DM_NF_Entr.DSNF
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Height = 17
      Width = 80
    end
    object cxLabel26: TcxLabel
      Left = 87
      Top = 0
      Caption = 'MOD.'
      FocusControl = cxDBLabel27
      ParentFont = False
      Transparent = True
    end
    object cxDBLabel27: TcxDBLabel
      Left = 85
      Top = 15
      DataBinding.DataField = 'Ide_modelo'
      DataBinding.DataSource = DM_NF_Entr.DSNF
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Height = 17
      Width = 33
    end
    object cxDBLabel29: TcxDBLabel
      Left = 481
      Top = 15
      DataBinding.DataField = 'Ide_natOp'
      DataBinding.DataSource = DM_NF_Entr.DSNF
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Height = 17
      Width = 395
    end
    object cxLabel28: TcxLabel
      Left = 481
      Top = -1
      Caption = 'NAT. OPERA'#199#195'O'
      FocusControl = cxDBLabel29
      ParentFont = False
      Transparent = True
    end
    object cxLabel27: TcxLabel
      Left = 121
      Top = -1
      Caption = 'S'#201'RIE'
      FocusControl = cxDBLabel28
      ParentFont = False
      Transparent = True
    end
    object cxDBLabel28: TcxDBLabel
      Left = 121
      Top = 15
      DataBinding.DataField = 'Ide_serie'
      DataBinding.DataSource = DM_NF_Entr.DSNF
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Height = 17
      Width = 56
    end
  end
  object CategoryPanelGroup1: TCategoryPanelGroup [3]
    Left = 0
    Top = 36
    Width = 860
    Height = 398
    VertScrollBar.Tracking = True
    Align = alClient
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 3
    object CategoryPanel7: TCategoryPanel
      Top = 180
      Height = 173
      Caption = 'VALORES DA NOTA'
      TabOrder = 0
      object cxDBLabel30: TcxDBLabel
        Left = 132
        Top = 47
        DataBinding.DataField = 'ICMSTot_vBC'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 80
      end
      object cxLabel29: TcxLabel
        Left = 132
        Top = 31
        Caption = 'BC ICMS'
        FocusControl = cxDBLabel30
        ParentFont = False
        Transparent = True
      end
      object cxDBLabel31: TcxDBLabel
        Left = 218
        Top = 47
        DataBinding.DataField = 'ICMSTot_vICMS'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 80
      end
      object cxLabel30: TcxLabel
        Left = 218
        Top = 31
        Caption = 'VR. ICMS'
        FocusControl = cxDBLabel31
        ParentFont = False
        Transparent = True
      end
      object cxLabel31: TcxLabel
        Left = 302
        Top = 31
        Caption = 'BC ICMS ST'
        FocusControl = cxDBLabel32
        ParentFont = False
        Transparent = True
      end
      object cxDBLabel32: TcxDBLabel
        Left = 302
        Top = 47
        DataBinding.DataField = 'ICMSTot_vBCST'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 80
      end
      object cxDBLabel33: TcxDBLabel
        Left = 388
        Top = 47
        DataBinding.DataField = 'ICMSTot_vST'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 80
      end
      object cxLabel32: TcxLabel
        Left = 388
        Top = 31
        Caption = 'VR. ICMS ST'
        FocusControl = cxDBLabel33
        ParentFont = False
        Transparent = True
      end
      object cxLabel33: TcxLabel
        Left = 560
        Top = 71
        Caption = 'VR. PROD.'
        FocusControl = cxDBLabel34
        ParentFont = False
        Transparent = True
      end
      object cxDBLabel34: TcxDBLabel
        Left = 560
        Top = 87
        DataBinding.DataField = 'ICMSTot_vProd'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 80
      end
      object cxDBLabel35: TcxDBLabel
        Left = 700
        Top = 71
        DataBinding.DataField = 'ICMSTot_vNF'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 117
      end
      object cxLabel34: TcxLabel
        Left = 700
        Top = 55
        Caption = 'VR. NOTA'
        FocusControl = cxDBLabel35
        ParentFont = False
        Transparent = True
      end
      object cxDBLabel36: TcxDBLabel
        Left = 474
        Top = 47
        DataBinding.DataField = 'ICMSTot_vDesc'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 80
      end
      object cxDBLabel37: TcxDBLabel
        Left = 560
        Top = 47
        DataBinding.DataField = 'ICMSTot_vSeg'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 80
      end
      object cxDBLabel38: TcxDBLabel
        Left = 388
        Top = 87
        DataBinding.DataField = 'ICMSTot_vFrete'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 80
      end
      object cxLabel36: TcxLabel
        Left = 388
        Top = 71
        Caption = 'VR. FRETE'
        FocusControl = cxDBLabel38
        ParentFont = False
        Transparent = True
      end
      object cxLabel37: TcxLabel
        Left = 560
        Top = 31
        Caption = 'VR. SEGURO'
        FocusControl = cxDBLabel37
        ParentFont = False
        Transparent = True
      end
      object cxLabel38: TcxLabel
        Left = 474
        Top = 31
        Caption = 'DESCONTOS'
        FocusControl = cxDBLabel36
        ParentFont = False
        Transparent = True
      end
      object cxDBLabel39: TcxDBLabel
        Left = 473
        Top = 87
        DataBinding.DataField = 'ICMSTot_vOutro'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 80
      end
      object cxLabel35: TcxLabel
        Left = 473
        Top = 71
        Caption = 'VR. O.D.ACES.'
        FocusControl = cxDBLabel39
        ParentFont = False
        Transparent = True
      end
      object cxDBLabel40: TcxDBLabel
        Left = 132
        Top = 87
        DataBinding.DataField = 'ICMSTot_vPIS'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 80
      end
      object cxLabel39: TcxLabel
        Left = 132
        Top = 71
        Caption = 'VR. PIS'
        FocusControl = cxDBLabel40
        ParentFont = False
        Transparent = True
      end
      object cxDBLabel41: TcxDBLabel
        Left = 218
        Top = 87
        DataBinding.DataField = 'ICMSTot_vCOFINS'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 80
      end
      object cxLabel40: TcxLabel
        Left = 218
        Top = 71
        Caption = 'VR. COFINS'
        FocusControl = cxDBLabel41
        ParentFont = False
        Transparent = True
      end
      object cxDBLabel42: TcxDBLabel
        Left = 302
        Top = 87
        DataBinding.DataField = 'ICMSTot_vIPI'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 80
      end
      object cxLabel41: TcxLabel
        Left = 302
        Top = 71
        Caption = 'VR. IPI'
        FocusControl = cxDBLabel42
        ParentFont = False
        Transparent = True
      end
    end
    object CategoryPanel6: TCategoryPanel
      Top = 150
      Height = 30
      Caption = 'FATURA E DUPLICATAS'
      Collapsed = True
      TabOrder = 1
      ExpandedHeight = 139
      object Label40: TLabel
        Left = 134
        Top = 17
        Width = 61
        Height = 15
        Caption = 'N'#186' FATURA'
        FocusControl = cxDBTextEdit9
      end
      object Label41: TLabel
        Left = 134
        Top = 57
        Width = 53
        Height = 15
        Caption = 'VR. ORIG.'
        FocusControl = cxDBCalcEdit23
      end
      object Label42: TLabel
        Left = 218
        Top = 17
        Width = 53
        Height = 15
        Caption = 'VR. DESC.'
        FocusControl = cxDBCalcEdit24
      end
      object Label43: TLabel
        Left = 218
        Top = 57
        Width = 42
        Height = 15
        Caption = 'VR L'#205'Q.'
        FocusControl = cxDBCalcEdit25
      end
      object cxDBTextEdit9: TcxDBLabel
        Left = 134
        Top = 33
        DataBinding.DataField = 'nFat'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 74
      end
      object cxDBCalcEdit24: TcxDBLabel
        Left = 218
        Top = 33
        DataBinding.DataField = 'vDesc'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 78
      end
      object cxDBCalcEdit23: TcxDBLabel
        Left = 134
        Top = 73
        DataBinding.DataField = 'vOrig'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 78
      end
      object cxDBCalcEdit25: TcxDBLabel
        Left = 218
        Top = 73
        DataBinding.DataField = 'vLiq'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 78
      end
      object grdDup: TcxGrid
        Left = 422
        Top = 0
        Width = 434
        Height = 0
        Align = alRight
        TabOrder = 4
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        object tbvDup: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = DM_NF_Entr.DSNF_Duplicata
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.MRUItemsList = False
          Filtering.ColumnMRUItemsList = False
          NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsData.Appending = True
          OptionsSelection.InvertSelect = False
          OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
          OptionsView.ScrollBars = ssVertical
          OptionsView.CellAutoHeight = True
          OptionsView.GridLineColor = clBlack
          OptionsView.GroupByBox = False
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clYellow
          Styles.Content = cxStyle1
          object tbvDupnDup: TcxGridDBColumn
            Caption = 'N'#186' DA DUPLIC.'
            DataBinding.FieldName = 'nDup'
            HeaderAlignmentHorz = taCenter
            Width = 138
          end
          object tbvDupvDup: TcxGridDBColumn
            Caption = 'VALOR'
            DataBinding.FieldName = 'vDup'
            HeaderAlignmentHorz = taCenter
          end
          object tbvDupdVenc: TcxGridDBColumn
            Caption = 'DT VENCIMENTO'
            DataBinding.FieldName = 'dVenc'
            HeaderAlignmentHorz = taCenter
            Width = 107
          end
        end
        object lvDup: TcxGridLevel
          GridView = tbvDup
        end
      end
    end
    object CategoryPanel5: TCategoryPanel
      Top = 120
      Height = 30
      Caption = 'VOLUMES'
      Collapsed = True
      TabOrder = 2
      object grd: TcxGrid
        Left = 0
        Top = 0
        Width = 856
        Height = 0
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        object tbv: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = DM_NF_Entr.DSNF_Volume
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.MRUItemsList = False
          Filtering.ColumnMRUItemsList = False
          NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsData.Appending = True
          OptionsSelection.InvertSelect = False
          OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
          OptionsView.ScrollBars = ssVertical
          OptionsView.CellAutoHeight = True
          OptionsView.GridLineColor = clBlack
          OptionsView.GroupByBox = False
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clYellow
          Styles.Content = cxStyle1
          object tbvqVol: TcxGridDBColumn
            Caption = 'VOLUMES'
            DataBinding.FieldName = 'qVol'
            HeaderAlignmentHorz = taCenter
          end
          object tbvespecie: TcxGridDBColumn
            Caption = 'ESP'#201'CIE'
            DataBinding.FieldName = 'especie'
            HeaderAlignmentHorz = taCenter
            Width = 174
          end
          object tbvmarca: TcxGridDBColumn
            Caption = 'MARCA'
            DataBinding.FieldName = 'marca'
            HeaderAlignmentHorz = taCenter
            Width = 237
          end
          object tbvnVol: TcxGridDBColumn
            Caption = 'DESCRI'#199#195'O'
            DataBinding.FieldName = 'nVol'
            HeaderAlignmentHorz = taCenter
            Width = 220
          end
          object tbvpesoL: TcxGridDBColumn
            Caption = 'PESO L'#205'Q.'
            DataBinding.FieldName = 'pesoL'
            HeaderAlignmentHorz = taCenter
          end
          object tbvpesoB: TcxGridDBColumn
            Caption = 'PESO BRT'
            DataBinding.FieldName = 'pesoB'
            HeaderAlignmentHorz = taCenter
          end
        end
        object lv: TcxGridLevel
          GridView = tbv
        end
      end
    end
    object CategoryPanel4: TCategoryPanel
      Top = 90
      Height = 30
      Caption = 'TRANSPORTE'
      Collapsed = True
      TabOrder = 3
      ExpandedHeight = 112
      object Label34: TcxLabel
        Left = 5
        Top = 2
        Caption = 'CNPJ/CPF'
        FocusControl = cxDBTextEdit1
        ParentFont = False
        Transparent = True
      end
      object Label35: TcxLabel
        Left = 259
        Top = 2
        Caption = 'Nome/Raz'#227'o Social'
        FocusControl = cxDBTextEdit3
        ParentFont = False
        Transparent = True
      end
      object Label36: TcxLabel
        Left = 134
        Top = 2
        Caption = 'Inscr. Estadual'
        FocusControl = cxDBTextEdit5
        ParentFont = False
        Transparent = True
      end
      object Label37: TcxLabel
        Left = 5
        Top = 42
        Caption = 'Endere'#231'o'
        FocusControl = cxDBTextEdit6
        ParentFont = False
        Transparent = True
      end
      object Label38: TcxLabel
        Left = 380
        Top = 42
        Caption = 'Munic'#237'pio'
        FocusControl = cxDBTextEdit7
        ParentFont = False
        Transparent = True
      end
      object Label39: TcxLabel
        Left = 622
        Top = 41
        Caption = 'UF'
        FocusControl = cxDBTextEdit8
        ParentFont = False
        Transparent = True
      end
      object cxDBTextEdit1: TcxDBLabel
        Left = 5
        Top = 18
        DataBinding.DataField = 'Transporta_CNPJCPF'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 123
      end
      object cxDBTextEdit3: TcxDBLabel
        Left = 259
        Top = 18
        DataBinding.DataField = 'Transporta_xNome'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 391
      end
      object cxDBTextEdit5: TcxDBLabel
        Left = 134
        Top = 18
        DataBinding.DataField = 'Transporta_IE'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 119
      end
      object cxDBTextEdit6: TcxDBLabel
        Left = 5
        Top = 58
        DataBinding.DataField = 'Transporta_xEnder'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 371
      end
      object cxDBTextEdit7: TcxDBLabel
        Left = 380
        Top = 58
        DataBinding.DataField = 'Transporta_xMun'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 236
      end
      object cxDBTextEdit8: TcxDBLabel
        Left = 620
        Top = 58
        DataBinding.DataField = 'Transporta_UF'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 30
      end
    end
    object CategoryPanel3: TCategoryPanel
      Top = 60
      Height = 30
      Caption = 'INFORMA'#199#213'ES COMPLEMENTARES'
      Collapsed = True
      TabOrder = 4
      object cxDBMemo1: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'infCpl'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentFont = False
        Properties.ReadOnly = True
        Properties.ScrollBars = ssVertical
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 0
        Width = 856
      end
      object cxDBMemo2: TcxDBMemo
        AlignWithMargins = True
        Left = 3
        Top = -70
        Align = alBottom
        DataBinding.DataField = 'infAdFisco'
        DataBinding.DataSource = DM_NF_Entr.DSNF
        ParentFont = False
        Properties.ScrollBars = ssVertical
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Verdana'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 67
        Width = 850
      end
    end
    object CategoryPanel2: TCategoryPanel
      Top = 30
      Height = 30
      Caption = 'DETALHES DO '#205'TEM'
      Collapsed = True
      TabOrder = 5
      object Label11: TcxLabel
        Left = 43
        Top = 1
        Caption = 'C'#211'DIGO GTIN'
        FocusControl = cxDBCalcEdit1
        ParentFont = False
        Transparent = True
      end
      object cxDBCalcEdit1: TcxDBLabel
        Left = 43
        Top = 19
        DataBinding.DataField = 'cEAN'
        DataBinding.DataSource = DM_NF_Entr.DSNF_Item
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 167
        Top = 1
        Caption = 'CFOP'
        FocusControl = cxDBLabel1
        ParentFont = False
        Transparent = True
      end
      object cxDBLabel1: TcxDBLabel
        Left = 167
        Top = 19
        DataBinding.DataField = 'CFOP_inform'
        DataBinding.DataSource = DM_NF_Entr.DSNF_Item
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 34
      end
      object cxDBLabel2: TcxDBLabel
        Left = 218
        Top = 19
        DataBinding.DataField = 'ICMS_CST_inform'
        DataBinding.DataSource = DM_NF_Entr.DSNF_Item
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 20
      end
      object cxLabel2: TcxLabel
        Left = 203
        Top = 1
        Caption = 'CST'
        FocusControl = cxDBLabel2
        ParentFont = False
        Transparent = True
      end
      object cxDBLabel3: TcxDBLabel
        Left = 203
        Top = 19
        DataBinding.DataField = 'ICMS_orig_inform'
        DataBinding.DataSource = DM_NF_Entr.DSNF_Item
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 15
      end
      object cxDBLabel4: TcxDBLabel
        Left = 240
        Top = 19
        DataBinding.DataField = 'ICMS_CSOSN_inform'
        DataBinding.DataSource = DM_NF_Entr.DSNF_Item
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 34
      end
      object cxLabel3: TcxLabel
        Left = 240
        Top = 1
        Caption = 'CSOSN'
        FocusControl = cxDBLabel4
        ParentFont = False
        Transparent = True
      end
      object cxLabel4: TcxLabel
        Left = 2
        Top = 1
        Caption = 'ID'
        FocusControl = cxDBLabel5
        ParentFont = False
        Transparent = True
      end
      object cxDBLabel5: TcxDBLabel
        Left = 2
        Top = 19
        DataBinding.DataField = 'cProd'
        DataBinding.DataSource = DM_NF_Entr.DSNF_Item
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 38
      end
      object cxGroupBox1: TcxGroupBox
        Left = 739
        Top = 0
        Caption = 'COFINS'
        TabOrder = 11
        Height = 170
        Width = 97
        object cxLabel5: TcxLabel
          Left = 7
          Top = 86
          Caption = 'AL'#205'QUOTA'
          FocusControl = cxDBLabel6
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel6: TcxDBLabel
          Left = 7
          Top = 103
          DataBinding.DataField = 'COFINS_pCOFINS_inform'
          DataBinding.DataSource = DM_NF_Entr.DSNF_Item
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 80
        end
        object cxLabel6: TcxLabel
          Left = 7
          Top = 122
          Caption = 'VALOR'
          FocusControl = cxDBLabel7
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel7: TcxDBLabel
          Left = 7
          Top = 139
          DataBinding.DataField = 'COFINS_vAliqProd_inform'
          DataBinding.DataSource = DM_NF_Entr.DSNF_Item
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 80
        end
        object cxLabel7: TcxLabel
          Left = 7
          Top = 46
          Caption = 'B.CALC'
          FocusControl = cxDBLabel8
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel8: TcxDBLabel
          Left = 7
          Top = 63
          DataBinding.DataField = 'COFINS_vBC_inform'
          DataBinding.DataSource = DM_NF_Entr.DSNF_Item
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 80
        end
        object cxLabel8: TcxLabel
          Left = 7
          Top = 13
          Caption = 'CST'
          FocusControl = cxDBLabel9
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel9: TcxDBLabel
          Left = 7
          Top = 30
          DataBinding.DataField = 'COFINS_CST_inform'
          DataBinding.DataSource = DM_NF_Entr.DSNF_Item
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 34
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 639
        Top = 0
        Caption = 'PIS'
        TabOrder = 12
        Height = 170
        Width = 97
        object cxLabel9: TcxLabel
          Left = 7
          Top = 86
          Caption = 'AL'#205'QUOTA'
          FocusControl = cxDBLabel10
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel10: TcxDBLabel
          Left = 7
          Top = 103
          DataBinding.DataField = 'PIS_pPIS_inform'
          DataBinding.DataSource = DM_NF_Entr.DSNF_Item
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 80
        end
        object cxLabel10: TcxLabel
          Left = 7
          Top = 122
          Caption = 'VALOR'
          FocusControl = cxDBLabel11
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel11: TcxDBLabel
          Left = 7
          Top = 139
          DataBinding.DataField = 'PIS_vAliqProd_inform'
          DataBinding.DataSource = DM_NF_Entr.DSNF_Item
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 80
        end
        object cxLabel11: TcxLabel
          Left = 7
          Top = 46
          Caption = 'B.CALC'
          FocusControl = cxDBLabel12
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel12: TcxDBLabel
          Left = 3
          Top = 63
          DataBinding.DataField = 'PIS_vBC_inform'
          DataBinding.DataSource = DM_NF_Entr.DSNF_Item
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 80
        end
        object cxLabel12: TcxLabel
          Left = 7
          Top = 13
          Caption = 'CST'
          FocusControl = cxDBLabel13
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel13: TcxDBLabel
          Left = 7
          Top = 30
          DataBinding.DataField = 'PIS_CST_inform'
          DataBinding.DataSource = DM_NF_Entr.DSNF_Item
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 34
        end
      end
      object cxDBLabel14: TcxDBLabel
        Left = 278
        Top = 19
        DataBinding.DataField = 'ICMS_vBC_inform'
        DataBinding.DataSource = DM_NF_Entr.DSNF_Item
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 97
      end
      object cxLabel13: TcxLabel
        Left = 278
        Top = 1
        Caption = 'BC ICMS'
        FocusControl = cxDBLabel14
        ParentFont = False
        Transparent = True
      end
      object cxDBLabel15: TcxDBLabel
        Left = 378
        Top = 19
        DataBinding.DataField = 'ICMS_pICMS_inform'
        DataBinding.DataSource = DM_NF_Entr.DSNF_Item
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 60
      end
      object cxLabel14: TcxLabel
        Left = 378
        Top = 1
        Caption = 'AL'#205'Q. ICMS'
        FocusControl = cxDBLabel15
        ParentFont = False
        Transparent = True
      end
      object cxDBLabel16: TcxDBLabel
        Left = 442
        Top = 19
        DataBinding.DataField = 'ICMS_vICMS_inform'
        DataBinding.DataSource = DM_NF_Entr.DSNF_Item
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 79
      end
      object cxLabel15: TcxLabel
        Left = 442
        Top = 1
        Caption = 'VR. ICMS'
        FocusControl = cxDBLabel16
        ParentFont = False
        Transparent = True
      end
      object cxGroupBox3: TcxGroupBox
        Left = -2
        Top = 73
        Caption = 'ST'
        TabOrder = 19
        Height = 97
        Width = 635
        object cxLabel16: TcxLabel
          Left = 3
          Top = 14
          Caption = 'BC ICMS'
          FocusControl = cxDBLabel17
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel17: TcxDBLabel
          Left = 3
          Top = 32
          DataBinding.DataField = 'ICMS_vBCST_inform'
          DataBinding.DataSource = DM_NF_Entr.DSNF_Item
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 97
        end
        object cxLabel17: TcxLabel
          Left = 103
          Top = 14
          Caption = 'AL'#205'Q. ICMS'
          FocusControl = cxDBLabel18
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel18: TcxDBLabel
          Left = 103
          Top = 32
          DataBinding.DataField = 'ICMS_pICMSST_inform'
          DataBinding.DataSource = DM_NF_Entr.DSNF_Item
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 60
        end
        object cxLabel18: TcxLabel
          Left = 167
          Top = 14
          Caption = 'VR. ICMS'
          FocusControl = cxDBLabel19
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel19: TcxDBLabel
          Left = 167
          Top = 32
          DataBinding.DataField = 'ICMS_vICMSST_inform'
          DataBinding.DataSource = DM_NF_Entr.DSNF_Item
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 79
        end
        object cxLabel19: TcxLabel
          Left = 252
          Top = 14
          Caption = 'BC ICMS RET.'
          FocusControl = cxDBLabel20
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel20: TcxDBLabel
          Left = 252
          Top = 32
          DataBinding.DataField = 'ICMS_vBCSTRet_inform'
          DataBinding.DataSource = DM_NF_Entr.DSNF_Item
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 97
        end
        object cxLabel20: TcxLabel
          Left = 352
          Top = 14
          Caption = 'VR. ICMS RET.'
          FocusControl = cxDBLabel21
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel21: TcxDBLabel
          Left = 352
          Top = 32
          DataBinding.DataField = 'ICMS_vICMSST_inform'
          DataBinding.DataSource = DM_NF_Entr.DSNF_Item
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 75
        end
      end
      object cxLabel21: TcxLabel
        Left = 2
        Top = 38
        Caption = 'VR. FRETE'
        FocusControl = cxDBLabel22
        ParentFont = False
        Transparent = True
      end
      object cxDBLabel22: TcxDBLabel
        Left = 2
        Top = 56
        DataBinding.DataField = 'vFrete'
        DataBinding.DataSource = DM_NF_Entr.DSNF_Item
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 79
      end
      object cxDBLabel23: TcxDBLabel
        Left = 85
        Top = 56
        DataBinding.DataField = 'vSeg'
        DataBinding.DataSource = DM_NF_Entr.DSNF_Item
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 79
      end
      object cxLabel22: TcxLabel
        Left = 85
        Top = 38
        Caption = 'VR. SEGURO'
        FocusControl = cxDBLabel23
        ParentFont = False
        Transparent = True
      end
      object cxDBLabel24: TcxDBLabel
        Left = 169
        Top = 56
        DataBinding.DataField = 'vOutro'
        DataBinding.DataSource = DM_NF_Entr.DSNF_Item
        ParentColor = False
        ParentFont = False
        Style.BorderStyle = ebsOffice11
        Height = 17
        Width = 79
      end
      object cxLabel23: TcxLabel
        Left = 169
        Top = 38
        Caption = 'VR. O.D.ACESS.'
        FocusControl = cxDBLabel24
        ParentFont = False
        Transparent = True
      end
    end
    object CategoryPanel1: TCategoryPanel
      Top = 0
      Height = 30
      Caption = 'ITEMS DA NF'
      Collapsed = True
      TabOrder = 6
      ExpandedHeight = 238
      object grdItens: TcxGrid
        AlignWithMargins = True
        Left = 0
        Top = 3
        Width = 856
        Height = 206
        Margins.Left = 0
        Margins.Right = 0
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        object tbvItens: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = DM_NF_Entr.DSNF_Item
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
          Styles.Content = cxStyle1
          object tbvItensnItem: TcxGridDBColumn
            Caption = #205'TEM'
            DataBinding.FieldName = 'nItem'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 36
          end
          object tbvItensxProd: TcxGridDBColumn
            Caption = 'DESCRI'#199#195'O DA MERCADORIA/SERVI'#199'O'
            DataBinding.FieldName = 'xProd'
            HeaderAlignmentHorz = taCenter
            Width = 445
          end
          object tbvItensNCM: TcxGridDBColumn
            DataBinding.FieldName = 'NCM'
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object tbvItensuCom: TcxGridDBColumn
            Caption = 'UNID.'
            DataBinding.FieldName = 'uCom'
            HeaderAlignmentHorz = taCenter
            Width = 39
          end
          object tbvItensqCom: TcxGridDBColumn
            DataBinding.FieldName = 'QTD'
            HeaderAlignmentHorz = taCenter
            Width = 41
          end
          object tbvItensvUnCom: TcxGridDBColumn
            Caption = 'VR. UNIT.'
            DataBinding.FieldName = 'vUnCom'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 66
          end
          object tbvItensvDesc: TcxGridDBColumn
            Caption = 'DESC'
            DataBinding.FieldName = 'vDesc'
            HeaderAlignmentHorz = taCenter
            Width = 49
          end
          object tbvItensvProd: TcxGridDBColumn
            Caption = 'VR. TOTAL'
            DataBinding.FieldName = 'vProd'
            HeaderAlignmentHorz = taCenter
            Width = 77
          end
        end
        object lvItens: TcxGridLevel
          GridView = tbvItens
        end
      end
    end
  end
  inherited ini: TFormStorage
    Left = 808
    Top = 40
  end
  inherited FR: TFormResizer
    Left = 808
    Top = 136
  end
  inherited EnterTab: TACBrEnterTab
    Left = 808
    Top = 88
  end
  object cxStyleRepository1: TcxStyleRepository
    Scalable = True
    Left = 72
    Top = 136
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
end
