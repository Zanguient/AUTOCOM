inherited frmPesqNatOper: TfrmPesqNatOper
  ActiveControl = edPesq
  Caption = 'NATUREZA DA OPERA'#199#195'O'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgCad: TcxPageControl
    inherited TabCad: TcxTabSheet
      TabVisible = False
    end
    inherited TabPesq: TcxTabSheet
      inherited grd: TcxGrid
        inherited tbv: TcxGridDBTableView
          object tbvnome: TcxGridDBColumn
            Caption = 'DESCRI'#199#195'O DA NATUREZA DE OPERA'#199#195'O'
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 593
          end
        end
      end
      inherited pnlPesq: TPanel
        inherited edPesq: TcxTextEdit
          Properties.OnChange = edPesqPropertiesChange
          ExplicitWidth = 533
          Width = 533
        end
        inherited lblPesq: TcxLabel
          Caption = 'PESQUISAR POR DESCRI'#199#195'O'
          Style.IsFontAssigned = True
          ExplicitWidth = 136
        end
      end
    end
  end
  inherited DS1: TDataSource
    DataSet = DM.QNatOper
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
