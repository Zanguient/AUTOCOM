unit uConsts;

interface

const
  Centenas: array[1..9] of string[12] = ('CEM', 'DUZENTOS', 'TREZENTOS', 'QUATROCENTOS',
    'QUINHENTOS', 'SEISCENTOS', 'SETECENTOS',
    'OITOCENTOS', 'NOVECENTOS');
  Dezenas: array[2..9] of string[10] = ('VINTE', 'TRINTA', 'QUARENTA', 'CINQUENTA',
    'SESSENTA', 'SETENTA', 'OITENTA', 'NOVENTA');
  Dez: array[0..9] of string[10] = ('DEZ', 'ONZE', 'DOZE', 'TREZE', 'QUATORZE',
    'QUINZE', 'DEZESSEIS', 'DEZESSETE',
    'DEZOITO', 'DEZENOVE');
  Unidades: array[1..9] of string[10] = ('UM', 'DOIS', 'TRES', 'QUATRO', 'CINCO',
    'SEIS', 'SETE', 'OITO', 'NOVE');

  MoedaSingular = 'REAL';
  MoedaPlural   = 'REAIS';
  CentSingular  = 'CENTAVO';
  CentPlural    = 'CENTAVOS';
  Zero          = 'SEM VALOR';

//erros
ERROR_GENERIC         = 'ERRO! ';
ERROR_24              = 'ERRO 24!';
ERROR_NO_CLOSE_SCREEN = 'A tela atual não pode ser fechada!';
ERROR_DOC_OUTRO       = 'DOCUMENTO INVÁLIDO. O Documento informado pertence ao cliente ';
ERROR_DLL_NOT_LOAD    = 'DLL não carregada!';
ERROR_DLL_NOT_EXISTS  = 'DLL não encontrada';
ERROR_MAX_BTN         = 'Não é possível ter mais do que %2d botões';
ERROR_ACCES_DENIED    = 'ACESSO NEGADO!';
ERROR_USER_NOT_FOUND  = 'USUÁRIO NÃO ENCONTRADO';
ERROR_BD_NOT_FOUND    = 'Não foi possível conectar com o BD';

//avisos
MSG_SCREEN_NOT_FOUND  = 'Tela não encontrada.';
MSG_NO_MENU_BTN       = 'Nenhum menu associado com este botão.';
MSG_CANT_CREATE_DIR   = 'Não foi possível criar a pasta ';
MSG_NOT_EDIT_PESQ     = 'NÃO É POSSIVEL INSERIR/EDITAR EM MODO PESQUISA!';
MSG_NO_REG            = 'SEM REGISTROS';
MSG_NEW_REG           = 'NOVO REGISTRO EM ANDAMENTO';
MSG_EDIT_REG          = 'ALTERAÇÃO DE REGISTRO EM ANDAMENTO';
MSG_TAB_DESAT         = 'ACESSO A TABELA DESATIVADO';
MSG_DOC_INVALID       = 'Documento inválido';
MSG_IE_INVALID        = 'Inscrição Estadual inválida!';
MSG_CNPJ_INVALID      = 'CNPJ INVÁLIDO';
MSG_CONCLUA_OP        = 'Conclua a operação.';
MSG_NO_DATASET        = 'Sem DataSet';

//pergunta
QRY_SAIR    = 'DESEJA ENCERRAR? NÃO ESQUEÇA DE FAZER A CÓPIA DE SEGURANÇA.';
QRY_DEL_REG = 'Deseja excluir este registro?';
//fixos
FIX_GERENCIAL      = 'GERENCIAL';
FIX_LOADING        = 'Carregando...';
FIX_WAIT           = 'AGUARDE...';
FIX_PESQ_LABEL     = 'PESQUISAR POR ';
FIX_FIND_BD        = 'Procurando BD...';
FIX_FORMAT_DT_TIME = 'dddd, dd "de" mmmmm "de" yyyy hh:nn:ss';
FIX_SN             = 'S/N';
FIX_DLL_REL        = 'DLLGeraRel';
FIX_DLL_IE         = 'DllInscE32.Dll';
FIX_STR_ATU        = '11111111111111111111111111111111111111111111111111';
FIX_NO_HINT        = 'Nenhuma dica para esta tela.';
FIX_URL_1          = 'http://service.datasus.org';
FIX_URL_2          = 'http://google.com';
FIX_URL_3          = 'http://google.com.br';
FIX_URL_4          = 'http://registro.br/';
FIX_DAT            = 'DAT';
FIX_REL            = 'REL';
FIX_JPG            = 'JPG';
FIX_ISENTO         = 'ISENTO';
FIX_FILE_JPG       = 'ptim.png';
FIX_LOG            = 'LOG';
FIX_NFE            = 'NFE';
FIX_GERADAS        = 'GERADAS';
FIX_PDF            = 'PDF';
FIX_CANCELADAS     = 'CANCELADAS';
FIX_DPSEC          = 'DPSEC';
FIX_INI            = 'app.ini';
FIX_INI_SECTION    = 'AutoCom';
FIX_SCREEN_WIDTH   = 800;
FIX_MASK_CPF       = '999\.999\.999\-99;0';
FIX_MASK_CNPJ      = '99\.999\.999\/9999\-99;0';
FIX_LOCALHOST      = '127.0.0.1';
FIX_DB             = 'autocom';
FIX_LISTA_TELAS    = 'As seguintes telas estão em modo de edição: ';
FIX_MAX_BTN        = 6;
FIX_COLOR          = 12115164;
FIX_TS_COLOR       = $00B7DBDB;
FIX_MAX_TENTATIVA  = 3;
FIX_DATE_FORMAT_SQL = 'yyyy-mm-dd';
FIX_CGF_IS_OPEN     = 'A tela de configuração será aberta para conferência.';
FIX_CAPTION         = 'SISCOM v. 5.0 - ';
FIX_ASPAS           = '''';

implementation

end.
