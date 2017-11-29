unit uMenuFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrm, ACBrEnterTab, rxPlacemnt, ComCtrls, cxGraphics, uFuncoes,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls, cxButtons, ExtCtrls,
  ACBrBase,ACBrECF, ACBrDevice, StrUtils, cxControls, cxContainer, cxEdit,
  cxLabel, cxTextEdit, cxGroupBox, cxRadioGroup, ACBrUtil, cxCurrencyEdit, Spin,
  ACBrECFClass, ACBrPAFClass, ACBrPAF, ACBrPAF_D, ACBrPAF_E, ACBrPAF_P,
  ACBrPAF_R, ACBrPAF_T, ACBrPaf_H, ACBrPAFRegistros, Math, ACBrEAD,
  ACBrSpedFiscal, DB, DBClient, uAutocomConsts, dxGDIPlusClasses, cxImage,
  Easysize;

type
  TfrmMenuFiscal = class(Tfrm)
    Panel1: TPanel;
    btnEsc: TcxButton;
    Pg1: TPageControl;
    TabMenu: TTabSheet;
    TabECF: TTabSheet;
    RGEcf: TRadioGroup;
    btnF11: TcxButton;
    Panel2: TPanel;
    CBBanco: TCheckBox;
    Panel3: TPanel;
    mECF: TMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    edFPgto: TcxTextEdit;
    lblHost: TcxLabel;
    btnFPag: TcxButton;
    RgMenuFisc: TcxRadioGroup;
    cbVinc: TCheckBox;
    TabSheet2: TTabSheet;
    btnAliq: TcxButton;
    edAliq: TcxCurrencyEdit;
    cbiss: TCheckBox;
    cxLabel1: TcxLabel;
    TabSheet3: TTabSheet;
    edRelGer: TcxTextEdit;
    btnRelGer: TcxButton;
    pgcMenuFiscalTipo: TPageControl;
    tbsMenuFiscalTipoData: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    edtDtInicial: TDateTimePicker;
    edtDtFinal: TDateTimePicker;
    tbsMenuFiscalTipoCOO: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    edtCOOInicial: TSpinEdit;
    edtCOOFinal: TSpinEdit;
    chkMenuFiscalGerarArquivo: TCheckBox;
    chkMenuFiscalCotepe1704: TCheckBox;
    btnF10: TcxButton;
    tbsMenuFiscalProd: TTabSheet;
    Label5: TLabel;
    EdEstoque: TEdit;
    BtnInsereProd: TButton;
    RgTipoProd: TRadioGroup;
    T1: TClientDataSet;
    T1id: TIntegerField;
    Sped1: TACBrSPEDFiscal;
    lblProd: TLabel;
    RgEstoque: TRadioGroup;
    cmbMov: TComboBox;
    RGVendaPer: TRadioGroup;
    Bar1: TStatusBar;
    RGTipoRel: TRadioGroup;
    pnlAguarde: TPanel;
    cxImage1: TcxImage;
    cxImage2: TcxImage;
    procedure FormShow(Sender: TObject);
    procedure btnEscClick(Sender: TObject);
    procedure TabECFHide(Sender: TObject);
    procedure btnF11Click(Sender: TObject);
    procedure btnFPagClick(Sender: TObject);
    procedure TabMenuHide(Sender: TObject);
    procedure btnAliqClick(Sender: TObject);
    procedure btnRelGerClick(Sender: TObject);
    procedure edAliqKeyPress(Sender: TObject; var Key: Char);
    procedure edtCOOInicialChange(Sender: TObject);
    procedure edtDtInicialChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RgMenuFiscClick(Sender: TObject);
    procedure tbsMenuFiscalProdShow(Sender: TObject);
    procedure BtnInsereProdClick(Sender: TObject);
    procedure T1AfterPost(DataSet: TDataSet);
    procedure T1BeforeClose(DataSet: TDataSet);
    procedure edRelGerPropertiesChange(Sender: TObject);
    procedure btnF10Click(Sender: TObject);
  private
    procedure LeFpag;
    procedure LeRelGer;
    procedure LeCNF;
    procedure LeAliq;
    procedure LMFC;
    procedure LMFS;
    procedure EMFD;
    procedure AMFD;
    procedure CAT52;
    function Arquivo(Prefixo: String): String;
    procedure MeiosPag;
    procedure IdentPaf;
    procedure ConfigPaf;
    procedure TabProd;
    procedure PreencherHeader(Header: TRegistroX1);
    procedure Estoque;
    procedure MovECF(d1, d2: Tdate; ecf: string);
    procedure ITP;
    procedure AbreTabCnfRnf;
  public
    ECF_Ativo: boolean;
  end;

var
  frmMenuFiscal: TfrmMenuFiscal;
  strArquivo: String;


implementation

uses uPDV, uDM, uTabFPag, uTabRelGerECF, uTabAliq, uDM_Serv, DMPaf;

{$R *.dfm}



