unit uDM_Sintegra;

interface

uses
  System.SysUtils, System.Classes, ACBrSintegra, Data.DB, FireDAC.Comp.Script, FireDAC.Comp.DataSet, DateUtils, Dialogs,
  Vcl.Forms, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, ACBrBase;

type
  TDM_Sintegra = class(TDataModule)
    Sintegra: TACBrSintegra;
    Q60M: TFDQuery;
    Q60Mid: TFDAutoIncField;
    Q60Mnum_ecf: TIntegerField;
    Q60Mnum_usu: TIntegerField;
    Q60Mserie_ecf: TStringField;
    Q60Mmf_adic: TStringField;
    Q60Mcrz: TIntegerField;
    Q60Mcoo: TIntegerField;
    Q60Mcoo_inicial: TIntegerField;
    Q60Mcro: TIntegerField;
    Q60Mdt_movi: TDateField;
    Q60Mdt_em: TDateField;
    Q60Mhora_em: TTimeField;
    Q60Mvenda_bruta: TFloatField;
    Q60Missqn: TStringField;
    Q60A: TFDQuery;
    DSQ60M: TDataSource;
    Q60Aid: TFDAutoIncField;
    Q60Ar02: TIntegerField;
    Q60Acod_tot_parcial: TStringField;
    Q60Avalor_tot_parcial: TFloatField;
    Q60Amd5: TStringField;
    Q60Ahash: TStringField;
    Q60D: TFDQuery;
    Q60Dcodigo: TStringField;
    Q60Dqtd: TFloatField;
    Q60Dtotal: TFloatField;
    Q60Dst: TStringField;
    Q60Dbc: TFloatField;
    Q60Dicms: TFloatField;
    Q60Dnome: TStringField;
    Q60Daliq: TFloatField;
    Q60Dunid: TStringField;
    Q60I: TFDQuery;
    Q60Icoo: TIntegerField;
    Q60Iitem: TIntegerField;
    Q60Icodigo: TStringField;
    Q60Inome: TStringField;
    Q60Iunid: TStringField;
    Q60Iqtd: TFloatField;
    Q60Itotal: TFloatField;
    Q60Ist: TStringField;
    Q60Ibc: TFloatField;
    Q60Iicms: TFloatField;
    Q60Ialiq: TFloatField;
    Q60R: TFDQuery;
    Q60Rcodigo: TStringField;
    Q60Rqtd: TFloatField;
    Q60Rtotal: TFloatField;
    Q60Rst: TStringField;
    Q74: TFDQuery;
    Q74data: TDateField;
    Q74cod_gtin: TStringField;
    Q74nome: TStringField;
    Q74vrcusto: TFloatField;
    Q74vrcusto_real: TFloatField;
    Q74quant: TFloatField;
    Q74total: TFloatField;
    Q74icms: TFloatField;
    Q74unidade: TStringField;
    Q50E: TFDQuery;
    Q50S: TFDQuery;
    Q54S: TFDQuery;
    Q54E: TFDQuery;
    DS50E: TDataSource;
    DS50S: TDataSource;
    Q50Ecnpj: TStringField;
    Q50EEmit_CNPJCPF: TStringField;
    Q50EEmit_IE: TStringField;
    Q50EIde_dSaiEnt: TDateField;
    Q50EEmit_EnderEmit_UF: TStringField;
    Q50EIde_modelo: TIntegerField;
    Q50EIde_serie: TIntegerField;
    Q50EIde_nNF: TIntegerField;
    Q50ECFOP: TStringField;
    Q50Eemissor: TStringField;
    Q50Esituacao: TStringField;
    Q50Ecfop_inform: TStringField;
    Q50EICMS_pICMS: TFloatField;
    Q50Evrcontabil: TFloatField;
    Q50EvrBC: TFloatField;
    Q50Evricms: TFloatField;
    Q50Evrisentas: TFloatField;
    Q54EEmit_CNPJCPF: TStringField;
    Q54EEmit_IE: TStringField;
    Q54EIde_dSaiEnt: TDateField;
    Q54EEmit_EnderEmit_UF: TStringField;
    Q54EIde_modelo: TIntegerField;
    Q54EIde_serie: TIntegerField;
    Q54EIde_nNF: TIntegerField;
    Q54Eorigem: TIntegerField;
    Q54Enitem: TIntegerField;
    Q54EcProd: TStringField;
    Q54ExProd: TStringField;
    Q54EqCom: TFloatField;
    Q54EvProd: TFloatField;
    Q54EvDesc: TFloatField;
    Q54EICMS_pICMS: TFloatField;
    Q54EICMS_vBC: TFloatField;
    Q54EICMS_pICMS_1: TFloatField;
    Q54EICMS_vBCST: TFloatField;
    Q54EIPI_vIPI: TFloatField;
    Q50EEmit_EnderEmit_UF_1: TStringField;
    Q54Ecfop_inform: TStringField;
    Q54EICMS_CSOSN: TIntegerField;
    Q54EICMS_CST: TIntegerField;
    Q54EuCom: TStringField;
    Q54Ecodigo: TStringField;
    Q60Mvalor_gt: TFloatField;
    Q50Scnpj: TStringField;
    Q50SDest_CNPJCPF: TStringField;
    Q50SDest_IE: TStringField;
    Q50SIde_dSaiEnt: TDateField;
    Q50SDest_EnderDest_UF: TStringField;
    Q50SIde_modelo: TIntegerField;
    Q50SIde_serie: TIntegerField;
    Q50SIde_nNF: TIntegerField;
    Q50SCFOP: TStringField;
    Q50Semissor: TStringField;
    Q50Ssituacao: TStringField;
    Q50SICMS_pICMS: TFloatField;
    Q50Svrcontabil: TFloatField;
    Q50SvrBC: TFloatField;
    Q50Svricms: TFloatField;
    Q50Svrisentas: TFloatField;
    Q54SDest_CNPJCPF: TStringField;
    Q54SDest_IE: TStringField;
    Q54SIde_dSaiEnt: TDateField;
    Q54SDest_EnderDest_UF: TStringField;
    Q54SIde_modelo: TIntegerField;
    Q54SIde_serie: TIntegerField;
    Q54SIde_nNF: TIntegerField;
    Q54Scfop: TStringField;
    Q54Sorigem: TIntegerField;
    Q54SICMS_CSOSN: TIntegerField;
    Q54SICMS_CST: TIntegerField;
    Q54Snitem: TIntegerField;
    Q54ScProd: TStringField;
    Q54SuCom: TStringField;
    Q54Scodigo: TStringField;
    Q54SxProd: TStringField;
    Q54SqCom: TFloatField;
    Q54SvProd: TFloatField;
    Q54SvDesc: TFloatField;
    Q54SICMS_pICMS: TFloatField;
    Q54SICMS_vBC: TFloatField;
    Q54SICMS_pICMS_1: TFloatField;
    Q54SICMS_vBCST: TFloatField;
    Q54SIPI_vIPI: TFloatField;
    Q61: TFDQuery;
    Q61dt_movi: TDateField;
    Q61nmro_nf_ini: TIntegerField;
    Q61nmro_nf_fin: TIntegerField;
    Q61serie: TStringField;
    Q61vr_doc: TFloatField;
    Q61vpis: TFloatField;
    Q61vcofins: TFloatField;
    Q61ICMS_pICMS: TFloatField;
    Q61ICMS_vBC: TFloatField;
    Q61ICMS_vICMS: TFloatField;
    Q50Eid: TFDAutoIncField;
    procedure Q50EAfterOpen(DataSet: TDataSet);
    procedure Q50EBeforeOpen(DataSet: TDataSet);
  private
    //st_sql_periodo: string;
    function ExisteItemNo75(aCodigo: string): boolean;

    procedure GerarRegistro54(entrada: boolean = False);
    procedure GerarRegistro60A(r02: integer);
    procedure GerarRegistro60D;
    procedure GerarRegistro60I;
    procedure GerarRegistro60R;
    procedure GerarRegistro74(data_balanco: TDate);
  public
    var
      dt_ini, dt_fim, Dt_Balanco: TDate;
      st_fileName: string;
      b_Gerar50, b_Gerar60, b_Gerar60I, b_Gerar60R, b_Gerar74, b_Gerar61, b_Exibe_Arq: boolean;

    procedure Cfg(data_Ini, Data_Fim, Data_Balanco: TDate; FileName: string; Gerar50: boolean = True; Gerar60: boolean = True;
                  Gerar60I: boolean=True; Gerar60R: boolean = False; Gerar74:boolean = False; Gerar61:boolean = False;
                  Exibe_Arq: boolean = False);

    procedure GerarRegistro10(cod_conv: string = '3'; NatInf: string = '3'; finalid: string='1');
    procedure GerarRegistro11;
    procedure GerarRegistro50;
    procedure GerarRegistro60;
    procedure GerarRegistro61;
    procedure GerarArquivo;
  end;

