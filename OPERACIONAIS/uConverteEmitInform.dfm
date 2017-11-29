inherited frmConverteEmitInform: TfrmConverteEmitInform
  Caption = 'REGRAS PARA TRIBUTA'#199#213'ES EM ENTRADA DE NF'
  ClientHeight = 538
  ClientWidth = 727
  OnKeyUp = FormKeyUp
  ExplicitWidth = 733
  ExplicitHeight = 566
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 496
    Width = 727
    TabOrder = 3
    ExplicitTop = 496
    ExplicitWidth = 727
    inherited pnlBtnClose: TPanel
      Left = 661
      Width = 61
      ExplicitLeft = 661
      ExplicitWidth = 61
      inherited btnSair: TcxButton
        Left = 0
        Width = 58
        ExplicitLeft = 0
        ExplicitWidth = 58
      end
    end
    inherited pnlBase: TPanel
      Width = 660
      ExplicitWidth = 660
      object dbNav: TcxDBNavigator
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 632
        Height = 30
        Buttons.CustomButtons = <>
        Buttons.First.Visible = False
        Buttons.PriorPage.Visible = False
        Buttons.Prior.Visible = False
        Buttons.Next.Visible = False
        Buttons.NextPage.Visible = False
        Buttons.Last.Visible = False
        Buttons.Insert.Hint = 'F5 - Novo Registro'
        Buttons.Insert.Visible = True
        Buttons.Delete.Hint = 'F6 - Excluir  Registro'
        Buttons.Delete.Visible = True
        Buttons.Edit.Hint = 'F7 - Alterar Registro'
        Buttons.Post.Hint = 'F8 - Gravar Registro'
        Buttons.Cancel.Hint = 'F9 - Cancelar Mudan'#231'as no Registro'
        Buttons.Refresh.Visible = False
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Visible = False
        DataSource = DM.dscfop_cst_csosn
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
    end
  end
  inherited Edit1: TEdit
    Left = 696
    TabOrder = 4
    ExplicitLeft = 696
  end
  object cxGroupBox1: TcxGroupBox [2]
    Left = 0
    Top = 370
    Align = alTop
    Caption = 'INFORMA'#199#213'ES DO EMITENTE'
    TabOrder = 1
    Height = 65
    Width = 727
    object cxLabel1: TcxLabel
      Left = 15
      Top = 18
      Caption = 'CFOP'
      ParentFont = False
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 83
      Top = 18
      Caption = 'CST'
      ParentFont = False
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 233
      Top = 35
      AutoSize = False
      Caption = 'CST SA'#205'DA'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Transparent = True
      Height = 17
      Width = 66
      AnchorX = 266
    end
    object cxLabel8: TcxLabel
      Left = 300
      Top = 18
      Caption = 'IPI'
      ParentFont = False
      Transparent = True
    end
    object cxLabel9: TcxLabel
      Left = 351
      Top = 18
      Caption = 'PIS'
      ParentFont = False
      Transparent = True
    end
    object cxLabel10: TcxLabel
      Left = 402
      Top = 18
      Caption = 'COFINS'
      ParentFont = False
      Transparent = True
    end
    object cxDBSpinEdit1: TcxDBTextEdit
      Left = 15
      Top = 35
      DataBinding.DataField = 'cfop'
      DataBinding.DataSource = DM.dscfop_cst_csosn
      ParentFont = False
      TabOrder = 0
      Width = 65
    end
    object cxDBSpinEdit2: TcxDBLookupComboBox
      Left = 86
      Top = 35
      DataBinding.DataField = 'cst'
      DataBinding.DataSource = DM.dscfop_cst_csosn
      ParentFont = False
      Properties.KeyFieldNames = 'acbr'
      Properties.ListColumns = <
        item
          FieldName = 'cst'
        end>
      Properties.ListSource = DM.dsCST
      TabOrder = 1
      Width = 56
    end
    object cxDBSpinEdit6: TcxDBLookupComboBox
      Left = 351
      Top = 35
      DataBinding.DataField = 'cst_pis_sai'
      DataBinding.DataSource = DM.dscfop_cst_csosn
      ParentFont = False
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'cst'
        end>
      Properties.ListSource = DM.dsCSTPC
      TabOrder = 4
      Width = 48
    end
    object cxDBSpinEdit7: TcxDBLookupComboBox
      Left = 300
      Top = 35
      DataBinding.DataField = 'cst_ipi_sai'
      DataBinding.DataSource = DM.dscfop_cst_csosn
      ParentFont = False
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'cst'
        end>
      Properties.ListSource = DM.dsCST2
      TabOrder = 3
      Width = 48
    end
    object cxDBSpinEdit8: TcxDBLookupComboBox
      Left = 402
      Top = 35
      DataBinding.DataField = 'cst_cofins_sai'
      DataBinding.DataSource = DM.dscfop_cst_csosn
      ParentFont = False
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'cst'
        end>
      Properties.ListSource = DM.dsCSTPC
      TabOrder = 5
      Width = 49
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 148
      Top = 34
      DataBinding.DataField = 'csosn'
      DataBinding.DataSource = DM.dscfop_cst_csosn
      ParentFont = False
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'csosn'
        end>
      Properties.ListSource = DM.dsCSOSN
      TabOrder = 2
      Width = 56
    end
    object cxLabel4: TcxLabel
      Left = 143
      Top = 18
      Caption = 'CSOSN'
      ParentFont = False
      Transparent = True
    end
  end
  object cxGroupBox2: TcxGroupBox [3]
    Left = 0
    Top = 435
    Align = alTop
    Caption = 'INFORMA'#199#213'ES DO DESTINAT'#193'RIO'
    TabOrder = 2
    Height = 61
    Width = 727
    object cxLabel3: TcxLabel
      Left = 216
      Top = 30
      AutoSize = False
      Caption = 'CST ENTRADA'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Transparent = True
      Height = 17
      Width = 81
      AnchorX = 257
    end
    object cxLabel12: TcxLabel
      Left = 18
      Top = 14
      Caption = 'CFOP'
      ParentFont = False
      Transparent = True
    end
    object Label20: TcxLabel
      Left = 86
      Top = 14
      Caption = 'CST'
      ParentFont = False
      Transparent = True
    end
    object cxLabel17: TcxLabel
      Left = 299
      Top = 12
      Caption = 'IPI'
      ParentFont = False
      Transparent = True
    end
    object cxLabel18: TcxLabel
      Left = 350
      Top = 12
      Caption = 'PIS'
      ParentFont = False
      Transparent = True
    end
    object cxLabel19: TcxLabel
      Left = 401
      Top = 12
      Caption = 'COFINS'
      ParentFont = False
      Transparent = True
    end
    object cxDBSpinEdit9: TcxDBTextEdit
      Left = 15
      Top = 30
      DataBinding.DataField = 'cfop_infor'
      DataBinding.DataSource = DM.dscfop_cst_csosn
      ParentFont = False
      TabOrder = 0
      Width = 65
    end
    object cmbcst: TcxDBLookupComboBox
      Tag = 1
      Left = 86
      Top = 30
      Hint = 'Para venda use 00, 40, 41 ou 60'
      DataBinding.DataField = 'cst_infor'
      DataBinding.DataSource = DM.dscfop_cst_csosn
      ParentFont = False
      ParentShowHint = False
      Properties.KeyFieldNames = 'acbr'
      Properties.ListColumns = <
        item
          FieldName = 'cst'
        end>
      Properties.ListSource = DM.dsCST
      ShowHint = True
      TabOrder = 1
      Width = 56
    end
    object cxDBSpinEdit14: TcxDBLookupComboBox
      Tag = 1
      Left = 350
      Top = 30
      DataBinding.DataField = 'cst_pis_ent_infor'
      DataBinding.DataSource = DM.dscfop_cst_csosn
      ParentFont = False
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'cst'
        end>
      Properties.ListSource = DM.dsCSTPC
      TabOrder = 4
      Width = 48
    end
    object cxDBSpinEdit15: TcxDBLookupComboBox
      Tag = 1
      Left = 303
      Top = 30
      DataBinding.DataField = 'cst_ipi_ent_infor'
      DataBinding.DataSource = DM.dscfop_cst_csosn
      ParentFont = False
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'cst'
        end>
      Properties.ListSource = DM.dsCST2
      TabOrder = 3
      Width = 48
    end
    object cxDBSpinEdit16: TcxDBLookupComboBox
      Tag = 1
      Left = 404
      Top = 30
      DataBinding.DataField = 'cst_cofins_ent_infor'
      DataBinding.DataSource = DM.dscfop_cst_csosn
      ParentFont = False
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'cst'
        end>
      Properties.ListSource = DM.dsCSTPC
      TabOrder = 5
      Width = 49
    end
    object cxLabel5: TcxLabel
      Left = 146
      Top = 14
      Caption = 'CSOSN'
      ParentFont = False
      Transparent = True
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Tag = 1
      Left = 148
      Top = 30
      Hint = 'Para venda use 00, 40, 41 ou 60'
      DataBinding.DataField = 'csosn_infor'
      DataBinding.DataSource = DM.dscfop_cst_csosn
      ParentFont = False
      ParentShowHint = False
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'csosn'
        end>
      Properties.ListSource = DM.dsCSOSN
      ShowHint = True
      TabOrder = 2
      Width = 56
    end
    object cxButton1: TcxButton
      AlignWithMargins = True
      Left = 624
      Top = 23
      Width = 98
      Height = 33
      Align = alRight
      Caption = 'Exibir todos'
      TabOrder = 13
      OnClick = cxButton1Click
      ExplicitLeft = 623
    end
  end
  object grdItens: TcxGrid [4]
    Left = 0
    Top = 31
    Width = 727
    Height = 339
    Align = alTop
    TabOrder = 0
    TabStop = False
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    object tbvItens: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = DM.dscfop_cst_csosn
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
      OptionsSelection.InvertSelect = False
      OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
      OptionsView.CellAutoHeight = True
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clYellow
      object tbvItenscfop: TcxGridDBColumn
        Caption = 'CFOP'
        DataBinding.FieldName = 'cfop'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 36
      end
      object tbvItenscst: TcxGridDBColumn
        Caption = 'CST'
        DataBinding.FieldName = 'cst'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 37
      end
      object tbvItenscsosn: TcxGridDBColumn
        Caption = 'CSOSN'
        DataBinding.FieldName = 'csosn'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 56
      end
      object tbvItenscst_ipi_sai: TcxGridDBColumn
        Caption = 'CST IPI'
        DataBinding.FieldName = 'cst_ipi_sai'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 61
      end
      object tbvItenscst_pis_sai: TcxGridDBColumn
        Caption = 'CST PIS'
        DataBinding.FieldName = 'cst_pis_sai'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 59
      end
      object tbvItenscst_cofins_sai: TcxGridDBColumn
        Caption = 'CST COFINS'
        DataBinding.FieldName = 'cst_cofins_sai'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle1
        Width = 84
      end
      object tbvItenscfop_infor: TcxGridDBColumn
        Caption = 'CFOP'
        DataBinding.FieldName = 'cfop_infor'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 50
      end
      object tbvItenscst_infor: TcxGridDBColumn
        Caption = 'CST'
        DataBinding.FieldName = 'cst_infor'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 56
      end
      object tbvItenscsosn_infor: TcxGridDBColumn
        Caption = 'CSOSN'
        DataBinding.FieldName = 'csosn_infor'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 56
      end
      object tbvItenscst_ipi_ent_infor: TcxGridDBColumn
        Caption = 'CST IPI'
        DataBinding.FieldName = 'cst_ipi_ent_infor'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 62
      end
      object tbvItenscst_pis_ent_infor: TcxGridDBColumn
        Caption = 'CST PIS'
        DataBinding.FieldName = 'cst_pis_ent_infor'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 58
      end
      object tbvItenscst_cofins_ent_infor: TcxGridDBColumn
        Caption = 'CST COFINS'
        DataBinding.FieldName = 'cst_cofins_ent_infor'
        HeaderAlignmentHorz = taCenter
        Styles.Header = cxStyle2
        Width = 77
      end
    end
    object lvItens: TcxGridLevel
      GridView = tbvItens
    end
  end
  object Panel1: TPanel [5]
    Left = 0
    Top = 0
    Width = 727
    Height = 31
    Align = alTop
    TabOrder = 5
    object Panel2: TPanel
      Left = 344
      Top = 1
      Width = 382
      Height = 29
      Align = alRight
      Caption = 'DADOS DO DESTINAT'#193'RIO'
      Color = 7317456
      ParentBackground = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 343
      Height = 29
      Align = alLeft
      Caption = 'DADOS DO EMITENTE'
      Color = 11653020
      ParentBackground = False
      TabOrder = 1
    end
  end
  inherited ini: TFormStorage
    Left = 136
    Top = 168
  end
  inherited FR: TFormResizer
    Top = 160
  end
  inherited EnterTab: TACBrEnterTab
    Left = 240
    Top = 148
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 608
    Top = 16
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 11653020
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 7317456
    end
  end
end
