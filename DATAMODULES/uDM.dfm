object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 1097
  Width = 1255
  object QEmpresa: TFDQuery
    Tag = 1
    BeforePost = QEmpresaBeforePost
    AfterPost = QEmpresaAfterPost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from empresa limit 1')
    Left = 21
    Top = 12
    object QEmpresaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QEmpresarazao_social: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RAZ'#195'O SOCIAL'
      FieldName = 'razao_social'
      Origin = 'razao_social'
      Size = 50
    end
    object QEmpresanome_fantasia: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME FANTASIA'
      FieldName = 'nome_fantasia'
      Origin = 'nome_fantasia'
      Size = 40
    end
    object QEmpresacnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object QEmpresaie: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'INSCR. ESTADUAL'
      FieldName = 'ie'
      Origin = 'ie'
    end
    object QEmpresaim: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'INSCR. MUNICIPAL'
      FieldName = 'im'
      Origin = 'im'
    end
    object QEmpresalogradouro: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'LOGRADOURO'
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 50
    end
    object QEmpresanumero: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#186
      FieldName = 'numero'
      Origin = 'numero'
    end
    object QEmpresacomplem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complem'
      LookupDataSet = cdcsosn
      Origin = 'complem'
    end
    object QEmpresabairro: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'BAIRRO'
      FieldName = 'bairro'
      Origin = 'bairro'
    end
    object QEmpresacidade: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CIDADE'
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object QEmpresaindativ: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IND. ATIVIDADE'
      FieldName = 'indativ'
      Origin = 'indativ'
    end
    object QEmpresaindativ_sped: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'indativ_sped'
      Origin = 'indativ_sped'
    end
    object QEmpresaperfil: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'PERFIL'
      FieldName = 'perfil'
      Origin = 'perfil'
      FixedChar = True
      Size = 1
    end
    object QEmpresacodmun: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CIDADE'
      FieldName = 'codmun'
      Origin = 'codmun'
    end
    object QEmpresacep: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '00\.000\-000;0;'
      Size = 16
    end
    object QEmpresauf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object QEmpresatel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel1'
      Origin = 'tel1'
      EditMask = '\(99\)9999\-9999####;0;'
    end
    object QEmpresatel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel2'
      Origin = 'tel2'
      EditMask = '\(99\)9999\-9999####;0;'
    end
    object QEmpresafax: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fax'
      Origin = 'fax'
      EditMask = '\(99\)9999\-9999####;0;'
      Size = 16
    end
    object QEmpresaemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object QEmpresanome_resp: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME DO RESPONS'#193'VEL LEGAL'
      FieldName = 'nome_resp'
      Origin = 'nome_resp'
      Size = 40
    end
    object QEmpresacpf_resp: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF RESP. LEGAL'
      FieldName = 'cpf_resp'
      Origin = 'cpf_resp'
    end
    object QEmpresarg_resp: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RG RESP. LEGAL'
      FieldName = 'rg_resp'
      Origin = 'rg_resp'
    end
    object QEmpresasubst_trib: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'subst_trib'
      Origin = 'subst_trib'
      FixedChar = True
      Size = 1
    end
    object QEmpresacontr_ipi: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contr_ipi'
      Origin = 'contr_ipi'
      FixedChar = True
      Size = 1
    end
    object QEmpresacont_nome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME DO CONTABILISTA'
      FieldName = 'cont_nome'
      Origin = 'cont_nome'
      Size = 50
    end
    object QEmpresacont_cpf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF  DO CONTABILISTA'
      FieldName = 'cont_cpf'
      Origin = 'cont_cpf'
    end
    object QEmpresacont_crc: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CRC'
      FieldName = 'cont_crc'
      Origin = 'cont_crc'
    end
    object QEmpresacont_cep: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP  DO CONTABILISTA'
      FieldName = 'cont_cep'
      Origin = 'cont_cep'
      EditMask = '00\.000\-000;0;'
      Size = 10
    end
    object QEmpresacont_cnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ  DO CONTABILISTA'
      FieldName = 'cont_cnpj'
      Origin = 'cont_cnpj'
    end
    object QEmpresacont_logradouro: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'LOGRADOURO  DO CONTABILISTA'
      FieldName = 'cont_logradouro'
      Origin = 'cont_logradouro'
      Size = 50
    end
    object QEmpresacont_nmro: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#186'  DO CONTABILISTA'
      FieldName = 'cont_nmro'
      Origin = 'cont_nmro'
    end
    object QEmpresacont_complem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cont_complem'
      Origin = 'cont_complem'
    end
    object QEmpresacont_bairro: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'BAIRRO  DO CONTABILISTA'
      FieldName = 'cont_bairro'
      Origin = 'cont_bairro'
      Size = 30
    end
    object QEmpresacont_tel: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'TEL  DO CONTABILISTA'
      FieldName = 'cont_tel'
      Origin = 'cont_tel'
      EditMask = '\(99\)9999\-9999####;0;'
    end
    object QEmpresacont_fax: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'FAX  DO CONTABILISTA'
      FieldName = 'cont_fax'
      Origin = 'cont_fax'
      EditMask = '\(99\)9999\-9999####;0;'
    end
    object QEmpresacont_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'EMAIL DO CONTABILISTA'
      FieldName = 'cont_email'
      Origin = 'cont_email'
      Size = 60
    end
    object QEmpresacont_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cont_cidade'
      Origin = 'cont_cidade'
      Size = 255
    end
    object QEmpresacont_codmun: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CIDADE  DO CONTABILISTA'
      FieldName = 'cont_codmun'
      Origin = 'cont_codmun'
    end
    object QEmpresacont_uf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF  DO CONTABILISTA'
      FieldName = 'cont_uf'
      Origin = 'cont_uf'
      FixedChar = True
      Size = 2
    end
    object QEmpresacnae_prim: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnae_prim'
      Origin = 'cnae_prim'
    end
    object QEmpresacnae_sec: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnae_sec'
      Origin = 'cnae_sec'
    end
    object QEmpresafarmac_cpf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF FARAMAC'#202'UTICO'
      FieldName = 'farmac_cpf'
      Origin = 'farmac_cpf'
    end
    object QEmpresafarmac_crf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CRF'
      FieldName = 'farmac_crf'
      Origin = 'farmac_crf'
    end
    object QEmpresafarmac_crf_uf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CRF UF'
      FieldName = 'farmac_crf_uf'
      Origin = 'farmac_crf_uf'
      FixedChar = True
      Size = 2
    end
    object QEmpresafarmac_nome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME FARAMAC'#202'UTICO'
      FieldName = 'farmac_nome'
      Origin = 'farmac_nome'
      Size = 40
    end
    object QEmpresaefd_fiscal_data: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'efd_fiscal_data'
      Origin = 'efd_fiscal_data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QEmpresaefd_fiscal_pc_tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'efd_fiscal_pc_tipo'
      Origin = 'efd_fiscal_pc_tipo'
      FixedChar = True
      Size = 1
    end
    object QEmpresaefd_fiscal_pc_nat: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'efd_fiscal_pc_nat'
      Origin = 'efd_fiscal_pc_nat'
    end
    object QEmpresaefd_fiscal_pc_nivel: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'efd_fiscal_pc_nivel'
      Origin = 'efd_fiscal_pc_nivel'
    end
    object QEmpresaefd_fiscal_pc_cod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'efd_fiscal_pc_cod'
      Origin = 'efd_fiscal_pc_cod'
    end
    object QEmpresaefd_fiscal_pc_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'efd_fiscal_pc_nome'
      Origin = 'efd_fiscal_pc_nome'
      Size = 50
    end
    object QEmpresaefd_fiscal_cc_data: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'efd_fiscal_cc_data'
      Origin = 'efd_fiscal_cc_data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QEmpresaefd_fiscal_cc_cod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'efd_fiscal_cc_cod'
      Origin = 'efd_fiscal_cc_cod'
    end
    object QEmpresaefd_fiscal_cc_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'efd_fiscal_cc_nome'
      Origin = 'efd_fiscal_cc_nome'
      Size = 50
    end
    object QEmpresaefd_fiscal_cod_icms_a_recolher: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'efd_fiscal_cod_icms_a_recolher'
      Origin = 'efd_fiscal_cod_icms_a_recolher'
      FixedChar = True
      Size = 3
    end
    object QEmpresaefd_fiscal_dia_venc_icms: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'efd_fiscal_dia_venc_icms'
      Origin = 'efd_fiscal_dia_venc_icms'
      MaxValue = 31
      MinValue = 1
    end
    object QEmpresaefd_fiscal_mes_subseq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'efd_fiscal_mes_subseq'
      Origin = 'efd_fiscal_mes_subseq'
      FixedChar = True
      Size = 1
    end
    object QEmpresaefd_fiscal_cod_receita: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'efd_fiscal_cod_receita'
      Origin = 'efd_fiscal_cod_receita'
    end
    object QEmpresahash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
    object QEmpresamd5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object QEmpresaefd_contr_pis_aliq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'efd_contr_pis_aliq'
      Origin = 'efd_contr_pis_aliq'
      DisplayFormat = '0.00'
    end
    object QEmpresaefd_contr_cofins_aliq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'efd_contr_cofins_aliq'
      Origin = 'efd_contr_cofins_aliq'
      DisplayFormat = '0.00'
    end
    object QEmpresadt_atualiz: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'dt_atualiz'
      Origin = 'dt_atualiz'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object QEmpresaefd_contr_npj: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'efd_contr_npj'
      Origin = 'efd_contr_npj'
    end
    object QEmpresaefd_contr_ativ_prep: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'efd_contr_ativ_prep'
      Origin = 'efd_contr_ativ_prep'
    end
  end
  object QConvenio: TFDQuery
    BeforePost = QConvenioBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from convenio order by id desc limit 1')
    Left = 77
    Top = 12
    object QConvenioid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QConvenioCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object QConvenioNOME: TStringField
      DisplayLabel = 'NOME FANTASIA'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 40
    end
    object QConvenioRAZAOSOCIAL: TStringField
      DisplayLabel = 'RAZ'#195'O SOCIAL'
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Required = True
      Size = 40
    end
    object QConvenioTEL1: TStringField
      DisplayLabel = 'TEL 1'
      FieldName = 'TEL1'
      Origin = 'TEL1'
      EditMask = '\(99\)9999\-9999####;0; '
      Size = 15
    end
    object QConvenioTEL2: TStringField
      DisplayLabel = 'TEL 2'
      FieldName = 'TEL2'
      Origin = 'TEL2'
      EditMask = '\(99\)9999\-9999####;0; '
      Size = 14
    end
    object QConvenioFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      EditMask = '\(99\)9999\-9999####;0; '
      Size = 15
    end
    object QConvenioCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      EditMask = '\(99\)9999\-9999####;0; '
      Size = 15
    end
    object QConvenioLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Origin = 'LOGRADOURO'
      Required = True
      Size = 40
    end
    object QConvenioNMRO: TStringField
      DisplayLabel = 'N'#186
      FieldName = 'NMRO'
      Origin = 'NMRO'
      Required = True
    end
    object QConvenioCOMPLEM: TStringField
      FieldName = 'COMPLEM'
      Origin = 'COMPLEM'
    end
    object QConvenioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 40
    end
    object QConvenioCIDADE: TStringField
      DisplayLabel = 'MUNIC'#205'PIO'
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 30
    end
    object QConvenioUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object QConvenioCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '00\.000\-000;0; '
      Size = 12
    end
    object QConvenioIE: TStringField
      DisplayLabel = 'INSCR. ESTFDUAL'
      FieldName = 'IE'
      Origin = 'IE'
    end
    object QConvenioIM: TStringField
      DisplayLabel = 'INSCR. MUNIC.'
      FieldName = 'IM'
      Origin = 'IM'
    end
    object QConvenioOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object QConvenioSUSPENSO: TStringField
      FieldName = 'SUSPENSO'
      Origin = 'SUSPENSO'
      FixedChar = True
      Size = 1
    end
    object QConveniocodmun: TStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'codmun'
      Origin = 'codmun'
    end
  end
  object QOperador: TFDQuery
    Tag = 1
    BeforeInsert = QOperadorBeforeInsert
    BeforeEdit = QOperadorBeforeEdit
    BeforePost = QOperadorBeforePost
    BeforeDelete = QOperadorBeforeDelete
    Connection = DMConn.DB
    ResourceOptions.AssignedValues = [rvPersistent, rvBackup]
    SQL.Strings = (
      'select * from operador order by nome')
    Left = 192
    Top = 80
    object QOperadorid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QOperadornome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 40
    end
    object QOperadorcomissao: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'comissao'
      Origin = 'comissao'
      DisplayFormat = '0.00#%'
    end
    object QOperadorsenha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'senha'
      Origin = 'senha'
      Size = 10
    end
    object QOperadornomered: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomered'
      Origin = 'nomered'
      Size = 15
    end
    object QOperadorendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 40
    end
    object QOperadorcidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object QOperadoruf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object QOperadortel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel'
      Origin = 'tel'
      Size = 16
    end
    object QOperadordt_cad: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_cad'
      Origin = 'dt_cad'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QOperadoracesso: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'acesso'
      Origin = 'acesso'
    end
    object QOperadoratualizado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'atualizado'
      Origin = 'atualizado'
      Size = 50
    end
  end
  object DSOperador: TDataSource
    AutoEdit = False
    DataSet = QOperador
    Left = 192
    Top = 128
  end
  object QVendedor: TFDQuery
    BeforePost = QVendedorBeforePost
    Connection = DMConn.DB
    ResourceOptions.AssignedValues = [rvPersistent, rvBackup]
    SQL.Strings = (
      'select * from vendedor order by nome')
    Left = 290
    Top = 12
    object QVendedorid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '000'
    end
    object QVendedornome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME COMPLETO'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 40
    end
    object QVendedorcomissao: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'comissao'
      Origin = 'comissao'
      DisplayFormat = '0.00# %'
    end
    object QVendedorsenha: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'SENHA'
      FieldName = 'senha'
      Origin = 'senha'
      Size = 10
    end
    object QVendedornomered: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'LOGIN'
      FieldName = 'nomered'
      Origin = 'nomered'
      Size = 15
    end
    object QVendedorendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 40
    end
    object QVendedorcidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object QVendedoruf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object QVendedortel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel'
      Origin = 'tel'
      EditMask = '\(99\)9999\-9999####;0;'
      Size = 16
    end
    object QVendedordt_cad: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_cad'
      Origin = 'dt_cad'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QVendedoratualizado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'atualizado'
      Origin = 'atualizado'
      Size = 50
    end
    object QVendedorsuspenso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'suspenso'
      Origin = 'suspenso'
      FixedChar = True
      Size = 1
    end
  end
  object QModNF: TFDQuery
    AfterInsert = QModNFAfterInsert
    BeforePost = QModNFBeforePost
    Connection = DMConn.DB
    ResourceOptions.AssignedValues = [rvPersistent, rvBackup]
    SQL.Strings = (
      'select * from nf_modelos')
    Left = 481
    Top = 180
    object QModNFid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '00'
    end
    object QModNFmodelo: TStringField
      Alignment = taCenter
      DisplayLabel = 'MODELO'
      FieldName = 'modelo'
      Origin = 'modelo'
      Required = True
      Size = 2
    end
    object QModNFnome: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object QModNFcom_itens: TStringField
      DisplayLabel = 'COM ITENS'
      FieldName = 'com_itens'
      Origin = 'com_itens'
      FixedChar = True
      Size = 1
    end
  end
  object QEstoque_Info_compl: TFDQuery
    BeforePost = QEstoque_Info_complBeforePost
    MasterSource = DSEstoque
    MasterFields = 'cst'
    DetailFields = 'cst'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from estoque_info_complem '
      'order by icms_pc')
    Left = 728
    Top = 464
    ParamData = <
      item
        Name = 'cst'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 8
      end>
    object QEstoque_Info_complid: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      DisplayFormat = '00'
    end
    object QEstoque_Info_complcst: TIntegerField
      DisplayLabel = 'CST'
      FieldName = 'cst'
      Origin = 'cst'
    end
    object QEstoque_Info_complicms_pc: TFloatField
      FieldName = 'icms_pc'
      Origin = 'icms_pc'
      DisplayFormat = '0.00#'
    end
    object QEstoque_Info_complreduzir: TStringField
      FieldName = 'reduzir'
      Origin = 'reduzir'
      FixedChar = True
      Size = 1
    end
    object QEstoque_Info_compltexto: TMemoField
      FieldName = 'texto'
      Origin = 'texto'
      BlobType = ftMemo
    end
  end
  object DSEstoque: TDataSource
    AutoEdit = False
    DataSet = QEstoque
    Left = 816
    Top = 440
  end
  object QNCM: TFDQuery
    BeforePost = QNCMBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from ncm limit 5')
    Left = 768
    Top = 12
    object QNCMcod_nbm: TStringField
      DisplayLabel = 'NBM'
      FieldName = 'cod_nbm'
      Origin = 'cod_nbm'
      EditMask = '9999\.99\.9999;0; '
      Size = 15
    end
    object QNCMdescr_nbm: TStringField
      DisplayLabel = 'DESCRI'#199#195'O NBM'
      FieldName = 'descr_nbm'
      Origin = 'descr_nbm'
      Size = 200
    end
    object QNCMcod_ncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'cod_ncm'
      Origin = 'cod_ncm'
      EditMask = '9999\.99\.99;0; '
      Size = 15
    end
    object QNCMdescr_ncm: TStringField
      DisplayLabel = 'DESCRI'#199#195'O NCM'
      FieldName = 'descr_ncm'
      Origin = 'descr_ncm'
      Size = 200
    end
  end
  object QInventario: TFDQuery
    BeforePost = QInventarioBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      
        'select s.nome as sessao, CURQ.produto, e.cod_gtin, e.nome, e.ncm' +
        ', '
      'e.vrvenda_vista as vr_un,'
      'sum(CURQ.qtd_entr) as qtd_entr, '
      'sum(CURQ.qtd_sai) as qtd_sai, '
      'sum(CURQ.qtd_entr - CURQ.qtd_sai) as saldo,'
      
        'if(sum(CURQ.qtd_entr - CURQ.qtd_sai)>0, sum(CURQ.qtd_entr - CURQ' +
        '.qtd_sai) * e.vrvenda_vista, 0) as vr_estoque,'
      'substr(u.unidade,1,2) AS unid, '
      'u.fracionavel AS frac,'
      'x.cst AS cst_csosn, '
      'x.acbr AS acbr_cst, '
      'a.cod_if AS aliq_ecf,'
      'a.icms AS aliq_icms,'
      'i.destaca_valor AS ipi_ent_destaca_valor, '
      'p.destaca_valor AS pis_ent_destaca_valor,'
      'c.destaca_valor AS cofins_ent_destaca_valor, '
      'isai.destaca_valor AS ipi_sai_destaca_valor,'
      'psai.destaca_valor AS pis_sai_destaca_valor,'
      'csai.destaca_valor AS cofins_sai_destaca_valor'
      '            '
      'from ('
      
        '    SELECT '#39'ENTRADA'#39' AS GRUPO, '#39'ESTOQUE INICIAL'#39' AS TIPO, i.esto' +
        'que as produto, '
      '        sum(i.quant) as qtd_entr, 0 as qtd_sai '
      '    from'
      '    estoque_inicial i '
      '    group by i.estoque '
      '    '
      '    UNION'
      '    '
      '    select '
      
        '        '#39'ENTRADA'#39' AS GRUPO, '#39'EMISS'#195'O NF'#39' AS tipo, i.cProd as pro' +
        'duto, '
      '         sum(i.qcom) as qtd_entr, 0 as qtd_sai  '
      '    from'
      '    nf_item i '
      '        join nf n on n.id = i.nf and '
      '                     n.Ide_tpNF = 0 and /*entrada*/'
      '                     n.Status <> 2 and  /*cancelada*/'
      '                     n.Ide_dSaiEnt <= :data'
      '    where '
      '    i.baixa_estoque = '#39'S'#39
      '    group by i.cprod'
      '    '
      '    UNION'
      '    '
      '    select '
      
        '        '#39'ENTRADA'#39' AS GRUPO, '#39'ENTRADA NF'#39' AS tipo, i.cProd as pro' +
        'duto, '
      '         sum(i.qcom) as qtd_entr, 0 as qtd_sai  '
      '    from'
      '    nf_item_entr i '
      '        join nf_entr n on n.id = i.nf and '
      '                          n.Ide_dSaiEnt <= :data'
      '    group by i.cprod    '
      '    '
      '    UNION'
      '    '
      '    select '
      
        '        '#39'SAIDA'#39' AS GRUPO, '#39'VENDA PDV ECF'#39' AS tipo, i.cProd as pr' +
        'oduto, '
      '        0 as qtd_entr, sum(i.qcom) as qtd_sai '
      '    from'
      '    venda_item i '
      
        '        join venda v on v.id = i.venda and v.tipo = '#39'ECF'#39' and v.' +
        'data <= :data'
      '    where '
      '    i.cfop <> '#39'N'#39' /* N = item cancelado*/'
      '    group by i.cprod'
      '    '
      '    UNION'
      '    '
      '    select '
      
        '        '#39'SAIDA'#39' AS GRUPO, '#39'EMISS'#195'O NF'#39' AS tipo, i.cProd as produ' +
        'to, '
      '        0 as qtd_entr, sum(i.qcom) as qtd_sai '
      '    from'
      '    nf_item i '
      '        join nf n on n.id = i.nf and '
      '                     n.Ide_tpNF = 1 and /*saida*/'
      '                     n.Status <> 2 and  /*cancelada*/'
      '                     n.Ide_dEmi <= :data'
      '    where '
      '    i.baixa_estoque = '#39'S'#39
      '    group by i.cprod'
      ')CURQ'
      '    join estoque e                on e.id = CURQ.produto '
      '    left join sessao s            on s.id = e.sessao'
      '    left join cst_ipi i           on i.acbr = e.cst_ipi_ent'
      '    left join cst_pis p           on p.acbr = e.cst_pis_ent'
      '    left join cst_cofins c        on c.acbr = e.cst_pis_ent'
      '    left join cst_ipi isai        on isai.acbr = e.cst_ipi_sai'
      '    left join cst_pis psai        on psai.acbr = e.cst_pis_sai'
      '    left join cst_cofins csai     on csai.acbr = e.cst_pis_sai'
      '    left join cst x               on x.id = e.cst'
      '    left join aliquota a          on a.id = e.aliq_icms'
      '    left join unidade u           on u.id = e.unidade    '
      'GROUP BY '
      '    sessao, produto, x.cst'
      'order by'
      '    e.nome')
    Left = 320
    Top = 176
    ParamData = <
      item
        Name = 'data'
        DataType = ftDate
        FDDataType = dtDate
        ParamType = ptInput
      end>
    object QInventariosessao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sessao'
      Origin = 'sessao'
      Size = 30
    end
    object QInventarioproduto: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'produto'
      Origin = 'produto'
      Size = 60
    end
    object QInventariocod_gtin: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#211'D. GTIN'
      FieldName = 'cod_gtin'
      Origin = 'cod_gtin'
    end
    object QInventarionome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QInventarioncm: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NCM'
      FieldName = 'ncm'
      Origin = 'ncm'
    end
    object QInventariounid: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UN.'
      FieldName = 'unid'
      Origin = 'unid'
      Size = 2
    end
    object QInventariocst_csosn: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CST/CSOSN'
      FieldName = 'cst_csosn'
      Origin = 'cst_csosn'
    end
    object QInventarioaliq_icms: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ICMS'
      FieldName = 'aliq_icms'
      Origin = 'aliq_icms'
      DisplayFormat = '0.00'
    end
    object QInventariovr_un: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'VR. UN'
      FieldName = 'vr_un'
      Origin = 'vr_un'
      currency = True
    end
    object QInventariosaldo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'saldo'
      Origin = 'saldo'
      DisplayFormat = '0.00##'
    end
    object QInventariovr_estoque: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_estoque'
      Origin = 'vr_estoque'
      currency = True
    end
    object QInventarioqtd_entr: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd_entr'
      Origin = 'qtd_entr'
      DisplayFormat = '0.00##'
    end
    object QInventarioqtd_sai: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd_sai'
      Origin = 'qtd_sai'
      DisplayFormat = '0.00##'
    end
    object QInventariofrac: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'frac'
      Origin = 'frac'
      FixedChar = True
      Size = 1
    end
    object QInventarioacbr_cst: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'acbr_cst'
      Origin = 'acbr_cst'
    end
    object QInventarioaliq_ecf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_ecf'
      Origin = 'aliq_ecf'
      Size = 4
    end
    object QInventarioipi_ent_destaca_valor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ipi_ent_destaca_valor'
      Origin = 'ipi_ent_destaca_valor'
      FixedChar = True
      Size = 1
    end
    object QInventariopis_ent_destaca_valor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pis_ent_destaca_valor'
      Origin = 'pis_ent_destaca_valor'
      FixedChar = True
      Size = 1
    end
    object QInventariocofins_ent_destaca_valor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cofins_ent_destaca_valor'
      Origin = 'cofins_ent_destaca_valor'
      FixedChar = True
      Size = 1
    end
    object QInventarioipi_sai_destaca_valor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ipi_sai_destaca_valor'
      Origin = 'ipi_sai_destaca_valor'
      FixedChar = True
      Size = 1
    end
    object QInventariopis_sai_destaca_valor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pis_sai_destaca_valor'
      Origin = 'pis_sai_destaca_valor'
      FixedChar = True
      Size = 1
    end
    object QInventariocofins_sai_destaca_valor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cofins_sai_destaca_valor'
      Origin = 'cofins_sai_destaca_valor'
      FixedChar = True
      Size = 1
    end
  end
  object QSped_CST_Tabela: TFDQuery
    BeforePost = QSped_CST_TabelaBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from sped_cst_tabela order by cst')
    Left = 728
    Top = 524
    object QSped_CST_Tabelaid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
    end
    object QSped_CST_Tabelacst: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'CST'
      FieldName = 'cst'
      Origin = 'cst'
      DisplayFormat = '00'
    end
    object QSped_CST_Tabelatabela: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'COD.TABELA'
      FieldName = 'tabela'
      Origin = 'tabela'
      DisplayFormat = '0,0,00'
    end
  end
  object QSped_Tabela: TFDQuery
    AfterInsert = QSped_TabelaAfterInsert
    BeforePost = QSped_TabelaBeforePost
    MasterSource = dsSped_cst_tabela
    MasterFields = 'tabela'
    DetailFields = 'tabela'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from sped_tabela where tabela= :tabela order by cod')
    Left = 728
    Top = 580
    ParamData = <
      item
        Name = 'TABELA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QSped_Tabelatabela: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'TABELA'
      FieldName = 'tabela'
      Origin = 'tabela'
    end
    object QSped_Tabelacod: TStringField
      Alignment = taCenter
      DisplayLabel = 'C'#211'D REC.'
      FieldName = 'cod'
      Origin = 'cod'
      Size = 10
    end
    object QSped_Tabelatexto: TMemoField
      FieldName = 'texto'
      Origin = 'texto'
      BlobType = ftMemo
    end
    object QSped_Tabelapc_aliq_pis: TFloatField
      DisplayLabel = 'ALIQ. PIS'
      FieldName = 'pc_aliq_pis'
      Origin = 'pc_aliq_pis'
      DisplayFormat = '0.0000'
    end
    object QSped_Tabelapc_aliq_cofins: TFloatField
      DisplayLabel = 'ALIQ. COFINS'
      FieldName = 'pc_aliq_cofins'
      Origin = 'pc_aliq_cofins'
      DisplayFormat = '0.0000'
    end
    object QSped_Tabelaunidade: TStringField
      DisplayLabel = 'UNIDADE DE MED.'
      FieldName = 'unidade'
      Origin = 'unidade'
    end
    object QSped_Tabelapc_cred_pis: TFloatField
      DisplayLabel = 'CRED PIS'
      FieldName = 'pc_cred_pis'
      Origin = 'pc_cred_pis'
      DisplayFormat = '0.0000'
    end
    object QSped_Tabelapc_cred_cofins: TFloatField
      DisplayLabel = 'CERD COFINS'
      FieldName = 'pc_cred_cofins'
      Origin = 'pc_cred_cofins'
      DisplayFormat = '0.0000'
    end
  end
  object dsSped_cst_tabela: TDataSource
    DataSet = QSped_CST_Tabela
    Left = 808
    Top = 552
  end
  object QvwDest_nf: TFDQuery
    SQL.Strings = (
      
        'select distinct cnpj, id,nome,razaosocial,tel1,logradouro,nmro,c' +
        'omplem,bairro,'
      'cidade,uf,cep,ie,cidade_cod,email,tipo from vw_dest_nf')
    Left = 828
    Top = 68
    object QvwDest_nfcnpj: TStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object QvwDest_nfid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object QvwDest_nfnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QvwDest_nfrazaosocial: TStringField
      FieldName = 'razaosocial'
      Origin = 'razaosocial'
      Size = 100
    end
    object QvwDest_nftel1: TStringField
      FieldName = 'tel1'
      Origin = 'tel1'
      Size = 15
    end
    object QvwDest_nflogradouro: TStringField
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 100
    end
    object QvwDest_nfnmro: TStringField
      FieldName = 'nmro'
      Origin = 'nmro'
    end
    object QvwDest_nfcomplem: TStringField
      FieldName = 'complem'
      Origin = 'complem'
    end
    object QvwDest_nfbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object QvwDest_nfcidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object QvwDest_nfuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object QvwDest_nfcep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 12
    end
    object QvwDest_nfie: TStringField
      FieldName = 'ie'
      Origin = 'ie'
    end
    object QvwDest_nfemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object QvwDest_nftipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 1
    end
    object QvwDest_nfcidade_cod: TStringField
      FieldName = 'cidade_cod'
      Origin = 'cidade_cod'
    end
  end
  object dsMod2: TDataSource
    DataSet = cdMod2
    Left = 92
    Top = 724
  end
  object dsMod: TDataSource
    DataSet = cdMod
    Left = 92
    Top = 778
  end
  object dsCSOSN: TDataSource
    DataSet = cdcsosn
    Left = 828
    Top = 145
  end
  object dsCST: TDataSource
    DataSet = QCST
    Left = 476
    Top = 58
  end
  object dsCST2: TDataSource
    DataSet = cdCST2
    Left = 812
    Top = 250
  end
  object dsCSTPC: TDataSource
    DataSet = cdCSTPC
    Left = 816
    Top = 306
  end
  object Qcfop_cst_csosn: TFDQuery
    BeforePost = Qcfop_cst_csosnBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from cfop_cst_csosn')
    Left = 720
    Top = 636
    object Qcfop_cst_csosnid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Qcfop_cst_csosncfop: TIntegerField
      FieldName = 'cfop'
    end
    object Qcfop_cst_csosncst: TIntegerField
      FieldName = 'cst'
      OnGetText = Qcfop_cst_csosncstGetText
    end
    object Qcfop_cst_csosncsosn: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'csosn'
      Origin = 'csosn'
      OnGetText = Qcfop_cst_csosncsosnGetText
    end
    object Qcfop_cst_csosncst_pis_ent: TIntegerField
      FieldName = 'cst_pis_ent'
      OnGetText = Qcfop_cst_csosncst_pis_entGetText
    end
    object Qcfop_cst_csosncst_pis_sai: TIntegerField
      FieldName = 'cst_pis_sai'
      OnGetText = Qcfop_cst_csosncst_pis_entGetText
    end
    object Qcfop_cst_csosncst_ipi_ent: TIntegerField
      FieldName = 'cst_ipi_ent'
      OnGetText = Qcfop_cst_csosncst_ipi_entGetText
    end
    object Qcfop_cst_csosncst_ipi_sai: TIntegerField
      FieldName = 'cst_ipi_sai'
      OnGetText = Qcfop_cst_csosncst_ipi_entGetText
    end
    object Qcfop_cst_csosncst_cofins_ent: TIntegerField
      FieldName = 'cst_cofins_ent'
      OnGetText = Qcfop_cst_csosncst_pis_entGetText
    end
    object Qcfop_cst_csosncst_cofins_sai: TIntegerField
      FieldName = 'cst_cofins_sai'
      OnGetText = Qcfop_cst_csosncst_pis_entGetText
    end
    object Qcfop_cst_csosncfop_infor: TIntegerField
      FieldName = 'cfop_infor'
    end
    object Qcfop_cst_csosncst_infor: TIntegerField
      FieldName = 'cst_infor'
      OnGetText = Qcfop_cst_csosncstGetText
    end
    object Qcfop_cst_csosncsosn_infor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'csosn_infor'
      Origin = 'csosn_infor'
      OnGetText = Qcfop_cst_csosncsosnGetText
    end
    object Qcfop_cst_csosncst_pis_ent_infor: TIntegerField
      FieldName = 'cst_pis_ent_infor'
      OnGetText = Qcfop_cst_csosncst_pis_entGetText
    end
    object Qcfop_cst_csosncst_pis_sai_infor: TIntegerField
      FieldName = 'cst_pis_sai_infor'
      OnGetText = Qcfop_cst_csosncst_pis_entGetText
    end
    object Qcfop_cst_csosncst_ipi_ent_infor: TIntegerField
      FieldName = 'cst_ipi_ent_infor'
      OnGetText = Qcfop_cst_csosncst_ipi_entGetText
    end
    object Qcfop_cst_csosncst_ipi_sai_infor: TIntegerField
      FieldName = 'cst_ipi_sai_infor'
      OnGetText = Qcfop_cst_csosncst_ipi_entGetText
    end
    object Qcfop_cst_csosncst_cofins_ent_infor: TIntegerField
      FieldName = 'cst_cofins_ent_infor'
      OnGetText = Qcfop_cst_csosncst_cofins_ent_inforGetText
    end
    object Qcfop_cst_csosncst_cofins_sai_infor: TIntegerField
      FieldName = 'cst_cofins_sai_infor'
      OnGetText = Qcfop_cst_csosncst_cofins_ent_inforGetText
    end
  end
  object dscfop_cst_csosn: TDataSource
    DataSet = Qcfop_cst_csosn
    Left = 816
    Top = 640
  end
  object QCSTIPI: TFDQuery
    BeforePost = QCSTIPIBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from cst_ipi order by cst')
    Left = 1112
    Top = 516
    object QCSTIPIid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
    end
    object QCSTIPIcst: TStringField
      Alignment = taCenter
      DisplayLabel = 'CST'
      FieldName = 'cst'
      Origin = 'cst'
      Size = 3
    end
    object QCSTIPInome: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object QCSTIPIacbr: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'COD INT.'
      FieldName = 'acbr'
      Origin = 'acbr'
    end
    object QCSTIPIdestaca_valor: TStringField
      DisplayLabel = 'DEST. VALOR'
      FieldName = 'destaca_valor'
      Origin = 'destaca_valor'
      FixedChar = True
      Size = 1
    end
  end
  object QCSTPIS: TFDQuery
    BeforePost = QCSTPISBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from cst_pis')
    Left = 1112
    Top = 580
    object QCSTPISid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
    end
    object QCSTPIScst: TStringField
      Alignment = taCenter
      DisplayLabel = 'CST'
      FieldName = 'cst'
      Origin = 'cst'
      Size = 3
    end
    object QCSTPISnome: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 150
    end
    object QCSTPISacbr: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#211'D INT.'
      FieldName = 'acbr'
      Origin = 'acbr'
    end
    object QCSTPISdestaca_valor: TStringField
      DisplayLabel = 'DEST. VALOR'
      FieldName = 'destaca_valor'
      Origin = 'destaca_valor'
      FixedChar = True
      Size = 1
    end
  end
  object QCSTCOFINS: TFDQuery
    BeforePost = QCSTCOFINSBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from cst_cofins')
    Left = 1112
    Top = 636
    object QCSTCOFINSid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
    end
    object QCSTCOFINScst: TStringField
      Alignment = taCenter
      DisplayLabel = 'CST'
      FieldName = 'cst'
      Origin = 'cst'
      Size = 3
    end
    object QCSTCOFINSnome: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 150
    end
    object QCSTCOFINSacbr: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#211'D. INT.'
      FieldName = 'acbr'
      Origin = 'acbr'
    end
    object QCSTCOFINSdestaca_valor: TStringField
      DisplayLabel = 'DEST. VALOR'
      FieldName = 'destaca_valor'
      Origin = 'destaca_valor'
      FixedChar = True
      Size = 1
    end
  end
  object DSIPI: TDataSource
    AutoEdit = False
    DataSet = QCSTIPI
    Left = 1176
    Top = 520
  end
  object DSPIS: TDataSource
    AutoEdit = False
    DataSet = QCSTPIS
    Left = 1176
    Top = 584
  end
  object DSCOFINS: TDataSource
    AutoEdit = False
    DataSet = QCSTCOFINS
    Left = 1176
    Top = 640
  end
  object QCusto_Oper: TFDQuery
    BeforePost = QCusto_OperBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from custo_operacional order by data desc')
    Left = 492
    Top = 820
    object QCusto_Operid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
    end
    object QCusto_Operdata: TDateField
      DisplayLabel = 'DATA'
      FieldName = 'data'
      Origin = 'data'
    end
    object QCusto_Operreceita: TFloatField
      DisplayLabel = 'RECEITA'
      FieldName = 'receita'
      Origin = 'receita'
      currency = True
    end
    object QCusto_Operdespesa: TFloatField
      DisplayLabel = 'DESPESA'
      FieldName = 'despesa'
      Origin = 'despesa'
      currency = True
    end
    object QCusto_Operpercent: TFloatField
      DisplayLabel = 'PERCENTUAL'
      FieldName = 'percent'
      Origin = 'percent'
      DisplayFormat = '0.00%'
    end
  end
  object DSBancos: TDataSource
    AutoEdit = False
    DataSet = QBancos
    Left = 9
    Top = 586
  end
  object DSAgencias: TDataSource
    AutoEdit = False
    DataSet = QAgencias
    Left = 61
    Top = 586
  end
  object DSContas: TDataSource
    AutoEdit = False
    DataSet = QContas
    Left = 121
    Top = 586
  end
  object DSBoleto: TDataSource
    AutoEdit = False
    DataSet = QBoleto
    Left = 169
    Top = 586
  end
  object DSFinan_bol_Emit: TDataSource
    AutoEdit = False
    DataSet = QFinan_bol_Emit
    Left = 278
    Top = 844
  end
  object QvwBoleto: TFDQuery
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from vw_finan_boleto')
    Left = 184
    Top = 904
    object QvwBoletonumbanco: TIntegerField
      FieldName = 'numbanco'
      Origin = 'numbanco'
    end
    object QvwBoletonomebanco: TStringField
      FieldName = 'nomebanco'
      Origin = 'nomebanco'
    end
    object QvwBoletoagencia: TStringField
      FieldName = 'agencia'
      Origin = 'agencia'
    end
    object QvwBoletoagdig: TIntegerField
      Alignment = taCenter
      FieldName = 'agdig'
      Origin = 'agdig'
    end
    object QvwBoletonumconta: TStringField
      FieldName = 'numconta'
      Origin = 'numconta'
    end
    object QvwBoletocondig: TIntegerField
      Alignment = taCenter
      FieldName = 'condig'
      Origin = 'condig'
    end
    object QvwBoletoid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
    end
    object QvwBoletoconta: TIntegerField
      FieldName = 'conta'
      Origin = 'conta'
    end
    object QvwBoletotipo_cobranca: TIntegerField
      FieldName = 'tipo_cobranca'
      Origin = 'tipo_cobranca'
    end
    object QvwBoletoorientacao_banco: TMemoField
      FieldName = 'orientacao_banco'
      Origin = 'orientacao_banco'
      BlobType = ftMemo
    end
    object QvwBoletocedente_nome: TStringField
      FieldName = 'cedente_nome'
      Origin = 'cedente_nome'
      Size = 100
    end
    object QvwBoletocedente_logradouro: TStringField
      FieldName = 'cedente_logradouro'
      Origin = 'cedente_logradouro'
      Size = 100
    end
    object QvwBoletocedente_bairro: TStringField
      FieldName = 'cedente_bairro'
      Origin = 'cedente_bairro'
      Size = 50
    end
    object QvwBoletocedente_municipio: TStringField
      FieldName = 'cedente_municipio'
      Origin = 'cedente_municipio'
      Size = 50
    end
    object QvwBoletocedente_uf: TStringField
      FieldName = 'cedente_uf'
      Origin = 'cedente_uf'
      FixedChar = True
      Size = 2
    end
    object QvwBoletocedente_cep: TStringField
      FieldName = 'cedente_cep'
      Origin = 'cedente_cep'
      Size = 10
    end
    object QvwBoletocedente_cnpjcpf: TStringField
      FieldName = 'cedente_cnpjcpf'
      Origin = 'cedente_cnpjcpf'
    end
    object QvwBoletocedente_complemento: TStringField
      FieldName = 'cedente_complemento'
      Origin = 'cedente_complemento'
      Size = 30
    end
    object QvwBoletocedente_tipoinscr: TIntegerField
      FieldName = 'cedente_tipoinscr'
      Origin = 'cedente_tipoinscr'
    end
    object QvwBoletocaract_titulo: TIntegerField
      FieldName = 'caract_titulo'
      Origin = 'caract_titulo'
    end
    object QvwBoletocodigo_cedente: TStringField
      FieldName = 'codigo_cedente'
      Origin = 'codigo_cedente'
    end
    object QvwBoletoconvenio: TStringField
      FieldName = 'convenio'
      Origin = 'convenio'
    end
    object QvwBoletomodalidade: TStringField
      FieldName = 'modalidade'
      Origin = 'modalidade'
      Size = 10
    end
    object QvwBoletoresp_emissao: TIntegerField
      FieldName = 'resp_emissao'
      Origin = 'resp_emissao'
    end
    object QvwBoletolayout_remessa: TIntegerField
      FieldName = 'layout_remessa'
      Origin = 'layout_remessa'
    end
    object QvwBoletoarquivo_remessa: TStringField
      FieldName = 'arquivo_remessa'
      Origin = 'arquivo_remessa'
      Size = 100
    end
    object QvwBoletoarquivo_retorno: TStringField
      FieldName = 'arquivo_retorno'
      Origin = 'arquivo_retorno'
      Size = 100
    end
    object QvwBoletonmro_res: TStringField
      FieldName = 'nmro_res'
      Origin = 'nmro_res'
      Size = 10
    end
    object QvwBoletomail_host: TStringField
      FieldName = 'mail_host'
      Origin = 'mail_host'
      Size = 150
    end
    object QvwBoletomail_port: TIntegerField
      FieldName = 'mail_port'
      Origin = 'mail_port'
    end
    object QvwBoletomail_user: TStringField
      FieldName = 'mail_user'
      Origin = 'mail_user'
      Size = 50
    end
    object QvwBoletomail_password: TStringField
      FieldName = 'mail_password'
      Origin = 'mail_password'
    end
    object QvwBoletomail_from: TStringField
      FieldName = 'mail_from'
      Origin = 'mail_from'
      Size = 100
    end
    object QvwBoletomail_assunto: TStringField
      FieldName = 'mail_assunto'
      Origin = 'mail_assunto'
      Size = 60
    end
    object QvwBoletomail_msg: TMemoField
      FieldName = 'mail_msg'
      Origin = 'mail_msg'
      BlobType = ftMemo
    end
    object QvwBoletomail_ssl: TStringField
      FieldName = 'mail_ssl'
      Origin = 'mail_ssl'
      FixedChar = True
      Size = 1
    end
    object QvwBoletomail_enviapdf: TStringField
      FieldName = 'mail_enviapdf'
      Origin = 'mail_enviapdf'
      FixedChar = True
      Size = 1
    end
    object QvwBoletomail_pedeconfirma: TStringField
      FieldName = 'mail_pedeconfirma'
      Origin = 'mail_pedeconfirma'
      FixedChar = True
      Size = 1
    end
    object QvwBoletomail_aguarda_envio: TStringField
      FieldName = 'mail_aguarda_envio'
      Origin = 'mail_aguarda_envio'
      FixedChar = True
      Size = 1
    end
    object QvwBoletomail_nomeremetente: TStringField
      FieldName = 'mail_nomeremetente'
      Origin = 'mail_nomeremetente'
      Size = 100
    end
    object QvwBoletomail_tls: TStringField
      FieldName = 'mail_tls'
      Origin = 'mail_tls'
      FixedChar = True
      Size = 1
    end
    object QvwBoletopc_juros: TFloatField
      FieldName = 'pc_juros'
      Origin = 'pc_juros'
    end
    object QvwBoletopc_desc: TFloatField
      FieldName = 'pc_desc'
      Origin = 'pc_desc'
    end
    object QvwBoletopc_multa: TFloatField
      FieldName = 'pc_multa'
      Origin = 'pc_multa'
    end
    object QvwBoletodias_juros: TIntegerField
      FieldName = 'dias_juros'
      Origin = 'dias_juros'
    end
    object QvwBoletodis_desc: TIntegerField
      FieldName = 'dis_desc'
      Origin = 'dis_desc'
    end
    object QvwBoletodias_protesto: TIntegerField
      FieldName = 'dias_protesto'
      Origin = 'dias_protesto'
    end
    object QvwBoletoaceite: TIntegerField
      FieldName = 'aceite'
      Origin = 'aceite'
    end
    object QvwBoletocod_instr1: TStringField
      FieldName = 'cod_instr1'
      Origin = 'cod_instr1'
      Size = 5
    end
    object QvwBoletocod_instr2: TStringField
      FieldName = 'cod_instr2'
      Origin = 'cod_instr2'
      Size = 5
    end
    object QvwBoletoespecie: TStringField
      FieldName = 'especie'
      Origin = 'especie'
      Size = 10
    end
    object QvwBoletolocal_pag: TStringField
      FieldName = 'local_pag'
      Origin = 'local_pag'
      Size = 80
    end
    object QvwBoletonossonumero: TIntegerField
      FieldName = 'nossonumero'
      Origin = 'nossonumero'
    end
    object QvwBoletocarteira: TStringField
      FieldName = 'carteira'
      Origin = 'carteira'
      Size = 10
    end
  end
  object DSvwBoleto: TDataSource
    DataSet = QvwBoleto
    Left = 278
    Top = 908
  end
  object QFinan_CliDeb: TFDQuery
    AfterOpen = QFinan_CliDebAfterOpen
    BeforeClose = QFinan_CliDebBeforeClose
    AfterClose = QFinan_CliDebAfterClose
    BeforePost = QFinan_CliDebBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from vw_clideb')
    Left = 236
    Top = 536
    object QFinan_CliDebid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      DisplayFormat = '0000'
    end
    object QFinan_CliDebcnpj: TStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object QFinan_CliDebnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QFinan_CliDebrazaosocial: TStringField
      FieldName = 'razaosocial'
      Origin = 'razaosocial'
      Size = 100
    end
  end
  object DSFinan_CliDeb: TDataSource
    AutoEdit = False
    DataSet = QFinan_CliDeb
    Left = 238
    Top = 588
  end
  object QFinanDeb: TFDQuery
    BeforePost = QFinanDebBeforePost
    MasterSource = DSFinan_CliDeb
    MasterFields = 'id'
    DetailFields = 'cliente'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from finan_debito where cliente=:id'
      'and valor_pg < valor ')
    Left = 312
    Top = 536
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QFinanDebid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      DisplayFormat = '0000'
    end
    object QFinanDebtipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      OnGetText = QFinanDebtipoGetText
      FixedChar = True
      Size = 1
    end
    object QFinanDebcliente: TIntegerField
      FieldName = 'cliente'
      Origin = 'cliente'
    end
    object QFinanDebid_movi: TIntegerField
      FieldName = 'id_movi'
      Origin = 'id_movi'
    end
    object QFinanDebnmro_doc: TStringField
      FieldName = 'nmro_doc'
      Origin = 'nmro_doc'
    end
    object QFinanDebdt_process: TDateField
      FieldName = 'dt_process'
      Origin = 'dt_process'
    end
    object QFinanDebdt_vencimento: TDateField
      FieldName = 'dt_vencimento'
      Origin = 'dt_vencimento'
    end
    object QFinanDebdt_baixa: TDateField
      FieldName = 'dt_baixa'
      Origin = 'dt_baixa'
    end
    object QFinanDebhora_baixa: TStringField
      FieldName = 'hora_baixa'
      Origin = 'hora_baixa'
      Size = 5
    end
    object QFinanDebvalor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object QFinanDebvalor_pg: TFloatField
      FieldName = 'valor_pg'
      Origin = 'valor_pg'
      currency = True
    end
    object QFinanDebobs: TMemoField
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object QFinanDeboperador: TIntegerField
      FieldName = 'operador'
      Origin = 'operador'
    end
  end
  object DSFinanDeb: TDataSource
    AutoEdit = False
    DataSet = QFinanDeb
    Left = 314
    Top = 588
  end
  object QFinanCred: TFDQuery
    BeforePost = QFinanCredBeforePost
    MasterSource = DSFinan_CliDeb
    MasterFields = 'id'
    DetailFields = 'cliente'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from finan_credito where cliente=:id'
      'and baixa is null')
    Left = 342
    Top = 438
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QFinanCredid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      DisplayFormat = '0000'
    end
    object QFinanCredcliente: TIntegerField
      FieldName = 'cliente'
      Origin = 'cliente'
    end
    object QFinanCredtipo: TStringField
      Alignment = taCenter
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
    object QFinanCreddt_process: TDateField
      Alignment = taCenter
      FieldName = 'dt_process'
      Origin = 'dt_process'
    end
    object QFinanCreddt_baixa: TDateField
      FieldName = 'dt_baixa'
      Origin = 'dt_baixa'
    end
    object QFinanCredvalor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object QFinanCredoperador: TIntegerField
      FieldName = 'operador'
      Origin = 'operador'
    end
    object QFinanCredbaixa: TStringField
      FieldName = 'baixa'
      Origin = 'baixa'
      FixedChar = True
      Size = 1
    end
  end
  object DSFinanCredito: TDataSource
    AutoEdit = False
    DataSet = QFinanCred
    Left = 142
    Top = 792
  end
  object QFinanTotDebCred: TFDQuery
    BeforePost = QFinanTotDebCredBeforePost
    MasterSource = DSFinan_CliDeb
    MasterFields = 'id'
    DetailFields = 'cliente'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from vw_totaldebcred where cliente=:id')
    Left = 412
    Top = 544
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QFinanTotDebCredcliente: TIntegerField
      FieldName = 'cliente'
      Origin = 'cliente'
    end
    object QFinanTotDebCredtipo: TStringField
      Alignment = taCenter
      FieldName = 'tipo'
      Origin = 'tipo'
      OnGetText = QFinanDebtipoGetText
      Size = 1
    end
    object QFinanTotDebCredvalor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
  end
  object DSFinanTotDebCred: TDataSource
    AutoEdit = False
    DataSet = QFinanTotDebCred
    Left = 410
    Top = 600
  end
  object QCaixaConst: TFDQuery
    BeforePost = QCaixaConstBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'SELECT * FROM caixa_const')
    Left = 46
    Top = 700
    object QCaixaConstid: TIntegerField
      FieldName = 'id'
    end
    object QCaixaConsttipo: TStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 3
    end
    object QCaixaConstentrada: TStringField
      FieldName = 'entrada'
      FixedChar = True
      Size = 1
    end
    object QCaixaConstdescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
  end
  object DSCaixa: TDataSource
    AutoEdit = False
    DataSet = QCaixa
    Left = 342
    Top = 76
  end
  object DSFinan_Carne: TDataSource
    AutoEdit = False
    DataSet = QFinan_Carne
    Left = 42
    Top = 480
  end
  object QParcelas: TFDQuery
    BeforePost = QParcelasBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from finan_parcelas')
    Left = 112
    Top = 848
    object QParcelasid: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      DisplayFormat = '00'
    end
    object QParcelasplano: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'plano'
      Origin = 'plano'
      Size = 30
    end
    object QParcelasdias: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'DIAS'
      FieldName = 'dias'
      Origin = 'dias'
    end
    object QParcelaspc_juros: TFloatField
      DisplayLabel = '% JUROS'
      FieldName = 'pc_juros'
      Origin = 'pc_juros'
      DisplayFormat = '0.0000####'
      MaxValue = 100.000000000000000000
    end
  end
  object DSFinan_Banco_Movi: TDataSource
    AutoEdit = False
    DataSet = QFinan_Banco_Movi
    Left = 141
    Top = 482
  end
  object Qfinan_centro_custo: TFDQuery
    BeforeDelete = Qfinan_centro_custoBeforeDelete
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from finan_centro_custo')
    Left = 250
    Top = 434
    object Qfinan_centro_custoid: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      DisplayFormat = '0000'
    end
    object Qfinan_centro_custoplano: TStringField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'plano'
      Origin = 'plano'
    end
    object Qfinan_centro_custonivel: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#205'VEL'
      FieldName = 'nivel'
      Origin = 'nivel'
    end
    object Qfinan_centro_custoconta: TStringField
      DisplayLabel = 'CONTA'
      FieldName = 'conta'
      Origin = 'conta'
      Size = 30
    end
    object Qfinan_centro_custodescricao: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object Qfinan_centro_custoabrev: TStringField
      DisplayLabel = 'ABREV.'
      FieldName = 'abrev'
      Origin = 'abrev'
    end
  end
  object QCarga: TFDQuery
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from carga')
    Left = 32
    Top = 904
    object QCargaid: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      DisplayFormat = '00'
    end
    object QCargaterminal: TStringField
      DisplayLabel = 'TERMINAL'
      FieldName = 'terminal'
      Origin = 'terminal'
      Size = 50
    end
    object QCargapath: TStringField
      DisplayLabel = 'CAMINHO DOS ARQUIVOS'
      FieldName = 'path'
      Origin = 'path'
      Size = 200
    end
  end
  object QCargaFull: TFDQuery
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from carga_full')
    Left = 32
    Top = 952
    object QCargaFullid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
      DisplayFormat = '00'
    end
    object QCargaFullnome_arq: TStringField
      DisplayLabel = 'NOME ARQUIVO'
      FieldName = 'nome_arq'
      Size = 30
    end
    object QCargaFullscript: TMemoField
      DisplayLabel = 'SCRIPT'
      FieldName = 'script'
      BlobType = ftMemo
    end
  end
  object QSegur: TFDQuery
    MasterSource = DSOperador
    MasterFields = 'id'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from segur where operador=:id')
    Left = 244
    Top = 84
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QSegurid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QSeguroperador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'operador'
      Origin = 'operador'
    end
    object QSegurmenu: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'menu'
      Origin = 'menu'
      Size = 40
    end
    object QSegurbotao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'botao'
      Origin = 'botao'
    end
    object QSegurcaption: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'caption'
      Origin = 'caption'
      Size = 45
    end
    object QSegurchave: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'chave'
      Origin = 'chave'
      FixedChar = True
      Size = 1
    end
  end
  object QCST: TFDQuery
    BeforePost = QCSTBeforePost
    OnNewRecord = QCSTNewRecord
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from cst where simplesnacional="N"')
    Left = 476
    Top = 12
    object QCSTid: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '00'
    end
    object QCSTnome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QCSTacbr: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'INDICE'
      FieldName = 'acbr'
      Origin = 'acbr'
    end
    object QCSTcst: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'CST'
      FieldName = 'cst'
      Origin = 'cst'
      OnGetText = QCSTcstGetText
      DisplayFormat = '00'
    end
    object QCSTst: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ST'
      FieldName = 'st'
      Origin = 'st'
      FixedChar = True
      Size = 1
    end
    object QCSTSimplesNacional: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'SN'
      FieldName = 'SimplesNacional'
      Origin = 'SimplesNacional'
      FixedChar = True
      Size = 1
    end
  end
  object QInfo_compl: TFDQuery
    BeforePost = QInfo_complBeforePost
    Connection = DMConn.DB
    ResourceOptions.AssignedValues = [rvPersistent, rvBackup]
    SQL.Strings = (
      'select * from estoque_info_complem')
    Left = 660
    Top = 58
    object QInfo_complid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '00'
    end
    object QInfo_complcst: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CST'
      FieldName = 'cst'
      Origin = 'cst'
      DisplayFormat = '00'
    end
    object QInfo_complicms_pc: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = '% red.'
      FieldName = 'icms_pc'
      Origin = 'icms_pc'
      DisplayFormat = '0.00'
    end
    object QInfo_complreduzir: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RED.'
      FieldName = 'reduzir'
      Origin = 'reduzir'
      FixedChar = True
      Size = 1
    end
    object QInfo_compltexto: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'TEXTO'
      FieldName = 'texto'
      Origin = 'texto'
      BlobType = ftMemo
    end
  end
  object QAliq: TFDQuery
    BeforePost = QAliqBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from aliquota')
    Left = 436
    Top = 12
    object QAliqid: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '00'
    end
    object QAliqnome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'nome'
      Origin = 'nome'
    end
    object QAliqcod_if: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'C.ECF'
      FieldName = 'cod_if'
      Origin = 'cod_if'
      Size = 4
    end
    object QAliqicms: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = '% ALIQ.'
      FieldName = 'icms'
      Origin = 'icms'
      DisplayFormat = '0.00'
    end
    object QAliqusa: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'USA'
      FieldName = 'usa'
      Origin = 'usa'
      FixedChar = True
      Size = 1
    end
    object QAliqcod_prod: TByteField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#211'D. PROD.'
      FieldName = 'cod_prod'
      Origin = 'cod_prod'
    end
  end
  object QCFOP: TFDQuery
    BeforePost = QCFOPBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from cfop')
    Left = 524
    Top = 12
    object QCFOPid: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '00'
    end
    object QCFOPcfop: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'CFOP'
      FieldName = 'cfop'
      Origin = 'cfop'
    end
    object QCFOPdescricao: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESCRI'#199#195'O(impressa)'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 60
    end
    object QCFOPdescr_completa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESCRI'#199#195'O COMPLETA'
      FieldName = 'descr_completa'
      Origin = 'descr_completa'
      Size = 164
    end
    object QCFOPcst_pis: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'CST PIS'
      FieldName = 'cst_pis'
      Origin = 'cst_pis'
      OnGetText = Qcfopcst_pisGetText
    end
  end
  object QCli: TFDQuery
    BeforeOpen = QCliBeforeOpen
    AfterInsert = QCliAfterInsert
    BeforePost = QCliBeforePost
    AfterPost = QCliAfterPost
    BeforeDelete = QCliBeforeDelete
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from cliente order by id desc limit 1')
    Left = 124
    Top = 12
    object QCliid: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '0000'
    end
    object QClicnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object QClinome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME/NOME FANTASIA'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QClirazaosocial: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME COMPLETO/R. SOCIAL'
      FieldName = 'razaosocial'
      Origin = 'razaosocial'
      OnValidate = QClirazaosocialValidate
      Size = 100
    end
    object QClitel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel1'
      Origin = 'tel1'
      EditMask = '\(99\)9999\-9999####;0;'
      Size = 15
    end
    object QClitel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel2'
      Origin = 'tel2'
      EditMask = '\(99\)9999\-9999####;0;'
      Size = 14
    end
    object QClifax: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fax'
      Origin = 'fax'
      EditMask = '\(99\)9999\-9999####;0;'
      Size = 15
    end
    object QClicelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      EditMask = '\(99\)9999\-9999####;0;'
      Size = 15
    end
    object QClitipo_tel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_tel1'
      Origin = 'tipo_tel1'
    end
    object QClitipo_tel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_tel2'
      Origin = 'tipo_tel2'
      Size = 14
    end
    object QClisituacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'situacao'
      Origin = 'situacao'
      Size = 10
    end
    object QClilogradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 100
    end
    object QClinmro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmro'
      Origin = 'nmro'
    end
    object QClicomplem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complem'
      Origin = 'complem'
    end
    object QClibairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object QClicidade: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'MUNIC'#205'PIO'
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object QCliuf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object QClicep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '00\.000\-000;0;'
      Size = 12
    end
    object QCliendcobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endcobranca'
      Origin = 'endcobranca'
      Size = 50
    end
    object QClilogradourocobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradourocobranca'
      Origin = 'logradourocobranca'
      Size = 100
    end
    object QClinmrocobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmrocobranca'
      Origin = 'nmrocobranca'
    end
    object QClicomplemcobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemcobranca'
      Origin = 'complemcobranca'
    end
    object QClicidadecobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidadecobranca'
      Origin = 'cidadecobranca'
      Size = 30
    end
    object QClibairrocobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairrocobranca'
      Origin = 'bairrocobranca'
      Size = 30
    end
    object QClicepcobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cepcobranca'
      Origin = 'cepcobranca'
      EditMask = '00\.000\-000;0;'
      Size = 12
    end
    object QCliufcobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ufcobranca'
      Origin = 'ufcobranca'
      FixedChar = True
      Size = 2
    end
    object QCliie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ie'
      Origin = 'ie'
    end
    object QCliim: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'im'
      Origin = 'im'
    end
    object QClirg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg'
      Origin = 'rg'
    end
    object QClisuspenso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'suspenso'
      Origin = 'suspenso'
      FixedChar = True
      Size = 1
    end
    object QClidevedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'devedor'
      Origin = 'devedor'
      FixedChar = True
      Size = 1
    end
    object QCliclientedesde: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'clientedesde'
      Origin = 'clientedesde'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QClipai: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pai'
      Origin = 'pai'
      Size = 30
    end
    object QClimae: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mae'
      Origin = 'mae'
      Size = 30
    end
    object QClireferencia: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'referencia'
      Origin = 'referencia'
      BlobType = ftMemo
    end
    object QClidatanasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datanasc'
      Origin = 'datanasc'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QClilimite: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'limite'
      Origin = 'limite'
      currency = True
    end
    object QCliconvenio: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'convenio'
      Origin = 'convenio'
    end
    object QClihaver: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'haver'
      Origin = 'haver'
      currency = True
    end
    object QCliobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object QClisaldo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'saldo'
      Origin = 'saldo'
      currency = True
    end
    object QCliinfoutil: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'infoutil'
      Origin = 'infoutil'
      Size = 40
    end
    object QCliemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object QClicidade_cod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cidade_cod'
      Origin = 'cidade_cod'
    end
    object QCliindicacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'indicacao'
      Origin = 'indicacao'
    end
    object QClicodmun: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CIDADE'
      FieldName = 'codmun'
      Origin = 'codmun'
    end
    object QClicodmuncobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codmuncobranca'
      Origin = 'codmuncobranca'
    end
    object QCliusar_endsec_entrega: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usar_endsec_entrega'
      Origin = 'usar_endsec_entrega'
      FixedChar = True
      Size = 1
    end
    object QCliusr_endsec_cobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usr_endsec_cobranca'
      Origin = 'usr_endsec_cobranca'
      FixedChar = True
      Size = 1
    end
  end
  object QForn: TFDQuery
    BeforePost = QFornBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from fornecedor order by id desc limit 1')
    Left = 176
    Top = 12
    object QFornid: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '0000'
    end
    object QForncnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object QFornnome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME FANTASIA'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QFornrazaosocial: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RAZ'#195'O SOCIAL'
      FieldName = 'razaosocial'
      Origin = 'razaosocial'
      Size = 100
    end
    object QForntel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel1'
      Origin = 'tel1'
      EditMask = '\(99\)9999\-9999####;0; '
      Size = 15
    end
    object QForntel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel2'
      Origin = 'tel2'
      EditMask = '\(99\)9999\-9999####;0; '
      Size = 14
    end
    object QFornfax: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fax'
      Origin = 'fax'
      EditMask = '\(99\)9999\-9999####;0; '
      Size = 15
    end
    object QForncelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      EditMask = '\(99\)9999\-9999####;0; '
      Size = 15
    end
    object QForntipo_tel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_tel1'
      Origin = 'tipo_tel1'
    end
    object QForntipo_tel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_tel2'
      Origin = 'tipo_tel2'
      Size = 14
    end
    object QFornsituacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'situacao'
      Origin = 'situacao'
      Size = 10
    end
    object QFornlogradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 100
    end
    object QFornnmro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmro'
      Origin = 'nmro'
    end
    object QForncomplem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complem'
      Origin = 'complem'
    end
    object QFornbairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object QForncidade: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'MUNIC'#205'PIO'
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object QFornuf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object QForncep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '00\.000\-000;0; '
      Size = 12
    end
    object QFornendcobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endcobranca'
      Origin = 'endcobranca'
      Size = 50
    end
    object QFornlogradourocobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradourocobranca'
      Origin = 'logradourocobranca'
      Size = 100
    end
    object QFornnmrocobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmrocobranca'
      Origin = 'nmrocobranca'
    end
    object QForncomplemcobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemcobranca'
      Origin = 'complemcobranca'
    end
    object QForncidadecobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidadecobranca'
      Origin = 'cidadecobranca'
      Size = 30
    end
    object QFornbairrocobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairrocobranca'
      Origin = 'bairrocobranca'
      Size = 30
    end
    object QForncepcobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cepcobranca'
      Origin = 'cepcobranca'
      Size = 12
    end
    object QFornufcobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ufcobranca'
      Origin = 'ufcobranca'
      FixedChar = True
      Size = 2
    end
    object QFornie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ie'
      Origin = 'ie'
    end
    object QFornim: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'im'
      Origin = 'im'
    end
    object QFornrg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg'
      Origin = 'rg'
    end
    object QFornsuspenso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'suspenso'
      Origin = 'suspenso'
      FixedChar = True
      Size = 1
    end
    object QForndevedor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'devedor'
      Origin = 'devedor'
      FixedChar = True
      Size = 1
    end
    object QFornclientedesde: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'clientedesde'
      Origin = 'clientedesde'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QFornpai: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pai'
      Origin = 'pai'
      Size = 30
    end
    object QFornmae: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mae'
      Origin = 'mae'
      Size = 30
    end
    object QFornreferencia: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'referencia'
      Origin = 'referencia'
      BlobType = ftMemo
    end
    object QForndatanasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datanasc'
      Origin = 'datanasc'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QFornlimite: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'limite'
      Origin = 'limite'
    end
    object QFornhaver: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'haver'
      Origin = 'haver'
    end
    object QFornobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object QFornsaldo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'saldo'
      Origin = 'saldo'
    end
    object QForndianasc: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'dianasc'
      Origin = 'dianasc'
    end
    object QFornmesnasc: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'mesnasc'
      Origin = 'mesnasc'
    end
    object QFornanonasc: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'anonasc'
      Origin = 'anonasc'
    end
    object QForninfoutil: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'infoutil'
      Origin = 'infoutil'
      Size = 40
    end
    object QFornatualizado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'atualizado'
      Origin = 'atualizado'
      Size = 50
    end
    object QFornemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object QForncidade_cod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cidade_cod'
      Origin = 'cidade_cod'
    end
    object QFornindicacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'indicacao'
      Origin = 'indicacao'
    end
    object QForncodmun: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CIDADE'
      FieldName = 'codmun'
      Origin = 'codmun'
    end
    object QForncodmuncobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codmuncobranca'
      Origin = 'codmuncobranca'
    end
    object QFornusar_endsec_entrega: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usar_endsec_entrega'
      Origin = 'usar_endsec_entrega'
      FixedChar = True
      Size = 1
    end
    object QFornusr_endsec_cobranca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usr_endsec_cobranca'
      Origin = 'usr_endsec_cobranca'
      FixedChar = True
      Size = 1
    end
  end
  object QFPag: TFDQuery
    BeforePost = QFPagBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from fpag')
    Left = 660
    Top = 12
    object QFPagid: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QFPagdescr: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'descr'
      Origin = 'descr'
      FixedChar = True
    end
    object QFPagaprazo: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'PRAZO'
      FieldName = 'aprazo'
      Origin = 'aprazo'
      FixedChar = True
      Size = 1
    end
    object QFPagtipo: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'TIPO'
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 3
    end
    object QFPagindice_tef: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = #205'NDICE ECF'
      FieldName = 'indice_tef'
      Origin = 'indice_tef'
      FixedChar = True
      Size = 2
    end
    object QFPaguso: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'USO'
      FieldName = 'uso'
      Origin = 'uso'
      Size = 2
    end
  end
  object QSessao: TFDQuery
    BeforePost = QSessaoBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from sessao order by nome')
    Left = 77
    Top = 80
    object QSessaoid: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '00'
    end
    object QSessaonome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
    object QSessaousoint: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'U.INT'
      FieldName = 'usoint'
      Origin = 'usoint'
      FixedChar = True
      Size = 1
    end
    object QSessaobalanca: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'BALAN'#199'A'
      FieldName = 'balanca'
      Origin = 'balanca'
      FixedChar = True
      Size = 1
    end
    object QSessaonatur_receita: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NAT. REC.'
      FieldName = 'natur_receita'
      Origin = 'natur_receita'
      DisplayFormat = '000'
    end
  end
  object QUnidade: TFDQuery
    BeforePost = QUnidadeBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from unidade order by unidade')
    Left = 21
    Top = 80
    object QUnidadeid: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '00'
    end
    object QUnidadeunidade: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'SIGLA'
      FieldName = 'unidade'
      Origin = 'unidade'
      Size = 10
    end
    object QUnidadenome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'nome'
      Origin = 'nome'
    end
    object QUnidadefracionavel: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'FRA'#199#195'O'
      FieldName = 'fracionavel'
      Origin = 'fracionavel'
      FixedChar = True
      Size = 1
    end
  end
  object QEstoque: TFDQuery
    AfterOpen = QEstoqueAfterOpen
    AfterInsert = QEstoqueAfterInsert
    BeforePost = QEstoqueBeforePost
    AfterPost = QEstoqueAfterPost
    BeforeDelete = QEstoqueBeforeDelete
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from estoque order by id desc limit 1')
    Left = 12
    Top = 176
    object QEstoqueid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '00000'
    end
    object QEstoquesessao: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'SESS'#195'O'
      FieldName = 'sessao'
      Origin = 'sessao'
    end
    object QEstoqueunidade: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UNIDADE DE MEDIDA'
      FieldName = 'unidade'
      Origin = 'unidade'
    end
    object QEstoquecod_gtin: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#211'DIGO GTIN'
      FieldName = 'cod_gtin'
      Origin = 'cod_gtin'
    end
    object QEstoquencm: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'NCM'
      FieldName = 'ncm'
      Origin = 'ncm'
      EditMask = '00\.00\.0000;0; '
    end
    object QEstoquedestinacao: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESTINA'#199#195'O DA MERCADORIA'
      FieldName = 'destinacao'
      Origin = 'destinacao'
      Size = 30
    end
    object QEstoquenome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESCRI'#199#195'O DO PRODUTO/SERVI'#199'O'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QEstoquevrvenda_vista: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'VR. A VISTA'
      FieldName = 'vrvenda_vista'
      Origin = 'vrvenda_vista'
      currency = True
    end
    object QEstoquealiq_icms: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'AL'#205'QUOTA ICMS'
      FieldName = 'aliq_icms'
      Origin = 'aliq_icms'
    end
    object QEstoquecst: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CST'
      FieldName = 'cst'
      Origin = 'cst'
    end
    object QEstoquecod_aux: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_aux'
      Origin = 'cod_aux'
      Size = 30
    end
    object QEstoquecod_interno: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_interno'
      Origin = 'cod_interno'
    end
    object QEstoquevrcotacao: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrcotacao'
      Origin = 'vrcotacao'
      DisplayFormat = '0.00'
    end
    object QEstoquevrcusto: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'VR. CUSTO'
      FieldName = 'vrcusto'
      Origin = 'vrcusto'
      currency = True
    end
    object QEstoquevrcusto_real: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'VR. CUSTO REAL'
      FieldName = 'vrcusto_real'
      Origin = 'vrcusto_real'
      currency = True
    end
    object QEstoquepcvenda_pz: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pcvenda_pz'
      Origin = 'pcvenda_pz'
      DisplayFormat = '0.00#'
    end
    object QEstoquevrvenda_prz: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrvenda_prz'
      Origin = 'vrvenda_prz'
      currency = True
    end
    object QEstoquevrvenda_old: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrvenda_old'
      Origin = 'vrvenda_old'
      currency = True
    end
    object QEstoquemg_lucro: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'MG LUCRO'
      FieldName = 'mg_lucro'
      Origin = 'mg_lucro'
    end
    object QEstoqueqt_min: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qt_min'
      Origin = 'qt_min'
      DisplayFormat = '0.00#'
    end
    object QEstoquequant: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ESTOQUE'
      FieldName = 'quant'
      Origin = 'quant'
      DisplayFormat = '0.00#'
    end
    object QEstoquequantx: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'quantx'
      Origin = 'quantx'
      DisplayFormat = '0.00#'
    end
    object QEstoqueqt_caixa: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qt_caixa'
      Origin = 'qt_caixa'
      DisplayFormat = '0.00#'
    end
    object QEstoquemedicam_apresentacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_apresentacao'
      Origin = 'medicam_apresentacao'
      Size = 40
    end
    object QEstoquemedicam_principio_atv: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_principio_atv'
      Origin = 'medicam_principio_atv'
      Size = 100
    end
    object QEstoquemedicam_nomelab: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_nomelab'
      Origin = 'medicam_nomelab'
      Size = 100
    end
    object QEstoquemedicam_portaria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_portaria'
      Origin = 'medicam_portaria'
      Size = 5
    end
    object QEstoquemedicam_registroms: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_registroms'
      Origin = 'medicam_registroms'
    end
    object QEstoquemedicam_pmc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_pmc'
      Origin = 'medicam_pmc'
      currency = True
    end
    object QEstoquemedicam_vrms: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_vrms'
      Origin = 'medicam_vrms'
      currency = True
    end
    object QEstoquemedic_qtcaixa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'medic_qtcaixa'
      Origin = 'medic_qtcaixa'
    end
    object QEstoquemedic_fracao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'medic_fracao'
      Origin = 'medic_fracao'
    end
    object QEstoquemedic_atualizar_web: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medic_atualizar_web'
      Origin = 'medic_atualizar_web'
      FixedChar = True
      Size = 1
    end
    object QEstoquesuspenso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'suspenso'
      Origin = 'suspenso'
      FixedChar = True
      Size = 1
    end
    object QEstoquevalidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'validade'
      Origin = 'validade'
    end
    object QEstoquereceita: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'receita'
      Origin = 'receita'
      BlobType = ftMemo
    end
    object QEstoquenutricional: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'nutricional'
      Origin = 'nutricional'
      BlobType = ftMemo
    end
    object QEstoquepromocao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'promocao'
      Origin = 'promocao'
      FixedChar = True
      Size = 1
    end
    object QEstoquecalculo_por_arredondamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'calculo_por_arredondamento'
      Origin = 'calculo_por_arredondamento'
      FixedChar = True
      Size = 3
    end
    object QEstoqueproducao_propria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'producao_propria'
      Origin = 'producao_propria'
      FixedChar = True
      Size = 1
    end
    object QEstoqueincide_pis_cofins: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'incide_pis_cofins'
      Origin = 'incide_pis_cofins'
      FixedChar = True
      Size = 1
    end
    object QEstoqueinfo_complem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'info_complem'
      Origin = 'info_complem'
    end
    object QEstoquecst_ipi_ent: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CST IPI ENTR.'
      FieldName = 'cst_ipi_ent'
      Origin = 'cst_ipi_ent'
    end
    object QEstoquecst_ipi_sai: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CST IPI SA'#205'DA'
      FieldName = 'cst_ipi_sai'
      Origin = 'cst_ipi_sai'
    end
    object QEstoqueipi_pc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ipi_pc'
      Origin = 'ipi_pc'
      DisplayFormat = '0.00#'
    end
    object QEstoquecst_pis_sai: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CST PIS SAIDA'
      FieldName = 'cst_pis_sai'
      Origin = 'cst_pis_sai'
    end
    object QEstoquecst_pis_ent: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CST PIS ENTRADA'
      FieldName = 'cst_pis_ent'
      Origin = 'cst_pis_ent'
    end
    object QEstoquepis_pc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pis_pc'
      Origin = 'pis_pc'
      DisplayFormat = '0.00#'
    end
    object QEstoquecst_cofins_ent: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_cofins_ent'
      Origin = 'cst_cofins_ent'
    end
    object QEstoquecst_cofins_sai: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_cofins_sai'
      Origin = 'cst_cofins_sai'
    end
    object QEstoquecofins_pc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'cofins_pc'
      Origin = 'cofins_pc'
      DisplayFormat = '0.00#'
    end
    object QEstoquedt_ult_alte: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_ult_alte'
      Origin = 'dt_ult_alte'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QEstoquemd5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      Size = 32
    end
    object QEstoquebalanca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'balanca'
      Origin = 'balanca'
      FixedChar = True
      Size = 1
    end
    object QEstoqueteclado: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'teclado'
      Origin = 'teclado'
    end
    object QEstoquecod_receita: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_receita'
      Origin = 'cod_receita'
    end
    object QEstoquesped_tabela: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'sped_tabela'
      Origin = 'sped_tabela'
    end
    object QEstoqueorigem: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ORIGEM DA MERCADORIA'
      FieldName = 'origem'
      Origin = 'origem'
    end
    object QEstoquegrade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'grade'
      Origin = 'grade'
    end
    object QEstoqueatualizado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'atualizado'
      Origin = 'atualizado'
      Size = 50
    end
    object QEstoquehash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
    object QEstoqueicms_st_mod_bc: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'icms_st_mod_bc'
      Origin = 'icms_st_mod_bc'
    end
    object QEstoqueicms_st_ptabela: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms_st_ptabela'
      Origin = 'icms_st_ptabela'
    end
    object QEstoqueicms_st_vtabela: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms_st_vtabela'
      Origin = 'icms_st_vtabela'
    end
    object QEstoqueicms_st_pmva: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms_st_pmva'
      Origin = 'icms_st_pmva'
    end
    object QEstoqueicms_st_picms: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms_st_picms'
      Origin = 'icms_st_picms'
    end
    object QEstoqueicms_st_p_red_bc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms_st_p_red_bc'
      Origin = 'icms_st_p_red_bc'
    end
    object QEstoqueicms_mod_bc: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'icms_mod_bc'
      Origin = 'icms_mod_bc'
    end
  end
  object QFinan_bol_Emit: TFDQuery
    BeforePost = QFinan_bol_EmitBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from finan_boleto_emitido')
    Left = 184
    Top = 844
    object QFinan_bol_Emitid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '000000'
    end
    object QFinan_bol_Emitdata_process: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_process'
      Origin = 'data_process'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QFinan_bol_Emitdt_vencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_vencimento'
      Origin = 'dt_vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QFinan_bol_Emitdt_baixa_canc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_baixa_canc'
      Origin = 'dt_baixa_canc'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QFinan_bol_Emitboleto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'boleto'
      Origin = 'boleto'
    end
    object QFinan_bol_Emitbaixa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'baixa'
      Origin = 'baixa'
      FixedChar = True
      Size = 1
    end
    object QFinan_bol_Emitcancelado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cancelado'
      Origin = 'cancelado'
      FixedChar = True
      Size = 1
    end
    object QFinan_bol_Emitnossonmro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nossonmro'
      Origin = 'nossonmro'
    end
    object QFinan_bol_Emitvalor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      DisplayFormat = '#,##0.00'
    end
    object QFinan_bol_Emitvalor_pg: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_pg'
      Origin = 'valor_pg'
      DisplayFormat = '#,##0.00'
    end
    object QFinan_bol_Emitjuros_dias: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'juros_dias'
      Origin = 'juros_dias'
      DisplayFormat = '#,##0.00'
    end
    object QFinan_bol_Emitmulta: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'multa'
      Origin = 'multa'
      DisplayFormat = '#,##0.00'
    end
    object QFinan_bol_Emitdesconto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'desconto'
      Origin = 'desconto'
      DisplayFormat = '#,##0.00'
    end
    object QFinan_bol_Emitlinha_dig: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'linha_dig'
      Origin = 'linha_dig'
      Size = 100
    end
    object QFinan_bol_Emitsacado_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sacado_cnpj'
      Origin = 'sacado_cnpj'
    end
    object QFinan_bol_Emitsacado_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sacado_nome'
      Origin = 'sacado_nome'
      Size = 45
    end
    object QFinan_bol_Emitsacado_logradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sacado_logradouro'
      Origin = 'sacado_logradouro'
      Size = 100
    end
    object QFinan_bol_Emitsacado_nmro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sacado_nmro'
      Origin = 'sacado_nmro'
    end
    object QFinan_bol_Emitsacado_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sacado_bairro'
      Origin = 'sacado_bairro'
      Size = 50
    end
    object QFinan_bol_Emitsacado_municipio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sacado_municipio'
      Origin = 'sacado_municipio'
      Size = 255
    end
    object QFinan_bol_Emitsacado_uf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sacado_uf'
      Origin = 'sacado_uf'
      FixedChar = True
      Size = 2
    end
    object QFinan_bol_Emitsacado_cep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sacado_cep'
      Origin = 'sacado_cep'
      Size = 12
    end
    object QFinan_bol_Emitsacado_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sacado_email'
      Origin = 'sacado_email'
      Size = 150
    end
    object QFinan_bol_Emitinstr: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'instr'
      Origin = 'instr'
      BlobType = ftMemo
    end
    object QFinan_bol_Emitobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object QFinan_bol_Emitdt_atualiz: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'dt_atualiz'
      Origin = 'dt_atualiz'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object QFinan_bol_Emitcod_instr1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_instr1'
      Origin = 'cod_instr1'
      Size = 5
    end
    object QFinan_bol_Emitcod_instr2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_instr2'
      Origin = 'cod_instr2'
      Size = 5
    end
    object QFinan_bol_Emitpath_boleto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'path_boleto'
      Origin = 'path_boleto'
      Size = 200
    end
    object QFinan_bol_Emitlinha1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'linha1'
      Origin = 'linha1'
      Size = 100
    end
    object QFinan_bol_Emitlinha2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'linha2'
      Origin = 'linha2'
      Size = 100
    end
    object QFinan_bol_Emitimprimir: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'imprimir'
      Origin = 'imprimir'
      FixedChar = True
      Size = 1
    end
    object QFinan_bol_Emittipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
    object QFinan_bol_Emitid_movi: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_movi'
      Origin = 'id_movi'
    end
  end
  object QDebito: TFDQuery
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from finan_debito')
    Left = 118
    Top = 644
    object QDebitoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QDebitotipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
    object QDebitocliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cliente'
      Origin = 'cliente'
    end
    object QDebitoid_movi: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_movi'
      Origin = 'id_movi'
    end
    object QDebitonmro_doc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmro_doc'
      Origin = 'nmro_doc'
      Size = 10
    end
    object QDebitodt_process: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_process'
      Origin = 'dt_process'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QDebitodt_vencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_vencimento'
      Origin = 'dt_vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QDebitodt_baixa: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_baixa'
      Origin = 'dt_baixa'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QDebitohora_baixa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hora_baixa'
      Origin = 'hora_baixa'
      Size = 5
    end
    object QDebitovalor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object QDebitovalor_pg: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_pg'
      Origin = 'valor_pg'
      currency = True
    end
    object QDebitoobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object QDebitooperador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'operador'
      Origin = 'operador'
    end
  end
  object QFinan_Carne: TFDQuery
    BeforePost = QFinan_CarneBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from finan_carne_emitido')
    Left = 40
    Top = 435
    object QFinan_Carneid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '00000'
    end
    object QFinan_Carnesacado: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'sacado'
      Origin = 'sacado'
    end
    object QFinan_Carnedata_process: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_process'
      Origin = 'data_process'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QFinan_Carnedt_vencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_vencimento'
      Origin = 'dt_vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QFinan_Carnedt_baixa_canc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_baixa_canc'
      Origin = 'dt_baixa_canc'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QFinan_Carnebaixa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'baixa'
      Origin = 'baixa'
      FixedChar = True
      Size = 1
    end
    object QFinan_Carnecancelado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cancelado'
      Origin = 'cancelado'
      FixedChar = True
      Size = 1
    end
    object QFinan_Carnenmro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmro'
      Origin = 'nmro'
    end
    object QFinan_Carnevalor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object QFinan_Carnevalor_pg: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_pg'
      Origin = 'valor_pg'
      currency = True
    end
    object QFinan_Carnejuros_dias: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'juros_dias'
      Origin = 'juros_dias'
    end
    object QFinan_Carnemulta: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'multa'
      Origin = 'multa'
    end
    object QFinan_Carnedesconto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'desconto'
      Origin = 'desconto'
    end
    object QFinan_Carneobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object QFinan_Carnedt_atualiz: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'dt_atualiz'
      Origin = 'dt_atualiz'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object QFinan_Carnetipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
    object QFinan_Carneid_movi: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_movi'
      Origin = 'id_movi'
    end
  end
  object QCaixa: TFDQuery
    BeforePost = QCaixaBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from caixa')
    Left = 342
    Top = 16
    object QCaixaid: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QCaixadata: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DATA'
      FieldName = 'data'
      Origin = 'data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QCaixahora: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'HORA'
      FieldName = 'hora'
      Origin = 'hora'
      Size = 5
    end
    object QCaixatipo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'TIPO'
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 3
    end
    object QCaixadescricao: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 60
    end
    object QCaixavalor: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'VALOR'
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object QCaixaentrada: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ENTR'
      FieldName = 'entrada'
      Origin = 'entrada'
      FixedChar = True
      Size = 1
    end
    object QCaixaterminal: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'TERMINAL'
      FieldName = 'terminal'
      Origin = 'terminal'
    end
    object QCaixaoperador: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'OPERADOR'
      FieldName = 'operador'
      Origin = 'operador'
    end
    object QCaixaid_movi: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_movi'
      Origin = 'id_movi'
    end
    object QCaixamd5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object QCaixahash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
  end
  object QBancos: TFDQuery
    BeforePost = QBancosBeforePost
    BeforeDelete = QBancosBeforeDelete
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from finan_banco_banco order by numbanco')
    Left = 9
    Top = 534
    object QBancosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QBancosnumbanco: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#186' BANCO'
      FieldName = 'numbanco'
      Origin = 'numbanco'
      DisplayFormat = '000'
    end
    object QBancosnomebanco: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME DO BANCO'
      FieldName = 'nomebanco'
      Origin = 'nomebanco'
    end
    object QBancosusa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usa'
      Origin = 'usa'
      FixedChar = True
      Size = 1
    end
  end
  object QAgencias: TFDQuery
    BeforeInsert = QAgenciasBeforeInsert
    AfterInsert = QAgenciasAfterInsert
    BeforePost = QAgenciasBeforePost
    BeforeDelete = QAgenciasBeforeDelete
    MasterSource = DSBancos
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = DMConn.DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from finan_banco_agencia '
      'where banco=:id'
      'order by agencia')
    Left = 61
    Top = 534
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object QAgenciasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QAgenciasbanco: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'banco'
      Origin = 'banco'
    end
    object QAgenciasagencia: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'AG'#202'NCIA'
      FieldName = 'agencia'
      Origin = 'agencia'
    end
    object QAgenciasdig: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DIG.'
      FieldName = 'dig'
      Origin = 'dig'
    end
    object QAgenciasnome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'nome'
      Origin = 'nome'
    end
  end
  object QBoleto: TFDQuery
    AfterInsert = QBoletoAfterInsert
    BeforeEdit = QBoletoBeforeEdit
    BeforePost = QBoletoBeforePost
    BeforeDelete = QBoletoBeforeDelete
    MasterSource = DSContas
    MasterFields = 'id'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from finan_banco_boleto'
      'where conta=:id')
    Left = 169
    Top = 534
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QBoletoid: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QBoletoconta: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'conta'
      Origin = 'conta'
    end
    object QBoletotipo_cobranca: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'BANCO'
      FieldName = 'tipo_cobranca'
      Origin = 'tipo_cobranca'
    end
    object QBoletoorientacao_banco: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ORIENTA'#199#213'ES AO BANCO'
      FieldName = 'orientacao_banco'
      Origin = 'orientacao_banco'
      BlobType = ftMemo
    end
    object QBoletocedente_nome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME COMPLETO'
      FieldName = 'cedente_nome'
      Origin = 'cedente_nome'
      Size = 100
    end
    object QBoletocedente_logradouro: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'cedente_logradouro'
      Origin = 'cedente_logradouro'
      Size = 100
    end
    object QBoletocedente_bairro: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'BAIRRO'
      FieldName = 'cedente_bairro'
      Origin = 'cedente_bairro'
      Size = 50
    end
    object QBoletocedente_municipio: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'MUNIC'#205'PIO'
      FieldName = 'cedente_municipio'
      Origin = 'cedente_municipio'
      Size = 50
    end
    object QBoletocedente_uf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'cedente_uf'
      Origin = 'cedente_uf'
      FixedChar = True
      Size = 2
    end
    object QBoletocedente_cep: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'cedente_cep'
      Origin = 'cedente_cep'
      EditMask = '00\.000\-000;1; '
      Size = 10
    end
    object QBoletocedente_cnpjcpf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'cedente_cnpjcpf'
      Origin = 'cedente_cnpjcpf'
    end
    object QBoletocedente_complemento: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'COMPLEMENTO'
      FieldName = 'cedente_complemento'
      Origin = 'cedente_complemento'
      Size = 30
    end
    object QBoletocedente_tipoinscr: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'TIPO INSCR.'
      FieldName = 'cedente_tipoinscr'
      Origin = 'cedente_tipoinscr'
    end
    object QBoletocaract_titulo: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CARAC. T'#205'TULO'
      FieldName = 'caract_titulo'
      Origin = 'caract_titulo'
    end
    object QBoletoconvenio: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CONV'#202'NIO'
      FieldName = 'convenio'
      Origin = 'convenio'
    end
    object QBoletomodalidade: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'MODAL.'
      FieldName = 'modalidade'
      Origin = 'modalidade'
      Size = 10
    end
    object QBoletoresp_emissao: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RESP. EMISS'#195'O'
      FieldName = 'resp_emissao'
      Origin = 'resp_emissao'
    end
    object QBoletolayout_remessa: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'LAYOUT REMESSA'
      FieldName = 'layout_remessa'
      Origin = 'layout_remessa'
    end
    object QBoletoarquivo_remessa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME DO ARQ. REMESSA'
      FieldName = 'arquivo_remessa'
      Origin = 'arquivo_remessa'
      Size = 100
    end
    object QBoletoarquivo_retorno: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME DO ARQ. RETORNO'
      FieldName = 'arquivo_retorno'
      Origin = 'arquivo_retorno'
      Size = 100
    end
    object QBoletonmro_res: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#186' RES.'
      FieldName = 'nmro_res'
      Origin = 'nmro_res'
      Size = 10
    end
    object QBoletomail_host: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#186' RES.'
      FieldName = 'mail_host'
      Origin = 'mail_host'
      Size = 150
    end
    object QBoletomail_port: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'PORTA'
      FieldName = 'mail_port'
      Origin = 'mail_port'
    end
    object QBoletomail_user: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'USER'
      FieldName = 'mail_user'
      Origin = 'mail_user'
      Size = 50
    end
    object QBoletomail_password: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'SENHA'
      FieldName = 'mail_password'
      Origin = 'mail_password'
    end
    object QBoletomail_from: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'FROM'
      FieldName = 'mail_from'
      Origin = 'mail_from'
      Size = 100
    end
    object QBoletomail_assunto: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ASSUNTO'
      FieldName = 'mail_assunto'
      Origin = 'mail_assunto'
      Size = 60
    end
    object QBoletomail_msg: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'MENSAGEM'
      FieldName = 'mail_msg'
      Origin = 'mail_msg'
      BlobType = ftMemo
    end
    object QBoletomail_ssl: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'SSL'
      FieldName = 'mail_ssl'
      Origin = 'mail_ssl'
      FixedChar = True
      Size = 1
    end
    object QBoletomail_tls: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'TLS'
      FieldName = 'mail_tls'
      Origin = 'mail_tls'
      FixedChar = True
      Size = 1
    end
    object QBoletomail_enviapdf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ENVIAR PDF'
      FieldName = 'mail_enviapdf'
      Origin = 'mail_enviapdf'
      FixedChar = True
      Size = 1
    end
    object QBoletomail_pedeconfirma: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'PEDIR CONFIRM.'
      FieldName = 'mail_pedeconfirma'
      Origin = 'mail_pedeconfirma'
      FixedChar = True
      Size = 1
    end
    object QBoletomail_aguarda_envio: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'AGUARDA ENVIO'
      FieldName = 'mail_aguarda_envio'
      Origin = 'mail_aguarda_envio'
      FixedChar = True
      Size = 1
    end
    object QBoletomail_nomeremetente: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME DO REMETENTE'
      FieldName = 'mail_nomeremetente'
      Origin = 'mail_nomeremetente'
      Size = 100
    end
    object QBoletopc_juros: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'JUROS'
      FieldName = 'pc_juros'
      Origin = 'pc_juros'
      DisplayFormat = '0.00#%'
    end
    object QBoletopc_desc: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESC.'
      FieldName = 'pc_desc'
      Origin = 'pc_desc'
      DisplayFormat = '0.00#%'
    end
    object QBoletopc_multa: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'MULTA'
      FieldName = 'pc_multa'
      Origin = 'pc_multa'
      DisplayFormat = '0.00#%'
    end
    object QBoletodias_juros: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'APLICAR JUROS AP'#211'S'
      FieldName = 'dias_juros'
      Origin = 'dias_juros'
    end
    object QBoletodis_desc: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'APLICAR DESCONTO AT'#201
      FieldName = 'dis_desc'
      Origin = 'dis_desc'
    end
    object QBoletodias_protesto: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'PROTESTAR AP'#211'S'
      FieldName = 'dias_protesto'
      Origin = 'dias_protesto'
    end
    object QBoletoaceite: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ACEITE'
      FieldName = 'aceite'
      Origin = 'aceite'
    end
    object QBoletocod_instr1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#211'D INSTR. 1'
      FieldName = 'cod_instr1'
      Origin = 'cod_instr1'
      Size = 5
    end
    object QBoletocod_instr2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#211'D INSTR. 2'
      FieldName = 'cod_instr2'
      Origin = 'cod_instr2'
      Size = 5
    end
    object QBoletoespecie: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ESP'#201'CIE'
      FieldName = 'especie'
      Origin = 'especie'
      Size = 10
    end
    object QBoletolocal_pag: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'LOCAL DE PAGAM.'
      FieldName = 'local_pag'
      Origin = 'local_pag'
      Size = 80
    end
    object QBoletonossonumero: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOSSO N'#186
      FieldName = 'nossonumero'
      Origin = 'nossonumero'
    end
    object QBoletocarteira: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CARTEIRA'
      FieldName = 'carteira'
      Origin = 'carteira'
      Size = 10
    end
    object QBoletocodigo_cedente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_cedente'
      Origin = 'codigo_cedente'
    end
  end
  object QContas: TFDQuery
    BeforeInsert = QContasBeforeInsert
    AfterInsert = QContasAfterInsert
    BeforePost = QContasBeforePost
    AfterPost = QContasAfterPost
    BeforeDelete = QContasBeforeDelete
    MasterSource = DSAgencias
    MasterFields = 'id'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from finan_banco_conta '
      'where agencia=:id'
      'order by conta')
    Left = 121
    Top = 534
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QContasid: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QContasagencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'agencia'
      Origin = 'agencia'
    end
    object QContasconta: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CONTA'
      FieldName = 'conta'
      Origin = 'conta'
    end
    object QContasdig: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'D'#205'G.'
      FieldName = 'dig'
      Origin = 'dig'
    end
    object QContastipo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'TIPO'
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
    object QContassaldoinicial: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'SALDO INICIAL'
      FieldName = 'saldoinicial'
      Origin = 'saldoinicial'
      currency = True
    end
    object QContasnome_proprietario: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DETENTOR DA CONTA'
      FieldName = 'nome_proprietario'
      Origin = 'nome_proprietario'
      Size = 60
    end
    object QContascnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ DETENTOR'
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object QContasobs: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'OBSERVA'#199#213'ES'
      FieldName = 'obs'
      Origin = 'obs'
      Size = 50
    end
  end
  object QFinan_Banco_Movi: TFDQuery
    MasterSource = DSContas
    MasterFields = 'id'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from finan_banco_movi'
      'where conta=:id')
    Left = 142
    Top = 434
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QFinan_Banco_Moviid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QFinan_Banco_Moviconta: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'conta'
      Origin = 'conta'
    end
    object QFinan_Banco_Movicod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod'
      Origin = 'cod'
      Size = 3
    end
    object QFinan_Banco_Movitipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
    object QFinan_Banco_Movivalor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      DisplayFormat = '#,##0,00'
    end
    object QFinan_Banco_Movidata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QFinan_Banco_Movidocumento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'documento'
      Origin = 'documento'
      Size = 30
    end
    object QFinan_Banco_Movidescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object QFinan_Banco_Moviid_movi: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_movi'
      Origin = 'id_movi'
    end
  end
  object cdCST: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 768
    Top = 204
    object cdCSTid: TIntegerField
      FieldName = 'id'
    end
    object cdCSTcst: TStringField
      FieldName = 'cst'
      Size = 3
    end
  end
  object cdcsosn: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 772
    Top = 140
    object cdcsosnid: TIntegerField
      FieldName = 'id'
    end
    object cdcsosncsosn: TStringField
      FieldName = 'csosn'
      Size = 3
    end
  end
  object cdCST2: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 768
    Top = 252
    object cdCST2id: TIntegerField
      FieldName = 'id'
    end
    object cdCST2cst: TStringField
      FieldName = 'cst'
      Size = 3
    end
  end
  object cdCSTPC: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 768
    Top = 308
    object cdCSTPCid: TIntegerField
      FieldName = 'id'
    end
    object cdCSTPCcst: TStringField
      FieldName = 'cst'
      Size = 3
    end
  end
  object cdMod: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 684
    Top = 724
    object cdModid: TIntegerField
      FieldName = 'id'
    end
    object cdModmodbc: TStringField
      FieldName = 'modbc'
    end
  end
  object cdMod2: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 620
    Top = 720
    object cdMod2id: TIntegerField
      FieldName = 'id'
    end
    object cdMod2modbc: TStringField
      FieldName = 'modbc'
    end
  end
  object QFinan_Bol_Cli: TFDQuery
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from finan_bol_cli')
    Left = 184
    Top = 954
    object QFinan_Bol_Cliid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QFinan_Bol_Clicliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cliente'
      Origin = 'cliente'
    end
    object QFinan_Bol_Clidia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'dia'
      Origin = 'dia'
    end
    object QFinan_Bol_Clivalor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object QFinan_Bol_Clilinha1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'linha1'
      Origin = 'linha1'
      Size = 78
    end
    object QFinan_Bol_Clilinha2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'linha2'
      Origin = 'linha2'
      Size = 78
    end
    object QFinan_Bol_Cliimprimir: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'imprimir'
      Origin = 'imprimir'
      FixedChar = True
      Size = 1
    end
    object QFinan_Bol_CliNome: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome'
      LookupDataSet = QCli
      LookupKeyFields = 'id'
      LookupResultField = 'razaosocial'
      KeyFields = 'cliente'
      Size = 100
      Lookup = True
    end
  end
  object QSoftHouse: TFDQuery
    BeforePost = QSoftHouseBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from softhouse limit 1')
    Left = 228
    Top = 12
    object QSoftHouseid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QSoftHouserazao_social: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'razao_social'
      Origin = 'razao_social'
      Size = 50
    end
    object QSoftHousenome_fantasia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_fantasia'
      Origin = 'nome_fantasia'
      Size = 40
    end
    object QSoftHousecnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object QSoftHouseie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ie'
      Origin = 'ie'
    end
    object QSoftHouseim: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'im'
      Origin = 'im'
    end
    object QSoftHouselogradouro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 50
    end
    object QSoftHouselaudo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'laudo'
      Origin = 'laudo'
      Size = 30
    end
    object QSoftHousecomplem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complem'
      Origin = 'complem'
    end
    object QSoftHousebairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
    end
    object QSoftHousecidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object QSoftHousecep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      Size = 16
    end
    object QSoftHouseuf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object QSoftHousetel1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel1'
      Origin = 'tel1'
    end
    object QSoftHousetel2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tel2'
      Origin = 'tel2'
    end
    object QSoftHousefax: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fax'
      Origin = 'fax'
      Size = 16
    end
    object QSoftHouseemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object QSoftHousenome_resp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_resp'
      Origin = 'nome_resp'
      Size = 40
    end
    object QSoftHousecpf_resp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_resp'
      Origin = 'cpf_resp'
    end
    object QSoftHouserg_resp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg_resp'
      Origin = 'rg_resp'
    end
    object QSoftHousenome_soft: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_soft'
      Origin = 'nome_soft'
      Size = 50
    end
    object QSoftHouseversao_soft: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'versao_soft'
      Origin = 'versao_soft'
      Size = 30
    end
    object QSoftHousemdoutros: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mdoutros'
      Origin = 'mdoutros'
      Size = 50
    end
    object QSoftHousedt_geracao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dt_geracao'
      Origin = 'dt_geracao'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object QSoftHouseversao_er_paf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'versao_er_paf'
      Origin = 'versao_er_paf'
      Size = 4
    end
    object QSoftHousenome_exe: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_exe'
      Origin = 'nome_exe'
      Size = 30
    end
    object QSoftHousenome_contato: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_contato'
      Origin = 'nome_contato'
      Size = 40
    end
    object QSoftHousemd5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      Size = 50
    end
    object QSoftHousedt_atualiz: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'dt_atualiz'
      Origin = 'dt_atualiz'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
  end
  object QVenda: TFDQuery
    AfterInsert = QVendaAfterInsert
    BeforePost = TPAF_R01BeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from venda limit 1')
    Left = 8
    Top = 336
    object QVendaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QVendatipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 3
    end
    object QVendacliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cliente'
      Origin = 'cliente'
    end
    object QVendaoperador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'operador'
      Origin = 'operador'
    end
    object QVendavendedor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'vendedor'
      Origin = 'vendedor'
    end
    object QVendacancelado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cancelado'
      Origin = 'cancelado'
      FixedChar = True
      Size = 1
    end
    object QVendadata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QVendahora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hora'
      Origin = 'hora'
      Size = 5
    end
    object QVendacoa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'coa'
      Origin = 'coa'
      DisplayFormat = '0000,000,000'
    end
    object QVendacoo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'coo'
      Origin = 'coo'
      DisplayFormat = '000000'
    end
    object QVendaccf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ccf'
      Origin = 'ccf'
    end
    object QVendapv: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pv'
      Origin = 'pv'
      Size = 10
    end
    object QVendanf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QVendaserie_d: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'serie_d'
      Origin = 'serie_d'
    end
    object QVendacv: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'cv'
      Origin = 'cv'
      BlobType = ftMemo
    end
    object QVendavalor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
    end
    object QVendavr_desconto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_desconto'
      Origin = 'vr_desconto'
    end
    object QVendavr_desc_posvenda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_desc_posvenda'
      Origin = 'vr_desc_posvenda'
    end
    object QVendavr_pago: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_pago'
      Origin = 'vr_pago'
    end
    object QVendavr_comissao: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_comissao'
      Origin = 'vr_comissao'
    end
    object QVendavr_abat: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_abat'
      Origin = 'vr_abat'
    end
    object QVendavr_din: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_din'
      Origin = 'vr_din'
    end
    object QVendavr_chq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_chq'
      Origin = 'vr_chq'
    end
    object QVendavr_card: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_card'
      Origin = 'vr_card'
    end
    object QVendavr_outros: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_outros'
      Origin = 'vr_outros'
    end
    object QVendavr_tkt: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_tkt'
      Origin = 'vr_tkt'
    end
    object QVendatroco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'troco'
      Origin = 'troco'
    end
    object QVendaobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object QVendaterminal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'terminal'
      Origin = 'terminal'
    end
    object QVendatipo_crt: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_crt'
      Origin = 'tipo_crt'
      FixedChar = True
      Size = 1
    end
    object QVendaoper_crt: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'oper_crt'
      Origin = 'oper_crt'
      Size = 30
    end
    object QVendamd5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object QVendahash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      Size = 32
    end
  end
  object DSVenda: TDataSource
    AutoEdit = False
    DataSet = QVenda
    Left = 7
    Top = 388
  end
  object QVenda_Item: TFDQuery
    AfterInsert = QVenda_ItemAfterInsert
    MasterSource = DSVenda
    MasterFields = 'id'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from venda_item where venda=:id order by nItem')
    Left = 72
    Top = 336
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QVenda_Itemid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QVenda_Itemvenda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'venda'
      Origin = 'venda'
    end
    object QVenda_ItemnItem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nItem'
      Origin = 'nItem'
    end
    object QVenda_ItemcProd: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cProd'
      Origin = 'cProd'
    end
    object QVenda_ItemcEAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cEAN'
      Origin = 'cEAN'
    end
    object QVenda_ItemxProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'xProd'
      Origin = 'xProd'
      Size = 120
    end
    object QVenda_ItemNCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object QVenda_ItemEXTIPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EXTIPI'
      Origin = 'EXTIPI'
      Size = 3
    end
    object QVenda_ItemCFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object QVenda_ItemuCom: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uCom'
      Origin = 'uCom'
      Size = 6
    end
    object QVenda_ItemqCom: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qCom'
      Origin = 'qCom'
    end
    object QVenda_ItemvUnCom: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vUnCom'
      Origin = 'vUnCom'
    end
    object QVenda_ItemvProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vProd'
      Origin = 'vProd'
    end
    object QVenda_ItemcEANTrib: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cEANTrib'
      Origin = 'cEANTrib'
    end
    object QVenda_ItemuTrib: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uTrib'
      Origin = 'uTrib'
      Size = 6
    end
    object QVenda_ItemqTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qTrib'
      Origin = 'qTrib'
    end
    object QVenda_ItemvUnTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vUnTrib'
      Origin = 'vUnTrib'
    end
    object QVenda_ItemvOutro: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vOutro'
      Origin = 'vOutro'
    end
    object QVenda_ItemvFrete: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vFrete'
      Origin = 'vFrete'
    end
    object QVenda_ItemvSeg: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vSeg'
      Origin = 'vSeg'
    end
    object QVenda_ItemvDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vDesc'
      Origin = 'vDesc'
    end
    object QVenda_IteminfAdProd: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'infAdProd'
      Origin = 'infAdProd'
      BlobType = ftMemo
    end
    object QVenda_ItemICMS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
    end
    object QVenda_ItemICMS_orig: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_orig'
      Origin = 'ICMS_orig'
    end
    object QVenda_ItemICMS_modBC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBC'
      Origin = 'ICMS_modBC'
    end
    object QVenda_ItemICMS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBC'
      Origin = 'ICMS_vBC'
    end
    object QVenda_ItemICMS_pICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
    end
    object QVenda_ItemICMS_vICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMS'
      Origin = 'ICMS_vICMS'
    end
    object QVenda_ItemICMS_CSOSN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
    end
    object QVenda_ItemICMS_pCredSN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pCredSN'
      Origin = 'ICMS_pCredSN'
    end
    object QVenda_ItemICMS_vCredICMSSN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vCredICMSSN'
      Origin = 'ICMS_vCredICMSSN'
    end
    object QVenda_ItemICMS_modBCST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBCST'
      Origin = 'ICMS_modBCST'
    end
    object QVenda_ItemICMS_pMVAST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pMVAST'
      Origin = 'ICMS_pMVAST'
    end
    object QVenda_ItemICMS_vTabelaST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vTabelaST'
      Origin = 'ICMS_vTabelaST'
    end
    object QVenda_ItemICMS_pRedBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBCST'
      Origin = 'ICMS_pRedBCST'
    end
    object QVenda_ItemICMS_vBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCST'
      Origin = 'ICMS_vBCST'
    end
    object QVenda_ItemICMS_pICMSST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMSST'
      Origin = 'ICMS_pICMSST'
    end
    object QVenda_ItemICMS_vICMSST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSST'
      Origin = 'ICMS_vICMSST'
    end
    object QVenda_ItemICMS_pRedBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBC'
      Origin = 'ICMS_pRedBC'
    end
    object QVenda_ItemIPI_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CST'
      Origin = 'IPI_CST'
    end
    object QVenda_ItemIPI_clEnq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_clEnq'
      Origin = 'IPI_clEnq'
      Size = 5
    end
    object QVenda_ItemIPI_CNPJProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CNPJProd'
      Origin = 'IPI_CNPJProd'
    end
    object QVenda_ItemIPI_cSelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cSelo'
      Origin = 'IPI_cSelo'
      Size = 60
    end
    object QVenda_ItemIPI_qSelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qSelo'
      Origin = 'IPI_qSelo'
    end
    object QVenda_ItemIPI_cEnq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cEnq'
      Origin = 'IPI_cEnq'
      Size = 3
    end
    object QVenda_ItemIPI_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vBC'
      Origin = 'IPI_vBC'
    end
    object QVenda_ItemIPI_qUnid: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qUnid'
      Origin = 'IPI_qUnid'
    end
    object QVenda_ItemIPI_vUnid: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vUnid'
      Origin = 'IPI_vUnid'
    end
    object QVenda_ItemIPI_pIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_pIPI'
      Origin = 'IPI_pIPI'
    end
    object QVenda_ItemIPI_vIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vIPI'
      Origin = 'IPI_vIPI'
    end
    object QVenda_ItemII_vBc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vBc'
      Origin = 'II_vBc'
    end
    object QVenda_ItemII_vDespAdu: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vDespAdu'
      Origin = 'II_vDespAdu'
    end
    object QVenda_ItemII_vII: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vII'
      Origin = 'II_vII'
    end
    object QVenda_ItemII_vIOF: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vIOF'
      Origin = 'II_vIOF'
    end
    object QVenda_ItemPIS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
    end
    object QVenda_ItemPIS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vBC'
      Origin = 'PIS_vBC'
    end
    object QVenda_ItemPIS_pPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_pPIS'
      Origin = 'PIS_pPIS'
    end
    object QVenda_ItemPIS_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vPIS'
      Origin = 'PIS_vPIS'
    end
    object QVenda_ItemPIS_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_qBCProd'
      Origin = 'PIS_qBCProd'
    end
    object QVenda_ItemPIS_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vAliqProd'
      Origin = 'PIS_vAliqProd'
    end
    object QVenda_ItemPISST_vBc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vBc'
      Origin = 'PISST_vBc'
    end
    object QVenda_ItemPISST_pPis: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_pPis'
      Origin = 'PISST_pPis'
    end
    object QVenda_ItemPISST_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_qBCProd'
      Origin = 'PISST_qBCProd'
    end
    object QVenda_ItemPISST_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vAliqProd'
      Origin = 'PISST_vAliqProd'
    end
    object QVenda_ItemPISST_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vPIS'
      Origin = 'PISST_vPIS'
    end
    object QVenda_ItemCOFINS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
    end
    object QVenda_ItemCOFINS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vBC'
      Origin = 'COFINS_vBC'
    end
    object QVenda_ItemCOFINS_pCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_pCOFINS'
      Origin = 'COFINS_pCOFINS'
    end
    object QVenda_ItemCOFINS_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vCOFINS'
      Origin = 'COFINS_vCOFINS'
    end
    object QVenda_ItemCOFINS_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_qBCProd'
      Origin = 'COFINS_qBCProd'
    end
    object QVenda_ItemCOFINS_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vAliqProd'
      Origin = 'COFINS_vAliqProd'
    end
    object QVenda_ItemCOFINSST_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vBC'
      Origin = 'COFINSST_vBC'
    end
    object QVenda_ItemCOFINSST_pCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_pCOFINS'
      Origin = 'COFINSST_pCOFINS'
    end
    object QVenda_ItemCOFINSST_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_qBCProd'
      Origin = 'COFINSST_qBCProd'
    end
    object QVenda_ItemCOFINSST_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vAliqProd'
      Origin = 'COFINSST_vAliqProd'
    end
    object QVenda_ItemCOFINSST_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vCOFINS'
      Origin = 'COFINSST_vCOFINS'
    end
    object QVenda_ItemISSQN_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vBC'
      Origin = 'ISSQN_vBC'
    end
    object QVenda_ItemISSQN_vAliq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vAliq'
      Origin = 'ISSQN_vAliq'
    end
    object QVenda_ItemISSQN_vISSQN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vISSQN'
      Origin = 'ISSQN_vISSQN'
    end
    object QVenda_ItemISSQN_cMunFG: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cMunFG'
      Origin = 'ISSQN_cMunFG'
    end
    object QVenda_ItemISSQN_cListServ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cListServ'
      Origin = 'ISSQN_cListServ'
    end
    object QVenda_ItemISSQN_SitTrib: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_SitTrib'
      Origin = 'ISSQN_SitTrib'
    end
    object QVenda_ItemICMS_vBCSTRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCSTRet'
      Origin = 'ICMS_vBCSTRet'
    end
    object QVenda_ItemICMS_vICMSSTRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSSTRet'
      Origin = 'ICMS_vICMSSTRet'
    end
    object QVenda_ItemvTotTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vTotTrib'
      Origin = 'vTotTrib'
    end
    object QVenda_Itemecf_aliq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ecf_aliq'
      Origin = 'ecf_aliq'
      Size = 4
    end
    object QVenda_Itemtrn: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'trn'
      Origin = 'trn'
      FixedChar = True
      Size = 1
    end
    object QVenda_ItemvComissao: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vComissao'
      Origin = 'vComissao'
      currency = True
    end
  end
  object TPAF_R01: TFDQuery
    BeforePost = TPAF_R01BeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from paf_r01')
    Left = 553
    Top = 182
    object TPAF_R01id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
    object TPAF_R01md5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object TPAF_R01hash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
  end
  object TPAF_R02: TFDQuery
    BeforePost = TPAF_R01BeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from paf_r02')
    Left = 551
    Top = 242
    object TPAF_R02id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
      AutoGenerateValue = arDefault
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
    object TPAF_R02issqn: TStringField
      FieldName = 'issqn'
      Origin = 'issqn'
      FixedChar = True
      Size = 1
    end
    object TPAF_R02md5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object TPAF_R02hash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
    object TPAF_R02valor_gt: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_gt'
      Origin = 'valor_gt'
    end
  end
  object TPAF_R03: TFDQuery
    AfterInsert = TPAF_R03AfterInsert
    BeforePost = TPAF_R01BeforePost
    MasterSource = DSPAF_R02
    MasterFields = 'id'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from paf_r03 where r02=:id')
    Left = 551
    Top = 296
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
    object TPAF_R03md5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object TPAF_R03hash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
  end
  object DSPAF_R03: TDataSource
    DataSet = TPAF_R03
    Left = 623
    Top = 296
  end
  object DSPAF_R02: TDataSource
    DataSet = TPAF_R02
    Left = 623
    Top = 242
  end
  object TPAF_R04: TFDQuery
    AfterInsert = TPAF_R04AfterInsert
    BeforePost = TPAF_R01BeforePost
    MasterSource = DSPAF_R02
    MasterFields = 'id'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from paf_r04 where r02=:id')
    Left = 551
    Top = 350
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
    object TPAF_R04md5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object TPAF_R04hash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
  end
  object DSPAF_R04: TDataSource
    DataSet = TPAF_R04
    Left = 623
    Top = 350
  end
  object TPAF_R05: TFDQuery
    AfterInsert = TPAF_R05AfterInsert
    BeforePost = TPAF_R01BeforePost
    MasterSource = DSPAF_R04
    MasterFields = 'id'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from paf_r05 where r04=:id')
    Left = 551
    Top = 401
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
      AutoGenerateValue = arDefault
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
    object TPAF_R05md5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object TPAF_R05hash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
  end
  object DSPAF_R05: TDataSource
    DataSet = TPAF_R05
    Left = 622
    Top = 401
  end
  object TPAF_R06: TFDQuery
    AfterInsert = TPAF_R06AfterInsert
    BeforePost = TPAF_R01BeforePost
    MasterSource = DSPAF_R02
    MasterFields = 'id'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from paf_r06 where r02=:id')
    Left = 551
    Top = 453
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
    object TPAF_R06md5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object TPAF_R06hash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
  end
  object DSPAF_R06: TDataSource
    DataSet = TPAF_R06
    Left = 622
    Top = 453
  end
  object TPAF_R07: TFDQuery
    BeforePost = TPAF_R01BeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from paf_r07')
    Left = 551
    Top = 508
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
    object TPAF_R07md5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object TPAF_R07hash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
  end
  object DSPAF_R07: TDataSource
    DataSet = TPAF_R07
    Left = 622
    Top = 508
  end
  object DSPAF_R01: TDataSource
    DataSet = TPAF_R01
    Left = 623
    Top = 186
  end
  object TPAF_E2: TFDQuery
    AfterInsert = TPAF_E2AfterInsert
    BeforePost = TPAF_R01BeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from paf_e2 order by id desc limit 1')
    Left = 684
    Top = 334
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
      AutoGenerateValue = arDefault
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
    object TPAF_E2md5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object TPAF_E2hash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
  end
  object TPAF_E3: TFDQuery
    BeforePost = TPAF_R01BeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from paf_e3 order by id desc limit 1')
    Left = 684
    Top = 276
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
    object TPAF_E3md5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object TPAF_E3hash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
  end
  object TPAF_A2: TFDQuery
    BeforePost = TPAF_R01BeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from paf_a2')
    Left = 684
    Top = 386
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
      AutoGenerateValue = arDefault
      FieldName = 'r02'
      Origin = 'r02'
    end
    object TPAF_A2fpag: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fpag'
      Origin = 'fpag'
      Size = 30
    end
    object TPAF_A2md5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object TPAF_A2hash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
  end
  object QvwEstoque: TFDQuery
    Connection = DMConn.DB
    SQL.Strings = (
      '')
    Left = 68
    Top = 176
    object QvwEstoqueid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object QvwEstoquecod_gtin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_gtin'
      Origin = 'cod_gtin'
    end
    object QvwEstoquecod_interno: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_interno'
      Origin = 'cod_interno'
    end
    object QvwEstoquecod_aux: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_aux'
      Origin = 'cod_aux'
      Size = 30
    end
    object QvwEstoquenome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QvwEstoquevrcotacao: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrcotacao'
      Origin = 'vrcotacao'
      currency = True
    end
    object QvwEstoquevrcusto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrcusto'
      Origin = 'vrcusto'
      currency = True
    end
    object QvwEstoquevrcusto_real: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrcusto_real'
      Origin = 'vrcusto_real'
      currency = True
    end
    object QvwEstoquevrvenda_vista: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrvenda_vista'
      Origin = 'vrvenda_vista'
      currency = True
    end
    object QvwEstoquepcvenda_pz: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pcvenda_pz'
      Origin = 'pcvenda_pz'
    end
    object QvwEstoquevrvenda_prz: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrvenda_prz'
      Origin = 'vrvenda_prz'
      currency = True
    end
    object QvwEstoquevrvenda_old: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrvenda_old'
      Origin = 'vrvenda_old'
    end
    object QvwEstoquemg_lucro: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'mg_lucro'
      Origin = 'mg_lucro'
    end
    object QvwEstoqueqt_min: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qt_min'
      Origin = 'qt_min'
    end
    object QvwEstoquequant: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'quant'
      Origin = 'quant'
    end
    object QvwEstoquequantx: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'quantx'
      Origin = 'quantx'
    end
    object QvwEstoqueqt_caixa: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qt_caixa'
      Origin = 'qt_caixa'
    end
    object QvwEstoqueunidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'unidade'
      Origin = 'unidade'
    end
    object QvwEstoquesigla_unid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sigla_unid'
      Origin = 'sigla_unid'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QvwEstoqueorigem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'origem'
      Origin = 'origem'
    end
    object QvwEstoquecst: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst'
      Origin = 'cst'
    end
    object QvwEstoquecod_cst: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_cst'
      Origin = 'cod_cst'
    end
    object QvwEstoqueacbr_cst: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'acbr_cst'
      Origin = 'acbr_cst'
    end
    object QvwEstoquealiq_icms: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_icms'
      Origin = 'aliq_icms'
    end
    object QvwEstoquealiq_ecf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_ecf'
      Origin = 'aliq_ecf'
      Size = 4
    end
    object QvwEstoquebalanca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'balanca'
      Origin = 'balanca'
      FixedChar = True
      Size = 1
    end
    object QvwEstoquegrade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'grade'
      Origin = 'grade'
    end
    object QvwEstoquemedicam_apresentacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_apresentacao'
      Origin = 'medicam_apresentacao'
      Size = 40
    end
    object QvwEstoquemedicam_principio_atv: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_principio_atv'
      Origin = 'medicam_principio_atv'
      Size = 100
    end
    object QvwEstoquemedicam_nomelab: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_nomelab'
      Origin = 'medicam_nomelab'
      Size = 100
    end
    object QvwEstoquemedicam_portaria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_portaria'
      Origin = 'medicam_portaria'
      Size = 5
    end
    object QvwEstoquemedicam_registroms: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_registroms'
      Origin = 'medicam_registroms'
    end
    object QvwEstoquemedicam_pmc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_pmc'
      Origin = 'medicam_pmc'
    end
    object QvwEstoquemedic_qtcaixa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'medic_qtcaixa'
      Origin = 'medic_qtcaixa'
    end
    object QvwEstoquemedic_fracao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'medic_fracao'
      Origin = 'medic_fracao'
    end
    object QvwEstoquemedic_atualizar_web: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medic_atualizar_web'
      Origin = 'medic_atualizar_web'
      FixedChar = True
      Size = 1
    end
    object QvwEstoquesessao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'sessao'
      Origin = 'sessao'
    end
    object QvwEstoquesuspenso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'suspenso'
      Origin = 'suspenso'
      FixedChar = True
      Size = 1
    end
    object QvwEstoquereceita: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'receita'
      Origin = 'receita'
      BlobType = ftMemo
    end
    object QvwEstoquenutricional: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'nutricional'
      Origin = 'nutricional'
      BlobType = ftMemo
    end
    object QvwEstoquepromocao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'promocao'
      Origin = 'promocao'
      FixedChar = True
      Size = 1
    end
    object QvwEstoquecalculo_por_arredondamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'calculo_por_arredondamento'
      Origin = 'calculo_por_arredondamento'
      FixedChar = True
      Size = 3
    end
    object QvwEstoquencm: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ncm'
      Origin = 'ncm'
    end
    object QvwEstoqueproducao_propria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'producao_propria'
      Origin = 'producao_propria'
      FixedChar = True
      Size = 1
    end
    object QvwEstoquedestinacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'destinacao'
      Origin = 'destinacao'
      Size = 30
    end
    object QvwEstoqueincide_pis_cofins: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'incide_pis_cofins'
      Origin = 'incide_pis_cofins'
      FixedChar = True
      Size = 1
    end
    object QvwEstoqueinfo_complem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'info_complem'
      Origin = 'info_complem'
    end
    object QvwEstoquecst_ipi_ent: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_ipi_ent'
      Origin = 'cst_ipi_ent'
    end
    object QvwEstoquecst_ipi_sai: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_ipi_sai'
      Origin = 'cst_ipi_sai'
    end
    object QvwEstoqueipi_pc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ipi_pc'
      Origin = 'ipi_pc'
    end
    object QvwEstoquecst_pis_sai: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_pis_sai'
      Origin = 'cst_pis_sai'
    end
    object QvwEstoquecst_pis_ent: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_pis_ent'
      Origin = 'cst_pis_ent'
    end
    object QvwEstoquepis_pc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pis_pc'
      Origin = 'pis_pc'
    end
    object QvwEstoquecst_cofins_ent: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_cofins_ent'
      Origin = 'cst_cofins_ent'
    end
    object QvwEstoquecst_cofins_sai: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_cofins_sai'
      Origin = 'cst_cofins_sai'
    end
    object QvwEstoquecofins_pc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'cofins_pc'
      Origin = 'cofins_pc'
    end
    object QvwEstoquecod_receita: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_receita'
      Origin = 'cod_receita'
    end
    object QvwEstoquedt_ult_alte: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_ult_alte'
      Origin = 'dt_ult_alte'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QvwEstoquemd5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object QvwEstoqueatualizado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'atualizado'
      Origin = 'atualizado'
      Size = 50
    end
    object QvwEstoquedt_atualiz: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'dt_atualiz'
      Origin = 'dt_atualiz'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object QvwEstoquemedicam_vrms: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'medicam_vrms'
      Origin = 'medicam_vrms'
    end
    object QvwEstoquesped_tabela: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'sped_tabela'
      Origin = 'sped_tabela'
    end
    object QvwEstoqueipi_ent_destaca_valor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ipi_ent_destaca_valor'
      Origin = 'ipi_ent_destaca_valor'
      FixedChar = True
      Size = 1
    end
    object QvwEstoquepis_ent_destaca_valor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pis_ent_destaca_valor'
      Origin = 'pis_ent_destaca_valor'
      FixedChar = True
      Size = 1
    end
    object QvwEstoquecofins_ent_destaca_valor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cofins_ent_destaca_valor'
      Origin = 'cofins_ent_destaca_valor'
      FixedChar = True
      Size = 1
    end
    object QvwEstoqueipi_sai_destaca_valor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ipi_sai_destaca_valor'
      Origin = 'ipi_sai_destaca_valor'
      FixedChar = True
      Size = 1
    end
    object QvwEstoquepis_sai_destaca_valor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pis_sai_destaca_valor'
      Origin = 'pis_sai_destaca_valor'
      FixedChar = True
      Size = 1
    end
    object QvwEstoquecofins_sai_destaca_valor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cofins_sai_destaca_valor'
      Origin = 'cofins_sai_destaca_valor'
      FixedChar = True
      Size = 1
    end
    object QvwEstoquefracionavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fracionavel'
      Origin = 'fracionavel'
      FixedChar = True
      Size = 1
    end
    object QvwEstoqueicms_st_mod_bc: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'icms_st_mod_bc'
      Origin = 'icms_st_mod_bc'
    end
    object QvwEstoqueicms_st_ptabela: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms_st_ptabela'
      Origin = 'icms_st_ptabela'
      DisplayFormat = '0.00'
    end
    object QvwEstoqueicms_st_vtabela: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms_st_vtabela'
      Origin = 'icms_st_vtabela'
      DisplayFormat = '0.00'
    end
    object QvwEstoqueicms_st_pmva: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms_st_pmva'
      Origin = 'icms_st_pmva'
      DisplayFormat = '0.00'
    end
    object QvwEstoqueicms_st_picms: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms_st_picms'
      Origin = 'icms_st_picms'
      DisplayFormat = '0.00'
    end
    object QvwEstoqueicms_st_p_red_bc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'icms_st_p_red_bc'
      Origin = 'icms_st_p_red_bc'
      DisplayFormat = '0.00'
    end
    object QvwEstoqueicms_mod_bc: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'icms_mod_bc'
      Origin = 'icms_mod_bc'
    end
  end
  object QOper_CRT: TFDQuery
    BeforePost = QOper_CRTBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from oper_crt order by nome')
    Left = 828
    Top = 12
    object QOper_CRTid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QOper_CRTcnpj: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      Origin = 'cnpj'
    end
    object QOper_CRTie: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'INSCRI'#199#195'O ESTFDUAL'
      FieldName = 'ie'
      Origin = 'ie'
    end
    object QOper_CRTnome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME FANTASIA'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QOper_CRTrazaosocial: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RAZ'#195'O SOCIAL'
      FieldName = 'razaosocial'
      Origin = 'razaosocial'
      Size = 100
    end
    object QOper_CRTtel1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'FONE'
      FieldName = 'tel1'
      Origin = 'tel1'
      Size = 15
    end
    object QOper_CRTlogradouro: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'LOGRADOURO'
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Size = 100
    end
    object QOper_CRTnmro: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#186
      FieldName = 'nmro'
      Origin = 'nmro'
    end
    object QOper_CRTcomplem: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'COMPLEM.'
      FieldName = 'complem'
      Origin = 'complem'
    end
    object QOper_CRTbairro: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'BAIRRO'
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object QOper_CRTuf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object QOper_CRTcodmun: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CIDADE'
      FieldName = 'codmun'
      Origin = 'codmun'
    end
    object QOper_CRTcidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
  end
  object QNatOper: TFDQuery
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from natureza_oper')
    Left = 1120
    Top = 460
    object QNatOperid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNatOpernome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 255
    end
    object QNatOpertipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      FixedChar = True
      Size = 1
    end
  end
  object DSNatoper: TDataSource
    DataSet = QNatOper
    Left = 1180
    Top = 462
  end
  object QNF: TFDQuery
    AfterOpen = QNFAfterOpen
    AfterClose = QNFAfterClose
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from nf order by id desc limit 1;')
    Left = 1076
    Top = 12
    object QNFid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '000'
    end
    object QNFIde_cNF: TIntegerField
      FieldName = 'Ide_cNF'
      Origin = 'Ide_cNF'
    end
    object QNFIde_natOp: TStringField
      FieldName = 'Ide_natOp'
      Origin = 'Ide_natOp'
      Size = 60
    end
    object QNFIde_indPag: TIntegerField
      FieldName = 'Ide_indPag'
      Origin = 'Ide_indPag'
    end
    object QNFIde_modelo: TIntegerField
      FieldName = 'Ide_modelo'
      Origin = 'Ide_modelo'
    end
    object QNFIde_serie: TIntegerField
      FieldName = 'Ide_serie'
      Origin = 'Ide_serie'
      DisplayFormat = '000'
    end
    object QNFIde_nNF: TIntegerField
      FieldName = 'Ide_nNF'
      Origin = 'Ide_nNF'
      DisplayFormat = '000,000'
    end
    object QNFIde_dEmi: TDateField
      FieldName = 'Ide_dEmi'
      Origin = 'Ide_dEmi'
    end
    object QNFIde_tpNF: TIntegerField
      FieldName = 'Ide_tpNF'
      Origin = 'Ide_tpNF'
    end
    object QNFIde_tpEmis: TIntegerField
      FieldName = 'Ide_tpEmis'
      Origin = 'Ide_tpEmis'
    end
    object QNFIde_dSaiEnt: TDateField
      FieldName = 'Ide_dSaiEnt'
      Origin = 'Ide_dSaiEnt'
    end
    object QNFIde_tpAmb: TIntegerField
      FieldName = 'Ide_tpAmb'
      Origin = 'Ide_tpAmb'
    end
    object QNFIde_verProc: TStringField
      FieldName = 'Ide_verProc'
      Origin = 'Ide_verProc'
    end
    object QNFIde_cUF: TIntegerField
      FieldName = 'Ide_cUF'
      Origin = 'Ide_cUF'
    end
    object QNFIde_cMunFG: TStringField
      FieldName = 'Ide_cMunFG'
      Origin = 'Ide_cMunFG'
      Size = 60
    end
    object QNFIde_finNFe: TIntegerField
      FieldName = 'Ide_finNFe'
      Origin = 'Ide_finNFe'
    end
    object QNFIde_dhCont: TDateField
      FieldName = 'Ide_dhCont'
      Origin = 'Ide_dhCont'
    end
    object QNFIde_xJust: TStringField
      FieldName = 'Ide_xJust'
      Origin = 'Ide_xJust'
      Size = 250
    end
    object QNFEmit_CNPJCPF: TStringField
      FieldName = 'Emit_CNPJCPF'
      Origin = 'Emit_CNPJCPF'
    end
    object QNFEmit_IE: TStringField
      FieldName = 'Emit_IE'
      Origin = 'Emit_IE'
    end
    object QNFEmit_xNome: TStringField
      FieldName = 'Emit_xNome'
      Origin = 'Emit_xNome'
      Size = 60
    end
    object QNFEmit_xFant: TStringField
      FieldName = 'Emit_xFant'
      Origin = 'Emit_xFant'
      Size = 60
    end
    object QNFEmit_EnderEmit_fone: TStringField
      FieldName = 'Emit_EnderEmit_fone'
      Origin = 'Emit_EnderEmit_fone'
      Size = 14
    end
    object QNFmit_EnderEmit_CEP: TStringField
      FieldName = 'mit_EnderEmit_CEP'
      Origin = 'mit_EnderEmit_CEP'
      Size = 8
    end
    object QNFEmit_EnderEmit_xLgr: TStringField
      FieldName = 'Emit_EnderEmit_xLgr'
      Origin = 'Emit_EnderEmit_xLgr'
      Size = 60
    end
    object QNFEmit_EnderEmit_nro: TStringField
      FieldName = 'Emit_EnderEmit_nro'
      Origin = 'Emit_EnderEmit_nro'
      Size = 60
    end
    object QNFEmit_EnderEmit_xCpl: TStringField
      FieldName = 'Emit_EnderEmit_xCpl'
      Origin = 'Emit_EnderEmit_xCpl'
      Size = 60
    end
    object QNFEmit_EnderEmit_xBairro: TStringField
      FieldName = 'Emit_EnderEmit_xBairro'
      Origin = 'Emit_EnderEmit_xBairro'
      Size = 60
    end
    object QNFEmit_EnderEmit_cMun: TIntegerField
      FieldName = 'Emit_EnderEmit_cMun'
      Origin = 'Emit_EnderEmit_cMun'
    end
    object QNFEmit_EnderEmit_xMun: TStringField
      FieldName = 'Emit_EnderEmit_xMun'
      Origin = 'Emit_EnderEmit_xMun'
      Size = 60
    end
    object QNFEmit_EnderEmit_UF: TStringField
      FieldName = 'Emit_EnderEmit_UF'
      Origin = 'Emit_EnderEmit_UF'
      Size = 2
    end
    object QNFEmit_enderEmit_cPais: TIntegerField
      FieldName = 'Emit_enderEmit_cPais'
      Origin = 'Emit_enderEmit_cPais'
    end
    object QNFEmit_enderEmit_xPais: TStringField
      FieldName = 'Emit_enderEmit_xPais'
      Origin = 'Emit_enderEmit_xPais'
      Size = 60
    end
    object QNFEmit_IEST: TStringField
      FieldName = 'Emit_IEST'
      Origin = 'Emit_IEST'
      Size = 14
    end
    object QNFEmit_IM: TStringField
      FieldName = 'Emit_IM'
      Origin = 'Emit_IM'
      Size = 15
    end
    object QNFEmit_CNAE: TStringField
      FieldName = 'Emit_CNAE'
      Origin = 'Emit_CNAE'
      Size = 7
    end
    object QNFEmit_CRT: TIntegerField
      FieldName = 'Emit_CRT'
      Origin = 'Emit_CRT'
    end
    object QNFDest_CNPJCPF: TStringField
      FieldName = 'Dest_CNPJCPF'
      Origin = 'Dest_CNPJCPF'
    end
    object QNFDest_IE: TStringField
      FieldName = 'Dest_IE'
      Origin = 'Dest_IE'
    end
    object QNFDest_xNome: TStringField
      FieldName = 'Dest_xNome'
      Origin = 'Dest_xNome'
      Size = 60
    end
    object QNFDest_EnderDest_Fone: TStringField
      FieldName = 'Dest_EnderDest_Fone'
      Origin = 'Dest_EnderDest_Fone'
    end
    object QNFDest_EnderDest_CEP: TStringField
      FieldName = 'Dest_EnderDest_CEP'
      Origin = 'Dest_EnderDest_CEP'
      Size = 10
    end
    object QNFDest_EnderDest_xLgr: TStringField
      FieldName = 'Dest_EnderDest_xLgr'
      Origin = 'Dest_EnderDest_xLgr'
      Size = 60
    end
    object QNFDest_EnderDest_nro: TStringField
      FieldName = 'Dest_EnderDest_nro'
      Origin = 'Dest_EnderDest_nro'
      Size = 60
    end
    object QNFDest_EnderDest_xCpl: TStringField
      FieldName = 'Dest_EnderDest_xCpl'
      Origin = 'Dest_EnderDest_xCpl'
      Size = 60
    end
    object QNFDest_EnderDest_xBairro: TStringField
      FieldName = 'Dest_EnderDest_xBairro'
      Origin = 'Dest_EnderDest_xBairro'
      Size = 60
    end
    object QNFDest_EnderDest_cMun: TIntegerField
      FieldName = 'Dest_EnderDest_cMun'
      Origin = 'Dest_EnderDest_cMun'
    end
    object QNFDest_EnderDest_xMun: TStringField
      FieldName = 'Dest_EnderDest_xMun'
      Origin = 'Dest_EnderDest_xMun'
      Size = 60
    end
    object QNFDest_EnderDest_UF: TStringField
      FieldName = 'Dest_EnderDest_UF'
      Origin = 'Dest_EnderDest_UF'
      Size = 2
    end
    object QNFDest_ISUF: TStringField
      FieldName = 'Dest_ISUF'
      Origin = 'Dest_ISUF'
    end
    object QNFDest_EnderDest_cPais: TIntegerField
      FieldName = 'Dest_EnderDest_cPais'
      Origin = 'Dest_EnderDest_cPais'
    end
    object QNFDest_EnderDest_xPais: TStringField
      FieldName = 'Dest_EnderDest_xPais'
      Origin = 'Dest_EnderDest_xPais'
      Size = 60
    end
    object QNFRetirada_CNPJCPF: TStringField
      FieldName = 'Retirada_CNPJCPF'
      Origin = 'Retirada_CNPJCPF'
    end
    object QNFRetirada_xLgr: TStringField
      FieldName = 'Retirada_xLgr'
      Origin = 'Retirada_xLgr'
      Size = 60
    end
    object QNFRetirada_nro: TStringField
      FieldName = 'Retirada_nro'
      Origin = 'Retirada_nro'
      Size = 60
    end
    object QNFRetirada_xCpl: TStringField
      FieldName = 'Retirada_xCpl'
      Origin = 'Retirada_xCpl'
      Size = 60
    end
    object QNFRetirada_xBairro: TStringField
      FieldName = 'Retirada_xBairro'
      Origin = 'Retirada_xBairro'
      Size = 60
    end
    object QNFRetirada_cMun: TIntegerField
      FieldName = 'Retirada_cMun'
      Origin = 'Retirada_cMun'
    end
    object QNFRetirada_xMun: TStringField
      FieldName = 'Retirada_xMun'
      Origin = 'Retirada_xMun'
      Size = 60
    end
    object QNFRetirada_UF: TStringField
      FieldName = 'Retirada_UF'
      Origin = 'Retirada_UF'
      Size = 2
    end
    object QNFEntrega_CNPJCPF: TStringField
      FieldName = 'Entrega_CNPJCPF'
      Origin = 'Entrega_CNPJCPF'
    end
    object QNFEntrega_xLgr: TStringField
      FieldName = 'Entrega_xLgr'
      Origin = 'Entrega_xLgr'
      Size = 60
    end
    object QNFEntrega_nro: TStringField
      FieldName = 'Entrega_nro'
      Origin = 'Entrega_nro'
      Size = 60
    end
    object QNFEntrega_xCpl: TStringField
      FieldName = 'Entrega_xCpl'
      Origin = 'Entrega_xCpl'
      Size = 60
    end
    object QNFEntrega_xBairro: TStringField
      FieldName = 'Entrega_xBairro'
      Origin = 'Entrega_xBairro'
      Size = 60
    end
    object QNFEntrega_cMun: TIntegerField
      FieldName = 'Entrega_cMun'
      Origin = 'Entrega_cMun'
    end
    object QNFEntrega_xMun: TStringField
      FieldName = 'Entrega_xMun'
      Origin = 'Entrega_xMun'
      Size = 60
    end
    object QNFEntrega_UF: TStringField
      FieldName = 'Entrega_UF'
      Origin = 'Entrega_UF'
      Size = 2
    end
    object QNFmodFrete: TIntegerField
      FieldName = 'modFrete'
      Origin = 'modFrete'
    end
    object QNFTransporta_CNPJCPF: TStringField
      FieldName = 'Transporta_CNPJCPF'
      Origin = 'Transporta_CNPJCPF'
    end
    object QNFTransporta_xNome: TStringField
      FieldName = 'Transporta_xNome'
      Origin = 'Transporta_xNome'
      Size = 60
    end
    object QNFTransporta_IE: TStringField
      FieldName = 'Transporta_IE'
      Origin = 'Transporta_IE'
    end
    object QNFTransporta_xEnder: TStringField
      FieldName = 'Transporta_xEnder'
      Origin = 'Transporta_xEnder'
      Size = 60
    end
    object QNFTransporta_xMun: TStringField
      FieldName = 'Transporta_xMun'
      Origin = 'Transporta_xMun'
      Size = 60
    end
    object QNFTransporta_UF: TStringField
      FieldName = 'Transporta_UF'
      Origin = 'Transporta_UF'
      Size = 2
    end
    object QNFretvServ: TFloatField
      FieldName = 'retvServ'
      Origin = 'retvServ'
      DisplayFormat = '0.00'
    end
    object QNFretvBCRet: TFloatField
      FieldName = 'retvBCRet'
      Origin = 'retvBCRet'
      DisplayFormat = '0.00'
    end
    object QNFretpICMSRet: TFloatField
      FieldName = 'retpICMSRet'
      Origin = 'retpICMSRet'
      DisplayFormat = '0.00'
    end
    object QNFretvICMSRet: TFloatField
      FieldName = 'retvICMSRet'
      Origin = 'retvICMSRet'
      DisplayFormat = '0.00'
    end
    object QNFretCFOP: TStringField
      FieldName = 'retCFOP'
      Origin = 'retCFOP'
      Size = 4
    end
    object QNFretcMunFG: TIntegerField
      FieldName = 'retcMunFG'
      Origin = 'retcMunFG'
    end
    object QNFveicplaca: TStringField
      FieldName = 'veicplaca'
      Origin = 'veicplaca'
      Size = 10
    end
    object QNFveicUF: TStringField
      FieldName = 'veicUF'
      Origin = 'veicUF'
      Size = 2
    end
    object QNFveicRNTC: TStringField
      FieldName = 'veicRNTC'
      Origin = 'veicRNTC'
    end
    object QNFnFat: TStringField
      FieldName = 'nFat'
      Origin = 'nFat'
      Size = 60
    end
    object QNFvOrig: TFloatField
      FieldName = 'vOrig'
      Origin = 'vOrig'
      DisplayFormat = '0.00'
    end
    object QNFvDesc: TFloatField
      FieldName = 'vDesc'
      Origin = 'vDesc'
      DisplayFormat = '0.00'
    end
    object QNFvLiq: TFloatField
      FieldName = 'vLiq'
      Origin = 'vLiq'
      DisplayFormat = '0.00'
    end
    object QNFinfAdFisco: TMemoField
      FieldName = 'infAdFisco'
      Origin = 'infAdFisco'
      BlobType = ftMemo
    end
    object QNFinfCpl: TMemoField
      FieldName = 'infCpl'
      Origin = 'infCpl'
      BlobType = ftMemo
    end
    object QNFICMSTot_vBC: TFloatField
      FieldName = 'ICMSTot_vBC'
      Origin = 'ICMSTot_vBC'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vICMS: TFloatField
      FieldName = 'ICMSTot_vICMS'
      Origin = 'ICMSTot_vICMS'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vBCST: TFloatField
      FieldName = 'ICMSTot_vBCST'
      Origin = 'ICMSTot_vBCST'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vST: TFloatField
      FieldName = 'ICMSTot_vST'
      Origin = 'ICMSTot_vST'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vProd: TFloatField
      FieldName = 'ICMSTot_vProd'
      Origin = 'ICMSTot_vProd'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vFrete: TFloatField
      FieldName = 'ICMSTot_vFrete'
      Origin = 'ICMSTot_vFrete'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vSeg: TFloatField
      FieldName = 'ICMSTot_vSeg'
      Origin = 'ICMSTot_vSeg'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vDesc: TFloatField
      FieldName = 'ICMSTot_vDesc'
      Origin = 'ICMSTot_vDesc'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vII: TFloatField
      FieldName = 'ICMSTot_vII'
      Origin = 'ICMSTot_vII'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vIPI: TFloatField
      FieldName = 'ICMSTot_vIPI'
      Origin = 'ICMSTot_vIPI'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vPIS: TFloatField
      FieldName = 'ICMSTot_vPIS'
      Origin = 'ICMSTot_vPIS'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vCOFINS: TFloatField
      FieldName = 'ICMSTot_vCOFINS'
      Origin = 'ICMSTot_vCOFINS'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vOutro: TFloatField
      FieldName = 'ICMSTot_vOutro'
      Origin = 'ICMSTot_vOutro'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vNF: TFloatField
      FieldName = 'ICMSTot_vNF'
      Origin = 'ICMSTot_vNF'
      DisplayFormat = '0.00'
    end
    object QNFISSQNtot_vServ: TFloatField
      FieldName = 'ISSQNtot_vServ'
      Origin = 'ISSQNtot_vServ'
      DisplayFormat = '0.00'
    end
    object QNFISSQNTot_vBC: TFloatField
      FieldName = 'ISSQNTot_vBC'
      Origin = 'ISSQNTot_vBC'
      DisplayFormat = '0.00'
    end
    object QNFISSQNTot_vISS: TFloatField
      FieldName = 'ISSQNTot_vISS'
      Origin = 'ISSQNTot_vISS'
      DisplayFormat = '0.00'
    end
    object QNFISSQNTot_vPIS: TFloatField
      FieldName = 'ISSQNTot_vPIS'
      Origin = 'ISSQNTot_vPIS'
      DisplayFormat = '0.00'
    end
    object QNFISSQNTot_vCOFINS: TFloatField
      FieldName = 'ISSQNTot_vCOFINS'
      Origin = 'ISSQNTot_vCOFINS'
      DisplayFormat = '0.00'
    end
    object QNFretTrib_vRetPIS: TFloatField
      FieldName = 'retTrib_vRetPIS'
      Origin = 'retTrib_vRetPIS'
      DisplayFormat = '0.00'
    end
    object QNFretTrib_vRetCOFINS: TFloatField
      FieldName = 'retTrib_vRetCOFINS'
      Origin = 'retTrib_vRetCOFINS'
      DisplayFormat = '0.00'
    end
    object QNFretTrib_vRetCSLL: TFloatField
      FieldName = 'retTrib_vRetCSLL'
      Origin = 'retTrib_vRetCSLL'
      DisplayFormat = '0.00'
    end
    object QNFretTrib_vBCIRRF: TFloatField
      FieldName = 'retTrib_vBCIRRF'
      Origin = 'retTrib_vBCIRRF'
      DisplayFormat = '0.00'
    end
    object QNFretTrib_vIRRF: TFloatField
      FieldName = 'retTrib_vIRRF'
      Origin = 'retTrib_vIRRF'
      DisplayFormat = '0.00'
    end
    object QNFretTrib_vBCRetPrev: TFloatField
      FieldName = 'retTrib_vBCRetPrev'
      Origin = 'retTrib_vBCRetPrev'
      DisplayFormat = '0.00'
    end
    object QNFretTrib_vRetPrev: TFloatField
      FieldName = 'retTrib_vRetPrev'
      Origin = 'retTrib_vRetPrev'
      DisplayFormat = '0.00'
    end
    object QNFmd5: TStringField
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object QNFhash: TStringField
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
    object QNFstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
      OnGetText = QNFstatusGetText
    end
    object QNFIde_hSaiEnt: TTimeField
      FieldName = 'Ide_hSaiEnt'
      Origin = 'Ide_hSaiEnt'
    end
    object QNFvTotTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vTotTrib'
      Origin = 'vTotTrib'
    end
    object QNFIde_Cons_Final: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_Cons_Final'
      Origin = 'Ide_Cons_Final'
    end
    object QNFIde_Presencial: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_Presencial'
      Origin = 'Ide_Presencial'
    end
  end
  object QNF_Item: TFDQuery
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    Connection = DMConn.DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_item where nf=:id')
    Left = 1076
    Top = 64
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 13
      end>
    object QNF_Itemid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Itemnf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_ItemnItem: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ITEM'
      FieldName = 'nItem'
      Origin = 'nItem'
      DisplayFormat = '000'
    end
    object QNF_ItemcProd: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'C'#211'D.'
      FieldName = 'cProd'
      Origin = 'cProd'
      Size = 60
    end
    object QNF_ItemcEAN: TStringField
      DisplayLabel = 'C'#211'D GTIN'
      FieldName = 'cEAN'
      Origin = 'cEAN'
    end
    object QNF_ItemxProd: TStringField
      DisplayLabel = 'DESCRI'#199#195'O DO PRODUTO/SERVI'#199'O'
      FieldName = 'xProd'
      Origin = 'xProd'
      Size = 120
    end
    object QNF_ItemNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object QNF_ItemEXTIPI: TStringField
      FieldName = 'EXTIPI'
      Origin = 'EXTIPI'
      Size = 3
    end
    object QNF_ItemCFOP: TStringField
      Alignment = taCenter
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object QNF_ItemuCom: TStringField
      Alignment = taCenter
      DisplayLabel = 'UN'
      FieldName = 'uCom'
      Origin = 'uCom'
      Size = 6
    end
    object QNF_ItemqCom: TFloatField
      DisplayLabel = 'QTD'
      FieldName = 'qCom'
      Origin = 'qCom'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemvUnCom: TFloatField
      DisplayLabel = 'VR UNIT.'
      FieldName = 'vUnCom'
      Origin = 'vUnCom'
      currency = True
    end
    object QNF_ItemvProd: TFloatField
      DisplayLabel = 'TOTAL'
      FieldName = 'vProd'
      Origin = 'vProd'
      currency = True
    end
    object QNF_ItemcEANTrib: TStringField
      FieldName = 'cEANTrib'
      Origin = 'cEANTrib'
    end
    object QNF_ItemuTrib: TStringField
      FieldName = 'uTrib'
      Origin = 'uTrib'
      Size = 6
    end
    object QNF_ItemqTrib: TFloatField
      FieldName = 'qTrib'
      Origin = 'qTrib'
    end
    object QNF_ItemvUnTrib: TFloatField
      FieldName = 'vUnTrib'
      Origin = 'vUnTrib'
      currency = True
    end
    object QNF_ItemvOutro: TFloatField
      DisplayLabel = 'O.D.A'
      FieldName = 'vOutro'
      Origin = 'vOutro'
      currency = True
    end
    object QNF_ItemvFrete: TFloatField
      DisplayLabel = 'FRETE'
      FieldName = 'vFrete'
      Origin = 'vFrete'
      currency = True
    end
    object QNF_ItemvSeg: TFloatField
      DisplayLabel = 'SEGURO'
      FieldName = 'vSeg'
      Origin = 'vSeg'
      currency = True
    end
    object QNF_ItemvDesc: TFloatField
      DisplayLabel = 'DESC.'
      FieldName = 'vDesc'
      Origin = 'vDesc'
      currency = True
    end
    object QNF_IteminfAdProd: TMemoField
      FieldName = 'infAdProd'
      Origin = 'infAdProd'
      BlobType = ftMemo
    end
    object QNF_ItemICMS_CST: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'CST'
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
      OnGetText = QNF_ItemICMS_CSTGetText
      DisplayFormat = '00'
    end
    object QNF_ItemICMS_orig: TIntegerField
      Alignment = taCenter
      FieldName = 'ICMS_orig'
      Origin = 'ICMS_orig'
    end
    object QNF_ItemICMS_modBC: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'MOD. BC'
      FieldName = 'ICMS_modBC'
      Origin = 'ICMS_modBC'
    end
    object QNF_ItemICMS_vBC: TFloatField
      DisplayLabel = 'ICMS BC'
      FieldName = 'ICMS_vBC'
      Origin = 'ICMS_vBC'
      currency = True
    end
    object QNF_ItemICMS_pICMS: TFloatField
      DisplayLabel = 'ICMS (%)'
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vICMS: TFloatField
      DisplayLabel = 'ICMS ($)'
      FieldName = 'ICMS_vICMS'
      Origin = 'ICMS_vICMS'
      currency = True
    end
    object QNF_ItemICMS_CSOSN: TIntegerField
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
      OnGetText = QNF_ItemICMS_CSOSNGetText
    end
    object QNF_ItemICMS_pCredSN: TFloatField
      FieldName = 'ICMS_pCredSN'
      Origin = 'ICMS_pCredSN'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vCredICMSSN: TFloatField
      FieldName = 'ICMS_vCredICMSSN'
      Origin = 'ICMS_vCredICMSSN'
      currency = True
    end
    object QNF_ItemICMS_modBCST: TIntegerField
      FieldName = 'ICMS_modBCST'
      Origin = 'ICMS_modBCST'
    end
    object QNF_ItemICMS_pMVAST: TFloatField
      FieldName = 'ICMS_pMVAST'
      Origin = 'ICMS_pMVAST'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vTabelaST: TFloatField
      FieldName = 'ICMS_vTabelaST'
      Origin = 'ICMS_vTabelaST'
      currency = True
    end
    object QNF_ItemICMS_pRedBCST: TFloatField
      FieldName = 'ICMS_pRedBCST'
      Origin = 'ICMS_pRedBCST'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vBCST: TFloatField
      FieldName = 'ICMS_vBCST'
      Origin = 'ICMS_vBCST'
      currency = True
    end
    object QNF_ItemICMS_pICMSST: TFloatField
      FieldName = 'ICMS_pICMSST'
      Origin = 'ICMS_pICMSST'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vICMSST: TFloatField
      FieldName = 'ICMS_vICMSST'
      Origin = 'ICMS_vICMSST'
      currency = True
    end
    object QNF_ItemICMS_pRedBC: TFloatField
      FieldName = 'ICMS_pRedBC'
      Origin = 'ICMS_pRedBC'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemIPI_CST: TIntegerField
      FieldName = 'IPI_CST'
      Origin = 'IPI_CST'
    end
    object QNF_ItemIPI_clEnq: TStringField
      FieldName = 'IPI_clEnq'
      Origin = 'IPI_clEnq'
      Size = 5
    end
    object QNF_ItemIPI_CNPJProd: TStringField
      FieldName = 'IPI_CNPJProd'
      Origin = 'IPI_CNPJProd'
    end
    object QNF_ItemIPI_cSelo: TStringField
      FieldName = 'IPI_cSelo'
      Origin = 'IPI_cSelo'
      Size = 60
    end
    object QNF_ItemIPI_qSelo: TIntegerField
      FieldName = 'IPI_qSelo'
      Origin = 'IPI_qSelo'
    end
    object QNF_ItemIPI_cEnq: TStringField
      FieldName = 'IPI_cEnq'
      Origin = 'IPI_cEnq'
      Size = 3
    end
    object QNF_ItemIPI_vBC: TFloatField
      FieldName = 'IPI_vBC'
      Origin = 'IPI_vBC'
      currency = True
    end
    object QNF_ItemIPI_qUnid: TFloatField
      FieldName = 'IPI_qUnid'
      Origin = 'IPI_qUnid'
    end
    object QNF_ItemIPI_vUnid: TFloatField
      FieldName = 'IPI_vUnid'
      Origin = 'IPI_vUnid'
      currency = True
    end
    object QNF_ItemIPI_pIPI: TFloatField
      FieldName = 'IPI_pIPI'
      Origin = 'IPI_pIPI'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemIPI_vIPI: TFloatField
      FieldName = 'IPI_vIPI'
      Origin = 'IPI_vIPI'
      currency = True
    end
    object QNF_ItemII_vBc: TFloatField
      FieldName = 'II_vBc'
      Origin = 'II_vBc'
      currency = True
    end
    object QNF_ItemII_vDespAdu: TFloatField
      FieldName = 'II_vDespAdu'
      Origin = 'II_vDespAdu'
      currency = True
    end
    object QNF_ItemII_vII: TFloatField
      FieldName = 'II_vII'
      Origin = 'II_vII'
      currency = True
    end
    object QNF_ItemII_vIOF: TFloatField
      FieldName = 'II_vIOF'
      Origin = 'II_vIOF'
      currency = True
    end
    object QNF_ItemPIS_CST: TIntegerField
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
      OnGetText = QNF_ItemPIS_CSTGetText
    end
    object QNF_ItemPIS_vBC: TFloatField
      FieldName = 'PIS_vBC'
      Origin = 'PIS_vBC'
      currency = True
    end
    object QNF_ItemPIS_pPIS: TFloatField
      FieldName = 'PIS_pPIS'
      Origin = 'PIS_pPIS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPIS_vPIS: TFloatField
      FieldName = 'PIS_vPIS'
      Origin = 'PIS_vPIS'
      currency = True
    end
    object QNF_ItemPIS_qBCProd: TFloatField
      FieldName = 'PIS_qBCProd'
      Origin = 'PIS_qBCProd'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPIS_vAliqProd: TFloatField
      FieldName = 'PIS_vAliqProd'
      Origin = 'PIS_vAliqProd'
      currency = True
    end
    object QNF_ItemPISST_vBc: TFloatField
      FieldName = 'PISST_vBc'
      Origin = 'PISST_vBc'
      DisplayFormat = '0.00'
    end
    object QNF_ItemPISST_pPis: TFloatField
      FieldName = 'PISST_pPis'
      Origin = 'PISST_pPis'
      DisplayFormat = '0.00'
    end
    object QNF_ItemPISST_qBCProd: TFloatField
      FieldName = 'PISST_qBCProd'
      Origin = 'PISST_qBCProd'
      DisplayFormat = '0.00'
    end
    object QNF_ItemPISST_vAliqProd: TFloatField
      FieldName = 'PISST_vAliqProd'
      Origin = 'PISST_vAliqProd'
      currency = True
    end
    object QNF_ItemPISST_vPIS: TFloatField
      FieldName = 'PISST_vPIS'
      Origin = 'PISST_vPIS'
      currency = True
    end
    object QNF_ItemCOFINS_CST: TIntegerField
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
      OnGetText = QNF_ItemCOFINS_CSTGetText
    end
    object QNF_ItemCOFINS_vBC: TFloatField
      FieldName = 'COFINS_vBC'
      Origin = 'COFINS_vBC'
      currency = True
    end
    object QNF_ItemCOFINS_pCOFINS: TFloatField
      FieldName = 'COFINS_pCOFINS'
      Origin = 'COFINS_pCOFINS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINS_vCOFINS: TFloatField
      FieldName = 'COFINS_vCOFINS'
      Origin = 'COFINS_vCOFINS'
      currency = True
    end
    object QNF_ItemCOFINS_qBCProd: TFloatField
      FieldName = 'COFINS_qBCProd'
      Origin = 'COFINS_qBCProd'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINS_vAliqProd: TFloatField
      FieldName = 'COFINS_vAliqProd'
      Origin = 'COFINS_vAliqProd'
      currency = True
    end
    object QNF_ItemCOFINSST_vBC: TFloatField
      FieldName = 'COFINSST_vBC'
      Origin = 'COFINSST_vBC'
      currency = True
    end
    object QNF_ItemCOFINSST_pCOFINS: TFloatField
      FieldName = 'COFINSST_pCOFINS'
      Origin = 'COFINSST_pCOFINS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINSST_qBCProd: TFloatField
      FieldName = 'COFINSST_qBCProd'
      Origin = 'COFINSST_qBCProd'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINSST_vAliqProd: TFloatField
      FieldName = 'COFINSST_vAliqProd'
      Origin = 'COFINSST_vAliqProd'
      currency = True
    end
    object QNF_ItemCOFINSST_vCOFINS: TFloatField
      FieldName = 'COFINSST_vCOFINS'
      Origin = 'COFINSST_vCOFINS'
      DisplayFormat = '0.00'
    end
    object QNF_ItemISSQN_vBC: TFloatField
      FieldName = 'ISSQN_vBC'
      Origin = 'ISSQN_vBC'
      currency = True
    end
    object QNF_ItemISSQN_vAliq: TFloatField
      FieldName = 'ISSQN_vAliq'
      Origin = 'ISSQN_vAliq'
      currency = True
    end
    object QNF_ItemISSQN_vISSQN: TFloatField
      FieldName = 'ISSQN_vISSQN'
      Origin = 'ISSQN_vISSQN'
      currency = True
    end
    object QNF_ItemISSQN_cMunFG: TIntegerField
      FieldName = 'ISSQN_cMunFG'
      Origin = 'ISSQN_cMunFG'
    end
    object QNF_ItemISSQN_cListServ: TIntegerField
      FieldName = 'ISSQN_cListServ'
      Origin = 'ISSQN_cListServ'
    end
    object QNF_ItemISSQN_SitTrib: TIntegerField
      FieldName = 'ISSQN_SitTrib'
      Origin = 'ISSQN_SitTrib'
    end
    object QNF_ItemICMS_vBCSTRet: TFloatField
      FieldName = 'ICMS_vBCSTRet'
      Origin = 'ICMS_vBCSTRet'
      currency = True
    end
    object QNF_ItemICMS_vICMSSTRet: TFloatField
      FieldName = 'ICMS_vICMSSTRet'
      Origin = 'ICMS_vICMSSTRet'
      currency = True
    end
    object QNF_ItemQTD: TFloatField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object QNF_ItemICMS_CST_inform: TIntegerField
      FieldName = 'ICMS_CST_inform'
      Origin = 'ICMS_CST_inform'
    end
    object QNF_ItemICMS_orig_inform: TIntegerField
      FieldName = 'ICMS_orig_inform'
      Origin = 'ICMS_orig_inform'
    end
    object QNF_ItemICMS_modBC_inform: TIntegerField
      FieldName = 'ICMS_modBC_inform'
      Origin = 'ICMS_modBC_inform'
    end
    object QNF_ItemICMS_vBC_inform: TFloatField
      FieldName = 'ICMS_vBC_inform'
      Origin = 'ICMS_vBC_inform'
      currency = True
    end
    object QNF_ItemICMS_pICMS_inform: TFloatField
      FieldName = 'ICMS_pICMS_inform'
      Origin = 'ICMS_pICMS_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vICMS_inform: TFloatField
      FieldName = 'ICMS_vICMS_inform'
      Origin = 'ICMS_vICMS_inform'
      currency = True
    end
    object QNF_ItemICMS_CSOSN_inform: TIntegerField
      FieldName = 'ICMS_CSOSN_inform'
      Origin = 'ICMS_CSOSN_inform'
    end
    object QNF_ItemICMS_pCredSN_inform: TFloatField
      FieldName = 'ICMS_pCredSN_inform'
      Origin = 'ICMS_pCredSN_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vCredICMSSN_inform: TFloatField
      FieldName = 'ICMS_vCredICMSSN_inform'
      Origin = 'ICMS_vCredICMSSN_inform'
      currency = True
    end
    object QNF_ItemICMS_modBCST_inform: TIntegerField
      FieldName = 'ICMS_modBCST_inform'
      Origin = 'ICMS_modBCST_inform'
    end
    object QNF_ItemICMS_pMVAST_inform: TFloatField
      FieldName = 'ICMS_pMVAST_inform'
      Origin = 'ICMS_pMVAST_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vTabelaST_inform: TFloatField
      FieldName = 'ICMS_vTabelaST_inform'
      Origin = 'ICMS_vTabelaST_inform'
      currency = True
    end
    object QNF_ItemICMS_pRedBCST_inform: TFloatField
      FieldName = 'ICMS_pRedBCST_inform'
      Origin = 'ICMS_pRedBCST_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vBCST_inform: TFloatField
      FieldName = 'ICMS_vBCST_inform'
      Origin = 'ICMS_vBCST_inform'
      currency = True
    end
    object QNF_ItemICMS_pICMSST_inform: TFloatField
      FieldName = 'ICMS_pICMSST_inform'
      Origin = 'ICMS_pICMSST_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vICMSST_inform: TFloatField
      FieldName = 'ICMS_vICMSST_inform'
      Origin = 'ICMS_vICMSST_inform'
      currency = True
    end
    object QNF_ItemICMS_pRedBC_inform: TFloatField
      FieldName = 'ICMS_pRedBC_inform'
      Origin = 'ICMS_pRedBC_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemIPI_CST_inform: TIntegerField
      FieldName = 'IPI_CST_inform'
      Origin = 'IPI_CST_inform'
    end
    object QNF_ItemIPI_clEnq_inform: TStringField
      FieldName = 'IPI_clEnq_inform'
      Origin = 'IPI_clEnq_inform'
      Size = 5
    end
    object QNF_ItemIPI_CNPJProd_inform: TStringField
      FieldName = 'IPI_CNPJProd_inform'
      Origin = 'IPI_CNPJProd_inform'
    end
    object QNF_ItemIPI_cSelo_inform: TStringField
      FieldName = 'IPI_cSelo_inform'
      Origin = 'IPI_cSelo_inform'
      Size = 60
    end
    object QNF_ItemIPI_qSelo_inform: TIntegerField
      FieldName = 'IPI_qSelo_inform'
      Origin = 'IPI_qSelo_inform'
    end
    object QNF_ItemIPI_cEnq_inform: TStringField
      FieldName = 'IPI_cEnq_inform'
      Origin = 'IPI_cEnq_inform'
      Size = 3
    end
    object QNF_ItemIPI_vBC_inform: TFloatField
      FieldName = 'IPI_vBC_inform'
      Origin = 'IPI_vBC_inform'
      currency = True
    end
    object QNF_ItemIPI_qUnid_inform: TFloatField
      FieldName = 'IPI_qUnid_inform'
      Origin = 'IPI_qUnid_inform'
    end
    object QNF_ItemIPI_vUnid_inform: TFloatField
      FieldName = 'IPI_vUnid_inform'
      Origin = 'IPI_vUnid_inform'
      currency = True
    end
    object QNF_ItemIPI_pIPI_inform: TFloatField
      FieldName = 'IPI_pIPI_inform'
      Origin = 'IPI_pIPI_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemIPI_vIPI_inform: TFloatField
      FieldName = 'IPI_vIPI_inform'
      Origin = 'IPI_vIPI_inform'
    end
    object QNF_ItemII_vBc_inform: TFloatField
      FieldName = 'II_vBc_inform'
      Origin = 'II_vBc_inform'
      currency = True
    end
    object QNF_ItemII_vDespAdu_inform: TFloatField
      FieldName = 'II_vDespAdu_inform'
      Origin = 'II_vDespAdu_inform'
      currency = True
    end
    object QNF_ItemII_vII_inform: TFloatField
      FieldName = 'II_vII_inform'
      Origin = 'II_vII_inform'
      currency = True
    end
    object QNF_ItemII_vIOF_inform: TFloatField
      FieldName = 'II_vIOF_inform'
      Origin = 'II_vIOF_inform'
      currency = True
    end
    object QNF_ItemPIS_CST_inform: TIntegerField
      FieldName = 'PIS_CST_inform'
      Origin = 'PIS_CST_inform'
    end
    object QNF_ItemPIS_vBC_inform: TFloatField
      FieldName = 'PIS_vBC_inform'
      Origin = 'PIS_vBC_inform'
      currency = True
    end
    object QNF_ItemPIS_pPIS_inform: TFloatField
      FieldName = 'PIS_pPIS_inform'
      Origin = 'PIS_pPIS_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPIS_vPIS_inform: TFloatField
      FieldName = 'PIS_vPIS_inform'
      Origin = 'PIS_vPIS_inform'
      currency = True
    end
    object QNF_ItemPIS_qBCProd_inform: TFloatField
      FieldName = 'PIS_qBCProd_inform'
      Origin = 'PIS_qBCProd_inform'
    end
    object QNF_ItemPIS_vAliqProd_inform: TFloatField
      FieldName = 'PIS_vAliqProd_inform'
      Origin = 'PIS_vAliqProd_inform'
      currency = True
    end
    object QNF_ItemPISST_vBc_inform: TFloatField
      FieldName = 'PISST_vBc_inform'
      Origin = 'PISST_vBc_inform'
      currency = True
    end
    object QNF_ItemPISST_pPis_inform: TFloatField
      FieldName = 'PISST_pPis_inform'
      Origin = 'PISST_pPis_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPISST_qBCProd_inform: TFloatField
      FieldName = 'PISST_qBCProd_inform'
      Origin = 'PISST_qBCProd_inform'
    end
    object QNF_ItemPISST_vAliqProd_inform: TFloatField
      FieldName = 'PISST_vAliqProd_inform'
      Origin = 'PISST_vAliqProd_inform'
    end
    object QNF_ItemPISST_vPIS_inform: TFloatField
      FieldName = 'PISST_vPIS_inform'
      Origin = 'PISST_vPIS_inform'
      currency = True
    end
    object QNF_ItemCOFINS_CST_inform: TIntegerField
      FieldName = 'COFINS_CST_inform'
      Origin = 'COFINS_CST_inform'
    end
    object QNF_ItemCOFINS_vBC_inform: TFloatField
      FieldName = 'COFINS_vBC_inform'
      Origin = 'COFINS_vBC_inform'
      currency = True
    end
    object QNF_ItemCOFINS_pCOFINS_inform: TFloatField
      FieldName = 'COFINS_pCOFINS_inform'
      Origin = 'COFINS_pCOFINS_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINS_vCOFINS_inform: TFloatField
      FieldName = 'COFINS_vCOFINS_inform'
      Origin = 'COFINS_vCOFINS_inform'
      currency = True
    end
    object QNF_ItemCOFINS_qBCProd_inform: TFloatField
      FieldName = 'COFINS_qBCProd_inform'
      Origin = 'COFINS_qBCProd_inform'
    end
    object QNF_ItemCOFINS_vAliqProd_inform: TFloatField
      FieldName = 'COFINS_vAliqProd_inform'
      Origin = 'COFINS_vAliqProd_inform'
      currency = True
    end
    object QNF_ItemCOFINSST_vBC_inform: TFloatField
      FieldName = 'COFINSST_vBC_inform'
      Origin = 'COFINSST_vBC_inform'
      currency = True
    end
    object QNF_ItemCOFINSST_pCOFINS_inform: TFloatField
      FieldName = 'COFINSST_pCOFINS_inform'
      Origin = 'COFINSST_pCOFINS_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINSST_qBCProd_inform: TFloatField
      FieldName = 'COFINSST_qBCProd_inform'
      Origin = 'COFINSST_qBCProd_inform'
    end
    object QNF_ItemCOFINSST_vAliqProd_inform: TFloatField
      FieldName = 'COFINSST_vAliqProd_inform'
      Origin = 'COFINSST_vAliqProd_inform'
      currency = True
    end
    object QNF_ItemCOFINSST_vCOFINS_inform: TFloatField
      FieldName = 'COFINSST_vCOFINS_inform'
      Origin = 'COFINSST_vCOFINS_inform'
      currency = True
    end
    object QNF_ItemISSQN_vBC_inform: TFloatField
      FieldName = 'ISSQN_vBC_inform'
      Origin = 'ISSQN_vBC_inform'
      currency = True
    end
    object QNF_ItemISSQN_vAliq_inform: TFloatField
      FieldName = 'ISSQN_vAliq_inform'
      Origin = 'ISSQN_vAliq_inform'
      currency = True
    end
    object QNF_ItemISSQN_vISSQN_inform: TFloatField
      FieldName = 'ISSQN_vISSQN_inform'
      Origin = 'ISSQN_vISSQN_inform'
      currency = True
    end
    object QNF_ItemISSQN_cMunFG_inform: TIntegerField
      FieldName = 'ISSQN_cMunFG_inform'
      Origin = 'ISSQN_cMunFG_inform'
    end
    object QNF_ItemISSQN_cListServ_inform: TIntegerField
      FieldName = 'ISSQN_cListServ_inform'
      Origin = 'ISSQN_cListServ_inform'
    end
    object QNF_ItemISSQN_SitTrib_inform: TIntegerField
      FieldName = 'ISSQN_SitTrib_inform'
      Origin = 'ISSQN_SitTrib_inform'
    end
    object QNF_ItemICMS_vBCSTRet_inform: TFloatField
      FieldName = 'ICMS_vBCSTRet_inform'
      Origin = 'ICMS_vBCSTRet_inform'
      currency = True
    end
    object QNF_ItemICMS_vICMSSTRet_inform: TFloatField
      FieldName = 'ICMS_vICMSSTRet_inform'
      Origin = 'ICMS_vICMSSTRet_inform'
      currency = True
    end
    object QNF_ItemICMS_motDesICMS: TIntegerField
      FieldName = 'ICMS_motDesICMS'
      Origin = 'ICMS_motDesICMS'
    end
    object QNF_ItemICMS_motDesICMS_inform: TIntegerField
      FieldName = 'ICMS_motDesICMS_inform'
      Origin = 'ICMS_motDesICMS_inform'
    end
    object QNF_ItemvTotTrib: TFloatField
      FieldName = 'vTotTrib'
      Origin = 'vTotTrib'
      currency = True
    end
    object QNF_Itemmd5: TStringField
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object QNF_Itemhash: TStringField
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
    object QNF_ItemPIS_codrec: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_codrec'
      Origin = 'PIS_codrec'
    end
    object QNF_Itemvr_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_custo'
      Origin = 'vr_custo'
    end
    object QNF_Itemvr_venda: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_venda'
      Origin = 'vr_venda'
    end
    object QNF_Itemult_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ult_custo'
      Origin = 'ult_custo'
    end
    object QNF_Itembaixa_estoque: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'baixa_estoque'
      Origin = 'baixa_estoque'
      FixedChar = True
      Size = 1
    end
  end
  object DSNF_Item: TDataSource
    DataSet = QNF_Item
    Left = 1176
    Top = 64
  end
  object DSNF: TDataSource
    DataSet = QNF
    Left = 1176
    Top = 12
  end
  object QNF_Duplicata: TFDQuery
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    Connection = DMConn.DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_duplicata where nf=:id')
    Left = 1076
    Top = 168
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 13
      end>
    object QNF_Duplicataid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Duplicatanf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_DuplicatanDup: TStringField
      FieldName = 'nDup'
      Origin = 'nDup'
      Size = 60
    end
    object QNF_DuplicatavDup: TFloatField
      FieldName = 'vDup'
      Origin = 'vDup'
    end
    object QNF_DuplicatadVenc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dVenc'
      Origin = 'dVenc'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object QNF_Reboque: TFDQuery
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    Connection = DMConn.DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_reboque where nf=:id')
    Left = 1076
    Top = 228
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 13
      end>
    object QNF_Reboqueid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Reboquenf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_Reboqueplaca: TStringField
      FieldName = 'placa'
      Origin = 'placa'
      Size = 10
    end
    object QNF_Reboqueuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object QNF_Reboquerntc: TStringField
      FieldName = 'rntc'
      Origin = 'rntc'
    end
    object QNF_Reboquevagao: TStringField
      FieldName = 'vagao'
      Origin = 'vagao'
    end
    object QNF_Reboquebalsa: TStringField
      FieldName = 'balsa'
      Origin = 'balsa'
    end
  end
  object QNF_Referenciada: TFDQuery
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    Connection = DMConn.DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_referenciada where nf=:id')
    Left = 1076
    Top = 280
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 13
      end>
    object QNF_Referenciadaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Referenciadanf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_ReferenciadarefNFe: TStringField
      FieldName = 'refNFe'
      Origin = 'refNFe'
      Size = 44
    end
    object QNF_ReferenciadaRefNF_cUF: TIntegerField
      FieldName = 'RefNF_cUF'
      Origin = 'RefNF_cUF'
    end
    object QNF_ReferenciadaRefNF_AAMM: TStringField
      FieldName = 'RefNF_AAMM'
      Origin = 'RefNF_AAMM'
      Size = 5
    end
    object QNF_ReferenciadaRefNF_CNPJ: TStringField
      FieldName = 'RefNF_CNPJ'
      Origin = 'RefNF_CNPJ'
    end
    object QNF_ReferenciadaRefNF_modelo: TIntegerField
      FieldName = 'RefNF_modelo'
      Origin = 'RefNF_modelo'
    end
    object QNF_ReferenciadaRefNF_serie: TIntegerField
      FieldName = 'RefNF_serie'
      Origin = 'RefNF_serie'
    end
    object QNF_ReferenciadaRefNF_nNF: TIntegerField
      FieldName = 'RefNF_nNF'
      Origin = 'RefNF_nNF'
    end
    object QNF_ReferenciadaRefNFP_cUF: TIntegerField
      FieldName = 'RefNFP_cUF'
      Origin = 'RefNFP_cUF'
    end
    object QNF_ReferenciadaRefNFP_AAMM: TStringField
      FieldName = 'RefNFP_AAMM'
      Origin = 'RefNFP_AAMM'
      Size = 5
    end
    object QNF_ReferenciadaRefNFP_CNPJCPF: TStringField
      FieldName = 'RefNFP_CNPJCPF'
      Origin = 'RefNFP_CNPJCPF'
    end
    object QNF_ReferenciadaRefNFP_IE: TStringField
      FieldName = 'RefNFP_IE'
      Origin = 'RefNFP_IE'
    end
    object QNF_ReferenciadaRefNFP_modelo: TStringField
      FieldName = 'RefNFP_modelo'
      Origin = 'RefNFP_modelo'
    end
    object QNF_ReferenciadaRefNFP_serie: TIntegerField
      FieldName = 'RefNFP_serie'
      Origin = 'RefNFP_serie'
    end
    object QNF_ReferenciadaRefNFP_nNF: TIntegerField
      FieldName = 'RefNFP_nNF'
      Origin = 'RefNFP_nNF'
    end
    object QNF_ReferenciadaRefECF_modelo: TIntegerField
      FieldName = 'RefECF_modelo'
      Origin = 'RefECF_modelo'
    end
    object QNF_ReferenciadaRefECF_nECF: TStringField
      FieldName = 'RefECF_nECF'
      Origin = 'RefECF_nECF'
      Size = 10
    end
    object QNF_ReferenciadaRefECF_nCOO: TStringField
      FieldName = 'RefECF_nCOO'
      Origin = 'RefECF_nCOO'
      Size = 10
    end
    object QNF_ReferenciadaRefCte: TStringField
      FieldName = 'RefCte'
      Origin = 'RefCte'
      Size = 44
    end
    object QNF_ReferenciadaRefECF_data: TDateField
      FieldName = 'RefECF_data'
      Origin = 'RefECF_data'
    end
    object QNF_ReferenciadaRefECF_Serie: TStringField
      FieldName = 'RefECF_Serie'
      Origin = 'RefECF_Serie'
    end
  end
  object QNF_Volume: TFDQuery
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    Connection = DMConn.DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_volumes where nf=:id')
    Left = 960
    Top = 344
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 13
      end>
    object QNF_Volumeid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Volumenf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_VolumeqVol: TIntegerField
      FieldName = 'qVol'
      Origin = 'qVol'
    end
    object QNF_Volumeespecie: TStringField
      FieldName = 'especie'
      Origin = 'especie'
      Size = 60
    end
    object QNF_Volumemarca: TStringField
      FieldName = 'marca'
      Origin = 'marca'
      Size = 60
    end
    object QNF_VolumenVol: TStringField
      FieldName = 'nVol'
      Origin = 'nVol'
      Size = 60
    end
    object QNF_VolumepesoL: TFloatField
      FieldName = 'pesoL'
      Origin = 'pesoL'
      DisplayFormat = '0.00'
    end
    object QNF_VolumepesoB: TFloatField
      FieldName = 'pesoB'
      Origin = 'pesoB'
      DisplayFormat = '0.00'
    end
  end
  object QNF_Lacre: TFDQuery
    MasterSource = DSNF_Volume
    MasterFields = 'id'
    DetailFields = 'vol'
    Connection = DMConn.DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_vol_lacre where vol=:id')
    Left = 960
    Top = 400
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object QNF_Lacreid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Lacrevol: TIntegerField
      FieldName = 'vol'
      Origin = 'vol'
    end
    object QNF_Lacrenlacre: TStringField
      FieldName = 'nlacre'
      Origin = 'nlacre'
      Size = 60
    end
  end
  object DSNF_Volume: TDataSource
    DataSet = QNF_Volume
    Left = 1060
    Top = 344
  end
  object QNF_Chave: TFDQuery
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    Connection = DMConn.DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_chave where nf=:id')
    Left = 960
    Top = 464
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 13
      end>
    object QNF_Chaveid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Chavenf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_Chavechave: TStringField
      FieldName = 'chave'
      Origin = 'chave'
      Size = 50
    end
    object QNF_Chaverecibo: TStringField
      FieldName = 'recibo'
      Origin = 'recibo'
      Size = 50
    end
    object QNF_Chaveprotocolo: TStringField
      FieldName = 'protocolo'
      Origin = 'protocolo'
      Size = 50
    end
    object QNF_Chavecstat: TIntegerField
      FieldName = 'cstat'
      Origin = 'cstat'
    end
    object QNF_Chavestatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
    end
  end
  object DSNF_Chave: TDataSource
    DataSet = QNF_Chave
    Left = 1060
    Top = 464
  end
  object QNF_Item_Med: TFDQuery
    MasterSource = DSNF_Item
    MasterFields = 'id'
    DetailFields = 'item'
    Connection = DMConn.DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_item_med where item=:id')
    Left = 1076
    Top = 116
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 20
      end>
    object QNF_Item_Medid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Item_Meditem: TIntegerField
      FieldName = 'item'
      Origin = 'item'
    end
    object QNF_Item_Mednlote: TStringField
      FieldName = 'nlote'
      Origin = 'nlote'
    end
    object QNF_Item_Medqlote: TFloatField
      FieldName = 'qlote'
      Origin = 'qlote'
    end
    object QNF_Item_Meddfab: TDateField
      FieldName = 'dfab'
      Origin = 'dfab'
    end
    object QNF_Item_Meddven: TDateField
      FieldName = 'dven'
      Origin = 'dven'
    end
    object QNF_Item_Medvpmc: TFloatField
      FieldName = 'vpmc'
      Origin = 'vpmc'
    end
  end
  object DSNF_Item_Med: TDataSource
    DataSet = QNF_Item
    Left = 1176
    Top = 116
  end
  object DSNF_Duplicata: TDataSource
    DataSet = QNF_Duplicata
    Left = 1176
    Top = 168
  end
  object DSNF_Reboque: TDataSource
    DataSet = QNF_Reboque
    Left = 1176
    Top = 232
  end
  object DSNF_Lacre: TDataSource
    DataSet = QNF_Lacre
    Left = 1060
    Top = 408
  end
  object DSNF_Referenciada: TDataSource
    DataSet = QNF_Referenciada
    Left = 1176
    Top = 288
  end
  object QNF_cce: TFDQuery
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = DMConn.DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_cce where nf=:id')
    Left = 976
    Top = 524
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 13
      end>
    object QNF_cceid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_ccenf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_cceseq: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'seq'
      Origin = 'seq'
    end
    object QNF_ccetexto: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'texto'
      Origin = 'texto'
      BlobType = ftMemo
    end
  end
  object Qtrn: TFDQuery
    MasterSource = DSVenda
    MasterFields = 'id'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from trn where venda=:id')
    Left = 892
    Top = 12
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Qtrnid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Qtrnvenda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'venda'
      Origin = 'venda'
    end
    object Qtrnnsu: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nsu'
      Origin = 'nsu'
    end
    object Qtrnnsu_adm: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nsu_adm'
      Origin = 'nsu_adm'
    end
    object Qtrnoperadora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'operadora'
      Origin = 'operadora'
    end
    object Qtrnvr_liq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_liq'
      Origin = 'vr_liq'
      currency = True
    end
    object Qtrnvr_rec: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vr_rec'
      Origin = 'vr_rec'
      currency = True
    end
    object Qtrnlote: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'lote'
      Origin = 'lote'
    end
    object Qtrnautoriz: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'autoriz'
      Origin = 'autoriz'
    end
    object Qtrncrt: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'crt'
      Origin = 'crt'
    end
    object Qtrnnsu_adm_canc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nsu_adm_canc'
      Origin = 'nsu_adm_canc'
    end
  end
  object QTrn_Item: TFDQuery
    MasterSource = DSTrn
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = DMConn.DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select* from trn_item where trn=:id')
    Left = 216
    Top = 338
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QTrn_Itemid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QTrn_Itemtrn: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'trn'
      Origin = 'trn'
    end
    object QTrn_ItemcProd: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cProd'
      Origin = 'cProd'
    end
    object QTrn_Itemvrbrt: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrbrt'
      Origin = 'vrbrt'
    end
    object QTrn_Itemvrliq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrliq'
      Origin = 'vrliq'
    end
    object QTrn_Itemvrdin: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrdin'
      Origin = 'vrdin'
    end
    object QTrn_Itemvrbrt_local: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrbrt_local'
      Origin = 'vrbrt_local'
    end
    object QTrn_Itemvrliq_local: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vrliq_local'
      Origin = 'vrliq_local'
    end
    object QTrn_Itempc_desc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pc_desc'
      Origin = 'pc_desc'
    end
    object QTrn_Itemparcial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parcial'
      Origin = 'parcial'
      FixedChar = True
      Size = 1
    end
    object QTrn_Itemean: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ean'
      Origin = 'ean'
    end
    object QTrn_Itemqtd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
    end
    object QTrn_Itemcomplem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complem'
      Origin = 'complem'
    end
  end
  object DSTrn: TDataSource
    DataSet = Qtrn
    Left = 892
    Top = 58
  end
  object QPFP: TFDQuery
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from pfp where venda=:id')
    Left = 716
    Top = 12
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QPFPid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QPFPvenda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'venda'
      Origin = 'venda'
    end
    object QPFPdt_receita: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_receita'
      Origin = 'dt_receita'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QPFPcrm: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'crm'
      Origin = 'crm'
      Size = 50
    end
    object QPFPuf_crm: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf_crm'
      Origin = 'uf_crm'
      FixedChar = True
      Size = 2
    end
    object QPFPcpf_farma: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_farma'
      Origin = 'cpf_farma'
    end
    object QPFPcod_autoriz: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_autoriz'
      Origin = 'cod_autoriz'
      Size = 50
    end
    object QPFPhora_envioreq: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'hora_envioreq'
      Origin = 'hora_envioreq'
      DisplayFormat = 'hh:mm'
    end
    object QPFPhora_recreq: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'hora_recreq'
      Origin = 'hora_recreq'
      DisplayFormat = 'hh:mm'
    end
    object QPFPhora_evioconfreq: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'hora_evioconfreq'
      Origin = 'hora_evioconfreq'
      DisplayFormat = 'hh:mm'
    end
    object QPFPhorarecconf: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'horarecconf'
      Origin = 'horarecconf'
      DisplayFormat = 'hh:mm'
    end
    object QPFPhora_eviodadosconf: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'hora_eviodadosconf'
      Origin = 'hora_eviodadosconf'
      DisplayFormat = 'hh:mm'
    end
    object QPFPhora_recdadosconf: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'hora_recdadosconf'
      Origin = 'hora_recdadosconf'
      DisplayFormat = 'hh:mm'
    end
    object QPFPqtpresc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtpresc'
      Origin = 'qtpresc'
    end
    object QPFPcpf_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_cli'
      Origin = 'cpf_cli'
    end
    object QPFPnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object QPFPender: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ender'
      Origin = 'ender'
      Size = 50
    end
    object QPFPdt_extorno: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dt_extorno'
      Origin = 'dt_extorno'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object QPFPdt_atualiz: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'dt_atualiz'
      Origin = 'dt_atualiz'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object QPFPcv: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'cv'
      Origin = 'cv'
      BlobType = ftMemo
    end
  end
  object TIBPTax: TFDQuery
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from ibptax')
    Left = 332
    Top = 644
    object TIBPTaxid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TIBPTaxversao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'versao'
      Origin = 'versao'
    end
    object TIBPTaxitens: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'itens'
      Origin = 'itens'
    end
    object TIBPTaxdt_vigencia_ini: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_vigencia_ini'
      Origin = 'dt_vigencia_ini'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TIBPTaxdt_vigencia_fim: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_vigencia_fim'
      Origin = 'dt_vigencia_fim'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TIBPTaxchave: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'chave'
      Origin = 'chave'
    end
    object TIBPTaxfonte: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fonte'
      Origin = 'fonte'
      Size = 50
    end
  end
  object QAssist_cfop_Emit: TFDQuery
    BeforePost = QAssist_cfop_EmitBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from cfop_cst_csosn_emissao '
      'order by cfop, cst')
    Left = 976
    Top = 588
    object QAssist_cfop_Emitid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QAssist_cfop_Emitcfop: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cfop'
      Origin = 'cfop'
    end
    object QAssist_cfop_Emitcst: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst'
      Origin = 'cst'
    end
    object QAssist_cfop_Emitcst_pis_ent: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_pis_ent'
      Origin = 'cst_pis_ent'
    end
    object QAssist_cfop_Emitcst_pis_sai: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_pis_sai'
      Origin = 'cst_pis_sai'
    end
    object QAssist_cfop_Emitcst_ipi_ent: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_ipi_ent'
      Origin = 'cst_ipi_ent'
    end
    object QAssist_cfop_Emitcst_ipi_sai: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_ipi_sai'
      Origin = 'cst_ipi_sai'
    end
    object QAssist_cfop_Emitcst_cofins_ent: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_cofins_ent'
      Origin = 'cst_cofins_ent'
    end
    object QAssist_cfop_Emitcst_cofins_sai: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_cofins_sai'
      Origin = 'cst_cofins_sai'
    end
    object QAssist_cfop_Emitcfop_infor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cfop_infor'
      Origin = 'cfop_infor'
    end
    object QAssist_cfop_Emitcst_infor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_infor'
      Origin = 'cst_infor'
    end
    object QAssist_cfop_Emitcst_pis_ent_infor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_pis_ent_infor'
      Origin = 'cst_pis_ent_infor'
    end
    object QAssist_cfop_Emitcst_pis_sai_infor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_pis_sai_infor'
      Origin = 'cst_pis_sai_infor'
    end
    object QAssist_cfop_Emitcst_ipi_ent_infor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_ipi_ent_infor'
      Origin = 'cst_ipi_ent_infor'
    end
    object QAssist_cfop_Emitcst_ipi_sai_infor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_ipi_sai_infor'
      Origin = 'cst_ipi_sai_infor'
    end
    object QAssist_cfop_Emitcst_cofins_ent_infor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_cofins_ent_infor'
      Origin = 'cst_cofins_ent_infor'
    end
    object QAssist_cfop_Emitcst_cofins_sai_infor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_cofins_sai_infor'
      Origin = 'cst_cofins_sai_infor'
    end
  end
  object Qcfop_devol: TFDQuery
    BeforePost = Qcfop_devolBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from cfop_devol order by cfop')
    Left = 984
    Top = 644
    object Qcfop_devolid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Qcfop_devolcfop: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cfop'
      Origin = 'cfop'
    end
    object Qcfop_devolinterno: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'interno'
      Origin = 'interno'
      FixedChar = True
      Size = 1
    end
    object Qcfop_devolind: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ind'
      Origin = 'ind'
      FixedChar = True
      Size = 1
    end
    object Qcfop_devolst: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'st'
      Origin = 'st'
      FixedChar = True
      Size = 1
    end
    object Qcfop_devolcst: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst'
      Origin = 'cst'
    end
    object Qcfop_devolcst_ipi: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_ipi'
      Origin = 'cst_ipi'
      OnGetText = Qcfop_devolcst_ipiGetText
    end
    object Qcfop_devolcst_pis: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_pis'
      Origin = 'cst_pis'
      OnGetText = Qcfop_devolcst_pisGetText
    end
    object Qcfop_devolcsosn: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'csosn'
      Origin = 'csosn'
    end
  end
  object DSFinan_apagar: TDataSource
    AutoEdit = False
    DataSet = QFinan_apagar
    Left = 407
    Top = 496
  end
  object QFinan_apagar: TFDQuery
    AfterInsert = QFinan_apagarAfterInsert
    BeforePost = QFinan_apagarBeforePost
    MasterSource = DSContas
    MasterFields = 'id'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from finan_apagar')
    Left = 412
    Top = 440
    object QFinan_apagarid: TFDAutoIncField
      Alignment = taCenter
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '0000'
    end
    object QFinan_apagartipo: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      OnGetText = QFinan_apagartipoGetText
      FixedChar = True
      Size = 3
    end
    object QFinan_apagarfavorec_cod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'favorec_cod'
      Origin = 'favorec_cod'
      DisplayFormat = '000'
    end
    object QFinan_apagarfavorec_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'favorec_nome'
      Origin = 'favorec_nome'
      Size = 100
    end
    object QFinan_apagarfavorec_doc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'favorec_doc'
      Origin = 'favorec_doc'
      Size = 30
    end
    object QFinan_apagarid_movi: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'id_movi'
      Origin = 'id_movi'
      DisplayFormat = '0000'
    end
    object QFinan_apagarnmro_doc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmro_doc'
      Origin = 'nmro_doc'
    end
    object QFinan_apagardt_process: TDateField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'dt_process'
      Origin = 'dt_process'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QFinan_apagardt_vencimento: TDateField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'dt_vencimento'
      Origin = 'dt_vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QFinan_apagardt_baixa: TDateField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'dt_baixa'
      Origin = 'dt_baixa'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QFinan_apagarhora_baixa: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'hora_baixa'
      Origin = 'hora_baixa'
      Size = 5
    end
    object QFinan_apagarvalor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object QFinan_apagarvalor_multa: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_multa'
      Origin = 'valor_multa'
      currency = True
    end
    object QFinan_apagarvalor_juros: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_juros'
      Origin = 'valor_juros'
      currency = True
    end
    object QFinan_apagarvalor_desc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_desc'
      Origin = 'valor_desc'
      currency = True
    end
    object QFinan_apagarvalor_pg: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor_pg'
      Origin = 'valor_pg'
      currency = True
    end
    object QFinan_apagarobs: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftMemo
    end
    object QFinan_apagaroperador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'operador'
      Origin = 'operador'
    end
    object QFinan_apagarcancelado: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'cancelado'
      Origin = 'cancelado'
      FixedChar = True
      Size = 1
    end
    object QFinan_apagarcc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cc'
      Origin = 'cc'
    end
  end
  object Qfinan_ch_terc: TFDQuery
    BeforePost = Qfinan_ch_tercBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from finan_chq_terceiro')
    Left = 368
    Top = 792
    object Qfinan_ch_tercid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '0000'
    end
    object Qfinan_ch_tercnmro: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#186' DO CHEQUE'
      FieldName = 'nmro'
      Origin = 'nmro'
    end
    object Qfinan_ch_tercdata_em: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DT EMISS'#195'O'
      FieldName = 'data_em'
      Origin = 'data_em'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Qfinan_ch_tercdt_bompara: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DT BOM PARA'
      FieldName = 'dt_bompara'
      Origin = 'dt_bompara'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Qfinan_ch_tercdt_devolvido: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_devolvido'
      Origin = 'dt_devolvido'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Qfinan_ch_tercdt_baixa: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_baixa'
      Origin = 'dt_baixa'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Qfinan_ch_tercnome_dono: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME DO PROPRIET'#193'RIO DO CHEQUE'
      FieldName = 'nome_dono'
      Origin = 'nome_dono'
      Size = 100
    end
    object Qfinan_ch_tercbanco: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'BANCO'
      FieldName = 'banco'
      Origin = 'banco'
    end
    object Qfinan_ch_tercconta: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CONTA'
      FieldName = 'conta'
      Origin = 'conta'
    end
    object Qfinan_ch_tercvalor: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'VALOR'
      FieldName = 'valor'
      Origin = 'valor'
      currency = True
    end
    object Qfinan_ch_tercstatus: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'STATUS'
      FieldName = 'status'
      Origin = 'status'
      OnGetText = Qfinan_ch_tercstatusGetText
      FixedChar = True
      Size = 1
    end
    object Qfinan_ch_tercalinea: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'alinea'
      Origin = 'alinea'
      Size = 50
    end
    object Qfinan_ch_tercconta_depos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'conta_depos'
      Origin = 'conta_depos'
    end
    object Qfinan_ch_tercnome_portador: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NOME DO PORTADOR'
      FieldName = 'nome_portador'
      Origin = 'nome_portador'
      Size = 100
    end
    object Qfinan_ch_terctel_portador: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'TEL. PORTADOR'
      FieldName = 'tel_portador'
      Origin = 'tel_portador'
    end
  end
  object DSfinan_ch_terc: TDataSource
    AutoEdit = False
    DataSet = Qfinan_ch_terc
    Left = 455
    Top = 796
  end
  object QFinan_ch_alinea: TFDQuery
    BeforePost = QFinan_ch_alineaBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from finan_cheque_alinea')
    Left = 368
    Top = 856
    object QFinan_ch_alineaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QFinan_ch_alineaalinea: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'alinea'
      Origin = 'alinea'
      BlobType = ftMemo
    end
  end
  object QEstoque_perda: TFDQuery
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from estoque_perda where baixa="N"')
    Left = 244
    Top = 176
    object QEstoque_perdaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QEstoque_perdacProd: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cProd'
      Origin = 'cProd'
    end
    object QEstoque_perdacod_gtin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_gtin'
      Origin = 'cod_gtin'
    end
    object QEstoque_perdanome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QEstoque_perdaqtd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
      DisplayFormat = '0.00#'
    end
    object QEstoque_perdadata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QEstoque_perdabaixa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'baixa'
      Origin = 'baixa'
      FixedChar = True
      Size = 1
    end
  end
  object QBalanca: TFDQuery
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from balanca')
    Left = 132
    Top = 80
    object QBalancaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QBalancamarca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca'
      Origin = 'marca'
    end
    object QBalancaserie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'serie'
      Origin = 'serie'
    end
    object QBalancasessao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sessao'
      Origin = 'sessao'
    end
  end
  object QRegras_Imposto: TFDQuery
    AfterInsert = QRegras_ImpostoAfterInsert
    BeforePost = QRegras_ImpostoBeforePost
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from regra_imposto order by nome')
    Left = 404
    Top = 180
    object QRegras_Impostoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QRegras_Impostonome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QRegras_Impostocst: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst'
      Origin = 'cst'
    end
    object QRegras_Impostoaliq: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'aliq'
      Origin = 'aliq'
    end
    object QRegras_Impostoicp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'icp'
      Origin = 'icp'
      FixedChar = True
      Size = 1
    end
    object QRegras_Impostocst_pis_ent: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_pis_ent'
      Origin = 'cst_pis_ent'
    end
    object QRegras_Impostocst_pis_sai: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_pis_sai'
      Origin = 'cst_pis_sai'
    end
    object QRegras_Impostocst_cofins_ent: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_cofins_ent'
      Origin = 'cst_cofins_ent'
    end
    object QRegras_Impostocst_cofins_sai: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_cofins_sai'
      Origin = 'cst_cofins_sai'
    end
    object QRegras_Impostomod_bc: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'mod_bc'
      Origin = 'mod_bc'
    end
    object QRegras_Impostocst_ipi_sai: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_ipi_sai'
      Origin = 'cst_ipi_sai'
    end
    object QRegras_Impostocst_ipi_ent: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cst_ipi_ent'
      Origin = 'cst_ipi_ent'
    end
    object QRegras_Impostoaliq_pis: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_pis'
      Origin = 'aliq_pis'
      DisplayFormat = '0.00'
    end
    object QRegras_Impostoaliq_cofins: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_cofins'
      Origin = 'aliq_cofins'
      DisplayFormat = '0.00'
    end
    object QRegras_Impostoaliq_ipi: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_ipi'
      Origin = 'aliq_ipi'
      DisplayFormat = '0.00'
    end
  end
  object Qtablet: TFDQuery
    AfterOpen = QtabletAfterOpen
    BeforeClose = QtabletBeforeClose
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from tablet where codigo=:codigo')
    Left = 280
    Top = 344
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object Qtabletid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Qtabletcodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
      Size = 14
    end
  end
  object QTablet_Item: TFDQuery
    MasterSource = DSTablet
    MasterFields = 'id'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from tablet_itens where tablet=:id and cancelado='#39'N'#39)
    Left = 344
    Top = 344
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QTablet_Itemid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QTablet_Itemtablet: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tablet'
      Origin = 'tablet'
    end
    object QTablet_Itemproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'produto'
    end
    object QTablet_Itemqtd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
    end
    object QTablet_Itemcancelado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cancelado'
      Origin = 'cancelado'
      FixedChar = True
      Size = 1
    end
  end
  object DSTablet: TDataSource
    AutoEdit = False
    DataSet = Qtablet
    Left = 479
    Top = 884
  end
  object TIBPTax_Itens: TFDQuery
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from ibptax_itens'
      '')
    Left = 332
    Top = 700
    object TIBPTax_Itensid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TIBPTax_Itensncm: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ncm'
      Origin = 'ncm'
      Size = 10
    end
    object TIBPTax_Itensex: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ex'
      Origin = 'ex'
      Size = 2
    end
    object TIBPTax_Itenstabela: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tabela'
      Origin = 'tabela'
    end
    object TIBPTax_Itensnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object TIBPTax_Itensnacional: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'nacional'
      Origin = 'nacional'
    end
    object TIBPTax_Itensimportado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'importado'
      Origin = 'importado'
    end
    object TIBPTax_Itensestadual: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'estadual'
      Origin = 'estadual'
    end
    object TIBPTax_Itensmunicipal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'municipal'
      Origin = 'municipal'
    end
  end
  object dsQCSOSN: TDataSource
    DataSet = QCSOSN
    Left = 588
    Top = 58
  end
  object QCSOSN: TFDQuery
    BeforePost = QCSTBeforePost
    OnNewRecord = QCSOSNNewRecord
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from cst where simplesnacional="S"')
    Left = 584
    Top = 12
    object QCSOSNid: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QCSOSNnome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QCSOSNacbr: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = #205'NDICE'
      FieldName = 'acbr'
      Origin = 'acbr'
    end
    object QCSOSNcst: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CSOSN'
      FieldName = 'cst'
      Origin = 'cst'
    end
    object QCSOSNst: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ST'
      FieldName = 'st'
      Origin = 'st'
      FixedChar = True
      Size = 1
    end
    object QCSOSNSimplesNacional: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'SN'
      FieldName = 'SimplesNacional'
      Origin = 'SimplesNacional'
      FixedChar = True
      Size = 1
    end
  end
  object QDic_nf: TFDQuery
    BeforeOpen = Q1BeforeOpen
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from nf_dic')
    Left = 768
    Top = 64
    object QDic_nfID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QDic_nfTEXTO: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'TEXTO'
      Origin = 'TEXTO'
      BlobType = ftMemo
    end
  end
  object QEstoque_Inicial: TFDQuery
    BeforeOpen = Q1BeforeOpen
    Connection = DMConn.DB
    SQL.Strings = (
      
        'select e.id, e.cod_gtin, e.nome, if(i.id is null, 0, i.id) iid, ' +
        'if(i.quant is null, 0, i.quant) quant from'
      'estoque e'
      'left join estoque_inicial i on i.estoque = e.id '
      'order by e.nome')
    Left = 148
    Top = 176
    object QEstoque_Inicialid: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QEstoque_Inicialcod_gtin: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#211'DIGO GTIN'
      FieldName = 'cod_gtin'
      Origin = 'cod_gtin'
    end
    object QEstoque_Inicialnome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QEstoque_Inicialiid: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'iid'
      Origin = 'iid'
      ProviderFlags = []
      ReadOnly = True
    end
    object QEstoque_Inicialquant: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'QUANT.'
      FieldName = 'quant'
      Origin = 'quant'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSEstoqueInicial: TDataSource
    AutoEdit = False
    DataSet = QEstoque_Inicial
    Left = 148
    Top = 231
  end
  object QVwQuant_Estoque: TFDQuery
    BeforeOpen = Q1BeforeOpen
    MasterSource = DSEstoque
    MasterFields = 'id'
    Connection = DMConn.DB
    SQL.Strings = (
      'select sum(quant)as quant from ('
      'select estoque as id, quant from estoque_inicial'
      'union'
      'select id, qtd as quant from estoque_perda p'
      'union'
      'select cProd as id, qCom as quant from nf_item_entr'
      'union'
      
        'select cProd as id, qCom as quant from nf_item s where s.CFOP no' +
        't in(5929, 6929, (select CFOP from cfop_devol where interno="S" ' +
        'and ind="X") )'
      'UNION'
      
        'select cProd as id, qCom as quant from venda_item v where v.CFOP' +
        ' <>'#39'N'#39
      ')CURQ'
      'where id = :id ')
    Left = 272
    Top = 996
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object QVwQuant_Estoquequant: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'quant'
      Origin = 'quant'
      DisplayFormat = '0.00##'
    end
  end
  object DSVwQuant_Estoque: TDataSource
    AutoEdit = False
    DataSet = QVwQuant_Estoque
    Left = 372
    Top = 1003
  end
end
