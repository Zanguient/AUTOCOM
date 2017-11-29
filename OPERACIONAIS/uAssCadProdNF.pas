unit uAssCadProdNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, Data.DB,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxPC, ACBrBase, ACBrEnterTab,
  Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxCheckBox,
  cxLabel, cxDBLabel, cxGroupBox, cxRadioGroup;

type
  TfrmAss = class(Tfrm)
    RGOpcao: TcxRadioGroup;
    edSit: TcxDBLabel;
    edStatus: TcxDBLabel;
    btnProx: TcxButton;
    procedure btnProxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAss: TfrmAss;

implementation

{$R *.dfm}

uses uDM_NF_Entr, uCadEstoque, uDM, uAutocomConsts, uFuncoes, uMain, uEntradaNF;

procedure TfrmAss.btnProxClick(Sender: TObject);
var
   s, ss: string;
   i: integer;
begin
   if RGOpcao.ItemIndex = 0 then//pesquisar o item
   begin
      frmCadEstoque := TfrmCadEstoque.Create(Self);
      frmCadEstoque.TabCad.TabVisible := False;
      frmCadEstoque.btnReplicar.Hide;
      frmCadEstoque.btnAssociar.Show;
      frmCadEstoque.TabPesq.TabVisible := True;
      frmCadEstoque.pgCad.ActivePage := frmCadEstoque.TabPesq;

      if frmCadEstoque.ShowModal = mrOk then
      if DM.QEstoque.Active then
      if not DM.QEstoque.IsEmpty then
      begin
               //associa ambos códigos, pois pode ocorrer cProd repetido com ean diferente
         ss := DM_NF_Entr.cdNF_ItemcProd.AsString + Trim(DM_NF_Entr.cdNF_ItemcEAN.AsString);
         i  := DM_NF_Entr.cdNF_Itemid.Value;

         DM_NF_Entr.cdNF_Item.DisableControls;
         DM_NF_Entr.cdNF_Item.First;

         //procura por todos com mesmo cProd, pois pode ter mais de uma ocorrência do mesmo produto
         while not DM_NF_Entr.cdNF_Item.Eof do
         begin
            if DM_NF_Entr.cdNF_Itemcprod.AsString + Trim(DM_NF_Entr.cdNF_ItemcEAN.AsString) = ss then
            begin
               DM_NF_Entr.cdNF_Item.Edit;
               DM_NF_Entr.cdNF_Itemid_prod.Value   := DM.QEstoqueid.Value;
               DM_NF_Entr.cdNF_ItemVR_VENDA.Value  := DM.QEstoquevrvenda_vista.Value;
               DM_NF_Entr.cdNF_ItemULT_CUSTO.Value := DM.QEstoquevrcusto_real.Value;
               //os demais dados sao setados no evento beforepost
               DM_NF_Entr.cdNF_Item.Post;
            end;

            DM_NF_Entr.cdNF_Item.Next;
         end;

         DM_NF_Entr.cdNF_Item.Locate('id', i,[]);
         DM_NF_Entr.cdNF_Item.EnableControls;

     // if not frmEntradaNF.ItemDuplicado(DM.QEstoqueid.Value) then
      //begin
     {    DM_NF_Entr.cdNF_Item.Edit;
         DM_NF_Entr.cdNF_Itemid_prod.Value   := DM.QEstoqueid.Value;
         DM_NF_Entr.cdNF_ItemVR_VENDA.Value  := DM.QEstoquevrvenda_vista.Value;
         DM_NF_Entr.cdNF_ItemULT_CUSTO.Value := DM.QEstoquevrcusto_real.Value;
         DM_NF_Entr.cdNF_Item.Post; }
         FreeAndNil(frmCadEstoque);
         Close;
      end;
   end
   else
   if RGOpcao.ItemIndex = 1 then//cadastrar o item
   begin
      frmCadEstoque     := TfrmCadEstoque.Create(Self);
      frmCadEstoque.tag := Trunc(frmMain.h_proporc);
      //frmCadEstoque.TabPesq.TabVisible := False;
      frmCadEstoque.btnReplicar.Hide;
      frmCadEstoque.btnAssociar.Show;
      frmCadEstoque.Editando := True;//flag para forçar o qestoque ao modo edição
      DM.QEstoque.Insert;

      //remove o 0 no inicio, se houver
      s := DM_NF_Entr.cdNF_ItemcEAN.AsString;

      if Length(s) = 14 then
         s := copy(s,2,13);

      if s <> C_ST_VAZIO then
         DM.QEstoquecod_gtin.AsString  := s;

      DM.QEstoquenome.Value         := DM_NF_Entr.cdNF_ItemxProd.Value;
      DM.QEstoquevrcusto.Value      := DM_NF_Entr.cdNF_ItemvUnCom.Value; //custo sem agregações
      DM.QEstoquevrcusto_real.Value := DM_NF_Entr.cdNF_ItemVR_CUSTO.Value; //custo com agregações

      if DM.QEstoquevrcusto.Value > DM.QEstoquevrcusto_real.Value then
         DM.QEstoquevrcusto.Value := DM_NF_Entr.cdNF_ItemVR_CUSTO.Value;

      DM.QEstoqueunidade.Value      := DM.RetornarUnidade(DM_NF_Entr.cdNF_ItemuCom.AsString);
      DM.QEstoqueorigem.Value       := DM_NF_Entr.cdNF_ItemICMS_orig.Value;
      DM.QEstoquealiq_icms.Value    := DM.RetornarAliqICMS(DM_NF_Entr.cdNF_ItemICMS_CST_inform.Value, DM_NF_Entr.cdNF_ItemICMS_pICMS.Value);
      DM.QEstoquencm.Value          := DM_NF_Entr.cdNF_ItemNCM.Value;
      DM_NF_Entr.Gravar_CST_CSOSN;  //coloca o cst conforme o emitente, pois é a unica fonte de informação...

      //após o cadastro, se associou...
      if frmCadEstoque.ShowModal = mrOk then
      if DM.QEstoque.Active then
      if not DM.QEstoque.IsEmpty then
      begin
         DM.QEstoque.Refresh;//para obter o novo id
         //associa ambos códigos, pois pode ocorrer cProd repetido com ean diferente
         ss := DM_NF_Entr.cdNF_ItemcProd.AsString + Trim(DM_NF_Entr.cdNF_ItemcEAN.AsString);
         i  := DM_NF_Entr.cdNF_Itemid.Value;

         DM_NF_Entr.cdNF_Item.DisableControls;
         DM_NF_Entr.cdNF_Item.First;
         //procura por todos com mesmo cProd, pois pode ter mais de uma ocorrência do mesmo produto
         while not DM_NF_Entr.cdNF_Item.Eof do
         begin
            if DM_NF_Entr.cdNF_Itemcprod.AsString + Trim(DM_NF_Entr.cdNF_ItemcEAN.AsString) = ss then
            begin
               DM_NF_Entr.cdNF_Item.Edit;
               DM_NF_Entr.cdNF_Itemid_prod.Value   := DM.QEstoqueid.Value;
               DM_NF_Entr.cdNF_ItemVR_VENDA.Value  := DM.QEstoquevrvenda_vista.Value;
               DM_NF_Entr.cdNF_ItemULT_CUSTO.Value := DM.QEstoquevrcusto_real.Value;
               //os demais dados sao setados no evento beforepost
               DM_NF_Entr.cdNF_Item.Post;
            end;

            DM_NF_Entr.cdNF_Item.Next;
         end;

         DM_NF_Entr.cdNF_Item.Locate('id', i,[]);
         DM_NF_Entr.cdNF_Item.EnableControls;
         FreeAndNil(frmCadEstoque);
         Close;
      end;
   end;
end;

end.
