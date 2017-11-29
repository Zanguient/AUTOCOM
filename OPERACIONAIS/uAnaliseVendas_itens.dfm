inherited frmAnaliseVendas_itens: TfrmAnaliseVendas_itens
  Caption = 'AUTOCOM GERENCIAL - ITENS DA VENDA'
  PixelsPerInch = 96
  TextHeight = 15
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
          object tbvid: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 43
          end
          object tbvnItem: TcxGridDBColumn
            Caption = 'ITEM'
            DataBinding.FieldName = 'nItem'
            HeaderAlignmentHorz = taCenter
            Width = 36
          end
          object tbvcEAN: TcxGridDBColumn
            Caption = 'C'#211'D. GTIN'
            DataBinding.FieldName = 'cEAN'
            HeaderAlignmentHorz = taCenter
            Width = 113
          end
          object tbvxProd: TcxGridDBColumn
            Caption = 'PRODUTO/SERVI'#199'O'
            DataBinding.FieldName = 'xProd'
            HeaderAlignmentHorz = taCenter
            Width = 157
          end
          object tbvuCom: TcxGridDBColumn
            Caption = 'UN'
            DataBinding.FieldName = 'uCom'
            HeaderAlignmentHorz = taCenter
            Width = 27
          end
          object tbvqCom: TcxGridDBColumn
            Caption = 'QTD'
            DataBinding.FieldName = 'qCom'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object tbvvUnCom: TcxGridDBColumn
            Caption = 'VR. UN.'
            DataBinding.FieldName = 'vUnCom'
            HeaderAlignmentHorz = taCenter
          end
          object tbvvProd: TcxGridDBColumn
            Caption = 'TOTAL'
            DataBinding.FieldName = 'vProd'
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
        end
      end
      inherited pnlPesq: TPanel
        Visible = False
        ExplicitTop = 243
        ExplicitWidth = 634
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  inherited DS1: TDataSource
    DataSet = frmAnaliseVendas.QVenda_Item
  end
end
