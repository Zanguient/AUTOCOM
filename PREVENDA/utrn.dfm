inherited frmtrn: Tfrmtrn
  Caption = 'TRNCENTRE - ENTRADA DE DADOS E CAPTURA DA PR'#201' AUTORIZA'#199#195'O'
  ClientHeight = 355
  ClientWidth = 777
  ExplicitWidth = 783
  ExplicitHeight = 384
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 313
    Width = 777
    TabOrder = 7
    ExplicitTop = 313
    ExplicitWidth = 777
    inherited pnlBtnClose: TPanel
      Left = 683
      TabOrder = 1
      ExplicitLeft = 683
    end
    inherited pnlBase: TPanel
      Width = 682
      TabOrder = 0
      ExplicitWidth = 682
      object btnok: TcxButton
        AlignWithMargins = True
        Left = 592
        Top = 3
        Width = 87
        Height = 30
        Align = alRight
        Caption = 'OK'
        TabOrder = 0
        OnClick = btnokClick
        ExplicitLeft = 589
      end
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 313
        Height = 36
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
        Left = 352
        Top = 0
        Caption = 'Valor do Subs'#237'dio'
      end
      object cxLabel4: TcxLabel
        Left = 326
        Top = 16
        Caption = 'Valor pago pelo cliente'
      end
      object lblPac: TcxLabel
        Left = 505
        Top = 16
        Caption = '0,00'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 533
      end
      object lblsub: TcxLabel
        Left = 505
        Top = 0
        Caption = '0,00'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 533
      end
    end
  end
  inherited Edit1: TEdit
    TabOrder = 0
  end
  object cxLabel1: TcxLabel [2]
    Left = 3
    Top = 227
    Caption = 'OPERADORA'
  end
  object pnl1: TPanel [3]
    Left = 162
    Top = 247
    Width = 200
    Height = 53
    TabOrder = 3
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
      Width = 121
    end
  end
  object pnl2: TPanel [4]
    Left = 368
    Top = 248
    Width = 200
    Height = 54
    TabOrder = 4
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
      Width = 121
    end
  end
  object cmb1: TcxComboBox [5]
    Left = 3
    Top = 247
    TabOrder = 1
    OnClick = cmb1Click
    Width = 156
  end
  object cxLabel2: TcxLabel [6]
    Left = 3
    Top = 269
    Caption = 'N'#186' DO CART'#195'O'
  end
  object pnl3: TPanel [7]
    Left = 574
    Top = 248
    Width = 200
    Height = 54
    TabOrder = 8
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
      Width = 121
    end
  end
  object grd: TcxGrid [8]
    Left = 0
    Top = 0
    Width = 777
    Height = 230
    Align = alTop
    TabOrder = 9
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
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'vrbrt'
          Column = tbvvrbrt
        end
        item
          Format = '00'
          Kind = skSum
          FieldName = 'qtd'
          Column = tbvqtd
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'vrvst'
          Column = tbvvrvst
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'vrliq'
          Column = tbvvrliq
        end>
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
        Width = 213
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
        DataBinding.FieldName = 'vrliq'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
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
  object edcrt: TcxMaskEdit [9]
    Left = 3
    Top = 286
    Properties.EditMask = '9999\.9999\.9999\.99999\ 999;0; '
    TabOrder = 2
    Text = '                    '
    OnKeyPress = edcrtKeyPress
    Width = 156
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
  object T1: TADMemTable
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
  object T2: TADMemTable
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
  object T3: TADMemTable
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
    end
    object T3vrvst: TCurrencyField
      DisplayLabel = 'VR VISTA'
      FieldName = 'vrvst'
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
end
