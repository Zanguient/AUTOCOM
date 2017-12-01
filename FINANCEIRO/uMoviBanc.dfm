inherited frmMovBanc: TfrmMovBanc
  Caption = 'frmMovBanc'
  ClientHeight = 519
  ClientWidth = 813
  ExplicitWidth = 819
  ExplicitHeight = 547
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 487
    Width = 813
    ExplicitTop = 487
    ExplicitWidth = 813
    inherited pnlBtnClose: TPanel
      Left = 725
      ExplicitLeft = 725
    end
    inherited pnlBase: TPanel
      Width = 724
      ExplicitWidth = 724
      inherited pnlbasebotton: TPanel
        Width = 677
        ExplicitWidth = 677
        inherited Bar1: TdxStatusBar
          Width = 675
          ExplicitWidth = 675
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 813
    Height = 487
    ExplicitWidth = 813
    ExplicitHeight = 487
    ClientRectBottom = 483
    ClientRectRight = 809
    inherited TabCad: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 805
      ExplicitHeight = 457
      inherited dbNav: TcxDBNavigator
        Top = 404
        Width = 799
        Height = 50
        ExplicitTop = 408
        ExplicitWidth = 807
        ExplicitHeight = 50
      end
      object cmbContas: TcxLookupComboBox
        Left = 3
        Top = 20
        ParentFont = False
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'conta'
          end
          item
            MinWidth = 12
            Sorting = False
            FieldName = 'id'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DSContas
        TabOrder = 1
        OnClick = cmbContasClick
        Width = 795
      end
      object Label11: TcxLabel
        Left = 3
        Top = 1
        Caption = 'CONTA BANC'#193'RIA'
        ParentFont = False
        Transparent = True
      end
      object Panel1: TPanel
        Left = 3
        Top = 54
        Width = 795
        Height = 348
        TabOrder = 3
        object Label1: TLabel
          Left = 200
          Top = 96
          Width = 31
          Height = 15
          Caption = 'DATA'
          FocusControl = cxDBDateEdit1
        end
        object Label2: TLabel
          Left = 327
          Top = 96
          Width = 37
          Height = 15
          Caption = 'VALOR'
          FocusControl = cxDBCalcEdit1
        end
        object Label3: TLabel
          Left = 454
          Top = 96
          Width = 74
          Height = 15
          Caption = 'DOCUMENTO'
          FocusControl = cxDBTextEdit1
        end
        object Label4: TLabel
          Left = 200
          Top = 203
          Width = 178
          Height = 15
          Caption = 'DETALHES DA MOVIMENTA'#199#195'O'
          FocusControl = cxDBTextEdit2
        end
        object Label5: TLabel
          Left = 288
          Top = 142
          Width = 97
          Height = 15
          Caption = 'MOVIMENTA'#199#195'O'
          FocusControl = cxDBDateEdit1
        end
        object Bevel1: TBevel
          Left = 168
          Top = 64
          Width = 433
          Height = 217
          Shape = bsFrame
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 200
          Top = 112
          DataBinding.DataField = 'data'
          DataBinding.DataSource = DS1
          ParentFont = False
          TabOrder = 0
          Width = 121
        end
        object cxDBCalcEdit1: TcxDBCalcEdit
          Left = 327
          Top = 112
          DataBinding.DataField = 'valor'
          DataBinding.DataSource = DS1
          ParentFont = False
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 454
          Top = 112
          DataBinding.DataField = 'documento'
          DataBinding.DataSource = DS1
          ParentFont = False
          TabOrder = 2
          Width = 91
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 200
          Top = 224
          DataBinding.DataField = 'descricao'
          DataBinding.DataSource = DS1
          ParentFont = False
          TabOrder = 5
          Width = 375
        end
        object cmb2: TcxDBLookupComboBox
          Left = 288
          Top = 163
          DataBinding.DataField = 'cod'
          DataBinding.DataSource = DS1
          Enabled = False
          ParentFont = False
          Properties.KeyFieldNames = 'cod'
          Properties.ListColumns = <
            item
              FieldName = 'descricao'
            end
            item
              MinWidth = 40
              FieldName = 'cod'
            end>
          Properties.ListOptions.CaseInsensitive = True
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DSCod
          TabOrder = 4
          Width = 257
        end
        object btnCadMov: TcxButton
          AlignWithMargins = True
          Left = 549
          Top = 163
          Width = 26
          Height = 21
          Hint = 'Abre o Cadastro de Movimenta'#231#227'o'
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = '>>'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          TabStop = False
          OnClick = btnCadMovClick
        end
        object btlChq: TcxButton
          AlignWithMargins = True
          Left = 549
          Top = 112
          Width = 26
          Height = 21
          Hint = 'Procurar Cheque no talon'#225'rio'
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = '>>'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          TabStop = False
          OnClick = btlChqClick
        end
        object RbDC: TcxDBRadioGroup
          Left = 200
          Top = 139
          DataBinding.DataField = 'tipo'
          DataBinding.DataSource = DS1
          ParentFont = False
          Properties.Items = <
            item
              Caption = 'D'#233'bito'
              Value = 'D'
            end
            item
              Caption = 'Cr'#233'dito'
              Value = 'C'
            end>
          TabOrder = 3
          OnClick = RbDCClick
          Height = 57
          Width = 80
        end
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 809
      ExplicitHeight = 461
      inherited grd: TcxGrid
        Top = 48
        Width = 805
        Height = 363
        ExplicitTop = 48
        ExplicitWidth = 813
        ExplicitHeight = 367
        inherited tbv: TcxGridDBTableView
          object tbvid: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 49
          end
          object tbvdata: TcxGridDBColumn
            Caption = 'DATA'
            DataBinding.FieldName = 'data'
            HeaderAlignmentHorz = taCenter
          end
          object tbvcod: TcxGridDBColumn
            Caption = 'C'#211'D'
            DataBinding.FieldName = 'cod'
            HeaderAlignmentHorz = taCenter
            Width = 43
          end
          object tbvtipo: TcxGridDBColumn
            Caption = 'TIPO'
            DataBinding.FieldName = 'tipo'
            HeaderAlignmentHorz = taCenter
            Width = 43
          end
          object tbvvalor: TcxGridDBColumn
            Caption = 'VALOR'
            DataBinding.FieldName = 'valor'
            HeaderAlignmentHorz = taCenter
          end
          object tbvdocumento: TcxGridDBColumn
            Caption = 'DOCUMENTO'
            DataBinding.FieldName = 'documento'
            HeaderAlignmentHorz = taCenter
            Width = 150
          end
          object tbvdescricao: TcxGridDBColumn
            Caption = 'DESCRI'#199#195'O'
            DataBinding.FieldName = 'descricao'
            HeaderAlignmentHorz = taCenter
            Width = 338
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 411
        Width = 805
        ExplicitTop = 415
        ExplicitWidth = 809
        inherited edPesq: TcxTextEdit
          Visible = False
          ExplicitWidth = 5
          Width = 5
        end
        inherited lblPesq: TcxLabel
          Caption = ''
          Style.IsFontAssigned = True
          ExplicitWidth = 7
        end
        object cxDBLabel1: TcxDBLabel
          Left = 374
          Top = 19
          DataBinding.DataField = 'saldo_inicial'
          DataBinding.DataSource = DSSaldo_Ant
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Height = 21
          Width = 97
        end
        object cxLabel1: TcxLabel
          Left = 374
          Top = 2
          Caption = 'Saldo Anterior'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 18
          Top = 0
          Caption = 'Data Inicial'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object Dt1: TcxDateEdit
          Left = 20
          Top = 17
          ParentFont = False
          Properties.OnEditValueChanged = D1PropertiesEditValueChanged
          TabOrder = 5
          Width = 121
        end
        object Dt2: TcxDateEdit
          Left = 146
          Top = 17
          ParentFont = False
          TabOrder = 6
          Width = 121
        end
        object cxLabel3: TcxLabel
          Left = 144
          Top = 2
          Caption = 'Data Final'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object btnPesq: TcxButton
          AlignWithMargins = True
          Left = 274
          Top = 11
          Width = 93
          Height = 31
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = 'Pesquisar'
          TabOrder = 8
          OnClick = btnPesqClick
        end
        object cxLabel5: TcxLabel
          Left = 676
          Top = 2
          Caption = 'Saldo Atual'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object cxDBLabel3: TcxDBLabel
          Left = 474
          Top = 19
          DataBinding.DataField = 'debito'
          DataBinding.DataSource = DSSaldo_Atual
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Height = 21
          Width = 97
        end
        object cxLabel6: TcxLabel
          Left = 474
          Top = 2
          Caption = 'Total D'#233'bitos'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object cxDBLabel4: TcxDBLabel
          Left = 574
          Top = 19
          DataBinding.DataField = 'credito'
          DataBinding.DataSource = DSSaldo_Atual
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Height = 21
          Width = 97
        end
        object cxLabel7: TcxLabel
          Left = 574
          Top = 2
          Caption = 'Total Cr'#233'ditos'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object edSaldo: TcxCurrencyEdit
          Left = 676
          Top = 19
          TabStop = False
          AutoSize = False
          ParentColor = True
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          TabOrder = 9
          Height = 23
          Width = 122
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 805
        Height = 48
        Align = alTop
        TabOrder = 2
        object cxLabel4: TcxLabel
          Left = 3
          Top = 1
          Caption = 'CONTA BANC'#193'RIA'
          ParentFont = False
          Transparent = True
        end
        object cmb3: TcxLookupComboBox
          Left = 3
          Top = 20
          ParentFont = False
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'conta'
            end
            item
              MinWidth = 12
              Sorting = False
              FieldName = 'id'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = DSContas
          TabOrder = 1
          OnClick = cmb3Click
          Width = 795
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'TRANSFER'#202'NCIA BANC'#193'RIA'
      ImageIndex = 2
      OnShow = cxTabSheet1Show
      object Panel3: TPanel
        Left = 9
        Top = 144
        Width = 785
        Height = 161
        BorderStyle = bsSingle
        TabOrder = 0
        object cxLabel8: TcxLabel
          Left = 6
          Top = 1
          Caption = 'CONTA OR'#205'GEM'
          ParentFont = False
          Transparent = True
        end
        object cmbContaO: TcxLookupComboBox
          Left = 6
          Top = 20
          ParentFont = False
          PopupMenu = popO
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'conta'
            end
            item
              MinWidth = 12
              Sorting = False
              FieldName = 'id'
            end
            item
              MinWidth = 0
              Width = 0
              FieldName = 'conta_res'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = DSContas
          TabOrder = 1
          Width = 767
        end
        object cxLabel9: TcxLabel
          Left = 6
          Top = 49
          Caption = 'CONTA DESTINO'
          ParentFont = False
          Transparent = True
        end
        object cmbContaD: TcxLookupComboBox
          Left = 6
          Top = 68
          ParentFont = False
          PopupMenu = popD
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'conta'
            end
            item
              MinWidth = 12
              Sorting = False
              FieldName = 'id'
            end
            item
              MinWidth = 0
              Width = 20
              FieldName = 'conta_res'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = DSContasD
          TabOrder = 3
          Width = 767
        end
        object dtTrf: TcxDateEdit
          Left = 6
          Top = 121
          ParentFont = False
          Properties.OnEditValueChanged = D1PropertiesEditValueChanged
          TabOrder = 4
          Width = 121
        end
        object edVrTrf: TcxCurrencyEdit
          Left = 145
          Top = 121
          AutoSize = False
          ParentColor = True
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = False
          TabOrder = 5
          Height = 23
          Width = 122
        end
        object cxLabel11: TcxLabel
          Left = 147
          Top = 101
          Caption = 'VALOR'
          ParentFont = False
          Transparent = True
        end
        object btnTrf: TcxButton
          AlignWithMargins = True
          Left = 289
          Top = 117
          Width = 93
          Height = 31
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = 'Transferir'
          TabOrder = 7
          OnClick = btnTrfClick
        end
        object cxLabel10: TcxLabel
          Left = 6
          Top = 101
          Caption = 'DATA'
          ParentFont = False
          Transparent = True
        end
      end
    end
    object TabTal: TcxTabSheet
      Caption = 'TALON'#193'RIO'
      ImageIndex = 3
      OnShow = TabTalShow
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 48
        Align = alLeft
        Caption = 'CADASTRAMENTO DE TALON'#193'RIO'
        ParentFont = False
        TabOrder = 0
        Height = 409
        Width = 217
        object edTalIni: TcxCurrencyEdit
          Left = 46
          Top = 57
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.DisplayFormat = True
          Properties.AssignedValues.MinValue = True
          Properties.DecimalPlaces = 0
          TabOrder = 0
          Width = 121
        end
        object edTalFim: TcxCurrencyEdit
          Left = 46
          Top = 104
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.DisplayFormat = True
          Properties.AssignedValues.MinValue = True
          Properties.DecimalPlaces = 0
          TabOrder = 1
          Width = 121
        end
        object cxLabel12: TcxLabel
          Left = 46
          Top = 39
          Caption = 'N'#186' Inicial'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object cxLabel13: TcxLabel
          Left = 46
          Top = 86
          Caption = 'N'#186' Final'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object btnCadFaixa: TcxButton
          AlignWithMargins = True
          Left = 35
          Top = 131
          Width = 75
          Height = 24
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = 'CADASTRAR'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          TabStop = False
          OnClick = btnCadFaixaClick
        end
        object btnTalDel: TcxButton
          AlignWithMargins = True
          Left = 113
          Top = 131
          Width = 70
          Height = 24
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = 'EXCLUIR'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          TabStop = False
          OnClick = btnTalDelClick
        end
        object rgFiltroTal: TcxRadioGroup
          AlignWithMargins = True
          Left = 5
          Top = 259
          TabStop = False
          Align = alBottom
          Caption = 'FILTRO'
          ParentFont = False
          Properties.Items = <
            item
              Caption = 'DISPON'#205'VEL'
              Value = 'cancelado='#39'N'#39' and usado='#39'N'#39
            end
            item
              Caption = 'UTILIZADO'
              Value = 'usado='#39'S'#39
            end
            item
              Caption = 'CANCELADO'
              Value = 'cancelado='#39'S'#39
            end>
          TabOrder = 6
          OnClick = rgFiltroTalClick
          ExplicitTop = 263
          Height = 145
          Width = 207
        end
        object edmot: TcxTextEdit
          Left = 6
          Top = 192
          ParentFont = False
          Properties.CharCase = ecUpperCase
          TabOrder = 7
          Width = 205
        end
        object cxLabel15: TcxLabel
          Left = 6
          Top = 175
          Caption = 'Motivo do Cancelamento'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object btnCancFaixa: TcxButton
          AlignWithMargins = True
          Left = 46
          Top = 219
          Width = 120
          Height = 24
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = 'CANCELAR FAIXA'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          TabStop = False
          OnClick = btnCancFaixaClick
        end
      end
      object grdTal: TcxGrid
        Left = 217
        Top = 48
        Width = 588
        Height = 409
        Align = alClient
        TabOrder = 1
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 596
        ExplicitHeight = 413
        object tbcTal: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnCellClick = tbvCellClick
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DSTal
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
          object tbcTalid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 47
          end
          object tbcTalnmro: TcxGridDBColumn
            DataBinding.FieldName = 'nmro'
            HeaderAlignmentHorz = taCenter
            Width = 88
            OnHeaderClick = tbcTalnmroHeaderClick
          end
          object tbcTalcancelado: TcxGridDBColumn
            DataBinding.FieldName = 'cancelado'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = 'S'
            Properties.DisplayUnchecked = 'N'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 59
            OnHeaderClick = tbcTalnmroHeaderClick
          end
          object tbcTalusado: TcxGridDBColumn
            DataBinding.FieldName = 'usado'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = 'S'
            Properties.DisplayUnchecked = 'N'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 40
            OnHeaderClick = tbcTalnmroHeaderClick
          end
          object tbcTalmotivo: TcxGridDBColumn
            Caption = 'MOTIVO CANC./USO DO CHEQUE'
            DataBinding.FieldName = 'motivo'
            HeaderAlignmentHorz = taCenter
            Width = 314
          end
        end
        object LvTal: TcxGridLevel
          GridView = tbcTal
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 805
        Height = 48
        Align = alTop
        TabOrder = 2
        object cxLabel14: TcxLabel
          Left = 3
          Top = 1
          Caption = 'CONTA BANC'#193'RIA'
          ParentFont = False
          Transparent = True
        end
        object cmbContaTal: TcxLookupComboBox
          Left = 3
          Top = 20
          ParentFont = False
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'conta'
            end
            item
              MinWidth = 12
              Sorting = False
              FieldName = 'id'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = DSContas
          TabOrder = 1
          OnClick = cmbContaTalClick
          Width = 795
        end
      end
    end
  end
  inherited Edit1: TEdit
    Left = 664
    Width = 62
    Text = 'n'#227'o mexer'
    ExplicitLeft = 664
    ExplicitWidth = 62
  end
  inherited ini: TFormStorage
    Left = 520
    Top = 488
  end
  inherited DS1: TDataSource
    DataSet = QMovi
    Left = 56
    Top = 488
  end
  inherited FR: TFormResizer
    Left = 528
    Top = 440
  end
  inherited EnterTab: TACBrEnterTab
    Left = 576
    Top = 488
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
  object QContas: TFDQuery
    SQL.Strings = (
      'select c.id, '
      'concat(b.nomebanco, '
      #39' - Ag: '#39', '
      'concat(a.agencia,'#39'-'#39', a.dig), '
      #39' - Conta: '#39', '
      'Concat(c.conta,'#39'-'#39', c.dig),'
      #39' - '#39', '
      
        'if(c.nome_proprietario is null, '#39'N'#227'o informado'#39', c.nome_propriet' +
        'ario),'
      #39'/'#39', '
      'if(c.cnpj is null,'#39'---'#39',c.cnpj), '
      #39' ('#39', c.tipo, '#39')'#39','
      #39' - '#39', if(c.obs is null, '#39#39', c.obs)) as conta,'
      'Concat(b.numbanco,'#39'.'#39',c.conta,'#39'-'#39', c.dig) as conta_res '
      'from'
      'finan_banco_banco b, finan_banco_agencia a, finan_banco_conta c'
      'where '
      'c.agencia=a.id and a.banco=b.id '
      'order by b.nomebanco, a.agencia, c.conta')
    Left = 120
    Top = 440
    object QContasid: TIntegerField
      FieldName = 'id'
    end
    object QContasconta: TStringField
      FieldName = 'conta'
      Size = 242
    end
    object QContasconta_res: TStringField
      FieldName = 'conta_res'
      Size = 44
    end
  end
  object DSContas: TDataSource
    AutoEdit = False
    DataSet = QContas
    OnStateChange = DS1StateChange
    Left = 120
    Top = 488
  end
  object DSCod: TDataSource
    AutoEdit = False
    DataSet = QCod
    OnStateChange = DS1StateChange
    Left = 176
    Top = 488
  end
  object QSaldo_Ant: TFDQuery
    DetailFields = 'id'
    SQL.Strings = (
      'select '
      
        'c.id,(c.saldoinicial + if(sum(m.valor) is null, 0, sum(m.valor))' +
        ') as saldo_inicial from'
      'finan_banco_conta c, finan_banco_movi m'
      'where '
      'c.id = m.conta and m.data < :data and m.conta=:conta')
    Left = 380
    Top = 440
    ParamData = <
      item
        Name = 'data'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'conta'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QSaldo_Antid: TIntegerField
      FieldName = 'id'
    end
    object QSaldo_Antsaldo_inicial: TFloatField
      FieldName = 'saldo_inicial'
      Origin = 'saldo_inicial'
      currency = True
    end
  end
  object DSSaldo_Ant: TDataSource
    AutoEdit = False
    DataSet = QSaldo_Ant
    OnStateChange = DS1StateChange
    Left = 384
    Top = 488
  end
  object QSaldo_Atual: TFDQuery
    SQL.Strings = (
      'select '
      'sum(if(m.tipo='#39'C'#39', 0, 0 - m.valor)) as debito,'
      'sum(if(m.tipo='#39'D'#39', 0, m.valor)) as credito,'
      'sum(m.valor) as saldo_atual'
      ' from'
      'finan_banco_conta c, finan_banco_movi m'
      'where '
      'c.id = m.conta and m.data between :d1 and :d2 and m.conta=:conta')
    Left = 304
    Top = 440
    ParamData = <
      item
        Name = 'd1'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'd2'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'conta'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QSaldo_Atualdebito: TFloatField
      FieldName = 'debito'
      Origin = 'debito'
      currency = True
    end
    object QSaldo_Atualcredito: TFloatField
      FieldName = 'credito'
      Origin = 'credito'
      currency = True
    end
    object QSaldo_Atualsaldo_atual: TFloatField
      FieldName = 'saldo_atual'
      Origin = 'saldo_atual'
      currency = True
    end
  end
  object DSSaldo_Atual: TDataSource
    AutoEdit = False
    DataSet = QSaldo_Atual
    OnStateChange = DS1StateChange
    Left = 308
    Top = 488
  end
  object QContasD: TFDQuery
    SQL.Strings = (
      'select c.id, '
      'concat(b.nomebanco, '
      #39' - Ag: '#39', '
      'concat(a.agencia,'#39'-'#39', a.dig), '
      #39' - Conta: '#39', '
      'Concat(c.conta,'#39'-'#39', c.dig),'
      #39' - '#39', '
      
        'if(c.nome_proprietario is null, '#39'N'#227'o informado'#39', c.nome_propriet' +
        'ario),'
      #39'/'#39', '
      'if(c.cnpj is null,'#39'---'#39',c.cnpj), '
      #39' ('#39', c.tipo, '#39')'#39','
      #39' - '#39', if(c.obs is null, '#39#39', c.obs)) as conta,'
      'Concat(b.numbanco,'#39'.'#39',c.conta,'#39'-'#39', c.dig) as conta_res '
      'from'
      'finan_banco_banco b, finan_banco_agencia a, finan_banco_conta c'
      'where '
      'c.agencia=a.id and a.banco=b.id '
      'order by b.nomebanco, a.agencia, c.conta')
    Left = 240
    Top = 440
    object QContasDid: TIntegerField
      FieldName = 'id'
    end
    object QContasDconta: TStringField
      FieldName = 'conta'
      Size = 242
    end
    object QContasDconta_res: TStringField
      FieldName = 'conta_res'
      Size = 44
    end
  end
  object DSContasD: TDataSource
    AutoEdit = False
    DataSet = QContasD
    OnStateChange = DS1StateChange
    Left = 240
    Top = 488
  end
  object DSTal: TDataSource
    AutoEdit = False
    DataSet = QTal
    OnStateChange = DS1StateChange
    Left = 448
    Top = 488
  end
  object popO: TPopupMenu
    Left = 208
    Top = 112
    object AssociarPlanodeContas1: TMenuItem
      Caption = 'Associar Plano de Contas'
      OnClick = AssociarPlanodeContas1Click
    end
    object ExibirPlanodeContas1: TMenuItem
      Caption = 'Exibir Plano de Contas'
      OnClick = ExibirPlanodeContas1Click
    end
  end
  object popD: TPopupMenu
    Left = 328
    Top = 112
    object AssociarPlanodeContas2: TMenuItem
      Caption = 'Associar Plano de Contas'
      OnClick = AssociarPlanodeContas2Click
    end
    object ExibirPlanodeContas2: TMenuItem
      Caption = 'Exibir Plano de Contas'
      OnClick = ExibirPlanodeContas2Click
    end
  end
  object QTal: TFDQuery
    SQL.Strings = (
      'select * from finan_talonario')
    Left = 448
    Top = 440
    object QTalid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QTalnmro: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#186' CHEQUE'
      FieldName = 'nmro'
      Origin = 'nmro'
    end
    object QTalconta: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'conta'
      Origin = 'conta'
    end
    object QTalcancelado: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CANC.'
      FieldName = 'cancelado'
      Origin = 'cancelado'
      FixedChar = True
      Size = 1
    end
    object QTalmotivo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'MOTIVO CANC.'
      FieldName = 'motivo'
      Origin = 'motivo'
      Size = 60
    end
    object QTalusado: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UTIL.'
      FieldName = 'usado'
      Origin = 'usado'
      FixedChar = True
      Size = 1
    end
  end
  object QMovi: TFDQuery
    BeforePost = QMoviBeforePost
    AfterPost = QMoviAfterPost
    BeforeDelete = QMoviBeforeDelete
    MasterSource = DSContas
    MasterFields = 'id'
    SQL.Strings = (
      'select * from finan_banco_movi'
      'where conta=:id')
    Left = 56
    Top = 440
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMoviid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '000000'
    end
    object QMoviconta: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'conta'
      Origin = 'conta'
    end
    object QMovicod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod'
      Origin = 'cod'
      Size = 3
    end
    object QMovitipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
    object QMovivalor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      DisplayFormat = '#,##0.00'
    end
    object QMovidata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QMovidocumento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'documento'
      Origin = 'documento'
      Size = 30
    end
    object QMovidescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object QMoviid_movi: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_movi'
      Origin = 'id_movi'
    end
  end
  object QCod: TFDQuery
    MasterSource = DSContas
    MasterFields = 'id'
    SQL.Strings = (
      'select * from finan_banco_codigos'
      'where conta=:id')
    Left = 176
    Top = 440
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCodid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QCodcod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod'
      Origin = 'cod'
      FixedChar = True
      Size = 3
    end
    object QCodconta: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'conta'
      Origin = 'conta'
    end
    object QCodtipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
    object QCoddescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object QCodsistema: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sistema'
      Origin = 'sistema'
      FixedChar = True
      Size = 1
    end
  end
end
