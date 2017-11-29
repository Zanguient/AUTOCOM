object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 348
  Width = 810
  object DB1: TFDConnection
    Params.Strings = (
      'Database=autocom'
      'User_Name=root'
      'Server=192.168.254.110'
      'ReadTimeout=1'
      'WriteTimeout=1'
      'DriverID=MySQL')
    FetchOptions.AssignedValues = [evAutoFetchAll]
    ResourceOptions.AssignedValues = [rvDirectExecute, rvServerOutput]
    ResourceOptions.DirectExecute = True
    ResourceOptions.ServerOutput = True
    LoginPrompt = False
    AfterConnect = DB1AfterConnect
    Left = 16
    Top = 24
  end
  object Q1: TFDQuery
    Connection = DB1
    Left = 76
    Top = 24
  end
  object QEmpresa: TFDQuery
    Connection = DB1
    SQL.Strings = (
      'select * from empresa')
    Left = 76
    Top = 89
    object QEmpresaid: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
    end
    object QEmpresarazao_social: TStringField
      DisplayLabel = 'RAZ'#195'O SOCIAL'
      FieldName = 'razao_social'
      Origin = 'razao_social'
      Size = 50
    end
    object QEmpresanome_fantasia: TStringField
      DisplayLabel = 'NOME FANTASIA'
      FieldName = 'nome_fantasia'
      Origin = 'nome_fantasia'
      Size = 40
    end
    object QEmpresacnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object QEmpresaie: TStringField
      DisplayLabel = 'INSCRI'#199#195'O ESTFDUAL'
      FieldName = 'ie'
      Origin = 'ie'
    end
    object QEmpresaim: TStringField
      FieldName = 'im'
      Origin = 'im'
    end
    object QEmpresalogradouro: TStringField
      DisplayLabel = 'LOGRADOURO'
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 50
    end
    object QEmpresanumero: TStringField
      DisplayLabel = 'N'#186
      FieldName = 'numero'
      Origin = 'numero'
    end
    object QEmpresacomplem: TStringField
      DisplayLabel = 'COMPLEMENTO'
      FieldName = 'complem'
      Origin = 'complem'
    end
    object QEmpresabairro: TStringField
      DisplayLabel = 'BAIRRO'
      FieldName = 'bairro'
      Origin = 'bairro'
    end
    object QEmpresacidade: TStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object QEmpresaindativ: TIntegerField
      FieldName = 'indativ'
      Origin = 'indativ'
    end
    object QEmpresaperfil: TStringField
      FieldName = 'perfil'
      Origin = 'perfil'
      FixedChar = True
      Size = 1
    end
    object QEmpresacodmun: TStringField
      FieldName = 'codmun'
      Origin = 'codmun'
    end
    object QEmpresacep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '00\.000\-9999;0; '
      Size = 16
    end
    object QEmpresauf: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object QEmpresatel1: TStringField
      DisplayLabel = 'TEL 1'
      FieldName = 'tel1'
      Origin = 'tel1'
      EditMask = '!\(99\)0000-0000;0; '
    end
    object QEmpresatel2: TStringField
      DisplayLabel = 'TEL 2'
      FieldName = 'tel2'
      Origin = 'tel2'
      EditMask = '!\(99\)0000-0000;0; '
    end
    object QEmpresafax: TStringField
      DisplayLabel = 'FAX'
      FieldName = 'fax'
      Origin = 'fax'
      EditMask = '!\(99\)0000-0000;0; '
      Size = 16
    end
    object QEmpresaemail: TStringField
      DisplayLabel = 'E-MAIL'
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object QEmpresanome_resp: TStringField
      DisplayLabel = 'NOME DO FARMAC'#202'UTICO'
      FieldName = 'nome_resp'
      Origin = 'nome_resp'
      Size = 40
    end
    object QEmpresacpf_resp: TStringField
      DisplayLabel = 'CPF FARMAC'#202'UTICO'
      FieldName = 'cpf_resp'
      Origin = 'cpf_resp'
    end
    object QEmpresarg_resp: TStringField
      DisplayLabel = 'CRF'
      FieldName = 'rg_resp'
      Origin = 'rg_resp'
    end
  end
  object DSEmpresa: TDataSource
    DataSet = QEmpresa
    Left = 79
    Top = 136
  end
  object Validador: TACBrValidador
    IgnorarChar = './-'
    Left = 295
    Top = 24
  end
  object QInventInicial: TFDQuery
    BeforeInsert = QInventInicialBeforeEdit
    BeforeEdit = QInventInicialBeforeEdit
    BeforePost = QInventInicialBeforePost
    AfterPost = QInventInicialAfterPost
    BeforeDelete = QInventInicialBeforeDelete
    Connection = DB1
    SQL.Strings = (
      'select * from sngpc_invent')
    Left = 148
    Top = 89
    object QInventInicialid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QInventInicialproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'produto'
    end
    object QInventInicialestoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'estoque'
      Origin = 'estoque'
    end
    object QInventInicialqtd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
    end
    object QInventInicialdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
    object QInventIniciallote: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'lote'
      Origin = 'lote'
    end
    object QInventInicialvencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'vencimento'
      Origin = 'vencimento'
    end
    object QInventInicialregistro_ms: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'registro_ms'
      Origin = 'registro_ms'
      Size = 30
    end
    object QInventInicialvalidado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'validado'
      Origin = 'validado'
      FixedChar = True
      Size = 1
    end
    object QInventInicialdt_atualiz: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'dt_atualiz'
      Origin = 'dt_atualiz'
    end
    object QInventInicialclasse_terap: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'classe_terap'
      Origin = 'classe_terap'
    end
    object QInventInicialunid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'unid'
      Origin = 'unid'
    end
    object QInventInicialdata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
    end
  end
  object DSInventInicial: TDataSource
    AutoEdit = False
    DataSet = QInventInicial
    OnStateChange = DSInventInicialStateChange
    Left = 151
    Top = 136
  end
  object QInventAtual: TFDQuery
    Connection = DB1
    SQL.Strings = (
      'select p.nome, p.id as ean, m.id, '
      'm.classe_terap, '
      'IF(m.unid=0,'#39'ER'#39',if(m.unid=1, '#39'CX'#39', '#39'FR'#39')) AS unid, '
      'estoque, dt_nf,'
      'dt_entrada, dt_vencim, nmro_nf, lote,'
      'm.registro_ms, count(*) as qtd '
      'from '
      'sngpc_movi m '
      'left join estoque p on p.id = m.estoque where '
      'm.dt_saida is null '
      'group by nome,lote order by nome')
    Left = 236
    Top = 89
    object QInventAtualid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QInventAtualean: TIntegerField
      Alignment = taCenter
      FieldName = 'ean'
      Origin = 'p.id'
      DisplayFormat = '0000'
    end
    object QInventAtualnome: TStringField
      FieldName = 'nome'
      Origin = 'p.nome'
      Size = 100
    end
    object QInventAtualclasse_terap: TIntegerField
      FieldName = 'classe_terap'
      Origin = 'm.classe_terap'
    end
    object QInventAtualunid: TStringField
      FieldName = 'unid'
      Origin = 'unid'
      Size = 2
    end
    object QInventAtualestoque: TIntegerField
      FieldName = 'estoque'
      Origin = 'm.estoque'
    end
    object QInventAtualdt_nf: TDateField
      FieldName = 'dt_nf'
      Origin = 'm.dt_nf'
    end
    object QInventAtualdt_entrada: TDateField
      FieldName = 'dt_entrada'
      Origin = 'm.dt_entrada'
    end
    object QInventAtualdt_vencim: TDateField
      FieldName = 'dt_vencim'
      Origin = 'm.dt_vencim'
    end
    object QInventAtualnmro_nf: TIntegerField
      FieldName = 'nmro_nf'
      Origin = 'm.nmro_nf'
    end
    object QInventAtuallote: TStringField
      FieldName = 'lote'
      Origin = 'm.lote'
    end
    object QInventAtualregistro_ms: TStringField
      FieldName = 'registro_ms'
      Origin = 'm.registro_ms'
      Size = 30
    end
    object QInventAtualqtd: TLargeintField
      FieldName = 'qtd'
      Origin = 'qtd'
    end
  end
  object DSInventAtual: TDataSource
    DataSet = QInventAtual
    Left = 236
    Top = 136
  end
  object QProduto: TFDQuery
    AfterScroll = QProdutoAfterScroll
    Connection = DB1
    SQL.Strings = (
      'select id , nome,'
      'medicam_apresentacao,medicam_principio_atv,'
      'medicam_nomelab,medicam_portaria,medicam_registroms,'
      'cod_gtin, unidade'
      'from estoque')
    Left = 300
    Top = 89
    object QProdutoid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
    end
    object QProdutocod_gtin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_gtin'
      Origin = 'cod_gtin'
    end
    object QProdutonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QProdutomedicam_apresentacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_apresentacao'
      Origin = 'medicam_apresentacao'
      Size = 40
    end
    object QProdutomedicam_principio_atv: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_principio_atv'
      Origin = 'medicam_principio_atv'
      Size = 100
    end
    object QProdutomedicam_nomelab: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_nomelab'
      Origin = 'medicam_nomelab'
      Size = 100
    end
    object QProdutomedicam_portaria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_portaria'
      Origin = 'medicam_portaria'
      Size = 5
    end
    object QProdutomedicam_registroms: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_registroms'
      Origin = 'medicam_registroms'
    end
    object QProdutounidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'unidade'
      Origin = 'unidade'
    end
  end
  object DSProduto: TDataSource
    DataSet = QProduto
    Left = 300
    Top = 136
  end
  object QEntrada: TFDQuery
    BeforeDelete = QEntradaBeforeDelete
    Connection = DB1
    SQL.Strings = (
      'select '
      'p.nome,'
      'p.cod_gtin as ean, '
      'm.id, '
      'm.arq_xml_entr, '
      'm.classe_terap, '
      'm.unid, '
      'estoque,'
      'dt_nf,'
      'dt_entrada,'
      'dt_saida,'
      'dt_perda,'
      'dt_vencim,'
      'nmro_nf,'
      'lote,'
      'cnpj_origem,'
      'cnpj_destino,'
      'registro_ms,'
      'motivo_perda,'
      'count(*) as sngpc '
      'from sngpc_movi m '
      'left join estoque p on p.id = m.estoque'
      'where '
      'nmro_nf=0 group by lote')
    Left = 372
    Top = 89
    object QEntradaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QEntradanome: TStringField
      FieldName = 'nome'
      Origin = 'p.nome'
      Size = 100
    end
    object QEntradaean: TStringField
      FieldName = 'ean'
      Origin = 'ean'
    end
    object QEntradaarq_xml_entr: TStringField
      FieldName = 'arq_xml_entr'
      Origin = 'm.arq_xml_entr'
      Size = 50
    end
    object QEntradaclasse_terap: TIntegerField
      FieldName = 'classe_terap'
      Origin = 'm.classe_terap'
    end
    object QEntradaunid: TIntegerField
      FieldName = 'unid'
      Origin = 'm.unid'
    end
    object QEntradaestoque: TIntegerField
      FieldName = 'estoque'
      Origin = 'm.estoque'
    end
    object QEntradadt_nf: TDateField
      FieldName = 'dt_nf'
      Origin = 'm.dt_nf'
    end
    object QEntradadt_entrada: TDateField
      FieldName = 'dt_entrada'
      Origin = 'm.dt_entrada'
    end
    object QEntradadt_saida: TDateField
      FieldName = 'dt_saida'
      Origin = 'm.dt_saida'
    end
    object QEntradadt_perda: TDateField
      FieldName = 'dt_perda'
      Origin = 'm.dt_perda'
    end
    object QEntradadt_vencim: TDateField
      FieldName = 'dt_vencim'
      Origin = 'm.dt_vencim'
    end
    object QEntradanmro_nf: TIntegerField
      FieldName = 'nmro_nf'
      Origin = 'm.nmro_nf'
    end
    object QEntradalote: TStringField
      FieldName = 'lote'
      Origin = 'm.lote'
    end
    object QEntradacnpj_origem: TStringField
      FieldName = 'cnpj_origem'
      Origin = 'm.cnpj_origem'
    end
    object QEntradacnpj_destino: TStringField
      FieldName = 'cnpj_destino'
      Origin = 'm.cnpj_destino'
    end
    object QEntradaregistro_ms: TStringField
      FieldName = 'registro_ms'
      Origin = 'm.registro_ms'
      Size = 30
    end
    object QEntradamotivo_perda: TIntegerField
      FieldName = 'motivo_perda'
      Origin = 'm.motivo_perda'
    end
    object QEntradasngpc: TLargeintField
      FieldName = 'sngpc'
      Origin = 'sngpc'
    end
  end
  object DSEntrada: TDataSource
    DataSet = QEntrada
    Left = 372
    Top = 136
  end
  object QMedDisp: TFDQuery
    Connection = DB1
    SQL.Strings = (
      'select e.id,e.nome,'
      'e.medicam_principio_atv,'
      'e.medicam_nomelab,'
      'e.medicam_portaria,'
      'e.medicam_registroms,'
      'e.cod_gtin as ean, '
      's.lote,'
      'count(s.id) as quant'
      'from estoque e, sngpc_movi s '
      'WHERE'
      'e.id = s.produto and s.dt_saida is null and '
      's.dt_perda is null and '
      'e.nome like "G%" group by e.nome')
    Left = 436
    Top = 89
    object QMedDispid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QMedDispnome: TStringField
      DisplayLabel = 'DESCRI'#199#195'O DO MEDICAMENTO'
      FieldName = 'nome'
      Origin = 'e.nome'
      Size = 100
    end
    object QMedDispean: TStringField
      DisplayLabel = 'C'#211'D GTIN'
      FieldName = 'ean'
      Origin = 'ean'
    end
    object QMedDispquant: TLargeintField
      DisplayLabel = 'QUANT'
      FieldName = 'quant'
      Origin = 'quant'
    end
    object QMedDisplote: TStringField
      DisplayLabel = 'LOTE'
      FieldName = 'lote'
      Origin = 's.lote'
    end
    object QMedDispmedicam_nomelab: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_nomelab'
      ProviderFlags = []
      Size = 100
    end
    object QMedDispmedicam_portaria: TStringField
      FieldName = 'medicam_portaria'
      Size = 5
    end
  end
  object DSMedDisp: TDataSource
    DataSet = QMedDisp
    Left = 436
    Top = 136
  end
  object DSSaiMed: TDataSource
    DataSet = cdSaiMed
    Left = 508
    Top = 136
  end
  object QPesqEntrada: TFDQuery
    Connection = DB1
    SQL.Strings = (
      'select '
      'p.nome,'
      'p.cod_gtin as ean, '
      'm.id, '
      'm.arq_xml_entr, '
      'm.classe_terap, '
      'm.unid, '
      'estoque,'
      'dt_nf,'
      'dt_entrada,'
      'dt_vencim,'
      'nmro_nf,'
      'lote,'
      'cnpj_origem,'
      'registro_ms,'
      'count(*) as quant '
      'from '
      'sngpc_movi m '
      'left join estoque p on p.id = m.produto '
      'where dt_entrada > 20000101 '
      'group by '
      'registro_ms, lote, dt_entrada')
    Left = 84
    Top = 241
    object QPesqEntradaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QPesqEntradaean: TStringField
      DisplayLabel = 'C'#211'D. GTIN'
      FieldName = 'ean'
      Origin = 'ean'
      Size = 32
    end
    object QPesqEntradanome: TStringField
      DisplayLabel = 'DESCRI'#199#195'O DO MEDICAMENTO'
      FieldName = 'nome'
      Origin = 'p.nome'
      Size = 100
    end
    object QPesqEntradaarq_xml_entr: TStringField
      FieldName = 'arq_xml_entr'
      Origin = 'm.arq_xml_entr'
      Size = 50
    end
    object QPesqEntradaclasse_terap: TIntegerField
      FieldName = 'classe_terap'
      Origin = 'm.classe_terap'
    end
    object QPesqEntradaunid: TIntegerField
      FieldName = 'unid'
      Origin = 'm.unid'
    end
    object QPesqEntradaestoque: TIntegerField
      FieldName = 'estoque'
      Origin = 'm.estoque'
    end
    object QPesqEntradadt_nf: TDateField
      DisplayLabel = 'DT N.F.'
      FieldName = 'dt_nf'
      Origin = 'm.dt_nf'
    end
    object QPesqEntradadt_entrada: TDateField
      DisplayLabel = 'DATA'
      FieldName = 'dt_entrada'
      Origin = 'm.dt_entrada'
    end
    object QPesqEntradadt_vencim: TDateField
      DisplayLabel = 'VENCIMENTO'
      FieldName = 'dt_vencim'
      Origin = 'm.dt_vencim'
    end
    object QPesqEntradanmro_nf: TIntegerField
      FieldName = 'nmro_nf'
      Origin = 'm.nmro_nf'
    end
    object QPesqEntradalote: TStringField
      DisplayLabel = 'LOTE'
      FieldName = 'lote'
      Origin = 'm.lote'
    end
    object QPesqEntradacnpj_origem: TStringField
      FieldName = 'cnpj_origem'
      Origin = 'm.cnpj_origem'
    end
    object QPesqEntradaregistro_ms: TStringField
      DisplayLabel = 'REGISTRO M.S.'
      FieldName = 'registro_ms'
      Origin = 'm.registro_ms'
      Size = 30
    end
    object QPesqEntradaquant: TLargeintField
      DisplayLabel = 'QUANT'
      FieldName = 'quant'
      Origin = 'quant'
    end
  end
  object DSPesqEntr: TDataSource
    DataSet = QPesqEntrada
    Left = 87
    Top = 288
  end
  object DSPesqSai: TDataSource
    DataSet = QPesqSai
    Left = 159
    Top = 288
  end
  object QPesqSai: TFDQuery
    AfterOpen = QPesqSaiAfterOpen
    Connection = DB1
    SQL.Strings = (
      'select p.nome,'
      'AES_DECRYPT(p.ean,@chave) as ean, m.id, m.arq_xml_entr, '
      'm.classe_terap, m.unid, estoque,dt_saida,dt_vencim,'
      'sngpc,lote,cnpj_origem,registro_ms,'
      'count(*) as quant '
      'from sngpc_movi m left join'
      'estoque p on p.id = m.produto '
      'where dt_saida > 20000101 '
      'group by registro_ms, lote, sngpc, dt_saida')
    Left = 156
    Top = 241
    object QPesqSaiid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QPesqSaiean: TStringField
      DisplayLabel = 'C'#211'D. GTIN'
      FieldName = 'ean'
      Origin = 'ean'
      Size = 32
    end
    object QPesqSainome: TStringField
      DisplayLabel = 'DESCRI'#199#195'O DO MEDICAMENTO'
      FieldName = 'nome'
      Origin = 'p.nome'
      Size = 100
    end
    object QPesqSaiarq_xml_entr: TStringField
      FieldName = 'arq_xml_entr'
      Origin = 'm.arq_xml_entr'
      Size = 50
    end
    object QPesqSaiclasse_terap: TIntegerField
      FieldName = 'classe_terap'
      Origin = 'm.classe_terap'
    end
    object QPesqSaiunid: TIntegerField
      FieldName = 'unid'
      Origin = 'm.unid'
    end
    object QPesqSaiestoque: TIntegerField
      FieldName = 'estoque'
      Origin = 'm.estoque'
    end
    object QPesqSaidt_saida: TDateField
      DisplayLabel = 'DATA'
      FieldName = 'dt_saida'
      Origin = 'm.dt_saida'
    end
    object QPesqSaidt_vencim: TDateField
      DisplayLabel = 'VENCIMENTO'
      FieldName = 'dt_vencim'
      Origin = 'm.dt_vencim'
    end
    object QPesqSaisngpc: TLargeintField
      FieldName = 'sngpc'
      Origin = 'm.sngpc'
    end
    object QPesqSailote: TStringField
      DisplayLabel = 'LOTE'
      FieldName = 'lote'
      Origin = 'm.lote'
    end
    object QPesqSaicnpj_origem: TStringField
      FieldName = 'cnpj_origem'
      Origin = 'm.cnpj_origem'
    end
    object QPesqSairegistro_ms: TStringField
      DisplayLabel = 'REGISTRO M.S.'
      FieldName = 'registro_ms'
      Origin = 'm.registro_ms'
      Size = 30
    end
    object QPesqSaiquant: TLargeintField
      DisplayLabel = 'QUANT'
      FieldName = 'quant'
      Origin = 'quant'
    end
  end
  object DSPesqPerda: TDataSource
    DataSet = QPesqPerda
    Left = 231
    Top = 288
  end
  object QPesqPerda: TFDQuery
    Connection = DB1
    SQL.Strings = (
      'select p.nome,'
      'AES_DECRYPT(p.ean,@chave) as ean, m.id, m.arq_xml_entr, '
      'm.classe_terap, m.unid, estoque,dt_perda,dt_vencim,'
      'motivo_perda,lote,cnpj_origem,registro_ms,'
      'count(*) as quant from sngpc_movi m left join'
      'estoque p on p.id = m.produto '
      'where dt_perda > 20000101 '
      'group by registro_ms, lote, sngpc, dt_perda')
    Left = 228
    Top = 241
    object QPesqPerdaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QPesqPerdaean: TStringField
      FieldName = 'ean'
      Origin = 'ean'
      Size = 32
    end
    object QPesqPerdanome: TStringField
      FieldName = 'nome'
      Origin = 'p.nome'
      Size = 100
    end
    object QPesqPerdaarq_xml_entr: TStringField
      FieldName = 'arq_xml_entr'
      Origin = 'm.arq_xml_entr'
      Size = 50
    end
    object QPesqPerdaclasse_terap: TIntegerField
      FieldName = 'classe_terap'
      Origin = 'm.classe_terap'
    end
    object QPesqPerdaunid: TIntegerField
      FieldName = 'unid'
      Origin = 'm.unid'
    end
    object QPesqPerdaestoque: TIntegerField
      FieldName = 'estoque'
      Origin = 'm.estoque'
    end
    object QPesqPerdadt_perda: TDateField
      FieldName = 'dt_perda'
      Origin = 'm.dt_perda'
    end
    object QPesqPerdadt_vencim: TDateField
      FieldName = 'dt_vencim'
      Origin = 'm.dt_vencim'
    end
    object QPesqPerdamotivo_perda: TIntegerField
      FieldName = 'motivo_perda'
      Origin = 'm.motivo_perda'
    end
    object QPesqPerdalote: TStringField
      FieldName = 'lote'
      Origin = 'm.lote'
    end
    object QPesqPerdacnpj_origem: TStringField
      FieldName = 'cnpj_origem'
      Origin = 'm.cnpj_origem'
    end
    object QPesqPerdaregistro_ms: TStringField
      FieldName = 'registro_ms'
      Origin = 'm.registro_ms'
      Size = 30
    end
    object QPesqPerdaquant: TLargeintField
      FieldName = 'quant'
      Origin = 'quant'
    end
  end
  object QPesqRec: TFDQuery
    MasterSource = DSPesqSai
    MasterFields = 'sngpc'
    DetailFields = 'id'
    Connection = DB1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * from sngpc_sai where id=:sngpc')
    Left = 300
    Top = 241
    ParamData = <
      item
        Name = 'sngpc'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 254
      end
      item
        Name = 'sngpc'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPesqRecid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QPesqRecnmro_notif: TStringField
      FieldName = 'nmro_notif'
      Size = 10
    end
    object QPesqRecdata_prescr: TDateField
      FieldName = 'data_prescr'
    end
    object QPesqRecmedico: TStringField
      FieldName = 'medico'
      Size = 100
    end
    object QPesqRecnmro_prof: TStringField
      FieldName = 'nmro_prof'
      Size = 30
    end
    object QPesqRecconselho_prof: TStringField
      FieldName = 'conselho_prof'
      Size = 5
    end
    object QPesqRecuf: TStringField
      FieldName = 'uf'
      FixedChar = True
      Size = 2
    end
    object QPesqRecuso_medic: TIntegerField
      FieldName = 'uso_medic'
    end
    object QPesqReccomprador: TStringField
      FieldName = 'comprador'
      Size = 100
    end
    object QPesqRectipo_doc: TStringField
      FieldName = 'tipo_doc'
      Size = 30
    end
    object QPesqRecdoc: TStringField
      FieldName = 'doc'
      Size = 30
    end
    object QPesqRecorgao_exp: TStringField
      FieldName = 'orgao_exp'
      Size = 12
    end
    object QPesqRecuf_doc: TStringField
      FieldName = 'uf_doc'
      FixedChar = True
      Size = 2
    end
    object QPesqRecregistroms: TStringField
      FieldName = 'registroms'
      Size = 14
    end
    object QPesqReclote: TStringField
      FieldName = 'lote'
    end
    object QPesqRecqtd: TFloatField
      FieldName = 'qtd'
    end
    object QPesqRecdata_venda: TDateField
      FieldName = 'data_venda'
    end
    object QPesqRecpaciente_nome: TStringField
      FieldName = 'paciente_nome'
      Size = 40
    end
    object QPesqRecpaciente_idade: TIntegerField
      FieldName = 'paciente_idade'
    end
    object QPesqRecpaciente_tipo_idade: TIntegerField
      FieldName = 'paciente_tipo_idade'
    end
    object QPesqRecpaciente_sexo: TIntegerField
      FieldName = 'paciente_sexo'
    end
    object QPesqRecpaciente_cid: TStringField
      FieldName = 'paciente_cid'
      Size = 4
    end
    object QPesqRecreceita_img: TStringField
      FieldName = 'receita_img'
      Size = 200
    end
    object QPesqRecvenda: TLongWordField
      FieldName = 'venda'
    end
    object QPesqRectipo_receita: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_receita'
      Origin = 'tipo_receita'
    end
  end
  object DSPesqRec: TDataSource
    DataSet = QPesqRec
    Left = 303
    Top = 288
  end
  object QGerados: TFDQuery
    Connection = DB1
    SQL.Strings = (
      'select * from sngpc_gerados order by dt_fim desc limit 50')
    Left = 372
    Top = 241
    object QGeradosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QGeradosdt_ini: TDateField
      DisplayLabel = 'DT INICIAL'
      FieldName = 'dt_ini'
    end
    object QGeradosdt_fim: TDateField
      DisplayLabel = 'DT FINAL'
      FieldName = 'dt_fim'
    end
    object QGeradosxml: TMemoField
      FieldName = 'xml'
      BlobType = ftMemo
    end
    object QGeradosvalidado: TStringField
      DisplayLabel = 'VALID.'
      FieldName = 'validado'
      OnGetText = QGeradosvalidadoGetText
      FixedChar = True
      Size = 1
    end
  end
  object DSGerados: TDataSource
    DataSet = QGerados
    Left = 367
    Top = 288
  end
  object QXMLEnt: TFDQuery
    Connection = DB1
    SQL.Strings = (
      
        'select p.nome, p.cod_gtin as ean, m.id, m.arq_xml_entr, m.classe' +
        '_terap, m.unid,'
      
        ' estoque,dt_nf, dt_entrada,dt_saida,dt_perda,dt_vencim,nmro_nf,l' +
        'ote,cnpj_origem,'
      'cnpj_destino,'
      'registro_ms,motivo_perda,count(*) as sngpc'
      ' from'
      ' sngpc_movi m'
      ' left join '
      'estoque p on p.id = m.estoque'
      '  where '
      'nmro_nf =:nf and dt_entrada  between :d1 and :d2'
      'group by lote'
      ' order by dt_entrada, lote')
    Left = 444
    Top = 241
    ParamData = <
      item
        Name = 'nf'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'd1'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'd2'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QXMLEntid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QXMLEntnome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object QXMLEntean: TStringField
      FieldName = 'ean'
      Size = 32
    end
    object QXMLEntarq_xml_entr: TStringField
      FieldName = 'arq_xml_entr'
      Size = 50
    end
    object QXMLEntclasse_terap: TIntegerField
      FieldName = 'classe_terap'
    end
    object QXMLEntunid: TIntegerField
      FieldName = 'unid'
    end
    object QXMLEntestoque: TIntegerField
      FieldName = 'estoque'
    end
    object QXMLEntdt_nf: TDateField
      FieldName = 'dt_nf'
    end
    object QXMLEntdt_entrada: TDateField
      FieldName = 'dt_entrada'
    end
    object QXMLEntdt_saida: TDateField
      FieldName = 'dt_saida'
    end
    object QXMLEntdt_perda: TDateField
      FieldName = 'dt_perda'
    end
    object QXMLEntdt_vencim: TDateField
      FieldName = 'dt_vencim'
    end
    object QXMLEntnmro_nf: TIntegerField
      FieldName = 'nmro_nf'
    end
    object QXMLEntlote: TStringField
      FieldName = 'lote'
    end
    object QXMLEntcnpj_origem: TStringField
      FieldName = 'cnpj_origem'
    end
    object QXMLEntcnpj_destino: TStringField
      FieldName = 'cnpj_destino'
    end
    object QXMLEntregistro_ms: TStringField
      FieldName = 'registro_ms'
      Size = 30
    end
    object QXMLEntmotivo_perda: TIntegerField
      FieldName = 'motivo_perda'
    end
    object QXMLEntsngpc: TLargeintField
      FieldName = 'sngpc'
    end
  end
  object QXMLRec: TFDQuery
    Connection = DB1
    SQL.Strings = (
      'select * from sngpc_sai where id = 1')
    Left = 520
    Top = 237
    object QXMLRecid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QXMLRectipo_receita: TIntegerField
      FieldName = 'tipo_receita'
    end
    object QXMLRecnmro_notif: TStringField
      FieldName = 'nmro_notif'
      Size = 10
    end
    object QXMLRecdata_prescr: TDateField
      FieldName = 'data_prescr'
    end
    object QXMLRecmedico: TStringField
      FieldName = 'medico'
      Size = 100
    end
    object QXMLRecnmro_prof: TStringField
      FieldName = 'nmro_prof'
      Size = 30
    end
    object QXMLRecconselho_prof: TStringField
      FieldName = 'conselho_prof'
      Size = 5
    end
    object QXMLRecuf: TStringField
      FieldName = 'uf'
      FixedChar = True
      Size = 2
    end
    object QXMLRecuso_medic: TIntegerField
      FieldName = 'uso_medic'
    end
    object QXMLReccomprador: TStringField
      FieldName = 'comprador'
      Size = 100
    end
    object QXMLRectipo_doc: TStringField
      FieldName = 'tipo_doc'
      Size = 30
    end
    object QXMLRecdoc: TStringField
      FieldName = 'doc'
      Size = 30
    end
    object QXMLRecorgao_exp: TStringField
      FieldName = 'orgao_exp'
      Size = 12
    end
    object QXMLRecuf_doc: TStringField
      FieldName = 'uf_doc'
      FixedChar = True
      Size = 2
    end
    object QXMLRecregistroms: TStringField
      FieldName = 'registroms'
      Size = 14
    end
    object QXMLReclote: TStringField
      FieldName = 'lote'
    end
    object QXMLRecqtd: TFloatField
      FieldName = 'qtd'
    end
    object QXMLRecdata_venda: TDateField
      FieldName = 'data_venda'
    end
    object QXMLRecpaciente_nome: TStringField
      FieldName = 'paciente_nome'
      Size = 40
    end
    object QXMLRecpaciente_idade: TIntegerField
      FieldName = 'paciente_idade'
    end
    object QXMLRecpaciente_tipo_idade: TIntegerField
      FieldName = 'paciente_tipo_idade'
    end
    object QXMLRecpaciente_sexo: TIntegerField
      FieldName = 'paciente_sexo'
    end
    object QXMLRecpaciente_cid: TStringField
      FieldName = 'paciente_cid'
      Size = 4
    end
    object QXMLRecreceita_img: TStringField
      FieldName = 'receita_img'
      Size = 200
    end
    object QXMLRecvenda: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'venda'
    end
  end
  object Q2: TFDQuery
    Connection = DB1
    Left = 148
    Top = 24
  end
  object IdServerIOHandlerSSLOpenSSL1: TIdServerIOHandlerSSLOpenSSL
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 407
    Top = 24
  end
  object QPerda: TFDQuery
    Connection = DB1
    Left = 572
    Top = 89
  end
  object DSPerda: TDataSource
    DataSet = QPerda
    Left = 580
    Top = 136
  end
  object QPesqCompr: TFDQuery
    Connection = DB1
    SQL.Strings = (
      'select distinct(comprador), tipo_doc,doc,'
      'orgao_exp,uf_doc from sngpc_sai order by comprador')
    Left = 580
    Top = 241
    object QPesqComprcomprador: TStringField
      DisplayLabel = 'NOME DO COMPRADOR'
      FieldName = 'comprador'
      Origin = 'sngpc_sai.comprador'
      Size = 100
    end
    object QPesqComprtipo_doc: TStringField
      FieldName = 'tipo_doc'
      Origin = 'sngpc_sai.tipo_doc'
      Size = 30
    end
    object QPesqComprdoc: TStringField
      DisplayLabel = 'N'#186' DOCUMENTO'
      FieldName = 'doc'
      Origin = 'sngpc_sai.doc'
      Size = 30
    end
    object QPesqComprorgao_exp: TStringField
      FieldName = 'orgao_exp'
      Origin = 'sngpc_sai.orgao_exp'
      Size = 12
    end
    object QPesqCompruf_doc: TStringField
      FieldName = 'uf_doc'
      Origin = 'sngpc_sai.uf_doc'
      FixedChar = True
      Size = 2
    end
  end
  object DSPesqCompr: TDataSource
    DataSet = QPesqCompr
    Left = 583
    Top = 288
  end
  object DScdPerda: TDataSource
    DataSet = cdPerda
    Left = 652
    Top = 136
  end
  object ADPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 559
    Top = 24
  end
  object ADGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 687
    Top = 24
  end
  object SP1: TFDScript
    SQLScripts = <>
    Connection = DB1
    Params = <>
    Macros = <>
    OnError = SP1Error
    Left = 16
    Top = 89
  end
  object Zip: TZipMaster
    AddOptions = []
    AddStoreSuffixes = [assGIF, assPNG, assZ, assZIP, assZOO, assARC, assLZH, assARJ, assTAZ, assTGZ, assLHA, assRAR, assACE, assCAB, assGZ, assGZIP, assJAR, assJPG, assJPEG, ass7Zp, assMP3, assWMV, assWMA, assDVR, assAVI]
    ConfirmErase = False
    DLL_Load = False
    ExtrOptions = []
    KeepFreeOnAllDisks = 0
    KeepFreeOnDisk1 = 0
    LanguageID = 0
    MaxVolumeSize = 0
    MaxVolumeSizeKb = 0
    NoReadAux = False
    SFXOptions = []
    SFXOverwriteMode = ovrAlways
    SpanOptions = []
    Trace = False
    Unattended = False
    Verbose = False
    Version = '1.9.1.0019'
    WriteOptions = []
    Left = 236
    Top = 24
  end
  object cdSaiMed: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 511
    Top = 88
    object cdSaiMedid: TIntegerField
      FieldName = 'id'
    end
    object cdSaiMednome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object cdSaiMedean: TStringField
      FieldName = 'ean'
    end
    object cdSaiMedlote: TStringField
      FieldName = 'lote'
    end
    object cdSaiMedquant: TIntegerField
      FieldName = 'quant'
    end
  end
  object cdPerda: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 647
    Top = 88
    object cdPerdaid: TIntegerField
      FieldName = 'id'
    end
    object cdPerdanome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object cdPerdaean: TStringField
      FieldName = 'ean'
    end
    object cdPerdalote: TStringField
      FieldName = 'lote'
    end
    object cdPerdaquant: TIntegerField
      FieldName = 'quant'
    end
    object cdPerdamotivo: TIntegerField
      FieldName = 'motivo'
    end
  end
end
