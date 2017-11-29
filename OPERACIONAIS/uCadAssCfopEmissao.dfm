inherited frmCadAssCfopEmissao: TfrmCadAssCfopEmissao
  Caption = 'Assistente para sele'#231#227'o CFOP/CST em emiss'#227'o de NF'
  ClientHeight = 281
  ClientWidth = 373
  ExplicitWidth = 379
  ExplicitHeight = 309
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 249
    Width = 373
    ExplicitTop = 249
    ExplicitWidth = 373
    inherited pnlBtnClose: TPanel
      Left = 285
      ExplicitLeft = 285
    end
    inherited pnlBase: TPanel
      Width = 284
      ExplicitWidth = 284
      inherited pnlbasebotton: TPanel
        Width = 237
        ExplicitWidth = 237
        inherited Bar1: TdxStatusBar
          Width = 235
          ExplicitWidth = 235
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 373
    Height = 249
    Properties.ActivePage = TabCad
    ExplicitWidth = 373
    ExplicitHeight = 249
    ClientRectBottom = 245
    ClientRectRight = 369
    inherited TabCad: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 365
      ExplicitHeight = 219
      object Label1: TLabel [0]
        Left = 8
        Top = 16
        Width = 28
        Height = 15
        Caption = 'CFOP'
        FocusControl = edCFOP
      end
      object Label2: TLabel [1]
        Left = 75
        Top = 16
        Width = 22
        Height = 15
        Caption = 'CST'
      end
      inherited dbNav: TcxDBNavigator
        Top = 193
        Width = 359
        Buttons.Prior.Visible = True
        Buttons.Next.Visible = True
        TabOrder = 4
        ExplicitTop = 197
        ExplicitWidth = 366
      end
      object gbEnt: TcxGroupBox
        Left = 3
        Top = 65
        Caption = 'ENTRADA'
        TabOrder = 2
        Height = 112
        Width = 177
        object cxLabel17: TcxLabel
          Left = 11
          Top = 26
          Caption = 'IPI'
          ParentFont = False
          Transparent = True
        end
        object cxLabel18: TcxLabel
          Left = 62
          Top = 26
          Caption = 'PIS'
          ParentFont = False
          Transparent = True
        end
        object cxLabel19: TcxLabel
          Left = 113
          Top = 26
          Caption = 'COFINS'
          ParentFont = False
          Transparent = True
        end
        object cxDBSpinEdit14: TcxDBLookupComboBox
          Tag = 1
          Left = 62
          Top = 42
          DataBinding.DataField = 'cst_pis_ent'
          DataBinding.DataSource = DS1
          ParentFont = False
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'cst'
            end>
          Properties.ListSource = DM.dsCSTPC
          TabOrder = 4
          Width = 48
        end
        object cxDBSpinEdit15: TcxDBLookupComboBox
          Tag = 1
          Left = 11
          Top = 42
          DataBinding.DataField = 'cst_ipi_ent'
          DataBinding.DataSource = DS1
          ParentFont = False
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'cst'
            end>
          Properties.ListSource = DM.dsCST2
          TabOrder = 3
          Width = 48
        end
        object cxDBSpinEdit16: TcxDBLookupComboBox
          Tag = 1
          Left = 113
          Top = 42
          DataBinding.DataField = 'cst_cofins_ent'
          DataBinding.DataSource = DS1
          ParentFont = False
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'cst'
            end>
          Properties.ListSource = DM.dsCSTPC
          TabOrder = 5
          Width = 49
        end
      end
      object gbSai: TcxGroupBox
        Left = 186
        Top = 65
        Caption = 'SA'#205'DA'
        TabOrder = 3
        Height = 112
        Width = 175
        object cxLabel8: TcxLabel
          Left = 11
          Top = 26
          Caption = 'IPI'
          ParentFont = False
          Transparent = True
        end
        object cxDBSpinEdit7: TcxDBLookupComboBox
          Left = 11
          Top = 42
          DataBinding.DataField = 'cst_ipi_sai'
          DataBinding.DataSource = DS1
          ParentFont = False
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'cst'
            end>
          Properties.ListSource = DM.dsCST2
          TabOrder = 1
          Width = 48
        end
        object cxDBSpinEdit6: TcxDBLookupComboBox
          Left = 65
          Top = 42
          DataBinding.DataField = 'cst_pis_sai'
          DataBinding.DataSource = DS1
          ParentFont = False
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'cst'
            end>
          Properties.ListSource = DM.dsCSTPC
          TabOrder = 4
          Width = 48
        end
        object cxLabel9: TcxLabel
          Left = 62
          Top = 26
          Caption = 'PIS'
          ParentFont = False
          Transparent = True
        end
        object cxLabel10: TcxLabel
          Left = 113
          Top = 26
          Caption = 'COFINS'
          ParentFont = False
          Transparent = True
        end
        object cxDBSpinEdit8: TcxDBLookupComboBox
          Left = 113
          Top = 42
          DataBinding.DataField = 'cst_cofins_sai'
          DataBinding.DataSource = DS1
          ParentFont = False
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'cst'
            end>
          Properties.ListSource = DM.dsCSTPC
          TabOrder = 5
          Width = 49
        end
      end
      object cmbCst: TcxDBLookupComboBox
        Left = 74
        Top = 32
        DataBinding.DataField = 'cst'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.KeyFieldNames = 'acbr'
        Properties.ListColumns = <
          item
            FieldName = 'cst'
          end>
        Properties.ListSource = DM.dsCST
        TabOrder = 1
        OnEnter = cmbCstEnter
        Width = 56
      end
      object edCFOP: TcxDBTextEdit
        Left = 8
        Top = 32
        DataBinding.DataField = 'cfop'
        DataBinding.DataSource = DS1
        TabOrder = 0
        Width = 60
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 369
      ExplicitHeight = 223
      inherited grd: TcxGrid
        Width = 365
        Height = 173
        ExplicitWidth = 373
        ExplicitHeight = 177
        inherited tbv: TcxGridDBTableView
          object tbvcfop: TcxGridDBColumn
            DataBinding.FieldName = 'cfop'
            HeaderAlignmentHorz = taCenter
            Width = 42
          end
          object tbvcst: TcxGridDBColumn
            DataBinding.FieldName = 'cst'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'id'
            Properties.ListColumns = <
              item
                FieldName = 'cst'
              end>
            Properties.ListSource = DM.dsCST
            HeaderAlignmentHorz = taCenter
            Width = 34
          end
          object tbvcst_pis_sai: TcxGridDBColumn
            Caption = 'PIS SAI'
            DataBinding.FieldName = 'cst_pis_sai'
            HeaderAlignmentHorz = taCenter
            Width = 56
          end
          object tbvcst_ipi_sai: TcxGridDBColumn
            Caption = 'IPI SAI'
            DataBinding.FieldName = 'cst_ipi_sai'
            HeaderAlignmentHorz = taCenter
            Width = 51
          end
          object tbvcst_pis_ent: TcxGridDBColumn
            Caption = 'PIS ENT'
            DataBinding.FieldName = 'cst_pis_ent'
            HeaderAlignmentHorz = taCenter
            Width = 56
          end
          object tbvcst_ipi_ent: TcxGridDBColumn
            Caption = 'IPI ENT'
            DataBinding.FieldName = 'cst_ipi_ent'
            HeaderAlignmentHorz = taCenter
            Width = 56
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 173
        Width = 365
        Visible = False
        ExplicitTop = 177
        ExplicitWidth = 369
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  inherited ini: TFormStorage
    Left = 160
    Top = 48
  end
  inherited DS1: TDataSource
    DataSet = DM.QAssist_cfop_Emit
    Left = 216
    Top = 40
  end
  inherited FR: TFormResizer
    Left = 328
    Top = 56
  end
  inherited EnterTab: TACBrEnterTab
    Left = 272
    Top = 48
  end
  inherited cxStyleRepository2: TcxStyleRepository
    Left = 156
    Top = 36
    PixelsPerInch = 96
  end
end
