inherited frmCadban: TfrmCadban
  Caption = 'CADASTRO DE BANCOS/AG'#202'NCIAS/CONTAS'
  ClientHeight = 458
  ClientWidth = 430
  ExplicitWidth = 436
  ExplicitHeight = 486
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 426
    Width = 430
    TabOrder = 4
    ExplicitTop = 426
    ExplicitWidth = 430
    inherited pnlBtnClose: TPanel
      Left = 342
      TabOrder = 1
      ExplicitLeft = 342
    end
    inherited pnlBase: TPanel
      Width = 341
      TabOrder = 0
      ExplicitWidth = 341
      inherited pnlbasebotton: TPanel
        Width = 294
        ExplicitWidth = 294
        inherited Bar1: TdxStatusBar
          Width = 292
          ExplicitWidth = 292
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Top = 24
    Width = 430
    Height = 379
    TabOrder = 2
    Properties.ActivePage = cxTabSheet1
    ExplicitTop = 24
    ExplicitWidth = 430
    ExplicitHeight = 379
    ClientRectBottom = 379
    ClientRectRight = 430
    inherited TabCad: TcxTabSheet
      TabVisible = False
      ExplicitTop = 26
      ExplicitWidth = 430
      ExplicitHeight = 353
      inherited dbNav: TcxDBNavigator
        Top = 327
        Width = 422
        ExplicitTop = 327
        ExplicitWidth = 422
      end
    end
    inherited TabPesq: TcxTabSheet
      Caption = 'BANCOS'
      ExplicitWidth = 430
      ExplicitHeight = 353
      inherited grd: TcxGrid
        Width = 430
        Height = 307
        ExplicitWidth = 430
        ExplicitHeight = 307
        inherited tbv: TcxGridDBTableView
          OptionsData.Editing = True
          OptionsSelection.CellSelect = True
          object tbvid: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 55
          end
          object tbvnumbanco: TcxGridDBColumn
            DataBinding.FieldName = 'numbanco'
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
          object tbvnomebanco: TcxGridDBColumn
            DataBinding.FieldName = 'nomebanco'
            HeaderAlignmentHorz = taCenter
            Width = 197
          end
          object tbvusa: TcxGridDBColumn
            Caption = 'ATIVO'
            DataBinding.FieldName = 'usa'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 53
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 307
        Width = 430
        Visible = False
        ExplicitTop = 307
        ExplicitWidth = 430
        inherited edPesq: TcxTextEdit
          TabOrder = 1
        end
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
    object TabAgencia: TcxTabSheet
      Caption = 'AG'#202'NCIAS'
      ImageIndex = 1
      OnShow = TabAgenciaShow
      object grdag: TcxGrid
        Left = 0
        Top = 0
        Width = 430
        Height = 353
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object tbvag: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnCellClick = tbvCellClick
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DM.DSAgencias
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
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
          OptionsView.ScrollBars = ssVertical
          OptionsView.CellAutoHeight = True
          OptionsView.GridLineColor = clBlack
          OptionsView.GroupByBox = False
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clYellow
          object tbvagagencia: TcxGridDBColumn
            DataBinding.FieldName = 'agencia'
            HeaderAlignmentHorz = taCenter
            Width = 93
          end
          object tbvagdig: TcxGridDBColumn
            DataBinding.FieldName = 'dig'
            HeaderAlignmentHorz = taCenter
            Width = 46
          end
          object tbvagnome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 219
          end
        end
        object lvag: TcxGridLevel
          GridView = tbvag
        end
      end
    end
    object TabConta: TcxTabSheet
      Caption = 'CONTAS'
      ImageIndex = 2
      OnShow = TabContaShow
      object grdConta: TcxGrid
        Left = 0
        Top = 0
        Width = 430
        Height = 216
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object tbvconta: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnCellClick = tbvCellClick
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DM.DSContas
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
          object tbvcontaconta: TcxGridDBColumn
            DataBinding.FieldName = 'conta'
            HeaderAlignmentHorz = taCenter
            Width = 96
          end
          object tbvcontadig: TcxGridDBColumn
            DataBinding.FieldName = 'dig'
            Width = 33
          end
          object tbvcontatipo: TcxGridDBColumn
            DataBinding.FieldName = 'tipo'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'CORRENTE'
                ImageIndex = 0
                Value = 'C'
              end
              item
                Description = 'POUPAN'#199'A'
                Tag = 1
                Value = 'P'
              end>
            HeaderAlignmentHorz = taCenter
            Width = 114
          end
          object tbvcontasaldoinicial: TcxGridDBColumn
            DataBinding.FieldName = 'saldoinicial'
            HeaderAlignmentHorz = taCenter
            Width = 113
          end
        end
        object lvconta: TcxGridLevel
          GridView = tbvconta
        end
      end
      object pnlEditConta: TPanel
        Left = 0
        Top = 216
        Width = 430
        Height = 137
        Align = alBottom
        TabOrder = 1
        Visible = False
        object Label37: TLabel
          Left = 0
          Top = 8
          Width = 40
          Height = 15
          Caption = 'CONTA'
          FocusControl = edconta
        end
        object Label38: TLabel
          Left = 77
          Top = 8
          Width = 25
          Height = 15
          Caption = 'DIG.'
          FocusControl = cxDBSpinEdit6
        end
        object Label39: TLabel
          Left = 126
          Top = 8
          Width = 28
          Height = 15
          Caption = 'TIPO'
        end
        object Label40: TLabel
          Left = 293
          Top = 8
          Width = 90
          Height = 15
          Caption = 'SALDO INICIAL'
          FocusControl = cxDBCalcEdit4
        end
        object Label41: TLabel
          Left = 0
          Top = 51
          Width = 123
          Height = 15
          Caption = 'DETENTOR DA CONTA'
          FocusControl = cxDBTextEdit30
        end
        object Label42: TLabel
          Left = 0
          Top = 92
          Width = 93
          Height = 15
          Caption = 'CNPJ DETENTOR'
          FocusControl = cxDBTextEdit31
        end
        object Label43: TLabel
          Left = 124
          Top = 92
          Width = 84
          Height = 15
          Caption = 'OBSERVA'#199#213'ES'
          FocusControl = cxDBTextEdit32
        end
        object edconta: TcxDBTextEdit
          Left = 0
          Top = 24
          DataBinding.DataField = 'conta'
          DataBinding.DataSource = DM.DSContas
          TabOrder = 0
          Width = 73
        end
        object cxDBSpinEdit6: TcxDBSpinEdit
          Left = 77
          Top = 24
          DataBinding.DataField = 'dig'
          DataBinding.DataSource = DM.DSContas
          TabOrder = 1
          Width = 45
        end
        object cxDBCalcEdit4: TcxDBCalcEdit
          Left = 293
          Top = 24
          DataBinding.DataField = 'saldoinicial'
          DataBinding.DataSource = DM.DSContas
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit30: TcxDBTextEdit
          Left = 0
          Top = 67
          DataBinding.DataField = 'nome_proprietario'
          DataBinding.DataSource = DM.DSContas
          TabOrder = 4
          Width = 414
        end
        object cxDBTextEdit31: TcxDBTextEdit
          Left = 0
          Top = 108
          DataBinding.DataField = 'cnpj'
          DataBinding.DataSource = DM.DSContas
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit32: TcxDBTextEdit
          Left = 124
          Top = 108
          DataBinding.DataField = 'obs'
          DataBinding.DataSource = DM.DSContas
          TabOrder = 6
          Width = 290
        end
        object cxDBImageComboBox7: TcxDBImageComboBox
          Left = 126
          Top = 24
          DataBinding.DataField = 'tipo'
          DataBinding.DataSource = DM.DSContas
          Properties.Items = <
            item
              Description = 'CORRENTE'
              ImageIndex = 0
              Value = 'C'
            end
            item
              Description = 'POUPAN'#199'A'
              Tag = 1
              Value = 'P'
            end>
          TabOrder = 2
          Width = 163
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'BOLETO'
      ImageIndex = 3
      object CategoryPanelGroup1: TCategoryPanelGroup
        Left = 0
        Top = 0
        Width = 430
        Height = 353
        VertScrollBar.Position = 106
        VertScrollBar.Tracking = True
        Align = alClient
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        TabOrder = 0
        object CategoryPanel4: TCategoryPanel
          Top = -16
          Height = 367
          Caption = 'ENVIO DE E-MAIL'
          TabOrder = 0
          object cxDBTextEdit15: TcxDBTextEdit
            Left = 8
            Top = 24
            DataBinding.DataField = 'mail_host'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 0
            Width = 241
          end
          object cxDBSpinEdit4: TcxDBSpinEdit
            Left = 253
            Top = 24
            DataBinding.DataField = 'mail_port'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 1
            Width = 47
          end
          object cxDBTextEdit16: TcxDBCheckBox
            Left = 6
            Top = 314
            Caption = 'TLS'
            DataBinding.DataField = 'mail_tls'
            DataBinding.DataSource = DM.DSBoleto
            ParentColor = False
            ParentFont = False
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 8
            Width = 49
          end
          object cxDBTextEdit17: TcxDBCheckBox
            Left = 51
            Top = 314
            Caption = 'SSL'
            DataBinding.DataField = 'mail_ssl'
            DataBinding.DataSource = DM.DSBoleto
            ParentColor = False
            ParentFont = False
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 9
            Width = 47
          end
          object cxDBTextEdit18: TcxDBTextEdit
            Left = 8
            Top = 62
            DataBinding.DataField = 'mail_user'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 2
            Width = 258
          end
          object cxDBTextEdit19: TcxDBTextEdit
            Left = 270
            Top = 62
            DataBinding.DataField = 'mail_password'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            Properties.EchoMode = eemPassword
            TabOrder = 3
            Width = 121
          end
          object cxDBTextEdit20: TcxDBTextEdit
            Left = 8
            Top = 147
            DataBinding.DataField = 'mail_from'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 5
            Width = 382
          end
          object cxDBTextEdit21: TcxDBTextEdit
            Left = 8
            Top = 185
            DataBinding.DataField = 'mail_assunto'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 6
            Width = 382
          end
          object cxDBMemo1: TcxDBMemo
            Left = 8
            Top = 226
            DataBinding.DataField = 'mail_msg'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 7
            Height = 89
            Width = 382
          end
          object cxDBTextEdit22: TcxDBTextEdit
            Left = 8
            Top = 104
            DataBinding.DataField = 'mail_nomeremetente'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 4
            Width = 382
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 96
            Top = 314
            Caption = 'Enviar PDF'
            DataBinding.DataField = 'mail_enviapdf'
            DataBinding.DataSource = DM.DSBoleto
            ParentColor = False
            ParentFont = False
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 10
            Width = 84
          end
          object cxDBCheckBox2: TcxDBCheckBox
            Left = 177
            Top = 314
            Caption = 'Pedir Confir.'
            DataBinding.DataField = 'mail_pedeconfirma'
            DataBinding.DataSource = DM.DSBoleto
            ParentColor = False
            ParentFont = False
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 11
            Width = 89
          end
          object cxDBCheckBox3: TcxDBCheckBox
            Left = 269
            Top = 314
            Caption = 'Aguarda envio'
            DataBinding.DataField = 'mail_aguarda_envio'
            DataBinding.DataSource = DM.DSBoleto
            ParentColor = False
            ParentFont = False
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 20
            Width = 118
          end
          object Label22: TcxLabel
            Left = 8
            Top = 8
            Caption = 'HOST'
            FocusControl = cxDBTextEdit15
            ParentFont = False
            Transparent = True
          end
          object Label23: TcxLabel
            Left = 254
            Top = 8
            Caption = 'PORTA'
            FocusControl = cxDBSpinEdit4
            ParentFont = False
            Transparent = True
          end
          object Label26: TcxLabel
            Left = 8
            Top = 46
            Caption = 'USER'
            FocusControl = cxDBTextEdit18
            ParentFont = False
            Transparent = True
          end
          object Label27: TcxLabel
            Left = 270
            Top = 46
            Caption = 'SENHA'
            FocusControl = cxDBTextEdit19
            ParentFont = False
            Transparent = True
          end
          object Label28: TcxLabel
            Left = 8
            Top = 131
            Caption = 'FROM'
            FocusControl = cxDBTextEdit20
            ParentFont = False
            Transparent = True
          end
          object Label29: TcxLabel
            Left = 8
            Top = 169
            Caption = 'ASSUNTO'
            FocusControl = cxDBTextEdit21
            ParentFont = False
            Transparent = True
          end
          object Label30: TcxLabel
            Left = 8
            Top = 210
            Caption = 'CORPO DA MENSAGEM'
            FocusControl = cxDBMemo1
            ParentFont = False
            Transparent = True
          end
          object Label31: TcxLabel
            Left = 8
            Top = 88
            Caption = 'NOME DO REMETENTE'
            FocusControl = cxDBTextEdit22
            ParentFont = False
            Transparent = True
          end
          object testar: TButton
            Left = 317
            Top = 22
            Width = 75
            Height = 25
            Caption = 'testar'
            TabOrder = 21
            OnClick = testarClick
          end
        end
        object CategoryPanel3: TCategoryPanel
          Top = -46
          Height = 30
          Caption = 'MULTA, JUROS E DESCONTO'
          Collapsed = True
          TabOrder = 1
          ExpandedHeight = 112
          object cxDBSpinEdit1: TcxDBSpinEdit
            Left = 58
            Top = 16
            Hint = 
              'Se juros > 0 e Dias > 0 cobra juros a partir dos dias do vencime' +
              'nto. Se dias = 0 cobra ap'#243's o vencimento'
            DataBinding.DataField = 'dias_juros'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Width = 70
          end
          object cxDBSpinEdit2: TcxDBSpinEdit
            Left = 82
            Top = 56
            Hint = 
              'Se dias = 0 e desconto > 0, concede desconto por por dia de ante' +
              'cipa'#231'ao'
            DataBinding.DataField = 'dis_desc'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            Width = 55
          end
          object cxDBSpinEdit3: TcxDBSpinEdit
            Left = 238
            Top = 16
            Hint = 'Se = 0 n'#227'o h'#225' protesto'
            DataBinding.DataField = 'dias_protesto'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Width = 106
          end
          object Label19: TcxLabel
            Left = 2
            Top = 0
            Caption = 'JUROS     AP'#211'S (DIAS)'
            FocusControl = cxDBCalcEdit1
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Comic Sans MS'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object Label20: TcxLabel
            Left = 3
            Top = 40
            Caption = 'DESC. SE PAGO ANTES DE (DIAS)'
            FocusControl = cxDBCalcEdit2
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Comic Sans MS'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object Label21: TcxLabel
            Left = 181
            Top = 0
            Caption = 'MULTA'
            FocusControl = cxDBCalcEdit3
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Comic Sans MS'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object Label24: TcxLabel
            Left = 238
            Top = 0
            Caption = 'PROTESTAR AP'#211'S (DIAS)'
            FocusControl = cxDBSpinEdit3
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Comic Sans MS'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxDBCalcEdit1: TcxDBCurrencyEdit
            Left = 2
            Top = 16
            DataBinding.DataField = 'pc_juros'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = '0.00#%'
            TabOrder = 0
            Width = 53
          end
          object cxDBCalcEdit2: TcxDBCurrencyEdit
            Left = 3
            Top = 56
            DataBinding.DataField = 'pc_desc'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = '0.00#%'
            TabOrder = 4
            Width = 75
          end
          object cxDBCalcEdit3: TcxDBCurrencyEdit
            Left = 181
            Top = 16
            Hint = 'Se = 0 n'#227'o cobra multa'
            DataBinding.DataField = 'pc_multa'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            ParentShowHint = False
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = '0.00#%'
            ShowHint = True
            TabOrder = 2
            Width = 52
          end
        end
        object CategoryPanel2: TCategoryPanel
          Top = -76
          Height = 30
          Caption = 'T'#205'TULO'
          Collapsed = True
          TabOrder = 2
          ExpandedHeight = 252
          object Label36: TLabel
            Left = 332
            Top = 42
            Width = 60
            Height = 15
            Caption = 'NOSSO N'#186
            FocusControl = cxDBSpinEdit5
          end
          object cxDBImageComboBox2: TcxDBImageComboBox
            Left = 238
            Top = 16
            DataBinding.DataField = 'caract_titulo'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            Properties.Items = <
              item
                Description = 'Simples'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Vinculada'
                Value = 1
              end
              item
                Description = 'Caucionada'
                Value = 2
              end
              item
                Description = 'Descontada'
                Value = 3
              end
              item
                Description = 'Vendor'
                Value = 4
              end>
            TabOrder = 1
            Width = 99
          end
          object cxDBImageComboBox3: TcxDBImageComboBox
            Left = 3
            Top = 59
            DataBinding.DataField = 'layout_remessa'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            Properties.Items = <
              item
                Description = 'C240'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'C400'
                Value = 1
              end>
            TabOrder = 3
            Width = 75
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 3
            Top = 99
            DataBinding.DataField = 'arquivo_remessa'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 7
            Width = 194
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 200
            Top = 99
            DataBinding.DataField = 'arquivo_retorno'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 8
            Width = 191
          end
          object cxDBImageComboBox4: TcxDBImageComboBox
            Left = 81
            Top = 59
            DataBinding.DataField = 'resp_emissao'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            Properties.Items = <
              item
                Description = 'Emitido pelo cliente'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Emitido pelo banco'
                Value = 1
              end
              item
                Description = 'Banco reemite'
                Value = 2
              end
              item
                Description = 'Banco n'#227'o reemite'
                Value = 3
              end>
            TabOrder = 4
            Width = 184
          end
          object cxDBImageComboBox5: TcxDBImageComboBox
            Left = 340
            Top = 16
            DataBinding.DataField = 'aceite'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            Properties.Items = <
              item
                Description = 'Sim'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'N'#227'o'
                Value = 1
              end>
            TabOrder = 2
            Width = 51
          end
          object cxDBTextEdit23: TcxDBTextEdit
            Left = 3
            Top = 142
            DataBinding.DataField = 'cod_instr1'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 9
            Width = 81
          end
          object cxDBTextEdit24: TcxDBTextEdit
            Left = 88
            Top = 142
            DataBinding.DataField = 'cod_instr2'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 10
            Width = 81
          end
          object cxDBTextEdit25: TcxDBTextEdit
            Left = 268
            Top = 59
            DataBinding.DataField = 'especie'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 5
            Width = 61
          end
          object cxDBTextEdit26: TcxDBTextEdit
            Left = 3
            Top = 184
            DataBinding.DataField = 'local_pag'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 22
            Width = 388
          end
          object Label11: TcxLabel
            Left = 238
            Top = -1
            Caption = 'CARAC. T'#205'TULO'
            ParentFont = False
            Transparent = True
          end
          object Label15: TcxLabel
            Left = 3
            Top = 42
            Caption = 'LAYOUT REM.'
            ParentFont = False
            Transparent = True
          end
          object Label14: TcxLabel
            Left = 3
            Top = 83
            Caption = 'NOME DO ARQ. REMESSA'
            FocusControl = cxDBTextEdit12
            ParentFont = False
            Transparent = True
          end
          object Label16: TcxLabel
            Left = 200
            Top = 83
            Caption = 'NOME DO ARQ. RETORNO'
            FocusControl = cxDBTextEdit13
            ParentFont = False
            Transparent = True
          end
          object Label17: TcxLabel
            Left = 81
            Top = 42
            Caption = 'RESP. EMISS'#195'O'
            ParentFont = False
            Transparent = True
          end
          object Label25: TcxLabel
            Left = 340
            Top = 0
            Caption = 'ACEITE'
            ParentFont = False
            Transparent = True
          end
          object Label32: TcxLabel
            Left = 3
            Top = 126
            Caption = 'C'#211'D INSTR. 1'
            FocusControl = cxDBTextEdit23
            ParentFont = False
            Transparent = True
          end
          object Label33: TcxLabel
            Left = 88
            Top = 126
            Caption = 'C'#211'D INSTR. 2'
            FocusControl = cxDBTextEdit24
            ParentFont = False
            Transparent = True
          end
          object Label34: TcxLabel
            Left = 268
            Top = 42
            Caption = 'ESP'#201'CIE'
            FocusControl = cxDBTextEdit25
            ParentFont = False
            Transparent = True
          end
          object Label35: TcxLabel
            Left = 3
            Top = 168
            Caption = 'LOCAL DE PAGAMENTO'
            FocusControl = cxDBTextEdit26
            ParentFont = False
            Transparent = True
          end
          object cxLabel3: TcxLabel
            Left = -1
            Top = -1
            Caption = 'MODALIDADE COBRAN'#199'A'
            ParentFont = False
            Transparent = True
          end
          object cxDBImageComboBox6: TcxDBImageComboBox
            Left = 2
            Top = 16
            DataBinding.DataField = 'tipo_cobranca'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            Properties.Items = <
              item
                Description = 'Nenhum'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Banco do Brasil'
                Value = 1
              end
              item
                Description = 'Santander'
                Value = 2
              end
              item
                Description = 'Caixa Econ'#244'mica'
                Value = 3
              end
              item
                Description = 'Caixa Sicob'
                Value = 4
              end
              item
                Description = 'Bradesco'
                Value = 5
              end
              item
                Description = 'Itau'
                Value = 6
              end
              item
                Description = 'Banco Mercantil'
                Value = 7
              end
              item
                Description = 'Sicred'
                Value = 8
              end
              item
                Description = 'Bancoob'
                Value = 9
              end
              item
                Description = 'Banrisul'
                Value = 10
              end
              item
                Description = 'Banestes'
                Value = 11
              end
              item
                Description = 'HSBC'
                Value = 12
              end
              item
                Description = 'Banco do Nordeste'
                Value = 13
              end
              item
                Description = 'BRB'
                Value = 14
              end>
            TabOrder = 0
            Width = 232
          end
          object cxDBSpinEdit5: TcxDBTextEdit
            Left = 332
            Top = 59
            Hint = 'Valor do Noso N'#250'mero inicial.'
            DataBinding.DataField = 'nossonumero'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            Width = 59
          end
        end
        object CategoryPanel1: TCategoryPanel
          Top = -106
          Height = 30
          Caption = 'CEDENTE'
          Collapsed = True
          TabOrder = 3
          ExpandedHeight = 320
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 2
            Top = 19
            DataBinding.DataField = 'cedente_nome'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 0
            Width = 389
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 2
            Top = 58
            DataBinding.DataField = 'cedente_logradouro'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 1
            Width = 308
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 2
            Top = 98
            DataBinding.DataField = 'cedente_complemento'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 3
            Width = 185
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 189
            Top = 98
            DataBinding.DataField = 'cedente_bairro'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 4
            Width = 201
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 2
            Top = 138
            DataBinding.DataField = 'cedente_municipio'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 5
            Width = 360
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 365
            Top = 138
            DataBinding.DataField = 'cedente_uf'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 6
            Width = 25
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 2
            Top = 179
            DataBinding.DataField = 'cedente_cep'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 7
            Width = 121
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 129
            Top = 179
            DataBinding.DataField = 'cedente_cnpjcpf'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 8
            Width = 149
          end
          object cxDBImageComboBox1: TcxDBImageComboBox
            Left = 284
            Top = 179
            DataBinding.DataField = 'cedente_tipoinscr'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            Properties.Items = <
              item
                Description = 'PF'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'PJ'
                Value = 1
              end>
            TabOrder = 18
            Width = 74
          end
          object Label1: TcxLabel
            Left = 2
            Top = 3
            Caption = 'NOME COMPLETO'
            FocusControl = cxDBTextEdit1
            ParentFont = False
            Transparent = True
          end
          object Label2: TcxLabel
            Left = 2
            Top = 42
            Caption = 'LOGRADOURO'
            FocusControl = cxDBTextEdit2
            ParentFont = False
            Transparent = True
          end
          object Label3: TcxLabel
            Left = 2
            Top = 82
            Caption = 'COMPLEMENTO'
            FocusControl = cxDBTextEdit3
            ParentFont = False
            Transparent = True
          end
          object Label4: TcxLabel
            Left = 193
            Top = 82
            Caption = 'BAIRRO'
            FocusControl = cxDBTextEdit4
            ParentFont = False
            Transparent = True
          end
          object Label5: TcxLabel
            Left = 2
            Top = 122
            Caption = 'MUNIC'#205'PIO'
            FocusControl = cxDBTextEdit5
            ParentFont = False
            Transparent = True
          end
          object Label6: TcxLabel
            Left = 369
            Top = 122
            Caption = 'UF'
            FocusControl = cxDBTextEdit6
            ParentFont = False
            Transparent = True
          end
          object Label7: TcxLabel
            Left = 2
            Top = 163
            Caption = 'CEP'
            FocusControl = cxDBTextEdit7
            ParentFont = False
            Transparent = True
          end
          object Label8: TcxLabel
            Left = 129
            Top = 163
            Caption = 'CNPJ/CPF'
            FocusControl = cxDBTextEdit8
            ParentFont = False
            Transparent = True
          end
          object Label9: TcxLabel
            Left = 284
            Top = 163
            Caption = 'TIPO INSCR.'
            ParentFont = False
            Transparent = True
          end
          object Label10: TcxLabel
            Left = 4
            Top = 203
            Caption = 'C'#211'D. CEDENTE'
            FocusControl = cxDBTextEdit9
            ParentFont = False
            Transparent = True
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 4
            Top = 219
            DataBinding.DataField = 'codigo_cedente'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 21
            Width = 84
          end
          object Label12: TcxLabel
            Left = 91
            Top = 203
            Caption = 'CONV.'
            FocusControl = cxDBTextEdit10
            ParentFont = False
            Transparent = True
          end
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 91
            Top = 219
            DataBinding.DataField = 'convenio'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 23
            Width = 41
          end
          object Label13: TcxLabel
            Left = 134
            Top = 203
            Caption = 'MODAL.'
            FocusControl = cxDBTextEdit11
            ParentFont = False
            Transparent = True
          end
          object cxDBTextEdit11: TcxDBTextEdit
            Left = 135
            Top = 219
            DataBinding.DataField = 'modalidade'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 25
            Width = 65
          end
          object cxLabel2: TcxLabel
            Left = 201
            Top = 203
            Caption = 'CART.'
            FocusControl = cxDBTextEdit27
            ParentFont = False
            Transparent = True
          end
          object cxDBTextEdit27: TcxDBTextEdit
            Left = 202
            Top = 219
            DataBinding.DataField = 'carteira'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 26
            Width = 33
          end
          object cxDBTextEdit14: TcxDBTextEdit
            Left = 313
            Top = 58
            DataBinding.DataField = 'nmro_res'
            DataBinding.DataSource = DM.DSBoleto
            ParentFont = False
            TabOrder = 2
            Width = 78
          end
          object Label18: TcxLabel
            Left = 313
            Top = 42
            Caption = 'N'#186' RES.'
            FocusControl = cxDBTextEdit14
            ParentFont = False
            Transparent = True
          end
        end
      end
    end
  end
  inherited Edit1: TEdit
    TabOrder = 1
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 403
    Width = 430
    Height = 23
    Align = alBottom
    Color = 12189695
    ParentBackground = False
    TabOrder = 3
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'F5-NOVO   F6-EXCLUIR   F7-ALTERAR   F8-GRAVAR   F9-CANCELAR'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.WordWrap = True
      Width = 428
      AnchorX = 215
    end
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 0
    Width = 430
    Height = 24
    Align = alTop
    TabOrder = 0
  end
  inherited ini: TFormStorage
    Left = 16
    Top = 472
  end
  inherited DS1: TDataSource
    DataSet = DM.QBancos
    Left = 264
    Top = 480
  end
  inherited FR: TFormResizer
    Left = 192
    Top = 472
  end
  inherited EnterTab: TACBrEnterTab
    Left = 104
    Top = 472
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
