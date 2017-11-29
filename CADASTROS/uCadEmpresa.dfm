inherited frmCadEmpresa: TfrmCadEmpresa
  Caption = 'AUTOCOM GERENCIAL - CADASTRO DA EMPRESA'
  ClientHeight = 453
  ClientWidth = 537
  ExplicitWidth = 543
  ExplicitHeight = 481
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 421
    Width = 537
    TabOrder = 2
    ExplicitTop = 421
    ExplicitWidth = 537
    inherited pnlBtnClose: TPanel
      Left = 449
      TabOrder = 1
      ExplicitLeft = 449
    end
    inherited pnlBase: TPanel
      Width = 448
      TabOrder = 0
      ExplicitWidth = 448
      inherited pnlbasebotton: TPanel
        Width = 401
        ExplicitWidth = 401
        inherited Bar1: TdxStatusBar
          Width = 399
          ExplicitWidth = 399
        end
      end
      inherited btnReset: TcxButton
        Visible = False
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 537
    Height = 421
    Properties.ActivePage = TabFiscais
    ExplicitWidth = 537
    ExplicitHeight = 421
    ClientRectBottom = 421
    ClientRectRight = 537
    inherited TabCad: TcxTabSheet
      Caption = 'EMPRESA'
      ExplicitTop = 26
      ExplicitWidth = 537
      ExplicitHeight = 395
      inherited dbNav: TcxDBNavigator
        Top = 369
        Width = 530
        Buttons.Insert.Visible = False
        Buttons.Delete.Visible = False
        TabOrder = 39
        ExplicitTop = 369
        ExplicitWidth = 530
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 3
        Top = 21
        DataBinding.DataField = 'razao_social'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 0
        Width = 524
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 3
        Top = 61
        DataBinding.DataField = 'nome_fantasia'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Width = 524
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 3
        Top = 100
        DataBinding.DataField = 'cnpj'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 2
        Width = 158
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 164
        Top = 100
        Hint = 'Tecle I para Isento'
        DataBinding.DataField = 'ie'
        DataBinding.DataSource = DS1
        ParentFont = False
        ParentShowHint = False
        Properties.OnChange = cxDBTextEdit4PropertiesChange
        ShowHint = True
        TabOrder = 3
        Width = 123
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 290
        Top = 100
        DataBinding.DataField = 'im'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 4
        Width = 91
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 3
        Top = 140
        DataBinding.DataField = 'logradouro'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 5
        Width = 460
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 467
        Top = 140
        DataBinding.DataField = 'numero'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 6
        Width = 60
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 3
        Top = 179
        DataBinding.DataField = 'complem'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 7
        Width = 209
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 216
        Top = 179
        DataBinding.DataField = 'bairro'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 8
        Width = 311
      end
      object cxDBTextEdit5: TcxDBComboBox
        Left = 3
        Top = 219
        DataBinding.DataField = 'uf'
        DataBinding.DataSource = DS1
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
        Properties.OnChange = cxDBTextEdit5PropertiesChange
        TabOrder = 9
        Width = 63
      end
      object lblcdocidEmpr: TcxDBLabel
        Left = 121
        Top = 203
        AutoSize = True
        DataBinding.DataField = 'codmun'
        DataBinding.DataSource = DS1
        ParentColor = False
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 432
        Top = 219
        DataBinding.DataField = 'cep'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 11
        Width = 95
      end
      object cxDBTextEdit14: TcxDBTextEdit
        Left = 3
        Top = 259
        DataBinding.DataField = 'tel1'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 12
        Width = 110
      end
      object cxDBTextEdit15: TcxDBTextEdit
        Left = 3
        Top = 299
        DataBinding.DataField = 'tel2'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 14
        Width = 110
      end
      object cxDBTextEdit16: TcxDBTextEdit
        Left = 3
        Top = 339
        DataBinding.DataField = 'fax'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 16
        Width = 110
      end
      object cxDBTextEdit17: TcxDBTextEdit
        Left = 116
        Top = 259
        DataBinding.DataField = 'email'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecLowerCase
        TabOrder = 13
        Width = 411
      end
      object cxDBTextEdit18: TcxDBTextEdit
        Left = 116
        Top = 299
        DataBinding.DataField = 'nome_resp'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 15
        Width = 411
      end
      object cxDBTextEdit19: TcxDBTextEdit
        Left = 116
        Top = 339
        DataBinding.DataField = 'cpf_resp'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 17
        Width = 156
      end
      object cxDBTextEdit20: TcxDBTextEdit
        Left = 277
        Top = 339
        DataBinding.DataField = 'rg_resp'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 26
        Width = 110
      end
      object cmbCidadeEmpr: TcxDBTextEdit
        Left = 70
        Top = 219
        DataBinding.DataField = 'cidade'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.ReadOnly = True
        TabOrder = 10
        OnKeyPress = cmbCidadeEmprKeyPress
        Width = 358
      end
      object Label1: TcxLabel
        Left = 3
        Top = 5
        Caption = 'RAZ'#195'O SOCIAL'
        FocusControl = cxDBTextEdit1
        ParentFont = False
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 3
        Top = 45
        Caption = 'NOME FANTASIA'
        FocusControl = cxDBTextEdit2
        ParentFont = False
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 3
        Top = 84
        Caption = 'CNPJ'
        FocusControl = cxDBTextEdit3
        ParentFont = False
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 164
        Top = 84
        Caption = 'INSCR. ESTADUAL'
        FocusControl = cxDBTextEdit4
        ParentFont = False
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 3
        Top = 203
        Caption = 'UF'
        FocusControl = cxDBTextEdit5
        ParentFont = False
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 290
        Top = 84
        Caption = 'INSCR. MUNIC.'
        FocusControl = cxDBTextEdit6
        ParentFont = False
        Transparent = True
      end
      object Label9: TcxLabel
        Left = 3
        Top = 124
        Caption = 'LOGRADOURO'
        FocusControl = cxDBTextEdit8
        ParentFont = False
        Transparent = True
      end
      object Label10: TcxLabel
        Left = 467
        Top = 124
        Caption = 'N'#186
        FocusControl = cxDBTextEdit9
        ParentFont = False
        Transparent = True
      end
      object Label11: TcxLabel
        Left = 3
        Top = 163
        Caption = 'COMPLEM.'
        FocusControl = cxDBTextEdit10
        ParentFont = False
        Transparent = True
      end
      object Label12: TcxLabel
        Left = 216
        Top = 163
        Caption = 'BAIRRO'
        FocusControl = cxDBTextEdit11
        ParentFont = False
        Transparent = True
      end
      object Label13: TcxLabel
        Left = 70
        Top = 203
        Caption = 'CIDADE'
        FocusControl = cxDBTextEdit11
        ParentFont = False
        Transparent = True
      end
      object Label14: TcxLabel
        Left = 432
        Top = 203
        Caption = 'CEP'
        FocusControl = cxDBTextEdit13
        ParentFont = False
        Transparent = True
      end
      object Label15: TcxLabel
        Left = 3
        Top = 243
        Caption = 'TEL 1'
        FocusControl = cxDBTextEdit14
        ParentFont = False
        Transparent = True
      end
      object Label16: TcxLabel
        Left = 3
        Top = 283
        Caption = 'TEL 2'
        FocusControl = cxDBTextEdit15
        ParentFont = False
        Transparent = True
      end
      object Label17: TcxLabel
        Left = 3
        Top = 323
        Caption = 'FAX'
        FocusControl = cxDBTextEdit16
        ParentFont = False
        Transparent = True
      end
      object Label18: TcxLabel
        Left = 116
        Top = 243
        Caption = 'E-MAIL'
        FocusControl = cxDBTextEdit17
        ParentFont = False
        Transparent = True
      end
      object Label19: TcxLabel
        Left = 116
        Top = 283
        Caption = 'NOME DO RESPONS'#193'VEL'
        FocusControl = cxDBTextEdit18
        ParentFont = False
        Transparent = True
      end
      object Label20: TcxLabel
        Left = 116
        Top = 323
        Caption = 'CPF DO RESP.'
        FocusControl = cxDBTextEdit19
        ParentFont = False
        Transparent = True
      end
      object Label21: TcxLabel
        Left = 277
        Top = 323
        Caption = 'RG DO RESP.'
        FocusControl = cxDBTextEdit20
        ParentFont = False
        Transparent = True
      end
    end
    inherited TabPesq: TcxTabSheet
      TabVisible = False
      ExplicitWidth = 537
      ExplicitHeight = 395
      inherited grd: TcxGrid
        Width = 537
        Height = 349
        ExplicitWidth = 537
        ExplicitHeight = 349
      end
      inherited pnlPesq: TPanel
        Top = 349
        Width = 537
        ExplicitTop = 349
        ExplicitWidth = 537
        DesignSize = (
          537
          46)
        inherited edPesq: TcxTextEdit
          TabOrder = 1
        end
        inherited lblPesq: TcxLabel
          Left = -4
          Anchors = [akTop]
          Style.IsFontAssigned = True
          ExplicitLeft = -4
        end
      end
    end
    object TabCont: TcxTabSheet
      Caption = 'CONTABILISTA'
      ImageIndex = 1
      OnShow = TabContShow
      object cxDBNavigator1: TcxDBNavigator
        AlignWithMargins = True
        Left = 3
        Top = 366
        Width = 530
        Height = 26
        Buttons.ConfirmDelete = False
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
        DataSource = DS1
        Align = alBottom
        ParentShowHint = False
        ShowHint = True
        TabOrder = 29
      end
      object cxDBTextEdit23: TcxDBTextEdit
        Left = 3
        Top = 62
        DataBinding.DataField = 'cont_nome'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 0
        Width = 524
      end
      object cxDBTextEdit24: TcxDBTextEdit
        Left = 3
        Top = 102
        DataBinding.DataField = 'cont_cpf'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 1
        Width = 183
      end
      object cxDBTextEdit25: TcxDBTextEdit
        Left = 189
        Top = 102
        DataBinding.DataField = 'cont_crc'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 2
        Width = 140
      end
      object cxDBTextEdit26: TcxDBTextEdit
        Left = 3
        Top = 263
        DataBinding.DataField = 'cont_cep'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 10
        Width = 140
      end
      object cxDBTextEdit27: TcxDBTextEdit
        Left = 332
        Top = 102
        DataBinding.DataField = 'cont_cnpj'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 3
        Width = 195
      end
      object cxDBTextEdit28: TcxDBTextEdit
        Left = 3
        Top = 142
        DataBinding.DataField = 'cont_logradouro'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 4
        Width = 464
      end
      object cxDBTextEdit29: TcxDBTextEdit
        Left = 3
        Top = 181
        DataBinding.DataField = 'cont_complem'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 6
        Width = 183
      end
      object cxDBTextEdit30: TcxDBTextEdit
        Left = 190
        Top = 181
        DataBinding.DataField = 'cont_bairro'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 7
        Width = 337
      end
      object cxDBTextEdit31: TcxDBTextEdit
        Left = 148
        Top = 263
        DataBinding.DataField = 'cont_tel'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 11
        Width = 139
      end
      object cxDBTextEdit32: TcxDBTextEdit
        Left = 292
        Top = 263
        DataBinding.DataField = 'cont_fax'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 12
        Width = 140
      end
      object cxDBTextEdit33: TcxDBTextEdit
        Left = 3
        Top = 303
        DataBinding.DataField = 'cont_email'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecLowerCase
        TabOrder = 16
        Width = 524
      end
      object lblCodCidCont: TcxDBLabel
        Left = 122
        Top = 207
        AutoSize = True
        DataBinding.DataField = 'cont_codmun'
        DataBinding.DataSource = DS1
        ParentColor = False
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object cxDBComboBox2: TcxDBComboBox
        Left = 3
        Top = 223
        DataBinding.DataField = 'cont_uf'
        DataBinding.DataSource = DS1
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
        Properties.OnChange = cxDBComboBox2PropertiesChange
        TabOrder = 8
        Width = 64
      end
      object cxDBSpinEdit2: TcxDBTextEdit
        Left = 470
        Top = 142
        DataBinding.DataField = 'cont_nmro'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 5
        Width = 57
      end
      object cmbCidadeContador: TcxDBTextEdit
        Left = 72
        Top = 223
        DataBinding.DataField = 'cont_cidade'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.ReadOnly = True
        TabOrder = 9
        OnKeyPress = cmbCidadeContadorKeyPress
        Width = 455
      end
      object Label22: TcxLabel
        Left = 3
        Top = 46
        Caption = 'NOME/RAZ'#195'O SOCIAL'
        FocusControl = cxDBTextEdit23
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label23: TcxLabel
        Left = 3
        Top = 86
        Caption = 'CPF'
        FocusControl = cxDBTextEdit24
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label24: TcxLabel
        Left = 189
        Top = 86
        Caption = 'CRC'
        FocusControl = cxDBTextEdit25
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label25: TcxLabel
        Left = 3
        Top = 247
        Caption = 'CEP'
        FocusControl = cxDBTextEdit26
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label26: TcxLabel
        Left = 332
        Top = 86
        Caption = 'CNPJ'
        FocusControl = cxDBTextEdit27
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label27: TcxLabel
        Left = 3
        Top = 126
        Caption = 'LOGRADOURO'
        FocusControl = cxDBTextEdit28
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label28: TcxLabel
        Left = 470
        Top = 126
        Caption = 'N'#186
        FocusControl = cxDBSpinEdit2
        ParentFont = False
        Transparent = True
      end
      object Label29: TcxLabel
        Left = 3
        Top = 165
        Caption = 'COMPLEM.'
        FocusControl = cxDBTextEdit29
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label30: TcxLabel
        Left = 190
        Top = 165
        Caption = 'BAIRRO'
        FocusControl = cxDBTextEdit30
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label31: TcxLabel
        Left = 148
        Top = 247
        Caption = 'TEL'
        FocusControl = cxDBTextEdit31
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label32: TcxLabel
        Left = 292
        Top = 247
        Caption = 'FAX'
        FocusControl = cxDBTextEdit32
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label33: TcxLabel
        Left = 3
        Top = 287
        Caption = 'E-MAIL'
        FocusControl = cxDBTextEdit33
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label34: TcxLabel
        Left = 72
        Top = 207
        Caption = 'CIDADE'
        FocusControl = cxDBTextEdit11
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label35: TcxLabel
        Left = 3
        Top = 207
        Caption = 'UF'
        FocusControl = cxDBComboBox2
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
    end
    object TabFiscais: TcxTabSheet
      Caption = 'DADOS FISCAIS'
      ImageIndex = 2
      object cxDBNavigator2: TcxDBNavigator
        AlignWithMargins = True
        Left = 3
        Top = 369
        Width = 531
        Height = 23
        Buttons.CustomButtons = <>
        Buttons.First.Visible = False
        Buttons.PriorPage.Visible = False
        Buttons.Prior.Visible = False
        Buttons.Next.Visible = False
        Buttons.NextPage.Visible = False
        Buttons.Last.Visible = False
        Buttons.Insert.Hint = 'F5 - Novo Registro'
        Buttons.Insert.Visible = False
        Buttons.Delete.Hint = 'F6 - Excluir  Registro'
        Buttons.Delete.Visible = False
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
        TabOrder = 4
        ExplicitWidth = 530
      end
      object cxLabel3: TcxLabel
        Left = 0
        Top = 336
        Align = alBottom
        Caption = 
          'EFD - Se a empresa for enquadrada no Perfil A '#8211' ter'#225' que apresen' +
          'tar todos os documentos de forma detalhada, no perfil B poder'#225' s' +
          'er de forma consolidada'
        ParentFont = False
        Properties.WordWrap = True
        Width = 537
      end
      object cxLabel5: TcxLabel
        Left = 0
        Top = 319
        Align = alBottom
        Caption = 
          'EFD - Ind. Atv - 0=Industrial ou equiparado a industrial 1=Outra' +
          's'
        ParentFont = False
        Properties.WordWrap = True
        Width = 537
      end
      object cxGroupBox1: TcxGroupBox
        Left = 3
        Top = 11
        TabOrder = 0
        Height = 303
        Width = 265
        object cxLabel1: TcxLabel
          Left = 4
          Top = 60
          Caption = 'CNAE PRINCIPAL'
          FocusControl = cxDBTextEdit12
          ParentFont = False
          Transparent = True
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 4
          Top = 77
          DataBinding.DataField = 'cnae_prim'
          DataBinding.DataSource = DS1
          ParentFont = False
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 125
        end
        object cxDBTextEdit34: TcxDBTextEdit
          Left = 135
          Top = 77
          DataBinding.DataField = 'cnae_sec'
          DataBinding.DataSource = DS1
          ParentFont = False
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 125
        end
        object cxLabel2: TcxLabel
          Left = 135
          Top = 60
          Caption = 'CNAE SECUND'#193'RIO'
          FocusControl = cxDBTextEdit34
          ParentFont = False
          Transparent = True
        end
        object cxDBSpinEdit1: TcxDBRadioGroup
          Left = 3
          Top = 135
          Caption = 'INDICADOR DE ATIVIDADE'
          DataBinding.DataField = 'indativ'
          DataBinding.DataSource = DS1
          ParentColor = False
          ParentFont = False
          Properties.Items = <
            item
              Caption = 'Simples Nacional'
              Value = 0
            end
            item
              Caption = 'Simples Nacional Excesso Receita'
              Value = 1
            end
            item
              Caption = 'Lucro Real'
              Value = 2
            end
            item
              Caption = 'Lucro Presumido'
              Value = 3
            end
            item
              Caption = 'M.E.I.'
              Value = 4
            end>
          TabOrder = 6
          Height = 136
          Width = 256
        end
        object cxDBTextEdit21: TcxDBCheckBox
          Left = 4
          Top = 8
          TabStop = False
          Caption = 'Subst. Tribut.'
          DataBinding.DataField = 'subst_trib'
          DataBinding.DataSource = DS1
          ParentColor = False
          ParentFont = False
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          TabOrder = 0
          Width = 93
        end
        object cxDBTextEdit22: TcxDBCheckBox
          Left = 4
          Top = 24
          TabStop = False
          Caption = 'Contrib. IPI'
          DataBinding.DataField = 'contr_ipi'
          DataBinding.DataSource = DS1
          ParentColor = False
          ParentFont = False
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          TabOrder = 1
          Width = 93
        end
      end
      object cxPageControl1: TcxPageControl
        Left = 274
        Top = 0
        Width = 255
        Height = 314
        TabOrder = 1
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 314
        ClientRectRight = 255
        ClientRectTop = 26
        object cxTabSheet1: TcxTabSheet
          Caption = 'EFD-Fiscal'
          ImageIndex = 0
          object cxDBComboBox3: TcxDBComboBox
            Left = 188
            Top = 2
            DataBinding.DataField = 'indativ_sped'
            DataBinding.DataSource = DS1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.Items.Strings = (
              '0'
              '1')
            TabOrder = 1
            Width = 46
          end
          object cxLabel4: TcxLabel
            Left = 132
            Top = 4
            Caption = 'Ind. Ativ.'
            FocusControl = cxDBComboBox3
            ParentFont = False
            Transparent = True
          end
          object cxGroupBox3: TcxGroupBox
            Left = -2
            Top = 28
            Caption = 'Plano de Contas'
            TabOrder = 3
            Height = 142
            Width = 246
            object cxDBTextEdit36: TcxDBTextEdit
              Left = 3
              Top = 31
              DataBinding.DataField = 'efd_fiscal_data'
              DataBinding.DataSource = DS1
              ParentFont = False
              Properties.CharCase = ecUpperCase
              TabOrder = 2
              Width = 94
            end
            object cxLabel6: TcxLabel
              Left = 3
              Top = 14
              Caption = 'Data Inclus/Alter.'
              FocusControl = cxDBTextEdit36
              ParentFont = False
              Transparent = True
            end
            object cxLabel7: TcxLabel
              Left = 3
              Top = 55
              Caption = 'C'#243'd. Natureza da conta'
              ParentFont = False
              Transparent = True
            end
            object cxDBImageComboBox1: TcxDBImageComboBox
              Left = 3
              Top = 71
              DataBinding.DataField = 'efd_fiscal_pc_nat'
              DataBinding.DataSource = DS1
              Properties.Items = <
                item
                  Description = 'ATIVO'
                  ImageIndex = 0
                  Value = 0
                end
                item
                  Description = 'PASSIVO'
                  Value = 1
                end
                item
                  Description = 'PATRIM. L'#205'QUIDO'
                  Value = 2
                end
                item
                  Description = 'RESULTADOS'
                  Value = 3
                end
                item
                  Description = 'COMPENSA'#199#195'O'
                  Value = 4
                end
                item
                  Description = 'OUTRAS'
                  Value = 5
                end>
              TabOrder = 5
              Width = 240
            end
            object cxLabel8: TcxLabel
              Left = 103
              Top = 14
              Caption = 'Tipo'
              ParentFont = False
              Transparent = True
            end
            object cxDBImageComboBox2: TcxDBImageComboBox
              Left = 103
              Top = 31
              DataBinding.DataField = 'efd_fiscal_pc_tipo'
              DataBinding.DataSource = DS1
              Properties.Items = <
                item
                  Description = 'Anal'#237'tico'
                  ImageIndex = 0
                  Value = 'A'
                end
                item
                  Description = 'Sint'#233'tico'
                  Value = 'S'
                end>
              TabOrder = 3
              Width = 140
            end
            object cxDBTextEdit39: TcxDBTextEdit
              Left = 3
              Top = 114
              DataBinding.DataField = 'efd_fiscal_pc_nivel'
              DataBinding.DataSource = DS1
              ParentFont = False
              Properties.CharCase = ecUpperCase
              TabOrder = 7
              Width = 30
            end
            object cxLabel9: TcxLabel
              Left = 3
              Top = 98
              Caption = 'N'#237'vel'
              FocusControl = cxDBTextEdit39
              ParentFont = False
              Transparent = True
            end
            object cxDBTextEdit40: TcxDBTextEdit
              Left = 36
              Top = 114
              DataBinding.DataField = 'efd_fiscal_pc_cod'
              DataBinding.DataSource = DS1
              ParentFont = False
              Properties.CharCase = ecUpperCase
              TabOrder = 9
              Width = 30
            end
            object cxLabel10: TcxLabel
              Left = 36
              Top = 98
              Caption = 'C'#243'd.'
              FocusControl = cxDBTextEdit40
              ParentFont = False
              Transparent = True
            end
            object cxDBTextEdit41: TcxDBTextEdit
              Left = 69
              Top = 114
              DataBinding.DataField = 'efd_fiscal_pc_nome'
              DataBinding.DataSource = DS1
              ParentFont = False
              Properties.CharCase = ecUpperCase
              TabOrder = 11
              Width = 174
            end
            object cxLabel11: TcxLabel
              Left = 69
              Top = 98
              Caption = 'Nome'
              FocusControl = cxDBTextEdit41
              ParentFont = False
              Transparent = True
            end
          end
          object cxGroupBox4: TcxGroupBox
            Left = 0
            Top = 173
            Caption = 'Centro de Custos'
            TabOrder = 5
            Height = 63
            Width = 246
            object cxDBTextEdit42: TcxDBTextEdit
              Left = 3
              Top = 31
              DataBinding.DataField = 'efd_fiscal_cc_data'
              DataBinding.DataSource = DS1
              ParentFont = False
              Properties.CharCase = ecUpperCase
              TabOrder = 1
              Width = 94
            end
            object cxLabel12: TcxLabel
              Left = 3
              Top = 14
              Caption = 'Data Inclus/Alter.'
              FocusControl = cxDBTextEdit42
              ParentFont = False
              Transparent = True
            end
            object cxDBTextEdit44: TcxDBTextEdit
              Left = 100
              Top = 31
              DataBinding.DataField = 'efd_fiscal_cc_cod'
              DataBinding.DataSource = DS1
              ParentFont = False
              Properties.CharCase = ecUpperCase
              TabOrder = 3
              Width = 30
            end
            object cxLabel16: TcxLabel
              Left = 100
              Top = 15
              Caption = 'C'#243'd.'
              FocusControl = cxDBTextEdit44
              ParentFont = False
              Transparent = True
            end
            object cxDBTextEdit45: TcxDBTextEdit
              Left = 133
              Top = 31
              DataBinding.DataField = 'efd_fiscal_cc_nome'
              DataBinding.DataSource = DS1
              ParentFont = False
              Properties.CharCase = ecUpperCase
              TabOrder = 5
              Width = 110
            end
            object cxLabel17: TcxLabel
              Left = 133
              Top = 15
              Caption = 'Nome'
              FocusControl = cxDBTextEdit45
              ParentFont = False
              Transparent = True
            end
          end
          object cxDBTextEdit7: TcxDBComboBox
            Left = 66
            Top = 2
            DataBinding.DataField = 'perfil'
            DataBinding.DataSource = DS1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.Items.Strings = (
              'A'
              'B')
            TabOrder = 0
            Width = 60
          end
          object Label8: TcxLabel
            Left = 18
            Top = 4
            Caption = 'PERFIL'
            ParentFont = False
            Transparent = True
          end
          object cxDBTextEdit43: TcxDBTextEdit
            Left = 197
            Top = 238
            Hint = 'Data de vencimento da obriga'#231#227'o'
            DataBinding.DataField = 'efd_fiscal_dia_venc_icms'
            DataBinding.DataSource = DS1
            ParentFont = False
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            ShowHint = True
            TabOrder = 7
            Width = 30
          end
          object cxLabel13: TcxLabel
            Left = 148
            Top = 240
            Caption = 'Dia Venc.'
            FocusControl = cxDBTextEdit43
            ParentFont = False
            Transparent = True
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 148
            Top = 261
            TabStop = False
            Caption = 'M'#234's Subseq.'
            DataBinding.DataField = 'efd_fiscal_mes_subseq'
            DataBinding.DataSource = DS1
            ParentColor = False
            ParentFont = False
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 8
            Width = 81
          end
          object cxLabel14: TcxLabel
            Left = 4
            Top = 240
            Caption = 'C'#243'd. Obr.'
            FocusControl = cxDBTextEdit46
            ParentFont = False
            Transparent = True
          end
          object cxDBTextEdit46: TcxDBTextEdit
            Left = 75
            Top = 238
            Hint = 'C'#243'digo da obriga'#231#227'o a recolher, conforme a Tabela 5.4'
            DataBinding.DataField = 'efd_fiscal_cod_icms_a_recolher'
            DataBinding.DataSource = DS1
            ParentFont = False
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            ShowHint = True
            TabOrder = 6
            Width = 40
          end
          object cxLabel15: TcxLabel
            Left = 4
            Top = 261
            Caption = 'C'#243'd. Rec.'
            FocusControl = cxDBTextEdit47
            ParentFont = False
            Transparent = True
          end
          object cxDBTextEdit47: TcxDBTextEdit
            Left = 75
            Top = 260
            Hint = 
              'C'#243'digo de receita referente '#224' obriga'#231#227'o, pr'#243'prio da unidade da f' +
              'edera'#231#227'o, conforme legisla'#231#227'o estadual'
            DataBinding.DataField = 'efd_fiscal_cod_receita'
            DataBinding.DataSource = DS1
            ParentFont = False
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            ShowHint = True
            TabOrder = 12
            Width = 40
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'EFD-PIS/COFINS'
          ImageIndex = 1
          object cxLabel18: TcxLabel
            Left = 4
            Top = 5
            Caption = 'Al'#237'q. PIS'
            FocusControl = cxDBTextEdit48
            ParentFont = False
            Transparent = True
          end
          object cxDBTextEdit48: TcxDBTextEdit
            Left = 49
            Top = 3
            Hint = 'C'#243'digo da obriga'#231#227'o a recolher, conforme a Tabela 5.4'
            DataBinding.DataField = 'efd_contr_pis_aliq'
            DataBinding.DataSource = DS1
            ParentFont = False
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            ShowHint = True
            TabOrder = 1
            Width = 59
          end
          object cxLabel19: TcxLabel
            Left = 115
            Top = 5
            Caption = 'Al'#237'q COFINS'
            FocusControl = cxDBTextEdit49
            ParentFont = False
            Transparent = True
          end
          object cxDBTextEdit49: TcxDBTextEdit
            Left = 179
            Top = 3
            Hint = 
              'C'#243'digo de receita referente '#224' obriga'#231#227'o, pr'#243'prio da unidade da f' +
              'edera'#231#227'o, conforme legisla'#231#227'o estadual'
            DataBinding.DataField = 'efd_contr_cofins_aliq'
            DataBinding.DataSource = DS1
            ParentFont = False
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            ShowHint = True
            TabOrder = 3
            Width = 53
          end
          object cxDBImageComboBox3: TcxDBImageComboBox
            Left = 4
            Top = 47
            DataBinding.DataField = 'efd_contr_npj'
            DataBinding.DataSource = DS1
            Properties.Items = <
              item
                Description = 'Pessoa jur'#237'dica em geral'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Sociedade cooperativa'
                Value = 1
              end
              item
                Description = 'Entid. suj. ao PIS/Pasep excl. Folha de Sal'#225'rios'
                Value = 2
              end>
            TabOrder = 4
            Width = 240
          end
          object cxLabel20: TcxLabel
            Left = 4
            Top = 31
            Caption = 'Natureza da Pessoa Jur'#237'dica'
            ParentFont = False
            Transparent = True
          end
          object cxLabel21: TcxLabel
            Left = 4
            Top = 71
            Caption = 'Atividade Preponderante'
            ParentFont = False
            Transparent = True
          end
          object cxDBImageComboBox4: TcxDBImageComboBox
            Left = 4
            Top = 87
            DataBinding.DataField = 'efd_contr_ativ_prep'
            DataBinding.DataSource = DS1
            Properties.Items = <
              item
                Description = 'Industrial ou equip. a industrial'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Prestador de servi'#231'os'
                Value = 1
              end
              item
                Description = 'Atividade de com'#233'rcio'
                Value = 2
              end
              item
                Description = 'PJ refer. nos '#167#167' 6'#186', 8'#186' e 9'#186' do art. 3'#186' Lei n'#186' 9718 de 1998'
                Value = 3
              end
              item
                Description = 'Atividade imobili'#225'ria'
                Value = 4
              end
              item
                Description = 'Outros'
                Value = 5
              end>
            TabOrder = 7
            Width = 240
          end
        end
      end
    end
    object TabFarma: TcxTabSheet
      Caption = 'DADOS DO RT (Farm'#225'cia)'
      ImageIndex = 3
      object Bevel1: TBevel
        Left = 7
        Top = 90
        Width = 517
        Height = 185
        Shape = bsFrame
      end
      object cxDBTextEdit35: TcxDBTextEdit
        Left = 126
        Top = 151
        DataBinding.DataField = 'farmac_cpf'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit37: TcxDBTextEdit
        Left = 24
        Top = 151
        DataBinding.DataField = 'farmac_crf'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 0
        Width = 41
      end
      object cxDBTextEdit38: TcxDBTextEdit
        Left = 24
        Top = 191
        DataBinding.DataField = 'farmac_nome'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 7
        Width = 473
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 70
        Top = 151
        DataBinding.DataField = 'farmac_crf_uf'
        DataBinding.DataSource = DS1
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
        Properties.OnChange = cxDBTextEdit5PropertiesChange
        TabOrder = 1
        Width = 52
      end
      object Label7: TcxLabel
        Left = 126
        Top = 135
        Caption = 'CPF'
        FocusControl = cxDBTextEdit35
        ParentFont = False
        Transparent = True
      end
      object Label36: TcxLabel
        Left = 24
        Top = 135
        Caption = 'CRF'
        ParentFont = False
        Transparent = True
      end
      object Label37: TcxLabel
        Left = 70
        Top = 135
        Caption = 'UF'
        FocusControl = cxDBTextEdit37
        ParentFont = False
        Transparent = True
      end
      object Label38: TcxLabel
        Left = 24
        Top = 175
        Caption = 'NOME COMPLETO'
        FocusControl = cxDBTextEdit38
        ParentFont = False
        Transparent = True
      end
      object cxDBNavigator3: TcxDBNavigator
        AlignWithMargins = True
        Left = 3
        Top = 369
        Width = 530
        Height = 23
        Buttons.CustomButtons = <>
        Buttons.First.Visible = False
        Buttons.PriorPage.Visible = False
        Buttons.Prior.Visible = False
        Buttons.Next.Visible = False
        Buttons.NextPage.Visible = False
        Buttons.Last.Visible = False
        Buttons.Insert.Hint = 'F5 - Novo Registro'
        Buttons.Insert.Visible = False
        Buttons.Delete.Hint = 'F6 - Excluir  Registro'
        Buttons.Delete.Visible = False
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
        TabOrder = 8
      end
    end
  end
  inherited Edit1: TEdit
    Left = 590
    Top = -1
    TabOrder = 0
    ExplicitLeft = 590
    ExplicitTop = -1
  end
  inherited ini: TFormStorage
    Left = 464
    Top = 224
  end
  inherited DS1: TDataSource
    DataSet = DM.QEmpresa
    Left = 400
    Top = 264
  end
  inherited FR: TFormResizer
    Left = 464
    Top = 184
  end
  inherited EnterTab: TACBrEnterTab
    Left = 440
    Top = 264
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
