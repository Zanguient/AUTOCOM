object frmCfg: TfrmCfg
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 684
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxGroupBox3: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Align = alTop
    Alignment = alTopCenter
    Caption = 'P'#193'GINA DE CONFIGURA'#199#195'O'
    ParentFont = False
    RedrawOnResize = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 32
    Width = 559
  end
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 38
    Width = 565
    Height = 605
    VertScrollBar.Tracking = True
    Align = alClient
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    HeaderHeight = 17
    ParentColor = True
    TabOrder = 1
    StyleElements = [seClient, seBorder]
    object CategoryPanel12: TCategoryPanel
      Top = 984
      Height = 23
      Caption = 'PATHS'
      Collapsed = True
      TabOrder = 0
      object rel_path: TcxTextEdit
        Left = 7
        Top = 29
        ParentFont = False
        Properties.MaxLength = 48
        Properties.PasswordChar = '*'
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -9
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 537
      end
      object cxLabel57: TcxLabel
        Left = 9
        Top = 10
        Caption = 'Relat'#243'rios (informe - para local)'
        ParentFont = False
        Style.Edges = []
        Style.Shadow = False
        Properties.LabelStyle = cxlsLowered
        Transparent = True
      end
    end
    object CategoryPanel11: TCategoryPanel
      Top = 961
      Height = 23
      Caption = 'CONFIGURA'#199#213'ES DO M'#211'DULO FINANCEIRO'
      Color = 15326170
      Collapsed = True
      TabOrder = 1
      ExpandedHeight = 101
      object finan_boleto: TCheckBox
        Left = 22
        Top = 8
        Width = 107
        Height = 17
        Caption = 'EMITE BOLETO'
        TabOrder = 0
      end
      object finan_carne: TCheckBox
        Left = 22
        Top = 30
        Width = 107
        Height = 17
        Caption = 'EMITE FATURA'
        TabOrder = 1
      end
      object finan_relogar: TCheckBox
        Left = 22
        Top = 50
        Width = 223
        Height = 17
        Caption = 'RELOGAR AO ACESSAR O M'#211'DULO'
        TabOrder = 2
      end
      object finan_max_parc: TcxCurrencyEdit
        Left = 405
        Top = 12
        EditValue = 4.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.MaxValue = True
        Properties.AssignedValues.MinValue = True
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '00'
        TabOrder = 3
        Width = 25
      end
      object cxLabel47: TcxLabel
        Left = 260
        Top = 14
        Caption = 'N'#186' m'#225'x. de parcelas'
        ParentFont = False
        Style.Edges = []
        Style.Shadow = False
        Properties.LabelStyle = cxlsLowered
        Transparent = True
      end
    end
    object CategoryPanel10: TCategoryPanel
      Top = 938
      Height = 23
      Caption = 'C'#193'LCULOS DO SISTEMA'
      Color = 13428454
      Collapsed = True
      TabOrder = 2
      ExpandedHeight = 82
      object cxLabel39: TcxLabel
        Left = 5
        Top = 13
        Caption = 'N'#186' de meses para c'#225'lculo m'#233'dio do Custo operacional'
        ParentFont = False
        Style.Edges = []
        Style.Shadow = False
        Properties.LabelStyle = cxlsLowered
        Transparent = True
      end
      object meses_custo_oper: TcxCurrencyEdit
        Left = 329
        Top = 11
        EditValue = 4.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '00'
        Properties.MaxValue = 24.000000000000000000
        Properties.MinValue = 1.000000000000000000
        TabOrder = 1
        Width = 25
      end
    end
    object CategoryPanel9: TCategoryPanel
      Top = 915
      Height = 23
      Caption = 'CONFIGURA'#199#213'ES RELATIVAS A NF-e'
      Color = 12378080
      Collapsed = True
      TabOrder = 3
      ExpandedHeight = 166
      object nome_nfe_rec: TcxRadioGroup
        Left = 5
        Top = 94
        ParentFont = False
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Chave de acesso'
          end
          item
            Caption = 'CNPJ + N'#186' NF-e'
          end>
        ItemIndex = 0
        TabOrder = 3
        Height = 44
        Width = 500
      end
      object site_nfe: TcxTextEdit
        Left = 4
        Top = 25
        ParentFont = False
        Properties.MaxLength = 48
        Properties.PasswordChar = '*'
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -9
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 537
      end
      object cxLabel5: TcxLabel
        Left = 5
        Top = 6
        Caption = 'Endere'#231'o do site para consulta NF-e no portal nacional'
        ParentFont = False
        Style.Edges = []
        Style.Shadow = False
        Properties.LabelStyle = cxlsLowered
        Transparent = True
      end
      object path_nfe_rec: TcxRadioGroup
        Left = 5
        Top = 54
        Caption = 'M'#233'todo para arquivamento de NF-e recebida'
        ParentFont = False
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Pasta Ano/M'#234's'
          end
          item
            Caption = 'Pasta Ano/Emitente/M'#234's'
          end>
        ItemIndex = 1
        TabOrder = 1
        Height = 49
        Width = 500
      end
    end
    object CategoryPanel8: TCategoryPanel
      Top = 892
      Height = 23
      Caption = 'CONFIGURA'#199#213'ES RELATIVAS AO EFD CONTRIBUI'#199#213'ES'
      Color = 13551795
      Collapsed = True
      TabOrder = 4
      ExpandedHeight = 109
      object cxLabel3: TcxLabel
        Left = 22
        Top = 18
        Anchors = [akTop]
        AutoSize = False
        Caption = 'Al'#237'q PIS'
        ParentFont = False
        Style.Edges = []
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -9
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        Height = 20
        Width = 43
        AnchorX = 65
      end
      object efd_aliq_pis: TcxCurrencyEdit
        Left = 69
        Top = 14
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.MaxValue = True
        Properties.AssignedValues.MinValue = True
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = '0.00##%'
        TabOrder = 1
        Width = 71
      end
      object cxLabel4: TcxLabel
        Left = 1
        Top = 44
        Anchors = [akTop]
        AutoSize = False
        Caption = 'Al'#237'q. COFINS'
        ParentFont = False
        Style.Edges = []
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -9
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taRightJustify
        Transparent = True
        Height = 20
        Width = 64
        AnchorX = 65
      end
      object efd_aliq_cofins: TcxCurrencyEdit
        Left = 69
        Top = 41
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.MaxValue = True
        Properties.AssignedValues.MinValue = True
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = '0.00##%'
        TabOrder = 3
        Width = 71
      end
    end
    object CategoryPanel7: TCategoryPanel
      Top = 869
      Height = 23
      Caption = 'CONFIGURA'#199#213'ES RELATIVAS AO SPED FISCAL'
      Color = 14803440
      Collapsed = True
      TabOrder = 5
      ExpandedHeight = 120
      object nfmod2_serie: TComboBox
        Left = 9
        Top = 23
        Width = 108
        Height = 23
        BevelKind = bkSoft
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Items.Strings = (
          'D'
          'DU')
      end
      object cxLabel52: TcxLabel
        Left = 11
        Top = 5
        Caption = 'NF Mod 2 S'#233'rie'
        ParentFont = False
        Style.Edges = []
        Style.Shadow = False
        Properties.LabelStyle = cxlsLowered
        Transparent = True
      end
      object cxLabel53: TcxLabel
        Left = 118
        Top = 5
        Caption = 'Sub s'#233'rie'
        ParentFont = False
        Style.Edges = []
        Style.Shadow = False
        Properties.LabelStyle = cxlsLowered
        Transparent = True
      end
      object nfmod2_subserie: TcxTextEdit
        Left = 120
        Top = 23
        AutoSize = False
        ParentFont = False
        Properties.MaxLength = 48
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -13
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Height = 23
        Width = 51
      end
    end
    object CategoryPanel6: TCategoryPanel
      Top = 846
      Height = 23
      Caption = 'CONFIGURA'#199#213'ES RELATIVAS AO MODO CHECKOUT'
      Color = 14019286
      Collapsed = True
      TabOrder = 6
      ExpandedHeight = 131
      object RGBalancacheckout: TGroupBox
        Left = 0
        Top = 0
        Width = 520
        Height = 0
        Align = alLeft
        Caption = 'BALAN'#199'A CHEKOUT'
        TabOrder = 0
        object cxLabel25: TcxLabel
          Left = 352
          Top = 16
          Caption = 'BAUD'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object balanca_baud: TComboBox
          Left = 354
          Top = 33
          Width = 55
          Height = 23
          Hint = 'Velocidade padr'#227'o da porta COM para balan'#231'a'
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          Text = '9600'
          Items.Strings = (
            '2400'
            '4800'
            '9600'
            '14400'
            '19200'
            '115200')
        end
        object balanca_porta: TComboBox
          Left = 145
          Top = 33
          Width = 55
          Height = 23
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Text = 'COM1'
          Items.Strings = (
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'COM5'
            'COM6'
            'COM7'
            'COM8'
            'COM9')
        end
        object cxLabel26: TcxLabel
          Left = 143
          Top = 16
          Caption = 'PORTA'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object balanca_intervalo: TComboBox
          Left = 6
          Top = 74
          Width = 55
          Height = 23
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          Text = '2000'
          Items.Strings = (
            '0'
            '50'
            '100'
            '250'
            '500'
            '1000'
            '1250'
            '1500'
            '2000')
        end
        object cxLabel27: TcxLabel
          Left = 4
          Top = 57
          Caption = 'INTERV.'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object balanca_data: TComboBox
          Left = 206
          Top = 33
          Width = 64
          Height = 23
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Text = '8'
          Items.Strings = (
            '5'
            '6'
            '7'
            '8')
        end
        object cxLabel28: TcxLabel
          Left = 204
          Top = 16
          Caption = 'DATA BITS'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object balanca_modelo: TComboBox
          Tag = 1
          Left = 5
          Top = 33
          Width = 135
          Height = 23
          Hint = 'Velocidade padr'#227'o da porta COM para balan'#231'a'
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Text = 'Nenhum'
          Items.Strings = (
            'Nenhum'
            'Filizola'
            'Toledo'
            'Toledo 2180'
            'Urano'
            'LucasTec'
            'Magna'
            'Digitron')
        end
        object cxLabel29: TcxLabel
          Left = 5
          Top = 16
          Caption = 'MODELO'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object balanca_handshake: TComboBox
          Tag = 1
          Left = 67
          Top = 74
          Width = 95
          Height = 23
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          Text = 'Nenhum'
          Items.Strings = (
            'Nenhum'
            'XON_XOFF'
            'RTS_CTS'
            'DTR_DSR')
        end
        object cxLabel30: TcxLabel
          Left = 67
          Top = 57
          Caption = 'HAND SHAKE'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object balanca_paridade: TComboBox
          Tag = 1
          Left = 276
          Top = 33
          Width = 74
          Height = 23
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Text = 'None'
          Items.Strings = (
            'None'
            'Odd'
            'Even'
            'Mark'
            'pSpace')
        end
        object cxLabel31: TcxLabel
          Left = 274
          Top = 16
          Caption = 'PARIDADE'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object balanca_stopbits: TComboBox
          Tag = 1
          Left = 165
          Top = 74
          Width = 46
          Height = 23
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          Text = '1'
          Items.Strings = (
            '1'
            '1,5'
            '2')
        end
        object cxLabel32: TcxLabel
          Left = 163
          Top = 57
          Caption = 'STOP BIT'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object balanca_hardflow: TCheckBox
          Left = 223
          Top = 77
          Width = 97
          Height = 17
          Caption = 'HARD FLOW'
          TabOrder = 17
        end
        object balanca_softflow: TCheckBox
          Left = 325
          Top = 77
          Width = 97
          Height = 17
          Caption = 'SOFT FLOW'
          TabOrder = 19
        end
        object balanca_timeout: TComboBox
          Left = 413
          Top = 33
          Width = 104
          Height = 23
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          Text = '2000'
          Items.Strings = (
            '0'
            '50'
            '100'
            '250'
            '500'
            '1000'
            '1250'
            '1500'
            '2000')
        end
        object cxLabel33: TcxLabel
          Left = 411
          Top = 16
          Caption = 'TIMEOUT'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
      end
    end
    object CategoryPanel4: TCategoryPanel
      Top = 823
      Height = 23
      Caption = 'CONFIGURA'#199#213'ES DE REDE E CONEX'#213'ES'
      Color = 14280447
      Collapsed = True
      TabOrder = 7
      ExpandedHeight = 233
      object gp_serv: TGroupBox
        Left = 0
        Top = 0
        Width = 169
        Height = 0
        Align = alLeft
        Caption = 'SERVIDOR'
        TabOrder = 0
        object serv_host: TcxTextEdit
          Left = 3
          Top = 29
          ParentFont = False
          Properties.MaxLength = 48
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 159
        end
        object lblHost: TcxLabel
          Left = 3
          Top = 12
          Caption = 'HOST'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object serv_user: TcxTextEdit
          Left = 3
          Top = 69
          ParentFont = False
          Properties.MaxLength = 48
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 159
        end
        object cxLabel16: TcxLabel
          Left = 3
          Top = 52
          Caption = 'USER'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object serv_password: TcxTextEdit
          Left = 3
          Top = 109
          ParentFont = False
          Properties.EchoMode = eemPassword
          Properties.MaxLength = 48
          Properties.PasswordChar = '*'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 159
        end
        object cxLabel17: TcxLabel
          Left = 3
          Top = 92
          Caption = 'PASSWORD'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object serv_database: TcxTextEdit
          Left = 3
          Top = 153
          ParentFont = False
          Properties.MaxLength = 48
          Properties.PasswordChar = '*'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 159
        end
        object cxLabel21: TcxLabel
          Left = 4
          Top = 136
          Caption = 'DATABASE'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object btnTest: TcxButton
          AlignWithMargins = True
          Left = 5
          Top = -29
          Width = 159
          Height = 24
          Align = alBottom
          Caption = 'TESTAR CONEX'#195'O'
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Flat = True
          SpeedButtonOptions.Transparent = True
          TabOrder = 8
          TabStop = False
          OnClick = btnTestClick
        end
      end
      object gp_term: TGroupBox
        Left = 169
        Top = 0
        Width = 169
        Height = 0
        Align = alLeft
        Caption = 'TERMINAL'
        TabOrder = 1
        object term_host: TcxTextEdit
          Left = 3
          Top = 29
          ParentFont = False
          Properties.MaxLength = 48
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 159
        end
        object cxLabel18: TcxLabel
          Left = 3
          Top = 12
          Caption = 'HOST'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object term_user: TcxTextEdit
          Left = 3
          Top = 69
          ParentFont = False
          Properties.MaxLength = 48
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 159
        end
        object cxLabel19: TcxLabel
          Left = 3
          Top = 52
          Caption = 'USER'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object term_password: TcxTextEdit
          Left = 3
          Top = 109
          ParentFont = False
          Properties.EchoMode = eemPassword
          Properties.MaxLength = 48
          Properties.PasswordChar = '*'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 159
        end
        object cxLabel20: TcxLabel
          Left = 3
          Top = 92
          Caption = 'PASSWORD'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object term_database: TcxTextEdit
          Left = 3
          Top = 153
          ParentFont = False
          Properties.MaxLength = 48
          Properties.PasswordChar = '*'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 159
        end
        object cxLabel22: TcxLabel
          Left = 4
          Top = 136
          Caption = 'DATABASE'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
      end
      object Panel1: TPanel
        Left = 338
        Top = 0
        Width = 185
        Height = 0
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object servidor_local: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 10
          Width = 179
          Height = 17
          Margins.Top = 10
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Este computador '#233' o servidor'
          TabOrder = 0
          OnClick = terminalClick
        end
        object terminal: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 28
          Width = 179
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Este computador '#233'  terminal'
          TabOrder = 1
          OnClick = terminalClick
        end
        object idTerm: TcxTextEdit
          Left = 3
          Top = 69
          ParentFont = False
          Properties.MaxLength = 48
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 159
        end
        object cxLabel46: TcxLabel
          Left = 3
          Top = 52
          Caption = 'ID do Terminal'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
      end
    end
    object CategoryPanel5: TCategoryPanel
      Top = 800
      Height = 23
      Caption = 
        'CONFIGURA'#199#213'ES RELATIVAS A APAR'#202'NCIA E FUNCIONAMENTO DO APLICATIV' +
        'O'
      Color = 13428454
      Collapsed = True
      TabOrder = 8
      ExpandedHeight = 100
      object cxLabel2: TcxLabel
        Left = 8
        Top = 6
        Caption = 'Apar'#234'ncia'
        ParentFont = False
        Style.Edges = []
        Style.Shadow = False
        Properties.LabelStyle = cxlsLowered
        Transparent = True
      end
      object cbAtu: TCheckBox
        AlignWithMargins = True
        Left = 9
        Top = 55
        Width = 204
        Height = 17
        Margins.Bottom = 0
        Caption = 'Verificar por atualiza'#231#227'o ao iniciar'
        TabOrder = 1
      end
      object icbSkins: TcxImageComboBox
        Left = 8
        Top = 25
        ParentFont = False
        Properties.Items = <>
        Properties.OnEditValueChanged = icbSkinsPropertiesEditValueChanged
        TabOrder = 2
        Width = 254
      end
      object fatt: TcxCurrencyEdit
        Left = 271
        Top = 26
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.MinValue = True
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = '0.00'
        Properties.MaxValue = 100.000000000000000000
        TabOrder = 3
        Width = 57
      end
      object cxLabel56: TcxLabel
        Left = 271
        Top = 6
        Caption = 'Fator Redu'#231#227'o Ajuste Tamanho tela'
        ParentFont = False
        Style.Edges = []
        Style.Shadow = False
        Properties.LabelStyle = cxlsLowered
        Transparent = True
      end
    end
    object CategoryPanel3: TCategoryPanel
      Top = 777
      Height = 23
      Caption = 
        'CONFIGURA'#199#213'ES RELATIVAS AO PAF-ECF (Acesso restrito a Soft House' +
        ')'
      Color = 14675161
      Collapsed = True
      TabOrder = 9
      OnExpand = CategoryPanel3Expand
      ExpandedHeight = 380
      object GPECF: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 222
        Height = 0
        Align = alLeft
        Caption = 'CONFIGURA'#199#195'O DO ECF'
        TabOrder = 0
        object cxLabel7: TcxLabel
          Left = 30
          Top = 68
          Caption = 'Velocidade PORTA'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelStyle = cxlsLowered
          Transparent = True
          AnchorX = 123
        end
        object porta_serial_ecf_velocidade: TComboBox
          Left = 129
          Top = 65
          Width = 87
          Height = 23
          Hint = 'Velocidade padr'#227'o da porta cOM para o ECF'
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Text = '9600'
          Items.Strings = (
            '9600'
            '19200'
            '38400'
            '115200')
        end
        object porta_serial_ecf: TComboBox
          Left = 129
          Top = 94
          Width = 87
          Height = 23
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Text = 'COM1'
          Items.Strings = (
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'COM5'
            'COM6'
            'COM7'
            'COM8'
            'COM9')
        end
        object cxLabel8: TcxLabel
          Left = 46
          Top = 94
          Caption = 'PORTA SERIAL'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelStyle = cxlsLowered
          Transparent = True
          AnchorX = 123
        end
        object ecf_delay_comandos: TComboBox
          Left = 160
          Top = 124
          Width = 56
          Height = 23
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          Text = '0'
          Items.Strings = (
            '0'
            '50'
            '100'
            '250'
            '500'
            '1000'
            '1250'
            '1500'
            '2000')
        end
        object cxLabel9: TcxLabel
          Left = 22
          Top = 123
          Caption = 'DELAY ENTRE COMANDOS'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelStyle = cxlsLowered
          Transparent = True
          AnchorX = 154
        end
        object ecf_modelo: TComboBox
          Tag = 1
          Left = 7
          Top = 35
          Width = 209
          Height = 23
          BevelKind = bkSoft
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Items.Strings = (
            'Nenhum'
            'NaoFiscal'
            'Bematech'
            'Sweda'
            'Daruma'
            'Schalter'
            'Mecaf'
            'Yanco'
            'DataRegis'
            'Urano'
            'ICash'
            'Quattro'
            'FiscNET'
            'Epson'
            'NCR'
            'Sweda STX'
            'EscECF')
        end
        object cxLabel10: TcxLabel
          Left = 7
          Top = 16
          Caption = 'Modelo do ECF'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
      end
      object GPPaf: TGroupBox
        AlignWithMargins = True
        Left = 231
        Top = 3
        Width = 169
        Height = 0
        Align = alLeft
        Caption = 'CONFIGURA'#199#195'O DO PAF'
        Enabled = False
        TabOrder = 1
        DesignSize = (
          169
          0)
        object paf_estoque_neg: TCheckBox
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 159
          Height = 17
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Permite negativar o estoque'
          TabOrder = 0
        end
        object paf_pre_venda_caixa: TCheckBox
          AlignWithMargins = True
          Left = 5
          Top = 40
          Width = 159
          Height = 17
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Caixa com Pr'#233'-Venda'
          TabOrder = 1
        end
        object paf_tef: TCheckBox
          AlignWithMargins = True
          Left = 5
          Top = 60
          Width = 159
          Height = 17
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Opera com TEF'
          TabOrder = 2
          OnClick = paf_tefClick
        end
        object paf_controla_foco: TCheckBox
          AlignWithMargins = True
          Left = 5
          Top = 80
          Width = 159
          Height = 17
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Controla Foco do aplicativo'
          TabOrder = 3
        end
        object cxButton3: TcxButton
          AlignWithMargins = True
          Left = 5
          Top = -27
          Width = 159
          Height = 22
          Align = alBottom
          Caption = 'Configurar Arquivo cript.'
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Flat = True
          SpeedButtonOptions.Transparent = True
          TabOrder = 6
          TabStop = False
          OnClick = cxButton3Click
        end
        object cxLabel38: TcxLabel
          Left = -110
          Top = 160
          Anchors = [akTop]
          AutoSize = False
          Caption = 'Linhas entre cupons'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 234
          AnchorX = 124
        end
        object ecf_linhas_entre_cupons: TcxCurrencyEdit
          Left = 129
          Top = 157
          EditValue = 3.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0'
          Properties.MaxValue = 10.000000000000000000
          Properties.MinValue = 3.000000000000000000
          TabOrder = 4
          Width = 26
        end
        object Aguarda_ECF: TCheckBox
          AlignWithMargins = True
          Left = 5
          Top = 100
          Width = 159
          Height = 17
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Aguarda resposta do ECF'
          TabOrder = 7
        end
        object ecf_mfd: TCheckBox
          AlignWithMargins = True
          Left = 5
          Top = 120
          Width = 159
          Height = 17
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Ativa extra'#231#227'o MFD'
          TabOrder = 8
        end
        object IBPT_Compacto: TCheckBox
          AlignWithMargins = True
          Left = 5
          Top = 140
          Width = 159
          Height = 17
          Hint = 'Imprimir valor aproximado dos impostos em at'#233' 2 linhas'
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Trib. Aprox. Compacto'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = -100
        Width = 544
        Height = 100
        Align = alBottom
        TabOrder = 2
        object ecf_rodape_linha1: TcxTextEdit
          Left = 37
          Top = 23
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 48
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 444
        end
        object cxLabel12: TcxLabel
          Left = 10
          Top = 3
          Caption = 'LINHAS DO RODAP'#201' DO CUPOM FISCAL'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object ecf_rodape_linha2: TcxTextEdit
          Left = 37
          Top = 47
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 48
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 444
        end
        object ecf_rodape_linha3: TcxTextEdit
          Left = 37
          Top = 71
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 48
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 444
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = -147
        Width = 544
        Height = 47
        Align = alBottom
        TabOrder = 3
        object url_cniee: TcxTextEdit
          Left = 37
          Top = 18
          ParentFont = False
          Properties.MaxLength = 48
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -13
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 444
        end
        object cxLabel34: TcxLabel
          Left = 10
          Top = 0
          Caption = 'URL de download do arquivo CNIEE'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
      end
      object GPTEF: TGroupBox
        AlignWithMargins = True
        Left = 406
        Top = 3
        Width = 135
        Height = 208
        Align = alClient
        Caption = 'CONFIG. TEF'
        TabOrder = 4
        object cxLabel35: TcxLabel
          Left = 7
          Top = 16
          Caption = 'G.P.'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object tef_gp: TComboBox
          Tag = 1
          Left = 5
          Top = 35
          Width = 112
          Height = 23
          BevelKind = bkSoft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Items.Strings = (
            'Nenhum'
            'TefDial'
            'TefDisc'
            'HiperTef'
            'CliSiTef'
            'TefGpu'
            'VeSPague'
            'Banese'
            'TefAuttar'
            'GoodCard'
            'FoxWin'
            'CliDTEF'
            'Petrocard'
            'CrediShop'
            'TicketCar')
        end
        object cxLabel36: TcxLabel
          Left = 4
          Top = 61
          Caption = ' Sleep'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object cxLabel37: TcxLabel
          Left = 13
          Top = 86
          Caption = 'STS'
          ParentFont = False
          Style.Edges = []
          Style.Shadow = False
          Properties.LabelStyle = cxlsLowered
          Transparent = True
        end
        object tef_sleep: TcxCurrencyEdit
          Left = 73
          Top = 60
          EditValue = 250.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.MaxValue = True
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0'
          Properties.MinValue = 10.000000000000000000
          TabOrder = 2
          Width = 42
        end
        object tef_sts: TcxCurrencyEdit
          Left = 73
          Top = 85
          EditValue = 7.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.MaxValue = True
          Properties.AssignedValues.MinValue = True
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0'
          TabOrder = 4
          Width = 42
        end
        object tef_auto_ativar_gp: TCheckBox
          Left = 5
          Top = 110
          Width = 104
          Height = 19
          Caption = 'Auto Ativar G.P.'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 6
        end
        object tef_msg_aut: TCheckBox
          Left = 5
          Top = 127
          Width = 120
          Height = 19
          Hint = 'Exibe mensagem de autentica'#231#227'o'
          Caption = 'Exibir Msg. Autent.'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 7
        end
        object tef_pag_aut: TCheckBox
          Left = 5
          Top = 143
          Width = 104
          Height = 19
          Hint = 'Faz as F.PAG no ECF automaticamente (N'#227'o marcar)'
          Caption = 'Efetua pag. aut.'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 8
        end
        object tef_fin_cf_auto: TCheckBox
          Left = 5
          Top = 159
          Width = 104
          Height = 19
          Hint = 'Finaliza o CF automaticamente (N'#195'O MARCAR PARA PREMIA)'
          Caption = 'Finaliza CF aut.'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 9
        end
        object tef_chq_rg: TCheckBox
          Left = 5
          Top = 173
          Width = 104
          Height = 19
          Hint = 'Imprime a consulta CHQ sempre em RG'
          Caption = 'CHQ em RG'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 10
        end
      end
    end
    object CategoryPanel2: TCategoryPanel
      Top = 160
      Height = 617
      Caption = 'CONFIGURA'#199#213'ES RELATIVAS AO FUNCIONAMENTO DO SISTEMA'
      Color = 15326170
      TabOrder = 10
      object Panel5: TPanel
        Left = 296
        Top = 0
        Width = 237
        Height = 598
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object ccd: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 1
          Width = 231
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Usa leitor de c'#243'digo de barras'
          TabOrder = 0
        end
        object consulta_info_cliente: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 19
          Width = 231
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Consulta informa'#231#245'es do cliente'
          TabOrder = 1
        end
        object exibir_custo: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 55
          Width = 231
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Exibir Valor de Custo do produto'
          TabOrder = 3
        end
        object emitir_fech_caixa: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 73
          Width = 231
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Emitir fech. de caixa antes da RED. Z.'
          TabOrder = 4
        end
        object truncar_centavos: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 91
          Width = 231
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Truncar centavos'
          TabOrder = 5
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 192
          Width = 237
          Height = 406
          Align = alBottom
          Caption = 'Op'#231#245'es referentes ao estabelecimento'
          TabOrder = 7
          DesignSize = (
            237
            406)
          object modo_convenio_pharmasys: TCheckBox
            AlignWithMargins = True
            Left = 12
            Top = 159
            Width = 220
            Height = 17
            Margins.Left = 10
            Margins.Top = 1
            Margins.Bottom = 0
            Align = alBottom
            Caption = 'Conv'#234'nio Pharmasystem'
            TabOrder = 5
          end
          object modo_farmacia_popular: TCheckBox
            AlignWithMargins = True
            Left = 12
            Top = 36
            Width = 220
            Height = 17
            Margins.Left = 10
            Margins.Top = 1
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Farm'#225'cia Popular'
            TabOrder = 1
            OnClick = modo_farmacia_popularClick
          end
          object modo_sapataria: TRadioButton
            AlignWithMargins = True
            Left = 5
            Top = 369
            Width = 227
            Height = 17
            Margins.Top = 1
            Margins.Bottom = 0
            Align = alBottom
            Caption = 'Sapataria'
            TabOrder = 12
            TabStop = True
            OnClick = modo_sapatariaClick
          end
          object modo_otica: TRadioButton
            AlignWithMargins = True
            Left = 5
            Top = 387
            Width = 227
            Height = 17
            Margins.Top = 1
            Margins.Bottom = 0
            Align = alBottom
            Caption = #211'tica'
            TabOrder = 14
            TabStop = True
            OnClick = modo_sapatariaClick
          end
          object modo_farmacia: TRadioButton
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 227
            Height = 17
            Margins.Top = 1
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Farm'#225'cia ou drogaria'
            TabOrder = 0
            TabStop = True
            OnClick = modo_farmaciaClick
          end
          object modo_outros: TRadioButton
            AlignWithMargins = True
            Left = 5
            Top = 351
            Width = 227
            Height = 17
            Margins.Top = 1
            Margins.Bottom = 0
            Align = alBottom
            Caption = 'Outros'
            TabOrder = 11
            TabStop = True
            OnClick = modo_sapatariaClick
          end
          object modo_convenio_epharma: TCheckBox
            AlignWithMargins = True
            Left = 12
            Top = 177
            Width = 220
            Height = 17
            Margins.Left = 10
            Margins.Top = 1
            Margins.Bottom = 0
            Align = alBottom
            Caption = 'Conv'#234'nio e-Pharma'
            TabOrder = 6
          end
          object pnl_cpf_farma: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 75
            Width = 227
            Height = 41
            Margins.Top = 0
            BevelOuter = bvNone
            TabOrder = 3
            DesignSize = (
              227
              41)
            object pfp_usuario: TcxTextEdit
              AlignWithMargins = True
              Left = 8
              Top = 15
              Hint = 'Dados do usu'#225'rio da PFP'
              Margins.Left = 10
              AutoSize = False
              ParentFont = False
              ParentShowHint = False
              Properties.CharCase = ecUpperCase
              Properties.MaxLength = 48
              ShowHint = True
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clNavy
              Style.Font.Height = -11
              Style.Font.Name = 'Comic Sans MS'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Height = 20
              Width = 69
            end
            object cxLabel40: TcxLabel
              Left = 9
              Top = 1
              Anchors = [akTop]
              Caption = 'Usu'#225'rio'
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
            object pfp_senha: TcxTextEdit
              AlignWithMargins = True
              Left = 80
              Top = 15
              Hint = 'Dados do usu'#225'rio da PFP'
              Margins.Left = 10
              AutoSize = False
              ParentFont = False
              ParentShowHint = False
              Properties.CharCase = ecUpperCase
              Properties.EchoMode = eemPassword
              Properties.MaxLength = 48
              Properties.PasswordChar = '*'
              ShowHint = True
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clNavy
              Style.Font.Height = -11
              Style.Font.Name = 'Comic Sans MS'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Height = 20
              Width = 69
            end
            object cxLabel41: TcxLabel
              Left = 81
              Top = 1
              Anchors = [akTop]
              Caption = 'Senha'
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
          end
          object pfp_homologacao: TCheckBox
            AlignWithMargins = True
            Left = 26
            Top = 54
            Width = 206
            Height = 17
            Hint = 'Somente para testes'
            Margins.Left = 24
            Margins.Top = 1
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Homologa'#231#227'o'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object modo_convenio_trn: TCheckBox
            AlignWithMargins = True
            Left = 12
            Top = 195
            Width = 220
            Height = 17
            Margins.Left = 10
            Margins.Top = 1
            Margins.Bottom = 0
            Align = alBottom
            Caption = 'Conv'#234'nio TRN'
            TabOrder = 7
            OnClick = modo_convenio_trnClick
          end
          object pnl_trn: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 212
            Width = 227
            Height = 73
            Margins.Top = 0
            Align = alBottom
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 8
            DesignSize = (
              227
              73)
            object trn_estacao: TcxTextEdit
              AlignWithMargins = True
              Left = 8
              Top = 15
              Hint = 'N'#186' individual da esta'#231#227'o (001,002,etc)'
              Margins.Left = 10
              AutoSize = False
              ParentFont = False
              ParentShowHint = False
              Properties.CharCase = ecUpperCase
              Properties.MaxLength = 48
              ShowHint = True
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clNavy
              Style.Font.Height = -11
              Style.Font.Name = 'Comic Sans MS'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Height = 20
              Width = 69
            end
            object cxLabel48: TcxLabel
              Left = 9
              Top = 1
              Anchors = [akTop]
              Caption = 'N'#186' Esta'#231#227'o'
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
            object trn_seq: TcxTextEdit
              AlignWithMargins = True
              Left = 80
              Top = 15
              Hint = 'N'#186' sequencial dos comandos'
              Margins.Left = 10
              AutoSize = False
              ParentFont = False
              ParentShowHint = False
              Properties.CharCase = ecUpperCase
              Properties.MaxLength = 48
              Properties.PasswordChar = '*'
              ShowHint = True
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clNavy
              Style.Font.Height = -11
              Style.Font.Name = 'Comic Sans MS'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Height = 20
              Width = 69
            end
            object cxLabel49: TcxLabel
              Left = 81
              Top = 1
              Anchors = [akTop]
              Caption = 'Sequ'#234'ncia'
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
            object cxLabel50: TcxLabel
              Left = 9
              Top = 36
              Anchors = [akTop]
              Caption = 'Servidor TRN (ou pasta mapeada)'
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
            object trn_server: TcxTextEdit
              AlignWithMargins = True
              Left = 8
              Top = 50
              Hint = 'Path ou pasta mapeada do servidor TRN (ex: C: ou 192.168.0.1)'
              Margins.Left = 10
              AutoSize = False
              ParentFont = False
              ParentShowHint = False
              Properties.CharCase = ecUpperCase
              Properties.MaxLength = 48
              ShowHint = True
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clNavy
              Style.Font.Height = -11
              Style.Font.Name = 'Comic Sans MS'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 7
              Height = 20
              Width = 217
            end
            object trntimout: TcxTextEdit
              AlignWithMargins = True
              Left = 153
              Top = 15
              Hint = 'N'#186' sequencial dos comandos'
              Margins.Left = 10
              AutoSize = False
              ParentFont = False
              ParentShowHint = False
              Properties.CharCase = ecUpperCase
              Properties.MaxLength = 48
              Properties.PasswordChar = '*'
              ShowHint = True
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clNavy
              Style.Font.Height = -11
              Style.Font.Name = 'Comic Sans MS'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              Height = 20
              Width = 69
            end
            object cxLabel51: TcxLabel
              Left = 154
              Top = 1
              Anchors = [akTop]
              Caption = 'Timeout'
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
          end
          object pathUnitex: TcxTextEdit
            AlignWithMargins = True
            Left = 14
            Top = 129
            Hint = 'Informa o path sem \ no final'
            Margins.Left = 10
            AutoSize = False
            ParentFont = False
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 48
            ShowHint = True
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Comic Sans MS'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            Text = 'C:\EUNIPRECOS\ARQ'
            Height = 20
            Width = 216
          end
          object cxLabel58: TcxLabel
            Left = 14
            Top = 115
            Anchors = [akTop]
            Caption = 'Path Arquivo UNITEX'
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
          object modo_convenio_vl: TCheckBox
            AlignWithMargins = True
            Left = 12
            Top = 289
            Width = 220
            Height = 17
            Margins.Left = 10
            Margins.Top = 1
            Margins.Bottom = 0
            Align = alBottom
            Caption = 'Conv'#234'nio Vida Link'
            TabOrder = 9
            OnClick = modo_convenio_trnClick
          end
          object pnl_VL: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 306
            Width = 227
            Height = 41
            Margins.Top = 0
            Align = alBottom
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 10
            DesignSize = (
              227
              41)
            object cxLabel61: TcxLabel
              Left = 9
              Top = 2
              Anchors = [akTop]
              Caption = 'Path VidaLink'
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
            object pathvl: TcxTextEdit
              AlignWithMargins = True
              Left = 8
              Top = 16
              Hint = 'Path ou pasta mapeada do servidor TRN (ex: C: ou 192.168.0.1)'
              Margins.Left = 10
              AutoSize = False
              ParentFont = False
              ParentShowHint = False
              Properties.CharCase = ecUpperCase
              Properties.MaxLength = 48
              ShowHint = True
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clNavy
              Style.Font.Height = -11
              Style.Font.Name = 'Comic Sans MS'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Text = 'C:\PDV01'
              Height = 20
              Width = 217
            end
          end
        end
        object exibir_cod_aux: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 37
          Width = 231
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Exibir Campo C'#243'digo Auxiliar'
          TabOrder = 2
        end
        object emitir_cv_fatura: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 109
          Width = 231
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Imprimir CV Fatura'
          TabOrder = 6
        end
        object debug: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 127
          Width = 231
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Modo Debug (somente para testes)'
          TabOrder = 8
        end
        object validarncm: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 145
          Width = 231
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Validar NCM'
          Checked = True
          State = cbChecked
          TabOrder = 9
        end
        object naoVendeSemEstoque: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 163
          Width = 231
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Impede venda sem estoque'
          TabOrder = 10
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 296
        Height = 598
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          296
          598)
        object cxLabel6: TcxLabel
          Left = -3
          Top = 7
          Anchors = [akTop]
          AutoSize = False
          Caption = 'M'#205'N. CARACTERES NO CAMPO C'#211'DIGO DO ITEM'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 234
          AnchorX = 231
        end
        object cxLabel11: TcxLabel
          Left = -3
          Top = 34
          Anchors = [akTop]
          AutoSize = False
          Caption = 'M'#193'X. CARACTERES NO CAMPO C'#211'DIGO DO ITEM'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 234
          AnchorX = 231
        end
        object cxLabel13: TcxLabel
          Left = -3
          Top = 60
          Anchors = [akTop]
          AutoSize = False
          Caption = 'PERCENTUAL M'#193'XIMO DE DESCONTO NO  ITEM'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 234
          AnchorX = 231
        end
        object cxLabel14: TcxLabel
          Left = -3
          Top = 86
          Anchors = [akTop]
          AutoSize = False
          Caption = 'PERCENTUAL M'#193'XIMO DE DESCONTO NO TOTAL'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 234
          AnchorX = 231
        end
        object cxLabel15: TcxLabel
          Left = -3
          Top = 112
          Anchors = [akTop]
          AutoSize = False
          Caption = 'PREFIXO PARA C'#211'DIGO DE BALAN'#199'A'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 234
          AnchorX = 231
        end
        object cxLabel23: TcxLabel
          Left = -3
          Top = 136
          Anchors = [akTop]
          AutoSize = False
          Caption = 'TAMANHO DO C'#211'DIGO DE BALAN'#199'A'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 234
          AnchorX = 231
        end
        object tam_cod_balanca: TcxCurrencyEdit
          Left = 237
          Top = 133
          EditValue = 5.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.MinValue = True
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0'
          Properties.MaxValue = 9.000000000000000000
          TabOrder = 10
          Width = 17
        end
        object prefix_cod_balanca: TcxCurrencyEdit
          Left = 237
          Top = 109
          Hint = 'Se = 0, n'#227'o interage com balan'#231'as'
          EditValue = 0.000000000000000000
          ParentFont = False
          ParentShowHint = False
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.MinValue = True
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0'
          Properties.MaxValue = 9.000000000000000000
          ShowHint = True
          TabOrder = 8
          Width = 17
        end
        object max_desc_total: TcxCurrencyEdit
          Left = 237
          Top = 83
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.MinValue = True
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '0.00%'
          Properties.MaxValue = 100.000000000000000000
          TabOrder = 6
          Width = 55
        end
        object max_desc_item: TcxCurrencyEdit
          Left = 237
          Top = 57
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.MinValue = True
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '0.00%'
          Properties.MaxValue = 100.000000000000000000
          TabOrder = 4
          Width = 55
        end
        object tam_max_cod_item: TcxCurrencyEdit
          Left = 237
          Top = 31
          EditValue = 13.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '00'
          Properties.MaxValue = 20.000000000000000000
          Properties.MinValue = 4.000000000000000000
          TabOrder = 2
          Width = 25
        end
        object tam_min_cod_item: TcxCurrencyEdit
          Left = 237
          Top = 4
          EditValue = 4.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '00'
          Properties.MaxValue = 20.000000000000000000
          Properties.MinValue = 4.000000000000000000
          TabOrder = 0
          Width = 25
        end
        object gp1: TGroupBox
          Left = 0
          Top = 514
          Width = 296
          Height = 84
          Align = alBottom
          Caption = 'Op'#231#245'es referentes ao cliente'
          TabOrder = 21
          object bloqueio_por_limite: TCheckBox
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 286
            Height = 17
            Margins.Top = 1
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Bloqueio por limite de cr'#233'dito'
            TabOrder = 1
          end
          object bloqueio_por_vencimento: TCheckBox
            AlignWithMargins = True
            Left = 5
            Top = 36
            Width = 286
            Height = 17
            Margins.Top = 1
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Bloqueio por vencimento'
            TabOrder = 3
          end
          object bloqueio_limite_dias: TcxCurrencyEdit
            Left = 174
            Top = 15
            EditValue = 30.000000000000000000
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.MaxValue = True
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '0 DIAS'
            Properties.MinValue = 30.000000000000000000
            TabOrder = 0
            Width = 63
          end
          object bloqueio_avisar: TCheckBox
            AlignWithMargins = True
            Left = 5
            Top = 58
            Width = 286
            Height = 17
            Margins.Top = 5
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Somente informar ao operador'
            TabOrder = 4
          end
          object bloqueio_venc_dias: TcxCurrencyEdit
            Left = 174
            Top = 35
            EditValue = 5.000000000000000000
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '0 DIAS'
            Properties.MaxValue = 999.000000000000000000
            Properties.MinValue = 1.000000000000000000
            TabOrder = 2
            Width = 63
          end
        end
        object max_suprimento_ini: TcxCurrencyEdit
          Left = 209
          Top = 216
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.MaxValue = True
          Properties.AssignedValues.MinValue = True
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '0.00'
          TabOrder = 12
          Width = 83
        end
        object cxLabel24: TcxLabel
          Left = -31
          Top = 219
          Anchors = [akTop]
          AutoSize = False
          Caption = 'VALOR M'#193'XIMO DO SUPRIMENTO INICIAL'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 234
          AnchorX = 203
        end
        object cxLabel42: TcxLabel
          Left = -31
          Top = 243
          Anchors = [akTop]
          AutoSize = False
          Caption = 'VALOR M'#193'XIMO DO SUPRIMENTO'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 234
          AnchorX = 203
        end
        object max_suprimento: TcxCurrencyEdit
          Left = 209
          Top = 240
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.MaxValue = True
          Properties.AssignedValues.MinValue = True
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '0.00'
          TabOrder = 13
          Width = 83
        end
        object cxLabel43: TcxLabel
          Left = -31
          Top = 267
          Anchors = [akTop]
          AutoSize = False
          Caption = 'VALOR M'#193'X. NA QUANTIDADE DE ITEM'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 234
          AnchorX = 203
        end
        object max_quant: TcxCurrencyEdit
          Left = 209
          Top = 264
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.MaxValue = True
          Properties.AssignedValues.MinValue = True
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '0.00'
          TabOrder = 14
          Width = 83
        end
        object minutos_inativo: TcxCurrencyEdit
          Left = 209
          Top = 290
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.MaxValue = True
          Properties.AssignedValues.MinValue = True
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0'
          TabOrder = 15
          Width = 27
        end
        object cxLabel44: TcxLabel
          Left = -30
          Top = 293
          Anchors = [akTop]
          AutoSize = False
          Caption = 'LOGIN SE INATIVO POR MAIS DE '
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 234
          AnchorX = 204
        end
        object cxLabel45: TcxLabel
          Left = 238
          Top = 293
          Anchors = [akTop]
          Caption = 'MINUTOS '
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          AnchorX = 291
        end
        object gerar_gtin: TCheckBox
          AlignWithMargins = True
          Left = 4
          Top = 187
          Width = 199
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Caption = 'Gerar GTIN autom'#225'tico com prefixo:'
          TabOrder = 22
          OnClick = gerar_gtinClick
        end
        object prefix_gtin: TcxCurrencyEdit
          Left = 209
          Top = 185
          EditValue = 7885.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0000'
          Properties.MaxValue = 7889.000000000000000000
          Properties.MinValue = 7000.000000000000000000
          TabOrder = 23
          Width = 83
        end
        object cxLabel54: TcxLabel
          Left = -32
          Top = 319
          Anchors = [akTop]
          AutoSize = False
          Caption = 'VENCIM. PADR'#195'O PARA VENDA FATUR.'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          Height = 20
          Width = 234
          AnchorX = 202
        end
        object dias_fat: TcxCurrencyEdit
          Left = 209
          Top = 318
          EditValue = 28.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '0'
          Properties.MaxLength = 3
          Properties.MaxValue = 999.000000000000000000
          Properties.MinValue = 5.000000000000000000
          TabOrder = 25
          Width = 27
        end
        object cxLabel55: TcxLabel
          Left = 255
          Top = 321
          Anchors = [akTop]
          Caption = 'DIAS'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Transparent = True
          AnchorX = 283
        end
      end
    end
    object CategoryPanel1: TCategoryPanel
      Top = 0
      Height = 160
      Caption = 'CONFIGURA'#199#213'ES RELATIVAS A VENDA'
      Color = 13434879
      TabOrder = 11
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 268
        Height = 141
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object desconto_sobre_item: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 1
          Width = 262
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Permite desconto sobre item'
          TabOrder = 0
          OnClick = desconto_sobre_itemClick
        end
        object desconto_sobre_total: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 19
          Width = 262
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Permite desconto sobre total'
          Color = 7012351
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object identifica_operador: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 55
          Width = 262
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Identifica operador a cada solicita'#231#227'o'
          Color = 7012351
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
        object operacoes_supervisionadas: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 73
          Width = 262
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Opera'#231#245'es supervisonadas'
          TabOrder = 4
        end
        object desconto_venda_prazo: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 37
          Width = 262
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Permite desconto em venda a prazo'
          TabOrder = 2
        end
        object f10_iniciar_venda: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 91
          Width = 262
          Height = 17
          Hint = 'Se marcado Abre a venda mediante o uso da tecla F10'
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'F10 para iniciar a venda'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object tablet: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 109
          Width = 262
          Height = 17
          Hint = 'Se marcado permite a leitura de vendas via Tablet'
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Modo Tablet'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
      end
      object Panel6: TPanel
        Left = 268
        Top = 0
        Width = 271
        Height = 141
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object aceita_cheque_sem_cadastro: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 19
          Width = 265
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Aceita cheque de cliente n'#227'o cadastrado'
          Color = 7012351
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object nao_permite_cad_incompleto: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 1
          Width = 265
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'N'#227'o permitir cadastro incompleto de cliente'
          TabOrder = 0
        end
        object processar_cheque: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 55
          Width = 265
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Processar Cheque p/ financeiro'
          Color = 7012351
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
        object processar_cartao: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 37
          Width = 265
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Processar Cart'#227'o p/ financeiro'
          TabOrder = 2
        end
        object venda_comissionada: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 73
          Width = 265
          Height = 17
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Vendas comissionadas'
          Color = 7012351
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
          OnClick = venda_comissionadaClick
        end
        object comissao_sobre_lucro: TCheckBox
          AlignWithMargins = True
          Left = 24
          Top = 91
          Width = 244
          Height = 17
          Margins.Left = 24
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Comissao sobre lucro'
          Color = 7012351
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 5
        end
      end
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 643
    Width = 565
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 2
    object btnEsc: TcxButton
      AlignWithMargins = True
      Left = 455
      Top = 4
      Width = 106
      Height = 33
      Align = alRight
      Caption = 'ESC - Fechar'
      LookAndFeel.SkinName = ''
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      TabStop = False
      OnClick = btnEscClick
    end
    object btnF11: TcxButton
      AlignWithMargins = True
      Left = 343
      Top = 4
      Width = 106
      Height = 33
      Align = alRight
      Caption = 'F11 - GRAVAR'
      LookAndFeel.SkinName = ''
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      TabStop = False
      OnClick = btnF11Click
    end
    object edSenha: TcxTextEdit
      Tag = 1
      Left = 194
      Top = 6
      TabStop = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.BorderStyle = ebsUltraFlat
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -13
      Style.Font.Name = 'Comic Sans MS'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      OnEnter = edSenhaEnter
      OnExit = edSenhaExit
      OnKeyPress = edSenhaKeyPress
      Width = 100
    end
    object cxLabel1: TcxLabel
      Left = 150
      Top = 8
      Caption = 'SENHA'
      ParentFont = False
      Style.Edges = []
      Style.Shadow = False
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelStyle = cxlsLowered
      Transparent = True
      AnchorX = 188
    end
  end
  object ini: TFormStorage
    Active = False
    IniFileName = 'autocom'
    Options = []
    StoredValues = <
      item
        Name = 'w'
        Value = 0
      end
      item
        Name = 'h'
        Value = 0
      end>
    Left = 16
    Top = 8
  end
end
