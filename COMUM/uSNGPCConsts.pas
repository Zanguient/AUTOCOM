unit uSNGPCConsts;

interface
{
medicam_apresentacao,medicam_principio_atv,medicam_nomelab,medicam_portaria,medicam_registroms,medicam_pmc,medic_qtcaixa,medic_fracao,medic_atualizar_web
}

   uses SysUtils, uAutocomConsts, uFuncoes;

   const
      dcb = 'AM|A1|A2|A3|B1|B2|C1|C2|C3|C4|C5|A-1|A-2|A-3|B-1|B-2|C-1|C-2|C-3|C-4|C-5';

      campos = ' e.id,e.nome,e.medicam_apresentacao,e.medicam_nomelab,e.medicam_portaria,e.cod_gtin,' +
               'e.unidade,e.medicam_registroms,e.medicam_principio_atv ';

      SNGPC_CMSG = 'Um arquivo XML já foi gerado, com período incluindo esta data.' + C_CR +
                   'Para fazer a movimentação, exclua o arquivo do período que inclui esta data' +
                   'e, após a movimentação, gere novamente o arquivo XML.' + C_CR + C_CR +
                   'ATENÇÃO! - Se o arquivo já foi transmitido, não exclua o arquivo!';

      SNGPC_ININAME = 'ksngpc20.ini';
      SNGPC_PATH = 'SNGPC';
      SNGPC_PATHREC = SNGPC_PATH + '\RECEITAS\';

      SNGPC_SQL1 = 'select p.nome, p.cod_gtin as ean, m.id, m.arq_xml_entr, ' +
                   'm.classe_terap,m.unid,m.estoque,dt_nf,dt_entrada,dt_saida,dt_perda,' +
                   'dt_vencim,nmro_nf,lote,cnpj_origem,cnpj_destino,registro_ms,motivo_perda,' +
                   'count(*) as sngpc from sngpc_movi m left join estoque p on p.id = m.estoque ' +
                   'where nmro_nf=0 group by lote';

      SNGPC_SQL2 = 'select count(*) from sngpc_gerados where ' + C_SOH + ' BETWEEN dt_ini and dt_fim';
      SNGPC_SQL3 = 'select * from sngpc_gerados where dt_ini=' + C_SOH + ' and dt_fim=' + C_STX;
      SNGPC_SQL4 = 'delete from sngpc_gerados where dt_ini='   + C_SOH + ' and dt_fim=' + C_STX;

      SNGPC_SQL5 = 'delete from sngpc_movi where nmro_nf=' + C_ASPAS + (C_SOH) + C_ASPAS +
                   ' and cnpj_origem=' + C_ASPAS + (C_STX) + C_ASPAS +
                   ' and estoque='     + C_ASPAS + (C_ETX) + C_ASPAS +
                   ' and lote='        + C_ASPAS + (C_EOT) + C_ASPAS + ';' +
                   ' update sngpc_movi_bkp set venda=-1 where nmro_nf=' + C_ASPAS +(C_ENQ) + C_ASPAS +
                   ' and cnpj_origem=' + C_ASPAS + (C_ACK) + C_ASPAS +
                   ' and estoque='     + C_ASPAS + (C_BEL) + C_ASPAS +
                   ' and lote='        + C_ASPAS + (C_BS)  + C_ASPAS + ';';

      SNGPC_SQL6 = 'select count(*) from sngpc_gerados where ' + C_SOH + ' between dt_ini and dt_fim ';

      SNGPC_SQL7 = 'select * from sngpc_movi where nmro_nf=' + C_ASPAS +(C_SOH) + C_ASPAS +
                   ' and lote=' + C_ASPAS + (C_STX) + C_ASPAS +
                   ' and cnpj_origem='  + C_ASPAS + (C_ETX) + C_ASPAS +
                   ' and cnpj_destino=' + C_ASPAS + (C_EOT) + C_ASPAS +
                   ' and registro_ms='  + C_ASPAS + (C_ENQ) + C_ASPAS;

      SNGPC_SQL8 = 'INSERT INTO sngpc_movi SET estoque=' + C_ASPAS + (C_SOH) + C_ASPAS +
                   ',produto='       + C_ASPAS + (C_STX) + C_ASPAS +
                   ',dt_vencim='     + C_ETX +
                   ', dt_nf='        + C_EOT +
                   ', dt_entrada='   + C_ENQ +
                   ', nmro_nf='      + C_ASPAS + (C_ACK) + C_ASPAS +
                   ', lote='         + C_ASPAS + (C_BEL) + C_ASPAS +
                   ', cnpj_origem='  + C_ASPAS + (C_BS)  +  C_ASPAS +
                   ', cnpj_destino=' + C_ASPAS + (C_HT)  + C_ASPAS +
                   ', registro_ms='  + C_ASPAS + (C_VT)  + C_ASPAS +
                   ', nfaux ='       + C_ASPAS + (C_FF)  + C_ASPAS +
                   ', classe_terap=' + C_ASPAS + (C_CR)  + C_ASPAS +
                   ', unid='         + C_ASPAS + (C_LF)  + C_ASPAS + '; ' +
                   'replace into sngpc_movi_bkp(select * from sngpc_movi ' +
                   'where id=(select max(id) from sngpc_movi));';

      SNGPC_SQL8a = 'INSERT INTO sngpc_movi SET estoque=' + C_ASPAS + (C_SOH) + C_ASPAS +
                    ', produto=estoque, dt_vencim=' + (C_STX) +
                    ', dt_entrada=' + (C_ETX) +
                    ', nmro_nf=0, lote=' + C_ASPAS + (C_EOT) + C_ASPAS +
                    ', cnpj_origem='     + C_ASPAS + (C_ENQ) + C_ASPAS +
                    ', cnpj_destino='    + C_ASPAS + (C_ACK) + C_ASPAS +
                    ', registro_ms='     + C_ASPAS + (C_BEL) + C_ASPAS +
                    ', unid='            + C_ASPAS + (C_BS)  + C_ASPAS +
                    ', classe_terap='    + C_ASPAS + (C_HT) + C_ASPAS + ';' +
                    'replace into sngpc_movi_bkp(select * from sngpc_movi ' +
                    'where id=(select max(id) from sngpc_movi));';

      SNGPC_SQL9 = 'update estoque set medicam_portaria='    + C_ASPAS + (C_SOH) + C_ASPAS + ' where id=' + C_ASPAS + (C_STX) + C_ASPAS + ';';
      SNGPC_SQL10 = 'update estoque set medicam_registroms=' + C_ASPAS + (C_SOH) + C_ASPAS + ' where id=' + C_ASPAS + (C_STX) + C_ASPAS + ';';

      SNGPC_SQL11 = ' sngpc_movi where estoque=' + C_ASPAS + (C_SOH) + C_ASPAS +
                   ' and dt_vencim='     + C_STX +
                    ' and dt_nf='        + C_ETX +
                    ' and dt_entrada='   + C_EOT +
                    ' and nmro_nf='      + C_ASPAS + (C_ENQ) + C_ASPAS +
                    ' and lote='         + C_ASPAS + (C_ACK) + C_ASPAS +
                    ' and cnpj_origem='  + C_ASPAS + (C_BEL) + C_ASPAS +
                    ' and cnpj_destino=' + C_ASPAS + (C_BS)  + C_ASPAS +
                    ' and registro_ms='  + C_ASPAS + (C_HT)  + C_ASPAS +
                    ' and nfaux ='       + C_ASPAS + (C_VT)  + C_ASPAS + ';';

      SNGPC_SQL12 = 'select p.nome,cod_gtin as ean,' +
                    'm.id, m.arq_xml_entr, m.classe_terap, m.unid, ' +
                    'estoque,dt_nf,dt_entrada,dt_saida,dt_perda,' +
                    'dt_vencim,nmro_nf,lote,cnpj_origem,cnpj_destino,' +
                    'registro_ms,motivo_perda,count(*) as sngpc from ' +
                    'sngpc_movi m left join estoque p on p.id = m.estoque ' +
                    'where nmro_nf='      + C_ASPAS + (C_SOH) + C_ASPAS +
                    ' and m.cnpj_origem=' + C_ASPAS + (C_STX) + C_ASPAS +
                    ' group by lote';

      SNGPC_SQL13 = 'update sngpc_movi set dt_perda=null, motivo_perda=null where estoque=' + C_ASPAS + (C_SOH) + C_ASPAS +
                    ' and registro_ms=' + C_ASPAS + (C_STX) + C_ASPAS +
                    ' and lote='        + C_ASPAS + (C_ETX) + C_ASPAS +
                    ' and dt_perda='    + C_EOT +
                    ' limit '           + C_ENQ + ';';

      SNGPC_SQL14 = 'select seq from sngpc_seq where tipo=' + C_ASPAS + (C_SOH) + C_ASPAS;
      SNGPC_SQL15 = 'select medico,conselho_prof,uf from sngpc_sai where nmro_prof =' + C_ASPAS + (C_SOH) + C_ASPAS;

      SNGPC_SQL16 = 'update sngpc_movi set dt_perda=' + (C_SOH) +
                    ', sngpc=0, motivo_perda='        + C_ASPAS + (C_STX) + C_ASPAS +
                    ' where estoque='                 + C_ASPAS + (C_ETX) + C_ASPAS +
                    ' and lote='                      + C_ASPAS + (C_EOT) + C_ASPAS +
                    ' and dt_saida is null and dt_perda is null limit ' + C_ENQ + ';' +
                    'replace into sngpc_movi_bkp(select * from sngpc_movi ' +
                    'where dt_perda is not null);';

      SNGPC_SQL17 = 'truncate table sngpc_movi;' +
                    'truncate table sngpc_invent;' +
                    'truncate table sngpc_gerados;' +
                    'truncate table sngpc_perdas;' +
                    'truncate table sngpc_sai;' +
                    'truncate table sngpc_comprador;' +
                    //marcar os bkp como deletados(-1)
                    'update sngpc_seq set tipo=1;' +//qdo inventario incial
                    'update sngpc_movi_bkp set venda=-1;' +
                    'update sngpc_perdas_bkp set cod=-1;' +
                    'update sngpc_sai_bkp set venda=-1;' +
                    'update sngpc_comprador_bkp set uf_doc="-1";';

      SNGPC_SQL18 = 'update sngpc_invent set validado="N", data=null;' +
                    'replace into sngpc_invent_bkp(select * from sngpc_invent);';

      SNGPC_SQL20 = 'update sngpc_invent set validado = "C", data=' + (C_SOH) + ';' +
                    'replace into sngpc_invent_bkp(select * from sngpc_invent);';

      SNGPC_SQL21 = 'update sngpc_invent set validado="V"; replace into sngpc_invent_bkp(select * from sngpc_invent);';
      SNGPC_SQL22 = 'update sngpc_invent set validado="N",data=null; replace into sngpc_invent_bkp(select * from sngpc_invent);';
      SNGPC_SQL23 = 'update sngpc_invent set validado="C",data=null; replace into sngpc_invent_bkp(select * from sngpc_invent);';
      SNGPC_SQL24 = 'update sngpc_invent set validado="T"; replace into sngpc_invent_bkp(select * from sngpc_invent);';

      SNGPC_SQL25 = 'replace into sngpc_sai_bkp(select * from sngpc_sai ' +
                    'where id=(select max(id) from sngpc_sai));' +
                    'update sngpc_sai_bkp set venda=(select max(id) from sngpc_sai) where venda=0;' +
                    'update sngpc_movi set dt_saida=' + (C_SOH) +
                    ', sngpc=(select max(id) from sngpc_sai) where estoque=' + C_ASPAS + (C_STX) + C_ASPAS +
                    ' and lote=' + C_ASPAS + (C_ETX) + C_ASPAS +
                    ' and dt_saida is null limit ' +  C_EOT + ';' +
                    'replace into sngpc_movi_bkp(select * from sngpc_movi ' +
                    'where sngpc=(select max(id) from sngpc_sai));';

      SNGPC_SQL26 = 'SELECT count(*) from sngpc_movi where estoque=' + C_ASPAS + (C_SOH) + C_ASPAS +
                     ' and registro_ms=' + C_ASPAS + (C_STX) + C_ASPAS +
                     ' and lote=' + C_ASPAS + (C_ETX) + C_ASPAS +
                     ' and dt_entrada=' +  (C_EOT) ;

      SNGPC_SQL27 = 'delete from sngpc_movi where estoque=' + C_ASPAS + (C_SOH) + C_ASPAS +
                    ' and registro_ms=' + C_ASPAS + (C_STX) + C_ASPAS +
                    ' and lote=' + C_ASPAS + (C_ETX) + C_ASPAS +
                    ' and dt_entrada=' + (C_EOT) +
                    ' limit ' + C_ENQ + ';';

      SNGPC_SQL28 = 'delete from sngpc_sai where id=' + C_ASPAS + (C_SOH) + C_ASPAS + ';' +
                    'update sngpc_sai_bkp set venda=-1 where venda=' + C_ASPAS + (C_STX) + C_ASPAS + ';' +
                    'update sngpc_movi set dt_saida=null, sngpc=0 where sngpc=' + C_ASPAS + (C_ETX) + C_ASPAS + ';';

      SNGPC_SQL29 = 'select p.nome,cod_gtin as ean, m.id,' +
                    'm.arq_xml_entr, m.classe_terap, m.unid,m.estoque,m.dt_nf,' +
                    'm.dt_entrada,m.dt_vencim,m.nmro_nf,m.lote,m.cnpj_origem,m.registro_ms,' +
                    'count(m.id) as quant from sngpc_movi m left join ' +
                    'estoque p on p.id = m.estoque where m.dt_entrada between ' + C_SOH +
                    ' and m.nmro_nf>0 group by registro_ms,lote,dt_entrada';

      SNGPC_SQL29s = 'select p.nome,cod_gtin as ean, m.id,' +
                    'm.arq_xml_entr, m.classe_terap, m.unid,m.estoque,m.sngpc,' +
                    'm.dt_saida,m.dt_vencim,m.lote,m.cnpj_origem,m.registro_ms,' +
                    'count(m.id) as quant from sngpc_movi m left join ' +
                    'estoque p on p.id = m.estoque where m.dt_saida between ' + C_SOH +
                    ' group by registro_ms,lote,dt_saida, sngpc';

      SNGPC_SQL29p = 'select p.nome,cod_gtin as ean, m.id,' +
                    'm.arq_xml_entr, m.classe_terap, m.unid,m.estoque,' +
                    'm.dt_perda,m.dt_vencim,m.motivo_perda,m.lote,m.cnpj_origem,m.registro_ms,' +
                    'count(m.id) as quant from sngpc_movi m left join ' +
                    'estoque p on p.id = m.estoque where m.dt_perda between ' + C_SOH +
                    ' group by registro_ms,lote,dt_perda';

      SNGPC_SQL30 = 'select * from nf_entr where Ide_nNF =' + C_ASPAS + (C_SOH) + C_ASPAS;
