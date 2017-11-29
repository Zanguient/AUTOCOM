inherited frmCad_Estoque_Inicial: TfrmCad_Estoque_Inicial
  Caption = 'ESTOQUE INICIAL'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgCad: TcxPageControl
    inherited TabCad: TcxTabSheet
      TabVisible = False
    end
    inherited TabPesq: TcxTabSheet
      inherited grd: TcxGrid
        inherited tbv: TcxGridDBTableView
          object tbvcod_gtin: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = 'cod_gtin'
            HeaderAlignmentHorz = taCenter
            Width = 101
            OnHeaderClick = tbvcod_gtinHeaderClick
          end
          object tbvnome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 431
            OnHeaderClick = tbvcod_gtinHeaderClick
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
        object edNewQtd: TcxCurrencyEdit
          Left = 416
          Top = 20
          Properties.DecimalPlaces = 4
          Properties.DisplayFormat = '0.00##'
          TabOrder = 1
          OnKeyDown = edNewQtdKeyDown
          Width = 121
        end
        object cxLabel1: TcxLabel
          Left = 417
          Top = 3
          Caption = 'Inserir Quantidade'
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
        object cbSomar: TcxCheckBox
          Left = 510
          Top = 1
          TabStop = False
          Caption = 'Somar'
          State = cbsChecked
          TabOrder = 5
          Transparent = True
          OnClick = cbSomarClick
          Width = 58
        end
        object btn_InserirQtd: TcxButton
          AlignWithMargins = True
          Left = 539
          Top = 21
          Width = 45
          Height = 20
          Hint = 'Restaura o tamanho das colunas na lista'
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = '>>'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btn_InserirQtdClick
        end
      end
    end
  end
  inherited DS1: TDataSource
    DataSet = DM.QEstoque_Inicial
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
