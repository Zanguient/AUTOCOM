unit uSNGPC_ws;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Math,
  Dialogs, rxPlacemnt, InvokeRegistry, Rio, SOAPHTTPClient, sngpc_p,
  xmldom, XMLIntf, msxmldom, XMLDoc, StdCtrls, ExtCtrls, uFuncoes, uMD5Print, Types,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, cxButtons, cxTextEdit, ACBrBase, ACBrEnterTab;

type
  Tfrm_ws = class(TForm)
    XMLDocument1: TXMLDocument;
    Panel1: TPanel;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    Edit3: TcxTextEdit;
    btnEnviar: TcxButton;
    Button3: TcxButton;
    Button4: TcxButton;
    Button2: TcxButton;
    Ini: TFormStorage;
    EnterTab: TACBrEnterTab;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function Validarusuario: boolean;
    function EnviarArq:boolean;
  public
    st_arq_path, HashIdentificacao, s_Link: string;
  end;

var
  frm_ws: Tfrm_ws;

   wbSNGPC:sngpcSoap;
   email, senha, st_addr:String;

implementation

uses uDM, uMain, uAutocomConsts, uSNGPCConsts;



{$R *.dfm}


procedure Tfrm_ws.btnEnviarClick(Sender: TObject);
begin
   EnviarArq;
end;

procedure Tfrm_ws.Button2Click(Sender: TObject);
var
   resp: string;
begin
   email := Trim(edit1.Text);
   senha := trim(Edit2.Text);

   if not Validarusuario then
      exit;

  resp := GetsngpcSoap(False, st_addr, nil).ConsultaDadosArquivoSNGPC(email,
                                                                      senha,
                                                                      Number(DM.QEmpresacnpj.AsString),
                                                                      Trim(edit3.Text)
         );

   Log('envio','TX CONSULTA', resp);

   memo1.Lines.add('==========================================');
   memo1.Lines.add('==========      CONSULTA     =============');
   if pos('<transmissaoSNGPC>', resp) > 0 then
   begin
      memo1.Lines.add('HASH: '         +  copy(resp,pos('<CODIGOHASH>',resp)+ 12,32));//hash
      memo1.Lines.add('Período: '      + copy(resp,pos('<INICIOREFERENCIA>',resp)+18,10) + ' e ' +
                       copy(resp,pos('<FIMREFERENCIA>',resp)+15,10));
      memo1.Lines.add('Data Transm.: ' + copy(resp,pos('<DATATRANSMISSAO>',resp)+17,10));

      if StrToDateDef(copy(resp,pos('<DATAVALIDACAO>',resp)+15,10),0) >0 then
         memo1.Lines.add('Data Valid.: '  + copy(resp,pos('<DATAVALIDACAO>',resp)+15,10))
      else
        memo1.Lines.add('Arquivo ainda não foi validado.');
   end
   else
   begin
      memo1.Lines.Add(resp);
   end;
   memo1.Lines.add('==========================================');
end;

procedure Tfrm_ws.Button3Click(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_ws.Button4Click(Sender: TObject);
begin
   Validarusuario;
end;

function Tfrm_ws.EnviarArq: boolean;
var
   resp: string;
begin
   email := Trim(edit1.Text);
   senha := trim(Edit2.Text);

   Resp := GetsngpcSoap(False, st_addr, nil).EnviaArquivoSNGPC(email,
                                                               senha,
                                                               FIleToByteArray(st_arq_path),
                                                               HashIdentificacao
   );

   Memo1.Lines.Add(resp);

   Log('envio','TX INVENTÁRIO', resp);

   Result := pos('recebido com sucesso', resp)>0;

   if Result then
   begin
      if pos('INVENTARIO_INI',st_arq_path)>0 then
         dm.ExecSQL(SNGPC_SQL24)
      else
      begin
         DM.QGerados.Edit;
         DM.QGeradosvalidado.Value := 'E';
         DM.QGerados.Post;
      end;
   end
   else
   ShowMessage('Erro ao enviar o XML.: ' + #13 + Trim(Memo1.Text));
end;

procedure Tfrm_ws.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  ini.SaveFormPlacement;
end;

procedure Tfrm_ws.FormCreate(Sender: TObject);
begin
   ini.inifilename := Aqui('TXT', 'ksngpc20.ini');
   ini.RestoreFormPlacement;
end;

procedure Tfrm_ws.FormShow(Sender: TObject);
begin
  inherited;

  if frmMain.cbHomo.Checked then
  begin
     ShowMessage('Modo Homologação');
     Memo1.Lines.Add('Modo Homologação');
     st_addr := 'http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx'//homologação
  end
  else
     st_addr := 'http://sngpc.anvisa.gov.br/webservice/sngpc.asmx?WSDL';//produção

{  wbSNGPC := GetsngpcSoap(True,'', nil);//True, st_addr);

   if wbSNGPC = nil then
      Memo1.Lines.Add('Não foi possível obter acesso ao site do SNGPC')
   else  }
   HashIdentificacao := LowerCase(md5_File(st_arq_path));

   EDIT3.Text := HashIdentificacao;
end;


function Tfrm_ws.Validarusuario: boolean;
var
   email, senha, resp: string;
begin
   email := Trim(edit1.Text);
   senha := trim(Edit2.Text);
   resp := GetsngpcSoap(False, st_addr, nil).ValidarUsuario(email, senha);
   Memo1.Lines.add('Validando usuário: ' + resp);
   Result := Trim(resp) = 'Ok';
end;

end.
