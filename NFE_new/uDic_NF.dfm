inherited frmDic_NF: TfrmDic_NF
  Caption = 'DICION'#193'RIO'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgCad: TcxPageControl
    inherited TabCad: TcxTabSheet
      ExplicitTop = 26
      ExplicitWidth = 640
      ExplicitHeight = 294
      inherited dbNav: TcxDBNavigator
        Buttons.OnButtonClick = dbNavButtonsButtonClick
      end
      object mmDic: TcxDBMemo
        Left = 20
        Top = 16
        DataBinding.DataField = 'TEXTO'
        DataBinding.DataSource = DS1
        TabOrder = 1
        Height = 246
        Width = 605
      end
    end
    inherited TabPesq: TcxTabSheet
      inherited grd: TcxGrid
        inherited tbv: TcxGridDBTableView
          object tbvID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            HeaderAlignmentHorz = taCenter
            Width = 39
          end
          object tbvTEXTO: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = 'TEXTO'
            HeaderAlignmentHorz = taCenter
            Width = 560
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
    DataSet = DM.QDic_nf
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
