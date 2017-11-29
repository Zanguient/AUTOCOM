inherited frmCadModeloNF: TfrmCadModeloNF
  Caption = 'AUTOCOM GERENCIAL - MODELOS N.F.'
  ClientWidth = 508
  ExplicitWidth = 514
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Width = 508
    ExplicitWidth = 508
    inherited pnlBtnClose: TPanel
      Left = 420
      ExplicitLeft = 420
    end
    inherited pnlBase: TPanel
      Width = 419
      ExplicitWidth = 419
      inherited pnlbasebotton: TPanel
        Width = 372
        ExplicitWidth = 372
        inherited Bar1: TdxStatusBar
          Width = 370
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 508
    ExplicitWidth = 508
    ClientRectRight = 505
    inherited TabCad: TcxTabSheet
      ExplicitWidth = 500
      inherited dbNav: TcxDBNavigator
        Width = 496
        ExplicitWidth = 490
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 501
      ExplicitHeight = 290
      inherited grd: TcxGrid
        Width = 500
        Height = 221
        ExplicitWidth = 576
        ExplicitHeight = 210
        inherited tbv: TcxGridDBTableView
          OptionsData.Editing = True
          OptionsSelection.CellSelect = True
          object tbvid: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 31
          end
          object tbvmodelo: TcxGridDBColumn
            DataBinding.FieldName = 'modelo'
            HeaderAlignmentHorz = taCenter
            Width = 56
          end
          object tbvnome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 305
          end
          object tbvcom_itens: TcxGridDBColumn
            DataBinding.FieldName = 'com_itens'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 72
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 221
        Width = 500
        Visible = False
        ExplicitTop = 221
        ExplicitWidth = 501
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 267
        Width = 500
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
          Width = 498
          AnchorX = 250
        end
      end
    end
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'tbvnome.Tag'
      'tbvmodelo.Tag'
      'tbvid.Tag'
      'tbvcom_itens.Tag')
    Left = 80
    Top = 144
  end
  inherited DS1: TDataSource
    DataSet = DM.QModNF
    Left = 128
    Top = 144
  end
  inherited FR: TFormResizer
    Left = 168
    Top = 144
  end
  inherited EnterTab: TACBrEnterTab
    Left = 216
    Top = 144
  end
end
