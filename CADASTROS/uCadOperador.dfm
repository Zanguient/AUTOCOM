inherited frmCadOperador: TfrmCadOperador
  Caption = 'AUTOCOM GERENCIAL - CADASTRO DE OPERADORES'
  ClientHeight = 327
  ClientWidth = 717
  ExplicitWidth = 723
  ExplicitHeight = 355
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 295
    Width = 717
    ExplicitTop = 295
    ExplicitWidth = 717
    inherited pnlBtnClose: TPanel
      Left = 629
      ExplicitLeft = 629
    end
    inherited pnlBase: TPanel
      Width = 628
      ExplicitWidth = 628
      inherited pnlbasebotton: TPanel
        Width = 581
        ExplicitWidth = 581
        inherited Bar1: TdxStatusBar
          Width = 579
          ExplicitWidth = 579
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 717
    Height = 295
    Properties.ActivePage = TabCad
    ExplicitWidth = 717
    ExplicitHeight = 295
    ClientRectBottom = 291
    ClientRectRight = 713
    inherited TabCad: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 709
      ExplicitHeight = 265
      inherited dbNav: TcxDBNavigator
        Top = 239
        Width = 703
        Buttons.OnButtonClick = dbNavButtonsButtonClick
        ExplicitTop = 243
        ExplicitWidth = 707
      end
      object EDID: TcxDBLabel
        Left = 9
        Top = 3
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
        Top = 44
        DataBinding.DataField = 'nome'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        Width = 393
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 9
        Top = 83
        DataBinding.DataField = 'nomered'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 3
        Width = 140
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 156
        Top = 83
        DataBinding.DataField = 'senha'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.EchoMode = eemPassword
        TabOrder = 4
        Width = 139
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 301
        Top = 83
        DataBinding.DataField = 'acesso'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.MaxValue = 3.000000000000000000
        Properties.MinValue = 1.000000000000000000
        TabOrder = 5
        Width = 101
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 9
        Top = 123
        DataBinding.DataField = 'endereco'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 6
        Width = 393
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 9
        Top = 204
        DataBinding.DataField = 'tel'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 7
        Width = 140
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 9
        Top = 166
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
        TabOrder = 8
        Width = 64
      end
      object cmbCidade: TcxDBTextEdit
        Left = 77
        Top = 166
        DataBinding.DataField = 'CIDADE'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 9
        OnKeyPress = cmbCidadeKeyPress
        Width = 325
      end
      object btnPerm: TcxButton
        AlignWithMargins = True
        Left = 298
        Top = 190
        Width = 104
        Height = 35
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = 'Permiss'#245'es'
        TabOrder = 10
        TabStop = False
        OnClick = btnPermClick
      end
      object grdSegur: TcxGrid
        AlignWithMargins = True
        Left = 404
        Top = 3
        Width = 302
        Height = 230
        Align = alRight
        TabOrder = 11
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        ExplicitLeft = 412
        ExplicitHeight = 234
        object tbvSegur: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DSSegur
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
          object tbvSegurcaption: TcxGridDBColumn
            Caption = 'MENU'
            DataBinding.FieldName = 'caption'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 155
          end
          object tbvSegurchave: TcxGridDBColumn
            Caption = 'ACESSO'
            DataBinding.FieldName = 'chave'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ImmediatePost = True
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 55
          end
          object tbvSegurbotao: TcxGridDBColumn
            DataBinding.FieldName = 'botao'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 9.000000000000000000
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
        end
        object lvSegur: TcxGridLevel
          GridView = tbvSegur
        end
      end
      object Label2: TcxLabel
        Left = 9
        Top = 28
        Caption = 'NOME COMPLETO'
        FocusControl = cxDBTextEdit1
        ParentFont = False
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 9
        Top = 67
        Caption = 'LOGIN'
        FocusControl = cxDBTextEdit2
        ParentFont = False
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 156
        Top = 67
        Caption = 'SENHA'
        FocusControl = cxDBTextEdit3
        ParentFont = False
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 301
        Top = 67
        Caption = 'NIVEL '
        FocusControl = cxDBSpinEdit1
        ParentFont = False
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 9
        Top = 107
        Caption = 'ENDERE'#199'O'
        FocusControl = cxDBTextEdit4
        ParentFont = False
        Transparent = True
      end
      object Label7: TcxLabel
        Left = 9
        Top = 188
        Caption = 'TEL'
        FocusControl = cxDBTextEdit5
        ParentFont = False
        Transparent = True
      end
      object Label8: TcxLabel
        Left = 9
        Top = 150
        Caption = 'UF'
        FocusControl = cxDBComboBox1
        ParentFont = False
        Transparent = True
      end
      object Label9: TcxLabel
        Left = 77
        Top = 150
        Caption = 'CIDADE'
        ParentFont = False
        Transparent = True
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 713
      ExplicitHeight = 269
      inherited grd: TcxGrid
        Width = 709
        Height = 219
        ExplicitWidth = 717
        ExplicitHeight = 223
        inherited tbv: TcxGridDBTableView
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
          end
          object tbvnome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
          end
          object tbvnomered: TcxGridDBColumn
            DataBinding.FieldName = 'nomered'
            HeaderAlignmentHorz = taCenter
          end
          object tbvtel: TcxGridDBColumn
            DataBinding.FieldName = 'tel'
            HeaderAlignmentHorz = taCenter
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 219
        Width = 709
        Visible = False
        ExplicitTop = 223
        ExplicitWidth = 713
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  inherited ini: TFormStorage
    Left = 112
    Top = 32
  end
  inherited DS1: TDataSource
    DataSet = DM.QOperador
    Left = 152
    Top = 32
  end
  inherited FR: TFormResizer
    Left = 224
    Top = 32
  end
  inherited EnterTab: TACBrEnterTab
    Left = 184
    Top = 32
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
  object DSSegur: TDataSource
    DataSet = DM.QSegur
    OnStateChange = DS1StateChange
    Left = 280
    Top = 32
  end
end