function TfrmMenuFiscal.Arquivo(Prefixo: String): String;
begin
   Result := frmPDV.ECF.NumSerie;//pega os ultimos 5 dig do serial do ecf
   Result := Aqui(C_DIRFISCO, Prefixo + copy(Result, length(Result)-5, 5) +
             FormatDateTime(C_152, now) + '.txt');
   strArquivo := Result;
end;

procedure TfrmMenuFiscal.LeAliq;
var
   i: integer;
begin
   mECF.Lines.Clear;
   frmPDV.ECF.CarregaAliquotas;

   for i := 0 to frmPDV.ECF.Aliquotas.Count -1 do
   begin
      mECF.Lines.Append('Aliquota: '+ String(IntToStrZero(frmPDV.ECF.Aliquotas[i].Sequencia, 2))+
                        ' Indice: '+ frmPDV.ECF.Aliquotas[i].Indice +' -> '+
                        FloatToStrF(frmPDV.ECF.Aliquotas[i].Aliquota, ffNumber, 15,2) + ' '+
                        IfThen(frmPDV.ECF.Aliquotas[i].Tipo = 'T','ICMS', 'ISS')
      );
   end;

   if CBBanco.Checked then
   begin
      DM_PDV.ExecSQL(C_SQL9);
      DM_PDV.QAliq.Open;

      for i := 0 to frmPDV.ECF.Aliquotas.Count -1 do
      begin
         DM_PDV.QAliq.Append;
         DM_PDV.QAliqnome.AsString   := IfThen(frmPDV.ECF.Aliquotas[i].Tipo = 'T','ICMS ', 'ISS ') + FloatToStrF(frmPDV.ECF.Aliquotas[i].Aliquota, ffNumber, 15,2) + '%';
         DM_PDV.QAliqcod_if.AsString := String(IntToStrZero(Trunc(frmPDV.ECF.Aliquotas[i].Aliquota*100), 4));
         DM_PDV.QAliqicms.Value      := frmPDV.ECF.Aliquotas[i].Aliquota;
         DM_PDV.QAliqusa.Value       := 'S';
         DM_PDV.QAliqcod_prod.Value  := StrToInt(frmPDV.ECF.Aliquotas[i].Indice);
         DM_PDV.QAliq.Post;
      end;

      DM_PDV.QAliq.Append;
      DM_PDV.QAliqnome.Value   := 'SUBST TRIBUT';
      DM_PDV.QAliqcod_if.Value := 'FF';
      DM_PDV.QAliqicms.Value   := 0;
      DM_PDV.QAliqusa.Value    := 'S';
      DM_PDV.QAliqcod_prod.Value := 102;
      DM_PDV.QAliq.Post;

      DM_PDV.QAliq.Append;
      DM_PDV.QAliqnome.Value   := 'ISENTO';
      DM_PDV.QAliqcod_if.Value := 'II';
      DM_PDV.QAliqicms.Value   := 0;
      DM_PDV.QAliqusa.Value    := 'S';
      DM_PDV.QAliqcod_prod.Value := 101;
      DM_PDV.QAliq.Post;

      DM_PDV.QAliq.Append;
      DM_PDV.QAliqnome.Value   := 'NÃO INCIDENCIA';
      DM_PDV.QAliqcod_if.Value := 'NN';
      DM_PDV.QAliqicms.Value   := 0;
      DM_PDV.QAliqusa.Value    := 'S';
      DM_PDV.QAliqcod_prod.Value := 100;
      DM_PDV.QAliq.Post;

      DM_PDV.QAliq.Close;
      DM_PDV.QAliq.Open;

      frmTabAliq := TfrmTabAliq.Create(self);
      frmTabAliq.ShowModal;
      FreeAndNil(frmTabAliq);
   end;
end;

procedure TfrmMenuFiscal.btnAliqClick(Sender: TObject);
var
   i: integer;
begin
   if (edAliq.Value < 0.01)or(edAliq.Value > 99.99) then
      raise Exception.Create(C_163);

   mECF.Lines.Append(C_164);
   frmPDV.ECF.CarregaAliquotas;

   for i := 0 to frmPDV.ECF.Aliquotas.Count -1 do
   begin
      if frmPDV.ECF.Aliquotas[i].Tipo = 'T' then
      begin
         if (edAliq.Value = frmPDV.ECF.Aliquotas[i].Aliquota) and (not cbiss.Checked) then
           raise Exception.Create(C_165);
      end
      else
      begin
         if (edAliq.Value = frmPDV.ECF.Aliquotas[i].Aliquota) and (cbiss.Checked) then
           raise Exception.Create(C_166);
      end;
   end;
   mECF.Lines.Clear;
   mECF.Lines.Append(C_167);
   frmPDV.ECF.ProgramaAliquota(edAliq.Value, IfThen(cbiss.Checked,'S','T')[1]);
   CBBanco.Checked := True;
   RGEcf.ItemIndex := 2;
   btnF11.Click;
end;

procedure TfrmMenuFiscal.btnEscClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmMenuFiscal.btnF10Click(Sender: TObject);
var
   st : AnsiString;
