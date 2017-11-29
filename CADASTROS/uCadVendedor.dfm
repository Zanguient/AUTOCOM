inherited frmCadVendedor: TfrmCadVendedor
  Caption = 'AUTOCOM GERENCIAL - CADASTRO DE VENDEDORES'
  ClientHeight = 295
  ClientWidth = 416
  ExplicitWidth = 422
  ExplicitHeight = 323
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 263
    Width = 416
    ExplicitTop = 263
    ExplicitWidth = 416
    inherited pnlBtnClose: TPanel
      Left = 328
      ExplicitLeft = 328
    end
    inherited pnlBase: TPanel
      Width = 327
      ExplicitWidth = 327
      inherited pnlbasebotton: TPanel
        Width = 280
        ExplicitWidth = 280
        inherited Bar1: TdxStatusBar
          Width = 278
          ExplicitWidth = 278
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 416
    Height = 263
    Properties.ActivePage = TabCad
    ExplicitWidth = 416
    ExplicitHeight = 263
    ClientRectBottom = 263
    ClientRectRight = 416
    inherited TabCad: TcxTabSheet
      ExplicitWidth = 416
      ExplicitHeight = 237
      inherited dbNav: TcxDBNavigator
        Top = 211
        Width = 407
        Buttons.OnButtonClick = dbNavButtonsButtonClick
        TabOrder = 18
        ExplicitTop = 211
        ExplicitWidth = 407
      end
      object EDID: TcxDBLabel
        Left = 9
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
        AnchorX = 48
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 9
        Top = 46
        DataBinding.DataField = 'nome'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Width = 393
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 9
        Top = 87
        DataBinding.DataField = 'nomered'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 2
        Width = 104
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 118
        Top = 87
        DataBinding.DataField = 'senha'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.EchoMode = eemPassword
        TabOrder = 3
        Width = 100
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 9
        Top = 127
        DataBinding.DataField = 'endereco'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 7
        Width = 393
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 224
        Top = 87
        DataBinding.DataField = 'tel'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 5
        Width = 102
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 9
        Top = 167
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
        TabOrder = 12
        Width = 64
      end
      object cmbCidade: TcxDBTextEdit
        Left = 77
        Top = 167
        DataBinding.DataField = 'CIDADE'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 15
        OnKeyPress = cmbCidadeKeyPress
        Width = 325
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 278
        Top = 4
        Caption = 'SUSPENSO'
        DataBinding.DataField = 'SUSPENSO'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        TabOrder = 0
        Width = 124
      end
      object Label2: TcxLabel
        Left = 9
        Top = 30
        Caption = 'NOME COMPLETO'
        FocusControl = cxDBTextEdit1
        ParentFont = False
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 9
        Top = 71
        Caption = 'LOGIN'
        FocusControl = cxDBTextEdit2
        ParentFont = False
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 118
        Top = 71
        Caption = 'SENHA'
        FocusControl = cxDBTextEdit3
        ParentFont = False
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 9
        Top = 111
        Caption = 'ENDERE'#199'O'
        FocusControl = cxDBTextEdit4
        ParentFont = False
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 224
        Top = 71
        Caption = 'TEL'
        FocusControl = cxDBTextEdit5
        ParentFont = False
        Transparent = True
      end
      object Label7: TcxLabel
        Left = 9
        Top = 151
        Caption = 'UF'
        FocusControl = cxDBComboBox1
        ParentFont = False
        Transparent = True
      end
      object Label8: TcxLabel
        Left = 77
        Top = 151
        Caption = 'CIDADE'
        ParentFont = False
        Transparent = True
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 332
        Top = 87
        Hint = 
          '0 -sem comiss'#227'o'#13#10'100 - comiss'#227'o pelo produto'#13#10'Outro valor - % de' +
          ' comiss'#227'o'
        DataBinding.DataField = 'comissao'
        DataBinding.DataSource = DS1
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Width = 70
      end
      object cxLabel1: TcxLabel
        Left = 332
        Top = 71
        Caption = 'COMISS'#195'O'
        FocusControl = cxDBTextEdit6
        ParentFont = False
        Transparent = True
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 416
      ExplicitHeight = 237
      inherited grd: TcxGrid
        Width = 416
        Height = 191
        ExplicitWidth = 416
        ExplicitHeight = 191
        inherited tbv: TcxGridDBTableView
          object tbvnome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 215
          end
          object tbvnomered: TcxGridDBColumn
            DataBinding.FieldName = 'nomered'
            HeaderAlignmentHorz = taCenter
            Width = 159
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 191
        Width = 416
        Visible = False
        ExplicitTop = 191
        ExplicitWidth = 416
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'tbvnome.Tag'
      'tbvnomered.Tag')
    Left = 136
    Top = 240
  end
  inherited DS1: TDataSource
    DataSet = DM.QVendedor
    Left = 88
    Top = 240
  end
  inherited FR: TFormResizer
    Left = 176
    Top = 248
  end
  inherited EnterTab: TACBrEnterTab
    Left = 240
    Top = 248
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
