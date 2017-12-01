inherited frmCadMovi: TfrmCadMovi
  Caption = 'frmCadMovi'
  ClientWidth = 517
  ExplicitWidth = 523
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Width = 517
    ExplicitWidth = 517
    inherited pnlBtnClose: TPanel
      Left = 429
      ExplicitLeft = 429
    end
    inherited pnlBase: TPanel
      Width = 428
      ExplicitWidth = 428
      inherited pnlbasebotton: TPanel
        Width = 381
        ExplicitWidth = 381
        inherited Bar1: TdxStatusBar
          Width = 379
          ExplicitWidth = 379
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 517
    ExplicitWidth = 517
    ClientRectRight = 513
    inherited TabCad: TcxTabSheet
      TabVisible = False
      ExplicitWidth = 517
      inherited dbNav: TcxDBNavigator
        Width = 507
        ExplicitWidth = 507
      end
    end
    inherited TabPesq: TcxTabSheet
      Caption = ''
      ExplicitWidth = 513
      inherited grd: TcxGrid
        Width = 509
        Height = 221
        ExplicitWidth = 517
        ExplicitHeight = 225
        inherited tbv: TcxGridDBTableView
          PopupMenu = pop1
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = True
          OptionsSelection.CellSelect = True
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 34
          end
          object tbvcod: TcxGridDBColumn
            DataBinding.FieldName = 'cod'
            HeaderAlignmentHorz = taCenter
            Width = 44
            OnHeaderClick = tbvcodHeaderClick
          end
          object tbvtipo: TcxGridDBColumn
            DataBinding.FieldName = 'tipo'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.CharCase = ecUpperCase
            Properties.Items.Strings = (
              'D'
              'C')
            HeaderAlignmentHorz = taCenter
            Width = 40
            OnHeaderClick = tbvcodHeaderClick
          end
          object tbvdescricao: TcxGridDBColumn
            DataBinding.FieldName = 'descricao'
            HeaderAlignmentHorz = taCenter
            OnHeaderClick = tbvcodHeaderClick
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 221
        Width = 509
        Visible = False
        ExplicitTop = 221
        ExplicitWidth = 513
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 267
        Width = 509
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
          ExplicitWidth = 386
          Width = 382
          AnchorX = 192
        end
        object cxLabel2: TcxLabel
          Left = 383
          Top = 1
          Cursor = crHandPoint
          Align = alRight
          Caption = 'Associar Plano de Contas'
          ParentFont = False
          OnClick = cxLabel2Click
          ExplicitLeft = 387
        end
      end
    end
  end
  inherited DS1: TDataSource
    DataSet = QMovim
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
  object QMovim: TFDQuery
    AfterInsert = QMovimAfterInsert
    AfterPost = QMovimAfterPost
    BeforeDelete = QMovimBeforeDelete
    SQL.Strings = (
      'select * from finan_banco_codigos')
    Left = 40
    Top = 140
    object QMovimid: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      DisplayFormat = '000'
    end
    object QMovimcod: TStringField
      Alignment = taCenter
      DisplayLabel = 'C'#211'D'
      FieldName = 'cod'
      Origin = 'cod'
      FixedChar = True
      Size = 3
    end
    object QMovimconta: TIntegerField
      FieldName = 'conta'
      Origin = 'conta'
    end
    object QMovimtipo: TStringField
      Alignment = taCenter
      DisplayLabel = 'TIPO'
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
    object QMovimdescricao: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
    object QMovimsistema: TStringField
      FieldName = 'sistema'
      Origin = 'sistema'
      FixedChar = True
      Size = 1
    end
  end
  object pop1: TPopupMenu
    Left = 304
    Top = 96
    object AssociarPlanodeContas1: TMenuItem
      Caption = 'Associar Plano de Contas'
      OnClick = AssociarPlanodeContas1Click
    end
    object ExibirPlanodeContas1: TMenuItem
      Caption = 'Exibir Plano de Contas'
      OnClick = ExibirPlanodeContas1Click
    end
  end
end