//      SNGPC_SQL31 = 'select cnpj from fornecedor where id=' + C_ASPAS + (C_SOH) + C_ASPAS;

      SNGPC_SQL32 = 'select p.nome,cod_gtin as ean, m.id,' +
                    'm.arq_xml_entr, m.classe_terap, m.unid,m.estoque,m.dt_nf, ' +
                    'm.dt_entrada,m.dt_vencim,m.nmro_nf,m.lote,m.cnpj_origem,m.registro_ms,' +
                    'count(m.id) as quant from sngpc_movi m left join ' +
                    'estoque p on p.id = m.estoque where ' + (C_SOH) +
                    ' and nmro_nf>0 group by registro_ms,lote,dt_entrada';

      SNGPC_SQL32s = 'select p.nome,cod_gtin as ean, m.id,' +
                    'm.arq_xml_entr, m.classe_terap,m.sngpc,m.unid,m.estoque, ' +
                    'm.dt_saida,m.dt_vencim,m.lote,m.cnpj_origem,m.registro_ms,' +
                    'count(m.id) as quant from sngpc_movi m left join ' +
                    'estoque p on p.id = m.estoque where ' + (C_SOH) +
                    '  and dt_saida is not null group by registro_ms,lote,sngpc,dt_saida';

      SNGPC_SQL32p = 'select p.nome,cod_gtin as ean,' +
                    'm.id, m.arq_xml_entr, m.classe_terap, m.unid,m.estoque,' +
                    'm.dt_perda,m.dt_vencim,m.motivo_perda,m.lote,m.cnpj_origem,' +
                    'm.registro_ms,count(m.id) as quant from sngpc_movi m left join ' +
                    'estoque p on p.id=m.estoque where ' + (C_SOH) +
                    '  and dt_perda is not null group by registro_ms,lote,dt_perda';

      SNGPC_SQL35 = 'select e.id,e.nome,e.medicam_nomelab,e.medicam_portaria,cod_gtin as ean,s.lote,' +
                    'count(s.id) as quant from estoque e,sngpc_movi s WHERE e.id=s.estoque and ' +
                    's.dt_saida is null and s.dt_perda is null and ' + C_SOH +
                    ' like ' + C_ASPAS + (C_STX + '%') + C_ASPAS +
                    ' group by e.nome';

      SNGPC_SQL36 = 'select e.id,e.nome,e.medicam_nomelab,e.medicam_portaria,cod_gtin as ean,lote,' +
                    'count(s.id) as quant from estoque e,sngpc_movi s WHERE e.id = s.estoque and ' +
                    's.dt_saida is null and s.dt_perda is null and e.' + C_SOH +
                    ' like ' + C_ASPAS + (C_STX + '%') + C_ASPAS + C_ETX +
                    'group by ' + C_SOH;

      SNGPC_SQL37 = 'select distinct(nmro_prof) from sngpc_sai order by nmro_prof';
      SNGPC_SQL38 = 'SELECT count(*) from sngpc_gerados where dt_fim >=';

      SNGPC_SQL39 = 'select count(*) from sngpc_movi m, sngpc_sai s where m.dt_saida=' + C_ASPAS + (C_SOH) + C_ASPAS +
                    ' and m.registro_ms=' + C_ASPAS + (C_STX) + C_ASPAS +
                    ' and m.lote=' + C_ASPAS + (C_ETX) + C_ASPAS +
                    ' and s.id=m.sngpc and s.nmro_notif=' + C_ASPAS + (C_EOT) + C_ASPAS +
                    ' and s.nmro_prof=' + C_ASPAS + (C_ENQ) + C_ASPAS +
                    ' and s.tipo_receita=' + C_ASPAS + (C_ACK) + C_ASPAS + ';';

      SNGPC_SQL40 = 'select distinct(nmro_nf) from sngpc_movi where dt_entrada between ' + C_SOH +
                    ' and ' + C_STX + ' and nmro_nf>0';

      SNGPC_SQL41 = 'select count(sngpc) from sngpc_movi where dt_perda is null and dt_saida between ' + C_SOH +
                    ' and ' + C_STX + ' and (sngpc <1 or sngpc is null)';

      SNGPC_SQL42 = 'select distinct(sngpc) from sngpc_movi where dt_perda is null and dt_saida between ' + C_SOH +
                    ' and ' + C_STX + ' order by dt_saida';

      SNGPC_SQL43 = 'select * from sngpc_sai where id=';

      SNGPC_SQL44 = 'select registro_ms,lote,dt_saida,uso_prolong,unid,count(id) as qtd from sngpc_movi where ' +
                    'dt_perda is null and dt_saida is not null and sngpc=' + C_ASPAS + (C_SOH) + C_ASPAS +
                    ' and dt_saida between ' + C_STX + ' and ' + C_ETX + ' group by lote';

      SNGPC_SQL45 = 'select distinct (data) from sngpc_invent';

      SNGPC_SQL46 = 'select registro_ms, motivo_perda,dt_perda,lote,count(*) as qtd, unid from sngpc_movi where ' +
                    'dt_perda between ' + C_SOH + ' and ' + C_STX + ' group by lote order by dt_perda, lote';

      SNGPC_SQL47 = 'select e.id,e.nome,e.medicam_nomelab,e.medicam_portaria,cod_gtin as ean,lote,' +
                    'count(s.id) as quant from estoque e,sngpc_movi s WHERE e.id = s.estoque and ' +
                    's.dt_saida is null and s.dt_perda is null and s.' + C_SOH +
                    ' like ' + C_ASPAS + (C_STX + '%') + C_ASPAS + C_ETX +
                    'group by s.' + C_SOH;

      SNGPC_SQL48 = 'update sngpc_invent_bkp set validado="E";';
      SNGPC_SQL49 = 'update sngpc_movi_bkp set venda=-1 WHERE ID=';
      SNGPC_SQL50 = 'select * from sngpc_invent where produto=' + C_ASPAS + C_SOH + C_ASPAS + ' and lote=' + C_ASPAS + C_STX + C_ASPAS;
      SNGPC_SQL51 = 'update sngpc_seq set seq=' + C_SOH + '+1 where tipo=' + C_STX  +';';

