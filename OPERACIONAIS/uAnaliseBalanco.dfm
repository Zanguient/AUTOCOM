inherited frmCadAnaliseInvent: TfrmCadAnaliseInvent
  Caption = 'AUTOCOM GERENCIAL - AN'#193'LISE INVENT'#193'RIO'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgCad: TcxPageControl
    inherited TabCad: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 632
      ExplicitHeight = 290
    end
    inherited TabPesq: TcxTabSheet
      inherited grd: TcxGrid
        inherited tbv: TcxGridDBTableView
          OptionsSelection.CellSelect = True
          OptionsView.ScrollBars = ssHorizontal
          object tbvsessao: TcxGridDBColumn
            Caption = 'SESS'#195'O'
            DataBinding.FieldName = 'sessao'
            Width = 81
          end
          object tbvproduto: TcxGridDBColumn
            DataBinding.FieldName = 'produto'
            Width = 57
          end
          object tbvcod_gtin: TcxGridDBColumn
            Caption = 'C'#211'D GTIN'
            DataBinding.FieldName = 'cod_gtin'
            Width = 108
          end
          object tbvnome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            Width = 150
          end
          object tbvncm: TcxGridDBColumn
            DataBinding.FieldName = 'ncm'
          end
          object tbvaliq_icms: TcxGridDBColumn
            Caption = 'ALIQ.'
            DataBinding.FieldName = 'aliq_icms'
          end
          object tbvcst_csosn: TcxGridDBColumn
            DataBinding.FieldName = 'cst_csosn'
          end
          object tbvunid: TcxGridDBColumn
            Caption = 'UN'
            DataBinding.FieldName = 'unid'
          end
          object tbvvr_un: TcxGridDBColumn
            Caption = 'VR.UNIT.'
            DataBinding.FieldName = 'vr_un'
          end
          object tbvqtd_entr: TcxGridDBColumn
            Caption = 'Q.ENTR'
            DataBinding.FieldName = 'qtd_entr'
          end
          object tbvqtd_sai: TcxGridDBColumn
            Caption = 'Q.SAI'
            DataBinding.FieldName = 'qtd_sai'
          end
          object tbvsaldo: TcxGridDBColumn
            Caption = 'SALDO'
            DataBinding.FieldName = 'saldo'
          end
          object tbvvr_estoque: TcxGridDBColumn
            Caption = 'VR.ESTOQUE'
            DataBinding.FieldName = 'vr_estoque'
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
      end
    end
  end
  inherited DS1: TDataSource
    AutoEdit = True
    DataSet = DM.QInventario
  end
  inherited FR: TFormResizer
    Left = 296
    Top = 160
  end
  inherited EnterTab: TACBrEnterTab
    Left = 264
    Top = 120
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
