inherited frmCustoOper: TfrmCustoOper
  Caption = 'Tabela de Custo Operacional'
  ClientWidth = 406
  ExplicitWidth = 412
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Width = 406
    ExplicitWidth = 406
    inherited pnlBtnClose: TPanel
      Left = 318
      ExplicitLeft = 318
    end
    inherited pnlBase: TPanel
      Width = 317
      ExplicitWidth = 317
      inherited pnlbasebotton: TPanel
        Width = 270
        ExplicitWidth = 270
        inherited Bar1: TdxStatusBar
          Width = 268
          ExplicitWidth = 268
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Top = 19
    Width = 406
    Height = 301
    ExplicitTop = 19
    ExplicitWidth = 406
    ExplicitHeight = 301
    ClientRectBottom = 297
    ClientRectRight = 402
    inherited TabCad: TcxTabSheet
      ExplicitWidth = 406
      ExplicitHeight = 275
      inherited dbNav: TcxDBNavigator
        Top = 249
        Width = 397
        ExplicitTop = 249
        ExplicitWidth = 397
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 402
      ExplicitHeight = 275
      inherited grd: TcxGrid
        Width = 398
        Height = 185
        ExplicitWidth = 406
        ExplicitHeight = 189
        inherited tbv: TcxGridDBTableView
          OptionsData.Editing = True
          OptionsSelection.CellSelect = True
          object tbvid: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 46
          end
          object tbvdata: TcxGridDBColumn
            DataBinding.FieldName = 'data'
            HeaderAlignmentHorz = taCenter
          end
          object tbvreceita: TcxGridDBColumn
            DataBinding.FieldName = 'receita'
            HeaderAlignmentHorz = taCenter
          end
          object tbvdespesa: TcxGridDBColumn
            DataBinding.FieldName = 'despesa'
            HeaderAlignmentHorz = taCenter
          end
          object tbvpercent: TcxGridDBColumn
            Caption = 'CUSTO OPER.'
            DataBinding.FieldName = 'percent'
            HeaderAlignmentHorz = taCenter
            Width = 101
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 185
        Width = 398
        Visible = False
        ExplicitTop = 189
        ExplicitWidth = 402
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 248
        Width = 398
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
          Width = 396
          AnchorX = 199
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 231
        Width = 398
        Height = 17
        Align = alBottom
        TabOrder = 3
        OnClick = Panel4Click
        ExplicitTop = 235
        ExplicitWidth = 406
      end
    end
  end
  object Panel5: TPanel [3]
    Left = 0
    Top = 0
    Width = 406
    Height = 19
    Align = alTop
    Caption = 'N'#227'o incluir ICMS, Frete ou despesas inclusas em NF.'
    TabOrder = 3
  end
  inherited DS1: TDataSource
    DataSet = DM.QCusto_Oper
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
