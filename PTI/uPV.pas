unit uPV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Data.DB,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxLabel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinsCore, dxSkinCaramel,
  dxSkinscxPCPainter;

type
  Tfrmpv = class(Tfrm)
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    DS1: TDataSource;
    tbvid: TcxGridDBColumn;
    tbvcoa: TcxGridDBColumn;
    tbvdata: TcxGridDBColumn;
    tbvhora: TcxGridDBColumn;
    tbvvalor: TcxGridDBColumn;
    tbvgerar: TcxGridDBColumn;
    tbvcanc: TcxGridDBColumn;
    btnGerar: TcxButton;
    T1: TFDMemTable;
    T1data: TDateField;
    T1hora: TStringField;
    T1valor: TCurrencyField;
    T1canc: TBooleanField;
    T1gerar: TBooleanField;
    T1pv: TStringField;
    T1id: TIntegerField;
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnGerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Popular_T1(tipo: integer = 0);//pode se -1 ou -2
  end;

var
  frmpv: Tfrmpv;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, udm_ini, uDM_PDV, uFuncoes, uMD5Print, updv, uConcluir, ACBRDevice, uDMecf;

procedure Tfrmpv.btnGerarClick(Sender: TObject);
var
   aliq: string;
   n: currency;
   erro, canc: boolean;
   i: integer;
begin
   if T1.IsEmpty then
      exit;

   if T1.State = dsEdit then
      T1.Post;

   T1.DisableControls;
   T1.First;

   while not T1.Eof do
   begin
      Erro := False;
      if T1gerar.Value then
      begin
         //abre a PV referente ao id de T1

         DM_PDV.modo_pv := True;
         frmPDV.Popup('Abrindo CF PV...');
         Log('PV','Gerar', ' Abrindo CF PV...');
         frmPDV.btnF10.Click;//abre a venda
         Log('PV','Gerar', ' CF aberto...');
         DM.QVenda.Open('select * from venda where id=' + Texto_Mysql(T1id.Value));
         Log('PV','Gerar', 'Abrindo venda ' + Texto_Mysql(T1id.Value));
         canc           := DM.QVendacancelado.Value = 'S';
         i              := DM.QVendaid.Value;

         DM_PDV.modo_pv := False;

         //passa o CV e a PV para a venda local
         DM_PDV.TVenda.Edit;

         if DM.QVendacancelado.Value = 'S' then
         begin
            DM_PDV.TVendacv.AsString := C_ST_VAZIO;
         end
         else
            DM_PDV.TVendacv.AsString := DM.QVendacv.AsString;

         DM_PDV.TVendapv.value       := DM.QVendapv.Value;
         DM_PDV.TVendavendedor.Value := DM_PDV.TVendedorid.Value;
         DM_PDV.TVenda.Post;

         Application.ProcessMessages;
         DM.QVenda_Item.Close;
         DM.QVenda_Item.Open;
         DM.QVenda_Item.First;

         if DM.QVenda_Item.IsEmpty then
            Log('PV','Registrando Itens...', 'Sem itens');

         frmPDV.Popup('Registrando Itens...');
         Log('PV','Registrando Itens...', 'inicio');
         //registra os itens no cupom
         while not DM.QVenda_Item.Eof do
         begin
            try
               n := StrToFloatDef(DM.QVenda_Itemecf_aliq.AsString,0);

               if n = 0 then
                  aliq := DM.QVenda_Itemecf_aliq.AsString
               else
               begin
                  n    := n/100;
                  aliq := FloatToStr(n);
               end;

               if not DM_PDV.TProd.Locate('id', DM.QVenda_ItemcProd.Value, []) then
               begin
                  Log('PV','Item', 'ID ' + DM.QVenda_ItemcProd.AsString + ' não encontrado na base local.');
                  raise Exception.Create('PV - Produto ' + DM.QVenda_ItemcProd.AsString + ' não existe na base local.');
               end;

               frmPDV.ECF.VendeItem(DM.QVenda_ItemcEAN.AsString,
                                    DM.QVenda_ItemxProd.AsString,
                                    aliq,
                                    DM.QVenda_ItemqCom.AsCurrency,
                                    DM.QVenda_ItemvUnCom.AsCurrency,
                                    DM.QVenda_ItemvDesc.AsCurrency,
                                    Copy(DM.QVenda_ItemuCom.AsString,1,2),
                                   '$',
                                   'D'
               );

               if DM.QVenda_ItemCFOP.AsString = 'CANC' then
                  frmPDV.ECF.CancelaItemVendido(DM.QVenda_ItemnItem.Value);

            except
               On E: Exception do
               begin
                  frmPDV.Popup(DM.QVenda_ItemxProd.AsString + ' ERRO: ' + E.Message);
                  log('PDV_Err','PV-VendeItem-EXCEPTION', E.Message);
                  erro := True;
               end;
            end;

            if erro then
               break;

            DM.QVenda_Item.Next;
         end;//fim do loop QVenda_Item
          Log('PV','Registrando Itens...', 'Fim');
         DM.QVenda.Open('select * from venda where id=' + Texto_Mysql(T1id.Value));
         //registra o nº da PV no ECF
         frmPDV.ECF.InfoRodapeCupom.PreVenda := LFill(DM.QVendapv.AsString, 10,'0');

         //conclui a venda
         frmConcluir := TfrmConcluir.Create(self);
         frmConcluir.Show;
         n_Total := 0;

         if not (erro) then
         begin//seta o cliente, localiza e registra os totalizadores

            if not DM_PDV.TCli.Locate('id', Iif(DM.QVendacliente.AsInteger<=0, 1, DM.QVendacliente.Value), []) then
            begin
               ShowMessage('Cliente não encontrado na base local');
               log('PDV_Err', 'PV-Cliente', 'ID ' + DM.QVendacliente.AsString + ' não encontrado na base local.');
               erro := True;
            end;
         end;

         if not erro then
         begin
            DM_PDV.TVenda.Edit;
            DM_PDV.TVendacliente.Value := DM_PDV.TCliid.Value;
            DM_PDV.TVenda.Post;

            if (DM.QVendavr_desconto.Value > 0)and(frmConcluir.TFPag.Locate('tipo','DES', [])) then
            begin
               frmConcluir.TFPag.Edit;
               frmConcluir.TFPagvalor.Value := DM.QVendavr_desconto.Value;
               frmConcluir.TFPag.Post;
            end;
            if (DM.QVendavr_din.Value > 0)and(frmConcluir.TFPag.Locate('tipo','DIN', [])) then
            begin
               frmConcluir.TFPag.Edit;
               frmConcluir.TFPagvalor.Value := DM.QVendavr_din.Value;
               frmConcluir.TFPag.Post;
            end;
            if (DM.QVendavr_chq.Value > 0)and(frmConcluir.TFPag.Locate('tipo','CHQ', [])) then
            begin
               frmConcluir.TFPag.Edit;
               frmConcluir.TFPagvalor.Value := DM.QVendavr_chq.Value;
               frmConcluir.TFPag.Post;
            end;
            if (DM.QVendavr_card.Value > 0)and(frmConcluir.TFPag.Locate('tipo','CRT', [])) then
            begin
               frmConcluir.TFPag.Edit;
               frmConcluir.TFPagvalor.Value := DM.QVendavr_card.Value;
               frmConcluir.TFPag.Post;
            end;
            if (DM.QVendavr_tkt.Value > 0)and(frmConcluir.TFPag.Locate('tipo','TKT', [])) then
            begin
               frmConcluir.TFPag.Edit;
               frmConcluir.TFPagvalor.Value := DM.QVendavr_tkt.Value;
               frmConcluir.TFPag.Post;
            end;
         end;
         //finaliza a conclusão
         if erro then
            frmConcluir.Cancelar
         else
         begin
            frmConcluir.btnF11.Click;
            //se a PV esta cancelada, cancela o CF
            if canc then
            begin
               DM_PDV.Cancelar_Venda(False); //indica que nao é atual, pois ja foi fechada
               frmPDV.ECF.CancelaCupom;
            end;  //aqui faz via sql por perder a ref com DM.Qvenda
            DM.ExecSQL('delete from venda where id=' + Texto_Mysql(i));//apaga a PV da tabela venda
         end;
      end;
      //se houve erro no processo, interrompe
      if erro then
         break;
      T1.Next;
   end;//fim do loop T1

   frmPDV.Popup('Fim da PV.');
   frmPDV.Verificar_Status_PDV;
   btnSair.Click;//fecha a tela
