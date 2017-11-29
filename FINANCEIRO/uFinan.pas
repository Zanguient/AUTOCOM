unit uFinan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxGroupBox,
  ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, dxGDIPlusClasses;

type
  TfrmFinan = class(Tfrm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    CADASTROS1: TMenuItem;
    BancosAgnciasContas1: TMenuItem;
    PlanodeContas1: TMenuItem;
    LANAMENTOS1: TMenuItem;
    ContasaPagar1: TMenuItem;
    ContasaReceber1: TMenuItem;
    GESTO1: TMenuItem;
    CONTASAPAGAR2: TMenuItem;
    CONTASARECEBER2: TMenuItem;
    CONTASBANCRIAS1: TMenuItem;
    RELATRIOS1: TMenuItem;
    CENTRALDErELATRIOS1: TMenuItem;
    cxGroupBox1: TcxGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    btn3: TcxButton;
    btn2: TcxButton;
    bnt1: TcxButton;
    btn4: TcxButton;
    btn5: TcxButton;
    btn6: TcxButton;
    BoletoAvulso1: TMenuItem;
    BoletosporLote1: TMenuItem;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    ComposiodeParcelamento1: TMenuItem;
    PlanosdeContasAssociados1: TMenuItem;
    Chequesde3o: TMenuItem;
    PlanodeContas2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure BancosAgnciasContas1Click(Sender: TObject);
    procedure BoletoAvulso1Click(Sender: TObject);
    procedure BoletosporLote1Click(Sender: TObject);
    procedure CONTASARECEBER2Click(Sender: TObject);
    procedure ComposiodeParcelamento1Click(Sender: TObject);
    procedure CENTRALDErELATRIOS1Click(Sender: TObject);
    procedure CONTASBANCRIAS1Click(Sender: TObject);
    procedure PlanodeContas1Click(Sender: TObject);
    procedure PlanosdeContasAssociados1Click(Sender: TObject);
    procedure alonrio1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure CONTASAPAGAR2Click(Sender: TObject);
    procedure Chequesde3oClick(Sender: TObject);
    procedure PlanodeContas2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinan: TfrmFinan;

implementation

{$R *.dfm}

uses uDM, udm_ini, uFuncoes, uMD5Print, uAutocomConsts, uCadBan, uBoletoAvulso,
  uBoletoLote, uGestaoReceber, uParcelas, uMoviBanc, uCadPlanoContas,
  uCadPlanoContaAssoc, uLancar_apagar, uGestaoAPagar, uLanca_chq_terc,
  uGestaoPlanoContas;

procedure TfrmFinan.alonrio1Click(Sender: TObject);
begin
   DM.Q1.Open('select count(*) from finan_banco_conta');

   if DM.Q1.Fields[0].AsInteger = 0 then
      raise Exception.Create('Não existe conta bancária cadastrada no sistema.');

end;

procedure TfrmFinan.BancosAgnciasContas1Click(Sender: TObject);
begin
   frmCadban := TfrmCadban.Create(self);
   frmCadban.tag  := tag; //passa a proporção do height para o tag do form criado
   frmCadban.ShowModal;
end;

procedure TfrmFinan.BoletoAvulso1Click(Sender: TObject);
begin
   frmBoletoAvulso := TfrmBoletoAvulso.Create(self);
   frmBoletoAvulso.tag  := tag; //passa a proporção do height para o tag do form criado
   frmBoletoAvulso.ShowModal;
end;

procedure TfrmFinan.BoletosporLote1Click(Sender: TObject);
begin
   frmBolLote := TfrmBolLote.Create(Self);
   frmBolLote.tag  := tag; //passa a proporção do height para o tag do form criado
   frmBolLote.ShowModal;
end;

procedure TfrmFinan.CENTRALDErELATRIOS1Click(Sender: TObject);
begin
   DM.Abrir_Central_Relat('-a', DM_INI.ini.inifilename);
end;

procedure TfrmFinan.Chequesde3oClick(Sender: TObject);
begin
   frmLanca_chq_terc := tfrmLanca_chq_terc.Create(self);
   frmLanca_chq_terc.ShowModal;

end;

procedure TfrmFinan.ComposiodeParcelamento1Click(Sender: TObject);
begin
   frmParcelas := TfrmParcelas.Create(Self);
   frmParcelas.tag  := tag; //passa a proporção do height para o tag do form criado
   frmParcelas.ShowModal;
end;

procedure TfrmFinan.ContasaPagar1Click(Sender: TObject);
begin
   frmLancar_apagar := TfrmLancar_apagar.Create(Self);
   frmLancar_apagar.tag  := tag; //passa a proporção do height para o tag do form criado
   frmLancar_apagar.ShowModal;
end;

procedure TfrmFinan.CONTASAPAGAR2Click(Sender: TObject);
begin
   frmGestaoAPagar := TfrmGestaoAPagar.Create(Self);
   frmGestaoAPagar.tag  := tag; //passa a proporção do height para o tag do form criado
   frmGestaoAPagar.ShowModal;
end;

procedure TfrmFinan.CONTASARECEBER2Click(Sender: TObject);
begin
   frmGestaoReceber := TfrmGestaoReceber.Create(Self);
   frmGestaoReceber.tag  := tag; //passa a proporção do height para o tag do form criado
   frmGestaoReceber.ShowModal;
end;

procedure TfrmFinan.CONTASBANCRIAS1Click(Sender: TObject);
begin
   DM.Q1.Open('select count(*) from finan_banco_conta');

   if DM.Q1.Fields[0].AsInteger = 0 then
      raise Exception.Create('Não existe conta bancária cadastrada no sistema.');

   frmMovBanc := TfrmMovBanc.Create(Self);
   frmMovBanc.tag  := tag; //passa a proporção do height para o tag do form criado
   frmMovBanc.ShowModal;
end;

procedure TfrmFinan.FormCreate(Sender: TObject);
var
   i,m: integer;
begin
   inherited;
   CAPTION := 'MÓDULO FINANCEIRO ' + C_117;

   for i := 0 to ComponentCount - 1 do  //varre o menu
   begin
      if (Components[i] is TMenuItem) then
      if (Components[i] as TMenuItem).Tag > 0 then
      begin
         for m := 0 to ComponentCount - 1 do
         begin
            if (Components[m] is TcxButton) then
            if (Components[m] as TcxButton).Tag = (Components[i] as TMenuItem).Tag then
            begin
                (Components[m] as TcxButton).Caption := (Components[i] as TMenuItem).Caption;
                (Components[m] as TcxButton).OnClick := (Components[i] as TMenuItem).OnClick;
            end;
         end;
      end;
   end;
end;

procedure TfrmFinan.PlanodeContas1Click(Sender: TObject);
begin
   frmCadPlanoContas := TfrmCadPlanoContas.Create(Self);
   frmCadPlanoContas.tag  := tag; //passa a proporção do height para o tag do form criado
   frmCadPlanoContas.ShowModal;
end;

procedure TfrmFinan.PlanodeContas2Click(Sender: TObject);
begin
   frmGestaoPlanoContas := TfrmGestaoPlanoContas.Create(self);
   frmGestaoPlanoContas.ShowModal;
end;

procedure TfrmFinan.PlanosdeContasAssociados1Click(Sender: TObject);
begin
   frmCadPlanoContasAssoc := TfrmCadPlanoContasAssoc.Create(Self);
   frmCadPlanoContasAssoc.tag  := tag; //passa a proporção do height para o tag do form criado
   frmCadPlanoContasAssoc.ShowModal;
end;

end.







