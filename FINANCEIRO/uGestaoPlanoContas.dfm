inherited frmGestaoPlanoContas: TfrmGestaoPlanoContas
  Caption = 'frmGestaoPlanoContas'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgCad: TcxPageControl
    inherited TabCad: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 632
      ExplicitHeight = 290
      object Label1: TLabel [0]
        Left = 72
        Top = 48
        Width = 40
        Height = 15
        Caption = 'CONTA'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel [1]
        Left = 72
        Top = 99
        Width = 31
        Height = 15
        Caption = 'DATA'
        FocusControl = cxDBDateEdit1
      end
      object Label3: TLabel [2]
        Left = 199
        Top = 99
        Width = 49
        Height = 15
        Caption = 'DT PAGO'
        FocusControl = cxDBDateEdit2
      end
      object Label4: TLabel [3]
        Left = 326
        Top = 99
        Width = 74
        Height = 15
        Caption = 'DOCUMENTO'
        FocusControl = cxDBTextEdit2
      end
      object Label5: TLabel [4]
        Left = 72
        Top = 152
        Width = 67
        Height = 15
        Caption = 'DESCRI'#199#195'O'
        FocusControl = cxDBTextEdit3
      end
      object Label6: TLabel [5]
        Left = 453
        Top = 152
        Width = 37
        Height = 15
        Caption = 'VALOR'
        FocusControl = cxDBCalcEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 72
        Top = 64
        DataBinding.DataField = 'cod'
        DataBinding.DataSource = DS1
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 58
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 72
        Top = 115
        DataBinding.DataField = 'data'
        DataBinding.DataSource = DS1
        Properties.DateButtons = []
        TabOrder = 2
        Width = 121
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 199
        Top = 115
        DataBinding.DataField = 'dt_pg'
        DataBinding.DataSource = DS1
        Properties.DateButtons = []
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 326
        Top = 115
        DataBinding.DataField = 'documento'
        DataBinding.DataSource = DS1
        Properties.CharCase = ecUpperCase
        TabOrder = 4
        Width = 121
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 72
        Top = 168
        DataBinding.DataField = 'descricao'
        DataBinding.DataSource = DS1
        Properties.CharCase = ecUpperCase
        TabOrder = 5
        Width = 375
      end
      object cxDBCalcEdit1: TcxDBCurrencyEdit
        Left = 453
        Top = 168
        DataBinding.DataField = 'valor'
        DataBinding.DataSource = DS1
        TabOrder = 6
        Width = 121
      end
      object cxDBLabel1: TcxDBLabel
        Left = 182
        Top = 64
        DataBinding.DataField = 'descricao'
        DataBinding.DataSource = DS2
        Style.BorderStyle = ebsOffice11
        Height = 21
        Width = 392
      end
      object cxDBLabel2: TcxDBLabel
        Left = 158
        Top = 64
        DataBinding.DataField = 'tipo'
        DataBinding.DataSource = DS2
        Style.BorderStyle = ebsOffice11
        Height = 21
        Width = 18
      end
      object cxButton1: TcxButton
        Left = 134
        Top = 63
        Width = 23
        Height = 24
        Hint = 'Abre as Tabelas da EFD'
        Caption = '>>'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        TabStop = False
        OnClick = cxButton1Click
      end
    end
    inherited TabPesq: TcxTabSheet
      inherited grd: TcxGrid
        inherited tbv: TcxGridDBTableView
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 41
          end
          object tbvcod: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = 'cod'
            HeaderAlignmentHorz = taCenter
            Width = 54
            OnHeaderClick = tbvcodHeaderClick
          end
          object tbvseq: TcxGridDBColumn
            DataBinding.FieldName = 'seq'
            HeaderAlignmentHorz = taCenter
            Width = 44
          end
          object tbvdata: TcxGridDBColumn
            DataBinding.FieldName = 'data'
            HeaderAlignmentHorz = taCenter
            Width = 73
            OnHeaderClick = tbvcodHeaderClick
          end
          object tbvdt_pg: TcxGridDBColumn
            DataBinding.FieldName = 'dt_pg'
            HeaderAlignmentHorz = taCenter
            Width = 72
            OnHeaderClick = tbvcodHeaderClick
          end
          object tbvdocumento: TcxGridDBColumn
            DataBinding.FieldName = 'documento'
            HeaderAlignmentHorz = taCenter
            Width = 87
            OnHeaderClick = tbvcodHeaderClick
          end
          object tbvdescricao: TcxGridDBColumn
            DataBinding.FieldName = 'descricao'
            HeaderAlignmentHorz = taCenter
            Width = 165
            OnHeaderClick = tbvcodHeaderClick
          end
          object tbvvalor: TcxGridDBColumn
            DataBinding.FieldName = 'valor'
            HeaderAlignmentHorz = taCenter
            Width = 60
            OnHeaderClick = tbvcodHeaderClick
          end
        end
      end
      inherited pnlPesq: TPanel
        inherited edPesq: TcxTextEdit
          Properties.OnChange = edPesqPropertiesChange
        end
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  inherited ini: TFormStorage
    Left = 16
    Top = 248
  end
  inherited DS1: TDataSource
    DataSet = Q1
    Left = 16
    Top = 88
  end
  inherited FR: TFormResizer
    Left = 16
    Top = 200
  end
  inherited EnterTab: TACBrEnterTab
    Left = 16
    Top = 144
  end
  object Q1: TFDQuery
    AfterOpen = Q1AfterOpen
    AfterClose = Q1AfterClose
    BeforePost = Q1BeforePost
    Connection = DM.DB
    SQL.Strings = (
      'select * from finan_centro_custo_movi order by id desc limit 1')
    Left = 16
    Top = 36
    object Q1id: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      DisplayFormat = '0000'
    end
    object Q1cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CONTA'
      FieldName = 'cod'
      Origin = 'cod'
    end
    object Q1seq: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'SEQ'
      FieldName = 'seq'
      Origin = 'seq'
    end
    object Q1data: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DATA'
      FieldName = 'data'
      Origin = 'data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Q1dt_pg: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DT PAGO'
      FieldName = 'dt_pg'
      Origin = 'dt_pg'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Q1documento: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DOCUMENTO'
      FieldName = 'documento'
      Origin = 'documento'
    end
    object Q1descricao: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 150
    end
    object Q1valor: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'VALOR'
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object Q1id_movi: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_movi'
      Origin = 'id_movi'
    end
  end
  object Q2: TFDQuery
    MasterSource = DS1
    MasterFields = 'cod'
    Connection = DM.DB
    SQL.Strings = (
      'select * from finan_centro_custo where plano=:cod')
    Left = 592
    Top = 36
    ParamData = <
      item
        Name = 'COD'
        DataType = ftString
        ParamType = ptInput
        Size = 21
        Value = '1.3.1.2'
      end>
    object Q2id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object Q2tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
    object Q2plano: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'plano'
      Origin = 'plano'
    end
    object Q2nivel: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nivel'
      Origin = 'nivel'
    end
    object Q2conta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'conta'
      Origin = 'conta'
      Size = 30
    end
    object Q2descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object Q2abrev: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'abrev'
      Origin = 'abrev'
    end
  end
  object DS2: TDataSource
    AutoEdit = False
    DataSet = Q2
    OnStateChange = DS1StateChange
    Left = 592
    Top = 88
  end
end
