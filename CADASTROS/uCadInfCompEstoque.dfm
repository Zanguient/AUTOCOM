inherited frmCadInfCompEstoque: TfrmCadInfCompEstoque
  Caption = 'REDU'#199#195'O DE BASE DA C'#193'LCULO E INFORM. COMPLEM.'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgCad: TcxPageControl
    inherited TabCad: TcxTabSheet
      TabVisible = False
    end
    inherited TabPesq: TcxTabSheet
      inherited grd: TcxGrid
        Height = 225
        ExplicitHeight = 225
        inherited tbv: TcxGridDBTableView
          OptionsData.Editing = True
          OptionsSelection.CellSelect = True
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
          end
          object tbvcst: TcxGridDBColumn
            DataBinding.FieldName = 'cst'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <>
            HeaderAlignmentHorz = taCenter
          end
          object tbvicms_pc: TcxGridDBColumn
            DataBinding.FieldName = 'icms_pc'
            HeaderAlignmentHorz = taCenter
          end
          object tbvreduzir: TcxGridDBColumn
            DataBinding.FieldName = 'reduzir'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 52
          end
          object tbvtexto: TcxGridDBColumn
            DataBinding.FieldName = 'texto'
            HeaderAlignmentHorz = taCenter
            Width = 320
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 225
        Visible = False
        ExplicitTop = 225
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 271
        Width = 640
        Height = 23
        Align = alBottom
        Color = 12189695
        ParentBackground = False
        TabOrder = 2
        object cxLabel1: TcxLabel
          Left = 1
          Top = 1
          Align = alClient
          Caption = 'F5-NOVO   F6-EXCLUIR   F7-ALTERAR   F8-GRAVAR   F9-CANCELAR'
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.WordWrap = True
          Width = 638
          AnchorX = 320
        end
      end
    end
  end
  inherited DS1: TDataSource
    DataSet = DM.QInfo_compl
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