begin
  st := 'Explorer "' + AnsiString(DM_PDV.PAF.Path) +'"';
  WinExec(PAnsiChar(st),SW_ShowNormal);
end;

procedure TfrmMenuFiscal.btnF11Click(Sender: TObject);
begin
   //INTERAÇÃO ECF
   pnlAguarde.Show;

   if pg1.ActivePageIndex = 1 then
   begin
      case RGEcf.ItemIndex of
         0: LeFpag;
         1: LeRelGer;
         2: LeCNF;
         3: LeAliq;
         4: AbreTabCnfRnf;
      end;
   end
   else
   //MENU FISCAL
   case RgMenuFisc.ItemIndex of
      0: frmPDV.ECF.PafMF_LX_Impressao;
      1: LMFC;
      2: LMFS;
      3: EMFD;
      4: AMFD;
      5: CAT52;
      6: TabProd;
      7: Estoque;
      8: MovECF(edtDtInicial.Date, edtDtFinal.Date, cmbMov.Text);
      9: MeiosPag;
      10:IdentPaf;
      11:;
      12:ITP;
      13:ConfigPaf;
   end;
   pnlAguarde.Hide;
end;

procedure TfrmMenuFiscal.btnFPagClick(Sender: TObject);
var
   i: integer;
   s : string;
begin
   s := Trim(edFPgto.Text);

   if s = C_ST_VAZIO then
      raise Exception.Create(C_168);

   mECF.Lines.Append(C_169);
   frmPDV.ECF.CarregaFormasPagamento;

   for i := 0 to frmPDV.ECF.FormasPagamento.Count -1 do
   if AnsiUpperCase(frmPDV.ECF.FormasPagamento[i].Descricao) = AnsiUpperCase(s) then
      raise Exception.Create(C_170);

   mECF.Lines.Clear;
   mECF.Lines.Append(C_171);
   frmPDV.ECF.ProgramaFormaPagamento(s, cbVinc.Checked);
   CBBanco.Checked := True;
   RGEcf.ItemIndex := 0;
   btnF11.Click;
end;

procedure TfrmMenuFiscal.btnRelGerClick(Sender: TObject);
var
   i: integer;
   s : string;
begin
   s := Trim(edRelGer.Text);

   if s = C_ST_VAZIO then
      raise Exception.Create(C_168);

   if RGTipoRel.ItemIndex = 0 then
   begin
      mECF.Lines.Append(C_172);
      frmPDV.ECF.CarregaRelatoriosGerenciais;

      for i := 0 to frmPDV.ECF.RelatoriosGerenciais.Count -1 do
      if AnsiUpperCase(frmPDV.ECF.RelatoriosGerenciais[i].Descricao) = AnsiUpperCase(s) then
         raise Exception.Create(C_173);

      mECF.Lines.Clear;
      mECF.Lines.Append(C_174);
      frmPDV.ECF.ProgramaRelatoriosGerenciais(s);
   end
   else
   begin
      mECF.Lines.Append(C_175);
      frmPDV.ECF.CarregaComprovantesNaoFiscais;

      for i := 0 to frmPDV.ECF.ComprovantesNaoFiscais.Count -1 do
      if AnsiUpperCase(frmPDV.ECF.ComprovantesNaoFiscais[i].Descricao) = AnsiUpperCase(s) then
         raise Exception.Create(C_176);

      mECF.Lines.Clear;
      mECF.Lines.Append(C_177);
      frmPDV.ECF.ProgramaComprovanteNaoFiscal(s);
   end;
   CBBanco.Checked := True;
   RGEcf.ItemIndex := 1;
   btnF11.Click;
end;


procedure TfrmMenuFiscal.BtnInsereProdClick(Sender: TObject);
var
   s:string;
begin
   if RgTipoProd.ItemIndex = 0 then
      s := 'ean = ' + QuotedStr(EdEstoque.Text)
   else
      s := 'nome = ' + QuotedStr(EdEstoque.Text);

   if Trim(EdEstoque.Text) = C_ST_VAZIO then
   begin
      ShowMessage(C_178);
      exit;
   end;

   DM_serv.Pesquisar(DM_serv.Q1, C_SQL10 + s);

   if DM_serv.q1.IsEmpty then
   begin
      ShowMessage(C_179);
      exit;
   end;

  T1.AppendRecord([DM_serv.q1.Fields[0].AsInteger]);
  EdEstoque.Clear;
  EdEstoque.SetFocus;
end;

procedure TfrmMenuFiscal.edAliqKeyPress(Sender: TObject; var Key: Char);
begin
   if key = '-' then
      key := #0;
end;

procedure TfrmMenuFiscal.edRelGerPropertiesChange(Sender: TObject);
begin
   btnRelGer.Enabled := (RGTipoRel.ItemIndex > -1)and(Trim(edRelGer.Text) <> C_ST_VAZIO);
end;

procedure TfrmMenuFiscal.edtCOOInicialChange(Sender: TObject);
begin
   edtCOOFinal.MinValue := edtCOOInicial.Value;
end;

procedure TfrmMenuFiscal.edtDtInicialChange(Sender: TObject);
begin
   edtDtFinal.Date := edtDtInicial.Date;
