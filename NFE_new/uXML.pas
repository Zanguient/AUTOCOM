unit uXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, pcnConversao, ACBrValidador,
  Xml.Win.msxmldom, Xml.XMLDoc, uFuncoes;

type

   TXML_Destinatario = class
   private
      FId,
      FCep,
      FCMunic,
      FCUf: integer;

      FCnpj,
      FIe,
      FIm,
      FNome,
      FRazaosocial,
      FTel1,
      FTel2,
      FFax,
      FCelular,
      FLogradouro,
      FNmro,
      FComplem,
      FBairro,
      FCidade,
      FUf,
      FEmail : string;

      public
         procedure Clear;
      published
         property Id: Integer read FId write FId;
         property Cep: Integer read FCep write FCep;
         property CMunic: Integer read FCMunic write FCMunic;
         property CNPJ: string read FCnpj write FCnpj;
         property IE: string read FIe write FIe;
         property IM: string read FIm write FIm;
         property Nome: string read FNome write FNome;
         property Razaosocial: string read FRazaosocial write FRazaosocial;
         property Tel1: string read FTel1 write FTel1;
         property Tel2: string read FTel2 write FTel2;
         property Fax: string read FFax write FFax;
         property Celular: string read FCelular write FCelular;
         property Logradouro: string read FLogradouro write FLogradouro;
         property Nmro: string read FNmro write FNmro;
         property Complem: string read FComplem write FComplem;
         property Bairro: string read FBairro write FBairro;
         property Cidade: string read FCidade write FCidade;
         property CUF: integer read FCUf write FCUf;
         property UF: string read FUf write FUf;
         property email: string read FEmail write FEmail;
   end;

   TXML_Venda = class
   private
         FId,
         FCOO,
         FNumECF,
         FCCF,
         FCV : integer;

         FTerminal,
         FHora,
         FOperador,
         FVendedor: string;

         FData: TDate;

         FValor,
         Fvr_Desconto,
         FVr_pago,
         FVr_Din,
         Fvr_Chq,
         FVr_Crt,
         FVr_Fat,
         FVr_Tkt,
         FVr_comissao,
         FVr_Troco: currency;

      public
         procedure Clear;
      published
         property ID: integer read FId write FId;
         property COO: integer read FCOO write FCOO;
         property NumECF: integer read FNumECF write FNumECF;
         property CCF: integer read FCCF write FCCF;
         property CV: integer read FCV write FCV;
         property Terminal: string read FTerminal write FTerminal;
         property Data: TDate read FData write FData;
         property Hora: string read FHora write FHora;
         property Operador: string read FOperador write FOperador;
         property Vendedor: string read FVendedor write FVendedor;
         property Valor: currency read FValor write FValor;
         property vr_Desconto: currency read Fvr_Desconto write Fvr_Desconto;
         property Vr_pago: currency read FVr_pago write FVr_pago;
         property Vr_Din: currency read FVr_Din write FVr_Din;
         property vr_Chq: currency read Fvr_Chq write Fvr_Chq;
         property Vr_Crt: currency read FVr_Crt write FVr_Crt;
         property Vr_Fat: currency read FVr_Fat write FVr_Fat;
         property Vr_Tkt: currency read FVr_Tkt write FVr_Tkt;
         property Vr_comissao: currency read FVr_comissao write FVr_comissao;
         property Vr_Troco: currency read FVr_Troco write FVr_Troco;
   end;

   TXml_Item_Venda = class
      private
      FId,
      FICMS_modBCST,
      FISSQN_CST,
      FCOFINS_CST,
      FICMS_CST,
      FPIS_CST,
      FIPI_CST,
      FICMS_MOD_BC,
      FCfop,
      FCsosn,
      FCodprod,
      FVenda,
      FIndice: Integer;

      FInfAdProd,
      FExtipi,
      FIPI_clEnq,
      FNcm,
      FUnid,
      FDescricao,
      FCodGTIN: string;

      FISSQN_vAliq,
      FCOFINSST_pCOFINS,
      FCOFINS_pCOFINS,
      FPISST_pPis,
      FPIS_pPIS,
      FIPI_pIPI,
      FICMS_pCredSN,
      FICMS_BC,
      FICMS_pc,
      FICMS_vr,
      FICMS_vBCSTRet,
      FICMS_vICMSSTRet,
      FICMS_pICMSST,
      FICMS_pMVAST,
      FICMS_vTabelaST,
      FpRedBCST,
      FpRedBC,
      Fvalor,
      Fdesconto,
      Fpreco,
      Fqtd: Currency;

      public
         procedure Clear;
      published
         property Id: integer read FId write FId;
         property Venda: integer read Fvenda write Fvenda;
         property Indice: integer read Findice write Findice;
         property CodProd: integer read Fcodprod write Fcodprod;
         property CodGTIN: string read FCodGTIN write FCodGTIN;
         property Descricao: string read FDescricao write FDescricao;
         property NCM: string read FNcm write FNcm;
         property Unid: string read FUnid write FUnid;
         property InfAdProd: string read FInfAdProd write FInfAdProd;

         property PrecoUn: Currency read Fpreco write Fpreco;
         property Qtd: Currency read Fqtd write Fqtd;
         property Valor: Currency read Fvalor write Fvalor;
         property Desconto: Currency read Fdesconto write Fdesconto;

         property CFOP: integer read FCfop write FCfop;
         property CSOSN: integer read FCsosn write FCsosn;
         //icms
         property ICMS_MOD_BC: integer read FICMS_MOD_BC write FICMS_MOD_BC;
         property ICMS_CST: integer read FICMS_CST write FICMS_CST;
         property ICMS_pCredSN: currency read FICMS_pCredSN write FICMS_pCredSN;
         property ICMS_BC: currency read FICMS_BC write FICMS_BC;
         property ICMS_pRedBC: currency read FpRedBC write FpRedBC;
         property ICMS_pc: currency read FICMS_pc write FICMS_pc;
         property ICMS_vr: currency read FICMS_vr write FICMS_vr;
         //st
         property ICMS_modBCST: integer read FICMS_modBCST write FICMS_modBCST;
         property ICMS_vBCSTRet: currency read FICMS_vBCSTRet write FICMS_vBCSTRet;
         property ICMS_vICMSSTRet: currency read FICMS_vICMSSTRet write FICMS_vICMSSTRet;
         property ICMS_pMVAST: currency read FICMS_pMVAST write FICMS_pMVAST;
         property ICMS_vTabelaST: currency read FICMS_vTabelaST write FICMS_vTabelaST;
         property pRedBCST: currency read FpRedBCST write FpRedBCST;
         property ICMS_pICMSST: currency read FICMS_pICMSST write FICMS_pICMSST;

        //pis
         property PIS_CST: integer read FPIS_CST write FPIS_CST;
         property PIS_pPIS: currency read FPIS_pPIS write FPIS_pPIS;
         property PISST_pPis: currency read FPISST_pPis write FPISST_pPis;
        //COFINS
         property COFINS_CST: integer read FCOFINS_CST write FCOFINS_CST;
         property COFINS_pCOFINS: currency read FCOFINS_pCOFINS write FCOFINS_pCOFINS;
         property COFINSST_pCOFINS: currency read FCOFINSST_pCOFINS write FCOFINSST_pCOFINS;
        //ipi
         property IPI_CST: integer read FIPI_CST write FIPI_CST;
         property IPI_pIPI: Currency read FIPI_pIPI write FIPI_pIPI;
         property IPI_clEnq: string read FIPI_clEnq write FIPI_clEnq;
         property IPI_Extipi: string read FExtipi write FExtipi;

         property ISSQN_CST: integer read FISSQN_CST write FISSQN_CST;
         property ISSQN_vAliq: Currency read FISSQN_vAliq write FISSQN_vAliq;
   end;

   TXMLVenda = class
      private
         FXMLDoc: TXMLDocument;
         FDestinatario: TXML_Destinatario;
         FItem_Venda: TXml_Item_Venda;
         FVenda: TXML_Venda;
         FNodeDestinatario, FNodeVenda, FNodeVendas, FNodeDup, FNodeDups, FNodeItem, FNodeItens: IXMLNode;
         FNatOp: integer;
         FIndicadorPagamento: TpcnIndicadorPagamento;
         FMd5: string;

         public
            procedure Clear;
            procedure AbrirXML;
            procedure AddDestinatario(Destinatario:TXML_Destinatario);
            procedure AddDuplicata(nmro_Dup:integer; Dt_Venc: TDate; Vr_Dup: currency);
            procedure AddVenda(Venda:TXml_Venda);
            procedure AddItem(Item_Venda:TXml_Item_Venda);
            procedure Salvar;
         published
            property NatOp: Integer read FNatOp write FNatOp;
            property IndicadorPagamento: TpcnIndicadorPagamento read FIndicadorPagamento write FIndicadorPagamento;
            property MD5: string read FMd5 write FMd5;
            property Destinatario: TXML_Destinatario read FDestinatario write FDestinatario;
            property Venda: TXml_Venda read FVenda write FVenda;
            property Item: TXml_Item_Venda read FItem_Venda write FItem_Venda;
            property XMLDoc: TXMLDocument read FXMLDoc write FXMLDoc;
         constructor
            Create(aowner: TObject);
   end;



