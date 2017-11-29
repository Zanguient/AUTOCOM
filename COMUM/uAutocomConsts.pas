unit uAutocomConsts;

interface

uses SysUtils, uViews;

const
   _C = 'k';//usado no hash dos registros
   C_Caption = 'PARADIGMA T.I. - www.paradigmati.com.br ';
   C_CHAVE = #22#24#13#234;
   C_DIRFISCO = 'FISCO';
   C_ST_VAZIO = '';
   C_CR = #13;
   C_LF = #10;
   C_CRLF = C_CR + C_LF;
   C_MSG = 'Arquivo gerado com sucesso em:'#13#10' "%s"';
   C_MSG1 = 'Arquivos gerados com sucesso em:'#13#10' "%s"';
   C_MSG2 = 'ERRO ao gerar o arquivo:'#13#10' "%s"';
   C_MSG3 = '%.d Produtos inseridos';
   C_MSG4 = 'Ocorreu o seguinte erro:#13#13Não foi possível concluir o comando "%s".';
   C_CORINGA = '?';
   C_ASPAS = '''';
   //100 espaços
   C_Linha100 = '                                                                                                    ';
   C_CHQ = 'CHQ';
   C_CRT = 'CRT';
   C_DIN = 'DIN';
   C_TKT = 'TKT';
   C_FAT = 'FAT';
   C_CON = 'CON';
   C_DES = 'DES';

   C_SOH = #01;
   C_STX = #02;
   C_ETX = #03;
   C_EOT = #04;
   C_ENQ = #05;
   C_ACK = #06;
   C_BEL = #07;
   C_BS = #08;
   C_HT = #09;
   C_VT = #11;
   C_FF = #12;

   C_LOCALHOST = '127.0.0.1';
   C_PATH_ARQ_LOCAL_NFE = 'DAT\ENTR';
   C_PATH_ARQ_LOCAL_PDV = 'DAT\PDV';
   C_PATH_ARQ_LOCAL_NFS = 'DAT\NFE';
   C_BOL_REPORT_FILE = 'DAT\BOL';
   C_INI_FILE = 'INI';
   C_DAT_FILE = 'INI\DAT';
   C_GRD_FILE = 'INI\GRD';
   C_TXT_FILE = 'TXT';
   C_TMP_FILE = 'TMP';
   C_LOGO_FILE = 'LOGO';
   C_ALTER = 'pti.exe';

   // modBCST
   C_ARR_1: array [0 .. 5] of string = ('Prç Tabel.', 'Lista -', 'Lista +', 'Lista Ntra', 'Mg.Vr.Agr.', 'Pauta');
   // origem merc
   C_ARR_2: array [0 .. 7] of string = ('Nacional', 'Estr. Imp. Direta','Estr. Adq. Brasil', 'Nacion. Cont. Imp. > 40%', 'Nacion. Proc. Basicos','Nacion. Cont. Imp. <=40%', 'Estr.Imp. Dir. S/Similar', 'Estr. Ad. Br. S/Similar');
   // ipi
   C_ARR_3: array [0 .. 13] of string = ('00', '49', '50', '99', '01', '02','03', '04', '05', '51', '52', '53', '54', '55');
   // csosn
   C_ARR_4: array [0 .. 10] of string = ('--', '101', '102', '103', '201', '202', '203', '300', '400', '500', '900');
   // cst
   C_ARR_5: array [0 .. 19] of string = ('00', '10', '20', '30', '40', '41','45', '50', '51', '60', '70', '80', '81', '90', '10(Part)', '90(Part)','41(Part)', '--', 'Outra UF', 'SN');
   // mod BC icms
   C_ARR_6: array [0 .. 3] of string = ('Mg. Vr Agreg.', 'Pauta', 'Preço Tabel.', 'Vr. Oper.');
   C_ARR_7: array [0 .. 8] of string = ('Normal', 'Contingência', 'SCAN', 'DPEC', 'FSDA', 'SVCAN', 'VCRS', 'SVCSP', 'OffLine');
   C_ARR_8: array [0 .. 3] of string = ('Normal', 'Complementar', 'Ajuste', 'Devolução/Retorno');
   // pis
   C_ARR_9: array [0 .. 32] of string = ('01', '02', '03', '04', '05', '06', '07', '08', '09', '49', '50', '51', '52', '53', '54', '55', '56', '60','61', '62', '63', '64', '65', '66', '67', '70', '71', '72', '73', '74','75', '98', '99');
// cUF
   C_ARR_10: array [0 .. 26] of integer = (12,27,13,16,29,23,53,32,52,21,31,50,51,15,25,26,22,41,33,24,11,14,43,42,28,35,17);
// UF
   C_ARR_11: array [0 .. 26] of string = ('AC','AL','AM','AP','BA','CE','DF','ES','GO','MA','MG','MS','MT','PA','PB','PE','PI','PR','RJ','RN','RO','RR','RS','SC','SE','SP','TO');
   // -----------------------------------------------------

   C_01 = 'ECF-IF';
   C_02 = '/TXT';
   C_03 = 'Arquivo gerado com sucesso.';
   C_05 = 'Aguarde. Gravando os dados da Redução Z.';
   c_06 = 'Totalizadores';
   C_07 = 'ECF';
   c_08 = 'OutrasICMS';
   C_09 = 'Não Inicializada';
   c_10 = 'Desconhecido';
   C_11 = 'Livre';
   C_12 = 'Venda';
   C_13 = 'Pagamento';
   C_14 = 'Relatorio';
   C_15 = 'Bloqueada';
   C_16 = 'Requer Z';
   C_17 = 'Requer X';
   C_18 = 'Nao Fiscal';
   C_19 = 'PROCESSANDO...';
   C_20 = 'Cancelado pelo operador.';
   C_21 = 'Não implementado';
   C_22 = 'INFORME O CÓDIGO OU TECLE "ENTER" PARA PESQUISAR';
   C_23 = 'CONCLUINDO A VENDA';
   C_24 = 'OPERAÇÕES DE CAIXA';
   C_25 = 'Processo concluído.';
   C_26 = 'PDV não está em rede.';
   C_27 = 'VERIFICANDO CONEXÃO COM O SERVIDOR...';
   C_28 = 'e-Pharma inicializado com sucesso.';
   C_29 = '000000000000';
   C_30 = 'Informe o código do produto ou tecle ENTER para pesquisar';
   C_31 = 'INFORME A QUANTIDADE E TECLE ENTER.';
   C_32 = 'EMITINDO LEITURA X...';
   C_33 = 'EMITINDO REDUÇÃO Z...';
   C_34 = 'hh:nn';
   C_35 = 'CN';
   C_36 = 'SANGRIA EMITIDA.';
   C_37 = 'SUPRIMENTO EMITIDO.';
   C_38 = 'IMPRESSORA NÃO RESPONDE OU SEM PAPEL!' + C_CR + '    TENTAR NOVAMENTE?';
   C_39 = 'ECF - ERRO!';
   C_40 = 'Foi detectada uma Redução Z pendente.'#13 + 'Ela será emitida agora';
   C_41 = 'ECF não encontrado.';
   C_42 = 'INFORME O DESCONTO (TECLE "P" PARA % OU "V" PARA VALOR) E TECLE ENTER.';
   C_43 = 'COMUNICANDO COM A BALANÇA...';
   C_44 = 'select max(data) as data from caixa where tipo=12';
   C_45 = 'select max(data) as data from caixa where tipo=11';
   C_46 = ' Módulo e-Pharma retornou erro!' + C_CR + '    TENTAR NOVAMENTE?';
   C_47 = 'e-Pharma - ERRO!';
   C_48 = 'Arquivo referente ao requisito IX, anexo X do ato COTEPE / ICMS 06/08:'#13;
   C_49 = 'PAF_N.txt' + C_CR + C_CR;
   C_50 = 'MD5 Princ. Arq. Exe: ';
   C_51 = 'MD-5: ';
   C_52 = 'Logs';
   C_53 = '<p><strong><font color="#FF0000" size="3" face="Verdana, Arial, Helvetica, sans-serif">';
   C_54 = '</font></strong></p>';
   C_55 = '<p><font color="#0066FF" size="3" face="Verdana, Arial, Helvetica, sans-serif">';
   C_56 = '</font></p>';
   C_57 = 'Lendo dados da Redução Z...';
   C_58 = 'yyyymmdd"_DRZ2.txt"';
   C_59 = 'yyyymmdd"_DRZ1.txt"';
   C_60 = 'Estado do ECF não permite esta operação.';
   C_61 = 'Tablet não encontrado.';
   C_62 = 'Tablet vazio.';
   C_63 = 'Conclua a venda.';
   C_64 = 'Venda PFP sem itens.';
   C_65 = 'Venda e-Pharma sem itens.';
   C_66 = '110001011000';
   C_67 = 'CAIXA FECHADO';
   C_68 = '110001011000';
   C_69 = 'PDV INOPERANTE';
   C_70 = 'html';
   C_71 = 'logo.htm';
   C_72 = 'TECLE F10 PARA INICIAR A VENDA';
   C_73 = '11111111110';
   C_74 = 'CAIXA LIVRE';
   C_75 = '010000011001';
   C_76 = 'VENDA ABERTA';
   C_77 = '010000011011';
   C_78 = 'DIRIJA-SE PARA O CAIXA AO LADO.';
   C_79 = 'FAÇA A ABERTURA DO DIA.';
   C_80 = 'ACESSO RESTRITO';
   C_81 = '110000000000';
   C_82 = 'Operador não encontrado';
   C_83 = 'O valor do desconto é maior do que o desconto máximo permitido.';
   C_84 = 'O valor do desconto é maior do que a margem de lucro.';
   C_85 = 'Erro ao obter os dados da Redução Z.';
   C_86 = 'CANCELAMENTO';
   C_87 = 'O Sistema não encontrou o Arquivo Aux. de Configuração do PAF-ECF neste computador.';
   C_88 = 'PAF_N.txt';
   C_89 = 'ddmmyyyyhhnnss';
   C_90 = 'modo.dat';
   C_91 = 'desativado';
   C_92 = 'Informe o valor recebido.';
   C_93 = 'semitem';
   C_94 = '1item';
   C_95 = 'venda';
   C_96 = 'finaliza';
   C_97 = 'diapendente';
   C_98 = 'efetuafpag';
   C_99 = 'fechacupom';
   C_100 = 'fechoucupom';
   C_101 = 'tefiniciado';
   C_102 = 'teftransaprovada';
   C_103 = 'teftransacaonegada';
   C_104 = 'abrevia1tef';
   C_105 = 'fecha1viatef';
   C_106 = 'abre2viatef';
   C_107 = 'fecha2viatef';
   C_108 = 'inocuo';
   C_109 = 'fechado';
   C_110 = 'PESO LIDO: ';
   C_111 = 'PESO INCORRETO';
   C_112 = 'PESO INSTAVEL NA BALANÇA';
   C_113 = 'PESO NEGATIVO NA BALANÇA';
   C_114 = 'SOBRECARGA NA BALANÇA';
   C_115 = 'FALHA DE COMUNICAÇÃO(TIME OUT)';
   C_116 = 'paf.dat';
   C_117 = ' - Paradigma T.I. - www.paradigmati.com.br';
   C_118 = 'Valor do Suprimento inicial supera o valor máximo programado.';
   C_119 = 'ABERTURA DE CAIXA';
   C_120 = 'Valor inválido. Informe um valor maior do que zero.';
   C_121 = 'Valor solicitado maior do que o disponível.';
   C_122 = 'SANGRIA DE CAIXA';
   C_123 = 'Sangria efetivada.';
   C_124 = 'Valor do Suprimento supera o valor máximo programado.';
   C_125 = 'SUPRIMENTO';
   C_126 = 'Suprimento efetivado.';
   C_127 = 'Valor disponível no caixa: ';
   C_128 = 'dd/mm/yy hh:nn:ss';
   C_129 = 'Comunicando com o servidor...';
   C_130 = 'Fechar_Cupom - ERRO : ';
   C_131 = 'O sistema não permite consulta Cheque e pagamento com cartão em uma única operação.';
   C_132 = 'Uma ou mais formas de pagamento desnecessárias.';
   C_133 = 'Modalidade Fatura não permitida para o cliente selecionado.';
   C_134 = 'Forma de pagamento "Cheque" inválida para cliente não cadastrado.';
   C_135 = 'Desconto inválido.';
   C_136 = 'Na modalidade "Cartão", o valor pago não pode ser maior do que o valor da compra';
   C_137 = 'Na modalidade Fatura o valor pago não pode ser maior do que o valor da compra';
   C_138 = 'Na modalidade "Fatura" não é permitido desconto.';
   C_139 = 'Já foi dado desconto em ítem da venda.';
   C_140 = 'PARABENS PELO SEU ANIVERSARIO, HOJE!';
   C_141 = 'PARABENS POR SEU ANIVERSARIO, ESTE MES!';
   C_142 = 'TOTALIZADORES';
   C_143 = 'Tecle P para percentual';
   C_144 = 'Tecle P para parcelamento';
   C_145 = 'Valor negativo não permitido.';
   C_146 = 'Tecle V para valor';
   C_147 = 'Favor informar o cliente (F3).';
   C_148 = 'Favor informar o vendedor. (F4)';
   C_149 = 'Tabela_CNIEE.bin';
   C_150 = 'SERVIDOR não está on line.';
   C_151 = 'MF';//MEMORIA FISCAL (BINARIO)
   C_152 = 'yyyymmdd_hhnnss';
   C_153 = 'ECF EMITINDO DOCUMENTOS FISCAIS';
   C_154 = 'INFORME O ECF E O PERÍODO';
   C_155 = 'LMFC_DATA_';
   C_156 = 'LMFC_COO_';
   C_157 = 'LMFS_DATA_';
   C_158 = 'LMFS_COO_';
   C_159 = 'E_MFD_DATA_';
   C_160 = 'E_MFD_COO_';
   C_161 = 'ARQ_MFD_';
   C_162 = 'ARQ_MF_';
   C_163 = 'Alíquota Incorreta.';
   C_164 = 'Lendo as alíquotas existentes...';
   C_165 = 'Alíquota ICMS já existente no ECF.';
   C_166 = 'Alíquota ISS já existente no ECF.';
   C_167 = 'Programando a alíquota...';
   C_168 = 'Valor não pode ser em branco.';
   C_169 = 'Lendo as formas de pagamento existentes...';
   C_170 = 'Forma de pagamento já existente no ECF.';
   C_171 = 'Programando a forma de pagamento...';
   C_172 = 'Lendo relatórios gerenciais existentes...';
   C_173 = 'Relatório Gerencial já existente no ECF.';
   C_174 = 'Programando o Relatório Gerencial...';
   C_175 = 'Lendo Comprovantes não fiscais existentes...';
   C_176 = 'Comprovante não fiscal já existente no ECF.';
   C_177 = 'Programando Comprovante não fiscal...';
   C_178 = 'Informe o produto.';
   C_179 = 'Produto não encontrado.';
   C_180 = 'Forma Pagto: ';
   C_181 = ' Permite Vinculado';
   C_182 = ' Não Permite Vinculado';
   C_183 = 'dd/mm/yyyy';
   C_184 = 'Este PAF-ECF não executa funções de baixa de estoque com base em índices técnicos de produção,'#13'não podendo ser utilizado por estabelecimento que necessite deste recurso.';
   C_185 = '"TABPROD_"yyyymmdd_hhnnss".txt"';
   C_186 = 'Nenhum produto inserido';
   C_187 = 'Nenhum movimento encontrado no balanço.';
   C_188 = '"ESTOQUE_"yyyymmdd_hhnnss".txt"';
   C_189 = 'SEM CONEXÃO COM O SERVIDOR.';
   C_190 = 'PESQUISAR POR ';
   C_191 = 'ATENÇÃO!  ===> CLIENTE BLOQUEADO. CONSULTE A GERÊNCIA.';
   C_192 = 'Senha incorreta.';
   C_193 = 'Não é possível efetuar duas formas de pagamento na modalidade cartão.';
   C_194 = 'Documento inválido.';
   C_195 = 'serv_sp_ONerro';
   C_196 = 'serv_sql.txt';
   C_197 = 'serv_sp.txt';
   C_198 = 'serv_sp_erro';
   C_199 = 'Crédito estornado.';
   C_200 = 'Nenhum movimento para imprimir.';
   C_201 = 'Este demonstrativo nao quita qualquer débito.';
   C_202 = 'VALOR INCORRETO.';
   C_203 = 'Valor do desconto incorreto.';
   C_204 = 'Valor do desconto maior ou igual ao débito.';
   C_205 = 'Aguardando: ';
   C_206 = 'Falha ao executar ADM';
   C_207 = 'Mensagem ao Operador';
   C_208 = 'Mensagem ao Cliente';
   C_209 = 'TEF';
   C_210 = 'Arquivos TXT|*txt|Todos os Arquivos (*.*)|*.*';
   C_211 = '*.txt';
   C_212 = '*-nfe.XML';
   C_213 = 'Arquivos XML (*.XML)|*.XML|Arquivos NFE (*-nfe.XML)|*-nfe.XML|Todos os Arquivos (*.*)|*.*';
   C_214 = 'Conclua a operação antes de fechar.';
   C_215 = 'A informação de data de saída da nota fiscal eletrônica passa a ser obrigatória à partir de janeiro/2012, conforme publicação do Ajuste SINIEF 08/2011, publicado no DOU em 05/10/2011.'
            + C_CR + '- Caso as informações de data, hora e transporte (placa do veículo) não constem do arquivo XML, devem ser informados através do Registro de saída.'
            + C_CR + '- O Registro de saída deverá ser assinado, validado e transmitido para o SEFAZ da mesma forma que a nota fiscal eletrônica. Também deve ser enviado ou disponbilizado para o destinatário da nf-e.'
            + C_CR + '- Se as informações de saída não constem do arquivo XML e não houver transmissão do Registro de saída a data de saída será considerada a data de emissão da nf-e (que poderá interferir no cancelamento da nota fiscal).';

   C_216 = 'Esta NF não tem valor fiscal. Sua impressão não deve ser distribuída.' + C_CRLF + 'Deseja imprimir mesmo assim?';
   C_217 = 'Esta NF não tem valor fiscal. Sua impressão não deve ser distribuída.' + C_CRLF + 'Deseja gerar o PDF mesmo assim?';
   C_218 = 'Documento emitido por ME ou EPP optante pelo Simples Nacional. Não gera direito a credito fiscal de IPI.' + C_CR;
   C_219 = 'ger_sp_ONerro';
   C_220 = 'SERV_err';
   C_221 = 'ger_sp';
   C_222 = 'Conclua a operação.';
   C_223 = 'Este operador só pode ser alterado por outro operador de mesmo nivel ou maior.';
   C_224 = 'Esta operação é restrita a operadores nivel 3 ou maior.';
   C_225 = 'Já existe um registro com este CNPJ.';
   C_226 = 'Faça o cadastro da empresa antes de efetuar qualquer operação no sistema.';
   C_227 = 'ISENTO';
   C_228 = 'Tecle ' + C_CORINGA + ' para exibir todos os registros.';
   C_229 = 'Confirma a exclusão do registro?';
   C_230 = 'Manutenção concluída.';
   C_231 = 'yyyy-mm-dd';
   C_232 = 'yyyymmdd';
   C_233 = 'INVENTÁRIO';
   C_234 = 'Já existe um movimento com esta data.' + C_CRLF + 'Gerar o inventário forçará a sua substituição.' + C_CRLF + 'Deseja prosseguir?';
   C_235 = 'Obtendo dados...';
   C_236 = 'Data incorreta.';
   C_237 = 'ATENÇÃO';
   C_238 = 'Data de emissão incorreta.';
   C_239 = 'Data de entrada incorreta.';
   C_240 = 'Data de vencimento incorreta.';
   C_241 = 'Quantidade incorreta.';
   C_242 = 'Lote incorreto.';
   C_243 = 'Unidade incorreta.';
   C_244 = 'Informe o Nº da NF.';
   C_245 = 'Informações da NF Validadas.';
   C_247 = 'Deseja excluir este registro?';
   C_248 = 'Não foi informada nenhuma observação.' + C_CRLF + 'Deseja prosseguir?';
   C_249 = 'Deseja prosseguir?';
   C_250 = 'Conclua a operaçãoQTal.DisableControls; antes de mudar de opção.';
   C_251 = 'Deseja encerrar?';
   C_252 = 'Erro ao abrir o XML';
   C_253 = 'Erro ao abrir o arquivo. Verifique se o mesmo é um XML válido.';
   C_254 = 'Esta NF-e já foi informada.';
   C_255 = 'Esta NF-e Não foi emitida para esta empresa.';
   C_256 = 'CNPJ da NF difere do CNPJ do emitente informado.';
   C_257 = 'Um ou mais itens não tem o GTIN informado.'#13'Ao prosseguir, será gerado o código automático para estes itens.';
   C_258 = 'Nenhum item replicado pode ter a mesma exata descrição do original.';
   C_259 = 'Não Informado';
   C_260 = 'Item da seleção já está baixado.';
   C_261 = 'Item da seleção está cancelado e não pode ser baixado.';
   C_262 = 'Deseja BAIXAR o(s) registro(s) ';
   C_263 = 'Baixa concluída.';
   C_264 = 'Período incorreto.';
   C_265 = 'Deseja desfazer esta baixa?';
   C_266 = 'Deseja CANCELAR o(s) registro(s) ';
   C_267 = 'Cancelamento efetivado.';
   C_268 = 'Reversão concluída.';
   C_269 = 'Nenhum boleto selecionado.';
   C_297 = 'Este registro não pode ser excluído por possuir movimentação.';
   C_298 = 'Já existe um registro com esta combinação de CPF + Inscr. Estadual.';


   // --------------------------------------------

   C_SQL1 = 'select * from cliente where id=1';
   C_SQL2 = 'select * from cliente where id=';
   C_SQL3 = 'select count(*) from vendaaux0 where desconto >0 and venda=';
   C_SQL4 = 'select id,qtd,preco,valor from vendaaux0 where venda=' + C_SOH + ' and cancelado=' + C_ASPAS + 'N' + C_ASPAS + ' order by aliq_pc desc, valor desc';
   C_SQL5 = 'select * from fpag where tipo in (' + C_SOH + C_ASPAS + 'DIN' + C_ASPAS + ',' + C_ASPAS + 'CHQ' + C_ASPAS + ',' + C_ASPAS + 'FAT' + C_ASPAS + ',' + C_ASPAS + 'TKT' + C_ASPAS + ',' + C_ASPAS + 'CRT' + C_ASPAS + ') and uso=' + C_STX + ' order by id';
   C_SQL6 = 'select ecf from terminal order by ecf';
   C_SQL7 = 'delete from ecf_rel_nao_fiscal where tipo = ' + C_ASPAS + 'CNF' + C_ASPAS + ';';
   C_SQL8 = 'delete from ecf_rel_nao_fiscal where tipo = ' + C_ASPAS + 'RG' + C_ASPAS + ';';
   C_SQL9 = 'truncate table aliquota;';
   C_SQL10 = 'select id from estoque where ';
   C_SQL11 = 'truncate table fpag;';
   C_SQL12 = 'select * from estoque where suspenso =' + C_ASPAS + 'N' + C_ASPAS + ' order by ean';
   C_SQL13 = 'select unidade from unidade where id=';
   C_SQL14 = 'select cod_if from aliquota where id = ';
   C_SQL15 = 'select AES_DECRYPT(ean,' + C_SOH + 'chave) as cod,e.nome,e2.unid,e2.quant,e.id,e2.id as ide2,e2.data, e2.hora, e2.serieecf from estoque e, e2 where e.id = e2.produto ';
   C_SQL16 = 'select distinct(data), hora from e2';
   C_SQL17 = 'select count(distinct(serieecf)) from e2';
   //C_SQL18 = 'select * from operador where senha=';
   C_SQL19 = 'select * from caixa where tipo=12 and data=';
   C_SQL20 = 'select @chave:=' + 'M' + 'D' + '5' + '(' + C_ASPAS + 'k' + 'o' +  'p' + 'l' + 'i' + 'n' + C_ASPAS + ');';
   C_SQL21 = 'select @chave;';
   C_SQL22 = 'update debito set cancelado = ' + C_ASPAS + 'S' + C_ASPAS + ', dt_pg = curdate(), codigo = ' + C_ASPAS + 'ESTORNADO' + C_ASPAS + ' where id = ' + C_ASPAS;
   C_SQL23 = 'select * from cliente where id>1 order by ';
   C_SQL24 = 'select * from cliente where ' + C_SOH + ' and id>1 order by nome';
   C_SQL25 = 'INSERT INTO debito SET tipo =' + C_ASPAS + 'H' + C_ASPAS + ',cliente= ' + C_SOH + ',codigo=' + C_ASPAS + 'CRMAN' + C_ASPAS + ',valor=' + C_STX + ',data=curdate(),obs=' + C_ASPAS + 'CRED. INSERIDO MANUALMENTE' + C_ASPAS + ', nf=' + C_ETX + ';';
   C_SQL26 = 'update venda0 set vr_desc=vr_desc+' + C_SOH + ' where id=' + C_STX + ';';
   C_SQL27 = 'select max(cod_quit + 1) from venda0';
   C_SQL28 = 'update venda0 set vr_pg=valor-vr_desc-vr_abat,dt_pg=curdate(),cod_quit ='  + C_SOH + ' where id in(' + C_STX + ');';
   C_SQL29 = 'update debito set dt_pg = curdate() where cliente=' + C_SOH + ' and tipo=' + C_ASPAS + 'H' + C_ASPAS + ' and dt_pg is null;';
   C_SQL30 = 'INSERT INTO debito SET tipo=' + C_ASPAS + 'H' + C_ASPAS + ',cliente=' + C_SOH + ',codigo=' + C_ASPAS + 'CRREM' + C_ASPAS + ',valor=' + C_STX + ',data=curdate(),obs=' + C_ASPAS + 'CRED. REMANESC. DE QUIT. EM ' + C_ETX + C_ASPAS + ';';
   C_SQL31 = 'INSERT INTO debito SET tipo=' + C_ASPAS + 'J' + C_ASPAS + ',cliente=' + C_SOH + ',codigo=' + C_ASPAS + 'JUROS' + C_ASPAS + ',valor=' + C_STX + ',data=curdate(),obs = ' + C_ASPAS + 'JUROS SOBRE PARCELAMENTO - ' + C_ETX + C_ASPAS + ',vr_pago=valor,dt_pg=curdate(),impresso=' + C_ASPAS + 'S' + C_ASPAS + ';';
   C_SQL32 = 'select * from venda0 where cod_quit=' + C_ASPAS + C_SOH + C_ASPAS;
   C_SQL33 = 'select * from estoque where id=';
   C_SQL34 = vwEstoque + ' order by ';
   C_SQL35 = vwEstoque + ' where ' + C_SOH + ' like ' + C_ASPAS + C_ETX + '%' + C_ASPAS + ' order by ' + C_SOH;
   C_SQL36 = 'select * from epharma where status =(' + C_ASPAS + 'V' + C_ASPAS + ') order by id limit 1';
   C_SQL37 = 'select * from pfp where status in(' + C_ASPAS + 'AT' + C_ASPAS + ', ' + C_ASPAS + 'AP' + C_ASPAS + ') order by id desc limit 1';
   C_SQL38 = 'select * from PFP where status=' + C_ASPAS + 'P' + C_ASPAS + ' order by id desc limit 1';
   C_SQL39 = 'select DISTINCT cnpj,id,nome,razaosocial,tel1,logradouro,nmro,complem,bairro,cidade,uf,cep,ie,cidade_cod, email, tipo FROM vw_dest_nf where ' + C_SOH + ' like ' + C_ASPAS + C_ETX + '%' + C_ASPAS +  ' order by ' + C_SOH;
   C_SQL40 = 'select DISTINCT cnpj,id,nome,razaosocial,tel1,logradouro,nmro,complem,bairro,cidade,uf,cep,ie,cidade_cod, email, tipo from vw_dest_nf order by ';
   C_SQL41 = 'select * from vw_produto where ' + C_SOH + ' like ' + C_ASPAS + C_ETX + '%' + C_ASPAS + ' order by ' + C_SOH;
   C_SQL42 = vwEstoque + ' where cod_gtin=' + C_ASPAS + C_SOH  + C_ASPAS;
   C_SQL43 = 'select * from vw_produto order by ';
   //C_SQL44 = 'update nf_chave set status=' + C_ASPAS + '03' + C_ASPAS + ' WHERE nf=(select id from nf where Ide_cnf=' + C_ASPAS + C_SOH + C_ASPAS +' and Ide_nnf=' + C_ASPAS + C_ETX + C_ASPAS + ' and Ide_serie=' + C_ASPAS + C_EOT + C_ASPAS + ');';
   //C_SQL45 = 'CREATE TABLE if not exists nf_cce(id int(11) NOT NULL AUTO_INCREMENT,nf int(11) NULL DEFAULT 0,seq int(11) NULL DEFAULT 0,' + 'texto longtext NULL,  PRIMARY KEY (id));';
   C_SQL46 = 'insert into nf_chave set nf=' + C_ASPAS + C_SOH + C_ASPAS + ', chave=' + C_ASPAS + C_ETX + C_ASPAS + ', recibo=' + C_ASPAS + C_EOT + C_ASPAS + ', protocolo=' + C_ASPAS + C_ENQ + '' + C_ASPAS + ', cstat=' + C_ASPAS + C_ACK + C_ASPAS + ', status=' + C_ASPAS + C_STX + C_ASPAS + ';';
   C_SQL47 = 'CREATE TABLE if not exists nf_chave(id int(11) NOT NULL AUTO_INCREMENT,nf int(11) NULL DEFAULT 0,' + 'chave varchar(50) NULL, recibo varchar(50) NULL, protocolo varchar(50) NULL, cstat int(11) NULL DEFAULT 0, status char(1) NULL DEFAULT ' + C_ASPAS + 'A' + C_ASPAS + ', PRIMARY KEY (id));';
   //C_SQL49 = 'insert into nf_cce set nf=' + C_ASPAS + C_SOH + C_ASPAS + ', seq='+ C_ASPAS + C_ETX + C_ASPAS + ', texto=' + C_ASPAS + C_EOT + C_ASPAS + ';';
  // C_SQL50 = 'select nf.*, nc.chave, nc.protocolo, nc.recibo,nc.cstat, nc.status from nf left join nf_chave nc on nc.nf = nf.id WHERE ';
  // C_SQL51 = 'Ide_nNF=' + C_ASPAS + C_SOH + C_ASPAS + ' order by nf.Ide_nNF';
  // C_SQL52 = C_ETX + ' BETWEEN ' + C_ASPAS + C_SOH + C_ASPAS + ' AND ' + C_ASPAS + C_EOT + C_ASPAS + ' order by nf.Ide_nNF';
   C_SQL53 = 'select * from  finan_centro_custo_movi where ' + C_SOH + ' like ' + C_ASPAS + C_ETX + '%' + C_ASPAS + ' order by ' + C_SOH;
   C_SQL54 = 'select count(*) from nf where Ide_dSaiEnt is null';
   C_SQL55 = 'select * from  finan_chq_terceiro where ' + C_SOH + ' like ' + C_ASPAS + C_ETX + '%' + C_ASPAS + ' order by ' + C_SOH;
   C_SQL56 = 'select * from convenio order by ';
   C_SQL57 = 'select * from  convenio where ' + C_SOH + ' like ' + C_ASPAS + C_ETX + '%' + C_ASPAS + ' order by ' + C_SOH;
   C_SQL58 = 'select * from estoque where suspenso=' + C_ASPAS + 'N' + C_ASPAS + ' AND quant > 0 ' + C_SOH + ' order by id';
   C_SQL59 = 'select * from  cliente where id> 1 and ' + C_SOH + ' like ' + C_ASPAS + C_ETX + '%' + C_ASPAS + ' order by ' + C_SOH;
   C_SQL60 = 'select * from operador order by nome';
   C_SQL61 = 'select * from cfop order by ';
   C_SQL62 = 'select * from cfop where ' + C_SOH + ' like ' + C_ASPAS + C_ETX + '%' + C_ASPAS + ' order by ' + C_SOH;
   C_SQL63 = 'select * from fornecedor order by ';
   C_SQL64 = 'select * from fornecedor where ' + C_SOH + ' like ' + C_ASPAS + C_ETX + '%' + C_ASPAS + ' order by ' + C_SOH;
   C_SQL65 = 'select if(max(id)>=0,max(id)+1,1) FROM estoque where balanca=' + C_ASPAS + 'N' + C_ASPAS;
   C_SQL66 = 'select if(max(cod_interno)>=0,max(cod_interno)+1,1) FROM estoque where balanca=' + C_ASPAS + 'S' + C_ASPAS;
   C_SQL67 = 'select * from estoque ';
   C_SQL68 = 'select * from  estoque ' + C_SOH + ' like ' + C_ASPAS + C_ETX + '%' + C_ASPAS + ' order by ' + C_EOT;
   C_SQL69 = 'select * from  estoque where cod_gtin like ' + C_ASPAS + C_ETX + '%' + C_ASPAS + ' order by cod_gtin ';
   C_SQL70 = 'select * from ncm where ' + C_SOH + ' like ' + C_ASPAS + '%' +  C_ETX + '%' + C_ASPAS + ' order by ' + C_SOH;
   C_SQL71 = 'select * from ncm where ' + C_SOH + '=' + C_ASPAS + C_ETX + C_ASPAS + ' order by ' + C_SOH;
   C_SQL72 = 'select * from inventario where data=' + C_SOH + ' order by ';
   C_SQL73 = 'select * from vw_balanco where data=' + C_EOT + ' and ' + C_SOH +' like ' + C_ASPAS + C_ETX + '%' + C_ASPAS + ' order by ' + C_SOH;
   C_SQL74 = 'select distinct(data) from inventario order by data';
   C_SQL75 = 'select icms from aliquota where id=';
   C_SQL76 = 'select cst from cst where id=';
   C_SQL77 = 'delete from inventario where data=';
   C_SQL78 = 'select count(*) from inventario where data=';
   C_SQL79 = 'select * from vw_clideb order by ';
   C_SQL80 = 'select * from vw_clideb where ' + C_SOH + ' like ' + C_ASPAS +  C_ETX + '%' + C_ASPAS + ' order by ' + C_SOH;
   C_SQL81 = 'select vrvenda_vista from estoque where id=' + C_ASPAS + C_SOH + C_ASPAS;
   C_SQL83 = 'select id from nf_entr where Ide_nNF=' + C_ASPAS + C_SOH + C_ASPAS  + ' and Emit_CNPJCPF=' + C_ASPAS + C_ETX + C_ASPAS;
   C_SQL84 = 'select * from oper_crt order by ';
   C_SQL85 = 'select * from oper_crt where ' + C_SOH + ' like ' + C_ASPAS + C_ETX + '%' + C_ASPAS + ' order by ' + C_SOH;
   C_SQL84b = 'select id from sessao where usoint = "S"';
   C_SQL85b = 'select e.id, e.cod_gtin, e.nome, if(i.id is null, 0, i.id) iid, if(i.quant is null, 0, i.quant) quant from ' +
             'estoque e left join estoque_inicial i on i.estoque = e.id ';

   C_SQL85c = 'select e.id, e.cod_gtin, e.nome, if(i.id is null, 0, i.id) iid, if(i.quant is null, 0, i.quant) quant from ' +
             'estoque e left join estoque_inicial i on i.estoque = e.id where ' + C_SOH + ' like ' + C_ASPAS + C_ETX + '%' + C_ASPAS + ' order by ' + C_SOH;

   C_SQL85a = 'select e.id, e.cod_gtin, e.nome, if(i.id is null, 0, i.id) iid, if(i.quant is null, 0, i.quant) quant from ' +
              'estoque e left join estoque_inicial i on i.estoque = e.id where cod_gtin like ' + C_ASPAS + C_ETX + '%' + C_ASPAS + ' order by cod_gtin ';

   C_SQL86 = vwEstoque + ' where id=';

   C_SQL87 = 'select * from cfop_cst_csosn where cfop=' + C_ASPAS + C_ENQ + C_ASPAS +
             ' and cst=' + C_ASPAS + C_SOH + C_ASPAS +
             ' and csosn=' + C_ASPAS + C_HT + C_ASPAS +
             ' and cst_pis_sai=' + C_ASPAS + C_ETX + C_ASPAS +
             ' and cst_ipi_sai=' + C_ASPAS + C_EOT + C_ASPAS +
             ' and cst_cofins_sai=' + C_ASPAS + C_STX + C_ASPAS;
   C_SQL88 = 'select cst_ipi_ent,cst_pis_ent,cst_cofins_ent,cst from vw_estoque where id=';
   C_SQL89 = 'select destaca_valor from cst_ipi where acbr=';
   C_SQL90 = 'select destaca_valor from cst_pis where acbr=';
   C_SQL91 = 'select destaca_valor from cst_cofins where acbr=';
   C_SQL92 = 'select * from finan_boleto_emitido where id in(';
   C_SQL93 = 'select conta from finan_banco_boleto where id=';
   C_SQL94 = 'select * from finan_debito where tipo=''B'' and id_movi=';
   C_SQL95 = 'select * from finan_boleto_emitido where dt_baixa_canc is null';
   C_SQL96 = 'select * from finan_carne_emitido where id in(';
   C_SQL97 = 'select * from finan_debito where tipo=''C'' and id_movi=';
   C_SQL98 = 'select * from finan_carne_emitido where dt_baixa_canc is null';
   C_SQL99 = 'select * from caixa where tipo=''QBL'' and id_movi=';
  C_SQL100 = 'select * from finan_banco_movi where tipo=''C'' and cod=''BOL'' and id_movi=';
  C_SQL101 = 'select distinct sacado_nome from finan_boleto_emitido order by sacado_nome';
  C_SQL102 = 'select id, razaosocial from cliente order by razaosocial';
  C_SQL103 = 'select * from finan_centro_custo where order by ';
  C_SQL104 = 'select * from  finan_centro_custo where ' + C_SOH + ' like ' + C_ASPAS + C_ETX + '%' + C_ASPAS + ' order by ' + C_SOH;
  C_SQL105 = 'select distinct favorec_nome from finan_apagar order by favorec_nome';

  C_DIRCAT52 = C_DIRFISCO + C_151;

implementation


end.
