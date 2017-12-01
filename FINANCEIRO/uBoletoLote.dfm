inherited frmBolLote: TfrmBolLote
  Caption = 'frmBolLote'
  ClientHeight = 362
  ClientWidth = 706
  ExplicitWidth = 712
  ExplicitHeight = 391
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 305
    Width = 706
    Height = 57
    ExplicitTop = 305
    ExplicitWidth = 706
    ExplicitHeight = 57
    inherited pnlBtnClose: TPanel
      Left = 612
      Height = 51
      ExplicitLeft = 612
      ExplicitHeight = 51
      inherited btnSair: TcxButton
        Height = 45
        ExplicitHeight = 45
      end
    end
    inherited pnlBase: TPanel
      Width = 611
      Height = 51
      ExplicitWidth = 611
      ExplicitHeight = 51
      object Label11: TcxLabel
        Left = 3
        Top = 1
        Caption = 'BOLETO'
        Transparent = True
      end
      object D1: TcxDateEdit
        Left = 252
        Top = 21
        TabOrder = 2
        Width = 112
      end
      object cxLabel1: TcxLabel
        Left = 252
        Top = 1
        Caption = 'Data do Documento'
        Transparent = True
      end
      object cxButton1: TcxButton
        AlignWithMargins = True
        Left = 530
        Top = 3
        Width = 78
        Height = 45
        Align = alRight
        Caption = 'Gerar'
        TabOrder = 4
        OnClick = cxButton1Click
      end
      object crFormato: TcxRadioGroup
        Left = 370
        Top = -7
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'CARN'#202
            Value = '1'
          end
          item
            Caption = 'A4'
            Value = '2'
          end>
        ItemIndex = 1
        TabOrder = 5
        Height = 57
        Width = 156
      end
      object cmbBoleto: TcxLookupComboBox
        Left = 3
        Top = 21
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'nomebanco'
          end
          item
            FieldName = 'agencia'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM.DSvwBoleto
        TabOrder = 0
        Width = 246
      end
    end
  end
  object grd: TcxGrid [2]
    Left = 0
    Top = 0
    Width = 329
    Height = 305
    Align = alLeft
    TabOrder = 2
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    object tbv: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
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
      OptionsSelection.InvertSelect = False
      OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
      OptionsView.ScrollBars = ssVertical
      OptionsView.CellAutoHeight = True
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clYellow
      object tbvNome: TcxGridDBColumn
        Caption = 'LISTAGEM DE BOLETOS'
        DataBinding.FieldName = 'Nome'
        HeaderAlignmentHorz = taCenter
        Width = 287
      end
    end
    object lv: TcxGridLevel
      GridView = tbv
    end
  end
  object Panel1: TPanel [3]
    Left = 329
    Top = 0
    Width = 377
    Height = 305
    Align = alClient
    TabOrder = 3
    object Label1: TLabel
      Left = 6
      Top = 54
      Width = 22
      Height = 15
      Caption = 'DIA'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 55
      Top = 54
      Width = 37
      Height = 15
      Caption = 'VALOR'
      FocusControl = cxDBCalcEdit1
    end
    object Label3: TLabel
      Left = 3
      Top = 101
      Width = 86
      Height = 15
      Caption = 'TEXTO LINHA 1'
      FocusControl = cxDBTextEdit1
    end
    object Label4: TLabel
      Left = 3
      Top = 149
      Width = 88
      Height = 15
      Caption = 'TEXTO LINHA 2'
      FocusControl = cxDBTextEdit2
    end
    object Label5: TLabel
      Left = 6
      Top = 5
      Width = 49
      Height = 15
      Caption = 'CLIENTE'
      FocusControl = cxDBSpinEdit1
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 3
      Top = 70
      DataBinding.DataField = 'dia'
      DataBinding.DataSource = DS1
      TabOrder = 0
      Width = 46
    end
    object cxDBCalcEdit1: TcxDBCalcEdit
      Left = 55
      Top = 70
      DataBinding.DataField = 'valor'
      DataBinding.DataSource = DS1
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 3
      Top = 117
      DataBinding.DataField = 'linha1'
      DataBinding.DataSource = DS1
      TabOrder = 2
      Width = 365
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 3
      Top = 165
      DataBinding.DataField = 'linha2'
      DataBinding.DataSource = DS1
      TabOrder = 3
      Width = 365
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 3
      Top = 22
      DataBinding.DataField = 'cliente'
      DataBinding.DataSource = DS1
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'nome'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = DSCli
      TabOrder = 4
      Width = 365
    end
    object dbNav: TcxDBNavigator
      AlignWithMargins = True
      Left = 4
      Top = 193
      Width = 365
      Height = 23
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
      DataSource = DS1
      Align = alBottom
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 229
      Width = 369
      Height = 72
      Margins.Top = 10
      Align = alBottom
      BevelOuter = bvLowered
      TabOrder = 6
      object Bar1: TcxProgressBar
        Left = 1
        Top = 48
        Align = alBottom
        TabOrder = 0
        Visible = False
        ExplicitTop = 50
        Width = 367
      end
      object cbNotPrint: TcxCheckBox
        Left = 2
        Top = 8
        Caption = 'Apenas gerar. N'#227'o imprimir agora'
        TabOrder = 1
      end
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 190
      Top = 71
      Caption = 'IMPRIMIR AO GERAR'
      DataBinding.DataField = 'imprimir'
      DataBinding.DataSource = DS1
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      TabOrder = 7
    end
  end
  inherited ini: TFormStorage
    Left = 120
    Top = 96
  end
  inherited FR: TFormResizer
    Left = 160
    Top = 96
  end
  inherited EnterTab: TACBrEnterTab
    Left = 200
    Top = 96
  end
  object DS1: TDataSource
    AutoEdit = False
    DataSet = DM.QFinan_Bol_Cli
    Left = 56
    Top = 96
  end
  object DSCli: TDataSource
    AutoEdit = False
    DataSet = DM.QCli
    Left = 56
    Top = 176
  end
end