//---------------------------------------------------------------------------------------------------------------------------------------

      SNGPC_C1 = 'Data de saída incorreta.';
      SNGPC_C2 = 'Data da Prescr. incorreta.';
      SNGPC_C3 = 'Nº Reg. Profissional incorreto.';
      SNGPC_C4 = 'Nº Notificação incorreto.';
      SNGPC_C5 = 'Nome completo do prescritor incorreto.';
      SNGPC_C6 = 'Já existe um arquivo digitalizado para esta receita. Deseja substituí-lo?';
      SNGPC_C7 = 'Imagem da receita não encontrada.';
      SNGPC_C8 = 'Deseja excluir esta entrada?';
      SNGPC_C9 = 'Data inicial precisa ser a data do último arquivo enviado ou do inventário, mais um dia.';
      SNGPC_C10 = 'O intervalo não pode ter mais de sete dias.';
      SNGPC_C11 = 'A data final não pode ser maior ou igual a data atual.';
      SNGPC_C12 = 'O último arquivo ainda não foi enviado.';
      SNGPC_C13 = 'O período informado já está em um dos arquivos.';
      SNGPC_C14 = 'O período informado já está em um dos arquivos.';
      SNGPC_C15 = 'Ja existe um arquivo gerado neste período';
      SNGPC_C16 = 'Ja foi gerado um XML para este período.' + C_CR + C_CR + '          Deseja gerar novamente?';
      SNGPC_C17 = 'O último arquivo foi validado no site do SNGPC?';
      SNGPC_C18 = 'Aguarde a validação e confirme no sistema antes de gerar um novo arquivo.';
      SNGPC_C19 = 'Erro no arquivo XML. Consulte o LOG.';
      SNGPC_C20 = 'Informe o Nº da NF.';
      SNGPC_C21 = 'Registro M.S. incorreto.';
      SNGPC_C22 = 'Classe Terapêutica incorreta.';
      SNGPC_C23 = 'Portaria X Classe terapêutica incorreta.';
      SNGPC_C24 = 'Portaria incorreta.';
      SNGPC_C25 = 'A data da entrada informada não pode ser registrada. Já existe um arquivo XML gerado nessa data.';
      SNGPC_C26 = 'Já existe um lançamento com estes dados.';
      SNGPC_C27 = 'Imagem não encontrada.';
      SNGPC_C28 = 'Deseja excluir esta movimentação?';
      SNGPC_c29 = 'Inventário vazio';
      SNGPC_C30 = 'Inventário em andamento.';
      SNGPC_C31 = 'Inventário concluído.';
      SNGPC_C32 = 'Inventário enviado.';
      SNGPC_C33 = 'Inventário validado e aceito.';
      SNGPC_C34 = 'Informe um status.';
      SNGPC_C35 = 'Deseja Alterar o status deste registro?';
      SNGPC_C36 = 'Este arquivo já foi validado. Sua exclusão não é possível.';
      SNGPC_C37 = 'Deseja concluir o inventário?';
      SNGPC_C38 = 'Data do inventário';
      SNGPC_C39 = 'Informe a data do inventário';
      SNGPC_C40  ='Houve um erro ao gerar o XML do inventário.';
      SNGPC_C41 = 'A exclusão do inventário removerá toda a movimentação de entrada/saída e perda.'#13#10'Deseja excluir o inventário?';
      SNGPC_C42 = 'Validar o Inventário inicial, impede novas alterações.' + C_CRLF + 'Só confirme se o XML foi aceito e validado no site da ANVISA.' + C_CRLF + 'Deseja prosseguir?';
      SNGPC_C43 = 'Deseja alterar o estado do inventário?';
      SNGPC_C44 = 'Data da receita perdeu a validade.';
      SNGPC_C45 = 'Nome do comprador incorreto.';
      SNGPC_C46 = 'Documento do comprador incorreto.';
      SNGPC_C47 = 'UF do comprador incorreta.';
      SNGPC_C49 = 'Nº do documento do comprador incorreto.';
      SNGPC_C50 = 'Órgão expedidor incorreto.';
      SNGPC_C51 = 'Nome do paciente incorreto.';
      SNGPC_C52 = 'Idade do paciente incorreta.';
      SNGPC_C53 = 'Anos/Meses incorreto.';
      SNGPC_C54 = 'Sexo incorreto.';
      SNGPC_C55 = 'A receita não foi digitalizada. Deseja prosseguir?';
      SNGPC_C56 = 'Esta entrada se deu via inventário e não pode ser excluída.';
      SNGPC_C57 = 'NF não encontrada no sistema.';
      SNGPC_C58 = 'Este medicamento ja foi inserido.';
      SNGPC_C59 = 'Quantidade disponível';
      SNGPC_C60 = 'Quantidade indisponível';
      SNGPC_C61 = '. Verifique se existe receita associada a saída.';
      SNGPC_C62 = ' - ERRO! Unidade deve ser 1 ou 2. Encontrado ';
      SNGPC_C63 = ' - ERRO! (Motivo Perda deve estar entre 1 e 9. Encontrado ';
      SNGPC_C64 = ' movimento(s) com data de saída e sem referência a uma receita (sngpc <= 0).';
      SNGPC_C65 = 'Falta receita em um dos movimentos do período.';
      SNGPC_C66 = 'Este inventário não pode ser alterado.';
      SNGPC_C67 = 'Nenhum medicamento informado.';
      SNGPC_C68 = 'Este medicamento já está lançado.';
      SNGPC_C69 = 'Informe a portaria.';
      SNGPC_C70 = 'Informe a quantidade.';
      SNGPC_C71 = 'Informe o lote.';
      SNGPC_C72 = 'Informe o vencimento.';
      SNGPC_C73 = 'Informe o registro M.S.';
      SNGPC_C74 = 'O registro M.S. deve ter 13 dígitos';
      SNGPC_C75 = 'Informe a classe terapêutica.';
      SNGPC_C76 = 'Informe a unidade.';
      SNGPC_C77 = 'Informe o novo status.';
      SNGPC_C78 = 'Conselho profissional inválido.';
      SNGPC_C79 = 'Idade em meses não pode ser superior a 11';
      SNGPC_C80 = 'UF do profissional incorreta.';


implementation

end.
