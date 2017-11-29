unit uDM_SPED_PIS;

interface

uses
  System.SysUtils, System.Classes, ACBrSpedPisCofins, Dialogs,Data.DB,
  FireDAC.Comp.Script, FireDAC.Comp.DataSet, ACBrEPCBlocos, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client;

type
  TDM_SPED_PIS = class(TDataModule)
    ACBrSPEDPisCofins1: TACBrSPEDPisCofins;
    QNf: TFDQuery;
    Qnf_Itens: TFDQuery;
    QNfid: TIntegerField;
    QNfIde_cNF: TIntegerField;
    QNfIde_natOp: TStringField;
    QNfIde_indPag: TIntegerField;
    QNfIde_modelo: TIntegerField;
    QNfIde_serie: TIntegerField;
    QNfIde_nNF: TIntegerField;
    QNfIde_dEmi: TDateField;
    QNfIde_dSaiEnt: TDateField;
    QNfIde_hSaiEnt: TTimeField;
    QNfIde_tpNF: TIntegerField;
    QNfIde_tpEmis: TIntegerField;
    QNfIde_tpAmb: TIntegerField;
    QNfIde_verProc: TStringField;
    QNfIde_cUF: TIntegerField;
    QNfIde_cMunFG: TStringField;
    QNfIde_finNFe: TIntegerField;
    QNfIde_dhCont: TDateField;
    QNfIde_xJust: TStringField;
    QNfEmit_CNPJCPF: TStringField;
    QNfEmit_IE: TStringField;
    QNfEmit_xNome: TStringField;
    QNfEmit_xFant: TStringField;
    QNfEmit_EnderEmit_fone: TStringField;
    QNfmit_EnderEmit_CEP: TStringField;
    QNfEmit_EnderEmit_xLgr: TStringField;
    QNfEmit_EnderEmit_nro: TStringField;
    QNfEmit_EnderEmit_xCpl: TStringField;
    QNfEmit_EnderEmit_xBairro: TStringField;
    QNfEmit_EnderEmit_cMun: TIntegerField;
    QNfEmit_EnderEmit_xMun: TStringField;
    QNfEmit_EnderEmit_UF: TStringField;
    QNfEmit_enderEmit_cPais: TIntegerField;
    QNfEmit_enderEmit_xPais: TStringField;
    QNfEmit_IEST: TStringField;
    QNfEmit_IM: TStringField;
    QNfEmit_CNAE: TStringField;
    QNfEmit_CRT: TIntegerField;
    QNfDest_CNPJCPF: TStringField;
    QNfDest_IE: TStringField;
    QNfDest_ISUF: TStringField;
    QNfDest_xNome: TStringField;
    QNfDest_EnderDest_Fone: TStringField;
    QNfDest_EnderDest_CEP: TStringField;
    QNfDest_EnderDest_xLgr: TStringField;
    QNfDest_EnderDest_nro: TStringField;
    QNfDest_EnderDest_xCpl: TStringField;
    QNfDest_EnderDest_xBairro: TStringField;
    QNfDest_EnderDest_cMun: TIntegerField;
    QNfDest_EnderDest_xMun: TStringField;
    QNfDest_EnderDest_UF: TStringField;
    QNfDest_EnderDest_cPais: TIntegerField;
    QNfDest_EnderDest_xPais: TStringField;
    QNfRetirada_CNPJCPF: TStringField;
    QNfRetirada_xLgr: TStringField;
    QNfRetirada_nro: TStringField;
    QNfRetirada_xCpl: TStringField;
    QNfRetirada_xBairro: TStringField;
    QNfRetirada_cMun: TIntegerField;
    QNfRetirada_xMun: TStringField;
    QNfRetirada_UF: TStringField;
    QNfEntrega_CNPJCPF: TStringField;
    QNfEntrega_xLgr: TStringField;
    QNfEntrega_nro: TStringField;
    QNfEntrega_xCpl: TStringField;
    QNfEntrega_xBairro: TStringField;
    QNfEntrega_cMun: TIntegerField;
    QNfEntrega_xMun: TStringField;
    QNfEntrega_UF: TStringField;
    QNfmodFrete: TIntegerField;
    QNfTransporta_CNPJCPF: TStringField;
    QNfTransporta_xNome: TStringField;
    QNfTransporta_IE: TStringField;
    QNfTransporta_xEnder: TStringField;
    QNfTransporta_xMun: TStringField;
    QNfTransporta_UF: TStringField;
    QNfretvServ: TFloatField;
    QNfretvBCRet: TFloatField;
    QNfretpICMSRet: TFloatField;
    QNfretvICMSRet: TFloatField;
    QNfretCFOP: TStringField;
    QNfretcMunFG: TIntegerField;
    QNfveicplaca: TStringField;
    QNfveicUF: TStringField;
    QNfveicRNTC: TStringField;
    QNfnFat: TStringField;
    QNfvOrig: TFloatField;
    QNfvDesc: TFloatField;
    QNfvLiq: TFloatField;
    QNfinfAdFisco: TMemoField;
    QNfinfCpl: TMemoField;
    QNfICMSTot_vBC: TFloatField;
    QNfICMSTot_vICMS: TFloatField;
    QNfICMSTot_vBCST: TFloatField;
    QNfICMSTot_vST: TFloatField;
    QNfICMSTot_vProd: TFloatField;
    QNfICMSTot_vFrete: TFloatField;
    QNfICMSTot_vSeg: TFloatField;
    QNfICMSTot_vDesc: TFloatField;
    QNfICMSTot_vII: TFloatField;
    QNfICMSTot_vIPI: TFloatField;
    QNfICMSTot_vPIS: TFloatField;
    QNfICMSTot_vCOFINS: TFloatField;
    QNfICMSTot_vOutro: TFloatField;
    QNfICMSTot_vNF: TFloatField;
    QNfISSQNtot_vServ: TFloatField;
    QNfISSQNTot_vBC: TFloatField;
    QNfISSQNTot_vISS: TFloatField;
    QNfISSQNTot_vPIS: TFloatField;
    QNfISSQNTot_vCOFINS: TFloatField;
    QNfretTrib_vRetPIS: TFloatField;
    QNfretTrib_vRetCOFINS: TFloatField;
    QNfretTrib_vRetCSLL: TFloatField;
    QNfretTrib_vBCIRRF: TFloatField;
    QNfretTrib_vIRRF: TFloatField;
    QNfretTrib_vBCRetPrev: TFloatField;
    QNfretTrib_vRetPrev: TFloatField;
    QNfmd5: TStringField;
    QNfhash: TStringField;
    QNfstatus: TIntegerField;
    QNfvTotTrib: TFloatField;
    QNfitens: TLargeintField;
    DSNF: TDataSource;
    QNF_Chave: TFDQuery;
    QNF_Chaveid: TFDAutoIncField;
    QNF_Chavenf: TIntegerField;
    QNF_Chavechave: TStringField;
    QNF_Chaverecibo: TStringField;
    QNF_Chaveprotocolo: TStringField;
    QNF_Chavecstat: TIntegerField;
    QNF_Chavestatus: TStringField;
    QNF_Chavemanif_dest_data: TDateTimeField;
    QNF_Chavemanif_dest_cod: TIntegerField;
    Qnf_Itensid: TFDAutoIncField;
    Qnf_Itensnf: TIntegerField;
    Qnf_ItensnItem: TIntegerField;
    Qnf_ItenscProd: TStringField;
    Qnf_ItenscEAN: TStringField;
    Qnf_ItensxProd: TStringField;
    Qnf_ItensNCM: TStringField;
    Qnf_ItensEXTIPI: TStringField;
    Qnf_ItensCFOP: TStringField;
    Qnf_ItensuCom: TStringField;
    Qnf_ItensqCom: TFloatField;
    Qnf_ItensvUnCom: TFloatField;
    Qnf_ItensvProd: TFloatField;
    Qnf_ItenscEANTrib: TStringField;
    Qnf_ItensuTrib: TStringField;
    Qnf_ItensqTrib: TFloatField;
    Qnf_ItensvUnTrib: TFloatField;
    Qnf_ItensvOutro: TFloatField;
    Qnf_ItensvFrete: TFloatField;
    Qnf_ItensvSeg: TFloatField;
    Qnf_ItensvDesc: TFloatField;
    Qnf_ItensinfAdProd: TMemoField;
    Qnf_ItensICMS_CST: TIntegerField;
    Qnf_ItensICMS_orig: TIntegerField;
    Qnf_ItensICMS_modBC: TIntegerField;
    Qnf_ItensICMS_vBC: TFloatField;
    Qnf_ItensICMS_pICMS: TFloatField;
    Qnf_ItensICMS_vICMS: TFloatField;
    Qnf_ItensICMS_CSOSN: TIntegerField;
    Qnf_ItensICMS_pCredSN: TFloatField;
    Qnf_ItensICMS_vCredICMSSN: TFloatField;
    Qnf_ItensICMS_modBCST: TIntegerField;
    Qnf_ItensICMS_pMVAST: TFloatField;
    Qnf_ItensICMS_vTabelaST: TFloatField;
    Qnf_ItensICMS_pRedBCST: TFloatField;
    Qnf_ItensICMS_vBCST: TFloatField;
    Qnf_ItensICMS_pICMSST: TFloatField;
    Qnf_ItensICMS_vICMSST: TFloatField;
    Qnf_ItensICMS_pRedBC: TFloatField;
    Qnf_ItensIPI_CST: TIntegerField;
    Qnf_ItensIPI_clEnq: TStringField;
    Qnf_ItensIPI_CNPJProd: TStringField;
    Qnf_ItensIPI_cSelo: TStringField;
    Qnf_ItensIPI_qSelo: TIntegerField;
    Qnf_ItensIPI_cEnq: TStringField;
    Qnf_ItensIPI_vBC: TFloatField;
    Qnf_ItensIPI_qUnid: TFloatField;
    Qnf_ItensIPI_vUnid: TFloatField;
    Qnf_ItensIPI_pIPI: TFloatField;
    Qnf_ItensIPI_vIPI: TFloatField;
    Qnf_ItensII_vBc: TFloatField;
    Qnf_ItensII_vDespAdu: TFloatField;
    Qnf_ItensII_vII: TFloatField;
    Qnf_ItensII_vIOF: TFloatField;
    Qnf_ItensPIS_CST: TIntegerField;
    Qnf_ItensPIS_vBC: TFloatField;
    Qnf_ItensPIS_pPIS: TFloatField;
    Qnf_ItensPIS_vPIS: TFloatField;
    Qnf_ItensPIS_qBCProd: TFloatField;
    Qnf_ItensPIS_vAliqProd: TFloatField;
    Qnf_ItensPISST_vBc: TFloatField;
    Qnf_ItensPISST_pPis: TFloatField;
    Qnf_ItensPISST_qBCProd: TFloatField;
    Qnf_ItensPISST_vAliqProd: TFloatField;
    Qnf_ItensPISST_vPIS: TFloatField;
    Qnf_ItensCOFINS_CST: TIntegerField;
    Qnf_ItensCOFINS_vBC: TFloatField;
    Qnf_ItensCOFINS_pCOFINS: TFloatField;
    Qnf_ItensCOFINS_vCOFINS: TFloatField;
    Qnf_ItensCOFINS_qBCProd: TFloatField;
    Qnf_ItensCOFINS_vAliqProd: TFloatField;
    Qnf_ItensCOFINSST_vBC: TFloatField;
    Qnf_ItensCOFINSST_pCOFINS: TFloatField;
    Qnf_ItensCOFINSST_qBCProd: TFloatField;
    Qnf_ItensCOFINSST_vAliqProd: TFloatField;
    Qnf_ItensCOFINSST_vCOFINS: TFloatField;
    Qnf_ItensISSQN_vBC: TFloatField;
    Qnf_ItensISSQN_vAliq: TFloatField;
    Qnf_ItensISSQN_vISSQN: TFloatField;
    Qnf_ItensISSQN_cMunFG: TIntegerField;
    Qnf_ItensISSQN_cListServ: TIntegerField;
    Qnf_ItensISSQN_SitTrib: TIntegerField;
    Qnf_ItensICMS_vBCSTRet: TFloatField;
    Qnf_ItensICMS_vICMSSTRet: TFloatField;
    Qnf_ItensQTD: TFloatField;
    Qnf_ItensICMS_CST_inform: TIntegerField;
    Qnf_ItensICMS_orig_inform: TIntegerField;
    Qnf_ItensICMS_modBC_inform: TIntegerField;
    Qnf_ItensICMS_vBC_inform: TFloatField;
    Qnf_ItensICMS_pICMS_inform: TFloatField;
    Qnf_ItensICMS_vICMS_inform: TFloatField;
    Qnf_ItensICMS_CSOSN_inform: TIntegerField;
    Qnf_ItensICMS_pCredSN_inform: TFloatField;
    Qnf_ItensICMS_vCredICMSSN_inform: TFloatField;
    Qnf_ItensICMS_modBCST_inform: TIntegerField;
    Qnf_ItensICMS_pMVAST_inform: TFloatField;
    Qnf_ItensICMS_vTabelaST_inform: TFloatField;
    Qnf_ItensICMS_pRedBCST_inform: TFloatField;
    Qnf_ItensICMS_vBCST_inform: TFloatField;
    Qnf_ItensICMS_pICMSST_inform: TFloatField;
    Qnf_ItensICMS_vICMSST_inform: TFloatField;
    Qnf_ItensICMS_pRedBC_inform: TFloatField;
    Qnf_ItensIPI_CST_inform: TIntegerField;
    Qnf_ItensIPI_clEnq_inform: TStringField;
    Qnf_ItensIPI_CNPJProd_inform: TStringField;
    Qnf_ItensIPI_cSelo_inform: TStringField;
    Qnf_ItensIPI_qSelo_inform: TIntegerField;
    Qnf_ItensIPI_cEnq_inform: TStringField;
    Qnf_ItensIPI_vBC_inform: TFloatField;
    Qnf_ItensIPI_qUnid_inform: TFloatField;
    Qnf_ItensIPI_vUnid_inform: TFloatField;
    Qnf_ItensIPI_pIPI_inform: TFloatField;
    Qnf_ItensIPI_vIPI_inform: TFloatField;
    Qnf_ItensII_vBc_inform: TFloatField;
    Qnf_ItensII_vDespAdu_inform: TFloatField;
    Qnf_ItensII_vII_inform: TFloatField;
    Qnf_ItensII_vIOF_inform: TFloatField;
    Qnf_ItensPIS_CST_inform: TIntegerField;
    Qnf_ItensPIS_vBC_inform: TFloatField;
    Qnf_ItensPIS_pPIS_inform: TFloatField;
    Qnf_ItensPIS_vPIS_inform: TFloatField;
    Qnf_ItensPIS_qBCProd_inform: TFloatField;
    Qnf_ItensPIS_vAliqProd_inform: TFloatField;
    Qnf_ItensPISST_vBc_inform: TFloatField;
    Qnf_ItensPISST_pPis_inform: TFloatField;
    Qnf_ItensPISST_qBCProd_inform: TFloatField;
    Qnf_ItensPISST_vAliqProd_inform: TFloatField;
    Qnf_ItensPISST_vPIS_inform: TFloatField;
    Qnf_ItensPIS_codrec: TIntegerField;
    Qnf_ItensCOFINS_CST_inform: TIntegerField;
    Qnf_ItensCOFINS_vBC_inform: TFloatField;
    Qnf_ItensCOFINS_pCOFINS_inform: TFloatField;
    Qnf_ItensCOFINS_vCOFINS_inform: TFloatField;
    Qnf_ItensCOFINS_qBCProd_inform: TFloatField;
    Qnf_ItensCOFINS_vAliqProd_inform: TFloatField;
    Qnf_ItensCOFINSST_vBC_inform: TFloatField;
    Qnf_ItensCOFINSST_pCOFINS_inform: TFloatField;
    Qnf_ItensCOFINSST_qBCProd_inform: TFloatField;
    Qnf_ItensCOFINSST_vAliqProd_inform: TFloatField;
    Qnf_ItensCOFINSST_vCOFINS_inform: TFloatField;
    Qnf_ItensISSQN_vBC_inform: TFloatField;
    Qnf_ItensISSQN_vAliq_inform: TFloatField;
    Qnf_ItensISSQN_vISSQN_inform: TFloatField;
    Qnf_ItensISSQN_cMunFG_inform: TIntegerField;
    Qnf_ItensISSQN_cListServ_inform: TIntegerField;
    Qnf_ItensISSQN_SitTrib_inform: TIntegerField;
    Qnf_ItensICMS_vBCSTRet_inform: TFloatField;
    Qnf_ItensICMS_vICMSSTRet_inform: TFloatField;
    Qnf_ItensICMS_motDesICMS: TIntegerField;
    Qnf_ItensICMS_motDesICMS_inform: TIntegerField;
    Qnf_ItensvTotTrib: TFloatField;
    Qnf_Itensmd5: TStringField;
    Qnf_Itenshash: TStringField;
  private
    function InserirRegistro0150(codigo: string): string;
    procedure InserirRegistro0200(id: integer);
    procedure InserirRegistro0400(cfop: string);
    procedure InserirRegistro0190(valor: string);
    function ConverteCST_ICMS(Origem, cst: integer):TACBrCstIcms;
    { Private declarations }
  public
      procedure Gerar_Bloco0(Dt_Inicial, Dt_Fim: TDate; Arq, NUM_REC: string; Concomitante: Boolean; LineBuffer: integer;
                                      Versao_layout: integer;  TIPO_ESCRITUR, IND_SIT_ESPE, cod_inc_trb, ind_apr_cred,
                                      cod_tp_cont, IndRegCum: integer);

      procedure GerarBlocoA; //nf de serviços - nao disponivel neste aplicativo
      procedure GerarBlocoC(CodIndIncTribPer, IndEscriConsolidado: integer);//nf de produtos ICMS/IPI
      procedure Gravar_Blocos;
  end;



