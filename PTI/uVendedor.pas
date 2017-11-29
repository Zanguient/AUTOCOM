unit uVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, Data.DB,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls;

type
  TfrmVendedor = class(Tfrm)
    edsenha: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendedor: TfrmVendedor;

implementation

{$R *.dfm}

uses uDM {$IFDEF PDV}, uDM_PDV{$ENDIF}, uFuncoes;

procedure TfrmVendedor.cxButton1Click(Sender: TObject);
begin
   {$IFDEF PDV}
      DM_PDV.TVendedor.OPEN('select * from vendedor where senha=' + Texto_Mysql(edsenha.Text));

      if not DM_PDV.TVendedor.isempty then
      begin
         if (MessageBox(0, PWideChar(DM_PDV.TVendedornome.AsString + #13+#10+'Confirma?'), 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idNo) then
         begin
            DM_PDV.TVendedor.Close;
            exit;
         end;            
      end
      else
      begin
         edsenha.Clear;
         edsenha.SetFocus;
         raise Exception.Create('Vendedor não encontrado.');
      end;
   {$ELSE IF}
      DM.QVendedor.OPEN('select * from vendedor where senha=' + Texto_Mysql(edsenha.Text));

      if not DM.QVendedor.isempty then
      begin
         if (MessageBox(0, PWideChar(DM.QVendedornome.AsString +#13+#10+'Confirma?'), 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idNo) then
         begin
            DM.QVendedor.Close;
            exit;
         end; 
      end
      else
      begin
         edsenha.Clear;
         edsenha.SetFocus;
         raise Exception.Create('Vendedor não encontrado.');
      end;
   {$ENDIF}
   
   btnSair.Click;
end;

end.
