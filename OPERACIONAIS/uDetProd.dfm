inherited frmDetProd: TfrmDetProd
  Caption = 'Detalhes do Produto'
  ClientHeight = 457
  ClientWidth = 277
  FormStyle = fsStayOnTop
  ExplicitWidth = 283
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 415
    Width = 277
    ExplicitTop = 415
    ExplicitWidth = 277
    inherited pnlBtnClose: TPanel
      Left = 183
      ExplicitLeft = 183
    end
    inherited pnlBase: TPanel
      Width = 182
      ExplicitWidth = 182
    end
  end
  object cxDBVerticalGrid1: TcxDBVerticalGrid [2]
    Left = 0
    Top = 0
    Width = 277
    Height = 415
    Align = alClient
    OptionsView.ScrollBars = ssVertical
    OptionsView.CategoryExplorerStyle = True
    OptionsView.RowHeaderWidth = 140
    OptionsData.CancelOnExit = False
    OptionsData.Editing = False
    OptionsData.Appending = False
    OptionsData.Deleting = False
    OptionsData.DeletingConfirmation = False
    OptionsData.Inserting = False
    Navigator.Buttons.CustomButtons = <>
    TabOrder = 2
    DataController.DataSource = DM_NF_Entr.DScdNF_Item
    DataController.GridMode = True
    Version = 1
    object Categ_Prod: TcxCategoryRow
      Properties.Caption = 'DADOS DO ITEM'
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow
      Properties.Caption = 'ID Estoque'
      Properties.DataBinding.FieldName = 'id_prod'
      ID = 1
      ParentID = 0
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1QTD: TcxDBEditorRow
      Properties.Caption = 'QUANT P/ESTOQUE'
      Properties.DataBinding.FieldName = 'QTD'
      ID = 2
      ParentID = 0
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1ULT_CUSTO: TcxDBEditorRow
      Properties.Caption = #218'LTIMO CUSTO'
      Properties.DataBinding.FieldName = 'ULT_CUSTO'
      ID = 3
      ParentID = 0
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1VR_VENDA: TcxDBEditorRow
      Properties.Caption = 'VR. UN. VENDA'
      Properties.DataBinding.FieldName = 'VR_VENDA'
      ID = 4
      ParentID = 0
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1VR_CUSTO: TcxDBEditorRow
      Properties.Caption = 'VR. UN. CUSTO'
      Properties.DataBinding.FieldName = 'VR_CUSTO'
      ID = 5
      ParentID = 0
      Index = 4
      Version = 1
    end
    object cxDBVerticalGrid1vDesc: TcxDBEditorRow
      Properties.Caption = 'TOT DESC.'
      Properties.DataBinding.FieldName = 'vDesc'
      ID = 6
      ParentID = 0
      Index = 5
      Version = 1
    end
    object cxDBVerticalGrid1vSeg: TcxDBEditorRow
      Properties.Caption = 'VR. SEGURO'
      Properties.DataBinding.FieldName = 'vSeg'
      ID = 7
      ParentID = 0
      Index = 6
      Version = 1
    end
    object cxDBVerticalGrid1vFrete: TcxDBEditorRow
      Properties.Caption = 'VR. FRETE'
      Properties.DataBinding.FieldName = 'vFrete'
      ID = 8
      ParentID = 0
      Index = 7
      Version = 1
    end
    object cxDBVerticalGrid1vOutro: TcxDBEditorRow
      Properties.Caption = 'VR. O.D.A'
      Properties.DataBinding.FieldName = 'vOutro'
      ID = 9
      ParentID = 0
      Index = 8
      Version = 1
    end
    object cxDBVerticalGrid1uTrib: TcxDBEditorRow
      Properties.Caption = 'UN TRIBUT.'
      Properties.DataBinding.FieldName = 'uTrib'
      ID = 10
      ParentID = 0
      Index = 9
      Version = 1
    end
    object cxDBVerticalGrid1qTrib: TcxDBEditorRow
      Properties.Caption = 'QTD TRIBUT.'
      Properties.DataBinding.FieldName = 'qTrib'
      ID = 11
      ParentID = 0
      Index = 10
      Version = 1
    end
    object cxDBVerticalGrid1vUnTrib: TcxDBEditorRow
      Properties.Caption = 'VR. UN. TRIBUT.'
      Properties.DataBinding.FieldName = 'vUnTrib'
      ID = 12
      ParentID = 0
      Index = 11
      Version = 1
    end
    object cxDBVerticalGrid1uCom: TcxDBEditorRow
      Properties.Caption = 'UN. COMERC.'
      Properties.DataBinding.FieldName = 'uCom'
      ID = 13
      ParentID = 0
      Index = 12
      Version = 1
    end
    object cxDBVerticalGrid1qCom: TcxDBEditorRow
      Properties.Caption = 'QTD COMERC.'
      Properties.DataBinding.FieldName = 'qCom'
      ID = 14
      ParentID = 0
      Index = 13
      Version = 1
    end
    object cxDBVerticalGrid1vUnCom: TcxDBEditorRow
      Properties.Caption = 'VR. UN. COMERC.'
      Properties.DataBinding.FieldName = 'vUnCom'
      ID = 15
      ParentID = 0
      Index = 14
      Version = 1
    end
    object cxDBVerticalGrid1vProd: TcxDBEditorRow
      Properties.Caption = 'VR. TOTAL'
      Properties.DataBinding.FieldName = 'vProd'
      ID = 16
      ParentID = 0
      Index = 15
      Version = 1
    end
    object CategICMS: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'ICMS'
      ID = 17
      ParentID = -1
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1CFOP: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'CFOP'
      ID = 18
      ParentID = 17
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_orig: TcxDBEditorRow
      Properties.Caption = 'ORIGEM'
      Properties.DataBinding.FieldName = 'ICMS_orig'
      ID = 19
      ParentID = 17
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_vBC: TcxDBEditorRow
      Properties.Caption = 'VR. BASE CALC.'
      Properties.DataBinding.FieldName = 'ICMS_vBC'
      ID = 20
      ParentID = 17
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_pICMS: TcxDBEditorRow
      Properties.Caption = 'ALIQ. ICMS'
      Properties.DataBinding.FieldName = 'ICMS_pICMS'
      ID = 21
      ParentID = 17
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_vICMS: TcxDBEditorRow
      Properties.Caption = 'VR. ICMS'
      Properties.DataBinding.FieldName = 'ICMS_vICMS'
      ID = 22
      ParentID = 17
      Index = 4
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_modBC: TcxDBEditorRow
      Properties.Caption = 'MODAL. BC'
      Properties.DataBinding.FieldName = 'ICMS_modBC'
      ID = 23
      ParentID = 17
      Index = 5
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_CST: TcxDBEditorRow
      Properties.Caption = 'CST'
      Properties.DataBinding.FieldName = 'ICMS_CST'
      ID = 24
      ParentID = 17
      Index = 6
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_CSOSN: TcxDBEditorRow
      Properties.Caption = 'CSOSN'
      Properties.DataBinding.FieldName = 'ICMS_CSOSN'
      ID = 25
      ParentID = 17
      Index = 7
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_pRedBC: TcxDBEditorRow
      Properties.Caption = 'ALIQ. RED. BC'
      Properties.DataBinding.FieldName = 'ICMS_pRedBC'
      ID = 26
      ParentID = 17
      Index = 8
      Version = 1
    end
    object CategICMSST: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'ICMS ST'
      ID = 27
      ParentID = -1
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_modBCST: TcxDBEditorRow
      Properties.Caption = 'MODAL. BC '
      Properties.DataBinding.FieldName = 'ICMS_modBCST'
      ID = 28
      ParentID = 27
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_vBCST: TcxDBEditorRow
      Properties.Caption = 'VR. BASE C'#193'LC.'
      Properties.DataBinding.FieldName = 'ICMS_vBCST'
      ID = 29
      ParentID = 27
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_vICMSST: TcxDBEditorRow
      Properties.Caption = 'VR. ICMS'
      Properties.DataBinding.FieldName = 'ICMS_vICMSST'
      ID = 30
      ParentID = 27
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_pICMSST: TcxDBEditorRow
      Properties.Caption = 'AL'#205'Q. ICMS'
      Properties.DataBinding.FieldName = 'ICMS_pICMSST'
      ID = 31
      ParentID = 27
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_pRedBCST: TcxDBEditorRow
      Properties.Caption = 'ALIQ. RED. BC'
      Properties.DataBinding.FieldName = 'ICMS_pRedBCST'
      ID = 32
      ParentID = 27
      Index = 4
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_vTabelaST: TcxDBEditorRow
      Properties.Caption = 'VR. TABELA'
      Properties.DataBinding.FieldName = 'ICMS_vTabelaST'
      ID = 33
      ParentID = 27
      Index = 5
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_pMVAST: TcxDBEditorRow
      Properties.Caption = 'ALIQ. MVAST'
      Properties.DataBinding.FieldName = 'ICMS_pMVAST'
      ID = 34
      ParentID = 27
      Index = 6
      Version = 1
    end
    object CategSN: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'SIMPLES NACIONAL'
      ID = 35
      ParentID = -1
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_pCredSN: TcxDBEditorRow
      Properties.Caption = 'ALIQ CR'#201'D.'
      Properties.DataBinding.FieldName = 'ICMS_pCredSN'
      ID = 36
      ParentID = 35
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1ICMS_vCredICMSSN: TcxDBEditorRow
      Properties.Caption = 'VR. CR'#201'D.'
      Properties.DataBinding.FieldName = 'ICMS_vCredICMSSN'
      ID = 37
      ParentID = 35
      Index = 1
      Version = 1
    end
    object CategIPI: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'IPI'
      ID = 38
      ParentID = -1
      Index = 4
      Version = 1
    end
    object cxDBVerticalGrid1IPI_CNPJProd: TcxDBEditorRow
      Properties.Caption = 'CNPJ PROD.'
      Properties.DataBinding.FieldName = 'IPI_CNPJProd'
      ID = 39
      ParentID = 38
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1IPI_CST: TcxDBEditorRow
      Properties.Caption = 'CST'
      Properties.DataBinding.FieldName = 'IPI_CST'
      ID = 40
      ParentID = 38
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1IPI_clEnq: TcxDBEditorRow
      Properties.Caption = 'CL. ENQ.'
      Properties.DataBinding.FieldName = 'IPI_clEnq'
      ID = 41
      ParentID = 38
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1IPI_cEnq: TcxDBEditorRow
      Properties.Caption = 'C'#211'D. ENQ.'
      Properties.DataBinding.FieldName = 'IPI_cEnq'
      ID = 42
      ParentID = 41
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1IPI_cSelo: TcxDBEditorRow
      Properties.Caption = 'C'#211'D. SELO'
      Properties.DataBinding.FieldName = 'IPI_cSelo'
      ID = 43
      ParentID = 41
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1IPI_qSelo: TcxDBEditorRow
      Properties.Caption = 'QUANT SELOS'
      Properties.DataBinding.FieldName = 'IPI_qSelo'
      ID = 44
      ParentID = 41
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1IPI_vBC: TcxDBEditorRow
      Properties.Caption = 'BASE C'#193'LC.'
      Properties.DataBinding.FieldName = 'IPI_vBC'
      ID = 45
      ParentID = 38
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1IPI_qUnid: TcxDBEditorRow
      Properties.Caption = 'QTD'
      Properties.DataBinding.FieldName = 'IPI_qUnid'
      ID = 46
      ParentID = 38
      Index = 4
      Version = 1
    end
    object cxDBVerticalGrid1IPI_vUnid: TcxDBEditorRow
      Properties.Caption = 'VR. UNIT.'
      Properties.DataBinding.FieldName = 'IPI_vUnid'
      ID = 47
      ParentID = 38
      Index = 5
      Version = 1
    end
    object cxDBVerticalGrid1IPI_pIPI: TcxDBEditorRow
      Properties.Caption = 'AL'#205'Q'
      Properties.DataBinding.FieldName = 'IPI_pIPI'
      ID = 48
      ParentID = 38
      Index = 6
      Version = 1
    end
    object cxDBVerticalGrid1IPI_vIPI: TcxDBEditorRow
      Properties.Caption = 'VALOR'
      Properties.DataBinding.FieldName = 'IPI_vIPI'
      ID = 49
      ParentID = 38
      Index = 7
      Version = 1
    end
    object CategPIS: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'PIS'
      ID = 50
      ParentID = -1
      Index = 5
      Version = 1
    end
    object cxDBVerticalGrid1PIS_CST: TcxDBEditorRow
      Properties.Caption = 'CST'
      Properties.DataBinding.FieldName = 'PIS_CST'
      ID = 51
      ParentID = 50
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1PIS_vBC: TcxDBEditorRow
      Properties.Caption = 'VR. BC'
      Properties.DataBinding.FieldName = 'PIS_vBC'
      ID = 52
      ParentID = 50
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1PIS_pPIS: TcxDBEditorRow
      Properties.Caption = 'AL'#205'Q.'
      Properties.DataBinding.FieldName = 'PIS_pPIS'
      ID = 53
      ParentID = 50
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1PIS_vPIS: TcxDBEditorRow
      Properties.Caption = 'VALOR'
      Properties.DataBinding.FieldName = 'PIS_vPIS'
      ID = 54
      ParentID = 50
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1PIS_qBCProd: TcxDBEditorRow
      Properties.Caption = 'QUANT. BC'
      Properties.DataBinding.FieldName = 'PIS_qBCProd'
      ID = 55
      ParentID = 50
      Index = 4
      Version = 1
    end
    object cxDBVerticalGrid1PIS_vAliqProd: TcxDBEditorRow
      Properties.Caption = 'ALIQ. PROD.'
      Properties.DataBinding.FieldName = 'PIS_vAliqProd'
      ID = 56
      ParentID = 50
      Index = 5
      Version = 1
    end
    object CategPISST: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'PIS ST'
      ID = 57
      ParentID = -1
      Index = 6
      Version = 1
    end
    object cxDBVerticalGrid1PISST_vBc: TcxDBEditorRow
      Properties.Caption = 'VR. BC'
      Properties.DataBinding.FieldName = 'PISST_vBc'
      ID = 58
      ParentID = 57
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1PISST_pPis: TcxDBEditorRow
      Properties.Caption = 'ALIQ.'
      Properties.DataBinding.FieldName = 'PISST_pPis'
      ID = 59
      ParentID = 57
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1PISST_qBCProd: TcxDBEditorRow
      Properties.Caption = 'QUANT. BC'
      Properties.DataBinding.FieldName = 'PISST_qBCProd'
      ID = 60
      ParentID = 57
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1PISST_vAliqProd: TcxDBEditorRow
      Properties.Caption = 'AL'#205'Q. PROD.'
      Properties.DataBinding.FieldName = 'PISST_vAliqProd'
      ID = 61
      ParentID = 57
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1PISST_vPIS: TcxDBEditorRow
      Properties.Caption = 'VALOR'
      Properties.DataBinding.FieldName = 'PISST_vPIS'
      ID = 62
      ParentID = 57
      Index = 4
      Version = 1
    end
    object CategII: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'IMPORTA'#199#195'O'
      ID = 63
      ParentID = -1
      Index = 7
      Version = 1
    end
    object cxDBVerticalGrid1II_vBc: TcxDBEditorRow
      Properties.Caption = 'VR. BC'
      Properties.DataBinding.FieldName = 'II_vBc'
      ID = 64
      ParentID = 63
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1II_vDespAdu: TcxDBEditorRow
      Properties.Caption = 'VR. DESP. ADU.'
      Properties.DataBinding.FieldName = 'II_vDespAdu'
      ID = 65
      ParentID = 63
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1II_vII: TcxDBEditorRow
      Properties.Caption = 'VALOR'
      Properties.DataBinding.FieldName = 'II_vII'
      ID = 66
      ParentID = 63
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1II_vIOF: TcxDBEditorRow
      Properties.Caption = 'IOF'
      Properties.DataBinding.FieldName = 'II_vIOF'
      ID = 67
      ParentID = 63
      Index = 3
      Version = 1
    end
    object CategCOFINS: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'COFINS'
      ID = 68
      ParentID = -1
      Index = 8
      Version = 1
    end
    object cxDBVerticalGrid1COFINS_CST: TcxDBEditorRow
      Properties.Caption = 'CST'
      Properties.DataBinding.FieldName = 'COFINS_CST'
      ID = 69
      ParentID = 68
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1COFINS_vBC: TcxDBEditorRow
      Properties.Caption = 'BASE C'#193'LC.'
      Properties.DataBinding.FieldName = 'COFINS_vBC'
      ID = 70
      ParentID = 68
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1COFINS_pCOFINS: TcxDBEditorRow
      Properties.Caption = 'AL'#205'Q.'
      Properties.DataBinding.FieldName = 'COFINS_pCOFINS'
      ID = 71
      ParentID = 68
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1COFINS_vCOFINS: TcxDBEditorRow
      Properties.Caption = 'VALOR'
      Properties.DataBinding.FieldName = 'COFINS_vCOFINS'
      ID = 72
      ParentID = 68
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1COFINS_qBCProd: TcxDBEditorRow
      Properties.Caption = 'QTD BC PROD'
      Properties.DataBinding.FieldName = 'COFINS_qBCProd'
      ID = 73
      ParentID = 68
      Index = 4
      Version = 1
    end
    object cxDBVerticalGrid1COFINS_vAliqProd: TcxDBEditorRow
      Properties.Caption = 'VR. ALIQ. PROD.'
      Properties.DataBinding.FieldName = 'COFINS_vAliqProd'
      ID = 74
      ParentID = 68
      Index = 5
      Version = 1
    end
    object CAtegCOFINSST: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'COFINS ST'
      ID = 75
      ParentID = -1
      Index = 9
      Version = 1
    end
    object cxDBVerticalGrid1COFINSST_vBC: TcxDBEditorRow
      Properties.Caption = 'VR. BC'
      Properties.DataBinding.FieldName = 'COFINSST_vBC'
      ID = 76
      ParentID = 75
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1COFINSST_pCOFINS: TcxDBEditorRow
      Properties.Caption = 'AL'#205'Q'
      Properties.DataBinding.FieldName = 'COFINSST_pCOFINS'
      ID = 77
      ParentID = 75
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1COFINSST_qBCProd: TcxDBEditorRow
      Properties.Caption = 'QTD BC PROD'
      Properties.DataBinding.FieldName = 'COFINSST_qBCProd'
      ID = 78
      ParentID = 75
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1COFINSST_vAliqProd: TcxDBEditorRow
      Properties.Caption = 'VR. ALIQ PROD.'
      Properties.DataBinding.FieldName = 'COFINSST_vAliqProd'
      ID = 79
      ParentID = 75
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1COFINSST_vCOFINS: TcxDBEditorRow
      Properties.Caption = 'VALOR'
      Properties.DataBinding.FieldName = 'COFINSST_vCOFINS'
      ID = 80
      ParentID = 75
      Index = 4
      Version = 1
    end
    object CategISS: TcxCategoryRow
      Expanded = False
      Properties.Caption = 'ISSQN'
      ID = 81
      ParentID = -1
      Index = 10
      Version = 1
    end
    object cxDBVerticalGrid1ISSQN_SitTrib: TcxDBEditorRow
      Properties.Caption = 'SIT. TRIB.'
      Properties.DataBinding.FieldName = 'ISSQN_SitTrib'
      ID = 82
      ParentID = 81
      Index = 0
      Version = 1
    end
    object cxDBVerticalGrid1ISSQN_vBC: TcxDBEditorRow
      Properties.Caption = 'VR. BC'
      Properties.DataBinding.FieldName = 'ISSQN_vBC'
      ID = 83
      ParentID = 81
      Index = 1
      Version = 1
    end
    object cxDBVerticalGrid1ISSQN_vAliq: TcxDBEditorRow
      Properties.Caption = 'VR. ALIQ'
      Properties.DataBinding.FieldName = 'ISSQN_vAliq'
      ID = 84
      ParentID = 81
      Index = 2
      Version = 1
    end
    object cxDBVerticalGrid1ISSQN_vISSQN: TcxDBEditorRow
      Properties.Caption = 'VALOR'
      Properties.DataBinding.FieldName = 'ISSQN_vISSQN'
      ID = 85
      ParentID = 81
      Index = 3
      Version = 1
    end
    object cxDBVerticalGrid1ISSQN_cMunFG: TcxDBEditorRow
      Properties.Caption = 'MUN FG'
      Properties.DataBinding.FieldName = 'ISSQN_cMunFG'
      ID = 86
      ParentID = 81
      Index = 4
      Version = 1
    end
    object cxDBVerticalGrid1ISSQN_cListServ: TcxDBEditorRow
      Properties.Caption = 'C'#211'D LISTA SERV.'
      Properties.DataBinding.FieldName = 'ISSQN_cListServ'
      ID = 87
      ParentID = 81
      Index = 5
      Version = 1
    end
  end
  inherited ini: TFormStorage
    Left = 180
    Top = 156
  end
  inherited FR: TFormResizer
    Left = 184
    Top = 112
  end
  inherited EnterTab: TACBrEnterTab
    Left = 184
    Top = 64
  end
end
