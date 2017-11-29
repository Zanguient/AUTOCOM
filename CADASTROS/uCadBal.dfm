inherited frmCadBal: TfrmCadBal
  Caption = 'CADASTRO DE BALAN'#199'AS COMPUTADORAS'
  ClientHeight = 273
  ClientWidth = 480
  ExplicitWidth = 486
  ExplicitHeight = 301
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 241
    Width = 480
    inherited pnlBtnClose: TPanel
      Left = 392
    end
    inherited pnlBase: TPanel
      Width = 391
      inherited pnlbasebotton: TPanel
        Width = 344
        inherited Bar1: TdxStatusBar
          Width = 342
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 480
    Height = 241
    Properties.ActivePage = TabCad
    ClientRectBottom = 241
    ClientRectRight = 480
    inherited TabCad: TcxTabSheet
      ExplicitTop = 26
      ExplicitWidth = 640
      ExplicitHeight = 294
      object Label1: TLabel [0]
        Left = 107
        Top = 40
        Width = 40
        Height = 15
        Caption = 'MARCA'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel [1]
        Left = 239
        Top = 40
        Width = 35
        Height = 15
        Caption = 'S'#201'RIE'
        FocusControl = cxDBTextEdit2
      end
      object Label3: TLabel [2]
        Left = 107
        Top = 88
        Width = 48
        Height = 15
        Caption = 'SESS'#195'O'
        FocusControl = cxDBTextEdit3
      end
      inherited dbNav: TcxDBNavigator
        Top = 189
        Width = 472
        TabOrder = 3
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 107
        Top = 56
        DataBinding.DataField = 'marca'
        DataBinding.DataSource = DS1
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 239
        Top = 56
        DataBinding.DataField = 'serie'
        DataBinding.DataSource = DS1
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit3: TcxDBLookupComboBox
        Left = 107
        Top = 104
        DataBinding.DataField = 'sessao'
        DataBinding.DataSource = DS1
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'nome'
          end>
        Properties.ListSource = DSSessao
        TabOrder = 2
        Width = 253
      end
    end
    inherited TabPesq: TcxTabSheet
      inherited grd: TcxGrid
        Width = 480
        Height = 169
        inherited tbv: TcxGridDBTableView
          object tbvid: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 46
          end
          object tbvmarca: TcxGridDBColumn
            Caption = 'MARCA'
            DataBinding.FieldName = 'marca'
            HeaderAlignmentHorz = taCenter
          end
          object tbvserie: TcxGridDBColumn
            Caption = 'S'#201'RIE'
            DataBinding.FieldName = 'serie'
            HeaderAlignmentHorz = taCenter
            Width = 99
          end
          object tbvsessao: TcxGridDBColumn
            Caption = 'SESS'#195'O'
            DataBinding.FieldName = 'sessao'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'id'
            Properties.ListColumns = <
              item
                FieldName = 'nome'
              end>
            Properties.ListSource = DSSessao
            HeaderAlignmentHorz = taCenter
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 169
        Width = 480
        Visible = False
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  inherited DS1: TDataSource
    DataSet = DM.QBalanca
    Left = 108
  end
  inherited cxStyleRepository2: TcxStyleRepository
    Left = 292
    Top = 208
    PixelsPerInch = 96
  end
  object DSSessao: TDataSource
    AutoEdit = False
    DataSet = DM.QSessao
    OnStateChange = DS1StateChange
    Left = 108
    Top = 248
  end
end
