inherited frmCadCSOSN: TfrmCadCSOSN
  Caption = 'AUTOCOM GERENCIAL - CADASTRO DE CSOSN'
  ClientHeight = 240
  ClientWidth = 527
  ExplicitWidth = 543
  ExplicitHeight = 279
  PixelsPerInch = 96
  TextHeight = 13
  inherited TPA: TPanel
    Top = 198
    Width = 527
    ExplicitTop = 198
    ExplicitWidth = 527
    inherited Panel1: TPanel
      Left = 439
      ExplicitLeft = 439
    end
    inherited Panel2: TPanel
      Width = 438
      ExplicitWidth = 438
      inherited Bar1: TdxStatusBar
        Width = 438
        ExplicitWidth = 438
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 527
    Height = 198
    ExplicitWidth = 527
    ExplicitHeight = 198
    ClientRectBottom = 195
    ClientRectRight = 524
    inherited TabCad: TcxTabSheet
      object Label1: TLabel [0]
        Left = 8
        Top = 1
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = EDID
      end
      object Label2: TLabel [1]
        Left = 86
        Top = 3
        Width = 34
        Height = 13
        Caption = 'CSOSN'
        FocusControl = cxDBSpinEdit1
      end
      object Label3: TLabel [2]
        Left = 151
        Top = 2
        Width = 59
        Height = 13
        Caption = 'DESCRI'#199#195'O'
        FocusControl = cxDBTextEdit1
      end
      inherited dbNav: TcxDBNavigator
        Top = 143
        Width = 515
        ExplicitTop = 143
        ExplicitWidth = 512
      end
      object EDID: TcxDBLabel
        Left = 8
        Top = 17
        DataBinding.DataField = 'id'
        DataBinding.DataSource = DS1
        ParentColor = False
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Comic Sans MS'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Height = 19
        Width = 67
        AnchorX = 42
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 81
        Top = 18
        DataBinding.DataField = 'csosn'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 2
        Width = 64
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 151
        Top = 18
        DataBinding.DataField = 'nome'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        TabOrder = 3
        Width = 364
      end
      object cxDBMemo1: TcxDBMemo
        Left = 8
        Top = 43
        DataBinding.DataField = 'obs'
        DataBinding.DataSource = DS1
        ParentFont = False
        TabOrder = 4
        Height = 89
        Width = 507
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 521
      ExplicitHeight = 169
      inherited grd: TcxGrid
        Width = 521
        Height = 123
        ExplicitWidth = 521
        ExplicitHeight = 123
        inherited tbv: TcxGridDBTableView
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 27
          end
          object tbvcsosn: TcxGridDBColumn
            DataBinding.FieldName = 'csosn'
            HeaderAlignmentHorz = taCenter
            Width = 40
          end
          object tbvnome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            HeaderAlignmentHorz = taCenter
            Width = 424
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 123
        Width = 521
        Visible = False
        ExplicitTop = 123
        ExplicitWidth = 521
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  inherited ini: TFormStorage
    Left = 368
    Top = 0
  end
  inherited DS1: TDataSource
    DataSet = DM.QCSOSN
    Left = 336
    Top = 0
  end
  inherited FR: TFormResizer
    Left = 296
    Top = 0
  end
  inherited EnterTab: TACBrEnterTab
    Left = 256
    Top = 0
  end
end
