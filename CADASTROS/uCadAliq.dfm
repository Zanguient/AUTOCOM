inherited frmCadAliq: TfrmCadAliq
  Caption = 'AUTOCOM GERENCIAL - CADASTRO DE AL'#205'QUOTAS'
  ClientWidth = 496
  ExplicitWidth = 502
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Width = 496
    ExplicitWidth = 496
    inherited pnlBtnClose: TPanel
      Left = 408
      ExplicitLeft = 408
    end
    inherited pnlBase: TPanel
      Width = 407
      ExplicitWidth = 407
      inherited pnlbasebotton: TPanel
        Width = 360
        ExplicitWidth = 360
        inherited Bar1: TdxStatusBar
          Width = 358
          ExplicitWidth = 358
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 496
    Height = 297
    Properties.ActivePage = TabPesq
    ExplicitWidth = 496
    ExplicitHeight = 297
    ClientRectBottom = 293
    ClientRectRight = 492
    inherited TabCad: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 488
      ExplicitHeight = 267
      inherited dbNav: TcxDBNavigator
        Top = 241
        Width = 480
        ExplicitTop = 241
        ExplicitWidth = 480
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 488
      ExplicitHeight = 267
      inherited grd: TcxGrid
        Width = 488
        Height = 221
        ExplicitWidth = 488
        ExplicitHeight = 221
        inherited tbv: TcxGridDBTableView
          DataController.DataModeController.SmartRefresh = True
          OptionsData.Appending = True
          OptionsData.Deleting = True
          OptionsData.Editing = True
          OptionsData.Inserting = True
          OptionsSelection.CellSelect = True
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 36
          end
          object tbvnome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
          end
          object tbvcod_if: TcxGridDBColumn
            DataBinding.FieldName = 'cod_if'
            HeaderAlignmentHorz = taCenter
            Width = 67
          end
          object tbvicms: TcxGridDBColumn
            DataBinding.FieldName = 'icms'
            HeaderAlignmentHorz = taCenter
          end
          object tbvcod_prod: TcxGridDBColumn
            DataBinding.FieldName = 'cod_prod'
            HeaderAlignmentHorz = taCenter
          end
          object tbvusa: TcxGridDBColumn
            DataBinding.FieldName = 'usa'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 57
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 221
        Width = 488
        Visible = False
        ExplicitTop = 221
        ExplicitWidth = 488
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  object Panel4: TPanel [3]
    Left = 0
    Top = 297
    Width = 496
    Height = 23
    Align = alBottom
    Color = 12189695
    ParentBackground = False
    TabOrder = 3
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'F5-NOVO   F6-EXCLUIR   F7-ALTERAR   F8-GRAVAR   F9-CANCELAR'
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.WordWrap = True
      Width = 494
      AnchorX = 248
    end
  end
  inherited DS1: TDataSource
    DataSet = DM.QAliq
  end
  inherited FR: TFormResizer
    ResizeFonts = False
    Left = 328
    Top = 200
  end
  inherited EnterTab: TACBrEnterTab
    Left = 256
    Top = 128
  end
end