procedure GerarXML();

procedure ImportarXML;

implementation

uses uMain, udmnfe;

procedure ImportarXML;
var
   XMLDoc: TXMLDocument;
   NComprador, NVenda, NVendas, NItem, NItens: IXMLNode;
   TemECF, NaoTemECF, ForaUF: Boolean;
   i, j: integer;
   s, md5: string;
   n: currency;
begin
   XMLDoc := TXMLDocument.Create(Application);

   TemECF    := False;
   ForaUF    := False;

   with XMLDoc do
   begin
      LoadFromFile(Aqui('VENDA', 'venda.xml'));

      //limpa os dados
      frmMain.btnLimparNF.Click;

      NVendas := XMLDoc.DocumentElement.ChildNodes.FindNode('Vendas');
     // Posiciona o primeiro elemento encontrado
      NVendas.ChildNodes.First;
      frmMain.bar2.Visible := True;

      //loop para verificar sem tem venda ecf e nao ecf juntas
      for i := 0 to NVendas.ChildNodes.Count - 1 do
      begin
          NVenda  := nil;
          Application.ProcessMessages;

          if SameText(NVendas.ChildNodes.Nodes[i].NodeName, 'Venda') then
          begin
            NVenda := NVendas.ChildNodes.Nodes[i];

          if not TemECF then
            TemECF := NVenda.ChildNodes['numecf'].NodeValue > 0;

          if not NaoTemECF then
             NaoTemECF := NVenda.ChildNodes['numecf'].NodeValue = 0;
          end;
      end;

      if(TemECF)and(NaoTemECF) then
         raise Exception.Create('Não é possivel fazer uma NF-e Com vendas ECF e não ECF juntas.');

      //corpo da NF
      DM_NFE.QNF.Edit;
      DM_NFE.QNFIde_tpNF.Value   := 1;//saida
      DM_NFE.QNFIde_indPag.Value := 0;//a vista

      if TemECF then
      begin
         DM_NFE.QNFIde_natOp.AsString := 'SUBSTITUIÇÃO CUPOM FISCAL';
      end
      else
      begin
         DM_NFE.QNFIde_natOp.AsString := 'VENDA DE MERCADORIA ADQUIRIDA OU RECEBIDA DE TERCEIROS';
      end;

      //dados do destinatario
      NComprador := XMLDoc.DocumentElement.ChildNodes.FindNode('Comprador');

      DM_NFE.QNF.Edit;
      frmmain.PopularMunic(copy(NComprador.ChildNodes['cmunic'].NodeValue,1,2), frmmain.cmbDest_EnderDest_cMun);

      DM_NFE.QNFDest_CNPJCPF.AsString           := NComprador.ChildNodes['cnpj'].NodeValue;
      DM_NFE.QNFDest_IE.AsString                := NComprador.ChildNodes['ie'].NodeValue;
      DM_NFE.QNFDest_xNome.AsString             := NComprador.ChildNodes['razaosocial'].NodeValue;
      DM_NFE.QNFDest_EnderDest_Fone.AsString    := NComprador.ChildNodes['tel1'].NodeValue;
      DM_NFE.QNFDest_EnderDest_CEP.AsString     := NComprador.ChildNodes['cep'].NodeValue;
      DM_NFE.QNFDest_EnderDest_xLgr.AsString    := NComprador.ChildNodes['logradouro'].NodeValue;
      DM_NFE.QNFDest_EnderDest_nro.AsString     := NComprador.ChildNodes['nmro'].NodeValue;
      DM_NFE.QNFDest_EnderDest_xCpl.AsString    := NComprador.ChildNodes['complem'].NodeValue;
      DM_NFE.QNFDest_EnderDest_xBairro.AsString := NComprador.ChildNodes['bairro'].NodeValue;
      DM_NFE.QNFDest_EnderDest_cMun.Value       := NComprador.ChildNodes['cmunic'].NodeValue;
      DM_NFE.QNFDest_EnderDest_xMun.AsString    := NComprador.ChildNodes['cidade'].NodeValue;
      DM_NFE.QNFDest_EnderDest_UF.AsString      := NComprador.ChildNodes['uf'].NodeValue;

      md5 := NComprador.ChildNodes['md5'].NodeValue; //md5 do aplicativo gerador

      ForaUF := NComprador.ChildNodes['uf'].NodeValue <> DM_NFE.QNFEmit_EnderEmit_UF.AsString;

      if DM_NFE.QNFDest_IE.AsString = C_ST_VAZIO then
         DM_NFE.QNFDest_IE.AsString := 'ISENTO';

      DM_NFE.QNF.Post;

      //Itens da venda

      NVendas.ChildNodes.First;

      //loop para verificar sem tem venda-ecf e nao-ecf juntas
      for i := 0 to NVendas.ChildNodes.Count - 1 do
      begin
          NVenda  := nil;
          Application.ProcessMessages;

          if SameText(NVendas.ChildNodes.Nodes[i].NodeName, 'Venda') then
          begin
            NVenda := NVendas.ChildNodes.Nodes[i];

            if TemECF then
            begin
               with DM_NFE do
               begin
                  QNF_Referenciada.Insert;
                  QNF_ReferenciadaRefECF_modelo.Value := 2; //'2D'
                  QNF_ReferenciadaRefECF_nECF.AsString   := NVenda.ChildNodes['numecf'].NodeValue;
                  QNF_ReferenciadaRefECF_nCOO.AsString   := NVenda.ChildNodes['cupom'].NodeValue;
               end;
            end;

            NItens := NVenda.ChildNodes.FindNode('Itens');
            NItens.ChildNodes.First;

            with DM_NFE do
            begin
               for j := 0 to NItens.ChildNodes.Count - 1 do
               begin
                  NItem := NItens.ChildNodes.Nodes[j];
                  s := NItem.ChildNodes['codprod'].NodeValue;
                  n := NItem.ChildNodes['preco'].NodeValue;
                  Application.ProcessMessages;

                  if QNF_Item.Locate('cProd;vUnCom', VarArrayOf([s, n]), []) then
                  begin
                     QNF_Item.Edit;
                     QNF_ItemqCom.Value   := QNF_ItemqCom.Value + NItem.ChildNodes['qtd'].NodeValue;
                     QNF_ItemvProd.Value  := QNF_ItemvProd.Value + NItem.ChildNodes['valor'].NodeValue;
                     QNF_ItemvDesc.Value  := QNF_ItemvDesc.Value + NItem.ChildNodes['desconto'].NodeValue;
                     QNF_Item.Post;
                  end
                  else
                  begin
                     QNF_Item.append;
                     QNF_ItemnItem.Value    := NItem.ChildNodes['indice'].NodeValue;
                     QNF_ItemcProd.AsString := NItem.ChildNodes['codprod'].NodeValue;
                     QNF_ItemxProd.AsString := NItem.ChildNodes['descricao'].NodeValue;
                     QNF_ItemCFOP.AsString := NItem.ChildNodes['cfop'].NodeValue;
                     QNF_ItemNCM.AsString   := NItem.ChildNodes['ncm'].NodeValue;

                     QNF_ItemuCom.AsString  := NItem.ChildNodes['unid'].NodeValue;
                     QNF_ItemqCom.Value    := NItem.ChildNodes['qtd'].NodeValue;
                     QNF_ItemvProd.Value   := NItem.ChildNodes['valor'].NodeValue;
                     QNF_ItemvUnCom.Value  := NItem.ChildNodes['preco'].NodeValue;
                     QNF_ItemvDesc.Value   := NItem.ChildNodes['desconto'].NodeValue;

                     QNF_ItemICMS_orig.Value   := 0; //nacional
                     QNF_ItemICMS_modBC.Value  := NItem.ChildNodes['icms_mod_bc'].NodeValue;
                     QNF_ItemICMS_pICMS.Value  := NItem.ChildNodes['aliq_pc'].NodeValue;
                     QNF_ItemICMS_pRedBC.Value := NItem.ChildNodes['pRedBC'].NodeValue;

                     QNF_ItemICMS_pRedBCST.Value  := NItem.ChildNodes['pRedBCST'].NodeValue;
                     QNF_ItemICMS_modBCST.Value   := NItem.ChildNodes['ICMS_modBCST'].NodeValue;
                     QNF_ItemICMS_vTabelaST.Value := NItem.ChildNodes['ICMS_vTabelaST'].NodeValue;
                     QNF_ItemICMS_pMVAST.Value    := NItem.ChildNodes['ICMS_pMVAST'].NodeValue;
                     QNF_ItemICMS_pICMSST.Value   := NItem.ChildNodes['ICMS_pICMSST'].NodeValue;

                     QNF_ItemICMS_CSOSN.Value    := NItem.ChildNodes['ICMS_CSOSN'].NodeValue;
                     QNF_ItemICMS_pCredSN.Value  := NItem.ChildNodes['ICMS_pCredSN'].NodeValue;

                     QNF_ItemIPI_CST.Value       := NItem.ChildNodes['IPI_CST'].NodeValue;
                     QNF_ItemIPI_pIPI.Value      := NItem.ChildNodes['IPI_pIPI'].NodeValue;

                     QNF_ItemPIS_CST.Value    := NItem.ChildNodes['PIS_CST'].NodeValue;
                     QNF_ItemPIS_pPIS.Value   := NItem.ChildNodes['PIS_pPIS'].NodeValue;
                     QNF_ItemPISST_pPis.Value := NItem.ChildNodes['PISST_pPis'].NodeValue;

                     QNF_ItemCOFINS_CST.Value       := NItem.ChildNodes['COFINS_CST'].NodeValue;
                     QNF_ItemCOFINS_pCOFINS.Value   := NItem.ChildNodes['COFINS_pCOFINS'].NodeValue;
                     QNF_ItemCOFINSST_pCOFINS.Value := NItem.ChildNodes['COFINSST_pCOFINS'].NodeValue;

                     QNF_ItemISSQN_SitTrib.Value := NItem.ChildNodes['ISSQN_SitTrib'].NodeValue;
                     QNF_ItemISSQN_vAliq.Value   := NItem.ChildNodes['ISSQN_vAliq'].NodeValue;

                     if NItem.ChildNodes['IPI_clEnq'].NodeValue <> null then
                        QNF_ItemIPI_clEnq.AsString  := NItem.ChildNodes['IPI_clEnq'].NodeValue;

                     if NItem.ChildNodes['infAdProd'].NodeValue <> null then
                        QNF_IteminfAdProd.AsString := NItem.ChildNodes['infAdProd'].NodeValue;

                     if NItem.ChildNodes['extipi'].NodeValue <> null then
                        QNF_ItemEXTIPI.AsString := NItem.ChildNodes['extipi'].NodeValue;

                     if NItem.ChildNodes['codbarra'].NodeValue <> null then
                     begin
                        Validador.TipoDocto := docGTIN;
                        Validador.Documento := NItem.ChildNodes['codbarra'].NodeValue;

                        if Validador.Validar then
                           QNF_ItemcEAN.AsString := NItem.ChildNodes['codbarra'].NodeValue;
                     end;

                     if QNFEmit_CRT.AsInteger = 0 then
                        QNF_ItemICMS_CST.Value := integer(cstVazio)
                     else
                        QNF_ItemICMS_CST.Value := NItem.ChildNodes['cst'].NodeValue;

                     QNF_Item.Post;
                  end;
               end;
            end;
          end;
      end;
   end;

   XMLDoc.Active := False;
   XMLDoc.Free;
   frmMain.bar2.Visible := False;
   DM_NFE.Preenche_Info_Compl;

   if md5 <> C_ST_VAZIO then
   begin
      DM_NFE.QNF.Edit;
      DM_NFE.QNFInfCpl.Value := 'MD5: ' + md5 + #13 + DM_NFE.QNFinfCpl.Value;
      DM_NFE.QNF.Post;
   end;
   ShowMessage('Operação concluída.');
