inherited frmCadForn: TfrmCadForn
  Caption = 'AUTOCOM GERENCIAL - CADASTRO DE FORNECEDORES'
  ClientHeight = 520
  ClientWidth = 701
  ExplicitWidth = 707
  ExplicitHeight = 548
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 488
    Width = 701
    ExplicitTop = 488
    ExplicitWidth = 701
    inherited pnlBtnClose: TPanel
      Left = 613
      ExplicitLeft = 613
    end
    inherited pnlBase: TPanel
      Width = 612
      ExplicitWidth = 612
      inherited pnlbasebotton: TPanel
        Width = 565
        ExplicitWidth = 565
        inherited Bar1: TdxStatusBar
          Width = 563
          ExplicitWidth = 563
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 701
    Height = 488
    ExplicitWidth = 701
    ExplicitHeight = 488
    ClientRectBottom = 488
    ClientRectRight = 701
    inherited TabCad: TcxTabSheet
      ExplicitWidth = 701
      ExplicitHeight = 462
      inherited dbNav: TcxDBNavigator
        Top = 436
        Width = 692
        Buttons.OnButtonClick = dbNavButtonsButtonClick
        TabOrder = 44
        ExplicitTop = 436
        ExplicitWidth = 692
      end
      object EDCNPJ: TcxDBTextEdit
        Left = 5
        Top = 96
        DataBinding.DataField = 'cnpj'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 3
        Width = 144
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 152
        Top = 96
        Hint = 'Tecle I para Isento'
        DataBinding.DataField = 'ie'
        DataBinding.DataSource = DS1
        ParentFont = False
        ParentShowHint = False
        Properties.CharCase = ecUpperCase
        Properties.OnChange = cxDBTextEdit2PropertiesChange
        ShowHint = True
        TabOrder = 4
        Width = 135
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 291
        Top = 96
        DataBinding.DataField = 'im'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 5
        Width = 93
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 387
        Top = 96
        DataBinding.DataField = 'rg'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 6
        Width = 197
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 3
        Top = 57
        DataBinding.DataField = 'nome'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        Width = 686
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 38
        Top = 18
        DataBinding.DataField = 'razaosocial'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Width = 651
      end
      object EDID: TcxDBLabel
        Left = 3
        Top = 10
        DataBinding.DataField = 'id'
        DataBinding.DataSource = DS1
        ParentColor = False
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Height = 17
        Width = 32
        AnchorX = 19
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 3
        Top = 135
        DataBinding.DataField = 'logradouro'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 8
        Width = 619
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 627
        Top = 135
        DataBinding.DataField = 'nmro'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 9
        Width = 62
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 3
        Top = 174
        DataBinding.DataField = 'complem'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 10
        Width = 198
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 204
        Top = 174
        DataBinding.DataField = 'bairro'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 11
        Width = 406
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 615
        Top = 174
        DataBinding.DataField = 'cep'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 12
        Width = 74
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 3
        Top = 213
        DataBinding.DataField = 'UF'
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
        TabOrder = 13
        Width = 64
      end
      object cmbCidade: TcxDBTextEdit
        Left = 70
        Top = 213
        DataBinding.DataField = 'CIDADE'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 14
        OnKeyPress = cmbCidadeKeyPress
        Width = 619
      end
      object lblCodCidCont: TcxDBLabel
        Left = 123
        Top = 197
        AutoSize = True
        DataBinding.DataField = 'codmun'
        DataBinding.DataSource = DS1
        ParentColor = False
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 587
        Top = 96
        DataBinding.DataField = 'datanasc'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.DateButtons = [btnClear]
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 7
        Width = 102
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 579
        Top = -2
        TabStop = False
        Caption = 'SUSPENSO'
        DataBinding.DataField = 'SUSPENSO'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        TabOrder = 0
        Width = 106
      end
      object pgCadCli: TcxPageControl
        Left = 0
        Top = 283
        Width = 701
        Height = 150
        Align = alBottom
        TabOrder = 36
        Properties.ActivePage = cxTabSheet2
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 150
        ClientRectRight = 701
        ClientRectTop = 26
        object TabCadCliCobranca: TcxTabSheet
          Caption = 'COBRAN'#199'A'
          ImageIndex = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label16: TcxLabel
            Left = 9
            Top = 1
            Caption = 'LOGRADOURO'
            FocusControl = cxDBTextEdit12
            ParentFont = False
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Transparent = True
          end
          object Label20: TcxLabel
            Left = 9
            Top = 41
            Caption = 'UF'
            FocusControl = cxDBComboBox2
            ParentFont = False
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Transparent = True
          end
          object Label21: TcxLabel
            Left = 77
            Top = 41
            Caption = 'CIDADE'
            FocusControl = cxDBTextEdit11
            ParentFont = False
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Transparent = True
          end
          object cxDBLabel1: TcxDBLabel
            Left = 128
            Top = 41
            AutoSize = True
            DataBinding.DataField = 'codmuncobranca'
            DataBinding.DataSource = DS1
            ParentColor = False
            ParentFont = False
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Transparent = True
          end
          object Label17: TcxLabel
            Left = 609
            Top = 1
            Caption = 'N'#186
            FocusControl = cxDBTextEdit13
            ParentFont = False
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Transparent = True
          end
          object Label22: TcxLabel
            Left = 608
            Top = 81
            Caption = 'CEP'
            FocusControl = cxDBTextEdit16
            ParentFont = False
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Transparent = True
          end
          object Label19: TcxLabel
            Left = 258
            Top = 81
            Caption = 'BAIRRO'
            FocusControl = cxDBTextEdit15
            ParentFont = False
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Transparent = True
          end
          object Label18: TcxLabel
            Left = 9
            Top = 81
            Caption = 'COMPLEMENTO'
            FocusControl = cxDBTextEdit14
            ParentFont = False
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Transparent = True
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 9
            Top = 17
            DataBinding.DataField = 'logradourocobranca'
            DataBinding.DataSource = DS1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 596
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 609
            Top = 17
            DataBinding.DataField = 'nmrocobranca'
            DataBinding.DataSource = DS1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            TabOrder = 3
            Width = 73
          end
          object cxDBTextEdit15: TcxDBTextEdit
            Left = 258
            Top = 97
            DataBinding.DataField = 'bairrocobranca'
            DataBinding.DataSource = DS1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            TabOrder = 13
            Width = 347
          end
          object cxDBComboBox2: TcxDBComboBox
            Left = 9
            Top = 57
            DataBinding.DataField = 'ufcobranca'
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
            TabOrder = 7
            Width = 64
          end
          object edCidadeCobranca: TcxDBTextEdit
            Left = 76
            Top = 57
            DataBinding.DataField = 'cidadecobranca'
            DataBinding.DataSource = DS1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            TabOrder = 8
            OnKeyPress = edCidadeCobrancaKeyPress
            Width = 606
          end
          object cxDBTextEdit14: TcxDBTextEdit
            Left = 9
            Top = 97
            DataBinding.DataField = 'complemcobranca'
            DataBinding.DataSource = DS1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            TabOrder = 12
            Width = 246
          end
          object cxDBTextEdit16: TcxDBTextEdit
            Left = 608
            Top = 97
            DataBinding.DataField = 'cepcobranca'
            DataBinding.DataSource = DS1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            TabOrder = 14
            Width = 74
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'DADOS COMPLEMENTARES'
          ImageIndex = 1
          object Label27: TcxLabel
            Left = 3
            Top = 33
            Margins.Top = 1
            Caption = 'E-MAIL'
            FocusControl = cxDBTextEdit19
            ParentFont = False
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Transparent = True
          end
          object cxDBTextEdit19: TcxDBTextEdit
            Left = 3
            Top = 49
            DataBinding.DataField = 'email'
            DataBinding.DataSource = DS1
            ParentFont = False
            Properties.CharCase = ecLowerCase
            TabOrder = 1
            Width = 679
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'OBSERVA'#199#213'ES'
          ImageIndex = 2
          object Label30: TcxLabel
            Left = 1
            Top = 1
            Caption = 'REFER'#202'NCIA COMERCIAL'
            FocusControl = cxDBMemo1
            ParentFont = False
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Transparent = True
          end
          object Label31: TcxLabel
            Left = 282
            Top = 1
            Caption = 'OBS'
            FocusControl = cxDBMemo2
            ParentFont = False
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Transparent = True
          end
          object Label32: TcxLabel
            Left = 282
            Top = 82
            Caption = 'OUTRAS INFOR.'
            FocusControl = cxDBTextEdit20
            ParentFont = False
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Transparent = True
          end
          object cxDBMemo1: TcxDBMemo
            Left = 1
            Top = 17
            DataBinding.DataField = 'referencia'
            DataBinding.DataSource = DS1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Height = 101
            Width = 277
          end
          object cxDBMemo2: TcxDBMemo
            Left = 282
            Top = 17
            Hint = 
              'As informa'#231#245'es neste campo aparecem em outros m'#243'dulos, de consul' +
              'ta do cliente.'
            DataBinding.DataField = 'obs'
            DataBinding.DataSource = DS1
            ParentFont = False
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            ShowHint = True
            TabOrder = 3
            Height = 62
            Width = 404
          end
          object cxDBTextEdit20: TcxDBTextEdit
            Left = 282
            Top = 98
            DataBinding.DataField = 'infoutil'
            DataBinding.DataSource = DS1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            TabOrder = 5
            Width = 404
          end
        end
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 3
        Top = 252
        DataBinding.DataField = 'tel1'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 15
        Width = 112
      end
      object cxDBTextEdit21: TcxDBTextEdit
        Left = 207
        Top = 252
        DataBinding.DataField = 'tel2'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 17
        Width = 135
      end
      object cxDBTextEdit22: TcxDBTextEdit
        Left = 433
        Top = 252
        DataBinding.DataField = 'fax'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 21
        Width = 125
      end
      object cxDBTextEdit23: TcxDBTextEdit
        Left = 563
        Top = 252
        DataBinding.DataField = 'celular'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 28
        Width = 126
      end
      object cxDBTextEdit24: TcxDBComboBox
        Left = 119
        Top = 252
        DataBinding.DataField = 'tipo_tel1'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.Items.Strings = (
          'RES'
          'COM'
          'REC')
        TabOrder = 16
        Width = 84
      end
      object cxDBTextEdit25: TcxDBComboBox
        Left = 345
        Top = 252
        DataBinding.DataField = 'tipo_tel2'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.Items.Strings = (
          'RES'
          'COM'
          'REC')
        TabOrder = 18
        Width = 85
      end
      object Label1: TcxLabel
        Left = 5
        Top = 80
        Caption = 'CNPJ/CPF'
        FocusControl = EDCNPJ
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 152
        Top = 80
        Caption = 'INSCRI'#199#195'O ESTADUAL'
        FocusControl = cxDBTextEdit2
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 291
        Top = 80
        Caption = 'INSCR. MUNIC.'
        FocusControl = cxDBTextEdit3
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 387
        Top = 80
        Caption = 'RG'
        FocusControl = cxDBTextEdit4
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 3
        Top = 41
        Caption = 'NOME FANTASIA'
        FocusControl = cxDBTextEdit5
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 38
        Top = 2
        Caption = 'RAZ'#195'O SOCIAL / NOME COMPLETO'
        FocusControl = cxDBTextEdit6
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label8: TcxLabel
        Left = 3
        Top = 119
        Caption = 'LOGRADOURO'
        FocusControl = cxDBTextEdit7
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label9: TcxLabel
        Left = 627
        Top = 119
        Caption = 'N'#186
        FocusControl = cxDBTextEdit8
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label10: TcxLabel
        Left = 3
        Top = 158
        Caption = 'COMPLEMENTO'
        FocusControl = cxDBTextEdit9
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label11: TcxLabel
        Left = 204
        Top = 158
        Caption = 'BAIRRO'
        FocusControl = cxDBTextEdit10
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label12: TcxLabel
        Left = 615
        Top = 158
        Caption = 'CEP'
        FocusControl = cxDBTextEdit11
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label14: TcxLabel
        Left = 72
        Top = 197
        Caption = 'CIDADE'
        FocusControl = cxDBTextEdit11
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label15: TcxLabel
        Left = 587
        Top = 80
        Caption = 'DT NASCIM.'
        FocusControl = cxDBDateEdit1
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label34: TcxLabel
        Left = 207
        Top = 236
        Caption = 'TEL 2'
        FocusControl = cxDBTextEdit21
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label35: TcxLabel
        Left = 433
        Top = 236
        Caption = 'FAX'
        FocusControl = cxDBTextEdit22
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label36: TcxLabel
        Left = 563
        Top = 236
        Caption = 'CELULAR'
        FocusControl = cxDBTextEdit23
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label37: TcxLabel
        Left = 3
        Top = 236
        Caption = 'TEL 1'
        FocusControl = cxDBTextEdit21
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label38: TcxLabel
        Left = 119
        Top = 236
        Caption = 'TIPO'
        FocusControl = cxDBTextEdit24
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label39: TcxLabel
        Left = 345
        Top = 236
        Caption = 'TIPO'
        FocusControl = cxDBTextEdit25
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label40: TcxLabel
        Left = 3
        Top = 197
        Caption = 'UF'
        FocusControl = cxDBTextEdit11
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 701
      ExplicitHeight = 462
      inherited grd: TcxGrid
        Width = 701
        Height = 416
        ExplicitWidth = 693
        ExplicitHeight = 412
        inherited tbv: TcxGridDBTableView
          object tbvCNPJ: TcxGridDBColumn
            DataBinding.FieldName = 'CNPJ'
            HeaderAlignmentHorz = taCenter
            Width = 98
            OnHeaderClick = tbvCNPJHeaderClick
          end
          object tbvNOME: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = 'NOME'
            HeaderAlignmentHorz = taCenter
            Width = 154
            OnHeaderClick = tbvCNPJHeaderClick
          end
          object tbvRAZAOSOCIAL: TcxGridDBColumn
            DataBinding.FieldName = 'RAZAOSOCIAL'
            HeaderAlignmentHorz = taCenter
            Width = 166
            OnHeaderClick = tbvCNPJHeaderClick
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 416
        Width = 701
        ExplicitTop = 416
        ExplicitWidth = 701
        inherited edPesq: TcxTextEdit
          Properties.OnChange = edPesqPropertiesChange
        end
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'tbvCNPJ.Tag'
      'tbvNOME.Tag'
      'tbvRAZAOSOCIAL.Tag')
    Left = 392
    Top = 0
  end
  inherited DS1: TDataSource
    DataSet = DM.QForn
    Left = 472
    Top = 0
  end
  inherited FR: TFormResizer
    Left = 520
    Top = 65528
  end
  inherited EnterTab: TACBrEnterTab
    Left = 304
    Top = 0
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
