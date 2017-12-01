inherited frmExtorno: TfrmExtorno
  Caption = 'PFP - Gerenciamento'
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    inherited pnlBase: TPanel
      ExplicitLeft = 121
      ExplicitTop = 9
      object btnVia: TcxButton
        Tag = 2
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 110
        Height = 30
        Align = alLeft
        Caption = '2'#170' VIA DO COMPROVANTE'
        Enabled = False
        TabOrder = 0
        WordWrap = True
        OnClick = btnViaClick
        ExplicitLeft = 119
        ExplicitHeight = 46
      end
      object Panel1: TPanel
        Left = 116
        Top = 0
        Width = 309
        Height = 36
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object Label1: TLabel
          Left = 12
          Top = -3
          Width = 85
          Height = 15
          Caption = 'F2 - VENDEDOR'
        end
        object Label2: TLabel
          Left = 125
          Top = -3
          Width = 40
          Height = 15
          Caption = 'SENHA'
        end
        object EdSenha: TcxTextEdit
          Left = 123
          Top = 11
          Enabled = False
          Properties.EchoMode = eemPassword
          Properties.PasswordChar = '*'
          TabOrder = 0
          Width = 68
        end
        object edVend: TcxTextEdit
          Left = 10
          Top = 11
          Enabled = False
          TabOrder = 1
          Width = 107
        end
        object btnExtorno: TcxButton
          Tag = 2
          AlignWithMargins = True
          Left = 196
          Top = 3
          Width = 110
          Height = 30
          Align = alRight
          Caption = 'EXTORNAR'
          Enabled = False
          TabOrder = 2
          WordWrap = True
          OnClick = btnExtornoClick
          ExplicitLeft = 197
        end
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
    ExplicitLeft = 328
    ExplicitTop = 40
    ExplicitWidth = 289
    ExplicitHeight = 193
    ClientRectBottom = 335
    ClientRectLeft = 4
    ClientRectRight = 598
    ClientRectTop = 26
    object Tab1: TcxTabSheet
      Caption = 'VENDAS'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grd: TcxGrid
        Left = 0
        Top = 0
        Width = 594
        Height = 309
        Align = alClient
        TabOrder = 0
        TabStop = False
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 541
        ExplicitHeight = 348
        object tbv: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnCellClick = tbvCellClick
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
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
          OptionsView.ScrollBars = ssVertical
          OptionsView.CellAutoHeight = True
          OptionsView.GridLineColor = clBlack
          OptionsView.GroupByBox = False
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clYellow
          object tbvcoo: TcxGridDBColumn
            Caption = 'CUPOM'
            DataBinding.FieldName = 'coo'
            HeaderAlignmentHorz = taCenter
            Width = 52
          end
          object tbvdata: TcxGridDBColumn
            Caption = 'DATA'
            DataBinding.FieldName = 'data'
            HeaderAlignmentHorz = taCenter
            Width = 62
          end
          object tbvhora: TcxGridDBColumn
            Caption = 'HORA'
            DataBinding.FieldName = 'hora'
            HeaderAlignmentHorz = taCenter
          end
          object tbvnome: TcxGridDBColumn
            Caption = 'BENEFICI'#193'RIO'
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 125
          end
          object tbvcpf: TcxGridDBColumn
            Caption = 'CPF'
            DataBinding.FieldName = 'cpf'
            HeaderAlignmentHorz = taCenter
            Width = 103
          end
          object tbvcod_autoriz: TcxGridDBColumn
            Caption = 'AUTORIZA'#199#195'O'
            DataBinding.FieldName = 'cod_autoriz'
            HeaderAlignmentHorz = taCenter
            Width = 97
          end
          object tbvdt_extorno: TcxGridDBColumn
            Caption = 'EXTORNO'
            DataBinding.FieldName = 'dt_extorno'
            HeaderAlignmentHorz = taCenter
          end
          object tbvlocal: TcxGridDBColumn
            DataBinding.FieldName = 'local'
          end
          object tbvvenda: TcxGridDBColumn
            DataBinding.FieldName = 'venda'
          end
        end
        object lv: TcxGridLevel
          GridView = tbv
        end
      end
    end
    object Tab2: TcxTabSheet
      Caption = 'EXTORNO MANUAL'
      ImageIndex = 1
      OnShow = Tab2Show
      ExplicitLeft = 0
      ExplicitWidth = 602
      ExplicitHeight = 313
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 594
        Height = 41
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 602
        object edcod: TcxTextEdit
          Left = 248
          Top = 9
          TabOrder = 0
          Width = 258
        end
        object cxLabel1: TcxLabel
          Left = 10
          Top = 13
          Caption = 'C'#211'DIGO DE AUTORIZA'#199#195'O'
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 41
        Width = 594
        Height = 268
        Align = alClient
        TabOrder = 1
        TabStop = False
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        ExplicitTop = 0
        ExplicitWidth = 541
        ExplicitHeight = 348
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DS2
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
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
          OptionsView.ScrollBars = ssVertical
          OptionsView.CellAutoHeight = True
          OptionsView.GridLineColor = clBlack
          OptionsView.GroupByBox = False
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clYellow
          object cxGridDBTableView1cod_gtin: TcxGridDBColumn
            Caption = 'C'#211'DIGO'
            DataBinding.FieldName = 'cod_gtin'
            HeaderAlignmentHorz = taCenter
            Width = 111
          end
          object cxGridDBTableView1nome: TcxGridDBColumn
            Caption = 'MEDICAMENTO'
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 403
          end
          object cxGridDBTableView1qtd: TcxGridDBColumn
            Caption = 'QTD'
            DataBinding.FieldName = 'qtd'
            HeaderAlignmentHorz = taCenter
            Width = 44
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  inherited ini: TFormStorage
    Left = 232
    Top = 128
  end
  inherited FR: TFormResizer
    Left = 144
    Top = 120
  end
  inherited EnterTab: TACBrEnterTab
    Left = 72
    Top = 120
  end
  object T1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'coo'
        DataType = ftInteger
      end
      item
        Name = 'data'
        DataType = ftDate
      end
      item
        Name = 'hora'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'cpf'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_autoriz'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'dt_extorno'
        DataType = ftDate
      end
      item
        Name = 'local'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cv'
        DataType = ftMemo
      end
      item
        Name = 'venda'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 200
    Top = 184
    object T1coo: TIntegerField
      FieldName = 'coo'
      DisplayFormat = '000000'
    end
    object T1data: TDateField
      FieldName = 'data'
    end
    object T1hora: TStringField
      FieldName = 'hora'
      Size = 5
    end
    object T1nome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object T1cpf: TStringField
      FieldName = 'cpf'
    end
    object T1cod_autoriz: TStringField
      FieldName = 'cod_autoriz'
      Size = 30
    end
    object T1dt_extorno: TDateField
      FieldName = 'dt_extorno'
    end
    object T1local: TStringField
      FieldName = 'local'
      Size = 1
    end
    object T1cv: TMemoField
      FieldName = 'cv'
      BlobType = ftMemo
    end
    object T1venda: TIntegerField
      FieldName = 'venda'
    end
  end
  object DS1: TDataSource
    DataSet = T1
    Left = 200
    Top = 240
  end
  object T2: TFDMemTable
    Active = True
    AfterPost = T2AfterPost
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 260
    Top = 194
    object T2cod_gtin: TStringField
      FieldName = 'cod_gtin'
    end
    object T2nome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object T2qtd: TCurrencyField
      FieldName = 'qtd'
      DisplayFormat = '00'
      currency = False
    end
  end
  object DS2: TDataSource
    DataSet = T2
    Left = 264
    Top = 248
  end
end