end;

procedure GerarXML;
var
   xml: TXMLVenda;
   i: integer;
begin
   // Cria o objeto
   xml := TXMLVenda.Create(nil);

   XML.Clear;

   with xml do
   begin
   //1
      NatOp := 5102;
      MD5   := '2121212122121212121212121212121212121';
      IndicadorPagamento := ipPrazo;//a prazo
//2
      AbrirXML;
//3
      with Destinatario do
      begin
         Id          := 1;
         Cep         := 38800000;
         FCMunic     := 31104;
         CUf         := 31;
         Cnpj        := '01747793000100';
         Ie          := '12345678';
         IM          := '1234';
         Nome        := 'Nome do destinatario';
         Razaosocial := 'razao do destinatario';
         Tel1        := '3488889999';
         Tel2        := '3488889998';
         Celular     := '3488889899';
         fax         := '3488899999';
         Logradouro  := 'Rua aqui';
         Nmro        := '125';
         Complem     := 'sala 01';
         Bairro      := 'Bairro';
         Cidade      := 'Ro de Janeiro';
         UF          := 'RJ';
         CMunic      := 31104;
         CUF         := 31;
         Email       := 'aaa@aaa.com';
      end;
//4
      AddDestinatario(Destinatario);
//5
      AddDuplicata(100, date, 1254.88);
      AddDuplicata(101, date+20, 1254.88);
      AddDuplicata(102, date+40, 1254.88);