end;

procedure TfrmMenuFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
      vk_f10: if btnf10.Enabled then btnF10.Click;
      vk_f11: if btnf10.Enabled then btnF11.Click;
   end;
end;

procedure TfrmMenuFiscal.FormShow(Sender: TObject);
begin
  inherited;

   with frmPDV.ECF do
   begin
      ECF_Ativo :=  Ativo;

      if ECF_Ativo then
         ECF_Ativo := EmLinha;

      if ECF_Ativo then
         ECF_Ativo := not (Estado = estBloqueada);
   end;

   if ECF_Ativo then
      bar1.SimpleText := C_153;

   cmbMov.Items.Clear;
   cmbMov.Items.Add(C_154);

   if (DM_serv.pingar)and(DM_serv.Conectar) then
   begin
      DM_serv.Pesquisar(DM_serv.Q1, C_SQL6);
      while not DM_serv.Q1.Eof do
      begin
         cmbMov.Items.Append(Format('%.3d',[DM_serv.Q1.fields[0].AsInteger]));
         DM_serv.Q1.Next;
      end;
   end
   else
     cmbMov.Items.Append(frmPDV.sECF_Num);

   DM_serv.Q1.Close;

   pg1.ActivePage := TabMenu;
   tbsMenuFiscalProd.TabVisible := False;
   pgcMenuFiscalTipo.ActivePage := tbsMenuFiscalTipoData;
end;


procedure TfrmMenuFiscal.LeFpag;
var
   i: integer;
   s: string;
begin
   mECF.Lines.Clear;
   frmPDV.ECF.CarregaFormasPagamento;

   for i := 0 to frmPDV.ECF.FormasPagamento.Count -1 do
   if frmPDV.ECF.FormasPagamento[i].Descricao <> C_ST_VAZIO then
        mECF.Lines.Append( C_180 +
                           frmPDV.ECF.FormasPagamento[i].Indice + ' -> ' +
                           frmPDV.ECF.FormasPagamento[i].Descricao +
                           IfThen(frmPDV.ECF.FormasPagamento[i].PermiteVinculado,
                           C_181, C_182)
     );

   if CBBanco.Checked then
   begin
      DM_PDV.ExecSQL(C_SQL11);
      DM_PDV.QFPag.Open;
      DM_PDV.QFPag.Append;
      DM_PDV.QFPagdescr.Value      := 'DESCONTO';
      DM_PDV.QFPagtipo.Value       := 'DES';
      DM_PDV.QFPagindice_tef.Value := '00';
      DM_PDV.QFPag.Post;

      for i := 0 to frmPDV.ECF.FormasPagamento.Count -1 do
      if frmPDV.ECF.FormasPagamento[i].Descricao <> C_ST_VAZIO then
      begin
         DM_PDV.QFPag.Append;
         DM_PDV.QFPagdescr.AsString := frmPDV.ECF.FormasPagamento[i].Descricao;

         s := AnsiUpperCase(copy(frmPDV.ECF.FormasPagamento[i].Descricao, 1, 3));

         if s = 'DIN' then
            DM_PDV.QFPagtipo.Value := 'DIN'
         else
         if s = 'CHE' then
            DM_PDV.QFPagtipo.Value := 'CHQ'
         else
         if s = 'CAR' then
            DM_PDV.QFPagtipo.Value := 'CRT'
         else
         if s = 'TEF' then
            DM_PDV.QFPagtipo.Value := 'CRT'
         else
         if s = 'PRA' then
         begin
            DM_PDV.QFPagtipo.Value   := 'FAT';
            DM_PDV.QFPagaprazo.Value := 'S';
         end
         else
         if s = 'FAT' then
            DM_PDV.QFPagtipo.Value := 'FAT'
         else
            DM_PDV.QFPagtipo.Value := 'TKT';

         DM_PDV.QFPagindice_tef.AsString := frmPDV.ECF.FormasPagamento[i].Indice;
         DM_PDV.QFPagvinculado.AsString  := IfThen(frmPDV.ECF.FormasPagamento[i].PermiteVinculado,'S','N');
         DM_PDV.QFPag.Post;
      end;

      frmTabFPag := TfrmTabFPag.Create(self);
      DM_PDV.QFPag.Close;
      DM_PDV.QFPag.Open;
      frmTabFPag.ShowModal;
      FreeAndNil(frmTabFPag);
   end;
end;

procedure TfrmMenuFiscal.LeCNF;
var
   i: integer;
