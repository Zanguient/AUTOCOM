unit uCancelar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, Data.DB;

type
  TfrmCancelar = class(Tfrm)
    Panel1: TPanel;
    btnF2: TcxButton;
    cxLabel12: TcxLabel;
    edItemCanc: TcxComboBox;
    Panel2: TPanel;
    btnF3: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edItemCancClick(Sender: TObject);
    procedure btnF3Click(Sender: TObject);
    procedure btnF2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCancelar: TfrmCancelar;

implementation

{$R *.dfm}

uses upv, uAutocomConsts, uFuncoes, uDM;

procedure TfrmCancelar.btnF2Click(Sender: TObject);
begin
   btnF2.Enabled := False;

   if (MessageBox(0, 'Deseja cancelar este item?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idNo) then
   begin
      btnSair.Click;
      exit;
   end;

   if frmPV.TVenda_Item.Locate('nitem', edItemCanc.Text, []) then
   begin
      if edItemCanc.Properties.Items.Count = 1 then//so tem um item cancelável. Neste caso, gera uma venda cancelada
      begin
         frmPV.Limpar_Venda;//gera uma venda cancelada se for PV ou apaga
      end
      else 
      begin
         if ini.StoredValue['modo'] = 0 then  //se é PV marca o item como cancelado
         begin
            frmPV.TVenda_Item.Edit;
            frmPV.TVenda_ItemCFOP.AsString := 'CANC';
            frmPV.TVenda_Item.Post;
         end
         else
            frmPV.TVenda_Item.Delete; //se NF, deleta o item
      end;
   end;

   btnSair.Click;
end;

procedure TfrmCancelar.btnF3Click(Sender: TObject);
begin//somente a venda em andamento é cancelada venda NF somente no gerencial/analise de vendas
   if (MessageBox(0, 'Deseja cancelar a venda atual?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;

   btnF3.Enabled := False;

   frmPV.Limpar_Venda;//gera uma venda cancelada
   btnSair.Click;
end;

procedure TfrmCancelar.edItemCancClick(Sender: TObject);
begin
  btnF2.Enabled := (Number(edItemCanc.Text) <> C_ST_VAZIO);
end;

procedure TfrmCancelar.FormCreate(Sender: TObject);
begin
  inherited;
   if not frmPV.TVenda_Item.IsEmpty then
   begin
      frmPV.TVenda_Item.DisableControls;
      frmPV.TVenda_Item.First;

      while not frmPV.TVenda_Item.Eof do
      begin
         if frmPV.TVenda_ItemCFOP.AsString <> 'CANC' then
            edItemCanc.Properties.Items.Append(frmPV.TVenda_Itemnitem.AsString);
            frmPV.TVenda_Item.Next;
      end;

      frmPV.TVenda_Item.EnableControls;
   end
   else
   edItemCanc.Enabled := False;
end;

procedure TfrmCancelar.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   case key of
      VK_F2: if btnF2.Enabled then btnF2.Click;
      VK_F3: if btnF3.Enabled then btnF3.Click;
   end;
end;

end.