//6
      for i := 1 to 5 do
      begin
         with Venda do
         begin
            Clear;//limpa os registros
            Id          := i;
            NumECF      := 1;
            COO         := 1000+i;
            CCF         := 10+i;
            CV          := 5 + i;
            Terminal    := 'BE1234567890123456';
            Hora        := FormatDateTime('hh:mm', now);
            Data        := date - i;
            Operador    := 'Nome do Operador;';
            Vendedor    := 'Nome do vendedor';
            Valor       := 15.25*i;
            vr_Desconto := 0.25;
            Vr_pago     := Valor - vr_Desconto;
            Vr_Din      := 1;
            vr_Chq      := 2;
            Vr_Crt      := 3;
            Vr_Fat      := 4;
            Vr_Tkt      := 5;
            Vr_comissao := Arredonda((Vr_pago *5)/100,2);
            Vr_Troco    := 2.67;
         end;
         AddVenda(Venda);
      end;

//7
     for i := 1 to 15 do
     begin
        with Item do
        begin
           Clear;//limpa os registros
           Id                 := 100+i;
           Venda              := 0;//uso futuro
           Indice             := i;
           CodProd            := 4000+i;
           CodGTIN            := '789456123456' + Inttostr(i);
           Descricao          := 'PRODUTO ' + Inttostr(i);
           NCM                := '1234567' + Inttostr(i);
           Unid               := 'UN';
           InfAdProd          := 'INFO QUALQUER';
           PrecoUn            := i + 0.23;
           Qtd                := 2;
           Desconto           := 0.11;
           Valor              := (Qtd * PrecoUn) - Desconto;
           CFOP               := 5102;
           CSOSN              := 0;
           ICMS_MOD_BC        := 0;
           ICMS_CST           := 0;
           ICMS_pCredSN       := 0;
           ICMS_BC            := 0;
           ICMS_pRedBC        := Valor;
           ICMS_pc            := 18;
           ICMS_vr            := Arredonda((ICMS_pRedBC * ICMS_pc )/100,2);
           ICMS_modBCST       := 0;
           ICMS_vBCSTRet      := 1;
           ICMS_vICMSSTRet    := 0.5;
           ICMS_pMVAST        := 0.6;
           ICMS_vTabelaST     := 0.7;
           ICMS_pICMSST       := 17;
           IPI_CST            := 1;
           IPI_pIPI           := 10;
           IPI_clEnq          := '123';
           IPI_Extipi         := 'EXT';
           PIS_CST            := 2;
           PIS_pPIS           := 7;
           PISST_pPis         := 1;
           COFINS_CST         := 3;
           COFINS_pCOFINS     := 5;
           COFINSST_pCOFINS := 3;
           ISSQN_CST := 4;
           ISSQN_vAliq := 7;
        end;
        AddItem(Item);
     end;