begin
   mECF.Lines.Clear;
   frmPDV.ECF.CarregaComprovantesNaoFiscais;

   for i := 0 to frmPDV.ECF.ComprovantesNaoFiscais.Count -1 do
   if frmPDV.ECF.ComprovantesNaoFiscais[i].Descricao <> C_ST_VAZIO then
      mECF.Lines.Append( 'CNF:' +  frmPDV.ECF.ComprovantesNaoFiscais[i].Indice + ' -> ' +
                         frmPDV.ECF.ComprovantesNaoFiscais[i].Descricao
     );

   if CBBanco.Checked then
   begin
      DM_PDV.ExecSQL(C_SQL7);
      DM_PDV.QRelGer.Open;

      for i := 0 to frmPDV.ECF.ComprovantesNaoFiscais.Count -1 do
      if frmPDV.ECF.ComprovantesNaoFiscais[i].Descricao <> C_ST_VAZIO then
      begin
         DM_PDV.QRelGer.Append;
         DM_PDV.QRelGerindice.AsString := Trim(frmPDV.ECF.ComprovantesNaoFiscais[i].Indice);
         DM_PDV.QRelGerNome.AsString   := Trim(frmPDV.ECF.ComprovantesNaoFiscais[i].Descricao);
         DM_PDV.QRelGertipo.AsString   := 'CNF';
         DM_PDV.QRelGer.Post;
      end;

      DM_PDV.QRelGer.Close;
      DM_PDV.QRelGer.Open;
      frmTabRelGer := tfrmTabRelGer.Create(self);
      frmTabRelGer.ShowModal;
      FreeAndNil(frmTabRelGer);
   end;
end;

procedure TfrmMenuFiscal.LeRelGer;
var
   i: integer;
begin
   mECF.Lines.Clear;
   frmPDV.ECF.CarregaRelatoriosGerenciais;

   for i := 0 to frmPDV.ECF.RelatoriosGerenciais.Count -1 do
   if frmPDV.ECF.RelatoriosGerenciais[i].Descricao <> C_ST_VAZIO then
      mECF.Lines.Append( 'RG.:' +  frmPDV.ECF.RelatoriosGerenciais[i].Indice + ' -> ' +
                         frmPDV.ECF.RelatoriosGerenciais[i].Descricao
     );

   if CBBanco.Checked then
   begin
      DM_PDV.ExecSQL(C_SQL8);
      DM_PDV.QRelGer.Open;

      for i := 0 to frmPDV.ECF.RelatoriosGerenciais.Count -1 do
      if frmPDV.ECF.RelatoriosGerenciais[i].Descricao <> C_ST_VAZIO then
      begin
         DM_PDV.QRelGer.Append;
         DM_PDV.QRelGerindice.AsString := Trim(frmPDV.ECF.RelatoriosGerenciais[i].Indice);
         DM_PDV.QRelGerNome.AsString   := Trim(frmPDV.ECF.RelatoriosGerenciais[i].Descricao);
         DM_PDV.QRelGertipo.AsString   := 'RG';
         DM_PDV.QRelGer.Post;
      end;

      DM_PDV.QRelGer.Close;
      DM_PDV.QRelGer.Open;
      frmTabRelGer := tfrmTabRelGer.Create(self);
      frmTabRelGer.ShowModal;
      FreeAndNil(frmTabRelGer);
   end;
end;

procedure TfrmMenuFiscal.LMFC;
var
  PathArquivo: string;
begin
   //gerar arquivo
  if chkMenuFiscalGerarArquivo.Checked then
  begin
      if pgcMenuFiscalTipo.ActivePageIndex = 0 then
         PathArquivo := Arquivo(C_155)
      else
         PathArquivo := Arquivo(C_156);

      if chkMenuFiscalCotepe1704.Checked then
      begin
        if pgcMenuFiscalTipo.ActivePageIndex = 0 then
          frmPDV.ECF.PafMF_LMFC_Cotepe1704(edtDtInicial.Date, edtDtFinal.Date, PathArquivo)
        else
          frmPDV.ECF.PafMF_LMFC_Cotepe1704(edtCOOInicial.Value, edtCOOFinal.Value, PathArquivo);
      end
      else
      begin
        if pgcMenuFiscalTipo.ActivePageIndex = 0 then
          frmPDV.ECF.PafMF_LMFC_Espelho(edtDtInicial.Date, edtDtFinal.Date, PathArquivo)
        else
          frmPDV.ECF.PafMF_LMFC_Espelho(edtCOOInicial.Value, edtCOOFinal.Value, PathArquivo);
      end;

      ShowMessage(Format(C_MSG, [PathArquivo]));
  end
  else
  //impressão
  begin
    if pgcMenuFiscalTipo.ActivePageIndex = 0 then
      frmPDV.ECF.PafMF_LMFC_Impressao(edtDtInicial.Date, edtDtFinal.Date)
    else
      frmPDV.ECF.PafMF_LMFC_Impressao(edtCOOInicial.Value, edtCOOFinal.Value);
  end;
end;

procedure TfrmMenuFiscal.LMFS;
var
  PathArquivo: string;
