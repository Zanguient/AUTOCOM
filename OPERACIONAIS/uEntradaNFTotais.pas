unit uEntradaNFTotais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, cxLabel, cxGroupBox, DB, cxMemo;

type
  TfrmEntradaNF_Totais = class(Tfrm)
    Label11: TcxLabel;
    Label13: TcxLabel;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    Label21: TcxLabel;
    Label22: TcxLabel;
    cxDBCalcEdit1: TcxDBTextEdit;
    cxDBCalcEdit2: TcxDBTextEdit;
    cxDBCalcEdit3: TcxDBTextEdit;
    cxDBCalcEdit4: TcxDBTextEdit;
    cxDBCalcEdit5: TcxDBTextEdit;
    cxDBCalcEdit6: TcxDBTextEdit;
    cxDBCalcEdit7: TcxDBTextEdit;
    cxDBCalcEdit8: TcxDBTextEdit;
    cxDBCalcEdit9: TcxDBTextEdit;
    cxDBCalcEdit10: TcxDBTextEdit;
    cxDBCalcEdit11: TcxDBTextEdit;
    Label44: TLabel;
    btnGravar: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label23: TcxLabel;
    Label24: TcxLabel;
    Label25: TcxLabel;
    cxDBCalcEdit12: TcxDBTextEdit;
    cxDBCalcEdit13: TcxDBTextEdit;
    cxDBCalcEdit14: TcxDBTextEdit;
    Label26: TcxLabel;
    cxDBCalcEdit15: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    Label27: TcxLabel;
    Label28: TcxLabel;
    Label29: TcxLabel;
    cxDBCalcEdit16: TcxDBTextEdit;
    cxDBCalcEdit17: TcxDBTextEdit;
    cxDBCalcEdit18: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxLabel1: TcxLabel;
    cxDBMemo2: TcxDBMemo;
    cxLabel2: TcxLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure cxDBCalcEdit7PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntradaNF_Totais: TfrmEntradaNF_Totais;

implementation

{$R *.dfm}

uses uDM_NF_Entr, uEntradaNF;

procedure TfrmEntradaNF_Totais.btnGravarClick(Sender: TObject);
begin
   DM_NF_Entr.cdNF.Post;
   btnSair.Click;
end;

procedure TfrmEntradaNF_Totais.cxDBCalcEdit7PropertiesEditValueChanged(Sender: TObject);
begin
   if (DM_NF_Entr.cdNF.State in [dsEdit, dsInsert]) then
      frmEntradaNF.Calcular_Valor_NF;
end;

end.
