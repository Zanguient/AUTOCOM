unit uSpedFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxTextEdit,
  cxMaskEdit, cxCalendar, cxLabel, cxCheckBox;

type
  TfrmSpedFiscal = class(Tfrm)
    btnGerar: TcxButton;
    cxLabel1: TcxLabel;
    D1: TcxDateEdit;
    D2: TcxDateEdit;
    cmbVersao: TcxComboBox;
    cxLabel2: TcxLabel;
    cmbFinalidade: TcxComboBox;
    cxLabel3: TcxLabel;
    lblStatus: TcxLabel;
    cbarq: TcxCheckBox;
    cmbMotivo: TcxComboBox;
    cxLabel4: TcxLabel;
    cbInvent: TcxCheckBox;
    procedure btnGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSpedFiscal: TfrmSpedFiscal;

implementation

{$R *.dfm}

uses uDM, udm_ini, uDM_SPED, uFuncoes;

procedure TfrmSpedFiscal.btnGerarClick(Sender: TObject);
var
   st: AnsiString;
begin
   D1.PostEditValue;
   D2.PostEditValue;

   if(D1.Date > D2.date)or(D1.Date <=0) then
      raise Exception.Create('Período incorreto.');

   if cmbFinalidade.ItemIndex <0 then
      raise Exception.Create('Informe a finalidade.');

   if cmbVersao.ItemIndex <0 then
      raise Exception.Create('Informe a versão do Layout.');

   with DM_Sped do
   begin
      lblStatus.Caption := 'Gerando Bloco 0...';
      Gerar_Bloco0(D1.Date, //dtini
                   D2.Date,//dtfim
                   '',    //arquivo
                   False, //concomitante
                   10000,    //linebuffer
                   StrToIntDef(cmbVersao.Text, 107),   //versao
                   cmbFinalidade.ItemIndex, //cod finalid
                   Number(cmbMotivo.Text)//motivo

      );
      Application.ProcessMessages;
      lblStatus.Caption := 'Gerando Bloco C...';
      Gerar_BlocoC(False);
      Application.ProcessMessages;
      lblStatus.Caption := 'Gerando Bloco D...';
      Gerar_BlocoD(False);
      Application.ProcessMessages;
      lblStatus.Caption := 'Gerando Bloco E...';
      Gerar_BlocoE(False);
      Application.ProcessMessages;
      lblStatus.Caption := 'Gerando Bloco G...';
      Gerar_BlocoG(False);
      Application.ProcessMessages;

      if cbInvent.Checked then
      begin
         lblStatus.Caption := 'Gerando Bloco H...';
         Gerar_BlocoH(False, cmbMotivo.ItemIndex);
         Application.ProcessMessages;
      end;

      lblStatus.Caption := 'Gerando Bloco 1...';
      Gerar_Bloco1(False);
      Application.ProcessMessages;
      lblStatus.Caption := 'Gravando blocos...';
      Gravar_Blocos;
      lblStatus.Caption := '';
      ShowMessage('Arquivo gerado: ' + String(ACBrSPEDFiscal1.Path) + String(ACBrSPEDFiscal1.Arquivo));
   end;

   if cbarq.Checked then
   begin
     st := 'Explorer "' + DM_Sped.ACBrSPEDFiscal1.Path +'"';
     WinExec(PAnsiChar(st),SW_ShowNormal);
   end;

   btnSair.Click;
end;

procedure TfrmSpedFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(DM_Sped);
   inherited;
end;

procedure TfrmSpedFiscal.FormCreate(Sender: TObject);
var
   y,m,d: word;
   data: TDate;
begin
   inherited;
   DecodeDate(Date,y,m,d);
   data := EncodeDate(y,m,1)-1;
   D2.Date := data;
   DecodeDate(Data,y,m,d);
   data := EncodeDate(y,m,1);
   D1.Date := data;
   DM_Sped := TDM_Sped.Create(Self);
end;

end.




