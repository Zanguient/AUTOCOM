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
          Styles.Header = cxStyle1
          object tbvid: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 39
          end
          object tbvcod_gtin: TcxGridDBColumn
            DataBinding.FieldName = 'cod_gtin'
            HeaderAlignmentHorz = taCenter
            Width = 103
            OnHeaderClick = tbvcod_gtinHeaderClick
          end
          object tbvnome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 227
            OnHeaderClick = tbvcod_gtinHeaderClick
          end
          object tbvvrvenda_vista: TcxGridDBColumn
            DataBinding.FieldName = 'vrvenda_vista'
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
          object tbvvrcusto_real: TcxGridDBColumn
            DataBinding.FieldName = 'vrcusto_real'
            HeaderAlignmentHorz = taCenter
          end
          object tbvquant: TcxGridDBColumn
            DataBinding.FieldName = 'quant'
            HeaderAlignmentHorz = taCenter
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
        end
        object cxDBLabel1: TcxDBLabel
          AlignWithMargins = True
          Left = 382
          Top = 19
          DataBinding.DataField = 'cod_cst'
          DataBinding.DataSource = DS1
          ParentFont = False
          Height = 19
          Width = 26
        end
        object cxDBLabel2: TcxDBLabel
          AlignWithMargins = True
          Left = 417
          Top = 19
          DataBinding.DataField = 'sigla_unid'
          DataBinding.DataSource = DS1
          ParentFont = False
          Height = 19
          Width = 29
        end
        object cxDBLabel3: TcxDBLabel
          AlignWithMargins = True
          Left = 449
          Top = 19
          DataBinding.DataField = 'ncm'
          DataBinding.DataSource = DS1
          ParentFont = False
          Height = 19
          Width = 69
        end
        object cxDBLabel4: TcxDBLabel
          AlignWithMargins = True
          Left = 524
          Top = 19
          DataBinding.DataField = 'vrvenda_prz'
          DataBinding.DataSource = DS1
          ParentFont = False
          Height = 19
          Width = 97
        end
      end
    end
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'tbvnome.Tag'
      'tbvcod_gtin.Tag')
  end
  inherited DS1: TDataSource
    DataSet = DM.QEstoque
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
  object cxStyleRepository1: TcxStyleRepository
    Scalable = True
    Left = 296
    Top = 96
    PixelsPerInch = 96
  end
end
