inherited frmPesqNCM: TfrmPesqNCM
  Caption = 'TABELA NBM/NCM'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgCad: TcxPageControl
    inherited TabPesq: TcxTabSheet
      inherited grd: TcxGrid
        LookAndFeel.SkinName = 'Coffee'
        inherited tbv: TcxGridDBTableView
          object tbvcod_nbm: TcxGridDBColumn
            DataBinding.FieldName = 'cod_nbm'
            HeaderAlignmentHorz = taCenter
            Width = 87
            OnHeaderClick = tbvcod_nbmHeaderClick
          end
          object tbvdescr_nbm: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = 'descr_nbm'
            HeaderAlignmentHorz = taCenter
            Width = 202
            OnHeaderClick = tbvcod_nbmHeaderClick
          end
          object tbvcod_ncm: TcxGridDBColumn
            DataBinding.FieldName = 'cod_ncm'
            HeaderAlignmentHorz = taCenter
            Width = 67
            OnHeaderClick = tbvcod_nbmHeaderClick
          end
          object tbvdescr_ncm: TcxGridDBColumn
            DataBinding.FieldName = 'descr_ncm'
            HeaderAlignmentHorz = taCenter
            Width = 249
            OnHeaderClick = tbvcod_nbmHeaderClick
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
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'tbvcod_nbm.Tag'
      'tbvcod_ncm.Tag'
      'tbvdescr_nbm.Tag'
      'tbvdescr_ncm.Tag')
  end
  inherited DS1: TDataSource
    DataSet = DM.QNCM
  end
  inherited FR: TFormResizer
    Left = 56
    Top = 128
  end
  inherited EnterTab: TACBrEnterTab
    Left = 184
    Top = 96
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
