unit uAtuFarma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, uFuncoes,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.ComCtrls, ACBrBase, ACBrEnterTab,
  Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB, RxMemDS, uAutocomConsts, dxSkinsCore, dxSkinCaramel;

type
  TfrmAtu_Farma = class(Tfrm)
    bar1: TProgressBar;
    btnIniciar: TcxButton;
    ADB: TADOConnection;
    ADTS: TADODataSet;
    stBar1: TStatusBar;
    T1: TRxMemoryData;
    procedure FormCreate(Sender: TObject);
    procedure btnIniciarClick(Sender: TObject);
  private
    procedure Atu(full: boolean);
    procedure CopiarArqUnitex;
    function GetUnidade(stUn: String): integer;
    function GetCST:integer;
    function GetPreco:Currency;
    function GetRegMS:string;
  public
    { Public declarations }
  end;

var
  frmAtu_Farma: TfrmAtu_Farma;

  g_iSessao: integer;

implementation

{$R *.dfm}

uses udm_ini, uDM, uDM_Conn;

procedure TfrmAtu_Farma.Atu(full: boolean);
var
   Aliq:Integer;
   preco: Currency;
begin
   bar1.Max := ADTS.RecordCount;
   DMConn.Q1.Open('select id from aliquota where cod_if="FF"');
   Aliq := DMConn.Q1.Fields[0].AsInteger;
   btnIniciar.Enabled := False;
   DM.QEstoque.Tag := 1;

   while not ADTS.Eof do
   begin
      bar1.Position :=  bar1.Position + 1;
      if ADTS.FieldByName('PRC_VENDA').AsCurrency <=0 then
      begin
         ADTS.Next;
         continue;
      end;

      if Length(ADTS.FieldByName('CODBAR').AsString) < 8 then
      begin
         ADTS.Next;
         continue;
      end;

      if DM.QEstoque.Locate('cod_gtin', ADTS.FieldByName('CODBAR').AsString, []) then
         DM.QEstoque.Edit
      else
      if DM.QEstoque.Locate('cod_interno', ADTS.FieldByName('NR_PRODUTO').AsInteger, []) then
         DM.QEstoque.Edit
      else
         DM.QEstoque.Insert;

     preco := GetPreco;

      if (DM.QEstoquecod_interno.AsInteger >0)AND //pode ocorrer 2 codbar iguais
         (DM.QEstoquecod_interno.AsInteger <> ADTS.FieldByName('NR_PRODUTO').AsInteger) then
      begin
         if not DM.QEstoque.Locate('cod_interno', ADTS.FieldByName('NR_PRODUTO').AsInteger, []) then
         begin  //se nao existe o medicamento, sai
            DM.QEstoque.cancel;
            ADTS.Next;
            continue;
         end
         else
         DM.QEstoque.Edit;
      end;

      if dm.QEstoquemedic_atualizar_web.Value = 'N' then
      BEGIN
         DM.QEstoque.cancel;
         ADTS.Next;
         continue;
      END;

      if DM.QEstoquevrvenda_vista.AsCurrency = preco then
      begin
         DM.QEstoque.cancel;
         ADTS.Next;
         continue;
      end;

      if (DM.QEstoque.state = dsEdit)and(DM.QEstoquemedic_atualizar_web.AsString = 'N') then
      begin
         DM.QEstoque.cancel;
         ADTS.Next;
         continue;
      end;

     DM.QEstoquecod_gtin.AsString               := ADTS.FieldByName('CODBAR').AsString;
     DM.QEstoquecod_interno.AsInteger           := ADTS.FieldByName('NR_PRODUTO').AsInteger;
     DM.QEstoquenome.AsString                   := Trim(Concat(ADTS.FieldByName('DESCRICAO').AsString, ' ',
                                                          ADTS.FieldByName('APRESENT').AsString, ' ',
                                                          ADTS.FieldByName('NOMELAB').AsString));
     stBar1.SimpleText                          := DM.QEstoquenome.AsString;
     DM.QEstoquevrvenda_old.Value               := DM.QEstoquevrvenda_vista.AsCurrency;
     DM.QEstoquevrvenda_vista.Value             := preco;
     DM.QEstoqueunidade.Value                   := GetUnidade(ADTS.FieldByName('UND').AsString);
     DM.QEstoqueorigem.Value                    := 0;
     DM.QEstoquemedic_fracao.Value              := Iif(ADTS.FieldByName('QTD_FRAC').AsInteger <= 0, 1, ADTS.FieldByName('QTD_FRAC').AsInteger) ;
     DM.QEstoquemedicam_pmc.Value               := ADTS.FieldByName('PRC_VENDA').AsCurrency/DM.QEstoquemedic_fracao.Value;
     DM.QEstoquecst.AsInteger                   := GetCST;
     DM.QEstoquealiq_icms.AsCurrency            := Aliq;
     DM.QEstoquesessao.AsInteger                := g_iSessao;
     DM.QEstoqueproducao_propria.AsString       := 'S';
     DM.QEstoquedestinacao.AsString             := '00 MERCADORIA PARA REVENDA';
     DM.QEstoqueincide_pis_cofins.Value         := 'N';
     DM.QEstoquecst_ipi_sai.Value               := 4;
     DM.QEstoquecst_pis_sai.Value               := 10;
     DM.QEstoquecst_cofins_sai.Value            := 10;
     DM.QEstoquecod_receita.Value               := 0;
     DM.QEstoquesped_tabela.Value               := 0;
     DM.QEstoqueicms_st_mod_bc.Value            := 0;
     DM.QEstoquecalculo_por_arredondamento.Value := 'S';
     DM.QEstoquemedicam_apresentacao.AsString   := Trim(ADTS.FieldByName('APRESENT').AsString);
     DM.QEstoquemedicam_principio_atv.AsString  := Trim(ADTS.FieldByName('PRINATVNOM').AsString);
     DM.QEstoquemedicam_nomelab.AsString        := Trim(ADTS.FieldByName('NOMELAB').AsString);
     DM.QEstoquemedicam_registroms.AsString     := GetRegms;

     if DM.QEstoquemedicam_registroms.AsString <> EmptyStr then
        DM.QEstoquemedicam_portaria.AsString    := Trim(BuscaTroca(ADTS.FieldByName('PORTARIA').AsString,'-',''));

     if DM.QEstoque.State = dsInsert then
        DM.QEstoquesuspenso.AsString            := 'S'; //Por default é suspenso
     DM.QEstoque.Post;
      Application.ProcessMessages;
      ADTS.Next;
   end;
  {
   DMConn.Q1.Open('select * from ncm_prinatv_gtin');
   bar1.Max      := DMConn.Q1.RecordCount;
   bar1.Position := 0;
   stBar1.SimpleText := 'Atualizando NCM...';
   while not DMConn.Q1.Eof do
   begin
      bar1.Position :=  bar1.Position + 1;
      if DMConn.Q1.FieldByName('prinatv').AsString <> EmptyStr then
         DM.ExecSQL('update estoque set ncm="' + DMConn.Q1.FieldByName('ncm').AsString +
                    '" where length(ncm)<2 and medicam_principio_atv="' + DMConn.Q1.FieldByName('prinatv').AsString + '"')
      else
      if DMConn.Q1.FieldByName('gtin').AsString <> EmptyStr then
         DM.ExecSQL('update estoque set ncm="' + DMConn.Q1.FieldByName('ncm').AsString +
                    '" where length(ncm)<2  and cod_gtin="' + DMConn.Q1.FieldByName('gtin').AsString + '"');
      DMConn.Q1.Next;
      Application.ProcessMessages;
   end; }

   DMConn.Q1.Close;
   DM.QEstoque.Close;
   DM.QEstoque.Tag := 0;
   ADTS.Close;
   ADB.Connected := False;
   ShowMessage('Processo concluído.');
   //apaga as tabelas da unitex...
   DeleteFiles(stBar1.SimpleText, '*.DBF');
   DeleteFiles(stBar1.SimpleText, '*.mdx');
   btnSair.Click;
