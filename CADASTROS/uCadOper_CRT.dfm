inherited frmCadOper_CRT: TfrmCadOper_CRT
  Caption = 'AUTOCOM GERENCIAL - CADASTRO DE OPERADORAS DE CART'#195'O'
  ClientHeight = 295
  ClientWidth = 708
  ExplicitWidth = 714
  ExplicitHeight = 324
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 263
    Width = 708
    ExplicitTop = 263
    ExplicitWidth = 708
    inherited pnlBtnClose: TPanel
      Left = 620
      ExplicitLeft = 620
    end
    inherited pnlBase: TPanel
      Width = 619
      ExplicitWidth = 619
      inherited pnlbasebotton: TPanel
        Width = 572
        ExplicitWidth = 572
        inherited Bar1: TdxStatusBar
          Width = 570
          ExplicitWidth = 570
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 708
    Height = 263
    Properties.ActivePage = TabCad
    ExplicitWidth = 708
    ExplicitHeight = 263
    ClientRectBottom = 263
    ClientRectRight = 708
    inherited TabCad: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 27
      ExplicitWidth = 1022
      ExplicitHeight = 598
      inherited dbNav: TcxDBNavigator
        Top = 211
        Width = 702
        Buttons.OnButtonClick = dbNavButtonsButtonClick
        TabOrder = 24
        ExplicitTop = 207
        ExplicitWidth = 690
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
      object Label6: TcxLabel
        Left = 38
        Top = 2
        Caption = 'RAZ'#195'O SOCIAL / NOME COMPLETO'
        FocusControl = cxDBTextEdit6
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
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
      object Label5: TcxLabel
        Left = 3
        Top = 41
        Caption = 'NOME FANTASIA'
        FocusControl = cxDBTextEdit5
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 3
        Top = 57
        DataBinding.DataField = 'nome'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 3
        Width = 686
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
      object EDCNPJ: TcxDBTextEdit
        Left = 5
        Top = 96
        DataBinding.DataField = 'cnpj'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 8
        Width = 144
      end
      object Label2: TcxLabel
        Left = 551
        Top = 80
        Caption = 'INSCRI'#199#195'O ESTADUAL'
        FocusControl = cxDBTextEdit2
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 554
        Top = 96
        Hint = 'Tecle I para Isento'
        DataBinding.DataField = 'ie'
        DataBinding.DataSource = DS1
        ParentFont = False
        ParentShowHint = False
        Properties.CharCase = ecUpperCase
        ShowHint = True
        TabOrder = 11
        Width = 135
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
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 3
        Top = 135
        DataBinding.DataField = 'logradouro'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 14
        Width = 619
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
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 627
        Top = 135
        DataBinding.DataField = 'nmro'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 15
        Width = 62
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
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 3
        Top = 174
        DataBinding.DataField = 'complem'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 19
        Width = 225
      end
      object Label11: TcxLabel
        Left = 231
        Top = 158
        Caption = 'BAIRRO'
        FocusControl = cxDBTextEdit10
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 231
        Top = 174
        DataBinding.DataField = 'bairro'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 21
        Width = 341
      end
      object Label40: TcxLabel
        Left = 155
        Top = 80
        Caption = 'UF'
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 155
        Top = 96
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
        TabOrder = 9
        Width = 64
      end
      object Label14: TcxLabel
        Left = 224
        Top = 80
        Caption = 'CIDADE'
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object cmbCidade: TcxDBTextEdit
        Left = 222
        Top = 96
        DataBinding.DataField = 'CIDADE'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 10
        OnKeyPress = cmbCidadeKeyPress
        Width = 323
      end
      object lblCodCidCont: TcxDBLabel
        Left = 275
        Top = 80
        AutoSize = True
        DataBinding.DataField = 'codmun'
        DataBinding.DataSource = DS1
        ParentColor = False
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label37: TcxLabel
        Left = 577
        Top = 158
        Caption = 'TELEFONE'
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 577
        Top = 174
        DataBinding.DataField = 'tel1'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 22
        Width = 112
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitLeft = 0
      ExplicitWidth = 704
      ExplicitHeight = 233
      inherited grd: TcxGrid
        Width = 708
        Height = 191
        ExplicitWidth = 700
        ExplicitHeight = 187
        inherited tbv: TcxGridDBTableView
          object tbvcnpj: TcxGridDBColumn
            DataBinding.FieldName = 'cnpj'
            HeaderAlignmentHorz = taCenter
            Width = 125
            OnHeaderClick = tbvcnpjHeaderClick
          end
          object tbvnome: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 275
            OnHeaderClick = tbvcnpjHeaderClick
          end
          object tbvrazaosocial: TcxGridDBColumn
            DataBinding.FieldName = 'razaosocial'
            HeaderAlignmentHorz = taCenter
            Width = 260
            OnHeaderClick = tbvcnpjHeaderClick
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 191
        Width = 708
        ExplicitTop = 187
        ExplicitWidth = 704
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
    Left = 392
    Top = 48
  end
  inherited DS1: TDataSource
    DataSet = DM.QOper_CRT
    Left = 456
    Top = 48
  end
  inherited FR: TFormResizer
    Left = 560
    Top = 48
  end
  inherited EnterTab: TACBrEnterTab
    Left = 512
    Top = 48
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
