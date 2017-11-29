inherited frmPesqProd: TfrmPesqProd
  Caption = 'CADASTRO DE PRODUTOS E SERVI'#199'OS'
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    inherited pnlBase: TPanel
      inherited pnlbasebotton: TPanel
        inherited Bar1: TdxStatusBar
          Panels = <
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              PanelStyle.Alignment = taCenter
              Text = 'INATIVO'
              Width = 150
            end
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              PanelStyle.Alignment = taCenter
              Text = 'Tecle ENTER para aceitar a pesquisa ou ESC para recusar.'
            end>
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    inherited TabCad: TcxTabSheet
      TabVisible = False
      ExplicitTop = 26
      ExplicitWidth = 640
      ExplicitHeight = 294
    end
    inherited TabPesq: TcxTabSheet
      inherited grd: TcxGrid
        inherited tbv: TcxGridDBTableView
          object tbvColumn1: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 38
            OnHeaderClick = tbvColumn1HeaderClick
          end
          object tbvColumn5: TcxGridDBColumn
            Caption = 'C'#211'D. GTIN'
            DataBinding.FieldName = 'cod_gtin'
            HeaderAlignmentHorz = taCenter
            Width = 88
            OnHeaderClick = tbvColumn1HeaderClick
          end
          object tbvColumn2: TcxGridDBColumn
            Tag = 1
            Caption = 'DESCRI'#199#195'O'
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 308
            OnHeaderClick = tbvColumn1HeaderClick
          end
          object tbvColumn3: TcxGridDBColumn
            Caption = 'VR. CUSTO'
            DataBinding.FieldName = 'vrcusto'
            HeaderAlignmentHorz = taCenter
            Width = 78
          end
          object tbvColumn4: TcxGridDBColumn
            Caption = 'VR. UNIT.'
            DataBinding.FieldName = 'vrvenda_vista'
            HeaderAlignmentHorz = taCenter
            Width = 82
          end
        end
      end
      inherited pnlPesq: TPanel
        inherited edPesq: TcxTextEdit
          Properties.OnChange = edPesqPropertiesChange
        end
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
        object cxLabel1: TcxLabel
          Left = 382
          Top = 0
          Caption = 'CST'
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
        object cxLabel2: TcxLabel
          Left = 417
          Top = 0
          Caption = 'UN.'
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
        object cxLabel3: TcxLabel
          Left = 450
          Top = 0
          Caption = 'NCM'
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
        object cxLabel4: TcxLabel
          Left = 524
          Top = 0
          Caption = 'VR. A PRAZO'
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
          Visible = False
        end
        object cxDBLabel1: TcxDBLabel
          AlignWithMargins = True
          Left = 382
          Top = 19
          DataBinding.DataField = 'cod_cst'
          DataBinding.DataSource = DS1
          Height = 19
          Width = 26
        end
        object cxDBLabel2: TcxDBLabel
          AlignWithMargins = True
          Left = 417
          Top = 19
          DataBinding.DataField = 'sigla_unid'
          DataBinding.DataSource = DS1
          Height = 19
          Width = 29
        end
        object cxDBLabel3: TcxDBLabel
          AlignWithMargins = True
          Left = 449
          Top = 19
          DataBinding.DataField = 'ncm'
          DataBinding.DataSource = DS1
          Height = 19
          Width = 69
        end
        object cxDBLabel4: TcxDBLabel
          AlignWithMargins = True
          Left = 524
          Top = 19
          DataBinding.DataField = 'vrvenda_prz'
          DataBinding.DataSource = DS1
          Visible = False
          Height = 19
          Width = 97
        end
      end
    end
  end
  inherited DS1: TDataSource
    DataSet = DM.QvwEstoque
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
