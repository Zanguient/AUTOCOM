inherited frmtrn: Tfrmtrn
  Caption = 'TRNCENTRE - ENTRADA DE DADOS E COMUNICA'#199#195'O COM SERVDOR'
  ClientHeight = 383
  ClientWidth = 778
  Constraints.MinHeight = 100
  ExplicitWidth = 784
  ExplicitHeight = 412
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 313
    Width = 778
    Height = 66
    Align = alTop
    TabOrder = 1
    ExplicitTop = 313
    ExplicitWidth = 778
    ExplicitHeight = 66
    inherited pnlBtnClose: TPanel
      Left = 684
      Height = 60
      TabOrder = 1
      ExplicitLeft = 684
      ExplicitHeight = 60
      inherited btnSair: TcxButton
        Height = 54
        ExplicitHeight = 54
      end
    end
    inherited pnlBase: TPanel
      Width = 683
      Height = 60
      TabOrder = 0
      ExplicitWidth = 683
      ExplicitHeight = 60
      object btnok: TcxButton
        AlignWithMargins = True
        Left = 593
        Top = 3
        Width = 87
        Height = 54
        Align = alRight
        Caption = 'OK'
        TabOrder = 0
        OnClick = btnokClick
      end
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 393
        Height = 60
        TabStop = False
        Align = alLeft
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object cxLabel3: TcxLabel
        Left = 421
        Top = 0
        Caption = 'Valor do Subs'#237'dio'
      end
      object cxLabel4: TcxLabel
        Left = 395
        Top = 16
        Caption = 'Valor pago pelo cliente'
      end
      object lblPac: TcxLabel
        Left = 542
        Top = 16
        Caption = '0,00'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 570
      end
      object lblsub: TcxLabel
        Left = 542
        Top = 0
        Caption = '0,00'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 570
      end
      object cxLabel6: TcxLabel
        Left = 403
        Top = 35
        Caption = 'Desconto'
      end
      object lblDesc: TcxLabel
        Left = 542
        Top = 35
        Caption = '0,00'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 570
      end
    end
  end
  inherited Edit1: TEdit
    Left = 0
    Top = 0
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitTop = 0
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 778
    Height = 313
    Align = alTop
    TabOrder = 2
    object cxLabel5: TcxLabel
      Left = 132
      Top = 146
      Caption = 'AGUARDE O PROCESAMENTO...'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -32
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      AnchorX = 395
      AnchorY = 171
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 227
      Caption = 'OPERADORA'
    end
    object pnl1: TPanel
      Left = 338
      Top = 237
      Width = 200
      Height = 53
      TabOrder = 1
      Visible = False
      object lbl1: TcxLabel
        Left = 8
        Top = 1
        Caption = 'lbl1'
      end
      object ed1: TcxTextEdit
        Left = 10
        Top = 21
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        Width = 180
      end
      object cb1: TcxCheckBox
        Left = 8
        Top = 20
        Caption = 'cb1'
        TabOrder = 1
      end
    end
    object pnl2: TPanel
      Left = 486
      Top = 237
      Width = 200
      Height = 54
      TabOrder = 2
      Visible = False
      object lbl2: TcxLabel
        Left = 9
        Top = 3
        Caption = 'lbl1'
      end
      object ed2: TcxTextEdit
        Left = 11
        Top = 23
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        Width = 180
      end
      object cb2: TcxCheckBox
        Left = 9
        Top = 22
        Caption = 'cb1'
        TabOrder = 1
      end
    end
    object cmb1: TcxComboBox
      Left = 3
      Top = 247
      TabOrder = 3
      OnClick = cmb1Click
      Width = 156
    end
    object cxLabel2: TcxLabel
      Left = 3
      Top = 269
      Caption = 'N'#186' DO CART'#195'O'
    end
    object pnl3: TPanel
      Left = 574
      Top = 248
      Width = 200
      Height = 54
      TabOrder = 5
      Visible = False
      object lbl3: TcxLabel
        Left = 9
        Top = 3
        Caption = 'lbl1'
      end
      object ed3: TcxTextEdit
        Left = 11
        Top = 23
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        Width = 180
      end
      object cb3: TcxCheckBox
        Left = 9
        Top = 22
        Caption = 'cb1'
        TabOrder = 1
      end
    end
    object grd: TcxGrid
      Left = 1
      Top = 1
      Width = 776
      Height = 230
      Align = alTop
      TabOrder = 6
      TabStop = False
      LevelTabs.Slants.Kind = skCutCorner
      LevelTabs.Style = 6
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      object tbv: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        DataController.DataSource = DS3
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
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
        OptionsView.ScrollBars = ssVertical
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GridLineColor = clBlack
        OptionsView.GroupByBox = False
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
        OptionsView.Indicator = True
        OptionsView.RowSeparatorColor = clYellow
        Styles.Content = cxStyle1
        Styles.Header = cxStyle1
        object tbvid: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'ID no Estoque'
          Options.Editing = False
          Width = 36
        end
        object tbvitem: TcxGridDBColumn
          DataBinding.FieldName = 'item'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 46
        end
        object tbvean: TcxGridDBColumn
          DataBinding.FieldName = 'ean'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 83
        end
        object tbvnome: TcxGridDBColumn
          DataBinding.FieldName = 'nome'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 150
        end
        object tbvqtd: TcxGridDBColumn
          DataBinding.FieldName = 'qtd'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 37
        end
        object tbvvrbrt: TcxGridDBColumn
          DataBinding.FieldName = 'vrbrt'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 67
        end
        object tbvvrvst: TcxGridDBColumn
          DataBinding.FieldName = 'vrvst'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object tbvvrdesc: TcxGridDBColumn
          DataBinding.FieldName = 'vrdesc'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object tbvvrliq: TcxGridDBColumn
          Caption = 'VR TRN'
          DataBinding.FieldName = 'vrliq'
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'Valor da Central'
          Options.Editing = False
        end
        object tbvvrliq_local: TcxGridDBColumn
          Caption = 'VR EST'
          DataBinding.FieldName = 'vrliq_local'
          HeaderHint = 'Valor do estabelecimento'
        end
        object tbvparcial: TcxGridDBColumn
          DataBinding.FieldName = 'parcial'
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'Parcial'
          Options.Editing = False
        end
        object tbvaprov: TcxGridDBColumn
          DataBinding.FieldName = 'aprov'
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'Aprovado'
          Options.Editing = False
        end
        object tbvstatus: TcxGridDBColumn
          DataBinding.FieldName = 'status'
          HeaderAlignmentHorz = taCenter
          HeaderHint = 'C'#243'digo de status'
          Options.Editing = False
          Width = 27
        end
        object tbvmanter: TcxGridDBColumn
          DataBinding.FieldName = 'manter'
          HeaderHint = 'MANTER/DESCARTAR'
          Width = 20
        end
      end
      object lv: TcxGridLevel
        GridView = tbv
      end
    end
    object edcrt: TcxMaskEdit
      Left = 3
      Top = 286
      Properties.EditMask = '9999\.9999\.9999\.99999\ 999;0; '
      Properties.OnChange = edcrtPropertiesChange
      TabOrder = 7
      Text = '                    '
      OnKeyPress = edcrtKeyPress
      Width = 156
    end
    object cxLabel7: TcxLabel
      Left = 162
      Top = 269
      Caption = 'NSU ADMIN.'
    end
    object edNSU: TcxMaskEdit
      Left = 162
      Top = 286
      Properties.CharCase = ecUpperCase
      Properties.EditMask = '999999999999999;1; '
      Properties.OnChange = edNSUPropertiesChange
      TabOrder = 10
      Text = '               '
      OnKeyPress = edcrtKeyPress
      Width = 156
    end
  end
  inherited ini: TFormStorage
    StoredValues = <
      item
        Name = 'w'
        Value = 0
      end
      item
        Name = 'h'
        Value = 0
      end
      item
        Name = 'nsu'
        Value = 1
      end>
    Left = 480
    Top = 128
  end
  inherited FR: TFormResizer
    Left = 520
    Top = 128
  end
  inherited EnterTab: TACBrEnterTab
    Left = 560
    Top = 128
  end
  object T1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 542
    Top = 28
    object T1operadora: TStringField
      FieldName = 'operadora'
    end
    object T1cod_operadora: TStringField
      FieldName = 'cod_operadora'
      Size = 8
    end
    object T1tipo1: TStringField
      FieldName = 'tipo1'
      Size = 1
    end
    object T1tam_min1: TIntegerField
      FieldName = 'tam_min1'
    end
    object T1tam_max1: TIntegerField
      FieldName = 'tam_max1'
    end
    object T1label1: TStringField
      FieldName = 'label1'
    end
    object T1tipo2: TStringField
      FieldName = 'tipo2'
      Size = 1
    end
    object T1tam_min2: TIntegerField
      FieldName = 'tam_min2'
    end
    object T1tam_max2: TIntegerField
      FieldName = 'tam_max2'
    end
    object T1label2: TStringField
      FieldName = 'label2'
    end
    object T1tipo_prod: TStringField
      FieldName = 'tipo_prod'
      Size = 1
    end
    object T1label_prod: TStringField
      FieldName = 'label_prod'
    end
    object T1tam_pro_min: TIntegerField
      FieldName = 'tam_pro_min'
    end
    object T1tam_pro_max: TIntegerField
      FieldName = 'tam_pro_max'
    end
    object T1modulo: TStringField
      FieldName = 'modulo'
      Size = 2
    end
  end
  object DS1: TDataSource
    DataSet = T1
    Left = 590
    Top = 28
  end
  object T2: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 634
    Top = 87
    object T2codigo: TStringField
      FieldName = 'codigo'
      Size = 10
    end
    object T2conteudo: TMemoField
      FieldName = 'conteudo'
      BlobType = ftMemo
    end
  end
  object T3: TFDMemTable
    AfterInsert = T3AfterInsert
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 666
    Top = 31
    object T3id: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID'
      FieldName = 'id'
      DisplayFormat = '0000'
    end
    object T3item: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ITEM'
      FieldName = 'item'
      DisplayFormat = '000'
    end
    object T3ean: TStringField
      DisplayLabel = 'C'#211'D GTIN'
      FieldName = 'ean'
    end
    object T3nome: TStringField
      DisplayLabel = 'PRODUTO'
      FieldName = 'nome'
      Size = 100
    end
    object T3parcial: TBooleanField
      DisplayLabel = 'P'
      FieldName = 'parcial'
    end
    object T3vrbrt: TCurrencyField
      DisplayLabel = 'VR. BRUTO'
      FieldName = 'vrbrt'
      DisplayFormat = '0.00'
      currency = False
    end
    object T3vrvst: TCurrencyField
      DisplayLabel = 'VR VISTA'
      FieldName = 'vrvst'
      DisplayFormat = '0.00'
      currency = False
    end
    object T3vrdesc: TCurrencyField
      DisplayLabel = 'DESC'
      FieldName = 'vrdesc'
      DisplayFormat = '0.00%'
      currency = False
    end
    object T3aprov: TBooleanField
      Alignment = taCenter
      DisplayLabel = 'A'
      FieldName = 'aprov'
    end
    object T3qtd: TCurrencyField
      DisplayLabel = 'QTD'
      FieldName = 'qtd'
      DisplayFormat = '00'
      currency = False
    end
    object T3vrliq: TCurrencyField
      DisplayLabel = 'VR L'#205'Q'
      FieldName = 'vrliq'
      DisplayFormat = '0.00'
      currency = False
    end
    object T3status: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ST'
      FieldName = 'status'
    end
    object T3manter: TBooleanField
      DisplayLabel = 'M'
      FieldName = 'manter'
    end
    object T3complem: TStringField
      FieldName = 'complem'
    end
    object T3vrbrt_local: TCurrencyField
      FieldName = 'vrbrt_local'
    end
    object T3vrliq_local: TCurrencyField
      FieldName = 'vrliq_local'
      DisplayFormat = '0.00'
      currency = False
    end
  end
  object DS3: TDataSource
    DataSet = T3
    Left = 726
    Top = 36
  end
  object cxStyleRepository1: TcxStyleRepository
    Scalable = True
    Left = 360
    Top = 112
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
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 256
    Top = 48
  end
end