begin
   //GERA ARQUIVO
  if chkMenuFiscalGerarArquivo.Checked then
  begin
      if pgcMenuFiscalTipo.ActivePageIndex = 0 then
         PathArquivo := Arquivo(C_157)
      else
         PathArquivo := Arquivo(C_158);

      if pgcMenuFiscalTipo.ActivePageIndex = 0 then
        frmPDV.ECF.PafMF_LMFS_Espelho(edtDtInicial.Date, edtDtFinal.Date, PathArquivo)
      else
        frmPDV.ECF.PafMF_LMFS_Espelho(edtCOOInicial.Value, edtCOOFinal.Value, PathArquivo);

      ShowMessage(Format(C_MSG, [PathArquivo]));
  end
  else
  //IMPRIME
  begin
    if pgcMenuFiscalTipo.ActivePageIndex = 0 then
      frmPDV.ECF.PafMF_LMFS_Impressao(edtDtInicial.Date, edtDtFinal.Date)
    else
      frmPDV.ECF.PafMF_LMFS_Impressao(edtCOOInicial.Value, edtCOOFinal.Value);
  end;
end;

procedure TfrmMenuFiscal.EMFD;
var
  PathArquivo: string;
begin
      if pgcMenuFiscalTipo.ActivePageIndex = 0 then
         PathArquivo := Arquivo(C_159)
      else
         PathArquivo := Arquivo(C_160);

   if pgcMenuFiscalTipo.ActivePageIndex = 0 then
      frmPDV.ECF.PafMF_MFD_Espelho(edtDtInicial.Date, edtDtFinal.Date, PathArquivo)
   else
      frmPDV.ECF.PafMF_MFD_Espelho(edtCOOInicial.Value, edtCOOFinal.Value, PathArquivo);

   ShowMessage(Format(C_MSG, [PathArquivo]));
end;

procedure TfrmMenuFiscal.AbreTabCnfRnf;
begin
   DM_PDV.QRelGer.Close;
   DM_PDV.QRelGer.Open;
   frmTabRelGer := tfrmTabRelGer.Create(self);
   frmTabRelGer.ShowModal;
end;

procedure TfrmMenuFiscal.AMFD;
var
  PathArquivo: string;
begin
   if pgcMenuFiscalTipo.ActivePageIndex = 0 then
      PathArquivo := Arquivo(C_161)
   else
      PathArquivo := Arquivo(C_162);

   if pgcMenuFiscalTipo.ActivePageIndex = 0 then
      frmPDV.ECF.PafMF_MFD_Cotepe1704(edtDtInicial.Date, edtDtFinal.Date, PathArquivo)
   else
      frmPDV.ECF.PafMF_MFD_Cotepe1704(edtCOOInicial.Value, edtCOOFinal.Value, PathArquivo);

   ShowMessage(Format(C_MSG, [PathArquivo]));
end;

procedure TfrmMenuFiscal.CAT52;
var
  DirArquivos: string;
begin
  DirArquivos := Aqui(C_DIRCAT52, C_ST_VAZIO);
  DirArquivos := copy(DirArquivos,1, length(DirArquivos)-1);


  frmPDV.ECF.PafMF_GerarCAT52(edtDtInicial.Date, edtDtFinal.Date, DirArquivos);

  ShowMessage(Format(C_MSG1, [DirArquivos]));
end;

procedure TfrmMenuFiscal.ConfigPaf;
var
  i: integer;
begin
   i := DM_PDV.IndiceRelECF('cfgpaf');

   if i > 0 then
      frmPDV.ECF.PafMF_RelParametrosConfiguracao(frmPDV.ECF.AAC.IdentPAF.Paf, i);
end;

procedure TfrmMenuFiscal.MeiosPag;
var
  FormasPagamento: TACBrECFFormasPagamento;
  i: integer;
begin
  FormasPagamento := TACBrECFFormasPagamento.Create;
  try
      DM_serv.Pesquisar(DM_serv.Q1, 'select data, upper(meio_pag) as meio_pag, ' +
                       'upper(REDE) as rede, if(gnf = 0, "Cupom Fiscal", "Compr. Não Fiscal") as tipo,' +
                       'sum(valor) as valor from r07 where flag > 0 and estorno = "N" and data between ' +
                       data_My(edtDtInicial.date) + ' and ' + data_My(edtDtFinal.date) +
                       ' group by data, tipo, meio_pag, rede'
      );

      while not DM_serv.q1.eof do
      begin
         with FormasPagamento.New do
         begin
            with FormasPagamento.New do
            begin
              Descricao := DM_serv.Q1.FieldByName('meio_pag').AsString + ' ' +
                           DM_serv.Q1.FieldByName('rede').AsString;

              Data      := DM_serv.Q1.FieldByName('data').AsDateTime;
              Total     := DM_serv.Q1.FieldByName('valor').AsCurrency;
              TipoDoc   := DM_serv.Q1.FieldByName('tipo').AsString;
            end;
         end;
         DM_PDV.q1.Next;
      end;

      i := DM_PDV.IndiceRelECF('meiopgto');

      if i > 0 then
         frmPDV.ECF.PafMF_RelMeiosPagamento(FormasPagamento,
               'PERIODO DE ' +
               formatdatetime(C_183, edtDtInicial.date) + ' A ' +
               formatdatetime(C_183, edtDtFinal.date),
               DM_PDV.Q1.Fields[0].AsInteger
         );
  finally
    FormasPagamento.Free;
  end;
end;

