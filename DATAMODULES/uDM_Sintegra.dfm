object DM_Sintegra: TDM_Sintegra
  OldCreateOrder = False
  Height = 477
  Width = 490
  object Sintegra: TACBrSintegra
    VersaoValidador = vv524
    Informa88SME = False
    Informa88SMS = False
    Informa88EAN = False
    Informa88C = False
    InformaSapiMG = False
    Left = 48
    Top = 24
  end
  object Q60M: TFDQuery
    BeforeOpen = Q50EBeforeOpen
    AfterOpen = Q50EAfterOpen
    SQL.Strings = (
      'select'
      'distinct(crz), '
      'min(id)as id,'
      'num_ecf,'
      'num_usu,'
      'serie_ecf,'
      'mf_adic,'
      'coo,'
      'coo_inicial,'
      'cro,'
      'dt_movi,'
      'dt_em,'
      'hora_em,'
      'venda_bruta,'
      'valor_gt,'
      'issqn '
      'from paf_r02'
      'where '
      'dt_movi between :d1 and :d2'
      'group by num_ecf, crz'
      'order by num_ecf, crz')
    Left = 136
    Top = 28
    ParamData = <
      item
        Name = 'D1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'D2'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object Q60Mid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q60Mnum_ecf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'num_ecf'
      Origin = 'num_ecf'
    end
    object Q60Mnum_usu: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'num_usu'
      Origin = 'num_usu'
    end
    object Q60Mserie_ecf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'serie_ecf'
      Origin = 'serie_ecf'
    end
    object Q60Mmf_adic: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mf_adic'
      Origin = 'mf_adic'
      FixedChar = True
      Size = 1
    end
    object Q60Mcrz: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'crz'
      Origin = 'crz'
    end
    object Q60Mcoo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'coo'
      Origin = 'coo'
    end
    object Q60Mcoo_inicial: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'coo_inicial'
      Origin = 'coo_inicial'
    end
    object Q60Mcro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cro'
      Origin = 'cro'
    end
    object Q60Mdt_movi: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_movi'
      Origin = 'dt_movi'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Q60Mdt_em: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_em'
      Origin = 'dt_em'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Q60Mhora_em: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'hora_em'
      Origin = 'hora_em'
      DisplayFormat = 'hh:mm'
    end
    object Q60Mvenda_bruta: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'venda_bruta'
      Origin = 'venda_bruta'
    end
    object Q60Missqn: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'issqn'
      Origin = 'issqn'
      FixedChar = True
      Size = 1
    end
    object Q60Mvalor_gt: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_gt'
      Origin = 'valor_gt'
    end
  end
  object Q60A: TFDQuery
    BeforeOpen = Q50EBeforeOpen
    AfterOpen = Q50EAfterOpen
    MasterSource = DSQ60M
    MasterFields = 'id'
    SQL.Strings = (
      
        'select * from paf_r03 where r02=:id and cod_tot_parcial <> '#39'OPNF' +
        #39)
    Left = 136
    Top = 84
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q60Aid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q60Ar02: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'r02'
      Origin = 'r02'
    end
    object Q60Acod_tot_parcial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_tot_parcial'
      Origin = 'cod_tot_parcial'
      Size = 7
    end
    object Q60Avalor_tot_parcial: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_tot_parcial'
      Origin = 'valor_tot_parcial'
    end
    object Q60Amd5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object Q60Ahash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
  end
  object DSQ60M: TDataSource
    DataSet = Q60M
    Left = 184
    Top = 56
  end
  object Q60D: TFDQuery
    BeforeOpen = Q50EBeforeOpen
    AfterOpen = Q50EAfterOpen
    MasterSource = DSQ60M
    MasterFields = 'id'
    SQL.Strings = (
      'select codigo,nome,unid,sum(qtd) as qtd, sum(total) as total, '
      
        'if(substr(cod_totaliz,1,2) = '#39'DT'#39','#39'DESC'#39',if(substr(cod_totaliz,1' +
        ',3) = '#39'Can'#39','#39'CANC'#39' ,if(substr(cod_totaliz,1,1) = '#39'0'#39', substr(cod' +
        '_totaliz,4,4), substr(cod_totaliz,1,1)))) as st,'
      'if(substr(cod_totaliz,1,1) = '#39'0'#39', total, 0) as bc, '
      
        'Round((if(substr(cod_totaliz,1,1) = '#39'0'#39', substr(cod_totaliz,4,4)' +
        ', substr(cod_totaliz,1,1)) * if(substr(cod_totaliz,1,1) = '#39'0'#39', t' +
        'otal, 0))/10000,2) as icms,'
      
        'Round(if(substr(cod_totaliz,1,1) = '#39'0'#39', substr(cod_totaliz,4,4),' +
        ' substr(cod_totaliz,1,1))/100,2) as aliq '
      'from paf_r05'
      'join paf_r04 on paf_r05.r04 = paf_r04.id '
      'where paf_r04.r02=:id'
      'group by codigo')
    Left = 136
    Top = 140
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q60Dcodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 14
    end
    object Q60Dnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object Q60Dqtd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q60Dtotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q60Dst: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'st'
      Origin = 'st'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object Q60Dbc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'bc'
      Origin = 'bc'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q60Dicms: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms'
      Origin = 'icms'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q60Daliq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'aliq'
      Origin = 'aliq'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q60Dunid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'unid'
      Origin = 'unid'
      Size = 3
    end
  end
  object Q60I: TFDQuery
    BeforeOpen = Q50EBeforeOpen
    AfterOpen = Q50EAfterOpen
    MasterSource = DSQ60M
    MasterFields = 'id'
    SQL.Strings = (
      'select r4.coo,item,codigo, nome, unid, qtd, total, '
      
        'if(substr(cod_totaliz,1,3) = '#39'Can'#39','#39'CANC'#39' ,if(substr(cod_totaliz' +
        ',1,1) = '#39'0'#39', substr(cod_totaliz,4,4), substr(cod_totaliz,1,1))) ' +
        'as st, '
      'if(substr(cod_totaliz,1,1) = '#39'0'#39', total, 0) as bc,'
      
        'Round((if(substr(cod_totaliz,1,1) = '#39'0'#39', substr(cod_totaliz,4,4)' +
        ', substr(cod_totaliz,1,1)) * if(substr(cod_totaliz,1,1) = '#39'0'#39', t' +
        'otal, 0))/10000,2) as icms,'
      
        'Round(if(substr(cod_totaliz,1,1) = '#39'0'#39', substr(cod_totaliz,4,4),' +
        ' substr(cod_totaliz,1,1))/100,2) as aliq '
      'from paf_r04 r4 '
      'join '
      
        'paf_r05 r5 on r5.r04=r4.id and r5.cod_totaliz not in('#39'DT'#39', '#39'DS'#39',' +
        #39'OPNF'#39','#39'AT'#39','#39'AS'#39')'
      'where'
      'r4.r02=:id'
      'ORDER by coo, item')
    Left = 136
    Top = 196
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q60Icoo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'coo'
      Origin = 'coo'
    end
    object Q60Iitem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'item'
      Origin = 'item'
    end
    object Q60Icodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 14
    end
    object Q60Inome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object Q60Iunid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'unid'
      Origin = 'unid'
      Size = 3
    end
    object Q60Iqtd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
    end
    object Q60Itotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
    end
    object Q60Ist: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'st'
      Origin = 'st'
      Size = 4
    end
    object Q60Ibc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'bc'
      Origin = 'bc'
    end
    object Q60Iicms: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms'
      Origin = 'icms'
    end
    object Q60Ialiq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'aliq'
      Origin = 'aliq'
    end
  end
  object Q60R: TFDQuery
    BeforeOpen = Q50EBeforeOpen
    AfterOpen = Q50EAfterOpen
    SQL.Strings = (
      'select codigo,sum(qtd) as qtd, sum(total) as total, '
      
        'if(substr(cod_totaliz,1,1) = '#39'0'#39', substr(cod_totaliz,4,4), subst' +
        'r(cod_totaliz,1,1)) as st '
      'from paf_r02 r2'
      'join paf_r04 r4 on r4.r02= r2.id'
      
        'join paf_r05 r5 on r5.r04=r4.id and r5.cod_totaliz not in('#39'DESC'#39 +
        ','#39'Can-T'#39','#39'DT'#39', '#39'DS'#39','#39'OPNF'#39','#39'AT'#39','#39'AS'#39') '
      'where '
      'r2.dt_movi between :dt1 and :dt2 '
      'group by codigo, cod_totaliz')
    Left = 136
    Top = 252
    ParamData = <
      item
        Name = 'DT1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DT2'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object Q60Rcodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 14
    end
    object Q60Rqtd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q60Rtotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q60Rst: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'st'
      Origin = 'st'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
  end
  object Q74: TFDQuery
    SQL.Strings = (
      'select * from vw_balanco where data=:dt and '
      'quant > 0 order by cod_gtin')
    Left = 232
    Top = 124
    ParamData = <
      item
        Name = 'DT'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object Q74data: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Q74cod_gtin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_gtin'
      Origin = 'cod_gtin'
    end
    object Q74nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object Q74vrcusto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrcusto'
      Origin = 'vrcusto'
    end
    object Q74vrcusto_real: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrcusto_real'
      Origin = 'vrcusto_real'
    end
    object Q74quant: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'quant'
      Origin = 'quant'
    end
    object Q74total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q74icms: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms'
      Origin = 'icms'
    end
    object Q74unidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'unidade'
      Origin = 'unidade'
      Size = 10
    end
  end
  object Q50E: TFDQuery
    BeforeOpen = Q50EBeforeOpen
    AfterOpen = Q50EAfterOpen
    SQL.Strings = (
      
        'select  n.id,e.cnpj, n.Emit_CNPJCPF, n.Emit_IE, n.Ide_dSaiEnt, n' +
        '.Emit_EnderEmit_UF,'
      'n.Ide_modelo, n.Ide_serie, n.Ide_nNF, na.CFOP,'
      
        'if(Replace(Replace(Replace(e.cnpj,'#39'.'#39','#39#39'),'#39'-'#39','#39#39'),'#39'/'#39','#39#39') = n.Em' +
        'it_CNPJCPF, '#39'P'#39','#39'T'#39') as emissor,'
      'n.Emit_EnderEmit_UF,'
      #39'N'#39' as situacao,'
      'na.cfop_inform,'
      'na.ICMS_pICMS,'
      'sum(na.vProd) as vrcontabil,'
      'sum(na.ICMS_vBC) as vrBC,'
      'sum(na.ICMS_vICMS) as vricms,'
      'if(ICMS_CST in(3,4,5,7,13), sum(na.vProd),0) as vrisentas'
      'from empresa e,nf_entr n'
      'join nf_item_entr na on na.nf=n.id'
      'where n.Ide_dSaiEnt between :d1 and :d2'
      
        'group by n.Ide_nNF, n.Ide_dSaiEnt, na.cfop_inform, na.ICMS_pICMS' +
        ' '
      'order by n.Ide_dSaiEnt, n.Ide_nNF')
    Left = 312
    Top = 38
    ParamData = <
      item
        Name = 'D1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'D2'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object Q50Eid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q50Ecnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object Q50EEmit_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_CNPJCPF'
      Origin = 'Emit_CNPJCPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50EEmit_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_IE'
      Origin = 'Emit_IE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50EIde_dSaiEnt: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_dSaiEnt'
      Origin = 'Ide_dSaiEnt'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Q50EEmit_EnderEmit_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_UF'
      Origin = 'Emit_EnderEmit_UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object Q50EIde_modelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_modelo'
      Origin = 'Ide_modelo'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50EIde_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_serie'
      Origin = 'Ide_serie'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50EIde_nNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_nNF'
      Origin = 'Ide_nNF'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50ECFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object Q50Eemissor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emissor'
      Origin = 'emissor'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object Q50Esituacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'situacao'
      Origin = 'situacao'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object Q50Ecfop_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cfop_inform'
      Origin = 'CFOP_inform'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object Q50EICMS_pICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50Evrcontabil: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrcontabil'
      Origin = 'vrcontabil'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50EvrBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrBC'
      Origin = 'vrBC'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50Evricms: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vricms'
      Origin = 'vricms'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50Evrisentas: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrisentas'
      Origin = 'vrisentas'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50EEmit_EnderEmit_UF_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_UF_1'
      Origin = 'Emit_EnderEmit_UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
  end
  object Q50S: TFDQuery
    BeforeOpen = Q50EBeforeOpen
    AfterOpen = Q50EAfterOpen
    SQL.Strings = (
      
        'select e.cnpj, n.Dest_CNPJCPF, n.Dest_IE, n.Ide_dSaiEnt, n.Dest_' +
        'EnderDest_UF,'
      'n.Ide_modelo, n.Ide_serie, n.Ide_nNF, na.CFOP,'
      
        'if(Replace(Replace(Replace(e.cnpj,'#39'.'#39','#39#39'),'#39'-'#39','#39#39'),'#39'/'#39','#39#39') = n.Em' +
        'it_CNPJCPF, '#39'P'#39','#39'T'#39') as emissor,'
      'if(status=9,'#39'S'#39','#39'N'#39') as situacao,'
      'if(status=9,0,na.ICMS_pICMS)as ICMS_pICMS,'
      'if(status=9,0,sum(na.vProd)) as vrcontabil,'
      'if(status=9,0,sum(na.ICMS_vBC)) as vrBC,'
      'if(status=9,0,sum(na.ICMS_vICMS)) as vricms,'
      
        'if(status=9,0,if(ICMS_CST in(3,4,5,7,13), sum(na.vProd),0)) as v' +
        'risentas'
      'from empresa e, nf n'
      'join nf_item na on na.nf=n.id'
      'where'
      'n.Ide_dSaiEnt between :d1 and :d2'
      'group by n.Ide_nNF, n.Ide_dSaiEnt, na.cfop, na.ICMS_pICMS '
      'order by n.Ide_dSaiEnt, n.Ide_nNF')
    Left = 312
    Top = 166
    ParamData = <
      item
        Name = 'D1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'D2'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object Q50Scnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object Q50SDest_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_CNPJCPF'
      Origin = 'Dest_CNPJCPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50SDest_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_IE'
      Origin = 'Dest_IE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50SIde_dSaiEnt: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_dSaiEnt'
      Origin = 'Ide_dSaiEnt'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Q50SDest_EnderDest_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_UF'
      Origin = 'Dest_EnderDest_UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object Q50SIde_modelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_modelo'
      Origin = 'Ide_modelo'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50SIde_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_serie'
      Origin = 'Ide_serie'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50SIde_nNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_nNF'
      Origin = 'Ide_nNF'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50SCFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object Q50Semissor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emissor'
      Origin = 'emissor'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object Q50Ssituacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'situacao'
      Origin = 'situacao'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object Q50SICMS_pICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50Svrcontabil: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrcontabil'
      Origin = 'vrcontabil'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50SvrBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrBC'
      Origin = 'vrBC'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50Svricms: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vricms'
      Origin = 'vricms'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q50Svrisentas: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrisentas'
      Origin = 'vrisentas'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object Q54S: TFDQuery
    BeforeOpen = Q50EBeforeOpen
    AfterOpen = Q50EAfterOpen
    MasterSource = DS50S
    MasterFields = 'Ide_nNF;CFOP;ICMS_pICMS'
    DetailFields = 'Ide_nNF;cfop;ICMS_pICMS'
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select n.Dest_CNPJCPF, n.Dest_IE, n.Ide_dSaiEnt, n.Dest_EnderDes' +
        't_UF,'
      'n.Ide_modelo, n.Ide_serie, n.Ide_nNF,'
      'na.cfop,'
      'na.ICMS_orig as origem,'
      'na.ICMS_CSOSN,'
      'na.ICMS_CST,'
      'na.nitem,'
      'na.cProd,'
      'na.uCom,'
      'e.cod_gtin as codigo,'
      'na.xProd,'
      'na.qCom,'
      'na.vProd,'
      'na.vDesc,'
      'na.ICMS_pICMS,'
      'na.ICMS_vBC,'
      'na.ICMS_pICMS,'
      'na.ICMS_vBCST,'
      'na.IPI_vIPI'
      'from '
      'nf n'
      
        'join nf_item na on na.nf=n.id and na.CFOP=:cfop and na.ICMS_pICM' +
        'S=:ICMS_pICMS'
      'join estoque e on e.id=na.cProd'
      'where'
      'n.status<>9 and '
      'n.Ide_nNF=:Ide_nNF'
      '')
    Left = 312
    Top = 222
    ParamData = <
      item
        Name = 'CFOP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ICMS_PICMS'
        DataType = ftCurrency
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDE_NNF'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Q54SDest_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_CNPJCPF'
      Origin = 'Dest_CNPJCPF'
    end
    object Q54SDest_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_IE'
      Origin = 'Dest_IE'
    end
    object Q54SIde_dSaiEnt: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_dSaiEnt'
      Origin = 'Ide_dSaiEnt'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Q54SDest_EnderDest_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_UF'
      Origin = 'Dest_EnderDest_UF'
      Size = 2
    end
    object Q54SIde_modelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_modelo'
      Origin = 'Ide_modelo'
    end
    object Q54SIde_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_serie'
      Origin = 'Ide_serie'
    end
    object Q54SIde_nNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_nNF'
      Origin = 'Ide_nNF'
    end
    object Q54Scfop: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cfop'
      Origin = 'CFOP'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object Q54Sorigem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'origem'
      Origin = 'ICMS_orig'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54SICMS_CSOSN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54SICMS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54Snitem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nitem'
      Origin = 'nItem'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54ScProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cProd'
      Origin = 'cProd'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object Q54SuCom: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uCom'
      Origin = 'uCom'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object Q54Scodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'cod_gtin'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54SxProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'xProd'
      Origin = 'xProd'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object Q54SqCom: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qCom'
      Origin = 'qCom'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54SvProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vProd'
      Origin = 'vProd'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54SvDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vDesc'
      Origin = 'vDesc'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54SICMS_pICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54SICMS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBC'
      Origin = 'ICMS_vBC'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54SICMS_pICMS_1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS_1'
      Origin = 'ICMS_pICMS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54SICMS_vBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCST'
      Origin = 'ICMS_vBCST'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54SIPI_vIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vIPI'
      Origin = 'IPI_vIPI'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object Q54E: TFDQuery
    BeforeOpen = Q50EBeforeOpen
    AfterOpen = Q50EAfterOpen
    MasterSource = DS50E
    MasterFields = 'cfop_inform;ICMS_pICMS;id'
    SQL.Strings = (
      
        'select n.Emit_CNPJCPF, n.Emit_IE, n.Ide_dSaiEnt, n.Emit_EnderEmi' +
        't_UF,'
      'n.Ide_modelo, n.Ide_serie, n.Ide_nNF,'
      'na.cfop_inform,'
      'na.ICMS_orig as origem,'
      'na.ICMS_CSOSN,'
      'na.ICMS_CST,'
      'na.nitem,'
      'na.cProd,'
      'na.uCom,'
      'e.cod_gtin as codigo,'
      'na.xProd,'
      'na.qCom,'
      'na.vProd,'
      'na.vDesc,'
      'na.ICMS_pICMS,'
      'na.ICMS_vBC,'
      'na.ICMS_pICMS,'
      'na.ICMS_vBCST,'
      'na.IPI_vIPI'
      'from '
      'nf_entr n'
      
        'join nf_item_entr na on na.nf=n.id and na.cfop_inform=:cfop_info' +
        'rm and na.ICMS_pICMS=:ICMS_picms'
      'join estoque e on e.id=na.cProd'
      'where '
      'n.id=:id')
    Left = 312
    Top = 94
    ParamData = <
      item
        Name = 'CFOP_INFORM'
        DataType = ftString
        ParamType = ptInput
        Size = 5
        Value = Null
      end
      item
        Name = 'ICMS_PICMS'
        DataType = ftFloat
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'ID'
        ParamType = ptInput
      end>
    object Q54EEmit_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_CNPJCPF'
      Origin = 'Emit_CNPJCPF'
    end
    object Q54EEmit_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_IE'
      Origin = 'Emit_IE'
    end
    object Q54EIde_dSaiEnt: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_dSaiEnt'
      Origin = 'Ide_dSaiEnt'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Q54EEmit_EnderEmit_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_UF'
      Origin = 'Emit_EnderEmit_UF'
      Size = 2
    end
    object Q54EIde_modelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_modelo'
      Origin = 'Ide_modelo'
    end
    object Q54EIde_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_serie'
      Origin = 'Ide_serie'
    end
    object Q54EIde_nNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_nNF'
      Origin = 'Ide_nNF'
    end
    object Q54Eorigem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'origem'
      Origin = 'ICMS_orig'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54Enitem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nitem'
      Origin = 'nItem'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54EcProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cProd'
      Origin = 'cProd'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object Q54ExProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'xProd'
      Origin = 'xProd'
      ProviderFlags = []
      ReadOnly = True
      Size = 120
    end
    object Q54EqCom: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qCom'
      Origin = 'qCom'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54EvProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vProd'
      Origin = 'vProd'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54EvDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vDesc'
      Origin = 'vDesc'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54EICMS_pICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54EICMS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBC'
      Origin = 'ICMS_vBC'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54EICMS_pICMS_1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS_1'
      Origin = 'ICMS_pICMS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54EICMS_vBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCST'
      Origin = 'ICMS_vBCST'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54EIPI_vIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vIPI'
      Origin = 'IPI_vIPI'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54Ecfop_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cfop_inform'
      Origin = 'CFOP_inform'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object Q54EICMS_CSOSN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54EICMS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q54EuCom: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uCom'
      Origin = 'uCom'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object Q54Ecodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'cod_gtin'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DS50E: TDataSource
    DataSet = Q50E
    Left = 360
    Top = 72
  end
  object DS50S: TDataSource
    DataSet = Q50S
    Left = 360
    Top = 192
  end
  object Q61: TFDQuery
    BeforeOpen = Q50EBeforeOpen
    AfterOpen = Q50EAfterOpen
    SQL.Strings = (
      'select dt_movi, '
      'min(serie_d) as nmro_nf_ini,  '
      'max(serie_d) as nmro_nf_fin,'
      #39'001'#39' as serie, '
      'sum(vr_doc) as vr_doc, '
      'sum(vpis)as vpis, '
      'sum(vcofins) as vcofins, '
      'ICMS_pICMS,'
      'sum(ICMS_vBC) as ICMS_vBC,'
      'sum(ICMS_vICMS) as ICMS_vICMS '
      'from vw_sped_c300'
      'where '
      'dt_movi between :d1 and :d2 '
      'group by'
      'dt_movi, ICMS_pICMS')
    Left = 136
    Top = 316
    ParamData = <
      item
        Name = 'D1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'D2'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object Q61dt_movi: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_movi'
      Origin = 'dt_movi'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Q61nmro_nf_ini: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nmro_nf_ini'
      Origin = 'nmro_nf_ini'
    end
    object Q61nmro_nf_fin: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nmro_nf_fin'
      Origin = 'nmro_nf_fin'
    end
    object Q61serie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'serie'
      Origin = 'serie'
      Size = 3
    end
    object Q61vr_doc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_doc'
      Origin = 'vr_doc'
    end
    object Q61vpis: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vpis'
      Origin = 'vpis'
    end
    object Q61vcofins: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vcofins'
      Origin = 'vcofins'
    end
    object Q61ICMS_pICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
    end
    object Q61ICMS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBC'
      Origin = 'ICMS_vBC'
    end
    object Q61ICMS_vICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMS'
      Origin = 'ICMS_vICMS'
    end
  end
end
