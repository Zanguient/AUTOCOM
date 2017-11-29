object DMVLink: TDMVLink
  OldCreateOrder = False
  Height = 177
  Width = 198
  object TVL: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 40
    Top = 24
    object TVLID: TIntegerField
      FieldName = 'ID'
    end
    object TVLNautor: TStringField
      FieldName = 'Nautor'
    end
    object TVLCodConv: TStringField
      FieldName = 'CodConv'
    end
    object TVLNomeConveniado: TStringField
      FieldName = 'NomeConveniado'
      Size = 50
    end
    object TVLcomprovante: TMemoField
      FieldName = 'comprovante'
      BlobType = ftMemo
    end
    object TVLNumECF: TIntegerField
      FieldName = 'NumECF'
    end
    object TVLCOO: TIntegerField
      FieldName = 'COO'
    end
    object TVLprocessado: TIntegerField
      FieldName = 'processado'
    end
  end
  object TVLItens: TFDMemTable
    BeforePost = TVLItensBeforePost
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 40
    Top = 80
    object TVLItensItem: TIntegerField
      FieldName = 'Item'
    end
    object TVLItensidProd: TIntegerField
      FieldName = 'idProd'
    end
    object TVLItensEAN: TStringField
      FieldName = 'EAN'
      Size = 14
    end
    object TVLItensQtd: TFloatField
      FieldName = 'Qtd'
    end
    object TVLItensvrVenda: TFloatField
      FieldName = 'vrVenda'
    end
    object TVLItensvrVista: TCurrencyField
      FieldName = 'vrVista'
    end
    object TVLItensvrReceber: TCurrencyField
      FieldName = 'vrReceber'
    end
    object TVLItensvrSubsidio: TCurrencyField
      FieldName = 'vrSubsidio'
    end
    object TVLItensvrReembolso: TCurrencyField
      FieldName = 'vrReembolso'
    end
    object TVLItenspcDescReposicao: TFloatField
      FieldName = 'pcDescReposicao'
    end
    object TVLItenspcComissao: TFloatField
      FieldName = 'pcComissao'
    end
    object TVLItensprocessado: TBooleanField
      FieldName = 'processado'
    end
    object TVLItensmaxQtd: TFloatField
      FieldName = 'maxQtd'
    end
  end
  object DSTVL: TDataSource
    DataSet = TVL
    Left = 128
    Top = 24
  end
  object DSTVLITENS: TDataSource
    DataSet = TVLItens
    Left = 128
    Top = 80
  end
end
