inherited frmAtuIPBTax: TfrmAtuIPBTax
  Caption = 'Atualiza'#231#227'o das Tabelas IBPTax e NCM'
  ClientHeight = 153
  ExplicitWidth = 608
  ExplicitHeight = 181
  PixelsPerInch = 96
  TextHeight = 15
  object DBText1: TDBText [0]
    Left = 16
    Top = 36
    Width = 3
    Height = 15
    AutoSize = True
    Color = clWhite
    DataField = 'versao'
    DataSource = DataSource1
    ParentColor = False
    Transparent = False
  end
  object Label1: TLabel [1]
    Left = 16
    Top = 15
    Width = 35
    Height = 15
    Caption = 'Vers'#227'o'
  end
  object Label2: TLabel [2]
    Left = 92
    Top = 15
    Width = 31
    Height = 15
    Caption = 'Chave'
  end
  object DBText2: TDBText [3]
    Left = 87
    Top = 36
    Width = 3
    Height = 15
    AutoSize = True
    Color = clWhite
    DataField = 'chave'
    DataSource = DataSource1
    ParentColor = False
    Transparent = False
  end
  object DBText3: TDBText [4]
    Left = 168
    Top = 36
    Width = 3
    Height = 15
    AutoSize = True
    Color = clWhite
    DataField = 'dt_vigencia_ini'
    DataSource = DataSource1
    ParentColor = False
    Transparent = False
  end
  object Label3: TLabel [5]
    Left = 168
    Top = 15
    Width = 45
    Height = 15
    Caption = 'Vigencia'
  end
  object DBText4: TDBText [6]
    Left = 249
    Top = 36
    Width = 3
    Height = 15
    AutoSize = True
    Color = clWhite
    DataField = 'dt_vigencia_fim'
    DataSource = DataSource1
    ParentColor = False
    Transparent = False
  end
  object DBText5: TDBText [7]
    Left = 380
    Top = 36
    Width = 3
    Height = 15
    AutoSize = True
    Color = clWhite
    DataField = 'itens'
    DataSource = DataSource1
    ParentColor = False
    Transparent = False
  end
  object Label4: TLabel [8]
    Left = 384
    Top = 15
    Width = 27
    Height = 15
    Caption = 'Itens'
  end
  inherited TPA: TPanel
    Top = 111
    ExplicitTop = 111
    inherited pnlBase: TPanel
      object Label5: TLabel
        Left = 12
        Top = 11
        Width = 82
        Height = 15
        Caption = 'Vers'#227'o Anterior'
      end
      object btnAbrir: TcxButton
        AlignWithMargins = True
        Left = 392
        Top = 3
        Width = 112
        Height = 30
        Align = alRight
        Caption = 'ABRIR ARQUIVO'
        TabOrder = 0
        OnClick = btnAbrirClick
      end
    end
  end
  object Bar1: TProgressBar [11]
    Left = 16
    Top = 69
    Width = 573
    Height = 27
    TabOrder = 2
  end
  inherited ini: TFormStorage
    Left = 16
    Top = 320
  end
  inherited FR: TFormResizer
    Left = 56
    Top = 320
  end
  inherited EnterTab: TACBrEnterTab
    Left = 96
    Top = 320
  end
  object OD1: TOpenDialog
    Filter = 'Arquivos .csv|*.csv'
    Left = 157
    Top = 336
  end
  object T1: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 88
    Top = 168
    object T1versao: TStringField
      FieldName = 'versao'
    end
    object T1itens: TIntegerField
      FieldName = 'itens'
    end
    object T1dt_vigencia_ini: TDateField
      FieldName = 'dt_vigencia_ini'
    end
    object T1dt_vigencia_fim: TDateField
      FieldName = 'dt_vigencia_fim'
    end
    object T1chave: TStringField
      FieldName = 'chave'
    end
    object T1fonte: TStringField
      FieldName = 'fonte'
      Size = 50
    end
  end
  object T2: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 152
    Top = 172
    object T2ncm: TStringField
      FieldName = 'ncm'
      Size = 10
    end
    object T2ex: TStringField
      FieldName = 'ex'
      Size = 2
    end
    object T2tabela: TIntegerField
      FieldName = 'tabela'
    end
    object T2nome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object T2nacional: TCurrencyField
      FieldName = 'nacional'
      DisplayFormat = '0.00%'
      currency = False
    end
    object T2importado: TCurrencyField
      FieldName = 'importado'
      DisplayFormat = '0.00%'
      currency = False
    end
    object T2estadual: TCurrencyField
      FieldName = 'estadual'
      DisplayFormat = '0.00%'
      currency = False
    end
    object T2municipal: TCurrencyField
      FieldName = 'municipal'
      DisplayFormat = '0.00%'
      currency = False
    end
  end
  object DataSource1: TDataSource
    DataSet = T1
    Left = 96
    Top = 224
  end
  object DataSource2: TDataSource
    DataSet = T2
    Left = 148
    Top = 224
  end
end
