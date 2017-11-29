inherited frmCadUnid: TfrmCadUnid
  Caption = 'AUTOCOM GERENCIAL - CADASTRO DE UNIDADES'
  ClientWidth = 385
  ExplicitWidth = 391
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Width = 385
    ExplicitWidth = 385
    inherited pnlBtnClose: TPanel
      Left = 297
      ExplicitLeft = 297
    end
    inherited pnlBase: TPanel
      Width = 296
      ExplicitWidth = 296
      inherited pnlbasebotton: TPanel
        Width = 249
        ExplicitWidth = 249
        inherited Bar1: TdxStatusBar
          Width = 247
          ExplicitWidth = 247
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 385
    ExplicitWidth = 385
    ClientRectRight = 381
    inherited TabCad: TcxTabSheet
      ExplicitWidth = 377
      inherited dbNav: TcxDBNavigator
        Width = 370
        ExplicitWidth = 370
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 377
      inherited grd: TcxGrid
        Width = 377
        ExplicitWidth = 377
        inherited tbv: TcxGridDBTableView
          OptionsData.Editing = True
          OptionsSelection.CellSelect = True
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 24
          end
          object tbvunidade: TcxGridDBColumn
            DataBinding.FieldName = 'unidade'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 3
            HeaderAlignmentHorz = taCenter
            Width = 40
          end
          object tbvnome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 221
          end
          object tbvfracionavel: TcxGridDBColumn
            DataBinding.FieldName = 'fracionavel'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 52
          end
        end
      end
      inherited pnlPesq: TPanel
        Width = 377
        Visible = False
        ExplicitWidth = 377
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'tbvfracionavel.Tag'
      'tbvid.Tag'
      'tbvnome.Tag'
      'tbvunidade.Tag')
  end
  inherited DS1: TDataSource
    DataSet = DM.QUnidade
  end
  inherited FR: TFormResizer
    Top = 184
  end
  inherited EnterTab: TACBrEnterTab
    Left = 152
    Top = 184
  end
end