procedure TfrmMenuFiscal.IdentPaf;
var
  i: Integer;
begin
   i := DM_PDV.IndiceRelECF('identpaf');

   if i > 0 then
      frmPDV.ECF.PafMF_RelIdentificacaoPafECF( frmPDV.ECF.AAC.IdentPAF, i);
end;

procedure TfrmMenuFiscal.ITP;
begin
   ShowMessage(C_184);
end;

procedure TfrmMenuFiscal.PreencherHeader(Header: TRegistroX1);
var
   b: boolean;
begin
     DM_serv.QEmpresa.Open;
     Header.UF          := DM_serv.QEmpresauf.AsString;
     Header.CNPJ        := Number(DM_serv.QEmpresacnpj.AsString);
     Header.IE          := NUMBER(DM_serv.QEmpresaie.AsString);
     Header.IM          := NUMBER(DM_serv.QEmpresaim.AsString);
     Header.RAZAOSOCIAL := DM_serv.QEmpresarazao_social.AsString;
     b := False;//VerificaInEx(Header);
     Header.InclusaoExclusao := b;
end;

procedure TfrmMenuFiscal.RgMenuFiscClick(Sender: TObject);
begin
   btnF11.Enabled := ((ECF_Ativo)and(RgMenuFisc.ItemIndex in[0..5,9,10,13])) or (RgMenuFisc.ItemIndex in[6,7,8,9,11,12]);

   tbsMenuFiscalTipoData.TabVisible := RgMenuFisc.ItemIndex in [1..5,8,9,11];
   tbsMenuFiscalTipoCOO.TabVisible  := (ECF_Ativo)and(RgMenuFisc.ItemIndex in [1..5]);
   chkMenuFiscalCotepe1704.Enabled  := (ECF_Ativo)and(RgMenuFisc.ItemIndex in [1,4]);
   tbsMenuFiscalProd.TabVisible     := RgMenuFisc.ItemIndex = 7;
   RgEstoque.Visible                := RgMenuFisc.ItemIndex = 7;
   cmbMov.Visible                   := RgMenuFisc.ItemIndex = 8;
   RGVendaPer.Visible               := RgMenuFisc.ItemIndex = 11;

   if tbsMenuFiscalTipoData.TabVisible then
      pgcMenuFiscalTipo.ActivePage := tbsMenuFiscalTipoData
   else
   if tbsMenuFiscalTipoCOO.TabVisible then
      pgcMenuFiscalTipo.ActivePage := tbsMenuFiscalTipoCOO;

   if RgMenuFisc.ItemIndex = 7 then
   begin
      pgcMenuFiscalTipo.ActivePage := tbsMenuFiscalProd;
      T1.Close;
      T1.Open;
      lblProd.Caption := Label5.Hint;
      RgEstoque.ItemIndex := 0;
   end
   else
   if RgMenuFisc.ItemIndex = 8 then
   begin
      pgcMenuFiscalTipo.ActivePage := tbsMenuFiscalTipoData;
      cmbMov.ItemIndex := 0;
   end;
end;

procedure TfrmMenuFiscal.TabProd;
var
   P2: TRegistroP2;
   st: string;
   aliq: Currency;
   b: boolean;
begin
     // registro P1
   PreencherHeader(DM_PDV.PAF.PAF_P.RegistroP1); // preencher header do arquivo
     // registro P2
   DM_PDV.PAF.PAF_P.RegistroP2.Clear;

   DM_serv.Pesquisar(DM_serv.QEstoque, C_SQL12 );

   while not DM_serv.QEstoque.Eof do
   begin
      Application.ProcessMessages;
      DM_serv.Pesquisar(DM_serv.Q1, C_SQL13 + DM_serv.QEstoqueunid.AsString);

      DM_serv.Pesquisar(DM_serv.Q2, C_SQL14 + DM_serv.QEstoquealiq.AsString);

      aliq := 0;

      if DM_serv.Q2.Fields[0].AsString = 'FF' then st := 'F'
      else
      if DM_serv.Q2.Fields[0].AsString = 'II' then st := 'I'
      else
      if DM_serv.Q2.Fields[0].AsString = 'NN' then st := 'N'
      else
      if DM_serv.Q2.Fields[0].AsString = 'ISS' then st := 'S'
      else
      if StrToIntDef(DM_serv.Q2.Fields[0].AsString, 0) > 0 then
      begin
         st := 'T';
         aliq := DM_serv.Q2.Fields[0].AsCurrency/100;
      end;

       P2:= DM_PDV.PAF.PAF_P.RegistroP2.New;
       P2.COD_MERC_SERV  := DM_serv.QEstoqueean.AsString;
       P2.DESC_MERC_SERV := Copy(DM_serv.QEstoquenome.AsString,1,50);
       P2.UN_MED         := Copy(DM_serv.Q1.Fields[0].AsString,1,2);
       P2.IAT            := DM_serv.QEstoqueat.AsString;
       P2.IPPT           := DM_serv.QEstoqueippt.AsString;
       P2.ST             := st;
       P2.ALIQ           := aliq;
       P2.VL_UNIT        := DM_serv.QEstoquevrvenda.Value;
       b                 := True;//DM1.CompararMD5('estoque', DM1.QEstoqueid.Asinteger);
       P2.RegistroValido := b;
       DM_serv.QEstoque.Next;
   end;

   st := FormatDateTime(C_185, now);
   DM_PDV.PAF.SaveFileTXT_P(st);
   ShowMessage(Format(C_MSG, [DM_PDV.PAF.Path + st]));
