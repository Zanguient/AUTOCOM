inherited frmMain: TfrmMain
  BorderIcons = [biSystemMenu, biMinimize, biMaximize]
  Caption = 'M'#211'DULO EMISSOR DE NF-e'
  ClientHeight = 580
  ClientWidth = 929
  Color = clWindow
  Ctl3D = False
  Visible = True
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 935
  ExplicitHeight = 609
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 519
    Width = 929
    TabOrder = 2
    ExplicitTop = 519
    ExplicitWidth = 929
    inherited pnlBtnClose: TPanel
      Left = 835
      TabOrder = 1
      ExplicitLeft = 835
    end
    inherited pnlBase: TPanel
      Width = 834
      TabOrder = 0
      ExplicitWidth = 834
      object mmHint: TMemo
        Left = 0
        Top = 0
        Width = 834
        Height = 36
        TabStop = False
        Align = alClient
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object PG1: TPageControl [1]
    Left = 0
    Top = 0
    Width = 929
    Height = 519
    ActivePage = TabEmite
    Align = alClient
    DoubleBuffered = False
    ParentDoubleBuffered = False
    TabOrder = 0
    OnChanging = PG1Changing
    object TabCfg: TTabSheet
      Tag = 1
      Caption = 'CONFIGURA'#199#195'O'
      ImageIndex = 1
      object PGCfg: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 915
        Height = 483
        ActivePage = TabCfgDadosCfg
        Align = alClient
        Style = tsButtons
        TabOrder = 0
        object TabCfgDadosCfg: TTabSheet
          Caption = 'DADOS DE CONFIGURA'#199#195'O'
          ImageIndex = 1
          object btnGetCert: TSpeedButton
            Left = 238
            Top = 32
            Width = 19
            Height = 19
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            OnClick = btnGetCertClick
          end
          object DBText3: TDBText
            Left = 112
            Top = 334
            Width = 81
            Height = 17
            Alignment = taRightJustify
            DataField = 'cNF'
            DataSource = DM_NFE.DSFEmissao
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText4: TDBText
            Left = 112
            Top = 349
            Width = 81
            Height = 17
            Alignment = taRightJustify
            DataField = 'nNF'
            DataSource = DM_NFE.DSFEmissao
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText5: TDBText
            Left = 112
            Top = 364
            Width = 81
            Height = 17
            Alignment = taRightJustify
            DataField = 'serie'
            DataSource = DM_NFE.DSFEmissao
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText6: TDBText
            Left = 112
            Top = 380
            Width = 81
            Height = 17
            Alignment = taRightJustify
            DataField = 'lote'
            DataSource = DM_NFE.DSFEmissao
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit1: TDBEdit
            Left = 12
            Top = 32
            Width = 225
            Height = 19
            Hint = 
              'Clique no bot'#227'o ao lado para obter o serial do certificado previ' +
              'amente instalado.'
            DataField = 'Cfg_Certif_NmroSerie'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = EdSerieEnter
          end
          object DBEdit2: TDBEdit
            Left = 12
            Top = 84
            Width = 400
            Height = 19
            DataField = 'Cfg_Geral_PathSalvar'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnEnter = EdSerieEnter
          end
          object DBEdit3: TDBEdit
            Left = 12
            Top = 123
            Width = 400
            Height = 19
            DataField = 'Cfg_Geral_PathSchemas'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnEnter = EdSerieEnter
          end
          object DBEdit4: TDBEdit
            Left = 12
            Top = 164
            Width = 399
            Height = 19
            DataField = 'Cfg_Geral_PathLogs'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            OnEnter = EdSerieEnter
          end
          object DBEdit5: TDBEdit
            Left = 12
            Top = 225
            Width = 106
            Height = 19
            Hint = 'Daddos de acesso ao PROXY.'
            DataField = 'Cfg_WebServ_ProxyHost'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            OnEnter = EdSerieEnter
          end
          object DBEdit6: TDBEdit
            Left = 12
            Top = 264
            Width = 106
            Height = 19
            Hint = 'Daddos de acesso ao PROXY.'
            DataField = 'Cfg_WebServ_ProxyPort'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 18
            OnEnter = EdSerieEnter
          end
          object DBEdit7: TDBEdit
            Left = 123
            Top = 225
            Width = 106
            Height = 19
            Hint = 'Daddos de acesso ao PROXY.'
            DataField = 'Cfg_WebServ_ProxyUser'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            OnEnter = EdSerieEnter
          end
          object DBEdit8: TDBEdit
            Left = 123
            Top = 264
            Width = 106
            Height = 21
            Hint = 'Daddos de acesso ao PROXY.'
            DataField = 'Cfg_WebServ_ProxyPass'
            DataSource = DM_NFE.DSCfg
            PasswordChar = '*'
            TabOrder = 19
            OnEnter = EdSerieEnter
          end
          object DBEdit9: TDBEdit
            Left = 423
            Top = 84
            Width = 450
            Height = 19
            DataField = 'Cfg_Arq_PathNFe'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnEnter = EdSerieEnter
          end
          object DBEdit10: TDBEdit
            Left = 423
            Top = 123
            Width = 450
            Height = 19
            DataField = 'Cfg_Arq_PathCan'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnEnter = EdSerieEnter
          end
          object DBEdit11: TDBEdit
            Left = 423
            Top = 164
            Width = 450
            Height = 19
            DataField = 'Cfg_Arq_PathDPEC'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            OnEnter = EdSerieEnter
          end
          object DBEdit12: TDBEdit
            Left = 423
            Top = 201
            Width = 450
            Height = 19
            DataField = 'Cfg_Arq_PathInu'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            OnEnter = EdSerieEnter
          end
          object DBEdit13: TDBEdit
            Left = 423
            Top = 275
            Width = 450
            Height = 19
            Hint = 
              'Neste caminho pode ser armazenado um arquivo BMP com no m'#225'x 200 ' +
              'X 200 px para ser impresso na logomarca do DANFE.'
            DataField = 'DANFE_Logo'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 20
            OnEnter = EdSerieEnter
          end
          object DBEdit14: TDBEdit
            Left = 423
            Top = 311
            Width = 450
            Height = 19
            Hint = 'Path do arquivo do layout do DANFE.'
            DataField = 'DANFE_FastFile'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 21
            OnEnter = EdSerieEnter
          end
          object DBEdit15: TDBEdit
            Left = 423
            Top = 383
            Width = 450
            Height = 19
            Hint = 'Informa'#231#245'es a serem impressas no DANFE.'
            DataField = 'DANFE_Email'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 23
            OnEnter = EdSerieEnter
          end
          object DBEdit16: TDBEdit
            Left = 423
            Top = 424
            Width = 354
            Height = 19
            Hint = 'Informa'#231#245'es a serem impressas no DANFE.'
            DataField = 'DANFE_Site'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 25
            OnEnter = EdSerieEnter
          end
          object DBEdit17: TDBEdit
            Left = 423
            Top = 237
            Width = 450
            Height = 19
            DataField = 'DANFE_PathPDF'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
            OnEnter = EdSerieEnter
          end
          object CmbFormaEmissao: TRxDBComboBox
            Left = 276
            Top = 32
            Width = 122
            Height = 23
            Hint = 
              '1 - Normal - emiss'#227'o normal;'#13#10'2 - (N'#227'o suportado pelo aplicativo' +
              ') Conting'#234'ncia FS - emiss'#227'o em conting'#234'ncia com impress'#227'o do DAN' +
              'FE em Formul'#225'rio de Seguran'#231'a;'#13#10'3 - Conting'#234'ncia SCAN - emiss'#227'o ' +
              'em conting'#234'ncia no Sistema de Conting'#234'ncia do Ambiente Nacional ' +
              '- SCAN;'#13#10'4 - (N'#227'o suportado pelo aplicativo) Conting'#234'ncia DPEC -' +
              ' emiss'#227'o em conting'#234'ncia com envio da Declara'#231#227'o Pr'#233'via de Emiss' +
              #227'o em Conting'#234'ncia - DPEC;'#13#10'5 - Conting'#234'ncia FS-DA - emiss'#227'o em ' +
              'conting'#234'ncia com impress'#227'o do DANFE em Formul'#225'rio de Seguran'#231'a p' +
              'ara Impress'#227'o de Documento Auxiliar de Documento Fiscal Eletr'#244'ni' +
              'co (FS-DA).'
            Ctl3D = False
            DataField = 'Cfg_Geral_FormaEmissao'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Items.Strings = (
              'Normal'
              'Contingencia FS'
              'SCAN'
              'DPEC'
              'FSDA'
              'SVCAN'
              'SVCRS'
              'SVCSP'
              'OffLine')
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8')
            OnClick = CmbFormaEmissaoClick
            OnEnter = EdSerieEnter
          end
          object cmbFinNFe: TRxDBComboBox
            Left = 404
            Top = 32
            Width = 97
            Height = 23
            Hint = '1 - NF-e normal    2 - NF-e complementar    3 - NF-e de ajuste'
            Ctl3D = False
            DataField = 'Cfg_Geral_finNFe'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Items.Strings = (
              'Normal'
              'Complementar'
              'Ajuste'
              'Resumo')
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            Values.Strings = (
              '0'
              '1'
              '2'
              '3')
            OnEnter = EdSerieEnter
          end
          object cmbTpImp: TRxDBComboBox
            Left = 507
            Top = 32
            Width = 96
            Height = 23
            Hint = 'Formato de impress'#227'o do DANFE:'#13#10'1 - Retrato    2 - Paisagem'
            Ctl3D = False
            DataField = 'Cfg_Geral_tpImp'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Items.Strings = (
              'SemGeracao'
              'Retrato'
              'Paisagem'
              'Simplificado'
              'NFCe'
              'Resumido'
              'MsgEletronica')
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5'
              '6')
            OnEnter = EdSerieEnter
          end
          object RxDBComboBox1: TRxDBComboBox
            Left = 610
            Top = 32
            Width = 124
            Height = 23
            Hint = '1 - Homologa'#231#227'o (para testes) 2 - Produ'#231#227'o'
            Ctl3D = False
            DataField = 'Cfg_WebServ_Ambiente'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Items.Strings = (
              'Homologa'#231#227'o'
              'Produ'#231#227'o')
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
            Values.Strings = (
              '1'
              '0')
            OnEnter = EdSerieEnter
          end
          object GroupBox37: TGroupBox
            Left = 236
            Top = 198
            Width = 181
            Height = 227
            TabOrder = 13
            object DBCheckBox3: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 16
              Width = 176
              Height = 12
              Hint = 
                'Quando marcado, grava os arquivos dentro de pastas com o formato' +
                ' AAAAMM (por ex.: 201206)'
              Margins.Left = 2
              Margins.Top = 0
              Margins.Right = 1
              Align = alTop
              Caption = 'Gerar Pasta Mensal'
              DataField = 'Cfg_Arq_PastaMensal'
              DataSource = DM_NFE.DSCfg
              TabOrder = 0
            end
            object DBCheckBox1: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 31
              Width = 176
              Height = 12
              Hint = 'Grava os arquivos de envio e resposta no path NF-e'
              Margins.Left = 2
              Margins.Top = 0
              Margins.Right = 1
              Align = alTop
              Caption = 'Salvar Arq. de Envio e Resp.'
              DataField = 'Cfg_Geral_Salvar'
              DataSource = DM_NFE.DSCfg
              TabOrder = 1
            end
            object DBCheckBox2: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 61
              Width = 176
              Height = 12
              Margins.Left = 2
              Margins.Top = 0
              Margins.Right = 1
              Align = alTop
              Caption = 'Imprimir Desc. Proporcional'
              DataField = 'DANFE_ImprimirDescPorc'
              DataSource = DM_NFE.DSCfg
              TabOrder = 3
            end
            object DBCheckBox4: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 46
              Width = 176
              Height = 12
              Hint = 
                'Exibe o retorno em caixa de texto das opera'#231#245'es com a NF-e (padr' +
                #227'o desmarcado)'
              Margins.Left = 2
              Margins.Top = 0
              Margins.Right = 1
              Align = alTop
              Caption = 'Visualizar'
              DataField = 'Cfg_WebServ_Visualizar'
              DataSource = DM_NFE.DSCfg
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object DBCheckBox5: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 76
              Width = 176
              Height = 12
              Margins.Left = 2
              Margins.Top = 0
              Margins.Right = 1
              Align = alTop
              Caption = 'Imprimir Detal. espec'#237'fico'
              DataField = 'DANFE_ImprimirDetalEspec'
              DataSource = DM_NFE.DSCfg
              TabOrder = 4
            end
            object DBCheckBox6: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 91
              Width = 176
              Height = 12
              Margins.Left = 2
              Margins.Top = 0
              Margins.Right = 1
              Align = alTop
              Caption = 'Imprimir Total L'#237'quido'
              DataField = 'DANFE_ImprimirTotalLiq'
              DataSource = DM_NFE.DSCfg
              TabOrder = 5
            end
            object DBCheckBox7: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 106
              Width = 176
              Height = 12
              Hint = 'Mostra o DANFE na tela'
              Margins.Left = 2
              Margins.Top = 0
              Margins.Right = 1
              Align = alTop
              Caption = 'Mostrar Preview'
              DataField = 'DANFE_MostrarPreview'
              DataSource = DM_NFE.DSCfg
              TabOrder = 6
            end
            object DBCheckBox8: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 121
              Width = 176
              Height = 12
              Margins.Left = 2
              Margins.Top = 0
              Margins.Right = 1
              Align = alTop
              Caption = 'MostrarStatus'
              DataField = 'DANFE_MostrarStatus'
              DataSource = DM_NFE.DSCfg
              TabOrder = 7
            end
            object DBEdit159: TDBEdit
              Left = 136
              Top = 145
              Width = 30
              Height = 21
              Hint = 'Tamanho da fonte no DANFE'
              DataField = 'DANFE_TamFonte_DemaisCampos'
              DataSource = DM_NFE.DSCfg
              TabOrder = 8
            end
            object DBEdit160: TDBEdit
              Left = 136
              Top = 171
              Width = 30
              Height = 21
              Hint = 'Quantidade de casas decimais'
              DataField = 'DANFE_CasasDecimais_qCom'
              DataSource = DM_NFE.DSCfg
              TabOrder = 9
            end
            object DBEdit161: TDBEdit
              Left = 136
              Top = 197
              Width = 30
              Height = 21
              Hint = 'Quantidade de casas decimais'
              DataField = 'DANFE_CasasDecimais_vUnCom'
              DataSource = DM_NFE.DSCfg
              TabOrder = 12
            end
            object Label203: TcxLabel
              Left = 63
              Top = 147
              Caption = 'Tam. Fonte'
              FocusControl = DBEdit159
              Transparent = True
            end
            object Label204: TcxLabel
              Left = 8
              Top = 172
              Caption = 'N'#186' Casas Dec. Quant.'
              FocusControl = DBEdit160
              Transparent = True
            end
            object Label205: TcxLabel
              Left = 8
              Top = 198
              Caption = 'N'#186' Casas Dec. V.Unit.'
              FocusControl = DBEdit161
              Transparent = True
            end
          end
          object btnAtualizar: TcxButton
            Left = 740
            Top = 20
            Width = 62
            Height = 42
            Caption = 'RESETAR'
            TabOrder = 0
            WordWrap = True
            OnClick = btnAtualizarClick
          end
          object btnGravarCfg: TcxButton
            Left = 783
            Top = 407
            Width = 90
            Height = 36
            Caption = 'GRAVAR ALTERA'#199#213'ES'
            TabOrder = 24
            WordWrap = True
            OnClick = btnGravarCfgClick
          end
          object btnFEmissao: TcxButton
            Left = 13
            Top = 402
            Width = 217
            Height = 23
            Caption = 'FORMAS DE EMISS'#195'O'
            TabOrder = 51
            WordWrap = True
            OnClick = btnFEmissaoClick
          end
          object cxButton6: TcxButton
            Left = 811
            Top = 20
            Width = 62
            Height = 42
            Caption = 'CFG'
            TabOrder = 1
            WordWrap = True
            OnClick = cxButton6Click
          end
          object Label1: TcxLabel
            Left = 12
            Top = 13
            Caption = 'N'#186' CERTIFICADO DIGITAL'
            FocusControl = DBEdit1
            Transparent = True
          end
          object Label2: TcxLabel
            Left = 276
            Top = 13
            Caption = 'FORMA DE EMISS'#195'O'
            Transparent = True
          end
          object Label3: TcxLabel
            Left = 404
            Top = 13
            Caption = 'FINALID.  NF-e'
            Transparent = True
          end
          object Label4: TcxLabel
            Left = 507
            Top = 13
            Caption = 'TIPO DE IMPR.'
            Transparent = True
          end
          object Label5: TcxLabel
            Left = 12
            Top = 66
            Caption = 'PATH SALVAR'
            FocusControl = DBEdit2
            Transparent = True
          end
          object Label6: TcxLabel
            Left = 12
            Top = 105
            Caption = 'PATH SCHEMAS'
            FocusControl = DBEdit3
            Transparent = True
          end
          object Label7: TcxLabel
            Left = 12
            Top = 146
            Caption = 'PATH LOGS'
            FocusControl = DBEdit4
            Transparent = True
          end
          object Label8: TcxLabel
            Left = 12
            Top = 207
            Caption = 'PROXY HOST'
            FocusControl = DBEdit5
            Transparent = True
          end
          object Label9: TcxLabel
            Left = 12
            Top = 247
            Caption = 'PROXY PORTA'
            FocusControl = DBEdit6
            Transparent = True
          end
          object Label10: TcxLabel
            Left = 123
            Top = 207
            Caption = 'PROXY USER'
            FocusControl = DBEdit7
            Transparent = True
          end
          object Label11: TcxLabel
            Left = 123
            Top = 247
            Caption = 'PROXY SENHA'
            FocusControl = DBEdit8
            Transparent = True
          end
          object Label12: TcxLabel
            Left = 423
            Top = 66
            Caption = 'PATH ARQUIVOS NF-e'
            FocusControl = DBEdit9
            Transparent = True
          end
          object Label13: TcxLabel
            Left = 423
            Top = 105
            Caption = 'PATH ARQUIVOS CANC.'
            FocusControl = DBEdit10
            Transparent = True
          end
          object Label14: TcxLabel
            Left = 423
            Top = 146
            Caption = 'PATH ARQUIVOS DPEC'
            FocusControl = DBEdit11
            Transparent = True
          end
          object Label15: TcxLabel
            Left = 423
            Top = 183
            Caption = 'PATH ARQUIVOS INUT.'
            FocusControl = DBEdit12
            Transparent = True
          end
          object Label16: TcxLabel
            Left = 423
            Top = 256
            Caption = 'ARQUIVO DE LOGOMARCA (bmp m'#225'x 200 x 200 px)'
            FocusControl = DBEdit13
            Transparent = True
          end
          object Label18: TcxLabel
            Left = 423
            Top = 293
            Caption = 'ARQUIVO DE LAYOUT DE IMPRESS'#195'O (NF-e)'
            FocusControl = DBEdit14
            Transparent = True
          end
          object Label19: TcxLabel
            Left = 423
            Top = 365
            Caption = 'EMAIL DO EMITENTE A SER IMPRESSO NO DANFE'
            FocusControl = DBEdit15
            Transparent = True
          end
          object Label20: TcxLabel
            Left = 423
            Top = 405
            Caption = 'ENDERE'#199'O WEB DO EMITENTE A SER IMPRESSO NO DANFE'
            FocusControl = DBEdit16
            Transparent = True
          end
          object Label21: TcxLabel
            Left = 423
            Top = 219
            Caption = 'PATH ARQUIVOS PDF'
            FocusControl = DBEdit17
            Transparent = True
          end
          object Label22: TcxLabel
            Left = 12
            Top = 334
            Caption = 'SEQ. CHAVE NF-e'
            Transparent = True
          end
          object Label23: TcxLabel
            Left = 15
            Top = 349
            Caption = 'N'#186' da PR'#211'X. NF-e'
            Transparent = True
          end
          object Label17: TcxLabel
            Left = 610
            Top = 13
            Caption = 'AMBIENTE'
            Transparent = True
          end
          object Label99: TcxLabel
            Left = 26
            Top = 365
            Caption = 'S'#201'RIE DA NF-e'
            Transparent = True
          end
          object Label234: TcxLabel
            Left = 43
            Top = 381
            Caption = 'PR'#211'X. LOTE'
            Transparent = True
          end
          object DBEdit22: TDBEdit
            Left = 423
            Top = 347
            Width = 450
            Height = 19
            Hint = 'Path do arquivo do layout do DANFE.'
            DataField = 'DANFE_FastFile_Events'
            DataSource = DM_NFE.DSCfg
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 22
            OnEnter = EdSerieEnter
          end
          object cxLabel7: TcxLabel
            Left = 423
            Top = 329
            Caption = 'ARQUIVO DE LAYOUT DE IMPRESS'#195'O (eventos)'
            FocusControl = DBEdit22
            Transparent = True
          end
        end
        object TabCfgCalc: TTabSheet
          Caption = 'CONFIGURA'#199#213'ES DOS C'#193'LCULOS'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox20: TGroupBox
            Left = 12
            Top = 28
            Width = 237
            Height = 146
            Caption = 'C'#193'LCULO DO ICMS'
            TabOrder = 0
            object cb_icms_frete: TCheckBox
              Left = 8
              Top = 22
              Width = 97
              Height = 17
              Caption = 'Incluir Frete'
              Checked = True
              State = cbChecked
              TabOrder = 0
            end
            object cb_icms_desc: TCheckBox
              Left = 8
              Top = 76
              Width = 104
              Height = 17
              Caption = 'Abater Desconto'
              Checked = True
              State = cbChecked
              TabOrder = 3
            end
            object cb_icms_seg: TCheckBox
              Left = 8
              Top = 40
              Width = 97
              Height = 17
              Caption = 'Incluir Seguro'
              Checked = True
              State = cbChecked
              TabOrder = 1
            end
            object cb_icms_oda: TCheckBox
              Left = 8
              Top = 58
              Width = 97
              Height = 17
              Caption = 'Incluir O.D.A'
              TabOrder = 2
            end
            object cb_icms_desc_devol: TCheckBox
              Left = 8
              Top = 94
              Width = 193
              Height = 17
              Caption = 'Destacar ICMS Devolu'#231#227'o (SN)'
              Checked = True
              State = cbChecked
              TabOrder = 4
            end
            object cb_icms_dest: TCheckBox
              Left = 8
              Top = 112
              Width = 193
              Height = 17
              Caption = 'Destacar ICMS Outras Oper. (SN)'
              TabOrder = 5
            end
          end
          object GroupBox21: TGroupBox
            Left = 12
            Top = 180
            Width = 237
            Height = 140
            Caption = 'C'#193'LCULO DO ICMS S.T.'
            TabOrder = 1
            object cb_icms_st_frete: TCheckBox
              Left = 8
              Top = 22
              Width = 97
              Height = 17
              Caption = 'Incluir Frete'
              Checked = True
              State = cbChecked
              TabOrder = 0
            end
            object cb_icms_st_desc: TCheckBox
              Left = 8
              Top = 76
              Width = 104
              Height = 17
              Caption = 'Abater Desconto'
              Checked = True
              State = cbChecked
              TabOrder = 3
            end
            object cb_icms_st_seg: TCheckBox
              Left = 8
              Top = 40
              Width = 97
              Height = 17
              Caption = 'Incluir Seguro'
              Checked = True
              State = cbChecked
              TabOrder = 1
            end
            object cb_icms_st_oda: TCheckBox
              Left = 8
              Top = 58
              Width = 97
              Height = 17
              Caption = 'Incluir O.D.A'
              TabOrder = 2
            end
            object cb_icms_st_ipi: TCheckBox
              Left = 8
              Top = 94
              Width = 104
              Height = 17
              Caption = 'Incluir IPI'
              Checked = True
              State = cbChecked
              TabOrder = 4
            end
            object cbSublimite: TCheckBox
              Left = 8
              Top = 112
              Width = 225
              Height = 17
              Caption = 'Simples Nacion. Sublimite estrapolado'
              Checked = True
              State = cbChecked
              TabOrder = 5
            end
          end
        end
        object TabCfgEmail: TTabSheet
          Caption = 'CONFIGURA'#199#195'O DA CONTA DE E-MAIL'
          ImageIndex = 3
          object GroupBox43: TGroupBox
            Left = 248
            Top = 5
            Width = 451
            Height = 439
            Color = clBtnFace
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            object Shape17: TShape
              Left = 1
              Top = 16
              Width = 449
              Height = 422
              Align = alClient
              Brush.Color = clBtnFace
              ExplicitLeft = 3
              ExplicitTop = 23
              ExplicitWidth = 447
              ExplicitHeight = 420
            end
            object edtSmtpHost: TEdit
              Left = 97
              Top = 85
              Width = 193
              Height = 21
              TabOrder = 1
              Text = 'smtp.googlemail.com'
            end
            object edtSmtpPort: TEdit
              Left = 295
              Top = 85
              Width = 51
              Height = 21
              TabOrder = 2
              Text = '587'
            end
            object edtSmtpUser: TEdit
              Left = 97
              Top = 125
              Width = 120
              Height = 21
              TabOrder = 3
            end
            object edtSmtpPass: TEdit
              Left = 226
              Top = 125
              Width = 120
              Height = 21
              PasswordChar = '*'
              TabOrder = 4
            end
            object edtEmailAssunto: TEdit
              Left = 9
              Top = 234
              Width = 436
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 6
            end
            object mmEmailMsg: TMemo
              Left = 9
              Top = 271
              Width = 436
              Height = 112
              TabOrder = 7
            end
            object EdtEmail: TEdit
              Left = 9
              Top = 40
              Width = 432
              Height = 21
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
            end
            object rgAutenticacao_email: TRadioGroup
              Left = 97
              Top = 154
              Width = 248
              Height = 61
              Caption = 'Autentica'#231#227'o'
              Columns = 2
              ItemIndex = 3
              Items.Strings = (
                'Nenhuma'
                'SSL'
                'Padr'#227'o'
                'TLS')
              TabOrder = 5
            end
            object btnTestar_email: TcxButton
              Left = 160
              Top = 391
              Width = 122
              Height = 32
              Caption = 'Teste'
              TabOrder = 15
              OnClick = btnTestar_emailClick
            end
            object Label239: TcxLabel
              Left = 97
              Top = 68
              Caption = 'Servidor SMTP'
              Transparent = True
            end
            object Label240: TcxLabel
              Left = 295
              Top = 68
              Caption = 'Porta'
              Transparent = True
            end
            object Label241: TcxLabel
              Left = 97
              Top = 109
              Caption = 'Usu'#225'rio'
              Transparent = True
            end
            object Label242: TcxLabel
              Left = 226
              Top = 109
              Caption = 'Senha'
              Transparent = True
            end
            object Label243: TcxLabel
              Left = 9
              Top = 217
              Caption = 'Assunto do email enviado'
              Transparent = True
            end
            object Label244: TcxLabel
              Left = 9
              Top = 255
              Caption = 'Mensagem do Email'
              Transparent = True
            end
            object Label245: TcxLabel
              Left = 9
              Top = 23
              Caption = 'Conta de e-mail'
              Transparent = True
            end
          end
        end
      end
    end
    object TabDados: TTabSheet
      Tag = 2
      Caption = 'DADOS DA NF-e'
      object PGNF: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 915
        Height = 483
        ActivePage = TabDadosNFe
        Align = alClient
        DoubleBuffered = False
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = False
        Style = tsButtons
        TabOrder = 0
        OnChanging = PGNFChanging
        object TabDadosNFe: TTabSheet
          Caption = 'NF-e'
          DoubleBuffered = False
          ParentDoubleBuffered = False
          DesignSize = (
            907
            450)
          object Shape1: TShape
            Left = 0
            Top = 0
            Width = 907
            Height = 450
            Align = alClient
            Brush.Color = clBtnFace
            ExplicitTop = 5
          end
          object DBEdit37: TDBEdit
            Left = 212
            Top = 156
            Width = 58
            Height = 21
            Hint = 'Modelo da Nota (Sempre 55)'
            DataField = 'Ide_modelo'
            DataSource = DM_NFE.DSNF
            ReadOnly = True
            TabOrder = 9
            OnEnter = EdSerieEnter
          end
          object DBEdit38: TDBEdit
            Left = 276
            Top = 156
            Width = 45
            Height = 21
            Hint = 'Este campo n'#227'o '#233' edit'#225'vel'
            DataField = 'Ide_serie'
            DataSource = DM_NFE.DSNF
            ReadOnly = True
            TabOrder = 10
            OnEnter = EdSerieEnter
          end
          object DBEdit39: TDBEdit
            Left = 327
            Top = 156
            Width = 154
            Height = 21
            Hint = 'Somente altere este campo se souber o que est'#225' fazendo'
            DataField = 'Ide_nNF'
            DataSource = DM_NFE.DSNF
            TabOrder = 11
            OnEnter = EdSerieEnter
          end
          object DBEdit40: TDBEdit
            Left = 489
            Top = 156
            Width = 161
            Height = 21
            Hint = 'Data de emiss'#227'o (sempre a data atual)'
            DataField = 'Ide_dEmi'
            DataSource = DM_NFE.DSNF
            TabOrder = 12
            OnEnter = EdSerieEnter
          end
          object DBEdit41: TDBEdit
            Left = 653
            Top = 156
            Width = 168
            Height = 21
            Hint = 
              'Informe a data de sa'#237'da/entrada (obrigat'#243'rio em algumas UF) - Se' +
              'r'#225' atualizada durante a emiss'#227'o.'
            DataField = 'Ide_dSaiEnt'
            DataSource = DM_NFE.DSNF
            TabOrder = 13
            OnEnter = EdSerieEnter
          end
          object DBEdit46: TDBEdit
            Left = 717
            Top = 68
            Width = 72
            Height = 21
            Hint = 'Este campo n'#227'o '#233' edit'#225'vel'
            TabStop = False
            Color = 14216171
            DataField = 'Ide_verProc'
            DataSource = DM_NFE.DSNF
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            OnEnter = EdSerieEnter
          end
          object gpCont: TGroupBox
            Left = 53
            Top = 261
            Width = 791
            Height = 72
            Color = clBtnFace
            ParentBackground = False
            ParentColor = False
            TabOrder = 16
            Visible = False
            object Shape20: TShape
              Left = 1
              Top = 16
              Width = 789
              Height = 55
              Align = alClient
              Pen.Width = 3
              ExplicitLeft = -1
              ExplicitTop = 0
              ExplicitWidth = 881
              ExplicitHeight = 255
            end
            object DBEdit50: TDBEdit
              Left = 12
              Top = 41
              Width = 765
              Height = 21
              Hint = 'Informar a Justificativa da entrada em contig'#234'ncia.'
              Color = 8454143
              DataField = 'Ide_xJust'
              DataSource = DM_NFE.DSNF
              TabOrder = 1
              OnEnter = EdSerieEnter
            end
            object Label55: TcxLabel
              Left = 12
              Top = 25
              Caption = 'JUSTIFICATIVA DA ENTRADA EM CONTIG'#202'NCIA (m'#237'nimo 15 caracteres)'
              FocusControl = DBEdit50
              Transparent = True
            end
          end
          object btnLimparNF: TcxButton
            AlignWithMargins = True
            Left = 777
            Top = 404
            Width = 102
            Height = 34
            Anchors = [akRight, akBottom]
            Caption = 'LIMPAR'
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Flat = True
            TabOrder = 32
            TabStop = False
            OnClick = btnLimparNFClick
          end
          object btnImportVendas: TcxButton
            AlignWithMargins = True
            Left = 639
            Top = 403
            Width = 132
            Height = 34
            Anchors = [akRight, akBottom]
            Caption = 'IMPORTAR VENDAS'
            Enabled = False
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Flat = True
            TabOrder = 18
            TabStop = False
            OnClick = btnImportVendasClick
          end
          object bar2: TProgressBar
            Left = 639
            Top = 381
            Width = 240
            Height = 17
            BorderWidth = 1
            Smooth = True
            Style = pbstMarquee
            MarqueeInterval = 1
            BarColor = 33023
            BackgroundColor = clMaroon
            SmoothReverse = True
            TabOrder = 17
            Visible = False
          end
          object btnAlterarNatOp: TcxButton
            Left = 823
            Top = 110
            Width = 19
            Height = 23
            Hint = 
              'Informe a Natureza da Opera'#231#227'o ou clique no bot'#227'o ao lado para p' +
              'esquisar'
            Caption = '>'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            TabStop = False
            OnClick = btnAlterarNatOpClick
          end
          object Label40: TcxLabel
            Left = 53
            Top = 92
            Caption = 'NATUREZA DE OPERA'#199#195'O'
            Transparent = True
          end
          object Label41: TcxLabel
            Left = 53
            Top = 137
            Caption = 'F. PAGTO'
            Transparent = True
          end
          object Label42: TcxLabel
            Left = 212
            Top = 137
            Caption = 'MODELO'
            FocusControl = DBEdit37
            Transparent = True
          end
          object Label43: TcxLabel
            Left = 276
            Top = 137
            Caption = 'S'#201'RIE'
            FocusControl = DBEdit38
            Transparent = True
          end
          object Label44: TcxLabel
            Left = 327
            Top = 137
            Caption = 'N'#186' NF'
            FocusControl = DBEdit39
            Transparent = True
          end
          object Label45: TcxLabel
            Left = 487
            Top = 137
            Caption = 'DATA EMISS'#195'O'
            FocusControl = DBEdit40
            Transparent = True
          end
          object Label46: TcxLabel
            Left = 653
            Top = 137
            Hint = 'Data de Entrada/Sa'#237'da (normalmente a mesma da emiss'#227'o'
            Caption = 'DT. SA'#205'DA/ENTR.'
            FocusControl = DBEdit41
            Transparent = True
          end
          object Label48: TcxLabel
            Left = 53
            Top = 47
            Caption = 'TIPO NOTA'
            Transparent = True
          end
          object Label49: TcxLabel
            Left = 253
            Top = 47
            Caption = 'FORMA DE EMISS'#195'O'
            Transparent = True
          end
          object Label50: TcxLabel
            Left = 413
            Top = 47
            Caption = 'AMBIENTE'
            Transparent = True
          end
          object Label51: TcxLabel
            Left = 717
            Top = 47
            Caption = 'VERS'#195'O APL.'
            FocusControl = DBEdit46
            Transparent = True
          end
          object Label52: TcxLabel
            Left = 795
            Top = 47
            Caption = 'UF'
            Transparent = True
          end
          object Label54: TcxLabel
            Left = 572
            Top = 47
            Caption = 'FINALIDADE'
            Transparent = True
          end
          object DBEdit18: TDBEdit
            Left = 53
            Top = 111
            Width = 768
            Height = 21
            Hint = 
              'Informe a Natureza da Opera'#231#227'o ou clique no bot'#227'o ao lado para p' +
              'esquisar'
            CharCase = ecUpperCase
            DataField = 'Ide_natOp'
            DataSource = DM_NFE.DSNF
            TabOrder = 6
            OnEnter = EdSerieEnter
          end
          object cmbIdeTpNF: TcxDBImageComboBox
            Left = 53
            Top = 68
            Hint = 'Escolha entre:'#13#10'0 - entrada  1 - sa'#237'da'
            DataBinding.DataField = 'Ide_tpNF'
            DataBinding.DataSource = DM_NFE.DSNF
            ParentShowHint = False
            Properties.Items = <
              item
                Description = 'ENTRADA'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'SA'#205'DA'
                Value = 1
              end>
            ShowHint = True
            TabOrder = 0
            OnClick = cmbIdeTpNFClick
            OnEnter = cmbIdeTpNFEnter
            Width = 181
          end
          object cmb_Ide_tpemis: TcxDBImageComboBox
            Left = 253
            Top = 68
            DataBinding.DataField = 'Ide_tpEmis'
            DataBinding.DataSource = DM_NFE.DSNF
            ParentShowHint = False
            Properties.Items = <>
            ShowHint = True
            TabOrder = 1
            OnClick = cmb_Ide_tpemisClick
            OnEnter = cmbIdeTpNFEnter
            Width = 154
          end
          object CMBIde_tpAmb: TcxDBImageComboBox
            Left = 413
            Top = 68
            Hint = 'Este campo n'#227'o '#233' edit'#225'vel'
            DataBinding.DataField = 'Ide_tpAmb'
            DataBinding.DataSource = DM_NFE.DSNF
            ParentShowHint = False
            Properties.Items = <
              item
                Description = 'HOMOLOGA'#199#195'O'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'PRODU'#199#195'O'
                Value = 0
              end>
            ShowHint = True
            TabOrder = 2
            OnEnter = cmbIdeTpNFEnter
            Width = 154
          end
          object cmbIde_finNFe: TcxDBImageComboBox
            Left = 572
            Top = 68
            DataBinding.DataField = 'Ide_finNFe'
            DataBinding.DataSource = DM_NFE.DSNF
            ParentShowHint = False
            Properties.Items = <>
            ShowHint = True
            TabOrder = 3
            OnEnter = cmbIdeTpNFEnter
            Width = 139
          end
          object cmb_nf_UF: TcxDBImageComboBox
            Left = 795
            Top = 68
            Hint = 'Este campo n'#227'o '#233' edit'#225'vel'
            DataBinding.DataField = 'Ide_cUF'
            DataBinding.DataSource = DM_NFE.DSNF
            ParentShowHint = False
            Properties.Items = <>
            ShowHint = True
            TabOrder = 5
            OnEnter = cmbIdeTpNFEnter
            Width = 49
          end
          object cmbIde_indPag: TcxDBImageComboBox
            Left = 52
            Top = 156
            Hint = 'Escolha a forma de pagamento.'
            DataBinding.DataField = 'Ide_indPag'
            DataBinding.DataSource = DM_NFE.DSNF
            ParentShowHint = False
            Properties.Items = <
              item
                Description = 'A VISTA'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'A PRAZO'
                Value = 1
              end
              item
                Description = 'OUTRAS'
                Value = 2
              end>
            ShowHint = True
            TabOrder = 8
            OnClick = cmbIde_indPagClick
            OnEnter = cmbIdeTpNFEnter
            Width = 154
          end
          object cxDBLabel1: TcxDBLabel
            Left = 53
            Top = 16
            DataBinding.DataField = 'Ide_nNF'
            DataBinding.DataSource = DM_NFE.DSNF
            Height = 21
            Width = 121
          end
          object cxDBLabel2: TcxDBLabel
            Left = 176
            Top = 16
            DataBinding.DataField = 'Ide_serie'
            DataBinding.DataSource = DM_NFE.DSNF
            Height = 21
            Width = 46
          end
          object cxLabel5: TcxLabel
            Left = 53
            Top = 1
            Caption = 'N'#186' NF'
            Transparent = True
          end
          object cxLabel6: TcxLabel
            Left = 177
            Top = 1
            Caption = 'S'#201'RIE'
            Transparent = True
          end
          object btnAss_Dev: TcxButton
            AlignWithMargins = True
            Left = 489
            Top = 403
            Width = 144
            Height = 34
            Anchors = [akRight, akBottom]
            Caption = 'ASSIST. PARA DEVOL.'
            Enabled = False
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Flat = True
            TabOrder = 37
            TabStop = False
            OnClick = btnAss_DevClick
          end
          object btnAss_Baixa: TcxButton
            AlignWithMargins = True
            Left = 253
            Top = 403
            Width = 218
            Height = 34
            Anchors = [akRight, akBottom]
            Caption = 'ASSIST. PARA BAIXA DE PERDAS'
            Enabled = False
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.Flat = True
            TabOrder = 38
            TabStop = False
            OnClick = btnAss_BaixaClick
          end
          object cbConsFinal: TcxDBCheckBox
            Left = 54
            Top = 214
            Hint = 'Marque se a NF for destinada ao consumidor final'
            Caption = 'Destinada a consum final'
            DataBinding.DataField = 'Ide_Cons_Final'
            DataBinding.DataSource = DM_NFE.DSNF
            ParentShowHint = False
            Properties.AllowGrayed = True
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            ShowHint = True
            TabOrder = 14
          end
          object cmbPresencial: TcxDBImageComboBox
            Left = 237
            Top = 214
            Hint = 'Escolha uma op'#231#227'o conforme a necessidade'
            DataBinding.DataField = 'Ide_Presencial'
            DataBinding.DataSource = DM_NFE.DSNF
            ParentShowHint = False
            Properties.Items = <
              item
                Description = '0-N'#227'o se aplica (ex.: Nota Fiscal complementar ou de ajuste)'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = '1-Opera'#231#227'o Presencial'
                Tag = 1
                Value = 1
              end
              item
                Description = '2-N'#227'o presencial, internet'
                Tag = 2
                Value = 2
              end
              item
                Description = '3-N'#227'o presencial, tele-atendimento'
                Tag = 3
                Value = 3
              end
              item
                Description = '4-NFC-e entrega '
                Tag = 4
                Value = 4
              end
              item
                Description = '9-N'#227'o presencial, outros'
                Tag = 5
                Value = 5
              end>
            ShowHint = True
            TabOrder = 15
            OnClick = cmbIde_indPagClick
            OnEnter = cmbIdeTpNFEnter
            OnExit = cmbPresencialExit
            Width = 451
          end
          object cxLabel8: TcxLabel
            Left = 237
            Top = 195
            Caption = 'DESTINATARIO PRESENTE NO ESTABELECIMENTO'
            Transparent = True
          end
        end
        object TabDadosRef: TTabSheet
          Caption = 'NOTAS FISCAIS REFERENCIADAS'
          ImageIndex = 1
          object GroupBox2: TGroupBox
            Left = 3
            Top = 113
            Width = 530
            Height = 66
            Caption = '   Nota Fiscal Eletr'#244'nica (NF-e)   '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            object DBEdit51: TDBEdit
              Left = 5
              Top = 33
              Width = 521
              Height = 21
              Hint = 
                '44 d'#237'gitos da Chave de Acess Referenciar uma Nota Fiscal Eletr'#244'n' +
                'ica emitida anteriormente, vinculada a NF-e atual. Esta informa'#231 +
                #227'o ser'#225' utilizada nas hip'#243'teses previstas na legisla'#231#227'o. (Ex.: D' +
                'evolu'#231#227'o de Mercadorias, Substitui'#231#227'o de NF cancelada, Complemen' +
                'ta'#231#227'o de NF, etc.)'
              DataField = 'refNFe'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 1
              OnEnter = EdSerieEnter
            end
            object Label56: TcxLabel
              Left = 5
              Top = 17
              Caption = 'CHAVE DA NF-e'
              FocusControl = DBEdit51
              ParentFont = False
              Transparent = True
            end
          end
          object GroupBox3: TGroupBox
            Left = 536
            Top = 113
            Width = 369
            Height = 134
            Caption = '   NOTA FISCAL MODELO 1 OU 1-A   '
            ParentBackground = False
            TabOrder = 2
            object DBEdit53: TDBEdit
              Left = 148
              Top = 51
              Width = 79
              Height = 21
              Hint = 
                'Data no formato: AAMM onde MM '#233' o m'#234's com 2 d'#237'gitos e AA '#233' o ano' +
                ' com 2 d'#237'gitos'#13#10'Exemplo: 1201 (01/2014)'
              CharCase = ecUpperCase
              DataField = 'RefNF_AAMM'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 2
              OnEnter = EdSerieEnter
            end
            object DBEdit54: TDBEdit
              Left = 147
              Top = 78
              Width = 192
              Height = 21
              Hint = 'O CNPJ emitente da Nota Fiscal'
              DataField = 'RefNF_CNPJ'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 3
              OnEnter = EdSerieEnter
            end
            object DBEdit55: TDBEdit
              Left = 148
              Top = 106
              Width = 54
              Height = 21
              Hint = 'C'#243'digo do modelo do Documento fiscal: 01 - modelo 01'
              DataField = 'RefNF_modelo'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 4
              OnEnter = EdSerieEnter
            end
            object DBEdit56: TDBEdit
              Left = 273
              Top = 106
              Width = 66
              Height = 21
              Hint = 'Informar zero se inexistente'
              DataField = 'RefNF_serie'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 9
              OnEnter = EdSerieEnter
            end
            object DBEdit57: TDBEdit
              Left = 262
              Top = 22
              Width = 78
              Height = 21
              Hint = 'Informar o n'#250'mero da NF Modelo 1 ou 1-A'
              DataField = 'RefNF_nNF'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 0
              OnEnter = EdSerieEnter
            end
            object Label57: TcxLabel
              Left = 128
              Top = 25
              Caption = 'UF'
              ParentFont = False
              Transparent = True
            end
            object Label58: TcxLabel
              Left = 8
              Top = 52
              Caption = 'ANO-M'#202'S DE EMISSAO'
              FocusControl = DBEdit53
              ParentFont = False
              Transparent = True
            end
            object Label59: TcxLabel
              Left = 88
              Top = 80
              Caption = 'CNPJ/CPF'
              FocusControl = DBEdit54
              ParentFont = False
              Transparent = True
            end
            object Label60: TcxLabel
              Left = 93
              Top = 108
              Caption = 'MODELO'
              FocusControl = DBEdit55
              ParentFont = False
              Transparent = True
            end
            object Label61: TcxLabel
              Left = 233
              Top = 108
              Caption = 'S'#201'RIE'
              FocusControl = DBEdit56
              ParentFont = False
              Transparent = True
            end
            object Label62: TcxLabel
              Left = 211
              Top = 25
              Caption = 'N'#186' DA NF'
              FocusControl = DBEdit57
              ParentFont = False
              Transparent = True
            end
            object cmbUF1: TcxDBImageComboBox
              Left = 148
              Top = 22
              Hint = 'Informe a UF'
              DataBinding.DataField = 'RefNF_cUF'
              DataBinding.DataSource = DM_NFE.DSNF_Referenciada
              ParentShowHint = False
              Properties.Items = <
                item
                  Description = 'A VISTA'
                  ImageIndex = 0
                  Value = 0
                end
                item
                  Description = 'A PRAZO'
                  Value = 1
                end
                item
                  Description = 'OUTRAS'
                  Value = 2
                end>
              ShowHint = True
              TabOrder = 1
              OnClick = cmbIde_indPagClick
              OnEnter = EdSerieEnter
              Width = 56
            end
          end
          object GroupBox4: TGroupBox
            Left = 539
            Top = 252
            Width = 369
            Height = 162
            Caption = '   NOTA FISCAL DE PRODUTOR RURAL   '
            ParentBackground = False
            TabOrder = 5
            object DBEdit59: TDBEdit
              Left = 154
              Top = 50
              Width = 80
              Height = 21
              Hint = 
                'Data no formato: MMAA, onde MM '#233' o m'#234's com 2 d'#237'gitos e AA '#233' o an' +
                'o com 2 d'#237'gitos'#13#10'Exemplo: 1402 =  12/2014'
              DataField = 'RefNFP_AAMM'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 2
              OnEnter = EdSerieEnter
            end
            object DBEdit60: TDBEdit
              Left = 154
              Top = 77
              Width = 183
              Height = 21
              Hint = 'CPF ou CNPJ do emitente da NF de Produtor Rural'
              DataField = 'RefNFP_CNPJCPF'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 3
              OnEnter = EdSerieEnter
            end
            object DBEdit61: TDBEdit
              Left = 154
              Top = 106
              Width = 183
              Height = 21
              Hint = 
                'Informar a Inscri'#231#227'o Estadual do emitente da NF de Produtor Rura' +
                'l.'
              DataField = 'RefNFP_IE'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 4
              OnEnter = EdSerieEnter
            end
            object DBEdit62: TDBEdit
              Left = 154
              Top = 135
              Width = 65
              Height = 21
              Hint = 
                'C'#243'digo do modelo do Documento fiscal. Informar:'#13#10'04-NF de Produt' +
                'or; ou 01-NF avulsa.'
              DataField = 'RefNFP_modelo'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 5
              OnEnter = EdSerieEnter
            end
            object DBEdit63: TDBEdit
              Left = 284
              Top = 135
              Width = 55
              Height = 21
              Hint = 'Informar zero se inexistente'
              DataField = 'RefNFP_serie'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 11
              OnEnter = EdSerieEnter
            end
            object DBEdit64: TDBEdit
              Left = 264
              Top = 21
              Width = 76
              Height = 21
              DataField = 'RefNFP_nNF'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 0
              OnEnter = EdSerieEnter
            end
            object Label63: TcxLabel
              Left = 136
              Top = 25
              Caption = 'UF'
              ParentFont = False
              Transparent = True
            end
            object Label64: TcxLabel
              Left = 16
              Top = 52
              Caption = 'ANO/MES DE EMISS'#195'O'
              FocusControl = DBEdit59
              ParentFont = False
              Transparent = True
            end
            object Label65: TcxLabel
              Left = 96
              Top = 80
              Caption = 'CNPJ/CPF'
              FocusControl = DBEdit60
              ParentFont = False
              Transparent = True
            end
            object Label66: TcxLabel
              Left = 47
              Top = 108
              Caption = 'INSCR. ESTADUAL'
              FocusControl = DBEdit61
              ParentFont = False
              Transparent = True
            end
            object Label67: TcxLabel
              Left = 102
              Top = 139
              Caption = 'MODELO'
              FocusControl = DBEdit62
              ParentFont = False
              Transparent = True
            end
            object Label68: TcxLabel
              Left = 243
              Top = 139
              Caption = 'S'#201'RIE'
              FocusControl = DBEdit63
              ParentFont = False
              Transparent = True
            end
            object Label69: TcxLabel
              Left = 215
              Top = 25
              Caption = 'N'#186' DA NF'
              FocusControl = DBEdit64
              ParentFont = False
              Transparent = True
            end
            object cmbUF2: TcxDBImageComboBox
              Left = 154
              Top = 21
              Hint = 'Informe a UF'
              DataBinding.DataField = 'RefNFP_cUF'
              DataBinding.DataSource = DM_NFE.DSNF_Referenciada
              ParentShowHint = False
              Properties.Items = <
                item
                  Description = 'A VISTA'
                  ImageIndex = 0
                  Value = 0
                end
                item
                  Description = 'A PRAZO'
                  Value = 1
                end
                item
                  Description = 'OUTRAS'
                  Value = 2
                end>
              ShowHint = True
              TabOrder = 1
              OnClick = cmbIde_indPagClick
              OnEnter = EdSerieEnter
              Width = 56
            end
          end
          object GroupBox5: TGroupBox
            Left = 3
            Top = 251
            Width = 530
            Height = 86
            Caption = '   CUPOM FISCAL   '
            ParentBackground = False
            TabOrder = 4
            object DBEdit66: TDBEdit
              Left = 222
              Top = 20
              Width = 53
              Height = 21
              Hint = 
                'Informar o n'#250'mero de ordem sequencial do ECF que emitiu o Cupom ' +
                'Fiscal vinculado '#224' NF-e'
              DataField = 'RefECF_nECF'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 1
              OnEnter = EdSerieEnter
            end
            object DBEdit67: TDBEdit
              Left = 304
              Top = 49
              Width = 94
              Height = 21
              Hint = 
                'Informar o N'#250'mero do Contador de Ordem de Opera'#231#227'o (COO) vincula' +
                'do '#224' NF-e'
              DataField = 'RefECF_nCOO'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 7
              OnEnter = EdSerieEnter
            end
            object cmb_ref_ecf_mod: TRxDBComboBox
              Left = 104
              Top = 20
              Width = 57
              Height = 23
              Hint = 
                'C'#243'digo do modelo do Documento fiscal. Informar:'#13#10'"2B" - Quando s' +
                'e tratar de Cupom Fiscal emitido por m'#225'quina registradora (n'#227'o E' +
                'CF)    "2C" - Quando se tratar de Cupom Fiscal PDV    "2D" - Qua' +
                'ndo se tratar de Cupom Fiscal (emitido por ECF)'
              Ctl3D = False
              DataField = 'RefECF_modelo'
              DataSource = DM_NFE.DSNF_Referenciada
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              Items.Strings = (
                '2B'
                '2C'
                'D2'
                'Vazio')
              ParentCtl3D = False
              ParentFont = False
              Sorted = True
              TabOrder = 0
              TabStop = False
              Values.Strings = (
                '0'
                '1'
                '2'
                '3')
              OnEnter = EdSerieEnter
            end
            object Label70: TcxLabel
              Left = 6
              Top = 23
              Caption = 'MODELO DO ECF'
              ParentFont = False
              Transparent = True
            end
            object Label71: TcxLabel
              Left = 164
              Top = 22
              Caption = 'N'#186' DO ECF'
              FocusControl = DBEdit66
              ParentFont = False
              Transparent = True
            end
            object Label72: TcxLabel
              Left = 210
              Top = 51
              Caption = 'COO DO CUPOM'
              FocusControl = DBEdit67
              ParentFont = False
              Transparent = True
            end
            object cxLabel3: TcxLabel
              Left = 9
              Top = 51
              Caption = 'DATA DO CUPOM'
              FocusControl = DBEdit19
              ParentFont = False
              Transparent = True
            end
            object DBEdit19: TDBEdit
              Left = 105
              Top = 49
              Width = 94
              Height = 21
              Hint = 
                'Informar o N'#250'mero do Contador de Ordem de Opera'#231#227'o (COO) vincula' +
                'do '#224' NF-e'
              DataField = 'RefECF_data'
              DataSource = DM_NFE.DSNF_Referenciada
              MaxLength = 10
              TabOrder = 3
              OnEnter = EdSerieEnter
            end
            object cxLabel4: TcxLabel
              Left = 279
              Top = 22
              Caption = 'S'#201'RIE DO ECF'
              FocusControl = DBEdit21
              ParentFont = False
              Transparent = True
            end
            object DBEdit21: TDBEdit
              Left = 352
              Top = 21
              Width = 173
              Height = 21
              Hint = 
                'Informar o n'#250'mero de ordem sequencial do ECF que emitiu o Cupom ' +
                'Fiscal vinculado '#224' NF-e'
              CharCase = ecUpperCase
              DataField = 'RefECF_Serie'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 2
              OnEnter = EdSerieEnter
            end
          end
          object cxDBNavigator2: TcxDBNavigator
            AlignWithMargins = True
            Left = 3
            Top = 420
            Width = 901
            Height = 27
            Buttons.OnButtonClick = cxDBNavigator2ButtonsButtonClick
            Buttons.CustomButtons = <>
            Buttons.First.Hint = '1'#186' REGISTRO'
            Buttons.First.ImageIndex = 9
            Buttons.First.Visible = False
            Buttons.PriorPage.Visible = False
            Buttons.Prior.Hint = 'REGISTRO ANTERIOR'
            Buttons.Prior.ImageIndex = 6
            Buttons.Prior.Visible = False
            Buttons.Next.Hint = 'PR'#211'XIMO REGISTRO'
            Buttons.Next.ImageIndex = 7
            Buttons.Next.Visible = False
            Buttons.NextPage.Visible = False
            Buttons.Last.Hint = #218'LTIMO REGISTRO'
            Buttons.Last.ImageIndex = 8
            Buttons.Last.Visible = False
            Buttons.Insert.Hint = 'NOVO F5)'
            Buttons.Insert.ImageIndex = 0
            Buttons.Insert.Visible = False
            Buttons.Append.Visible = True
            Buttons.Delete.Hint = 'EXCLUIR (F6)'
            Buttons.Delete.ImageIndex = 1
            Buttons.Edit.Hint = 'ALTERAR (F7)'
            Buttons.Edit.ImageIndex = 2
            Buttons.Post.Hint = 'GRAVAR (F8)'
            Buttons.Post.ImageIndex = 3
            Buttons.Cancel.Hint = 'CANCELAR (F9)'
            Buttons.Cancel.ImageIndex = 4
            Buttons.Refresh.Visible = False
            Buttons.SaveBookmark.Visible = False
            Buttons.GotoBookmark.Visible = False
            Buttons.Filter.Visible = False
            DataSource = DM_NFE.DSNF_Referenciada
            Align = alBottom
            Ctl3D = False
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            ExplicitWidth = 900
          end
          object GrdRef: TcxGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 901
            Height = 103
            Align = alTop
            TabOrder = 0
            LevelTabs.Slants.Kind = skCutCorner
            LevelTabs.Style = 6
            object TbvRef: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.CustomizeDialog = False
              FilterBox.Visible = fvNever
              DataController.DataModeController.GridMode = True
              DataController.DataModeController.SyncMode = False
              DataController.DataSource = DM_NFE.DSNF_Referenciada
              DataController.Options = [dcoAnsiSort, dcoCaseInsensitive]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              Filtering.MRUItemsList = False
              Filtering.ColumnMRUItemsList = False
              NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
              OptionsBehavior.PostponedSynchronization = False
              OptionsBehavior.CopyCaptionsToClipboard = False
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.CopyPreviewToClipboard = False
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.InvertSelect = False
              OptionsView.NoDataToDisplayInfoText = '[[ VAZIO ]]'
              OptionsView.CellAutoHeight = True
              OptionsView.GridLineColor = clBlack
              OptionsView.GroupByBox = False
              OptionsView.GroupSummaryLayout = gslAlignWithColumns
              OptionsView.Indicator = True
              OptionsView.RowSeparatorColor = clYellow
              object TbvRefrefNFe: TcxGridDBColumn
                DataBinding.FieldName = 'refNFe'
                HeaderAlignmentHorz = taCenter
                Width = 231
              end
              object TbvRefRefNF_cUF: TcxGridDBColumn
                DataBinding.FieldName = 'RefNF_cUF'
                HeaderAlignmentHorz = taCenter
                Width = 55
              end
              object TbvRefRefNF_AAMM: TcxGridDBColumn
                DataBinding.FieldName = 'RefNF_AAMM'
                HeaderAlignmentHorz = taCenter
                Width = 64
              end
              object TbvRefRefNF_CNPJ: TcxGridDBColumn
                DataBinding.FieldName = 'RefNF_CNPJ'
                HeaderAlignmentHorz = taCenter
              end
              object TbvRefRefNF_modelo: TcxGridDBColumn
                DataBinding.FieldName = 'RefNF_modelo'
                HeaderAlignmentHorz = taCenter
                Width = 32
              end
              object TbvRefRefNF_serie: TcxGridDBColumn
                DataBinding.FieldName = 'RefNF_serie'
                HeaderAlignmentHorz = taCenter
                Width = 50
              end
              object TbvRefRefNF_nNF: TcxGridDBColumn
                DataBinding.FieldName = 'RefNF_nNF'
                HeaderAlignmentHorz = taCenter
              end
              object TbvRefRefNFP_cUF: TcxGridDBColumn
                DataBinding.FieldName = 'RefNFP_cUF'
                HeaderAlignmentHorz = taCenter
                Width = 30
              end
              object TbvRefRefNFP_AAMM: TcxGridDBColumn
                DataBinding.FieldName = 'RefNFP_AAMM'
                HeaderAlignmentHorz = taCenter
                Width = 63
              end
              object TbvRefRefNFP_CNPJCPF: TcxGridDBColumn
                DataBinding.FieldName = 'RefNFP_CNPJCPF'
                HeaderAlignmentHorz = taCenter
              end
              object TbvRefRefNFP_IE: TcxGridDBColumn
                DataBinding.FieldName = 'RefNFP_IE'
                HeaderAlignmentHorz = taCenter
              end
              object TbvRefRefNFP_modelo: TcxGridDBColumn
                DataBinding.FieldName = 'RefNFP_modelo'
                HeaderAlignmentHorz = taCenter
              end
              object TbvRefRefNFP_serie: TcxGridDBColumn
                DataBinding.FieldName = 'RefNFP_serie'
                HeaderAlignmentHorz = taCenter
              end
              object TbvRefRefNFP_nNF: TcxGridDBColumn
                DataBinding.FieldName = 'RefNFP_nNF'
                HeaderAlignmentHorz = taCenter
              end
              object TbvRefRefECF_modelo: TcxGridDBColumn
                DataBinding.FieldName = 'RefECF_modelo'
                HeaderAlignmentHorz = taCenter
              end
              object TbvRefRefECF_nECF: TcxGridDBColumn
                DataBinding.FieldName = 'RefECF_nECF'
                HeaderAlignmentHorz = taCenter
              end
              object TbvRefRefECF_nCOO: TcxGridDBColumn
                DataBinding.FieldName = 'RefECF_nCOO'
                HeaderAlignmentHorz = taCenter
              end
            end
            object LvRef: TcxGridLevel
              GridView = TbvRef
            end
          end
          object GroupBox44: TGroupBox
            Left = 3
            Top = 182
            Width = 530
            Height = 65
            Caption = '   Conhecimento de Transporte Eletr'#244'nico (CT-e)   '
            ParentBackground = False
            TabOrder = 3
            object DBEdit91: TDBEdit
              Left = 5
              Top = 33
              Width = 520
              Height = 21
              Hint = 
                '44 d'#237'gitos da Chave de Acesso'#9' Referenciar um Conhecimento de Tr' +
                'ansporte Eletr'#244'nico emitida anteriormente, vinculado a NF-e atua' +
                'l.'
              DataField = 'RefCte'
              DataSource = DM_NFE.DSNF_Referenciada
              TabOrder = 1
              OnEnter = EdSerieEnter
            end
            object Label248: TcxLabel
              Left = 5
              Top = 17
              Caption = 'CHAVE DA CT-e'
              FocusControl = DBEdit91
              ParentFont = False
              Transparent = True
            end
          end
        end
      end
    end
    object TabDest: TTabSheet
      Tag = 3
      Caption = 'DESTINAT./REMETENTE'
      ImageIndex = 2
      object GroupBox6: TGroupBox
        Left = 3
        Top = 0
        Width = 801
        Height = 208
        Caption = '   IDENTIFICA'#199#195'O   '
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        object DBEdit20: TDBEdit
          Left = 16
          Top = 32
          Width = 161
          Height = 21
          Hint = 
            'Informar a IE quando o destinat'#225'rio for contribuinte do ICMS. Se' +
            'lecionar  ISENTO quando o destinat'#225'rio for contribuinto do ICMS,' +
            ' mas n'#227'o estiver obrigado '#224' inscri'#231#227'o no cadastro de contribuint' +
            'es do ICMS. N'#227'o informar se: O destinat'#225'rio for pessoa f'#237'sica; A' +
            ' opera'#231#227'o for de importa'#231#227'o ou exporta'#231#227'o; O destinat'#225'rio n'#227'o fo' +
            'r contribuinte do ICMS. '
          DataField = 'Dest_CNPJCPF'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = EdSerieEnter
        end
        object DBEdit36: TDBEdit
          Left = 182
          Top = 32
          Width = 160
          Height = 21
          DataField = 'Dest_IE'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnEnter = EdSerieEnter
        end
        object DBEdit43: TDBEdit
          Left = 497
          Top = 32
          Width = 115
          Height = 21
          Hint = 
            'Obrigat'#243'rio nas opera'#231#245'es que se beneficiam de incentivos fiscai' +
            's existentes nas '#225'reas sob controle da SUFRAMA. A omiss'#227'o da Ins' +
            'cri'#231#227'o SUFRAMA impede o processamento da opera'#231#227'o pelo Sistema d' +
            'e Mercadoria Nacional da SUFRAMA e a libera'#231#227'o da Declara'#231#227'o de ' +
            'Ingresso, prejudicando a comprova'#231#227'o do ingresso/internamento da' +
            ' mercadoria nas '#225'reas sob controle da SUFRAMA.'
          DataField = 'Dest_ISUF'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnEnter = EdSerieEnter
        end
        object DBEdit44: TDBEdit
          Left = 16
          Top = 70
          Width = 773
          Height = 21
          DataField = 'Dest_xNome'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnEnter = EdSerieEnter
        end
        object DBEdit45: TDBEdit
          Left = 616
          Top = 32
          Width = 101
          Height = 21
          DataField = 'Dest_EnderDest_Fone'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnEnter = EdSerieEnter
        end
        object DBEdit47: TDBEdit
          Left = 722
          Top = 32
          Width = 65
          Height = 21
          DataField = 'Dest_EnderDest_CEP'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnEnter = EdSerieEnter
        end
        object DBEdit49: TDBEdit
          Left = 16
          Top = 107
          Width = 677
          Height = 21
          DataField = 'Dest_EnderDest_xLgr'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnEnter = EdSerieEnter
        end
        object DBEdit68: TDBEdit
          Left = 699
          Top = 107
          Width = 90
          Height = 21
          DataField = 'Dest_EnderDest_nro'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit69: TDBEdit
          Left = 16
          Top = 145
          Width = 441
          Height = 21
          Color = 13434879
          DataField = 'Dest_EnderDest_xCpl'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnEnter = EdSerieEnter
        end
        object DBEdit70: TDBEdit
          Left = 462
          Top = 145
          Width = 327
          Height = 21
          DataField = 'Dest_EnderDest_xBairro'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnEnter = EdSerieEnter
        end
        object cmb_dest_ender_uf: TRxDBComboBox
          Left = 17
          Top = 181
          Width = 49
          Height = 23
          Ctl3D = False
          DataField = 'Dest_EnderDest_UF'
          DataSource = DM_NFE.DSNF
          EnableValues = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Items.Strings = (
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
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
          TabStop = False
          Values.Strings = (
            '12'
            '27'
            '13'
            '16'
            '29'
            '23'
            '53'
            '32'
            '52'
            '21'
            '31'
            '50'
            '51'
            '15'
            '25'
            '26'
            '22'
            '41'
            '33'
            '24'
            '11'
            '14'
            '43'
            '42'
            '28'
            '35'
            '17')
          OnChange = cmb_dest_ender_ufChange
          OnEnter = EdSerieEnter
        end
        object cmbDest_EnderDest_cMun: TRxDBComboBox
          Left = 72
          Top = 181
          Width = 717
          Height = 23
          Ctl3D = False
          DataField = 'Dest_EnderDest_cMun'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          Sorted = True
          TabOrder = 24
          TabStop = False
          OnEnter = EdSerieEnter
        end
        object Label73: TcxLabel
          Left = 16
          Top = 16
          Caption = 'CNPJ/CPF'
          FocusControl = DBEdit20
          Transparent = True
        end
        object Label74: TcxLabel
          Left = 182
          Top = 16
          Caption = 'INSCR. ESTADUAL'
          FocusControl = DBEdit36
          Transparent = True
        end
        object Label75: TcxLabel
          Left = 497
          Top = 16
          Caption = 'SUFRAMA'
          FocusControl = DBEdit43
          Transparent = True
        end
        object Label76: TcxLabel
          Left = 16
          Top = 54
          Caption = 'RAZ'#195'O SOCIAL'
          FocusControl = DBEdit44
          Transparent = True
        end
        object Label77: TcxLabel
          Left = 616
          Top = 16
          Caption = 'FONE'
          FocusControl = DBEdit45
          Transparent = True
        end
        object Label78: TcxLabel
          Left = 722
          Top = 16
          Caption = 'CEP'
          FocusControl = DBEdit47
          Transparent = True
        end
        object Label79: TcxLabel
          Left = 16
          Top = 91
          Caption = 'LOGRADOURO'
          FocusControl = DBEdit49
          Transparent = True
        end
        object Label80: TcxLabel
          Left = 699
          Top = 90
          Caption = 'N'#186
          FocusControl = DBEdit68
          Transparent = True
        end
        object Label81: TcxLabel
          Left = 16
          Top = 129
          Caption = 'COMPLEMENTO'
          FocusControl = DBEdit69
          Transparent = True
        end
        object Label82: TcxLabel
          Left = 462
          Top = 129
          Caption = 'BAIRRO'
          FocusControl = DBEdit70
          Transparent = True
        end
        object Label83: TcxLabel
          Left = 17
          Top = 166
          Caption = 'UF'
          Transparent = True
        end
        object Label84: TcxLabel
          Left = 75
          Top = 166
          Caption = 'MUNIC'#205'PIO'
          Transparent = True
        end
        object RxDBComboBox2: TRxDBComboBox
          Left = 346
          Top = 31
          Width = 145
          Height = 23
          Ctl3D = False
          DataField = 'Dest_IndIEDest'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Items.Strings = (
            'Contribuinte'
            'Isento'
            'N'#227'o contribuinte')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            '0'
            '1'
            '2')
        end
        object cxLabel9: TcxLabel
          Left = 346
          Top = 16
          Caption = 'TIPO DE CONTRIBUINTE'
          Transparent = True
        end
      end
      object GroupBox7: TGroupBox
        Left = 3
        Top = 213
        Width = 801
        Height = 135
        Caption = '   LOCAL DE RETIRADA DE DIFERENTE DO EMITENTE   '
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 2
        object cmbRetirada_UF: TRxDBComboBox
          Left = 17
          Top = 107
          Width = 49
          Height = 23
          Hint = 
            'Preencher somente se o Local de Retirada/Entrega for diferente d' +
            'o Endere'#231'o do Emitente/Destinat'#225'rio.'#13#10'Se especificado, aplicam-s' +
            'e as obrigatoriedades de cada um dos campos'
          Ctl3D = False
          DataField = 'Retirada_UF'
          DataSource = DM_NFE.DSNF
          EnableValues = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Items.Strings = (
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
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          Values.Strings = (
            '12'
            '27'
            '13'
            '16'
            '29'
            '23'
            '53'
            '32'
            '52'
            '21'
            '31'
            '50'
            '51'
            '15'
            '25'
            '26'
            '22'
            '41'
            '33'
            '24'
            '11'
            '14'
            '43'
            '42'
            '28'
            '35'
            '17')
          OnChange = cmbRetirada_UFChange
          OnEnter = EdSerieEnter
        end
        object cmbRetirada_cMun: TRxDBComboBox
          Left = 72
          Top = 107
          Width = 717
          Height = 23
          Hint = 
            'Preencher somente se o Local de Retirada/Entrega for diferente d' +
            'o Endere'#231'o do Emitente/Destinat'#225'rio.'#13#10'Se especificado, aplicam-s' +
            'e as obrigatoriedades de cada um dos campos'
          Ctl3D = False
          DataField = 'Retirada_cMun'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          Sorted = True
          TabOrder = 13
          TabStop = False
          OnEnter = EdSerieEnter
        end
        object DBEdit71: TDBEdit
          Left = 16
          Top = 32
          Width = 161
          Height = 21
          Hint = 
            'Preencher somente se o Local de Retirada/Entrega for diferente d' +
            'o Endere'#231'o do Emitente/Destinat'#225'rio.'#13#10'Se especificado, aplicam-s' +
            'e as obrigatoriedades de cada um dos campos'
          DataField = 'Retirada_CNPJCPF'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = EdSerieEnter
        end
        object DBEdit72: TDBEdit
          Left = 179
          Top = 32
          Width = 504
          Height = 21
          Hint = 
            'Preencher somente se o Local de Retirada/Entrega for diferente d' +
            'o Endere'#231'o do Emitente/Destinat'#225'rio.'#13#10'Se especificado, aplicam-s' +
            'e as obrigatoriedades de cada um dos campos'
          DataField = 'Retirada_xLgr'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnEnter = EdSerieEnter
        end
        object DBEdit73: TDBEdit
          Left = 689
          Top = 32
          Width = 100
          Height = 21
          Hint = 
            'Preencher somente se o Local de Retirada/Entrega for diferente d' +
            'o Endere'#231'o do Emitente/Destinat'#225'rio.'#13#10'Se especificado, aplicam-s' +
            'e as obrigatoriedades de cada um dos campos'
          DataField = 'Retirada_nro'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnEnter = EdSerieEnter
        end
        object DBEdit74: TDBEdit
          Left = 16
          Top = 70
          Width = 380
          Height = 21
          Hint = 
            'Preencher somente se o Local de Retirada/Entrega for diferente d' +
            'o Endere'#231'o do Emitente/Destinat'#225'rio.'#13#10'Se especificado, aplicam-s' +
            'e as obrigatoriedades de cada um dos campos'
          Color = 13434879
          DataField = 'Retirada_xCpl'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnEnter = EdSerieEnter
        end
        object DBEdit75: TDBEdit
          Left = 399
          Top = 70
          Width = 390
          Height = 21
          Hint = 
            'Preencher somente se o Local de Retirada/Entrega for diferente d' +
            'o Endere'#231'o do Emitente/Destinat'#225'rio.'#13#10'Se especificado, aplicam-s' +
            'e as obrigatoriedades de cada um dos campos'
          DataField = 'Retirada_xBairro'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnEnter = EdSerieEnter
        end
        object Label95: TcxLabel
          Left = 17
          Top = 92
          Caption = 'UF'
          Transparent = True
        end
        object Label96: TcxLabel
          Left = 75
          Top = 92
          Caption = 'MUNIC'#205'PIO'
          Transparent = True
        end
        object Label85: TcxLabel
          Left = 16
          Top = 16
          Caption = 'CNPJ/CPF'
          FocusControl = DBEdit71
          Transparent = True
        end
        object Label86: TcxLabel
          Left = 179
          Top = 16
          Caption = 'LOGRADOURO'
          FocusControl = DBEdit72
          Transparent = True
        end
        object Label87: TcxLabel
          Left = 689
          Top = 16
          Caption = 'N'#186
          FocusControl = DBEdit73
          Transparent = True
        end
        object Label88: TcxLabel
          Left = 16
          Top = 54
          Caption = 'COMPLEMENTO'
          FocusControl = DBEdit74
          Transparent = True
        end
        object Label89: TcxLabel
          Left = 399
          Top = 54
          Caption = 'BAIRRO'
          FocusControl = DBEdit75
          Transparent = True
        end
      end
      object GroupBox8: TGroupBox
        Left = 3
        Top = 353
        Width = 801
        Height = 132
        Caption = '   LOCAL DE ENTREGA DIFERENTE DO DESTINAT'#193'RIO   '
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 3
        object cmbEntrega_UF: TRxDBComboBox
          Left = 17
          Top = 105
          Width = 49
          Height = 23
          Hint = 
            'Preencher somente se o Local de Retirada/Entrega for diferente d' +
            'o Endere'#231'o do Emitente/Destinat'#225'rio.'
          Ctl3D = False
          DataField = 'Entrega_UF'
          DataSource = DM_NFE.DSNF
          EnableValues = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Items.Strings = (
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
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          Values.Strings = (
            '12'
            '27'
            '13'
            '16'
            '29'
            '23'
            '53'
            '32'
            '52'
            '21'
            '31'
            '50'
            '51'
            '15'
            '25'
            '26'
            '22'
            '41'
            '33'
            '24'
            '11'
            '14'
            '43'
            '42'
            '28'
            '35'
            '17')
          OnChange = cmbEntrega_UFChange
          OnEnter = EdSerieEnter
        end
        object cmbEntrega_cMun: TRxDBComboBox
          Left = 72
          Top = 105
          Width = 717
          Height = 23
          Hint = 
            'Preencher somente se o Local de Retirada/Entrega for diferente d' +
            'o Endere'#231'o do Emitente/Destinat'#225'rio.'
          Ctl3D = False
          DataField = 'Entrega_cMun'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          Sorted = True
          TabOrder = 13
          TabStop = False
          OnEnter = EdSerieEnter
        end
        object DBEdit76: TDBEdit
          Left = 16
          Top = 32
          Width = 161
          Height = 21
          Hint = 
            'Preencher somente se o Local de Retirada/Entrega for diferente d' +
            'o Endere'#231'o do Emitente/Destinat'#225'rio.'
          DataField = 'Entrega_CNPJCPF'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = EdSerieEnter
        end
        object DBEdit77: TDBEdit
          Left = 179
          Top = 32
          Width = 504
          Height = 21
          Hint = 
            'Preencher somente se o Local de Retirada/Entrega for diferente d' +
            'o Endere'#231'o do Emitente/Destinat'#225'rio.'
          DataField = 'Entrega_xLgr'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnEnter = EdSerieEnter
        end
        object DBEdit78: TDBEdit
          Left = 689
          Top = 32
          Width = 100
          Height = 21
          Hint = 
            'Preencher somente se o Local de Retirada/Entrega for diferente d' +
            'o Endere'#231'o do Emitente/Destinat'#225'rio.'
          DataField = 'Entrega_nro'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnEnter = EdSerieEnter
        end
        object DBEdit79: TDBEdit
          Left = 16
          Top = 70
          Width = 380
          Height = 21
          Hint = 
            'Preencher somente se o Local de Retirada/Entrega for diferente d' +
            'o Endere'#231'o do Emitente/Destinat'#225'rio.'
          Color = 13434879
          DataField = 'Entrega_xCpl'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnEnter = EdSerieEnter
        end
        object DBEdit80: TDBEdit
          Left = 399
          Top = 70
          Width = 390
          Height = 21
          Hint = 
            'Preencher somente se o Local de Retirada/Entrega for diferente d' +
            'o Endere'#231'o do Emitente/Destinat'#225'rio.'
          DataField = 'Entrega_xBairro'
          DataSource = DM_NFE.DSNF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnEnter = EdSerieEnter
        end
        object Label90: TcxLabel
          Left = 17
          Top = 90
          Caption = 'UF'
          Transparent = True
        end
        object Label91: TcxLabel
          Left = 75
          Top = 90
          Caption = 'MUNIC'#205'PIO'
          Transparent = True
        end
        object Label92: TcxLabel
          Left = 16
          Top = 16
          Caption = 'CNPJ/CPF'
          FocusControl = DBEdit76
          Transparent = True
        end
        object Label93: TcxLabel
          Left = 179
          Top = 16
          Caption = 'LOGRADOURO'
          FocusControl = DBEdit77
          Transparent = True
        end
        object Label94: TcxLabel
          Left = 689
          Top = 16
          Caption = 'N'#186
          FocusControl = DBEdit78
          Transparent = True
        end
        object Label97: TcxLabel
          Left = 16
          Top = 54
          Caption = 'COMPLEMENTO'
          FocusControl = DBEdit79
          Transparent = True
        end
        object Label98: TcxLabel
          Left = 399
          Top = 54
          Caption = 'BAIRRO'
          FocusControl = DBEdit80
          Transparent = True
        end
      end
      object btnDestPesq: TcxButton
        Left = 810
        Top = 179
        Width = 94
        Height = 32
        Caption = 'PESQUISAR'
        TabOrder = 1
        OnClick = btnDestPesqClick
      end
      object btnDestContinuar: TcxButton
        Left = 810
        Top = 400
        Width = 94
        Height = 32
        Caption = 'CONTINUAR'
        TabOrder = 4
        OnClick = btnDestContinuarClick
      end
    end
    object TabItens: TTabSheet
      Tag = 4
      Caption = 'PRODUT. E SERVI'#199'OS'
      ImageIndex = 3
      OnShow = TabItensShow
      object PGItem: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 160
        Width = 915
        Height = 285
        ActivePage = TabItem
        Align = alBottom
        TabOrder = 1
        object TabItem: TTabSheet
          Caption = 'ITEM'
          object Shape5: TShape
            Left = 0
            Top = 0
            Width = 907
            Height = 255
            Align = alClient
            Brush.Color = clBtnFace
            ExplicitLeft = -1
          end
          object cbMovEstoque: TcxDBCheckBox
            Left = 360
            Top = 52
            Hint = 'Se marcado, item da NF entra no c'#244'mputo do invent'#225'rio.'
            TabStop = False
            Caption = 'Movimenta Estoque'
            DataBinding.DataField = 'baixa_estoque'
            DataBinding.DataSource = DM_NFE.DSNF_Item
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 33
            OnClick = cbMovEstoqueClick
            OnEnter = EdSerieEnter
          end
          object DBEdit86: TDBEdit
            Left = 18
            Top = 31
            Width = 60
            Height = 21
            Hint = 
              'Caso se trate de itens n'#227'o relacionados com mercadorias/produto ' +
              'e que o contribuinte n'#227'o possua codifica'#231#227'o pr'#243'pria preencher co' +
              'm CFOP.'#13#10'Caso preenchido com CFOP, utilizar o formato "CFOP9999"' +
              '. Por exemplo, se o CFOP for 5102, o c'#243'digo ficar'#225' CFOP5102.'
            CharCase = ecUpperCase
            DataField = 'cProd'
            DataSource = DM_NFE.DSNF_Item
            TabOrder = 0
            OnEnter = EdSerieEnter
          end
          object DBEdit87: TDBEdit
            Left = 81
            Top = 31
            Width = 142
            Height = 21
            Hint = 
              'Preencher com o c'#243'digo GTIN-8, GTIN-12, GTIN-13 ou GTIN-14 (anti' +
              'gos c'#243'digos EAN, UPC e DUN- 14), n'#227'o informar se o produto n'#227'o p' +
              'ossuir este c'#243'digo.'
            CharCase = ecUpperCase
            Color = 13434879
            DataField = 'cEAN'
            DataSource = DM_NFE.DSNF_Item
            MaxLength = 14
            TabOrder = 1
            OnEnter = EdSerieEnter
          end
          object DBEdit88: TDBEdit
            Left = 18
            Top = 72
            Width = 868
            Height = 21
            CharCase = ecUpperCase
            DataField = 'xProd'
            DataSource = DM_NFE.DSNF_Item
            TabOrder = 14
            OnEnter = EdSerieEnter
          end
          object DBEdit89: TDBEdit
            Left = 226
            Top = 31
            Width = 63
            Height = 21
            Hint = 
              'Nomenclatura Comum do Mercosul. Preencher de acordo com a Tabela' +
              ' de Cap'#237'tulos da NCM.'#13#10'- C'#243'digo NCM (8 d'#237'gitos) quando a opera'#231#227 +
              'o for de com'#233'rcio exterior (importa'#231#227'o/exporta'#231#227'o) ou o produto ' +
              'seja tributado pelo IPI.Em caso de item de servi'#231'o ou item que n' +
              #227'o tenha produto (Ex. transfer'#234'ncia de cr'#233'dito, cr'#233'dito do ativo' +
              ' imobilizado, etc.), informar o c'#243'digo 00 (zeros) '#13#10'- G'#234'nero (po' +
              'si'#231#227'o do cap'#237'tulo do NCM) (2 d'#237'gitos) quando a opera'#231#227'o n'#227'o for ' +
              'de com'#233'rcio exterior (importa'#231#227'o/exporta'#231#227'o) ou o produto n'#227'o se' +
              'ja tributado pelo IPI.'#13#10'- Em caso de servi'#231'o informar o c'#243'digo 9' +
              '9'
            DataField = 'NCM'
            DataSource = DM_NFE.DSNF_Item
            TabOrder = 2
            OnEnter = EdSerieEnter
          end
          object DBEdit90: TDBEdit
            Left = 293
            Top = 31
            Width = 58
            Height = 21
            Hint = 
              'Preencher de acordo com o c'#243'digo EX da TIPI. (http://sijut.fazen' +
              'da.gov.br/netahtml/sijut/ATTIPI01.htm). Em caso de servi'#231'o, n'#227'o ' +
              'preencher'
            Color = 13434879
            DataField = 'EXTIPI'
            DataSource = DM_NFE.DSNF_Item
            TabOrder = 3
            OnEnter = EdSerieEnter
          end
          object DBEdit92: TDBEdit
            Left = 410
            Top = 31
            Width = 30
            Height = 21
            CharCase = ecUpperCase
            DataField = 'uCom'
            DataSource = DM_NFE.DSNF_Item
            TabOrder = 5
            OnEnter = EdSerieEnter
          end
          object DBEdit93: TDBEdit
            Left = 444
            Top = 31
            Width = 46
            Height = 21
            DataField = 'qCom'
            DataSource = DM_NFE.DSNF_Item
            TabOrder = 6
            OnChange = DBEdit93Change
            OnEnter = EdSerieEnter
          end
          object DBEdit94: TDBEdit
            Left = 494
            Top = 31
            Width = 74
            Height = 21
            DataField = 'vUnCom'
            DataSource = DM_NFE.DSNF_Item
            TabOrder = 7
            OnChange = DBEdit93Change
            OnEnter = EdSerieEnter
          end
          object DBEdit95: TDBEdit
            Left = 803
            Top = 226
            Width = 83
            Height = 22
            TabStop = False
            Color = 14803425
            DataField = 'vProd'
            DataSource = DM_NFE.DSNF_Item
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 23
          end
          object DBEdit96: TDBEdit
            Left = 675
            Top = 31
            Width = 62
            Height = 21
            Hint = 
              'Outras Despesas Acess'#243'rias'#13#10'Informar os valores do item que deve' +
              'm compor o valor da NF mas n'#227'o tenham campo de total corresponde' +
              'nte na aba TOTAIS (Ex.: valor do PIS retido por ST , valor do CO' +
              'FINS retido por ST , valor do IOF ), valor do Desembara'#231'o Aduane' +
              'iro, etc.) '
            Color = 13434879
            DataField = 'vOutro'
            DataSource = DM_NFE.DSNF_Item
            TabOrder = 10
            OnChange = DBEdit93Change
            OnEnter = EdSerieEnter
          end
          object DBEdit97: TDBEdit
            Left = 745
            Top = 31
            Width = 70
            Height = 21
            Color = 13434879
            DataField = 'vFrete'
            DataSource = DM_NFE.DSNF_Item
            TabOrder = 11
            OnChange = DBEdit93Change
            OnEnter = EdSerieEnter
          end
          object DBEdit98: TDBEdit
            Left = 818
            Top = 31
            Width = 68
            Height = 21
            Color = 13434879
            DataField = 'vSeg'
            DataSource = DM_NFE.DSNF_Item
            TabOrder = 12
            OnChange = DBEdit93Change
            OnEnter = EdSerieEnter
          end
          object DBEdit99: TDBEdit
            Left = 570
            Top = 31
            Width = 83
            Height = 21
            Hint = 
              'Informar os valores de Descontos e Abatimentos que tem reflexo n' +
              'o valor da NF'#13#10'O desconto '#233' sobre o total do item. Para desconto' +
              ' unit'#225'rio, clique no bot'#227'o ao lado.'
            Color = 13434879
            DataField = 'vDesc'
            DataSource = DM_NFE.DSNF_Item
            TabOrder = 8
            OnChange = DBEdit93Change
            OnEnter = EdSerieEnter
          end
          object DBMemo1: TDBMemo
            Left = 18
            Top = 116
            Width = 868
            Height = 104
            Hint = 'At'#233' 500 caracteres'
            Color = 13434879
            DataField = 'infAdProd'
            DataSource = DM_NFE.DSNF_Item
            MaxLength = 500
            TabOrder = 15
            OnEnter = EdSerieEnter
          end
          object pnlDescItem: TPanel
            Left = 570
            Top = 52
            Width = 185
            Height = 113
            BevelOuter = bvNone
            BevelWidth = 3
            Color = 33023
            ParentBackground = False
            TabOrder = 13
            Visible = False
            object Shape14: TShape
              Left = 0
              Top = 0
              Width = 185
              Height = 113
              Align = alClient
              Pen.Width = 3
              ExplicitLeft = -1
              ExplicitWidth = 881
              ExplicitHeight = 255
            end
            object edvDesc: TCurrencyEdit
              Left = 12
              Top = 29
              Width = 121
              Height = 21
              Hint = 
                'Informe o valor em R$  do desconto sobre o pre'#231'o unit'#225'rio e cliq' +
                'ue no bot'#227'o ao lado'
              Margins.Top = 2
              Color = 8454143
              TabOrder = 0
              OnEnter = EdSerieEnter
            end
            object edpDesc: TCurrencyEdit
              Left = 12
              Top = 77
              Width = 121
              Height = 21
              Hint = 
                'Informe o valor em %  do desconto sobre o pre'#231'o unit'#225'rio e cliqu' +
                'e no bot'#227'o ao lado'
              Margins.Top = 2
              Color = 8454143
              TabOrder = 2
              OnEnter = EdSerieEnter
            end
            object Button6: TcxButton
              AlignWithMargins = True
              Left = 134
              Top = 29
              Width = 41
              Height = 21
              Hint = 'Calcular desconto sobre o Vr. Unit.'
              Caption = '>>'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = Button6Click
            end
            object Button7: TcxButton
              AlignWithMargins = True
              Left = 134
              Top = 77
              Width = 41
              Height = 21
              Hint = 'Calcular desconto sobre o Vr. Unit.'
              Caption = '>>'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              OnClick = Button7Click
            end
            object Label237: TcxLabel
              Left = 15
              Top = 10
              Caption = 'R$ VR DESC (Unit.)'
              FocusControl = DBEdit99
              Transparent = True
            end
            object Label238: TcxLabel
              Left = 15
              Top = 58
              Caption = '% VR DESC (Unit.)'
              FocusControl = DBEdit99
              Transparent = True
            end
          end
          object cmbCFOP: TDBComboBox
            Left = 357
            Top = 31
            Width = 50
            Height = 23
            Hint = 
              'Informar o C'#243'digo Fiscal de Opera'#231#245'es e Presta'#231#245'es relativo ao i' +
              'tem'
            DataField = 'CFOP'
            DataSource = DM_NFE.DSNF_Item
            TabOrder = 4
            OnEnter = EdSerieEnter
            OnExit = cmbCFOPExit
          end
          object Button5: TcxButton
            AlignWithMargins = True
            Left = 654
            Top = 31
            Width = 18
            Height = 21
            Hint = 'Calcular desconto sobre o Vr. Unit.'
            Caption = '>>'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            OnClick = Button5Click
          end
          object Label101: TcxLabel
            Left = 18
            Top = 12
            Caption = 'C'#211'DIGO'
            FocusControl = DBEdit86
            Transparent = True
          end
          object Label102: TcxLabel
            Left = 81
            Top = 12
            Caption = 'C'#211'DIGO GTIN'
            FocusControl = DBEdit87
            Transparent = True
          end
          object Label103: TcxLabel
            Left = 18
            Top = 53
            Caption = 'DESCRI'#199#195'O DO PRODUTO/SERVI'#199'O'
            FocusControl = DBEdit88
            Transparent = True
          end
          object Label104: TcxLabel
            Left = 226
            Top = 12
            Caption = 'NCM'
            FocusControl = DBEdit89
            Transparent = True
          end
          object Label105: TcxLabel
            Left = 292
            Top = 12
            Caption = 'EX DA TIPI'
            FocusControl = DBEdit90
            Transparent = True
          end
          object Label106: TcxLabel
            Left = 357
            Top = 12
            Caption = 'CFOP'
            Transparent = True
          end
          object Label107: TcxLabel
            Left = 408
            Top = 12
            Caption = 'UN'
            FocusControl = DBEdit92
            Transparent = True
          end
          object Label108: TcxLabel
            Left = 443
            Top = 12
            Caption = 'QUANT'
            FocusControl = DBEdit93
            Transparent = True
          end
          object Label109: TcxLabel
            Left = 494
            Top = 12
            Caption = 'VR UNIT.'
            FocusControl = DBEdit94
            Transparent = True
          end
          object Label110: TcxLabel
            Left = 760
            Top = 227
            Caption = 'TOTAL'
            FocusControl = DBEdit95
            Transparent = True
          end
          object Label111: TcxLabel
            Left = 675
            Top = 12
            Caption = 'VR O.D.A'
            FocusControl = DBEdit96
            Transparent = True
          end
          object Label112: TcxLabel
            Left = 745
            Top = 12
            Caption = 'VR FRETE'
            FocusControl = DBEdit97
            Transparent = True
          end
          object Label113: TcxLabel
            Left = 818
            Top = 12
            Caption = 'VR SEG'
            FocusControl = DBEdit98
            Transparent = True
          end
          object Label114: TcxLabel
            Left = 570
            Top = 12
            Caption = 'VR DESC (Tot.)'
            FocusControl = DBEdit99
            Transparent = True
          end
          object Label115: TcxLabel
            Left = 18
            Top = 96
            Caption = 'INFORMA'#199#213'ES ADICIONAIS DO ITEM'
            FocusControl = DBMemo1
            Transparent = True
          end
          object cxButton7: TcxButton
            AlignWithMargins = True
            Left = 570
            Top = 223
            Width = 157
            Height = 29
            Caption = 'ASSISTENTE DE RATEIO'
            TabOrder = 16
            OnClick = cxButton7Click
          end
        end
        object TabImposto: TTabSheet
          Caption = 'IMPOSTO'
          ImageIndex = 1
          OnShow = TabImpostoShow
          object PGImposto: TPageControl
            Left = 0
            Top = 0
            Width = 907
            Height = 255
            ActivePage = TabICMS
            Align = alClient
            TabOrder = 0
            object TabIPI: TTabSheet
              Caption = 'IPI'
              ImageIndex = 1
              object DBEdit118: TDBEdit
                Left = 218
                Top = 36
                Width = 90
                Height = 21
                Hint = 
                  'Classe de enquadramento do IPI para Cigarros e Bebidas. Preenchi' +
                  'mento conforme Atos Normativos editados pela Receita Federal (Ob' +
                  'serva'#231#227'o 4 do Manual de Integra'#231#227'o - Contribuinte - vers'#227'o 3.0)'
                DataField = 'IPI_clEnq'
                DataSource = DM_NFE.DSNF_Item
                TabOrder = 1
                OnEnter = EdSerieEnter
              end
              object DBEdit119: TDBEdit
                Left = 115
                Top = 76
                Width = 193
                Height = 21
                Hint = 
                  'CNPJ do produtor da mercadoria, quando diferente do emitente. So' +
                  'mente para os casos de exporta'#231#227'o direta ou indireta.'
                DataField = 'IPI_CNPJProd'
                DataSource = DM_NFE.DSNF_Item
                TabOrder = 3
                OnEnter = EdSerieEnter
              end
              object DBEdit120: TDBEdit
                Left = 115
                Top = 120
                Width = 193
                Height = 21
                Hint = 
                  'Preenchimento conforme Atos Normativos editados pela Receita Fed' +
                  'eral (Observa'#231#227'o 3 do Manual de Integra'#231#227'o - Contribuinte - vers' +
                  #227'o 3.0)'
                DataField = 'IPI_cSelo'
                DataSource = DM_NFE.DSNF_Item
                MaxLength = 8
                TabOrder = 5
                OnEnter = EdSerieEnter
              end
              object DBEdit121: TDBEdit
                Left = 115
                Top = 164
                Width = 97
                Height = 21
                DataField = 'IPI_qSelo'
                DataSource = DM_NFE.DSNF_Item
                TabOrder = 6
                OnEnter = EdSerieEnter
              end
              object DBEdit122: TDBEdit
                Left = 218
                Top = 165
                Width = 90
                Height = 21
                DataField = 'IPI_cEnq'
                DataSource = DM_NFE.DSNF_Item
                TabOrder = 14
                OnEnter = EdSerieEnter
              end
              object DBEdit127: TDBEdit
                Left = 733
                Top = 104
                Width = 107
                Height = 21
                Hint = 
                  'Valor da base de c'#225'lculo do IPI x Al'#237'quota (caso tipo de c'#225'lculo' +
                  ' em "percentual")'#13#10'ou '#13#10'Quantidade Total de unidade padr'#227'o para ' +
                  'tributa'#231#227'o x Valor por unidade (caso o tipo de c'#225'lculo em "valor' +
                  '")'
                Color = 16777158
                DataField = 'IPI_vIPI'
                DataSource = DM_NFE.DSNF_Item
                TabOrder = 4
                OnEnter = EdSerieEnter
              end
              object RxDBComboBox9: TRxDBComboBox
                Left = 115
                Top = 36
                Width = 93
                Height = 23
                Hint = 
                  '00-Entrada com recupera'#231#227'o de cr'#233'dito'#13#10'01-Entrada tributada com ' +
                  'al'#237'quota zero'#13#10'02-Entrada isenta'#13#10'03-Entrada n'#227'o-tributada'#13#10'04-E' +
                  'ntrada imune'#13#10'05-Entrada com suspens'#227'o'#13#10'49-Outras entradas'#13#10'50-S' +
                  'a'#237'da tributada'#13#10'51-Sa'#237'da tributada com al'#237'quota zero'#13#10'52-Sa'#237'da i' +
                  'senta'#13#10'53-Sa'#237'da n'#227'o-tributada'#13#10'54-Sa'#237'da imune'#13#10'55-Sa'#237'da com susp' +
                  'ens'#227'o'#13#10'99-Outras sa'#237'das'
                Ctl3D = False
                DataField = 'IPI_CST'
                DataSource = DM_NFE.DSNF_Item
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                Items.Strings = (
                  '000'
                  '010'
                  '020'
                  '030'
                  '040'
                  '041'
                  '045'
                  '050'
                  '051'
                  '060'
                  '070'
                  '080'
                  '081'
                  '090'
                  'Part 10'
                  'Part 90'
                  'Rep 41'
                  'Vazio'
                  'ICMS Outra UF'
                  'ICMS SN')
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                TabStop = False
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8'
                  '9'
                  '10'
                  '11'
                  '12'
                  '13')
                OnEnter = EdSerieEnter
              end
              object GroupBox9: TGroupBox
                Left = 342
                Top = 43
                Width = 366
                Height = 141
                Caption = 'C'#225'lculo do IPI'
                Color = clBtnFace
                ParentBackground = False
                ParentColor = False
                TabOrder = 2
                object GroupBox10: TGroupBox
                  Left = 1
                  Top = 68
                  Width = 364
                  Height = 52
                  Align = alTop
                  Caption = 'Por Valor'
                  TabOrder = 1
                  object DBEdit125: TDBEdit
                    Left = 92
                    Top = 21
                    Width = 101
                    Height = 21
                    Hint = 
                      'Quantidade Total de unidade padr'#227'o para tributa'#231#227'o. Preenchiment' +
                      'o caso for Tipo de c'#225'lculo "Valor". (Somente para os produtos tr' +
                      'ibutados por unidade)'
                    DataField = 'IPI_vUnid'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 0
                    OnEnter = EdSerieEnter
                  end
                  object DBEdit124: TDBEdit
                    Left = 277
                    Top = 21
                    Width = 68
                    Height = 21
                    Hint = 
                      'Valor por unidade tribut'#225'vel. Preenchimento caso for Tipo de c'#225'l' +
                      'culo "Valor"'
                    DataField = 'IPI_qUnid'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 1
                    OnEnter = EdSerieEnter
                  end
                  object Label141: TcxLabel
                    Left = 14
                    Top = 23
                    Caption = 'VR T. UNID'
                    FocusControl = DBEdit125
                    Transparent = True
                  end
                  object Label140: TcxLabel
                    Left = 214
                    Top = 23
                    Caption = 'QT TOTAL'
                    FocusControl = DBEdit124
                    Transparent = True
                  end
                end
                object GroupBox11: TGroupBox
                  Left = 1
                  Top = 16
                  Width = 364
                  Height = 52
                  Align = alTop
                  Caption = 'Por Al'#237'quota'
                  TabOrder = 0
                  object DBEdit100: TDBEdit
                    Left = 92
                    Top = 22
                    Width = 101
                    Height = 21
                    Hint = 'reenchimento caso for Tipo de c'#225'lculo "Percentual"'
                    DataField = 'IPI_vBC'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 1
                    OnEnter = EdSerieEnter
                  end
                  object DBEdit126: TDBEdit
                    Left = 277
                    Top = 22
                    Width = 68
                    Height = 21
                    Hint = 'reenchimento caso for Tipo de c'#225'lculo "Percentual"'
                    DataField = 'IPI_pIPI'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 0
                    OnEnter = EdSerieEnter
                  end
                  object btnCalcularBCIPI: TcxButton
                    Left = 195
                    Top = 23
                    Width = 19
                    Height = 21
                    Hint = 'Calcular'
                    Caption = '?'
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 2
                    OnClick = btnCalcularBCIPIClick
                  end
                  object Label139: TcxLabel
                    Left = 8
                    Top = 23
                    Caption = 'VR BASE CALC'
                    FocusControl = DBEdit100
                    Transparent = True
                  end
                  object Label142: TcxLabel
                    Left = 220
                    Top = 24
                    Caption = 'ALIQ IPI'
                    FocusControl = DBEdit126
                    Transparent = True
                  end
                end
              end
              object Label133: TcxLabel
                Left = 115
                Top = 20
                Caption = 'CST'
                ParentFont = False
                Transparent = True
              end
              object Label134: TcxLabel
                Left = 218
                Top = 20
                Caption = 'CLASSE  ENQ.'
                FocusControl = DBEdit118
                ParentFont = False
                Transparent = True
              end
              object Label135: TcxLabel
                Left = 115
                Top = 60
                Caption = 'CNPJ DO PRODUTOR'
                FocusControl = DBEdit119
                ParentFont = False
                Transparent = True
              end
              object Label136: TcxLabel
                Left = 115
                Top = 104
                Caption = 'C'#211'D. SELO'
                FocusControl = DBEdit120
                ParentFont = False
                Transparent = True
              end
              object Label137: TcxLabel
                Left = 115
                Top = 148
                Caption = 'QT SELOS'
                FocusControl = DBEdit121
                Transparent = True
              end
              object Label138: TcxLabel
                Left = 218
                Top = 149
                Caption = 'C'#211'D ENQ.'
                FocusControl = DBEdit122
                Transparent = True
              end
              object Label143: TcxLabel
                Left = 733
                Top = 88
                Caption = 'VR IPI'
                FocusControl = DBEdit127
                Transparent = True
              end
            end
            object TabICMS: TTabSheet
              Caption = 'ICMS'
              OnShow = TabICMSShow
              object DBText1: TDBText
                Left = 90
                Top = 57
                Width = 30
                Height = 17
                DataField = 'ICMS_CSOSN'
                DataSource = DM_NFE.DSNF_Item
                Visible = False
              end
              object DBText2: TDBText
                Left = 90
                Top = 13
                Width = 30
                Height = 17
                DataField = 'ICMS_CST'
                DataSource = DM_NFE.DSNF_Item
                Visible = False
              end
              object DBEdit105: TDBEdit
                Left = 24
                Top = 256
                Width = 154
                Height = 21
                DataField = 'ICMS_vICMS'
                TabOrder = 12
              end
              object GBICMS: TGroupBox
                Left = 281
                Top = 9
                Width = 580
                Height = 71
                Caption = 'C'#225'lculo do ICMS'
                Color = clBtnFace
                ParentBackground = False
                ParentColor = False
                TabOrder = 1
                object edICMS_vBC: TDBEdit
                  Left = 219
                  Top = 34
                  Width = 130
                  Height = 21
                  Hint = 
                    'Informar o somat'#243'rio do campo valor da Base de C'#225'lculo de item p' +
                    'roduto com CST = 00, 10, 20, 30, 70 e 90, e CSOSN = 900.'
                  Color = 16777158
                  DataField = 'ICMS_vBC'
                  DataSource = DM_NFE.DSNF_Item
                  TabOrder = 2
                  OnEnter = EdSerieEnter
                  OnExit = edICMS_pICMSExit
                end
                object edICMS_pICMS: TDBEdit
                  Left = 15
                  Top = 34
                  Width = 89
                  Height = 21
                  DataField = 'ICMS_pICMS'
                  DataSource = DM_NFE.DSNF_Item
                  TabOrder = 0
                  OnEnter = EdSerieEnter
                  OnExit = edICMS_pICMSExit
                end
                object edICMS_vICMS: TDBEdit
                  Left = 354
                  Top = 34
                  Width = 95
                  Height = 21
                  Hint = 
                    'Quando CST40, o valor do ICMS ser'#225' informado apenas nas opera'#231#245'e' +
                    's com ve'#237'culos beneficiados com a desonera'#231#227'o condicional do ICM' +
                    'S.'
                  Color = 16777158
                  DataField = 'ICMS_vICMS'
                  DataSource = DM_NFE.DSNF_Item
                  TabOrder = 3
                  OnEnter = EdSerieEnter
                end
                object edICMS_pRedBC: TDBEdit
                  Left = 110
                  Top = 34
                  Width = 103
                  Height = 21
                  DataField = 'ICMS_pRedBC'
                  DataSource = DM_NFE.DSNF_Item
                  TabOrder = 1
                  OnEnter = EdSerieEnter
                  OnExit = edICMS_pICMSExit
                end
                object cmbICMS_motDesICMS: TRxDBComboBox
                  Left = 452
                  Top = 34
                  Width = 85
                  Height = 23
                  Ctl3D = False
                  DataField = 'ICMS_motDesICMS'
                  DataSource = DM_NFE.DSNF_Item
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'Comic Sans MS'
                  Font.Style = []
                  Items.Strings = (
                    'Taxi'
                    'Def. F'#237'sico'
                    'ProdutorAgrop.'
                    'Frotista Locad.'
                    'Diplomatico/Consular'
                    'Amazonia Livre Com.'
                    'SUFRAMA'
                    'Venda '#211'rgaos Publicos'
                    'Outros')
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 9
                  TabStop = False
                  Values.Strings = (
                    '0'
                    '1'
                    '2'
                    '3'
                    '4'
                    '5'
                    '6'
                    '7'
                    '8')
                  OnClick = cmbProdCSTClick
                  OnEnter = EdSerieEnter
                end
                object Label119: TcxLabel
                  Left = 219
                  Top = 15
                  Caption = 'BASE DE C'#193'LC'
                  FocusControl = edICMS_vBC
                  Transparent = True
                end
                object Label120: TcxLabel
                  Left = 15
                  Top = 16
                  Caption = 'ALI'#205'QUOTA (%)'
                  FocusControl = edICMS_pICMS
                  Transparent = True
                end
                object Label122: TcxLabel
                  Left = 354
                  Top = 15
                  Caption = 'VR ICMS'
                  FocusControl = edICMS_vICMS
                  Transparent = True
                end
                object Label132: TcxLabel
                  Left = 110
                  Top = 15
                  Caption = 'ALIQ  RED BC (%)'
                  FocusControl = edICMS_pRedBC
                  Transparent = True
                end
                object Label53: TcxLabel
                  Left = 452
                  Top = 15
                  Caption = 'MOTIVO. DESON.'
                  ParentFont = False
                  Transparent = True
                end
              end
              object GBICMSST: TGroupBox
                Left = 281
                Top = 86
                Width = 580
                Height = 123
                Caption = 'C'#225'lculo do ICMS S.T.'
                Color = clBtnFace
                ParentBackground = False
                ParentColor = False
                TabOrder = 4
                object cmbICMS_modBCST: TRxDBComboBox
                  Left = 13
                  Top = 55
                  Width = 154
                  Height = 23
                  Hint = 
                    '0 - Pre'#231'o tabelado ou m'#225'ximo sugerido;    1 - Lista Negativa (va' +
                    'lor);    2 - Lista Positiva (valor);'#13#10'3 - Lista Neutra (valor); ' +
                    '   4 - Margem Valor Agregado (%);    5 - Pauta (valor);'
                  Ctl3D = False
                  DataField = 'ICMS_modBCST'
                  DataSource = DM_NFE.DSNF_Item
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'Comic Sans MS'
                  Font.Style = []
                  Items.Strings = (
                    'Pre'#231'o Tabelado'
                    'Lista Negativa'
                    'Lista Positiva'
                    'ListaNeutra'
                    'Margem Vr. Agreg.'
                    'Pauta')
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 4
                  TabStop = False
                  Values.Strings = (
                    '0'
                    '1'
                    '2'
                    '3'
                    '4'
                    '5')
                  OnClick = cmbICMS_modBCSTClick
                  OnEnter = EdSerieEnter
                end
                object edICMS_pMVAST: TDBEdit
                  Left = 262
                  Top = 36
                  Width = 69
                  Height = 21
                  Hint = 'Percentual da margem de valor Adicionado do ICMS ST'
                  DataField = 'ICMS_pMVAST'
                  DataSource = DM_NFE.DSNF_Item
                  TabOrder = 1
                  OnEnter = EdSerieEnter
                  OnExit = edICMS_pICMSExit
                end
                object edICMS_pRedBCST: TDBEdit
                  Left = 173
                  Top = 36
                  Width = 84
                  Height = 21
                  DataField = 'ICMS_pRedBCST'
                  DataSource = DM_NFE.DSNF_Item
                  TabOrder = 0
                  OnEnter = EdSerieEnter
                  OnExit = edICMS_pICMSExit
                end
                object edICMS_vBCST: TDBEdit
                  Left = 432
                  Top = 36
                  Width = 136
                  Height = 21
                  Color = 16777158
                  DataField = 'ICMS_vBCST'
                  DataSource = DM_NFE.DSNF_Item
                  TabOrder = 3
                  OnEnter = EdSerieEnter
                end
                object edICMS_pICMSST: TDBEdit
                  Left = 173
                  Top = 84
                  Width = 84
                  Height = 21
                  DataField = 'ICMS_pICMSST'
                  DataSource = DM_NFE.DSNF_Item
                  TabOrder = 6
                  OnEnter = EdSerieEnter
                  OnExit = edICMS_pICMSExit
                end
                object edICMS_vICMSST: TDBEdit
                  Left = 262
                  Top = 84
                  Width = 114
                  Height = 21
                  Hint = 
                    'Valor do ICMS ST cobrado anteriormente por ST (v2.0). O valor po' +
                    'de ser omitido quando a legisla'#231#227'o n'#227'o exigir a sua informa'#231#227'o.'
                  Color = 16777158
                  DataField = 'ICMS_vICMSST'
                  DataSource = DM_NFE.DSNF_Item
                  TabOrder = 14
                  OnEnter = EdSerieEnter
                end
                object edICMS_vTabelaST: TDBEdit
                  Left = 336
                  Top = 36
                  Width = 91
                  Height = 21
                  DataField = 'ICMS_vTabelaST'
                  DataSource = DM_NFE.DSNF_Item
                  TabOrder = 2
                  OnEnter = EdSerieEnter
                  OnExit = edICMS_pICMSExit
                end
                object btnCalcular: TcxButton
                  AlignWithMargins = True
                  Left = 458
                  Top = 76
                  Width = 93
                  Height = 33
                  Caption = 'CALCULAR'
                  TabOrder = 5
                  OnClick = btnCalcularClick
                end
                object Label123: TcxLabel
                  Left = 15
                  Top = 38
                  Caption = 'MODAL BC ICMS ST'
                  Transparent = True
                end
                object Label124: TcxLabel
                  Left = 263
                  Top = 17
                  Caption = 'MVA (%)'
                  FocusControl = edICMS_pMVAST
                  Transparent = True
                end
                object Label125: TcxLabel
                  Left = 173
                  Top = 17
                  Caption = 'ALIQ RED BC'
                  FocusControl = edICMS_pRedBCST
                  Transparent = True
                end
                object Label126: TcxLabel
                  Left = 432
                  Top = 17
                  Caption = 'VR BC ICMS ST'
                  FocusControl = edICMS_vBCST
                  Transparent = True
                end
                object Label127: TcxLabel
                  Left = 173
                  Top = 65
                  Caption = 'ALIQ ICMS ST'
                  FocusControl = edICMS_pICMSST
                  Transparent = True
                end
                object Label128: TcxLabel
                  Left = 262
                  Top = 65
                  Caption = 'VR ICMS ST'
                  FocusControl = edICMS_vICMSST
                  Transparent = True
                end
                object Label236: TcxLabel
                  Left = 337
                  Top = 17
                  Caption = 'VR. TABELA'
                  FocusControl = edICMS_vTabelaST
                  Transparent = True
                end
              end
              object RxDBComboBox10: TRxDBComboBox
                Left = 11
                Top = 135
                Width = 254
                Height = 23
                Hint = 
                  '0 - Nacional'#13#10'1 - Estrangeira  Importa'#231#227'o direta   '#13#10'2 - Estrang' +
                  'eira Adquirida no mercado interno'#13#10'4 - Nacional Conteudo Importa' +
                  #231#227'o Superior 40%'#13#10'5 - Nacional Processos Basicos'#13#10'6 - Nacional C' +
                  'onteudo Importa'#231#227'o Inferior ou Igual a 40%'#13#10'7 - Estrangeira Impo' +
                  'rtacao Direta SemSimilar'#13#10'8 - Estrangeira Adquirida no Brasil Se' +
                  'm Similar'
                Ctl3D = False
                DataField = 'ICMS_orig'
                DataSource = DM_NFE.DSNF_Item
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                Items.Strings = (
                  'Nacional'
                  'Estrang. Import. Direta'
                  'Estrang. Adq. Brasil'
                  'Nacio. Cont.Imp. Sup 40%'
                  'Nacio. Processos Basicos'
                  'Nacio. Cont.Imp. menor/igual 40%'
                  'Estrang. Import. Direta s/similar'
                  'Estrang. Adq. Brasil s/Similar')
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 5
                TabStop = False
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7')
                OnEnter = EdSerieEnter
              end
              object RxDBComboBox11: TRxDBComboBox
                Left = 11
                Top = 175
                Width = 254
                Height = 23
                Hint = 
                  '0 - Margem Valor Agregado (%);    1 - Pauta (Valor);    2 - Pre'#231 +
                  'o Tabelado M'#225'x. (valor);    3 - valor da opera'#231#227'o.'
                Ctl3D = False
                DataField = 'ICMS_modBC'
                DataSource = DM_NFE.DSNF_Item
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                Items.Strings = (
                  'Margem Vr. Agreg.'
                  'Pauta'
                  'Preco Tabelado'
                  'Valor Opera'#231#227'o')
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 6
                TabStop = False
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3')
                OnEnter = EdSerieEnter
              end
              object GBCredICMSSN: TGroupBox
                Left = 131
                Top = 9
                Width = 134
                Height = 116
                Caption = 'Cred ICMS S.N.'
                Color = clBtnFace
                ParentBackground = False
                ParentColor = False
                TabOrder = 0
                object edICMS_pCredSN: TDBEdit
                  Left = 12
                  Top = 34
                  Width = 81
                  Height = 21
                  Hint = 'Opera'#231#245'es do Simples Nacional com permiss'#227'o de cr'#233'dito.'
                  DataField = 'ICMS_pCredSN'
                  DataSource = DM_NFE.DSNF_Item
                  TabOrder = 0
                  OnEnter = EdSerieEnter
                  OnExit = edICMS_pICMSExit
                end
                object edICMS_vCredICMSSN: TDBEdit
                  Left = 12
                  Top = 80
                  Width = 113
                  Height = 21
                  Hint = 'Opera'#231#245'es do Simples Nacional com permiss'#227'o de cr'#233'dito.'
                  DataField = 'ICMS_vCredICMSSN'
                  DataSource = DM_NFE.DSNF_Item
                  TabOrder = 3
                  OnEnter = EdSerieEnter
                  OnExit = edICMS_pICMSExit
                end
                object Label232: TcxLabel
                  Left = 12
                  Top = 17
                  Caption = 'Al'#237'quota'
                  FocusControl = edICMS_pCredSN
                  Transparent = True
                end
                object Label233: TcxLabel
                  Left = 12
                  Top = 61
                  Caption = 'Valor ICMS SN'
                  FocusControl = edICMS_vCredICMSSN
                  Transparent = True
                end
              end
              object Label121: TcxLabel
                Left = 24
                Top = 240
                Caption = 'VR ICMS'
                FocusControl = DBEdit105
                Transparent = True
              end
              object Label117: TcxLabel
                Left = 11
                Top = 117
                Caption = 'ORIG MERCADORIA'
                ParentFont = False
                Transparent = True
              end
              object Label118: TcxLabel
                Left = 11
                Top = 158
                Caption = 'MODAL. BC'
                ParentFont = False
                Transparent = True
              end
              object Label116: TcxLabel
                Left = 11
                Top = 14
                Caption = 'CST'
                ParentFont = False
                Transparent = True
              end
              object Label129: TcxLabel
                Left = 11
                Top = 55
                Caption = 'CSOSN'
                ParentFont = False
                Transparent = True
              end
              object cmbProdCST: TcxDBImageComboBox
                Left = 12
                Top = 31
                Hint = 
                  '00 - Tributada integralmente'#13#10'10 - Tributada e com cobran'#231'a do I' +
                  'CMS por substitui'#231#227'o tribut'#225'ria'#13#10'20 - Com redu'#231#227'o de base de c'#225'l' +
                  'culo'#13#10'30 - Isenta ou n'#227'o tributada e com cobran'#231'a do ICMS por su' +
                  'bstitui'#231#227'o tribut'#225'ria'#13#10'40 - Isenta'#13#10'41 - N'#227'o tributada'#13#10'50 - Sus' +
                  'pens'#227'o'#13#10'51 - Diferimento'#13#10'60 - ICMS cobrado anteriormente por su' +
                  'bstitui'#231#227'o tribut'#225'ria'#13#10'70 - Com redu'#231#227'o de base de c'#225'lculo e cob' +
                  'ran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'#13#10'90 - Outros'
                DataBinding.DataField = 'ICMS_CST'
                DataBinding.DataSource = DM_NFE.DSNF_Item
                ParentShowHint = False
                Properties.Items = <>
                ShowHint = True
                TabOrder = 2
                OnClick = cmbProdCSTClick
                Width = 113
              end
              object cmbProdCSOSN: TcxDBImageComboBox
                Left = 12
                Top = 78
                Hint = 
                  '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito.'#13 +
                  #10'102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito.' +
                  #13#10'103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receit' +
                  'a bruta.'#13#10'300 - Imune.'#13#10'400 - N'#227'o tributada pelo Simples Naciona' +
                  'l'#13#10'201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dit' +
                  'o e com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria'#13#10'202 - Trib' +
                  'utada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e com cobra' +
                  'n'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria'#13#10'203 - Isen'#231#227'o do ICMS n' +
                  'os Simples Nacional para faixa de receita bruta e com cobran'#231'a d' +
                  'o ICMS por Substitui'#231#227'o Tribut'#225'ria'#13#10'500 - ICMS cobrado anteriorm' +
                  'ente por substitui'#231#227'o tribut'#225'ria (substitu'#237'do) ou por antecipa'#231#227 +
                  'o'#13#10'900 - Outros'
                DataBinding.DataField = 'ICMS_CSOSN'
                DataBinding.DataSource = DM_NFE.DSNF_Item
                ParentShowHint = False
                Properties.Items = <>
                ShowHint = True
                TabOrder = 3
                Width = 113
              end
            end
            object TabPIS: TTabSheet
              Caption = 'PIS'
              ImageIndex = 2
              object DBEdit133: TDBEdit
                Left = 312
                Top = 189
                Width = 96
                Height = 21
                Hint = 
                  'Valor da base de c'#225'lculo do PIS x Al'#237'quota (percentual)'#13#10'ou '#13#10'Al' +
                  #237'quota (em reais) x Quantidade vendida (caso o tipo de c'#225'lculo e' +
                  'm "valor").'#13#10'O valor do PIS retido deve ser totalizado em O.D.A'
                Color = 16777158
                DataField = 'PIS_vPIS'
                DataSource = DM_NFE.DSNF_Item
                TabOrder = 3
                OnEnter = EdSerieEnter
              end
              object DBEdit138: TDBEdit
                Left = 744
                Top = 189
                Width = 80
                Height = 21
                Hint = 
                  'Valor da base de c'#225'lculo do PIS x Al'#237'quota (percentual)'#13#10'ou '#13#10'Al' +
                  #237'quota (em reais) x Quantidade vendida (caso o tipo de c'#225'lculo e' +
                  'm "valor")'
                Color = 16777158
                DataField = 'PISST_vPIS'
                DataSource = DM_NFE.DSNF_Item
                TabOrder = 5
                OnEnter = EdSerieEnter
              end
              object GroupBox12: TGroupBox
                Left = 52
                Top = 44
                Width = 366
                Height = 141
                Caption = 'C'#225'lculo do PIS'
                Color = clBtnFace
                ParentBackground = False
                ParentColor = False
                TabOrder = 1
                object GroupBox13: TGroupBox
                  Left = 1
                  Top = 83
                  Width = 364
                  Height = 52
                  Align = alTop
                  Caption = 'Aliq. em Reais por Quantidade'
                  TabOrder = 2
                  object DBEdit132: TDBEdit
                    Left = 96
                    Top = 21
                    Width = 101
                    Height = 21
                    DataField = 'PIS_qBCProd'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 0
                    OnEnter = EdSerieEnter
                  end
                  object DBEdit131: TDBEdit
                    Left = 276
                    Top = 21
                    Width = 79
                    Height = 21
                    DataField = 'PIS_vAliqProd'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 1
                    OnEnter = EdSerieEnter
                    OnExit = DBEdit131Exit
                  end
                  object Label172: TcxLabel
                    Left = 14
                    Top = 22
                    Caption = 'QTD VEND.'
                    Transparent = True
                  end
                  object Label173: TcxLabel
                    Left = 214
                    Top = 22
                    Caption = 'AL'#205'Q (R$)'
                    Transparent = True
                  end
                end
                object GroupBox14: TGroupBox
                  Left = 1
                  Top = 16
                  Width = 364
                  Height = 52
                  Align = alTop
                  Caption = 'Por Al'#237'quota'
                  TabOrder = 0
                  object DBEdit129: TDBEdit
                    Left = 96
                    Top = 22
                    Width = 101
                    Height = 21
                    DataField = 'PIS_vBC'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 0
                    OnEnter = EdSerieEnter
                  end
                  object DBEdit130: TDBEdit
                    Left = 276
                    Top = 22
                    Width = 79
                    Height = 21
                    DataField = 'PIS_pPIS'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 1
                    OnEnter = EdSerieEnter
                    OnExit = DBEdit130Exit
                  end
                  object Label174: TcxLabel
                    Left = 8
                    Top = 22
                    Caption = 'VR BASE CALC'
                    Transparent = True
                  end
                  object Label175: TcxLabel
                    Left = 220
                    Top = 23
                    Caption = 'ALIQ (%)'
                    Transparent = True
                  end
                end
                object Panel3: TPanel
                  Left = 1
                  Top = 68
                  Width = 364
                  Height = 15
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Caption = '          OU'
                  TabOrder = 1
                end
              end
              object GroupBox15: TGroupBox
                Left = 458
                Top = 44
                Width = 377
                Height = 141
                Caption = 'C'#225'lculo do PIS S.T.'
                Color = clBtnFace
                ParentBackground = False
                ParentColor = False
                TabOrder = 2
                object GroupBox16: TGroupBox
                  Left = 1
                  Top = 83
                  Width = 375
                  Height = 52
                  Align = alTop
                  Caption = 'Aliq. em Reais por Quantidade'
                  TabOrder = 2
                  object DBEdit136: TDBEdit
                    Left = 92
                    Top = 21
                    Width = 101
                    Height = 21
                    DataField = 'PISST_qBCProd'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 0
                    OnEnter = EdSerieEnter
                  end
                  object DBEdit137: TDBEdit
                    Left = 279
                    Top = 21
                    Width = 86
                    Height = 21
                    DataField = 'PISST_vAliqProd'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 1
                    OnEnter = EdSerieEnter
                    OnExit = DBEdit137Exit
                  end
                  object Label145: TcxLabel
                    Left = 14
                    Top = 22
                    Caption = 'QTD VEND.'
                    Transparent = True
                  end
                  object Label146: TcxLabel
                    Left = 211
                    Top = 22
                    Caption = 'AL'#205'Q (R$)'
                    Transparent = True
                  end
                end
                object GroupBox17: TGroupBox
                  Left = 1
                  Top = 16
                  Width = 375
                  Height = 52
                  Align = alTop
                  Caption = 'Por Al'#237'quota'
                  TabOrder = 0
                  object DBEdit134: TDBEdit
                    Left = 92
                    Top = 21
                    Width = 101
                    Height = 21
                    DataField = 'PISST_vBc'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 0
                    OnEnter = EdSerieEnter
                  end
                  object DBEdit135: TDBEdit
                    Left = 279
                    Top = 23
                    Width = 86
                    Height = 21
                    DataField = 'PISST_pPis'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 3
                    OnEnter = EdSerieEnter
                    OnExit = DBEdit135Exit
                  end
                  object Label147: TcxLabel
                    Left = 8
                    Top = 22
                    Caption = 'VR BASE CALC'
                    Transparent = True
                  end
                  object Label148: TcxLabel
                    Left = 217
                    Top = 22
                    Caption = 'ALIQ (%)'
                    Transparent = True
                  end
                end
                object Panel4: TPanel
                  Left = 1
                  Top = 68
                  Width = 375
                  Height = 15
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Caption = '          OU'
                  TabOrder = 1
                end
              end
              object Label144: TcxLabel
                Left = 52
                Top = 13
                Caption = 'CST'
                ParentFont = False
                Transparent = True
              end
              object Label149: TcxLabel
                Left = 265
                Top = 191
                Caption = 'VR PIS'
                FocusControl = DBEdit133
                Transparent = True
              end
              object Label154: TcxLabel
                Left = 674
                Top = 191
                Caption = 'VR PIS S.T.'
                FocusControl = DBEdit138
                Transparent = True
              end
              object cmbPIS_CST: TcxDBImageComboBox
                Left = 81
                Top = 11
                Hint = 
                  '01-Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = valor da opera'#231#227'o al'#237'q' +
                  'uota normal (cumulativo/n'#227'o cumulativo));'#13#10'02-Opera'#231#227'o Tribut'#225've' +
                  'l (base de c'#225'lculo = valor da opera'#231#227'o (al'#237'quota diferenciada));' +
                  #13#10'03-Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = quantidade vendida x' +
                  ' al'#237'quota por unidade de produto);'#13#10'04-Opera'#231#227'o Tribut'#225'vel (trib' +
                  'uta'#231#227'o monof'#225'sica (al'#237'quota zero));'#13#10'06-Opera'#231#227'o Tribut'#225'vel (al'#237 +
                  'quota zero);'#13#10'07-Opera'#231#227'o Isenta da Contribui'#231#227'o;'#13#10'08-Opera'#231#227'o S' +
                  'em Incid'#234'ncia da Contribui'#231#227'o;'#13#10'09-Opera'#231#227'o com Suspens'#227'o da Con' +
                  'tribui'#231#227'o;'#13#10'49-Outras Opera'#231#245'es de Sa'#237'da;'#13#10'50-Opera'#231#227'o com Direi' +
                  'to a Cr'#233'dito - Vinculada Exclusivamente a Receita Tributada no M' +
                  'ercado Interno;'#13#10'51-Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada E' +
                  'xclusivamente a Receita N'#227'o Tributada no Mercado Interno;'#13#10'52-Op' +
                  'era'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a Receit' +
                  'a de Exporta'#231#227'o;'#13#10'53-Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada ' +
                  'a Receitas Tributadas e N'#227'o-Tributadas no Mercado Interno;'#13#10'54-O' +
                  'pera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributadas ' +
                  #13#10'55-Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-T' +
                  'ributadas no Mercado Interno e de Exporta'#231#227'o'#13#10'56-Opera'#231#227'o com Di' +
                  'reito a Cr'#233'dito - Vinculada a Receitas Tributadas e N'#227'o-Tributad' +
                  'as no Mercado Interno, e de Exporta'#231#227'o'#13#10'60-Cr'#233'dito Presumido - O' +
                  'pera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusivamente a Receita Tributad' +
                  'a no Mercado Interno'#13#10'61-Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231 +
                  #227'o Vinculada Exclusivamente a Receita N'#227'o-Tributada no Mercado I' +
                  'nterno'#13#10'62-Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada E' +
                  'xclusivamente a Receita de Exporta'#231#227'o'#13#10'63-Cr'#233'dito Presumido - Op' +
                  'era'#231#227'o de Aquisi'#231#227'o Vinculada a Receitas Tributadas e N'#227'o-Tribut' +
                  'adas no Mercado Interno'#13#10'64-Cr'#233'dito Presumido - Opera'#231#227'o de Aqui' +
                  'si'#231#227'o Vinculada a Receitas Tributadas no Mercado Interno e de Ex' +
                  'porta'#231#227'o'#13#10'65-Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada' +
                  ' a Receitas N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'#13#10'6' +
                  '6-Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receitas' +
                  ' Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o' +
                  #13#10'67-Cr'#233'dito Presumido - Outras Opera'#231#245'es'#13#10'70-Opera'#231#227'o de Aquisi' +
                  #231#227'o sem Direito a Cr'#233'dito'#13#10'71-Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'#13 +
                  #10'72-Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'#13#10'73-Opera'#231#227'o de Aquisi'#231#227 +
                  'o a Al'#237'quota Zero'#13#10'74-Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Co' +
                  'ntribui'#231#227'o'#13#10'75-Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria' +
                  #13#10'98-Outras Opera'#231#245'es de Entrada'#13#10'99-Outras Opera'#231#245'es'
                DataBinding.DataField = 'PIS_CST'
                DataBinding.DataSource = DM_NFE.DSNF_Item
                ParentShowHint = False
                Properties.Items = <>
                ShowHint = True
                TabOrder = 0
                OnClick = cmbPIS_CSTClick
                Width = 177
              end
              object cxLabel1: TcxLabel
                Left = 264
                Top = 12
                Caption = 
                  'As altera'#231#245'es efetuadas neste quadro refletir'#227'o nos dados do COF' +
                  'INS'
                ParentFont = False
                Transparent = True
              end
            end
            object TabCOFINS: TTabSheet
              Caption = 'COFINS'
              ImageIndex = 3
              object DBEdit140: TDBEdit
                Left = 306
                Top = 191
                Width = 96
                Height = 21
                Hint = 
                  'Valor da base de c'#225'lculo do COFINS x Al'#237'quota (percentual)'#13#10'ou '#13 +
                  #10'Al'#237'quota (em reais) x Quantidade vendida (caso o tipo de c'#225'lcul' +
                  'o em "valor") '#13#10'O valor do COFINS retido deve ser totalizado em ' +
                  'Outros valores.'
                Color = 16777158
                DataField = 'COFINS_vCOFINS'
                DataSource = DM_NFE.DSNF_Item
                TabOrder = 3
                OnEnter = EdSerieEnter
              end
              object DBEdit141: TDBEdit
                Left = 756
                Top = 191
                Width = 86
                Height = 21
                Hint = 
                  'Valor da base de c'#225'lculo do COFINS x Al'#237'quota (percentual)'#13#10'ou '#13 +
                  #10'Al'#237'quota (em reais) x Quantidade vendida (caso o tipo de c'#225'lcul' +
                  'o em "valor")'
                Color = 16777158
                DataField = 'COFINSST_vCOFINS'
                DataSource = DM_NFE.DSNF_Item
                TabOrder = 5
                OnEnter = EdSerieEnter
              end
              object GroupBox24: TGroupBox
                Left = 43
                Top = 47
                Width = 373
                Height = 141
                Caption = 'C'#225'lculo do COFINS'
                Color = 15329769
                ParentBackground = False
                ParentColor = False
                TabOrder = 1
                object GroupBox25: TGroupBox
                  Left = 1
                  Top = 83
                  Width = 371
                  Height = 52
                  Align = alTop
                  Caption = 'Aliq. em Reais por Quantidade'
                  TabOrder = 2
                  object DBEdit142: TDBEdit
                    Left = 92
                    Top = 21
                    Width = 101
                    Height = 21
                    DataField = 'COFINS_qBCProd'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 0
                    OnEnter = EdSerieEnter
                  end
                  object DBEdit143: TDBEdit
                    Left = 276
                    Top = 21
                    Width = 79
                    Height = 21
                    DataField = 'COFINS_vAliqProd'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 1
                    OnEnter = EdSerieEnter
                    OnExit = DBEdit143Exit
                  end
                  object Label158: TcxLabel
                    Left = 14
                    Top = 22
                    Caption = 'QTD VEND.'
                    Transparent = True
                  end
                  object Label159: TcxLabel
                    Left = 214
                    Top = 22
                    Caption = 'AL'#205'Q (R$)'
                    Transparent = True
                  end
                end
                object GroupBox26: TGroupBox
                  Left = 1
                  Top = 16
                  Width = 371
                  Height = 52
                  Align = alTop
                  Caption = 'Por Al'#237'quota'
                  TabOrder = 0
                  object DBEdit144: TDBEdit
                    Left = 92
                    Top = 21
                    Width = 101
                    Height = 21
                    DataField = 'COFINS_vBC'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 0
                    OnEnter = EdSerieEnter
                  end
                  object DBEdit145: TDBEdit
                    Left = 276
                    Top = 23
                    Width = 81
                    Height = 21
                    DataField = 'COFINS_pCOFINS'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 3
                    OnEnter = EdSerieEnter
                    OnExit = DBEdit145Exit
                  end
                  object Label160: TcxLabel
                    Left = 8
                    Top = 22
                    Caption = 'VR BASE CALC'
                    Transparent = True
                  end
                  object Label161: TcxLabel
                    Left = 220
                    Top = 23
                    Caption = 'ALIQ (%)'
                    Transparent = True
                  end
                end
                object Panel7: TPanel
                  Left = 1
                  Top = 68
                  Width = 371
                  Height = 15
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Caption = '          OU'
                  TabOrder = 1
                end
              end
              object GroupBox27: TGroupBox
                Left = 482
                Top = 47
                Width = 375
                Height = 141
                Caption = 'C'#225'lculo do COFINS S.T.'
                Color = 15263976
                ParentBackground = False
                ParentColor = False
                TabOrder = 2
                object GroupBox28: TGroupBox
                  Left = 1
                  Top = 83
                  Width = 373
                  Height = 52
                  Align = alTop
                  Caption = 'Aliq. em Reais por Quantidade'
                  TabOrder = 2
                  object DBEdit146: TDBEdit
                    Left = 92
                    Top = 21
                    Width = 101
                    Height = 21
                    DataField = 'COFINSST_qBCProd'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 0
                    OnEnter = EdSerieEnter
                  end
                  object DBEdit147: TDBEdit
                    Left = 272
                    Top = 21
                    Width = 86
                    Height = 21
                    DataField = 'COFINSST_vAliqProd'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 1
                    OnEnter = EdSerieEnter
                    OnExit = DBEdit147Exit
                  end
                  object Label162: TcxLabel
                    Left = 14
                    Top = 22
                    Caption = 'QTD VEND.'
                    Transparent = True
                  end
                  object Label163: TcxLabel
                    Left = 211
                    Top = 22
                    Caption = 'AL'#205'Q (R$)'
                    Transparent = True
                  end
                end
                object GroupBox29: TGroupBox
                  Left = 1
                  Top = 16
                  Width = 373
                  Height = 52
                  Align = alTop
                  Caption = 'Por Al'#237'quota'
                  TabOrder = 0
                  object DBEdit148: TDBEdit
                    Left = 92
                    Top = 21
                    Width = 101
                    Height = 21
                    DataField = 'COFINSST_vBC'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 0
                    OnEnter = EdSerieEnter
                  end
                  object DBEdit149: TDBEdit
                    Left = 276
                    Top = 23
                    Width = 82
                    Height = 21
                    DataField = 'COFINSST_pCOFINS'
                    DataSource = DM_NFE.DSNF_Item
                    TabOrder = 3
                    OnEnter = EdSerieEnter
                    OnExit = DBEdit149Exit
                  end
                  object Label164: TcxLabel
                    Left = 8
                    Top = 22
                    Caption = 'VR BASE CALC'
                    Transparent = True
                  end
                  object Label165: TcxLabel
                    Left = 217
                    Top = 22
                    Caption = 'ALIQ (%)'
                    Transparent = True
                  end
                end
                object Panel8: TPanel
                  Left = 1
                  Top = 68
                  Width = 373
                  Height = 15
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Caption = '          OU'
                  TabOrder = 1
                end
              end
              object Label155: TcxLabel
                Left = 43
                Top = 12
                Caption = 'CST'
                Transparent = True
              end
              object Label156: TcxLabel
                Left = 227
                Top = 193
                Caption = 'VR COFINS'
                FocusControl = DBEdit140
                Transparent = True
              end
              object Label157: TcxLabel
                Left = 664
                Top = 193
                Caption = 'VR COFINS S.T.'
                FocusControl = DBEdit141
                Transparent = True
              end
              object cmbCOFINS_CST: TcxDBImageComboBox
                Left = 73
                Top = 9
                Hint = 
                  '01-Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = valor da opera'#231#227'o al'#237'q' +
                  'uota normal (cumulativo/n'#227'o cumulativo));'#13#10'02-Opera'#231#227'o Tribut'#225've' +
                  'l (base de c'#225'lculo = valor da opera'#231#227'o (al'#237'quota diferenciada));' +
                  #13#10'03-Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = quantidade vendida x' +
                  ' al'#237'quota por unidade de produto);'#13#10'04-Opera'#231#227'o Tribut'#225'vel (trib' +
                  'uta'#231#227'o monof'#225'sica (al'#237'quota zero));'#13#10'06-Opera'#231#227'o Tribut'#225'vel (al'#237 +
                  'quota zero);'#13#10'07-Opera'#231#227'o Isenta da Contribui'#231#227'o;'#13#10'08-Opera'#231#227'o S' +
                  'em Incid'#234'ncia da Contribui'#231#227'o;'#13#10'09-Opera'#231#227'o com Suspens'#227'o da Con' +
                  'tribui'#231#227'o;'#13#10'49-Outras Opera'#231#245'es de Sa'#237'da;'#13#10'50-Opera'#231#227'o com Direi' +
                  'to a Cr'#233'dito - Vinculada Exclusivamente a Receita Tributada no M' +
                  'ercado Interno;'#13#10'51-Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada E' +
                  'xclusivamente a Receita N'#227'o Tributada no Mercado Interno;'#13#10'52-Op' +
                  'era'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a Receit' +
                  'a de Exporta'#231#227'o;'#13#10'53-Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada ' +
                  'a Receitas Tributadas e N'#227'o-Tributadas no Mercado Interno;'#13#10'54-O' +
                  'pera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tributadas ' +
                  #13#10'55-Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-T' +
                  'ributadas no Mercado Interno e de Exporta'#231#227'o'#13#10'56-Opera'#231#227'o com Di' +
                  'reito a Cr'#233'dito - Vinculada a Receitas Tributadas e N'#227'o-Tributad' +
                  'as no Mercado Interno, e de Exporta'#231#227'o'#13#10'60-Cr'#233'dito Presumido - O' +
                  'pera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusivamente a Receita Tributad' +
                  'a no Mercado Interno'#13#10'61-Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231 +
                  #227'o Vinculada Exclusivamente a Receita N'#227'o-Tributada no Mercado I' +
                  'nterno'#13#10'62-Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada E' +
                  'xclusivamente a Receita de Exporta'#231#227'o'#13#10'63-Cr'#233'dito Presumido - Op' +
                  'era'#231#227'o de Aquisi'#231#227'o Vinculada a Receitas Tributadas e N'#227'o-Tribut' +
                  'adas no Mercado Interno'#13#10'64-Cr'#233'dito Presumido - Opera'#231#227'o de Aqui' +
                  'si'#231#227'o Vinculada a Receitas Tributadas no Mercado Interno e de Ex' +
                  'porta'#231#227'o'#13#10'65-Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada' +
                  ' a Receitas N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o'#13#10'6' +
                  '6-Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Receitas' +
                  ' Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o' +
                  #13#10'67-Cr'#233'dito Presumido - Outras Opera'#231#245'es'#13#10'70-Opera'#231#227'o de Aquisi' +
                  #231#227'o sem Direito a Cr'#233'dito'#13#10'71-Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o'#13 +
                  #10'72-Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o'#13#10'73-Opera'#231#227'o de Aquisi'#231#227 +
                  'o a Al'#237'quota Zero'#13#10'74-Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Co' +
                  'ntribui'#231#227'o'#13#10'75-Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria' +
                  #13#10'98-Outras Opera'#231#245'es de Entrada'#13#10'99-Outras Opera'#231#245'es'
                DataBinding.DataField = 'COFINS_CST'
                DataBinding.DataSource = DM_NFE.DSNF_Item
                ParentShowHint = False
                Properties.Items = <>
                ShowHint = True
                TabOrder = 0
                Width = 177
              end
              object cxLabel2: TcxLabel
                Left = 264
                Top = 12
                Caption = 'As altera'#231#245'es efetuadas neste quadro n'#227'o afetar'#227'o o PIS'
                ParentFont = False
                Transparent = True
              end
            end
            object TabISSQN: TTabSheet
              Caption = 'ISSQN'
              ImageIndex = 4
              object DBEdit150: TDBEdit
                Left = 216
                Top = 100
                Width = 154
                Height = 21
                Hint = 
                  'Se informado, todos os demais campos do ISSQN ser'#227'o obrigat'#243'rios' +
                  '.'
                DataField = 'ISSQN_vBC'
                DataSource = DM_NFE.DSNF_Item
                TabOrder = 2
              end
              object DBEdit151: TDBEdit
                Left = 376
                Top = 100
                Width = 154
                Height = 21
                DataField = 'ISSQN_vAliq'
                DataSource = DM_NFE.DSNF_Item
                TabOrder = 3
              end
              object DBEdit152: TDBEdit
                Left = 536
                Top = 100
                Width = 121
                Height = 21
                Color = 16777158
                DataField = 'ISSQN_vISSQN'
                DataSource = DM_NFE.DSNF_Item
                TabOrder = 4
              end
              object DBEdit154: TDBEdit
                Left = 391
                Top = 55
                Width = 121
                Height = 21
                Hint = 
                  'Informar o c'#243'digo da lista de servi'#231'os da LC 116/03 em que se cl' +
                  'assifica o servi'#231'o.'#13#10'Se informado, todos os demais campos do ISS' +
                  'QN ser'#227'o obrigat'#243'rios.'
                DataField = 'ISSQN_cListServ'
                DataSource = DM_NFE.DSNF_Item
                TabOrder = 1
              end
              object RxDBComboBox6: TRxDBComboBox
                Left = 216
                Top = 55
                Width = 169
                Height = 23
                Ctl3D = False
                DataField = 'ISSQN_SitTrib'
                DataSource = DM_NFE.DSNF_Item
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                Items.Strings = (
                  'Vazio'
                  'NORMAL'
                  'RETIDA'
                  'SUBSTITUTA'
                  'ISENTA')
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4')
              end
              object CMBISSQN_cMunFG: TRxDBComboBox
                Left = 216
                Top = 145
                Width = 449
                Height = 23
                Ctl3D = False
                DataField = 'ISSQN_cMunFG'
                DataSource = DM_NFE.DSNF_Item
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                Sorted = True
                TabOrder = 11
                TabStop = False
              end
              object Label166: TcxLabel
                Left = 216
                Top = 81
                Caption = 'BC ISSQN'
                FocusControl = DBEdit150
                Transparent = True
              end
              object Label167: TcxLabel
                Left = 376
                Top = 81
                Caption = 'ALIQ ISSQN'
                FocusControl = DBEdit151
                Transparent = True
              end
              object Label168: TcxLabel
                Left = 536
                Top = 81
                Caption = 'VR ISSQN'
                FocusControl = DBEdit152
                Transparent = True
              end
              object Label169: TcxLabel
                Left = 216
                Top = 126
                Caption = 'MUNIC'#205'PIO GERADOR DA ISSQN'
                Transparent = True
              end
              object Label170: TcxLabel
                Left = 391
                Top = 36
                Caption = 'LISTA DE SERVI'#199'OS'
                FocusControl = DBEdit154
                Transparent = True
              end
              object Label171: TcxLabel
                Left = 216
                Top = 36
                Caption = 'CST'
                Transparent = True
              end
            end
          end
        end
      end
      object g1: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 915
        Height = 151
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        object tbv: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.CustomizeDialog = False
          FilterBox.Visible = fvNever
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SyncMode = False
          DataController.DataSource = DM_NFE.DSNF_Item
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.MRUItemsList = False
          Filtering.ColumnMRUItemsList = False
          NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
          OptionsBehavior.PostponedSynchronization = False
          OptionsBehavior.CopyCaptionsToClipboard = False
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.CopyPreviewToClipboard = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.InvertSelect = False
          OptionsView.NoDataToDisplayInfoText = '[[ VAZIO ]]'
          OptionsView.CellAutoHeight = True
          OptionsView.GridLineColor = clBlack
          OptionsView.GroupByBox = False
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clYellow
          object tbvnItem: TcxGridDBColumn
            DataBinding.FieldName = 'nItem'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 49
          end
          object tbvcProd: TcxGridDBColumn
            DataBinding.FieldName = 'cProd'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
          end
          object tbvcEAN: TcxGridDBColumn
            Caption = 'C'#211'DIGO GTIN'
            DataBinding.FieldName = 'cEAN'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 112
          end
          object tbvxProd: TcxGridDBColumn
            DataBinding.FieldName = 'xProd'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 227
          end
          object tbvNCM: TcxGridDBColumn
            DataBinding.FieldName = 'NCM'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 61
          end
          object tbvCFOP: TcxGridDBColumn
            DataBinding.FieldName = 'CFOP'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 40
          end
          object tbvuCom: TcxGridDBColumn
            DataBinding.FieldName = 'uCom'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 43
          end
          object tbvqCom: TcxGridDBColumn
            DataBinding.FieldName = 'qCom'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 67
          end
          object tbvvUnCom: TcxGridDBColumn
            DataBinding.FieldName = 'vUnCom'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object tbvvProd: TcxGridDBColumn
            DataBinding.FieldName = 'vProd'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object tbvvDesc: TcxGridDBColumn
            DataBinding.FieldName = 'vDesc'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object tbvvFrete: TcxGridDBColumn
            DataBinding.FieldName = 'vFrete'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object tbvvOutro: TcxGridDBColumn
            DataBinding.FieldName = 'vOutro'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object tbvvSeg: TcxGridDBColumn
            DataBinding.FieldName = 'vSeg'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object tbvICMS_vBC: TcxGridDBColumn
            DataBinding.FieldName = 'ICMS_vBC'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
          object tbvICMS_pICMS: TcxGridDBColumn
            DataBinding.FieldName = 'ICMS_pICMS'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 63
          end
          object tbvICMS_vICMS: TcxGridDBColumn
            DataBinding.FieldName = 'ICMS_vICMS'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
          end
        end
        object g1Lvl1: TcxGridLevel
          GridView = tbv
        end
      end
      object Panel18: TPanel
        Left = 0
        Top = 448
        Width = 921
        Height = 41
        Align = alBottom
        TabOrder = 2
        object nav1: TcxDBNavigator
          AlignWithMargins = True
          Left = 101
          Top = 4
          Width = 815
          Height = 33
          Buttons.OnButtonClick = nav1ButtonsButtonClick
          Buttons.CustomButtons = <>
          Buttons.First.Hint = '1'#186' REGISTRO'
          Buttons.First.ImageIndex = 9
          Buttons.First.Visible = False
          Buttons.PriorPage.Visible = False
          Buttons.Prior.Hint = 'REGISTRO ANTERIOR'
          Buttons.Prior.ImageIndex = 6
          Buttons.Prior.Visible = False
          Buttons.Next.Hint = 'PR'#211'XIMO REGISTRO'
          Buttons.Next.ImageIndex = 7
          Buttons.Next.Visible = False
          Buttons.NextPage.Visible = False
          Buttons.Last.Hint = #218'LTIMO REGISTRO'
          Buttons.Last.ImageIndex = 8
          Buttons.Last.Visible = False
          Buttons.Insert.Hint = 'NOVO (F5)'
          Buttons.Insert.ImageIndex = 0
          Buttons.Insert.Visible = False
          Buttons.Append.Hint = 'NOVO (F5)'
          Buttons.Append.Visible = True
          Buttons.Delete.Hint = 'EXCLUIR (F6)'
          Buttons.Delete.ImageIndex = 1
          Buttons.Edit.Hint = 'ALTERAR (F7)'
          Buttons.Edit.ImageIndex = 2
          Buttons.Post.Hint = 'GRAVAR (F8)'
          Buttons.Post.ImageIndex = 3
          Buttons.Cancel.Hint = 'CANCELAR (F9)'
          Buttons.Cancel.ImageIndex = 4
          Buttons.Refresh.Visible = False
          Buttons.SaveBookmark.Visible = False
          Buttons.GotoBookmark.Visible = False
          Buttons.Filter.Visible = False
          DataSource = DM_NFE.DSNF_Item
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object Button3: TcxButton
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 91
          Height = 33
          Align = alLeft
          Caption = 'PESQUISAR'
          TabOrder = 0
          OnClick = Button3Click
        end
      end
    end
    object TabTransp: TTabSheet
      Tag = 5
      Caption = 'TRANSPORTE'
      ImageIndex = 5
      object PGTransp: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 50
        Width = 915
        Height = 410
        Margins.Top = 50
        ActivePage = TabTranspVolumes
        Align = alTop
        Style = tsButtons
        TabOrder = 0
        object TabTranspDados: TTabSheet
          Caption = 'TRANSPORTADOR'
          object DBEdit102: TDBEdit
            Left = 169
            Top = 40
            Width = 173
            Height = 21
            DataField = 'Transporta_CNPJCPF'
            DataSource = DM_NFE.DSNF
            TabOrder = 1
            OnEnter = EdSerieEnter
          end
          object DBEdit107: TDBEdit
            Left = 9
            Top = 86
            Width = 844
            Height = 21
            DataField = 'Transporta_xNome'
            DataSource = DM_NFE.DSNF
            TabOrder = 3
            OnEnter = EdSerieEnter
          end
          object DBEdit113: TDBEdit
            Left = 348
            Top = 40
            Width = 198
            Height = 21
            Hint = 'Caso informado, dever'#225' ser informado a UF'
            DataField = 'Transporta_IE'
            DataSource = DM_NFE.DSNF
            TabOrder = 2
            OnEnter = EdSerieEnter
          end
          object DBEdit114: TDBEdit
            Left = 9
            Top = 130
            Width = 844
            Height = 21
            DataField = 'Transporta_xEnder'
            DataSource = DM_NFE.DSNF
            TabOrder = 4
            OnEnter = EdSerieEnter
          end
          object cmbTransporta_UF: TRxDBComboBox
            Left = 9
            Top = 173
            Width = 49
            Height = 23
            Ctl3D = False
            DataField = 'Transporta_UF'
            DataSource = DM_NFE.DSNF
            EnableValues = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Items.Strings = (
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
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            Values.Strings = (
              '12'
              '27'
              '13'
              '16'
              '29'
              '23'
              '53'
              '32'
              '52'
              '21'
              '31'
              '50'
              '51'
              '15'
              '25'
              '26'
              '22'
              '41'
              '33'
              '24'
              '11'
              '14'
              '43'
              '42'
              '28'
              '35'
              '17')
            OnChange = cmbTransporta_UFChange
            OnEnter = EdSerieEnter
          end
          object cmbTransporta_xMun: TRxDBComboBox
            Left = 64
            Top = 173
            Width = 789
            Height = 23
            Ctl3D = False
            DataField = 'Transporta_xMun'
            DataSource = DM_NFE.DSNF
            EnableValues = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            Sorted = True
            TabOrder = 6
            OnEnter = EdSerieEnter
          end
          object RxDBComboBox15: TRxDBComboBox
            Left = 9
            Top = 40
            Width = 154
            Height = 23
            Ctl3D = False
            DataField = 'modFrete'
            DataSource = DM_NFE.DSNF
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Items.Strings = (
              'Emitente'
              'Destinatario'
              'Terceiros'
              'SemFrete')
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Values.Strings = (
              '0'
              '1'
              '2'
              '3')
            OnEnter = EdSerieEnter
          end
          object GroupBox22: TGroupBox
            Left = 14
            Top = 215
            Width = 488
            Height = 115
            Caption = 'Reten'#231#227'o de ICMS'
            TabOrder = 7
            object DBEdit101: TDBEdit
              Left = 263
              Top = 39
              Width = 107
              Height = 21
              Hint = 
                'Valor do ICMS do servi'#231'o de transporte retido.'#13#10'Uma vez informad' +
                'o qualquer um dos campos deste grupo, todos os demais tornam-se ' +
                'Obrigat'#243'rios'
              DataField = 'retvServ'
              DataSource = DM_NFE.DSNF
              TabOrder = 2
              OnEnter = EdSerieEnter
            end
            object DBEdit115: TDBEdit
              Left = 16
              Top = 39
              Width = 154
              Height = 21
              Hint = 
                'Valor do ICMS do servi'#231'o de transporte retido.'#13#10'Uma vez informad' +
                'o qualquer um dos campos deste grupo, todos os demais tornam-se ' +
                'Obrigat'#243'rios'
              DataField = 'retvBCRet'
              DataSource = DM_NFE.DSNF
              TabOrder = 0
              OnEnter = EdSerieEnter
            end
            object DBEdit117: TDBEdit
              Left = 176
              Top = 39
              Width = 81
              Height = 21
              Hint = 
                'Valor do ICMS do servi'#231'o de transporte retido.'#13#10'Uma vez informad' +
                'o qualquer um dos campos deste grupo, todos os demais tornam-se ' +
                'Obrigat'#243'rios'
              DataField = 'retpICMSRet'
              DataSource = DM_NFE.DSNF
              TabOrder = 1
              OnEnter = EdSerieEnter
            end
            object DBEdit123: TDBEdit
              Left = 375
              Top = 39
              Width = 107
              Height = 21
              Hint = 
                'Valor do ICMS do servi'#231'o de transporte retido.'#13#10'Uma vez informad' +
                'o qualquer um dos campos deste grupo, todos os demais tornam-se ' +
                'Obrigat'#243'rios'
              DataField = 'retvICMSRet'
              DataSource = DM_NFE.DSNF
              TabOrder = 3
              OnEnter = EdSerieEnter
            end
            object DBEdit128: TDBEdit
              Left = 16
              Top = 82
              Width = 64
              Height = 21
              Hint = 
                'Valor do ICMS do servi'#231'o de transporte retido.'#13#10'Uma vez informad' +
                'o qualquer um dos campos deste grupo, todos os demais tornam-se ' +
                'Obrigat'#243'rios'
              DataField = 'retCFOP'
              DataSource = DM_NFE.DSNF
              TabOrder = 4
              OnEnter = EdSerieEnter
            end
            object cmbTraspRetcMunFG: TRxDBComboBox
              Left = 86
              Top = 82
              Width = 396
              Height = 23
              Hint = 
                'Valor do ICMS do servi'#231'o de transporte retido.'#13#10'Uma vez informad' +
                'o qualquer um dos campos deste grupo, todos os demais tornam-se ' +
                'Obrigat'#243'rios'
              Ctl3D = False
              DataField = 'retcMunFG'
              DataSource = DM_NFE.DSNF
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              Sorted = True
              TabOrder = 11
              OnEnter = EdSerieEnter
            end
            object Label153: TcxLabel
              Left = 263
              Top = 23
              Caption = 'VALOR DO SERV.'
              FocusControl = DBEdit101
              Transparent = True
            end
            object Label176: TcxLabel
              Left = 16
              Top = 23
              Caption = 'BASE DE C'#193'LC.'
              FocusControl = DBEdit115
              Transparent = True
            end
            object Label179: TcxLabel
              Left = 176
              Top = 23
              Caption = 'AL'#205'Q. ICMS'
              FocusControl = DBEdit117
              Transparent = True
            end
            object Label180: TcxLabel
              Left = 375
              Top = 23
              Caption = 'VALOR ICMS RET.'
              FocusControl = DBEdit123
              Transparent = True
            end
            object Label181: TcxLabel
              Left = 16
              Top = 66
              Caption = 'CFOP'
              FocusControl = DBEdit128
              Transparent = True
            end
            object Label182: TcxLabel
              Left = 86
              Top = 66
              Caption = 'MUNIC'#205'PIO'
              Transparent = True
            end
          end
          object GroupBox23: TGroupBox
            Left = 508
            Top = 215
            Width = 345
            Height = 115
            Caption = 'Dados do ve'#237'culo'
            TabOrder = 15
            object DBEdit153: TDBEdit
              Left = 11
              Top = 43
              Width = 98
              Height = 21
              Hint = 'Caso informado, dever'#225' ser informado a UF'
              CharCase = ecUpperCase
              DataField = 'veicplaca'
              DataSource = DM_NFE.DSNF
              TabOrder = 0
              OnEnter = EdSerieEnter
            end
            object DBEdit156: TDBEdit
              Left = 76
              Top = 85
              Width = 65
              Height = 21
              Hint = 'Registro Nacional de Transportador de Carga'
              DataField = 'veicRNTC'
              DataSource = DM_NFE.DSNF
              TabOrder = 5
              OnEnter = EdSerieEnter
            end
            object RxDBComboBox16: TRxDBComboBox
              Left = 15
              Top = 85
              Width = 49
              Height = 23
              Ctl3D = False
              DataField = 'veicUF'
              DataSource = DM_NFE.DSNF
              EnableValues = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              Items.Strings = (
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
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              Values.Strings = (
                '12'
                '27'
                '13'
                '16'
                '29'
                '23'
                '53'
                '32'
                '52'
                '21'
                '31'
                '50'
                '51'
                '15'
                '25'
                '26'
                '22'
                '41'
                '33'
                '24'
                '11'
                '14'
                '43'
                '42'
                '28'
                '35'
                '17')
              OnChange = cmbTransporta_UFChange
              OnEnter = EdSerieEnter
            end
            object Label183: TcxLabel
              Left = 16
              Top = 22
              Caption = 'PLACA'
              FocusControl = DBEdit153
              Transparent = True
            end
            object Label184: TcxLabel
              Left = 20
              Top = 68
              Caption = 'UF'
              Transparent = True
            end
            object Label185: TcxLabel
              Left = 79
              Top = 68
              Caption = 'RNTC'
              FocusControl = DBEdit156
              Transparent = True
            end
          end
          object Label130: TcxLabel
            Left = 9
            Top = 24
            Caption = 'MODALID. DE FRETE'
            Transparent = True
          end
          object Label131: TcxLabel
            Left = 169
            Top = 24
            Caption = 'CPF/CNPJ'
            FocusControl = DBEdit102
            Transparent = True
          end
          object Label150: TcxLabel
            Left = 9
            Top = 70
            Caption = 'RAZAO SOCIAL'
            FocusControl = DBEdit107
            Transparent = True
          end
          object Label151: TcxLabel
            Left = 348
            Top = 24
            Caption = 'INSCR. ESTADUAL'
            FocusControl = DBEdit113
            Transparent = True
          end
          object Label152: TcxLabel
            Left = 9
            Top = 114
            Caption = 'ENDERE'#199'O'
            FocusControl = DBEdit114
            Transparent = True
          end
          object Label177: TcxLabel
            Left = 8
            Top = 158
            Caption = 'UF'
            Transparent = True
          end
          object Label178: TcxLabel
            Left = 67
            Top = 158
            Caption = 'MUNIC'#205'PIO'
            Transparent = True
          end
        end
        object TabTranspReboque: TTabSheet
          Caption = 'REBOQUE'
          ImageIndex = 3
          object GrdReboque: TcxGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 282
            Height = 371
            Align = alLeft
            TabOrder = 0
            LevelTabs.Slants.Kind = skCutCorner
            LevelTabs.Style = 6
            object tbvReboque: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.CustomizeDialog = False
              FilterBox.Visible = fvNever
              OnCellClick = tbvReboqueCellClick
              DataController.DataModeController.GridMode = True
              DataController.DataModeController.SyncMode = False
              DataController.DataSource = DM_NFE.DSNF_Reboque
              DataController.Options = [dcoAnsiSort, dcoCaseInsensitive]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              Filtering.MRUItemsList = False
              Filtering.ColumnMRUItemsList = False
              NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
              OptionsBehavior.PostponedSynchronization = False
              OptionsBehavior.CopyCaptionsToClipboard = False
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.CopyPreviewToClipboard = False
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsSelection.InvertSelect = False
              OptionsView.NoDataToDisplayInfoText = '[[ VAZIO ]]'
              OptionsView.ScrollBars = ssVertical
              OptionsView.CellAutoHeight = True
              OptionsView.GridLineColor = clBlack
              OptionsView.GroupByBox = False
              OptionsView.GroupSummaryLayout = gslAlignWithColumns
              OptionsView.Indicator = True
              OptionsView.RowSeparatorColor = clYellow
              object tbvReboqueplaca: TcxGridDBColumn
                DataBinding.FieldName = 'placa'
                HeaderAlignmentHorz = taCenter
                Width = 80
              end
              object tbvReboqueuf: TcxGridDBColumn
                DataBinding.FieldName = 'uf'
                HeaderAlignmentHorz = taCenter
                Width = 27
              end
              object tbvReboquerntc: TcxGridDBColumn
                DataBinding.FieldName = 'rntc'
                HeaderAlignmentHorz = taCenter
                Width = 138
              end
            end
            object LvReboque: TcxGridLevel
              GridView = tbvReboque
            end
          end
          object GroupBox30: TGroupBox
            Left = 588
            Top = 120
            Width = 261
            Height = 133
            Caption = 'Inserir Reboque'
            TabOrder = 1
            object EdPlaca: TEdit
              Left = 16
              Top = 45
              Width = 149
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
            end
            object edRntc: TEdit
              Left = 16
              Top = 94
              Width = 225
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 5
            end
            object cmbRebUf: TComboBox
              Left = 176
              Top = 44
              Width = 65
              Height = 23
              Style = csDropDownList
              CharCase = ecUpperCase
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              Items.Strings = (
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
            end
            object Label186: TcxLabel
              Left = 16
              Top = 26
              Caption = 'PLACA'
              FocusControl = DBEdit114
              Transparent = True
            end
            object Label187: TcxLabel
              Left = 16
              Top = 75
              Caption = 'RNTC'
              FocusControl = DBEdit114
              Transparent = True
            end
            object Label188: TcxLabel
              Left = 176
              Top = 23
              Caption = 'UF'
              FocusControl = DBEdit114
              Transparent = True
            end
          end
          object btnRebInserir: TcxButton
            AlignWithMargins = True
            Left = 352
            Top = 132
            Width = 196
            Height = 40
            Caption = 'Inserir'
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 2
            TabStop = False
            OnClick = btnRebInserirClick
          end
          object btnRebRemover: TcxButton
            AlignWithMargins = True
            Left = 352
            Top = 197
            Width = 196
            Height = 40
            Caption = 'Remover'
            Enabled = False
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 3
            TabStop = False
            OnClick = btnRebRemoverClick
          end
        end
        object TabTranspVolumes: TTabSheet
          Caption = 'VOLUMES'
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 268
            Height = 377
            Align = alLeft
            BevelOuter = bvNone
            ParentBackground = False
            ParentColor = True
            TabOrder = 0
            object GroupBox31: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 262
              Height = 371
              Align = alClient
              Caption = 'Inserir Volumes'
              Color = clBtnFace
              ParentBackground = False
              ParentColor = False
              TabOrder = 0
              object EdQtd: TEdit
                Left = 16
                Top = 44
                Width = 121
                Height = 21
                Alignment = taRightJustify
                NumbersOnly = True
                TabOrder = 0
              end
              object EdEspecie: TEdit
                Left = 16
                Top = 92
                Width = 237
                Height = 21
                TabOrder = 1
              end
              object EdMarca: TEdit
                Left = 16
                Top = 136
                Width = 237
                Height = 21
                TabOrder = 2
              end
              object EdNmro: TEdit
                Left = 16
                Top = 184
                Width = 237
                Height = 21
                TabOrder = 3
              end
              object EdPliq: TCurrencyEdit
                Left = 16
                Top = 232
                Width = 121
                Height = 23
                Margins.Left = 2
                Margins.Top = 1
                Ctl3D = True
                DisplayFormat = '0.00 KG'
                ParentCtl3D = False
                TabOrder = 4
              end
              object edPbrt: TCurrencyEdit
                Left = 16
                Top = 276
                Width = 121
                Height = 23
                Margins.Left = 2
                Margins.Top = 1
                Ctl3D = True
                DisplayFormat = '0.00 KG'
                ParentCtl3D = False
                TabOrder = 11
              end
              object Label189: TcxLabel
                Left = 16
                Top = 26
                Caption = 'QUANTIDADE DE VOL.'
                FocusControl = DBEdit114
                Transparent = True
              end
              object Label190: TcxLabel
                Left = 16
                Top = 74
                Caption = 'ESP'#201'CIE'
                FocusControl = DBEdit114
                Transparent = True
              end
              object Label191: TcxLabel
                Left = 16
                Top = 118
                Caption = 'MARCA'
                FocusControl = DBEdit114
                Transparent = True
              end
              object Label192: TcxLabel
                Left = 16
                Top = 166
                Caption = 'NUMERA'#199#195'O'
                FocusControl = DBEdit114
                Transparent = True
              end
              object Label193: TcxLabel
                Left = 16
                Top = 213
                Caption = 'PESO L'#205'Q'
                FocusControl = DBEdit114
                Transparent = True
              end
              object Label194: TcxLabel
                Left = 16
                Top = 257
                Caption = 'PESO BRUTO'
                FocusControl = DBEdit114
                Transparent = True
              end
            end
          end
          object Panel6: TPanel
            Left = 343
            Top = 0
            Width = 564
            Height = 377
            Align = alClient
            ParentBackground = False
            ParentColor = True
            TabOrder = 2
            object GrdVol: TcxGrid
              AlignWithMargins = True
              Left = 4
              Top = 20
              Width = 556
              Height = 178
              Align = alClient
              TabOrder = 1
              LevelTabs.Slants.Kind = skCutCorner
              LevelTabs.Style = 6
              object TbvVol: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                FilterBox.CustomizeDialog = False
                FilterBox.Visible = fvNever
                OnCellClick = TbvVolCellClick
                DataController.DataModeController.GridMode = True
                DataController.DataModeController.SyncMode = False
                DataController.DataSource = DM_NFE.DSNF_Volume
                DataController.Options = [dcoAnsiSort, dcoCaseInsensitive]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Filtering.MRUItemsList = False
                Filtering.ColumnMRUItemsList = False
                NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
                OptionsBehavior.PostponedSynchronization = False
                OptionsBehavior.CopyCaptionsToClipboard = False
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsBehavior.CopyPreviewToClipboard = False
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsSelection.InvertSelect = False
                OptionsView.NoDataToDisplayInfoText = '[[ VAZIO ]]'
                OptionsView.ScrollBars = ssVertical
                OptionsView.CellAutoHeight = True
                OptionsView.GridLineColor = clBlack
                OptionsView.GroupByBox = False
                OptionsView.GroupSummaryLayout = gslAlignWithColumns
                OptionsView.Indicator = True
                OptionsView.RowSeparatorColor = clYellow
                object TbvVolqVol: TcxGridDBColumn
                  Caption = 'QTD. VOL.'
                  DataBinding.FieldName = 'qVol'
                  HeaderAlignmentHorz = taCenter
                end
                object TbvVolespecie: TcxGridDBColumn
                  Caption = 'ESP'#201'CIE'
                  DataBinding.FieldName = 'especie'
                  HeaderAlignmentHorz = taCenter
                  Width = 159
                end
                object TbvVolmarca: TcxGridDBColumn
                  Caption = 'MARCA'
                  DataBinding.FieldName = 'marca'
                  HeaderAlignmentHorz = taCenter
                  Width = 100
                end
                object TbvVolnVol: TcxGridDBColumn
                  Caption = 'NUMERA'#199#195'O'
                  DataBinding.FieldName = 'nVol'
                  HeaderAlignmentHorz = taCenter
                  Width = 100
                end
                object TbvVolpesoL: TcxGridDBColumn
                  Caption = 'PESO L'#205'Q'
                  DataBinding.FieldName = 'pesoL'
                  HeaderAlignmentHorz = taCenter
                end
                object TbvVolpesoB: TcxGridDBColumn
                  Caption = 'PESO BRUTO'
                  DataBinding.FieldName = 'pesoB'
                  HeaderAlignmentHorz = taCenter
                  Width = 90
                end
              end
              object LvVol: TcxGridLevel
                GridView = TbvVol
              end
            end
            object Panel9: TPanel
              Left = 1
              Top = 217
              Width = 562
              Height = 159
              Align = alBottom
              BevelOuter = bvNone
              ParentBackground = False
              ParentColor = True
              TabOrder = 3
              object GroupBox32: TGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 233
                Height = 153
                Align = alLeft
                Caption = 'Inserir Lacre'
                Color = clBtnFace
                ParentBackground = False
                ParentColor = False
                TabOrder = 1
                object EdLacre: TEdit
                  Left = 8
                  Top = 67
                  Width = 211
                  Height = 21
                  TabOrder = 1
                end
                object Label195: TcxLabel
                  Left = 5
                  Top = 48
                  Caption = 'N'#218'MERO DO LACRE'
                  FocusControl = DBEdit114
                  Transparent = True
                end
              end
              object GrdLacre: TcxGrid
                AlignWithMargins = True
                Left = 317
                Top = 3
                Width = 242
                Height = 153
                Align = alClient
                TabOrder = 2
                LevelTabs.Slants.Kind = skCutCorner
                LevelTabs.Style = 6
                LookAndFeel.SkinName = ''
                object TbvLacre: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  FilterBox.CustomizeDialog = False
                  FilterBox.Visible = fvNever
                  OnCellClick = TbvLacreCellClick
                  DataController.DataModeController.GridMode = True
                  DataController.DataModeController.SyncMode = False
                  DataController.DataSource = DM_NFE.DSNF_Lacre
                  DataController.Options = [dcoAnsiSort, dcoCaseInsensitive]
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  Filtering.MRUItemsList = False
                  Filtering.ColumnMRUItemsList = False
                  NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
                  OptionsBehavior.PostponedSynchronization = False
                  OptionsBehavior.CopyCaptionsToClipboard = False
                  OptionsBehavior.GoToNextCellOnEnter = True
                  OptionsBehavior.CopyPreviewToClipboard = False
                  OptionsCustomize.ColumnFiltering = False
                  OptionsCustomize.ColumnGrouping = False
                  OptionsCustomize.ColumnsQuickCustomization = True
                  OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
                  OptionsData.Deleting = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsSelection.CellSelect = False
                  OptionsSelection.InvertSelect = False
                  OptionsView.NoDataToDisplayInfoText = '[[ VAZIO ]]'
                  OptionsView.ScrollBars = ssVertical
                  OptionsView.CellAutoHeight = True
                  OptionsView.GridLineColor = clBlack
                  OptionsView.GroupByBox = False
                  OptionsView.GroupSummaryLayout = gslAlignWithColumns
                  OptionsView.Indicator = True
                  OptionsView.RowSeparatorColor = clYellow
                  object TbvLacrenlacre: TcxGridDBColumn
                    Caption = 'LACRES'
                    DataBinding.FieldName = 'nlacre'
                    HeaderAlignmentHorz = taCenter
                    Width = 277
                  end
                end
                object LvLacre: TcxGridLevel
                  GridView = TbvLacre
                end
              end
              object Panel13: TPanel
                Left = 239
                Top = 0
                Width = 75
                Height = 159
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                object btnLacreInserir: TcxButton
                  AlignWithMargins = True
                  Left = 7
                  Top = 42
                  Width = 59
                  Height = 40
                  Caption = 'Inserir'
                  Enabled = False
                  SpeedButtonOptions.CanBeFocused = False
                  TabOrder = 0
                  TabStop = False
                  OnClick = btnLacreInserirClick
                end
                object btnLacreRemover: TcxButton
                  AlignWithMargins = True
                  Left = 7
                  Top = 95
                  Width = 59
                  Height = 40
                  Caption = 'Remover'
                  Enabled = False
                  SpeedButtonOptions.CanBeFocused = False
                  TabOrder = 1
                  TabStop = False
                  OnClick = btnLacreRemoverClick
                end
              end
            end
            object Panel10: TPanel
              Left = 1
              Top = 201
              Width = 562
              Height = 16
              Align = alBottom
              BevelOuter = bvNone
              Caption = 'LACRES'
              ParentBackground = False
              ParentColor = True
              TabOrder = 2
            end
            object Panel11: TPanel
              Left = 1
              Top = 1
              Width = 562
              Height = 16
              Align = alTop
              BevelOuter = bvNone
              Caption = 'VOLUMES'
              ParentBackground = False
              ParentColor = True
              TabOrder = 0
            end
          end
          object Panel12: TPanel
            Left = 268
            Top = 0
            Width = 75
            Height = 377
            Align = alLeft
            BevelOuter = bvNone
            ParentBackground = False
            ParentColor = True
            TabOrder = 1
            object btnVolInserir: TcxButton
              AlignWithMargins = True
              Left = 7
              Top = 140
              Width = 59
              Height = 40
              Caption = 'Inserir'
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 0
              TabStop = False
              OnClick = btnVolInserirClick
            end
            object btnVolRemover: TcxButton
              AlignWithMargins = True
              Left = 7
              Top = 205
              Width = 59
              Height = 40
              Caption = 'Remover'
              Enabled = False
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 1
              TabStop = False
              OnClick = btnVolRemoverClick
            end
          end
        end
      end
    end
    object TabCob: TTabSheet
      Tag = 6
      Caption = 'COBRAN'#199'A'
      ImageIndex = 6
      object Panel14: TPanel
        Left = 462
        Top = 0
        Width = 459
        Height = 489
        Align = alClient
        ParentBackground = False
        ParentColor = True
        TabOrder = 1
        object GrdDup: TcxGrid
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 451
          Height = 369
          Align = alTop
          TabOrder = 0
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          object TbvDup: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            FilterBox.Visible = fvNever
            OnCellClick = TbvDupCellClick
            DataController.DataModeController.GridMode = True
            DataController.DataModeController.SyncMode = False
            DataController.DataSource = DM_NFE.DSNF_Duplicata
            DataController.Options = [dcoAnsiSort, dcoCaseInsensitive]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
            OptionsBehavior.PostponedSynchronization = False
            OptionsBehavior.CopyCaptionsToClipboard = False
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.CopyPreviewToClipboard = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.InvertSelect = False
            OptionsView.NoDataToDisplayInfoText = '[[ VAZIO ]]'
            OptionsView.ScrollBars = ssVertical
            OptionsView.CellAutoHeight = True
            OptionsView.GridLineColor = clBlack
            OptionsView.GroupByBox = False
            OptionsView.GroupSummaryLayout = gslAlignWithColumns
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clYellow
            object TbvDupnDup: TcxGridDBColumn
              DataBinding.FieldName = 'nDup'
              HeaderAlignmentHorz = taCenter
              Width = 154
            end
            object TbvDupdVenc: TcxGridDBColumn
              DataBinding.FieldName = 'dVenc'
              HeaderAlignmentHorz = taCenter
              Width = 108
            end
            object TbvDupvDup: TcxGridDBColumn
              DataBinding.FieldName = 'vDup'
              HeaderAlignmentHorz = taCenter
              Width = 143
            end
          end
          object LvDup: TcxGridLevel
            GridView = TbvDup
          end
        end
        object EdDupVenc: TDateEdit
          Left = 77
          Top = 448
          Width = 121
          Height = 21
          NumGlyphs = 2
          YearDigits = dyFour
          TabOrder = 4
        end
        object EdDupValor: TCurrencyEdit
          Left = 206
          Top = 448
          Width = 121
          Height = 21
          Margins.Top = 2
          TabOrder = 8
        end
        object btnDupInserir: TcxButton
          AlignWithMargins = True
          Left = 360
          Top = 385
          Width = 59
          Height = 40
          Caption = 'Inserir'
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 1
          TabStop = False
          OnClick = btnDupInserirClick
        end
        object btnDupRemover: TcxButton
          AlignWithMargins = True
          Left = 360
          Top = 431
          Width = 59
          Height = 40
          Caption = 'Remover'
          Enabled = False
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 3
          TabStop = False
          OnClick = btnDupRemoverClick
        end
        object EdDup: TEdit
          Left = 77
          Top = 398
          Width = 158
          Height = 21
          TabOrder = 2
        end
        object Label200: TcxLabel
          Left = 77
          Top = 382
          Caption = 'N'#186' DA DUPICATA'
          Transparent = True
        end
        object Label201: TcxLabel
          Left = 77
          Top = 432
          Caption = 'VENCIMENTO'
          Transparent = True
        end
        object Label202: TcxLabel
          Left = 204
          Top = 429
          Caption = 'VALOR'
          Transparent = True
        end
      end
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 462
        Height = 489
        Align = alLeft
        ParentBackground = False
        ParentColor = True
        TabOrder = 0
        object GroupBox33: TGroupBox
          Left = 84
          Top = 128
          Width = 277
          Height = 221
          Caption = 'Fatura'
          Color = clBtnFace
          Ctl3D = False
          ParentBackground = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 0
          object DBEdit139: TDBEdit
            Left = 20
            Top = 48
            Width = 213
            Height = 21
            DataField = 'nFat'
            DataSource = DM_NFE.DSNF
            TabOrder = 0
          end
          object DBEdit155: TDBEdit
            Left = 20
            Top = 92
            Width = 154
            Height = 21
            DataField = 'vOrig'
            DataSource = DM_NFE.DSNF
            TabOrder = 1
          end
          object DBEdit157: TDBEdit
            Left = 20
            Top = 136
            Width = 154
            Height = 21
            DataField = 'vDesc'
            DataSource = DM_NFE.DSNF
            TabOrder = 2
          end
          object DBEdit158: TDBEdit
            Left = 20
            Top = 180
            Width = 154
            Height = 21
            DataField = 'vLiq'
            DataSource = DM_NFE.DSNF
            TabOrder = 7
          end
          object Label196: TcxLabel
            Left = 20
            Top = 32
            Caption = 'N'#186' DA FATURA'
            FocusControl = DBEdit139
            Transparent = True
          end
          object Label197: TcxLabel
            Left = 20
            Top = 76
            Caption = 'VALOR ORIG.'
            FocusControl = DBEdit155
            Transparent = True
          end
          object Label198: TcxLabel
            Left = 20
            Top = 120
            Caption = 'DESCONTO'
            FocusControl = DBEdit157
            Transparent = True
          end
          object Label199: TcxLabel
            Left = 20
            Top = 164
            Caption = 'VALOR L'#205'Q.'
            FocusControl = DBEdit158
            Transparent = True
          end
        end
        object cxDBNavigator1: TcxDBNavigator
          AlignWithMargins = True
          Left = 4
          Top = 451
          Width = 454
          Height = 34
          Buttons.OnButtonClick = cxDBNavigator1ButtonsButtonClick
          Buttons.CustomButtons = <>
          Buttons.First.Hint = '1'#186' REGISTRO'
          Buttons.First.ImageIndex = 9
          Buttons.First.Visible = False
          Buttons.PriorPage.Visible = False
          Buttons.Prior.Hint = 'REGISTRO ANTERIOR'
          Buttons.Prior.ImageIndex = 6
          Buttons.Prior.Visible = False
          Buttons.Next.Hint = 'PR'#211'XIMO REGISTRO'
          Buttons.Next.ImageIndex = 7
          Buttons.Next.Visible = False
          Buttons.NextPage.Visible = False
          Buttons.Last.Hint = #218'LTIMO REGISTRO'
          Buttons.Last.ImageIndex = 8
          Buttons.Last.Visible = False
          Buttons.Insert.Hint = 'NOVO F5)'
          Buttons.Insert.ImageIndex = 0
          Buttons.Insert.Visible = False
          Buttons.Append.Visible = False
          Buttons.Delete.Hint = 'EXCLUIR (F6)'
          Buttons.Delete.ImageIndex = 1
          Buttons.Edit.Hint = 'ALTERAR (F7)'
          Buttons.Edit.ImageIndex = 2
          Buttons.Post.Hint = 'GRAVAR (F8)'
          Buttons.Post.ImageIndex = 3
          Buttons.Cancel.Hint = 'CANCELAR (F9)'
          Buttons.Cancel.ImageIndex = 4
          Buttons.Refresh.Visible = False
          Buttons.SaveBookmark.Visible = False
          Buttons.GotoBookmark.Visible = False
          Buttons.Filter.Visible = False
          Align = alBottom
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          ExplicitWidth = 452
        end
      end
    end
    object TabInfoAdic: TTabSheet
      Tag = 7
      Caption = 'INFOR. ADIC.'
      ImageIndex = 7
      OnShow = TabInfoAdicShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox34: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 915
        Height = 157
        Align = alTop
        Caption = 'Informa'#231#245'es de interesse do fisco'
        TabOrder = 0
        object DBMemo2: TDBMemo
          AlignWithMargins = True
          Left = 4
          Top = 19
          Width = 907
          Height = 134
          Align = alClient
          Color = 13882323
          DataField = 'infAdFisco'
          DataSource = DM_NFE.DSNF
          TabOrder = 0
        end
      end
      object GroupBox35: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 166
        Width = 915
        Height = 320
        Align = alClient
        Caption = 'Informa'#231#245'es de interesse do contribuinte'
        TabOrder = 1
        object DBMemo3: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 907
          Height = 127
          Color = 14024703
          Ctl3D = False
          DataField = 'infCpl'
          DataSource = DM_NFE.DSNF
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object Panel1: TPanel
          Left = 1
          Top = 152
          Width = 913
          Height = 167
          Align = alBottom
          Caption = 'Panel1'
          TabOrder = 1
          object DBMemo4: TDBMemo
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 841
            Height = 159
            Align = alClient
            Color = clWhite
            Ctl3D = False
            DataField = 'infCpl_Dig'
            DataSource = DM_NFE.DSNF
            ParentCtl3D = False
            TabOrder = 0
          end
          object Panel2: TPanel
            Left = 848
            Top = 1
            Width = 64
            Height = 165
            Align = alRight
            TabOrder = 1
            object btnDic: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 119
              Width = 56
              Height = 42
              Hint = 'Abrir Dicion'#225'rio'
              Align = alBottom
              Caption = '?'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              WordWrap = True
              OnClick = btnDicClick
            end
            object btnAddDic: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 71
              Width = 56
              Height = 42
              Hint = 'Adicionar texto selecionado ao dicion'#225'rio'
              Align = alBottom
              Caption = '+'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              WordWrap = True
              OnClick = btnAddDicClick
            end
          end
        end
      end
    end
    object TabTotais: TTabSheet
      Tag = 8
      Caption = 'TOTAIS'
      ImageIndex = 4
      OnShow = TabTotaisShow
      object Shape16: TShape
        Left = 0
        Top = 0
        Width = 921
        Height = 153
        Align = alTop
        Brush.Color = clBtnFace
        Pen.Color = clWhite
      end
      object DBEdit162: TDBEdit
        Left = 63
        Top = 50
        Width = 154
        Height = 21
        DataField = 'ICMSTot_vBC'
        DataSource = DM_NFE.DSNF
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit163: TDBEdit
        Left = 223
        Top = 50
        Width = 154
        Height = 21
        DataField = 'ICMSTot_vICMS'
        DataSource = DM_NFE.DSNF
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit164: TDBEdit
        Left = 383
        Top = 50
        Width = 154
        Height = 21
        DataField = 'ICMSTot_vBCST'
        DataSource = DM_NFE.DSNF
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit165: TDBEdit
        Left = 543
        Top = 50
        Width = 154
        Height = 21
        Color = 12910591
        DataField = 'ICMSTot_vST'
        DataSource = DM_NFE.DSNF
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit166: TDBEdit
        Left = 711
        Top = 49
        Width = 154
        Height = 22
        Color = 12910591
        DataField = 'ICMSTot_vProd'
        DataSource = DM_NFE.DSNF
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit167: TDBEdit
        Left = 383
        Top = 94
        Width = 154
        Height = 21
        Color = 12910591
        DataField = 'ICMSTot_vFrete'
        DataSource = DM_NFE.DSNF
        Enabled = False
        TabOrder = 8
        OnExit = DBEdit169Exit
      end
      object DBEdit168: TDBEdit
        Left = 223
        Top = 94
        Width = 154
        Height = 21
        Color = 12910591
        DataField = 'ICMSTot_vSeg'
        DataSource = DM_NFE.DSNF
        Enabled = False
        TabOrder = 7
        OnExit = DBEdit169Exit
      end
      object DBEdit169: TDBEdit
        Left = 63
        Top = 94
        Width = 154
        Height = 21
        Color = 12910591
        DataField = 'ICMSTot_vDesc'
        DataSource = DM_NFE.DSNF
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnExit = DBEdit169Exit
      end
      object DBEdit174: TDBEdit
        Left = 543
        Top = 94
        Width = 154
        Height = 21
        Color = 12910591
        DataField = 'ICMSTot_vOutro'
        DataSource = DM_NFE.DSNF
        Enabled = False
        TabOrder = 9
        OnExit = DBEdit169Exit
      end
      object DBEdit175: TDBEdit
        Left = 711
        Top = 93
        Width = 154
        Height = 22
        DataField = 'ICMSTot_vNF'
        DataSource = DM_NFE.DSNF
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object GroupBox40: TGroupBox
        Left = 445
        Top = 182
        Width = 352
        Height = 261
        Caption = 'RETEN'#199#213'ES'
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 12
        object DBEdit181: TDBEdit
          Left = 15
          Top = 45
          Width = 154
          Height = 21
          DataField = 'retTrib_vRetPIS'
          DataSource = DM_NFE.DSNF
          TabOrder = 0
        end
        object DBEdit182: TDBEdit
          Left = 15
          Top = 88
          Width = 154
          Height = 21
          DataField = 'retTrib_vRetCOFINS'
          DataSource = DM_NFE.DSNF
          TabOrder = 1
        end
        object DBEdit183: TDBEdit
          Left = 15
          Top = 133
          Width = 154
          Height = 21
          DataField = 'retTrib_vRetCSLL'
          DataSource = DM_NFE.DSNF
          TabOrder = 2
        end
        object DBEdit184: TDBEdit
          Left = 15
          Top = 225
          Width = 154
          Height = 21
          DataField = 'retTrib_vBCIRRF'
          DataSource = DM_NFE.DSNF
          TabOrder = 5
        end
        object DBEdit185: TDBEdit
          Left = 175
          Top = 225
          Width = 154
          Height = 21
          DataField = 'retTrib_vIRRF'
          DataSource = DM_NFE.DSNF
          TabOrder = 13
        end
        object DBEdit186: TDBEdit
          Left = 15
          Top = 177
          Width = 154
          Height = 21
          DataField = 'retTrib_vBCRetPrev'
          DataSource = DM_NFE.DSNF
          TabOrder = 3
        end
        object DBEdit187: TDBEdit
          Left = 175
          Top = 177
          Width = 154
          Height = 21
          DataField = 'retTrib_vRetPrev'
          DataSource = DM_NFE.DSNF
          TabOrder = 4
        end
        object Label225: TcxLabel
          Left = 15
          Top = 29
          Caption = 'VALOR RETIDO DO PIS'
          FocusControl = DBEdit181
          Transparent = True
        end
        object Label226: TcxLabel
          Left = 15
          Top = 72
          Caption = 'VALOR RETIDO DO COFINS'
          FocusControl = DBEdit182
          Transparent = True
        end
        object Label227: TcxLabel
          Left = 15
          Top = 117
          Caption = 'VALOR RETIDO CSLL'
          FocusControl = DBEdit183
          Transparent = True
        end
        object Label228: TcxLabel
          Left = 15
          Top = 209
          Caption = 'BASE DE C'#193'LC IRRF'
          FocusControl = DBEdit184
          Transparent = True
        end
        object Label229: TcxLabel
          Left = 175
          Top = 209
          Caption = 'VALOR DO IRRF'
          FocusControl = DBEdit185
          Transparent = True
        end
        object Label230: TcxLabel
          Left = 15
          Top = 161
          Caption = 'BASE C'#193'LC RET. PREVID.'
          FocusControl = DBEdit186
          Transparent = True
        end
        object Label231: TcxLabel
          Left = 175
          Top = 161
          Caption = 'VALOR RET. PREVID.'
          FocusControl = DBEdit187
          Transparent = True
        end
      end
      object GroupBox41: TGroupBox
        Left = 3
        Top = 182
        Width = 185
        Height = 261
        Caption = 'ISSQN'
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 10
        object DBEdit176: TDBEdit
          Left = 8
          Top = 40
          Width = 154
          Height = 21
          DataField = 'ISSQNtot_vServ'
          DataSource = DM_NFE.DSNF
          TabOrder = 0
        end
        object DBEdit177: TDBEdit
          Left = 8
          Top = 84
          Width = 154
          Height = 21
          DataField = 'ISSQNTot_vBC'
          DataSource = DM_NFE.DSNF
          TabOrder = 1
        end
        object DBEdit178: TDBEdit
          Left = 8
          Top = 128
          Width = 154
          Height = 21
          DataField = 'ISSQNTot_vISS'
          DataSource = DM_NFE.DSNF
          TabOrder = 2
        end
        object DBEdit179: TDBEdit
          Left = 8
          Top = 172
          Width = 154
          Height = 21
          DataField = 'ICMSTot_vPIS'
          DataSource = DM_NFE.DSNF
          TabOrder = 3
        end
        object DBEdit180: TDBEdit
          Left = 8
          Top = 216
          Width = 154
          Height = 21
          DataField = 'ISSQNTot_vCOFINS'
          DataSource = DM_NFE.DSNF
          TabOrder = 9
        end
        object Label220: TcxLabel
          Left = 8
          Top = 24
          Caption = 'VALOR DOS SERVI'#199'OS'
          FocusControl = DBEdit176
          Transparent = True
        end
        object Label221: TcxLabel
          Left = 8
          Top = 68
          Caption = 'BASE DE C'#193'LC SERVI'#199'OS'
          FocusControl = DBEdit177
          Transparent = True
        end
        object Label222: TcxLabel
          Left = 8
          Top = 112
          Caption = 'VALOR DO ISS'
          FocusControl = DBEdit178
          Transparent = True
        end
        object Label223: TcxLabel
          Left = 8
          Top = 156
          Caption = 'VALOR DO PIS'
          FocusControl = DBEdit179
          Transparent = True
        end
        object Label224: TcxLabel
          Left = 8
          Top = 200
          Caption = 'VALOR DO COFINS'
          FocusControl = DBEdit180
          Transparent = True
        end
      end
      object GroupBox42: TGroupBox
        Left = 223
        Top = 182
        Width = 185
        Height = 261
        Caption = 'OUTROS'
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 11
        object DBEdit171: TDBEdit
          Left = 15
          Top = 41
          Width = 154
          Height = 21
          DataField = 'ICMSTot_vIPI'
          DataSource = DM_NFE.DSNF
          TabOrder = 0
        end
        object DBEdit172: TDBEdit
          Left = 15
          Top = 89
          Width = 154
          Height = 21
          DataField = 'ICMSTot_vPIS'
          DataSource = DM_NFE.DSNF
          TabOrder = 1
        end
        object DBEdit173: TDBEdit
          Left = 15
          Top = 133
          Width = 154
          Height = 21
          DataField = 'ICMSTot_vCOFINS'
          DataSource = DM_NFE.DSNF
          TabOrder = 2
        end
        object DBEdit170: TDBEdit
          Left = 15
          Top = 180
          Width = 154
          Height = 21
          DataField = 'ICMSTot_vII'
          DataSource = DM_NFE.DSNF
          TabOrder = 7
        end
        object Label215: TcxLabel
          Left = 15
          Top = 20
          Caption = 'VALOR DO IPI'
          FocusControl = DBEdit171
          Transparent = True
        end
        object Label216: TcxLabel
          Left = 15
          Top = 70
          Caption = 'VALOR DO PIS'
          FocusControl = DBEdit172
          Transparent = True
        end
        object Label217: TcxLabel
          Left = 15
          Top = 118
          Caption = 'VALOR DO COFINS'
          FocusControl = DBEdit173
          Transparent = True
        end
        object Label214: TcxLabel
          Left = 15
          Top = 162
          Caption = 'VALOR DO I.I.'
          FocusControl = DBEdit170
          Transparent = True
        end
      end
      object cxButton4: TcxButton
        Left = 810
        Top = 400
        Width = 94
        Height = 32
        Caption = 'CONTINUAR'
        TabOrder = 23
        OnClick = cxButton4Click
      end
      object Label206: TcxLabel
        Left = 63
        Top = 34
        Caption = 'BASE C'#193'LCULO ICMS'
        FocusControl = DBEdit162
        Transparent = True
      end
      object Label207: TcxLabel
        Left = 223
        Top = 34
        Caption = 'VALOR DO ICMS'
        FocusControl = DBEdit163
        Transparent = True
      end
      object Label208: TcxLabel
        Left = 383
        Top = 34
        Caption = 'BASE C'#193'LC ICMS S.T.'
        FocusControl = DBEdit164
        Transparent = True
      end
      object Label209: TcxLabel
        Left = 543
        Top = 34
        Caption = 'VALOR DO ICMS S.T.'
        FocusControl = DBEdit165
        Transparent = True
      end
      object Label210: TcxLabel
        Left = 711
        Top = 33
        Caption = 'VALOR PRODUTOS E SERV.'
        FocusControl = DBEdit166
        Transparent = True
      end
      object Label211: TcxLabel
        Left = 383
        Top = 78
        Caption = 'VALOR FRETE'
        FocusControl = DBEdit167
        Transparent = True
      end
      object Label212: TcxLabel
        Left = 223
        Top = 78
        Caption = 'VALOR DO SEGURO'
        FocusControl = DBEdit168
        Transparent = True
      end
      object Label213: TcxLabel
        Left = 63
        Top = 78
        Caption = 'VALOR DO DESCONTO'
        FocusControl = DBEdit169
        Transparent = True
      end
      object Label218: TcxLabel
        Left = 543
        Top = 78
        Caption = 'VALOR O.D.A'
        FocusControl = DBEdit174
        Transparent = True
      end
      object Label219: TcxLabel
        Left = 711
        Top = 77
        Caption = 'VALOR TOTAL DA NOTA'
        FocusControl = DBEdit175
        Transparent = True
      end
      object Label235: TcxLabel
        Tag = 1
        Left = 0
        Top = 472
        Align = alBottom
        Caption = 'Campos em amarelo, valor referente ao somat'#243'rio dos '#237'tens.'
        ParentColor = False
        ParentFont = False
        ExplicitTop = 468
      end
    end
    object TabEmite: TTabSheet
      Tag = 9
      Caption = 'EMISS'#195'O'
      ImageIndex = 8
      OnShow = TabEmiteShow
      object Panel16: TPanel
        Left = 0
        Top = 0
        Width = 403
        Height = 489
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel16'
        TabOrder = 0
        object mmResp: TMemo
          Left = 0
          Top = 0
          Width = 403
          Height = 489
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = clBlack
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Panel17: TPanel
        Left = 403
        Top = 0
        Width = 518
        Height = 489
        Align = alClient
        ParentBackground = False
        ParentColor = True
        TabOrder = 1
        object GroupBox36: TGroupBox
          Left = 1
          Top = 1
          Width = 163
          Height = 487
          Align = alLeft
          Caption = 'WebServices'
          ParentBackground = False
          TabOrder = 0
          object btnConsultarStatusServiço: TcxButton
            AlignWithMargins = True
            Left = 4
            Top = 22
            Width = 155
            Height = 34
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alTop
            Caption = 'Consultar Status do Servi'#231'o'
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 0
            TabStop = False
            OnClick = btnConsultarStatusServiçoClick
          end
          object btnCosultarLog: TcxButton
            AlignWithMargins = True
            Left = 4
            Top = 344
            Width = 155
            Height = 34
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alTop
            Caption = 'Consultar Arquivo de Log'
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 7
            TabStop = False
            OnClick = btnCosultarLogClick
          end
          object btnConsultarNFe: TcxButton
            AlignWithMargins = True
            Left = 4
            Top = 160
            Width = 155
            Height = 34
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alTop
            Caption = 'Consultar NF-e (XML)'
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 3
            TabStop = False
            OnClick = btnConsultarNFeClick
          end
          object btnConsultarChave: TcxButton
            AlignWithMargins = True
            Left = 4
            Top = 114
            Width = 155
            Height = 34
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alTop
            Caption = 'Consultar NF-e (Chave)'
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 2
            TabStop = False
            OnClick = btnConsultarChaveClick
          end
          object btnCancelarNFe: TcxButton
            AlignWithMargins = True
            Left = 4
            Top = 206
            Width = 155
            Height = 34
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alTop
            Caption = 'Cancelar NF-e via XML'
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 4
            TabStop = False
            OnClick = btnCancelarNFeClick
          end
          object btnCancelarNfeChave: TcxButton
            AlignWithMargins = True
            Left = 4
            Top = 68
            Width = 155
            Height = 34
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alTop
            Caption = 'Consultar Cadastro'
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 1
            TabStop = False
            OnClick = btnCancelarNfeChaveClick
          end
          object btnInserirProt: TcxButton
            AlignWithMargins = True
            Left = 4
            Top = 252
            Width = 155
            Height = 34
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alTop
            Caption = 'Inserir Protocolo'
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 5
            TabStop = False
            OnClick = btnInserirProtClick
          end
          object cxButton3: TcxButton
            AlignWithMargins = True
            Left = 4
            Top = 298
            Width = 155
            Height = 34
            Margins.Top = 6
            Margins.Bottom = 6
            Align = alTop
            Caption = 'Inutilizar Numera'#231#227'o'
            SpeedButtonOptions.CanBeFocused = False
            TabOrder = 6
            TabStop = False
            OnClick = cxButton3Click
          end
        end
        object Panel19: TPanel
          Left = 164
          Top = 1
          Width = 162
          Height = 487
          Align = alLeft
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object GroupBox45: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 156
            Height = 481
            Align = alClient
            Caption = 'Cadastros'
            ParentBackground = False
            TabOrder = 0
            object btnCadCli: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 68
              Width = 148
              Height = 34
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alTop
              Caption = 'CLIENTES'
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 1
              TabStop = False
              OnClick = btnCadCliClick
            end
            object btnCadFor: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 114
              Width = 148
              Height = 34
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alTop
              Caption = 'FORNECEDORES'
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 2
              TabStop = False
              OnClick = btnCadForClick
            end
            object btnCadProd: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 160
              Width = 148
              Height = 34
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alTop
              Caption = 'PRODUTOS E SERVI'#199'OS'
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 3
              TabStop = False
              OnClick = btnCadProdClick
            end
            object btnListaNF: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 206
              Width = 148
              Height = 34
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alTop
              Caption = 'NOTAS FISCAIS'
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 4
              TabStop = False
              OnClick = btnListaNFClick
            end
            object GroupBox46: TGroupBox
              Left = 1
              Top = 350
              Width = 154
              Height = 130
              Align = alBottom
              Caption = 'MANUTEN'#199#195'O'
              TabOrder = 5
              object cxButton5: TcxButton
                AlignWithMargins = True
                Left = 4
                Top = 22
                Width = 146
                Height = 34
                Margins.Top = 6
                Margins.Bottom = 6
                Align = alTop
                Caption = 'Verificar Integridade'
                SpeedButtonOptions.CanBeFocused = False
                TabOrder = 0
                TabStop = False
                OnClick = cxButton5Click
              end
            end
            object btnCadEmpresa: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 22
              Width = 148
              Height = 34
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alTop
              Caption = 'EMPRESA'
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 0
              TabStop = False
              OnClick = btnCadEmpresaClick
            end
          end
        end
        object Panel20: TPanel
          Left = 326
          Top = 1
          Width = 189
          Height = 487
          Align = alLeft
          BevelOuter = bvNone
          ParentBackground = False
          ParentColor = True
          TabOrder = 2
          object GroupBox38: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 183
            Height = 245
            Align = alTop
            Caption = 'Impress'#227'o e Armazenamento'
            TabOrder = 0
            object btnImprimirNFe: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 22
              Width = 175
              Height = 34
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alTop
              Caption = 'Imprimir NF-e'
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 0
              TabStop = False
              OnClick = btnImprimirNFeClick
            end
            object cxButton1: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 68
              Width = 175
              Height = 34
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alTop
              Caption = 'Gerar PDF NF-e'
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 1
              TabStop = False
              OnClick = cxButton1Click
            end
            object btnAbrePastaPDF: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 160
              Width = 175
              Height = 34
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alTop
              Caption = 'Abrir Pasta PDF'
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 2
              TabStop = False
              OnClick = btnAbrePastaPDFClick
            end
            object cxButton2: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 206
              Width = 175
              Height = 34
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alTop
              Caption = 'Abrir Pasta XML'
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 3
              TabStop = False
              OnClick = cxButton2Click
            end
            object cxButton8: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 114
              Width = 175
              Height = 34
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alTop
              Caption = 'Imprimir Evento'
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 4
              TabStop = False
              OnClick = cxButton8Click
            end
          end
          object GroupBox39: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 254
            Width = 183
            Height = 222
            Align = alTop
            Caption = 'Emiss'#227'o'
            TabOrder = 1
            object btnEmitir: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 59
              Width = 175
              Height = 29
              Margins.Top = 6
              Margins.Bottom = 1
              Align = alTop
              Caption = 'Emitir'
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 2
              TabStop = False
              OnClick = btnEmitirClick
            end
            object btn_enviar_email: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 95
              Width = 175
              Height = 29
              Margins.Top = 6
              Margins.Bottom = 1
              Align = alTop
              Caption = 'Enviar NF-e por e-mail'
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 3
              TabStop = False
              OnClick = btn_enviar_emailClick
            end
            object cbhora: TCheckBox
              AlignWithMargins = True
              Left = 7
              Top = 36
              Width = 169
              Height = 17
              Margins.Left = 6
              Margins.Top = 0
              Margins.Right = 6
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Incluir hora de envio'
              TabOrder = 1
              Visible = False
            end
            object btn_cce: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 131
              Width = 175
              Height = 29
              Margins.Top = 6
              Margins.Bottom = 1
              Align = alTop
              Caption = 'Carta de Corre'#231#227'o CC-e'
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 4
              TabStop = False
              OnClick = btn_cceClick
            end
            object cbDatSai: TCheckBox
              AlignWithMargins = True
              Left = 7
              Top = 16
              Width = 169
              Height = 17
              Margins.Left = 6
              Margins.Top = 0
              Margins.Right = 6
              Align = alTop
              Caption = 'Data de sa'#237'da em branco'
              TabOrder = 0
              Visible = False
              OnMouseUp = cbDatSaiMouseUp
            end
            object cxButton9: TcxButton
              AlignWithMargins = True
              Left = 4
              Top = 167
              Width = 175
              Height = 29
              Margins.Top = 6
              Margins.Bottom = 1
              Align = alTop
              Caption = 'Manifest. Destinat'#225'rio'
              SpeedButtonOptions.CanBeFocused = False
              TabOrder = 5
              TabStop = False
              OnClick = cxButton9Click
            end
          end
        end
      end
      object pnlmail: TPanel
        Left = -56
        Top = 149
        Width = 501
        Height = 239
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        Visible = False
        object Shape13: TShape
          Left = 1
          Top = 1
          Width = 499
          Height = 237
          Align = alClient
          Pen.Width = 3
          ExplicitLeft = -1
          ExplicitTop = 0
          ExplicitWidth = 881
          ExplicitHeight = 255
        end
        object Shape19: TShape
          Left = 1
          Top = 1
          Width = 499
          Height = 237
          Align = alClient
          Pen.Width = 3
          ExplicitLeft = 2
          ExplicitTop = 2
        end
        object edmail: TEdit
          Left = 16
          Top = 96
          Width = 462
          Height = 21
          Color = 8454143
          TabOrder = 0
          OnChange = edmailChange
        end
        object btnenviarmail: TcxButton
          AlignWithMargins = True
          Left = 295
          Top = 179
          Width = 141
          Height = 34
          Margins.Top = 6
          Margins.Bottom = 6
          Caption = 'ENVIAR'
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 8
          TabStop = False
          OnClick = btnenviarmailClick
        end
        object btnmailcancelar: TcxButton
          AlignWithMargins = True
          Left = 103
          Top = 179
          Width = 141
          Height = 34
          Margins.Top = 6
          Margins.Bottom = 6
          Caption = 'CANCELAR'
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 2
          TabStop = False
          OnClick = btnmailcancelarClick
        end
        object EdCC: TEdit
          Left = 16
          Top = 144
          Width = 462
          Height = 21
          Color = 8454143
          TabOrder = 1
        end
        object Label47: TcxLabel
          Left = 18
          Top = 77
          Caption = 'E-MAIL DO DESTINAT'#193'RIO'
          FocusControl = DBEdit51
          Transparent = True
        end
        object lblnome: TcxLabel
          Left = 19
          Top = 21
          Caption = '---------------------------------------------'
          FocusControl = DBEdit51
          Transparent = True
        end
        object lblcnpj: TcxLabel
          Left = 19
          Top = 37
          Caption = '---------------------------------------------'
          FocusControl = DBEdit51
          Transparent = True
        end
        object lblendereco: TcxLabel
          Left = 19
          Top = 58
          Caption = '---------------------------------------------'
          FocusControl = DBEdit51
          Transparent = True
        end
        object Label247: TcxLabel
          Left = 18
          Top = 125
          Caption = 'ENVIAR UMA COPIA PARA (opcional):'
          FocusControl = DBEdit51
          Transparent = True
        end
      end
    end
  end
  object Bar1: TStatusBar [2]
    Left = 0
    Top = 561
    Width = 929
    Height = 19
    Panels = <
      item
        Text = 'Vers'#227'o 1.1.3.1'
        Width = 130
      end
      item
        Alignment = taCenter
        Text = '---'
        Width = 50
      end>
    ParentColor = True
  end
  inherited Edit1: TEdit
    Left = 872
    Top = 2
    Height = 21
    ExplicitLeft = 872
    ExplicitTop = 2
    ExplicitHeight = 21
  end
  inherited ini: TFormStorage
    Options = [fpPosition]
    StoredProps.Strings = (
      'cb_icms_seg.Checked'
      'cb_icms_oda.Checked'
      'cb_icms_frete.Checked'
      'cb_icms_desc.Checked'
      'cb_icms_st_desc.Checked'
      'cb_icms_st_seg.Checked'
      'cb_icms_st_oda.Checked'
      'cb_icms_st_ipi.Checked'
      'cb_icms_st_frete.Checked'
      'cbSublimite.Checked'
      'EdtEmail.Text'
      'edtEmailAssunto.Text'
      'edtSmtpHost.Text'
      'edtSmtpPass.Text'
      'edtSmtpPort.Text'
      'edtSmtpUser.Text'
      'mmEmailMsg.Lines'
      'rgAutenticacao_email.ItemIndex'
      'cb_icms_desc_devol.Checked'
      'cb_icms_dest.Checked')
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
        Name = 'data_atu'
        Value = 0d
      end>
    Left = 480
    Top = 520
  end
  inherited FR: TFormResizer
    Left = 600
    Top = 520
  end
  inherited EnterTab: TACBrEnterTab
    Left = 672
    Top = 519
  end
end
