inherited frmPesqCli: TfrmPesqCli
  Caption = 'CADASTRO DE CLIENTES'
  FormStyle = fsStayOnTop
  PixelsPerInch = 96
  TextHeight = 15
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
          Styles.Selection = nil
          object tbvid: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 29
            OnHeaderClick = tbvidHeaderClick
          end
          object tbvcnpj: TcxGridDBColumn
            Caption = 'CNPJ'
            DataBinding.FieldName = 'cnpj'
            HeaderAlignmentHorz = taCenter
            Width = 125
            OnHeaderClick = tbvidHeaderClick
          end
          object tbvrazaosocial: TcxGridDBColumn
            Caption = 'RAZ'#195'O SOCIAL/ NOME COMPLETO'
            DataBinding.FieldName = 'razaosocial'
            HeaderAlignmentHorz = taCenter
            Width = 241
            OnHeaderClick = tbvidHeaderClick
          end
          object tbvnome: TcxGridDBColumn
            Tag = 1
            Caption = 'NOME/NOME FANTASIA'
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 182
            OnHeaderClick = tbvidHeaderClick
          end
        end
      end
      inherited pnlPesq: TPanel
        inherited edPesq: TcxTextEdit
          Left = 5
          Top = 23
          Properties.OnChange = edPesqPropertiesChange
          ExplicitLeft = 5
          ExplicitTop = 23
        end
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  inherited DS1: TDataSource
    DataSet = DM_PDV.TCli
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
