unit uVLink;

interface

uses Classes, SysUtils, Contnrs, StrUtils, Forms, DateUtils, StdCtrls, ExtCtrls, Controls,
Dialogs, uFuncoes, uDMVLink, uListaVL;

type
   TConsulta = class
   private
        FCodResp, FMensagem, FNumAut, FCNPJConv, FPlanoConv, FCodConveniado, FNomeConveniado: string;
        FID, FTipoAut: Integer;
   public
      property ID : integer read FID write FID;
      property TipoAut : integer read FTipoAut write FTipoAut;
      property CodResp : string read FCodResp write FCodResp;
      property Mensagem : string read FMensagem write FMensagem;
      property NumAut : string read FNumAut write FNumAut;
      property CNPJConv : string read FCNPJConv write FCNPJConv;
      property PlanoConv : string read FPlanoConv write FPlanoConv;
      property CodConveniado : string read FCodConveniado write FCodConveniado;
      property NomeConveniado : string read FNomeConveniado write FNomeConveniado;

      procedure Clear;
   end;

  TItem = class
  private
    FEAN: string;
    FQtd: Double;
    FPMC: Double;
    FvrVenda: Double;
    FvrVista: Double;
    FvrReceber: Double;
    FvrSubsidio: Double;
    FvrReembolso: Double;
    FpcDescReposicao: Double;
    FpcComissao: Double;
    FItemProcessado: Boolean;

    function GetItemProcessado: boolean;
    procedure SetItemProcessado(const Value: boolean);
  public

    property EAN: string read FEAN write FEAN;
    property Qtd: Double read FQtd write FQtd;
    property PMC: Double read FPMC write FPMC;
    property vrVenda: Double read FvrVenda write FvrVenda;
    property vrVista: Double read FvrVista write FvrVista;
    property vrReceber: Double read FvrReceber write FvrReceber;
    property vrSubsidio: Double read FvrSubsidio write FvrSubsidio;
    property vrReembolso: Double read FvrReembolso write FvrReembolso;
    property pcDescReposicao: Double read FpcDescReposicao write FpcDescReposicao;
    property pcComissao: Double read FpcComissao write FpcComissao;
    property Processado: boolean read GetItemProcessado write SetItemProcessado;
  end;

  {Lista de objetos do tipo Itens}
  TItens = class(TObjectList)
  protected
    procedure SetObject (Index: Integer; Item: TItem);
    function GetObject (Index: Integer): TItem;
    procedure Insert (Index: Integer; Obj: TItem);
  public
    function Add (Obj: TItem): Integer;
    property Objects [Index: Integer]: TItem
      read GetObject write SetObject; default;
  end;

   TVidaLink = class
   private
      FSequencia: Integer;
      FPathComunic: string;
      FTempoResp: Integer;
      FConsulta: TConsulta;
      FfrmMsg: TForm;
      Fpnl: TPanel;
      FItens : TItens;
      FNumECF: Integer;
      FNUMCOO: Integer;
      FComprovante: TStringList;
      FProcessado: integer;

      procedure ExibeMsg(mensagem: string);
      procedure SetMsg(mensagem: string);
      function GetSequencia: Integer;
      procedure SetSequencia(const Value: Integer);
      function GetProcessado: Integer;
      procedure SetProcessado(const Value: Integer);
      function GetNumECF: Integer;
      procedure SetNumECF(const Value: Integer);
      function GetCOO: Integer;
      procedure SetCOO(const Value: Integer);
      procedure Atualizar;

   public
      property Sequencia: Integer read GetSequencia write SetSequencia;
      property TempoResp: Integer read FTempoResp write FTempoResp;
      property NumECF: Integer read GetNumECF write SetNumECF;
      property NumCOO: Integer read GetCOO write SetCOO;
      property Comprovante: TStringList read FComprovante write FComprovante;


      property PathComunic: string read FPathComunic write FPathComunic;
      property Consulta: TConsulta read FConsulta write FConsulta;
      property Itens : TItens read FItens write FItens;
      function HostAtivo: Boolean;
      property Processado: integer read GetProcessado write SetProcessado;
      function Consultar: Boolean;
      function Venda: Boolean;
      procedure Limpar;
      Function Listar: boolean;
      function ItemVendido(stEAN: string; dbqtd: Double): boolean;
      function GetComprovante: Boolean;
      procedure ClearDatasets;
      procedure LoadDatasets;
      procedure SalvarDatasets;
      constructor Create(par_PathComunic: string);
      destructor Destroy; override;
   end;


