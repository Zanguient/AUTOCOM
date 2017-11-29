inherited frmbaixa_cp: Tfrmbaixa_cp
  Caption = 'BAIXA DE CONTA A PAGAR'
  ClientHeight = 343
  ClientWidth = 351
  ExplicitWidth = 357
  ExplicitHeight = 371
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 292
    Width = 351
    Height = 51
    ExplicitTop = 292
    ExplicitWidth = 351
    ExplicitHeight = 51
    inherited pnlBtnClose: TPanel
      Left = 296
      Width = 50
      Height = 45
      ExplicitLeft = 296
      ExplicitWidth = 50
      ExplicitHeight = 45
      inherited btnSair: TcxButton
        Left = 3
        Width = 44
        Height = 39
        Align = alClient
        ExplicitLeft = 3
        ExplicitWidth = 44
        ExplicitHeight = 39
      end
    end
    inherited pnlBase: TPanel
      Width = 295
      Height = 45
      ExplicitWidth = 295
      ExplicitHeight = 45
      object edvr_apagar: TcxCurrencyEdit
        Left = 3
        Top = 19
        Properties.ReadOnly = True
        Style.Color = 8454143
        TabOrder = 0
        Width = 90
      end
      object edvr_inform: TcxCurrencyEdit
        Left = 95
        Top = 19
        Properties.ReadOnly = True
        Style.Color = 8454143
        TabOrder = 1
        Width = 85
      end
      object cxLabel1: TcxLabel
        Left = 3
        Top = 0
        Caption = 'VALOR A PAGAR'
      end
      object cxLabel2: TcxLabel
        Left = 99
        Top = 0
        Caption = 'VALOR INF.'
      end
      object cxButton3: TcxButton
        AlignWithMargins = True
        Left = 259
        Top = 3
        Width = 35
        Height = 39
        Margins.Right = 1
        Align = alRight
        Caption = 'OK'
        TabOrder = 4
        OnClick = cxButton3Click
      end
      object edDif: TcxCurrencyEdit
        Left = 182
        Top = 19
        Properties.ReadOnly = True
        Style.Color = 8454143
        TabOrder = 5
        Width = 74
      end
      object cxLabel11: TcxLabel
        Left = 183
        Top = 0
        Caption = 'DIFER.'
      end
    end
  end
  object pg1: TcxPageControl [2]
    Left = 0
    Top = 0
    Width = 351
    Height = 292
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = Tab1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 292
    ClientRectRight = 351
    ClientRectTop = 26
    object Tab1: TcxTabSheet
      Caption = 'MOVIMENTA'#199#195'O BANC'#193'RIA'
      ImageIndex = 0
      object Label5: TLabel
        Left = 110
        Top = 99
        Width = 58
        Height = 15
        Caption = 'BOM PARA'
        FocusControl = dtBompara
      end
      object Label1: TLabel
        Left = 3
        Top = 99
        Width = 76
        Height = 15
        Caption = 'DATA EMISS.'
        FocusControl = dtEm
      end
      object cmbbanco: TcxImageComboBox
        Left = 3
        Top = 24
        Properties.Items = <>
        TabOrder = 2
        OnClick = cmbbancoClick
        Width = 143
      end
      object cxLabel3: TcxLabel
        Left = 3
        Top = 4
        Caption = 'BANCO'
      end
      object cxLabel4: TcxLabel
        Left = 238
        Top = 4
        Caption = 'CONTA'
      end
      object cmbConta: TcxImageComboBox
        Left = 238
        Top = 24
        Properties.Items = <>
        TabOrder = 4
        OnClick = cmbContaClick
        Width = 102
      end
      object cmbMovi: TcxImageComboBox
        Left = 3
        Top = 68
        Properties.Items = <>
        Properties.OnChange = cmbMoviPropertiesChange
        TabOrder = 7
        Width = 231
      end
      object cxLabel5: TcxLabel
        Left = 3
        Top = 48
        Caption = 'MOVIMENTO'
      end
      object edvr_banco: TcxCurrencyEdit
        Left = 216
        Top = 115
        TabOrder = 13
        Width = 99
      end
      object cxLabel6: TcxLabel
        Left = 216
        Top = 96
        Caption = 'VALOR'
      end
      object cmbChq: TcxImageComboBox
        Left = 238
        Top = 68
        Properties.Items = <>
        TabOrder = 8
        Width = 102
      end
      object cxLabel7: TcxLabel
        Left = 238
        Top = 48
        Caption = 'CHEQUE N'#186
      end
      object dtBompara: TcxDateEdit
        Left = 110
        Top = 115
        Properties.DateButtons = []
        TabOrder = 12
        Width = 102
      end
      object grd1: TcxGrid
        Left = 0
        Top = 148
        Width = 351
        Height = 118
        Align = alBottom
        TabOrder = 15
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object tbv1: TcxGridDBTableView
          PopupMenu = pop1
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataSource = dschq
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '000'
              Kind = skCount
              FieldName = 'id'
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'valor'
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'valor_pg'
            end>
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
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
          OptionsView.ScrollBars = ssVertical
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GridLineColor = clBlack
          OptionsView.GroupByBox = False
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clYellow
          object tbv1nmro: TcxGridDBColumn
            Caption = 'N'#186' DO CHEQUE'
            DataBinding.FieldName = 'nmro'
            HeaderAlignmentHorz = taCenter
            Width = 122
          end
          object tbv1bompara: TcxGridDBColumn
            Caption = 'BOM PARA'
            DataBinding.FieldName = 'bompara'
            HeaderAlignmentHorz = taCenter
            Width = 89
          end
          object tbv1valor: TcxGridDBColumn
            Caption = 'VALOR'
            DataBinding.FieldName = 'valor'
            HeaderAlignmentHorz = taCenter
            Width = 97
          end
        end
        object lv1: TcxGridLevel
          GridView = tbv1
        end
      end
      object cxLabel10: TcxLabel
        Left = 155
        Top = 4
        Caption = 'AGENCIA'
      end
      object cmbAg: TcxImageComboBox
        Left = 150
        Top = 24
        Properties.Items = <>
        TabOrder = 3
        OnClick = cmbAgClick
        Width = 84
      end
      object btnLancaChq: TcxButton
        Left = 317
        Top = 114
        Width = 23
        Height = 24
        Hint = 'Lan'#231'a o cheque'
        Caption = '>>'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        TabStop = False
        OnClick = btnLancaChqClick
      end
      object dtEm: TcxDateEdit
        Left = 3
        Top = 115
        Properties.DateButtons = []
        TabOrder = 11
        Width = 102
      end
    end
    object Tab2: TcxTabSheet
      Caption = 'CHEQUE 3'#186
      ImageIndex = 2
      object cmbchqTerc: TcxImageComboBox
        Left = 214
        Top = 22
        Properties.Items = <>
        TabOrder = 0
        OnClick = cmbchqTercClick
        Width = 99
      end
      object cxLabel8: TcxLabel
        Left = 214
        Top = 2
        Caption = 'N'#186' DO CHEQUE'
      end
      object Panel1: TPanel
        Left = 2
        Top = 3
        Width = 207
        Height = 58
        TabOrder = 2
        object cxDBLabel1: TcxDBLabel
          Left = 1
          Top = 1
          Align = alTop
          DataBinding.DataField = 'nome_dono'
          DataBinding.DataSource = DM.DSfinan_ch_terc
          Height = 21
          Width = 205
        end
        object cxDBLabel2: TcxDBLabel
          Left = 1
          Top = 19
          DataBinding.DataField = 'data_em'
          DataBinding.DataSource = DM.DSfinan_ch_terc
          Height = 21
          Width = 104
        end
        object cxDBLabel3: TcxDBLabel
          Left = 102
          Top = 19
          DataBinding.DataField = 'dt_bompara'
          DataBinding.DataSource = DM.DSfinan_ch_terc
          Height = 21
          Width = 104
        end
        object cxDBLabel4: TcxDBLabel
          Left = 1
          Top = 37
          Align = alBottom
          DataBinding.DataField = 'valor'
          DataBinding.DataSource = DM.DSfinan_ch_terc
          Properties.Alignment.Horz = taRightJustify
          Height = 20
          Width = 205
          AnchorX = 206
        end
      end
      object cxButton1: TcxButton
        Left = 317
        Top = 22
        Width = 23
        Height = 24
        Hint = 'Abre as Tabelas da EFD'
        Caption = '>>'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        OnClick = cxButton1Click
      end
      object grd: TcxGrid
        Left = 0
        Top = 71
        Width = 351
        Height = 195
        Align = alBottom
        TabOrder = 4
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object tbv: TcxGridDBTableView
          PopupMenu = pop1
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataSource = DSTerc
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '000'
              Kind = skCount
              FieldName = 'id'
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'valor'
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'valor_pg'
            end>
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
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
          OptionsView.ScrollBars = ssVertical
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GridLineColor = clBlack
          OptionsView.GroupByBox = False
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clYellow
          object tbvnmro: TcxGridDBColumn
            Caption = 'N'#186' CHEQUE'
            DataBinding.FieldName = 'nmro'
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
          object tbvbompara: TcxGridDBColumn
            Caption = 'BOM PARA'
            DataBinding.FieldName = 'bompara'
            HeaderAlignmentHorz = taCenter
            Width = 88
          end
          object tbvvalor: TcxGridDBColumn
            Caption = 'VALOR'
            DataBinding.FieldName = 'valor'
            HeaderAlignmentHorz = taCenter
            Width = 122
          end
        end
        object lv: TcxGridLevel
          GridView = tbv
        end
      end
    end
    object Tab3: TcxTabSheet
      Caption = 'CASH'
      ImageIndex = 3
      object edvr_cash: TcxCurrencyEdit
        Left = 109
        Top = 123
        TabOrder = 0
        Width = 127
      end
      object cxLabel9: TcxLabel
        Left = 109
        Top = 104
        Caption = 'VALOR'
      end
      object cb1: TcxCheckBox
        Left = 109
        Top = 152
        Caption = 'Incluir no movim. do caixa'
        State = cbsChecked
        TabOrder = 2
        Width = 164
      end
      object cxButton2: TcxButton
        Left = 240
        Top = 122
        Width = 23
        Height = 24
        Hint = 'Abre as Tabelas da EFD'
        Caption = '>>'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        OnClick = cxButton2Click
      end
    end
  end
  inherited ini: TFormStorage
    Left = 48
    Top = 200
  end
  inherited FR: TFormResizer
    Left = 84
    Top = 208
  end
  inherited EnterTab: TACBrEnterTab
    Left = 368
    Top = 43
  end
  object pop1: TPopupMenu
    Left = 16
    Top = 200
    object Remover1: TMenuItem
      Caption = 'Remover'
      OnClick = Remover1Click
    end
  end
  object Tchq: TFDMemTable
    Active = True
    AfterPost = TchqAfterPost
    BeforeDelete = TchqBeforeDelete
    AfterDelete = TchqAfterDelete
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 124
    Top = 210
    object Tchqid: TIntegerField
      FieldName = 'id'
    end
    object Tchqnmro: TStringField
      FieldName = 'nmro'
    end
    object Tchqbompara: TDateField
      FieldName = 'bompara'
    end
    object Tchqvalor: TCurrencyField
      FieldName = 'valor'
    end
  end
  object dschq: TDataSource
    DataSet = Tchq
    Left = 156
    Top = 210
  end
  object TTerc: TFDMemTable
    Active = True
    AfterPost = TTercAfterPost
    BeforeDelete = TTercBeforeDelete
    AfterDelete = TTercAfterDelete
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 116
    Top = 130
    object TTercid: TIntegerField
      FieldName = 'id'
    end
    object TTercnmro: TStringField
      FieldName = 'nmro'
    end
    object TTercbompara: TDateField
      FieldName = 'bompara'
    end
    object TTercvalor: TCurrencyField
      FieldName = 'valor'
    end
  end
  object DSTerc: TDataSource
    DataSet = TTerc
    Left = 180
    Top = 122
  end
end
