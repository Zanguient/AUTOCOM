inherited frmGestaoReceber: TfrmGestaoReceber
  Caption = 'frmGestaoReceber'
  ClientHeight = 529
  ClientWidth = 832
  ExplicitWidth = 838
  ExplicitHeight = 558
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 490
    Width = 832
    Height = 39
    ExplicitTop = 490
    ExplicitWidth = 832
    ExplicitHeight = 39
    inherited pnlBtnClose: TPanel
      Left = 738
      Height = 33
      ExplicitLeft = 738
      ExplicitHeight = 33
      inherited btnSair: TcxButton
        Height = 27
        ExplicitHeight = 27
      end
    end
    inherited pnlBase: TPanel
      Width = 737
      Height = 33
      ExplicitWidth = 737
      ExplicitHeight = 33
    end
  end
  inherited Edit1: TEdit
    Left = 623
    Top = 498
    ExplicitLeft = 623
    ExplicitTop = 498
  end
  object pgMain: TcxPageControl [2]
    Left = 0
    Top = 0
    Width = 832
    Height = 490
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = TabDeb
    Properties.CustomButtons.Buttons = <>
    Properties.HotTrack = True
    ClientRectBottom = 486
    ClientRectLeft = 4
    ClientRectRight = 828
    ClientRectTop = 26
    object TabBol: TcxTabSheet
      Caption = 'BOLETOS'
      ImageIndex = 0
      OnShow = TabBolShow
      object grd: TcxGrid
        Left = 0
        Top = 0
        Width = 824
        Height = 300
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object tbv: TcxGridDBTableView
          PopupMenu = pmBol
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnCellClick = tbvCellClick
          OnSelectionChanged = tbvSelectionChanged
          DataController.DataSource = DM.DSFinan_bol_Emit
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '000'
              Kind = skCount
              FieldName = 'id'
              Column = tbvid
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'valor'
              Column = tbvvalor
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'valor_pg'
              Column = tbvvalor_pg
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
          object tbvid: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 48
          end
          object tbvnossonmro: TcxGridDBColumn
            Caption = 'N'#218'MERO'
            DataBinding.FieldName = 'nossonmro'
            HeaderAlignmentHorz = taCenter
            Width = 87
          end
          object tbvdata_process: TcxGridDBColumn
            Caption = 'DT. PROCESS.'
            DataBinding.FieldName = 'data_process'
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object tbvdt_vencimento: TcxGridDBColumn
            Caption = 'DT. VENCIM.'
            DataBinding.FieldName = 'dt_vencimento'
            HeaderAlignmentHorz = taCenter
            Width = 82
          end
          object tbvdt_baixa_canc: TcxGridDBColumn
            Caption = 'DT BAIXA'
            DataBinding.FieldName = 'dt_baixa_canc'
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
          object tbvbaixa: TcxGridDBColumn
            Caption = 'BAI'
            DataBinding.FieldName = 'baixa'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 33
          end
          object tbvcancelado: TcxGridDBColumn
            Caption = 'CNC'
            DataBinding.FieldName = 'cancelado'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 32
          end
          object tbvvalor: TcxGridDBColumn
            Caption = 'VALOR'
            DataBinding.FieldName = 'valor'
            HeaderAlignmentHorz = taCenter
          end
          object tbvjuros_dias: TcxGridDBColumn
            Caption = 'JUROS'
            DataBinding.FieldName = 'juros_dias'
            HeaderAlignmentHorz = taCenter
            Width = 51
          end
          object tbvmulta: TcxGridDBColumn
            Caption = 'MULTA'
            DataBinding.FieldName = 'multa'
            HeaderAlignmentHorz = taCenter
            Width = 56
          end
          object tbvdesconto: TcxGridDBColumn
            Caption = 'DESC.'
            DataBinding.FieldName = 'desconto'
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object tbvvalor_pg: TcxGridDBColumn
            Caption = 'VR. RECEB.'
            DataBinding.FieldName = 'valor_pg'
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object tbvsacado_cnpj: TcxGridDBColumn
            Caption = 'CNPJ/CPF'
            DataBinding.FieldName = 'sacado_cnpj'
          end
          object tbvsacado_nome: TcxGridDBColumn
            Caption = 'NOME/RAZ'#195'O SOCIAL'
            DataBinding.FieldName = 'sacado_nome'
          end
        end
        object lv: TcxGridLevel
          GridView = tbv
        end
      end
      object pgDetBol: TcxPageControl
        Left = 0
        Top = 331
        Width = 824
        Height = 129
        Align = alBottom
        TabOrder = 1
        Properties.ActivePage = tbBaixaArq
        Properties.CustomButtons.Buttons = <>
        Properties.HotTrack = True
        ClientRectBottom = 125
        ClientRectLeft = 4
        ClientRectRight = 820
        ClientRectTop = 26
        object cxTabSheet3: TcxTabSheet
          Caption = 'DETALHES'
          ImageIndex = 2
          object Label1: TLabel
            Left = 8
            Top = -2
            Width = 43
            Height = 13
            Caption = 'CNPJ/CPF'
            FocusControl = cxDBTextEdit1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 91
            Top = -2
            Width = 102
            Height = 13
            Caption = 'NOME/RAZ'#195'O SOCIAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 8
            Top = 24
            Width = 65
            Height = 13
            Caption = 'LOGRADOURO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 410
            Top = 24
            Width = 12
            Height = 13
            Caption = 'N'#186
            FocusControl = cxDBLabel3
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 8
            Top = 49
            Width = 54
            Height = 13
            Caption = 'MUNIC'#205'PIO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 410
            Top = 49
            Width = 12
            Height = 13
            Caption = 'UF'
            FocusControl = cxDBLabel5
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 454
            Top = -2
            Width = 33
            Height = 13
            Caption = 'e-MAIL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object cxDBTextEdit1: TcxDBLabel
            Left = 8
            Top = 7
            DataBinding.DataField = 'sacado_cnpj'
            DataBinding.DataSource = DM.DSFinan_bol_Emit
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 79
          end
          object cxDBLabel1: TcxDBLabel
            Left = 91
            Top = 7
            DataBinding.DataField = 'sacado_nome'
            DataBinding.DataSource = DM.DSFinan_bol_Emit
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 363
          end
          object cxDBLabel2: TcxDBLabel
            Left = 8
            Top = 33
            DataBinding.DataField = 'sacado_logradouro'
            DataBinding.DataSource = DM.DSFinan_bol_Emit
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 398
          end
          object cxDBLabel3: TcxDBLabel
            Left = 410
            Top = 33
            DataBinding.DataField = 'sacado_nmro'
            DataBinding.DataSource = DM.DSFinan_bol_Emit
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 44
          end
          object cxDBLabel4: TcxDBLabel
            Left = 6
            Top = 60
            DataBinding.DataField = 'sacado_municipio'
            DataBinding.DataSource = DM.DSFinan_bol_Emit
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 398
          end
          object cxDBLabel5: TcxDBLabel
            Left = 410
            Top = 60
            DataBinding.DataField = 'sacado_uf'
            DataBinding.DataSource = DM.DSFinan_bol_Emit
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 44
          end
          object cxDBLabel6: TcxDBLabel
            Left = 454
            Top = 7
            DataBinding.DataField = 'sacado_email'
            DataBinding.DataSource = DM.DSFinan_bol_Emit
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 317
          end
          object cxDBMemo1: TcxDBMemo
            Left = 458
            Top = 30
            TabStop = False
            DataBinding.DataField = 'obs'
            DataBinding.DataSource = DM.DSFinan_bol_Emit
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Comic Sans MS'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Height = 47
            Width = 313
          end
          object cxDBLabel17: TcxDBLabel
            Left = 8
            Top = 78
            DataBinding.DataField = 'linha1'
            DataBinding.DataSource = DM.DSFinan_bol_Emit
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 398
          end
          object cxDBLabel18: TcxDBLabel
            Left = 407
            Top = 78
            DataBinding.DataField = 'linha2'
            DataBinding.DataSource = DM.DSFinan_bol_Emit
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 364
          end
        end
        object TabPesqBol: TcxTabSheet
          Caption = 'PESQUISA'
          ImageIndex = 0
          object rcb1: TcxRadioGroup
            Left = 610
            Top = 0
            Align = alRight
            ParentFont = False
            Properties.Items = <
              item
                Caption = 'BAIXADOS'
                Value = 'baixa="S" and cancelado="N"'
              end
              item
                Caption = 'EM ABERTO'
                Value = 'baixa="N" and cancelado="N"'
              end
              item
                Caption = 'CANCELADOS'
                Value = 'cancelado="S"'
              end
              item
                Caption = 'PROCESSADOS'
                Value = 'baixa="P" and cancelado="N"'
              end>
            Properties.OnChange = rcb1PropertiesChange
            ItemIndex = 1
            TabOrder = 0
            Height = 99
            Width = 122
          end
          object btnExibir1: TcxButton
            AlignWithMargins = True
            Left = 735
            Top = 3
            Width = 78
            Height = 93
            Align = alRight
            Caption = 'EXIBIR'
            TabOrder = 1
            OnClick = btnExibir1Click
          end
          object pgOpcBol: TcxPageControl
            Left = 0
            Top = 0
            Width = 610
            Height = 99
            Align = alClient
            TabOrder = 2
            Properties.ActivePage = TabDataBol
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 95
            ClientRectLeft = 4
            ClientRectRight = 606
            ClientRectTop = 26
            object TabDataBol: TcxTabSheet
              Caption = 'POR DATA'
              ImageIndex = 0
              object Label8: TLabel
                Left = 3
                Top = 1
                Width = 66
                Height = 13
                Caption = 'DATA INICIAL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 127
                Top = 1
                Width = 56
                Height = 13
                Caption = 'DATA FINAL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object Dt1: TcxDateEdit
                Left = 3
                Top = 13
                ParentFont = False
                Properties.OnChange = Dt1PropertiesChange
                TabOrder = 0
                Width = 121
              end
              object Dt2: TcxDateEdit
                Left = 127
                Top = 13
                ParentFont = False
                TabOrder = 1
                Width = 121
              end
              object rbem: TcxRadioButton
                Left = 280
                Top = 16
                Width = 81
                Height = 17
                Caption = 'Emiss'#227'o'
                TabOrder = 2
                OnClick = rbemClick
              end
              object rbven: TcxRadioButton
                Left = 367
                Top = 16
                Width = 81
                Height = 17
                Caption = 'Vencimento'
                TabOrder = 3
                OnClick = rbemClick
              end
              object rbbx: TcxRadioButton
                Left = 453
                Top = 16
                Width = 84
                Height = 17
                Caption = 'Baixa/Canc.'
                TabOrder = 4
                OnClick = rbemClick
              end
            end
            object TabSacBol: TcxTabSheet
              Caption = 'POR SACADO'
              ImageIndex = 1
              object Label10: TLabel
                Left = 0
                Top = 0
                Width = 602
                Height = 13
                Align = alTop
                Caption = 'NOME/RAZ'#195'O SOCIAL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 102
              end
              object cmb1: TcxComboBox
                AlignWithMargins = True
                Left = 3
                Top = 16
                Margins.Bottom = 10
                Align = alClient
                ParentFont = False
                Properties.CharCase = ecUpperCase
                Properties.Sorted = True
                TabOrder = 0
                OnClick = cmb1Click
                Width = 596
              end
            end
            object TabnmroBol: TcxTabSheet
              Caption = 'POR N'#186' OU VALOR'
              ImageIndex = 2
              object Label16: TLabel
                Left = 151
                Top = 10
                Width = 41
                Height = 13
                Caption = 'N'#218'MERO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 302
                Top = 10
                Width = 30
                Height = 13
                Caption = 'VALOR'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object Label18: TLabel
                Left = 280
                Top = 29
                Width = 14
                Height = 13
                Caption = 'OU'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object edPesqNmro: TcxTextEdit
                Left = 151
                Top = 24
                ParentFont = False
                Properties.OnChange = edPesqNmroPropertiesChange
                TabOrder = 0
                Width = 121
              end
              object edPesqValor: TcxCurrencyEdit
                Left = 303
                Top = 24
                ParentFont = False
                Properties.OnChange = edPesqValorPropertiesChange
                TabOrder = 1
                Width = 121
              end
            end
          end
        end
        object TabBaixaBol: TcxTabSheet
          Caption = 'BAIXA'
          ImageIndex = 3
          object Label11: TLabel
            Left = 280
            Top = 0
            Width = 77
            Height = 13
            Caption = 'DATA DA  BAIXA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 280
            Top = 38
            Width = 81
            Height = 13
            Caption = 'VALOR RECEBIDO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 3
            Top = 0
            Width = 53
            Height = 13
            Caption = 'Observa'#231#245'es'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object dt_Baixa: TcxDateEdit
            Left = 280
            Top = 13
            ParentFont = False
            TabOrder = 0
            Width = 121
          end
          object edValor: TcxCurrencyEdit
            Left = 280
            Top = 52
            ParentFont = False
            TabOrder = 1
            Width = 121
          end
          object mmObs: TcxMemo
            Left = 0
            Top = 13
            ParentFont = False
            TabOrder = 2
            Height = 87
            Width = 274
          end
          object cbMaos: TcxCheckBox
            Left = 280
            Top = 75
            TabStop = False
            AutoSize = False
            Caption = 'Recebido em cash'
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Height = 17
            Width = 121
          end
          object Panel5: TPanel
            Left = 466
            Top = 0
            Width = 350
            Height = 99
            Align = alRight
            TabOrder = 4
            object Panel6: TPanel
              Left = 1
              Top = 32
              Width = 348
              Height = 66
              Align = alBottom
              TabOrder = 0
              object btnCanc: TcxButton
                AlignWithMargins = True
                Left = 14
                Top = 4
                Width = 78
                Height = 58
                Align = alRight
                Caption = 'CANCELAR BOLETO'
                TabOrder = 0
                WordWrap = True
                OnClick = btnCancClick
              end
              object btnBaixa: TcxButton
                AlignWithMargins = True
                Left = 98
                Top = 4
                Width = 78
                Height = 58
                Align = alRight
                Caption = 'BAIXAR'
                TabOrder = 1
                OnClick = btnBaixaClick
              end
              object btnBaixaArq: TcxButton
                AlignWithMargins = True
                Left = 182
                Top = 4
                Width = 78
                Height = 58
                Align = alRight
                Caption = 'BAIXAR VIA ARQ.'
                TabOrder = 2
                WordWrap = True
                OnClick = btnBaixaArqClick
              end
              object btnGerarNovo: TcxButton
                AlignWithMargins = True
                Left = 266
                Top = 4
                Width = 78
                Height = 58
                Align = alRight
                Caption = 'GERAR NOVO BOLETO'
                TabOrder = 3
                WordWrap = True
                OnClick = btnGerarNovoClick
              end
            end
            object Panel7: TPanel
              Left = 1
              Top = 1
              Width = 348
              Height = 31
              Align = alClient
              TabOrder = 1
              object cxLabel1: TcxLabel
                Left = 1
                Top = 1
                Cursor = crHandPoint
                Align = alClient
                Caption = 'Associar baixa com plano de contas'
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clBlue
                Style.Font.Height = -11
                Style.Font.Name = 'Comic Sans MS'
                Style.Font.Style = [fsUnderline]
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                OnClick = cxLabel1Click
                AnchorX = 174
                AnchorY = 16
              end
            end
          end
        end
        object tbBaixaArq: TcxTabSheet
          Caption = 'Baixa por Arquivo Retorno'
          ImageIndex = 3
          OnEnter = tbBaixaArqEnter
          object cmbBoleto: TcxLookupComboBox
            Left = 444
            Top = 25
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
            Width = 341
          end
          object cxLabel5: TcxLabel
            Left = 444
            Top = 5
            Caption = 'Conta Associada ao boleto'
            Transparent = True
          end
          object btnLerArq: TcxButton
            AlignWithMargins = True
            Left = 648
            Top = 54
            Width = 121
            Height = 26
            Caption = 'Iniciar'
            TabOrder = 2
            WordWrap = True
            OnClick = btnLerArqClick
          end
          object Memo1: TMemo
            Left = 3
            Top = 1
            Width = 430
            Height = 98
            Ctl3D = False
            Lines.Strings = (
              'Observa'#231#245'es e / ou erros:')
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
          object cxButton3: TcxButton
            AlignWithMargins = True
            Left = 506
            Top = 54
            Width = 121
            Height = 26
            Caption = 'Voltar'
            TabOrder = 4
            WordWrap = True
            OnClick = cxButton3Click
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 300
        Width = 824
        Height = 31
        Align = alBottom
        TabOrder = 2
        object Label13: TLabel
          Left = 3
          Top = 0
          Width = 31
          Height = 13
          Caption = 'BANCO'
          FocusControl = cxDBLabel7
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 216
          Top = 0
          Width = 42
          Height = 13
          Caption = 'AG'#202'NCIA'
          FocusControl = cxDBLabel8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 288
          Top = 0
          Width = 31
          Height = 13
          Caption = 'CONTA'
          FocusControl = cxDBLabel8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object cxDBLabel7: TcxDBLabel
          Left = 3
          Top = 10
          DataBinding.DataField = 'nomebanco'
          DataBinding.DataSource = DS1
          ParentColor = False
          ParentFont = False
          Height = 19
          Width = 214
        end
        object cxDBLabel8: TcxDBLabel
          Left = 216
          Top = 10
          DataBinding.DataField = 'agencia'
          DataBinding.DataSource = DS1
          ParentColor = False
          ParentFont = False
          Height = 19
          Width = 65
        end
        object cxDBLabel9: TcxDBLabel
          Left = 285
          Top = 10
          DataBinding.DataField = 'conta'
          DataBinding.DataSource = DS1
          ParentColor = False
          ParentFont = False
          Height = 19
          Width = 71
        end
      end
    end
    object TabCarne: TcxTabSheet
      Caption = 'FATURAS'
      ImageIndex = 2
      OnShow = TabCarneShow
      object GrdCarne: TcxGrid
        Left = 0
        Top = 0
        Width = 824
        Height = 338
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object tbvCarne: TcxGridDBTableView
          PopupMenu = pmFat
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnCellClick = tbvCarneCellClick
          OnSelectionChanged = tbvSelectionChanged
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DM.DSFinan_Carne
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '000'
              Kind = skCount
              FieldName = 'id'
              Column = tbvCarneid
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'valor'
              Column = tbvCarnevalor
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'valor_pg'
              Column = tbvCarnevalor_pg
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
          object tbvCarneid: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 56
          end
          object tbvCarnenmro: TcxGridDBColumn
            Caption = 'N'#186' DOCUM.'
            DataBinding.FieldName = 'nmro'
            HeaderAlignmentHorz = taCenter
            Width = 115
          end
          object tbvCarnedata_process: TcxGridDBColumn
            Caption = 'DT. PROC.'
            DataBinding.FieldName = 'data_process'
            HeaderAlignmentHorz = taCenter
            Width = 95
          end
          object tbvCarnedt_vencimento: TcxGridDBColumn
            Caption = 'DT. VENC.'
            DataBinding.FieldName = 'dt_vencimento'
            HeaderAlignmentHorz = taCenter
            Width = 89
          end
          object tbvCarnedt_baixa_canc: TcxGridDBColumn
            Caption = 'DT. BAIXA'
            DataBinding.FieldName = 'dt_baixa_canc'
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object tbvCarnebaixa: TcxGridDBColumn
            Caption = 'BAI'
            DataBinding.FieldName = 'baixa'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 46
          end
          object tbvCarnecancelado: TcxGridDBColumn
            Caption = 'CNC'
            DataBinding.FieldName = 'cancelado'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 56
          end
          object tbvCarnevalor: TcxGridDBColumn
            Caption = 'VALOR'
            DataBinding.FieldName = 'valor'
            HeaderAlignmentHorz = taCenter
            Width = 93
          end
          object tbvCarnevalor_pg: TcxGridDBColumn
            Caption = 'VR. PAGO'
            DataBinding.FieldName = 'valor_pg'
            HeaderAlignmentHorz = taCenter
            Width = 101
          end
        end
        object LvCarne: TcxGridLevel
          GridView = tbvCarne
        end
      end
      object pgDetCarne: TcxPageControl
        Left = 0
        Top = 338
        Width = 824
        Height = 122
        Align = alBottom
        TabOrder = 1
        Properties.ActivePage = TabBaixaCarne
        Properties.CustomButtons.Buttons = <>
        Properties.HotTrack = True
        ClientRectBottom = 118
        ClientRectLeft = 4
        ClientRectRight = 820
        ClientRectTop = 26
        object TabDetCarne: TcxTabSheet
          Caption = 'DETALHES'
          ImageIndex = 2
          OnShow = TabDetCarneShow
          object Label21: TLabel
            Left = 8
            Top = -2
            Width = 43
            Height = 13
            Caption = 'CNPJ/CPF'
            FocusControl = cxDBLabel10
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 108
            Top = -2
            Width = 102
            Height = 13
            Caption = 'NOME/RAZ'#195'O SOCIAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 8
            Top = 24
            Width = 65
            Height = 13
            Caption = 'LOGRADOURO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 410
            Top = 24
            Width = 12
            Height = 13
            Caption = 'N'#186
            FocusControl = cxDBLabel13
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 8
            Top = 49
            Width = 54
            Height = 13
            Caption = 'MUNIC'#205'PIO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 410
            Top = 49
            Width = 12
            Height = 13
            Caption = 'UF'
            FocusControl = cxDBLabel15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 458
            Top = -2
            Width = 33
            Height = 13
            Caption = 'e-MAIL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object cxDBLabel10: TcxDBLabel
            Left = 8
            Top = 7
            DataBinding.DataField = 'cnpj'
            DataBinding.DataSource = DSCliCarne
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 99
          end
          object cxDBLabel11: TcxDBLabel
            Left = 108
            Top = 7
            DataBinding.DataField = 'razaosocial'
            DataBinding.DataSource = DSCliCarne
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 349
          end
          object cxDBLabel12: TcxDBLabel
            Left = 8
            Top = 33
            DataBinding.DataField = 'logradourocobranca'
            DataBinding.DataSource = DSCliCarne
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 398
          end
          object cxDBLabel13: TcxDBLabel
            Left = 410
            Top = 33
            DataBinding.DataField = 'nmrocobranca'
            DataBinding.DataSource = DSCliCarne
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 44
          end
          object cxDBLabel14: TcxDBLabel
            Left = 6
            Top = 60
            DataBinding.DataField = 'cidadecobranca'
            DataBinding.DataSource = DSCliCarne
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 398
          end
          object cxDBLabel15: TcxDBLabel
            Left = 410
            Top = 60
            DataBinding.DataField = 'ufcobranca'
            DataBinding.DataSource = DSCliCarne
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 44
          end
          object cxDBLabel16: TcxDBLabel
            Left = 458
            Top = 7
            DataBinding.DataField = 'email'
            DataBinding.DataSource = DSCliCarne
            ParentColor = False
            ParentFont = False
            Height = 19
            Width = 317
          end
          object cxDBMemo2: TcxDBMemo
            Left = 458
            Top = 30
            TabStop = False
            DataBinding.DataField = 'obs'
            DataBinding.DataSource = DM.DSFinan_Carne
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Comic Sans MS'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Height = 47
            Width = 313
          end
        end
        object TabPesqCarne: TcxTabSheet
          Caption = 'PESQUISA'
          ImageIndex = 0
          object rcb2: TcxRadioGroup
            Left = 610
            Top = 0
            Align = alRight
            ParentFont = False
            Properties.Items = <
              item
                Caption = 'BAIXADOS'
                Value = 'baixa="S"'
              end
              item
                Caption = 'EM ABERTO'
                Value = 'baixa="N"'
              end
              item
                Caption = 'CANCELADOS'
                Value = 'cancelado="S"'
              end>
            Properties.OnChange = rcb2PropertiesChange
            ItemIndex = 1
            TabOrder = 0
            Height = 92
            Width = 122
          end
          object btnExibirCarne: TcxButton
            AlignWithMargins = True
            Left = 735
            Top = 3
            Width = 78
            Height = 86
            Align = alRight
            Caption = 'EXIBIR'
            TabOrder = 1
            OnClick = btnExibirCarneClick
          end
          object pgOpcCarne: TcxPageControl
            Left = 0
            Top = 0
            Width = 610
            Height = 92
            Align = alClient
            TabOrder = 2
            Properties.ActivePage = TabSacCarne
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 88
            ClientRectLeft = 4
            ClientRectRight = 606
            ClientRectTop = 26
            object TabDataCarne: TcxTabSheet
              Caption = 'POR DATA'
              ImageIndex = 0
              object Label28: TLabel
                Left = 3
                Top = 1
                Width = 66
                Height = 13
                Caption = 'DATA INICIAL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object Label29: TLabel
                Left = 127
                Top = 1
                Width = 56
                Height = 13
                Caption = 'DATA FINAL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object Dt3: TcxDateEdit
                Left = 3
                Top = 13
                ParentFont = False
                Properties.OnChange = Dt3PropertiesChange
                TabOrder = 0
                Width = 121
              end
              object Dt4: TcxDateEdit
                Left = 127
                Top = 13
                ParentFont = False
                TabOrder = 1
                Width = 121
              end
              object rbemcarne: TcxRadioButton
                Left = 280
                Top = 16
                Width = 81
                Height = 17
                Caption = 'Emiss'#227'o'
                TabOrder = 2
                OnClick = rbemcarneClick
              end
              object rbvenccarne: TcxRadioButton
                Left = 367
                Top = 16
                Width = 81
                Height = 17
                Caption = 'Vencimento'
                TabOrder = 3
                OnClick = rbemcarneClick
              end
              object rbbxcarne: TcxRadioButton
                Left = 453
                Top = 16
                Width = 84
                Height = 17
                Caption = 'Baixa/Canc.'
                TabOrder = 4
                OnClick = rbemcarneClick
              end
            end
            object TabSacCarne: TcxTabSheet
              Caption = 'POR SACADO'
              ImageIndex = 1
              object Label30: TLabel
                Left = 0
                Top = 0
                Width = 602
                Height = 13
                Align = alTop
                Caption = 'NOME/RAZ'#195'O SOCIAL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 102
              end
              object cmb2: TcxImageComboBox
                AlignWithMargins = True
                Left = 3
                Top = 16
                Margins.Bottom = 10
                Align = alClient
                ParentFont = False
                Properties.Items = <>
                Properties.OnChange = cmb2PropertiesChange
                TabOrder = 0
                Width = 596
              end
            end
            object TabNmroCarne: TcxTabSheet
              Caption = 'POR N'#186' OU VALOR'
              ImageIndex = 2
              OnShow = TabNmroCarneShow
              object Label31: TLabel
                Left = 151
                Top = 10
                Width = 41
                Height = 13
                Caption = 'N'#218'MERO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object Label32: TLabel
                Left = 302
                Top = 10
                Width = 30
                Height = 13
                Caption = 'VALOR'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object Label33: TLabel
                Left = 280
                Top = 29
                Width = 14
                Height = 13
                Caption = 'OU'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object edPesqNmroCarne: TcxTextEdit
                Left = 153
                Top = 24
                ParentFont = False
                Properties.OnChange = edPesqNmroPropertiesChange
                TabOrder = 0
                Width = 121
              end
              object edPesqValorCarne: TcxCurrencyEdit
                Left = 303
                Top = 24
                ParentFont = False
                Properties.OnChange = edPesqValorPropertiesChange
                TabOrder = 1
                Width = 121
              end
            end
          end
        end
        object TabBaixaCarne: TcxTabSheet
          Caption = 'BAIXA'
          ImageIndex = 3
          object Label34: TLabel
            Left = 280
            Top = 0
            Width = 77
            Height = 13
            Caption = 'DATA DA  BAIXA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 280
            Top = 44
            Width = 81
            Height = 13
            Caption = 'VALOR RECEBIDO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 3
            Top = 0
            Width = 53
            Height = 13
            Caption = 'Observa'#231#245'es'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Dt_BAixaCarne: TcxDateEdit
            Left = 280
            Top = 13
            ParentFont = False
            TabOrder = 0
            Width = 121
          end
          object btnCancCarne: TcxButton
            AlignWithMargins = True
            Left = 735
            Top = 3
            Width = 78
            Height = 86
            Align = alRight
            Caption = 'CANCELAR FATURA'
            TabOrder = 3
            WordWrap = True
            OnClick = btnCancCarneClick
          end
          object btnbxCarne: TcxButton
            AlignWithMargins = True
            Left = 651
            Top = 3
            Width = 78
            Height = 86
            Align = alRight
            Caption = 'BAIXAR'
            TabOrder = 2
            OnClick = btnbxCarneClick
          end
          object edValorCarne: TcxCurrencyEdit
            Left = 280
            Top = 58
            ParentFont = False
            TabOrder = 1
            Width = 121
          end
          object mmObsCarne: TcxMemo
            Left = 0
            Top = 13
            ParentFont = False
            TabOrder = 4
            Height = 79
            Width = 274
          end
          object cxLabel2: TcxLabel
            Left = 414
            Top = 38
            Cursor = crHandPoint
            Caption = 'Associar baixa com plano de contas'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clBlue
            Style.Font.Height = -11
            Style.Font.Name = 'Comic Sans MS'
            Style.Font.Style = [fsUnderline]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            OnClick = cxLabel2Click
            AnchorX = 507
            AnchorY = 48
          end
        end
      end
    end
    object TabDeb: TcxTabSheet
      Caption = 'D'#201'BITOS'
      ImageIndex = 1
      OnShow = TabDebShow
      object Panel1: TPanel
        Left = 0
        Top = 251
        Width = 824
        Height = 209
        Align = alBottom
        Caption = 'Panel1'
        TabOrder = 0
        object Panel2: TPanel
          Left = 1
          Top = 179
          Width = 822
          Height = 29
          Align = alBottom
          TabOrder = 0
          object lblPesq: TcxLabel
            Left = 1
            Top = 1
            Align = alLeft
            Caption = 'PESQUISAR POR:'
            ParentFont = False
            Style.Edges = []
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -9
            Style.Font.Name = 'Comic Sans MS'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 15
          end
          object edPesq: TcxTextEdit
            AlignWithMargins = True
            Left = 87
            Top = 4
            Align = alLeft
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.OnChange = edPesqPropertiesChange
            TabOrder = 1
            OnKeyDown = edPesqKeyDown
            Width = 365
          end
        end
        object GrdCliDeb: TcxGrid
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 816
          Height = 172
          Align = alClient
          TabOrder = 1
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
          object TbvCliDeb: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            DataController.DataModeController.GridMode = True
            DataController.DataSource = DM.DSFinan_CliDeb
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
            object TbvCliDebid: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 37
              OnHeaderClick = TbvCliDebidHeaderClick
            end
            object TbvCliDebcnpj: TcxGridDBColumn
              Caption = 'CNPJ'
              DataBinding.FieldName = 'cnpj'
              HeaderAlignmentHorz = taCenter
              Width = 94
              OnHeaderClick = TbvCliDebidHeaderClick
            end
            object TbvCliDebnome: TcxGridDBColumn
              Tag = 1
              Caption = 'NOME'
              DataBinding.FieldName = 'nome'
              HeaderAlignmentHorz = taCenter
              Width = 321
              OnHeaderClick = TbvCliDebidHeaderClick
            end
            object TbvCliDebrazaosocial: TcxGridDBColumn
              Caption = 'RAZ'#195'O SOCIAL'
              DataBinding.FieldName = 'razaosocial'
              HeaderAlignmentHorz = taCenter
              Width = 287
              OnHeaderClick = TbvCliDebidHeaderClick
            end
          end
          object LvCliDeb: TcxGridLevel
            GridView = TbvCliDeb
          end
        end
      end
      object cxGroupBox1: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alLeft
        Caption = 'D'#201'BITOS'
        ParentFont = False
        TabOrder = 1
        Height = 245
        Width = 350
        object GrdDeb: TcxGrid
          Left = 2
          Top = 18
          Width = 346
          Height = 225
          Align = alClient
          TabOrder = 0
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
          object TbvDeb: TcxGridDBTableView
            PopupMenu = pmDeb
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            DataController.DataSource = DM.DSFinanDeb
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = TbvDebvalor
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = TbvDebvalor
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'id'
                Column = TbvDebid
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                FieldName = 'valor'
                Column = TbvDebvalor
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
            OptionsSelection.InvertSelect = False
            OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
            OptionsView.ScrollBars = ssVertical
            OptionsView.CellAutoHeight = True
            OptionsView.Footer = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GridLineColor = clBlack
            OptionsView.GroupByBox = False
            OptionsView.GroupSummaryLayout = gslAlignWithColumns
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clYellow
            Styles.Content = cxStyle1
            object TbvDebid: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 36
            end
            object TbvDebtipo: TcxGridDBColumn
              Caption = 'TIPO'
              DataBinding.FieldName = 'tipo'
              HeaderAlignmentHorz = taCenter
              Width = 53
            end
            object TbvDebnmro_doc: TcxGridDBColumn
              Caption = 'DOCUM.'
              DataBinding.FieldName = 'nmro_doc'
              HeaderAlignmentHorz = taCenter
              Width = 68
            end
            object TbvDebdt_vencimento: TcxGridDBColumn
              Caption = 'DT VENC.'
              DataBinding.FieldName = 'dt_vencimento'
              HeaderAlignmentHorz = taCenter
              Width = 65
            end
            object TbvDebvalor: TcxGridDBColumn
              Caption = 'VALOR'
              DataBinding.FieldName = 'valor'
              HeaderAlignmentHorz = taCenter
              Width = 88
            end
          end
          object LvDeb: TcxGridLevel
            GridView = TbvDeb
          end
        end
      end
      object cxGroupBox2: TcxGroupBox
        AlignWithMargins = True
        Left = 359
        Top = 3
        Align = alClient
        Caption = 'CR'#201'DITOS'
        ParentFont = False
        TabOrder = 2
        Height = 245
        Width = 262
        object GrdCred: TcxGrid
          Left = 2
          Top = 18
          Width = 258
          Height = 225
          Align = alClient
          PopupMenu = pmCred
          TabOrder = 0
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
          object TbvCred: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = DM.DSFinanCredito
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                FieldName = 'valor'
                Column = TbvCredvalor
              end
              item
                Kind = skCount
                FieldName = 'id'
                Column = TbvCredid
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
            OptionsSelection.InvertSelect = False
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
            object TbvCredid: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 29
            end
            object TbvCredtipo: TcxGridDBColumn
              Caption = 'T'
              DataBinding.FieldName = 'tipo'
              HeaderAlignmentHorz = taCenter
            end
            object TbvCreddt_process: TcxGridDBColumn
              Caption = 'DT. PROC.'
              DataBinding.FieldName = 'dt_process'
              HeaderAlignmentHorz = taCenter
            end
            object TbvCredvalor: TcxGridDBColumn
              Caption = 'VALOR'
              DataBinding.FieldName = 'valor'
              HeaderAlignmentHorz = taCenter
              Width = 73
            end
          end
          object LvCred: TcxGridLevel
            GridView = TbvCred
          end
        end
      end
      object cxGroupBox3: TcxGroupBox
        AlignWithMargins = True
        Left = 627
        Top = 3
        Align = alRight
        Caption = 'DEMONSTRATIVO'
        ParentFont = False
        TabOrder = 3
        Height = 245
        Width = 194
        object GrdDem: TcxGrid
          Left = 2
          Top = 18
          Width = 190
          Height = 225
          Align = alClient
          TabOrder = 0
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
          object tbvDem: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = DM.DSFinanTotDebCred
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                FieldName = 'valor'
                Column = tbvDemvalor
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
            OptionsSelection.InvertSelect = False
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
            object tbvDemtipo: TcxGridDBColumn
              Caption = 'TIPO'
              DataBinding.FieldName = 'tipo'
              HeaderAlignmentHorz = taCenter
              Width = 60
            end
            object tbvDemvalor: TcxGridDBColumn
              Caption = 'VALOR'
              DataBinding.FieldName = 'valor'
              HeaderAlignmentHorz = taCenter
              Width = 92
            end
          end
          object lvDem: TcxGridLevel
            GridView = tbvDem
          end
        end
      end
      object pnlNewCred: TPanel
        Left = 288
        Top = 170
        Width = 201
        Height = 159
        BevelInner = bvLowered
        BevelWidth = 6
        TabOrder = 4
        Visible = False
        object Label20: TLabel
          Left = 45
          Top = 20
          Width = 82
          Height = 15
          Caption = 'Valor do cr'#233'dito'
          FocusControl = cxDBLabel8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object edNewCred: TcxCurrencyEdit
          Left = 45
          Top = 39
          ParentFont = False
          TabOrder = 0
          Width = 121
        end
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 15
          Top = 63
          Width = 171
          Height = 43
          Align = alBottom
          TabOrder = 1
          object cxButton1: TcxButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 77
            Height = 35
            Align = alLeft
            Caption = 'CANCELAR'
            TabOrder = 1
            OnClick = cxButton1Click
          end
          object cxButton2: TcxButton
            AlignWithMargins = True
            Left = 90
            Top = 4
            Width = 77
            Height = 35
            Align = alRight
            Caption = 'INSERIR'
            TabOrder = 0
            OnClick = cxButton2Click
          end
        end
        object cxLabel3: TcxLabel
          Left = 12
          Top = 128
          Cursor = crHandPoint
          Align = alBottom
          Caption = 'Associar plano de contas'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = [fsUnderline]
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          OnClick = cxLabel3Click
          AnchorX = 101
          AnchorY = 138
        end
        object cxLabel4: TcxLabel
          Left = 12
          Top = 109
          Cursor = crHandPoint
          Align = alBottom
          Caption = 'Exibir plano de contas'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = [fsUnderline]
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          OnClick = cxLabel4Click
          AnchorX = 101
          AnchorY = 119
        end
      end
    end
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'TbvCliDebrazaosocial.Tag'
      'TbvCliDebnome.Tag'
      'TbvCliDebid.Tag'
      'TbvCliDebcnpj.Tag'
      'pgMain.ActivePage')
    Left = 72
    Top = 144
  end
  inherited FR: TFormResizer
    Left = 24
    Top = 144
  end
  inherited EnterTab: TACBrEnterTab
    Left = 24
    Top = 96
  end
  object Q1: TFDQuery
    MasterSource = DM.DSFinan_bol_Emit
    MasterFields = 'boleto'
    Connection = DM.DB
    SQL.Strings = (
      'select b.nomebanco, concat(a.agencia,'#39'-'#39', a.dig) as agencia, '
      'concat(c.conta, '#39'-'#39', c.dig) as conta, bl.id '
      'from'
      'finan_banco_banco b, '
      'finan_banco_agencia a, '
      'finan_banco_conta c,'
      'finan_banco_boleto bl'
      'where '
      'c.agencia=a.id and '
      'a.banco=b.id and'
      'bl.conta=c.id'
      'and bl.id = :boleto')
    Left = 136
    Top = 96
    ParamData = <
      item
        Name = 'boleto'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Q1id: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'bl.id'
    end
    object Q1nomebanco: TStringField
      FieldName = 'nomebanco'
      Origin = 'b.nomebanco'
    end
    object Q1agencia: TStringField
      FieldName = 'agencia'
      Origin = 'a.agencia'
    end
    object Q1conta: TStringField
      FieldName = 'conta'
      Origin = 'c.conta'
    end
  end
  object DS1: TDataSource
    AutoEdit = False
    DataSet = Q1
    Left = 80
    Top = 96
  end
  object cxSR1: TcxStyleRepository
    Left = 136
    Top = 144
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Comic Sans MS'
      Font.Style = []
    end
  end
  object pmCred: TPopupMenu
    OnPopup = pmCredPopup
    Left = 72
    Top = 192
    object CreditarNovoValor1: TMenuItem
      Caption = 'Creditar Novo Valor'
      OnClick = CreditarNovoValor1Click
    end
    object ExtornarCrdito1: TMenuItem
      Caption = 'Estornar Cr'#233'dito'
      OnClick = ExtornarCrdito1Click
    end
  end
  object pmDeb: TPopupMenu
    Left = 24
    Top = 192
    object QuitarDbitos1: TMenuItem
      Caption = 'Quitar D'#233'bitos'
      OnClick = QuitarDbitos1Click
    end
    object BaixarDoc1: TMenuItem
      Caption = 'Baixar documento'
      OnClick = BaixarDoc1Click
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
    end
    object Parcelar1: TMenuItem
      Caption = 'Parcelar'
      OnClick = Parcelar1Click
    end
  end
  object pmBol: TPopupMenu
    OnPopup = pmBolPopup
    Left = 136
    Top = 192
    object DesfazerBaixa1: TMenuItem
      Caption = 'Desfazer Baixa'
      OnClick = DesfazerBaixa1Click
    end
    object ExibirAssociao1: TMenuItem
      Caption = 'Exibir Plano de conta'
      OnClick = ExibirAssociao1Click
    end
    object Enviarporemail1: TMenuItem
      Caption = 'Enviar por e-mail'
      OnClick = Enviarporemail1Click
    end
  end
  object DScmb2: TDataSource
    AutoEdit = False
    DataSet = DM.QvwDest_nf
    Left = 184
    Top = 96
  end
  object QCliCarne: TFDQuery
    MasterSource = DM.DSFinan_Carne
    MasterFields = 'sacado'
    Connection = DM.DB
    SQL.Strings = (
      'select * from cliente where id=:sacado')
    Left = 184
    Top = 144
    ParamData = <
      item
        Name = 'SACADO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCliCarneid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'cliente.id'
    end
    object QCliCarnecnpj: TStringField
      FieldName = 'cnpj'
      Origin = 'cliente.cnpj'
    end
    object QCliCarnenome: TStringField
      FieldName = 'nome'
      Origin = 'cliente.nome'
      Size = 100
    end
    object QCliCarnerazaosocial: TStringField
      FieldName = 'razaosocial'
      Origin = 'cliente.razaosocial'
      Size = 100
    end
    object QCliCarnetel1: TStringField
      FieldName = 'tel1'
      Origin = 'cliente.tel1'
      Size = 15
    end
    object QCliCarnetel2: TStringField
      FieldName = 'tel2'
      Origin = 'cliente.tel2'
      Size = 14
    end
    object QCliCarnefax: TStringField
      FieldName = 'fax'
      Origin = 'cliente.fax'
      Size = 15
    end
    object QCliCarnecelular: TStringField
      FieldName = 'celular'
      Origin = 'cliente.celular'
      Size = 15
    end
    object QCliCarnetipo_tel1: TStringField
      FieldName = 'tipo_tel1'
      Origin = 'cliente.tipo_tel1'
    end
    object QCliCarnetipo_tel2: TStringField
      FieldName = 'tipo_tel2'
      Origin = 'cliente.tipo_tel2'
      Size = 14
    end
    object QCliCarnesituacao: TStringField
      FieldName = 'situacao'
      Origin = 'cliente.situacao'
      Size = 10
    end
    object QCliCarnelogradouro: TStringField
      FieldName = 'logradouro'
      Origin = 'cliente.logradouro'
      Size = 100
    end
    object QCliCarnenmro: TStringField
      FieldName = 'nmro'
      Origin = 'cliente.nmro'
    end
    object QCliCarnecomplem: TStringField
      FieldName = 'complem'
      Origin = 'cliente.complem'
    end
    object QCliCarnebairro: TStringField
      FieldName = 'bairro'
      Origin = 'cliente.bairro'
      Size = 40
    end
    object QCliCarnecidade: TStringField
      FieldName = 'cidade'
      Origin = 'cliente.cidade'
      Size = 50
    end
    object QCliCarneuf: TStringField
      FieldName = 'uf'
      Origin = 'cliente.uf'
      FixedChar = True
      Size = 2
    end
    object QCliCarnecep: TStringField
      FieldName = 'cep'
      Origin = 'cliente.cep'
      Size = 12
    end
    object QCliCarneendcobranca: TStringField
      FieldName = 'endcobranca'
      Origin = 'cliente.endcobranca'
      Size = 50
    end
    object QCliCarnelogradourocobranca: TStringField
      FieldName = 'logradourocobranca'
      Origin = 'cliente.logradourocobranca'
      Size = 100
    end
    object QCliCarnenmrocobranca: TStringField
      FieldName = 'nmrocobranca'
      Origin = 'cliente.nmrocobranca'
    end
    object QCliCarnecomplemcobranca: TStringField
      FieldName = 'complemcobranca'
      Origin = 'cliente.complemcobranca'
    end
    object QCliCarnecidadecobranca: TStringField
      FieldName = 'cidadecobranca'
      Origin = 'cliente.cidadecobranca'
      Size = 30
    end
    object QCliCarnebairrocobranca: TStringField
      FieldName = 'bairrocobranca'
      Origin = 'cliente.bairrocobranca'
      Size = 30
    end
    object QCliCarnecepcobranca: TStringField
      FieldName = 'cepcobranca'
      Origin = 'cliente.cepcobranca'
      Size = 12
    end
    object QCliCarneufcobranca: TStringField
      FieldName = 'ufcobranca'
      Origin = 'cliente.ufcobranca'
      FixedChar = True
      Size = 2
    end
    object QCliCarneie: TStringField
      FieldName = 'ie'
      Origin = 'cliente.ie'
    end
    object QCliCarneim: TStringField
      FieldName = 'im'
      Origin = 'cliente.im'
    end
    object QCliCarnerg: TStringField
      FieldName = 'rg'
      Origin = 'cliente.rg'
    end
    object QCliCarnesuspenso: TStringField
      FieldName = 'suspenso'
      Origin = 'cliente.suspenso'
      FixedChar = True
      Size = 1
    end
    object QCliCarnedevedor: TStringField
      FieldName = 'devedor'
      Origin = 'cliente.devedor'
      FixedChar = True
      Size = 1
    end
    object QCliCarneclientedesde: TDateField
      FieldName = 'clientedesde'
      Origin = 'cliente.clientedesde'
    end
    object QCliCarnepai: TStringField
      FieldName = 'pai'
      Origin = 'cliente.pai'
      Size = 30
    end
    object QCliCarnemae: TStringField
      FieldName = 'mae'
      Origin = 'cliente.mae'
      Size = 30
    end
    object QCliCarnereferencia: TMemoField
      FieldName = 'referencia'
      Origin = 'cliente.referencia'
      BlobType = ftMemo
    end
    object QCliCarnedatanasc: TDateField
      FieldName = 'datanasc'
      Origin = 'cliente.datanasc'
    end
    object QCliCarnelimite: TFloatField
      FieldName = 'limite'
      Origin = 'cliente.limite'
    end
    object QCliCarnehaver: TFloatField
      FieldName = 'haver'
      Origin = 'cliente.haver'
    end
    object QCliCarneobs: TMemoField
      FieldName = 'obs'
      Origin = 'cliente.obs'
      BlobType = ftMemo
    end
    object QCliCarnesaldo: TFloatField
      FieldName = 'saldo'
      Origin = 'cliente.saldo'
    end
    object QCliCarnedianasc: TIntegerField
      FieldName = 'dianasc'
      Origin = 'cliente.dianasc'
    end
    object QCliCarnemesnasc: TIntegerField
      FieldName = 'mesnasc'
      Origin = 'cliente.mesnasc'
    end
    object QCliCarneanonasc: TIntegerField
      FieldName = 'anonasc'
      Origin = 'cliente.anonasc'
    end
    object QCliCarneinfoutil: TStringField
      FieldName = 'infoutil'
      Origin = 'cliente.infoutil'
      Size = 40
    end
    object QCliCarneatualizado: TStringField
      FieldName = 'atualizado'
      Origin = 'cliente.atualizado'
      Size = 50
    end
    object QCliCarneemail: TStringField
      FieldName = 'email'
      Origin = 'cliente.email'
      Size = 60
    end
    object QCliCarnecidade_cod: TIntegerField
      FieldName = 'cidade_cod'
      Origin = 'cliente.cidade_cod'
    end
    object QCliCarneindicacao: TIntegerField
      FieldName = 'indicacao'
      Origin = 'cliente.indicacao'
    end
    object QCliCarnecodmun: TStringField
      FieldName = 'codmun'
      Origin = 'cliente.codmun'
    end
    object QCliCarnecodmuncobranca: TStringField
      FieldName = 'codmuncobranca'
      Origin = 'cliente.codmuncobranca'
    end
    object QCliCarneusar_endsec_entrega: TStringField
      FieldName = 'usar_endsec_entrega'
      Origin = 'cliente.usar_endsec_entrega'
      FixedChar = True
      Size = 1
    end
    object QCliCarneusr_endsec_cobranca: TStringField
      FieldName = 'usr_endsec_cobranca'
      Origin = 'cliente.usr_endsec_cobranca'
      FixedChar = True
      Size = 1
    end
  end
  object DSCliCarne: TDataSource
    AutoEdit = False
    DataSet = QCliCarne
    Left = 184
    Top = 193
  end
  object pmFat: TPopupMenu
    OnPopup = pmBolPopup
    Left = 24
    Top = 240
    object DesfazerBaixaCarne: TMenuItem
      Caption = 'Desfazer Baixa'
      OnClick = DesfazerBaixaCarneClick
    end
    object ExibirPlanodeconta1: TMenuItem
      Caption = 'Exibir Plano de conta'
      OnClick = ExibirPlanodeconta1Click
    end
  end
end