//8
     Salvar;
   end;

   FreeAndNil(xml);
end;

{ TXMLVenda }

procedure TXMLVenda.AbrirXML;
begin
    XMLDoc := TXMLDocument.Create(Application);

   with XMLDoc do
   begin
      Active   := True;
      Version  := '1.0';
      Encoding := 'ISO-8859-1';
      AddChild('Dados_Venda');

      with DocumentElement do
      begin
         AddChild('TipoVenda');//cria e preenche o node TipoVenda
         ChildNodes.Last.AddChild('natop').NodeValue   := NatOp;//para a descricao do cfop na NF
         ChildNodes.Last.AddChild('tipopag').NodeValue := Integer(IndicadorPagamento);//0=avista 1=prazo 2=outros
         ChildNodes.Last.AddChild('md5').NodeValue     := MD5;//MD5 do aplicativo gerador
         //cria os nodes
         FNodeDestinatario := AddChild('Destinatario');
         FNodeDups         := AddChild('Duplicatas');
         FNodeVendas       := AddChild('Vendas');
         FNodeItens        := AddChild('Itens');
      end;
   end;
end;

procedure TXMLVenda.AddDestinatario(Destinatario: TXML_Destinatario);
begin
   with FNodeDestinatario do
   begin
      ChildNodes['id'].NodeValue          := Destinatario.Id;
      ChildNodes['cnpj'].NodeValue        := Number(Destinatario.CNPJ);
      ChildNodes['ie'].NodeValue          := Number(Destinatario.IE);
      ChildNodes['im'].NodeValue          := Number(Destinatario.IM);
      ChildNodes['nome'].NodeValue        := Destinatario.Nome;
      ChildNodes['razaosocial'].NodeValue := Destinatario.Razaosocial;
      ChildNodes['tel1'].NodeValue        := Number(Destinatario.Tel1);
      ChildNodes['tel2'].NodeValue        := Number(Destinatario.Tel2);
      ChildNodes['fax'].NodeValue         := Number(Destinatario.Fax);
      ChildNodes['celular'].NodeValue     := Number(Destinatario.Celular);
      ChildNodes['logradouro'].NodeValue  := Destinatario.Logradouro;
      ChildNodes['nmro'].NodeValue        := Destinatario.Nmro;
      ChildNodes['complem'].NodeValue     := Destinatario.Complem;
      ChildNodes['bairro'].NodeValue      := Destinatario.Bairro;
      ChildNodes['cidade'].NodeValue      := Destinatario.Cidade;
      ChildNodes['uf'].NodeValue          := Destinatario.UF;
      ChildNodes['cuf'].NodeValue         := Destinatario.CUF;
      ChildNodes['cep'].NodeValue         := Destinatario.Cep;
      ChildNodes['email'].NodeValue       := Destinatario.email;
      ChildNodes['cmunic'].NodeValue      := Destinatario.CMunic;
   end;
