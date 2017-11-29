inherited frmCadSessao: TfrmCadSessao
  Caption = 'AUTOCOM GERENCIAL - CADASTRO DE SESS'#195'O'
  ClientHeight = 332
  ClientWidth = 399
  ExplicitWidth = 405
  ExplicitHeight = 360
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 300
    Width = 399
    ExplicitTop = 300
    ExplicitWidth = 399
    inherited pnlBtnClose: TPanel
      Left = 311
      ExplicitLeft = 311
    end
    inherited pnlBase: TPanel
      Width = 310
      ExplicitWidth = 310
      inherited pnlbasebotton: TPanel
        Width = 263
        ExplicitWidth = 263
        inherited Bar1: TdxStatusBar
          Width = 261
          ExplicitWidth = 261
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 399
    Height = 300
    ExplicitWidth = 399
    ExplicitHeight = 300
    ClientRectBottom = 300
    ClientRectRight = 399
    inherited TabCad: TcxTabSheet
      ExplicitWidth = 391
      ExplicitHeight = 270
      inherited dbNav: TcxDBNavigator
        Top = 244
        Width = 385
        ExplicitTop = 244
        ExplicitWidth = 385
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 399
      ExplicitHeight = 274
      inherited grd: TcxGrid
        Width = 399
        Height = 205
        ExplicitWidth = 399
        ExplicitHeight = 205
        inherited tbv: TcxGridDBTableView
          OptionsData.Editing = True
          OptionsSelection.CellSelect = True
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 28
          end
          object tbvnome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 153
          end
          object tbvbalanca: TcxGridDBColumn
            DataBinding.FieldName = 'balanca'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 61
          end
          object tbvusoint: TcxGridDBColumn
            DataBinding.FieldName = 'usoint'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 42
          end
          object tbvnatur_receita: TcxGridDBColumn
            DataBinding.FieldName = 'natur_receita'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 228
        Width = 399
        Visible = False
        ExplicitTop = 228
        ExplicitWidth = 399
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
          Visible = False
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 205
        Width = 399
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
          Width = 397
          AnchorX = 200
        end
      end
    end
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'tbvid.Tag'
      'tbvnome.Tag')
  end
  inherited DS1: TDataSource
    DataSet = DM.QSessao
  end
  inherited FR: TFormResizer
    Left = 168
    Top = 160
  end
  inherited EnterTab: TACBrEnterTab
    Left = 232
    Top = 152
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
