inherited frmPesqCidade: TfrmPesqCidade
  Caption = ''
  ClientHeight = 353
  ClientWidth = 493
  ExplicitWidth = 499
  ExplicitHeight = 381
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 321
    Width = 493
    ExplicitTop = 321
    ExplicitWidth = 493
    inherited pnlBtnClose: TPanel
      Left = 405
      ExplicitLeft = 405
      inherited btnSair: TcxButton
        ModalResult = 1
      end
    end
    inherited pnlBase: TPanel
      Width = 404
      ExplicitWidth = 404
      inherited pnlbasebotton: TPanel
        Width = 357
        ExplicitWidth = 357
        inherited Bar1: TdxStatusBar
          Width = 355
          ExplicitWidth = 355
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 493
    Height = 321
    ExplicitWidth = 493
    ExplicitHeight = 321
    ClientRectBottom = 321
    ClientRectRight = 493
    inherited TabCad: TcxTabSheet
      ExplicitTop = 26
      ExplicitWidth = 493
      ExplicitHeight = 295
      inherited dbNav: TcxDBNavigator
        Top = 269
        Width = 487
        ExplicitTop = 269
        ExplicitWidth = 487
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitLeft = 0
      ExplicitWidth = 493
      ExplicitHeight = 295
      inherited grd: TcxGrid
        Width = 493
        Height = 249
        ExplicitWidth = 493
        ExplicitHeight = 249
        inherited tbv: TcxGridDBTableView
          object tbvcidade: TcxGridDBColumn
            Caption = 'CIDADE'
            DataBinding.FieldName = 'cidade'
            HeaderAlignmentHorz = taCenter
            Width = 370
          end
          object tbvcod: TcxGridDBColumn
            Caption = 'C'#211'D. IBGE'
            DataBinding.FieldName = 'cod'
            HeaderAlignmentHorz = taCenter
            Width = 77
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 249
        Width = 493
        ExplicitTop = 249
        ExplicitWidth = 493
        inherited edPesq: TcxTextEdit
          Properties.OnChange = edPesqPropertiesChange
        end
        inherited lblPesq: TcxLabel
          Left = 6
          Top = 7
          Anchors = [akTop]
          Style.IsFontAssigned = True
          ExplicitLeft = 6
          ExplicitTop = 7
        end
      end
    end
  end
  inherited ini: TFormStorage
    Left = 48
    Top = 136
  end
  inherited DS1: TDataSource
    DataSet = cdCidade
    Left = 88
    Top = 136
  end
  inherited FR: TFormResizer
    Top = 72
  end
  inherited EnterTab: TACBrEnterTab
    Left = 136
    Top = 64
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
  object cdCidade: TFDMemTable
    AfterOpen = cdCidadeAfterOpen
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 148
    Top = 138
    object cdCidadecidade: TStringField
      FieldName = 'cidade'
      Size = 100
    end
    object cdCidadecod: TStringField
      FieldName = 'cod'
      Size = 10
    end
  end
end
