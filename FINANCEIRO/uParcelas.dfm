inherited frmParcelas: TfrmParcelas
  Caption = 'frmParcelas'
  ClientWidth = 326
  ExplicitWidth = 332
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Width = 326
    ExplicitWidth = 326
    inherited pnlBtnClose: TPanel
      Left = 238
      ExplicitLeft = 238
    end
    inherited pnlBase: TPanel
      Width = 237
      ExplicitWidth = 237
      inherited pnlbasebotton: TPanel
        Width = 190
        ExplicitWidth = 190
        inherited Bar1: TdxStatusBar
          Width = 188
          Panels = <
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              PanelStyle.Alignment = taCenter
              Text = 'INATIVO'
              Width = 150
            end
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              PanelStyle.Alignment = taCenter
              Visible = False
            end>
          ExplicitWidth = 188
        end
      end
      inherited btnReset: TcxButton
        Caption = 'Testar'
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 326
    Height = 288
    ExplicitWidth = 326
    ExplicitHeight = 288
    ClientRectBottom = 288
    ClientRectRight = 326
    inherited TabCad: TcxTabSheet
      TabVisible = False
      ExplicitTop = 26
      ExplicitWidth = 326
      ExplicitHeight = 262
      inherited dbNav: TcxDBNavigator
        Top = 236
        Width = 317
        ExplicitTop = 236
        ExplicitWidth = 317
      end
    end
    inherited TabPesq: TcxTabSheet
      Caption = ''
      ExplicitWidth = 326
      ExplicitHeight = 262
      inherited grd: TcxGrid
        Width = 326
        Height = 216
        ExplicitWidth = 326
        ExplicitHeight = 216
        inherited tbv: TcxGridDBTableView
          OptionsData.Editing = True
          OptionsData.Inserting = True
          OptionsSelection.CellSelect = True
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 25
          end
          object tbvplano: TcxGridDBColumn
            Caption = 'PLANO'
            DataBinding.FieldName = 'plano'
            HeaderAlignmentHorz = taCenter
            Width = 117
          end
          object tbvdias: TcxGridDBColumn
            DataBinding.FieldName = 'dias'
            HeaderAlignmentHorz = taCenter
            Width = 51
          end
          object tbvpc_juros: TcxGridDBColumn
            Caption = 'FATOR'
            DataBinding.FieldName = 'pc_juros'
            HeaderAlignmentHorz = taCenter
            Width = 92
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 216
        Width = 326
        Visible = False
        ExplicitTop = 216
        ExplicitWidth = 326
        inherited edPesq: TcxTextEdit
          ExplicitWidth = 200
          Width = 200
        end
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 288
    Width = 326
    Height = 32
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
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.WordWrap = True
      Width = 324
      AnchorX = 163
    end
    object cxLabel2: TcxLabel
      Left = 1
      Top = 16
      Align = alBottom
      Caption = 
        'Os dados da '#250'ltima parcela ser'#227'o usados nas parcelas subsequente' +
        's.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.WordWrap = True
      Width = 324
      AnchorX = 163
    end
  end
  inherited DS1: TDataSource
    DataSet = DM.QParcelas
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