end;

procedure TfrmMenuFiscal.Estoque;
var
     E2: TRegistroE2;
     s, st_filtro: string;
     b: boolean;
begin
   st_filtro := C_ST_VAZIO;

   if RgEstoque.ItemIndex = 1 then
   begin
     if t1.IsEmpty then
     begin
        ShowMessage(C_186);
        exit;
     end;

     T1.First;

     while not t1.Eof do
     begin
        st_filtro := st_filtro + T1id.AsString + ',';
        T1.Next;
     end;

     st_filtro := 'and e.id in(' + copy(st_filtro,1,length(st_filtro)-1) + ')';
   end;

   //pega a movim ate o dia anterior ao da geração do arquivo
   DM_serv.Pesquisar(DM_serv.Q1, C_SQL15 + st_filtro );

   DM_serv.Pesquisar(DM_serv.Q2, C_SQL16);

   if DM_serv.q1.IsEmpty then
   begin
      ShowMessage(C_187);
      exit;
   end;

  with DM_PDV.PAF.PAF_E do
  begin
     // registro E1
    PreencherHeader(RegistroE1); // preencher header do arquivo
    DM_serv.Pesquisar(DM_serv.Q5, C_SQL17);
    RegistroE1.RegistroValido := True;//(not RegistroE1.InclusaoExclusao) and
                                { (DM1.q2.RecordCount = 1)and
                                 (DM1.q5.fields[0].AsInteger = 1);}

    RegistroE1.NUM_FAB        := DM_serv.Q1.FieldByName('serieecf').AsString;
    RegistroE1.MF_ADICIONAL   := C_ST_VAZIO;
    RegistroE1.TIPO_ECF       := C_01;
    RegistroE1.MARCA_ECF      := frmPDV.sECF_Marca;
    RegistroE1.MODELO_ECF     := frmPDV.sECF_Mod;
    RegistroE1.DT_EST         := Trunc(DM_serv.Q1.FieldByName('data').AsDateTime) +
                                       DM_serv.Q1.FieldByName('hora').AsDateTime;

   // registro E2
    RegistroE2.Clear;

    while not DM_serv.Q1.Eof do
    begin
       Application.ProcessMessages;
       E2:= DM_PDV.PAF.PAF_E.RegistroE2.New;
       E2.COD_MERC  := DM_serv.Q1.FieldByName('cod').AsString;
       E2.DESC_MERC := Copy(DM_serv.Q1.FieldByName('nome').AsString,1,50);
       E2.UN_MED    := Copy(DM_serv.Q1.FieldByName('unid').AsString,1,2);
       E2.QTDE_EST  := DM_serv.Q1.FieldByName('quant').AsCurrency;
       b            := True;{DM1.CompararMD5('estoque', DM1.Q1.FieldByName('id').Asinteger) and
                       DM1.CompararMD5('e2', DM1.Q1.FieldByName('ide2').Asinteger) ; }
       E2.RegistroValido := b;
       DM_serv.Q1.Next;
     end;
  end;

   s := FormatDateTime(C_188, now);
   DM_PDV.PAF.SaveFileTXT_E(s);
   ShowMessage(Format(C_MSG, [DM_PDV.PAF.Path + s]));
end;

procedure TfrmMenuFiscal.MovECF(d1, d2: Tdate; ecf: string);
var
   stFile: String;
begin
   if Number(cmbMov.Text) = C_ST_VAZIO then
   begin
      ShowMessage(cmbMov.Text);
      exit;
   end;

   if NOT frmPDV.VerificarServidorOnLine then
      exit;

   stFile := frmPDV.MovECF(cmbMov.Text, d1, d2, True);

   if FileExists(stFile) then
      ShowMessage(Format(C_MSG, [stFile]))
   else
      ShowMessage(Format(C_MSG2, [stFile]));
end;

procedure TfrmMenuFiscal.tbsMenuFiscalProdShow(Sender: TObject);
begin
   EdEstoque.SetFocus;
end;

procedure TfrmMenuFiscal.T1AfterPost(DataSet: TDataSet);
begin
   lblProd.Caption := Format(C_MSG3, [T1.RecordCount]);
end;

procedure TfrmMenuFiscal.T1BeforeClose(DataSet: TDataSet);
begin
   while not t1.IsEmpty do
   t1.Delete;
end;

procedure TfrmMenuFiscal.TabECFHide(Sender: TObject);
begin
   RGEcf.ItemIndex := -1;
end;

procedure TfrmMenuFiscal.TabMenuHide(Sender: TObject);
begin
   RGMenuFisc.ItemIndex := -1;
end;

end.