var
  DM_SPED_PIS: TDM_SPED_PIS;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDM, uFuncoes, uAutocomConsts;

{$R *.dfm}

{ TDM_SPED_PIS }

function TDM_SPED_PIS.InserirRegistro0150(codigo: string): string;
var
   s: string;
begin
   DM.Q5.Open('select * from vw_dest_nf where cnpj=' + Texto_Mysql(codigo));

   Result := DM.Q5.FieldByName('cnpj').AsString;

   if Result = EmptyStr then
      raise Exception.Create('0150 - O participante ' + codigo + ' não foi encontrado.');

   if DM.Q5.FieldByName('cidade_cod').AsInteger = 0 then
      raise Exception.Create('0150 - O participante ' + codigo + 'está sem código de município.');

   if not ACBrSPEDPisCofins1.Bloco_0.Registro0001.Registro0140.Items[0].Registro0150.LocalizaRegistro(codigo) then
   with ACBrSPEDPisCofins1.Bloco_0.Registro0150New do //0150 - Tabela de Cadastro do Participante
   begin
      COD_PART := Number(Result);
      NOME     := DM.Q5.FieldByName('razaosocial').AsString;
      COD_PAIS := '01058';

      s := Number(DM.Q5.FieldByName('cnpj').AsString);

      if length(s) = 14 then
        CNPJ := s
      else
        CPF  := s;

      IE       := Number(DM.Q5.FieldByName('ie').AsString);
      COD_MUN  := DM.Q5.FieldByName('cidade_cod').AsInteger;
      SUFRAMA  := '';
      ENDERECO := DM.Q5.FieldByName('logradouro').AsString;
      NUM      := DM.Q5.FieldByName('nmro').AsString;
      COMPL    := DM.Q5.FieldByName('complem').AsString;
      BAIRRO   := DM.Q5.FieldByName('bairro').AsString;
   end;
