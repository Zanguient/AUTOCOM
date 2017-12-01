object DM_NF_Entr: TDM_NF_Entr
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 527
  Width = 574
  object QNF: TFDQuery
    AfterOpen = QNFAfterOpen
    SQL.Strings = (
      'select * from nf_entr order by id desc limit 1;')
    Left = 108
    Top = 8
    object QNFid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNFIde_cNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_cNF'
      Origin = 'Ide_cNF'
    end
    object QNFIde_natOp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_natOp'
      Origin = 'Ide_natOp'
      Size = 60
    end
    object QNFIde_indPag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_indPag'
      Origin = 'Ide_indPag'
    end
    object QNFIde_modelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_modelo'
      Origin = 'Ide_modelo'
      DisplayFormat = '00'
    end
    object QNFIde_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_serie'
      Origin = 'Ide_serie'
      DisplayFormat = '000'
    end
    object QNFIde_nNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_nNF'
      Origin = 'Ide_nNF'
    end
    object QNFIde_dEmi: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_dEmi'
      Origin = 'Ide_dEmi'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QNFIde_dSaiEnt: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_dSaiEnt'
      Origin = 'Ide_dSaiEnt'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QNFIde_hSaiEnt: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_hSaiEnt'
      Origin = 'Ide_hSaiEnt'
      DisplayFormat = 'hh:mm'
    end
    object QNFIde_tpNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_tpNF'
      Origin = 'Ide_tpNF'
    end
    object QNFIde_tpEmis: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_tpEmis'
      Origin = 'Ide_tpEmis'
    end
    object QNFIde_tpAmb: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_tpAmb'
      Origin = 'Ide_tpAmb'
    end
    object QNFIde_verProc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_verProc'
      Origin = 'Ide_verProc'
    end
    object QNFIde_cUF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_cUF'
      Origin = 'Ide_cUF'
    end
    object QNFIde_cMunFG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_cMunFG'
      Origin = 'Ide_cMunFG'
      Size = 60
    end
    object QNFIde_finNFe: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_finNFe'
      Origin = 'Ide_finNFe'
    end
    object QNFIde_dhCont: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_dhCont'
      Origin = 'Ide_dhCont'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QNFIde_xJust: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_xJust'
      Origin = 'Ide_xJust'
      Size = 250
    end
    object QNFEmit_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_CNPJCPF'
      Origin = 'Emit_CNPJCPF'
    end
    object QNFEmit_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_IE'
      Origin = 'Emit_IE'
    end
    object QNFEmit_xNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_xNome'
      Origin = 'Emit_xNome'
      Size = 60
    end
    object QNFEmit_xFant: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_xFant'
      Origin = 'Emit_xFant'
      Size = 60
    end
    object QNFEmit_EnderEmit_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_fone'
      Origin = 'Emit_EnderEmit_fone'
      Size = 14
    end
    object QNFmit_EnderEmit_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mit_EnderEmit_CEP'
      Origin = 'mit_EnderEmit_CEP'
      Size = 8
    end
    object QNFEmit_EnderEmit_xLgr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_xLgr'
      Origin = 'Emit_EnderEmit_xLgr'
      Size = 60
    end
    object QNFEmit_EnderEmit_nro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_nro'
      Origin = 'Emit_EnderEmit_nro'
      Size = 60
    end
    object QNFEmit_EnderEmit_xCpl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_xCpl'
      Origin = 'Emit_EnderEmit_xCpl'
      Size = 60
    end
    object QNFEmit_EnderEmit_xBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_xBairro'
      Origin = 'Emit_EnderEmit_xBairro'
      Size = 60
    end
    object QNFEmit_EnderEmit_cMun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_cMun'
      Origin = 'Emit_EnderEmit_cMun'
    end
    object QNFEmit_EnderEmit_xMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_xMun'
      Origin = 'Emit_EnderEmit_xMun'
      Size = 60
    end
    object QNFEmit_EnderEmit_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_UF'
      Origin = 'Emit_EnderEmit_UF'
      Size = 2
    end
    object QNFEmit_enderEmit_cPais: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_enderEmit_cPais'
      Origin = 'Emit_enderEmit_cPais'
    end
    object QNFEmit_enderEmit_xPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_enderEmit_xPais'
      Origin = 'Emit_enderEmit_xPais'
      Size = 60
    end
    object QNFEmit_IEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_IEST'
      Origin = 'Emit_IEST'
      Size = 14
    end
    object QNFEmit_IM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_IM'
      Origin = 'Emit_IM'
      Size = 15
    end
    object QNFEmit_CNAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_CNAE'
      Origin = 'Emit_CNAE'
      Size = 7
    end
    object QNFEmit_CRT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_CRT'
      Origin = 'Emit_CRT'
    end
    object QNFDest_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_CNPJCPF'
      Origin = 'Dest_CNPJCPF'
    end
    object QNFDest_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_IE'
      Origin = 'Dest_IE'
    end
    object QNFDest_ISUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_ISUF'
      Origin = 'Dest_ISUF'
    end
    object QNFDest_xNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_xNome'
      Origin = 'Dest_xNome'
      Size = 60
    end
    object QNFDest_EnderDest_Fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_Fone'
      Origin = 'Dest_EnderDest_Fone'
    end
    object QNFDest_EnderDest_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_CEP'
      Origin = 'Dest_EnderDest_CEP'
      Size = 10
    end
    object QNFDest_EnderDest_xLgr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_xLgr'
      Origin = 'Dest_EnderDest_xLgr'
      Size = 60
    end
    object QNFDest_EnderDest_nro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_nro'
      Origin = 'Dest_EnderDest_nro'
      Size = 60
    end
    object QNFDest_EnderDest_xCpl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_xCpl'
      Origin = 'Dest_EnderDest_xCpl'
      Size = 60
    end
    object QNFDest_EnderDest_xBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_xBairro'
      Origin = 'Dest_EnderDest_xBairro'
      Size = 60
    end
    object QNFDest_EnderDest_cMun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_cMun'
      Origin = 'Dest_EnderDest_cMun'
    end
    object QNFDest_EnderDest_xMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_xMun'
      Origin = 'Dest_EnderDest_xMun'
      Size = 60
    end
    object QNFDest_EnderDest_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_UF'
      Origin = 'Dest_EnderDest_UF'
      Size = 2
    end
    object QNFDest_EnderDest_cPais: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_cPais'
      Origin = 'Dest_EnderDest_cPais'
    end
    object QNFDest_EnderDest_xPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_xPais'
      Origin = 'Dest_EnderDest_xPais'
      Size = 60
    end
    object QNFRetirada_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_CNPJCPF'
      Origin = 'Retirada_CNPJCPF'
    end
    object QNFRetirada_xLgr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_xLgr'
      Origin = 'Retirada_xLgr'
      Size = 60
    end
    object QNFRetirada_nro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_nro'
      Origin = 'Retirada_nro'
      Size = 60
    end
    object QNFRetirada_xCpl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_xCpl'
      Origin = 'Retirada_xCpl'
      Size = 60
    end
    object QNFRetirada_xBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_xBairro'
      Origin = 'Retirada_xBairro'
      Size = 60
    end
    object QNFRetirada_cMun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_cMun'
      Origin = 'Retirada_cMun'
    end
    object QNFRetirada_xMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_xMun'
      Origin = 'Retirada_xMun'
      Size = 60
    end
    object QNFRetirada_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_UF'
      Origin = 'Retirada_UF'
      Size = 2
    end
    object QNFEntrega_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_CNPJCPF'
      Origin = 'Entrega_CNPJCPF'
    end
    object QNFEntrega_xLgr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_xLgr'
      Origin = 'Entrega_xLgr'
      Size = 60
    end
    object QNFEntrega_nro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_nro'
      Origin = 'Entrega_nro'
      Size = 60
    end
    object QNFEntrega_xCpl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_xCpl'
      Origin = 'Entrega_xCpl'
      Size = 60
    end
    object QNFEntrega_xBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_xBairro'
      Origin = 'Entrega_xBairro'
      Size = 60
    end
    object QNFEntrega_cMun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_cMun'
      Origin = 'Entrega_cMun'
    end
    object QNFEntrega_xMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_xMun'
      Origin = 'Entrega_xMun'
      Size = 60
    end
    object QNFEntrega_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_UF'
      Origin = 'Entrega_UF'
      Size = 2
    end
    object QNFmodFrete: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'modFrete'
      Origin = 'modFrete'
    end
    object QNFTransporta_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_CNPJCPF'
      Origin = 'Transporta_CNPJCPF'
    end
    object QNFTransporta_xNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_xNome'
      Origin = 'Transporta_xNome'
      Size = 60
    end
    object QNFTransporta_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_IE'
      Origin = 'Transporta_IE'
    end
    object QNFTransporta_xEnder: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_xEnder'
      Origin = 'Transporta_xEnder'
      Size = 60
    end
    object QNFTransporta_xMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_xMun'
      Origin = 'Transporta_xMun'
      Size = 60
    end
    object QNFTransporta_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_UF'
      Origin = 'Transporta_UF'
      Size = 2
    end
    object QNFretvServ: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retvServ'
      Origin = 'retvServ'
    end
    object QNFretvBCRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retvBCRet'
      Origin = 'retvBCRet'
    end
    object QNFretpICMSRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retpICMSRet'
      Origin = 'retpICMSRet'
    end
    object QNFretvICMSRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retvICMSRet'
      Origin = 'retvICMSRet'
    end
    object QNFretCFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'retCFOP'
      Origin = 'retCFOP'
      Size = 4
    end
    object QNFretcMunFG: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'retcMunFG'
      Origin = 'retcMunFG'
    end
    object QNFveicplaca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'veicplaca'
      Origin = 'veicplaca'
      Size = 10
    end
    object QNFveicUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'veicUF'
      Origin = 'veicUF'
      Size = 2
    end
    object QNFveicRNTC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'veicRNTC'
      Origin = 'veicRNTC'
    end
    object QNFnFat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nFat'
      Origin = 'nFat'
      Size = 60
    end
    object QNFvOrig: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vOrig'
      Origin = 'vOrig'
      DisplayFormat = '0.00#'
    end
    object QNFvDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vDesc'
      Origin = 'vDesc'
      DisplayFormat = '0.00#'
    end
    object QNFvLiq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vLiq'
      Origin = 'vLiq'
      DisplayFormat = '0.00#'
    end
    object QNFinfAdFisco: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'infAdFisco'
      Origin = 'infAdFisco'
      BlobType = ftMemo
    end
    object QNFinfCpl: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'infCpl'
      Origin = 'infCpl'
      BlobType = ftMemo
    end
    object QNFICMSTot_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vBC'
      Origin = 'ICMSTot_vBC'
      DisplayFormat = '0.00#'
    end
    object QNFICMSTot_vICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vICMS'
      Origin = 'ICMSTot_vICMS'
      DisplayFormat = '0.00#'
    end
    object QNFICMSTot_vBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vBCST'
      Origin = 'ICMSTot_vBCST'
      DisplayFormat = '0.00#'
    end
    object QNFICMSTot_vST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vST'
      Origin = 'ICMSTot_vST'
      DisplayFormat = '0.00#'
    end
    object QNFICMSTot_vProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vProd'
      Origin = 'ICMSTot_vProd'
      DisplayFormat = '0.00#'
    end
    object QNFICMSTot_vFrete: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vFrete'
      Origin = 'ICMSTot_vFrete'
      DisplayFormat = '0.00#'
    end
    object QNFICMSTot_vSeg: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vSeg'
      Origin = 'ICMSTot_vSeg'
      DisplayFormat = '0.00#'
    end
    object QNFICMSTot_vDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vDesc'
      Origin = 'ICMSTot_vDesc'
      DisplayFormat = '0.00#'
    end
    object QNFICMSTot_vII: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vII'
      Origin = 'ICMSTot_vII'
      DisplayFormat = '0.00#'
    end
    object QNFICMSTot_vIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vIPI'
      Origin = 'ICMSTot_vIPI'
      DisplayFormat = '0.00#'
    end
    object QNFICMSTot_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vPIS'
      Origin = 'ICMSTot_vPIS'
      DisplayFormat = '0.00#'
    end
    object QNFICMSTot_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vCOFINS'
      Origin = 'ICMSTot_vCOFINS'
      DisplayFormat = '0.00#'
    end
    object QNFICMSTot_vOutro: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vOutro'
      Origin = 'ICMSTot_vOutro'
      DisplayFormat = '0.00#'
    end
    object QNFICMSTot_vNF: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vNF'
      Origin = 'ICMSTot_vNF'
      DisplayFormat = '0.00#'
    end
    object QNFISSQNtot_vServ: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQNtot_vServ'
      Origin = 'ISSQNtot_vServ'
      DisplayFormat = '0.00#'
    end
    object QNFISSQNTot_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQNTot_vBC'
      Origin = 'ISSQNTot_vBC'
      DisplayFormat = '0.00#'
    end
    object QNFISSQNTot_vISS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQNTot_vISS'
      Origin = 'ISSQNTot_vISS'
      DisplayFormat = '0.00#'
    end
    object QNFISSQNTot_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQNTot_vPIS'
      Origin = 'ISSQNTot_vPIS'
      DisplayFormat = '0.00#'
    end
    object QNFISSQNTot_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQNTot_vCOFINS'
      Origin = 'ISSQNTot_vCOFINS'
      DisplayFormat = '0.00#'
    end
    object QNFretTrib_vRetPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vRetPIS'
      Origin = 'retTrib_vRetPIS'
      DisplayFormat = '0.00#'
    end
    object QNFretTrib_vRetCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vRetCOFINS'
      Origin = 'retTrib_vRetCOFINS'
      DisplayFormat = '0.00#'
    end
    object QNFretTrib_vRetCSLL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vRetCSLL'
      Origin = 'retTrib_vRetCSLL'
      DisplayFormat = '0.00#'
    end
    object QNFretTrib_vBCIRRF: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vBCIRRF'
      Origin = 'retTrib_vBCIRRF'
      DisplayFormat = '0.00#'
    end
    object QNFretTrib_vIRRF: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vIRRF'
      Origin = 'retTrib_vIRRF'
      DisplayFormat = '0.00#'
    end
    object QNFretTrib_vBCRetPrev: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vBCRetPrev'
      Origin = 'retTrib_vBCRetPrev'
      DisplayFormat = '0.00#'
    end
    object QNFretTrib_vRetPrev: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vRetPrev'
      Origin = 'retTrib_vRetPrev'
      DisplayFormat = '0.00#'
    end
    object QNFmd5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object QNFhash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
    object QNFstatus: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      OnGetText = QNFstatusGetText
    end
  end
  object QNF_Item: TFDQuery
    AfterInsert = QNF_ItemAfterInsert
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_item_entr where nf=:id')
    Left = 108
    Top = 60
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 14
      end>
    object QNF_Itemid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Itemnf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_ItemnItem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nItem'
      Origin = 'nItem'
    end
    object QNF_ItemcProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cProd'
      Origin = 'cProd'
      Size = 60
    end
    object QNF_ItemcEAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cEAN'
      Origin = 'cEAN'
    end
    object QNF_ItemxProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'xProd'
      Origin = 'xProd'
      Size = 120
    end
    object QNF_ItemNCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object QNF_ItemEXTIPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EXTIPI'
      Origin = 'EXTIPI'
      Size = 3
    end
    object QNF_ItemCFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object QNF_ItemuCom: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uCom'
      Origin = 'uCom'
      Size = 6
    end
    object QNF_ItemqCom: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qCom'
      Origin = 'qCom'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemvUnCom: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vUnCom'
      Origin = 'vUnCom'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemvProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vProd'
      Origin = 'vProd'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemcEANTrib: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cEANTrib'
      Origin = 'cEANTrib'
    end
    object QNF_ItemuTrib: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uTrib'
      Origin = 'uTrib'
      Size = 6
    end
    object QNF_ItemqTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qTrib'
      Origin = 'qTrib'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemvUnTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vUnTrib'
      Origin = 'vUnTrib'
    end
    object QNF_ItemvOutro: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vOutro'
      Origin = 'vOutro'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemvFrete: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vFrete'
      Origin = 'vFrete'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemvSeg: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vSeg'
      Origin = 'vSeg'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemvDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vDesc'
      Origin = 'vDesc'
      DisplayFormat = '0.00#'
    end
    object QNF_IteminfAdProd: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'infAdProd'
      Origin = 'infAdProd'
      BlobType = ftMemo
    end
    object QNF_ItemICMS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
      OnGetText = QNF_ItemICMS_CSTGetText
    end
    object QNF_ItemICMS_orig: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_orig'
      Origin = 'ICMS_orig'
    end
    object QNF_ItemICMS_modBC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBC'
      Origin = 'ICMS_modBC'
    end
    object QNF_ItemICMS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBC'
      Origin = 'ICMS_vBC'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_pICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMS'
      Origin = 'ICMS_vICMS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_CSOSN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
    end
    object QNF_ItemICMS_pCredSN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pCredSN'
      Origin = 'ICMS_pCredSN'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vCredICMSSN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vCredICMSSN'
      Origin = 'ICMS_vCredICMSSN'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_modBCST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBCST'
      Origin = 'ICMS_modBCST'
    end
    object QNF_ItemICMS_pMVAST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pMVAST'
      Origin = 'ICMS_pMVAST'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vTabelaST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vTabelaST'
      Origin = 'ICMS_vTabelaST'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_pRedBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBCST'
      Origin = 'ICMS_pRedBCST'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCST'
      Origin = 'ICMS_vBCST'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_pICMSST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMSST'
      Origin = 'ICMS_pICMSST'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vICMSST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSST'
      Origin = 'ICMS_vICMSST'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_pRedBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBC'
      Origin = 'ICMS_pRedBC'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemIPI_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CST'
      Origin = 'IPI_CST'
    end
    object QNF_ItemIPI_clEnq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_clEnq'
      Origin = 'IPI_clEnq'
      Size = 5
    end
    object QNF_ItemIPI_CNPJProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CNPJProd'
      Origin = 'IPI_CNPJProd'
    end
    object QNF_ItemIPI_cSelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cSelo'
      Origin = 'IPI_cSelo'
      Size = 60
    end
    object QNF_ItemIPI_qSelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qSelo'
      Origin = 'IPI_qSelo'
    end
    object QNF_ItemIPI_cEnq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cEnq'
      Origin = 'IPI_cEnq'
      Size = 3
    end
    object QNF_ItemIPI_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vBC'
      Origin = 'IPI_vBC'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemIPI_qUnid: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qUnid'
      Origin = 'IPI_qUnid'
    end
    object QNF_ItemIPI_vUnid: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vUnid'
      Origin = 'IPI_vUnid'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemIPI_pIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_pIPI'
      Origin = 'IPI_pIPI'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemIPI_vIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vIPI'
      Origin = 'IPI_vIPI'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemII_vBc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vBc'
      Origin = 'II_vBc'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemII_vDespAdu: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vDespAdu'
      Origin = 'II_vDespAdu'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemII_vII: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vII'
      Origin = 'II_vII'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemII_vIOF: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vIOF'
      Origin = 'II_vIOF'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPIS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
      OnGetText = QNF_ItemPIS_CSTGetText
    end
    object QNF_ItemPIS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vBC'
      Origin = 'PIS_vBC'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPIS_pPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_pPIS'
      Origin = 'PIS_pPIS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPIS_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vPIS'
      Origin = 'PIS_vPIS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPIS_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_qBCProd'
      Origin = 'PIS_qBCProd'
    end
    object QNF_ItemPIS_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vAliqProd'
      Origin = 'PIS_vAliqProd'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPISST_vBc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vBc'
      Origin = 'PISST_vBc'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPISST_pPis: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_pPis'
      Origin = 'PISST_pPis'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPISST_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_qBCProd'
      Origin = 'PISST_qBCProd'
    end
    object QNF_ItemPISST_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vAliqProd'
      Origin = 'PISST_vAliqProd'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPISST_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vPIS'
      Origin = 'PISST_vPIS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
      OnGetText = QNF_ItemCOFINS_CSTGetText
    end
    object QNF_ItemCOFINS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vBC'
      Origin = 'COFINS_vBC'
    end
    object QNF_ItemCOFINS_pCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_pCOFINS'
      Origin = 'COFINS_pCOFINS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINS_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vCOFINS'
      Origin = 'COFINS_vCOFINS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINS_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_qBCProd'
      Origin = 'COFINS_qBCProd'
    end
    object QNF_ItemCOFINS_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vAliqProd'
      Origin = 'COFINS_vAliqProd'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINSST_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vBC'
      Origin = 'COFINSST_vBC'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINSST_pCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_pCOFINS'
      Origin = 'COFINSST_pCOFINS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINSST_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_qBCProd'
      Origin = 'COFINSST_qBCProd'
    end
    object QNF_ItemCOFINSST_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vAliqProd'
      Origin = 'COFINSST_vAliqProd'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINSST_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vCOFINS'
      Origin = 'COFINSST_vCOFINS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemISSQN_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vBC'
      Origin = 'ISSQN_vBC'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemISSQN_vAliq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vAliq'
      Origin = 'ISSQN_vAliq'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemISSQN_vISSQN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vISSQN'
      Origin = 'ISSQN_vISSQN'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemISSQN_cMunFG: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cMunFG'
      Origin = 'ISSQN_cMunFG'
    end
    object QNF_ItemISSQN_cListServ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cListServ'
      Origin = 'ISSQN_cListServ'
    end
    object QNF_ItemISSQN_SitTrib: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_SitTrib'
      Origin = 'ISSQN_SitTrib'
    end
    object QNF_ItemQTD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTD'
      Origin = 'QTD'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST_inform'
      Origin = 'ICMS_CST_inform'
      OnGetText = QNF_ItemICMS_CSTGetText
    end
    object QNF_ItemICMS_orig_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_orig_inform'
      Origin = 'ICMS_orig_inform'
    end
    object QNF_ItemICMS_modBC_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBC_inform'
      Origin = 'ICMS_modBC_inform'
    end
    object QNF_ItemICMS_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBC_inform'
      Origin = 'ICMS_vBC_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_pICMS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS_inform'
      Origin = 'ICMS_pICMS_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vICMS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMS_inform'
      Origin = 'ICMS_vICMS_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_CSOSN_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CSOSN_inform'
      Origin = 'ICMS_CSOSN_inform'
      OnGetText = QNF_ItemICMS_CSOSNGetText
    end
    object QNF_ItemICMS_pCredSN_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pCredSN_inform'
      Origin = 'ICMS_pCredSN_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vCredICMSSN_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vCredICMSSN_inform'
      Origin = 'ICMS_vCredICMSSN_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_modBCST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBCST_inform'
      Origin = 'ICMS_modBCST_inform'
    end
    object QNF_ItemICMS_pMVAST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pMVAST_inform'
      Origin = 'ICMS_pMVAST_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vTabelaST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vTabelaST_inform'
      Origin = 'ICMS_vTabelaST_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_pRedBCST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBCST_inform'
      Origin = 'ICMS_pRedBCST_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vBCST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCST_inform'
      Origin = 'ICMS_vBCST_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_pICMSST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMSST_inform'
      Origin = 'ICMS_pICMSST_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vICMSST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSST_inform'
      Origin = 'ICMS_vICMSST_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_pRedBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBC_inform'
      Origin = 'ICMS_pRedBC_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemIPI_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CST_inform'
      Origin = 'IPI_CST_inform'
    end
    object QNF_ItemIPI_clEnq_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_clEnq_inform'
      Origin = 'IPI_clEnq_inform'
      Size = 5
    end
    object QNF_ItemIPI_CNPJProd_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CNPJProd_inform'
      Origin = 'IPI_CNPJProd_inform'
    end
    object QNF_ItemIPI_cSelo_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cSelo_inform'
      Origin = 'IPI_cSelo_inform'
      Size = 60
    end
    object QNF_ItemIPI_qSelo_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qSelo_inform'
      Origin = 'IPI_qSelo_inform'
    end
    object QNF_ItemIPI_cEnq_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cEnq_inform'
      Origin = 'IPI_cEnq_inform'
      Size = 3
    end
    object QNF_ItemIPI_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vBC_inform'
      Origin = 'IPI_vBC_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemIPI_qUnid_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qUnid_inform'
      Origin = 'IPI_qUnid_inform'
    end
    object QNF_ItemIPI_vUnid_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vUnid_inform'
      Origin = 'IPI_vUnid_inform'
    end
    object QNF_ItemIPI_pIPI_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_pIPI_inform'
      Origin = 'IPI_pIPI_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemIPI_vIPI_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vIPI_inform'
      Origin = 'IPI_vIPI_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemII_vBc_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vBc_inform'
      Origin = 'II_vBc_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemII_vDespAdu_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vDespAdu_inform'
      Origin = 'II_vDespAdu_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemII_vII_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vII_inform'
      Origin = 'II_vII_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemII_vIOF_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vIOF_inform'
      Origin = 'II_vIOF_inform'
    end
    object QNF_ItemPIS_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_CST_inform'
      Origin = 'PIS_CST_inform'
      OnGetText = QNF_ItemPIS_CSTGetText
    end
    object QNF_ItemPIS_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vBC_inform'
      Origin = 'PIS_vBC_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPIS_pPIS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_pPIS_inform'
      Origin = 'PIS_pPIS_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPIS_vPIS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vPIS_inform'
      Origin = 'PIS_vPIS_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPIS_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_qBCProd_inform'
      Origin = 'PIS_qBCProd_inform'
    end
    object QNF_ItemPIS_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vAliqProd_inform'
      Origin = 'PIS_vAliqProd_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPISST_vBc_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vBc_inform'
      Origin = 'PISST_vBc_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPISST_pPis_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_pPis_inform'
      Origin = 'PISST_pPis_inform'
    end
    object QNF_ItemPISST_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_qBCProd_inform'
      Origin = 'PISST_qBCProd_inform'
    end
    object QNF_ItemPISST_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vAliqProd_inform'
      Origin = 'PISST_vAliqProd_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPISST_vPIS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vPIS_inform'
      Origin = 'PISST_vPIS_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINS_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_CST_inform'
      Origin = 'COFINS_CST_inform'
      OnGetText = QNF_ItemCOFINS_CSTGetText
    end
    object QNF_ItemCOFINS_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vBC_inform'
      Origin = 'COFINS_vBC_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINS_pCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_pCOFINS_inform'
      Origin = 'COFINS_pCOFINS_inform'
    end
    object QNF_ItemCOFINS_vCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vCOFINS_inform'
      Origin = 'COFINS_vCOFINS_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINS_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_qBCProd_inform'
      Origin = 'COFINS_qBCProd_inform'
    end
    object QNF_ItemCOFINS_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vAliqProd_inform'
      Origin = 'COFINS_vAliqProd_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINSST_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vBC_inform'
      Origin = 'COFINSST_vBC_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINSST_pCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_pCOFINS_inform'
      Origin = 'COFINSST_pCOFINS_inform'
    end
    object QNF_ItemCOFINSST_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_qBCProd_inform'
      Origin = 'COFINSST_qBCProd_inform'
    end
    object QNF_ItemCOFINSST_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vAliqProd_inform'
      Origin = 'COFINSST_vAliqProd_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINSST_vCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vCOFINS_inform'
      Origin = 'COFINSST_vCOFINS_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemISSQN_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vBC_inform'
      Origin = 'ISSQN_vBC_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemISSQN_vAliq_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vAliq_inform'
      Origin = 'ISSQN_vAliq_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemISSQN_vISSQN_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vISSQN_inform'
      Origin = 'ISSQN_vISSQN_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemISSQN_cMunFG_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cMunFG_inform'
      Origin = 'ISSQN_cMunFG_inform'
    end
    object QNF_ItemISSQN_cListServ_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cListServ_inform'
      Origin = 'ISSQN_cListServ_inform'
    end
    object QNF_ItemISSQN_SitTrib_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_SitTrib_inform'
      Origin = 'ISSQN_SitTrib_inform'
    end
    object QNF_ItemICMS_vBCSTRet_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCSTRet_inform'
      Origin = 'ICMS_vBCSTRet_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vICMSSTRet_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSSTRet_inform'
      Origin = 'ICMS_vICMSSTRet_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCFOP_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP_inform'
      Origin = 'CFOP_inform'
      Size = 4
    end
    object QNF_Itemmd5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object QNF_Itemhash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
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
    object QNF_ItemPIS_codrec: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_codrec'
      Origin = 'PIS_codrec'
    end
  end
  object DSNF_Item: TDataSource
    DataSet = QNF_Item
    Left = 204
    Top = 60
  end
  object DSNF: TDataSource
    DataSet = QNF
    Left = 204
    Top = 8
  end
  object QNF_Duplicata: TFDQuery
    AfterInsert = QNF_DuplicataAfterInsert
    AfterPost = QNF_DuplicataAfterPost
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_duplicata_entr where nf=:id')
    Left = 108
    Top = 175
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 14
      end>
    object QNF_Duplicataid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Duplicatanf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_DuplicatanDup: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nDup'
      Origin = 'nDup'
      Size = 60
    end
    object QNF_DuplicatavDup: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vDup'
      Origin = 'vDup'
    end
    object QNF_DuplicaTFDVenc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dVenc'
      Origin = 'dVenc'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object QNF_Reboque: TFDQuery
    AfterInsert = QNF_ReboqueAfterInsert
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_reboque_entr where nf=:id')
    Left = 108
    Top = 223
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 14
      end>
    object QNF_Reboqueid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Reboquenf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_Reboqueplaca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'placa'
      Origin = 'placa'
      Size = 10
    end
    object QNF_Reboqueuf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object QNF_Reboquerntc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rntc'
      Origin = 'rntc'
    end
    object QNF_Reboquevagao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'vagao'
      Origin = 'vagao'
    end
    object QNF_Reboquebalsa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'balsa'
      Origin = 'balsa'
    end
  end
  object QNF_Referenciada: TFDQuery
    AfterInsert = QNF_ReferenciadaAfterInsert
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_referenciada_entr where nf=:id')
    Left = 108
    Top = 271
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 14
      end>
    object QNF_Referenciadaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Referenciadanf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_ReferenciadarefNFe: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'refNFe'
      Origin = 'refNFe'
      Size = 44
    end
    object QNF_ReferenciadaRefNF_cUF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_cUF'
      Origin = 'RefNF_cUF'
    end
    object QNF_ReferenciadaRefNF_AAMM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_AAMM'
      Origin = 'RefNF_AAMM'
      Size = 5
    end
    object QNF_ReferenciadaRefNF_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_CNPJ'
      Origin = 'RefNF_CNPJ'
    end
    object QNF_ReferenciadaRefNF_modelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_modelo'
      Origin = 'RefNF_modelo'
    end
    object QNF_ReferenciadaRefNF_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_serie'
      Origin = 'RefNF_serie'
    end
    object QNF_ReferenciadaRefNF_nNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNF_nNF'
      Origin = 'RefNF_nNF'
    end
    object QNF_ReferenciadaRefNFP_cUF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_cUF'
      Origin = 'RefNFP_cUF'
    end
    object QNF_ReferenciadaRefNFP_AAMM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_AAMM'
      Origin = 'RefNFP_AAMM'
      Size = 5
    end
    object QNF_ReferenciadaRefNFP_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_CNPJCPF'
      Origin = 'RefNFP_CNPJCPF'
    end
    object QNF_ReferenciadaRefNFP_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_IE'
      Origin = 'RefNFP_IE'
    end
    object QNF_ReferenciadaRefNFP_modelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_modelo'
      Origin = 'RefNFP_modelo'
    end
    object QNF_ReferenciadaRefNFP_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_serie'
      Origin = 'RefNFP_serie'
    end
    object QNF_ReferenciadaRefNFP_nNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefNFP_nNF'
      Origin = 'RefNFP_nNF'
    end
    object QNF_ReferenciadaRefECF_modelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_modelo'
      Origin = 'RefECF_modelo'
    end
    object QNF_ReferenciadaRefECF_nECF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_nECF'
      Origin = 'RefECF_nECF'
      Size = 10
    end
    object QNF_ReferenciadaRefECF_nCOO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_nCOO'
      Origin = 'RefECF_nCOO'
      Size = 10
    end
    object QNF_ReferenciadaRefECF_data: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_data'
      Origin = 'RefECF_data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QNF_ReferenciadaRefECF_Serie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefECF_Serie'
      Origin = 'RefECF_Serie'
    end
    object QNF_ReferenciadaRefCte: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RefCte'
      Origin = 'RefCte'
      Size = 44
    end
  end
  object QNF_Volume: TFDQuery
    AfterInsert = QNF_VolumeAfterInsert
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_volumes_entr where nf=:id')
    Left = 108
    Top = 318
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 14
      end>
    object QNF_Volumeid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Volumenf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_VolumeqVol: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qVol'
      Origin = 'qVol'
    end
    object QNF_Volumeespecie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'especie'
      Origin = 'especie'
      Size = 60
    end
    object QNF_Volumemarca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca'
      Origin = 'marca'
      Size = 60
    end
    object QNF_VolumenVol: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nVol'
      Origin = 'nVol'
      Size = 60
    end
    object QNF_VolumepesoL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pesoL'
      Origin = 'pesoL'
    end
    object QNF_VolumepesoB: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pesoB'
      Origin = 'pesoB'
    end
  end
  object QNF_Lacre: TFDQuery
    AfterInsert = QNF_LacreAfterInsert
    MasterSource = DSNF_Volume
    MasterFields = 'id'
    DetailFields = 'vol'
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_vol_lacre_entr where vol=:id')
    Left = 108
    Top = 367
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
      AutoGenerateValue = arDefault
      FieldName = 'vol'
      Origin = 'vol'
    end
    object QNF_Lacrenlacre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nlacre'
      Origin = 'nlacre'
      Size = 60
    end
  end
  object DSNF_Volume: TDataSource
    DataSet = QNF_Volume
    Left = 204
    Top = 318
  end
  object DScdNF: TDataSource
    DataSet = cdNF
    Left = 462
    Top = 8
  end
  object DScdNF_Item: TDataSource
    DataSet = cdNF_Item
    Left = 462
    Top = 60
  end
  object DScdNF_Duplicata: TDataSource
    DataSet = cdNF_Duplicata
    Left = 462
    Top = 175
  end
  object DScdNF_Referenciada: TDataSource
    DataSet = cdNF_Reboque
    Left = 462
    Top = 271
  end
  object DScdNF_Reboque: TDataSource
    DataSet = cdNF_Reboque
    Left = 462
    Top = 223
  end
  object DScdNF_Lacre: TDataSource
    DataSet = cdNF_Lacre
    Left = 462
    Top = 367
  end
  object DScdNF_Volume: TDataSource
    DataSet = cdNF_Volume
    Left = 462
    Top = 318
  end
  object QNF_Chave: TFDQuery
    AfterInsert = QNF_ChaveAfterInsert
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_chave_entr where nf=:id')
    Left = 108
    Top = 419
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 14
      end>
    object QNF_Chaveid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Chavenf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_Chavechave: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'chave'
      Origin = 'chave'
      Size = 50
    end
    object QNF_Chaverecibo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'recibo'
      Origin = 'recibo'
      Size = 50
    end
    object QNF_Chaveprotocolo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'protocolo'
      Origin = 'protocolo'
      Size = 50
    end
    object QNF_Chavecstat: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cstat'
      Origin = 'cstat'
    end
    object QNF_Chavestatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
    end
  end
  object DScdNF_Chave: TDataSource
    DataSet = cdNF_Chave
    Left = 462
    Top = 419
  end
  object NFE1: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 20
    Top = 120
  end
  object DSNF_Chave: TDataSource
    DataSet = QNF_Chave
    Left = 204
    Top = 419
  end
  object QNF_Item_Med: TFDQuery
    AfterInsert = QNF_Item_MedAfterInsert
    MasterSource = DSNF_Item
    MasterFields = 'id'
    DetailFields = 'item'
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_item_med_entr where item=:id')
    Left = 108
    Top = 120
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 19
      end>
    object QNF_Item_Medid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Item_Meditem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'item'
      Origin = 'item'
    end
    object QNF_Item_Mednlote: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nlote'
      Origin = 'nlote'
    end
    object QNF_Item_Medqlote: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qlote'
      Origin = 'qlote'
    end
    object QNF_Item_Meddfab: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dfab'
      Origin = 'dfab'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QNF_Item_Meddven: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dven'
      Origin = 'dven'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QNF_Item_Medvpmc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vpmc'
      Origin = 'vpmc'
    end
  end
  object DSNF_Item_Med: TDataSource
    DataSet = QNF_Item
    Left = 204
    Top = 120
  end
  object DScdNF_Item_Med: TDataSource
    DataSet = cdNF_Item_Med
    Left = 462
    Top = 120
  end
  object DScdNF_Guia_Arrec: TDataSource
    DataSet = cdNF_Guia_Arrec
    Left = 462
    Top = 468
  end
  object QNF_Guia_Arrec: TFDQuery
    AfterInsert = QNF_Guia_ArrecAfterInsert
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_guia_arrec_entr where nf=:id')
    Left = 112
    Top = 468
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 14
      end>
    object QNF_Guia_Arrecid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Guia_Arrecnf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_Guia_Arreccod_da: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_da'
      Origin = 'cod_da'
    end
    object QNF_Guia_Arrecuf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object QNF_Guia_Arrecnmro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmro'
      Origin = 'nmro'
      Size = 30
    end
    object QNF_Guia_Arreccod_aut: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_aut'
      Origin = 'cod_aut'
      Size = 50
    end
    object QNF_Guia_Arrecvalor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
    end
    object QNF_Guia_Arrecdt_venc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_venc'
      Origin = 'dt_venc'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QNF_Guia_Arrecdt_pag: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_pag'
      Origin = 'dt_pag'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object DSNF_Guia_Arrec: TDataSource
    DataSet = QNF_Guia_Arrec
    Left = 204
    Top = 468
  end
  object cdNF: TFDQuery
    AfterInsert = cdNFAfterInsert
    BeforePost = cdNFBeforePost
    Connection = DB
    SQL.Strings = (
      'select * from nf order by id desc limit 1;')
    Left = 352
    Top = 8
    object cdNFid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdNFIde_cNF: TIntegerField
      FieldName = 'Ide_cNF'
      Origin = 'Ide_cNF'
    end
    object cdNFIde_natOp: TStringField
      FieldName = 'Ide_natOp'
      Origin = 'Ide_natOp'
      Size = 60
    end
    object cdNFIde_indPag: TIntegerField
      FieldName = 'Ide_indPag'
      Origin = 'Ide_indPag'
    end
    object cdNFIde_modelo: TIntegerField
      FieldName = 'Ide_modelo'
      Origin = 'Ide_modelo'
    end
    object cdNFIde_serie: TIntegerField
      FieldName = 'Ide_serie'
      Origin = 'Ide_serie'
      DisplayFormat = '000'
    end
    object cdNFIde_nNF: TIntegerField
      FieldName = 'Ide_nNF'
      Origin = 'Ide_nNF'
      DisplayFormat = '000,000'
    end
    object cdNFIde_dEmi: TDateField
      FieldName = 'Ide_dEmi'
      Origin = 'Ide_dEmi'
    end
    object cdNFIde_dSaiEnt: TDateField
      FieldName = 'Ide_dSaiEnt'
      Origin = 'Ide_dSaiEnt'
    end
    object cdNFIde_tpNF: TIntegerField
      FieldName = 'Ide_tpNF'
      Origin = 'Ide_tpNF'
    end
    object cdNFIde_tpEmis: TIntegerField
      FieldName = 'Ide_tpEmis'
      Origin = 'Ide_tpEmis'
    end
    object cdNFIde_tpAmb: TIntegerField
      FieldName = 'Ide_tpAmb'
      Origin = 'Ide_tpAmb'
    end
    object cdNFIde_verProc: TStringField
      FieldName = 'Ide_verProc'
      Origin = 'Ide_verProc'
    end
    object cdNFIde_cUF: TIntegerField
      FieldName = 'Ide_cUF'
      Origin = 'Ide_cUF'
    end
    object cdNFIde_cMunFG: TStringField
      FieldName = 'Ide_cMunFG'
      Origin = 'Ide_cMunFG'
      Size = 60
    end
    object cdNFIde_finNFe: TIntegerField
      FieldName = 'Ide_finNFe'
      Origin = 'Ide_finNFe'
    end
    object cdNFIde_dhCont: TDateField
      FieldName = 'Ide_dhCont'
      Origin = 'Ide_dhCont'
    end
    object cdNFIde_xJust: TStringField
      FieldName = 'Ide_xJust'
      Origin = 'Ide_xJust'
      Size = 250
    end
    object cdNFEmit_CNPJCPF: TStringField
      FieldName = 'Emit_CNPJCPF'
      Origin = 'Emit_CNPJCPF'
    end
    object cdNFEmit_IE: TStringField
      FieldName = 'Emit_IE'
      Origin = 'Emit_IE'
    end
    object cdNFEmit_xNome: TStringField
      FieldName = 'Emit_xNome'
      Origin = 'Emit_xNome'
      Size = 60
    end
    object cdNFEmit_xFant: TStringField
      FieldName = 'Emit_xFant'
      Origin = 'Emit_xFant'
      Size = 60
    end
    object cdNFEmit_EnderEmit_fone: TStringField
      FieldName = 'Emit_EnderEmit_fone'
      Origin = 'Emit_EnderEmit_fone'
      Size = 14
    end
    object cdNFmit_EnderEmit_CEP: TStringField
      FieldName = 'mit_EnderEmit_CEP'
      Origin = 'mit_EnderEmit_CEP'
      Size = 8
    end
    object cdNFEmit_EnderEmit_xLgr: TStringField
      FieldName = 'Emit_EnderEmit_xLgr'
      Origin = 'Emit_EnderEmit_xLgr'
      Size = 60
    end
    object cdNFEmit_EnderEmit_nro: TStringField
      FieldName = 'Emit_EnderEmit_nro'
      Origin = 'Emit_EnderEmit_nro'
      Size = 60
    end
    object cdNFEmit_EnderEmit_xCpl: TStringField
      FieldName = 'Emit_EnderEmit_xCpl'
      Origin = 'Emit_EnderEmit_xCpl'
      Size = 60
    end
    object cdNFEmit_EnderEmit_xBairro: TStringField
      FieldName = 'Emit_EnderEmit_xBairro'
      Origin = 'Emit_EnderEmit_xBairro'
      Size = 60
    end
    object cdNFEmit_EnderEmit_cMun: TIntegerField
      FieldName = 'Emit_EnderEmit_cMun'
      Origin = 'Emit_EnderEmit_cMun'
    end
    object cdNFEmit_EnderEmit_xMun: TStringField
      FieldName = 'Emit_EnderEmit_xMun'
      Origin = 'Emit_EnderEmit_xMun'
      Size = 60
    end
    object cdNFEmit_EnderEmit_UF: TStringField
      FieldName = 'Emit_EnderEmit_UF'
      Origin = 'Emit_EnderEmit_UF'
      Size = 2
    end
    object cdNFEmit_enderEmit_cPais: TIntegerField
      FieldName = 'Emit_enderEmit_cPais'
      Origin = 'Emit_enderEmit_cPais'
    end
    object cdNFEmit_enderEmit_xPais: TStringField
      FieldName = 'Emit_enderEmit_xPais'
      Origin = 'Emit_enderEmit_xPais'
      Size = 60
    end
    object cdNFEmit_IEST: TStringField
      FieldName = 'Emit_IEST'
      Origin = 'Emit_IEST'
      Size = 14
    end
    object cdNFEmit_IM: TStringField
      FieldName = 'Emit_IM'
      Origin = 'Emit_IM'
      Size = 15
    end
    object cdNFEmit_CNAE: TStringField
      FieldName = 'Emit_CNAE'
      Origin = 'Emit_CNAE'
      Size = 7
    end
    object cdNFEmit_CRT: TIntegerField
      FieldName = 'Emit_CRT'
      Origin = 'Emit_CRT'
    end
    object cdNFDest_CNPJCPF: TStringField
      FieldName = 'Dest_CNPJCPF'
      Origin = 'Dest_CNPJCPF'
    end
    object cdNFDest_IE: TStringField
      FieldName = 'Dest_IE'
      Origin = 'Dest_IE'
    end
    object cdNFDest_ISUF: TStringField
      FieldName = 'Dest_ISUF'
      Origin = 'Dest_ISUF'
    end
    object cdNFDest_xNome: TStringField
      FieldName = 'Dest_xNome'
      Origin = 'Dest_xNome'
      Size = 60
    end
    object cdNFDest_EnderDest_Fone: TStringField
      FieldName = 'Dest_EnderDest_Fone'
      Origin = 'Dest_EnderDest_Fone'
    end
    object cdNFDest_EnderDest_CEP: TStringField
      FieldName = 'Dest_EnderDest_CEP'
      Origin = 'Dest_EnderDest_CEP'
      Size = 10
    end
    object cdNFDest_EnderDest_xLgr: TStringField
      FieldName = 'Dest_EnderDest_xLgr'
      Origin = 'Dest_EnderDest_xLgr'
      Size = 60
    end
    object cdNFDest_EnderDest_nro: TStringField
      FieldName = 'Dest_EnderDest_nro'
      Origin = 'Dest_EnderDest_nro'
      Size = 60
    end
    object cdNFDest_EnderDest_xCpl: TStringField
      FieldName = 'Dest_EnderDest_xCpl'
      Origin = 'Dest_EnderDest_xCpl'
      Size = 60
    end
    object cdNFDest_EnderDest_xBairro: TStringField
      FieldName = 'Dest_EnderDest_xBairro'
      Origin = 'Dest_EnderDest_xBairro'
      Size = 60
    end
    object cdNFDest_EnderDest_cMun: TIntegerField
      FieldName = 'Dest_EnderDest_cMun'
      Origin = 'Dest_EnderDest_cMun'
    end
    object cdNFDest_EnderDest_xMun: TStringField
      FieldName = 'Dest_EnderDest_xMun'
      Origin = 'Dest_EnderDest_xMun'
      Size = 60
    end
    object cdNFDest_EnderDest_UF: TStringField
      FieldName = 'Dest_EnderDest_UF'
      Origin = 'Dest_EnderDest_UF'
      Size = 2
    end
    object cdNFDest_EnderDest_cPais: TIntegerField
      FieldName = 'Dest_EnderDest_cPais'
      Origin = 'Dest_EnderDest_cPais'
    end
    object cdNFDest_EnderDest_xPais: TStringField
      FieldName = 'Dest_EnderDest_xPais'
      Origin = 'Dest_EnderDest_xPais'
      Size = 60
    end
    object cdNFRetirada_CNPJCPF: TStringField
      FieldName = 'Retirada_CNPJCPF'
      Origin = 'Retirada_CNPJCPF'
    end
    object cdNFRetirada_xLgr: TStringField
      FieldName = 'Retirada_xLgr'
      Origin = 'Retirada_xLgr'
      Size = 60
    end
    object cdNFRetirada_nro: TStringField
      FieldName = 'Retirada_nro'
      Origin = 'Retirada_nro'
      Size = 60
    end
    object cdNFRetirada_xCpl: TStringField
      FieldName = 'Retirada_xCpl'
      Origin = 'Retirada_xCpl'
      Size = 60
    end
    object cdNFRetirada_xBairro: TStringField
      FieldName = 'Retirada_xBairro'
      Origin = 'Retirada_xBairro'
      Size = 60
    end
    object cdNFRetirada_cMun: TIntegerField
      FieldName = 'Retirada_cMun'
      Origin = 'Retirada_cMun'
    end
    object cdNFRetirada_xMun: TStringField
      FieldName = 'Retirada_xMun'
      Origin = 'Retirada_xMun'
      Size = 60
    end
    object cdNFRetirada_UF: TStringField
      FieldName = 'Retirada_UF'
      Origin = 'Retirada_UF'
      Size = 2
    end
    object cdNFEntrega_CNPJCPF: TStringField
      FieldName = 'Entrega_CNPJCPF'
      Origin = 'Entrega_CNPJCPF'
    end
    object cdNFEntrega_xLgr: TStringField
      FieldName = 'Entrega_xLgr'
      Origin = 'Entrega_xLgr'
      Size = 60
    end
    object cdNFEntrega_nro: TStringField
      FieldName = 'Entrega_nro'
      Origin = 'Entrega_nro'
      Size = 60
    end
    object cdNFEntrega_xCpl: TStringField
      FieldName = 'Entrega_xCpl'
      Origin = 'Entrega_xCpl'
      Size = 60
    end
    object cdNFEntrega_xBairro: TStringField
      FieldName = 'Entrega_xBairro'
      Origin = 'Entrega_xBairro'
      Size = 60
    end
    object cdNFEntrega_cMun: TIntegerField
      FieldName = 'Entrega_cMun'
      Origin = 'Entrega_cMun'
    end
    object cdNFEntrega_xMun: TStringField
      FieldName = 'Entrega_xMun'
      Origin = 'Entrega_xMun'
      Size = 60
    end
    object cdNFEntrega_UF: TStringField
      FieldName = 'Entrega_UF'
      Origin = 'Entrega_UF'
      Size = 2
    end
    object cdNFmodFrete: TIntegerField
      FieldName = 'modFrete'
      Origin = 'modFrete'
    end
    object cdNFTransporta_CNPJCPF: TStringField
      FieldName = 'Transporta_CNPJCPF'
      Origin = 'Transporta_CNPJCPF'
    end
    object cdNFTransporta_xNome: TStringField
      FieldName = 'Transporta_xNome'
      Origin = 'Transporta_xNome'
      Size = 60
    end
    object cdNFTransporta_IE: TStringField
      FieldName = 'Transporta_IE'
      Origin = 'Transporta_IE'
    end
    object cdNFTransporta_xEnder: TStringField
      FieldName = 'Transporta_xEnder'
      Origin = 'Transporta_xEnder'
      Size = 60
    end
    object cdNFTransporta_xMun: TStringField
      FieldName = 'Transporta_xMun'
      Origin = 'Transporta_xMun'
      Size = 60
    end
    object cdNFTransporta_UF: TStringField
      FieldName = 'Transporta_UF'
      Origin = 'Transporta_UF'
      Size = 2
    end
    object cdNFretvServ: TFloatField
      FieldName = 'retvServ'
      Origin = 'retvServ'
    end
    object cdNFretvBCRet: TFloatField
      FieldName = 'retvBCRet'
      Origin = 'retvBCRet'
    end
    object cdNFretpICMSRet: TFloatField
      FieldName = 'retpICMSRet'
      Origin = 'retpICMSRet'
    end
    object cdNFretvICMSRet: TFloatField
      FieldName = 'retvICMSRet'
      Origin = 'retvICMSRet'
    end
    object cdNFretCFOP: TStringField
      FieldName = 'retCFOP'
      Origin = 'retCFOP'
      Size = 4
    end
    object cdNFretcMunFG: TIntegerField
      FieldName = 'retcMunFG'
      Origin = 'retcMunFG'
    end
    object cdNFveicplaca: TStringField
      FieldName = 'veicplaca'
      Origin = 'veicplaca'
      Size = 10
    end
    object cdNFveicUF: TStringField
      FieldName = 'veicUF'
      Origin = 'veicUF'
      Size = 2
    end
    object cdNFveicRNTC: TStringField
      FieldName = 'veicRNTC'
      Origin = 'veicRNTC'
    end
    object cdNFnFat: TStringField
      FieldName = 'nFat'
      Origin = 'nFat'
      Size = 60
    end
    object cdNFvOrig: TFloatField
      FieldName = 'vOrig'
      Origin = 'vOrig'
      DisplayFormat = '0.00#'
    end
    object cdNFvDesc: TFloatField
      FieldName = 'vDesc'
      Origin = 'vDesc'
      DisplayFormat = '0.00#'
    end
    object cdNFvLiq: TFloatField
      FieldName = 'vLiq'
      Origin = 'vLiq'
      DisplayFormat = '0.00#'
    end
    object cdNFinfAdFisco: TMemoField
      FieldName = 'infAdFisco'
      Origin = 'infAdFisco'
      BlobType = ftMemo
    end
    object cdNFinfCpl: TMemoField
      FieldName = 'infCpl'
      Origin = 'infCpl'
      BlobType = ftMemo
    end
    object cdNFICMSTot_vBC: TFloatField
      FieldName = 'ICMSTot_vBC'
      Origin = 'ICMSTot_vBC'
      DisplayFormat = '0.00#'
    end
    object cdNFICMSTot_vICMS: TFloatField
      FieldName = 'ICMSTot_vICMS'
      Origin = 'ICMSTot_vICMS'
      DisplayFormat = '0.00#'
    end
    object cdNFICMSTot_vBCST: TFloatField
      FieldName = 'ICMSTot_vBCST'
      Origin = 'ICMSTot_vBCST'
      DisplayFormat = '0.00#'
    end
    object cdNFICMSTot_vST: TFloatField
      FieldName = 'ICMSTot_vST'
      Origin = 'ICMSTot_vST'
      DisplayFormat = '0.00#'
    end
    object cdNFICMSTot_vProd: TFloatField
      FieldName = 'ICMSTot_vProd'
      Origin = 'ICMSTot_vProd'
      DisplayFormat = '0.00#'
    end
    object cdNFICMSTot_vFrete: TFloatField
      FieldName = 'ICMSTot_vFrete'
      Origin = 'ICMSTot_vFrete'
      DisplayFormat = '0.00#'
    end
    object cdNFICMSTot_vSeg: TFloatField
      FieldName = 'ICMSTot_vSeg'
      Origin = 'ICMSTot_vSeg'
      DisplayFormat = '0.00#'
    end
    object cdNFICMSTot_vDesc: TFloatField
      FieldName = 'ICMSTot_vDesc'
      Origin = 'ICMSTot_vDesc'
      DisplayFormat = '0.00#'
    end
    object cdNFICMSTot_vII: TFloatField
      FieldName = 'ICMSTot_vII'
      Origin = 'ICMSTot_vII'
      DisplayFormat = '0.00#'
    end
    object cdNFICMSTot_vIPI: TFloatField
      FieldName = 'ICMSTot_vIPI'
      Origin = 'ICMSTot_vIPI'
      DisplayFormat = '0.00#'
    end
    object cdNFICMSTot_vPIS: TFloatField
      FieldName = 'ICMSTot_vPIS'
      Origin = 'ICMSTot_vPIS'
      DisplayFormat = '0.00#'
    end
    object cdNFICMSTot_vCOFINS: TFloatField
      FieldName = 'ICMSTot_vCOFINS'
      Origin = 'ICMSTot_vCOFINS'
      DisplayFormat = '0.00#'
    end
    object cdNFICMSTot_vOutro: TFloatField
      FieldName = 'ICMSTot_vOutro'
      Origin = 'ICMSTot_vOutro'
      DisplayFormat = '0.00#'
    end
    object cdNFICMSTot_vNF: TFloatField
      FieldName = 'ICMSTot_vNF'
      Origin = 'ICMSTot_vNF'
      DisplayFormat = '0.00#'
    end
    object cdNFISSQNtot_vServ: TFloatField
      FieldName = 'ISSQNtot_vServ'
      Origin = 'ISSQNtot_vServ'
      DisplayFormat = '0.00#'
    end
    object cdNFISSQNTot_vBC: TFloatField
      FieldName = 'ISSQNTot_vBC'
      Origin = 'ISSQNTot_vBC'
      DisplayFormat = '0.00#'
    end
    object cdNFISSQNTot_vISS: TFloatField
      FieldName = 'ISSQNTot_vISS'
      Origin = 'ISSQNTot_vISS'
      DisplayFormat = '0.00#'
    end
    object cdNFISSQNTot_vPIS: TFloatField
      FieldName = 'ISSQNTot_vPIS'
      Origin = 'ISSQNTot_vPIS'
      DisplayFormat = '0.00#'
    end
    object cdNFISSQNTot_vCOFINS: TFloatField
      FieldName = 'ISSQNTot_vCOFINS'
      Origin = 'ISSQNTot_vCOFINS'
      DisplayFormat = '0.00#'
    end
    object cdNFretTrib_vRetPIS: TFloatField
      FieldName = 'retTrib_vRetPIS'
      Origin = 'retTrib_vRetPIS'
      DisplayFormat = '0.00#'
    end
    object cdNFretTrib_vRetCOFINS: TFloatField
      FieldName = 'retTrib_vRetCOFINS'
      Origin = 'retTrib_vRetCOFINS'
      DisplayFormat = '0.00#'
    end
    object cdNFretTrib_vRetCSLL: TFloatField
      FieldName = 'retTrib_vRetCSLL'
      Origin = 'retTrib_vRetCSLL'
      DisplayFormat = '0.00#'
    end
    object cdNFretTrib_vBCIRRF: TFloatField
      FieldName = 'retTrib_vBCIRRF'
      Origin = 'retTrib_vBCIRRF'
      DisplayFormat = '0.00#'
    end
    object cdNFretTrib_vIRRF: TFloatField
      FieldName = 'retTrib_vIRRF'
      Origin = 'retTrib_vIRRF'
      DisplayFormat = '0.00#'
    end
    object cdNFretTrib_vBCRetPrev: TFloatField
      FieldName = 'retTrib_vBCRetPrev'
      Origin = 'retTrib_vBCRetPrev'
      DisplayFormat = '0.00#'
    end
    object cdNFretTrib_vRetPrev: TFloatField
      FieldName = 'retTrib_vRetPrev'
      Origin = 'retTrib_vRetPrev'
      DisplayFormat = '0.00#'
    end
    object cdNFmd5: TStringField
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object cdNFhash: TStringField
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
    object cdNFstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object cdNFIde_hSaiEnt: TTimeField
      FieldName = 'Ide_hSaiEnt'
      Origin = 'Ide_hSaiEnt'
    end
    object cdNFinfCpl_Dig: TMemoField
      FieldName = 'infCpl_Dig'
      Origin = 'infCpl_Dig'
      BlobType = ftMemo
    end
  end
  object cdNF_Item: TFDQuery
    AfterInsert = cdNF_ItemAfterInsert
    BeforePost = cdNF_ItemBeforePost
    MasterSource = DScdNF
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = DB
    FetchOptions.AssignedValues = [evCache, evDetailDelay, evDetailOptimize, evDetailCascade]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_item where nf=:id')
    Left = 352
    Top = 60
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdNF_Itemid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdNF_Itemnf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object cdNF_ItemnItem: TIntegerField
      FieldName = 'nItem'
      Origin = 'nItem'
      DisplayFormat = '000'
    end
    object cdNF_ItemcProd: TStringField
      FieldName = 'cProd'
      Origin = 'cProd'
      Size = 60
    end
    object cdNF_ItemcEAN: TStringField
      FieldName = 'cEAN'
      Origin = 'cEAN'
    end
    object cdNF_ItemxProd: TStringField
      FieldName = 'xProd'
      Origin = 'xProd'
      Size = 120
    end
    object cdNF_ItemNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object cdNF_ItemEXTIPI: TStringField
      FieldName = 'EXTIPI'
      Origin = 'EXTIPI'
      Size = 3
    end
    object cdNF_ItemCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object cdNF_ItemuCom: TStringField
      FieldName = 'uCom'
      Origin = 'uCom'
      Size = 6
    end
    object cdNF_ItemqCom: TFloatField
      FieldName = 'qCom'
      Origin = 'qCom'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemvUnCom: TFloatField
      FieldName = 'vUnCom'
      Origin = 'vUnCom'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemvProd: TFloatField
      FieldName = 'vProd'
      Origin = 'vProd'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemcEANTrib: TStringField
      FieldName = 'cEANTrib'
      Origin = 'cEANTrib'
    end
    object cdNF_ItemuTrib: TStringField
      FieldName = 'uTrib'
      Origin = 'uTrib'
      Size = 6
    end
    object cdNF_ItemqTrib: TFloatField
      FieldName = 'qTrib'
      Origin = 'qTrib'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemvUnTrib: TFloatField
      FieldName = 'vUnTrib'
      Origin = 'vUnTrib'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemvOutro: TFloatField
      FieldName = 'vOutro'
      Origin = 'vOutro'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemvFrete: TFloatField
      FieldName = 'vFrete'
      Origin = 'vFrete'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemvSeg: TFloatField
      FieldName = 'vSeg'
      Origin = 'vSeg'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemvDesc: TFloatField
      FieldName = 'vDesc'
      Origin = 'vDesc'
      DisplayFormat = '0.00#'
    end
    object cdNF_IteminfAdProd: TMemoField
      FieldName = 'infAdProd'
      Origin = 'infAdProd'
      BlobType = ftMemo
    end
    object cdNF_ItemICMS_CST: TIntegerField
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
      OnGetText = cdNF_ItemICMS_CSTGetText
    end
    object cdNF_ItemICMS_orig: TIntegerField
      FieldName = 'ICMS_orig'
      Origin = 'ICMS_orig'
    end
    object cdNF_ItemICMS_modBC: TIntegerField
      FieldName = 'ICMS_modBC'
      Origin = 'ICMS_modBC'
    end
    object cdNF_ItemICMS_vBC: TFloatField
      FieldName = 'ICMS_vBC'
      Origin = 'ICMS_vBC'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_pICMS: TFloatField
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_vICMS: TFloatField
      FieldName = 'ICMS_vICMS'
      Origin = 'ICMS_vICMS'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_CSOSN: TIntegerField
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
      OnGetText = cdNF_ItemICMS_CSOSNGetText
    end
    object cdNF_ItemICMS_pCredSN: TFloatField
      FieldName = 'ICMS_pCredSN'
      Origin = 'ICMS_pCredSN'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_vCredICMSSN: TFloatField
      FieldName = 'ICMS_vCredICMSSN'
      Origin = 'ICMS_vCredICMSSN'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_modBCST: TIntegerField
      FieldName = 'ICMS_modBCST'
      Origin = 'ICMS_modBCST'
    end
    object cdNF_ItemICMS_pMVAST: TFloatField
      FieldName = 'ICMS_pMVAST'
      Origin = 'ICMS_pMVAST'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_vTabelaST: TFloatField
      FieldName = 'ICMS_vTabelaST'
      Origin = 'ICMS_vTabelaST'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_pRedBCST: TFloatField
      FieldName = 'ICMS_pRedBCST'
      Origin = 'ICMS_pRedBCST'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_vBCST: TFloatField
      FieldName = 'ICMS_vBCST'
      Origin = 'ICMS_vBCST'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_pICMSST: TFloatField
      FieldName = 'ICMS_pICMSST'
      Origin = 'ICMS_pICMSST'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_vICMSST: TFloatField
      FieldName = 'ICMS_vICMSST'
      Origin = 'ICMS_vICMSST'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_pRedBC: TFloatField
      FieldName = 'ICMS_pRedBC'
      Origin = 'ICMS_pRedBC'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemIPI_CST: TIntegerField
      FieldName = 'IPI_CST'
      Origin = 'IPI_CST'
      OnGetText = cdNF_ItemIPI_CSTGetText
    end
    object cdNF_ItemIPI_clEnq: TStringField
      FieldName = 'IPI_clEnq'
      Origin = 'IPI_clEnq'
      Size = 5
    end
    object cdNF_ItemIPI_CNPJProd: TStringField
      FieldName = 'IPI_CNPJProd'
      Origin = 'IPI_CNPJProd'
    end
    object cdNF_ItemIPI_cSelo: TStringField
      FieldName = 'IPI_cSelo'
      Origin = 'IPI_cSelo'
      Size = 60
    end
    object cdNF_ItemIPI_qSelo: TIntegerField
      FieldName = 'IPI_qSelo'
      Origin = 'IPI_qSelo'
    end
    object cdNF_ItemIPI_cEnq: TStringField
      FieldName = 'IPI_cEnq'
      Origin = 'IPI_cEnq'
      Size = 3
    end
    object cdNF_ItemIPI_vBC: TFloatField
      FieldName = 'IPI_vBC'
      Origin = 'IPI_vBC'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemIPI_qUnid: TFloatField
      FieldName = 'IPI_qUnid'
      Origin = 'IPI_qUnid'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemIPI_vUnid: TFloatField
      FieldName = 'IPI_vUnid'
      Origin = 'IPI_vUnid'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemIPI_pIPI: TFloatField
      FieldName = 'IPI_pIPI'
      Origin = 'IPI_pIPI'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemIPI_vIPI: TFloatField
      FieldName = 'IPI_vIPI'
      Origin = 'IPI_vIPI'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemII_vBc: TFloatField
      FieldName = 'II_vBc'
      Origin = 'II_vBc'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemII_vDespAdu: TFloatField
      FieldName = 'II_vDespAdu'
      Origin = 'II_vDespAdu'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemII_vII: TFloatField
      FieldName = 'II_vII'
      Origin = 'II_vII'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemII_vIOF: TFloatField
      FieldName = 'II_vIOF'
      Origin = 'II_vIOF'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPIS_CST: TIntegerField
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
      OnGetText = cdNF_ItemPIS_CSTGetText
    end
    object cdNF_ItemPIS_vBC: TFloatField
      FieldName = 'PIS_vBC'
      Origin = 'PIS_vBC'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPIS_pPIS: TFloatField
      FieldName = 'PIS_pPIS'
      Origin = 'PIS_pPIS'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPIS_vPIS: TFloatField
      FieldName = 'PIS_vPIS'
      Origin = 'PIS_vPIS'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPIS_qBCProd: TFloatField
      FieldName = 'PIS_qBCProd'
      Origin = 'PIS_qBCProd'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPIS_vAliqProd: TFloatField
      FieldName = 'PIS_vAliqProd'
      Origin = 'PIS_vAliqProd'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPISST_vBc: TFloatField
      FieldName = 'PISST_vBc'
      Origin = 'PISST_vBc'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPISST_pPis: TFloatField
      FieldName = 'PISST_pPis'
      Origin = 'PISST_pPis'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPISST_qBCProd: TFloatField
      FieldName = 'PISST_qBCProd'
      Origin = 'PISST_qBCProd'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPISST_vAliqProd: TFloatField
      FieldName = 'PISST_vAliqProd'
      Origin = 'PISST_vAliqProd'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPISST_vPIS: TFloatField
      FieldName = 'PISST_vPIS'
      Origin = 'PISST_vPIS'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINS_CST: TIntegerField
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
      OnGetText = cdNF_ItemCOFINS_CSTGetText
    end
    object cdNF_ItemCOFINS_vBC: TFloatField
      FieldName = 'COFINS_vBC'
      Origin = 'COFINS_vBC'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINS_pCOFINS: TFloatField
      FieldName = 'COFINS_pCOFINS'
      Origin = 'COFINS_pCOFINS'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINS_vCOFINS: TFloatField
      FieldName = 'COFINS_vCOFINS'
      Origin = 'COFINS_vCOFINS'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINS_qBCProd: TFloatField
      FieldName = 'COFINS_qBCProd'
      Origin = 'COFINS_qBCProd'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINS_vAliqProd: TFloatField
      FieldName = 'COFINS_vAliqProd'
      Origin = 'COFINS_vAliqProd'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINSST_vBC: TFloatField
      FieldName = 'COFINSST_vBC'
      Origin = 'COFINSST_vBC'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINSST_pCOFINS: TFloatField
      FieldName = 'COFINSST_pCOFINS'
      Origin = 'COFINSST_pCOFINS'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINSST_qBCProd: TFloatField
      FieldName = 'COFINSST_qBCProd'
      Origin = 'COFINSST_qBCProd'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINSST_vAliqProd: TFloatField
      FieldName = 'COFINSST_vAliqProd'
      Origin = 'COFINSST_vAliqProd'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINSST_vCOFINS: TFloatField
      FieldName = 'COFINSST_vCOFINS'
      Origin = 'COFINSST_vCOFINS'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemISSQN_vBC: TFloatField
      FieldName = 'ISSQN_vBC'
      Origin = 'ISSQN_vBC'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemISSQN_vAliq: TFloatField
      FieldName = 'ISSQN_vAliq'
      Origin = 'ISSQN_vAliq'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemISSQN_vISSQN: TFloatField
      FieldName = 'ISSQN_vISSQN'
      Origin = 'ISSQN_vISSQN'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemISSQN_cMunFG: TIntegerField
      FieldName = 'ISSQN_cMunFG'
      Origin = 'ISSQN_cMunFG'
    end
    object cdNF_ItemISSQN_cListServ: TIntegerField
      FieldName = 'ISSQN_cListServ'
      Origin = 'ISSQN_cListServ'
    end
    object cdNF_ItemISSQN_SitTrib: TIntegerField
      FieldName = 'ISSQN_SitTrib'
      Origin = 'ISSQN_SitTrib'
    end
    object cdNF_ItemICMS_vBCSTRet: TFloatField
      FieldName = 'ICMS_vBCSTRet'
      Origin = 'ICMS_vBCSTRet'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_vICMSSTRet: TFloatField
      FieldName = 'ICMS_vICMSSTRet'
      Origin = 'ICMS_vICMSSTRet'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemQTD: TFloatField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object cdNF_ItemICMS_CST_inform: TIntegerField
      FieldName = 'ICMS_CST_inform'
      Origin = 'ICMS_CST_inform'
      OnGetText = cdNF_ItemICMS_CSTGetText
    end
    object cdNF_ItemICMS_orig_inform: TIntegerField
      FieldName = 'ICMS_orig_inform'
      Origin = 'ICMS_orig_inform'
    end
    object cdNF_ItemICMS_modBC_inform: TIntegerField
      FieldName = 'ICMS_modBC_inform'
      Origin = 'ICMS_modBC_inform'
    end
    object cdNF_ItemICMS_vBC_inform: TFloatField
      FieldName = 'ICMS_vBC_inform'
      Origin = 'ICMS_vBC_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_pICMS_inform: TFloatField
      FieldName = 'ICMS_pICMS_inform'
      Origin = 'ICMS_pICMS_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_vICMS_inform: TFloatField
      FieldName = 'ICMS_vICMS_inform'
      Origin = 'ICMS_vICMS_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_CSOSN_inform: TIntegerField
      FieldName = 'ICMS_CSOSN_inform'
      Origin = 'ICMS_CSOSN_inform'
      OnGetText = cdNF_ItemICMS_CSOSNGetText
    end
    object cdNF_ItemICMS_pCredSN_inform: TFloatField
      FieldName = 'ICMS_pCredSN_inform'
      Origin = 'ICMS_pCredSN_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_vCredICMSSN_inform: TFloatField
      FieldName = 'ICMS_vCredICMSSN_inform'
      Origin = 'ICMS_vCredICMSSN_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_modBCST_inform: TIntegerField
      FieldName = 'ICMS_modBCST_inform'
      Origin = 'ICMS_modBCST_inform'
    end
    object cdNF_ItemICMS_pMVAST_inform: TFloatField
      FieldName = 'ICMS_pMVAST_inform'
      Origin = 'ICMS_pMVAST_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_vTabelaST_inform: TFloatField
      FieldName = 'ICMS_vTabelaST_inform'
      Origin = 'ICMS_vTabelaST_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_pRedBCST_inform: TFloatField
      FieldName = 'ICMS_pRedBCST_inform'
      Origin = 'ICMS_pRedBCST_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_vBCST_inform: TFloatField
      FieldName = 'ICMS_vBCST_inform'
      Origin = 'ICMS_vBCST_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_pICMSST_inform: TFloatField
      FieldName = 'ICMS_pICMSST_inform'
      Origin = 'ICMS_pICMSST_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_vICMSST_inform: TFloatField
      FieldName = 'ICMS_vICMSST_inform'
      Origin = 'ICMS_vICMSST_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_pRedBC_inform: TFloatField
      FieldName = 'ICMS_pRedBC_inform'
      Origin = 'ICMS_pRedBC_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemIPI_CST_inform: TIntegerField
      FieldName = 'IPI_CST_inform'
      Origin = 'IPI_CST_inform'
      OnGetText = cdNF_ItemIPI_CSTGetText
    end
    object cdNF_ItemIPI_clEnq_inform: TStringField
      FieldName = 'IPI_clEnq_inform'
      Origin = 'IPI_clEnq_inform'
      Size = 5
    end
    object cdNF_ItemIPI_CNPJProd_inform: TStringField
      FieldName = 'IPI_CNPJProd_inform'
      Origin = 'IPI_CNPJProd_inform'
    end
    object cdNF_ItemIPI_cSelo_inform: TStringField
      FieldName = 'IPI_cSelo_inform'
      Origin = 'IPI_cSelo_inform'
      Size = 60
    end
    object cdNF_ItemIPI_qSelo_inform: TIntegerField
      FieldName = 'IPI_qSelo_inform'
      Origin = 'IPI_qSelo_inform'
    end
    object cdNF_ItemIPI_cEnq_inform: TStringField
      FieldName = 'IPI_cEnq_inform'
      Origin = 'IPI_cEnq_inform'
      Size = 3
    end
    object cdNF_ItemIPI_vBC_inform: TFloatField
      FieldName = 'IPI_vBC_inform'
      Origin = 'IPI_vBC_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemIPI_qUnid_inform: TFloatField
      FieldName = 'IPI_qUnid_inform'
      Origin = 'IPI_qUnid_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemIPI_vUnid_inform: TFloatField
      FieldName = 'IPI_vUnid_inform'
      Origin = 'IPI_vUnid_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemIPI_pIPI_inform: TFloatField
      FieldName = 'IPI_pIPI_inform'
      Origin = 'IPI_pIPI_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemIPI_vIPI_inform: TFloatField
      FieldName = 'IPI_vIPI_inform'
      Origin = 'IPI_vIPI_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemII_vBc_inform: TFloatField
      FieldName = 'II_vBc_inform'
      Origin = 'II_vBc_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemII_vDespAdu_inform: TFloatField
      FieldName = 'II_vDespAdu_inform'
      Origin = 'II_vDespAdu_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemII_vII_inform: TFloatField
      FieldName = 'II_vII_inform'
      Origin = 'II_vII_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemII_vIOF_inform: TFloatField
      FieldName = 'II_vIOF_inform'
      Origin = 'II_vIOF_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPIS_CST_inform: TIntegerField
      FieldName = 'PIS_CST_inform'
      Origin = 'PIS_CST_inform'
      OnGetText = cdNF_ItemPIS_CSTGetText
    end
    object cdNF_ItemPIS_vBC_inform: TFloatField
      FieldName = 'PIS_vBC_inform'
      Origin = 'PIS_vBC_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPIS_pPIS_inform: TFloatField
      FieldName = 'PIS_pPIS_inform'
      Origin = 'PIS_pPIS_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPIS_vPIS_inform: TFloatField
      FieldName = 'PIS_vPIS_inform'
      Origin = 'PIS_vPIS_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPIS_qBCProd_inform: TFloatField
      FieldName = 'PIS_qBCProd_inform'
      Origin = 'PIS_qBCProd_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPIS_vAliqProd_inform: TFloatField
      FieldName = 'PIS_vAliqProd_inform'
      Origin = 'PIS_vAliqProd_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPISST_vBc_inform: TFloatField
      FieldName = 'PISST_vBc_inform'
      Origin = 'PISST_vBc_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPISST_pPis_inform: TFloatField
      FieldName = 'PISST_pPis_inform'
      Origin = 'PISST_pPis_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPISST_qBCProd_inform: TFloatField
      FieldName = 'PISST_qBCProd_inform'
      Origin = 'PISST_qBCProd_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPISST_vAliqProd_inform: TFloatField
      FieldName = 'PISST_vAliqProd_inform'
      Origin = 'PISST_vAliqProd_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPISST_vPIS_inform: TFloatField
      FieldName = 'PISST_vPIS_inform'
      Origin = 'PISST_vPIS_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINS_CST_inform: TIntegerField
      FieldName = 'COFINS_CST_inform'
      Origin = 'COFINS_CST_inform'
      OnGetText = cdNF_ItemCOFINS_CSTGetText
    end
    object cdNF_ItemCOFINS_vBC_inform: TFloatField
      FieldName = 'COFINS_vBC_inform'
      Origin = 'COFINS_vBC_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINS_pCOFINS_inform: TFloatField
      FieldName = 'COFINS_pCOFINS_inform'
      Origin = 'COFINS_pCOFINS_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINS_vCOFINS_inform: TFloatField
      FieldName = 'COFINS_vCOFINS_inform'
      Origin = 'COFINS_vCOFINS_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINS_qBCProd_inform: TFloatField
      FieldName = 'COFINS_qBCProd_inform'
      Origin = 'COFINS_qBCProd_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINS_vAliqProd_inform: TFloatField
      FieldName = 'COFINS_vAliqProd_inform'
      Origin = 'COFINS_vAliqProd_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINSST_vBC_inform: TFloatField
      FieldName = 'COFINSST_vBC_inform'
      Origin = 'COFINSST_vBC_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINSST_pCOFINS_inform: TFloatField
      FieldName = 'COFINSST_pCOFINS_inform'
      Origin = 'COFINSST_pCOFINS_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINSST_qBCProd_inform: TFloatField
      FieldName = 'COFINSST_qBCProd_inform'
      Origin = 'COFINSST_qBCProd_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINSST_vAliqProd_inform: TFloatField
      FieldName = 'COFINSST_vAliqProd_inform'
      Origin = 'COFINSST_vAliqProd_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemCOFINSST_vCOFINS_inform: TFloatField
      FieldName = 'COFINSST_vCOFINS_inform'
      Origin = 'COFINSST_vCOFINS_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemISSQN_vBC_inform: TFloatField
      FieldName = 'ISSQN_vBC_inform'
      Origin = 'ISSQN_vBC_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemISSQN_vAliq_inform: TFloatField
      FieldName = 'ISSQN_vAliq_inform'
      Origin = 'ISSQN_vAliq_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemISSQN_vISSQN_inform: TFloatField
      FieldName = 'ISSQN_vISSQN_inform'
      Origin = 'ISSQN_vISSQN_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemISSQN_cMunFG_inform: TIntegerField
      FieldName = 'ISSQN_cMunFG_inform'
      Origin = 'ISSQN_cMunFG_inform'
    end
    object cdNF_ItemISSQN_cListServ_inform: TIntegerField
      FieldName = 'ISSQN_cListServ_inform'
      Origin = 'ISSQN_cListServ_inform'
    end
    object cdNF_ItemISSQN_SitTrib_inform: TIntegerField
      FieldName = 'ISSQN_SitTrib_inform'
      Origin = 'ISSQN_SitTrib_inform'
    end
    object cdNF_ItemICMS_vBCSTRet_inform: TFloatField
      FieldName = 'ICMS_vBCSTRet_inform'
      Origin = 'ICMS_vBCSTRet_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_vICMSSTRet_inform: TFloatField
      FieldName = 'ICMS_vICMSSTRet_inform'
      Origin = 'ICMS_vICMSSTRet_inform'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemICMS_motDesICMS: TIntegerField
      FieldName = 'ICMS_motDesICMS'
      Origin = 'ICMS_motDesICMS'
    end
    object cdNF_ItemICMS_motDesICMS_inform: TIntegerField
      FieldName = 'ICMS_motDesICMS_inform'
      Origin = 'ICMS_motDesICMS_inform'
    end
    object cdNF_ItemvTotTrib: TFloatField
      FieldName = 'vTotTrib'
      Origin = 'vTotTrib'
      DisplayFormat = '0.00#'
    end
    object cdNF_Itemmd5: TStringField
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object cdNF_Itemhash: TStringField
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
    object cdNF_Itemcfop_inform: TStringField
      Alignment = taCenter
      FieldName = 'cfop_inform'
      Origin = 'cfop_inform'
      Size = 4
    end
    object cdNF_Itemvr_custo: TFloatField
      FieldName = 'vr_custo'
      Origin = 'vr_custo'
      DisplayFormat = '0.00#'
    end
    object cdNF_Itemid_prod: TIntegerField
      FieldName = 'id_prod'
      Origin = 'id_prod'
    end
    object cdNF_Itemvr_venda: TFloatField
      FieldName = 'vr_venda'
      Origin = 'vr_venda'
      DisplayFormat = '0.00#'
    end
    object cdNF_Itemult_custo: TFloatField
      FieldName = 'ult_custo'
      Origin = 'ult_custo'
      DisplayFormat = '0.00#'
    end
    object cdNF_ItemPIS_codrec: TIntegerField
      FieldName = 'PIS_codrec'
      Origin = 'PIS_codrec'
    end
  end
  object cdNF_Duplicata: TFDQuery
    AfterInsert = cdNF_DuplicataAfterInsert
    MasterSource = DScdNF
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_duplicata where nf=:id')
    Left = 352
    Top = 175
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdNF_Duplicataid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdNF_Duplicatanf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object cdNF_DuplicatanDup: TStringField
      FieldName = 'nDup'
      Origin = 'nDup'
      Size = 60
    end
    object cdNF_DuplicatavDup: TFloatField
      FieldName = 'vDup'
      Origin = 'vDup'
      DisplayFormat = '0.00#'
    end
    object cdNF_DuplicatadVenc: TDateField
      FieldName = 'dVenc'
      Origin = 'dVenc'
    end
  end
  object cdNF_Reboque: TFDQuery
    AfterInsert = cdNF_ReboqueAfterInsert
    MasterSource = DScdNF
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_reboque where nf=:id')
    Left = 352
    Top = 223
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdNF_Reboqueid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdNF_Reboquenf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object cdNF_Reboqueplaca: TStringField
      FieldName = 'placa'
      Origin = 'placa'
      Size = 10
    end
    object cdNF_Reboqueuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object cdNF_Reboquerntc: TStringField
      FieldName = 'rntc'
      Origin = 'rntc'
    end
    object cdNF_Reboquevagao: TStringField
      FieldName = 'vagao'
      Origin = 'vagao'
    end
    object cdNF_Reboquebalsa: TStringField
      FieldName = 'balsa'
      Origin = 'balsa'
    end
  end
  object cdNF_Referenciada: TFDQuery
    AfterInsert = cdNF_ReferenciadaAfterInsert
    MasterSource = DScdNF
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_referenciada where nf=:id')
    Left = 352
    Top = 271
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdNF_Referenciadaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdNF_Referenciadanf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object cdNF_ReferenciadarefNFe: TStringField
      FieldName = 'refNFe'
      Origin = 'refNFe'
      Size = 44
    end
    object cdNF_ReferenciadaRefNF_cUF: TIntegerField
      FieldName = 'RefNF_cUF'
      Origin = 'RefNF_cUF'
    end
    object cdNF_ReferenciadaRefNF_AAMM: TStringField
      FieldName = 'RefNF_AAMM'
      Origin = 'RefNF_AAMM'
      Size = 5
    end
    object cdNF_ReferenciadaRefNF_CNPJ: TStringField
      FieldName = 'RefNF_CNPJ'
      Origin = 'RefNF_CNPJ'
    end
    object cdNF_ReferenciadaRefNF_modelo: TIntegerField
      FieldName = 'RefNF_modelo'
      Origin = 'RefNF_modelo'
    end
    object cdNF_ReferenciadaRefNF_serie: TIntegerField
      FieldName = 'RefNF_serie'
      Origin = 'RefNF_serie'
    end
    object cdNF_ReferenciadaRefNF_nNF: TIntegerField
      FieldName = 'RefNF_nNF'
      Origin = 'RefNF_nNF'
    end
    object cdNF_ReferenciadaRefNFP_cUF: TIntegerField
      FieldName = 'RefNFP_cUF'
      Origin = 'RefNFP_cUF'
    end
    object cdNF_ReferenciadaRefNFP_AAMM: TStringField
      FieldName = 'RefNFP_AAMM'
      Origin = 'RefNFP_AAMM'
      Size = 5
    end
    object cdNF_ReferenciadaRefNFP_CNPJCPF: TStringField
      FieldName = 'RefNFP_CNPJCPF'
      Origin = 'RefNFP_CNPJCPF'
    end
    object cdNF_ReferenciadaRefNFP_IE: TStringField
      FieldName = 'RefNFP_IE'
      Origin = 'RefNFP_IE'
    end
    object cdNF_ReferenciadaRefNFP_modelo: TStringField
      FieldName = 'RefNFP_modelo'
      Origin = 'RefNFP_modelo'
    end
    object cdNF_ReferenciadaRefNFP_serie: TIntegerField
      FieldName = 'RefNFP_serie'
      Origin = 'RefNFP_serie'
    end
    object cdNF_ReferenciadaRefNFP_nNF: TIntegerField
      FieldName = 'RefNFP_nNF'
      Origin = 'RefNFP_nNF'
    end
    object cdNF_ReferenciadaRefECF_modelo: TIntegerField
      FieldName = 'RefECF_modelo'
      Origin = 'RefECF_modelo'
    end
    object cdNF_ReferenciadaRefECF_nECF: TStringField
      FieldName = 'RefECF_nECF'
      Origin = 'RefECF_nECF'
      Size = 10
    end
    object cdNF_ReferenciadaRefECF_nCOO: TStringField
      FieldName = 'RefECF_nCOO'
      Origin = 'RefECF_nCOO'
      Size = 10
    end
    object cdNF_ReferenciadaRefCte: TStringField
      FieldName = 'RefCte'
      Origin = 'RefCte'
      Size = 44
    end
    object cdNF_ReferenciadaRefECF_data: TDateField
      FieldName = 'RefECF_data'
      Origin = 'RefECF_data'
    end
    object cdNF_ReferenciadaRefECF_Serie: TStringField
      FieldName = 'RefECF_Serie'
      Origin = 'RefECF_Serie'
    end
  end
  object cdNF_Volume: TFDQuery
    AfterInsert = cdNF_VolumeAfterInsert
    MasterSource = DScdNF
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_volumes where nf=:id')
    Left = 352
    Top = 318
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdNF_Volumeid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdNF_Volumenf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object cdNF_VolumeqVol: TIntegerField
      FieldName = 'qVol'
      Origin = 'qVol'
      DisplayFormat = '0.00#'
    end
    object cdNF_Volumeespecie: TStringField
      FieldName = 'especie'
      Origin = 'especie'
      Size = 60
    end
    object cdNF_Volumemarca: TStringField
      FieldName = 'marca'
      Origin = 'marca'
      Size = 60
    end
    object cdNF_VolumenVol: TStringField
      FieldName = 'nVol'
      Origin = 'nVol'
      Size = 60
    end
    object cdNF_VolumepesoL: TFloatField
      FieldName = 'pesoL'
      Origin = 'pesoL'
      DisplayFormat = '0.00#'
    end
    object cdNF_VolumepesoB: TFloatField
      FieldName = 'pesoB'
      Origin = 'pesoB'
      DisplayFormat = '0.00#'
    end
  end
  object cdNF_Lacre: TFDQuery
    AfterInsert = cdNF_LacreAfterInsert
    MasterSource = DScdNF_Volume
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_vol_lacre where vol=:id')
    Left = 352
    Top = 367
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdNF_Lacreid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdNF_Lacrevol: TIntegerField
      FieldName = 'vol'
      Origin = 'vol'
    end
    object cdNF_Lacrenlacre: TStringField
      FieldName = 'nlacre'
      Origin = 'nlacre'
      Size = 60
    end
  end
  object cdNF_Chave: TFDQuery
    AfterInsert = cdNF_ChaveAfterInsert
    BeforePost = cdNF_ChaveBeforePost
    MasterSource = DScdNF
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_chave where nf=:id')
    Left = 352
    Top = 419
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdNF_Chaveid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdNF_Chavenf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object cdNF_Chavechave: TStringField
      FieldName = 'chave'
      Origin = 'chave'
      Size = 50
    end
    object cdNF_Chaverecibo: TStringField
      FieldName = 'recibo'
      Origin = 'recibo'
      Size = 50
    end
    object cdNF_Chaveprotocolo: TStringField
      FieldName = 'protocolo'
      Origin = 'protocolo'
      Size = 50
    end
    object cdNF_Chavecstat: TIntegerField
      FieldName = 'cstat'
      Origin = 'cstat'
    end
    object cdNF_Chavestatus: TStringField
      FieldName = 'status'
      Origin = 'status'
    end
  end
  object cdNF_Item_Med: TFDQuery
    AfterInsert = cdNF_Item_MedAfterInsert
    MasterSource = DScdNF_Item
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_item_med where item=:id')
    Left = 352
    Top = 120
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdNF_Item_Medid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdNF_Item_Meditem: TIntegerField
      FieldName = 'item'
      Origin = 'item'
    end
    object cdNF_Item_Mednlote: TStringField
      FieldName = 'nlote'
      Origin = 'nlote'
    end
    object cdNF_Item_Medqlote: TFloatField
      FieldName = 'qlote'
      Origin = 'qlote'
      DisplayFormat = '0.00#'
    end
    object cdNF_Item_Meddfab: TDateField
      FieldName = 'dfab'
      Origin = 'dfab'
    end
    object cdNF_Item_Meddven: TDateField
      FieldName = 'dven'
      Origin = 'dven'
    end
    object cdNF_Item_Medvpmc: TFloatField
      FieldName = 'vpmc'
      Origin = 'vpmc'
      DisplayFormat = '0.00#'
    end
  end
  object cdNF_Guia_Arrec: TFDQuery
    AfterInsert = cdNF_Guia_ArrecAfterInsert
    MasterSource = DScdNF
    MasterFields = 'id'
    Connection = DB
    SQL.Strings = (
      'select * from nf_guia_arrec where nf=:id')
    Left = 352
    Top = 468
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdNF_Guia_Arrecid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdNF_Guia_Arrecnf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object cdNF_Guia_Arreccod_da: TIntegerField
      FieldName = 'cod_da'
      Origin = 'cod_da'
    end
    object cdNF_Guia_Arrecuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object cdNF_Guia_Arrecnmro: TStringField
      FieldName = 'nmro'
      Origin = 'nmro'
      Size = 30
    end
    object cdNF_Guia_Arreccod_aut: TStringField
      FieldName = 'cod_aut'
      Origin = 'cod_aut'
      Size = 50
    end
    object cdNF_Guia_Arrecvalor: TFloatField
      FieldName = 'valor'
      Origin = 'valor'
      DisplayFormat = '0.00#'
    end
    object cdNF_Guia_Arrecdt_venc: TDateField
      FieldName = 'dt_venc'
      Origin = 'dt_venc'
    end
    object cdNF_Guia_Arrecdt_pag: TDateField
      FieldName = 'dt_pag'
      Origin = 'dt_pag'
    end
  end
  object DB: TFDConnection
    Params.Strings = (
      'Database=Z:\E\PROJETOSXE5\bin\DAT\ENTR\autocom.nfentr'
      'DriverID=SQLite')
    FetchOptions.AssignedValues = [evRowsetSize]
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    Left = 20
    Top = 8
  end
  object SQLIteLink: TFDPhysSQLiteDriverLink
    Left = 20
    Top = 60
  end
  object DSNF_Duplicata: TDataSource
    DataSet = QNF_Duplicata
    Left = 204
    Top = 175
  end
end
