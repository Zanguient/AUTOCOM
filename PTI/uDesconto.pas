unit uDesconto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxCurrencyEdit, cxLabel;

type
  TfrmDesconto = class(Tfrm)
    lblT: TcxLabel;
    edDescU: TcxCurrencyEdit;
    edDescT: TcxCurrencyEdit;
    lblU: TcxLabel;
    btnF11: TcxButton;
    procedure DescUPropertiesChange(Sender: TObject);
    procedure edDescTPropertiesChange(Sender: TObject);
    procedure btnF11Click(Sender: TObject);
    procedure edDescUKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDesconto: TfrmDesconto;

implementation

{$R *.dfm}

uses updv, uAutocomConsts, uDM_PDV, uFuncoes, udm_ini;

procedure TfrmDesconto.btnF11Click(Sender: TObject);
var
   vru,n: currency;
   perc: boolean;
begin
   if edDescU.Value <0 then
      raise Exception.Create('Desconto incorreto.');

   if edDescT.Value <0 then
      raise Exception.Create('Desconto incorreto.');

   vru  := DM_PDV.TProdvrvenda_vista.AsCurrency;
   perc := pos('%', lblT.Caption) > 0;
   n    := 0;

   if edDescU.Value > 0 then
   begin
      n := RetornaPercentual(vru, edDescU.Value);

      if (n > DM_INI.ini.StoredValue['max_desc_item'])and (not DM_PDV.Permissao) then
         raise Exception.Create('Desconto acima do permitido.');

      n := edDescU.Value * frmPDV.g_qtd;
   end
   else
   if edDescT.Value > 0 then
   begin
      if perc then
      begin
         if (edDescT.Value > DM_INI.ini.StoredValue['max_desc_item']) and (not DM_PDV.Permissao) then
            raise Exception.Create('Desconto acima do permitido.');

         n := Percentual((vru * frmPDV.g_qtd), edDescT.Value);  //calcula o % sobre o total
      end
      else
      begin
         n := RetornaPercentual((vru * frmPDV.g_qtd),edDescT.Value);

         if (n > DM_INI.ini.StoredValue['max_desc_item']) and (not DM_PDV.Permissao) then
            raise Exception.Create('Desconto acima do permitido.');

         n := edDescT.Value;
      end;
   end;

   frmPDV.g_desc_item := Arredonda(n, 2);
   btnSair.Click;
end;

procedure TfrmDesconto.DescUPropertiesChange(Sender: TObject);
begin
   if edDescU.Focused then
      edDescT.Clear;

   btnF11.Enabled := edDescU.Value + edDescT.Value > 0;
end;

procedure TfrmDesconto.edDescTPropertiesChange(Sender: TObject);
begin
   if edDescT.Focused then
      edDescU.Clear;

   btnF11.Enabled := edDescU.Value + edDescT.Value > 0;
end;

procedure TfrmDesconto.edDescUKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if key = 80{P} then
   begin
      lblT.Caption := 'Sobre o Valor Total (%)';
      edDescT.SetFocus;
      lblU.Hide;
      edDescU.Hide;
   end
   else
   if key = 86{V} then
   begin
      lblT.Caption := 'Sobre o Valor Total ($)';
      edDescU.Show;
      lblU.Show;
   end;
end;

procedure TfrmDesconto.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   if (key = VK_F11)and(btnf11.Enabled) then
      btnF11.Click;
end;

end.
