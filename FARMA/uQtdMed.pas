unit uQtdMed;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit, cxLabel, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls;

type
  TfrmQtdMed = class(Tfrm)
    cxLabel1: TcxLabel;
    edQtd: TcxCurrencyEdit;
    pnlpfp: TPanel;
    cxLabel2: TcxLabel;
    edQtPrescr: TcxCurrencyEdit;
    btnF11: TcxButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnF11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQtdMed: TfrmQtdMed;

implementation

{$R *.dfm}

uses uFarmaPop2, uDM_PDV;

procedure TfrmQtdMed.btnF11Click(Sender: TObject);
begin
   if edQtd.Value <=0 then
      raise Exception.Create('Informe a quantidade.');

   if edQtPrescr.Value <=0 then
      raise Exception.Create('Informe a prescrição.');

   frmFarmaPop2.T1.AppendRecord([frmFarmaPop2.T1.RecordCount + 1,
                                 DM_PDV.TProdcod_gtin.AsString,
                                 DM_PDV.TProdsigla_unid.AsString,//unid
                                 edQtPrescr.Value,//qt prescrita diaria
                                 0, //qt autorizada
                                 0, //vr pac
                                 DM_PDV.TProdmedicam_vrms.Value*DM_PDV.TProdmedic_qtcaixa.Value,//preco do pfp no cad produto
                                 0,//vr ms
                                 edQtd.Value*DM_PDV.TProdmedic_qtcaixa.Value,//qt solicitada
                                 DM_PDV.TProdid.Value,
                                 edQtd.Value]//id produto
   );

   btnSair.Click;
end;

procedure TfrmQtdMed.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   if KEY = VK_F11 then
      btnF11.Click;
end;

end.