end;

procedure TXMLVenda.AddDuplicata(nmro_Dup: integer; Dt_Venc: TDate;
  Vr_Dup: currency);
begin
   //itens das duplicatas (node duplicata)
   FNodeDup := FNodeDups.AddChild('Duplicata');
   with FNodeDup do
   begin
      ChildNodes['nDup'].NodeValue  := nmro_Dup;
      ChildNodes['dVenc'].NodeValue := FormatDateTime('dd/mm/yyyy', Dt_Venc);
      ChildNodes['vDup'].NodeValue  := Vr_Dup;
   end;
end;

procedure TXMLVenda.AddItem(Item_Venda: TXml_Item_Venda);
begin
   FNodeItem := FNodeItens.AddChild('Item');
   with FNodeItem do
   begin
      ChildNodes['id'].NodeValue        := Item_Venda.Id;
      ChildNodes['indice'].NodeValue    := Item_Venda.Indice;
      ChildNodes['venda'].NodeValue     := Item_Venda.Venda;
      ChildNodes['codprod'].NodeValue   := Item_Venda.CodProd;
      ChildNodes['codgtin'].NodeValue   := Item_Venda.CodGTIN;
      ChildNodes['descricao'].NodeValue := Item_Venda.Descricao;

      ChildNodes['unid'].NodeValue      := Item_Venda.Unid;
      ChildNodes['cst'].NodeValue       := Item_Venda.ICMS_CST;
      ChildNodes['csosn'].NodeValue     := Item_Venda.CSOSN;
      ChildNodes['cfop'].NodeValue      := Item_Venda.CFOP;
      ChildNodes['ncm'].NodeValue       := Item_Venda.NCM;

      ChildNodes['qtd'].NodeValue       := Item_Venda.Qtd;
      ChildNodes['preco'].NodeValue     := Item_Venda.PrecoUn;
      ChildNodes['desconto'].NodeValue  := Item_Venda.Desconto; //sobre o total (qtd*preco)
      ChildNodes['valor'].NodeValue     := Item_Venda.Valor;

      ChildNodes['icms_mod_bc'].NodeValue       := Item_Venda.ICMS_MOD_BC;
      ChildNodes['ICMS_pc'].NodeValue           := Item_Venda.ICMS_pc;
      ChildNodes['ICMS_vr'].NodeValue           := Item_Venda.ICMS_vr;
      //ST
      ChildNodes['ICMS_modBCST'].NodeValue      := Item_Venda.ICMS_modBCST;
      ChildNodes['pRedBC'].NodeValue            := Item_Venda.ICMS_pRedBC;
      ChildNodes['pRedBCST'].NodeValue          := Item_Venda.pRedBCST;
      ChildNodes['ICMS_vTabelaST'].NodeValue    := Item_Venda.ICMS_vTabelaST;
      ChildNodes['ICMS_pMVAST'].NodeValue       := Item_Venda.ICMS_pMVAST;
      ChildNodes['ICMS_pICMSST'].NodeValue      := Item_Venda.ICMS_pICMSST;
      ChildNodes['ICMS_vICMSSTRet'].NodeValue   := Item_Venda.ICMS_vICMSSTRet;
      ChildNodes['ICMS_vBCSTRet'].NodeValue     := Item_Venda.ICMS_vBCSTRet;
      //credito simples nacional
      ChildNodes['ICMS_pCredSN'].NodeValue      := Item_Venda.ICMS_pCredSN;
      //IPI
      ChildNodes['IPI_CST'].NodeValue           := Item_Venda.IPI_CST;
      ChildNodes['IPI_clEnq'].NodeValue         := Item_Venda.IPI_clEnq;
      ChildNodes['IPI_pIPI'].NodeValue          := Item_Venda.IPI_pIPI;
      ChildNodes['extipi'].NodeValue            := Item_Venda.IPI_Extipi;
       //PIS
      ChildNodes['PIS_CST'].NodeValue           := Item_Venda.PIS_CST;
      ChildNodes['PIS_pPIS'].NodeValue          := Item_Venda.PIS_pPIS;
      ChildNodes['PISST_pPis'].NodeValue        := Item_Venda.PISST_pPis;
     //COFINS
      ChildNodes['COFINS_CST'].NodeValue        := Item_Venda.COFINS_CST;
      ChildNodes['COFINS_pCOFINS'].NodeValue    := Item_Venda.COFINS_pCOFINS;
      ChildNodes['COFINSST_pCOFINS'].NodeValue  := Item_Venda.COFINSST_pCOFINS;
      //ISS
      ChildNodes['ISSQN_SitTrib'].NodeValue     := Item_Venda.ISSQN_CST;
      ChildNodes['ISSQN_vAliq'].NodeValue       := Item_Venda.ISSQN_vAliq;

      ChildNodes['infAdProd'].NodeValue         := Item_Venda.InfAdProd;
   end;
