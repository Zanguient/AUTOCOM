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
      ExplicitLeft = 3
      ExplicitTop = 28
      ExplicitWidth = 634
      ExplicitHeight = 289
      inherited dbNav: TcxDBNavigator
        Top = 263
        Width = 627
        ExplicitTop = 263
        ExplicitWidth = 627
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 28
      ExplicitWidth = 634
      ExplicitHeight = 289
      inherited grd: TcxGrid
        ExplicitWidth = 634
        ExplicitHeight = 243
        inherited tbv: TcxGridDBTableView
          object tbvColumn1: TcxGridDBColumn
            Caption = 'ID'
            HeaderAlignmentHorz = taCenter
            Width = 38
            OnHeaderClick = tbvColumn1HeaderClick
          end
          object tbvColumn5: TcxGridDBColumn
            Caption = 'C'#211'D. GTIN'
            HeaderAlignmentHorz = taCenter
            Width = 88
            OnHeaderClick = tbvColumn1HeaderClick
          end
          object tbvColumn2: TcxGridDBColumn
            Tag = 1
            Caption = 'DESCRI'#199#195'O'
            HeaderAlignmentHorz = taCenter
            Width = 308
            OnHeaderClick = tbvColumn1HeaderClick
          end
          object tbvColumn3: TcxGridDBColumn
            Caption = 'VR. CUSTO'
            HeaderAlignmentHorz = taCenter
            Width = 78
          end
          object tbvColumn4: TcxGridDBColumn
            Caption = 'VR. UNIT.'
            HeaderAlignmentHorz = taCenter
            Width = 82
          end
        end
      end
      inherited pnlPesq: TPanel
        ExplicitTop = 243
        ExplicitWidth = 634
        inherited edPesq: TcxTextEdit
          Top = 18
          Properties.OnChange = edPesqPropertiesChange
          ExplicitTop = 18
          ExplicitWidth = 329
          Width = 329
        end
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
        object cxLabel1: TcxLabel
          Left = 350
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
          Left = 396
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
          Left = 437
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
          Left = 510
          Top = 0
          Caption = 'IPPT'
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
        object cxDBLabel1: TcxDBLabel
          AlignWithMargins = True
          Left = 350
          Top = 14
          DataBinding.DataField = 'cod_cst'
          DataBinding.DataSource = DS1
          ParentFont = False
          Height = 28
          Width = 31
        end
        object cxDBLabel2: TcxDBLabel
          AlignWithMargins = True
          Left = 396
          Top = 14
          DataBinding.DataField = 'sigla_unid'
          DataBinding.DataSource = DS1
          ParentFont = False
          Height = 28
          Width = 35
        end
        object cxDBLabel3: TcxDBLabel
          AlignWithMargins = True
          Left = 436
          Top = 14
          DataBinding.DataField = 'ncm'
          DataBinding.DataSource = DS1
          ParentFont = False
          Height = 28
          Width = 70
        end
        object cxDBLabel4: TcxDBLabel
          AlignWithMargins = True
          Left = 510
          Top = 14
          DataBinding.DataField = 'producao_propria'
          DataBinding.DataSource = DS1
          ParentFont = False
          Height = 28
          Width = 26
        end
        object cxDBLabel5: TcxDBLabel
          AlignWithMargins = True
          Left = 548
          Top = 14
          DataBinding.DataField = 'calculo_por_arredondamento'
          DataBinding.DataSource = DS1
          ParentFont = False
          Height = 28
          Width = 26
        end
        object cxLabel5: TcxLabel
          Left = 547
          Top = 0
          Caption = 'IAT'
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
        object cxDBLabel6: TcxDBLabel
          AlignWithMargins = True
          Left = 577
          Top = 14
          DataBinding.DataField = 'aliq_ecf'
          DataBinding.DataSource = DS1
          ParentFont = False
          Height = 28
          Width = 45
        end
        object cxLabel6: TcxLabel
          Left = 576
          Top = 0
          Caption = 'ALIQ.'
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
      end
    end
  end
  inherited DS1: TDataSource
    DataSet = DM_PDV.TProd
  end
  inherited cxStyleRepository2: TcxStyleRepository
    Left = 284
    Top = 192
    PixelsPerInch = 96
  end
end
