unit uSerieD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls;

type
  TfrmSerieD = class(Tfrm)
    edNF: TcxCurrencyEdit;
    bntF11: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure bntF11Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSerieD: TfrmSerieD;

implementation

{$R *.dfm}

uses uDM_PDV, updv, uDM;

procedure TfrmSerieD.bntF11Click(Sender: TObject);
begin
   if edNF.Value <=0 then
      raise Exception.Create('Informe o Nº da NF série D.');

   frmPDV.i_serieD := Trunc(edNF.Value);
   btnSair.Click;
end;

procedure TfrmSerieD.FormCreate(Sender: TObject);
begin
   inherited;
   if DM.Conectar then
   begin
      DM.Q1.Open('select if(max(serie_d)is null,0, max(serie_d))as seried from venda');
      edNF.Value := DM.Q1.Fields[0].AsInteger + 1;
   end;
end;

procedure TfrmSerieD.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if key = VK_F11 then
      bntF11.Click;
end;

end.