end;

procedure TDM_SPED_PIS.InserirRegistro0190(valor: string);
begin
   with ACBrSPEDPisCofins1.Bloco_0.Registro0001 do
   begin
     if not Registro0140.Items[0].Registro0190.LocalizaRegistro(valor) then
     begin
        DM.Q5.Open('select nome from unidade where unidade =' + Texto_Mysql(valor));

        if DM.Q5.Fields[0].AsString = EmptyStr then
        begin
           Log('SpedP','InserirRegistro0190','0190 - A unidade ' + valor + ' não está cadastrada.');
           raise Exception.Create('0190 - A unidade ' + valor + ' não está cadastrada.');
        end;

        with Registro0140.Items[0].Registro0190.New(Registro0140.Items[0]) do
        begin
           UNID  := valor;
           DESCR := DM.Q5.Fields[0].AsString;
        end;
     end;
   end;
end;

procedure TDM_SPED_PIS.InserirRegistro0200(id: integer);
var
   i: integer;
begin
   with ACBrSPEDPisCofins1.Bloco_0.Registro0001 do
   begin
      DM.Q6.Open('select * from vw_estoque where id =' + Texto_Mysql(id));

      if not Registro0140.Items[0].Registro0200.LocalizaRegistro(IntToStr(id)) then
      begin
         if DM.Q6.IsEmpty then
         BEGIN
            Log('SpedP','InserirRegistro0200','O produto ' + IntToStr(id) + ' não foi localizado.');
            raise Exception.Create('O produto ' + IntToStr(id) + ' não foi localizado.');

           // if DM1.Q6.FieldByName('tipo').AsString = '' then
           //     raise Exception.Create('Produto ' + IntToStr(id) + ': Campo TIPO em branco.');
         END;

         with Registro0140.Items[0].Registro0200.New(Registro0140.Items[0]) do //0200 - itens
         begin
            COD_ITEM     := DM.Q6.FieldByName('id').AsString;
            DESCR_ITEM   := DM.SProc.FieldByName('nome').AsString;
            COD_BARRA    := DM.Q6.FieldByName('cod_gtin').AsString;
            COD_ANT_ITEM := '';
            UNID_INV     := Copy(DM.Q6.FieldByName('sigla_unid').AsString, 1, 2);

            i := StrToIntDef(Number(DM.Q6.FieldByName('tipo').asstring),0);

            iIf(i = 99, 11, i);

            TIPO_ITEM    := TACBrTipoItem(i);
            COD_NCM      := DM.Q6.FieldByName('ncm').AsString;
            EX_IPI       := '';
            COD_GEN      := copy(DM.Q6.FieldByName('ncm').AsString,1,2);
            COD_LST      := '';
            ALIQ_ICMS    := StrToFloatDef(number(DM.Q6.FieldByName('aliq_ecf').AsString), 0)/100;
         end;
      end;

      InserirRegistro0190(Copy(DM.Q6.FieldByName('sigla_unid').AsString, 1, 2));
   end;