implementation


{ TVidaLink }


function TVidaLink.GetComprovante: Boolean;
var
   Arq: TStringList;
   b: Boolean;
   TempoInicio: TDateTime;
   i: integer;
   s: string;
begin
   Result := False;
   TempoInicio := Now;
   b := False;

   ExibeMsg('Aguardando resposta');

   while SecondsBetween(now,TempoInicio) < TempoResp do
   begin
     b := (FileExists(PathComunic + '\Resposta\Venda.txt'));

     if b then
        Break;

     SetMsg('Aguardando resposta ' + IntToStr(SecondsBetween(now,TempoInicio) + 1 ));
   end;

   if not b then
   begin
      Application.MessageBox('Sem Resposta do Host VidaLink.', 'Comprovante');
      DeleteFile(PathComunic + '\Envio\Venda.txt');
      FfrmMsg.Hide;
      Exit;
   end
   else
   begin
      DeleteFile(PathComunic + '\Envio\Venda.txt');
      Arq := TStringList.Create;
      i := 1;
      b := False;

      repeat
         try
            Arq.LoadFromFile(PathComunic + '\Resposta\Venda.txt');
            DeleteFile(PathComunic + '\Resposta\Venda.txt');
            b := true;
         except
            inc(i);
         end;
      until (b) or (i > 3);

      if not b then
      begin
         Application.MessageBox('Falha ao abrir arquivo de resposta.', 'Comprovante');
         FfrmMsg.Hide;
         Arq.Free;
         Exit;
      end;

      if Arq.Count = 0 then
      begin
         Application.MessageBox('Resposta vazio.', 'Comprovante');
         FfrmMsg.Hide;
         Arq.Free;
         Exit;
      end
      else
      if  pos('OK', Copy(Arq.strings[0], 1, 10)) > 0 then
      begin
         Arq.Delete(0);
         s := Arq.Text;
         FindReplaceStr('@',#13#10, s);
         FComprovante.Text := s;
         DMVLink.TVL.Edit;
         DMVLink.TVL.FieldByName('comprovante').AsString := FComprovante.Text;
         DMVLink.TVL.Post;
         Result := True;
      end
      else
      begin
         Application.MessageBox(PWideChar(Copy(Arq.strings[0], 9, 40)), 'Resposta com erro.');
         FfrmMsg.Hide;
         Arq.Free;
         Exit;
      end;
   end;

   FfrmMsg.Hide;
   Arq.Free;
end;

function TVidaLink.GetCOO: Integer;
begin
   if DMVLink.TVL.Active then
      Result := DMVLink.TVL.FieldByName('COO').AsInteger
   else
      Result := FProcessado;
end;

function TVidaLink.GetNumECF: Integer;
begin
   if DMVLink.TVL.Active then
      Result := DMVLink.TVL.FieldByName('NumECF').AsInteger
   else
      Result := FProcessado;
end;

function TVidaLink.GetProcessado: Integer;
begin
   if DMVLink.TVL.Active then
      Result := DMVLink.TVL.FieldByName('processado').AsInteger
   else
      Result := FProcessado;
end;

function TVidaLink.ItemVendido(stEAN: string; dbqtd: Double): boolean;
var
   item: TItem;
begin
   Result := False;
   item := TItem.Create;

   with item do
   begin
      EAN := stEAN;
      qtd := dbQtd;
   end;
   Itens.Add(Item);
   Result := True;
end;

procedure TVidaLink.Limpar;
begin
   if Itens.Count > 0 then
      Itens.Clear;
   ClearDatasets;
   Comprovante.Clear;
end;

function TVidaLink.Listar: boolean;
begin
   frmListaVL := TfrmListaVL.Create(Application);
   Result := frmListaVL.ShowModal = mrOk;
   FreeAndNil(frmListaVL);

   if Result then
      Atualizar;
end;

procedure TVidaLink.LoadDatasets;
var
   VLItem : TItem;
begin
   DMVLink.LoadDatasets;

   if DMVLink.TVL.FieldByName('processado').AsInteger > 0 then
   begin
      DMVLink.TVLItens.First;

      if FItens.Count = 0 then
      begin
         FItens.Clear;
         while not DMVLink.TVLItens.Eof do
         begin
            VLItem := TItem.Create;
            VLItem.EAN             := DMVLink.TVLItens.FieldByName('EAN').AsString;
            VLItem.Qtd             := DMVLink.TVLItens.FieldByName('Qtd').Value;
           // VLItem.MaxQtd          := DMVLink.TVLItens.FieldByName('MaxQtd').Value;
            VLItem.vrVenda         := DMVLink.TVLItens.FieldByName('vrVenda').Value;
            VLItem.vrReceber       := DMVLink.TVLItens.FieldByName('vrReceber').Value;
            VLItem.vrSubsidio      := DMVLink.TVLItens.FieldByName('vrSubsidio').Value;
            VLItem.vrReembolso     := DMVLink.TVLItens.FieldByName('vrReembolso').Value;
            VLItem.pcDescReposicao := DMVLink.TVLItens.FieldByName('pcDescReposicao').Value;
            VLItem.Processado      := DMVLink.TVLItens.FieldByName('processado').Value;
            FItens.Add(VLItem);
            DMVLink.TVLItens.Next;
         end;

         //VLItem.Free;
         FNumECF                  := DMVLink.TVL.FieldByName('numECF').AsInteger;
         FNumCOO                  := DMVLink.TVL.FieldByName('COO').AsInteger;
         FConsulta.ID             := DMVLink.TVL.FieldByName('ID').AsInteger;
         FConsulta.NumAut         := DMVLink.TVL.FieldByName('Nautor').AsString;
         FConsulta.CodConveniado  := DMVLink.TVL.FieldByName('CodConv').AsString;
         FConsulta.NomeConveniado := DMVLink.TVL.FieldByName('NomeConveniado').AsString;
         FComprovante.Text        := DMVLink.TVL.FieldByName('comprovante').AsString;
      end;
   end;
end;

function TVidaLink.Venda: Boolean;
var
   Arq: TStringList;
   i: Integer;
   s: string;
begin
   Result := False;
   Arq  := TStringList.Create;

   Arq.LoadFromFile(PathComunic + '\NSU.txt');
   s := Arq.Strings[0];

   if Trim(s)=Emptystr then
      s := Consulta.NumAut;

   Arq.Clear;

   Arq.Add(Format('%.4d', [Sequencia]) +
           '13' +
           Format('%.4d', [NumECF]) +
           Format('%.6d', [NumCOO]) +
           s +
           'OK' +
           '                                        ' +//40
           '       ' + //7
           Consulta.NumAut
   );

   //lança os itens previamente gravados pelo PDV apos o fechamento...

   for i := 0 to Pred(Itens.Count) do
   begin
      if Itens[i].Processado then
         Arq.Append(Itens[i].EAN + Format('%.2d', [Trunc(Itens[i].qtd)]));
   end;

   Arq.SaveToFile(PathComunic + '\Envio\Venda.txt');
   Arq.Free;
   Result := True;
end;

procedure TVidaLink.Atualizar;
begin
   DMVLink.TVLItens.First;

   while not DMVLink.TVLItens.Eof do
   begin
      Itens[DMVLink.TVLItens.FieldByName('Item').AsInteger - 1].Processado := DMVLink.TVLItens.FieldByName('processado').AsBoolean;
      Itens[DMVLink.TVLItens.FieldByName('Item').AsInteger - 1].Qtd        := DMVLink.TVLItens.FieldByName('Qtd').AsFloat;
      DMVLink.TVLItens.Next;
   end;

   SalvarDatasets;
end;

procedure TVidaLink.ClearDatasets;
begin
   DMVLink.ClearDatasets;
end;

function TVidaLink.Consultar: Boolean;
var
   Arq: TStringList;
   i: Integer;
   s: string;
   TempoInicio: TDateTime;
   b: Boolean;
   Item: TItem;
begin
   s := '';
   s := InputBox('Informe o cód. de Autoriz.','Autorização:', s);
   Result := False;

   if FileExists(PathComunic + '\NSU.txt') then
      DeleteFile(PathComunic + '\NSU.txt');

   if s = '' then
   begin
      Application.MessageBox('Código de autorização não foi informado.', 'Consulta Autorização');
      Exit;
   end;

   Arq  := TStringList.Create;
   Arq.Add(Format('%.4d', [Sequencia]) + '12' + LFill(s, 12, '0'));
   Arq.SaveToFile(PathComunic + '\Envio\Consulta.txt');
   TempoInicio := Now;
   b := False;

   ExibeMsg('Aguardando resposta');

   while SecondsBetween(now,TempoInicio) < TempoResp do
   begin
     b := (FileExists(PathComunic + '\Resposta\Consulta.txt'));

     if b then
        Break;

     SetMsg('Aguardando resposta ' + IntToStr(SecondsBetween(now,TempoInicio) + 1 ));
   end;

   if not b then
   begin
      Application.MessageBox('Sem Resposta do Host VidaLink.', 'Consulta Autorização');
      DeleteFile(PathComunic + '\Envio\Consulta.txt');
      FfrmMsg.Hide;
      Arq.Free;
      Exit;
   end
   else
   begin
      i := 1;
      b := False;
      repeat
         try
            SetMsg('Lendo resposta. Tentativa ' + IntToStr(i));
            Arq.LoadFromFile(PathComunic + '\Resposta\Consulta.txt');
            b := true;
         except
            sleep(1000);
            inc(i);
         end;
      until
      (b) or (i > 3);

      DeleteFile(PathComunic + '\Envio\Consulta.txt');
      DeleteFile(PathComunic + '\Resposta\Consulta.txt');

      if Arq.Count = 0 then
      begin
         FfrmMsg.Hide;
         Application.MessageBox('Arquivo Resposta vazio.', 'Consulta Autorização');
         Arq.Free;
         Exit;
      end;

      Consulta.clear;
      Consulta.ID       := StrToInt(Copy(Arq.Strings[0], 5, 2));
      Consulta.CodResp  := Copy(Arq.Strings[0], 7, 2);
      Consulta.Mensagem := Trim(Copy(Arq.Strings[0], 9, 40));

      if Consulta.CodResp = 'ER' then
      begin
         FfrmMsg.Hide;
         ShowMessage(Consulta.Mensagem);
         Arq.Free;
         Exit;
      end;

      Consulta.NumAut         := Trim(Copy(Arq.Strings[0], 49, 12));
      Consulta.CNPJConv       := Trim(Copy(Arq.Strings[0], 61, 14));
      Consulta.PlanoConv      := Trim(Copy(Arq.Strings[0], 75, 8));
      Consulta.CodConveniado  := Trim(Copy(Arq.Strings[0], 83, 30));
      Consulta.NomeConveniado := Trim(Copy(Arq.Strings[0], 113, 40));
      Consulta.TipoAut        := StrToIntDef(Copy(Arq.Strings[0], 153, 1), 0);

      Limpar;

      DMVLink.TVL.Edit;
      DMVLink.TVL.FieldByName('ID').Value                := Consulta.ID;
      DMVLink.TVL.FieldByName('Nautor').AsString         := Consulta.NumAut;
      DMVLink.TVL.FieldByName('CodConv').AsString        := Consulta.CodConveniado;
      DMVLink.TVL.FieldByName('NomeConveniado').AsString := Consulta.NomeConveniado;
      DMVLink.TVL.FieldByName('processado').Value        := 0;
      DMVLink.TVL.Post;

      Result := True;

      //le da segunda linha em diante (itens)
      if Arq.Count > 0 then
      for i := 1 to Pred(Arq.Count) do
      begin
         Item := TItem.Create;
         with Item do
         begin
             EAN              := Trim(Copy(Arq.Strings[i], 1, 13));
             Qtd              := StrToFloatDef(Trim(Copy(Arq.Strings[i], 14, 2)), 0);
             PMC              := StrToFloatDef(Trim(Copy(Arq.Strings[i], 16, 7)), 0)/100;
             vrVenda          := StrToFloatDef(Trim(Copy(Arq.Strings[i], 23, 7)), 0)/100;
             vrVista          := StrToFloatDef(Trim(Copy(Arq.Strings[i], 30, 7)), 0)/100;
             vrReceber        := StrToFloatDef(Trim(Copy(Arq.Strings[i], 37, 7)), 0)/100;
             vrSubsidio       := StrToFloatDef(Trim(Copy(Arq.Strings[i], 44, 7)), 0)/100;
             vrReembolso      := StrToFloatDef(Trim(Copy(Arq.Strings[i], 51, 7)), 0)/100;
             pcDescReposicao  := StrToFloatDef(Trim(Copy(Arq.Strings[i], 58, 5)), 0)/100;
             pcComissao       := StrToFloatDef(Trim(Copy(Arq.Strings[i], 63, 5)), 0)/100;
         end;
         Itens.Add(Item);

         DMVLink.TVLItens.Append;
         DMVLink.TVLItens.FieldByName('Item').Value              := i;
         DMVLink.TVLItens.FieldByName('idProd').Value            := 0;
         DMVLink.TVLItens.FieldByName('EAN').AsString            := Item.EAN;
         DMVLink.TVLItens.FieldByName('Qtd').Value               := Item.Qtd;
         DMVLink.TVLItens.FieldByName('MaxQtd').Value            := Item.Qtd;
         DMVLink.TVLItens.FieldByName('vrVenda').Value           := Item.vrVenda;
         DMVLink.TVLItens.FieldByName('vrReceber').Value         := Item.vrReceber;
         DMVLink.TVLItens.FieldByName('vrSubsidio').Value        := Item.vrSubsidio;
         DMVLink.TVLItens.FieldByName('vrReembolso').Value       := Item.vrReembolso;
         DMVLink.TVLItens.FieldByName('pcDescReposicao').Value   := Item.pcDescReposicao;
         DMVLink.TVLItens.FieldByName('pcComissao').Value        := Item.pcComissao;
         DMVLink.TVLItens.FieldByName('processado').Value        := True;
         DMVLink.TVLItens.Post;
      end;
   end;

   DMVLink.TVL.Edit;
   DMVLink.TVL.FieldByName('processado').Value := 1;
   DMVLink.TVL.Post;

   DMVLink.SalvarDatasets;
   Arq.Clear;
   Arq.Add(Consulta.NumAut);
   Arq.SaveToFile(PathComunic + '\NSU.txt');
   Arq.Free;
   FfrmMsg.Hide;
end;

constructor TVidaLink.Create;
begin
   TempoResp := 5;
   Consulta := Tconsulta.Create;
   PathComunic := par_PathComunic;
   Itens := TItens.Create;
   Itens.Clear;
   ForceDirectories(PathComunic + '\Envio\');
   ForceDirectories(PathComunic + '\Resposta\');
   FfrmMsg := TForm.Create(Application);
   FComprovante := TStringList.Create;

   DMVLink := TDMVLink.Create(Application);
   DMVLink.TVL.Open;
   DMVLink.TVLItens.Open;
   LoadDatasets;

   with FfrmMsg do
   begin
      Position          := poScreenCenter;
      BorderStyle       := bsNone;
      Height            := 60;
      Width             := 300;
      Caption           := 'VIDA LINK';
      Fpnl              := TPanel.Create(FfrmMsg);
      Fpnl.BorderStyle  := bsSingle;
      Fpnl.Color        := $004080FF;
      Fpnl.Parent       := FfrmMsg;
      Fpnl.Align        := AlClient;
      Fpnl.Alignment    := taCenter;
      BringToFront;
   end;
end;

destructor TVidaLink.Destroy;
begin
   if DMVLink <> nil then
   begin
      DMVLink.TVL.Close;
      DMVLink.TVLItens.Close;
      FreeAndNil(DMVLink);
   end;
   FComprovante.Free;
   FreeAndNil(FfrmMsg);
   FreeAndNil(FConsulta);
   FreeAndNil(FItens);
end;

procedure TVidaLink.ExibeMsg(mensagem: string);
begin
   with FfrmMsg do
   begin
   Fpnl.Caption := mensagem;
   Application.ProcessMessages;
   Show;
   Sleep(500);
   end;
end;

function TVidaLink.GetSequencia: Integer;
var
   Arq: TStringList;
   nArq: string;
   i: Integer;
begin
   Arq  := TStringList.Create;
   nArq := PathComunic + '\vLinkSeq.txt';

   if not FileExists(nArq) then
   begin
      Arq.Add('1');
      Arq.SaveToFile(nArq);
      i := 1;
   end
   else
   begin
      Arq.LoadFromFile(nArq);
      i := StrToIntDef(Arq.strings[0], 1) + 1;

      if i > 9999 then
      begin
         i := 1;
      end;

      Arq.strings[0] := IntToStr(i);
      Arq.SaveToFile(nArq);
   end;

   FSequencia := i;
   Result := FSequencia;
end;

function TVidaLink.HostAtivo: Boolean;
var
   Arq: TStringList;
   b: Boolean;
   TempoInicio: TDateTime;
begin
   Result := False;
   Arq := TStringList.Create;
   Arq.Add(Format('%.4d', [Sequencia]) + '11');
   Arq.SaveToFile(PathComunic + '\Envio\HostAtivo.txt');
   TempoInicio := Now;
   b := False;

   ExibeMsg('Aguardando resposta');

   while SecondsBetween(now,TempoInicio) < TempoResp do
   begin
     b := (FileExists(PathComunic + '\Resposta\HostAtivo.txt'));

     if b then
        Break;

     SetMsg('Aguardando resposta ' + IntToStr(SecondsBetween(now,TempoInicio) + 1 ));
   end;

   if not b then
   begin
      Application.MessageBox('Sem Resposta do Host VidaLink.', 'Consultando Atividade');
      DeleteFile(PathComunic + '\Envio\HostAtivo.txt');
      FfrmMsg.Hide;
      Exit;
   end
   else
   begin
      DeleteFile(PathComunic + '\Envio\HostAtivo.txt');
      Arq.LoadFromFile(PathComunic + '\Resposta\HostAtivo.txt');
      Result := Pos('11OK', Arq.Text) > 0;
      DeleteFile(PathComunic + '\Resposta\HostAtivo.txt');
   end;

   FfrmMsg.Hide;
   Arq.Free;
end;

procedure TVidaLink.SalvarDatasets;
begin
   DMVLink.SalvarDatasets;
end;

procedure TVidaLink.SetCOO(const Value: Integer);
begin
   FNumECF := Value;
   if DMVLink.TVL.Active then
   begin
      DMVLink.TVL.Edit;
      DMVLink.TVL.FieldByName('COO').AsInteger := Value;
      DMVLink.TVL.Post;
      SalvarDatasets;
   end;
end;

procedure TVidaLink.SetMsg(mensagem: string);
begin
   Fpnl.Caption := mensagem;
   Application.ProcessMessages;
end;

procedure TVidaLink.SetNumECF(const Value: Integer);
begin
   FNumECF := Value;
   if DMVLink.TVL.Active then
   begin
      DMVLink.TVL.Edit;
      DMVLink.TVL.FieldByName('NumECF').AsInteger := Value;
      DMVLink.TVL.Post;
      SalvarDatasets;
   end;
end;

procedure TVidaLink.SetProcessado(const Value: Integer);
begin
   FProcessado := Value;
   if DMVLink.TVL.Active then
   begin
      DMVLink.TVL.Edit;
      DMVLink.TVL.FieldByName('processado').AsInteger := Value;
      DMVLink.TVL.Post;
      SalvarDatasets;
   end;
end;

procedure TVidaLink.SetSequencia(const Value: Integer);
var
   Arq: TStringList;
   nArq: string;
   i: Integer;
begin
   Arq := TStringList.Create;
   nArq := 'C:\vLinkSeq.txt';

   if not FileExists(nArq) then
   begin
      Arq.Strings[0] := '1';
      Arq.SaveToFile(nArq);
      i := 1;
   end
   else
   begin
      Arq.LoadFromFile(nArq);
      i := StrToIntDef(Arq.strings[0], 1) + 1;
      Arq.strings[0] :=  IntToStr(i);
      Arq.SaveToFile(nArq);
   end;
   FSequencia := i;
   Arq.Free;
end;


{ TConsulta }

procedure TConsulta.Clear;
begin
   ID := 0;
   TipoAut := 0;
   CodResp := '';
   Mensagem := '';
   NumAut := '';
   CNPJConv := '';
   PlanoConv := '';
   CodConveniado := '';
   NomeConveniado := '';
   DMVLink.ClearDatasets;
end;

{ TItens }

function TItens.Add(Obj: TItem): Integer;
begin
  Result := inherited Add(Obj) ;
end;


function TItens.GetObject(Index: Integer): TItem;
begin
  Result := inherited GetItem(Index) as TItem ;
end;

procedure TItens.Insert(Index: Integer; Obj: TItem);
begin
   inherited Insert(Index, Obj);
end;

procedure TItens.SetObject(Index: Integer; Item: TItem);
begin
  inherited SetItem (Index, Item) ;
end;


{ TItem }

function TItem.GetItemProcessado: boolean;
begin
//   if DMVLink.TVLItens.Active then
 //     Result := DMVLink.TVLItens.FieldByName('processado').AsBoolean
 //  else
      Result := FItemProcessado;
end;

procedure TItem.SetItemProcessado(const Value: boolean);
begin
   FItemProcessado := Value;
 {  if DMVLink.TVLItens.Active then
   begin
      DMVLink.TVLItens.Edit;
      DMVLink.TVLItens.FieldByName('processado').AsBoolean := Value;
      DMVLink.TVLItens.Post;
      DMVLink.SalvarDatasets;
   end; }
end;

end.

