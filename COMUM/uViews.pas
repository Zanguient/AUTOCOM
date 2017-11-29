unit uViews;

interface

uses sysutils;

const

FiltroNFSaida   = 'left join nf_item s on s.cProd = ex.id and s.CFOP not in(5929, 6929, (select CFOP from cfop_devol where interno="S" and ind="X")) ';

 WherevwEstoque1 = 'where e.suspenso="N" and e.destinacao="00 Mercadoria para Revenda";';
 WherevwEstoque2 = 'where e.id= ';
 WherevwEstoque3 = 'where e.suspenso="N" ';

 vwEstoqueQuant = 'select  ex.id  AS  id , ' +
                  'sum(if(isnull( i.quant ),0, i.quant )) + ' +
                  'sum(if(isnull( n.qCom ),0, n.qCom )) - ' +
                  'sum(if(isnull( v.qCom ),0, v.qCom )) - ' +
                  'sum(if(isnull( p.qtd ),0, p.qtd )) - ' +
                  'sum(if(isnull( s.qCom ),0, s.qCom )) AS  quant_real ' +
                  'from estoque ex ' +
                  'left join  estoque_inicial i  on ( i.estoque  =  ex.id ) ' +
                  'left join  nf_item_entr n  on( n.cProd  =  ex.id ) ' +
                  'left join  estoque_perda  p  on ( p.cProd  =  ex.id ) ' +
                  FiltroNFSaida +
                  'left join  venda_item   v  on ( v.cProd  =  ex.id ) and ( v.CFOP  <> "N") ' +
                  'group by ex.id;';

 vwEstoqueQuantByID = 'select ' +
                     'sum(if(isnull( i.quant ),0, i.quant )) + ' +
                     'sum(if(isnull( n.qCom ),0, n.qCom )) - ' +
                     'sum(if(isnull( v.qCom ),0, v.qCom )) - ' +
                     'sum(if(isnull( p.qtd ),0, p.qtd )) - ' +
                     'sum(if(isnull( s.qCom ),0, s.qCom )) AS  quant_real ' +
                     'from estoque ex ' +
                     'left join  estoque_inicial i  on ( i.estoque  =  ex.id ) ' +
                     'left join  nf_item_entr n  on( n.cProd  =  ex.id ) ' +
                     'left join  estoque_perda  p  on ( p.cProd  =  ex.id ) ' +
                     FiltroNFSaida +
                     'left join  venda_item   v  on ( v.cProd  =  ex.id ) and ( v.CFOP  <> "N") ' +
                     'where ex.id =';

vwEstoque = 'select e.*, ' +
            'substr(u.unidade,1,2) AS sigla_unid, ' +
            'u.fracionavel AS fracionavel, ' +
            'x.cst AS cod_cst, ' +
            'x.acbr AS acbr_cst, ' +
            'a.cod_if AS aliq_ecf, ' +
            'i.destaca_valor AS ipi_ent_destaca_valor, ' +
            'p.destaca_valor AS pis_ent_destaca_valor, ' +
            'c.destaca_valor AS cofins_ent_destaca_valor, ' +
            'isai.destaca_valor AS ipi_sai_destaca_valor, ' +
            'psai.destaca_valor AS pis_sai_destaca_valor, ' +
            'csai.destaca_valor AS cofins_sai_destaca_valor, ' +
            '(' + vwEstoqueQuantByID + ' e.id) quant_real ' +
            'from estoque e ' +
            'left join cst_ipi i           on i.acbr = e.cst_ipi_ent ' +
            'left join cst_pis p           on p.acbr = e.cst_pis_ent ' +
            'left join cst_cofins c        on c.acbr = e.cst_pis_ent ' +
            'left join cst_ipi isai        on isai.acbr = e.cst_ipi_sai ' +
            'left join cst_pis psai        on psai.acbr = e.cst_pis_sai ' +
            'left join cst_cofins csai     on csai.acbr = e.cst_pis_sai ' +
            'left join cst x               on x.id = e.cst ' +
            'left join aliquota a          on a.id = e.aliq_icms ' +
            'left join unidade u           on u.id = e.unidade ' ;

vwEstoque1 = 'select e.*, ' +
            'substr(u.unidade,1,2) AS sigla_unid, ' +
            'u.fracionavel AS fracionavel, ' +
            'x.cst AS cod_cst, ' +
            'x.acbr AS acbr_cst, ' +
            'a.cod_if AS aliq_ecf, ' +
            'i.destaca_valor AS ipi_ent_destaca_valor, ' +
            'p.destaca_valor AS pis_ent_destaca_valor, ' +
            'c.destaca_valor AS cofins_ent_destaca_valor, ' +
            'isai.destaca_valor AS ipi_sai_destaca_valor, ' +
            'psai.destaca_valor AS pis_sai_destaca_valor, ' +
            'csai.destaca_valor AS cofins_sai_destaca_valor, ' +
            '0 as quant_real ' +
            'from estoque e ' +
            'left join cst_ipi i           on i.acbr = e.cst_ipi_ent ' +
            'left join cst_pis p           on p.acbr = e.cst_pis_ent ' +
            'left join cst_cofins c        on c.acbr = e.cst_pis_ent ' +
            'left join cst_ipi isai        on isai.acbr = e.cst_ipi_sai ' +
            'left join cst_pis psai        on psai.acbr = e.cst_pis_sai ' +
            'left join cst_cofins csai     on csai.acbr = e.cst_pis_sai ' +
            'left join cst x               on x.id = e.cst ' +
            'left join aliquota a          on a.id = e.aliq_icms ' +
            'left join unidade u           on u.id = e.unidade ' ;

VwDestNF =  'select * from( ' +
            'select cliente.id AS id, ' +
            'replace(replace(replace(cliente.cnpj,".",""),"-",""),"/","") AS cnpj, ' +
            'cliente.nome AS nome, ' +
            'cliente.razaosocial AS razaosocial, ' +
            'cliente.tel1 AS tel1, ' +
            'cliente.logradourocobranca AS logradouro, ' +
            'cliente.nmrocobranca AS nmro, ' +
            'cliente.complemcobranca AS complem, ' +
            'cliente.bairrocobranca AS bairro, ' +
            'cliente.cidadecobranca AS cidade, ' +
            'cliente.ufcobranca AS uf, ' +
            'cliente.cepcobranca AS cep, ' +
            'cliente.ie AS ie, ' +
            'cliente.codmuncobranca AS cidade_cod, ' +
            'cliente.email AS email,"C" AS tipo ' +
            'from cliente ' +
            'where (cliente.id > 1) ' +
            'union ' +
            'select  900000 + fornecedor.id AS id, ' +
            'replace(replace(replace(fornecedor.cnpj,".",""),"-",""),"/","") AS cnpj, ' +
            'fornecedor.nome AS nome, ' +
            'fornecedor.razaosocial AS razaosocial, ' +
            'fornecedor.tel1 AS tel1, ' +
            'fornecedor.logradouro AS logradouro, ' +
            'fornecedor.nmro AS nmro, ' +
            'fornecedor.complem AS complem, ' +
            'fornecedor.bairro AS bairro, ' +
            'fornecedor.cidade AS cidade, ' +
            'fornecedor.uf AS uf, ' +
            'fornecedor.cep AS cep, ' +
            'fornecedor.ie AS ie, ' +
            'fornecedor.codmun AS cidade_cod, ' +
            'fornecedor.email AS email,"F" AS tipo ' +
            'from fornecedor order by nome) as cur ';


implementation

end.
