unit uChqTroca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxLabel,
  ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls;

type
  TfrmChqTroca = class(Tfrm)
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChqTroca: TfrmChqTroca;

implementation

{$R *.dfm}

uses uLanca_chq_terc, uDM;

procedure TfrmChqTroca.cxButton1Click(Sender: TObject);
begin
   DM.Qfinan_ch_terc.Edit;
   DM.Qfinan_ch_tercdt_baixa.Value  := frmLanca_chq_terc.dtBx.Date;
   DM.Qfinan_ch_tercstatus.Value    := 'A';
   DM.Qfinan_ch_tercalinea.AsString := 'DEVOLVIDO AO PORTADOR.';
   DM.Qfinan_ch_terc.Post;

   dm.Inserir_Caixa('OUE',
                    'Troca do cheque cust. nº ' + DM.Qfinan_ch_tercnmro.AsString,
                    DM.Qfinan_ch_tercvalor.Value,
                    DM.Qfinan_ch_tercid.Value,
                    frmLanca_chq_terc.dtBx.Date,
                    now
   );
   DM.Qfinan_ch_terc.Refresh;
   btnSair.Click;
end;

end.
