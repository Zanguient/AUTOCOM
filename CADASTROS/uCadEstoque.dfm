inherited frmCadEstoque: TfrmCadEstoque
  BorderStyle = bsSizeable
  Caption = 'AUTOCOM GERENCIAL - CADASTRO DE PRODUTOS E SERVI'#199'OS'
  ClientHeight = 450
  ClientWidth = 740
  ExplicitWidth = 756
  ExplicitHeight = 488
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 418
    Width = 740
    ExplicitTop = 418
    ExplicitWidth = 740
    inherited pnlBtnClose: TPanel
      Left = 544
      Width = 191
      ExplicitLeft = 544
      ExplicitWidth = 191
      inherited btnSair: TcxButton
        Left = 112
        ExplicitLeft = 112
      end
      object btnReplicar: TcxButton
        AlignWithMargins = True
        Left = 32
        Top = 1
        Width = 78
        Height = 24
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alRight
        Caption = 'F3-REPLICAR'
        TabOrder = 1
        OnClick = btnReplicarClick
      end
      object btnAssociar: TcxButton
        AlignWithMargins = True
        Left = -48
        Top = 1
        Width = 78
        Height = 24
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alRight
        Caption = 'F2-Associar'
        ModalResult = 1
        TabOrder = 2
        Visible = False
      end
    end
    inherited pnlBase: TPanel
      Width = 543
      ExplicitWidth = 543
      inherited pnlbasebotton: TPanel
        Width = 496
        ExplicitWidth = 496
        inherited Bar1: TdxStatusBar
          Width = 494
          ExplicitWidth = 494
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 740
    Height = 418
    ExplicitWidth = 740
    ExplicitHeight = 418
    ClientRectBottom = 414
    ClientRectRight = 736
    inherited TabCad: TcxTabSheet
      ExplicitTop = 26
      ExplicitWidth = 740
      ExplicitHeight = 392
      inherited dbNav: TcxDBNavigator
        Top = 362
        Width = 726
        Buttons.OnButtonClick = dbNavButtonsButtonClick
        Buttons.Prior.Visible = True
        Buttons.Next.Visible = True
        TabOrder = 2
        ExplicitTop = 366
        ExplicitWidth = 730
      end
      object pgOpc: TcxPageControl
        Left = 0
        Top = 163
        Width = 732
        Height = 192
        Align = alTop
        TabOrder = 1
        Properties.ActivePage = TabImpostos
        Properties.CustomButtons.Buttons = <>
        ExplicitWidth = 740
        ClientRectBottom = 188
        ClientRectLeft = 4
        ClientRectRight = 728
        ClientRectTop = 26
        object TabImpostos: TcxTabSheet
          Caption = 'IMPOSTOS'
          ImageIndex = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object gppis: TcxGroupBox
            AlignWithMargins = True
            Left = 320
            Top = 3
            Margins.Left = 0
            Align = alLeft
            Alignment = alTopCenter
            Caption = 'PIS'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Comic Sans MS'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            ExplicitHeight = 160
            Height = 156
            Width = 132
            object cxDBCalcEdit13: TcxDBCurrencyEdit
              Left = 75
              Top = 109
              DataBinding.DataField = 'pis_pc'
              DataBinding.DataSource = DS1
              ParentFont = False
              ParentShowHint = False
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = '0.00##'
              ShowHint = True
              TabOrder = 0
              Width = 50
            end
            object Label26: TcxLabel
              Left = 7
              Top = 110
              Caption = 'AL'#205'Q.  (%)'
              FocusControl = cxDBCalcEdit13
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object cxGroupBox5: TPanel
              Left = 2
              Top = 53
              Width = 128
              Height = 28
              Margins.Left = 1
              Align = alTop
              UseDockManager = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 2
              object cxLabel5: TcxLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Align = alLeft
                Caption = 'CST SA'#205'DA'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taCenter
                Transparent = True
                AnchorX = 33
              end
              object cxDBSpinEdit5: TcxDBLookupComboBox
                AlignWithMargins = True
                Left = 78
                Top = 4
                Hint = 'CST de sa'#237'da. Ser'#225' utilizado como valor padr'#227'o.'
                Align = alRight
                DataBinding.DataField = 'cst_pis_sai'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                Properties.KeyFieldNames = 'id'
                Properties.ListColumns = <
                  item
                    FieldName = 'cst'
                  end>
                Properties.ListSource = DM.dsCSTPC
                Properties.OnChange = cxDBSpinEdit5PropertiesChange
                ShowHint = True
                TabOrder = 0
                ExplicitHeight = 21
                Width = 46
              end
            end
            object cxGroupBox6: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 21
              Width = 124
              Height = 29
              Margins.Right = 1
              Align = alTop
              UseDockManager = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 3
              object cxLabel3: TcxLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Align = alLeft
                Caption = 'CST ENTR.'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taCenter
                Transparent = True
                AnchorX = 32
              end
              object cxDBSpinEdit4: TcxDBLookupComboBox
                AlignWithMargins = True
                Left = 74
                Top = 4
                Hint = 'CST de entrada. Ser'#225' utilizado como valor padr'#227'o. M'#225'x: 49'
                Align = alRight
                DataBinding.DataField = 'cst_pis_ent'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                Properties.KeyFieldNames = 'id'
                Properties.ListColumns = <
                  item
                    FieldName = 'cst'
                  end>
                Properties.ListSource = DM.dsCSTPC
                ShowHint = True
                TabOrder = 0
                Width = 46
              end
            end
            object cxButton3: TcxButton
              Left = 109
              Top = 2
              Width = 16
              Height = 16
              Hint = 'Abre a Tabela de CST'
              Caption = '>>'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              TabStop = False
              OnClick = btnCadCSTClick
            end
          end
          object gpcofins: TcxGroupBox
            AlignWithMargins = True
            Left = 455
            Top = 3
            Margins.Left = 0
            Align = alLeft
            Alignment = alTopCenter
            Caption = 'COFINS'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Comic Sans MS'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            ExplicitHeight = 160
            Height = 156
            Width = 133
            object cxDBCalcEdit12: TcxDBCurrencyEdit
              Left = 76
              Top = 109
              DataBinding.DataField = 'cofins_pc'
              DataBinding.DataSource = DS1
              ParentFont = False
              ParentShowHint = False
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = '0.00##'
              ShowHint = True
              TabOrder = 0
              Width = 50
            end
            object Label22: TcxLabel
              Left = 8
              Top = 110
              Caption = 'AL'#205'Q. (%)'
              FocusControl = cxDBCalcEdit12
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object cxGroupBox8: TPanel
              Left = 2
              Top = 53
              Width = 129
              Height = 28
              Margins.Left = 1
              Align = alTop
              UseDockManager = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 2
              object cxLabel4: TcxLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Align = alLeft
                Caption = 'CST SA'#205'DA'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taCenter
                Transparent = True
                AnchorX = 33
              end
              object cxDBSpinEdit2: TcxDBLookupComboBox
                AlignWithMargins = True
                Left = 79
                Top = 4
                Hint = 'CST de sa'#237'da. Ser'#225' utilizado como valor padr'#227'o.'
                Align = alRight
                DataBinding.DataField = 'cst_cofins_sai'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                Properties.KeyFieldNames = 'id'
                Properties.ListColumns = <
                  item
                    FieldName = 'cst'
                  end>
                Properties.ListSource = DM.dsCSTPC
                ShowHint = True
                TabOrder = 0
                ExplicitHeight = 21
                Width = 46
              end
            end
            object cxGroupBox7: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 21
              Width = 125
              Height = 29
              Margins.Right = 1
              Align = alTop
              UseDockManager = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 3
              object cxLabel2: TcxLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Align = alLeft
                Caption = 'CST ENTR.'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taCenter
                Transparent = True
                AnchorX = 32
              end
              object cxDBSpinEdit3: TcxDBLookupComboBox
                AlignWithMargins = True
                Left = 75
                Top = 4
                Hint = 'CST de entrada. Ser'#225' utilizado como valor padr'#227'o. M'#225'x: 49'
                Align = alRight
                DataBinding.DataField = 'cst_cofins_ent'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                Properties.KeyFieldNames = 'id'
                Properties.ListColumns = <
                  item
                    FieldName = 'cst'
                  end>
                Properties.ListSource = DM.dsCSTPC
                ShowHint = True
                TabOrder = 0
                Width = 46
              end
            end
            object cxButton4: TcxButton
              Left = 110
              Top = 2
              Width = 16
              Height = 16
              Hint = 'Abre a Tabela de CST'
              Caption = '>>'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              TabStop = False
              OnClick = btnCadCSTClick
            end
          end
          object gpipi: TcxGroupBox
            AlignWithMargins = True
            Left = 186
            Top = 3
            Margins.Left = 0
            Align = alLeft
            Alignment = alTopCenter
            Caption = 'IPI'
            Ctl3D = True
            ParentBackground = False
            ParentColor = False
            ParentCtl3D = False
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Comic Sans MS'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            ExplicitHeight = 160
            Height = 156
            Width = 131
            object cxDBCalcEdit14: TcxDBCurrencyEdit
              Left = 66
              Top = 109
              DataBinding.DataField = 'ipi_pc'
              DataBinding.DataSource = DS1
              ParentFont = False
              ParentShowHint = False
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = '0.00##'
              ShowHint = True
              TabOrder = 0
              Width = 50
            end
            object Label29: TcxLabel
              Left = 5
              Top = 110
              Caption = 'ALIQ. (%)'
              FocusControl = cxDBCalcEdit14
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object cxGroupBox9: TPanel
              Left = 2
              Top = 53
              Width = 127
              Height = 29
              Margins.Left = 1
              Align = alTop
              UseDockManager = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 2
              object Label41: TcxLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Align = alLeft
                Caption = 'CST SA'#205'DA'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taCenter
                Transparent = True
                AnchorX = 33
              end
              object cxDBSpinEdit6: TcxDBLookupComboBox
                AlignWithMargins = True
                Left = 77
                Top = 4
                Hint = 'CST de sa'#237'da. Ser'#225' utilizado como valor padr'#227'o.'
                Align = alRight
                DataBinding.DataField = 'cst_ipi_sai'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                Properties.KeyFieldNames = 'id'
                Properties.ListColumns = <
                  item
                    FieldName = 'cst'
                  end>
                Properties.ListSource = DM.dsCST2
                ShowHint = True
                TabOrder = 0
                Width = 46
              end
            end
            object cxGroupBox10: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 21
              Width = 123
              Height = 29
              Margins.Right = 1
              Align = alTop
              UseDockManager = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 3
              object Label37: TcxLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Align = alLeft
                Caption = 'CST ENTR.'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taCenter
                Transparent = True
                AnchorX = 32
              end
              object cxDBSpinEdit7: TcxDBLookupComboBox
                AlignWithMargins = True
                Left = 73
                Top = 4
                Hint = 'CST de entrada. Ser'#225' utilizado como valor padr'#227'o.'
                Align = alRight
                DataBinding.DataField = 'cst_ipi_ent'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                Properties.KeyFieldNames = 'id'
                Properties.ListColumns = <
                  item
                    FieldName = 'cst'
                  end>
                Properties.ListSource = DM.dsCST2
                ShowHint = True
                TabOrder = 0
                Width = 46
              end
            end
            object cxButton2: TcxButton
              Left = 109
              Top = 2
              Width = 16
              Height = 16
              Hint = 'Abre a Tabela de CST'
              Caption = '>>'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              TabStop = False
              OnClick = btnCadCSTClick
            end
          end
          object gbNatRec: TcxGroupBox
            AlignWithMargins = True
            Left = 594
            Top = 3
            Margins.Left = 0
            Align = alRight
            Alignment = alTopCenter
            Caption = 'EFD-NAT. DA RECEITA'
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Comic Sans MS'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            ExplicitLeft = 610
            ExplicitHeight = 160
            Height = 156
            Width = 127
            object cxLabel7: TcxLabel
              Left = 13
              Top = 36
              Caption = 'TABELA'
              FocusControl = cmbTabela
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object cxButton1: TcxButton
              Left = 95
              Top = 51
              Width = 23
              Height = 23
              Hint = 'Abre as Tabelas da EFD'
              Caption = '>>'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              TabStop = False
              OnClick = cxButton1Click
            end
            object cxLabel8: TcxLabel
              Left = 13
              Top = 84
              Caption = 'C'#211'DIGO'
              FocusControl = cmbCod_receita
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object cmbTabela: TcxDBLookupComboBox
              Left = 13
              Top = 52
              Hint = 'Iforme a tabela de naturezas de receitas aplicada ao produto'
              DataBinding.DataField = 'sped_tabela'
              DataBinding.DataSource = DS1
              Enabled = False
              ParentFont = False
              ParentShowHint = False
              Properties.KeyFieldNames = 'tabela'
              Properties.ListColumns = <
                item
                  FieldName = 'tabela'
                end>
              Properties.ListSource = DM.dsSped_cst_tabela
              ShowHint = True
              TabOrder = 1
              Width = 80
            end
            object cmbCod_receita: TcxDBLookupComboBox
              Left = 13
              Top = 100
              Hint = 'Informe o c'#243'digo relativo a tabela selecionada'
              DataBinding.DataField = 'cod_receita'
              DataBinding.DataSource = DS1
              Enabled = False
              ParentFont = False
              ParentShowHint = False
              Properties.KeyFieldNames = 'cod'
              Properties.ListColumns = <
                item
                  FieldName = 'cod'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = DSSpedTabela
              Properties.OnChange = cmbCod_receitaPropertiesChange
              ShowHint = True
              TabOrder = 3
              Width = 105
            end
          end
          object cxPageControl1: TcxPageControl
            Left = 0
            Top = 0
            Width = 186
            Height = 162
            Align = alLeft
            TabOrder = 4
            Properties.ActivePage = cxTabSheet1
            Properties.CustomButtons.Buttons = <>
            ExplicitHeight = 166
            ClientRectBottom = 158
            ClientRectLeft = 4
            ClientRectRight = 182
            ClientRectTop = 26
            object cxTabSheet1: TcxTabSheet
              Caption = 'ICMS/ISS'
              ImageIndex = 0
              ExplicitLeft = 0
              ExplicitWidth = 186
              ExplicitHeight = 140
              object cxLabel9: TcxLabel
                Left = 3
                Top = -2
                Caption = 'ORIGEM'
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object cxDBSpinEdit9: TcxDBSpinEdit
                Left = 3
                Top = 17
                Hint = 
                  '0 - Nacional '#13#10'1 - Estrang. Import. Direta'#13#10'2 - Estrang. Adquir.' +
                  ' Brasil'#13#10'3 - Nacional Cont. Import. Superior 40%'#13#10'4 - Nacional P' +
                  'rocessos B'#225'sicos'#13#10'5 - Nacional Cont. Import. Inf. ou Igual 40%'#13#10 +
                  '6 - Estrang. Import. Direta Sem Similar'#13#10'7 - Estrang. Adquir. Br' +
                  'asil Sem Similar'#13#10'8 - Nacional Cont. Importa'#231'ao Sup. 70%'
                DataBinding.DataField = 'origem'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                Properties.AssignedValues.MinValue = True
                Properties.MaxValue = 8.000000000000000000
                ShowHint = True
                TabOrder = 1
                Width = 51
              end
              object cmbRedBC: TcxDBLookupComboBox
                Left = 85
                Top = 64
                DataBinding.DataField = 'info_complem'
                DataBinding.DataSource = DS1
                Enabled = False
                ParentFont = False
                Properties.KeyFieldNames = 'id'
                Properties.ListColumns = <
                  item
                    FieldName = 'icms_pc'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsRedBC
                TabOrder = 6
                Width = 80
              end
              object cmbCst: TcxDBLookupComboBox
                Left = 3
                Top = 63
                Hint = 'Para venda use 00, 40, 41 ou 60'
                DataBinding.DataField = 'cst'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                Properties.KeyFieldNames = 'id'
                Properties.ListColumns = <
                  item
                    FieldName = 'cst'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListOptions.SyncMode = True
                Properties.ListSource = DM.dsCST
                Properties.OnChange = cmbCstPropertiesChange
                ShowHint = True
                TabOrder = 5
                Width = 62
              end
              object btnCadCST: TcxButton
                Left = 49
                Top = 45
                Width = 16
                Height = 16
                Hint = 'Abre a Tabela de CST'
                Caption = '>>'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                TabStop = False
                OnClick = btnCadCSTClick
              end
              object btnCadRedBC: TcxButton
                Left = 147
                Top = 45
                Width = 16
                Height = 16
                Hint = 'Abre o Tabela de Redu'#231#245'es de B.C.'
                Caption = '>>'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
                TabStop = False
                OnClick = btnCadRedBCClick
              end
              object cmbAliqICMS: TcxDBLookupComboBox
                Left = 4
                Top = 105
                DataBinding.DataField = 'aliq_icms'
                DataBinding.DataSource = DS1
                ParentFont = False
                Properties.KeyFieldNames = 'id'
                Properties.ListColumns = <
                  item
                    FieldName = 'nome'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListOptions.SyncMode = True
                Properties.ListSource = dsAliq
                TabOrder = 7
                Width = 169
              end
              object btnCadAliq: TcxButton
                Left = 157
                Top = 89
                Width = 16
                Height = 16
                Hint = 'Abre a Tabela de Al'#237'quotas de ICMS/ISS'
                Caption = '>>'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 12
                TabStop = False
                OnClick = btnCadAliqClick
              end
              object Label19: TcxLabel
                Left = 85
                Top = 48
                Caption = 'BC Red. a:'
                FocusControl = cmbRedBC
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label20: TcxLabel
                Left = 4
                Top = 47
                Caption = 'CST'
                FocusControl = cmbCst
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label18: TcxLabel
                Left = 4
                Top = 87
                Caption = 'AL'#205'QUOTA'
                FocusControl = cmbAliqICMS
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object cxLabel18: TcxLabel
                AlignWithMargins = True
                Left = 59
                Top = -2
                Caption = 'MOD. BASE DE CALC.'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taCenter
                Transparent = True
                AnchorX = 113
              end
              object cxDBImageComboBox2: TcxDBImageComboBox
                Left = 60
                Top = 16
                DataBinding.DataField = 'icms_mod_bc'
                DataBinding.DataSource = DS1
                ParentFont = False
                Properties.Items = <
                  item
                    Description = 'MVA (%)'
                    Value = 0
                  end
                  item
                    Description = 'Pauta'
                    Value = 1
                  end
                  item
                    Description = 'Pre'#231'o Tabel.'
                    ImageIndex = 0
                    Value = 2
                  end
                  item
                    Description = 'Valor da Oper.'
                    Value = 3
                  end>
                TabOrder = 2
                Width = 113
              end
              object cxButton5: TcxButton
                Left = 65
                Top = 63
                Width = 16
                Height = 21
                Hint = 'Seleciona a regra de tributa'#231#227'o para este produto.'
                Caption = 'R'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 13
                TabStop = False
                OnClick = cxButton5Click
              end
            end
            object cxTabSheet2: TcxTabSheet
              Caption = 'ICMS-ST'
              ImageIndex = 1
              ExplicitLeft = 0
              ExplicitWidth = 186
              ExplicitHeight = 140
              object cxDBImageComboBox1: TcxDBImageComboBox
                Left = 5
                Top = 16
                DataBinding.DataField = 'icms_st_mod_bc'
                DataBinding.DataSource = DS1
                ParentFont = False
                Properties.Items = <
                  item
                    Description = 'Pre'#231'o Tabelado ou M'#225'x. Suger.'
                    ImageIndex = 0
                    Value = 0
                  end
                  item
                    Description = 'Lista Negativa'
                    ImageIndex = 0
                    Value = 1
                  end
                  item
                    Description = 'Lista Positiva'
                    Value = 2
                  end
                  item
                    Description = 'ListaNeutra'
                    Value = 3
                  end
                  item
                    Description = 'Margem Vr. Agreg (%)'
                    Value = 4
                  end
                  item
                    Description = 'Pauta'
                    Value = 5
                  end>
                TabOrder = 1
                Width = 165
              end
              object cxLabel10: TcxLabel
                AlignWithMargins = True
                Left = 7
                Top = -1
                Caption = 'MODAL. BASE DE CALCULO'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taCenter
                Transparent = True
                AnchorX = 75
              end
              object cxDBCurrencyEdit2: TcxDBCurrencyEdit
                Left = 117
                Top = 109
                DataBinding.DataField = 'icms_st_p_red_bc'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                Properties.DecimalPlaces = 4
                Properties.DisplayFormat = '0.00##'
                ShowHint = True
                TabOrder = 13
                Width = 58
              end
              object cxLabel11: TcxLabel
                AlignWithMargins = True
                Left = 117
                Top = 91
                Caption = '% RED. BC'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taCenter
                Transparent = True
                AnchorX = 146
              end
              object cxDBCurrencyEdit3: TcxDBCurrencyEdit
                Left = 56
                Top = 109
                DataBinding.DataField = 'icms_st_picms'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                Properties.DecimalPlaces = 4
                Properties.DisplayFormat = '0.00##'
                ShowHint = True
                TabOrder = 5
                Width = 58
              end
              object cxLabel12: TcxLabel
                AlignWithMargins = True
                Left = 58
                Top = 91
                Caption = 'AL'#205'Q.'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taLeftJustify
                Transparent = True
              end
              object cxLabel13: TcxLabel
                AlignWithMargins = True
                Left = 3
                Top = 91
                Caption = '%MVA'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taLeftJustify
                Transparent = True
              end
              object cxDBCurrencyEdit4: TcxDBCurrencyEdit
                Left = 1
                Top = 109
                DataBinding.DataField = 'icms_st_pmva'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                Properties.DecimalPlaces = 4
                Properties.DisplayFormat = '0.00##'
                ShowHint = True
                TabOrder = 4
                Width = 52
              end
              object cxLabel14: TcxLabel
                AlignWithMargins = True
                Left = 3
                Top = 47
                Caption = 'TAB. (%)'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taLeftJustify
                Transparent = True
              end
              object cxDBCurrencyEdit5: TcxDBCurrencyEdit
                Left = 1
                Top = 65
                DataBinding.DataField = 'icms_st_ptabela'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                Properties.DecimalPlaces = 4
                Properties.DisplayFormat = '0.00##'
                ShowHint = True
                TabOrder = 2
                Width = 52
              end
              object cxLabel15: TcxLabel
                AlignWithMargins = True
                Left = 80
                Top = 47
                Caption = 'TAB. ($)'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taLeftJustify
                Transparent = True
              end
              object cxDBCurrencyEdit6: TcxDBCurrencyEdit
                Left = 78
                Top = 65
                DataBinding.DataField = 'icms_st_vtabela'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                Properties.DecimalPlaces = 4
                Properties.DisplayFormat = '0.00##'
                ShowHint = True
                TabOrder = 3
                Width = 72
              end
              object cxLabel16: TcxLabel
                AlignWithMargins = True
                Left = 56
                Top = 67
                Caption = 'ou'
                ParentColor = False
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taLeftJustify
                Transparent = True
              end
              object cxLabel17: TcxLabel
                AlignWithMargins = True
                Left = 152
                Top = 67
                Caption = 'ou'
                ParentColor = False
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taLeftJustify
                Transparent = True
              end
            end
          end
        end
        object TabMedic: TcxTabSheet
          Caption = 'MEDICAMENTO'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitWidth = 740
          ExplicitHeight = 166
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 8
            Top = 24
            DataBinding.DataField = 'medicam_apresentacao'
            DataBinding.DataSource = DS1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 311
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 8
            Top = 64
            DataBinding.DataField = 'medicam_principio_atv'
            DataBinding.DataSource = DS1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 311
          end
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 8
            Top = 104
            DataBinding.DataField = 'medicam_nomelab'
            DataBinding.DataSource = DS1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 311
          end
          object Panel7: TPanel
            Left = 345
            Top = 0
            Width = 379
            Height = 162
            Align = alRight
            TabOrder = 4
            ExplicitLeft = 361
            ExplicitHeight = 166
            object gppfp: TPanel
              AlignWithMargins = True
              Left = 235
              Top = 4
              Width = 140
              Height = 154
              Margins.Left = 1
              Align = alRight
              UseDockManager = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 2
              ExplicitHeight = 158
              object cxDBSpinEdit1: TcxDBSpinEdit
                Left = 1
                Top = 82
                Hint = 'Quantidade farmacot'#233'cnica da embalagem'
                DataBinding.DataField = 'medic_qtcaixa'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                Width = 133
              end
              object cxDBCalcEdit15: TcxDBCurrencyEdit
                Left = 1
                Top = 44
                Hint = 'Valor da unid. farmacot'#233'cnica'
                DataBinding.DataField = 'medicam_vrms'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                Properties.DecimalPlaces = 3
                Properties.DisplayFormat = 'R$ 0.00#'
                ShowHint = True
                TabOrder = 0
                Width = 133
              end
              object Label14: TcxLabel
                Left = 1
                Top = 28
                Caption = 'VLR UN. FARMA. M.S.'
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label35: TcxLabel
                Left = 1
                Top = 66
                Caption = 'QUANT/EMBALAGEM'
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label48: TcxLabel
                Left = 1
                Top = 1
                Align = alTop
                Caption = 'PROG. FARM. POPULAR'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taCenter
                Transparent = True
                AnchorX = 70
              end
              object btnCalcPMC: TcxButton
                AlignWithMargins = True
                Left = 2
                Top = 116
                Width = 136
                Height = 27
                Margins.Left = 1
                Margins.Top = 1
                Margins.Right = 1
                Margins.Bottom = 10
                Align = alBottom
                Caption = 'Calcular pelo PMC'
                ModalResult = 1
                TabOrder = 5
                Visible = False
                OnClick = btnCalcPMCClick
                ExplicitTop = 120
              end
            end
            object gpsngpc: TPanel
              AlignWithMargins = True
              Left = 110
              Top = 4
              Width = 124
              Height = 154
              Margins.Left = 1
              Margins.Right = 1
              Align = alLeft
              UseDockManager = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 1
              ExplicitHeight = 158
              object cxDBTextEdit1: TcxDBTextEdit
                Left = 2
                Top = 104
                DataBinding.DataField = 'medicam_registroms'
                DataBinding.DataSource = DS1
                ParentFont = False
                Properties.CharCase = ecUpperCase
                Properties.MaxLength = 13
                TabOrder = 1
                Width = 119
              end
              object cxDBTextEdit11: TcxDBComboBox
                Left = 2
                Top = 44
                DataBinding.DataField = 'medicam_portaria'
                DataBinding.DataSource = DS1
                ParentFont = False
                Properties.CharCase = ecUpperCase
                Properties.Items.Strings = (
                  'AM'
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
                  'D2')
                TabOrder = 0
                Width = 65
              end
              object Label33: TcxLabel
                Left = 2
                Top = 28
                Caption = 'DCB'
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label34: TcxLabel
                Left = 2
                Top = 88
                Caption = 'N'#186' REGISTRO M.S.'
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label47: TcxLabel
                Left = 1
                Top = 1
                Align = alTop
                Caption = 'SNGPC'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taCenter
                Transparent = True
                AnchorX = 62
              end
            end
            object gpatualiz: TPanel
              AlignWithMargins = True
              Left = 2
              Top = 4
              Width = 106
              Height = 154
              Margins.Left = 1
              Margins.Right = 1
              Align = alLeft
              UseDockManager = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 0
              ExplicitHeight = 158
              object cxDBCheckBox1: TcxDBCheckBox
                Left = 4
                Top = 36
                Hint = 
                  'Se desmarcado este medicamento n'#227'o ser'#225' atualizado pelo atualiza' +
                  'dor'
                Caption = 'PERMITIR'
                DataBinding.DataField = 'medic_atualizar_web'
                DataBinding.DataSource = DS1
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                ParentShowHint = False
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                ShowHint = True
                TabOrder = 0
              end
              object cxDBSpinEdit8: TcxDBSpinEdit
                Left = 3
                Top = 104
                Hint = 'Valor a dividir o PMC'
                DataBinding.DataField = 'medic_fracao'
                DataBinding.DataSource = DS1
                ParentFont = False
                ParentShowHint = False
                Properties.MaxValue = 999.000000000000000000
                Properties.MinValue = 1.000000000000000000
                ShowHint = True
                TabOrder = 1
                Width = 92
              end
              object Label36: TcxLabel
                Left = 3
                Top = 88
                Caption = 'FRA'#199#195'O'
                ParentColor = False
                ParentFont = False
                Transparent = True
              end
              object Label46: TcxLabel
                Left = 1
                Top = 1
                Align = alTop
                Caption = 'ATUALIZ. PRE'#199'O'
                ParentColor = False
                ParentFont = False
                Properties.Alignment.Horz = taCenter
                Transparent = True
                AnchorX = 53
              end
            end
          end
          object Label30: TcxLabel
            Left = 8
            Top = 8
            Caption = 'APRESENTA'#199#195'O'
            FocusControl = cxDBTextEdit8
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label31: TcxLabel
            Left = 8
            Top = 48
            Caption = 'PRINC'#205'PIO ATIVO'
            FocusControl = cxDBTextEdit9
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label32: TcxLabel
            Left = 8
            Top = 88
            Caption = 'LABORAT'#211'RIO'
            FocusControl = cxDBTextEdit10
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object cxLabel6: TcxLabel
            Left = 8
            Top = 135
            Caption = 'PMC'
            FocusControl = cxDBCurrencyEdit1
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object cxDBCurrencyEdit1: TcxDBCurrencyEdit
            Left = 34
            Top = 133
            DataBinding.DataField = 'medicam_pmc'
            DataBinding.DataSource = DS1
            ParentFont = False
            TabOrder = 3
            OnEnter = cxDBCalcEdit5Enter
            Width = 97
          end
        end
        object TabBalanca: TcxTabSheet
          Caption = 'INTEGRADO COM BALAN'#199'A'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object cxDBMemo1: TcxDBMemo
            Left = 5
            Top = 24
            DataBinding.DataField = 'receita'
            DataBinding.DataSource = DS1
            ParentFont = False
            TabOrder = 0
            Height = 136
            Width = 363
          end
          object cxDBMemo2: TcxDBMemo
            Left = 371
            Top = 24
            DataBinding.DataField = 'nutricional'
            DataBinding.DataSource = DS1
            ParentFont = False
            TabOrder = 1
            Height = 136
            Width = 352
          end
          object Label10: TcxLabel
            Left = 5
            Top = 8
            Caption = 'RECEITA'
            FocusControl = cxDBMemo1
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label40: TcxLabel
            Left = 371
            Top = 8
            Caption = 'INFORM. NUTRICIONAL'
            FocusControl = cxDBMemo2
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object lblcodbal: TcxDBLabel
            Left = 236
            Top = 1
            Hint = 'C'#243'digo que ser'#225' enviado a balan'#231'a'
            DataBinding.DataField = 'cod_interno'
            DataBinding.DataSource = DS1
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            Properties.Alignment.Horz = taCenter
            ShowHint = True
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Comic Sans MS'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Height = 15
            Width = 56
            AnchorX = 264
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 732
        Height = 163
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object EDID: TcxDBLabel
          Left = 3
          Top = 9
          DataBinding.DataField = 'id'
          DataBinding.DataSource = DS1
          ParentColor = False
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Height = 19
          Width = 44
          AnchorX = 25
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 3
          Top = 98
          DataBinding.DataField = 'nome'
          DataBinding.DataSource = DS1
          ParentFont = False
          Properties.CharCase = ecUpperCase
          TabOrder = 9
          Width = 575
        end
        object cmbSessao: TcxDBLookupComboBox
          Left = 50
          Top = 17
          DataBinding.DataField = 'sessao'
          DataBinding.DataSource = DS1
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'nome'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsSessao
          Properties.OnChange = cmbSessaoPropertiesChange
          TabOrder = 2
          Width = 371
        end
        object cmbUnidade: TcxDBLookupComboBox
          Left = 424
          Top = 17
          DataBinding.DataField = 'unidade'
          DataBinding.DataSource = DS1
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'nome'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsUnidade
          TabOrder = 3
          Width = 154
        end
        object cxDBCalcEdit1: TcxDBCurrencyEdit
          Left = 3
          Top = 140
          Hint = 'Valor do item na NF'
          DataBinding.DataField = 'vrcusto'
          DataBinding.DataSource = DS1
          ParentFont = False
          ParentShowHint = False
          Properties.Nullable = False
          ShowHint = True
          TabOrder = 10
          Width = 87
        end
        object cxDBCalcEdit2: TcxDBCurrencyEdit
          Left = 152
          Top = 140
          Hint = 'Valor de custo com agregados e impostos'
          DataBinding.DataField = 'vrcusto_real'
          DataBinding.DataSource = DS1
          ParentFont = False
          ParentShowHint = False
          Properties.Nullable = False
          ShowHint = True
          TabOrder = 12
          Width = 80
        end
        object cxDBCalcEdit3: TcxDBCurrencyEdit
          Left = 235
          Top = 140
          Hint = 'Valor Un. de venda a vista'
          DataBinding.DataField = 'vrvenda_vista'
          DataBinding.DataSource = DS1
          ParentFont = False
          ParentShowHint = False
          Properties.Nullable = False
          ShowHint = True
          TabOrder = 13
          OnEnter = cxDBCalcEdit3Enter
          Width = 104
        end
        object cxDBCalcEdit4: TcxDBCurrencyEdit
          Left = 342
          Top = 140
          Hint = 'Percentual sobre o valor a vista'
          DataBinding.DataField = 'pcvenda_pz'
          DataBinding.DataSource = DS1
          ParentFont = False
          ParentShowHint = False
          Properties.DisplayFormat = '0.00#'
          Properties.Nullable = False
          ShowHint = True
          TabOrder = 14
          Width = 47
        end
        object cxDBCalcEdit5: TcxDBCurrencyEdit
          Left = 392
          Top = 140
          Hint = 'Valor Unit'#225'rio a prazo.'
          DataBinding.DataField = 'vrvenda_prz'
          DataBinding.DataSource = DS1
          ParentFont = False
          Properties.Nullable = False
          TabOrder = 15
          OnEnter = cxDBCalcEdit5Enter
          Width = 84
        end
        object cxDBCalcEdit7: TcxDBCurrencyEdit
          Left = 93
          Top = 140
          Hint = 'Margem de lucro sobre o custo real'
          DataBinding.DataField = 'mg_lucro'
          DataBinding.DataSource = DS1
          ParentFont = False
          ParentShowHint = False
          Properties.DisplayFormat = '0.00#'
          Properties.Nullable = False
          ShowHint = True
          TabOrder = 11
          Width = 56
        end
        object cxDBCalcEdit8: TcxDBCurrencyEdit
          Left = 479
          Top = 140
          Hint = 
            'Quantidade m'#237'nima admiss'#237'vel em estoque (constar'#227'o no relat'#243'rio ' +
            'de produtos com baixo estoque)'
          DataBinding.DataField = 'qt_min'
          DataBinding.DataSource = DS1
          ParentFont = False
          ParentShowHint = False
          Properties.DisplayFormat = '0.00'
          Properties.Nullable = False
          ShowHint = True
          TabOrder = 16
          Width = 47
        end
        object cxDBCalcEdit9: TcxDBCurrencyEdit
          Left = 590
          Top = 140
          TabStop = False
          DataBinding.DataField = 'quant'
          DataBinding.DataSource = DM.DSVwQuant_Estoque
          ParentFont = False
          ParentShowHint = False
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '0.00#'
          Properties.Nullable = False
          Properties.ReadOnly = False
          ShowHint = True
          Style.Color = clMoneyGreen
          TabOrder = 34
          Width = 70
        end
        object cxDBCalcEdit11: TcxDBCurrencyEdit
          Left = 529
          Top = 140
          Hint = 
            'Quantidade informada na nota de compra(n'#227'o informe se a quantida' +
            'de mudar de fornecedor para fornecedor).'
          DataBinding.DataField = 'qt_caixa'
          DataBinding.DataSource = DS1
          ParentFont = False
          ParentShowHint = False
          Properties.DisplayFormat = '0.00'
          Properties.Nullable = False
          ShowHint = True
          TabOrder = 17
          Width = 58
        end
        object Panel2: TPanel
          Left = 587
          Top = -2
          Width = 144
          Height = 126
          TabOrder = 0
          object cbSusp: TcxDBCheckBox
            Left = 1
            Top = 1
            Hint = 
              'Se marcado, o produto estar'#225' indispon'#237'velpara consulta ou venda.' +
              ' (somete se aplica se o produto tiver seu estoque zerado)'
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            TabStop = False
            Align = alTop
            Caption = 'SUSPENSO'
            DataBinding.DataField = 'suspenso'
            DataBinding.DataSource = DS1
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            Properties.ImmediatePost = True
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            ShowHint = True
            TabOrder = 0
          end
          object cbPromo: TcxDBCheckBox
            Left = 1
            Top = 22
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            TabStop = False
            Align = alTop
            Caption = 'PROMO'#199#195'O'
            DataBinding.DataField = 'promocao'
            DataBinding.DataSource = DS1
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 1
          end
          object cdProdProp: TcxDBCheckBox
            Left = 1
            Top = 43
            Hint = 
              'Marque somente se o produto for manufaturado pela pr'#243'pria empres' +
              'a'
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            TabStop = False
            Align = alTop
            Caption = 'PRODU'#199#195'O PR'#211'PRIA'
            DataBinding.DataField = 'producao_propria'
            DataBinding.DataSource = DS1
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            Properties.ImmediatePost = True
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            ShowHint = True
            TabOrder = 2
          end
          object cxDBTextEdit7: TcxDBCheckBox
            Left = 1
            Top = 64
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            TabStop = False
            Align = alTop
            Caption = 'INCIDE PIS/COFINS'
            DataBinding.DataField = 'incide_pis_cofins'
            DataBinding.DataSource = DS1
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 3
            OnClick = cxDBTextEdit7Click
          end
          object cxDBCheckBox2: TcxDBCheckBox
            Left = 1
            Top = 85
            Hint = 'Se marcado, arredonda para cima o valor decimal nos c'#225'lculos.'
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            TabStop = False
            Align = alTop
            Caption = 'C'#193'LC. POR ARRED.'
            DataBinding.DataField = 'calculo_por_arredondamento'
            DataBinding.DataSource = DS1
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            Properties.ImmediatePost = True
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            ShowHint = True
            TabOrder = 4
          end
          object cbBalanca: TcxDBCheckBox
            Left = 1
            Top = 106
            Hint = 
              'Se marcado, o produto estar'#225' integrado com balan'#231'as computadoras' +
              '. A unidade de medida dever'#225' ser obrigatoriamente UN ou KG.'
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            TabStop = False
            Align = alTop
            Caption = 'INTEGR. BALAN'#199'A'
            DataBinding.DataField = 'balanca'
            DataBinding.DataSource = DS1
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            Properties.ImmediatePost = True
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            ShowHint = True
            TabOrder = 5
            OnClick = cbBalancaClick
          end
        end
        object edGTIN: TcxDBTextEdit
          Left = 273
          Top = 62
          Hint = 'C'#243'digo de barras ou interno do produto/servi'#231'o'
          DataBinding.DataField = 'cod_gtin'
          DataBinding.DataSource = DS1
          ParentFont = False
          ParentShowHint = False
          Properties.CharCase = ecUpperCase
          ShowHint = True
          TabOrder = 6
          OnExit = edGTINExit
          Width = 95
        end
        object edcodaux: TcxDBTextEdit
          Left = 371
          Top = 62
          Hint = 'C'#243'digo secund'#225'rio do produto ou servi'#231'o'
          DataBinding.DataField = 'cod_aux'
          DataBinding.DataSource = DS1
          ParentFont = False
          ParentShowHint = False
          Properties.CharCase = ecUpperCase
          ShowHint = True
          TabOrder = 7
          Width = 127
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 501
          Top = 62
          DataBinding.DataField = 'ncm'
          DataBinding.DataSource = DS1
          ParentFont = False
          Properties.MaxLength = 8
          TabOrder = 8
          Width = 76
        end
        object btnCadNCM: TcxButton
          Left = 560
          Top = 46
          Width = 18
          Height = 15
          Hint = 'Abre a Tabela de NCM'
          Caption = '>>'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          TabStop = False
          OnClick = btnCadNCMClick
        end
        object Label4: TcxLabel
          Left = 3
          Top = 82
          Caption = 'DESCRI'#199#195'O'
          FocusControl = cxDBTextEdit2
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label5: TcxLabel
          Left = 3
          Top = 124
          Caption = 'VLR CUSTO'
          FocusControl = cxDBCalcEdit1
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label6: TcxLabel
          Left = 152
          Top = 124
          Caption = 'VLR C. REAL'
          FocusControl = cxDBCalcEdit2
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label7: TcxLabel
          Left = 235
          Top = 124
          Caption = 'P'#199'O UN. A VISTA'
          FocusControl = cxDBCalcEdit3
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label8: TcxLabel
          Left = 342
          Top = 124
          Caption = '% A PRZ'
          FocusControl = cxDBCalcEdit4
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label9: TcxLabel
          Left = 392
          Top = 124
          Caption = 'P'#199'O UN. A PZ'
          FocusControl = cxDBCalcEdit5
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label11: TcxLabel
          Left = 93
          Top = 124
          Caption = '% MG LCR'
          FocusControl = cxDBCalcEdit7
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label12: TcxLabel
          Left = 479
          Top = 124
          Caption = 'QTD MIN'
          FocusControl = cxDBCalcEdit8
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label13: TcxLabel
          Left = 590
          Top = 124
          Caption = 'ESTOQUE'
          FocusControl = cxDBCalcEdit9
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label15: TcxLabel
          Left = 529
          Top = 124
          Caption = 'QT EMBAL.'
          FocusControl = cxDBCalcEdit11
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label16: TcxLabel
          Left = 50
          Top = 1
          Caption = 'SESS'#195'O'
          FocusControl = cmbSessao
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label17: TcxLabel
          Left = 424
          Top = 1
          Caption = 'UNIDADE DE MEDIDA'
          FocusControl = cmbUnidade
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label2: TcxLabel
          Left = 273
          Top = 46
          Caption = 'C'#211'DIGO GTIN'
          FocusControl = edGTIN
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label3: TcxLabel
          Left = 371
          Top = 46
          Caption = 'C'#211'DIGO AUX.'
          FocusControl = edcodaux
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label38: TcxLabel
          Left = 501
          Top = 46
          Caption = 'C'#211'D NCM'
          FocusControl = cxDBTextEdit3
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object cmbDestinacao: TcxDBComboBox
          Left = 3
          Top = 62
          DataBinding.DataField = 'destinacao'
          DataBinding.DataSource = DS1
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.Items.Strings = (
            '00 Mercadoria para Revenda'
            '01 Mat'#233'ria-Prima'
            '02 Embalagem'
            '03 Produto em Processo'
            '04 Produto Acabado'
            '05 Subproduto'
            '06 Produto Intermedi'#225'rio'
            '07 Material de Uso e Consumo'
            '08 Ativo Imobilizado'
            '09 Servi'#231'os'
            '10 Outros Insumos'
            '99 Outras')
          TabOrder = 5
          Width = 267
        end
        object Label39: TcxLabel
          Left = 0
          Top = 46
          Caption = 'DESTINACAO'
          FocusControl = cmbDestinacao
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object cxDBCurrencyEdit7: TcxDBCurrencyEdit
          Left = 667
          Top = 140
          Hint = 'Percentual sobre o valor a vista'
          DataBinding.DataField = 'vrcotacao'
          DataBinding.DataSource = DS1
          ParentFont = False
          ParentShowHint = False
          Properties.DisplayFormat = '0.00#'
          Properties.Nullable = False
          ShowHint = True
          TabOrder = 35
          Width = 56
        end
        object cxLabel19: TcxLabel
          Left = 667
          Top = 124
          Caption = '% COMIS.'
          FocusControl = cxDBCurrencyEdit7
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 736
      ExplicitHeight = 392
      inherited grd: TcxGrid
        Width = 732
        Height = 340
        ExplicitWidth = 740
        ExplicitHeight = 344
        inherited tbv: TcxGridDBTableView
          object tbvcod_gtin: TcxGridDBColumn
            DataBinding.FieldName = 'cod_gtin'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 96
            OnHeaderClick = tbvcod_gtinHeaderClick
          end
          object tbvnome: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 247
            OnHeaderClick = tbvcod_gtinHeaderClick
          end
          object tbvmedicam_principio_atv: TcxGridDBColumn
            Caption = 'PRINC'#205'PIO ATIVO'
            DataBinding.FieldName = 'medicam_principio_atv'
            Options.Editing = False
            Width = 127
            OnHeaderClick = tbvcod_gtinHeaderClick
          end
          object tbvncm: TcxGridDBColumn
            DataBinding.FieldName = 'ncm'
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object tbvvrcusto: TcxGridDBColumn
            DataBinding.FieldName = 'vrcusto_real'
            HeaderAlignmentHorz = taCenter
          end
          object tbvvrvenda_vista: TcxGridDBColumn
            DataBinding.FieldName = 'vrvenda_vista'
            HeaderAlignmentHorz = taCenter
            Width = 96
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 340
        Width = 732
        Height = 48
        ExplicitTop = 344
        ExplicitWidth = 736
        ExplicitHeight = 48
        object cbEditar: TcxCheckBox [0]
          Left = 604
          Top = 19
          Caption = 'Editar pela lista'
          TabOrder = 5
          OnClick = cbEditarClick
        end
        inherited edPesq: TcxTextEdit
          Properties.OnChange = edPesqPropertiesChange
        end
        inherited lblPesq: TcxLabel
          ParentColor = False
          Style.IsFontAssigned = True
        end
        object cmbOpPesq: TcxComboBox
          Left = 392
          Top = 21
          ParentFont = False
          Properties.Items.Strings = (
            'TODOS'
            'POR SESS'#195'O (1)'
            'SUSPENSOS (2)')
          TabOrder = 2
          Text = 'TODOS'
          OnClick = cmbOpPesqClick
          Width = 204
        end
        object cxLabel1: TcxLabel
          Left = 392
          Top = 6
          Caption = 'OP'#199#213'ES DE PESQUISA'
          ParentColor = False
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
        object cmbSessaoPesq: TcxComboBox
          Left = 599
          Top = 21
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnClick = cmbSessaoPesqClick
          Width = 132
        end
      end
    end
  end
  inherited Edit1: TEdit
    Width = 60
    ExplicitWidth = 60
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'tbvcod_gtin.Tag'
      'tbvnome.Tag')
    Left = 376
    Top = 408
  end
  inherited DS1: TDataSource
    DataSet = DM.QEstoque
    OnDataChange = DS1DataChange
    Left = 416
    Top = 408
  end
  inherited FR: TFormResizer
    Left = 504
    Top = 408
  end
  inherited EnterTab: TACBrEnterTab
    Left = 456
    Top = 408
  end
  inherited cxStyleRepository2: TcxStyleRepository
    Left = 224
    Top = 120
    PixelsPerInch = 96
  end
  object dsSessao: TDataSource
    AutoEdit = False
    DataSet = DM.QSessao
    OnStateChange = DS1StateChange
    Left = 174
    Top = 408
  end
  object dsUnidade: TDataSource
    AutoEdit = False
    DataSet = DM.QUnidade
    OnStateChange = DS1StateChange
    Left = 224
    Top = 408
  end
  object dsAliq: TDataSource
    AutoEdit = False
    DataSet = DM.QAliq
    OnStateChange = DS1StateChange
    Left = 280
    Top = 408
  end
  object dsRedBC: TDataSource
    AutoEdit = False
    OnStateChange = DS1StateChange
    Left = 328
    Top = 408
  end
  object dsCST: TDataSource
    AutoEdit = False
    OnStateChange = DS1StateChange
    Left = 128
    Top = 408
  end
  object DSSpedTabela: TDataSource
    DataSet = DM.QSped_Tabela
    Left = 354
    Top = 122
  end
end