end;

procedure TfrmAtu_Farma.btnIniciarClick(Sender: TObject);
begin
  ADB.LoginPrompt:=false;
  ADB.ConnectionString:=Format('Provider=Microsoft.JET.OLEDB.4.0;Data Source=%s;Extended Properties=dBase IV;',[stBar1.SimpleText]);
  try
     ADB.Connected:=True;
     ADTS.CommandText:='SELECT U.DESCRICAO, U.CODBAR,U.NR_PRODUTO, U.APRESENT, U.NOMELAB, U.PRINATVNOM, ' +
                       'U.UND, U.PORTARIA, P.PRC_VENDA, P.QTD_FRAC, P.FRACAO FROM PRO18.DBF P, UNIPRECO.DBF U ' +
                       ' WHERE P.NR_PRODUTO = U.NR_PRODUTO';
     ADTS.Open;

     DMConn.Q1.Open('select id from sessao where nome LIKE "MEDICAMENTO%"');

     if DMConn.Q1.IsEmpty then
     begin
         ShowMessage('Sessão MEDICAMENTOS não encontrada.');
         btnIniciar.Enabled := False;
         exit;
     end;

     g_iSessao := DMConn.Q1.Fields[0].AsInteger;
     DM.QEstoque.Open('select * from estoque where sessao = ' + DMConn.Q1.Fields[0].AsString);

     if DM.QEstoque.IsEmpty then
     begin
        Atu(True);
     end
     else
        Atu(False);
  except
    on E : Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TfrmAtu_Farma.CopiarArqUnitex;
