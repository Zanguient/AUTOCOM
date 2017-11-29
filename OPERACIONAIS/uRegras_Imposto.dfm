inherited frmRegras_Imposto: TfrmRegras_Imposto
  Caption = 'REGRAS DE TRIBUTA'#199#195'O'
  ClientHeight = 324
  ExplicitWidth = 320
  ExplicitHeight = 353
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 292
    ExplicitTop = 292
  end
  inherited pgCad: TcxPageControl
    Height = 292
    Properties.ActivePage = TabCad
    ExplicitHeight = 292
    ClientRectBottom = 288
    inherited TabCad: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 632
      ExplicitHeight = 262
      inherited dbNav: TcxDBNavigator
        Top = 236
        Width = 626
        ExplicitTop = 236
      end
      object Label20: TcxLabel
        Left = 124
        Top = 7
        Caption = 'CST'
        FocusControl = cmbCst
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object cmbCst: TcxDBLookupComboBox
        Left = 123
        Top = 23
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
        ShowHint = True
        TabOrder = 2
        Width = 62
      end
      object Label18: TcxLabel
        Left = 191
        Top = 5
        Caption = 'AL'#205'QUOTA'
        FocusControl = cmbAliqICMS
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object cmbAliqICMS: TcxDBLookupComboBox
        Left = 191
        Top = 23
        DataBinding.DataField = 'aliq'
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
        TabOrder = 4
        Width = 169
      end
      object cxDBTextEdit7: TcxDBCheckBox
        Left = 389
        Top = 23
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        TabStop = False
        Caption = 'INCIDE PIS/COFINS'
        DataBinding.DataField = 'icp'
        DataBinding.DataSource = DS1
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        TabOrder = 5
      end
      object gpipi: TcxGroupBox
        AlignWithMargins = True
        Left = 120
        Top = 67
        Margins.Left = 0
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
        TabOrder = 6
        Height = 140
        Width = 131
        object cxDBCalcEdit14: TcxDBCurrencyEdit
          Left = 74
          Top = 109
          DataBinding.DataField = 'aliq_ipi'
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
          object cmbcstipisai: TcxDBLookupComboBox
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
          object cmbcstipient: TcxDBLookupComboBox
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
        end
      end
      object gppis: TcxGroupBox
        AlignWithMargins = True
        Left = 254
        Top = 67
        Margins.Left = 0
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
        TabOrder = 7
        Height = 140
        Width = 131
        object cxDBCalcEdit13: TcxDBCurrencyEdit
          Left = 75
          Top = 109
          DataBinding.DataField = 'aliq_pis'
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
          Width = 127
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
          object cmbcstpissai: TcxDBLookupComboBox
            AlignWithMargins = True
            Left = 77
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
          object cmbcstpisent: TcxDBLookupComboBox
            AlignWithMargins = True
            Left = 73
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
        end
      end
      object gpcofins: TcxGroupBox
        AlignWithMargins = True
        Left = 389
        Top = 67
        Margins.Left = 0
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
        TabOrder = 8
        Height = 140
        Width = 131
        object cxDBCalcEdit12: TcxDBCurrencyEdit
          Left = 76
          Top = 109
          DataBinding.DataField = 'aliq_cofins'
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
          Width = 127
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
          object cmbcstcofsai: TcxDBLookupComboBox
            AlignWithMargins = True
            Left = 77
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
          object cmbcstcofent: TcxDBLookupComboBox
            AlignWithMargins = True
            Left = 73
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
        end
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitHeight = 262
      inherited grd: TcxGrid
        Height = 216
        ExplicitHeight = 216
        inherited tbv: TcxGridDBTableView
          object tbvid: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
          end
          object tbvnome: TcxGridDBColumn
            Caption = 'CST-ALIQ-ICP-IPI-PIS-COFINS'
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 522
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 216
        Visible = False
        ExplicitTop = 216
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  inherited ini: TFormStorage
    Left = 8
  end
  inherited DS1: TDataSource
    DataSet = DM.QRegras_Imposto
    Left = 16
    Top = 136
  end
  inherited FR: TFormResizer
    Left = 80
    Top = 152
  end
  inherited EnterTab: TACBrEnterTab
    Left = 72
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
  object dsAliq: TDataSource
    AutoEdit = False
    DataSet = DM.QAliq
    OnStateChange = DS1StateChange
    Left = 8
    Top = 252
  end
  object dsRedBC: TDataSource
    AutoEdit = False
    OnStateChange = DS1StateChange
    Left = 64
    Top = 260
  end
end
