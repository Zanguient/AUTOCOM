unit uAtu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,IdFTPList,
  cxLookAndFeelPainters, Vcl.Menus,Vcl.StdCtrls, dxGDIPlusClasses, Vcl.ExtCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, cxButtons, Vcl.ComCtrls, cxControls, cxContainer, cxEdit,
  cxProgressBar, Vcl.OleCtrls, SHDocVw, dxSkinsCore, dxSkinCaramel;

type
  TfrmAtu = class(Tfrm)
    ftp1: TIdFTP;
    Image1: TImage;
    Panel3: TPanel;
    Memo1: TMemo;
    Timer1: TTimer;
    WebBrowser1: TWebBrowser;
    btnIniciar: TcxButton;
    Bar2: TcxProgressBar;
    procedure btnIniciarClick(Sender: TObject);
    procedure ftp1AfterClientLogin(Sender: TObject);
    procedure ftp1BannerBeforeLogin(ASender: TObject; const AMsg: string);
    procedure ftp1BannerAfterLogin(ASender: TObject; const AMsg: string);
    procedure ftp1BannerWarning(ASender: TObject; const AMsg: string);
    procedure ftp1Connected(Sender: TObject);
    procedure ftp1Disconnected(Sender: TObject);
    procedure ftp1NeedAccount(ASender: TObject; var VAcct: string);
    procedure ftp1Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure FormShow(Sender: TObject);
    procedure ftp1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ftp1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure ftp1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
  private
    function Conectar: boolean;
    function Listar: boolean;
    procedure Display(s: string);
    procedure Atualizar;
    procedure ExecScript;
    procedure AtualizarBD(nome, nmro, ext: string);
    procedure Fechar_App;
  public
    st_diretorio: string;
      st_appName: string;
      st_app_atu: string;
         app_atu: string;
        nmro_atu: string;
  end;

var
  frmAtu: TfrmAtu;
  tam, tam_baixado: integer;
  app_closed, avisou: boolean;

implementation

{$R *.dfm}

uses uFuncoes, uDM, uAutocomConsts, udm_ini, uSkinDLL, dmSkins, uDM_Conn;

procedure TfrmAtu.ExecScript;
var
   listaArq, Script: TstringList;
   i: integer;
   s,nome_arq, nmro_arq, dir: string;
begin
   listaArq      := TStringList.Create;
   Script        := TStringList.Create;
   dir           := Aqui(C_TMP_FILE + '\script','');
   listaArq.Text := GetFileListFiltro(dir, '*.sql').Text;

   for i := 0 to listaArq.Count - 1 do
   begin
      s := listaArq.Strings[i];
      Script.LoadFromFile(dir + s);
      nome_arq := Trim(copy(s,1,pos('_',s)-1));
      nmro_arq := Number(s);

      if Script.Count > 0 then
      begin
         Display('Executando script ' + IntToStr(i+1));
         DM.ExecSQL(Script.Text, False);

         if not DM.erro_script then
            Display('Script executado')
         else
            Display('Erro ao executar o script:' + Script.Text);

         AtualizarBD(nome_arq, nmro_arq, 'sql');
      end;
   end;

   listaArq.free;
   Script.free;
end;

procedure TfrmAtu.Atualizar;
var
   lista: TStrings;
   s,nome_arq, nmro_arq, Origem, Dest: string;
   i: integer;
