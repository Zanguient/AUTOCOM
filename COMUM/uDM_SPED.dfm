object DM_Sped: TDM_Sped
  OldCreateOrder = False
  Height = 621
  Width = 762
  object Q1: TFDQuery
    Connection = DM.DB
    Left = 42
    Top = 12
  end
  object ACBrSPEDFiscal1: TACBrSPEDFiscal
    Path = 'C:\Program Files\Embarcadero\RAD Studio\11.0\bin\'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 35
    Top = 68
  end
  object Q0150: TFDQuery
    Connection = DM.DB
    SQL.Strings = (
      'select distinct(Emit_CNPJCPF),'
      'Emit_IE,'
      'Emit_xNome,'
      'Emit_EnderEmit_xLgr,'
      'Emit_EnderEmit_nro,'
      'Emit_EnderEmit_xCpl,'
      'Emit_EnderEmit_xBairro,'
      'Emit_EnderEmit_cMun'
      'from nf_entr '
      'where Emit_CNPJCPF =:cnpj'
      'union'
      'select distinct(Emit_CNPJCPF),'
      'Emit_IE,'
      'Emit_xNome,'
      'Emit_EnderEmit_xLgr,'
      'Emit_EnderEmit_nro,'
      'Emit_EnderEmit_xCpl,'
      'Emit_EnderEmit_xBairro,'
      'Emit_EnderEmit_cMun'
      'from nf where status <> 2 and Emit_CNPJCPF =:cnpj'
      'union'
      'select cnpj,'
      'ie,'
      'razaosocial,'
      'logradouro,'
      'nmro,'
      'complem,'
      'bairro,'
      'codmun'
      'from vw_oper_crt where cnpj =:cnpj'
      'order by Emit_CNPJCPF')
    Left = 118
    Top = 12
    ParamData = <
      item
        Name = 'CNPJ'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object Q0150Emit_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_CNPJCPF'
      Origin = 'Emit_CNPJCPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q0150Emit_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_IE'
      Origin = 'Emit_IE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q0150Emit_xNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_xNome'
      Origin = 'Emit_xNome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q0150Emit_EnderEmit_xLgr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_xLgr'
      Origin = 'Emit_EnderEmit_xLgr'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q0150Emit_EnderEmit_nro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_nro'
      Origin = 'Emit_EnderEmit_nro'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object Q0150Emit_EnderEmit_xCpl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_xCpl'
      Origin = 'Emit_EnderEmit_xCpl'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object Q0150Emit_EnderEmit_xBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_xBairro'
      Origin = 'Emit_EnderEmit_xBairro'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object Q0150Emit_EnderEmit_cMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_cMun'
      Origin = 'Emit_EnderEmit_cMun'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DS0150: TDataSource
    DataSet = Q0150
    Left = 152
    Top = 52
  end
  object Q0175: TFDQuery
    MasterSource = DS0150
    MasterFields = 'Emit_CNPJCPF'
    Connection = DM.DB
    SQL.Strings = (
      'select distinct(campo), max(data) as data,valor_anter '
      'from sped_alteracoes s, vw_dest_nf v '
      'where '
      'data between :d1 and :d2 and'
      's.id_reg=v.id and v.cnpj = :Emit_CNPJCPF'
      'group by campo'
      'order by campo, data')
    Left = 116
    Top = 76
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
      end
      item
        Name = 'EMIT_CNPJCPF'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object Q0175campo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'campo'
      Origin = 'campo'
    end
    object Q0175data: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Q0175valor_anter: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'valor_anter'
      Origin = 'valor_anter'
      Size = 100
    end
  end
  object Q0190: TFDQuery
    Connection = DM.DB
    SQL.Strings = (
      'select distinct(unid) as unid'
      'from paf_r05 r5, paf_r04 r4, paf_r02 r2'
      'where'
      'r5.r04=r4.id and r4.r02=r2.id and r2.dt_movi between :d1 and :d2'
      'union'
      'select distinct(ni.uCom) as unid'
      'from '
      'nf_item_entr ni, nf_entr n'
      'where'
      'ni.nf=n.id and n.Ide_dSaiEnt between :d1 and :d2'
      'union'
      'select distinct(ni.uCom) as unid'
      'from '
      'nf_item ni, nf n'
      'where'
      
        'ni.nf=n.id and n.status <> 2 and n.Ide_dSaiEnt between :d1 and :' +
        'd2'
      'order by unid'
      ''
      '')
    Left = 118
    Top = 132
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
    object Q0190unid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'unid'
      Origin = 'unid'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
  end
  object Q0200: TFDQuery
    Connection = DM.DB
    SQL.Strings = (
      'select distinct(e.id) as id ,'
      'e.cod_gtin,'
      'e.nome,'
      'e.sigla_unid, '
      'round(e.aliq_ecf/100,2) as icms,'
      'e.ncm,'
      'e.destinacao'
      'from vw_estoque e, paf_r05 r5, paf_r04 r4, paf_r02 r2'
      'where'
      'e.cod_gtin=r5.codigo and'
      'r5.r04=r4.id and '
      'r4.r02=r2.id and '
      'r4.canc='#39'N'#39' and'
      'r5.canc='#39'N'#39' and'
      'r2.dt_movi between :d1 and :d2'
      'union'
      'select distinct(e.id) as id,'
      'e.cod_gtin,'
      'e.nome,'
      'e.sigla_unid, '
      'round(e.aliq_ecf/100,2) as icms,'
      'e.ncm,e.destinacao'
      'from vw_estoque e, nf_item_entr ni, nf_entr n'
      'where'
      'ni.cProd=e.id and '
      'ni.nf=n.id and '
      'n.Ide_dSaiEnt between :d1 and :d2'
      'union'
      'select distinct(e.id) as id,'
      'e.cod_gtin,'
      'e.nome,'
      'e.sigla_unid, '
      'round(e.aliq_ecf/100,2) as icms,'
      'e.ncm,'
      'e.destinacao'
      'from vw_estoque e, nf_item ni, nf n'
      'where'
      'n.status <> 2 and'
      'ni.cProd=e.id and '
      'ni.nf=n.id and '
      'n.Ide_dSaiEnt between :d1 and :d2'
      'order by id')
    Left = 118
    Top = 189
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
    object Q0200id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q0200cod_gtin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_gtin'
      Origin = 'cod_gtin'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q0200nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q0200sigla_unid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sigla_unid'
      Origin = 'sigla_unid'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object Q0200icms: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms'
      Origin = 'icms'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q0200ncm: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ncm'
      Origin = 'ncm'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q0200destinacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'destinacao'
      Origin = 'destinacao'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  object QC100: TFDQuery
    Connection = DM.DB
    SQL.Strings = (
      'select '#39'E'#39' as tipo,ch.chave, ch.cstat as status, nf.* from '
      'nf_entr nf'
      'left join nf_chave_entr ch on ch.nf=nf.id'
      'where Ide_dSaiEnt between :d1 and :d2'
      'union'
      'select '#39'S'#39',ch.chave, ch.cstat, nf.* from '
      'nf'
      'left join nf_chave ch on ch.nf=nf.id'
      'where Ide_dSaiEnt between :d1 and :d2'
      'order by Ide_modelo, Ide_nNF')
    Left = 208
    Top = 12
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
    object QC100chave: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'chave'
      Origin = 'chave'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QC100id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object QC100Ide_cNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_cNF'
      Origin = 'Ide_cNF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Ide_natOp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_natOp'
      Origin = 'Ide_natOp'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Ide_indPag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_indPag'
      Origin = 'Ide_indPag'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Ide_modelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_modelo'
      Origin = 'Ide_modelo'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Ide_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_serie'
      Origin = 'Ide_serie'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Ide_nNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_nNF'
      Origin = 'Ide_nNF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Ide_dEmi: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_dEmi'
      Origin = 'Ide_dEmi'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QC100Ide_dSaiEnt: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_dSaiEnt'
      Origin = 'Ide_dSaiEnt'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QC100Ide_tpNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_tpNF'
      Origin = 'Ide_tpNF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Ide_tpEmis: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_tpEmis'
      Origin = 'Ide_tpEmis'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Ide_tpAmb: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_tpAmb'
      Origin = 'Ide_tpAmb'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Ide_verProc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_verProc'
      Origin = 'Ide_verProc'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Ide_cUF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_cUF'
      Origin = 'Ide_cUF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Ide_cMunFG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_cMunFG'
      Origin = 'Ide_cMunFG'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Ide_finNFe: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_finNFe'
      Origin = 'Ide_finNFe'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Ide_dhCont: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_dhCont'
      Origin = 'Ide_dhCont'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QC100Ide_xJust: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_xJust'
      Origin = 'Ide_xJust'
      ProviderFlags = []
      ReadOnly = True
      Size = 250
    end
    object QC100Emit_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_CNPJCPF'
      Origin = 'Emit_CNPJCPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Emit_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_IE'
      Origin = 'Emit_IE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Emit_xNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_xNome'
      Origin = 'Emit_xNome'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Emit_xFant: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_xFant'
      Origin = 'Emit_xFant'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Emit_EnderEmit_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_fone'
      Origin = 'Emit_EnderEmit_fone'
      ProviderFlags = []
      ReadOnly = True
      Size = 14
    end
    object QC100mit_EnderEmit_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mit_EnderEmit_CEP'
      Origin = 'mit_EnderEmit_CEP'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QC100Emit_EnderEmit_xLgr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_xLgr'
      Origin = 'Emit_EnderEmit_xLgr'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Emit_EnderEmit_nro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_nro'
      Origin = 'Emit_EnderEmit_nro'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Emit_EnderEmit_xCpl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_xCpl'
      Origin = 'Emit_EnderEmit_xCpl'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Emit_EnderEmit_xBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_xBairro'
      Origin = 'Emit_EnderEmit_xBairro'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Emit_EnderEmit_cMun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_cMun'
      Origin = 'Emit_EnderEmit_cMun'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Emit_EnderEmit_xMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_xMun'
      Origin = 'Emit_EnderEmit_xMun'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Emit_EnderEmit_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_UF'
      Origin = 'Emit_EnderEmit_UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QC100Emit_enderEmit_cPais: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_enderEmit_cPais'
      Origin = 'Emit_enderEmit_cPais'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Emit_enderEmit_xPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_enderEmit_xPais'
      Origin = 'Emit_enderEmit_xPais'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Emit_IEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_IEST'
      Origin = 'Emit_IEST'
      ProviderFlags = []
      ReadOnly = True
      Size = 14
    end
    object QC100Emit_IM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_IM'
      Origin = 'Emit_IM'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QC100Emit_CNAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_CNAE'
      Origin = 'Emit_CNAE'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
    object QC100Emit_CRT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_CRT'
      Origin = 'Emit_CRT'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Dest_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_CNPJCPF'
      Origin = 'Dest_CNPJCPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Dest_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_IE'
      Origin = 'Dest_IE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Dest_ISUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_ISUF'
      Origin = 'Dest_ISUF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Dest_xNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_xNome'
      Origin = 'Dest_xNome'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Dest_EnderDest_Fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_Fone'
      Origin = 'Dest_EnderDest_Fone'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Dest_EnderDest_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_CEP'
      Origin = 'Dest_EnderDest_CEP'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QC100Dest_EnderDest_xLgr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_xLgr'
      Origin = 'Dest_EnderDest_xLgr'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Dest_EnderDest_nro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_nro'
      Origin = 'Dest_EnderDest_nro'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Dest_EnderDest_xCpl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_xCpl'
      Origin = 'Dest_EnderDest_xCpl'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Dest_EnderDest_xBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_xBairro'
      Origin = 'Dest_EnderDest_xBairro'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Dest_EnderDest_cMun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_cMun'
      Origin = 'Dest_EnderDest_cMun'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Dest_EnderDest_xMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_xMun'
      Origin = 'Dest_EnderDest_xMun'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Dest_EnderDest_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_UF'
      Origin = 'Dest_EnderDest_UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QC100Dest_EnderDest_cPais: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_cPais'
      Origin = 'Dest_EnderDest_cPais'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Dest_EnderDest_xPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_xPais'
      Origin = 'Dest_EnderDest_xPais'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Retirada_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_CNPJCPF'
      Origin = 'Retirada_CNPJCPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Retirada_xLgr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_xLgr'
      Origin = 'Retirada_xLgr'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Retirada_nro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_nro'
      Origin = 'Retirada_nro'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Retirada_xCpl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_xCpl'
      Origin = 'Retirada_xCpl'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Retirada_xBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_xBairro'
      Origin = 'Retirada_xBairro'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Retirada_cMun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_cMun'
      Origin = 'Retirada_cMun'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Retirada_xMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_xMun'
      Origin = 'Retirada_xMun'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Retirada_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_UF'
      Origin = 'Retirada_UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QC100Entrega_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_CNPJCPF'
      Origin = 'Entrega_CNPJCPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Entrega_xLgr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_xLgr'
      Origin = 'Entrega_xLgr'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Entrega_nro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_nro'
      Origin = 'Entrega_nro'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Entrega_xCpl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_xCpl'
      Origin = 'Entrega_xCpl'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Entrega_xBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_xBairro'
      Origin = 'Entrega_xBairro'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Entrega_cMun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_cMun'
      Origin = 'Entrega_cMun'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Entrega_xMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_xMun'
      Origin = 'Entrega_xMun'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Entrega_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_UF'
      Origin = 'Entrega_UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QC100modFrete: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'modFrete'
      Origin = 'modFrete'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Transporta_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_CNPJCPF'
      Origin = 'Transporta_CNPJCPF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Transporta_xNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_xNome'
      Origin = 'Transporta_xNome'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Transporta_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_IE'
      Origin = 'Transporta_IE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100Transporta_xEnder: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_xEnder'
      Origin = 'Transporta_xEnder'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Transporta_xMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_xMun'
      Origin = 'Transporta_xMun'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100Transporta_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_UF'
      Origin = 'Transporta_UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QC100retvServ: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retvServ'
      Origin = 'retvServ'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100retvBCRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retvBCRet'
      Origin = 'retvBCRet'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100retpICMSRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retpICMSRet'
      Origin = 'retpICMSRet'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100retvICMSRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retvICMSRet'
      Origin = 'retvICMSRet'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100retCFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'retCFOP'
      Origin = 'retCFOP'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QC100retcMunFG: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'retcMunFG'
      Origin = 'retcMunFG'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100veicplaca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'veicplaca'
      Origin = 'veicplaca'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QC100veicUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'veicUF'
      Origin = 'veicUF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QC100veicRNTC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'veicRNTC'
      Origin = 'veicRNTC'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100nFat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nFat'
      Origin = 'nFat'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QC100vOrig: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vOrig'
      Origin = 'vOrig'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100vDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vDesc'
      Origin = 'vDesc'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100vLiq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vLiq'
      Origin = 'vLiq'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100infAdFisco: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'infAdFisco'
      Origin = 'infAdFisco'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object QC100infCpl: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'infCpl'
      Origin = 'infCpl'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object QC100ICMSTot_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vBC'
      Origin = 'ICMSTot_vBC'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ICMSTot_vICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vICMS'
      Origin = 'ICMSTot_vICMS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ICMSTot_vBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vBCST'
      Origin = 'ICMSTot_vBCST'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ICMSTot_vST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vST'
      Origin = 'ICMSTot_vST'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ICMSTot_vProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vProd'
      Origin = 'ICMSTot_vProd'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ICMSTot_vFrete: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vFrete'
      Origin = 'ICMSTot_vFrete'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ICMSTot_vSeg: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vSeg'
      Origin = 'ICMSTot_vSeg'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ICMSTot_vDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vDesc'
      Origin = 'ICMSTot_vDesc'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ICMSTot_vII: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vII'
      Origin = 'ICMSTot_vII'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ICMSTot_vIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vIPI'
      Origin = 'ICMSTot_vIPI'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ICMSTot_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vPIS'
      Origin = 'ICMSTot_vPIS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ICMSTot_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vCOFINS'
      Origin = 'ICMSTot_vCOFINS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ICMSTot_vOutro: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vOutro'
      Origin = 'ICMSTot_vOutro'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ICMSTot_vNF: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vNF'
      Origin = 'ICMSTot_vNF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ISSQNtot_vServ: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQNtot_vServ'
      Origin = 'ISSQNtot_vServ'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ISSQNTot_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQNTot_vBC'
      Origin = 'ISSQNTot_vBC'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ISSQNTot_vISS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQNTot_vISS'
      Origin = 'ISSQNTot_vISS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ISSQNTot_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQNTot_vPIS'
      Origin = 'ISSQNTot_vPIS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100ISSQNTot_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQNTot_vCOFINS'
      Origin = 'ISSQNTot_vCOFINS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100retTrib_vRetPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vRetPIS'
      Origin = 'retTrib_vRetPIS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100retTrib_vRetCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vRetCOFINS'
      Origin = 'retTrib_vRetCOFINS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100retTrib_vRetCSLL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vRetCSLL'
      Origin = 'retTrib_vRetCSLL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100retTrib_vBCIRRF: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vBCIRRF'
      Origin = 'retTrib_vBCIRRF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100retTrib_vIRRF: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vIRRF'
      Origin = 'retTrib_vIRRF'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100retTrib_vBCRetPrev: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vBCRetPrev'
      Origin = 'retTrib_vBCRetPrev'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100retTrib_vRetPrev: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vRetPrev'
      Origin = 'retTrib_vRetPrev'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC100md5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 32
    end
    object QC100hash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 32
    end
    object QC100tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QC100status: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QC112: TFDQuery
    MasterSource = DSC100
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      'select * from nf_guia_arrec_entr where nf=:id')
    Left = 208
    Top = 76
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC112id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QC112nf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QC112cod_da: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_da'
      Origin = 'cod_da'
    end
    object QC112uf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object QC112nmro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmro'
      Origin = 'nmro'
      Size = 30
    end
    object QC112cod_aut: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_aut'
      Origin = 'cod_aut'
      Size = 50
    end
    object QC112valor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
    end
    object QC112dt_venc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_venc'
      Origin = 'dt_venc'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QC112dt_pag: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_pag'
      Origin = 'dt_pag'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object DSC100: TDataSource
    DataSet = QC100
    Left = 248
    Top = 50
  end
  object QC113E: TFDQuery
    MasterSource = DSC100
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      
        'select * from nf_referenciada_entr where nf= :id and RefECF_mode' +
        'lo <=0'
      '')
    Left = 208
    Top = 132
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC113Eid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QC113Enf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QC113ErefNFe: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'refNFe'
      Origin = 'refNFe'
      Size = 44
    end
    object QC113ERefNF_cUF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_cUF'
      Origin = 'RefNF_cUF'
    end
    object QC113ERefNF_AAMM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_AAMM'
      Origin = 'RefNF_AAMM'
      Size = 5
    end
    object QC113ERefNF_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_CNPJ'
      Origin = 'RefNF_CNPJ'
    end
    object QC113ERefNF_modelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_modelo'
      Origin = 'RefNF_modelo'
    end
    object QC113ERefNF_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_serie'
      Origin = 'RefNF_serie'
    end
    object QC113ERefNF_nNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_nNF'
      Origin = 'RefNF_nNF'
    end
    object QC113ERefNFP_cUF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_cUF'
      Origin = 'RefNFP_cUF'
    end
    object QC113ERefNFP_AAMM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_AAMM'
      Origin = 'RefNFP_AAMM'
      Size = 5
    end
    object QC113ERefNFP_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_CNPJCPF'
      Origin = 'RefNFP_CNPJCPF'
    end
    object QC113ERefNFP_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_IE'
      Origin = 'RefNFP_IE'
    end
    object QC113ERefNFP_modelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_modelo'
      Origin = 'RefNFP_modelo'
    end
    object QC113ERefNFP_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_serie'
      Origin = 'RefNFP_serie'
    end
    object QC113ERefNFP_nNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_nNF'
      Origin = 'RefNFP_nNF'
    end
    object QC113ERefECF_modelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_modelo'
      Origin = 'RefECF_modelo'
    end
    object QC113ERefECF_nECF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_nECF'
      Origin = 'RefECF_nECF'
      Size = 10
    end
    object QC113ERefECF_nCOO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_nCOO'
      Origin = 'RefECF_nCOO'
      Size = 10
    end
    object QC113ERefCte: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefCte'
      Origin = 'RefCte'
      Size = 44
    end
  end
  object QC114: TFDQuery
    MasterSource = DSC100
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      'select * from nf_referenciada where nf= :id and RefECF_nECF > 0')
    Left = 208
    Top = 240
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC114id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QC114nf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QC114RefECF_modelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_modelo'
      Origin = 'RefECF_modelo'
    end
    object QC114RefECF_nECF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_nECF'
      Origin = 'RefECF_nECF'
      Size = 10
    end
    object QC114RefECF_nCOO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_nCOO'
      Origin = 'RefECF_nCOO'
      Size = 10
    end
    object QC114RefECF_data: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_data'
      Origin = 'RefECF_data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QC114RefECF_Serie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_Serie'
      Origin = 'RefECF_Serie'
    end
  end
  object QC113S: TFDQuery
    MasterSource = DSC100
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      
        'select * from nf_referenciada where nf= :id and RefECF_modelo <=' +
        '0'
      '')
    Left = 208
    Top = 189
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC113Sid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QC113Snf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QC113SrefNFe: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'refNFe'
      Origin = 'refNFe'
      Size = 44
    end
    object QC113SRefNF_cUF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_cUF'
      Origin = 'RefNF_cUF'
    end
    object QC113SRefNF_AAMM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_AAMM'
      Origin = 'RefNF_AAMM'
      Size = 5
    end
    object QC113SRefNF_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_CNPJ'
      Origin = 'RefNF_CNPJ'
    end
    object QC113SRefNF_modelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_modelo'
      Origin = 'RefNF_modelo'
    end
    object QC113SRefNF_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_serie'
      Origin = 'RefNF_serie'
    end
    object QC113SRefNF_nNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_nNF'
      Origin = 'RefNF_nNF'
    end
    object QC113SRefNFP_cUF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_cUF'
      Origin = 'RefNFP_cUF'
    end
    object QC113SRefNFP_AAMM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_AAMM'
      Origin = 'RefNFP_AAMM'
      Size = 5
    end
    object QC113SRefNFP_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_CNPJCPF'
      Origin = 'RefNFP_CNPJCPF'
    end
    object QC113SRefNFP_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_IE'
      Origin = 'RefNFP_IE'
    end
    object QC113SRefNFP_modelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_modelo'
      Origin = 'RefNFP_modelo'
    end
    object QC113SRefNFP_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_serie'
      Origin = 'RefNFP_serie'
    end
    object QC113SRefNFP_nNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_nNF'
      Origin = 'RefNFP_nNF'
    end
    object QC113SRefECF_modelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_modelo'
      Origin = 'RefECF_modelo'
    end
    object QC113SRefECF_nECF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_nECF'
      Origin = 'RefECF_nECF'
      Size = 10
    end
    object QC113SRefECF_nCOO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_nCOO'
      Origin = 'RefECF_nCOO'
      Size = 10
    end
    object QC113SRefCte: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefCte'
      Origin = 'RefCte'
      Size = 44
    end
  end
  object QC170E: TFDQuery
    MasterSource = DSC100
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      'select * from nf_item_entr where nf= :id')
    Left = 208
    Top = 297
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC170Eid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QC170Enf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QC170EnItem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nItem'
      Origin = 'nItem'
    end
    object QC170EcProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cProd'
      Origin = 'cProd'
      Size = 60
    end
    object QC170EcEAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cEAN'
      Origin = 'cEAN'
    end
    object QC170ExProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'xProd'
      Origin = 'xProd'
      Size = 120
    end
    object QC170ENCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object QC170EEXTIPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EXTIPI'
      Origin = 'EXTIPI'
      Size = 3
    end
    object QC170ECFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object QC170EuCom: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uCom'
      Origin = 'uCom'
      Size = 6
    end
    object QC170EqCom: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qCom'
      Origin = 'qCom'
    end
    object QC170EvUnCom: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vUnCom'
      Origin = 'vUnCom'
    end
    object QC170EvProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vProd'
      Origin = 'vProd'
    end
    object QC170EcEANTrib: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cEANTrib'
      Origin = 'cEANTrib'
    end
    object QC170EuTrib: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uTrib'
      Origin = 'uTrib'
      Size = 6
    end
    object QC170EqTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qTrib'
      Origin = 'qTrib'
    end
    object QC170EvUnTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vUnTrib'
      Origin = 'vUnTrib'
    end
    object QC170EvOutro: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vOutro'
      Origin = 'vOutro'
    end
    object QC170EvFrete: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vFrete'
      Origin = 'vFrete'
    end
    object QC170EvSeg: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vSeg'
      Origin = 'vSeg'
    end
    object QC170EvDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vDesc'
      Origin = 'vDesc'
    end
    object QC170EinfAdProd: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'infAdProd'
      Origin = 'infAdProd'
      BlobType = ftMemo
    end
    object QC170EICMS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
    end
    object QC170EICMS_orig: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_orig'
      Origin = 'ICMS_orig'
    end
    object QC170EICMS_modBC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBC'
      Origin = 'ICMS_modBC'
    end
    object QC170EICMS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBC'
      Origin = 'ICMS_vBC'
    end
    object QC170EICMS_pICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
    end
    object QC170EICMS_vICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMS'
      Origin = 'ICMS_vICMS'
    end
    object QC170EICMS_CSOSN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
    end
    object QC170EICMS_pCredSN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pCredSN'
      Origin = 'ICMS_pCredSN'
    end
    object QC170EICMS_vCredICMSSN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vCredICMSSN'
      Origin = 'ICMS_vCredICMSSN'
    end
    object QC170EICMS_modBCST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBCST'
      Origin = 'ICMS_modBCST'
    end
    object QC170EICMS_pMVAST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pMVAST'
      Origin = 'ICMS_pMVAST'
    end
    object QC170EICMS_vTabelaST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vTabelaST'
      Origin = 'ICMS_vTabelaST'
    end
    object QC170EICMS_pRedBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBCST'
      Origin = 'ICMS_pRedBCST'
    end
    object QC170EICMS_vBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCST'
      Origin = 'ICMS_vBCST'
    end
    object QC170EICMS_pICMSST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMSST'
      Origin = 'ICMS_pICMSST'
    end
    object QC170EICMS_vICMSST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSST'
      Origin = 'ICMS_vICMSST'
    end
    object QC170EICMS_pRedBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBC'
      Origin = 'ICMS_pRedBC'
    end
    object QC170EIPI_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CST'
      Origin = 'IPI_CST'
    end
    object QC170EIPI_clEnq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_clEnq'
      Origin = 'IPI_clEnq'
      Size = 5
    end
    object QC170EIPI_CNPJProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CNPJProd'
      Origin = 'IPI_CNPJProd'
    end
    object QC170EIPI_cSelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cSelo'
      Origin = 'IPI_cSelo'
      Size = 60
    end
    object QC170EIPI_qSelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qSelo'
      Origin = 'IPI_qSelo'
    end
    object QC170EIPI_cEnq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cEnq'
      Origin = 'IPI_cEnq'
      Size = 3
    end
    object QC170EIPI_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vBC'
      Origin = 'IPI_vBC'
    end
    object QC170EIPI_qUnid: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qUnid'
      Origin = 'IPI_qUnid'
    end
    object QC170EIPI_vUnid: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vUnid'
      Origin = 'IPI_vUnid'
    end
    object QC170EIPI_pIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_pIPI'
      Origin = 'IPI_pIPI'
    end
    object QC170EIPI_vIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vIPI'
      Origin = 'IPI_vIPI'
    end
    object QC170EII_vBc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vBc'
      Origin = 'II_vBc'
    end
    object QC170EII_vDespAdu: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vDespAdu'
      Origin = 'II_vDespAdu'
    end
    object QC170EII_vII: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vII'
      Origin = 'II_vII'
    end
    object QC170EII_vIOF: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vIOF'
      Origin = 'II_vIOF'
    end
    object QC170EPIS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
    end
    object QC170EPIS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vBC'
      Origin = 'PIS_vBC'
    end
    object QC170EPIS_pPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_pPIS'
      Origin = 'PIS_pPIS'
    end
    object QC170EPIS_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vPIS'
      Origin = 'PIS_vPIS'
    end
    object QC170EPIS_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_qBCProd'
      Origin = 'PIS_qBCProd'
    end
    object QC170EPIS_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vAliqProd'
      Origin = 'PIS_vAliqProd'
    end
    object QC170EPISST_vBc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vBc'
      Origin = 'PISST_vBc'
    end
    object QC170EPISST_pPis: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_pPis'
      Origin = 'PISST_pPis'
    end
    object QC170EPISST_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_qBCProd'
      Origin = 'PISST_qBCProd'
    end
    object QC170EPISST_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vAliqProd'
      Origin = 'PISST_vAliqProd'
    end
    object QC170EPISST_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vPIS'
      Origin = 'PISST_vPIS'
    end
    object QC170ECOFINS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
    end
    object QC170ECOFINS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vBC'
      Origin = 'COFINS_vBC'
    end
    object QC170ECOFINS_pCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_pCOFINS'
      Origin = 'COFINS_pCOFINS'
    end
    object QC170ECOFINS_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vCOFINS'
      Origin = 'COFINS_vCOFINS'
    end
    object QC170ECOFINS_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_qBCProd'
      Origin = 'COFINS_qBCProd'
    end
    object QC170ECOFINS_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vAliqProd'
      Origin = 'COFINS_vAliqProd'
    end
    object QC170ECOFINSST_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vBC'
      Origin = 'COFINSST_vBC'
    end
    object QC170ECOFINSST_pCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_pCOFINS'
      Origin = 'COFINSST_pCOFINS'
    end
    object QC170ECOFINSST_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_qBCProd'
      Origin = 'COFINSST_qBCProd'
    end
    object QC170ECOFINSST_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vAliqProd'
      Origin = 'COFINSST_vAliqProd'
    end
    object QC170ECOFINSST_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vCOFINS'
      Origin = 'COFINSST_vCOFINS'
    end
    object QC170EISSQN_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vBC'
      Origin = 'ISSQN_vBC'
    end
    object QC170EISSQN_vAliq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vAliq'
      Origin = 'ISSQN_vAliq'
    end
    object QC170EISSQN_vISSQN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vISSQN'
      Origin = 'ISSQN_vISSQN'
    end
    object QC170EISSQN_cMunFG: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cMunFG'
      Origin = 'ISSQN_cMunFG'
    end
    object QC170EISSQN_cListServ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cListServ'
      Origin = 'ISSQN_cListServ'
    end
    object QC170EISSQN_SitTrib: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_SitTrib'
      Origin = 'ISSQN_SitTrib'
    end
    object QC170EQTD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object QC170EICMS_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST_inform'
      Origin = 'ICMS_CST_inform'
    end
    object QC170EICMS_orig_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_orig_inform'
      Origin = 'ICMS_orig_inform'
    end
    object QC170EICMS_modBC_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBC_inform'
      Origin = 'ICMS_modBC_inform'
    end
    object QC170EICMS_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBC_inform'
      Origin = 'ICMS_vBC_inform'
    end
    object QC170EICMS_pICMS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS_inform'
      Origin = 'ICMS_pICMS_inform'
    end
    object QC170EICMS_vICMS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMS_inform'
      Origin = 'ICMS_vICMS_inform'
    end
    object QC170EICMS_CSOSN_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CSOSN_inform'
      Origin = 'ICMS_CSOSN_inform'
    end
    object QC170EICMS_pCredSN_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pCredSN_inform'
      Origin = 'ICMS_pCredSN_inform'
    end
    object QC170EICMS_vCredICMSSN_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vCredICMSSN_inform'
      Origin = 'ICMS_vCredICMSSN_inform'
    end
    object QC170EICMS_modBCST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBCST_inform'
      Origin = 'ICMS_modBCST_inform'
    end
    object QC170EICMS_pMVAST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pMVAST_inform'
      Origin = 'ICMS_pMVAST_inform'
    end
    object QC170EICMS_vTabelaST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vTabelaST_inform'
      Origin = 'ICMS_vTabelaST_inform'
    end
    object QC170EICMS_pRedBCST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBCST_inform'
      Origin = 'ICMS_pRedBCST_inform'
    end
    object QC170EICMS_vBCST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCST_inform'
      Origin = 'ICMS_vBCST_inform'
    end
    object QC170EICMS_pICMSST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMSST_inform'
      Origin = 'ICMS_pICMSST_inform'
    end
    object QC170EICMS_vICMSST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSST_inform'
      Origin = 'ICMS_vICMSST_inform'
    end
    object QC170EICMS_pRedBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBC_inform'
      Origin = 'ICMS_pRedBC_inform'
    end
    object QC170EIPI_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CST_inform'
      Origin = 'IPI_CST_inform'
    end
    object QC170EIPI_clEnq_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_clEnq_inform'
      Origin = 'IPI_clEnq_inform'
      Size = 5
    end
    object QC170EIPI_CNPJProd_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CNPJProd_inform'
      Origin = 'IPI_CNPJProd_inform'
    end
    object QC170EIPI_cSelo_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cSelo_inform'
      Origin = 'IPI_cSelo_inform'
      Size = 60
    end
    object QC170EIPI_qSelo_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qSelo_inform'
      Origin = 'IPI_qSelo_inform'
    end
    object QC170EIPI_cEnq_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cEnq_inform'
      Origin = 'IPI_cEnq_inform'
      Size = 3
    end
    object QC170EIPI_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vBC_inform'
      Origin = 'IPI_vBC_inform'
    end
    object QC170EIPI_qUnid_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qUnid_inform'
      Origin = 'IPI_qUnid_inform'
    end
    object QC170EIPI_vUnid_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vUnid_inform'
      Origin = 'IPI_vUnid_inform'
    end
    object QC170EIPI_pIPI_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_pIPI_inform'
      Origin = 'IPI_pIPI_inform'
    end
    object QC170EIPI_vIPI_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vIPI_inform'
      Origin = 'IPI_vIPI_inform'
    end
    object QC170EII_vBc_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vBc_inform'
      Origin = 'II_vBc_inform'
    end
    object QC170EII_vDespAdu_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vDespAdu_inform'
      Origin = 'II_vDespAdu_inform'
    end
    object QC170EII_vII_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vII_inform'
      Origin = 'II_vII_inform'
    end
    object QC170EII_vIOF_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vIOF_inform'
      Origin = 'II_vIOF_inform'
    end
    object QC170EPIS_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_CST_inform'
      Origin = 'PIS_CST_inform'
    end
    object QC170EPIS_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vBC_inform'
      Origin = 'PIS_vBC_inform'
    end
    object QC170EPIS_pPIS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_pPIS_inform'
      Origin = 'PIS_pPIS_inform'
    end
    object QC170EPIS_vPIS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vPIS_inform'
      Origin = 'PIS_vPIS_inform'
    end
    object QC170EPIS_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_qBCProd_inform'
      Origin = 'PIS_qBCProd_inform'
    end
    object QC170EPIS_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vAliqProd_inform'
      Origin = 'PIS_vAliqProd_inform'
    end
    object QC170EPISST_vBc_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vBc_inform'
      Origin = 'PISST_vBc_inform'
    end
    object QC170EPISST_pPis_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_pPis_inform'
      Origin = 'PISST_pPis_inform'
    end
    object QC170EPISST_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_qBCProd_inform'
      Origin = 'PISST_qBCProd_inform'
    end
    object QC170EPISST_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vAliqProd_inform'
      Origin = 'PISST_vAliqProd_inform'
    end
    object QC170EPISST_vPIS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vPIS_inform'
      Origin = 'PISST_vPIS_inform'
    end
    object QC170ECOFINS_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_CST_inform'
      Origin = 'COFINS_CST_inform'
    end
    object QC170ECOFINS_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vBC_inform'
      Origin = 'COFINS_vBC_inform'
    end
    object QC170ECOFINS_pCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_pCOFINS_inform'
      Origin = 'COFINS_pCOFINS_inform'
    end
    object QC170ECOFINS_vCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vCOFINS_inform'
      Origin = 'COFINS_vCOFINS_inform'
    end
    object QC170ECOFINS_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_qBCProd_inform'
      Origin = 'COFINS_qBCProd_inform'
    end
    object QC170ECOFINS_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vAliqProd_inform'
      Origin = 'COFINS_vAliqProd_inform'
    end
    object QC170ECOFINSST_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vBC_inform'
      Origin = 'COFINSST_vBC_inform'
    end
    object QC170ECOFINSST_pCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_pCOFINS_inform'
      Origin = 'COFINSST_pCOFINS_inform'
    end
    object QC170ECOFINSST_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_qBCProd_inform'
      Origin = 'COFINSST_qBCProd_inform'
    end
    object QC170ECOFINSST_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vAliqProd_inform'
      Origin = 'COFINSST_vAliqProd_inform'
    end
    object QC170ECOFINSST_vCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vCOFINS_inform'
      Origin = 'COFINSST_vCOFINS_inform'
    end
    object QC170EISSQN_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vBC_inform'
      Origin = 'ISSQN_vBC_inform'
    end
    object QC170EISSQN_vAliq_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vAliq_inform'
      Origin = 'ISSQN_vAliq_inform'
    end
    object QC170EISSQN_vISSQN_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vISSQN_inform'
      Origin = 'ISSQN_vISSQN_inform'
    end
    object QC170EISSQN_cMunFG_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cMunFG_inform'
      Origin = 'ISSQN_cMunFG_inform'
    end
    object QC170EISSQN_cListServ_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cListServ_inform'
      Origin = 'ISSQN_cListServ_inform'
    end
    object QC170EISSQN_SitTrib_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_SitTrib_inform'
      Origin = 'ISSQN_SitTrib_inform'
    end
    object QC170EICMS_vBCSTRet_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCSTRet_inform'
      Origin = 'ICMS_vBCSTRet_inform'
    end
    object QC170EICMS_vICMSSTRet_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSSTRet_inform'
      Origin = 'ICMS_vICMSSTRet_inform'
    end
    object QC170ECFOP_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_inform'
      Origin = 'CFOP_inform'
      Size = 4
    end
    object QC170Emd5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object QC170Ehash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
  end
  object QC170S: TFDQuery
    MasterSource = DSC100
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      'select * from nf_item where nf= :id')
    Left = 208
    Top = 345
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC170Sid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QC170Snf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QC170SnItem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nItem'
      Origin = 'nItem'
    end
    object QC170ScProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cProd'
      Origin = 'cProd'
      Size = 60
    end
    object QC170ScEAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cEAN'
      Origin = 'cEAN'
    end
    object QC170SxProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'xProd'
      Origin = 'xProd'
      Size = 120
    end
    object QC170SNCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object QC170SEXTIPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EXTIPI'
      Origin = 'EXTIPI'
      Size = 3
    end
    object QC170SCFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object QC170SuCom: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uCom'
      Origin = 'uCom'
      Size = 6
    end
    object QC170SqCom: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qCom'
      Origin = 'qCom'
    end
    object QC170SvUnCom: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vUnCom'
      Origin = 'vUnCom'
    end
    object QC170SvProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vProd'
      Origin = 'vProd'
    end
    object QC170ScEANTrib: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cEANTrib'
      Origin = 'cEANTrib'
    end
    object QC170SuTrib: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uTrib'
      Origin = 'uTrib'
      Size = 6
    end
    object QC170SqTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qTrib'
      Origin = 'qTrib'
    end
    object QC170SvUnTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vUnTrib'
      Origin = 'vUnTrib'
    end
    object QC170SvOutro: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vOutro'
      Origin = 'vOutro'
    end
    object QC170SvFrete: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vFrete'
      Origin = 'vFrete'
    end
    object QC170SvSeg: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vSeg'
      Origin = 'vSeg'
    end
    object QC170SvDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vDesc'
      Origin = 'vDesc'
    end
    object QC170SinfAdProd: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'infAdProd'
      Origin = 'infAdProd'
      BlobType = ftMemo
    end
    object QC170SICMS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
    end
    object QC170SICMS_orig: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_orig'
      Origin = 'ICMS_orig'
    end
    object QC170SICMS_modBC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBC'
      Origin = 'ICMS_modBC'
    end
    object QC170SICMS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBC'
      Origin = 'ICMS_vBC'
    end
    object QC170SICMS_pICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
    end
    object QC170SICMS_vICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMS'
      Origin = 'ICMS_vICMS'
    end
    object QC170SICMS_CSOSN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
    end
    object QC170SICMS_pCredSN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pCredSN'
      Origin = 'ICMS_pCredSN'
    end
    object QC170SICMS_vCredICMSSN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vCredICMSSN'
      Origin = 'ICMS_vCredICMSSN'
    end
    object QC170SICMS_modBCST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBCST'
      Origin = 'ICMS_modBCST'
    end
    object QC170SICMS_pMVAST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pMVAST'
      Origin = 'ICMS_pMVAST'
    end
    object QC170SICMS_vTabelaST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vTabelaST'
      Origin = 'ICMS_vTabelaST'
    end
    object QC170SICMS_pRedBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBCST'
      Origin = 'ICMS_pRedBCST'
    end
    object QC170SICMS_vBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCST'
      Origin = 'ICMS_vBCST'
    end
    object QC170SICMS_pICMSST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMSST'
      Origin = 'ICMS_pICMSST'
    end
    object QC170SICMS_vICMSST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSST'
      Origin = 'ICMS_vICMSST'
    end
    object QC170SICMS_pRedBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBC'
      Origin = 'ICMS_pRedBC'
    end
    object QC170SIPI_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CST'
      Origin = 'IPI_CST'
    end
    object QC170SIPI_clEnq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_clEnq'
      Origin = 'IPI_clEnq'
      Size = 5
    end
    object QC170SIPI_CNPJProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CNPJProd'
      Origin = 'IPI_CNPJProd'
    end
    object QC170SIPI_cSelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cSelo'
      Origin = 'IPI_cSelo'
      Size = 60
    end
    object QC170SIPI_qSelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qSelo'
      Origin = 'IPI_qSelo'
    end
    object QC170SIPI_cEnq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cEnq'
      Origin = 'IPI_cEnq'
      Size = 3
    end
    object QC170SIPI_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vBC'
      Origin = 'IPI_vBC'
    end
    object QC170SIPI_qUnid: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qUnid'
      Origin = 'IPI_qUnid'
    end
    object QC170SIPI_vUnid: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vUnid'
      Origin = 'IPI_vUnid'
    end
    object QC170SIPI_pIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_pIPI'
      Origin = 'IPI_pIPI'
    end
    object QC170SIPI_vIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vIPI'
      Origin = 'IPI_vIPI'
    end
    object QC170SII_vBc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vBc'
      Origin = 'II_vBc'
    end
    object QC170SII_vDespAdu: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vDespAdu'
      Origin = 'II_vDespAdu'
    end
    object QC170SII_vII: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vII'
      Origin = 'II_vII'
    end
    object QC170SII_vIOF: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vIOF'
      Origin = 'II_vIOF'
    end
    object QC170SPIS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
    end
    object QC170SPIS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vBC'
      Origin = 'PIS_vBC'
    end
    object QC170SPIS_pPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_pPIS'
      Origin = 'PIS_pPIS'
    end
    object QC170SPIS_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vPIS'
      Origin = 'PIS_vPIS'
    end
    object QC170SPIS_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_qBCProd'
      Origin = 'PIS_qBCProd'
    end
    object QC170SPIS_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vAliqProd'
      Origin = 'PIS_vAliqProd'
    end
    object QC170SPISST_vBc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vBc'
      Origin = 'PISST_vBc'
    end
    object QC170SPISST_pPis: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_pPis'
      Origin = 'PISST_pPis'
    end
    object QC170SPISST_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_qBCProd'
      Origin = 'PISST_qBCProd'
    end
    object QC170SPISST_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vAliqProd'
      Origin = 'PISST_vAliqProd'
    end
    object QC170SPISST_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vPIS'
      Origin = 'PISST_vPIS'
    end
    object QC170SCOFINS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
    end
    object QC170SCOFINS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vBC'
      Origin = 'COFINS_vBC'
    end
    object QC170SCOFINS_pCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_pCOFINS'
      Origin = 'COFINS_pCOFINS'
    end
    object QC170SCOFINS_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vCOFINS'
      Origin = 'COFINS_vCOFINS'
    end
    object QC170SCOFINS_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_qBCProd'
      Origin = 'COFINS_qBCProd'
    end
    object QC170SCOFINS_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vAliqProd'
      Origin = 'COFINS_vAliqProd'
    end
    object QC170SCOFINSST_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vBC'
      Origin = 'COFINSST_vBC'
    end
    object QC170SCOFINSST_pCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_pCOFINS'
      Origin = 'COFINSST_pCOFINS'
    end
    object QC170SCOFINSST_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_qBCProd'
      Origin = 'COFINSST_qBCProd'
    end
    object QC170SCOFINSST_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vAliqProd'
      Origin = 'COFINSST_vAliqProd'
    end
    object QC170SCOFINSST_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vCOFINS'
      Origin = 'COFINSST_vCOFINS'
    end
    object QC170SISSQN_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vBC'
      Origin = 'ISSQN_vBC'
    end
    object QC170SISSQN_vAliq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vAliq'
      Origin = 'ISSQN_vAliq'
    end
    object QC170SISSQN_vISSQN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vISSQN'
      Origin = 'ISSQN_vISSQN'
    end
    object QC170SISSQN_cMunFG: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cMunFG'
      Origin = 'ISSQN_cMunFG'
    end
    object QC170SISSQN_cListServ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cListServ'
      Origin = 'ISSQN_cListServ'
    end
    object QC170SISSQN_SitTrib: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_SitTrib'
      Origin = 'ISSQN_SitTrib'
    end
    object QC170SICMS_vBCSTRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCSTRet'
      Origin = 'ICMS_vBCSTRet'
    end
    object QC170SICMS_vICMSSTRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSSTRet'
      Origin = 'ICMS_vICMSSTRet'
    end
    object QC170SQTD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object QC170SICMS_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST_inform'
      Origin = 'ICMS_CST_inform'
    end
    object QC170SICMS_orig_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_orig_inform'
      Origin = 'ICMS_orig_inform'
    end
    object QC170SICMS_modBC_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBC_inform'
      Origin = 'ICMS_modBC_inform'
    end
    object QC170SICMS_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBC_inform'
      Origin = 'ICMS_vBC_inform'
    end
    object QC170SICMS_pICMS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS_inform'
      Origin = 'ICMS_pICMS_inform'
    end
    object QC170SICMS_vICMS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMS_inform'
      Origin = 'ICMS_vICMS_inform'
    end
    object QC170SICMS_CSOSN_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CSOSN_inform'
      Origin = 'ICMS_CSOSN_inform'
    end
    object QC170SICMS_pCredSN_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pCredSN_inform'
      Origin = 'ICMS_pCredSN_inform'
    end
    object QC170SICMS_vCredICMSSN_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vCredICMSSN_inform'
      Origin = 'ICMS_vCredICMSSN_inform'
    end
    object QC170SICMS_modBCST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBCST_inform'
      Origin = 'ICMS_modBCST_inform'
    end
    object QC170SICMS_pMVAST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pMVAST_inform'
      Origin = 'ICMS_pMVAST_inform'
    end
    object QC170SICMS_vTabelaST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vTabelaST_inform'
      Origin = 'ICMS_vTabelaST_inform'
    end
    object QC170SICMS_pRedBCST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBCST_inform'
      Origin = 'ICMS_pRedBCST_inform'
    end
    object QC170SICMS_vBCST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCST_inform'
      Origin = 'ICMS_vBCST_inform'
    end
    object QC170SICMS_pICMSST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMSST_inform'
      Origin = 'ICMS_pICMSST_inform'
    end
    object QC170SICMS_vICMSST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSST_inform'
      Origin = 'ICMS_vICMSST_inform'
    end
    object QC170SICMS_pRedBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBC_inform'
      Origin = 'ICMS_pRedBC_inform'
    end
    object QC170SIPI_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CST_inform'
      Origin = 'IPI_CST_inform'
    end
    object QC170SIPI_clEnq_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_clEnq_inform'
      Origin = 'IPI_clEnq_inform'
      Size = 5
    end
    object QC170SIPI_CNPJProd_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CNPJProd_inform'
      Origin = 'IPI_CNPJProd_inform'
    end
    object QC170SIPI_cSelo_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cSelo_inform'
      Origin = 'IPI_cSelo_inform'
      Size = 60
    end
    object QC170SIPI_qSelo_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qSelo_inform'
      Origin = 'IPI_qSelo_inform'
    end
    object QC170SIPI_cEnq_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cEnq_inform'
      Origin = 'IPI_cEnq_inform'
      Size = 3
    end
    object QC170SIPI_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vBC_inform'
      Origin = 'IPI_vBC_inform'
    end
    object QC170SIPI_qUnid_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qUnid_inform'
      Origin = 'IPI_qUnid_inform'
    end
    object QC170SIPI_vUnid_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vUnid_inform'
      Origin = 'IPI_vUnid_inform'
    end
    object QC170SIPI_pIPI_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_pIPI_inform'
      Origin = 'IPI_pIPI_inform'
    end
    object QC170SIPI_vIPI_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vIPI_inform'
      Origin = 'IPI_vIPI_inform'
    end
    object QC170SII_vBc_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vBc_inform'
      Origin = 'II_vBc_inform'
    end
    object QC170SII_vDespAdu_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vDespAdu_inform'
      Origin = 'II_vDespAdu_inform'
    end
    object QC170SII_vII_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vII_inform'
      Origin = 'II_vII_inform'
    end
    object QC170SII_vIOF_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vIOF_inform'
      Origin = 'II_vIOF_inform'
    end
    object QC170SPIS_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_CST_inform'
      Origin = 'PIS_CST_inform'
    end
    object QC170SPIS_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vBC_inform'
      Origin = 'PIS_vBC_inform'
    end
    object QC170SPIS_pPIS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_pPIS_inform'
      Origin = 'PIS_pPIS_inform'
    end
    object QC170SPIS_vPIS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vPIS_inform'
      Origin = 'PIS_vPIS_inform'
    end
    object QC170SPIS_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_qBCProd_inform'
      Origin = 'PIS_qBCProd_inform'
    end
    object QC170SPIS_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vAliqProd_inform'
      Origin = 'PIS_vAliqProd_inform'
    end
    object QC170SPISST_vBc_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vBc_inform'
      Origin = 'PISST_vBc_inform'
    end
    object QC170SPISST_pPis_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_pPis_inform'
      Origin = 'PISST_pPis_inform'
    end
    object QC170SPISST_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_qBCProd_inform'
      Origin = 'PISST_qBCProd_inform'
    end
    object QC170SPISST_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vAliqProd_inform'
      Origin = 'PISST_vAliqProd_inform'
    end
    object QC170SPISST_vPIS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vPIS_inform'
      Origin = 'PISST_vPIS_inform'
    end
    object QC170SCOFINS_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_CST_inform'
      Origin = 'COFINS_CST_inform'
    end
    object QC170SCOFINS_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vBC_inform'
      Origin = 'COFINS_vBC_inform'
    end
    object QC170SCOFINS_pCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_pCOFINS_inform'
      Origin = 'COFINS_pCOFINS_inform'
    end
    object QC170SCOFINS_vCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vCOFINS_inform'
      Origin = 'COFINS_vCOFINS_inform'
    end
    object QC170SCOFINS_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_qBCProd_inform'
      Origin = 'COFINS_qBCProd_inform'
    end
    object QC170SCOFINS_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vAliqProd_inform'
      Origin = 'COFINS_vAliqProd_inform'
    end
    object QC170SCOFINSST_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vBC_inform'
      Origin = 'COFINSST_vBC_inform'
    end
    object QC170SCOFINSST_pCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_pCOFINS_inform'
      Origin = 'COFINSST_pCOFINS_inform'
    end
    object QC170SCOFINSST_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_qBCProd_inform'
      Origin = 'COFINSST_qBCProd_inform'
    end
    object QC170SCOFINSST_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vAliqProd_inform'
      Origin = 'COFINSST_vAliqProd_inform'
    end
    object QC170SCOFINSST_vCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vCOFINS_inform'
      Origin = 'COFINSST_vCOFINS_inform'
    end
    object QC170SISSQN_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vBC_inform'
      Origin = 'ISSQN_vBC_inform'
    end
    object QC170SISSQN_vAliq_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vAliq_inform'
      Origin = 'ISSQN_vAliq_inform'
    end
    object QC170SISSQN_vISSQN_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vISSQN_inform'
      Origin = 'ISSQN_vISSQN_inform'
    end
    object QC170SISSQN_cMunFG_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cMunFG_inform'
      Origin = 'ISSQN_cMunFG_inform'
    end
    object QC170SISSQN_cListServ_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cListServ_inform'
      Origin = 'ISSQN_cListServ_inform'
    end
    object QC170SISSQN_SitTrib_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_SitTrib_inform'
      Origin = 'ISSQN_SitTrib_inform'
    end
    object QC170SICMS_vBCSTRet_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCSTRet_inform'
      Origin = 'ICMS_vBCSTRet_inform'
    end
    object QC170SICMS_vICMSSTRet_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSSTRet_inform'
      Origin = 'ICMS_vICMSSTRet_inform'
    end
    object QC170SICMS_motDesICMS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_motDesICMS'
      Origin = 'ICMS_motDesICMS'
    end
    object QC170SICMS_motDesICMS_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_motDesICMS_inform'
      Origin = 'ICMS_motDesICMS_inform'
    end
    object QC170SvTotTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vTotTrib'
      Origin = 'vTotTrib'
    end
    object QC170Smd5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object QC170Shash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
  end
  object QC190E: TFDQuery
    MasterSource = DSC100
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      'select 0 as ICMS_CSOSN, '
      'ICMS_CST_inform as ICMS_CST, '
      'CFOP_inform as CFOP, '
      'ICMS_pICMS, '
      'sum(vProd) as vProd,'
      'sum(ICMS_vBC)as vBC, sum(ICMS_vICMS) as ICMS_vICMS,'
      'sum(ICMS_vBCST) as ICMS_vBCST, '
      'sum(ICMS_vICMSST) as ICMS_vICMSST,'
      'sum((ICMS_vBC*ICMS_pRedBC)/100) as vRedBC,'
      'sum(IPI_vIPI) as IPI_vIPI,'
      
        'sum(vProd+vOutro+vFrete+vSeg+ICMS_vICMSST+IPI_vIPI-vDesc) as vTo' +
        'tal '
      'from nf_item_entr'
      'where ICMS_CSOSN_inform = 0 and nf=:id'
      'group by '
      'ICMS_CST_inform, CFOP, ICMS_pICMS'
      'union'
      'select ICMS_CSOSN_inform, '
      '0, '
      'CFOP_inform, ICMS_pICMS,'
      'sum(vProd) as vProd,'
      'sum(ICMS_vBC)as vBC, sum(ICMS_vICMS) as ICMS_vICMS,'
      'sum(ICMS_vBCST) as ICMS_vBCST, '
      'sum(ICMS_vICMSST) as ICMS_vICMSST,'
      'sum((ICMS_vBC*ICMS_pRedBC)/100) as vRedBC,'
      'sum(IPI_vIPI) as IPI_vIPI,'
      
        'sum(vProd+vOutro+vFrete+vSeg+ICMS_vICMSST+IPI_vIPI-vDesc) as vTo' +
        'tal'
      'from nf_item_entr'
      'where ICMS_CSOSN_inform > 0 and nf=:id'
      'group by '
      'ICMS_CSOSN_inform, CFOP, ICMS_pICMS')
    Left = 208
    Top = 396
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC190EICMS_CSOSN: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190EICMS_CST: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190ECFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QC190EICMS_pICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190EvProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vProd'
      Origin = 'vProd'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190EvBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vBC'
      Origin = 'vBC'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190EICMS_vICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMS'
      Origin = 'ICMS_vICMS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190EICMS_vBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCST'
      Origin = 'ICMS_vBCST'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190EICMS_vICMSST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSST'
      Origin = 'ICMS_vICMSST'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190EvRedBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vRedBC'
      Origin = 'vRedBC'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190EIPI_vIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vIPI'
      Origin = 'IPI_vIPI'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190EvTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vTotal'
      Origin = 'vTotal'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QC190S: TFDQuery
    MasterSource = DSC100
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      'select 0 as ICMS_CSOSN, '
      'ICMS_CST, '
      'CFOP, '
      'ICMS_pICMS, '
      'sum(vProd) as vProd,'
      'sum(ICMS_vBC)as vBC, '
      'sum(ICMS_vICMS) as ICMS_vICMS,'
      'sum(ICMS_vBCST) as ICMS_vBCST, '
      'sum(ICMS_vICMSST) as ICMS_vICMSST,'
      'sum((ICMS_vBC*ICMS_pRedBC)/100) as vRedBC,'
      'sum(IPI_vIPI) as IPI_vIPI,'
      
        'sum(vProd+vOutro+vFrete+vSeg+ICMS_vICMSST+IPI_vIPI-vDesc) as vTo' +
        'tal'
      'from nf_item'
      'where ICMS_CSOSN = 0 and nf=:id'
      'group by '
      'ICMS_CST, CFOP, ICMS_pICMS'
      'union'
      'select ICMS_CSOSN, '
      '0, '
      'CFOP,'
      'ICMS_pICMS, '
      'sum(vProd) as vProd,'
      'sum(ICMS_vBC)as vBC, '
      'sum(ICMS_vICMS) as ICMS_vICMS,'
      'sum(ICMS_vBCST) as ICMS_vBCST, '
      'sum(ICMS_vICMSST) as ICMS_vICMSST,'
      'sum((ICMS_vBC*ICMS_pRedBC)/100) as vRedBC,'
      'sum(IPI_vIPI) as IPI_vIPI,'
      
        'sum(vProd+vOutro+vFrete+vSeg+ICMS_vICMSST+IPI_vIPI-vDesc) as vTo' +
        'tal'
      'from nf_item'
      'where ICMS_CSOSN > 0 and nf=:id'
      'group by '
      'ICMS_CSOSN, CFOP, ICMS_pICMS')
    Left = 208
    Top = 452
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC190SICMS_CSOSN: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190SICMS_CST: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190SCFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QC190SICMS_pICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190SvProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vProd'
      Origin = 'vProd'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190SvBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vBC'
      Origin = 'vBC'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190SICMS_vICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMS'
      Origin = 'ICMS_vICMS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190SICMS_vBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCST'
      Origin = 'ICMS_vBCST'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190SICMS_vICMSST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSST'
      Origin = 'ICMS_vICMSST'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190SvRedBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vRedBC'
      Origin = 'vRedBC'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190SIPI_vIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vIPI'
      Origin = 'IPI_vIPI'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC190SvTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vTotal'
      Origin = 'vTotal'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QC300: TFDQuery
    Connection = DM.DB
    SQL.Strings = (
      'select dt_movi, '
      'min(serie_d) as nmro_nf_ini,  '
      'max(serie_d) as nmro_nf_fin,'
      #39'001'#39' as serie, '
      'sum(vr_doc) as vr_doc, '
      'sum(vpis)as vpis, '
      'sum(vcofins) as vcofins '
      'from vw_sped_c300'
      'where '
      'dt_movi between :d1 and :d2 '
      'group by'
      'dt_movi')
    Left = 311
    Top = 12
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
    object QC300dt_movi: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_movi'
      Origin = 'dt_movi'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QC300nmro_nf_ini: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nmro_nf_ini'
      Origin = 'nmro_nf_ini'
    end
    object QC300nmro_nf_fin: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nmro_nf_fin'
      Origin = 'nmro_nf_fin'
    end
    object QC300serie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'serie'
      Origin = 'serie'
      Size = 3
    end
    object QC300vr_doc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_doc'
      Origin = 'vr_doc'
    end
    object QC300vpis: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vpis'
      Origin = 'vpis'
    end
    object QC300vcofins: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vcofins'
      Origin = 'vcofins'
    end
  end
  object QC310: TFDQuery
    MasterSource = DSC300
    MasterFields = 'dt_movi'
    Connection = DM.DB
    SQL.Strings = (
      'select v.serie_d as nmro_nf'
      'from'
      'venda v, '
      'paf_r04 r4, '
      'paf_r02 r2'
      'where'
      'v.serie_d > 0 and '
      'r2.dt_movi =:dt_movi and'
      'r2.num_ecf=v.terminal and'
      'r4.r02=r2.id and'
      'r4.coo=v.coo and'
      'r4.ccf=v.ccf and'
      'r4.canc='#39'S'#39
      'order by '
      'v.serie_d')
    Left = 311
    Top = 76
    ParamData = <
      item
        Name = 'DT_MOVI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object QC310nmro_nf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nmro_nf'
      Origin = 'serie_d'
    end
  end
  object QC320: TFDQuery
    MasterSource = DSC300
    MasterFields = 'dt_movi'
    Connection = DM.DB
    SQL.Strings = (
      'select r4.id, r5.id as idr5, '
      'if(vi.ICMS_CSOSN>0,vi.ICMS_CSOSN,vi.ICMS_CST) as cst, '
      'vi.CFOP as cfop,'
      
        'Round(if(substr(r5.cod_totaliz,1,1) = '#39'0'#39', substr(r5.cod_totaliz' +
        ',4,4), substr(r5.cod_totaliz,1,1))/100,2) as aliq,'
      'sum(r5.total) as vr_oper,'
      'sum(if(substr(cod_totaliz,1,1) = '#39'0'#39', r5.total, 0)) as bc,'
      
        'sum(Round((if(substr(r5.cod_totaliz,1,1) = '#39'0'#39', substr(r5.cod_to' +
        'taliz,4,4), substr(r5.cod_totaliz,1,1)) * if(substr(r5.cod_total' +
        'iz,1,1) = '#39'0'#39', r5.total, 0))/10000,2)) as vr_icms'
      ''
      'from'
      ''
      'venda v, '
      'venda_item vi, '
      'paf_r04 r4, '
      'paf_r02 r2,'
      'paf_r05 r5'
      ''
      'where'
      ''
      'v.serie_d > 0 and '
      'r2.dt_movi between :d1 and :d2 and'
      'r2.num_ecf=v.terminal and'
      'r4.r02=r2.id and'
      'r4.coo=v.coo and'
      'r4.ccf=v.ccf and'
      'r4.canc='#39'N'#39' and'
      'vi.venda=v.id and'
      'vi.nItem=r5.item and'
      'r5.r04=r4.id and'
      'r4.canc='#39'N'#39
      'group by'
      'cst, cfop, aliq')
    Left = 311
    Top = 132
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
    object QC320id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QC320idr5: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idr5'
      Origin = 'idr5'
    end
    object QC320cfop: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cfop'
      Origin = 'cfop'
      Size = 4
    end
    object QC320aliq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'aliq'
      Origin = 'aliq'
    end
    object QC320vr_oper: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_oper'
      Origin = 'vr_oper'
    end
    object QC320bc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'bc'
      Origin = 'bc'
    end
    object QC320vr_icms: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_icms'
      Origin = 'vr_icms'
    end
    object QC320cst: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'cst'
      Origin = 'cst'
    end
  end
  object DSC300: TDataSource
    DataSet = QC300
    Left = 350
    Top = 50
  end
  object QC321: TFDQuery
    MasterSource = DSC320
    MasterFields = 'id;cst;cfop'
    Connection = DM.DB
    SQL.Strings = (
      
        'select r5.cProd as codigo, sum(r5.qtd) as qtd, r5.unid, sum(r5.t' +
        'otal) as total,'
      'sum(r5.desconto)as desconto, '
      'sum(if(substr(r5.cod_totaliz,1,1) = '#39'0'#39', r5.total, 0)) as bc,'
      
        'Round(if(substr(r5.cod_totaliz,1,1) = '#39'0'#39', substr(r5.cod_totaliz' +
        ',4,4), substr(r5.cod_totaliz,1,1))/100,2) as aliq,'
      
        'sum(Round((if(substr(r5.cod_totaliz,1,1) = '#39'0'#39', substr(r5.cod_to' +
        'taliz,4,4), substr(r5.cod_totaliz,1,1)) * if(substr(r5.cod_total' +
        'iz,1,1) = '#39'0'#39', r5.total, 0))/10000,2)) as vr_icms,'
      'sum(vi.PIS_vPIS) as vpis, '
      'sum(vi.COFINS_vCOFINS) as vcofins'
      'from'
      ''
      'venda v, '
      'venda_item vi, '
      'paf_r04 r4, '
      'paf_r02 r2,'
      'paf_r05 r5'
      ''
      'where'
      ''
      'v.serie_d > 0 and '
      'r4.id=:id and'
      'vi.cfop=:cfop and'
      'vi.ICMS_CST=:cst and '
      'r2.num_ecf=v.terminal and'
      'r4.r02=r2.id and'
      'r4.coo=v.coo and'
      'r4.ccf=v.ccf and'
      'vi.venda=v.id and'
      'vi.nItem=r5.item and'
      'r5.r04=r4.id and'
      'r4.canc='#39'N'#39
      'group by'
      'r5.codigo')
    Left = 311
    Top = 189
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CFOP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CST'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC321codigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
    end
    object QC321qtd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
    end
    object QC321unid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'unid'
      Origin = 'unid'
      Size = 3
    end
    object QC321total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
    end
    object QC321desconto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'desconto'
      Origin = 'desconto'
    end
    object QC321bc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'bc'
      Origin = 'bc'
    end
    object QC321aliq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'aliq'
      Origin = 'aliq'
    end
    object QC321vr_icms: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_icms'
      Origin = 'vr_icms'
    end
    object QC321vpis: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vpis'
      Origin = 'vpis'
    end
    object QC321vcofins: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vcofins'
      Origin = 'vcofins'
    end
  end
  object QC350: TFDQuery
    Connection = DM.DB
    SQL.Strings = (
      'select r4.id as id,'
      'v.serie_d as nmro_nf, '
      #39'001'#39' as serie, '
      'r4.cnpj_cliente,'
      'r2.dt_movi,'
      'r4.subtotal as vr_merc,'
      'r4.desconto as vr_desc,'
      'r4.vr_liq as vr_doc, '
      'sum(vi.PIS_vPIS) as vpis, '
      'sum(vi.COFINS_vCOFINS) as vcofins'
      ''
      'from'
      ''
      'venda v, '
      'venda_item vi, '
      'paf_r04 r4, '
      'paf_r02 r2'
      ''
      'where'
      ''
      'v.serie_d > 0 and '
      'r2.dt_movi '
      'between :d1 and :d2 and'
      'r4.canc ='#39'N'#39' and'
      'r2.num_ecf=v.terminal and'
      'r4.r02=r2.id and'
      'r4.coo=v.coo and'
      'r4.ccf=v.ccf and'
      'vi.venda=v.id'
      'group by'
      'r2.dt_movi, v.serie_d')
    Left = 414
    Top = 12
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
    object QC350id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QC350nmro_nf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nmro_nf'
      Origin = 'serie_d'
    end
    object QC350serie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'serie'
      Origin = 'serie'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QC350cnpj_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj_cliente'
      Origin = 'cnpj_cliente'
      ProviderFlags = []
      ReadOnly = True
      Size = 14
    end
    object QC350dt_movi: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_movi'
      Origin = 'dt_movi'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QC350vr_merc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_merc'
      Origin = 'subtotal'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC350vr_desc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_desc'
      Origin = 'desconto'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC350vr_doc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_doc'
      Origin = 'vr_liq'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC350vpis: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vpis'
      Origin = 'PIS_vPIS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC350vcofins: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vcofins'
      Origin = 'COFINS_vCOFINS'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QC370: TFDQuery
    MasterSource = DSC350
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      
        'select r5.item, r5.cProd as codigo, r5.qtd, r5.unid, r5.total,r5' +
        '.desconto '
      'from'
      'venda v,  '
      'paf_r04 r4, '
      'paf_r02 r2,'
      'paf_r05 r5'
      'where'
      'v.serie_d > 0 and '
      'r5.r04= :id and'
      'r2.num_ecf=v.terminal and'
      'r4.r02=r2.id and'
      'r4.coo=v.coo and'
      'r4.ccf=v.ccf and'
      'r5.r04=r4.id and'
      'r4.canc='#39'N'#39
      'order by'
      'r5.item')
    Left = 414
    Top = 76
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC370item: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'item'
      Origin = 'item'
    end
    object QC370codigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
    end
    object QC370qtd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
    end
    object QC370unid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'unid'
      Origin = 'unid'
      Size = 3
    end
    object QC370total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
    end
    object QC370desconto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'desconto'
      Origin = 'desconto'
    end
  end
  object DSC350: TDataSource
    DataSet = QC350
    Left = 453
    Top = 50
  end
  object QC390: TFDQuery
    MasterSource = DSC350
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      'select if(vi.ICMS_CSOSN>0,vi.ICMS_CSOSN,vi.ICMS_CST) as cst, '
      'vi.CFOP as cfop,'
      
        'Round(if(substr(r5.cod_totaliz,1,1) = '#39'0'#39', substr(r5.cod_totaliz' +
        ',4,4), substr(r5.cod_totaliz,1,1))/100,2) as aliq,'
      'sum(r5.total) as vr_oper,'
      'sum(if(substr(r5.cod_totaliz,1,1) = '#39'0'#39', r5.total, 0)) as bc,'
      
        'sum(Round((if(substr(r5.cod_totaliz,1,1) = '#39'0'#39', substr(r5.cod_to' +
        'taliz,4,4), substr(r5.cod_totaliz,1,1)) * if(substr(r5.cod_total' +
        'iz,1,1) = '#39'0'#39', r5.total, 0))/10000,2)) as vr_icms'
      ''
      'from'
      'paf_r04 r4, '
      'paf_r05 r5,'
      'venda v, '
      'venda_item vi'
      ''
      'where'
      'r4.id=:id and'
      'r5.r04= r4.id and'
      'r4.canc='#39'N'#39' and'
      'v.serie_d>0 and'
      'v.coo=r4.coo and '
      'v.ccf=r4.ccf and'
      'vi.venda=v.id and'
      'vi.nItem=r5.item '
      'group by'
      'cst, cfop, aliq'
      '')
    Left = 414
    Top = 132
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC390cst: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'cst'
      Origin = 'cst'
    end
    object QC390cfop: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cfop'
      Origin = 'cfop'
      Size = 4
    end
    object QC390aliq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'aliq'
      Origin = 'aliq'
    end
    object QC390vr_oper: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_oper'
      Origin = 'vr_oper'
    end
    object QC390bc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'bc'
      Origin = 'bc'
    end
    object QC390vr_icms: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_icms'
      Origin = 'vr_icms'
    end
  end
  object QC400: TFDQuery
    Connection = DM.DB
    SQL.Strings = (
      'select * from paf_r01 order by nmro')
    Left = 572
    Top = 11
    object QC400id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QC400nmro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nmro'
      Origin = 'nmro'
    end
    object QC400serie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'serie'
      Origin = 'serie'
    end
    object QC400mf_adic: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mf_adic'
      Origin = 'mf_adic'
      FixedChar = True
      Size = 1
    end
    object QC400tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 7
    end
    object QC400marca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca'
      Origin = 'marca'
    end
    object QC400modelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'modelo'
      Origin = 'modelo'
    end
    object QC400versao_sb: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'versao_sb'
      Origin = 'versao_sb'
      Size = 10
    end
    object QC400data_sb: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_sb'
      Origin = 'data_sb'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QC400hora_sb: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hora_sb'
      Origin = 'hora_sb'
      Size = 6
    end
  end
  object DSC400: TDataSource
    DataSet = QC400
    Left = 609
    Top = 50
  end
  object QC405: TFDQuery
    MasterSource = DSC400
    MasterFields = 'nmro'
    Connection = DM.DB
    SQL.Strings = (
      'select * from paf_r02 '
      'where '
      'dt_movi between :d1 and :d2 and'
      'num_ecf=:nmro'
      'order by '
      'crz')
    Left = 570
    Top = 76
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
      end
      item
        Name = 'NMRO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC405id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QC405num_ecf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'num_ecf'
      Origin = 'num_ecf'
    end
    object QC405num_usu: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'num_usu'
      Origin = 'num_usu'
    end
    object QC405serie_ecf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'serie_ecf'
      Origin = 'serie_ecf'
    end
    object QC405mf_adic: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mf_adic'
      Origin = 'mf_adic'
      FixedChar = True
      Size = 1
    end
    object QC405crz: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'crz'
      Origin = 'crz'
    end
    object QC405coo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'coo'
      Origin = 'coo'
    end
    object QC405coo_inicial: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'coo_inicial'
      Origin = 'coo_inicial'
    end
    object QC405cro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cro'
      Origin = 'cro'
    end
    object QC405dt_movi: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_movi'
      Origin = 'dt_movi'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QC405dt_em: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_em'
      Origin = 'dt_em'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QC405hora_em: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'hora_em'
      Origin = 'hora_em'
      DisplayFormat = 'hh:mm'
    end
    object QC405venda_bruta: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'venda_bruta'
      Origin = 'venda_bruta'
    end
    object QC405valor_gt: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_gt'
      Origin = 'valor_gt'
    end
    object QC405issqn: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'issqn'
      Origin = 'issqn'
      FixedChar = True
      Size = 1
    end
  end
  object QC410: TFDQuery
    MasterSource = DSC405
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      'select '
      'sum(vi.PIS_vPIS) as vpis, '
      'sum(vi.COFINS_vCOFINS) as vcofins '
      'from'
      'venda v, '
      'venda_item vi,'
      'paf_r02 r2'
      'where'
      'v.terminal=r2.num_ecf and'
      'vi.venda=v.id and'
      'r2.id=:id')
    Left = 570
    Top = 124
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC410vpis: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vpis'
      Origin = 'vpis'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC410vcofins: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vcofins'
      Origin = 'vcofins'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSC405: TDataSource
    DataSet = QC405
    Left = 610
    Top = 105
  end
  object QC420: TFDQuery
    MasterSource = DSC405
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      'select * from paf_r03 where r02=:id'
      'order by cod_tot_parcial')
    Left = 570
    Top = 176
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC420id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QC420r02: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'r02'
      Origin = 'r02'
    end
    object QC420cod_tot_parcial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_tot_parcial'
      Origin = 'cod_tot_parcial'
      Size = 7
    end
    object QC420valor_tot_parcial: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_tot_parcial'
      Origin = 'valor_tot_parcial'
    end
  end
  object QC425: TFDQuery
    MasterSource = DSC405
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      'select r5.cProd as codigo,'
      'r5.unid,'
      'sum(r5.qtd) as qtd,'
      'sum(vi.ICMS_vBC) as vritem,'
      'sum(vi.PIS_vPIS) as vpis,'
      'sum(vi.COFINS_vCOFINS) as vcofins'
      'from'
      'paf_r04 r4,'
      'paf_r05 r5,'
      'venda v,'
      'venda_item vi'
      'where'
      'r4.r02=:id and'
      'r5.cod_totaliz = :cod_tot_parcial and '
      'r4.coo=v.coo and'
      'r4.ccf=v.ccf and'
      'r5.r04=r4.id and'
      'r4.canc='#39'N'#39' and'
      'r5.canc='#39'N'#39' and'
      'vi.venda=v.id and'
      'vi.cProd=r5.cProd'
      'group by '
      'codigo, unid')
    Left = 570
    Top = 224
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_TOT_PARCIAL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object QC425codigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
    end
    object QC425unid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'unid'
      Origin = 'unid'
      Size = 3
    end
    object QC425qtd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
    end
    object QC425vritem: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vritem'
      Origin = 'vritem'
    end
    object QC425vpis: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vpis'
      Origin = 'vpis'
    end
    object QC425vcofins: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vcofins'
      Origin = 'vcofins'
    end
  end
  object QC460: TFDQuery
    MasterSource = DSC405
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      'select r4.id,'
      #39'2D'#39' as cod_mod,'
      'if(r4.canc='#39'S'#39','#39'02'#39','#39'00'#39') as cod_sit,'
      'r4.coo,'
      'r4.ccf,'
      'r4.dt_em,'
      'r4.vr_liq,'
      'sum(vi.PIS_vPIS) as vpis,'
      'sum(vi.COFINS_vCOFINS) as vcofins,'
      'r4.cnpj_cliente,'
      'r4.nome_cliente'
      'from'
      'paf_r04 r4,'
      'paf_r05 r5,'
      'venda v,'
      'venda_item vi'
      'where'
      'r4.r02=:id and'
      'r4.coo=v.coo and'
      'r4.ccf=v.ccf and'
      'r5.r04=r4.id and'
      'vi.venda=v.id and'
      'vi.nItem=r5.item '
      'group by'
      'coo')
    Left = 570
    Top = 276
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC460id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QC460cod_mod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_mod'
      Origin = 'cod_mod'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QC460cod_sit: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_sit'
      Origin = 'cod_sit'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QC460coo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'coo'
      Origin = 'coo'
    end
    object QC460ccf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ccf'
      Origin = 'ccf'
    end
    object QC460dt_em: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_em'
      Origin = 'dt_em'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QC460vr_liq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_liq'
      Origin = 'vr_liq'
    end
    object QC460vpis: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vpis'
      Origin = 'vpis'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC460vcofins: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vcofins'
      Origin = 'vcofins'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC460cnpj_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj_cliente'
      Origin = 'cnpj_cliente'
      Size = 14
    end
    object QC460nome_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_cliente'
      Origin = 'nome_cliente'
      Size = 40
    end
  end
  object QC470: TFDQuery
    MasterSource = DSC460
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      'use autocom;'
      ''
      'select r5.cProd,'
      'r5.qtd,'
      'r5.qtd_canc,'
      'r5.unid,'
      'vi.ICMS_vBC as total,'
      
        'Round(if(substr(r5.cod_totaliz,1,1) = '#39'0'#39', substr(r5.cod_totaliz' +
        ',4,4), substr(r5.cod_totaliz,1,1))/100,2) as aliq,'
      'if(vi.ICMS_CSOSN>0,vi.ICMS_CSOSN,vi.ICMS_CST) as cst, '
      'vi.CFOP as cfop,'
      '(vi.PIS_vPIS) as vpis,'
      '(vi.COFINS_vCOFINS) as vcofins'
      'from'
      'paf_r04 r4,'
      'paf_r05 r5,'
      'venda v,'
      'venda_item vi'
      'where'
      'r4.id=:id and'
      'r4.coo=v.coo and'
      'r4.ccf=v.ccf and'
      'r5.r04=r4.id and'
      'r5.canc='#39'N'#39' and'
      'vi.venda=v.id and'
      'vi.nItem=r5.item ')
    Left = 570
    Top = 348
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC470cProd: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cProd'
      Origin = 'cProd'
    end
    object QC470qtd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
    end
    object QC470qtd_canc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd_canc'
      Origin = 'qtd_canc'
    end
    object QC470unid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'unid'
      Origin = 'unid'
      Size = 3
    end
    object QC470total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
    end
    object QC470aliq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'aliq'
      Origin = 'aliq'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC470cfop: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cfop'
      Origin = 'CFOP'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object QC470cst: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst'
      Origin = 'cst'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC470vpis: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vpis'
      Origin = 'PIS_vPIS'
      ProviderFlags = []
      ReadOnly = True
    end
    object QC470vcofins: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vcofins'
      Origin = 'COFINS_vCOFINS'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSC460: TDataSource
    DataSet = QC460
    Left = 610
    Top = 305
  end
  object QC490: TFDQuery
    MasterSource = DSC405
    MasterFields = 'id'
    Connection = DM.DB
    SQL.Strings = (
      'select if(vi.ICMS_CSOSN>0,vi.ICMS_CSOSN,vi.ICMS_CST) as cst, '
      'vi.CFOP as cfop,'
      
        'Round(if(substr(r5.cod_totaliz,1,1) = '#39'0'#39', substr(r5.cod_totaliz' +
        ',4,4), substr(r5.cod_totaliz,1,1))/100,2) as aliq,'
      'sum(vi.ICMS_vBC) as vr_oper,'
      'sum(if(substr(r5.cod_totaliz,1,1) = '#39'0'#39', vi.ICMS_vBC, 0)) as bc,'
      'sum(vi.ICMS_vICMS) as vr_icms'
      ''
      'from'
      'paf_r04 r4, '
      'paf_r05 r5,'
      'venda v, '
      'venda_item vi'
      ''
      'where'
      'r4.r02=:id'
      '/*r4.dt_em between :d1 and :d2*/ and '
      'r5.r04=r4.id and'
      'r4.canc='#39'N'#39' and'
      'r5.canc='#39'N'#39' and'
      'v.coo=r4.coo and '
      'v.ccf=r4.ccf and'
      'vi.venda=v.id and'
      'vi.nItem=r5.item '
      'group by'
      'cst, cfop, aliq')
    Left = 570
    Top = 404
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QC490cst: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'cst'
      Origin = 'cst'
    end
    object QC490cfop: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cfop'
      Origin = 'cfop'
      Size = 4
    end
    object QC490aliq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'aliq'
      Origin = 'aliq'
    end
    object QC490vr_oper: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_oper'
      Origin = 'vr_oper'
    end
    object QC490bc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'bc'
      Origin = 'bc'
    end
    object QC490vr_icms: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_icms'
      Origin = 'vr_icms'
    end
  end
  object Q1600: TFDQuery
    Connection = DM.DB
    SQL.Strings = (
      'select v.oper_crt, '
      'if(v.tipo_crt='#39'C'#39',sum(v.vr_card),0) as vr_cred, '
      'if(v.tipo_crt='#39'D'#39',sum(v.vr_card),0) as vr_deb'
      'from'
      'paf_r04 r4, '
      'venda v'
      'where'
      'r4.dt_em between :d1 and :d2 and '
      'r4.canc='#39'N'#39' and'
      'v.coo=r4.coo and '
      'v.ccf=r4.ccf and'
      'v.oper_crt is not null'
      'group by'
      'oper_crt')
    Left = 378
    Top = 324
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
    object Q1600oper_crt: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'oper_crt'
      Origin = 'oper_crt'
      Size = 30
    end
    object Q1600vr_cred: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_cred'
      Origin = 'vr_cred'
    end
    object Q1600vr_deb: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_deb'
      Origin = 'vr_deb'
    end
  end
  object DSC320: TDataSource
    DataSet = QC320
    Left = 358
    Top = 154
  end
end