end;

procedure TXMLVenda.AddVenda(Venda: TXml_Venda);
begin
   FNodeVenda := FNodeVendas.AddChild('Venda');
   with FNodeVenda do
   begin
      ChildNodes['id'].NodeValue          := Venda.ID;
      ChildNodes['cupom'].NodeValue       := Venda.COO;
      ChildNodes['numecf'].NodeValue      := venda.NumECF;//se 0 não é venda ECF
      ChildNodes['ccf'].NodeValue         := Venda.CCF;
      ChildNodes['cv'].NodeValue          := Venda.CV;
      ChildNodes['terminal'].NodeValue    := Venda.Terminal;
      ChildNodes['data'].NodeValue        := FormatDateTime('dd/mm/yyyy', Venda.Data);
      ChildNodes['hora'].NodeValue        := Venda.Hora;
      ChildNodes['operador'].NodeValue    := Venda.Operador;
      ChildNodes['vendedor'].NodeValue    := Venda.Vendedor;
      ChildNodes['valor'].NodeValue       := Venda.Valor;
      ChildNodes['vr_desc'].NodeValue     := Venda.vr_Desconto;
      ChildNodes['vr_pg'].NodeValue       := Venda.Vr_pago;
      ChildNodes['vr_din'].NodeValue      := Venda.Vr_Din;
      ChildNodes['vr_chq'].NodeValue      := Venda.vr_Chq;
      ChildNodes['vr_card'].NodeValue     := Venda.Vr_Crt;
      ChildNodes['vr_outros'].NodeValue   := Venda.Vr_Fat;
      ChildNodes['vr_tkt'].NodeValue      := Venda.Vr_Tkt;
      ChildNodes['comissao_vr'].NodeValue := Venda.Vr_comissao;
      ChildNodes['troco'].NodeValue       := Venda.Vr_Troco;
   end;
