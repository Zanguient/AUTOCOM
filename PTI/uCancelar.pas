unit uCancelar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Data.DB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls,
  cxContainer, cxEdit, cxLabel, Vcl.DBCtrls, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls,ACBrDevice, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmCancelar = class(Tfrm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnF2: TcxButton;
    cxLabel12: TcxLabel;
    btnF3: TcxButton;
    edItemCanc: TcxComboBox;
    pnltrn: TPanel;
    btnF6: TcxButton;
    procedure edItemCancClick(Sender: TObject);
    procedure btnF3Click(Sender: TObject);
    procedure btnF2Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnF6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCancelar: TfrmCancelar;

implementation

{$R *.dfm}

uses uDM_PDV, updv, uMenu, uAutocomConsts, uFuncoes, utrn, udm_ini;

procedure TfrmCancelar.btnF2Click(Sender: TObject);
begin
   btnF2.Enabled := False;

   if (MessageBox(0, 'Deseja cancelar este item?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idNo) then
   begin
      btnSair.Click;
      exit;
   end;

   if(DM_INI.ini.StoredValue['operacoes_supervisionadas']) and (not DM_PDV.Permissao) then
      exit;

   if DM_PDV.TVenda_Item.Locate('nitem', edItemCanc.Text, []) then
   begin
      DM_PDV.Cancelar_Item;
      frmPDV.ECF.CancelaItemVendido(DM_PDV.TVenda_Itemnitem.AsInteger);
   end;

   btnSair.Click;
end;

procedure TfrmCancelar.btnF3Click(Sender: TObject);
var
   Est: TACBrECFEstado;
begin
   DM_PDV.TVenda.Last;

   if DM_PDV.TVendacancelado.AsString = 'S' then
   begin
      ShowMessage('Esta venda já está cancelada.');
      btnSair.Click;
      exit;
   end;

   Est := frmPDV.ECF.Estado;

   if Est = estLivre then
   begin
      if (MessageBox(0, 'Deseja cancelar a última venda?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idYes) then
      begin
         if(DM_INI.ini.StoredValue['operacoes_supervisionadas']) and (not DM_PDV.Permissao) then
            exit;

         btnF3.Enabled := False;

         if DM_PDV.Cancelar_Venda(False) then
            frmPDV.ECF.CancelaCupom;
      end;
   end
   else
   if Est in [estVenda, estPagamento] then
   begin
      if (MessageBox(0, 'Deseja cancelar a venda atual?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idYes) then
      begin
         btnF3.Enabled := False;

         if (not DM_PDV.TTrn.IsEmpty)and((DM_PDV.TTrnvr_liq.Value > 0)and(DM_PDV.TTrncrt.Value <> 'ANULADO')) then
         begin
            frmtrn := Tfrmtrn.Create(self);
            frmtrn.passo := 5;//passo 4 = anulação
            frmtrn.ShowModal;

            if Assigned(frmtrn) then
               FreeAndNil(frmtrn);
         end;

      //   if DM_PDV.Cancelar_Venda(True) then
            frmPDV.ECF.CancelaCupom;
      end;
   end;

   btnSair.Click;
end;

procedure TfrmCancelar.btnF6Click(Sender: TObject);
var
   s: string;
begin
   s := '';

   s := InputBox('CANCELAMENTO TRN', 'Informe o NSU impresso no cupom', s);
   if s <> '' then
   begin
      frmtrn := Tfrmtrn.Create(Self);
      frmtrn.g_nsu_adm := LFill(Number(s),12,'0');
      frmtrn.passo := 6;//passo 6 = cancelamento
      frmtrn.ShowModal;

      if Assigned(frmtrn) then
         FreeAndNil(frmtrn);

      btnSair.Click;
   end
   else
   raise Exception.Create('Informe corretamente o NSU impresso no cupom.');
end;

procedure TfrmCancelar.btnSairClick(Sender: TObject);
begin
   if Assigned(frmMenu) then
   try
      frmMenu.Close;
   finally
      ;
   end;
  inherited;
end;

procedure TfrmCancelar.edItemCancClick(Sender: TObject);
begin
  btnF2.Enabled := (Number(edItemCanc.Text) <> C_ST_VAZIO);
end;

procedure TfrmCancelar.FormCreate(Sender: TObject);
begin
   inherited;

   edItemCanc.Enabled := (DM_PDV.Ler_Estado_PDV = epVenda)and(DM_PDV.TVenda_Item.RecordCount > 1);

   if edItemCanc.Enabled then
   begin
      DM_PDV.TVenda_Item.DisableControls;
      DM_PDV.TVenda_Item.First;

      while not DM_PDV.TVenda_Item.Eof do
      begin
         if DM_PDV.TVenda_Itemecf_aliq.AsString <> 'CANC' then
            edItemCanc.Properties.Items.Append(DM_PDV.TVenda_Itemnitem.AsString);
            DM_PDV.TVenda_Item.Next;
      end;

      DM_PDV.TVenda_Item.EnableControls;
   end;
end;

procedure TfrmCancelar.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   case key of
      VK_F2 : if btnF2.Enabled then btnF2.Click;
      VK_F3 : if btnF3.Enabled then btnF3.Click;
      VK_F6 : if pnltrn.Visible then btnF6.Click;
   end;
end;

procedure TfrmCancelar.FormShow(Sender: TObject);
begin
   inherited;
   pnltrn.Visible := DM_INI.ini.StoredValue['modo_convenio_trn'];
end;

end.
