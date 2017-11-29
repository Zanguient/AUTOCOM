object frmMain: TfrmMain
  AlignWithMargins = True
  Left = 0
  Top = 0
  Margins.Left = 30
  Margins.Top = 30
  Margins.Right = 30
  Margins.Bottom = 30
  Caption = 'KSNGPC 2.0 - PARADIGMA T.I.  www.paradigmati.com.br'
  ClientHeight = 559
  ClientWidth = 782
  Color = clWindow
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxButton1: TcxButton
    Left = 520
    Top = 328
    Width = 75
    Height = 25
    Caption = 'cxButton1'
    TabOrder = 0
  end
  object PgMain: TcxPageControl
    Left = 0
    Top = 0
    Width = 782
    Height = 539
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = TabRel
    Properties.CustomButtons.Buttons = <>
    Properties.HotTrack = True
    Properties.NavigatorPosition = npRightBottom
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoNoArrows, pcoRedrawOnResize, pcoUsePageColorForTab]
    Properties.Rotate = True
    Properties.Style = 11
    Properties.TabHeight = 45
    Properties.TabPosition = tpRight
    Properties.TabSlants.Kind = skCutCorner
    TabSlants.Kind = skCutCorner
    OnPageChanging = PgMainPageChanging
    ClientRectBottom = 537
    ClientRectLeft = 2
    ClientRectRight = 603
    ClientRectTop = 2
    object TabInicio: TcxTabSheet
      Caption = 'IN'#205'CIO'
      ImageIndex = 7
      object Image1: TImage
        Left = 0
        Top = 40
        Width = 601
        Height = 362
        Align = alClient
        Center = True
        Transparent = True
        ExplicitLeft = 3
        ExplicitTop = -69
        ExplicitWidth = 603
        ExplicitHeight = 482
      end
      object Edit1: TEdit
        Left = 464
        Top = 216
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
        Visible = False
      end
      object cxGroupBox11: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alTop
        Alignment = alTopCenter
        Caption = 'KSNGPC 2.0'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 34
        Width = 595
      end
      object cxLabel5: TcxLabel
        Left = 0
        Top = 402
        Align = alBottom
        AutoSize = False
        Caption = 'PARADIGMA T.I - Inovando solu'#231#245'es   www.paradigmati.com.br'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.LabelStyle = cxlsRaised
        Transparent = True
        Height = 133
        Width = 601
        AnchorX = 301
        AnchorY = 469
      end
    end
    object TabCfg: TcxTabSheet
      Caption = 'CONFIGURA'#199#213'ES'
      ImageIndex = 1
      object cxGroupBox1: TcxGroupBox
        Left = 62
        Top = 60
        Alignment = alTopCenter
        Caption = 'Apar'#234'ncia'
        ParentFont = False
        TabOrder = 0
        Height = 146
        Width = 153
        object cmb2: TcxComboBox
          Left = 6
          Top = 76
          ParentFont = False
          Properties.Items.Strings = (
            '050'
            '120'
            '200'
            '220'
            '240'
            '255')
          Properties.EditMask = '999;0; '
          Properties.MaxLength = 0
          TabOrder = 0
          Text = '120'
          OnClick = cmb2Click
          OnExit = cmb2Exit
          Width = 46
        end
        object cxLabel14: TcxLabel
          Left = 3
          Top = 57
          Caption = 'Opacidade do Fundo'
          ParentFont = False
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 239
        Top = 60
        Caption = 'Conex'#227'o Banco de Dados'
        ParentFont = False
        TabOrder = 1
        Height = 182
        Width = 153
        object edHost: TcxTextEdit
          Left = 3
          Top = 33
          ParentFont = False
          TabOrder = 0
          Text = '127.0.0.1'
          Width = 147
        end
        object cxLabel1: TcxLabel
          Left = 6
          Top = 17
          Caption = 'Host'
          ParentFont = False
        end
        object edDB: TcxTextEdit
          Left = 3
          Top = 70
          ParentFont = False
          TabOrder = 2
          Text = 'autocom'
          Width = 147
        end
        object cxLabel2: TcxLabel
          Left = 6
          Top = 54
          Caption = 'Banco de Dados'
          ParentFont = False
        end
        object edUser: TcxTextEdit
          Left = 3
          Top = 108
          ParentFont = False
          TabOrder = 4
          Text = 'root'
          Width = 147
        end
        object cxLabel3: TcxLabel
          Left = 6
          Top = 92
          Caption = 'Usu'#225'rio'
          ParentFont = False
        end
        object edSenha: TcxTextEdit
          Left = 3
          Top = 145
          ParentFont = False
          Properties.EchoMode = eemPassword
          Properties.PasswordChar = '*'
          TabOrder = 6
          Width = 147
        end
        object cxLabel4: TcxLabel
          Left = 6
          Top = 129
          Caption = 'Senha'
          ParentFont = False
        end
      end
      object cxGroupBox4: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alTop
        Alignment = alTopCenter
        Caption = 'P'#193'GINA DE CONFIGURA'#199#195'O'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 34
        Width = 595
      end
      object btnGravarCfg: TcxButton
        Left = 271
        Top = 411
        Width = 75
        Height = 61
        Caption = 'GRAVAR'
        TabOrder = 3
        OnClick = btnGravarCfgClick
      end
      object cbDebug: TcxCheckBox
        Left = 64
        Top = 220
        Caption = 'Modo Debug'
        ParentFont = False
        TabOrder = 4
        Transparent = True
        Width = 121
      end
      object cbHomo: TcxCheckBox
        Left = 64
        Top = 236
        Caption = 'Modo Homologa'#231#227'o'
        ParentFont = False
        TabOrder = 5
        Transparent = True
        Width = 121
      end
      object cxGroupBox22: TcxGroupBox
        Left = 414
        Top = 60
        Alignment = alTopCenter
        Caption = 'Apar'#234'ncia'
        ParentFont = False
        TabOrder = 6
        Height = 182
        Width = 153
        object cxLabel73: TcxLabel
          Left = 3
          Top = 17
          Caption = 'Validade Receita MCE'
          ParentFont = False
        end
        object edValMCE: TcxTextEdit
          Left = 111
          Top = 35
          ParentFont = False
          TabOrder = 1
          Text = '30'
          Width = 39
        end
        object edValAM: TcxTextEdit
          Left = 111
          Top = 80
          ParentFont = False
          TabOrder = 2
          Text = '10'
          Width = 39
        end
        object cxLabel74: TcxLabel
          Left = 3
          Top = 62
          Caption = 'Validade Receita AM'
          ParentFont = False
        end
      end
      object cxButton11: TcxButton
        AlignWithMargins = True
        Left = 498
        Top = 482
        Width = 94
        Height = 27
        Margins.Top = 1
        Margins.Bottom = 1
        Caption = 'Manuten'#231#227'o'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = cxButton11Click
      end
      object rel_path: TcxTextEdit
        Left = 30
        Top = 303
        ParentFont = False
        Properties.MaxLength = 48
        Properties.PasswordChar = '*'
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -9
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 8
        Width = 537
      end
      object cxLabel76: TcxLabel
        Left = 32
        Top = 284
        Caption = 'Relat'#243'rios (informe - para local)'
        ParentFont = False
        Style.Edges = []
        Style.Shadow = False
        Properties.LabelStyle = cxlsLowered
        Transparent = True
      end
    end
    object TabCadEmpresa: TcxTabSheet
      Caption = 'CADASTRO EMPRESA'
      ImageIndex = 0
      OnShow = TabCadEmpresaShow
      object cxGroupBox5: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alTop
        Alignment = alTopCenter
        Caption = 'CADASTRO DA EMPRESA'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 34
        Width = 595
      end
      object cxGroupBox12: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 371
        Align = alBottom
        Alignment = alTopCenter
        Caption = 'DADOS DO FARMAC'#202'UTICO'
        ParentFont = False
        TabOrder = 31
        Height = 102
        Width = 595
        object DBEdit16: TcxDBTextEdit
          Left = 48
          Top = 33
          DataBinding.DataField = 'nome_resp'
          DataBinding.DataSource = DM.DSEmpresa
          ParentColor = True
          ParentFont = False
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 500
        end
        object DBEdit17: TcxDBTextEdit
          Left = 48
          Top = 71
          DataBinding.DataField = 'cpf_resp'
          DataBinding.DataSource = DM.DSEmpresa
          ParentColor = True
          ParentFont = False
          TabOrder = 1
          Width = 214
        end
        object DBEdit18: TcxDBTextEdit
          Left = 268
          Top = 71
          DataBinding.DataField = 'rg_resp'
          DataBinding.DataSource = DM.DSEmpresa
          ParentColor = True
          ParentFont = False
          TabOrder = 5
          Width = 280
        end
        object Label16: TcxLabel
          Left = 48
          Top = 17
          Caption = 'NOME COMPLETO'
          FocusControl = DBEdit16
          ParentFont = False
          Transparent = True
        end
        object Label17: TcxLabel
          Left = 48
          Top = 55
          Caption = 'CPF'
          FocusControl = DBEdit17
          ParentFont = False
          Transparent = True
        end
        object Label18: TcxLabel
          Left = 271
          Top = 55
          Caption = 'CRF'
          FocusControl = DBEdit18
          ParentFont = False
          Transparent = True
        end
      end
      object DBEdit1: TcxDBTextEdit
        Left = 51
        Top = 59
        DataBinding.DataField = 'razao_social'
        DataBinding.DataSource = DM.DSEmpresa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Width = 500
      end
      object DBEdit2: TcxDBTextEdit
        Left = 51
        Top = 97
        DataBinding.DataField = 'nome_fantasia'
        DataBinding.DataSource = DM.DSEmpresa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        Width = 500
      end
      object DBEdit3: TcxDBTextEdit
        Left = 51
        Top = 139
        DataBinding.DataField = 'cnpj'
        DataBinding.DataSource = DM.DSEmpresa
        ParentFont = False
        TabOrder = 3
        Width = 217
      end
      object DBEdit4: TcxDBTextEdit
        Left = 274
        Top = 139
        DataBinding.DataField = 'ie'
        DataBinding.DataSource = DM.DSEmpresa
        ParentFont = False
        TabOrder = 4
        Width = 217
      end
      object DBEdit6: TcxDBTextEdit
        Left = 51
        Top = 181
        DataBinding.DataField = 'logradouro'
        DataBinding.DataSource = DM.DSEmpresa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 5
        Width = 455
      end
      object DBEdit5: TcxDBTextEdit
        Left = 512
        Top = 181
        DataBinding.DataField = 'numero'
        DataBinding.DataSource = DM.DSEmpresa
        ParentFont = False
        TabOrder = 6
        Width = 39
      end
      object DBEdit7: TcxDBTextEdit
        Left = 51
        Top = 223
        DataBinding.DataField = 'complem'
        DataBinding.DataSource = DM.DSEmpresa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 7
        Width = 241
      end
      object DBEdit8: TcxDBTextEdit
        Left = 298
        Top = 223
        DataBinding.DataField = 'bairro'
        DataBinding.DataSource = DM.DSEmpresa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 8
        Width = 253
      end
      object DBEdit9: TcxDBTextEdit
        Left = 51
        Top = 264
        DataBinding.DataField = 'cidade'
        DataBinding.DataSource = DM.DSEmpresa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 9
        Width = 464
      end
      object DBEdit10: TcxDBTextEdit
        Left = 521
        Top = 264
        DataBinding.DataField = 'uf'
        DataBinding.DataSource = DM.DSEmpresa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 10
        Width = 30
      end
      object DBEdit11: TcxDBTextEdit
        Left = 51
        Top = 305
        DataBinding.DataField = 'cep'
        DataBinding.DataSource = DM.DSEmpresa
        ParentFont = False
        TabOrder = 11
        Width = 137
      end
      object DBEdit13: TcxDBTextEdit
        Left = 51
        Top = 346
        DataBinding.DataField = 'tel1'
        DataBinding.DataSource = DM.DSEmpresa
        ParentFont = False
        TabOrder = 13
        Width = 120
      end
      object DBEdit14: TcxDBTextEdit
        Left = 301
        Top = 346
        DataBinding.DataField = 'fax'
        DataBinding.DataSource = DM.DSEmpresa
        ParentFont = False
        TabOrder = 15
        Width = 120
      end
      object DBEdit12: TcxDBTextEdit
        Left = 175
        Top = 346
        DataBinding.DataField = 'tel2'
        DataBinding.DataSource = DM.DSEmpresa
        ParentFont = False
        TabOrder = 14
        Width = 120
      end
      object DBEdit15: TcxDBTextEdit
        Left = 192
        Top = 305
        DataBinding.DataField = 'email'
        DataBinding.DataSource = DM.DSEmpresa
        ParentFont = False
        TabOrder = 12
        Width = 359
      end
      object Label1: TcxLabel
        Left = 51
        Top = 41
        Caption = 'RAZ'#195'O SOCIAL'
        FocusControl = DBEdit1
        ParentFont = False
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 51
        Top = 81
        Caption = 'NOME FANTASIA'
        FocusControl = DBEdit2
        ParentFont = False
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 51
        Top = 121
        Caption = 'CNPJ'
        FocusControl = DBEdit3
        ParentFont = False
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 274
        Top = 121
        Caption = 'INSCRI'#199#195'O ESTADUAL'
        FocusControl = DBEdit4
        ParentFont = False
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 51
        Top = 165
        Caption = 'LOGRADOURO'
        FocusControl = DBEdit6
        ParentFont = False
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 512
        Top = 165
        Caption = 'N'#186
        FocusControl = DBEdit5
        ParentFont = False
        Transparent = True
      end
      object Label7: TcxLabel
        Left = 51
        Top = 207
        Caption = 'COMPLEMENTO'
        FocusControl = DBEdit7
        ParentFont = False
        Transparent = True
      end
      object Label8: TcxLabel
        Left = 298
        Top = 207
        Caption = 'BAIRRO'
        FocusControl = DBEdit8
        ParentFont = False
        Transparent = True
      end
      object Label9: TcxLabel
        Left = 51
        Top = 248
        Caption = 'CIDADE'
        FocusControl = DBEdit9
        ParentFont = False
        Transparent = True
      end
      object Label10: TcxLabel
        Left = 521
        Top = 248
        Caption = 'UF'
        FocusControl = DBEdit10
        ParentFont = False
        Transparent = True
      end
      object Label11: TcxLabel
        Left = 51
        Top = 289
        Caption = 'CEP'
        FocusControl = DBEdit11
        ParentFont = False
        Transparent = True
      end
      object Label13: TcxLabel
        Left = 51
        Top = 330
        Caption = 'TEL 1'
        FocusControl = DBEdit13
        ParentFont = False
        Transparent = True
      end
      object Label14: TcxLabel
        Left = 301
        Top = 330
        Caption = 'TEL 2'
        FocusControl = DBEdit14
        ParentFont = False
        Transparent = True
      end
      object Label12: TcxLabel
        Left = 175
        Top = 330
        Caption = 'FAX'
        FocusControl = DBEdit12
        ParentFont = False
        Transparent = True
      end
      object Label15: TcxLabel
        Left = 192
        Top = 289
        Caption = 'E-MAIL'
        FocusControl = DBEdit15
        ParentFont = False
        Transparent = True
      end
      object cxGroupBox13: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 479
        Align = alBottom
        Alignment = alTopCenter
        Caption = 'CONTROLE DE ALTERA'#199#213'ES'
        ParentFont = False
        StyleDisabled.Color = 14869218
        TabOrder = 32
        Height = 53
        Width = 595
        object cxDBNavigator1: TcxDBNavigator
          AlignWithMargins = True
          Left = 5
          Top = 21
          Width = 584
          Height = 27
          Buttons.CustomButtons = <>
          Buttons.First.Visible = False
          Buttons.PriorPage.Visible = False
          Buttons.Prior.Visible = False
          Buttons.Next.Visible = False
          Buttons.NextPage.Visible = False
          Buttons.Last.Visible = False
          Buttons.Insert.Hint = 'Novo Registro'
          Buttons.Insert.Visible = False
          Buttons.Delete.Hint = 'Excluir  Registro'
          Buttons.Delete.Visible = False
          Buttons.Edit.Hint = 'Alterar Registro'
          Buttons.Post.Hint = 'Gravar Registro'
          Buttons.Cancel.Hint = 'Cancelar Mudan'#231'as no Registro'
          Buttons.Refresh.Visible = False
          Buttons.SaveBookmark.Visible = False
          Buttons.GotoBookmark.Visible = False
          Buttons.Filter.Visible = False
          DataSource = DM.DSEmpresa
          Align = alClient
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
    end
    object TabInvent: TcxTabSheet
      Caption = 'INVENT'#193'RIO'
      ImageIndex = 2
      OnShow = TabInventShow
      object cxGroupBox6: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alTop
        Alignment = alTopCenter
        Caption = 'INVENT'#193'RIO'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 34
        Width = 595
      end
      object PgInvent: TcxPageControl
        Left = 0
        Top = 40
        Width = 601
        Height = 191
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = TabInventInicial
        Properties.CustomButtons.Buttons = <>
        OnPageChanging = PgInventPageChanging
        ClientRectBottom = 191
        ClientRectRight = 601
        ClientRectTop = 26
        object TabInventAtual: TcxTabSheet
          Caption = 'ATUAL'
          ImageIndex = 0
          OnShow = TabInventAtualShow
          object GrdInventAtual: TcxGrid
            Left = 0
            Top = 26
            Width = 601
            Height = 139
            Align = alClient
            TabOrder = 0
            LevelTabs.Slants.Kind = skCutCorner
            LevelTabs.Style = 6
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Coffee'
            object TbvInventAtual: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.Visible = fvNever
              OnCustomDrawCell = TbvInventAtualCustomDrawCell
              DataController.DataModeController.GridMode = True
              DataController.DataSource = DM.DSInventAtual
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
              object TbvInventAtualid: TcxGridDBColumn
                Caption = 'ID'
                DataBinding.FieldName = 'id'
                HeaderAlignmentHorz = taCenter
                Width = 33
              end
              object TbvInventAtualproduto: TcxGridDBColumn
                Caption = 'C'#211'D.'
                DataBinding.FieldName = 'ean'
                HeaderAlignmentHorz = taCenter
                Width = 43
              end
              object TbvInventAtualqtd: TcxGridDBColumn
                Caption = 'QTD'
                DataBinding.FieldName = 'qtd'
                HeaderAlignmentHorz = taCenter
                Width = 31
              end
              object TbvInventAtualdescricao: TcxGridDBColumn
                Caption = 'DESCRI'#199#195'O DO MEDICAMENTO'
                DataBinding.FieldName = 'nome'
                HeaderAlignmentHorz = taCenter
                Width = 219
              end
              object TbvInventAtualregistro_ms: TcxGridDBColumn
                Caption = 'REGISTRO MS'
                DataBinding.FieldName = 'registro_ms'
                HeaderAlignmentHorz = taCenter
                Width = 105
              end
              object TbvInventAtuallote: TcxGridDBColumn
                Caption = 'LOTE'
                DataBinding.FieldName = 'lote'
                Width = 66
              end
              object TbvInventAtualclasse_terap: TcxGridDBColumn
                DataBinding.FieldName = 'classe_terap'
                Visible = False
              end
            end
            object LvInventAtual: TcxGridLevel
              GridView = TbvInventAtual
            end
          end
          object cxGroupBox15: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Alignment = alTopCenter
            ParentFont = False
            TabOrder = 1
            Height = 26
            Width = 601
            object Shape4: TShape
              Left = 56
              Top = 3
              Width = 20
              Height = 19
              Brush.Color = 8820202
              Shape = stCircle
            end
            object Shape5: TShape
              Left = 146
              Top = 3
              Width = 20
              Height = 19
              Brush.Color = 16765650
              Shape = stCircle
            end
            object Shape6: TShape
              Left = 287
              Top = 3
              Width = 20
              Height = 19
              Brush.Color = 8976267
              Shape = stCircle
            end
            object cxLabel10: TcxLabel
              Left = 6
              Top = 5
              Caption = 'Legenda:'
              FocusControl = DBEdit3
              ParentFont = False
              Transparent = True
            end
            object cxLabel11: TcxLabel
              Left = 80
              Top = 5
              Caption = 'Erro'
              FocusControl = DBEdit3
              ParentFont = False
              Transparent = True
            end
            object cxLabel12: TcxLabel
              Left = 170
              Top = 5
              Caption = 'Antimicrobiano'
              FocusControl = DBEdit3
              ParentFont = False
              Transparent = True
            end
            object cxLabel13: TcxLabel
              Left = 311
              Top = 5
              Caption = 'Controle especial'
              FocusControl = DBEdit3
              ParentFont = False
              Transparent = True
            end
            object cxButton10: TcxButton
              AlignWithMargins = True
              Left = 519
              Top = 3
              Width = 75
              Height = 22
              Hint = 'Gerar e enviar o arquivo XML do invent'#225'rio atual.'
              Margins.Top = 1
              Margins.Bottom = 1
              Caption = 'Enviar'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = cxButton10Click
            end
          end
        end
        object TabInventInicial: TcxTabSheet
          Caption = 'INICIAL'
          ImageIndex = 1
          OnShow = TabInventInicialShow
          object GrdInventInicial: TcxGrid
            Left = 0
            Top = 26
            Width = 601
            Height = 139
            Align = alClient
            TabOrder = 0
            LevelTabs.Slants.Kind = skCutCorner
            LevelTabs.Style = 6
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Coffee'
            object TbvInventInicial: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.Visible = fvNever
              OnCustomDrawCell = TbvInventInicialCustomDrawCell
              DataController.DataModeController.GridMode = True
              DataController.DataSource = DM.DSInventInicial
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
              object TbvInventInicialid: TcxGridDBColumn
                Caption = 'ID'
                DataBinding.FieldName = 'id'
                HeaderAlignmentHorz = taCenter
                Width = 40
              end
              object TbvInventInicialproduto: TcxGridDBColumn
                Caption = 'C'#211'D'
                DataBinding.FieldName = 'produto'
                HeaderAlignmentHorz = taCenter
                Width = 50
              end
              object TbvInventInicialqtd: TcxGridDBColumn
                Caption = 'QTD'
                DataBinding.FieldName = 'qtd'
                HeaderAlignmentHorz = taCenter
                Width = 30
              end
              object TbvInventInicialdescricao: TcxGridDBColumn
                Caption = 'DESCRI'#199#195'O DO MEDICAMENTO'
                DataBinding.FieldName = 'descricao'
                HeaderAlignmentHorz = taCenter
                Width = 266
              end
              object TbvInventInicialregistro_ms: TcxGridDBColumn
                Caption = 'REGISTRO MS'
                DataBinding.FieldName = 'registro_ms'
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object TbvInventIniciallote: TcxGridDBColumn
                Caption = 'LOTE'
                DataBinding.FieldName = 'lote'
                HeaderAlignmentHorz = taCenter
                Width = 74
              end
              object TbvInventInicialclasse_terap: TcxGridDBColumn
                DataBinding.FieldName = 'classe_terap'
                Visible = False
                HeaderAlignmentHorz = taCenter
              end
            end
            object LvInventInicial: TcxGridLevel
              GridView = TbvInventInicial
            end
          end
          object cxGroupBox14: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Alignment = alTopCenter
            ParentFont = False
            TabOrder = 1
            Height = 26
            Width = 601
            object Shape1: TShape
              Left = 56
              Top = 3
              Width = 20
              Height = 19
              Brush.Color = 8820202
              Shape = stCircle
            end
            object Shape2: TShape
              Left = 146
              Top = 3
              Width = 20
              Height = 19
              Brush.Color = 16765650
              Shape = stCircle
            end
            object Shape3: TShape
              Left = 287
              Top = 3
              Width = 20
              Height = 19
              Brush.Color = 8976267
              Shape = stCircle
            end
            object cxLabel6: TcxLabel
              Left = 6
              Top = 5
              Caption = 'Legenda:'
              FocusControl = DBEdit3
              ParentFont = False
              Transparent = True
            end
            object cxLabel7: TcxLabel
              Left = 80
              Top = 5
              Caption = 'Erro'
              FocusControl = DBEdit3
              ParentFont = False
              Transparent = True
            end
            object cxLabel8: TcxLabel
              Left = 170
              Top = 5
              Caption = 'Antimicrobiano'
              FocusControl = DBEdit3
              ParentFont = False
              Transparent = True
            end
            object cxLabel9: TcxLabel
              Left = 311
              Top = 5
              Caption = 'Controle especial'
              FocusControl = DBEdit3
              ParentFont = False
              Transparent = True
            end
            object cxDBLabel1: TcxDBLabel
              Left = 472
              Top = 6
              DataBinding.DataField = 'data'
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Transparent = True
              Height = 17
              Width = 121
              AnchorX = 533
            end
          end
        end
      end
      object PnlInvent: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 234
        Align = alBottom
        Alignment = alTopCenter
        Caption = ' ENTRADA DE MEDICAMENTO AO INVENT'#193'RIO'
        ParentFont = False
        TabOrder = 2
        Visible = False
        Height = 215
        Width = 595
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 5
          Top = 183
          DataBinding.DataField = 'qtd'
          DataBinding.DataSource = DM.DSInventInicial
          ParentFont = False
          TabOrder = 1
          Width = 51
        end
        object cxLabel15: TcxLabel
          Left = 5
          Top = 165
          Caption = 'Quant.'
          FocusControl = cxDBTextEdit1
          ParentFont = False
          Transparent = True
        end
        object Grd4: TcxGrid
          Left = 2
          Top = 18
          Width = 591
          Height = 112
          Align = alTop
          TabOrder = 9
          TabStop = False
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Valentine'
          object Tbv4: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            DataController.DataModeController.GridMode = True
            DataController.DataSource = DM.DSProduto
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.CancelOnExit = False
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
            object Tbv4id: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 30
            end
            object Tbv4ean: TcxGridDBColumn
              Caption = 'C'#211'DIGO GTIN'
              DataBinding.FieldName = 'ean'
              HeaderAlignmentHorz = taCenter
              Width = 100
              OnHeaderClick = Tbv4eanHeaderClick
            end
            object Tbv4nome: TcxGridDBColumn
              Tag = 1
              Caption = 'DESCRI'#199#195'O DO MEDICAMENTO'
              DataBinding.FieldName = 'nome'
              HeaderAlignmentHorz = taCenter
              Width = 170
              OnHeaderClick = Tbv4eanHeaderClick
            end
            object Tbv4registroms: TcxGridDBColumn
              Caption = 'REGISTRO MS'
              DataBinding.FieldName = 'medicam_registroms'
              HeaderAlignmentHorz = taCenter
              Width = 100
              OnHeaderClick = Tbv4eanHeaderClick
            end
            object Tbv4PORTARIA: TcxGridDBColumn
              Caption = 'PORT.'
              DataBinding.FieldName = 'medicam_portaria'
              HeaderAlignmentHorz = taCenter
            end
            object Tbv4apresentacao: TcxGridDBColumn
              Caption = 'APRESENT.'
              DataBinding.FieldName = 'medicam_apresentacao'
              HeaderAlignmentHorz = taCenter
              Width = 77
            end
            object Tbv4NOMELAB: TcxGridDBColumn
              Caption = 'LABORAT'#211'RIO'
              DataBinding.FieldName = 'medicam_nomelab'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
          end
          object Lv4: TcxGridLevel
            GridView = Tbv4
          end
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 59
          Top = 183
          DataBinding.DataField = 'lote'
          DataBinding.DataSource = DM.DSInventInicial
          ParentFont = False
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 85
        end
        object cxLabel16: TcxLabel
          Left = 59
          Top = 165
          Caption = 'Lote'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 147
          Top = 183
          DataBinding.DataField = 'vencimento'
          DataBinding.DataSource = DM.DSInventInicial
          ParentFont = False
          TabOrder = 3
          Width = 93
        end
        object cxLabel17: TcxLabel
          Left = 148
          Top = 165
          Caption = 'Vencimento'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 245
          Top = 183
          DataBinding.DataField = 'registro_ms'
          DataBinding.DataSource = DM.DSInventInicial
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 13
          TabOrder = 4
          Width = 110
        end
        object cxLabel18: TcxLabel
          Left = 244
          Top = 165
          Caption = 'Registro MS'
          FocusControl = cxDBTextEdit3
          ParentFont = False
          Transparent = True
        end
        object cxLabel19: TcxLabel
          Left = 361
          Top = 165
          Caption = 'Classe Terap'#234'utica'
          FocusControl = cxDBTextEdit3
          ParentFont = False
          Transparent = True
        end
        object cxLabel20: TcxLabel
          Left = 483
          Top = 165
          Caption = 'Portaria'
          FocusControl = cxDBTextEdit3
          ParentFont = False
          Transparent = True
        end
        object cxLabel21: TcxLabel
          Left = 538
          Top = 165
          Caption = 'Unidade'
          FocusControl = cxDBTextEdit3
          ParentFont = False
          Transparent = True
        end
        object edPesq: TcxTextEdit
          Left = 170
          Top = 135
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.OnChange = edPesqPropertiesChange
          TabOrder = 0
          OnKeyDown = edPesqKeyDown
          Width = 425
        end
        object lblPesq: TcxLabel
          Left = 5
          Top = 137
          Caption = 'Pesquisar por'
          FocusControl = cxDBTextEdit1
          ParentFont = False
          Transparent = True
        end
        object cmbInventPortaria: TcxComboBox
          Left = 481
          Top = 183
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.Items.Strings = (
            'A1'
            'A2'
            'A3'
            'B1'
            'B2'
            'C1'
            'C2'
            'C3'
            'C4'
            'C5'
            'D1'
            'D2'
            'F1'
            'F2'
            'F3'
            'F4'
            'AM')
          TabOrder = 6
          Width = 51
        end
        object cmbInventUnid: TcxComboBox
          Left = 538
          Top = 183
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.Items.Strings = (
            '1 - Caixa'
            '2 - Frasco')
          TabOrder = 7
          Width = 57
        end
        object cmbInventClasse: TcxComboBox
          Left = 358
          Top = 183
          ParentFont = False
          Properties.Items.Strings = (
            '1 - Antimicrobiano'
            '2 - Contr Especial')
          TabOrder = 5
          Text = 'cmbInventClasse'
          OnClick = cmbInventClasseClick
          Width = 121
        end
      end
      object gbInvent: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 455
        Align = alBottom
        Alignment = alTopCenter
        Caption = 'CONTROLE DE ALTERA'#199#213'ES'
        ParentFont = False
        StyleDisabled.Color = 14869218
        TabOrder = 3
        Visible = False
        Height = 77
        Width = 595
        object cxDBNavigator2: TcxDBNavigator
          AlignWithMargins = True
          Left = 5
          Top = 21
          Width = 582
          Height = 23
          Buttons.OnButtonClick = cxDBNavigator2ButtonsButtonClick
          Buttons.ConfirmDelete = False
          Buttons.CustomButtons = <>
          Buttons.First.Visible = False
          Buttons.PriorPage.Visible = False
          Buttons.Prior.Visible = False
          Buttons.Next.Visible = False
          Buttons.NextPage.Visible = False
          Buttons.Last.Visible = False
          Buttons.Insert.Hint = 'Novo Registro'
          Buttons.Insert.Visible = True
          Buttons.Delete.Hint = 'Excluir  Registro'
          Buttons.Delete.Visible = True
          Buttons.Edit.Hint = 'Alterar Registro'
          Buttons.Post.Hint = 'Gravar Registro'
          Buttons.Cancel.Hint = 'Cancelar Mudan'#231'as no Registro'
          Buttons.Refresh.Visible = False
          Buttons.SaveBookmark.Visible = False
          Buttons.GotoBookmark.Visible = False
          Buttons.Filter.Visible = False
          DataSource = DM.DSInventInicial
          Align = alTop
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object btnInventExcluir: TcxButton
          AlignWithMargins = True
          Left = 515
          Top = 48
          Width = 75
          Height = 26
          Hint = 'Apagar todo o invent'#225'rio e movimenta'#231#245'es. (suporte198)'
          Margins.Top = 1
          Margins.Bottom = 1
          Align = alRight
          Caption = 'Excluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnInventExcluirClick
        end
        object btnInventConcluir: TcxButton
          AlignWithMargins = True
          Left = 272
          Top = 48
          Width = 75
          Height = 26
          Hint = 
            'Considerar o invent'#225'rio conclu'#237'do. Gerar o XML e impedir novas a' +
            'ltera'#231#245'es.'
          Margins.Top = 1
          Margins.Bottom = 1
          Align = alRight
          Caption = 'Concluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnInventConcluirClick
        end
        object btnInventEnviar: TcxButton
          AlignWithMargins = True
          Left = 353
          Top = 48
          Width = 75
          Height = 26
          Hint = 'Enviar o arquivo XML.'
          Margins.Top = 1
          Margins.Bottom = 1
          Align = alRight
          Caption = 'Enviar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnInventEnviarClick
        end
        object btnInventValidar: TcxButton
          AlignWithMargins = True
          Left = 434
          Top = 48
          Width = 75
          Height = 26
          Hint = 'Informar ao sistema que o XML foi aceito e validado.'
          Margins.Top = 1
          Margins.Bottom = 1
          Align = alRight
          Caption = 'Validar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnInventValidarClick
        end
        object btnInventVoltar: TcxButton
          AlignWithMargins = True
          Left = 191
          Top = 48
          Width = 75
          Height = 26
          Hint = 'Voltar o invent'#225'rio ao estado anterior.'
          Margins.Top = 1
          Margins.Bottom = 1
          Align = alRight
          Caption = 'Mudar Estado'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = btnInventVoltarClick
        end
        object lblInventStatus: TcxLabel
          AlignWithMargins = True
          Left = 5
          Top = 50
          Align = alLeft
          AutoSize = False
          Caption = 'Invent'#225'rio vazio'
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Style.Color = 8454143
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.WordWrap = True
          Height = 22
          Width = 182
          AnchorX = 96
          AnchorY = 61
        end
      end
      object Panel11: TPanel
        Left = 7
        Top = 404
        Width = 185
        Height = 129
        BevelOuter = bvLowered
        BevelWidth = 4
        TabOrder = 4
        Visible = False
        object cxLabel75: TcxLabel
          Left = 4
          Top = 4
          Align = alTop
          Caption = 'Escolha o novo status'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Transparent = True
          AnchorX = 93
        end
        object cxButton9: TcxButton
          AlignWithMargins = True
          Left = 6
          Top = 80
          Width = 82
          Height = 41
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Cancelar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = cxButton9Click
        end
        object btnAlterarStatusInvent: TcxButton
          AlignWithMargins = True
          Left = 95
          Top = 80
          Width = 82
          Height = 41
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Alterar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnAlterarStatusInventClick
        end
        object cmbStatusInvent: TcxComboBox
          Left = 32
          Top = 29
          ParentFont = False
          Properties.Items.Strings = (
            'PROCESSANDO'
            'CONCLUIDO'
            'ENVIADO'
            'ACEITO')
          TabOrder = 0
          OnClick = cmbStatusInventClick
          Width = 121
        end
      end
    end
    object TabEntrada: TcxTabSheet
      Caption = 'ENTRADA MEDICAMENTO'
      ImageIndex = 3
      OnShow = TabEntradaShow
      object cxGroupBox7: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alTop
        Alignment = alTopCenter
        Caption = 'ENTRADA DE MEDICAMENTOS'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 34
        Width = 595
      end
      object cxGroupBox16: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 43
        Align = alTop
        Alignment = alTopCenter
        Caption = 'DADOS DE ENTRADA'
        ParentFont = False
        StyleDisabled.Color = 14869218
        TabOrder = 1
        Height = 221
        Width = 595
        object edNF: TcxTextEdit
          Left = 4
          Top = 36
          ParentFont = False
          TabOrder = 0
          Width = 94
        end
        object cxLabel22: TcxLabel
          Left = 7
          Top = 19
          Caption = 'N'#186' da NF'
          ParentFont = False
        end
        object DtEm: TcxDateEdit
          Left = 102
          Top = 36
          ParentFont = False
          TabOrder = 1
          OnEnter = DtEmEnter
          Width = 98
        end
        object DtEnt: TcxDateEdit
          Left = 205
          Top = 36
          ParentFont = False
          TabOrder = 2
          Width = 98
        end
        object cxLabel23: TcxLabel
          Left = 102
          Top = 19
          Caption = 'Data de emiss'#227'o'
          ParentFont = False
        end
        object cxLabel24: TcxLabel
          Left = 204
          Top = 19
          Caption = 'Data de entrada'
          ParentFont = False
        end
        object GdEntrada: TcxGrid
          Left = 2
          Top = 66
          Width = 591
          Height = 153
          Align = alBottom
          TabOrder = 7
          TabStop = False
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Coffee'
          object TbvEntrada: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            OnCellClick = TbvEntradaCellClick
            DataController.DataModeController.GridMode = True
            DataController.DataSource = DM.DSEntrada
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.CancelOnExit = False
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
            object TbvEntradaean: TcxGridDBColumn
              Caption = 'C'#211'D GTIN'
              DataBinding.FieldName = 'ean'
              HeaderAlignmentHorz = taCenter
              Width = 69
            end
            object TbvEntradanome: TcxGridDBColumn
              Caption = 'MEDICAMENTO'
              DataBinding.FieldName = 'nome'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object TbvEntradasngpc: TcxGridDBColumn
              Caption = 'QTD'
              DataBinding.FieldName = 'sngpc'
              HeaderAlignmentHorz = taCenter
              Width = 50
            end
            object TbvEntradadt_entrada: TcxGridDBColumn
              Caption = 'DT ENTR.'
              DataBinding.FieldName = 'dt_entrada'
              HeaderAlignmentHorz = taCenter
            end
            object TbvEntradadt_vencim: TcxGridDBColumn
              Caption = 'VENCIM.'
              DataBinding.FieldName = 'dt_vencim'
              HeaderAlignmentHorz = taCenter
            end
            object TbvEntradalote: TcxGridDBColumn
              Caption = 'LOTE'
              DataBinding.FieldName = 'lote'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object TbvEntradaregistro_ms: TcxGridDBColumn
              Caption = 'REGISTRO MS'
              DataBinding.FieldName = 'registro_ms'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
          end
          object LvEntrada: TcxGridLevel
            GridView = TbvEntrada
          end
        end
        object edCNPJEntr: TcxTextEdit
          Left = 306
          Top = 36
          ParentFont = False
          TabOrder = 3
          Width = 160
        end
        object cxLabel31: TcxLabel
          Left = 306
          Top = 19
          Caption = 'CNPJ do fornecedor'
          ParentFont = False
        end
        object cxButton2: TcxButton
          Left = 497
          Top = 32
          Width = 75
          Height = 25
          Caption = 'Validar NF'
          TabOrder = 9
          OnClick = cxButton2Click
        end
      end
      object GpTabMedic: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 266
        Align = alBottom
        Alignment = alTopCenter
        Caption = 'Tabela de Medicamentos'
        ParentFont = False
        StyleDisabled.Color = 14869218
        TabOrder = 2
        Visible = False
        Height = 266
        Width = 595
        object lblPesqEntr: TcxLabel
          Left = 5
          Top = 166
          Caption = 'Pesquisar por'
          FocusControl = cxDBTextEdit1
          ParentFont = False
          Transparent = True
        end
        object edPesqEntr: TcxTextEdit
          Left = 170
          Top = 164
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.OnChange = edPesqEntrPropertiesChange
          TabOrder = 0
          OnKeyDown = edPesqKeyDown
          Width = 425
        end
        object cmbClasseEntr: TcxComboBox
          Left = 3
          Top = 207
          ParentFont = False
          Properties.Items.Strings = (
            '1 - Antimicrobiano'
            '2 - Contr Especial')
          TabOrder = 4
          OnClick = cmbInventClasseClick
          Width = 121
        end
        object cxLabel25: TcxLabel
          Left = 4
          Top = 189
          Caption = 'Classe Terap'#234'utica'
          FocusControl = cxDBTextEdit3
          ParentFont = False
          Transparent = True
        end
        object cmbPortariaEntr: TcxComboBox
          Left = 127
          Top = 207
          ParentFont = False
          Properties.Items.Strings = (
            'A1'
            'A2'
            'A3'
            'B1'
            'B2'
            'C1'
            'C2'
            'C3'
            'C4'
            'C5'
            'D1'
            'D2'
            'F1'
            'F2'
            'F3'
            'F4'
            'AM')
          TabOrder = 6
          Width = 51
        end
        object cxLabel26: TcxLabel
          Left = 129
          Top = 189
          Caption = 'Portaria'
          FocusControl = cxDBTextEdit3
          ParentFont = False
          Transparent = True
        end
        object cmbUnidEntr: TcxComboBox
          Left = 181
          Top = 207
          ParentFont = False
          Properties.Items.Strings = (
            '1 - Caixa'
            '2 - Frasco')
          TabOrder = 11
          Width = 57
        end
        object cxLabel27: TcxLabel
          Left = 181
          Top = 189
          Caption = 'Unidade'
          FocusControl = cxDBTextEdit3
          ParentFont = False
          Transparent = True
        end
        object cxLabel28: TcxLabel
          Left = 241
          Top = 189
          Caption = 'Quant.'
          FocusControl = edQtdEntr
          ParentFont = False
          Transparent = True
        end
        object cxLabel29: TcxLabel
          Left = 295
          Top = 189
          Caption = 'Lote'
          FocusControl = edLoteEntr
          ParentFont = False
          Transparent = True
        end
        object cxLabel30: TcxLabel
          Left = 382
          Top = 189
          Caption = 'Registro MS'
          FocusControl = edRegMSEntr
          ParentFont = False
          Transparent = True
        end
        object btnExcluirEntr: TcxButton
          Left = 514
          Top = 233
          Width = 75
          Height = 25
          Caption = 'Excluir'
          Enabled = False
          TabOrder = 2
          OnClick = btnExcluirEntrClick
        end
        object btnRegistrarEntr: TcxButton
          Left = 435
          Top = 233
          Width = 75
          Height = 25
          Caption = 'Registrar'
          TabOrder = 16
          OnClick = btnRegistrarEntrClick
        end
        object edLoteEntr: TcxTextEdit
          Left = 295
          Top = 207
          ParentFont = False
          Properties.CharCase = ecUpperCase
          TabOrder = 13
          Width = 85
        end
        object edRegMSEntr: TcxTextEdit
          Left = 383
          Top = 207
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 13
          TabOrder = 14
          Width = 110
        end
        object edQtdEntr: TcxCurrencyEdit
          Left = 241
          Top = 207
          ParentFont = False
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0'
          TabOrder = 12
          Width = 51
        end
        object GrdTabProd: TcxGrid
          Left = 2
          Top = 18
          Width = 591
          Height = 141
          Align = alTop
          TabOrder = 17
          TabStop = False
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Valentine'
          object tbvTabProd: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            DataController.DataModeController.GridMode = True
            DataController.DataSource = DM.DSProduto
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.CancelOnExit = False
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
            object tbvTabProdid: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 23
            end
            object tbvTabProdean: TcxGridDBColumn
              Caption = 'C'#211'D. GTIN'
              DataBinding.FieldName = 'cod_gtin'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object tbvTabProdnome: TcxGridDBColumn
              Tag = 1
              Caption = 'MEDICAMENTO'
              DataBinding.FieldName = 'nome'
              HeaderAlignmentHorz = taCenter
              Width = 193
            end
            object tbvTabProdregistroms: TcxGridDBColumn
              Caption = 'REGISTRO M.S.'
              DataBinding.FieldName = 'medicam_registroms'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object tbvTabProdPORTARIA: TcxGridDBColumn
              Caption = 'PORT.'
              DataBinding.FieldName = 'medicam_portaria'
              HeaderAlignmentHorz = taCenter
              Width = 34
            end
            object tbvTabProdapresentacao: TcxGridDBColumn
              Caption = 'APRESENTA'#199#195'O'
              DataBinding.FieldName = 'medicam_apresentacao'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object tbvTabProdNOMELAB: TcxGridDBColumn
              Caption = 'LABORAT'#211'RIO'
              DataBinding.FieldName = 'medicam_nomelab'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
          end
          object LvTabProd: TcxGridLevel
            GridView = tbvTabProd
          end
        end
        object cxLabel32: TcxLabel
          Left = 497
          Top = 189
          Caption = 'Vencimento'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object dtVencimEntr: TcxDateEdit
          Left = 496
          Top = 207
          ParentFont = False
          TabOrder = 15
          Width = 93
        end
      end
    end
    object TabSaida: TcxTabSheet
      Caption = 'SA'#205'DA MEDICAMENTO'
      ImageIndex = 4
      OnShow = TabSaidaShow
      object cxGroupBox8: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alTop
        Alignment = alTopCenter
        Caption = 'SA'#205'DA DE MEDICAMENTOS'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 34
        Width = 595
      end
      object cxGroupBox3: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 43
        Align = alClient
        Alignment = alTopCenter
        Caption = 'DADOS DA RECEITA'
        ParentFont = False
        TabOrder = 1
        Height = 489
        Width = 595
        object Bevel2: TBevel
          Left = 336
          Top = 371
          Width = 659
          Height = 161
          Shape = bsFrame
        end
        object Bevel1: TBevel
          Left = -26
          Top = 152
          Width = 1000
          Height = 161
          Shape = bsFrame
          Style = bsRaised
        end
        object lblPaciente: TLabel
          Left = 213
          Top = 323
          Width = 208
          Height = 13
          Caption = 'Paciente n'#227'o '#233' informado neste caso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object cmbTipoReceita: TcxComboBox
          Left = 6
          Top = 39
          ParentFont = False
          Properties.Items.Strings = (
            '1 - Receita de Controle Especial em 2 vias (Receita Branca)'
            '2 - Notifica'#231#227'o de Receita B (Notifica'#231#227'o Azul)'
            '3 - Notifica'#231#227'o de Receita Especial (Notifica'#231#227'o Branca)'
            '4 - Notifica'#231#227'o de Receita A (Notifica'#231#227'o Amarela)'
            '5 - Receita Antimicrobiano em 2 vias')
          TabOrder = 0
          OnClick = cmbTipoReceitaClick
          Width = 477
        end
        object cxLabel33: TcxLabel
          Left = 6
          Top = 21
          Caption = 'Tipo de Receita'
          FocusControl = cxDBTextEdit3
          ParentFont = False
          Transparent = True
        end
        object cxLabel34: TcxLabel
          Left = 487
          Top = 21
          Caption = 'N'#186' Notifica'#231#227'o'
          FocusControl = edNmroReceita
          ParentFont = False
          Transparent = True
        end
        object edNmroReceita: TcxTextEdit
          Left = 487
          Top = 39
          ParentFont = False
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 102
        end
        object cxLabel35: TcxLabel
          Left = 6
          Top = 61
          Caption = 'Data da Prescr.'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object cxLabel36: TcxLabel
          Left = 104
          Top = 61
          Caption = 'Data de Sa'#237'da'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object edNmroProf: TcxTextEdit
          Left = 200
          Top = 79
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.LookupItemsSorted = True
          TabOrder = 8
          OnEnter = edNmroProfEnter
          Width = 198
        end
        object cxLabel37: TcxLabel
          Left = 200
          Top = 61
          Caption = 'N'#186' Reg. Profissional'
          FocusControl = edNmroProf
          ParentFont = False
          Transparent = True
        end
        object cxLabel38: TcxLabel
          Left = 402
          Top = 61
          Caption = 'UF'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object cmbUFProf: TcxComboBox
          Left = 402
          Top = 79
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.Items.Strings = (
            'AC'
            'AL'
            'AM'
            'AP'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MG'
            'MS'
            'MT'
            'PA'
            'PB'
            'PE'
            'PI'
            'PR'
            'RJ'
            'RN'
            'RO'
            'RR'
            'RS'
            'SC'
            'SE'
            'SP'
            'TO')
          TabOrder = 11
          OnClick = cmbInventClasseClick
          OnEnter = cmbUFProfEnter
          Width = 50
        end
        object cmbConselho: TcxComboBox
          Left = 456
          Top = 79
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.Items.Strings = (
            'CRM'
            'CRMV'
            'CRO'
            'COREN')
          TabOrder = 12
          OnClick = cmbInventClasseClick
          Width = 133
        end
        object cxLabel39: TcxLabel
          Left = 456
          Top = 61
          Caption = 'Conselho Profissional'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object edNomePrescr: TcxTextEdit
          Left = 6
          Top = 120
          ParentFont = False
          Properties.CharCase = ecUpperCase
          TabOrder = 14
          Width = 583
        end
        object cxLabel40: TcxLabel
          Left = 6
          Top = 102
          Caption = 'Nome completo do prescritor'
          FocusControl = edNomePrescr
          ParentFont = False
          Transparent = True
        end
        object edNomeComprador: TcxTextEdit
          Left = 6
          Top = 190
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.OnChange = edNomeCompradorPropertiesChange
          TabOrder = 16
          Width = 583
        end
        object cxLabel41: TcxLabel
          Left = 6
          Top = 172
          Caption = 'Nome completo do comprador (Digite ? para pesquisar)'
          FocusControl = edNomeComprador
          ParentFont = False
          Transparent = True
        end
        object cmbDocComprador: TcxComboBox
          Left = 6
          Top = 231
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.Items.Strings = (
            '1- CARTEIRA DE REGISTRO PROFISSIONAL'
            '2- CARTEIRA DE IDENTIDADE'
            '4- PEDIDO DE AUTORIZA'#199#195'O DE TRABALHO'
            '5- CERTID'#195'O DE NASCIMENTO'
            '6- CERTID'#195'O DE CASAMENTO'
            '7- CERTIFICADO DE RESERVISTA'
            '8- CARTA PATENTE'
            '10- CERTIFICADO DE DISPENSA DE INCORPORA'#199#195'O'
            '11- CARTEIRA DE IDENTIDADE DO ESTRANGEIRO'
            '13- PASSAPORTE'
            '14- PROTOCOLO DA POL'#205'CIA FEDERAL'
            '19- INSCRI'#199#195'O ESTADUAL'
            '20- INSCRI'#199#195'O MUNICIPAL'
            '21- ALVAR'#193'/LICEN'#199'A SANIT'#193'RIA MUNICIPAL'
            '22- ALVAR'#193'/LICEN'#199'A SANIT'#193'RIA ESTADUAL'
            '38- AUTORIZA'#199#195'O DE FUNCIONAMENTO DE EMPRESA'
            '39- AUTORIZA'#199#195'O ESPECIAL DE FUNCIONAMENTO'
            '40- AUTORIZA'#199#195'O ESPECIAL SIMPLIFICADA'
            '50- CARTEIRA DE TRABALHO E PREVID'#202'NCIA SOCIAL'
            '62- CADASTRO NACIONAL DE PESSOA JURIDICA')
          TabOrder = 18
          OnClick = cmbInventClasseClick
          Width = 413
        end
        object cxLabel42: TcxLabel
          Left = 6
          Top = 213
          Caption = 'Documento apresentado pelo comprador'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object cmbUFComprador: TcxComboBox
          Left = 423
          Top = 231
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.Items.Strings = (
            'AC'
            'AL'
            'AM'
            'AP'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MG'
            'MS'
            'MT'
            'PA'
            'PB'
            'PE'
            'PI'
            'PR'
            'RJ'
            'RN'
            'RO'
            'RR'
            'RS'
            'SC'
            'SE'
            'SP'
            'TO')
          TabOrder = 20
          OnClick = cmbInventClasseClick
          Width = 50
        end
        object cxLabel43: TcxLabel
          Left = 423
          Top = 213
          Caption = 'UF'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object edNmroDocComprador: TcxTextEdit
          Left = 476
          Top = 231
          ParentFont = False
          Properties.CharCase = ecUpperCase
          TabOrder = 22
          Width = 113
        end
        object cxLabel44: TcxLabel
          Left = 476
          Top = 213
          Caption = 'N'#186' Documento'
          FocusControl = edNmroDocComprador
          ParentFont = False
          Transparent = True
        end
        object cxLabel45: TcxLabel
          Left = 6
          Top = 256
          Caption = #211'rg'#227'o expedidor'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object cmbOrgao: TcxComboBox
          Left = 7
          Top = 274
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.Items.Strings = (
            'ANVISA -AG'#202'NCIA NACIONAL DE VIGIL'#194'NCIA SANIT'#193'RIA'
            'CBM -CORPO DE BOMBEIROS MILITAR'
            'CFE -CONSELHO FEDERAL DE ENFERMAGEM'
            'CFN -CONSELHO FEDERAL DE NUTRICIONISTAS'
            'CFP -CONSELHO FEDERAL DE PSICOLOGIA'
            'CORECON -CONSELHO REGIONAL DE ECONOMIA'
            'COREN -CONSELHO REGIONAL DE ENFERMARIA'
            'CRA -CONSELHO REGIONAL DE ADMINISTRA'#199#195'O'
            'CRB -CONSELHO REGIONAL DE BIOLOGIA'
            'CRBM -CONSELHO REGIONAL DE BIOMEDICINA'
            'CRC -CONSELHO REGIONAL DE CONTABILIDADE'
            'CRCI -CONSELHO REG. DE CORRETORES DE IM'#211'VEIS'
            'CRE -CONSELHO REGIONAL DE ECONOMIA'
            'CREA -CONSELHO REG.DE ENG. ARQUIT. E AGRONOMIA'
            'CREFITO -CONSELHO REGIONAL DE FISIOTERAPIA E TERAPIA OCUPACIONAL'
            'CRF -CONSELHO REGIONAL DE FARM'#193'CIA'
            'CRFA -CONSELHO REGIONAL DE FONOAUDIOLOGIA'
            'CRM -CONSELHO REGIONAL DE MEDICINA'
            'CRMV -CONSELHO REGIONAL DE MEDICINA VETERIN'#193'RIA'
            'CRN -CONSELHO REGIONAL DE NUTRI'#199#195'O'
            'CRO -CONSELHO REGIONAL DE ODONTOLOGIA'
            'CRP -CONSELHO REGIONAL DE PSICOLOGIA'
            'CRQ -CONSELHO REGIONAL DE QUIMICA'
            'DGPC -DIRETORIA GERAL DA POL'#205'CIA CIVIL'
            'DIC -DETRAN - DIRETORIA DE IDENTIFICA'#199#195' CIVIL'
            'DPF -DEPARTAMENTO DE POL'#205'CIA FEDERAL'
            'GOVEST -GOVERNO DO ESTADO'
            'IDAMP -INSTITUTO IDENTIF. AROLDO MENDES PAIVA'
            'IFP -INSTITUTO F'#201'LIX PACHECO'
            'IN -IMPRENSA NACIONAL'
            'IPF -INSTITUTO PEREIRA FAUSTINO'
            'ITB -INSTITUTO TAVARES BURIL'
            'JUNTA'
            'MAER -MINIST'#201'RIO DA AERON'#193'UTICA'
            'MEX -MINIST'#201'RIO DO EX'#201'RCITO'
            'MM -MINIST'#201'RIO DA MARINHA'
            'MRE -MINIST'#201'RIO DAS RELA'#199#213'ES EXTERIORES'
            'MTE -MINIST'#201'RIO DO TRABALHO E EMPREGO'
            'OAB -ORDEM DOS ADVOGADOS DO BRASIL'
            'PM -POLICIA MILITAR'
            'PREF -PREFEITURA'
            'SDS -SECRETARIA DE DESENVOLVIMENTO SOCIAL'
            'SEJSP -SECRETARIA DE EST. DA JUSTI'#199'A E SEG. PUB'
            'SES -SECRETARIA DE ESTADO DA SEGURAN'#199'A'
            'SESP -SECRETARIA DO ESTADO SEG. P'#218'BLICA'
            'SJS -SECRETARIA DA JUSTI'#199'A E DA SEGURAN'#199'A'
            'SJTC -SECR. DA JUST. DO TRAB. E DA CIDADANIA'
            'SRF -SECRETARIA DA RECEITA FEDERAL'
            'SSIPT -SECR.  DE SEG. E INFORM. POL'#205'CIA T'#201'CNICA'
            'SSP -SECRETARIA DE SEGURAN'#199'A P'#218'BLICA'
            'VACIV -VARA CIVIL'
            'VAMEN -VARA DE MENORES')
          Properties.Sorted = True
          TabOrder = 25
          OnClick = cmbInventClasseClick
          Width = 413
        end
        object btnComprPac: TcxButton
          AlignWithMargins = True
          Left = 426
          Top = 266
          Width = 163
          Height = 39
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Comprador '#233' o paciente'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 26
          TabStop = False
          OnClick = btnComprPacClick
        end
        object edNomePac: TcxTextEdit
          Tag = 1
          Left = 9
          Top = 344
          ParentFont = False
          Properties.CharCase = ecUpperCase
          TabOrder = 27
          Width = 583
        end
        object cxLabel46: TcxLabel
          Left = 6
          Top = 326
          Caption = 'Nome do Paciente'
          FocusControl = edNomePac
          ParentFont = False
          Transparent = True
        end
        object edIdadePAc: TcxCurrencyEdit
          Tag = 1
          Left = 6
          Top = 385
          ParentFont = False
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0'
          Properties.MaxValue = 125.000000000000000000
          TabOrder = 29
          Width = 51
        end
        object cxLabel47: TcxLabel
          Left = 6
          Top = 367
          Caption = 'Idade'
          FocusControl = edIdadePAc
          ParentFont = False
          Transparent = True
        end
        object cmbIdadePAc: TcxComboBox
          Tag = 1
          Left = 60
          Top = 385
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.Items.Strings = (
            'ANOS'
            'MESES')
          TabOrder = 31
          OnClick = cmbInventClasseClick
          Width = 77
        end
        object cxLabel48: TcxLabel
          Left = 60
          Top = 367
          Caption = 'Anos/Meses'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object cxLabel49: TcxLabel
          Left = 141
          Top = 367
          Caption = 'Sexo'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object cmbSexoPac: TcxComboBox
          Tag = 1
          Left = 141
          Top = 385
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.Items.Strings = (
            'M'
            'F')
          TabOrder = 34
          OnClick = cmbInventClasseClick
          Width = 77
        end
        object cxLabel50: TcxLabel
          Left = 224
          Top = 367
          Caption = 'CID'
          FocusControl = edCIDPac
          ParentFont = False
          Transparent = True
        end
        object edCIDPac: TcxTextEdit
          Tag = 1
          Left = 222
          Top = 385
          ParentFont = False
          Properties.CharCase = ecUpperCase
          TabOrder = 35
          Width = 91
        end
        object btnDigitRec: TcxButton
          AlignWithMargins = True
          Left = 351
          Top = 382
          Width = 118
          Height = 33
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Digitalizar Receita'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 37
          TabStop = False
          OnClick = btnDigitRecClick
        end
        object btnVisRec: TcxButton
          AlignWithMargins = True
          Left = 475
          Top = 382
          Width = 118
          Height = 33
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Visualizar Receita'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 38
          TabStop = False
          OnClick = btnVisRecClick
        end
        object btnMedic: TcxButton
          AlignWithMargins = True
          Left = 351
          Top = 434
          Width = 238
          Height = 33
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Informar Medicamentos'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 39
          TabStop = False
          OnClick = btnMedicClick
        end
        object dtPrescrReceita: TcxDateEdit
          Left = 6
          Top = 79
          ParentFont = False
          TabOrder = 4
          Width = 93
        end
        object dtSaidaReceita: TcxDateEdit
          Left = 103
          Top = 79
          ParentFont = False
          TabOrder = 6
          Width = 93
        end
        object lblArqReceita: TcxLabel
          Left = 3
          Top = 412
          Hint = 'Nenhuma receita digitalizada'
          AutoSize = False
          Caption = 'Nenhuma receita digitalizada'
          ParentFont = False
          Properties.Alignment.Vert = taVCenter
          Properties.WordWrap = True
          Transparent = True
          Height = 67
          Width = 310
          AnchorY = 446
        end
      end
    end
    object TabPerda: TcxTabSheet
      Caption = 'PERDA MEDICAMENTO'
      ImageIndex = 11
      OnHide = TabPerdaHide
      OnShow = TabPerdaShow
      object cxGroupBox20: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alTop
        Alignment = alTopCenter
        Caption = 'LISTA DE MEDICAMENTOS INFORMADOS'
        ParentFont = False
        TabOrder = 0
        Height = 279
        Width = 595
        object grdPerda: TcxGrid
          Left = 2
          Top = 18
          Width = 591
          Height = 218
          Align = alTop
          TabOrder = 0
          TabStop = False
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Valentine'
          object tbvPerda: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            OnCellClick = tbvPerdaCellClick
            DataController.DataModeController.GridMode = True
            DataController.DataSource = DM.DSPerda
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.CancelOnExit = False
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
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 40
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'COD GTIN'
              DataBinding.FieldName = 'ean'
              HeaderAlignmentHorz = taCenter
              Width = 103
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'DESCRI'#199#195'O DO MEDICAMENTO'
              DataBinding.FieldName = 'nome'
              HeaderAlignmentHorz = taCenter
              Width = 282
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'LOTE'
              DataBinding.FieldName = 'lote'
              HeaderAlignmentHorz = taCenter
              Width = 79
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'QUANT'
              DataBinding.FieldName = 'quant'
              HeaderAlignmentHorz = taCenter
              Width = 51
            end
          end
          object lvPerda: TcxGridLevel
            GridView = tbvPerda
          end
        end
        object btnMedPerdaRemover: TcxButton
          AlignWithMargins = True
          Left = 518
          Top = 240
          Width = 75
          Height = 27
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Remover'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnMedPerdaRemoverClick
        end
      end
      object cxGroupBox21: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 288
        Align = alClient
        Alignment = alTopCenter
        Caption = 'LISTA DE MEDICAMENTOS DISPON'#205'VEIS'
        ParentFont = False
        TabOrder = 1
        Height = 244
        Width = 595
        object cxLabel69: TcxLabel
          Left = 3
          Top = 165
          Caption = 'Pesquisar'
          FocusControl = edPesqPerMed
          ParentFont = False
          Transparent = True
        end
        object edMedPerQtd: TcxCurrencyEdit
          Left = 303
          Top = 183
          ParentFont = False
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0'
          Properties.MaxValue = 999.000000000000000000
          Properties.OnEditValueChanged = edMedPerQtdPropertiesEditValueChanged
          TabOrder = 1
          Width = 51
        end
        object cxLabel70: TcxLabel
          Left = 303
          Top = 165
          Caption = 'Quant.'
          FocusControl = edMedPerQtd
          ParentFont = False
          Transparent = True
        end
        object lblDispon2: TcxLabel
          Left = 457
          Top = 160
          AutoSize = False
          FocusControl = edMedPerQtd
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.WordWrap = True
          Height = 21
          Width = 122
          AnchorX = 518
          AnchorY = 171
        end
        object btnMedPerInserir: TcxButton
          AlignWithMargins = True
          Left = 376
          Top = 207
          Width = 75
          Height = 23
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Inserir'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnMedPerInserirClick
        end
        object grdMedPerda: TcxGrid
          Left = 2
          Top = 18
          Width = 591
          Height = 141
          Align = alTop
          TabOrder = 8
          TabStop = False
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Valentine'
          object tbvMedPerda: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            OnCellClick = tbvMedPerdaCellClick
            DataController.DataModeController.GridMode = True
            DataController.DataSource = DM.DSMedDisp
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.CancelOnExit = False
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
            object cxGridDBColumn6: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 34
            end
            object cxGridDBColumn7: TcxGridDBColumn
              DataBinding.FieldName = 'ean'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn8: TcxGridDBColumn
              DataBinding.FieldName = 'nome'
              HeaderAlignmentHorz = taCenter
              Width = 186
            end
            object cxGridDBColumn9: TcxGridDBColumn
              DataBinding.FieldName = 'medicam_nomelab'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridDBColumn10: TcxGridDBColumn
              DataBinding.FieldName = 'medicam_portaria'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridDBColumn11: TcxGridDBColumn
              DataBinding.FieldName = 'lote'
              HeaderAlignmentHorz = taCenter
              Width = 66
            end
            object cxGridDBColumn12: TcxGridDBColumn
              DataBinding.FieldName = 'quant'
              HeaderAlignmentHorz = taCenter
              Width = 50
            end
          end
          object lvMedPerda: TcxGridLevel
            GridView = tbvMedPerda
          end
        end
        object edPesqPerMed: TcxTextEdit
          Left = 3
          Top = 182
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.OnChange = edPesqPerMedPropertiesChange
          TabOrder = 0
          Width = 296
        end
        object cbDescr2: TcxRadioButton
          Left = 58
          Top = 165
          Width = 79
          Height = 17
          Caption = 'Descri'#231#227'o'
          Checked = True
          TabOrder = 9
          TabStop = True
          OnClick = cbDescr2Click
        end
        object cxRadioButton2: TcxRadioButton
          Left = 143
          Top = 165
          Width = 79
          Height = 17
          Caption = 'Lote'
          TabOrder = 10
          OnClick = cbDescr2Click
        end
        object cmbMotivo: TcxComboBox
          Left = 46
          Top = 207
          ParentFont = False
          Properties.Items.Strings = (
            '1 - Furto / Roubo'
            '2 - Avaria'
            '3 - Vencimento'
            '4 - Apreens'#227'o / Recolhimento pela Visa'
            '5 - Perda no processo'
            '6 - Coleta para controle de qualidade'
            '7 - Perda de exclus'#227'o da portaria 344'
            '8 - Por desvio de Qualidade'
            '9 - Recolhimento do Fabricante')
          TabOrder = 3
          Width = 308
        end
        object cxLabel72: TcxLabel
          Left = 5
          Top = 209
          Caption = 'Motivo'
          FocusControl = cxDBTextEdit3
          ParentFont = False
          Transparent = True
        end
        object cxLabel71: TcxLabel
          Left = 359
          Top = 165
          Caption = 'Data da Perda'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object DtPerda: TcxDateEdit
          Left = 358
          Top = 183
          ParentFont = False
          TabOrder = 2
          Width = 93
        end
        object btnMedPerConcluir: TcxButton
          AlignWithMargins = True
          Left = 504
          Top = 186
          Width = 75
          Height = 38
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Concluir'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnClick = btnMedPerConcluirClick
        end
      end
    end
    object TabPesq: TcxTabSheet
      Caption = 'PESQUISA MOVIMENTA'#199#195'O'
      ImageIndex = 5
      OnShow = TabPesqShow
      object cxGroupBox9: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alTop
        Alignment = alTopCenter
        Caption = 'PESQUISA DE MOVIMENTA'#199#195'O'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 52
        Width = 595
        object Shape7: TShape
          Left = 56
          Top = 25
          Width = 20
          Height = 19
          Brush.Color = 8820202
          Shape = stCircle
        end
        object Shape8: TShape
          Left = 146
          Top = 25
          Width = 20
          Height = 19
          Brush.Color = 16765650
          Shape = stCircle
        end
        object Shape9: TShape
          Left = 287
          Top = 25
          Width = 20
          Height = 19
          Brush.Color = 8976267
          Shape = stCircle
        end
        object cxLabel63: TcxLabel
          Left = 6
          Top = 26
          Caption = 'Legenda:'
          FocusControl = DBEdit3
          ParentFont = False
          Transparent = True
        end
        object cxLabel64: TcxLabel
          Left = 80
          Top = 26
          Caption = 'Erro'
          FocusControl = DBEdit3
          ParentFont = False
          Transparent = True
        end
        object cxLabel65: TcxLabel
          Left = 170
          Top = 26
          Caption = 'Antimicrobiano'
          FocusControl = DBEdit3
          ParentFont = False
          Transparent = True
        end
        object cxLabel66: TcxLabel
          Left = 311
          Top = 26
          Caption = 'Controle especial'
          FocusControl = DBEdit3
          ParentFont = False
          Transparent = True
        end
      end
      object cxGroupBox19: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 406
        Align = alBottom
        Alignment = alTopCenter
        Caption = 'OP'#199#213'ES DE PESQUISA'
        ParentFont = False
        TabOrder = 1
        Height = 126
        Width = 595
        object pgPesq: TcxPageControl
          Left = 112
          Top = 19
          Width = 441
          Height = 59
          TabOrder = 1
          Properties.ActivePage = TabPesq1
          Properties.CustomButtons.Buttons = <>
          Properties.Rotate = True
          Properties.TabPosition = tpLeft
          ClientRectBottom = 59
          ClientRectLeft = 62
          ClientRectRight = 441
          ClientRectTop = 0
          object TabPesq2: TcxTabSheet
            Caption = 'TabPesq2'
            ImageIndex = 0
            object edPesqMovi: TcxTextEdit
              Left = 33
              Top = 25
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Properties.OnChange = edPesqMoviPropertiesChange
              TabOrder = 0
              OnEnter = edPesqMoviEnter
              Width = 332
            end
            object lblPesqMovi: TcxLabel
              Left = 36
              Top = 4
              Caption = 'LOTE'
              FocusControl = cxDBTextEdit2
              ParentFont = False
              Transparent = True
            end
          end
          object TabPesq1: TcxTabSheet
            Caption = 'TabPesq1'
            ImageIndex = 1
            object cxLabel53: TcxLabel
              Left = 78
              Top = 5
              Caption = 'Data Inicial'
              FocusControl = cxDBTextEdit2
              ParentFont = False
              Transparent = True
            end
            object dt1: TcxDateEdit
              Left = 78
              Top = 22
              ParentFont = False
              TabOrder = 1
              OnEnter = dt1Enter
              Width = 93
            end
            object Dt2: TcxDateEdit
              Left = 178
              Top = 22
              ParentFont = False
              TabOrder = 2
              OnEnter = dt1Enter
              Width = 93
            end
            object cxLabel54: TcxLabel
              Left = 177
              Top = 5
              Caption = 'Data Final'
              FocusControl = cxDBTextEdit2
              ParentFont = False
              Transparent = True
            end
            object btnPesqMovi: TcxButton
              AlignWithMargins = True
              Left = 296
              Top = 17
              Width = 75
              Height = 27
              Margins.Top = 1
              Margins.Bottom = 1
              Caption = 'Pesquisar'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = btnPesqMoviClick
            end
          end
        end
        object GpPesq: TcxRadioGroup
          Left = 2
          Top = 83
          Align = alBottom
          Caption = 'PESQUISAR POR:'
          ParentFont = False
          Properties.Columns = 5
          Properties.Items = <
            item
              Caption = 'PER'#205'ODO'
            end
            item
              Caption = 'LOTE'
            end
            item
              Caption = 'MEDICAMENTO'
            end
            item
              Caption = 'REGISTRO M.S.'
            end
            item
              Caption = 'N'#186' DA RECEITA'
            end>
          TabOrder = 0
          OnClick = GpPesqClick
          Height = 41
          Width = 591
        end
      end
      object pgPesqMovi: TcxPageControl
        Left = 0
        Top = 58
        Width = 601
        Height = 345
        Align = alClient
        TabOrder = 2
        Properties.ActivePage = TabPesqEntr
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 345
        ClientRectRight = 601
        ClientRectTop = 26
        object TabPesqEntr: TcxTabSheet
          Hint = 'ENTRADAS'
          Caption = 'ENTRADAS'
          ImageIndex = 0
          object Panel2: TPanel
            Left = 0
            Top = 291
            Width = 601
            Height = 28
            Align = alBottom
            TabOrder = 0
            object btnPesqDelEntr: TcxButton
              AlignWithMargins = True
              Left = 532
              Top = 2
              Width = 65
              Height = 24
              Margins.Top = 1
              Margins.Bottom = 1
              Align = alRight
              Caption = 'Excluir'
              Enabled = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = btnPesqDelEntrClick
            end
          end
          object GrdPesqEntr: TcxGrid
            Left = 0
            Top = 0
            Width = 601
            Height = 291
            Align = alClient
            TabOrder = 1
            LevelTabs.Slants.Kind = skCutCorner
            LevelTabs.Style = 6
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Coffee'
            object tbvPesqEntr: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.Visible = fvNever
              OnCellClick = tbvPesqEntrCellClick
              OnCustomDrawCell = tbvPesqEntrCustomDrawCell
              DataController.DataModeController.GridMode = True
              DataController.DataSource = DM.DSPesqEntr
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0 REGISTROS'
                  Kind = skCount
                  FieldName = 'id'
                  Column = tbvPesqEntrean
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
              object tbvPesqEntrean: TcxGridDBColumn
                DataBinding.FieldName = 'ean'
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object tbvPesqEntrregistro_ms: TcxGridDBColumn
                DataBinding.FieldName = 'registro_ms'
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object tbvPesqEntrnome: TcxGridDBColumn
                Tag = 1
                DataBinding.FieldName = 'nome'
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object tbvPesqEntrdt_entrada: TcxGridDBColumn
                DataBinding.FieldName = 'dt_entrada'
                HeaderAlignmentHorz = taCenter
              end
              object tbvPesqEntrdt_vencim: TcxGridDBColumn
                DataBinding.FieldName = 'dt_vencim'
                HeaderAlignmentHorz = taCenter
              end
              object tbvPesqEntrlote: TcxGridDBColumn
                DataBinding.FieldName = 'lote'
                HeaderAlignmentHorz = taCenter
                Width = 80
              end
              object tbvPesqEntrquant: TcxGridDBColumn
                DataBinding.FieldName = 'quant'
                HeaderAlignmentHorz = taCenter
                Width = 60
              end
              object tbvPesqEntrnmro_nf: TcxGridDBColumn
                Caption = 'N'#186' N.F.'
                DataBinding.FieldName = 'nmro_nf'
                HeaderAlignmentHorz = taCenter
              end
              object tbvPesqEntrdt_nf: TcxGridDBColumn
                DataBinding.FieldName = 'dt_nf'
                HeaderAlignmentHorz = taCenter
              end
              object tbvPesqEntrcnpj_origem: TcxGridDBColumn
                Caption = 'CNPJ FORNEC.'
                DataBinding.FieldName = 'cnpj_origem'
                HeaderAlignmentHorz = taCenter
              end
              object tbvPesqEntrclasse_terap: TcxGridDBColumn
                DataBinding.FieldName = 'classe_terap'
                Visible = False
              end
            end
            object lvPesqEntr: TcxGridLevel
              GridView = tbvPesqEntr
            end
          end
        end
        object TabPesqSai: TcxTabSheet
          Hint = 'SA'#205'DAS'
          Caption = 'SA'#205'DAS'
          ImageIndex = 1
          object Panel1: TPanel
            Left = 0
            Top = 291
            Width = 601
            Height = 28
            Align = alBottom
            TabOrder = 0
            object btnPesqDelSai: TcxButton
              AlignWithMargins = True
              Left = 532
              Top = 2
              Width = 65
              Height = 24
              Margins.Top = 1
              Margins.Bottom = 1
              Align = alRight
              Caption = 'Excluir'
              Enabled = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = btnPesqDelSaiClick
            end
          end
          object GrdPesqSai: TcxGrid
            Left = 0
            Top = 89
            Width = 601
            Height = 202
            Align = alClient
            TabOrder = 1
            LevelTabs.Slants.Kind = skCutCorner
            LevelTabs.Style = 6
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Coffee'
            object tbvPesqSai: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.Visible = fvNever
              OnCellClick = tbvPesqSaiCellClick
              OnCustomDrawCell = tbvPesqSaiCustomDrawCell
              DataController.DataModeController.GridMode = True
              DataController.DataSource = DM.DSPesqSai
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0 REGISTROS'
                  Kind = skCount
                  FieldName = 'ean'
                  Column = tbvPesqSaiean
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
              object tbvPesqSaiean: TcxGridDBColumn
                DataBinding.FieldName = 'ean'
                HeaderAlignmentHorz = taCenter
                Width = 81
              end
              object tbvPesqSainome: TcxGridDBColumn
                Tag = 1
                DataBinding.FieldName = 'nome'
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object tbvPesqSaidt_saida: TcxGridDBColumn
                DataBinding.FieldName = 'dt_saida'
                HeaderAlignmentHorz = taCenter
              end
              object tbvPesqSaidt_vencim: TcxGridDBColumn
                DataBinding.FieldName = 'dt_vencim'
                HeaderAlignmentHorz = taCenter
              end
              object tbvPesqSailote: TcxGridDBColumn
                DataBinding.FieldName = 'lote'
                HeaderAlignmentHorz = taCenter
                Width = 80
              end
              object tbvPesqSairegistro_ms: TcxGridDBColumn
                DataBinding.FieldName = 'registro_ms'
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object tbvPesqSaiquant: TcxGridDBColumn
                DataBinding.FieldName = 'quant'
                HeaderAlignmentHorz = taCenter
                Width = 50
              end
              object tbvPesqSaiclasse_terap: TcxGridDBColumn
                DataBinding.FieldName = 'classe_terap'
                Visible = False
              end
            end
            object lvPesqSai: TcxGridLevel
              GridView = tbvPesqSai
            end
          end
          object pnlPesqSai: TPanel
            Left = 0
            Top = 0
            Width = 601
            Height = 89
            Align = alTop
            TabOrder = 2
            Visible = False
            object cxLabel55: TcxLabel
              Left = 6
              Top = 4
              Caption = 'N'#186' NOTIF.:'
              FocusControl = cxDBTextEdit2
              ParentFont = False
              Transparent = True
            end
            object cxDBLabel2: TcxDBLabel
              Left = 72
              Top = 4
              DataBinding.DataField = 'nmro_notif'
              DataBinding.DataSource = DM.DSPesqRec
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Comic Sans MS'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Transparent = True
              Height = 18
              Width = 121
            end
            object cxLabel56: TcxLabel
              Left = 199
              Top = 4
              Caption = 'DT. PRESCR.:'
              FocusControl = cxDBTextEdit2
              ParentFont = False
              Transparent = True
            end
            object cxDBLabel3: TcxDBLabel
              Left = 273
              Top = 4
              DataBinding.DataField = 'data_prescr'
              DataBinding.DataSource = DM.DSPesqRec
              ParentFont = False
              Transparent = True
              Height = 18
              Width = 90
            end
            object cxLabel58: TcxLabel
              Left = 18
              Top = 23
              Caption = 'PRESCR.:'
              FocusControl = cxDBTextEdit2
              ParentFont = False
              Transparent = True
            end
            object cxDBLabel5: TcxDBLabel
              Left = 72
              Top = 18
              DataBinding.DataField = 'medico'
              DataBinding.DataSource = DM.DSPesqRec
              ParentFont = False
              Transparent = True
              Height = 18
              Width = 409
            end
            object cxDBLabel6: TcxDBLabel
              Left = 487
              Top = 23
              DataBinding.DataField = 'conselho_prof'
              DataBinding.DataSource = DM.DSPesqRec
              ParentFont = False
              Transparent = True
              Height = 18
              Width = 36
            end
            object cxDBLabel7: TcxDBLabel
              Left = 529
              Top = 23
              DataBinding.DataField = 'nmro_prof'
              DataBinding.DataSource = DM.DSPesqRec
              ParentFont = False
              Transparent = True
              Height = 18
              Width = 60
            end
            object cxLabel59: TcxLabel
              Left = 21
              Top = 42
              Caption = 'COMPR.:'
              FocusControl = cxDBTextEdit2
              ParentFont = False
              Transparent = True
            end
            object cxDBLabel8: TcxDBLabel
              Left = 72
              Top = 42
              DataBinding.DataField = 'comprador'
              DataBinding.DataSource = DM.DSPesqRec
              ParentFont = False
              Transparent = True
              Height = 18
              Width = 451
            end
            object cxLabel60: TcxLabel
              Left = 9
              Top = 63
              Caption = 'PACIENTE'
              FocusControl = cxDBTextEdit2
              ParentFont = False
              Transparent = True
            end
            object cxDBLabel9: TcxDBLabel
              Left = 72
              Top = 61
              DataBinding.DataField = 'paciente_nome'
              DataBinding.DataSource = DM.DSPesqRec
              ParentFont = False
              Transparent = True
              Height = 18
              Width = 451
            end
            object cxButton4: TcxButton
              AlignWithMargins = True
              Left = 529
              Top = 52
              Width = 65
              Height = 27
              Margins.Top = 1
              Margins.Bottom = 1
              Caption = 'Alterar'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 12
            end
            object cxDBLabel4: TcxDBLabel
              Left = 529
              Top = 0
              DataBinding.DataField = 'id'
              DataBinding.DataSource = DM.DSPesqRec
              ParentFont = False
              Transparent = True
              Height = 18
              Width = 60
            end
          end
        end
        object TabPesqPerdas: TcxTabSheet
          Hint = 'PERDAS'
          Caption = 'PERDAS'
          ImageIndex = 2
          object grdPesqPerda: TcxGrid
            Left = 0
            Top = 0
            Width = 601
            Height = 290
            Align = alClient
            TabOrder = 0
            LevelTabs.Slants.Kind = skCutCorner
            LevelTabs.Style = 6
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Coffee'
            object tbvPesqPerda: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.Visible = fvNever
              OnCellClick = tbvPesqPerdaCellClick
              OnCustomDrawCell = tbvPesqPerdaCustomDrawCell
              DataController.DataModeController.GridMode = True
              DataController.DataSource = DM.DSPesqPerda
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0 REGISTROS'
                  Kind = skCount
                  FieldName = 'ean'
                  Column = tbvPesqPerdaean
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
              object tbvPesqPerdaean: TcxGridDBColumn
                Caption = 'C'#211'D GTIN'
                DataBinding.FieldName = 'ean'
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object tbvPesqPerdanome: TcxGridDBColumn
                Tag = 1
                Caption = 'DESCRI'#199#195'O DO MEDICAMENTO'
                DataBinding.FieldName = 'nome'
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object tbvPesqPerdadt_perda: TcxGridDBColumn
                Caption = 'DATA'
                DataBinding.FieldName = 'dt_perda'
                HeaderAlignmentHorz = taCenter
              end
              object tbvPesqPerdadt_vencim: TcxGridDBColumn
                Caption = 'VENCIM.'
                DataBinding.FieldName = 'dt_vencim'
                HeaderAlignmentHorz = taCenter
              end
              object tbvPesqPerdamotivo_perda: TcxGridDBColumn
                Caption = 'MOT.'
                DataBinding.FieldName = 'motivo_perda'
                HeaderAlignmentHorz = taCenter
              end
              object tbvPesqPerdalote: TcxGridDBColumn
                Caption = 'LOTE'
                DataBinding.FieldName = 'lote'
                HeaderAlignmentHorz = taCenter
                Width = 80
              end
              object tbvPesqPerdaregistro_ms: TcxGridDBColumn
                Caption = 'REGISTRO M.S.'
                DataBinding.FieldName = 'registro_ms'
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object tbvPesqPerdaquant: TcxGridDBColumn
                Caption = 'QUANT'
                DataBinding.FieldName = 'quant'
                HeaderAlignmentHorz = taCenter
                Width = 60
              end
              object tbvPesqPerdaclasse_terap: TcxGridDBColumn
                DataBinding.FieldName = 'classe_terap'
                Visible = False
              end
            end
            object lvPesqPerda: TcxGridLevel
              GridView = tbvPesqPerda
            end
          end
          object Panel4: TPanel
            Left = 0
            Top = 290
            Width = 601
            Height = 29
            Align = alBottom
            TabOrder = 1
            object btpPesqDelPerda: TcxButton
              AlignWithMargins = True
              Left = 532
              Top = 2
              Width = 65
              Height = 25
              Margins.Top = 1
              Margins.Bottom = 1
              Align = alRight
              Caption = 'Excluir'
              Enabled = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = btpPesqDelPerdaClick
            end
          end
        end
      end
    end
    object TabGerar: TcxTabSheet
      Caption = 'GERAR E TRANSMITIR'
      ImageIndex = 6
      OnShow = TabGerarShow
      object cxGroupBox10: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alTop
        Alignment = alTopCenter
        Caption = 'GERA'#199#195'O E TRANSMISS'#195'O DE ARQUIVOS'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 34
        Width = 595
      end
      object Panel3: TPanel
        Left = 297
        Top = 40
        Width = 304
        Height = 495
        Align = alClient
        TabOrder = 1
        object Image2: TImage
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 296
          Height = 466
          Align = alClient
          Proportional = True
          Transparent = True
          ExplicitTop = 3
          ExplicitWidth = 298
          ExplicitHeight = 464
        end
        object cxLabel57: TcxLabel
          Left = 52
          Top = 370
          Caption = 'Data Inicial'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object DtIni: TcxDateEdit
          Left = 52
          Top = 387
          ParentFont = False
          TabOrder = 1
          OnEnter = dt1Enter
          Width = 93
        end
        object DtFim: TcxDateEdit
          Left = 151
          Top = 387
          ParentFont = False
          TabOrder = 2
          OnEnter = dt1Enter
          Width = 93
        end
        object cxLabel61: TcxLabel
          Left = 151
          Top = 370
          Caption = 'Data Final'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object edInterv: TcxSpinEdit
          Left = 191
          Top = 338
          TabStop = False
          ParentFont = False
          Properties.DisplayFormat = '# dias'
          Properties.MaxValue = 7.000000000000000000
          Properties.MinValue = 1.000000000000000000
          TabOrder = 4
          Value = 5
          OnClick = edIntervClick
          Width = 68
        end
        object cxLabel62: TcxLabel
          Left = 24
          Top = 339
          Caption = 'Calcular intervalo para gera'#231#227'o'
          FocusControl = cxDBTextEdit2
          ParentFont = False
          Transparent = True
        end
        object btnGerar: TcxButton
          AlignWithMargins = True
          Left = 50
          Top = 419
          Width = 94
          Height = 41
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Gerar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btnGerarClick
        end
        object btnLog: TcxButton
          AlignWithMargins = True
          Left = 156
          Top = 281
          Width = 135
          Height = 34
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Abrir Arq. de Valida'#231#227'o'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = btnLogClick
        end
        object btnEnviar: TcxButton
          AlignWithMargins = True
          Left = 150
          Top = 419
          Width = 94
          Height = 41
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Enviar Arquivo'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = btnEnviarClick
        end
        object bar2: TcxProgressBar
          Left = 1
          Top = 473
          Align = alBottom
          ParentFont = False
          Properties.BarStyle = cxbsGradientLEDs
          Properties.BeginColor = 54056
          Properties.PeakValue = 99.000000000000000000
          Properties.ShowTextStyle = cxtsText
          TabOrder = 9
          Visible = False
          Width = 302
        end
        object cxButton8: TcxButton
          AlignWithMargins = True
          Left = 12
          Top = 281
          Width = 135
          Height = 34
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Acessar Site Anvisa'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = cxButton8Click
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 40
        Width = 297
        Height = 495
        Align = alLeft
        TabOrder = 2
        object GrdGer: TcxGrid
          Left = 1
          Top = 31
          Width = 295
          Height = 463
          Align = alClient
          TabOrder = 0
          TabStop = False
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Coffee'
          object tbvGer: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            DataController.DataModeController.GridMode = True
            DataController.DataSource = DM.DSGerados
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.CancelOnExit = False
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
            object tbvGerid: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 50
            end
            object tbvGerdt_ini: TcxGridDBColumn
              DataBinding.FieldName = 'dt_ini'
              HeaderAlignmentHorz = taCenter
            end
            object tbvGerdt_fim: TcxGridDBColumn
              DataBinding.FieldName = 'dt_fim'
              HeaderAlignmentHorz = taCenter
            end
            object tbvGervalidado: TcxGridDBColumn
              Caption = 'STATUS'
              DataBinding.FieldName = 'validado'
              PropertiesClassName = 'TcxLabelProperties'
              HeaderAlignmentHorz = taCenter
              Width = 53
            end
          end
          object lvGer: TcxGridLevel
            GridView = tbvGer
          end
        end
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 295
          Height = 30
          Align = alTop
          Caption = 'ARQUIVOS GERADOS'
          TabOrder = 1
          object btnDel: TcxButton
            AlignWithMargins = True
            Left = 250
            Top = 2
            Width = 41
            Height = 26
            Hint = 'Excluir Ultimo arquivo gerado.'
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alRight
            Caption = '-'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = btnDelClick
          end
          object cxButton5: TcxButton
            AlignWithMargins = True
            Left = 4
            Top = 2
            Width = 41
            Height = 26
            Hint = 'Alterar o Status do registro'
            Margins.Top = 1
            Margins.Bottom = 1
            Align = alLeft
            Caption = #1146
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = cxButton5Click
          end
        end
        object Panel10: TPanel
          Left = 56
          Top = 186
          Width = 185
          Height = 129
          BevelOuter = bvLowered
          BevelWidth = 4
          TabOrder = 2
          Visible = False
          object cxLabel68: TcxLabel
            Left = 4
            Top = 4
            Align = alTop
            Caption = 'Escolha o novo status'
            FocusControl = cxDBTextEdit2
            ParentFont = False
            Properties.Alignment.Horz = taCenter
            Transparent = True
            AnchorX = 93
          end
          object cxButton6: TcxButton
            AlignWithMargins = True
            Left = 6
            Top = 80
            Width = 82
            Height = 41
            Margins.Top = 1
            Margins.Bottom = 1
            Caption = 'Cancelar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = cxButton6Click
          end
          object cxButton7: TcxButton
            AlignWithMargins = True
            Left = 95
            Top = 80
            Width = 82
            Height = 41
            Margins.Top = 1
            Margins.Bottom = 1
            Caption = 'Alterar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = cxButton7Click
          end
          object cmbstatus: TcxComboBox
            Left = 32
            Top = 32
            ParentFont = False
            Properties.Items.Strings = (
              'GERADO'
              'ENVIADO'
              'VALIDADO')
            TabOrder = 0
            Width = 121
          end
        end
      end
    end
    object TabSaiMed: TcxTabSheet
      Caption = 'TabSaiMed'
      ImageIndex = 8
      OnShow = TabSaiMedShow
      object cxGroupBox17: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 303
        Align = alClient
        Alignment = alTopCenter
        Caption = 'LISTA DE MEDICAMENTOS DISPON'#205'VEIS'
        ParentFont = False
        TabOrder = 0
        Height = 229
        Width = 595
        object cxLabel51: TcxLabel
          Left = 3
          Top = 169
          Caption = 'Pesquisar'
          FocusControl = edPesqSaiMed
          ParentFont = False
          Transparent = True
        end
        object edMedSaiQtd: TcxCurrencyEdit
          Left = 303
          Top = 192
          ParentFont = False
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0'
          Properties.MaxValue = 999.000000000000000000
          Properties.OnEditValueChanged = edMedSaiQtdPropertiesEditValueChanged
          TabOrder = 2
          Width = 51
        end
        object cxLabel52: TcxLabel
          Left = 303
          Top = 169
          Caption = 'Quant.'
          FocusControl = edMedSaiQtd
          ParentFont = False
          Transparent = True
        end
        object lblDispon: TcxLabel
          Left = 360
          Top = 172
          AutoSize = False
          FocusControl = edMedSaiQtd
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.WordWrap = True
          Height = 42
          Width = 144
          AnchorX = 432
          AnchorY = 193
        end
        object btnMedSaiInserir: TcxButton
          AlignWithMargins = True
          Left = 510
          Top = 183
          Width = 75
          Height = 27
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Inserir'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = btnMedSaiInserirClick
        end
        object GdMedDispSai: TcxGrid
          Left = 2
          Top = 18
          Width = 591
          Height = 141
          Align = alTop
          TabOrder = 6
          TabStop = False
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Valentine'
          object tbvMedDispSai: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            OnCellClick = tbvMedDispSaiCellClick
            DataController.DataModeController.GridMode = True
            DataController.DataSource = DM.DSMedDisp
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.CancelOnExit = False
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
            object tbvMedDispSaiid: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 34
            end
            object tbvMedDispSaiean: TcxGridDBColumn
              DataBinding.FieldName = 'ean'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object tbvMedDispSainome: TcxGridDBColumn
              DataBinding.FieldName = 'nome'
              HeaderAlignmentHorz = taCenter
              Width = 186
            end
            object tbvMedDispSaiNOMELAB: TcxGridDBColumn
              DataBinding.FieldName = 'medicam_nomelab'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object tbvMedDispSaiPORTARIA: TcxGridDBColumn
              DataBinding.FieldName = 'medicam_portaria'
              HeaderAlignmentHorz = taCenter
            end
            object tbvMedDispSailote: TcxGridDBColumn
              DataBinding.FieldName = 'lote'
              HeaderAlignmentHorz = taCenter
              Width = 66
            end
            object tbvMedDispSaiquant: TcxGridDBColumn
              DataBinding.FieldName = 'quant'
              HeaderAlignmentHorz = taCenter
              Width = 50
            end
          end
          object LvMedDispSai: TcxGridLevel
            GridView = tbvMedDispSai
          end
        end
        object edPesqSaiMed: TcxTextEdit
          Left = 3
          Top = 192
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.OnChange = edPesqSaiMedPropertiesChange
          TabOrder = 0
          Width = 296
        end
        object cbDescr: TcxRadioButton
          Left = 58
          Top = 169
          Width = 79
          Height = 17
          Caption = 'Descri'#231#227'o'
          Checked = True
          TabOrder = 7
          TabStop = True
          OnClick = cbDescrClick
        end
        object cbLote: TcxRadioButton
          Left = 143
          Top = 169
          Width = 79
          Height = 17
          Caption = 'Lote'
          TabOrder = 8
          OnClick = cbDescrClick
        end
      end
      object cxGroupBox18: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alTop
        Alignment = alTopCenter
        Caption = 'LISTA DE MEDICAMENTOS INFORMADOS'
        ParentFont = False
        TabOrder = 1
        Height = 294
        Width = 595
        object GdSaiMed: TcxGrid
          Left = 2
          Top = 18
          Width = 591
          Height = 228
          Align = alTop
          TabOrder = 0
          TabStop = False
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Valentine'
          object tbvSaiMed: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            OnCellClick = tbvSaiMedCellClick
            DataController.DataModeController.GridMode = True
            DataController.DataSource = DM.DSSaiMed
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.CancelOnExit = False
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
            object tbvSaiMedid: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 40
            end
            object tbvSaiMedean: TcxGridDBColumn
              Caption = 'COD GTIN'
              DataBinding.FieldName = 'ean'
              HeaderAlignmentHorz = taCenter
              Width = 103
            end
            object tbvSaiMednome: TcxGridDBColumn
              Caption = 'DESCRI'#199#195'O DO MEDICAMENTO'
              DataBinding.FieldName = 'nome'
              HeaderAlignmentHorz = taCenter
              Width = 282
            end
            object tbvSaiMedlote: TcxGridDBColumn
              Caption = 'LOTE'
              DataBinding.FieldName = 'lote'
              HeaderAlignmentHorz = taCenter
              Width = 79
            end
            object tbvSaiMedquant: TcxGridDBColumn
              Caption = 'QUANT'
              DataBinding.FieldName = 'quant'
              HeaderAlignmentHorz = taCenter
              Width = 51
            end
          end
          object lvSaiMed: TcxGridLevel
            GridView = tbvSaiMed
          end
        end
        object btnMedSaiRemover: TcxButton
          AlignWithMargins = True
          Left = 431
          Top = 255
          Width = 75
          Height = 27
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Remover'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnMedSaiRemoverClick
        end
        object btnMedSaiConcluir: TcxButton
          AlignWithMargins = True
          Left = 512
          Top = 255
          Width = 75
          Height = 27
          Margins.Top = 1
          Margins.Bottom = 1
          Caption = 'Concluir'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnMedSaiConcluirClick
        end
      end
    end
    object TabRel: TcxTabSheet
      Caption = 'RELAT'#211'RIOS'
      ImageIndex = 10
      object Panel7: TPanel
        Left = 0
        Top = 365
        Width = 601
        Height = 170
        Align = alBottom
        TabOrder = 0
        object Button1: TcxButton
          AlignWithMargins = True
          Left = 400
          Top = 4
          Width = 197
          Height = 162
          Align = alRight
          Caption = 'M'#211'DULO DE RELAT'#211'RIOS'
          TabOrder = 0
          TabStop = False
          WordWrap = True
          OnClick = Button1Click
        end
        object Button2: TcxButton
          AlignWithMargins = True
          Left = 207
          Top = 4
          Width = 187
          Height = 162
          Hint = 'RMNRB'
          Align = alClient
          Caption = 'RMNRB'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TabStop = False
          WordWrap = True
          OnClick = Button9Click
        end
        object Button3: TcxButton
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 197
          Height = 162
          Hint = 'RMNRA'
          Align = alLeft
          Caption = 'RMNRA'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          TabStop = False
          WordWrap = True
          OnClick = Button9Click
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 195
        Width = 601
        Height = 170
        Align = alClient
        TabOrder = 1
        object Button4: TcxButton
          AlignWithMargins = True
          Left = 400
          Top = 4
          Width = 197
          Height = 162
          Hint = 'LOTE MED. CONTROL.'
          Align = alRight
          Caption = 'MEDICAMENTOS POR LOTE'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = False
          WordWrap = True
          OnClick = Button9Click
        end
        object Button5: TcxButton
          AlignWithMargins = True
          Left = 207
          Top = 4
          Width = 187
          Height = 162
          Hint = 'INVENT'#193'RIO ATUAL'
          Align = alClient
          Caption = 'INVENT'#193'RIO ATUAL'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TabStop = False
          WordWrap = True
          OnClick = Button9Click
        end
        object Button6: TcxButton
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 197
          Height = 162
          Hint = 'INVENT'#193'RIO INICIAL'
          Align = alLeft
          Caption = 'INVENTARIO INICIAL'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          TabStop = False
          WordWrap = True
          OnClick = Button9Click
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 601
        Height = 195
        Align = alTop
        TabOrder = 2
        object Button7: TcxButton
          AlignWithMargins = True
          Left = 400
          Top = 4
          Width = 197
          Height = 187
          Hint = 'BALAN'#199'O COMPLETO (trimestral)'
          Align = alRight
          Caption = 'BALAN'#199'O COMPLETO (TRIMESTRAL)'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = False
          WordWrap = True
          OnClick = Button9Click
        end
        object Button8: TcxButton
          AlignWithMargins = True
          Left = 207
          Top = 4
          Width = 187
          Height = 187
          Hint = 'BALAN'#199'O COMPLETO(mensal)'
          Align = alClient
          Caption = 'BALAN'#199'O COMPLETO (MENSAL)'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TabStop = False
          WordWrap = True
          OnClick = Button9Click
        end
        object Button9: TcxButton
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 197
          Height = 187
          Hint = 'ARQUIVOS TRANSMITIDOS'
          Align = alLeft
          Caption = 'ARQUIVOS GERADOS'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          TabStop = False
          WordWrap = True
          OnClick = Button9Click
        end
      end
    end
    object TabClose: TcxTabSheet
      Caption = 'FECHAR'
      ImageIndex = 9
      OnShow = TabCloseShow
      object Image3: TImage
        Left = 0
        Top = 0
        Width = 601
        Height = 402
        Align = alClient
        Center = True
        Transparent = True
        ExplicitLeft = 3
        ExplicitTop = -69
        ExplicitWidth = 603
        ExplicitHeight = 482
      end
      object cxLabel67: TcxLabel
        Left = 0
        Top = 402
        Align = alBottom
        AutoSize = False
        Caption = 'PARADIGMA T.I - Inovando solu'#231#245'es   www.paradigmati.com.br'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.LabelStyle = cxlsRaised
        Transparent = True
        Height = 133
        Width = 601
        AnchorX = 301
        AnchorY = 469
      end
    end
  end
  object Bar1: TdxStatusBar
    Left = 0
    Top = 539
    Width = 782
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        Text = 'Vers'#227'o 3.11.16 - A'
        Width = 120
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        Text = 'banco de dados'
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        Text = '127.000.000.001'
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        Text = 'X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X-X'
      end>
    PaintStyle = stpsUseLookAndFeel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object FR: TFormResizer
    ResizeFonts = True
    MinFontSize = 8
    MaxFontSize = 100
    FontSize = 8
    Left = 744
    Top = 88
  end
  object Ini: TFormStorage
    Active = False
    Options = []
    StoredProps.Strings = (
      'edDB.Text'
      'edHost.Text'
      'edSenha.Text'
      'edUser.Text'
      'cmb2.Text'
      'cbDescr.Checked'
      'cbLote.Checked'
      'edInterv.Value'
      'cbDebug.Checked'
      'cbHomo.Checked'
      'edValAM.Text'
      'edValMCE.Text')
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
        Name = 'dias'
        Value = 5
      end>
    Left = 616
    Top = 152
  end
  object EnterTab: TACBrEnterTab
    EnterAsTab = True
    Left = 664
    Top = 192
  end
  object XMLDocument1: TXMLDocument
    Left = 640
    Top = 72
    DOMVendorDesc = 'MSXML'
  end
  object OD1: TOpenDialog
    DefaultExt = 'SNGPC'
    Filter = 'Arquivos texto|*.txt'
    Left = 744
    Top = 44
  end
end