end;

procedure TXMLVenda.Clear;
begin
   XMLDoc := nil;
   Destinatario.Clear;
   Item.Clear;
   Venda.Clear;
   NatOp := 0;
   IndicadorPagamento := ipVista;
   MD5 := '';
end;

constructor TXMLVenda.Create(aowner: TObject);
begin
   Destinatario := TXML_Destinatario.Create;
   Venda        := TXML_Venda.Create;
   Item         := TXml_Item_Venda.Create;
end;

procedure TXMLVenda.Salvar;
var
   Lista: TStringList;
   i,j: integer;
begin
   Lista := TStringList.Create;

   if not FileExists(Aqui('TXT', 'xml.dat')) then
   begin
      i := 1;
      j := 1;
      Lista.Add(IntToStr(i+1));
      Lista.Add(IntToStr(j+1));
   end
   else
   begin
      Lista.LoadFromFile(Aqui('TXT', 'xml_vendas.dat'));
      i := StrToInt(Lista.Strings[0]);
      Lista.Strings[0] := IntToStr(i+1);
      j := StrToInt(Lista.Strings[1]);
      Lista.Strings[1] := IntToStr(j+1);
   end;

   Lista.SaveToFile(Aqui('TXT', 'xml_vendas.dat'));
   Lista.Free;

   XMLDoc.SaveToFile(Aqui('VENDAS_XML', format('%.9d',[j]) + '_' + Destinatario.Razaosocial + '.xml'));

   XMLDoc.Active := False;
   XMLDoc.Free;
end;

{ TXml_Item_Venda }

procedure TXml_Item_Venda.Clear;
begin
      Id             := 0;
      Indice         := 0;
      Venda          := 0;
      CodProd        := 0;
      CodGTIN        := '';
      Descricao      := '';
      Unid           := '';
      ICMS_CST       := 0;
      CSOSN          := 0;
      CFOP           := 0;
      NCM            := '';
      Qtd            := 0;
      PrecoUn        := 0;
      Desconto       := 0;
      Valor          := 0;
      ICMS_MOD_BC    := 0;
      ICMS_pc        := 0;
      ICMS_vr        := 0;
      ICMS_modBCST   := 0;
      ICMS_pRedBC    := 0;
      pRedBCST       := 0;
      ICMS_vTabelaST := 0;
      ICMS_pMVAST    := 0;
      ICMS_pICMSST   := 0;
      ICMS_vICMSSTRet := 0;
      ICMS_vBCSTRet  := 0;
      ICMS_pCredSN   := 0;
      IPI_CST        := 0;
      IPI_clEnq      := '';
      IPI_pIPI       := 0;
      IPI_Extipi     := '';
      PIS_CST        := 0;
      PIS_pPIS       := 0;
      PISST_pPis     := 0;
      COFINS_CST     := 0;
      COFINS_pCOFINS := 0;
      COFINSST_pCOFINS := 0;
      ISSQN_CST      := 0;
      ISSQN_vAliq    := 0;
      InfAdProd      :='';
end;

{ TXML_Venda }

procedure TXML_Venda.Clear;
begin
   ID          := 0;
   COO         := 0;
   NumECF      := 0;
   CCF         := 0;
   CV          := 0;
   Terminal    := '';
   Data        := 0;
   Hora        := '';
   Operador    := '';
   Vendedor    := '';
   Valor       := 0;
   vr_Desconto := 0;
   Vr_pago     := 0;
   Vr_Din      := 0;
   vr_Chq      := 0;
   Vr_Crt      := 0;
   Vr_Fat      := 0;
   Vr_Tkt      := 0;
   Vr_comissao := 0;
   Vr_Troco    := 0;
end;

{ TXML_Destinatario }

procedure TXML_Destinatario.Clear;
begin
   Id         := 0;
   CNPJ       := '';
   IE         := '';
   IM         := '';
   Nome       := '';
   Razaosocial:= '';
   Tel1       := '';
   Tel2       := '';
   Fax        := '';
   Celular    := '';
   Logradouro := '';
   Nmro       := '';
   Complem    := '';
   Bairro     := '';
   Cidade     := '';
   UF         := '';
   CUF        := 0;
   Cep        := 0;
   email      := '';
   CMunic     := 0;
end;

end.