end;

procedure TDM_SPED_PIS.InserirRegistro0400(cfop: string);
var
   i: integer;
   b: boolean;
begin
   b := false;

   with ACBrSPEDPisCofins1.Bloco_0.Registro0001 do
   begin
      for i := 0 to Registro0140.Items[0].Registro0400.Count - 1 do
      begin
         if Registro0140.Items[0].Registro0400.Items[i].COD_NAT = cfop then
         begin
            b := True;
            break;
         end;
      end;

      if b then
         exit;

      DM.Q5.Open('select cfop, descricao from cfop where cfop=' + Texto_Mysql(cfop));

      if DM.Q5.IsEmpty then
      BEGIN
         Log('SpedP','InserirRegistro0400','O CFOP ' + cfop + ' não foi localizado.');
         raise Exception.Create('O CFOP ' + cfop + ' não foi localizado.');
      END;

      with Registro0140.Items[0].Registro0400.New(Registro0140.Items[0]) do  // FILHO - REGISTRO 0400
      begin
         COD_NAT   := DM.Q5.FieldByName('cfop').AsString;
         DESCR_NAT := DM.Q5.FieldByName('descricao').AsString;
      end; //0400 fim
   end;
end;

procedure TDM_SPED_PIS.GerarBlocoC(CodIndIncTribPer, IndEscriConsolidado: integer);
var
   vrVenda, vrDesc, pcDesc, vrTemp, vrpisTemp, vrCofinsTemp, vrCheck,
   vrMercTemp, fator, vrPisStTemp, vrCofinsStTemp: Currency;
   pf: Boolean;
   item: integer;