var
  DM_Sintegra: TDM_Sintegra;
  item: integer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uAutocomConsts, uDM, uFuncoes, uProgress, uDMecf, udm_ini, uDM_Conn;

{$R *.dfm}

procedure TDM_Sintegra.Cfg(data_Ini, Data_Fim, Data_Balanco: TDate; FileName: string; Gerar50: boolean = True; Gerar60: boolean = True;
                           Gerar60I: boolean=True; Gerar60R: boolean = False; Gerar74:boolean = False; Gerar61:boolean = False; Exibe_Arq: boolean = False);
begin
   dt_ini      := data_Ini;
   dt_fim      := Data_Fim;
   Dt_Balanco  := Data_Balanco;
   st_fileName := FileName;
   //st_sql_periodo := ' between ' + data_My(dt_ini) + ' and ' + data_My(dt_fim) + ' ';
   b_Gerar50   := Gerar50;
   b_Gerar60   := Gerar60;
   b_Gerar60I  := Gerar60I;
   b_Gerar60R  := Gerar60R;
   b_Gerar74   := Gerar74;
   b_Gerar61   := Gerar61;
   b_Exibe_Arq := Exibe_Arq;
end;

procedure TDM_Sintegra.GerarArquivo;
begin
   if Assigned(frmprogress) then
      FreeAndNil(frmprogress);

   try
      Sintegra.GeraArquivo;

      if b_Exibe_Arq then
      begin
         ShowMessage(Sintegra.FileName + ' gerado com sucesso.');
      end;
   except
      on E:exception do
         ShowMessage('Erro ao gerar o arquivo ' + Sintegra.FileName + ':' + #13 + E.Message);
   end;
end;

procedure TDM_Sintegra.GerarRegistro10(cod_conv: string = '3'; NatInf: string = '3'; finalid: string='1');
begin
  AbreForm(Tfrmprogress,frmprogress, False);
  DMConn.DB.Connected := False;
  DM.QEmpresa.Open;
  Sintegra.LimparRegistros;
  Sintegra.FileName                       := st_fileName;
  Log('Sintegra','Montando registros 10...', '');

  Sintegra.Registro10.CNPJ                := Number(DM.QEmpresaCNPJ.AsString);
  Sintegra.Registro10.Inscricao           := Number(DM.QEmpresaIE.AsString);
  Sintegra.Registro10.RazaoSocial         := DM.QEmpresaRAZAO_SOCIAL.AsString;
  Sintegra.Registro10.Cidade              := DM.QEmpresaCIDADE.AsString;
  Sintegra.Registro10.Estado              := DM.QEmpresaUF.AsString;
  Sintegra.Registro10.Telefone            := Number(DM.QEmpresaTEL1.AsString);
  Sintegra.Registro10.DataInicial         := dt_ini;
  Sintegra.Registro10.DataFinal           := dt_fim;
  Sintegra.Registro10.CodigoConvenio      := cod_conv;
  Sintegra.Registro10.NaturezaInformacoes := NatInf;
  Sintegra.Registro10.FinalidadeArquivo   := finalid;
  item := 0;
  Log('Sintegra','Registros 10 OK', '');
end;

procedure TDM_Sintegra.GerarRegistro11;
begin
  Log('Sintegra','Montando registros 11...', '');
  Sintegra.Registro11.Endereco    := DM.QEmpresaLOGRADOURO.AsString;
  Sintegra.Registro11.Numero      := DM.QEmpresaNUMERO.AsString;
  Sintegra.Registro11.Bairro      := DM.QEmpresaBAIRRO.AsString;
  Sintegra.Registro11.Cep         := Number(DM.QEmpresaCEP.AsString);
  Sintegra.Registro11.Responsavel := DM.QEmpresaNOME_RESP.AsString;
  Sintegra.Registro11.Telefone    := Number(DM.QEmpresaTEL1.AsString);
  Log('Sintegra','Registros 11 OK', '');
end;

procedure TDM_Sintegra.GerarRegistro50;
var
  wregistro50: TRegistro50;
  st_nmro, nmro, nmro_chave: string;
begin
   if b_Gerar50 then
   begin
      Log('Sintegra','Abrindo Registros 50', '');
      Q50E.Params[0].AsDate := dt_ini;
      Q50E.Params[1].AsDate := dt_fim;
      Q50S.Params[0].AsDate := dt_ini;
      Q50S.Params[1].AsDate := dt_fim;
      Q50E.Open;
      Q50S.Open;
      Q54E.Open;
      Q54S.Open;
      Log('Sintegra','Fetch 50E', '');
      Q50E.FetchAll;
      Log('Sintegra','Fetch 5SE', '');
      Q50S.FetchAll;
      Log('Sintegra','Fetch 54E', '');
      Q54E.FetchAll;
      Log('Sintegra','Fetch 54S', '');
      Q54S.FetchAll;

      frmprogress.bar1.Properties.Max := Q50E.RecordCount;
      //entradas
      nmro_chave := '';

      while not Q50E.Eof do
      begin
         frmprogress.bar1.Position := Q50E.RecNo;
         Application.ProcessMessages;
         //adequação para modelo 55
         nmro := format('%.9d', [Q50EIde_nNF.Value]); //9 digitos
         st_nmro := copy(nmro, length(nmro)-5, 6);// apenas os 6 ultimos

         wregistro50 := TRegistro50.Create;
         Log('Sintegra','Montando registros 50E...', IntToStr(Q50E.RecordCount) +
                        ' registros.' + 'NF Nº ' + st_nmro);
         wregistro50.CPFCNPJ          := Number(Q50EEmit_CNPJCPF.AsString);
         wregistro50.Inscricao        := Number(Q50EEmit_IE.AsString);

         if wregistro50.Inscricao = C_ST_VAZIO then
            wregistro50.Inscricao     := 'ISENTO';

         wregistro50.DataDocumento    := Q50EIde_dSaiEnt.Value;
         wregistro50.UF               := Q50EEmit_EnderEmit_UF.AsString;
         wregistro50.Modelo           := Q50EIde_modelo.AsString;
         wregistro50.Serie            := Format('%.3d',[Q50EIde_serie.Value]);
         wregistro50.Numero           := st_nmro;
         wregistro50.Cfop             := Q50Ecfop_inform.AsString;
         wregistro50.EmissorDocumento := Q50Eemissor.AsString;
         wregistro50.ValorContabil    := Arredonda(Q50Evrcontabil.Value, 2);
         wregistro50.BasedeCalculo    := Arredonda(Q50EvrBC.Value, 2);
         wregistro50.Icms             := Arredonda(Q50Evricms.Value,2);
         wregistro50.Isentas          := Q50Evrisentas.Value;
         wregistro50.Outras           := 0;
         wregistro50.Situacao         :='N'; //N e S(para cancelado)
         wregistro50.Aliquota         := Q50EICMS_pICMS.Value;

         Sintegra.Registros50.Add(wregistro50);

         if(nmro <> nmro_chave) then
         begin
            item := 0;
            nmro_chave := nmro;
         end;

         GerarRegistro54(True);

         Q50E.Next;
         Log('Sintegra','Prox NF:', format('%.9d', [Q50EIde_nNF.Value]));
      end;
      //saidas
      frmprogress.bar1.Properties.Max := Q50S.RecordCount;
      nmro_chave := '';

      while not Q50S.Eof do
      begin
         frmprogress.bar1.Position := Q50S.RecNo;
         Application.ProcessMessages;
         //adequação para modelo 55
         nmro := format('%.9d', [Q50SIde_nNF.Value]); //9 digitos
         st_nmro := copy(nmro, length(nmro)-5, 6);// apenas os 6 ultimos

         wregistro50 := TRegistro50.Create;
         Log('Sintegra','Montando registros 50S...', IntToStr(Q50S.RecordCount) + ' registros.');
         wregistro50.CPFCNPJ          := Number(Q50SDest_CNPJCPF.AsString);
         wregistro50.Inscricao        := Number(Q50SDest_IE.AsString);

         if wregistro50.Inscricao = C_ST_VAZIO then
            wregistro50.Inscricao     := 'ISENTO';

         wregistro50.DataDocumento    := Q50SIde_dSaiEnt.Value;
         wregistro50.UF               := Q50SDest_EnderDest_UF.AsString;
         wregistro50.Modelo           := Q50SIde_modelo.AsString;
         wregistro50.Serie            := Format('%.3d',[Q50SIde_serie.Value]);
         wregistro50.Numero           := st_nmro;
         wregistro50.Cfop             := Q50Scfop.AsString;
         wregistro50.EmissorDocumento := Q50Semissor.AsString;
         wregistro50.ValorContabil    := Arredonda(Q50Svrcontabil.Value, 2);
         wregistro50.BasedeCalculo    := Arredonda(Q50SvrBC.Value, 2);
         wregistro50.Icms             := Arredonda(Q50Svricms.Value,2);
         wregistro50.Isentas          := Q50Svrisentas.Value;
         wregistro50.Outras           := 0;
         wregistro50.Situacao         := Q50Ssituacao.AsString; //N e S(para cancelado)
         wregistro50.Aliquota         := Q50SICMS_pICMS.Value;

         Sintegra.Registros50.Add(wregistro50);

         if(nmro <> nmro_chave) then
         begin
            item := 0;
            nmro_chave := nmro;
         end;

         GerarRegistro54;

         Q50S.Next;
         Log('Sintegra','Prox NF:', format('%.9d', [Q50SIde_nNF.Value]));
      end;
   end;
end;

procedure TDM_Sintegra.GerarRegistro54(entrada: boolean);
var
  wregistro54: TRegistro54;
  wregistro75: TRegistro75;
  st_nmro: string;
begin
   if entrada then
   begin
      Log('Sintegra','Montando registros 54E...', IntToStr(Q54E.RecordCount) + ' registros.');
      while not Q54E.Eof do
      begin
         wregistro54 := TRegistro54.Create;
         inc(item);
         Log('Sintegra','Registro ' + IntToStr(Q54E.RecNo), 'item ' + IntToStr(item));

         //adequação para modelo 55
         st_nmro := format('%.9d', [Q54EIde_nNF.Value]); //9 digitos
         st_nmro := copy(st_nmro, length(st_nmro)-5, 6);// apenas os 6 ultimos

         wregistro54.CPFCNPJ    := Number(Q54EEmit_CNPJCPF.AsString);
         wregistro54.Modelo     := Q54EIde_modelo.AsString;
         wregistro54.Serie      := Format('%.3d',[Q54EIde_serie.Value]);
         wregistro54.Numero     := st_nmro;
         wregistro54.Cfop       := Q54Ecfop_inform.AsString;

         if Q54EICMS_CSOSN.Value > 0 then
            wregistro54.CST := C_ARR_4[Q54EICMS_CSOSN.Value]
         else
            wregistro54.CST := Q54Eorigem.AsString + C_ARR_5[Q54EICMS_CST.Value];


         wregistro54.NumeroItem           := item;//Q54Enitem.Value;
         wregistro54.Codigo               := Q54Ecodigo.AsString;
         wregistro54.Descricao            := Q54ExProd.AsString;
         wregistro54.Quantidade           := Arredonda(Q54EqCom.Value,2);
         wregistro54.Valor                := Arredonda(Q54EvProd.Value, 2);
         wregistro54.ValorDescontoDespesa := Arredonda(Q54EvDesc.Value, 2);
         wregistro54.BasedeCalculo        := Q54EICMS_vBC.Value;
         wregistro54.Aliquota             := Q54EICMS_pICMS.Value;
         wregistro54.BaseST               := Q54EICMS_vBCST.Value;
         wregistro54.ValorIpi             := Q54EIPI_vIPI.Value;

         Sintegra.Registros54.Add(wregistro54);
         Log('Sintegra', 'reg 75 ', wregistro54.Codigo + ' ' + Q54ExProd.AsString);
         if not ExisteItemNo75(wregistro54.Codigo) then
         begin
            wregistro75              := TRegistro75.Create;
            wregistro75.Codigo       := wregistro54.Codigo;
            wregistro75.AliquotaICMS := wregistro54.Aliquota;
            wregistro75.DataInicial  := Sintegra.Registro10.DataInicial;
            wregistro75.DataFinal    := Sintegra.Registro10.DataFinal;
            wregistro75.Descricao    := wregistro54.Descricao;
            wregistro75.Unidade      := Copy(Q54EuCom.AsString,1,2);
            Sintegra.Registros75.Add(wregistro75);
         end;
         Log('Sintegra', 'reg 54 ', 'FIM');
         Q54E.Next;
      end;
   end
   else
   begin
      Log('Sintegra','Montando registros 54S...', IntToStr(Q54S.RecordCount) + ' registros.');
      while not Q54S.Eof do
      begin
         inc(item);
         wregistro54 := TRegistro54.Create;
         //adequação para modelo 55
         st_nmro := format('%.9d', [Q54SIde_nNF.Value]); //9 digitos
         st_nmro := copy(st_nmro, length(st_nmro)-5, 6);// apenas os 6 ultimos
         Log('Sintegra', 'item ' + IntToStr(item), Q54ExProd.AsString);

         wregistro54.CPFCNPJ := Number(Q54SDest_CNPJCPF.AsString);
         wregistro54.Modelo  := Q54SIde_modelo.AsString;
         wregistro54.Serie   := Format('%.3d',[Q54SIde_serie.Value]);
         wregistro54.Numero  := st_nmro;
         wregistro54.Cfop    := Q54Scfop.AsString;

         if Q54SICMS_CSOSN.Value > 0 then
            wregistro54.CST := C_ARR_4[Q54SICMS_CSOSN.Value]
         else
            wregistro54.CST := Q54Sorigem.AsString + C_ARR_5[Q54SICMS_CST.Value];


         wregistro54.NumeroItem           := item;//Q54Snitem.Value;
         wregistro54.Codigo               := Q54Scodigo.AsString;
         wregistro54.Descricao            := Q54SxProd.AsString;
         wregistro54.Quantidade           := Arredonda(Q54SqCom.Value,2);
         wregistro54.Valor                := Arredonda(Q54SvProd.Value, 2);
         wregistro54.ValorDescontoDespesa := Arredonda(Q54SvDesc.Value, 2);
         wregistro54.BasedeCalculo        := Q54SICMS_vBC.Value;
         wregistro54.Aliquota             := Q54SICMS_pICMS.Value;
         wregistro54.BaseST               := Q54SICMS_vBCST.Value;
         wregistro54.ValorIpi             := Q54SIPI_vIPI.Value;

         Sintegra.Registros54.Add(wregistro54);
         Log('Sintegra', 'reg 75 ', wregistro54.Codigo + ' ' + Q54ExProd.AsString);

         if not ExisteItemNo75(wregistro54.Codigo) then
         begin
            wregistro75              := TRegistro75.Create;
            wregistro75.Codigo       := wregistro54.Codigo;
            wregistro75.AliquotaICMS := wregistro54.Aliquota;
            wregistro75.DataInicial  := Sintegra.Registro10.DataInicial;
            wregistro75.DataFinal    := Sintegra.Registro10.DataFinal;
            wregistro75.Descricao    := wregistro54.Descricao;
            wregistro75.Unidade      := Copy(Q54SuCom.AsString,1,2);
            Sintegra.Registros75.Add(wregistro75);
         end;
         Log('Sintegra', 'reg 54 ', 'FIM');
         Q54S.Next;
      end;
   end;
   Log('Sintegra', 'REG 54 ', 'FIM DA GERAÇÃO');
end;

function TDM_Sintegra.ExisteItemNo75(aCodigo: string): boolean;
var
   i: integer;
begin
   Result := False;

   for i := 0 to Sintegra.Registros75.Count -1 do
   begin
      if Sintegra.Registros75[i].Codigo = aCodigo then
      begin
         Result := True;
         Break;
      end;
   end;
end;

procedure TDM_Sintegra.GerarRegistro60;
var
  wregistro60M: TRegistro60M;
begin
   if b_Gerar60 then
   begin
      Log('Sintegra','Registros 60M...', 'Abrindo datasets...');
      Q60M.Params[0].AsDate := dt_ini;
      Q60M.Params[1].AsDate := dt_fim;
      Q60R.Params[0].AsDate := dt_ini;
      Q60R.Params[1].AsDate := dt_fim;
      Q61.Params[0].AsDate  := dt_ini;
      Q61.Params[1].AsDate  := dt_fim;
      Log('Sintegra','Registros 60M...', 'Abrindo...');
      Q60M.Open;
      Log('Sintegra','Registros 60D...', 'Abrindo...');
      Q60D.Open; //ligado a 60m por datasource
      Log('Sintegra','Registros 60A...', 'Abrindo...');
      Q60A.Open;
      Q60M.FetchAll;
      Q60D.FetchAll;
      Q60A.FetchAll;

      frmprogress.bar1.Properties.Max := Q60M.RecordCount;
      Log('Sintegra','Montando registros 60M...', IntToStr(Q60M.RecordCount) + ' registros.');

      while not (Q60M.EOF) do
      begin
         frmprogress.bar1.Position := Q60M.RecNo;
         Application.ProcessMessages;
         wregistro60M := TRegistro60M.Create;

         wregistro60M.Emissao    := Q60Mdt_movi.Value;
         wregistro60M.NumSerie   := Q60Mserie_ecf.AsString;
         wregistro60M.NumOrdem   := Q60Mnum_ecf.AsInteger;
         wregistro60M.ModeloDoc  := '2D';
         wregistro60M.CooInicial := Q60Mcoo_inicial.Value;
         wregistro60M.CooFinal   := Q60Mcoo.Value;
         wregistro60M.CRZ        := Q60Mcrz.Value;
         wregistro60M.CRO        := Q60Mcro.Value;
         wregistro60M.VendaBruta := Q60Mvenda_bruta.Value;
         wregistro60M.ValorGT    := Q60Mvalor_gt.Value;

         Sintegra.Registros60M.Add(wregistro60M);
         GerarRegistro60A(0);
         GerarRegistro60D;
         GerarRegistro60I;
         Q60M.Next;
      end;

      GerarRegistro60R;

      if Dt_Balanco >0 then
         GerarRegistro74(Dt_Balanco);
   end;
end;

procedure TDM_Sintegra.GerarRegistro60A(r02: integer);
var
  wregistro60A: TRegistro60A;
  st_sittrib: string;
begin
   Log('Sintegra','Montando registros 60A...', IntToStr(Q60A.RecordCount) + ' registros.');
   Q60A.First;

   while not Q60A.Eof do
   begin
      wregistro60A          := TRegistro60A.Create;
      wregistro60A.Emissao  := Q60Mdt_movi.Value;
      wregistro60A.NumSerie := Q60Mserie_ecf.AsString;

      st_sittrib := Q60Acod_tot_parcial.AsString;

      if (st_sittrib = 'F1')or(st_sittrib = 'I1')or(st_sittrib = 'N1') then
         st_sittrib := st_sittrib[1]
      else
      if st_sittrib = 'Can-T' then
         st_sittrib := 'CANC'
      else
      if st_sittrib = 'DT' then
         st_sittrib := 'DESC'
      else
         st_sittrib := copy(st_sittrib, 4, 4); //01T1800 -> 1800

      wregistro60A.StAliquota := st_sittrib;
      wregistro60A.Valor      := Q60Avalor_tot_parcial.Value;

      Sintegra.Registros60A.Add(wregistro60A);
      Q60A.Next;
   end;
end;

procedure TDM_Sintegra.GerarRegistro60D;
var
  wregistro60D: TRegistro60D;
  wregistro75: TRegistro75;
begin
   Log('Sintegra','Montando registros 60D...', IntToStr(Q60A.RecordCount) + ' registros.');
   Q60D.First;

   while not Q60D.Eof do
   begin
      wregistro60D := TRegistro60D.Create;
      wregistro60D.Emissao       := Q60Mdt_movi.Value;
      wregistro60D.NumSerie      := Q60Mserie_ecf.AsString;
      wregistro60D.Codigo        := Q60Dcodigo.AsString;
      wregistro60D.Quantidade    := Q60Dqtd.Value;
      wregistro60D.Valor         := Q60Dtotal.Value;
      wregistro60D.BaseDeCalculo := Q60Dbc.Value;
      wregistro60D.StAliquota    := Q60Dst.AsString;
      wregistro60D.ValorIcms     := Q60Dicms.Value;

      Sintegra.Registros60D.Add(wregistro60D);

      wregistro75:=TRegistro75.Create;

      if not ExisteItemNo75(wregistro60D.Codigo) then
      begin
         Log('Sintegra','Montando registro 75...', wregistro60D.Codigo);
         wregistro75.Codigo       := wregistro60D.Codigo;
         wregistro75.AliquotaICMS := Q60Daliq.Value;
         wregistro75.DataInicial  := dt_ini;
         wregistro75.DataFinal    := dt_fim;
         wregistro75.Descricao    := Q60Dnome.AsString;
         wregistro75.Unidade      := Q60Dunid.AsString;

         if wregistro75.Descricao = EmptyStr then
            Log('Sintegra','Erro Reg 75/60D', wregistro75.Codigo  + ' Falta descrição');

         Sintegra.Registros75.Add(wregistro75);
      end;

      Q60D.Next;
   end;
end;

procedure TDM_Sintegra.GerarRegistro60I;
var
   wregistro60I: TRegistro60I;
   wregistro75: TRegistro75;
begin
   if (b_Gerar60I)and(Q60I.RecordCount > 0) then  //registro 60I
   begin
      Q60I.Open;
      Log('Sintegra','Montando registros 60I...', IntToStr(Q60I.RecordCount) + ' registros.');

      while not(Q60I.Eof) do
      begin
         wregistro60I := TRegistro60I.Create;

         wregistro60I.Emissao       := Q60Mdt_movi.Value;
         wregistro60I.NumSerie      := Q60Mserie_ecf.AsString;
         wregistro60I.ModeloDoc     := '2D';
         wregistro60I.Cupom         := Q60Icoo.AsString;
         wregistro60I.Item          := Q60Iitem.Value;
         wregistro60I.Codigo        := Q60Icodigo.AsString;
         wregistro60I.Quantidade    := Q60Iqtd.Value;
         wregistro60I.Valor         := Q60Itotal.Value;
         wregistro60I.BaseDeCalculo := Q60Ibc.Value;
         wregistro60I.StAliquota    := Q60Ist.AsString;
         wregistro60I.ValorIcms     := Q60Iicms.Value;

         Sintegra.Registros60I.Add(wregistro60I);

         if not ExisteItemNo75(wregistro60I.Codigo) then
         begin
            Log('Sintegra','Montando registro 75...', wregistro60I.Codigo);
            wregistro75:=TRegistro75.Create;
            wregistro75.Codigo       := wregistro60I.Codigo;
            wregistro75.AliquotaICMS := Q60Ialiq.Value;
            wregistro75.DataInicial  := dt_ini;
            wregistro75.DataFinal    := dt_fim;
            wregistro75.Descricao    := Q60Inome.AsString;
            wregistro75.Unidade      := Q60Iunid.AsString;

            if wregistro75.Descricao = EmptyStr then
               Log('Sintegra', 'Erro Reg 75/60I', wregistro75.Codigo  + ' Falta descrição');

            Sintegra.Registros75.Add(wregistro75);
         end;

         Q60I.Next;
      end;
   end;
end;

procedure TDM_Sintegra.GerarRegistro60R;
var
   wregistro60R: TRegistro60R;
begin
   if b_Gerar60R then
   begin
      Q60R.Open;
      Q60R.FetchAll;
      Q60R.First;
      Log('Sintegra','Montando registros 60R...', IntToStr(Q60R.RecordCount) + ' registros.');
      frmprogress.bar1.Position := Q60R.RecNo;
      Application.ProcessMessages;

      while not(Q60R.Eof) do
      begin
         wregistro60R := TRegistro60R.Create;
         frmprogress.bar1.Position := Q60R.RecNo;
         Application.ProcessMessages;
         wregistro60R.MesAno        := FormatDateTime('mmyyyy', dt_ini);
         wregistro60R.Codigo        := Q60Rcodigo.AsString;
         wregistro60R.Qtd           := Q60Rqtd.Value;
         wregistro60R.Valor         := Q60Rtotal.Value;
         wregistro60R.BaseDeCalculo := Q60Rtotal.Value;
         wregistro60R.Aliquota      := Q60Rst.AsString;

         Sintegra.Registros60R.Add(wregistro60R);
         Q60R.Next;
      end;
   end;
end;

procedure TDM_Sintegra.GerarRegistro61;
var
   wregistro61: TRegistro61;
begin
   if b_Gerar61 then
   begin
      Q61.Open;
      Q61.FetchAll;
      Q61.First;
      Log('Sintegra','Montando registros 61...', IntToStr(Q61.RecordCount) + ' registros.');

      while not(Q61.Eof) do
      begin
         frmprogress.bar1.Position := Q61.RecNo;
         Application.ProcessMessages;
         wregistro61 := TRegistro61.Create;

         with wregistro61 do
         begin
            Emissao         := Q61dt_movi.Value;
            NumOrdemInicial := Q61nmro_nf_ini.Value;
            NumOrdemFinal   := Q61nmro_nf_fin.Value;
            Modelo          := '2';
            Serie           := DM_INI.ini.StoredValue['nfmod2_serie'];
            SubSerie        := DM_INI.ini.StoredValue['nfmod2_subserie'];
            Valor           := Q61vr_doc.Value;
            BaseDeCalculo   := Q61ICMS_vBC.Value;
            ValorIcms       := Q61ICMS_vICMS.Value;
            Isentas         := 0;
            Outras          := Q61vr_doc.Value - Q61ICMS_vBC.Value;
            Aliquota        := Q61ICMS_pICMS.Value;
         end;
         Sintegra.Registros61.Add(wregistro61);
         Q61.Next;
      end;
   end;
end;

procedure TDM_Sintegra.GerarRegistro74(data_balanco: TDate);
var
  wregistro74: TRegistro74;
  wregistro75: TRegistro75;
begin
   if b_Gerar74 then
   begin
      if data_balanco <=0 then
      begin
         Log('Sintegra','Erro Reg 74...', 'Sem data de balanço.');
         exit;
      end;

      Q74.Params[0].AsDate := data_balanco;
      Q74.Open;
      Q74.FetchAll;
      Log('Sintegra','Montando registros 74...', IntToStr(Q74.RecordCount) + ' registros.');
      frmprogress.bar1.Properties.Max := Q74.RecordCount;

      while not Q74.Eof do
      begin
         wregistro74 := TRegistro74.Create;
         frmprogress.bar1.Position := Q74.RecNo;
         Application.ProcessMessages;
         wregistro74.Data               := data_balanco;
         wregistro74.Codigo             := Q74cod_gtin.AsString;
         wregistro74.Quantidade         := Q74quant.AsCurrency;
         wregistro74.ValorProduto       := Arredonda(Q74total.Value, 2);
         wregistro74.CodigoPosse        := '1';
         wregistro74.CNPJPossuidor      := Sintegra.Registro10.CNPJ;
         wregistro74.InscricaoPossuidor := '              ';
         wregistro74.UFPossuidor        := Sintegra.Registro10.Estado;

         Sintegra.Registros74.Add(wregistro74);

         if not ExisteItemNo75(wregistro74.Codigo) then
         begin
            wregistro75              := TRegistro75.Create;
            wregistro75.Codigo       := wregistro74.Codigo;
            wregistro75.AliquotaICMS := Q74icms.Value;
            wregistro75.DataInicial  := Sintegra.Registro10.DataInicial;
            wregistro75.DataFinal    := Sintegra.Registro10.DataFinal;
            wregistro75.Descricao    := Q74nome.AsString;
            wregistro75.Unidade      := Copy(Q74unidade.AsString,1,2);

            if wregistro75.Descricao = EmptyStr then
               Log('Sintegra', 'Erro Reg 75/74', wregistro75.Codigo  + ' Falta descrição');

            Sintegra.Registros75.Add(wregistro75);
         end;
         Q74.Next;
      end;
   end;
end;

procedure TDM_Sintegra.Q50EAfterOpen(DataSet: TDataSet);
begin
   Log('Sintegra', Dataset.Name +  'aberto', '');
end;

procedure TDM_Sintegra.Q50EBeforeOpen(DataSet: TDataSet);
begin
   Log('Sintegra', 'Abrindo ' + Dataset.Name +  '...', '');
end;

end.
