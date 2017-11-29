inherited frmEstoque_perda: TfrmEstoque_perda
  Caption = 'frmEstoque_perda'
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
    ExplicitWidth = 496
    ClientRectRight = 496
    inherited TabCad: TcxTabSheet
      TabVisible = False
      ExplicitWidth = 496
      inherited dbNav: TcxDBNavigator
        Width = 487
        ExplicitWidth = 487
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 496
      inherited grd: TcxGrid
        Width = 496
        Height = 204
        ExplicitWidth = 496
        ExplicitHeight = 204
        inherited tbv: TcxGridDBTableView
          object tbvcod_gtin: TcxGridDBColumn
            Caption = 'C'#211'DIGO'
            DataBinding.FieldName = 'cod_gtin'
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object tbvnome: TcxGridDBColumn
            Caption = 'DESCRI'#199#195'O'
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 234
          end
          object tbvqtd: TcxGridDBColumn
            Caption = 'QTD'
            DataBinding.FieldName = 'qtd'
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object tbvdata: TcxGridDBColumn
            Caption = 'DATA'
            DataBinding.FieldName = 'data'
            HeaderAlignmentHorz = taCenter
            Width = 67
          end
        end
      end
      inherited pnlPesq: TPanel
        Width = 496
        Visible = False
        ExplicitWidth = 496
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 204
        Width = 496
        Height = 44
        Align = alBottom
        TabOrder = 2
        object edcod: TcxTextEdit
          Left = 4
          Top = 17
          ParentFont = False
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          OnEnter = edPesqEnter
          OnExit = edPesqExit
          OnKeyDown = edPesqKeyDown
          Width = 202
        end
        object cxLabel1: TcxLabel
          Left = 5
          Top = 1
          Caption = 'C'#211'DIGO'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 212
          Top = 1
          Caption = 'QUANT.'
          ParentFont = False
          Style.Edges = []
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Transparent = True
        end
        object edqtd: TcxCurrencyEdit
          Left = 212
          Top = 16
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '0.00#'
          TabOrder = 2
          Width = 121
        end
        object btnCadNCM: TcxButton
          Left = 337
          Top = 17
          Width = 40
          Height = 22
          Hint = 'INCLUIR'
          Caption = '>>'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          TabStop = False
          OnClick = btnCadNCMClick
        end
        object btnDel: TcxButton
          Left = 378
          Top = 17
          Width = 40
          Height = 22
          Hint = 'EXCLUIR'
          Caption = '-'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          TabStop = False
          OnClick = btnDelClick
        end
      end
    end
  end
  inherited ini: TFormStorage
    Left = 48
    Top = 104
  end
  inherited DS1: TDataSource
    DataSet = DM.QEstoque_perda
    Left = 136
    Top = 104
  end
  inherited FR: TFormResizer
    Left = 304
    Top = 136
  end
  inherited EnterTab: TACBrEnterTab
    Left = 248
    Top = 112
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