begin   // Alimenta o componente com informações para gerar todos os registros do Bloco C.
   Log('Sped_P','BlocoC','Iniciando...');

 (*  with ACBrSPEDPisCofins1.Bloco_C do
   begin
      if (CodIndIncTribPer <> 1) then
      with RegistroC001New do
      begin
          IND_MOV := imComDados;

          with RegistroC010New do//C010 - Identificação do Estabelecimento
          begin
             CNPJ      := Number(DM.QEmpresaCNPJ.asstring);
             IND_ESCRI := TACBrIndEscrituracao(IndEscriConsolidado);//IndEscriConsolidado;

             if IND_ESCRI = IndEscriIndividualizado then
             begin
                //Lista as Notas

                qnf.Params[0].AsDate := ACBrSPEDPisCofins1.DT_INI;
                qnf.Params[1].AsDate := ACBrSPEDPisCofins1.DT_FIN;
                QNf.Open;
                Qnf_Itens.Open;
                QNF_Chave.Open;
                item := 1;
                Log('SpedP','C100', 'Inicio');

                while not qnf.Eof do
                begin
                   Qnf_Itens.First;

                   with RegistroC100New do
                   begin
                      vrCofinsTemp := 0;
                      vrpisTemp    := 0;
                      vrMercTemp   := 0;
                      vrPisStTemp  := 0;
                      vrCofinsStTemp := 0;

                      PF := Length(Number(QNfDest_CNPJCPF.AsString))<14;

                      if QNfstatus.Value = 2 then
                         COD_SIT  := sdCancelado
                      else
                      begin
                         COD_SIT := sdRegular;
                      end;

                        if COD_SIT <> sdCancelado then
                        begin
                           //participante
                           COD_PART := InserirRegistro0150(Number(QNfDest_CNPJCPF.AsString));
                        end;

                        if (Number(QNfEmit_CNPJCPF.AsString) = Number(DM.QEmpresacnpj.AsString)) then
                            IND_EMIT := edEmissaoPropria
                         else
                            IND_EMIT   := edTerceiros;

                         if QNFIde_tpNF.Value = 1 then
                            IND_OPER   := tpEntradaAquisicao
                         else
                            IND_OPER   := tpSaidaPrestacao;

                         COD_MOD := uFuncoes.Lfill(QNfIde_modelo.AsString,2,'0');

                         if StrToIntDef(QNfIde_serie.AsString, 0)=0 then
                            SER := '1'
                         else
                            SER := QNfIde_serie.AsString;

                         NUM_DOC := QNfIde_nNF.AsString;

                         if (QNfIde_modelo.Value = 55) then
                            CHV_NFE := Number(QNF_Chavechave.AsString);

                         DT_DOC := QNfIde_dEmi.Value;
                         DT_E_S := QNfIde_dSaiEnt.Value;

                         if COD_SIT <> sdCancelado then
                         begin
                             IND_PGTO   := TAcbrIndPgto(QNfIde_indPag.Value);
                             VL_DOC     := QNfICMSTot_vNF.Value;
                             VL_DESC    := QNfICMSTot_vDesc.Value;
                             VL_MERC    := 0;//DM1.QNFvr_tot_prod.Value;
                             IND_FRT    := tfSemCobrancaFrete;
                             VL_FRT     := QNfICMSTot_vFrete.Value;
                             VL_SEG     := QNfICMSTot_vseg.Value;
                             VL_OUT_DA  := QNfICMSTot_vOutro.Value;
                             //icms
                             VL_BC_ICMS := QNfICMSTot_vBC.Value;
                             VL_ICMS    := QNfICMSTot_vICMS.Value;
                             VL_BC_ICMS_ST := QNfICMSTot_vBCST.Value;
                             VL_ICMS_ST := QNfICMSTot_vST.Value;
                             //pis-cofins
                             VL_IPI     := 0;//DM1.QNFvr_ipi.Value;
                             VL_PIS     := 0;//DM1.QNFvr_pis.Value;
                             VL_COFINS  := 0;//DM1.QNFvr_cofins.Value;
                             VL_PIS_ST  := 0;
                             VL_COFINS_ST := 0;

                             while not Qnf_Itens.eof do
                             begin  //c170 - Complemento de Documento – Itens do Documento (códigos 01, 1B, 04 e 55)
                             //   InserirRegistro0190(DM1.QNFAuxunid.AsString);

                                if Qnf_ItensPIS_codrec.Value = 0 then
                                   raise Exception.Create('O produto '+ Qnf_ItensxProd.AsString + ' está com o Cód Receita zerado.');

                                InserirRegistro0200(Qnf_ItenscProd.AsInteger);
                                InserirRegistro0400(Qnf_ItensCFOP.AsString);

                                with RegistroC170New do   //Inicio Adicionar os Itens:
                                begin
                                   NUM_ITEM    := Qnf_ItensnItem.AsString;
                                   inc(item);
                                   COD_ITEM    := Qnf_ItenscProd.AsString;
                                   DESCR_COMPL := '';//complementar.... DM1.QNFAuxdescricao.AsString;
                                   QTD         := Qnf_ItensqCom.Value;
                                   UNID        := Copy(Qnf_ItensuCom.asstring,1,2);
                                   vrMercTemp  := vrMercTemp + (Qnf_ItensvProd.Value - Qnf_ItensvDesc.Value);
                                   VL_ITEM     := Qnf_ItensvProd.Value - Qnf_ItensvDesc.Value;
                                   VL_DESC     := Qnf_ItensvDesc.Value;
                                   IND_MOV     := mfSim;

                                   if Qnf_ItensICMS_CSOSN.AsInteger > 0 then
                                      CST_ICMS := ConverteCST_ICMS(Qnf_ItensICMS_orig.AsInteger,Qnf_ItensICMS_CSOSN.Value*-1)
                                   else
                                      CST_ICMS := ConverteCST_ICMS(Qnf_ItensICMS_orig.AsInteger,Qnf_ItensICMS_CST.Value);

                                   CFOP          := Qnf_Itenscfop.AsString;
                                   COD_NAT       := Qnf_Itenscfop.AsString;
                                   VL_BC_ICMS    := Qnf_ItensICMS_vBC.Value;
                                   VL_BC_ICMS_ST := Qnf_ItensICMS_vBCST.Value;
                                   ALIQ_ST       := Qnf_ItensICMS_pICMS.Value;
                                   VL_ICMS_ST    := Arredonda((Qnf_ItensICMS_vBCST.Value*Qnf_ItensICMS_pICMS.Value)/100,2);
                                   IND_APUR      := iaMensal;
                                   COD_ENQ       := '';

                               {    if (copy(Qnf_Itensncm.Value,1,4)='0201')or
                                      (copy(Qnf_Itensncm.Value,1,4)='0202')or
                                      (copy(Qnf_Itensncm.Value,1,6)='020620')or
                                      (copy(Qnf_Itensncm.Value,1,6)='020621')or
                                      (copy(Qnf_Itensncm.Value,1,6)='020629')or
                                      (copy(Qnf_Itensncm.Value,1,7)='1502001')or
                                      (Qnf_Itensncm.Value='02061000')or
                                      (Qnf_Itensncm.Value='05100010') then
                                      fator := 0.4 //reduz 40% as aliquotas nestes ncm
                                    else
                                       fator := 1; }

                       {        //    if (Qnf_Itenscfop.AsInteger = 5929)or
                          //            (Qnf_Itenscfop.AsInteger = 6929)or
                         //             (Qnf_Itenscfop.AsInteger = 5202)or
                          //            (Qnf_Itenscfop.AsInteger = 6202)then
                           //        begin
                                     CST_IPI    := ConverteIPICST(99);
                                     CST_PIS    := ConvertePisCST(49);
                                     CST_COFINS := ConverteCofinssCST(49);
                               //    end
                                   else
                             //// //     if (DM1.QNFAuxcfop.AsInteger = 5201)or
                                      (DM1.QNFAuxcfop.AsInteger = 6201)then
                             //      begin
                             //        CST_IPI    := ConverteIPICST(99);
                             //        CST_PIS    := ConvertePisCST(99);
                             //        CST_COFINS := ConverteCofinssCST(99);
                             //      end
                                   else
                                   if ((PF)and(fator = 1)) or
                                      (DM1.QNFAuxcfop.AsInteger = 1910) or //bonificação ou brinde
                                      (DM1.QNFAuxcfop.AsInteger = 2910) then
                                   begin
                                     if DM1.QNFtipo_nota.AsString = 'E' then
                                     begin
                                        CST_IPI    := ConverteIPICST(99);
                                        CST_PIS    := ConvertePisCST(70);
                                        CST_COFINS := ConverteCofinssCST(70);
                                     end
                                     else
                                     begin
                                        CST_IPI    := ConverteIPICST(99);
                                        CST_PIS    := ConvertePisCST(6);
                                        CST_COFINS := ConverteCofinssCST(6);
                                     end;
                                   end
                                   else
                                   begin  }
                                      CST_IPI      := TACBrCstIpi(Qnf_ItensIPI_CST.Value);
                                      CST_PIS      := TACBrCstpis(Qnf_ItensPIS_CST.Value);
                                      CST_COFINS   := TACBrCstCofins(Qnf_ItensCOFINS_CST.Value);
                                      VL_BC_PIS    := Arredonda(Qnf_ItensPIS_vBC.Value,2);
                                      VL_BC_COFINS := Arredonda(Qnf_ItensCOFINS_vBC.Value,2);
                                   //end;

                                   VL_BC_IPI := Arredonda(Qnf_ItensIPI_vBC.Value,2);
                                   ALIQ_IPI  := Arredonda(Qnf_ItensIPI_pIPI.Value,2);
                                   VL_IPI    := Arredonda(Qnf_ItensIPI_vIPI.Value,2);

                                   if VL_BC_PIS > 0 then
                                      ALIQ_PIS_PERC := Qnf_ItensPIS_pPIS.Value//*fator
                                   else
                                      ALIQ_PIS_PERC := 0;
                                  //  QUANT_BC_PIS  := DM1.QNFAuxquant.Value;
                                   ALIQ_PIS_R := 0;//Arredonda((VL_BC_PIS*ALIQ_PIS_PERC)/100,2);
                                   vrPisTemp  := vrpisTemp + Arredonda((VL_BC_PIS * Qnf_ItensPIS_pPIS.Value)/100,2);
                                   VL_PIS     := Arredonda((VL_BC_PIS * Qnf_ItensPIS_pPIS.Value)/100,2);

                                   if VL_BC_COFINS >0 then
                                      ALIQ_COFINS_PERC := Qnf_ItensPIS_pPIS.Value
                                   else
                                      ALIQ_COFINS_PERC := 0;

                                 //   QUANT_BC_COFINS  := DM1.QNFAuxquant.Value;
                                   ALIQ_COFINS_R    := 0;//Arredonda((VL_BC_COFINS*ALIQ_COFINS_PERC)/100,2);;
                                   vrCofinsTemp     := vrCofinsTemp + Arredonda((VL_BC_COFINS *Qnf_ItensPIS_pPIS.Value)/100,2);
                                   VL_COFINS        := Arredonda((VL_BC_COFINS*Qnf_ItensPIS_pPIS.Value)/100,2);
                              parei aqui
                                   COD_CTA          := frmSped.edCCA.Text;


                                  // if DM1.QNFAuxpis_cst.AsInteger in[5,75] then
                              //    begin
                                      vrPisStTemp    := vrPisStTemp + VL_PIS;
                               //    end;

                                //   if DM1.QNFAuxcofins_cst.AsInteger in[5,75] then
                               //    begin
                                      vrCofinsStTemp := vrCofinsStTemp + VL_COFINS;
                               //    end;

                                   //apuração isentos PIS
                                 PAREI AQUI
                                   if (IND_EMIT = edEmissaoPropria)and
                                      ((CST_PIS in [stpisMonofaticaAliquotaZero,
                                                    stpisAliquotaZero,
                                                    stpisIsentaContribuicao,
                                                    stpisSemIncidenciaContribuicao,//08
                                                    stpisSuspensaoContribuicao])or
                                      ((CST_PIS= stpisValorAliquotaPorST)and(VL_PIS=0))) then
                                   begin
                                      DM1.Pesquisa(DM1.DB1, DM1.q2, 'select id, nome, cod_receita from estoque where id="' +
                                                                     DM1.QNFAuxcod_prod.AsString + '"'
                                      );

                                      if (DM1.Q2.FieldByName('cod_receita').AsInteger > 0) then
                                      begin
                                         //M410 - PIS
                                         DecimalSeparator :='.';
                                         DM1.ExecSQL(DM1.DB1, 'insert into sped_m410_m810 set tipo=400, cst="' +
                                                              IntToStr(ConverteAcbrCSTPIS(CST_PIS)) +
                                                              '",cod_rec="' + DM1.Q2.FieldByName('cod_receita').AsString +
                                                              '", valor=' + FloatToStr(VL_ITEM) + ';'
                                         );
                                      end;
                                   end;

                                 DecimalSeparator := '.';
                                 DM1.ExecSQL(DM1.DB1, 'insert into sped_c170 set cst="' + IntToStr(ConverteAcbrCSTPIS(CST_PIS)) +
                                                      '",valor="' +  Floattostr(VL_ITEM) +
                                                      '",cod="'  + DM1.Q2.FieldByName('cod_receita').AsString +
                                                      '",nmro_nf="' + DM1.QNFnmro_nf.AsString +
                                                      '",vrdoc="' + DM1.QNFvr_nota.AsString +
                                                      '",vrdesc="' + DM1.QNFAuxpreco_desc.AsString +
                                                      '", vrtotal="' + FloatToStr(dm1.QNFAuxtotal.Value - DM1.QNFAuxpreco_desc.Value) +
                                                      '",item="' + DM1.QNFAuxid.AsString +
                                                      '",tipo="' + DM1.QNFtipo_nota.AsString +
                                                      '";'
                                 );

                                   //apuração isentos COFINS

                                   if (IND_EMIT = edEmissaoPropria)and
                                      ((CST_COFINS in [stCOFINSMonofaticaAliquotaZero,
                                                    stCOFINSAliquotaZero,
                                                    stCOFINSIsentaContribuicao,
                                                    stCOFINSSemIncidenciaContribuicao, //08
                                                    stCOFINSSuspensaoContribuicao])or
                                      ((CST_COFINS= stCOFINSValorAliquotaPorST)and(VL_COFINS=0))) then
                                   begin
                                      DM1.Pesquisa(DM1.DB1, DM1.q2, 'select cod_receita from estoque where id="' +
                                                                     DM1.QNFAuxcod_prod.AsString + '"'
                                      );

                                      if (DM1.Q2.FieldByName('cod_receita').AsInteger > 0) then
                                      begin
                                         //M810 - COFINS
                                         DecimalSeparator :='.';
                                        DM1.ExecSQL(DM1.DB1, 'insert into sped_m410_m810 set tipo=800, cst="' +
                                                              IntToStr(ConverteAcbrCSTcofins(CST_COFINS)) +
                                                              '",cod_rec="' + DM1.Q2.FieldByName('cod_receita').AsString +
                                                              '", valor=' + FloatToStr(VL_ITEM) + ';'
                                         );
                                      end;
                                   end;
                                end; //Fim dos Itens;
                               // acresce os valores ao C100

                                DM1.QNFAux.Next;
                                Application.ProcessMessages;
                             end;//fim loop qnfaux
                         end;//fim if cancelada = S
                    // SpedP.WriteBloco_C( False );  // False, NAO fecha o Bloco
                       VL_PIS     := vrpisTemp;//DM1.QNFvr_pis.Value;
                       VL_COFINS  := vrCofinsTemp;//DM1.QNFvr_cofins.Value;
                       VL_MERC    := vrMercTemp;
                       VL_PIS_ST  := vrPisStTemp;
                       VL_COFINS_ST := vrCofinsStTemp;
                       DM1.QNF.Next;
                       Application.ProcessMessages;
                   end; //fim loop qnf
                end;//c100new fim
             end;//IndEscriIndividualizado fim
          end;//RegistroC010new fim
      end;//RegistroC001New fim
   end; //Bloco_C fim   *)
end;

procedure TDM_SPED_PIS.Gerar_Bloco0(Dt_Inicial, Dt_Fim: TDate; Arq, NUM_REC: string;
  Concomitante: Boolean; LineBuffer, Versao_layout, TIPO_ESCRITUR, IND_SIT_ESPE,
  cod_inc_trb, ind_apr_cred, cod_tp_cont, IndRegCum: integer);
begin // Alimenta o componente com informações para gerar todos os registros do Bloco 0.
   DM.QEmpresa.Open;
   Log('Sped_P','Bloco0', 'Iniciando... Perfil ' + DM.QEmpresaperfil.AsString + ' Versão ' + IntToStr(Versao_layout));

   with ACBrSPEDPisCofins1 do
   begin
      DT_INI := Dt_Inicial;
      DT_FIN := Dt_Fim;

      if Arq = '' then
      begin
         Path   := AnsiString(Aqui('SPED PIS_COFINS\' + FormatDateTime('yyyymm', Dt_Fim), ''));
         Arquivo:= AnsiString(Number(DM.QEmpresacnpj.AsString) + '_spedfiscal.txt');
      end
      else
      begin
         Path   := AnsiString(Aqui(C_DIRFISCO,''));
         Arquivo:= AnsiString(Arq);
      end;

      Log('Sped_P','Bloco0', path + ' ' + arquivo + Iif(Concomitante, ' Concomitante', ' Não concomitante'));

      if Concomitante then
      begin
         LinhasBuffer := LineBuffer;
      end;

      IniciaGeracao;

      WITH Bloco_0 do
      begin
         with Registro0000New do
         begin
            case Versao_layout of
               100: COD_VER := vlVersao100;
               101: COD_VER := vlVersao101;
               200: COD_VER := vlVersao200;
               201: COD_VER := vlVersao201;
            end;

            TIPO_ESCRIT      := TACBrTipoEscrit(TIPO_ESCRITUR);
            IND_SIT_ESP      := TACBrIndSitEsp(Iif(IND_SIT_ESPE = -1, 5, IND_SIT_ESPE));
            NUM_REC_ANTERIOR := Trim(NUM_REC);
            DT_INI           := Dt_Inicial;
            DT_FIN           := Dt_Fim;
            //dados da empresa
            NOME             := DM.QEmpresaRAZAO_SOCIAL.AsString;
            CNPJ             := Number(DM.QEmpresaCNPJ.AsString);
            UF               := DM.QEmpresaUF.AsString;
            COD_MUN          := DM.QEmpresacodmun.AsInteger;
            SUFRAMA          := '';
            IND_NAT_PJ       := TACBrIndicadorNaturezaPJ(DM.QEmpresaefd_contr_npj.Value);
            IND_ATIV         := TACBrIndicadorAtividade(DM.QEmpresaefd_contr_ativ_prep.Value);

            with Registro0001New do
            begin
               IND_MOV := imComDados;

               with Registro0100New do   // FILHO - Dados do contador.
               begin
                  NOME     := DM.QEmpresacont_nome.AsString;
                  CPF      := Number(DM.QEmpresacont_cpf.AsString);
                  CRC      := DM.QEmpresacont_crc.AsString;
                  CNPJ     := Number(DM.QEmpresacont_cnpj.AsString);
                  CEP      := Number(DM.QEmpresacont_cep.AsString);
                  ENDERECO := DM.QEmpresacont_logradouro.AsString;
                  NUM      := DM.QEmpresacont_nmro.AsString;
                  COMPL    := DM.QEmpresacont_complem.AsString;
                  BAIRRO   := DM.QEmpresacont_bairro.AsString;
                  FONE     := Number(DM.QEmpresacont_tel.AsString);
                  FAX      := Number(DM.QEmpresacont_fax.AsString);
                  EMAIL    := DM.QEmpresacont_email.AsString;
                  COD_MUN  := DM.QEmpresacont_codmun.AsInteger;
               end;

               with Registro0110New do  // FILHO - Regime de Apuração
               begin
                  COD_INC_TRIB  := TACBrCodIndIncTributaria(cod_inc_trb);
                  IND_APRO_CRED := TACBrIndAproCred(ind_apr_cred);
                  COD_TIPO_CONT := TACBrCodIndTipoCon(cod_tp_cont);
                  //Campo IND_REG_CUM apenas para Lucro Presumido e (COD_INC_TRIB = 2) - obsoleto
              //    if (COD_INC_TRIB = codEscrOpIncCumulativo)and (DM.QEmpresaindativ.Value=3) then
               //      IND_REG_CUM := TACBrIndRegCum(IndRegCum);

{
COD_INC_TRIB:
0codEscrOpIncNaoCumulativo, // 1 - Escrituração de operações com incidencia exclusivamente no regime não cumulativo
1 codEscrOpIncCumulativo,    // 2 - Escrituração de operações com incidencia exclusivamente no regime cumulativo
2 codEscrOpIncAmbos          //3 - ambos

1 e 3 exigem o 0111}
                  if cod_inc_trb in [0,2] then
                  with Registro0111New do
                  begin
                     REC_BRU_NCUM_TRIB_MI := 0;
                     REC_BRU_NCUM_NT_MI   := 0;
                     REC_BRU_NCUM_EXP     := 0;
                     REC_BRU_CUM          := 0;
                     REC_BRU_TOTAL        := 0;
                  end;
               end;


               with Registro0140New do //0140 - Tabela de Cadastro de Estabelecimento   // FILHO
               begin
                  COD_EST := '1';
                  NOME    := DM.QEmpresanome_fantasia.AsString;
                  CNPJ    := Number(DM.QEmpresacnpj.AsString);
                  UF      := DM.QEmpresaUF.AsString;
                  IE      := Number(DM.QEmpresaie.AsString);
                  COD_MUN := DM.QEmpresacodmun.AsInteger;
                  IM      := Number(DM.QEmpresaim.AsString);
                  SUFRAMA := '';

                  with Registro0500New do  // FILHO - REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS
                  begin
                     DT_ALT      := DM.QEmpresaefd_fiscal_data.Value;
                     COD_NAT_CC  := TACBrNaturezaConta(DM.QEmpresaefd_fiscal_pc_nat.AsInteger);
                     IND_CTA     := Iif(DM.QEmpresaefd_fiscal_pc_tipo.AsString = 'A', indCTAnalitica, indCTASintetica);
                     NIVEL       := DM.QEmpresaefd_fiscal_pc_nivel.AsString;
                     COD_CTA     := DM.QEmpresaefd_fiscal_pc_cod.AsString;
                     NOME_CTA    := DM.QEmpresaefd_fiscal_pc_nome.AsString;
                     COD_CTA_REF := '';
                     CNPJ_EST    := Number(DM.QEmpresaCNPJ.AsString);
                  end; //0500 fim
               end;//140new fim
            end; //0001new fim
         end; //Registro0000New fim
         Log('Sped_P','Bloco0', 'Bloco 0 gerado.');
      end;//Bloco_0 fim
   end;
end;

procedure TDM_SPED_PIS.Gravar_Blocos;
begin
   try
      ACBrSPEDPisCofins1.WriteBloco_0;
      ACBrSPEDPisCofins1.WriteBloco_C(True);
      ACBrSPEDPisCofins1.WriteBloco_D;
      ACBrSPEDPisCofins1.WriteBloco_1;
      ACBrSPEDPisCofins1.WriteBloco_9;
      Log('Sped_P','Gravar','Arquivo gerado em ' + String(ACBrSPEDPisCofins1.Path + ACBrSPEDPisCofins1.Arquivo));
   except
      on E: Exception do
      begin
         Log('Sped_F','Gravar','ERRO ' + E.Message);
         ShowMessage(E.Message);
      end;
   end;
end;

function TDM_SPED_PIS.ConverteCST_ICMS(Origem, cst: integer): TACBrCstIcms;
var
 s, ss: string;
begin

   {

0 oeNacional,
1 oeEstrangeiraImportacaoDireta,
2 oeEstrangeiraAdquiridaBrasil,
3 oeNacionalConteudoImportacaoSuperior40,
4 oeNacionalProcessosBasicos,
5 oeNacionalConteudoImportacaoInferiorIgual40,
6 oeEstrangeiraImportacaoDiretaSemSimilar,
7 oeEstrangeiraAdquiridaBrasilSemSimilar,
8 oeNacionalConteudoImportacaoSuperior70
   }
   s := InttoStr(origem);
   ss := Iif(cst < 0, ' and SN="N"', ' and SN="S"');
   cst := Iif(cst<0, cst*-1,cst);

   DM.Q5.Open('select cst from cst where acbr=' + Texto_Mysql(InttoStr(cst)) + ss);
   ss := FormatFloat('00',(DM.Q5.Fields[0].AsInteger));
   cst := StrToIntDef(s + ss, 0);

   case cst of
       0: Result := sticmsTributadaIntegralmente;
      10: Result := sticmsTributadaComCobracaPorST;
      20: Result := sticmsComReducao;
      30: Result := sticmsIsentaComCobracaPorST;
      40: Result := sticmsIsenta;
      41: Result := sticmsNaoTributada;
      50: Result := sticmsSuspensao;
      51: Result := sticmsDiferimento;
      60: Result := sticmsCobradoAnteriormentePorST;
      70: Result := sticmsComReducaoPorST;
      90: Result := sticmsOutros;
      100: Result := sticmsEstrangeiraImportacaoDiretaTributadaIntegralmente;
      110: Result := sticmsEstrangeiraImportacaoDiretaTributadaComCobracaPorST;
      120: Result := sticmsEstrangeiraImportacaoDiretaComReducao;
      130: Result := sticmsEstrangeiraImportacaoDiretaIsentaComCobracaPorST;
      140: Result := sticmsEstrangeiraImportacaoDiretaIsenta;
      141: Result := sticmsEstrangeiraImportacaoDiretaNaoTributada;
      150: Result := sticmsEstrangeiraImportacaoDiretaSuspensao;
      151: Result := sticmsEstrangeiraImportacaoDiretaDiferimento;
      160: Result := sticmsEstrangeiraImportacaoDiretaCobradoAnteriormentePorST;
      170: Result := sticmsEstrangeiraImportacaoDiretaComReducaoPorST;
      190: Result := sticmsEstrangeiraImportacaoDiretaOutros;
      200: Result := sticmsEstrangeiraAdqMercIntTributadaIntegralmente;
      210: Result := sticmsEstrangeiraAdqMercIntTributadaComCobracaPorST;
      220: Result := sticmsEstrangeiraAdqMercIntComReducao;
      230: Result := sticmsEstrangeiraAdqMercIntIsentaComCobracaPorST;
      240: Result := sticmsEstrangeiraAdqMercIntIsenta;
      241: Result := sticmsEstrangeiraAdqMercIntNaoTributada;
      250: Result := sticmsEstrangeiraAdqMercIntSuspensao;
      251: Result := sticmsEstrangeiraAdqMercIntDiferimento;
      260: Result := sticmsEstrangeiraAdqMercIntCobradoAnteriormentePorST;
      270: Result := sticmsEstrangeiraAdqMercIntComReducaoPorST;
      290: Result := sticmsEstrangeiraAdqMercIntOutros;
    //  300: Result := csticms300;
      310: Result := csticms310;
      320: Result := csticms320;
      330: Result := csticms330;
      340: Result := csticms340;
      341: Result := csticms341;
      350: Result := csticms350;
      351: Result := csticms351;
      360: Result := csticms360;
      370: Result := csticms370;
      390: Result := csticms390;
   //   400: Result := csticms400;
      410: Result := csticms410;
      420: Result := csticms420;
      430: Result := csticms430;
      440: Result := csticms440;
      441: Result := csticms441;
      450: Result := csticms450;
      451: Result := csticms451;
      460: Result := csticms460;
      470: Result := csticms470;
      490: Result := csticms490;
   //   500: Result := csticms500;
      510: Result := csticms510;
      520: Result := csticms520;
      530: Result := csticms530;
      540: Result := csticms540;
      541: Result := csticms541;
      550: Result := csticms550;
      551: Result := csticms551;
      560: Result := csticms560;
      570: Result := csticms570;
      590: Result := csticms590;
      600: Result := csticms600;
      610: Result := csticms610;
      620: Result := csticms620;
      630: Result := csticms630;
      640: Result := csticms640;
      641: Result := csticms641;
      650: Result := csticms650;
      651: Result := csticms651;
      660: Result := csticms660;
      670: Result := csticms670;
      690: Result := csticms690;
      700: Result := csticms700;
      710: Result := csticms710;
      720: Result := csticms720;
      730: Result := csticms730;
      740: Result := csticms740;
      741: Result := csticms741;
      750: Result := csticms750;
      751: Result := csticms751;
      760: Result := csticms760;
      770: Result := csticms770;
      790: Result := csticms790;
      101: Result := sticmsSimplesNacionalTributadaComPermissaoCredito;
      102: Result := sticmsSimplesNacionalTributadaSemPermissaoCredito;
      103: Result := sticmsSimplesNacionalIsencaoPorFaixaReceitaBruta ;
      201: Result := sticmsSimplesNacionalTributadaComPermissaoCreditoComST;
      202: Result := sticmsSimplesNacionalTributadaSemPermissaoCreditoComST;
      203: Result := sticmsSimplesNacionalIsencaoPorFaixaReceitaBrutaComST ;
      300: Result := sticmsSimplesNacionalImune;
      400: Result := sticmsSimplesNacionalNaoTributada;
      500: Result := sticmsSimplesNacionalCobradoAnteriormentePorST;
      900: Result := sticmsSimplesNacionalOutros;
   end;
end;

procedure TDM_SPED_PIS.GerarBlocoA;//nf de serviços
begin
   with ACBrSPEDPisCofins1.Bloco_A do
   begin
      with RegistroA001New do
      begin
         IND_MOV := imSemDados;
      end;
   end;
end;



end.