var
   orig, dest: string;
begin
   Dest := stBar1.SimpleText;
   Orig := Copy(Dest, 1, pos('\ARQ', Dest)-1);
   CopyFile(PWideChar(orig + '\UNIPRECO.DBF'), PWideChar(dest + '\UNIPRECO.DBF'), False);

   if fileexists(orig + '\UNIPRECO.mdx') then
      CopyFile(PWideChar(orig + '\UNIPRECO.mdx'), PWideChar(dest + '\UNIPRECO.mdx'), False)
   else
      if fileexists(Aqui(C_TXT_FILE, 'UNIPRECO.mdx')) then
      CopyFile(PWideChar(Aqui(C_TXT_FILE, 'UNIPRECO.mdx')), PWideChar(dest + '\UNIPRECO.mdx'), False)
   else
   raise Exception.Create('Arquivo UNIPRECO.mdx não foi encontrado.');
end;

procedure TfrmAtu_Farma.FormCreate(Sender: TObject);
begin
   inherited;
   bar1.Position := 0;
   stBar1.SimpleText := Trim(DM_INI.ini.StoredValue['pathUnitex']);

   CopiarArqUnitex;

   if not FileExists(stBar1.SimpleText + '\PRO18.DBF') then
   begin
      ShowMessage('Arquivo ' + stBar1.SimpleText + '\PRO18.DBF não encontrado.');
      btnIniciar.Enabled := False;
   end
   else
   if not FileExists(stBar1.SimpleText + '\PRO18.DBF') then
   begin
      ShowMessage('Arquivo ' + stBar1.SimpleText + '\UNIPRECO.DBF não encontrado.');
      btnIniciar.Enabled := False;
   end
   else
   if not FileExists(stBar1.SimpleText + '\UNIPRECO.mdx') then
   begin
      ShowMessage('Arquivo ' + stBar1.SimpleText + '\UNIPRECO.mdx não encontrado.');
      btnIniciar.Enabled := False;
   end;
end;

function TfrmAtu_Farma.GetCST: integer;
begin
   DM.QEmpresa.Open('select * from empresa');
   if DM.qempresaindativ.AsInteger in [2,3] then
      DMConn.Q1.Open('select id from CST where cst=60')
   else
      DMConn.Q1.Open('select id from CST where cst=500');
   Result := DMConn.Q1.Fields[0].AsInteger;
end;

function TfrmAtu_Farma.GetPreco: Currency;
begin
   if ADTS.FieldByName('QTD_FRAC').AsInteger > 0 then
      Result := Arredonda(ADTS.FieldByName('FRACAO').AsCurrency,2)
   else
      Result := Arredonda(ADTS.FieldByName('PRC_VENDA').AsCurrency,2);
end;

function TfrmAtu_Farma.GetRegMS: string;
begin
   DMConn.Q1.Open('select registro_ms from ncm_prinatv_gtin where gtin=' + Texto_Mysql(ADTS.FieldByName('CODBAR').AsString) + ' and length(registro_ms)=13');
   Result := DMConn.Q1.Fields[0].AsString;
end;

function TfrmAtu_Farma.GetUnidade(stUn: String): integer;
begin
   if stUn = EmptyStr then
   begin
      DMConn.Q1.Open('select id from unidade where unidade ="UN"');
      if DMConn.Q1.Fields[0].AsInteger > 0 then
         Result := DMConn.Q1.Fields[0].AsInteger
   end
   else
   if DM.QEstoqueunidade.AsInteger > 0 then
      Result := DM.QEstoqueunidade.AsInteger
   else
   begin
      stUn := Copy(stUn,1,2);
      DMConn.Q1.Open('select id from unidade where unidade =' + Texto_Mysql(stUn));
      if DMConn.Q1.Fields[0].AsInteger > 0 then
         Result := DMConn.Q1.Fields[0].AsInteger
      else
      begin
         DM.QUnidade.Open('select * from unidade where unidade =' + Texto_Mysql(stUn));
         DM.QUnidade.Insert;
         DM.QUnidadeunidade.AsString := stUn;
         DM.QUnidadenome.AsString    := stUn + '.';
         DM.QUnidadefracionavel.Value := 'N';
         DM.QUnidade.Post;
         DM.QUnidade.Refresh;
         DM.QUnidadeid.AsInteger;
      end;
   end;
end;

end.
