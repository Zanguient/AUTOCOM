inherited frmCadFPag: TfrmCadFPag
  Caption = 'AUTOCOM GERENCIAL - CADASTRO MEIOS DE PAGTO'
  ClientWidth = 452
  ExplicitWidth = 458
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Width = 452
    ExplicitWidth = 452
    inherited pnlBtnClose: TPanel
      Left = 364
      ExplicitLeft = 364
    end
    inherited pnlBase: TPanel
      Width = 363
      ExplicitWidth = 363
      inherited pnlbasebotton: TPanel
        Width = 316
        ExplicitWidth = 316
        inherited Bar1: TdxStatusBar
          Width = 314
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 452
    ExplicitWidth = 452
    ClientRectRight = 449
    inherited TabCad: TcxTabSheet
      ExplicitWidth = 444
      inherited dbNav: TcxDBNavigator
        Width = 440
        ExplicitWidth = 435
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 445
      ExplicitHeight = 290
      inherited grd: TcxGrid
        Width = 444
        Height = 221
        ExplicitWidth = 446
        ExplicitHeight = 210
        inherited tbv: TcxGridDBTableView
          OptionsData.Editing = True
          OptionsSelection.CellSelect = True
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 21
          end
          object tbvdescr: TcxGridDBColumn
            DataBinding.FieldName = 'descr'
            HeaderAlignmentHorz = taCenter
            Width = 175
          end
          object tbvaprazo: TcxGridDBColumn
            DataBinding.FieldName = 'aprazo'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 48
          end
          object tbvtipo: TcxGridDBColumn
            DataBinding.FieldName = 'tipo'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              'DES'
              'DIN'
              'CHQ'
              'TKT'
              'CRT'
              'FAT')
            HeaderAlignmentHorz = taCenter
            Width = 42
          end
          object tbvindice_tef: TcxGridDBColumn
            DataBinding.FieldName = 'indice_tef'
            HeaderAlignmentHorz = taCenter
            Width = 78
          end
          object tbvuso: TcxGridDBColumn
            Caption = 'USO'
            DataBinding.FieldName = 'uso'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              '-'
              'fp'
              'ep')
            HeaderAlignmentHorz = taCenter
            Width = 44
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 221
        Width = 444
        Visible = False
        ExplicitTop = 221
        ExplicitWidth = 445
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 267
        Width = 444
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
          Width = 442
          AnchorX = 222
        end
      end
    end
  end
  inherited DS1: TDataSource
    DataSet = DM.QFPag
  end
  inherited FR: TFormResizer
    Left = 192
    Top = 200
  end
  inherited EnterTab: TACBrEnterTab
    Left = 152
  end
end
