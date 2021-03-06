inherited frmCadConvenio: TfrmCadConvenio
  Caption = 'AUTOCOM GERENCIAL - CADASTRO DE CONV'#202'NIOS'
  ClientHeight = 456
  ExplicitWidth = 320
  ExplicitHeight = 484
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 424
    TabOrder = 2
    ExplicitTop = 424
    inherited pnlBtnClose: TPanel
      TabOrder = 1
    end
    inherited pnlBase: TPanel
      TabOrder = 0
      inherited pnlbasebotton: TPanel
        TabOrder = 1
      end
      inherited btnReset: TcxButton
        TabOrder = 0
      end
    end
  end
  inherited pgCad: TcxPageControl
    Height = 424
    TabOrder = 0
    ExplicitHeight = 424
    ClientRectBottom = 420
    inherited TabCad: TcxTabSheet
      ExplicitHeight = 398
      inherited dbNav: TcxDBNavigator
        Top = 368
        Width = 626
        Buttons.OnButtonClick = dbNavButtonsButtonClick
        TabOrder = 39
        ExplicitTop = 372
      end
      object EDCNPJ: TcxDBTextEdit
        Left = 111
        Top = 20
        DataBinding.DataField = 'CNPJ'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 0
        Width = 156
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 3
        Top = 62
        DataBinding.DataField = 'NOME'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 4
        Width = 627
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 3
        Top = 103
        DataBinding.DataField = 'RAZAOSOCIAL'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 5
        Width = 627
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 3
        Top = 145
        DataBinding.DataField = 'TEL1'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 6
        Width = 140
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 147
        Top = 145
        DataBinding.DataField = 'TEL2'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 7
        Width = 140
      end
      object EDID: TcxDBLabel
        Left = 3
        Top = 4
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
        Height = 22
        Width = 78
        AnchorX = 42
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 291
        Top = 145
        DataBinding.DataField = 'FAX'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 8
        Width = 140
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 435
        Top = 145
        DataBinding.DataField = 'CELULAR'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 9
        Width = 140
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 404
        Top = 20
        DataBinding.DataField = 'IM'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 2
        Width = 109
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 270
        Top = 20
        Hint = 'Tecle I para Isento'
        DataBinding.DataField = 'IE'
        DataBinding.DataSource = DS1
        ParentFont = False
        ParentShowHint = False
        Properties.CharCase = ecUpperCase
        Properties.OnChange = cxDBTextEdit9PropertiesChange
        ShowHint = True
        TabOrder = 1
        Width = 131
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 3
        Top = 184
        DataBinding.DataField = 'LOGRADOURO'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 10
        Width = 545
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 652
        Top = 203
        DataBinding.DataField = 'NMRO'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 12
        Width = 51
      end
      object cxDBTextEdit12: TcxDBTextEdit
        Left = 3
        Top = 227
        DataBinding.DataField = 'COMPLEM'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 13
        Width = 283
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 295
        Top = 227
        DataBinding.DataField = 'BAIRRO'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 15
        Width = 335
      end
      object lblCodCidCont: TcxDBLabel
        Left = 130
        Top = 253
        AutoSize = True
        DataBinding.DataField = 'codmun'
        DataBinding.DataSource = DS1
        ParentColor = False
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object cmbCidade: TcxDBTextEdit
        Left = 77
        Top = 269
        DataBinding.DataField = 'CIDADE'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 23
        OnKeyPress = cmbCidadeKeyPress
        Width = 474
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 3
        Top = 269
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
        TabOrder = 18
        Width = 64
      end
      object cxDBTextEdit14: TcxDBTextEdit
        Left = 555
        Top = 269
        DataBinding.DataField = 'CEP'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 28
        Width = 75
      end
      object cxDBMemo1: TcxDBMemo
        Left = 30
        Top = 294
        DataBinding.DataField = 'OBS'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 34
        Height = 59
        Width = 600
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 519
        Top = 20
        Caption = 'SUSPENSO'
        DataBinding.DataField = 'SUSPENSO'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        TabOrder = 3
      end
      object Label2: TcxLabel
        Left = 111
        Top = 4
        Caption = 'CNPJ/CPF'
        FocusControl = EDCNPJ
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 3
        Top = 46
        Caption = 'NOME FANTASIA'
        FocusControl = cxDBTextEdit2
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 3
        Top = 87
        Caption = 'RAZ'#195'O SOCIAL'
        FocusControl = cxDBTextEdit3
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 3
        Top = 129
        Caption = 'TEL 1'
        FocusControl = cxDBTextEdit4
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 147
        Top = 129
        Caption = 'TEL 2'
        FocusControl = cxDBTextEdit5
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label7: TcxLabel
        Left = 291
        Top = 129
        Caption = 'FAX'
        FocusControl = cxDBTextEdit6
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label8: TcxLabel
        Left = 435
        Top = 129
        Caption = 'CELULAR'
        FocusControl = cxDBTextEdit7
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label9: TcxLabel
        Left = 404
        Top = 4
        Caption = 'INSCR. MUNIC.'
        FocusControl = cxDBTextEdit8
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label10: TcxLabel
        Left = 270
        Top = 4
        Caption = 'INSCR. ESTADUAL'
        FocusControl = cxDBTextEdit9
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label11: TcxLabel
        Left = 3
        Top = 170
        Caption = 'LOGRADOURO'
        FocusControl = cxDBTextEdit10
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label12: TcxLabel
        Left = 652
        Top = 185
        Caption = 'N'#186
        FocusControl = cxDBTextEdit11
        ParentFont = False
        Transparent = True
      end
      object Label13: TcxLabel
        Left = 3
        Top = 211
        Caption = 'COMPLEM'
        FocusControl = cxDBTextEdit12
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label14: TcxLabel
        Left = 295
        Top = 211
        Caption = 'BAIRRO'
        FocusControl = cxDBTextEdit13
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label15: TcxLabel
        Left = 3
        Top = 253
        Caption = 'UF'
        FocusControl = cxDBComboBox1
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label16: TcxLabel
        Left = 76
        Top = 253
        Caption = 'CIDADE'
        FocusControl = cxDBTextEdit11
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label17: TcxLabel
        Left = 555
        Top = 253
        Caption = 'CEP'
        FocusControl = cxDBTextEdit14
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label18: TcxLabel
        Left = 3
        Top = 294
        Caption = 'OBS'
        FocusControl = cxDBMemo1
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object cxLabel1: TcxLabel
        Left = 556
        Top = 168
        Caption = 'N'#186
        FocusControl = cxDBTextEdit1
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 554
        Top = 184
        DataBinding.DataField = 'NMRO'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 11
        Width = 75
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitHeight = 398
      inherited grd: TcxGrid
        Height = 348
        ExplicitHeight = 348
        inherited tbv: TcxGridDBTableView
          object tbvCNPJ: TcxGridDBColumn
            DataBinding.FieldName = 'CNPJ'
            HeaderAlignmentHorz = taCenter
            OnHeaderClick = tbvCNPJHeaderClick
          end
          object tbvNOME: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = 'NOME'
            HeaderAlignmentHorz = taCenter
            Width = 218
            OnHeaderClick = tbvCNPJHeaderClick
          end
          object tbvRAZAOSOCIAL: TcxGridDBColumn
            DataBinding.FieldName = 'RAZAOSOCIAL'
            HeaderAlignmentHorz = taCenter
            OnHeaderClick = tbvCNPJHeaderClick
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 348
        ExplicitTop = 352
        inherited edPesq: TcxTextEdit
          Properties.OnChange = edPesqPropertiesChange
          TabOrder = 1
        end
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  inherited Edit1: TEdit
    TabOrder = 1
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'tbvCNPJ.Tag'
      'tbvNOME.Tag'
      'tbvRAZAOSOCIAL.Tag')
    Left = 168
    Top = 360
  end
  inherited DS1: TDataSource
    DataSet = DM.QConvenio
    Left = 288
    Top = 360
  end
  inherited FR: TFormResizer
    Top = 360
  end
  inherited EnterTab: TACBrEnterTab
    Left = 256
    Top = 360
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