begin
   ExecScript;//executa os scripts que houverem

   lista := Arquivos(Aqui('TMP','*.exe'));

   if lista.Count > 0 then
   begin
      for i := 0 to lista.Count - 1 do
      begin
         s := lista.Strings[i];
         nome_arq := Trim(copy(s,1,pos('_',s)-1));
         nmro_arq := Number(s);
         Origem   := Aqui('TMP', s) + '.exe';
         Dest     := Aqui('', '') + nome_arq + '.exe';
         //faz a copia de segurança
         MoveFile(PWideChar(Dest), PWideChar(Aqui('OLD', nome_arq +'_' + nmro_arq + '.OLD')));
         Display(nome_arq + ' - Efetuada a cópia de segurança do aplicativo atual.');
         //copia o arquivo da pasta TMP, renomeando-o
         CopyFile(PWideChar(Origem), PWideChar(Dest), False);

         if FileExists(Dest) then
            Display(nome_arq + ' - Atualização instalada.')
         else
            Display('Houve um ERRO ao instalar a atualização.');

         AtualizarBD(nome_arq, nmro_arq, 'exe');//grava no bd a atualização
      end;
   end;

   lista := Arquivos(Aqui('TMP','*.dll'));

   if lista.Count > 0 then
   begin
      for i := 0 to lista.Count - 1 do
      begin
         s := lista.Strings[i];
         nome_arq := Trim(copy(s,1,pos('_',s)-1));
         nmro_arq := Number(s);
         Origem   := Aqui('TMP', s) + '.dll';
         Dest     := Aqui('', '') + nome_arq + '.dll';
         //faz a copia de segurança
         MoveFile(PWideChar(Dest), PWideChar(Aqui('OLD', nome_arq +'_' + nmro_arq + '.OLD')));
         Display(nome_arq + ' - Efetuada a cópia de segurança do aplicativo atual.');
         //copia o arquivo da pasta TMP, renomeando-o
         CopyFile(PWideChar(Origem), PWideChar(Dest), False);

         if FileExists(Dest) then
            Display(nome_arq + ' - Atualização instalada.')
         else
            Display('Houve um ERRO ao instalar a atualização.');

         AtualizarBD(nome_arq, nmro_arq, 'dll');//grava no bd a atualização
      end;
   end;

   Close;
end;

procedure TfrmAtu.AtualizarBD(nome, nmro, ext: string);
begin
   DM.ExecSQL('replace into version set app=' + QuotedDuoStr(nome) +
              ',tipo=' + QuotedDuoStr(nome) +
              ',nome=' + QuotedDuoStr(nmro) + ';');
end;

procedure TfrmAtu.btnIniciarClick(Sender: TObject);
begin
   if conectar then
   begin
      btnIniciar.Enabled := False;
      FTP1.ChangeDir(st_diretorio); //acessa o diretorio no servidor
      FTP1.List(nil);//limpa a lista

      if ParamStr(1) = '-t' then
      begin
         Fechar_App;
         Listar;
         exit;
      end;

      if Listar then
         Atualizar;
   end;
end;