end;

procedure Tfrmpv.FormShow(Sender: TObject);
begin
   inherited;
   DM_ECF.CallMenuFiscal;
   Popular_T1;
end;

procedure Tfrmpv.Popular_T1(tipo: integer);
begin
   case Tipo of //marca como cancelado
      //redução no fim do dia
    -1: DM.ExecSQL('update venda set cancelado="S" where tipo="PV" and data < ' + data_My(Trunc(DM_ECF.Relogio)) + ';');
    //redução no inicio do dia
    -2: DM.ExecSQL('update venda set cancelado="S" where tipo="PV" and data < ' + data_My(Trunc(DM_ECF.Relogio)-1) + ';');
   end;

   DM.QVenda.Open('select * from venda where tipo="PV"  order by coa');//seleciona as vendas PV

   if DM.QVenda.IsEmpty then
      exit;

   T1.Open;
   T1.DisableControls;

   while not DM.QVenda.Eof do//preenche T1
   begin
      T1.Append;
      T1id.Value    := DM.QVendaid.Value;
      T1pv.AsString := LFill(DM.QVendapv.AsString,10,'0');
      T1data.Value  := DM.QVendadata.Value;
      T1hora.Value  := DM.QVendahora.Value;
      T1valor.Value := DM.QVendavalor.Value; //se tipo = -1 ou -2 cancelar todos
      T1canc.Value  := Iif((DM.QVendacancelado.Value = 'S'), True, False);
      T1gerar.Value := Iif((DM.QVendacancelado.Value = 'S'), True, False);
      T1.Post;
      DM.QVenda.Next;
   end;

   T1.First;
   T1.EnableControls;
end;

procedure Tfrmpv.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   if AViewInfo.GridRecord.Values[tbvcanc.Index]=True then //item cancelado
    begin
       ACanvas.Canvas.Brush.Color := $008695EA;
       ACanvas.Canvas.Font.Color := clBlack;
    end
end;

end.
