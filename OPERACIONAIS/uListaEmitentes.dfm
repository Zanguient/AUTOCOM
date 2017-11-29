inherited frmListaEmit: TfrmListaEmit
  Caption = 'AUTOCOM GERENCIAL - LISTAGEM DE EMITENTES'
  ClientWidth = 586
  ExplicitWidth = 592
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Width = 586
    ExplicitWidth = 586
    inherited pnlBtnClose: TPanel
      Left = 498
      ExplicitLeft = 498
    end
    inherited pnlBase: TPanel
      Width = 497
      ExplicitWidth = 497
      inherited pnlbasebotton: TPanel
        Width = 450
        ExplicitWidth = 450
        inherited Bar1: TdxStatusBar
          Width = 448
          ExplicitWidth = 448
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 586
    Properties.ActivePage = TabPesq
    ExplicitWidth = 586
    ClientRectRight = 586
    inherited TabCad: TcxTabSheet
      TabVisible = False
      ExplicitWidth = 586
      inherited dbNav: TcxDBNavigator
        Width = 577
        ExplicitWidth = 577
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 586
      inherited grd: TcxGrid
        Width = 586
        ExplicitWidth = 586
        inherited tbv: TcxGridDBTableView
          object tbvcnpj: TcxGridDBColumn
            Caption = 'CNPJ'
            DataBinding.FieldName = 'cnpj'
            HeaderAlignmentHorz = taCenter
            Width = 102
            OnHeaderClick = tbvcnpjHeaderClick
          end
          object tbvnome: TcxGridDBColumn
            Tag = 1
            Caption = 'NOME FANTASIA'
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 156
            OnHeaderClick = tbvcnpjHeaderClick
          end
          object tbvrazaosocial: TcxGridDBColumn
            Caption = 'RAZ'#195'O SOCIAL'
            DataBinding.FieldName = 'razaosocial'
            HeaderAlignmentHorz = taCenter
            Width = 163
            OnHeaderClick = tbvcnpjHeaderClick
          end
          object tbvcidade: TcxGridDBColumn
            Caption = 'MUNIC'#205'PIO'
            DataBinding.FieldName = 'cidade'
            HeaderAlignmentHorz = taCenter
            Width = 98
            OnHeaderClick = tbvcnpjHeaderClick
          end
          object tbvuf: TcxGridDBColumn
            Caption = 'UF'
            DataBinding.FieldName = 'uf'
            HeaderAlignmentHorz = taCenter
            Width = 26
          end
        end
      end
      inherited pnlPesq: TPanel
        Width = 586
        ExplicitWidth = 586
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
    DataSet = DM.QvwDest_nf
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
