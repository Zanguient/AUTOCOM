unit uSpedpis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCheckBox, cxDropDownEdit,
  cxTextEdit, cxMaskEdit, cxCalendar, cxLabel;

type
  TfrmSpedPIS = class(Tfrm)
    cxLabel1: TcxLabel;
    D1: TcxDateEdit;
    D2: TcxDateEdit;
    cmbVersao: TcxComboBox;
    cxLabel2: TcxLabel;
    cmbTipoEscr: TcxComboBox;
    cxLabel3: TcxLabel;
    lblStatus: TcxLabel;
    cbarq: TcxCheckBox;
    cmbIncid: TcxComboBox;
    cxLabel4: TcxLabel;
    btnGerar: TcxButton;
    cxLabel5: TcxLabel;
    edRec: TcxTextEdit;
    cmbAprop: TcxComboBox;
    cxLabel6: TcxLabel;
    cmbTipo_contrib: TcxComboBox;
    cxLabel7: TcxLabel;
    cmbCriterio: TcxComboBox;
    cxLabel8: TcxLabel;
    cmbSitEsp: TcxComboBox;
    cxLabel9: TcxLabel;
    procedure cmbTipoEscrClick(Sender: TObject);
    procedure cmbIncidClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSpedPIS: TfrmSpedPIS;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, udm_ini, uDM_SPED, uFuncoes, uDM_SPED_PIS;

procedure TfrmSpedPIS.btnGerarClick(Sender: TObject);
var
   st: string;
begin
   D1.PostEditValue;
   D2.PostEditValue;

   if(D1.Date > D2.date)or(D1.Date <=0) then
      raise Exception.Create('Período incorreto.');

   if cmbVersao.ItemIndex <0 then
      raise Exception.Create('Informe a versão do Layout.');

   if (edRec.Enabled)and(Trim(edRec.Text)='') then
      raise Exception.Create('Informe o nº do recibo da escrituração anterior.');

   if (cmbAprop.Enabled)and(cmbAprop.ItemIndex<0) then
      raise Exception.Create('Informe o método de aprop. cred. comuns.');

   if (cmbCriterio.Enabled)and(cmbCriterio.ItemIndex<0) then
      raise Exception.Create('Informe o critério de escrituração.');

   lblStatus.Caption := 'Gerando Bloco 0...';

   DM_SPED_PIS.Gerar_Bloco0(D1.Date,
                           D2.Date,
                           '',
                           edRec.Text,
                           False,
                           1000,
                           StrToInt(cmbVersao.Text),
                           cmbTipoEscr.ItemIndex,
                           cmbSitEsp.ItemIndex,
                           cmbIncid.ItemIndex,
                           cmbAprop.ItemIndex,
                           cmbTipo_contrib.ItemIndex,
                           cmbCriterio.ItemIndex
   );

   Application.ProcessMessages;

//outros blocos

   Application.ProcessMessages;
   lblStatus.Caption := 'Gravando blocos...';
   DM_SPED_PIS.Gravar_Blocos;
   lblStatus.Caption := '';
   ShowMessage('Arquivo gerado: ' + String(DM_SPED_PIS.ACBrSPEDPisCofins1.Path) + String(DM_SPED_PIS.ACBrSPEDPisCofins1.Arquivo));

   if cbarq.Checked then
   begin
     st := 'Explorer "' + String(DM_SPED_PIS.ACBrSPEDPisCofins1.Path) +'"';
     WinExec(PAnsiChar(st),SW_ShowNormal);
   end;
end;

procedure TfrmSpedPIS.cmbIncidClick(Sender: TObject);
begin
   cmbAprop.Enabled    := cmbIncid.ItemIndex in[0,2];
   cmbCriterio.Enabled := cmbIncid.ItemIndex = 1;
end;

procedure TfrmSpedPIS.cmbTipoEscrClick(Sender: TObject);
begin
   edRec.Enabled := cmbTipoEscr.ItemIndex = 1;
end;

procedure TfrmSpedPIS.FormCreate(Sender: TObject);
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
   DM_SPED_PIS := TDM_SPED_PIS.Create(self);
end;

end.
