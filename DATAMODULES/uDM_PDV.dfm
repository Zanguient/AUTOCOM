object DM_PDV: TDM_PDV
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 493
  Width = 789
  object DSVendaItem: TDataSource
    DataSet = TVenda_Item
    Left = 254
    Top = 146
  end
  object DSVenda: TDataSource
    DataSet = TVenda
    Left = 254
    Top = 98
  end
  object DSProd: TDataSource
    AutoEdit = False
    DataSet = TProd
    Left = 254
    Top = 3
  end
  object DSCli: TDataSource
    AutoEdit = False
    DataSet = TCli
    Left = 254
    Top = 52
  end
  object TPAF_R01: TFDQuery
    AfterInsert = TPAF_R01AfterInsert
    Connection = DB
    SQL.Strings = (
      'select * from paf_r01')
    Left = 533
    Top = 10
    object TPAF_R01id: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPAF_R01nmro: TIntegerField
      FieldName = 'nmro'
      Origin = 'nmro'
    end
    object TPAF_R01serie: TStringField
      FieldName = 'serie'
      Origin = 'serie'
    end
    object TPAF_R01mf_adic: TStringField
      FieldName = 'mf_adic'
      Origin = 'mf_adic'
      FixedChar = True
      Size = 1
    end
    object TPAF_R01tipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 7
    end
    object TPAF_R01marca: TStringField
      FieldName = 'marca'
      Origin = 'marca'
    end
    object TPAF_R01modelo: TStringField
      FieldName = 'modelo'
      Origin = 'modelo'
    end
    object TPAF_R01versao_sb: TStringField
      FieldName = 'versao_sb'
      Origin = 'versao_sb'
      Size = 10
    end
    object TPAF_R01data_sb: TDateField
      FieldName = 'data_sb'
      Origin = 'data_sb'
    end
    object TPAF_R01hora_sb: TStringField
      FieldName = 'hora_sb'
      Origin = 'hora_sb'
      Size = 6
    end
  end
  object DB: TFDConnection
    Params.Strings = (
      'Database=Z:\E\PROJETOSXE5\bin\DAT\PDV\autocom.pdv'
      'DriverID=SQLite')
    FetchOptions.AssignedValues = [evRowsetSize]
    ResourceOptions.AssignedValues = [rvPersistent, rvAutoReconnect]
    ResourceOptions.Persistent = True
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    AfterConnect = DBAfterConnect
    Left = 22
    Top = 3
  end
  object Q1: TFDQuery
    Connection = DB
    Left = 22
    Top = 52
  end
  object TOperador: TFDQuery
    Connection = DB
    SQL.Strings = (
      'select * from operador')
    Left = 22
    Top = 98
    object TOperadorid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TOperadornome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 40
    end
    object TOperadorcomissao: TFloatField
      FieldName = 'comissao'
      Origin = 'comissao'
    end
    object TOperadorsenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 10
    end
    object TOperadornomered: TStringField
      FieldName = 'nomered'
      Origin = 'nomered'
      Size = 15
    end
    object TOperadorendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 40
    end
    object TOperadorcidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object TOperadortel: TStringField
      FieldName = 'tel'
      Origin = 'tel'
      Size = 16
    end
    object TOperadordt_cad: TDateField
      FieldName = 'dt_cad'
      Origin = 'dt_cad'
    end
    object TOperadoracesso: TIntegerField
      FieldName = 'acesso'
      Origin = 'acesso'
    end
    object TOperadoratualizado: TStringField
      FieldName = 'atualizado'
      Origin = 'atualizado'
      Size = 50
    end
    object TOperadordt_atualiz: TSQLTimeStampField
      FieldName = 'dt_atualiz'
      Origin = 'dt_atualiz'
    end
    object TOperadormd5: TStringField
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object TOperadoruf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
  end
  object TEmpresa: TFDQuery
    Connection = DB
    SQL.Strings = (
      'select * from empresa')
    Left = 22
    Top = 146
    object TEmpresaid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEmpresarazao_social: TStringField
      FieldName = 'razao_social'
      Origin = 'razao_social'
      Size = 50
    end
    object TEmpresanome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Origin = 'nome_fantasia'
      Size = 40
    end
    object TEmpresacnpj: TStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object TEmpresaie: TStringField
      FieldName = 'ie'
      Origin = 'ie'
    end
    object TEmpresaim: TStringField
      FieldName = 'im'
      Origin = 'im'
    end
    object TEmpresalogradouro: TStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 50
    end
    object TEmpresanumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
    end
    object TEmpresacomplem: TStringField
      FieldName = 'complem'
      Origin = 'complem'
    end
    object TEmpresabairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
    end
    object TEmpresacidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object TEmpresaindativ: TIntegerField
      FieldName = 'indativ'
      Origin = 'indativ'
    end
    object TEmpresaperfil: TStringField
      FieldName = 'perfil'
      Origin = 'perfil'
      FixedChar = True
      Size = 1
    end
    object TEmpresacodmun: TStringField
      FieldName = 'codmun'
      Origin = 'codmun'
    end
    object TEmpresacep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 16
    end
    object TEmpresauf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object TEmpresatel1: TStringField
      FieldName = 'tel1'
      Origin = 'tel1'
    end
    object TEmpresatel2: TStringField
      FieldName = 'tel2'
      Origin = 'tel2'
    end
    object TEmpresafax: TStringField
      FieldName = 'fax'
      Origin = 'fax'
      Size = 16
    end
    object TEmpresaemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object TEmpresanome_resp: TStringField
      FieldName = 'nome_resp'
      Origin = 'nome_resp'
      Size = 40
    end
    object TEmpresacpf_resp: TStringField
      FieldName = 'cpf_resp'
      Origin = 'cpf_resp'
    end
    object TEmpresarg_resp: TStringField
      FieldName = 'rg_resp'
      Origin = 'rg_resp'
    end
    object TEmpresasubst_trib: TStringField
      FieldName = 'subst_trib'
      Origin = 'subst_trib'
      FixedChar = True
      Size = 1
    end
    object TEmpresacontr_ipi: TStringField
      FieldName = 'contr_ipi'
      Origin = 'contr_ipi'
      FixedChar = True
      Size = 1
    end
    object TEmpresacont_nome: TStringField
      FieldName = 'cont_nome'
      Origin = 'cont_nome'
      Size = 50
    end
    object TEmpresacont_cpf: TStringField
      FieldName = 'cont_cpf'
      Origin = 'cont_cpf'
    end
    object TEmpresacont_crc: TStringField
      FieldName = 'cont_crc'
      Origin = 'cont_crc'
    end
    object TEmpresacont_cep: TStringField
      FieldName = 'cont_cep'
      Origin = 'cont_cep'
      Size = 10
    end
    object TEmpresacont_cnpj: TStringField
      FieldName = 'cont_cnpj'
      Origin = 'cont_cnpj'
    end
    object TEmpresacont_logradouro: TStringField
      FieldName = 'cont_logradouro'
      Origin = 'cont_logradouro'
      Size = 50
    end
    object TEmpresacont_nmro: TStringField
      FieldName = 'cont_nmro'
      Origin = 'cont_nmro'
    end
    object TEmpresacont_complem: TStringField
      FieldName = 'cont_complem'
      Origin = 'cont_complem'
    end
    object TEmpresacont_bairro: TStringField
      FieldName = 'cont_bairro'
      Origin = 'cont_bairro'
      Size = 30
    end
    object TEmpresacont_tel: TStringField
      FieldName = 'cont_tel'
      Origin = 'cont_tel'
    end
    object TEmpresacont_fax: TStringField
      FieldName = 'cont_fax'
      Origin = 'cont_fax'
    end
    object TEmpresacont_email: TStringField
      FieldName = 'cont_email'
      Origin = 'cont_email'
      Size = 60
    end
    object TEmpresacont_cidade: TStringField
      FieldName = 'cont_cidade'
      Origin = 'cont_cidade'
      Size = 255
    end
    object TEmpresacont_codmun: TStringField
      FieldName = 'cont_codmun'
      Origin = 'cont_codmun'
    end
    object TEmpresacont_uf: TStringField
      FieldName = 'cont_uf'
      Origin = 'cont_uf'
      FixedChar = True
      Size = 2
    end
    object TEmpresadt_atualiz: TSQLTimeStampField
      FieldName = 'dt_atualiz'
      Origin = 'dt_atualiz'
    end
    object TEmpresamd5: TStringField
      FieldName = 'md5'
      Origin = 'md5'
      Size = 32
    end
    object TEmpresacnae_prim: TStringField
      FieldName = 'cnae_prim'
      Origin = 'cnae_prim'
    end
    object TEmpresacnae_sec: TStringField
      FieldName = 'cnae_sec'
      Origin = 'cnae_sec'
    end
    object TEmpresafarmac_cpf: TStringField
      FieldName = 'farmac_cpf'
      Origin = 'farmac_cpf'
    end
    object TEmpresafarmac_crf: TStringField
      FieldName = 'farmac_crf'
      Origin = 'farmac_crf'
    end
    object TEmpresafarmac_crf_uf: TStringField
      FieldName = 'farmac_crf_uf'
      Origin = 'farmac_crf_uf'
      FixedChar = True
      Size = 2
    end
    object TEmpresafarmac_nome: TStringField
      FieldName = 'farmac_nome'
      Origin = 'farmac_nome'
      Size = 40
    end
  end
  object TProd: TFDQuery
    OnCalcFields = TProdCalcFields
    IndexFieldNames = 'id'
    Connection = DB
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 50000
    SQL.Strings = (
      'select * from estoque')
    Left = 182
    Top = 3
    object TProdid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000'
    end
    object TProdcod_gtin: TStringField
      FieldName = 'cod_gtin'
      Origin = 'cod_gtin'
      Size = 32767
    end
    object TProdcod_interno: TIntegerField
      FieldName = 'cod_interno'
      Origin = 'cod_interno'
    end
    object TProdcod_aux: TStringField
      FieldName = 'cod_aux'
      Origin = 'cod_aux'
      Size = 32767
    end
    object TProdnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 32767
    end
    object TProdvrcusto_real: TFloatField
      FieldName = 'vrcusto_real'
      Origin = 'vrcusto_real'
      DisplayFormat = '#,##0.00#'
    end
    object TProdvrvenda_vista: TFloatField
      FieldName = 'vrvenda_vista'
      Origin = 'vrvenda_vista'
      DisplayFormat = '#,##0.00#'
    end
    object TProdvrvenda_prz: TFloatField
      FieldName = 'vrvenda_prz'
      Origin = 'vrvenda_prz'
      DisplayFormat = '#,##0.00#'
    end
    object TProdmedicam_pmc: TFloatField
      FieldName = 'medicam_pmc'
      Origin = 'medicam_pmc'
    end
    object TProdaliq_icms: TIntegerField
      FieldName = 'aliq_icms'
      Origin = 'aliq_icms'
      DisplayFormat = '0.00'
    end
    object TProdmg_lucro: TFloatField
      FieldName = 'mg_lucro'
      Origin = 'mg_lucro'
    end
    object TProdqt_caixa: TFloatField
      FieldName = 'qt_caixa'
      Origin = 'qt_caixa'
    end
    object TProdsigla_unid: TStringField
      FieldName = 'sigla_unid'
      Origin = 'sigla_unid'
      Size = 32767
    end
    object TProdcod_cst: TIntegerField
      FieldName = 'cod_cst'
      Origin = 'cod_cst'
      OnGetText = TProdcod_cstGetText
      DisplayFormat = '00'
    end
    object TProdaliq_ecf: TStringField
      FieldName = 'aliq_ecf'
      Origin = 'aliq_ecf'
      Size = 32767
    end
    object TProdbalanca: TStringField
      FieldName = 'balanca'
      Origin = 'balanca'
      FixedChar = True
      Size = 32767
    end
    object TProdmedic_qtcaixa: TIntegerField
      FieldName = 'medic_qtcaixa'
      Origin = 'medic_qtcaixa'
    end
    object TProdmedic_fracao: TIntegerField
      FieldName = 'medic_fracao'
      Origin = 'medic_fracao'
    end
    object TProdmedicam_vrms: TFloatField
      FieldName = 'medicam_vrms'
      Origin = 'medicam_vrms'
    end
    object TProdncm: TStringField
      FieldName = 'ncm'
      Origin = 'ncm'
      Size = 32767
    end
    object TProdcst_pis_sai: TIntegerField
      FieldName = 'cst_pis_sai'
      Origin = 'cst_pis_sai'
    end
    object TProdcst_cofins_sai: TIntegerField
      FieldName = 'cst_cofins_sai'
      Origin = 'cst_cofins_sai'
    end
    object TProdproducao_propria: TStringField
      FieldName = 'producao_propria'
      Origin = 'producao_propria'
      OnGetText = TProdproducao_propriaGetText
      FixedChar = True
      Size = 32767
    end
    object TProdorigem: TIntegerField
      FieldName = 'origem'
      Origin = 'origem'
    end
    object TProdmd5: TStringField
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object TProdcalculo_por_arredondamento: TStringField
      FieldName = 'calculo_por_arredondamento'
      Origin = 'calculo_por_arredondamento'
      OnGetText = TProdcalculo_por_arredondamentoGetText
      FixedChar = True
      Size = 1
    end
    object TProdfracionavel: TStringField
      FieldName = 'fracionavel'
      Origin = 'fracionavel'
      FixedChar = True
      Size = 1
    end
    object TProdvrcotacao: TFloatField
      FieldName = 'vrcotacao'
      Origin = 'vrcotacao'
    end
    object TProdprecopfp: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'precopfp'
      DisplayFormat = '#,##0.00#'
      currency = False
      Calculated = True
    end
  end
  object TFPag: TFDQuery
    BeforePost = TFPagBeforePost
    Connection = DB
    SQL.Strings = (
      'select * from fpag')
    Left = 22
    Top = 246
    object TFPagid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '00'
    end
    object TFPagdescr: TStringField
      FieldName = 'descr'
      Origin = 'descr'
      FixedChar = True
    end
    object TFPagaprazo: TStringField
      FieldName = 'aprazo'
      Origin = 'aprazo'
      FixedChar = True
      Size = 1
    end
    object TFPagtipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 3
    end
    object TFPagnumecf: TIntegerField
      FieldName = 'numecf'
      Origin = 'numecf'
    end
    object TFPagindice_tef: TStringField
      FieldName = 'indice_tef'
      Origin = 'indice_tef'
      Size = 2
    end
    object TFPaguso: TStringField
      FieldName = 'uso'
      Origin = 'uso'
      Size = 2
    end
    object TFPagatualizado: TStringField
      FieldName = 'atualizado'
      Origin = 'atualizado'
      FixedChar = True
      Size = 50
    end
    object TFPagdt_atualiz: TSQLTimeStampField
      FieldName = 'dt_atualiz'
      Origin = 'dt_atualiz'
    end
  end
  object TCli: TFDQuery
    Connection = DB
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 5000
    SQL.Strings = (
      'select * from cliente')
    Left = 182
    Top = 52
    object TCliid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
    end
    object TClicnpj: TStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 32767
    end
    object TClinome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 32767
    end
    object TClirazaosocial: TStringField
      FieldName = 'razaosocial'
      Origin = 'razaosocial'
      Size = 32767
    end
    object TClitel1: TStringField
      FieldName = 'tel1'
      Origin = 'tel1'
      Size = 32767
    end
    object TClitel2: TStringField
      FieldName = 'tel2'
      Origin = 'tel2'
      Size = 32767
    end
    object TClifax: TStringField
      FieldName = 'fax'
      Origin = 'fax'
      Size = 32767
    end
    object TClicelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Size = 32767
    end
    object TClitipo_tel1: TStringField
      FieldName = 'tipo_tel1'
      Origin = 'tipo_tel1'
      Size = 32767
    end
    object TClitipo_tel2: TStringField
      FieldName = 'tipo_tel2'
      Origin = 'tipo_tel2'
      Size = 32767
    end
    object TClisituacao: TStringField
      FieldName = 'situacao'
      Origin = 'situacao'
      Size = 32767
    end
    object TClilogradouro: TStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 32767
    end
    object TClinmro: TStringField
      FieldName = 'nmro'
      Origin = 'nmro'
      Size = 32767
    end
    object TClicomplem: TStringField
      FieldName = 'complem'
      Origin = 'complem'
      Size = 32767
    end
    object TClibairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 32767
    end
    object TClicidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 32767
    end
    object TCliuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 32767
    end
    object TClicep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 32767
    end
    object TCliendcobranca: TStringField
      FieldName = 'endcobranca'
      Origin = 'endcobranca'
      Size = 32767
    end
    object TClilogradourocobranca: TStringField
      FieldName = 'logradourocobranca'
      Origin = 'logradourocobranca'
      Size = 32767
    end
    object TClinmrocobranca: TStringField
      FieldName = 'nmrocobranca'
      Origin = 'nmrocobranca'
      Size = 32767
    end
    object TClicomplemcobranca: TStringField
      FieldName = 'complemcobranca'
      Origin = 'complemcobranca'
      Size = 32767
    end
    object TClicidadecobranca: TStringField
      FieldName = 'cidadecobranca'
      Origin = 'cidadecobranca'
      Size = 32767
    end
    object TClibairrocobranca: TStringField
      FieldName = 'bairrocobranca'
      Origin = 'bairrocobranca'
      Size = 32767
    end
    object TClicepcobranca: TStringField
      FieldName = 'cepcobranca'
      Origin = 'cepcobranca'
      Size = 32767
    end
    object TCliufcobranca: TStringField
      FieldName = 'ufcobranca'
      Origin = 'ufcobranca'
      FixedChar = True
      Size = 32767
    end
    object TCliie: TStringField
      FieldName = 'ie'
      Origin = 'ie'
      Size = 32767
    end
    object TCliim: TStringField
      FieldName = 'im'
      Origin = 'im'
      Size = 32767
    end
    object TClirg: TStringField
      FieldName = 'rg'
      Origin = 'rg'
      Size = 32767
    end
    object TClisuspenso: TStringField
      FieldName = 'suspenso'
      Origin = 'suspenso'
      FixedChar = True
      Size = 32767
    end
    object TClidevedor: TStringField
      FieldName = 'devedor'
      Origin = 'devedor'
      FixedChar = True
      Size = 32767
    end
    object TCliclientedesde: TDateField
      FieldName = 'clientedesde'
      Origin = 'clientedesde'
    end
    object TClipai: TStringField
      FieldName = 'pai'
      Origin = 'pai'
      Size = 32767
    end
    object TClimae: TStringField
      FieldName = 'mae'
      Origin = 'mae'
      Size = 32767
    end
    object TClireferencia: TMemoField
      FieldName = 'referencia'
      Origin = 'referencia'
      BlobType = ftMemo
    end
    object TClidatanasc: TDateField
      FieldName = 'datanasc'
      Origin = 'datanasc'
    end
    object TClilimite: TFloatField
      FieldName = 'limite'
      Origin = 'limite'
    end
    object TClihaver: TFloatField
      FieldName = 'haver'
      Origin = 'haver'
    end
    object TCliobs: TMemoField
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object TClisaldo: TFloatField
      FieldName = 'saldo'
      Origin = 'saldo'
    end
    object TClidianasc: TIntegerField
      FieldName = 'dianasc'
      Origin = 'dianasc'
    end
    object TClimesnasc: TIntegerField
      FieldName = 'mesnasc'
      Origin = 'mesnasc'
    end
    object TClianonasc: TIntegerField
      FieldName = 'anonasc'
      Origin = 'anonasc'
    end
    object TCliinfoutil: TStringField
      FieldName = 'infoutil'
      Origin = 'infoutil'
      Size = 32767
    end
    object TCliatualizado: TStringField
      FieldName = 'atualizado'
      Origin = 'atualizado'
      Size = 32767
    end
    object TCliemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 32767
    end
    object TClicidade_cod: TIntegerField
      FieldName = 'cidade_cod'
      Origin = 'cidade_cod'
    end
    object TClidt_atualiz: TSQLTimeStampField
      FieldName = 'dt_atualiz'
      Origin = 'dt_atualiz'
    end
    object TCliindicacao: TIntegerField
      FieldName = 'indicacao'
      Origin = 'indicacao'
    end
    object TClicodmun: TStringField
      FieldName = 'codmun'
      Origin = 'codmun'
      Size = 32767
    end
    object TClicodmuncobranca: TStringField
      FieldName = 'codmuncobranca'
      Origin = 'codmuncobranca'
      Size = 32767
    end
    object TCliusar_endsec_entrega: TStringField
      FieldName = 'usar_endsec_entrega'
      Origin = 'usar_endsec_entrega'
      FixedChar = True
      Size = 32767
    end
    object TCliusr_endsec_cobranca: TStringField
      FieldName = 'usr_endsec_cobranca'
      Origin = 'usr_endsec_cobranca'
      FixedChar = True
      Size = 32767
    end
    object TClimd5: TStringField
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
  end
  object TIBPTax: TFDQuery
    Connection = DB
    SQL.Strings = (
      'select * from ibptax')
    Left = 22
    Top = 294
    object TIBPTaxid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TIBPTaxversao: TStringField
      FieldName = 'versao'
      Origin = 'versao'
    end
    object TIBPTaxitens: TIntegerField
      FieldName = 'itens'
      Origin = 'itens'
    end
    object TIBPTaxdt_vigencia_ini: TDateField
      FieldName = 'dt_vigencia_ini'
      Origin = 'dt_vigencia_ini'
    end
    object TIBPTaxdt_vigencia_fim: TDateField
      FieldName = 'dt_vigencia_fim'
      Origin = 'dt_vigencia_fim'
    end
    object TIBPTaxchave: TStringField
      FieldName = 'chave'
      Origin = 'chave'
    end
    object TIBPTaxfonte: TStringField
      FieldName = 'fonte'
      Origin = 'fonte'
      Size = 50
    end
    object TIBPTaxmd5: TStringField
      FieldName = 'md5'
      Origin = 'md5'
      Size = 50
    end
  end
  object TVenda: TFDQuery
    AfterOpen = TVendaAfterOpen
    AfterInsert = TVendaAfterInsert
    Connection = DB
    SQL.Strings = (
      'select * from venda order by id desc limit 1')
    Left = 182
    Top = 98
    object TVendaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TVendatipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 3
    end
    object TVendacliente: TIntegerField
      FieldName = 'cliente'
      Origin = 'cliente'
      Required = True
    end
    object TVendaoperador: TIntegerField
      FieldName = 'operador'
      Origin = 'operador'
    end
    object TVendavendedor: TIntegerField
      FieldName = 'vendedor'
      Origin = 'vendedor'
    end
    object TVendacancelado: TStringField
      FieldName = 'cancelado'
      Origin = 'cancelado'
      FixedChar = True
      Size = 1
    end
    object TVendadata: TDateField
      FieldName = 'data'
      Origin = 'data'
    end
    object TVendahora: TStringField
      FieldName = 'hora'
      Origin = 'hora'
      Size = 5
    end
    object TVendacoa: TIntegerField
      FieldName = 'coa'
      Origin = 'coa'
    end
    object TVendacoo: TIntegerField
      FieldName = 'coo'
      Origin = 'coo'
    end
    object TVendaccf: TIntegerField
      FieldName = 'ccf'
      Origin = 'ccf'
    end
    object TVendapv: TStringField
      FieldName = 'pv'
      Origin = 'pv'
      Size = 10
    end
    object TVendanf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
      Required = True
    end
    object TVendaserie_d: TIntegerField
      FieldName = 'serie_d'
      Origin = 'serie_d'
    end
    object TVendacv: TMemoField
      FieldName = 'cv'
      Origin = 'cv'
      BlobType = ftMemo
    end
    object TVendavalor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
    end
    object TVendavr_desconto: TFloatField
      FieldName = 'vr_desconto'
      Origin = 'vr_desconto'
    end
    object TVendavr_desc_posvenda: TFloatField
      FieldName = 'vr_desc_posvenda'
      Origin = 'vr_desc_posvenda'
    end
    object TVendavr_pago: TFloatField
      FieldName = 'vr_pago'
      Origin = 'vr_pago'
    end
    object TVendavr_comissao: TFloatField
      FieldName = 'vr_comissao'
      Origin = 'vr_comissao'
    end
    object TVendavr_abat: TFloatField
      FieldName = 'vr_abat'
      Origin = 'vr_abat'
    end
    object TVendavr_din: TFloatField
      FieldName = 'vr_din'
      Origin = 'vr_din'
    end
    object TVendavr_chq: TFloatField
      FieldName = 'vr_chq'
      Origin = 'vr_chq'
    end
    object TVendavr_card: TFloatField
      FieldName = 'vr_card'
      Origin = 'vr_card'
    end
    object TVendavr_outros: TFloatField
      FieldName = 'vr_outros'
      Origin = 'vr_outros'
    end
    object TVendavr_tkt: TFloatField
      FieldName = 'vr_tkt'
      Origin = 'vr_tkt'
    end
    object TVendatroco: TFloatField
      FieldName = 'troco'
      Origin = 'troco'
    end
    object TVendaobs: TMemoField
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object TVendaterminal: TStringField
      FieldName = 'terminal'
      Origin = 'terminal'
    end
    object TVendaoper_crt: TStringField
      FieldName = 'oper_crt'
      Origin = 'oper_crt'
      Size = 30
    end
    object TVendatipo_crt: TStringField
      FieldName = 'tipo_crt'
      Origin = 'tipo_crt'
      FixedChar = True
      Size = 1
    end
  end
  object TVenda_Item: TFDQuery
    AfterInsert = TVenda_ItemAfterInsert
    MasterSource = DSVenda
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from venda_item where venda=:id order by nitem')
    Left = 182
    Top = 146
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 370
      end>
    object TVenda_Itemid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '000'
    end
    object TVenda_Itemvenda: TIntegerField
      FieldName = 'venda'
      Origin = 'venda'
    end
    object TVenda_ItemnItem: TIntegerField
      FieldName = 'nItem'
      Origin = 'nItem'
      DisplayFormat = '000'
    end
    object TVenda_ItemcProd: TIntegerField
      FieldName = 'cProd'
      Origin = 'cProd'
    end
    object TVenda_ItemcEAN: TStringField
      FieldName = 'cEAN'
      Origin = 'cEAN'
    end
    object TVenda_ItemxProd: TStringField
      FieldName = 'xProd'
      Origin = 'xProd'
      Size = 120
    end
    object TVenda_ItemNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object TVenda_ItemEXTIPI: TStringField
      FieldName = 'EXTIPI'
      Origin = 'EXTIPI'
      Size = 3
    end
    object TVenda_ItemCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object TVenda_ItemuCom: TStringField
      FieldName = 'uCom'
      Origin = 'uCom'
      Size = 6
    end
    object TVenda_ItemqCom: TFloatField
      FieldName = 'qCom'
      Origin = 'qCom'
      DisplayFormat = '#,##0.00#'
    end
    object TVenda_ItemvUnCom: TFloatField
      FieldName = 'vUnCom'
      Origin = 'vUnCom'
      DisplayFormat = '#,##0.00#'
    end
    object TVenda_ItemvProd: TFloatField
      FieldName = 'vProd'
      Origin = 'vProd'
      DisplayFormat = '#,##0.00#'
    end
    object TVenda_ItemcEANTrib: TStringField
      FieldName = 'cEANTrib'
      Origin = 'cEANTrib'
    end
    object TVenda_ItemuTrib: TStringField
      FieldName = 'uTrib'
      Origin = 'uTrib'
      Size = 6
    end
    object TVenda_ItemqTrib: TFloatField
      FieldName = 'qTrib'
      Origin = 'qTrib'
    end
    object TVenda_ItemvUnTrib: TFloatField
      FieldName = 'vUnTrib'
      Origin = 'vUnTrib'
    end
    object TVenda_ItemvOutro: TFloatField
      FieldName = 'vOutro'
      Origin = 'vOutro'
    end
    object TVenda_ItemvFrete: TFloatField
      FieldName = 'vFrete'
      Origin = 'vFrete'
    end
    object TVenda_ItemvSeg: TFloatField
      FieldName = 'vSeg'
      Origin = 'vSeg'
    end
    object TVenda_ItemvDesc: TFloatField
      FieldName = 'vDesc'
      Origin = 'vDesc'
      DisplayFormat = '0.00'
    end
    object TVenda_IteminfAdProd: TMemoField
      FieldName = 'infAdProd'
      Origin = 'infAdProd'
      BlobType = ftMemo
    end
    object TVenda_ItemICMS_CST: TIntegerField
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
    end
    object TVenda_ItemICMS_orig: TIntegerField
      FieldName = 'ICMS_orig'
      Origin = 'ICMS_orig'
    end
    object TVenda_ItemICMS_modBC: TIntegerField
      FieldName = 'ICMS_modBC'
      Origin = 'ICMS_modBC'
    end
    object TVenda_ItemICMS_vBC: TFloatField
      FieldName = 'ICMS_vBC'
      Origin = 'ICMS_vBC'
    end
    object TVenda_ItemICMS_pICMS: TFloatField
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
    end
    object TVenda_ItemICMS_vICMS: TFloatField
      FieldName = 'ICMS_vICMS'
      Origin = 'ICMS_vICMS'
    end
    object TVenda_ItemICMS_CSOSN: TIntegerField
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
    end
    object TVenda_ItemICMS_pCredSN: TFloatField
      FieldName = 'ICMS_pCredSN'
      Origin = 'ICMS_pCredSN'
    end
    object TVenda_ItemICMS_vCredICMSSN: TFloatField
      FieldName = 'ICMS_vCredICMSSN'
      Origin = 'ICMS_vCredICMSSN'
    end
    object TVenda_ItemICMS_modBCST: TIntegerField
      FieldName = 'ICMS_modBCST'
      Origin = 'ICMS_modBCST'
    end
    object TVenda_ItemICMS_pMVAST: TFloatField
      FieldName = 'ICMS_pMVAST'
      Origin = 'ICMS_pMVAST'
    end
    object TVenda_ItemICMS_vTabelaST: TFloatField
      FieldName = 'ICMS_vTabelaST'
      Origin = 'ICMS_vTabelaST'
    end
    object TVenda_ItemICMS_pRedBCST: TFloatField
      FieldName = 'ICMS_pRedBCST'
      Origin = 'ICMS_pRedBCST'
    end
    object TVenda_ItemICMS_vBCST: TFloatField
      FieldName = 'ICMS_vBCST'
      Origin = 'ICMS_vBCST'
    end
    object TVenda_ItemICMS_pICMSST: TFloatField
      FieldName = 'ICMS_pICMSST'
      Origin = 'ICMS_pICMSST'
    end
    object TVenda_ItemICMS_vICMSST: TFloatField
      FieldName = 'ICMS_vICMSST'
      Origin = 'ICMS_vICMSST'
    end
    object TVenda_ItemICMS_pRedBC: TFloatField
      FieldName = 'ICMS_pRedBC'
      Origin = 'ICMS_pRedBC'
    end
    object TVenda_ItemIPI_CST: TIntegerField
      FieldName = 'IPI_CST'
      Origin = 'IPI_CST'
    end
    object TVenda_ItemIPI_clEnq: TStringField
      FieldName = 'IPI_clEnq'
      Origin = 'IPI_clEnq'
      Size = 5
    end
    object TVenda_ItemIPI_CNPJProd: TStringField
      FieldName = 'IPI_CNPJProd'
      Origin = 'IPI_CNPJProd'
    end
    object TVenda_ItemIPI_cSelo: TStringField
      FieldName = 'IPI_cSelo'
      Origin = 'IPI_cSelo'
      Size = 60
    end
    object TVenda_ItemIPI_qSelo: TIntegerField
      FieldName = 'IPI_qSelo'
      Origin = 'IPI_qSelo'
    end
    object TVenda_ItemIPI_cEnq: TStringField
      FieldName = 'IPI_cEnq'
      Origin = 'IPI_cEnq'
      Size = 3
    end
    object TVenda_ItemIPI_vBC: TFloatField
      FieldName = 'IPI_vBC'
      Origin = 'IPI_vBC'
    end
    object TVenda_ItemIPI_qUnid: TFloatField
      FieldName = 'IPI_qUnid'
      Origin = 'IPI_qUnid'
    end
    object TVenda_ItemIPI_vUnid: TFloatField
      FieldName = 'IPI_vUnid'
      Origin = 'IPI_vUnid'
    end
    object TVenda_ItemIPI_pIPI: TFloatField
      FieldName = 'IPI_pIPI'
      Origin = 'IPI_pIPI'
    end
    object TVenda_ItemIPI_vIPI: TFloatField
      FieldName = 'IPI_vIPI'
      Origin = 'IPI_vIPI'
    end
    object TVenda_ItemII_vBc: TFloatField
      FieldName = 'II_vBc'
      Origin = 'II_vBc'
    end
    object TVenda_ItemII_vDespAdu: TFloatField
      FieldName = 'II_vDespAdu'
      Origin = 'II_vDespAdu'
    end
    object TVenda_ItemII_vII: TFloatField
      FieldName = 'II_vII'
      Origin = 'II_vII'
    end
    object TVenda_ItemII_vIOF: TFloatField
      FieldName = 'II_vIOF'
      Origin = 'II_vIOF'
    end
    object TVenda_ItemPIS_CST: TIntegerField
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
    end
    object TVenda_ItemPIS_vBC: TFloatField
      FieldName = 'PIS_vBC'
      Origin = 'PIS_vBC'
    end
    object TVenda_ItemPIS_pPIS: TFloatField
      FieldName = 'PIS_pPIS'
      Origin = 'PIS_pPIS'
    end
    object TVenda_ItemPIS_vPIS: TFloatField
      FieldName = 'PIS_vPIS'
      Origin = 'PIS_vPIS'
    end
    object TVenda_ItemPIS_qBCProd: TFloatField
      FieldName = 'PIS_qBCProd'
      Origin = 'PIS_qBCProd'
    end
    object TVenda_ItemPIS_vAliqProd: TFloatField
      FieldName = 'PIS_vAliqProd'
      Origin = 'PIS_vAliqProd'
    end
    object TVenda_ItemPISST_vBc: TFloatField
      FieldName = 'PISST_vBc'
      Origin = 'PISST_vBc'
    end
    object TVenda_ItemPISST_pPis: TFloatField
      FieldName = 'PISST_pPis'
      Origin = 'PISST_pPis'
    end
    object TVenda_ItemPISST_qBCProd: TFloatField
      FieldName = 'PISST_qBCProd'
      Origin = 'PISST_qBCProd'
    end
    object TVenda_ItemPISST_vAliqProd: TFloatField
      FieldName = 'PISST_vAliqProd'
      Origin = 'PISST_vAliqProd'
    end
    object TVenda_ItemPISST_vPIS: TFloatField
      FieldName = 'PISST_vPIS'
      Origin = 'PISST_vPIS'
    end
    object TVenda_ItemCOFINS_CST: TIntegerField
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
    end
    object TVenda_ItemCOFINS_vBC: TFloatField
      FieldName = 'COFINS_vBC'
      Origin = 'COFINS_vBC'
    end
    object TVenda_ItemCOFINS_pCOFINS: TFloatField
      FieldName = 'COFINS_pCOFINS'
      Origin = 'COFINS_pCOFINS'
    end
    object TVenda_ItemCOFINS_vCOFINS: TFloatField
      FieldName = 'COFINS_vCOFINS'
      Origin = 'COFINS_vCOFINS'
    end
    object TVenda_ItemCOFINS_qBCProd: TFloatField
      FieldName = 'COFINS_qBCProd'
      Origin = 'COFINS_qBCProd'
    end
    object TVenda_ItemCOFINS_vAliqProd: TFloatField
      FieldName = 'COFINS_vAliqProd'
      Origin = 'COFINS_vAliqProd'
    end
    object TVenda_ItemCOFINSST_vBC: TFloatField
      FieldName = 'COFINSST_vBC'
      Origin = 'COFINSST_vBC'
    end
    object TVenda_ItemCOFINSST_pCOFINS: TFloatField
      FieldName = 'COFINSST_pCOFINS'
      Origin = 'COFINSST_pCOFINS'
    end
    object TVenda_ItemCOFINSST_qBCProd: TFloatField
      FieldName = 'COFINSST_qBCProd'
      Origin = 'COFINSST_qBCProd'
    end
    object TVenda_ItemCOFINSST_vAliqProd: TFloatField
      FieldName = 'COFINSST_vAliqProd'
      Origin = 'COFINSST_vAliqProd'
    end
    object TVenda_ItemCOFINSST_vCOFINS: TFloatField
      FieldName = 'COFINSST_vCOFINS'
      Origin = 'COFINSST_vCOFINS'
    end
    object TVenda_ItemISSQN_vBC: TFloatField
      FieldName = 'ISSQN_vBC'
      Origin = 'ISSQN_vBC'
    end
    object TVenda_ItemISSQN_vAliq: TFloatField
      FieldName = 'ISSQN_vAliq'
      Origin = 'ISSQN_vAliq'
    end
    object TVenda_ItemISSQN_vISSQN: TFloatField
      FieldName = 'ISSQN_vISSQN'
      Origin = 'ISSQN_vISSQN'
    end
    object TVenda_ItemISSQN_cMunFG: TIntegerField
      FieldName = 'ISSQN_cMunFG'
      Origin = 'ISSQN_cMunFG'
    end
    object TVenda_ItemISSQN_cListServ: TIntegerField
      FieldName = 'ISSQN_cListServ'
      Origin = 'ISSQN_cListServ'
    end
    object TVenda_ItemISSQN_SitTrib: TIntegerField
      FieldName = 'ISSQN_SitTrib'
      Origin = 'ISSQN_SitTrib'
    end
    object TVenda_ItemICMS_vBCSTRet: TFloatField
      FieldName = 'ICMS_vBCSTRet'
      Origin = 'ICMS_vBCSTRet'
    end
    object TVenda_ItemICMS_vICMSSTRet: TFloatField
      FieldName = 'ICMS_vICMSSTRet'
      Origin = 'ICMS_vICMSSTRet'
    end
    object TVenda_ItemvTotTrib: TFloatField
      FieldName = 'vTotTrib'
      Origin = 'vTotTrib'
    end
    object TVenda_Itemecf_aliq: TStringField
      FieldName = 'ecf_aliq'
      Origin = 'ecf_aliq'
      Size = 4
    end
    object TVenda_Itemtrn: TStringField
      FieldName = 'trn'
      Origin = 'trn'
      FixedChar = True
      Size = 1
    end
    object TVenda_Itemvcomissao: TFloatField
      FieldName = 'vcomissao'
      Origin = 'vcomissao'
    end
  end
  object TECF: TFDQuery
    Connection = DB
    SQL.Strings = (
      'select * from ecf')
    Left = 22
    Top = 197
    object TECFecf: TIntegerField
      FieldName = 'ecf'
      Origin = 'ecf'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TECFestado: TIntegerField
      FieldName = 'estado'
      Origin = 'estado'
    end
    object TECFestado_ant: TIntegerField
      FieldName = 'estado_ant'
      Origin = 'estado_ant'
    end
    object TECFgt: TFloatField
      FieldName = 'gt'
      Origin = 'gt'
    end
    object TECFcro: TIntegerField
      FieldName = 'cro'
      Origin = 'cro'
    end
    object TECFcrz: TIntegerField
      FieldName = 'crz'
      Origin = 'crz'
    end
    object TECFcoo_ini: TIntegerField
      FieldName = 'coo_ini'
      Origin = 'coo_ini'
    end
    object TECFdt_movi: TDateField
      FieldName = 'dt_movi'
      Origin = 'dt_movi'
    end
    object TECFvr_din: TFloatField
      FieldName = 'vr_din'
      Origin = 'vr_din'
    end
    object TECFvr_tkt: TFloatField
      FieldName = 'vr_tkt'
      Origin = 'vr_tkt'
    end
    object TECFvr_chq: TFloatField
      FieldName = 'vr_chq'
      Origin = 'vr_chq'
    end
    object TECFvr_crt: TFloatField
      FieldName = 'vr_crt'
      Origin = 'vr_crt'
    end
    object TECFvr_fat: TFloatField
      FieldName = 'vr_fat'
      Origin = 'vr_fat'
    end
    object TECFvr_sang: TFloatField
      FieldName = 'vr_sang'
      Origin = 'vr_sang'
    end
    object TECFvr_supri: TFloatField
      FieldName = 'vr_supri'
      Origin = 'vr_supri'
    end
    object TECFvr_nfiscal: TFloatField
      FieldName = 'vr_nfiscal'
      Origin = 'vr_nfiscal'
    end
    object TECFtipo_doc: TStringField
      FieldName = 'tipo_doc'
      Origin = 'tipo_doc'
      FixedChar = True
      Size = 2
    end
    object TECFcf_totalizado: TBooleanField
      FieldName = 'cf_totalizado'
      Origin = 'cf_totalizado'
    end
    object TECFcnf_totalizado: TBooleanField
      FieldName = 'cnf_totalizado'
      Origin = 'cnf_totalizado'
    end
    object TECFdt_carga: TDateField
      FieldName = 'dt_carga'
      Origin = 'dt_carga'
    end
    object TECFvenda_bruta: TFloatField
      FieldName = 'venda_bruta'
      Origin = 'venda_bruta'
    end
  end
  object TRG: TFDQuery
    Connection = DB
    SQL.Strings = (
      'select * from rg')
    Left = 22
    Top = 344
    object TRGid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '00'
    end
    object TRGnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
    object TRGcodigo: TStringField
      FieldName = 'codigo'
      Origin = 'codigo'
    end
    object TRGnumecf: TIntegerField
      FieldName = 'numecf'
      Origin = 'numecf'
    end
  end
  object TCNF: TFDQuery
    Connection = DB
    SQL.Strings = (
      'select * from cnf')
    Left = 22
    Top = 394
    object TCNFid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '00'
    end
    object TCNFnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
    object TCNFcodigo: TStringField
      FieldName = 'codigo'
      Origin = 'codigo'
    end
    object TCNFnumecf: TIntegerField
      FieldName = 'numecf'
      Origin = 'numecf'
    end
  end
  object TPAF_A2: TFDQuery
    Connection = DB
    SQL.Strings = (
      'select * from paf_a2')
    Left = 366
    Top = 3
    object TPAF_A2id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TPAF_A2ecf: TIntegerField
      FieldName = 'ecf'
      Origin = 'ecf'
    end
    object TPAF_A2cod_fpag: TIntegerField
      FieldName = 'cod_fpag'
      Origin = 'cod_fpag'
    end
    object TPAF_A2valor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
    end
    object TPAF_A2data: TDateField
      FieldName = 'data'
      Origin = 'data'
    end
    object TPAF_A2tipo: TIntegerField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object TPAF_A2valor_canc: TFloatField
      FieldName = 'valor_canc'
      Origin = 'valor_canc'
    end
    object TPAF_A2r02: TIntegerField
      FieldName = 'r02'
      Origin = 'r02'
    end
    object TPAF_A2fpag: TStringField
      FieldName = 'fpag'
      Origin = 'fpag'
      Size = 30
    end
  end
  object SQLIteLink: TFDPhysSQLiteDriverLink
    Left = 102
    Top = 3
  end
  object TPAF_R02: TFDQuery
    AfterInsert = TPAF_R02AfterInsert
    Connection = DB
    SQL.Strings = (
      'select * from paf_r02')
    Left = 531
    Top = 70
    object TPAF_R02id: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPAF_R02num_ecf: TIntegerField
      FieldName = 'num_ecf'
      Origin = 'num_ecf'
    end
    object TPAF_R02num_usu: TIntegerField
      FieldName = 'num_usu'
      Origin = 'num_usu'
    end
    object TPAF_R02serie_ecf: TStringField
      FieldName = 'serie_ecf'
      Origin = 'serie_ecf'
    end
    object TPAF_R02mf_adic: TStringField
      FieldName = 'mf_adic'
      Origin = 'mf_adic'
      FixedChar = True
      Size = 1
    end
    object TPAF_R02crz: TIntegerField
      FieldName = 'crz'
      Origin = 'crz'
    end
    object TPAF_R02coo: TIntegerField
      FieldName = 'coo'
      Origin = 'coo'
    end
    object TPAF_R02coo_inicial: TIntegerField
      FieldName = 'coo_inicial'
      Origin = 'coo_inicial'
    end
    object TPAF_R02cro: TIntegerField
      FieldName = 'cro'
      Origin = 'cro'
    end
    object TPAF_R02dt_movi: TDateField
      FieldName = 'dt_movi'
      Origin = 'dt_movi'
    end
    object TPAF_R02dt_em: TDateField
      FieldName = 'dt_em'
      Origin = 'dt_em'
    end
    object TPAF_R02hora_em: TTimeField
      FieldName = 'hora_em'
      Origin = 'hora_em'
    end
    object TPAF_R02venda_bruta: TFloatField
      FieldName = 'venda_bruta'
      Origin = 'venda_bruta'
    end
    object TPAF_R02valor_gt: TFloatField
      FieldName = 'valor_gt'
      Origin = 'valor_gt'
    end
    object TPAF_R02issqn: TStringField
      FieldName = 'issqn'
      Origin = 'issqn'
      FixedChar = True
      Size = 1
    end
  end
  object TPAF_R03: TFDQuery
    MasterSource = DSPAF_R02
    MasterFields = 'id'
    Connection = DB
    SQL.Strings = (
      'select * from paf_r03 where r02=:id')
    Left = 531
    Top = 124
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TPAF_R03id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TPAF_R03r02: TIntegerField
      FieldName = 'r02'
      Origin = 'r02'
    end
    object TPAF_R03cod_tot_parcial: TStringField
      FieldName = 'cod_tot_parcial'
      Origin = 'cod_tot_parcial'
      Size = 7
    end
    object TPAF_R03valor_tot_parcial: TFloatField
      FieldName = 'valor_tot_parcial'
      Origin = 'valor_tot_parcial'
    end
  end
  object DSPAF_R03: TDataSource
    DataSet = TPAF_R03
    Left = 603
    Top = 124
  end
  object DSPAF_R02: TDataSource
    DataSet = TPAF_R02
    Left = 603
    Top = 70
  end
  object TPAF_R04: TFDQuery
    MasterSource = DSPAF_R02
    MasterFields = 'id'
    Connection = DB
    SQL.Strings = (
      'select * from paf_r04 where r02=:id')
    Left = 531
    Top = 178
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TPAF_R04id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TPAF_R04r02: TIntegerField
      FieldName = 'r02'
      Origin = 'r02'
    end
    object TPAF_R04ccf: TIntegerField
      FieldName = 'ccf'
      Origin = 'ccf'
    end
    object TPAF_R04coo: TIntegerField
      FieldName = 'coo'
      Origin = 'coo'
    end
    object TPAF_R04dt_em: TDateField
      FieldName = 'dt_em'
      Origin = 'dt_em'
    end
    object TPAF_R04subtotal: TFloatField
      FieldName = 'subtotal'
      Origin = 'subtotal'
    end
    object TPAF_R04desconto: TFloatField
      FieldName = 'desconto'
      Origin = 'desconto'
    end
    object TPAF_R04tipo_desc: TStringField
      FieldName = 'tipo_desc'
      Origin = 'tipo_desc'
      FixedChar = True
      Size = 1
    end
    object TPAF_R04acrescimo: TFloatField
      FieldName = 'acrescimo'
      Origin = 'acrescimo'
    end
    object TPAF_R04tipo_acresc: TStringField
      FieldName = 'tipo_acresc'
      Origin = 'tipo_acresc'
      FixedChar = True
      Size = 1
    end
    object TPAF_R04vr_liq: TFloatField
      FieldName = 'vr_liq'
      Origin = 'vr_liq'
    end
    object TPAF_R04canc: TStringField
      FieldName = 'canc'
      Origin = 'canc'
      FixedChar = True
      Size = 1
    end
    object TPAF_R04canc_acresc_st: TStringField
      FieldName = 'canc_acresc_st'
      Origin = 'canc_acresc_st'
      FixedChar = True
      Size = 1
    end
    object TPAF_R04ordem_desc_acresc: TStringField
      FieldName = 'ordem_desc_acresc'
      Origin = 'ordem_desc_acresc'
      FixedChar = True
      Size = 1
    end
    object TPAF_R04nome_cliente: TStringField
      FieldName = 'nome_cliente'
      Origin = 'nome_cliente'
      Size = 40
    end
    object TPAF_R04cnpj_cliente: TStringField
      FieldName = 'cnpj_cliente'
      Origin = 'cnpj_cliente'
      Size = 14
    end
  end
  object DSPAF_R04: TDataSource
    DataSet = TPAF_R04
    Left = 603
    Top = 178
  end
  object TPAF_R05: TFDQuery
    MasterSource = DSPAF_R04
    MasterFields = 'id'
    Connection = DB
    SQL.Strings = (
      'select * from paf_r05 where r04=:id')
    Left = 531
    Top = 229
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TPAF_R05id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TPAF_R05r04: TIntegerField
      FieldName = 'r04'
      Origin = 'r04'
    end
    object TPAF_R05item: TIntegerField
      FieldName = 'item'
      Origin = 'item'
    end
    object TPAF_R05codigo: TStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 14
    end
    object TPAF_R05cProd: TIntegerField
      FieldName = 'cProd'
      Origin = 'cProd'
    end
    object TPAF_R05nome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object TPAF_R05qtd: TFloatField
      FieldName = 'qtd'
      Origin = 'qtd'
    end
    object TPAF_R05unid: TStringField
      FieldName = 'unid'
      Origin = 'unid'
      Size = 3
    end
    object TPAF_R05vrunit: TFloatField
      FieldName = 'vrunit'
      Origin = 'vrunit'
    end
    object TPAF_R05desconto: TFloatField
      FieldName = 'desconto'
      Origin = 'desconto'
    end
    object TPAF_R05total: TFloatField
      FieldName = 'total'
      Origin = 'total'
    end
    object TPAF_R05cod_totaliz: TStringField
      FieldName = 'cod_totaliz'
      Origin = 'cod_totaliz'
      Size = 7
    end
    object TPAF_R05canc: TStringField
      FieldName = 'canc'
      Origin = 'canc'
      FixedChar = True
      Size = 1
    end
    object TPAF_R05qtd_canc: TFloatField
      FieldName = 'qtd_canc'
      Origin = 'qtd_canc'
    end
    object TPAF_R05vr_canc: TFloatField
      FieldName = 'vr_canc'
      Origin = 'vr_canc'
    end
    object TPAF_R05vr_canc_acresc: TFloatField
      FieldName = 'vr_canc_acresc'
      Origin = 'vr_canc_acresc'
    end
    object TPAF_R05iat: TStringField
      FieldName = 'iat'
      Origin = 'iat'
      FixedChar = True
      Size = 1
    end
    object TPAF_R05ippt: TStringField
      FieldName = 'ippt'
      Origin = 'ippt'
      FixedChar = True
      Size = 1
    end
    object TPAF_R05casas_dec_qtd: TStringField
      FieldName = 'casas_dec_qtd'
      Origin = 'casas_dec_qtd'
      FixedChar = True
      Size = 1
    end
    object TPAF_R05casas_dec_vrunit: TStringField
      FieldName = 'casas_dec_vrunit'
      Origin = 'casas_dec_vrunit'
      FixedChar = True
      Size = 1
    end
  end
  object DSPAF_R05: TDataSource
    DataSet = TPAF_R05
    Left = 602
    Top = 229
  end
  object TPAF_R06: TFDQuery
    MasterSource = DSPAF_R02
    MasterFields = 'id'
    Connection = DB
    SQL.Strings = (
      'select * from paf_r06 where r02=:id')
    Left = 531
    Top = 281
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TPAF_R06id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TPAF_R06r02: TIntegerField
      FieldName = 'r02'
      Origin = 'r02'
    end
    object TPAF_R06coo: TIntegerField
      FieldName = 'coo'
      Origin = 'coo'
    end
    object TPAF_R06gnf: TIntegerField
      FieldName = 'gnf'
      Origin = 'gnf'
    end
    object TPAF_R06grg: TIntegerField
      FieldName = 'grg'
      Origin = 'grg'
    end
    object TPAF_R06cdc: TIntegerField
      FieldName = 'cdc'
      Origin = 'cdc'
    end
    object TPAF_R06denominacao: TStringField
      FieldName = 'denominacao'
      Origin = 'denominacao'
      FixedChar = True
      Size = 2
    end
    object TPAF_R06dt_emissao: TDateField
      FieldName = 'dt_emissao'
      Origin = 'dt_emissao'
    end
    object TPAF_R06hora_em: TTimeField
      FieldName = 'hora_em'
      Origin = 'hora_em'
    end
  end
  object DSPAF_R06: TDataSource
    DataSet = TPAF_R06
    Left = 602
    Top = 281
  end
  object TPAF_R07: TFDQuery
    Connection = DB
    SQL.Strings = (
      'select * from paf_r07')
    Left = 531
    Top = 336
    object TPAF_R07id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TPAF_R07r04: TIntegerField
      FieldName = 'r04'
      Origin = 'r04'
    end
    object TPAF_R07r06: TIntegerField
      FieldName = 'r06'
      Origin = 'r06'
    end
    object TPAF_R07meio_pag: TStringField
      FieldName = 'meio_pag'
      Origin = 'meio_pag'
      Size = 15
    end
    object TPAF_R07valor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
    end
    object TPAF_R07extorno: TStringField
      FieldName = 'extorno'
      Origin = 'extorno'
      FixedChar = True
      Size = 1
    end
    object TPAF_R07valor_extorno: TFloatField
      FieldName = 'valor_extorno'
      Origin = 'valor_extorno'
    end
  end
  object DSPAF_R07: TDataSource
    DataSet = TPAF_R07
    Left = 602
    Top = 336
  end
  object TPAF_E2: TFDQuery
    CachedUpdates = True
    Connection = DB
    SQL.Strings = (
      'select * from paf_e2')
    Left = 366
    Top = 98
    object TPAF_E2id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TPAF_E2e3: TIntegerField
      FieldName = 'e3'
      Origin = 'e3'
    end
    object TPAF_E2cProd: TIntegerField
      FieldName = 'cProd'
      Origin = 'cProd'
    end
    object TPAF_E2codigo: TStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 14
    end
    object TPAF_E2nome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TPAF_E2unid: TStringField
      FieldName = 'unid'
      Origin = 'unid'
      Size = 6
    end
    object TPAF_E2mensuracao: TStringField
      FieldName = 'mensuracao'
      Origin = 'mensuracao'
      FixedChar = True
      Size = 1
    end
    object TPAF_E2qtd: TFloatField
      FieldName = 'qtd'
      Origin = 'qtd'
    end
  end
  object TPAF_E3: TFDQuery
    Connection = DB
    SQL.Strings = (
      'select * from paf_e3')
    Left = 366
    Top = 52
    object TPAF_E3id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TPAF_E3nmro_ecf: TIntegerField
      FieldName = 'nmro_ecf'
      Origin = 'nmro_ecf'
    end
    object TPAF_E3serie: TStringField
      FieldName = 'serie'
      Origin = 'serie'
    end
    object TPAF_E3mf_adic: TStringField
      FieldName = 'mf_adic'
      Origin = 'mf_adic'
      FixedChar = True
      Size = 1
    end
    object TPAF_E3tipo_ecf: TStringField
      FieldName = 'tipo_ecf'
      Origin = 'tipo_ecf'
      Size = 7
    end
    object TPAF_E3marca_ecf: TStringField
      FieldName = 'marca_ecf'
      Origin = 'marca_ecf'
    end
    object TPAF_E3mod_ecd: TStringField
      FieldName = 'mod_ecd'
      Origin = 'mod_ecd'
    end
    object TPAF_E3data_estoque: TDateField
      FieldName = 'data_estoque'
      Origin = 'data_estoque'
    end
    object TPAF_E3hora_estoque: TTimeField
      FieldName = 'hora_estoque'
      Origin = 'hora_estoque'
    end
  end
  object TAliq: TFDQuery
    Connection = DB
    SQL.Strings = (
      'select * from aliquota')
    Left = 22
    Top = 441
    object TAliqid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TAliqindice_ecf: TStringField
      FieldName = 'indice_ecf'
      Origin = 'indice_ecf'
      FixedChar = True
      Size = 2
    end
    object TAliqcod_ecf: TStringField
      FieldName = 'cod_ecf'
      Origin = 'cod_ecf'
      Size = 5
    end
    object TAliqcod_paf: TStringField
      FieldName = 'cod_paf'
      Origin = 'cod_paf'
      Size = 7
    end
    object TAliqnumecf: TIntegerField
      FieldName = 'numecf'
      Origin = 'numecf'
    end
  end
  object DSPAF_R01: TDataSource
    DataSet = TPAF_R01
    Left = 603
    Top = 14
  end
  object TPaf_cancelar: TFDQuery
    Connection = DB
    SQL.Strings = (
      'select * from paf_cancelar')
    Left = 366
    Top = 146
    object TPaf_cancelarid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TPaf_cancelarcoo: TIntegerField
      FieldName = 'coo'
      Origin = 'coo'
    end
    object TPaf_cancelarccf: TIntegerField
      FieldName = 'ccf'
      Origin = 'ccf'
    end
  end
  object TOper_CRT: TFDQuery
    Connection = DB
    SQL.Strings = (
      'select * from oper_crt order by nome')
    Left = 182
    Top = 198
    object TOper_CRTid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TOper_CRTcnpj: TStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object TOper_CRTnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object TOper_CRTrazaosocial: TStringField
      FieldName = 'razaosocial'
      Origin = 'razaosocial'
      Size = 100
    end
    object TOper_CRTtel1: TStringField
      FieldName = 'tel1'
      Origin = 'tel1'
      Size = 15
    end
    object TOper_CRTlogradouro: TStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 100
    end
    object TOper_CRTnmro: TStringField
      FieldName = 'nmro'
      Origin = 'nmro'
    end
    object TOper_CRTcomplem: TStringField
      FieldName = 'complem'
      Origin = 'complem'
    end
    object TOper_CRTbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object TOper_CRTuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object TOper_CRTcodmun: TStringField
      FieldName = 'codmun'
      Origin = 'codmun'
    end
  end
  object TPFP: TFDQuery
    MasterSource = DSVenda
    MasterFields = 'id'
    Connection = DB
    SQL.Strings = (
      'select * from pfp')
    Left = 182
    Top = 246
    object TPFPid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TPFPvenda: TIntegerField
      FieldName = 'venda'
      Origin = 'venda'
    end
    object TPFPdt_receita: TDateField
      FieldName = 'dt_receita'
      Origin = 'dt_receita'
    end
    object TPFPcrm: TStringField
      FieldName = 'crm'
      Origin = 'crm'
      Size = 50
    end
    object TPFPuf_crm: TStringField
      FieldName = 'uf_crm'
      Origin = 'uf_crm'
      FixedChar = True
      Size = 2
    end
    object TPFPcpf_farma: TStringField
      FieldName = 'cpf_farma'
      Origin = 'cpf_farma'
    end
    object TPFPcod_autoriz: TStringField
      FieldName = 'cod_autoriz'
      Origin = 'cod_autoriz'
      Size = 50
    end
    object TPFPhora_envioreq: TTimeField
      FieldName = 'hora_envioreq'
      Origin = 'hora_envioreq'
    end
    object TPFPhora_recreq: TTimeField
      FieldName = 'hora_recreq'
      Origin = 'hora_recreq'
    end
    object TPFPhora_evioconfreq: TTimeField
      FieldName = 'hora_evioconfreq'
      Origin = 'hora_evioconfreq'
    end
    object TPFPhorarecconf: TTimeField
      FieldName = 'horarecconf'
      Origin = 'horarecconf'
    end
    object TPFPhora_eviodadosconf: TTimeField
      FieldName = 'hora_eviodadosconf'
      Origin = 'hora_eviodadosconf'
    end
    object TPFPhora_recdadosconf: TTimeField
      FieldName = 'hora_recdadosconf'
      Origin = 'hora_recdadosconf'
    end
    object TPFPqtpresc: TFloatField
      FieldName = 'qtpresc'
      Origin = 'qtpresc'
    end
    object TPFPcpf_cli: TStringField
      FieldName = 'cpf_cli'
      Origin = 'cpf_cli'
    end
    object TPFPnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TPFPender: TStringField
      FieldName = 'ender'
      Origin = 'ender'
      Size = 50
    end
    object TPFPdt_extorno: TDateTimeField
      FieldName = 'dt_extorno'
      Origin = 'dt_extorno'
    end
    object TPFPdt_atualiz: TDateTimeField
      FieldName = 'dt_atualiz'
      Origin = 'dt_atualiz'
    end
    object TPFPcv: TMemoField
      FieldName = 'cv'
      Origin = 'cv'
      BlobType = ftMemo
    end
  end
  object TTrn: TFDQuery
    AfterOpen = TTrnAfterOpen
    AfterPost = TTrnAfterPost
    MasterSource = DSVenda
    MasterFields = 'id'
    Connection = DB
    SQL.Strings = (
      'select * from trn where venda=:id')
    Left = 182
    Top = 294
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TTrnid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TTrnvenda: TIntegerField
      FieldName = 'venda'
      Origin = 'venda'
    end
    object TTrnnsu: TStringField
      FieldName = 'nsu'
      Origin = 'nsu'
    end
    object TTrnnsu_adm: TStringField
      FieldName = 'nsu_adm'
      Origin = 'nsu_adm'
    end
    object TTrnoperadora: TStringField
      FieldName = 'operadora'
      Origin = 'operadora'
    end
    object TTrnvr_liq: TFloatField
      FieldName = 'vr_liq'
      Origin = 'vr_liq'
    end
    object TTrnvr_rec: TFloatField
      FieldName = 'vr_rec'
      Origin = 'vr_rec'
    end
    object TTrnlote: TStringField
      FieldName = 'lote'
      Origin = 'lote'
    end
    object TTrnautoriz: TStringField
      FieldName = 'autoriz'
      Origin = 'autoriz'
    end
    object TTrncrt: TStringField
      FieldName = 'crt'
      Origin = 'crt'
    end
    object TTrnnsu_adm_canc: TStringField
      FieldName = 'nsu_adm_canc'
      Origin = 'nsu_adm_canc'
    end
  end
  object TTrn_Item: TFDQuery
    MasterSource = DSTrn
    MasterFields = 'id'
    Connection = DB
    SQL.Strings = (
      'select* from trn_item where trn=:id')
    Left = 182
    Top = 344
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TTrn_Itemid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TTrn_Itemtrn: TIntegerField
      FieldName = 'trn'
      Origin = 'trn'
    end
    object TTrn_ItemcProd: TIntegerField
      FieldName = 'cProd'
      Origin = 'cProd'
    end
    object TTrn_Itemvrbrt: TFloatField
      FieldName = 'vrbrt'
      Origin = 'vrbrt'
    end
    object TTrn_Itemvrliq: TFloatField
      FieldName = 'vrliq'
      Origin = 'vrliq'
    end
    object TTrn_Itemvrdin: TFloatField
      FieldName = 'vrdin'
      Origin = 'vrdin'
    end
    object TTrn_Itemvrbrt_local: TFloatField
      FieldName = 'vrbrt_local'
      Origin = 'vrbrt_local'
    end
    object TTrn_Itemvrliq_local: TFloatField
      FieldName = 'vrliq_local'
      Origin = 'vrliq_local'
    end
    object TTrn_Itempc_desc: TFloatField
      FieldName = 'pc_desc'
      Origin = 'pc_desc'
    end
    object TTrn_Itemparcial: TBooleanField
      FieldName = 'parcial'
      Origin = 'parcial'
    end
    object TTrn_Itemean: TStringField
      FieldName = 'ean'
      Origin = 'ean'
    end
    object TTrn_Itemqtd: TFloatField
      FieldName = 'qtd'
      Origin = 'qtd'
    end
    object TTrn_Itemcomplem: TStringField
      FieldName = 'complem'
      Origin = 'complem'
    end
  end
  object DSTrn: TDataSource
    DataSet = TTrn
    Left = 230
    Top = 324
  end
  object TVendedor: TFDQuery
    Connection = DB
    SQL.Strings = (
      'select * from vendedor')
    Left = 102
    Top = 98
    object TVendedorid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TVendedornome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 40
    end
    object TVendedorcomissao: TFloatField
      FieldName = 'comissao'
      Origin = 'comissao'
    end
    object TVendedorsenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 10
    end
    object TVendedornomered: TStringField
      FieldName = 'nomered'
      Origin = 'nomered'
      Size = 15
    end
  end
  object TCanc: TFDQuery
    MasterSource = DSVenda
    MasterFields = 'id'
    Connection = DB
    SQL.Strings = (
      'select v.id,r4.canc from venda v '
      'left join paf_r04 r4 on((r4.coo = v.coo))'
      'where v.id=:id')
    Left = 182
    Top = 394
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TCancid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TCanccanc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'canc'
      Origin = 'canc'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object TFRVenda: TfrxDBDataset
    UserName = 'TFRVenda'
    CloseDataSource = False
    DataSet = TVenda
    BCDToCurrency = False
    Left = 718
    Top = 209
  end
  object TFRItem: TfrxDBDataset
    UserName = 'TFRItem'
    CloseDataSource = False
    DataSet = TVenda_Item
    BCDToCurrency = False
    Left = 718
    Top = 269
  end
  object TFRCli: TfrxDBDataset
    UserName = 'TFRCli'
    CloseDataSource = False
    DataSet = TCli
    BCDToCurrency = False
    Left = 718
    Top = 333
  end
  object Rep1: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41876.894018495400000000
    ReportOptions.LastChange = 42310.578283067130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 720
    Top = 24
    Datasets = <
      item
        DataSet = FREmpresa
        DataSetName = 'FREmpresa'
      end
      item
        DataSet = TFRCli
        DataSetName = 'TFRCli'
      end
      item
        DataSet = TFRItem
        DataSetName = 'TFRItem'
      end
      item
        DataSet = TFROper
        DataSetName = 'TFROper'
      end
      item
        DataSet = TFRVenda
        DataSetName = 'TFRVenda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 300.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 10.000000000000000000
      EndlessHeight = True
      LargeDesignHeight = True
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 264.567100000000000000
        object TFRVendacoo: TfrxMemoView
          Left = 3.779530000000000000
          Top = 48.118120000000010000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = TFRVenda
          DataSetName = 'TFRVenda'
          DisplayFormat.FormatStr = '%.6d'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RECIBO: [TFRVenda."coo"]')
          ParentFont = False
          WordWrap = False
        end
        object TFRClirazaosocial: TfrxMemoView
          Top = 74.574830000000000000
          Width = 260.787570000000000000
          Height = 30.236240000000000000
          DataSet = TFRCli
          DataSetName = 'TFRCli'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[<TFRVenda."cliente">]) [<TFRCli."razaosocial">]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 2.559060000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FREmpresa."nome_fantasia"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 147.401670000000000000
          Top = 48.354360000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = TFRVenda
          DataSetName = 'TFRVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] [Time]')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          Top = 105.826840000000000000
          Width = 260.787570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object FREmpresalogradouro: TfrxMemoView
          Left = 2.000000000000000000
          Top = 20.677180000000000000
          Width = 400.630180000000000000
          Height = 22.677180000000000000
          DataSet = FREmpresa
          DataSetName = 'FREmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FREmpresa."logradouro"] [FREmpresa."numero"]'
            'FONE: [FREmpresa."tel1"]')
          ParentFont = False
        end
        object TFRClilogradouro: TfrxMemoView
          Left = 2.559060000000000000
          Top = 86.929190000000000000
          Width = 260.787570000000000000
          Height = 11.338590000000000000
          DataSet = TFRCli
          DataSetName = 'TFRCli'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[TFRCli."logradouro"] [TFRCli."nmro"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 30.236240000000000000
        ParentFont = False
        Top = 188.976500000000000000
        Width = 264.567100000000000000
        DataSet = TFRItem
        DataSetName = 'TFRItem'
        RowCount = 0
        object TFRItemnItem: TfrxMemoView
          Left = 2.779530000000000000
          Top = 1.000000000000000000
          Width = 18.897650000000000000
          Height = 11.338590000000000000
          DataField = 'nItem'
          DataSet = TFRItem
          DataSetName = 'TFRItem'
          DisplayFormat.FormatStr = '%.3d'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[TFRItem."nItem"]')
          ParentFont = False
          WordWrap = False
        end
        object TFRItemcEAN: TfrxMemoView
          Left = 22.354360000000000000
          Top = 1.000000000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataField = 'cEAN'
          DataSet = TFRItem
          DataSetName = 'TFRItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[TFRItem."cEAN"]')
          ParentFont = False
          WordWrap = False
        end
        object TFRItemxProd: TfrxMemoView
          Left = 77.622140000000000000
          Top = 1.000000000000000000
          Width = 185.196970000000000000
          Height = 11.338590000000000000
          DataField = 'xProd'
          DataSet = TFRItem
          DataSetName = 'TFRItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[TFRItem."xProd"]')
          ParentFont = False
          WordWrap = False
        end
        object TFRItemqCom: TfrxMemoView
          Left = 61.795300000000000000
          Top = 13.677179999999990000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataSet = TFRItem
          DataSetName = 'TFRItem'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TFRItem."qCom"] X')
          ParentFont = False
          WordWrap = False
        end
        object TFRItemvUnCom: TfrxMemoView
          Left = 115.724490000000000000
          Top = 13.677179999999990000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = TFRItem
          DataSetName = 'TFRItem'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[TFRItem."vUnCom"] =')
          ParentFont = False
          WordWrap = False
        end
        object TFRItemvProd: TfrxMemoView
          Left = 185.196970000000000000
          Top = 13.677179999999990000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'vProd'
          DataSet = TFRItem
          DataSetName = 'TFRItem'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[TFRItem."vProd"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 120.944960000000000000
        Top = 279.685220000000000000
        Width = 264.567100000000000000
        object TFRVendavalor: TfrxMemoView
          Left = 138.196970000000000000
          Top = 1.779530000000022000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = TFRVenda
          DataSetName = 'TFRVenda'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR: [TFRVenda."valor"]')
          ParentFont = False
          WordWrap = False
        end
        object TFRVendavr_desconto: TfrxMemoView
          Left = 138.196970000000000000
          Top = 21.456709999999990000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = TFRVenda
          DataSetName = 'TFRVenda'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESC.: [TFRVenda."vr_desconto"]')
          ParentFont = False
          WordWrap = False
        end
        object TFRVendatroco: TfrxMemoView
          Left = 138.196970000000000000
          Top = 61.574830000000030000
          Width = 128.504020000000000000
          Height = 11.338590000000000000
          DataSet = TFRVenda
          DataSetName = 'TFRVenda'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TROCO: [TFRVenda."troco"]')
          ParentFont = False
          WordWrap = False
        end
        object TFROpernome: TfrxMemoView
          Left = 128.504020000000000000
          Top = 105.826840000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          DataSet = TFROper
          DataSetName = 'TFROper'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Operador: [TFROper."nome"]')
          ParentFont = False
          WordWrap = False
        end
        object Line2: TfrxLineView
          Left = 1.779530000000000000
          Width = 260.787570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 92.929190000000000000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do cliente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 138.960730000000000000
          Top = 41.574830000000020000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = TFRVenda
          DataSetName = 'TFRVenda'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL.:[<TFRVenda."valor">-<TFRVenda."vr_desconto">]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object TFROper: TfrxDBDataset
    UserName = 'TFROper'
    CloseDataSource = False
    DataSet = TOperador
    BCDToCurrency = False
    Left = 718
    Top = 389
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 720
    Top = 96
  end
  object FREmpresa: TfrxDBDataset
    UserName = 'FREmpresa'
    CloseDataSource = False
    DataSet = TEmpresa
    BCDToCurrency = False
    Left = 720
    Top = 160
  end
  object TIBPTax_Itens: TFDQuery
    Connection = DB
    SQL.Strings = (
      'select * from ibptax_itens')
    Left = 90
    Top = 294
    object TIBPTax_Itensid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TIBPTax_Itensncm: TStringField
      FieldName = 'ncm'
      Origin = 'ncm'
      Size = 10
    end
    object TIBPTax_Itensex: TStringField
      FieldName = 'ex'
      Origin = 'ex'
      Size = 2
    end
    object TIBPTax_Itenstabela: TIntegerField
      FieldName = 'tabela'
      Origin = 'tabela'
    end
    object TIBPTax_Itensnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object TIBPTax_Itensnacional: TFloatField
      FieldName = 'nacional'
      Origin = 'nacional'
    end
    object TIBPTax_Itensimportado: TFloatField
      FieldName = 'importado'
      Origin = 'importado'
    end
    object TIBPTax_Itensestadual: TFloatField
      FieldName = 'estadual'
      Origin = 'estadual'
    end
    object TIBPTax_Itensmunicipal: TFloatField
      FieldName = 'municipal'
      Origin = 'municipal'
    end
    object TIBPTax_Itensmd5: TStringField
      FieldName = 'md5'
      Origin = 'md5'
      Size = 50
    end
  end
end