procedure TfrmAtu.Fechar_App;
begin
   btnIniciar.Enabled := ParamStr(2) <> '-start';

   if not avisou then
     ShowMessage('ATENÇÂO!'+#10#13+'Uma atualização será feita agora.'+#10#13+'Encerre todos os trabalhos pendentes e depois clique em OK.'+#10#13+'Os aplicativos AUTOCOM serão fechados para atualização.');

   killtask('GERAREL.exe');
   killtask('Gerencial.exe');
   killtask('KSNGPC.exe');
   killtask('nfe.exe');
   killtask('pdv.exe');
   killtask('prevenda.exe');
   killtask('pti.exe');
end;

procedure TfrmAtu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(DM);
   FreeAndNil(DM_INI);

   if (st_appName <> C_ST_VAZIO)and(app_closed) then //reabre a aplicação
   begin
      Display('Reabrindo aplicativo...');
      ExecFile(Aqui('',st_appName + '.exe'), 'open','');
   end;

   Display('FIM!...');
   inherited;
end;

procedure TfrmAtu.FormCreate(Sender: TObject);
const
   param: array [0..8] of string = ('-g', '-r', '-p', '-n', '-s', '-v', '-t', '-a','-x'); //parametros
     app: array [0..8] of string = ('atu','atu','atu','atu','atu','atu','teste','atu', 'atu'); //pasta no servidor
 appName: array [0..8] of string = ('Gerencial','GeraRel','PDV','nfe','KSNGPC','venda','','prevenda','pti'); //nome dos exe
var
   i: integer;
begin
   if paramStr(1) = C_ST_VAZIO then
   begin
      FatalAppExit(0, 'Uso incorreto');
      exit;
   end;

   inherited;
   avisou := False;

   for i := Low(param) to High(param) do
   if paramStr(1) = param[i] then
   begin
      st_diretorio := app[i];
      st_appName   := appName[i];
   end;

   DM_INI := TDM_INI.Create(self);
   DMConn := TDMConn.Create(self);
   DM := TDM.Create(self);
   //Ini do DM
   DM_INI.ini.inifilename := Aqui(C_INI_FILE, 'autocom.ini');
   DM_INI.ini.Active      := True;
   DM_INI.ini.RestoreFormPlacement;

   Display('-------------------------------------------------');
   Display('Módulo de atualização iniciado no modo ' + st_appName);
   Display('-------------------------------------------------');
end;

procedure TfrmAtu.FormShow(Sender: TObject);
begin

   GetSkinDLL.GetSkinName;

   btnIniciar.Enabled := ParamStr(2) <> '-start';

   if ParamStr(1) <> '-t' then //teste
   begin
      if DM.Conectar then
      begin
         Timer1.Enabled := ParamStr(2)= '-start';
         {teste}
        // ShowMessage(DM.DB.Params.Text);
         {(teste)}
      end
      else
      begin
         FatalAppExit(0, 'Não foi possível conectar ao BD.');
      end;
   end;
   app_closed := False;

end;

procedure TfrmAtu.ftp1AfterClientLogin(Sender: TObject);
begin
   Display('Autenticação efetuada com sucesso.');
end;

procedure TfrmAtu.ftp1BannerAfterLogin(ASender: TObject; const AMsg: string);
begin
   Display(AMsg);
end;

procedure TfrmAtu.ftp1BannerBeforeLogin(ASender: TObject; const AMsg: string);
begin
   Display(AMsg);
end;

procedure TfrmAtu.ftp1BannerWarning(ASender: TObject; const AMsg: string);
begin
   Display(AMsg);
end;

procedure TfrmAtu.ftp1Connected(Sender: TObject);
begin
   Display('Conectado com o servidor...');
end;

procedure TfrmAtu.ftp1Disconnected(Sender: TObject);
begin
   Display('Desconectado do servidor...');
end;

procedure TfrmAtu.ftp1NeedAccount(ASender: TObject; var VAcct: string);
begin
   Display(VAcct);
end;

procedure TfrmAtu.ftp1Status(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
const IdStatusStr: Array [0..8] of string = ('Resolvendo','Conectando','Conectado','Desconectando','Desconectado','MSG','Transferindo','Pronto','Abortado');
begin
   Display(IdStatusStr[integer(AStatus)] + ' - ' + AStatusText);
end;

procedure TfrmAtu.ftp1Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
   Application.ProcessMessages;
   memo1.Lines.Strings[memo1.Lines.Count-1] := format('%d kb de %d kb',[AWorkCount div 1000, tam div 1000]);
   bar2.Position := AWorkCount;
end;

procedure TfrmAtu.ftp1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
   display('Iniciado o processo.');
end;

procedure TfrmAtu.ftp1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
   display('Finalizado o processo.');
end;

function TfrmAtu.Conectar: boolean;
var
   Lista: TStringlist;
begin
   Memo1.Lines.Clear;
   Lista := TStringlist.Create;
   Lista.LoadFromFile(Aqui(C_INI_FILE, 'ftp.ini'));
   ftp1.Host     := Lista.Strings[0];// 'ftp.paradigmati.p.ht';
   ftp1.Username := Lista.Strings[1];//'u315155880.koplin';
   ftp1.Password := 'vf8ooyndwg';
   ftp1.Connect();
   Result := ftp1.Connected;

   if not Result then
      FatalAppExit(0, 'Não foi possível conectar ao servidor.');
end;

procedure TfrmAtu.Display(s: string);
begin
   memo1.Lines.Add(s);
   Log('Atu','',s);
end;

function TfrmAtu.Listar: boolean;
var
   i, j: integer;
   s, sfile, dfile, ddir, st_nome: string;
   n: currency;
begin
   tam        := 0;
   j          := 0;
   Result     := False;
   st_app_atu := C_ST_VAZIO;

   DeletaArqTipo(Aqui(C_TMP_FILE + '\script','*.sql')); //limpa a pasta
   DeletaArqTipo(Aqui(C_TMP_FILE,'*.exe'));//limpa a pasta
   DeletaArqTipo(Aqui(C_TMP_FILE,'*.dll'));//limpa a pasta

   for I := 0 to FTP1.DirectoryListing.Count - 1 do   //loop de varredura do diretório
   begin
      s     := (FTP1.DirectoryListing.Items[I].FileName);
      dfile := C_ST_VAZIO;
      
      if (s = '.') or (s = '..') then
         Continue;

      if FTP1.DirectoryListing.Items[I].ItemType = ditFile then //se é do tipo file
      begin
         sfile := s;
         s     := number(s); //obtem a data hora no nome do arquivo
         Display('PASSO '  + IntToStr(I+1) + '---------------------------------------------');

         if pos('.exe', sfile)>0 then //se é um exe
         begin
            if ParamStr(1) = '-t' then //teste
            begin
               ddir       := C_TMP_FILE;
               dfile      := Aqui(ddir, sfile);
               Result     := True;
               Display('MODO TESTE.');
            end
            else //busca na base de dados pela atualização
            begin
               st_nome := AnsiUpperCase(Trim(Copy(sfile, 1, pos('_', sfile)-1)));
               DMConn.Q1.Open('select nome from version where tipo="exe" and nome=' +
                           QuotedDuoStr(s) + ' and app=' +
                           QuotedDuoStr(st_nome));

               if (DMConn.Q1.Fields[0].AsString = s)or(s = C_ST_VAZIO) then
               begin
                  Display('Aplicativo: Nenhuma atualização exe disponível.');
                  Result := False;
               end
               else
               begin
                  ddir       := C_TMP_FILE;
                  dfile      := Aqui(ddir, sfile);
                  Result     := True;
                  Fechar_App;//fecha o aplicativo chamador, se houver uma atualização
                  Avisou := true;
               end;
            end;
         end
         else
         if pos('.dll', sfile)>0 then //se é um exe
         begin
            if ParamStr(1) = '-t' then //teste
            begin
               ddir       := C_TMP_FILE;
               dfile      := Aqui(ddir, sfile);
               Result     := True;
               Display('MODO TESTE.');
            end
            else //busca na base de dados pela atualização
            begin
               st_nome := AnsiUpperCase(Trim(Copy(sfile, 1, pos('_', sfile)-1)));
               DMConn.Q1.Open('select nome from version where tipo="dll" and nome=' +
                           QuotedDuoStr(s) + ' and app=' +
                           QuotedDuoStr(st_nome));

               if (DMConn.Q1.Fields[0].AsString = s)or(s = C_ST_VAZIO) then
               begin
                  Display('Aplicativo: Nenhuma atualização dll disponível.');
                  Result := False;
               end
               else
               begin
                  ddir       := C_TMP_FILE;
                  dfile      := Aqui(ddir, sfile);
                  Result     := True;
                  Fechar_App;//fecha o aplicativo chamador, se houver uma atualização
                  Avisou := true;
               end;
            end;
         end
         else
         if pos('.sql', sfile)>0 then
         begin
            DMConn.Q1.Open('select nome from version where tipo="sql" and nome=' + QuotedDuoStr(s));

            if (DMConn.Q1.Fields[0].AsString = s)or(s = C_ST_VAZIO) then
            begin
               Display('script: Nenhuma atualização disponível.');
               Result := False;
            end
            else
            begin
               ddir  := C_TMP_FILE + '\script';
               dfile := Aqui(ddir, sfile);
               Result := True;
            end;
         end;

         if Result then
         begin
            tam := ftp1.Size(sfile);
            bar2.Properties.Max := Tam;
            n := Arredonda(Tam/1000,2);

            Insert(':',s, 11);
            Insert(':',s, 9);
            Insert(' ',s, 7);
            Insert('/',s, 5);
            Insert('/',s, 3);

            Display('Atualização disponível: ' + s + ' - ' + FloatToStr(n) + ' kb');
            Display('Baixando em ' + ddir + ' Aguarde...');

            bar2.Show;
            bar2.Properties.Max := tam;

            if dfile <> C_ST_VAZIO then
            begin
               ftp1.Get(sfile, dfile, False, True);

               if FileExists(dfile) then
               begin
                  tam_baixado := TamArq(dfile);

                  if tam_baixado = tam then
                  begin
                     Display('Arquivo baixado com sucesso.');
                     inc(j);
                  end
                  else  //apaga o arquivo baixado com erro
                  begin
                      Display('Erro ao baixar arquivo. Deletando...');
                      DeleteFiles(ddir, dfile);
                  end;
               end
               else
               Display('Arquivo não encontrado na pasta temporária.');
            end;
            bar2.Hide;
            Display('----------------------------------------------------');
         end;
      end;
   end;

   ftp1.Disconnect;
   Result := j > 0;

   if not Result then
      Close;
end;

procedure TfrmAtu.Timer1Timer(Sender: TObject);
begin
   timer1.Enabled := False;
   btnIniciar.Click;
end;

end.
