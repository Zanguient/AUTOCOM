object DM_SPED_PIS: TDM_SPED_PIS
  OldCreateOrder = False
  Height = 245
  Width = 174
  object ACBrSPEDPisCofins1: TACBrSPEDPisCofins
    Path = 'C:\Program Files\Embarcadero\RAD Studio\11.0\bin\'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 48
    Top = 16
  end
  object QNf: TFDQuery
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from vw_sped_pis_nf where Ide_dEmi between :d1 and :d2')
    Left = 48
    Top = 72
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
    object QNfid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id'
      Origin = 'id'
    end
    object QNfIde_cNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_cNF'
      Origin = 'Ide_cNF'
    end
    object QNfIde_natOp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_natOp'
      Origin = 'Ide_natOp'
      Size = 60
    end
    object QNfIde_indPag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_indPag'
      Origin = 'Ide_indPag'
    end
    object QNfIde_modelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_modelo'
      Origin = 'Ide_modelo'
    end
    object QNfIde_serie: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_serie'
      Origin = 'Ide_serie'
    end
    object QNfIde_nNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_nNF'
      Origin = 'Ide_nNF'
    end
    object QNfIde_dEmi: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_dEmi'
      Origin = 'Ide_dEmi'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QNfIde_dSaiEnt: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_dSaiEnt'
      Origin = 'Ide_dSaiEnt'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QNfIde_hSaiEnt: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_hSaiEnt'
      Origin = 'Ide_hSaiEnt'
      DisplayFormat = 'hh:mm'
    end
    object QNfIde_tpNF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_tpNF'
      Origin = 'Ide_tpNF'
    end
    object QNfIde_tpEmis: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_tpEmis'
      Origin = 'Ide_tpEmis'
    end
    object QNfIde_tpAmb: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_tpAmb'
      Origin = 'Ide_tpAmb'
    end
    object QNfIde_verProc: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_verProc'
      Origin = 'Ide_verProc'
    end
    object QNfIde_cUF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_cUF'
      Origin = 'Ide_cUF'
    end
    object QNfIde_cMunFG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_cMunFG'
      Origin = 'Ide_cMunFG'
      Size = 60
    end
    object QNfIde_finNFe: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_finNFe'
      Origin = 'Ide_finNFe'
    end
    object QNfIde_dhCont: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_dhCont'
      Origin = 'Ide_dhCont'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QNfIde_xJust: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ide_xJust'
      Origin = 'Ide_xJust'
      Size = 250
    end
    object QNfEmit_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_CNPJCPF'
      Origin = 'Emit_CNPJCPF'
    end
    object QNfEmit_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_IE'
      Origin = 'Emit_IE'
    end
    object QNfEmit_xNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_xNome'
      Origin = 'Emit_xNome'
      Size = 60
    end
    object QNfEmit_xFant: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_xFant'
      Origin = 'Emit_xFant'
      Size = 60
    end
    object QNfEmit_EnderEmit_fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_fone'
      Origin = 'Emit_EnderEmit_fone'
      Size = 14
    end
    object QNfmit_EnderEmit_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mit_EnderEmit_CEP'
      Origin = 'mit_EnderEmit_CEP'
      Size = 8
    end
    object QNfEmit_EnderEmit_xLgr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_xLgr'
      Origin = 'Emit_EnderEmit_xLgr'
      Size = 60
    end
    object QNfEmit_EnderEmit_nro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_nro'
      Origin = 'Emit_EnderEmit_nro'
      Size = 60
    end
    object QNfEmit_EnderEmit_xCpl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_xCpl'
      Origin = 'Emit_EnderEmit_xCpl'
      Size = 60
    end
    object QNfEmit_EnderEmit_xBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_xBairro'
      Origin = 'Emit_EnderEmit_xBairro'
      Size = 60
    end
    object QNfEmit_EnderEmit_cMun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_cMun'
      Origin = 'Emit_EnderEmit_cMun'
    end
    object QNfEmit_EnderEmit_xMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_xMun'
      Origin = 'Emit_EnderEmit_xMun'
      Size = 60
    end
    object QNfEmit_EnderEmit_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_EnderEmit_UF'
      Origin = 'Emit_EnderEmit_UF'
      Size = 2
    end
    object QNfEmit_enderEmit_cPais: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_enderEmit_cPais'
      Origin = 'Emit_enderEmit_cPais'
    end
    object QNfEmit_enderEmit_xPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_enderEmit_xPais'
      Origin = 'Emit_enderEmit_xPais'
      Size = 60
    end
    object QNfEmit_IEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_IEST'
      Origin = 'Emit_IEST'
      Size = 14
    end
    object QNfEmit_IM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_IM'
      Origin = 'Emit_IM'
      Size = 15
    end
    object QNfEmit_CNAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_CNAE'
      Origin = 'Emit_CNAE'
      Size = 7
    end
    object QNfEmit_CRT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Emit_CRT'
      Origin = 'Emit_CRT'
    end
    object QNfDest_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_CNPJCPF'
      Origin = 'Dest_CNPJCPF'
    end
    object QNfDest_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_IE'
      Origin = 'Dest_IE'
    end
    object QNfDest_ISUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_ISUF'
      Origin = 'Dest_ISUF'
    end
    object QNfDest_xNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_xNome'
      Origin = 'Dest_xNome'
      Size = 60
    end
    object QNfDest_EnderDest_Fone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_Fone'
      Origin = 'Dest_EnderDest_Fone'
    end
    object QNfDest_EnderDest_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_CEP'
      Origin = 'Dest_EnderDest_CEP'
      Size = 10
    end
    object QNfDest_EnderDest_xLgr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_xLgr'
      Origin = 'Dest_EnderDest_xLgr'
      Size = 60
    end
    object QNfDest_EnderDest_nro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_nro'
      Origin = 'Dest_EnderDest_nro'
      Size = 60
    end
    object QNfDest_EnderDest_xCpl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_xCpl'
      Origin = 'Dest_EnderDest_xCpl'
      Size = 60
    end
    object QNfDest_EnderDest_xBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_xBairro'
      Origin = 'Dest_EnderDest_xBairro'
      Size = 60
    end
    object QNfDest_EnderDest_cMun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_cMun'
      Origin = 'Dest_EnderDest_cMun'
    end
    object QNfDest_EnderDest_xMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_xMun'
      Origin = 'Dest_EnderDest_xMun'
      Size = 60
    end
    object QNfDest_EnderDest_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_UF'
      Origin = 'Dest_EnderDest_UF'
      Size = 2
    end
    object QNfDest_EnderDest_cPais: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_cPais'
      Origin = 'Dest_EnderDest_cPais'
    end
    object QNfDest_EnderDest_xPais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dest_EnderDest_xPais'
      Origin = 'Dest_EnderDest_xPais'
      Size = 60
    end
    object QNfRetirada_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_CNPJCPF'
      Origin = 'Retirada_CNPJCPF'
    end
    object QNfRetirada_xLgr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_xLgr'
      Origin = 'Retirada_xLgr'
      Size = 60
    end
    object QNfRetirada_nro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_nro'
      Origin = 'Retirada_nro'
      Size = 60
    end
    object QNfRetirada_xCpl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_xCpl'
      Origin = 'Retirada_xCpl'
      Size = 60
    end
    object QNfRetirada_xBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_xBairro'
      Origin = 'Retirada_xBairro'
      Size = 60
    end
    object QNfRetirada_cMun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_cMun'
      Origin = 'Retirada_cMun'
    end
    object QNfRetirada_xMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_xMun'
      Origin = 'Retirada_xMun'
      Size = 60
    end
    object QNfRetirada_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Retirada_UF'
      Origin = 'Retirada_UF'
      Size = 2
    end
    object QNfEntrega_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_CNPJCPF'
      Origin = 'Entrega_CNPJCPF'
    end
    object QNfEntrega_xLgr: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_xLgr'
      Origin = 'Entrega_xLgr'
      Size = 60
    end
    object QNfEntrega_nro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_nro'
      Origin = 'Entrega_nro'
      Size = 60
    end
    object QNfEntrega_xCpl: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_xCpl'
      Origin = 'Entrega_xCpl'
      Size = 60
    end
    object QNfEntrega_xBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_xBairro'
      Origin = 'Entrega_xBairro'
      Size = 60
    end
    object QNfEntrega_cMun: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_cMun'
      Origin = 'Entrega_cMun'
    end
    object QNfEntrega_xMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_xMun'
      Origin = 'Entrega_xMun'
      Size = 60
    end
    object QNfEntrega_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Entrega_UF'
      Origin = 'Entrega_UF'
      Size = 2
    end
    object QNfmodFrete: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'modFrete'
      Origin = 'modFrete'
    end
    object QNfTransporta_CNPJCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_CNPJCPF'
      Origin = 'Transporta_CNPJCPF'
    end
    object QNfTransporta_xNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_xNome'
      Origin = 'Transporta_xNome'
      Size = 60
    end
    object QNfTransporta_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_IE'
      Origin = 'Transporta_IE'
    end
    object QNfTransporta_xEnder: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_xEnder'
      Origin = 'Transporta_xEnder'
      Size = 60
    end
    object QNfTransporta_xMun: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_xMun'
      Origin = 'Transporta_xMun'
      Size = 60
    end
    object QNfTransporta_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Transporta_UF'
      Origin = 'Transporta_UF'
      Size = 2
    end
    object QNfretvServ: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retvServ'
      Origin = 'retvServ'
    end
    object QNfretvBCRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retvBCRet'
      Origin = 'retvBCRet'
    end
    object QNfretpICMSRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retpICMSRet'
      Origin = 'retpICMSRet'
    end
    object QNfretvICMSRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retvICMSRet'
      Origin = 'retvICMSRet'
    end
    object QNfretCFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'retCFOP'
      Origin = 'retCFOP'
      Size = 4
    end
    object QNfretcMunFG: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'retcMunFG'
      Origin = 'retcMunFG'
    end
    object QNfveicplaca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'veicplaca'
      Origin = 'veicplaca'
      Size = 10
    end
    object QNfveicUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'veicUF'
      Origin = 'veicUF'
      Size = 2
    end
    object QNfveicRNTC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'veicRNTC'
      Origin = 'veicRNTC'
    end
    object QNfnFat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nFat'
      Origin = 'nFat'
      Size = 60
    end
    object QNfvOrig: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vOrig'
      Origin = 'vOrig'
    end
    object QNfvDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vDesc'
      Origin = 'vDesc'
    end
    object QNfvLiq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vLiq'
      Origin = 'vLiq'
    end
    object QNfinfAdFisco: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'infAdFisco'
      Origin = 'infAdFisco'
      BlobType = ftMemo
    end
    object QNfinfCpl: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'infCpl'
      Origin = 'infCpl'
      BlobType = ftMemo
    end
    object QNfICMSTot_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vBC'
      Origin = 'ICMSTot_vBC'
    end
    object QNfICMSTot_vICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vICMS'
      Origin = 'ICMSTot_vICMS'
    end
    object QNfICMSTot_vBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vBCST'
      Origin = 'ICMSTot_vBCST'
    end
    object QNfICMSTot_vST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vST'
      Origin = 'ICMSTot_vST'
    end
    object QNfICMSTot_vProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vProd'
      Origin = 'ICMSTot_vProd'
    end
    object QNfICMSTot_vFrete: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vFrete'
      Origin = 'ICMSTot_vFrete'
    end
    object QNfICMSTot_vSeg: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vSeg'
      Origin = 'ICMSTot_vSeg'
    end
    object QNfICMSTot_vDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vDesc'
      Origin = 'ICMSTot_vDesc'
    end
    object QNfICMSTot_vII: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vII'
      Origin = 'ICMSTot_vII'
    end
    object QNfICMSTot_vIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vIPI'
      Origin = 'ICMSTot_vIPI'
    end
    object QNfICMSTot_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vPIS'
      Origin = 'ICMSTot_vPIS'
    end
    object QNfICMSTot_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vCOFINS'
      Origin = 'ICMSTot_vCOFINS'
    end
    object QNfICMSTot_vOutro: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vOutro'
      Origin = 'ICMSTot_vOutro'
    end
    object QNfICMSTot_vNF: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMSTot_vNF'
      Origin = 'ICMSTot_vNF'
    end
    object QNfISSQNtot_vServ: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQNtot_vServ'
      Origin = 'ISSQNtot_vServ'
    end
    object QNfISSQNTot_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQNTot_vBC'
      Origin = 'ISSQNTot_vBC'
    end
    object QNfISSQNTot_vISS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQNTot_vISS'
      Origin = 'ISSQNTot_vISS'
    end
    object QNfISSQNTot_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQNTot_vPIS'
      Origin = 'ISSQNTot_vPIS'
    end
    object QNfISSQNTot_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQNTot_vCOFINS'
      Origin = 'ISSQNTot_vCOFINS'
    end
    object QNfretTrib_vRetPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vRetPIS'
      Origin = 'retTrib_vRetPIS'
    end
    object QNfretTrib_vRetCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vRetCOFINS'
      Origin = 'retTrib_vRetCOFINS'
    end
    object QNfretTrib_vRetCSLL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vRetCSLL'
      Origin = 'retTrib_vRetCSLL'
    end
    object QNfretTrib_vBCIRRF: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vBCIRRF'
      Origin = 'retTrib_vBCIRRF'
    end
    object QNfretTrib_vIRRF: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vIRRF'
      Origin = 'retTrib_vIRRF'
    end
    object QNfretTrib_vBCRetPrev: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vBCRetPrev'
      Origin = 'retTrib_vBCRetPrev'
    end
    object QNfretTrib_vRetPrev: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retTrib_vRetPrev'
      Origin = 'retTrib_vRetPrev'
    end
    object QNfmd5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object QNfhash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
    object QNfstatus: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
    end
    object QNfvTotTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vTotTrib'
      Origin = 'vTotTrib'
    end
    object QNfitens: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'itens'
      Origin = 'itens'
    end
  end
  object Qnf_Itens: TFDQuery
    MasterSource = DSNF
    MasterFields = 'id'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from vw_sped_pis_nf_itens where nf=:id')
    Left = 48
    Top = 128
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Qnf_Itensid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object Qnf_Itensnf: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nf'
      Origin = 'nf'
    end
    object Qnf_ItensnItem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nItem'
      Origin = 'nItem'
    end
    object Qnf_ItenscProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cProd'
      Origin = 'cProd'
      Size = 60
    end
    object Qnf_ItenscEAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cEAN'
      Origin = 'cEAN'
    end
    object Qnf_ItensxProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'xProd'
      Origin = 'xProd'
      Size = 120
    end
    object Qnf_ItensNCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object Qnf_ItensEXTIPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EXTIPI'
      Origin = 'EXTIPI'
      Size = 3
    end
    object Qnf_ItensCFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object Qnf_ItensuCom: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uCom'
      Origin = 'uCom'
      Size = 6
    end
    object Qnf_ItensqCom: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qCom'
      Origin = 'qCom'
    end
    object Qnf_ItensvUnCom: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vUnCom'
      Origin = 'vUnCom'
    end
    object Qnf_ItensvProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vProd'
      Origin = 'vProd'
    end
    object Qnf_ItenscEANTrib: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cEANTrib'
      Origin = 'cEANTrib'
    end
    object Qnf_ItensuTrib: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uTrib'
      Origin = 'uTrib'
      Size = 6
    end
    object Qnf_ItensqTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'qTrib'
      Origin = 'qTrib'
    end
    object Qnf_ItensvUnTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vUnTrib'
      Origin = 'vUnTrib'
    end
    object Qnf_ItensvOutro: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vOutro'
      Origin = 'vOutro'
    end
    object Qnf_ItensvFrete: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vFrete'
      Origin = 'vFrete'
    end
    object Qnf_ItensvSeg: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vSeg'
      Origin = 'vSeg'
    end
    object Qnf_ItensvDesc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vDesc'
      Origin = 'vDesc'
    end
    object Qnf_ItensinfAdProd: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'infAdProd'
      Origin = 'infAdProd'
      BlobType = ftMemo
    end
    object Qnf_ItensICMS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
    end
    object Qnf_ItensICMS_orig: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_orig'
      Origin = 'ICMS_orig'
    end
    object Qnf_ItensICMS_modBC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBC'
      Origin = 'ICMS_modBC'
    end
    object Qnf_ItensICMS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBC'
      Origin = 'ICMS_vBC'
    end
    object Qnf_ItensICMS_pICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
    end
    object Qnf_ItensICMS_vICMS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMS'
      Origin = 'ICMS_vICMS'
    end
    object Qnf_ItensICMS_CSOSN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
    end
    object Qnf_ItensICMS_pCredSN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pCredSN'
      Origin = 'ICMS_pCredSN'
    end
    object Qnf_ItensICMS_vCredICMSSN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vCredICMSSN'
      Origin = 'ICMS_vCredICMSSN'
    end
    object Qnf_ItensICMS_modBCST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBCST'
      Origin = 'ICMS_modBCST'
    end
    object Qnf_ItensICMS_pMVAST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pMVAST'
      Origin = 'ICMS_pMVAST'
    end
    object Qnf_ItensICMS_vTabelaST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vTabelaST'
      Origin = 'ICMS_vTabelaST'
    end
    object Qnf_ItensICMS_pRedBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBCST'
      Origin = 'ICMS_pRedBCST'
    end
    object Qnf_ItensICMS_vBCST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCST'
      Origin = 'ICMS_vBCST'
    end
    object Qnf_ItensICMS_pICMSST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMSST'
      Origin = 'ICMS_pICMSST'
    end
    object Qnf_ItensICMS_vICMSST: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSST'
      Origin = 'ICMS_vICMSST'
    end
    object Qnf_ItensICMS_pRedBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBC'
      Origin = 'ICMS_pRedBC'
    end
    object Qnf_ItensIPI_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CST'
      Origin = 'IPI_CST'
    end
    object Qnf_ItensIPI_clEnq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_clEnq'
      Origin = 'IPI_clEnq'
      Size = 5
    end
    object Qnf_ItensIPI_CNPJProd: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CNPJProd'
      Origin = 'IPI_CNPJProd'
    end
    object Qnf_ItensIPI_cSelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cSelo'
      Origin = 'IPI_cSelo'
      Size = 60
    end
    object Qnf_ItensIPI_qSelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qSelo'
      Origin = 'IPI_qSelo'
    end
    object Qnf_ItensIPI_cEnq: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cEnq'
      Origin = 'IPI_cEnq'
      Size = 3
    end
    object Qnf_ItensIPI_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vBC'
      Origin = 'IPI_vBC'
    end
    object Qnf_ItensIPI_qUnid: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qUnid'
      Origin = 'IPI_qUnid'
    end
    object Qnf_ItensIPI_vUnid: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vUnid'
      Origin = 'IPI_vUnid'
    end
    object Qnf_ItensIPI_pIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_pIPI'
      Origin = 'IPI_pIPI'
    end
    object Qnf_ItensIPI_vIPI: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vIPI'
      Origin = 'IPI_vIPI'
    end
    object Qnf_ItensII_vBc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vBc'
      Origin = 'II_vBc'
    end
    object Qnf_ItensII_vDespAdu: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vDespAdu'
      Origin = 'II_vDespAdu'
    end
    object Qnf_ItensII_vII: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vII'
      Origin = 'II_vII'
    end
    object Qnf_ItensII_vIOF: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vIOF'
      Origin = 'II_vIOF'
    end
    object Qnf_ItensPIS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
    end
    object Qnf_ItensPIS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vBC'
      Origin = 'PIS_vBC'
    end
    object Qnf_ItensPIS_pPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_pPIS'
      Origin = 'PIS_pPIS'
    end
    object Qnf_ItensPIS_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vPIS'
      Origin = 'PIS_vPIS'
    end
    object Qnf_ItensPIS_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_qBCProd'
      Origin = 'PIS_qBCProd'
    end
    object Qnf_ItensPIS_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vAliqProd'
      Origin = 'PIS_vAliqProd'
    end
    object Qnf_ItensPISST_vBc: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vBc'
      Origin = 'PISST_vBc'
    end
    object Qnf_ItensPISST_pPis: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_pPis'
      Origin = 'PISST_pPis'
    end
    object Qnf_ItensPISST_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_qBCProd'
      Origin = 'PISST_qBCProd'
    end
    object Qnf_ItensPISST_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vAliqProd'
      Origin = 'PISST_vAliqProd'
    end
    object Qnf_ItensPISST_vPIS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vPIS'
      Origin = 'PISST_vPIS'
    end
    object Qnf_ItensCOFINS_CST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
    end
    object Qnf_ItensCOFINS_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vBC'
      Origin = 'COFINS_vBC'
    end
    object Qnf_ItensCOFINS_pCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_pCOFINS'
      Origin = 'COFINS_pCOFINS'
    end
    object Qnf_ItensCOFINS_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vCOFINS'
      Origin = 'COFINS_vCOFINS'
    end
    object Qnf_ItensCOFINS_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_qBCProd'
      Origin = 'COFINS_qBCProd'
    end
    object Qnf_ItensCOFINS_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vAliqProd'
      Origin = 'COFINS_vAliqProd'
    end
    object Qnf_ItensCOFINSST_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vBC'
      Origin = 'COFINSST_vBC'
    end
    object Qnf_ItensCOFINSST_pCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_pCOFINS'
      Origin = 'COFINSST_pCOFINS'
    end
    object Qnf_ItensCOFINSST_qBCProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_qBCProd'
      Origin = 'COFINSST_qBCProd'
    end
    object Qnf_ItensCOFINSST_vAliqProd: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vAliqProd'
      Origin = 'COFINSST_vAliqProd'
    end
    object Qnf_ItensCOFINSST_vCOFINS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vCOFINS'
      Origin = 'COFINSST_vCOFINS'
    end
    object Qnf_ItensISSQN_vBC: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vBC'
      Origin = 'ISSQN_vBC'
    end
    object Qnf_ItensISSQN_vAliq: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vAliq'
      Origin = 'ISSQN_vAliq'
    end
    object Qnf_ItensISSQN_vISSQN: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vISSQN'
      Origin = 'ISSQN_vISSQN'
    end
    object Qnf_ItensISSQN_cMunFG: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cMunFG'
      Origin = 'ISSQN_cMunFG'
    end
    object Qnf_ItensISSQN_cListServ: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cListServ'
      Origin = 'ISSQN_cListServ'
    end
    object Qnf_ItensISSQN_SitTrib: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_SitTrib'
      Origin = 'ISSQN_SitTrib'
    end
    object Qnf_ItensICMS_vBCSTRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCSTRet'
      Origin = 'ICMS_vBCSTRet'
    end
    object Qnf_ItensICMS_vICMSSTRet: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSSTRet'
      Origin = 'ICMS_vICMSSTRet'
    end
    object Qnf_ItensQTD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object Qnf_ItensICMS_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST_inform'
      Origin = 'ICMS_CST_inform'
    end
    object Qnf_ItensICMS_orig_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_orig_inform'
      Origin = 'ICMS_orig_inform'
    end
    object Qnf_ItensICMS_modBC_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBC_inform'
      Origin = 'ICMS_modBC_inform'
    end
    object Qnf_ItensICMS_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBC_inform'
      Origin = 'ICMS_vBC_inform'
    end
    object Qnf_ItensICMS_pICMS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMS_inform'
      Origin = 'ICMS_pICMS_inform'
    end
    object Qnf_ItensICMS_vICMS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMS_inform'
      Origin = 'ICMS_vICMS_inform'
    end
    object Qnf_ItensICMS_CSOSN_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CSOSN_inform'
      Origin = 'ICMS_CSOSN_inform'
    end
    object Qnf_ItensICMS_pCredSN_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pCredSN_inform'
      Origin = 'ICMS_pCredSN_inform'
    end
    object Qnf_ItensICMS_vCredICMSSN_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vCredICMSSN_inform'
      Origin = 'ICMS_vCredICMSSN_inform'
    end
    object Qnf_ItensICMS_modBCST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_modBCST_inform'
      Origin = 'ICMS_modBCST_inform'
    end
    object Qnf_ItensICMS_pMVAST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pMVAST_inform'
      Origin = 'ICMS_pMVAST_inform'
    end
    object Qnf_ItensICMS_vTabelaST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vTabelaST_inform'
      Origin = 'ICMS_vTabelaST_inform'
    end
    object Qnf_ItensICMS_pRedBCST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBCST_inform'
      Origin = 'ICMS_pRedBCST_inform'
    end
    object Qnf_ItensICMS_vBCST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCST_inform'
      Origin = 'ICMS_vBCST_inform'
    end
    object Qnf_ItensICMS_pICMSST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pICMSST_inform'
      Origin = 'ICMS_pICMSST_inform'
    end
    object Qnf_ItensICMS_vICMSST_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSST_inform'
      Origin = 'ICMS_vICMSST_inform'
    end
    object Qnf_ItensICMS_pRedBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_pRedBC_inform'
      Origin = 'ICMS_pRedBC_inform'
    end
    object Qnf_ItensIPI_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CST_inform'
      Origin = 'IPI_CST_inform'
    end
    object Qnf_ItensIPI_clEnq_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_clEnq_inform'
      Origin = 'IPI_clEnq_inform'
      Size = 5
    end
    object Qnf_ItensIPI_CNPJProd_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_CNPJProd_inform'
      Origin = 'IPI_CNPJProd_inform'
    end
    object Qnf_ItensIPI_cSelo_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cSelo_inform'
      Origin = 'IPI_cSelo_inform'
      Size = 60
    end
    object Qnf_ItensIPI_qSelo_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qSelo_inform'
      Origin = 'IPI_qSelo_inform'
    end
    object Qnf_ItensIPI_cEnq_inform: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_cEnq_inform'
      Origin = 'IPI_cEnq_inform'
      Size = 3
    end
    object Qnf_ItensIPI_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vBC_inform'
      Origin = 'IPI_vBC_inform'
    end
    object Qnf_ItensIPI_qUnid_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_qUnid_inform'
      Origin = 'IPI_qUnid_inform'
    end
    object Qnf_ItensIPI_vUnid_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vUnid_inform'
      Origin = 'IPI_vUnid_inform'
    end
    object Qnf_ItensIPI_pIPI_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_pIPI_inform'
      Origin = 'IPI_pIPI_inform'
    end
    object Qnf_ItensIPI_vIPI_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IPI_vIPI_inform'
      Origin = 'IPI_vIPI_inform'
    end
    object Qnf_ItensII_vBc_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vBc_inform'
      Origin = 'II_vBc_inform'
    end
    object Qnf_ItensII_vDespAdu_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vDespAdu_inform'
      Origin = 'II_vDespAdu_inform'
    end
    object Qnf_ItensII_vII_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vII_inform'
      Origin = 'II_vII_inform'
    end
    object Qnf_ItensII_vIOF_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'II_vIOF_inform'
      Origin = 'II_vIOF_inform'
    end
    object Qnf_ItensPIS_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_CST_inform'
      Origin = 'PIS_CST_inform'
    end
    object Qnf_ItensPIS_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vBC_inform'
      Origin = 'PIS_vBC_inform'
    end
    object Qnf_ItensPIS_pPIS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_pPIS_inform'
      Origin = 'PIS_pPIS_inform'
    end
    object Qnf_ItensPIS_vPIS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vPIS_inform'
      Origin = 'PIS_vPIS_inform'
    end
    object Qnf_ItensPIS_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_qBCProd_inform'
      Origin = 'PIS_qBCProd_inform'
    end
    object Qnf_ItensPIS_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_vAliqProd_inform'
      Origin = 'PIS_vAliqProd_inform'
    end
    object Qnf_ItensPISST_vBc_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vBc_inform'
      Origin = 'PISST_vBc_inform'
    end
    object Qnf_ItensPISST_pPis_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_pPis_inform'
      Origin = 'PISST_pPis_inform'
    end
    object Qnf_ItensPISST_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_qBCProd_inform'
      Origin = 'PISST_qBCProd_inform'
    end
    object Qnf_ItensPISST_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vAliqProd_inform'
      Origin = 'PISST_vAliqProd_inform'
    end
    object Qnf_ItensPISST_vPIS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PISST_vPIS_inform'
      Origin = 'PISST_vPIS_inform'
    end
    object Qnf_ItensPIS_codrec: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_codrec'
      Origin = 'PIS_codrec'
    end
    object Qnf_ItensCOFINS_CST_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_CST_inform'
      Origin = 'COFINS_CST_inform'
    end
    object Qnf_ItensCOFINS_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vBC_inform'
      Origin = 'COFINS_vBC_inform'
    end
    object Qnf_ItensCOFINS_pCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_pCOFINS_inform'
      Origin = 'COFINS_pCOFINS_inform'
    end
    object Qnf_ItensCOFINS_vCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vCOFINS_inform'
      Origin = 'COFINS_vCOFINS_inform'
    end
    object Qnf_ItensCOFINS_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_qBCProd_inform'
      Origin = 'COFINS_qBCProd_inform'
    end
    object Qnf_ItensCOFINS_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_vAliqProd_inform'
      Origin = 'COFINS_vAliqProd_inform'
    end
    object Qnf_ItensCOFINSST_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vBC_inform'
      Origin = 'COFINSST_vBC_inform'
    end
    object Qnf_ItensCOFINSST_pCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_pCOFINS_inform'
      Origin = 'COFINSST_pCOFINS_inform'
    end
    object Qnf_ItensCOFINSST_qBCProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_qBCProd_inform'
      Origin = 'COFINSST_qBCProd_inform'
    end
    object Qnf_ItensCOFINSST_vAliqProd_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vAliqProd_inform'
      Origin = 'COFINSST_vAliqProd_inform'
    end
    object Qnf_ItensCOFINSST_vCOFINS_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COFINSST_vCOFINS_inform'
      Origin = 'COFINSST_vCOFINS_inform'
    end
    object Qnf_ItensISSQN_vBC_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vBC_inform'
      Origin = 'ISSQN_vBC_inform'
    end
    object Qnf_ItensISSQN_vAliq_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vAliq_inform'
      Origin = 'ISSQN_vAliq_inform'
    end
    object Qnf_ItensISSQN_vISSQN_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_vISSQN_inform'
      Origin = 'ISSQN_vISSQN_inform'
    end
    object Qnf_ItensISSQN_cMunFG_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cMunFG_inform'
      Origin = 'ISSQN_cMunFG_inform'
    end
    object Qnf_ItensISSQN_cListServ_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_cListServ_inform'
      Origin = 'ISSQN_cListServ_inform'
    end
    object Qnf_ItensISSQN_SitTrib_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISSQN_SitTrib_inform'
      Origin = 'ISSQN_SitTrib_inform'
    end
    object Qnf_ItensICMS_vBCSTRet_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vBCSTRet_inform'
      Origin = 'ICMS_vBCSTRet_inform'
    end
    object Qnf_ItensICMS_vICMSSTRet_inform: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_vICMSSTRet_inform'
      Origin = 'ICMS_vICMSSTRet_inform'
    end
    object Qnf_ItensICMS_motDesICMS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_motDesICMS'
      Origin = 'ICMS_motDesICMS'
    end
    object Qnf_ItensICMS_motDesICMS_inform: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_motDesICMS_inform'
      Origin = 'ICMS_motDesICMS_inform'
    end
    object Qnf_ItensvTotTrib: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'vTotTrib'
      Origin = 'vTotTrib'
    end
    object Qnf_Itensmd5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object Qnf_Itenshash: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
  end
  object DSNF: TDataSource
    DataSet = QNf
    Left = 96
    Top = 104
  end
  object QNF_Chave: TFDQuery
    MasterSource = DSNF
    MasterFields = 'id'
    Connection = DMConn.DB
    SQL.Strings = (
      'select * from nf_chave where nf=:id')
    Left = 48
    Top = 184
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
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
    end
    object QNF_Chavemanif_dest_data: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'manif_dest_data'
      Origin = 'manif_dest_data'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object QNF_Chavemanif_dest_cod: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'manif_dest_cod'
      Origin = 'manif_dest_cod'
    end
  end
end
