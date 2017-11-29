inherited frmCadCFOP: TfrmCadCFOP
  Caption = 'AUTOCOM GERENCIAL - CADASTRO DE CFOP'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgCad: TcxPageControl
    inherited TabCad: TcxTabSheet
      inherited dbNav: TcxDBNavigator
        Top = 268
        Width = 634
        ExplicitWidth = 628
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
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 87
        Top = 20
        DataBinding.DataField = 'cfop'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 2
        Width = 78
      end
      object cxDBTextEdit1: TcxDBMemo
        Left = 3
        Top = 70
        DataBinding.DataField = 'descricao'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 3
        Height = 71
        Width = 627
      end
      object cxDBTextEdit2: TcxDBMemo
        Left = 3
        Top = 166
        DataBinding.DataField = 'descr_completa'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 4
        Height = 83
        Width = 627
      end
      object Label2: TcxLabel
        Left = 87
        Top = 4
        Caption = 'CFOP'
        FocusControl = cxDBSpinEdit1
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 3
        Top = 54
        Caption = 'DESCRI'#199#195'O RESUMIDA'
        FocusControl = cxDBTextEdit1
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 3
        Top = 150
        Caption = 'DESCRI'#199#195'O COMPLETA'
        FocusControl = cxDBTextEdit2
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object cxLabel1: TcxLabel
        Left = 171
        Top = 4
        Caption = 'CST PIS/COFINS'
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 220
        Top = 22
        Caption = '--> Ser'#225' informado nas opera'#231#245'es de sa'#237'da que envolvam este CFOP'
        FocusControl = cxDBSpinEdit1
        ParentFont = False
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Transparent = True
      end
      object cxDBSpinEdit5: TcxDBLookupComboBox
        AlignWithMargins = True
        Left = 171
        Top = 20
        DataBinding.DataField = 'cst_pis'
        DataBinding.DataSource = DS1
        ParentFont = False
        ParentShowHint = False
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'cst'
          end>
        Properties.ListSource = DM.dsCSTPC
        ShowHint = False
        TabOrder = 10
        Width = 46
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitLeft = 0
      ExplicitWidth = 640
      ExplicitHeight = 294
      inherited grd: TcxGrid
        inherited tbv: TcxGridDBTableView
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 29
          end
          object tbvcfop: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = 'cfop'
            HeaderAlignmentHorz = taCenter
            Width = 34
            OnHeaderClick = tbvcfopHeaderClick
          end
          object tbvcst_pis: TcxGridDBColumn
            DataBinding.FieldName = 'cst_pis'
            HeaderAlignmentHorz = taCenter
            HeaderHint = 
              'Nas opera'#231#245'es de s'#225'ida, ser'#225' aplicado este CST, se diferente se ' +
              'zero.'
          end
          object tbvdescricao: TcxGridDBColumn
            DataBinding.FieldName = 'descricao'
            HeaderAlignmentHorz = taCenter
            Width = 212
            OnHeaderClick = tbvcfopHeaderClick
          end
          object tbvdescr_completa: TcxGridDBColumn
            DataBinding.FieldName = 'descr_completa'
            HeaderAlignmentHorz = taCenter
            Width = 178
            OnHeaderClick = tbvcfopHeaderClick
          end
        end
      end
      inherited pnlPesq: TPanel
        ExplicitTop = 248
        ExplicitWidth = 640
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
      'tbvcfop.Tag'
      'tbvdescr_completa.Tag'
      'tbvdescricao.Tag')
    Left = 280
    Top = 208
  end
  inherited DS1: TDataSource
    DataSet = DM.QCFOP
    Left = 344
    Top = 208
  end
  inherited FR: TFormResizer
    Left = 448
    Top = 208
  end
  inherited EnterTab: TACBrEnterTab
    Left = 400
    Top = 208
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
