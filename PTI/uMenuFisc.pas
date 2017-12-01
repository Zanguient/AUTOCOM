unit uMenuFisc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels, Math,ACBRUtil,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData,
  cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls,
  cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView, ACBrDevice,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxNavigator, cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls,
  cxCurrencyEdit, cxRadioGroup, cxCheckBox, cxSpinEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGroupBox,ACBrPAFRegistros, Vcl.ComCtrls, dxCore, cxDateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinsCore, dxSkinCaramel,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, dxBarBuiltInMenu;

type
  TfrmMenuFisc = class(TfrmCad)
    Panel1: TPanel;
    chkMenuFiscalGerarArquivo: TcxCheckBox;
    pnlAguarde: TPanel;
    TabECF: TcxTabSheet;
    RGEcf: TcxRadioGroup;
    Panel2: TPanel;
    Panel3: TPanel;
    mECF: TMemo;
    pgECF: TcxPageControl;
    TabFpgto: TcxTabSheet;
    TabAliq: TcxTabSheet;
    TabRel: TcxTabSheet;
    edFPgto: TcxTextEdit;
    lblHost: TcxLabel;
    btnFPag: TcxButton;
    cbVinc: TcxCheckBox;
    edAliq: TcxCurrencyEdit;
    cbiss: TCheckBox;
    cxLabel1: TcxLabel;
    btnAliq: TcxButton;
    edRelGer: TcxTextEdit;
    btnRel: TcxButton;
    RGTipoRel: TcxRadioGroup;
    Panel4: TPanel;
    btnEsc: TcxButton;
    btnF11: TcxButton;
    btnF10: TcxButton;
    CBBanco: TcxCheckBox;
    T1: TFDMemTable;
    T1id: TIntegerField;
    RgMenuFisc: TcxRadioGroup;
    pgOpc: TcxPageControl;
    TabData: TcxTabSheet;
    DtInicial: TcxDateEdit;
    DtFinal: TcxDateEdit;
    rgVendaPer: TcxRadioGroup;
    Label1: TcxLabel;
    Label2: TcxLabel;
    TabDoc: TcxTabSheet;
    Label3: TcxLabel;
    Label4: TcxLabel;
    COOInicial: TcxCurrencyEdit;
    COOFinal: TcxCurrencyEdit;
    TabProd: TcxTabSheet;
    RgTipoProd: TRadioGroup;
    BtnInsereProd: TcxButton;
    EdEstoque: TcxTextEdit;
    lblProd: TcxLabel;
    Label5: TcxLabel;
    RgEstoque: TRadioGroup;
    TabVazio: TcxTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure btnEscClick(Sender: TObject);
    procedure btnF11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRelClick(Sender: TObject);
    procedure btnAliqClick(Sender: TObject);
    procedure btnFPagClick(Sender: TObject);
    procedure btnF10Click(Sender: TObject);
    procedure RgMenuFiscClick(Sender: TObject);
    procedure TabCadShow(Sender: TObject);
    procedure RGEcfClick(Sender: TObject);
    procedure BtnInsereProdClick(Sender: TObject);
    procedure T1AfterPost(DataSet: TDataSet);
    procedure RgEstoqueClick(Sender: TObject);
    procedure RgTipoProdClick(Sender: TObject);
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
    procedure IdentPaf;
    procedure ConfigPaf;
    procedure PreencherHeader(Header: TRegistroX1);
    procedure Estoque;
    procedure ITP;
    procedure CfgMenu;
    procedure AMF;
    procedure RegPAF;
    procedure Mudar_HV;
    procedure VendaPer;//sintegra e sped
  public
    ECF_Ativo, ECF_OK: boolean;
    procedure Gerar_REQUISITO_XXVI(data: TDate);
  end;

var
  frmMenuFisc: TfrmMenuFisc;
  strArquivo: String;

implementation

{$R *.dfm}

uses uAutocomConsts, {$IFDEF PDV}updv, uDM_PDV, uFPag, uTabRG, {$ENDIF} uDMecf, uFuncoes, uDM, uProgress, uDM_Sintegra, uDM_SPED,
  uDM_Conn;


procedure TfrmMenuFisc.AMF;
var
  ArqBin, ArqTxt: string;
  old_to: integer;
begin
   {$IFDEF PDV}
   ArqTxt := Arquivo(C_162);
   ArqBin := ChangeFileExt(ArqTxt, '.bin');

   old_to := frmPDV.ECF.TimeOut;
   frmPDV.ECF.TimeOut := 600;

   try
      frmPDV.ECF.PafMF_ArqMF_Binario(ArqBin, True);
   finally
      frmPDV.ECF.TimeOut := old_to;
   end;

   ShowMessage(Format(C_MSG, [ArqBin + C_CRLF + ArqTxt]));
   {$ENDIF}
end;

procedure TfrmMenuFisc.AMFD;
var
  ArqBin, ArqTxt: string;
  old_to: integer;
begin
   {$IFDEF PDV}
   ArqTxt := Arquivo(C_161);
   ArqBin := ChangeFileExt(ArqTxt, '.bin');

   old_to := frmPDV.ECF.TimeOut;
   frmPDV.ECF.TimeOut := 600;

   try
      //frmPDV.ECF.PafMF_ArqMFD_Binario(ArqBin);
   finally
      frmPDV.ECF.TimeOut := old_to;
   end;

   ShowMessage(Format(C_MSG, [ArqBin + C_CRLF + ArqTxt]));
   {$ENDIF}
end;

function TfrmMenuFisc.Arquivo(Prefixo: String): String;
begin
{$IFDEF PDV}
   Result := frmPDV.ECF.NumSerie;//pega os ultimos 5 dig do serial do ecf
   Result := Aqui(C_DIRFISCO, Prefixo + copy(Result, length(Result)-5, 5) +
             FormatDateTime(C_152, now) + '.txt');
   strArquivo := Result;
{$ENDIF}
end;

procedure TfrmMenuFisc.btnAliqClick(Sender: TObject);
var
   i: integer;
   c: char;
begin
   {$IFDEF PDV}
   if (edAliq.Value < 1)or(edAliq.Value > 99.99) then
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
   if cbiss.Checked then
      c := 'S'
   else
      c := 'T';

   frmPDV.ECF.ProgramaAliquota(edAliq.Value, c);
   mECF.Lines.Text := 'Nova alíquota cadastrada.'
  {$ENDIF}
end;

procedure TfrmMenuFisc.btnEscClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmMenuFisc.btnF10Click(Sender: TObject);
var
   st : AnsiString;
begin
  st := 'Explorer "' + AnsiString(Aqui(C_DIRFISCO,'')) +'"';
  WinExec(PAnsiChar(st),SW_ShowNormal);
end;

procedure TfrmMenuFisc.btnF11Click(Sender: TObject);
begin
   try
      if pgCad.ActivePage = TabECF then //INTERAÇÃO ECF
      begin
         pnlAguarde.Show;
         Application.ProcessMessages;
         {$IFDEF PDV}
         case RGEcf.Properties.Items[RGEcf.ItemIndex].tag of
            0: LeFpag;
            1: LeRelGer;
            2: LeCNF;
            3: LeAliq;
            4: Mudar_HV;
            5: DM_ECF.Emitir_RZ(0);
            6: frmPDV.ECF.CancelaCupom;
            7: frmPDV.ECF.CancelaNaoFiscal;
            8: EMFD;//espelho mfd
         end;
         {$ENDIF}
      end
      else
      begin //MENU FISCAL
         if RgMenuFisc.Properties.Items[RgMenuFisc.ItemIndex].Tag = 100 then
         begin
            raise Exception.Create('ECF sem condição de emitir/gerar esta informação.');
         end;

         if (pgOpc.ActivePage = TabData)or(RgMenuFisc.Properties.Items[RgMenuFisc.ItemIndex].Tag = 15) then
         begin
            DtInicial.PostEditValue;
            DtFinal.PostEditValue;

            if (DtInicial.Date <=0) or(DtFinal.Date < DtInicial.Date) then
               raise Exception.Create('Período incorreto.');
         end
         else
         if pgOpc.ActivePage = TabDoc then
         begin
            if (COOInicial.Value <=0) or(COOFinal.Value < COOInicial.Value) then
               raise Exception.Create('Faixa de documento incorreta.');
         end;

         pnlAguarde.Show;
         Application.ProcessMessages;

         case RgMenuFisc.Properties.Items[RgMenuFisc.ItemIndex].Tag of
            0: begin
               {$IFDEF PDV}
                  frmPDV.ECF.PafMF_LX_Impressao;
                  DM_PDV.Gravar_coo_ini(frmPDV.ECF.NumCOO);
               {$ENDIF}
               end;
            1: LMFC;
            2: LMFS;
            3: EMFD;
            4: AMFD;
            5: CAT52;
           // 6: Gerar_Tabela_Produtos;
            7: Estoque;
           // 8: MovECF(DtInicial.Date, DtFinal.Date, cmbMov.Text);
            //9: MeiosPag;
            10:IdentPaf;
            11:VendaPer;
            12:ITP;
            13:ConfigPaf;
            14:AMF;
            15:RegPaf;
         end;
      end;
   finally
      pnlAguarde.Hide;
   end;
end;

procedure TfrmMenuFisc.btnFPagClick(Sender: TObject);
var
   i: integer;
   s : string;
begin
{$IFDEF PDV}
   s := Trim(edFPgto.Text);

   if s = C_ST_VAZIO then
      raise Exception.Create(C_168);

   mECF.Lines.Append(C_169);
   frmPDV.ECF.CarregaFormasPagamento;

   for i := 0 to Pred(frmPDV.ECF.FormasPagamento.Count) do
   if AnsiUpperCase(frmPDV.ECF.FormasPagamento[i].Descricao) = AnsiUpperCase(s) then
      raise Exception.Create(C_170);

   mECF.Lines.Clear;
   mECF.Lines.Append(C_171);
   frmPDV.ECF.ProgramaFormaPagamento(s, cbVinc.Checked);
   CBBanco.Checked := True;
   RGEcf.ItemIndex := 0;
   btnF11.Click;
{$ENDIF}
end;

procedure TfrmMenuFisc.BtnInsereProdClick(Sender: TObject);
begin
   if RgEstoque.ItemIndex = 0 then
      raise Exception.Create('Esta opção é funcional apenas no modo ESTOQUE PARCIAL.');

   if Trim(EdEstoque.Text)='' then
      raise Exception.Create('Informe um produto.');

   if RgTipoProd.ItemIndex = 0 then//por codigo
   begin
      DMConn.Q1.Open('select id from estoque where cod_gtin=' + Texto_Mysql(EdEstoque.Text));
   end
   else //por descrição exata
   begin
      DMConn.Q1.Open('select id from estoque where nome=' + Texto_Mysql(EdEstoque.Text));
   end;

   if DMConn.Q1.IsEmpty then
      raise Exception.Create('Nenhum produto encontrado.');

   if T1.Locate('id', DMConn.Q1.Fields[0].AsInteger, []) then
      raise Exception.Create('Produto já informado.');

   T1.Append;
   T1id.Value := DMConn.Q1.Fields[0].AsInteger;
   T1.Post;

   EdEstoque.Clear;
   EdEstoque.SetFocus;
end;

procedure TfrmMenuFisc.btnRelClick(Sender: TObject);
var
   i: integer;
   s : string;
begin
{$IFDEF PDV}
   s := Trim(edRelGer.Text);

   if s = C_ST_VAZIO then
      raise Exception.Create(C_168);

   if RGTipoRel.ItemIndex = 0 then //RG
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
   begin //CNF
      mECF.Lines.Append(C_175);
      frmPDV.ECF.CarregaComprovantesNaoFiscais;

      for i := 0 to Pred(frmPDV.ECF.ComprovantesNaoFiscais.Count) do
      if AnsiUpperCase(frmPDV.ECF.ComprovantesNaoFiscais[i].Descricao) = AnsiUpperCase(s) then
         raise Exception.Create(C_176);

      mECF.Lines.Clear;
      mECF.Lines.Append(C_177);
      frmPDV.ECF.ProgramaComprovanteNaoFiscal(s);
   end;

   CBBanco.Checked := True;
   RGEcf.ItemIndex := 1;
   btnF11.Click;
{$ENDIF}
end;

procedure TfrmMenuFisc.CAT52;
var
  DirArquivos: string;
begin
{$IFDEF PDV}
  DirArquivos := Aqui(C_DIRCAT52, C_ST_VAZIO);
  DirArquivos := copy(DirArquivos,1, length(DirArquivos)-1);

  frmPDV.ECF.PafMF_GerarCAT52(DtInicial.Date, DtFinal.Date, DirArquivos);

  ShowMessage(Format(C_MSG1, [DirArquivos]));
{$ENDIF}
end;

procedure TfrmMenuFisc.CfgMenu;//configura o menu conforme condição do ECF
var
   i: integer;
begin
   if not ECF_Ativo then
   begin
      for i := 0 to Pred(RgMenuFisc.Properties.Items.Count) do
      begin
         if RgMenuFisc.Properties.Items[i].Tag in[0,1,2,3,4,9,10,13,14] then
         begin
            RgMenuFisc.Properties.Items[i].Caption := RgMenuFisc.Properties.Items[i].Caption + ' (ECF sem comunicação)';
            RgMenuFisc.Properties.Items[i].tag     := 100;//flag par emitir aviso
         end;
      end;
   end;

   //cmbMov.Properties.Items.Clear;
 //  cmbMov.Properties.Items.Add(C_154);
   pgCad.ActivePage   := TabCad;
   TabProd.TabVisible := False;
   pgOpc.ActivePage   := TabData;
end;



procedure TfrmMenuFisc.ConfigPaf;
begin
{$IFDEF PDV}
   frmPDV.ECF.PafMF_RelParametrosConfiguracao(nil, DM_PDV.Indice_RG('paramcfg'));
   DM_PDV.Gravar_coo_ini(frmPDV.ECF.NumCOO);
{$ENDIF}
end;

procedure TfrmMenuFisc.EMFD;
var
  PathArquivo: string;
begin
{$IFDEF PDV}
      if pgOpc.ActivePageIndex = 0 then
         PathArquivo := Arquivo(C_159)
      else
         PathArquivo := Arquivo(C_160);

   if pgOpc.ActivePageIndex = 0 then
      frmPDV.ECF.PafMF_MFD_Espelho(DtInicial.Date, DtFinal.Date, PathArquivo)
   else
      frmPDV.ECF.PafMF_MFD_Espelho(Trunc(COOInicial.Value), Trunc(COOFinal.Value), PathArquivo);

   ShowMessage(Format(C_MSG, [PathArquivo]));
{$ENDIF}
end;

procedure TfrmMenuFisc.Estoque;
begin
;
end;

procedure TfrmMenuFisc.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'MENU FISCAL ' + C_117;
   TabData.TabVisible := False;
   TabDoc.TabVisible  := False;
   TabProd.TabVisible := False;
end;

procedure TfrmMenuFisc.FormShow(Sender: TObject);
begin
   inherited;
   CfgMenu;
   {$IFNDEF PDV} TabECF.TabVisible := False; {$ENDIF}
   {$IFDEF PDV}  TabECF.TabVisible := True;  {$ENDIF}
   RgMenuFisc.ItemIndex := 0;
   pgOpc.ActivePage     := TabVazio;
end;

procedure TfrmMenuFisc.IdentPaf;
begin
{$IFDEF PDV}
   frmPDV.ECF.PafMF_RelIdentificacaoPafECF(frmPDV.ECF.AAC.IdentPAF, DM_PDV.Indice_RG('identpaf'));
   DM_PDV.Gravar_coo_ini(frmPDV.ECF.NumCOO);
   {$ENDIF}
end;

procedure TfrmMenuFisc.ITP;
begin
   ShowMessage(C_184);
end;

procedure TfrmMenuFisc.LeAliq;
var
   i: integer;
function Converte_paf(indice, tipo: string; aliq: currency): string;
begin
   Result := Concat(indice, tipo, LFill(FloatToStr(aliq*100),4,'0'));
end;

function Converte_ecf(aliq: currency): string;
begin
   Result := LFill(FloatToStr(aliq*100),4,'0');
end;

begin
{$IFDEF PDV}
   mECF.Lines.Clear;
   frmPDV.ECF.CarregaAliquotas;
   DM_PDV.DB.ExecSQL('delete from aliquota where numecf=' + Texto_Mysql(StrToInt(DM_ECF.st_ECF_Num)));
   DM_PDV.TAliq.Open('select * from aliquota where numecf=' + Texto_Mysql(StrToInt(DM_ECF.st_ECF_Num)));

   for i := 0 to frmPDV.ECF.Aliquotas.Count -1 do
   begin
      mECF.Lines.Append('Aliquota: '+ String(IntToStrZero(frmPDV.ECF.Aliquotas[i].Sequencia, 2))+
                        ' Indice: '+ frmPDV.ECF.Aliquotas[i].Indice +' -> '+
                        FloatToStrF(frmPDV.ECF.Aliquotas[i].Aliquota, ffNumber, 15,2) + ' '+
                        iiF(frmPDV.ECF.Aliquotas[i].Tipo = 'T','ICMS', 'ISS')
      );

      if CBBanco.Checked then
      begin
         DM_PDV.TAliq.Append;
         DM_PDV.TAliqcod_ecf.AsString    := Converte_ecf(frmPDV.ECF.Aliquotas[i].Aliquota);
         DM_PDV.TAliqcod_paf.AsString    := Converte_paf(String(IntToStrZero(frmPDV.ECF.Aliquotas[i].Sequencia, 2)),
                                                         frmPDV.ECF.Aliquotas[i].Tipo,
                                                         frmPDV.ECF.Aliquotas[i].Aliquota);
         DM_PDV.TAliqindice_ecf.AsString := String(IntToStrZero(frmPDV.ECF.Aliquotas[i].Sequencia, 2));
         DM_PDV.TAliqnumecf.AsString     := frmPDV.ECF.NumECF;
         DM_PDV.TAliq.Post;
      end;
   end;
{$ENDIF}
end;


procedure TfrmMenuFisc.LeFpag;
var
   i: integer;
   s: string;
begin
{$IFDEF PDV}
   mECF.Lines.Clear;
   frmPDV.ECF.CarregaFormasPagamento;
   DM_PDV.TFPag.Open('select * from fpag where numecf=' + Texto_Mysql(DM_ECF.st_ECF_Num));
   DM_PDV.TFPag.EmptyDataSet;

   for i := 0 to Pred(frmPDV.ECF.FormasPagamento.Count) do
   if frmPDV.ECF.FormasPagamento[i].Descricao <> C_ST_VAZIO then
        mECF.Lines.Append( C_180 +
                           frmPDV.ECF.FormasPagamento[i].Indice + ' -> ' +
                           frmPDV.ECF.FormasPagamento[i].Descricao +
                           Iif(frmPDV.ECF.FormasPagamento[i].PermiteVinculado,
                           C_181, C_182)
     );

   if CBBanco.Checked then
   begin
      DM_PDV.TFPag.Append;
      DM_PDV.TFPagdescr.AsString      := 'DESCONTO';
      DM_PDV.TFPagtipo.AsString       := 'DES';
      DM_PDV.TFPagindice_tef.AsString := '00';
      DM_PDV.TFPaguso.AsString        := '-';
      DM_PDV.TFPagaprazo.AsString     := 'N';
      DM_PDV.TFPagnumecf.AsString     := frmPDV.ECF.NumECF;
      DM_PDV.TFPag.Post;

      for i := 0 to frmPDV.ECF.FormasPagamento.Count -1 do
      if frmPDV.ECF.FormasPagamento[i].Descricao <> C_ST_VAZIO then
      begin
         DM_PDV.TFPag.Append;
         DM_PDV.TFPagdescr.AsString := frmPDV.ECF.FormasPagamento[i].Descricao;
         DM_PDV.TFPagaprazo.AsString := 'N';

         s := AnsiUpperCase(copy(frmPDV.ECF.FormasPagamento[i].Descricao, 1, 3));

         if s = 'DIN' then
            DM_PDV.TFPagtipo.AsString := 'DIN'
         else
         if s = 'CHE' then
            DM_PDV.TFPagtipo.AsString := 'CHQ'
         else
         if s = 'CAR' then
            DM_PDV.TFPagtipo.AsString := 'CRT'
         else
         if s = 'TEF' then
            DM_PDV.TFPagtipo.AsString := 'CRT'
         else
         if (s = 'PRA')or(s = 'FAT') then
         begin
            DM_PDV.TFPagtipo.AsString  := 'FAT';
            DM_PDV.TFPagaprazo.AsString := 'S';
         end
         else
            DM_PDV.TFPagtipo.AsString := 'TKT';

         DM_PDV.TFPagindice_tef.AsString := frmPDV.ECF.FormasPagamento[i].Indice;
         DM_PDV.TFPaguso.AsString        := '-';
         DM_PDV.TFPagnumecf.AsString     := frmPDV.ECF.NumECF;
         DM_PDV.TFPag.Post;
      end;

      frmFPgto := TfrmFPgto.Create(self);
      frmFPgto.ShowModal;

      if Assigned(frmFPgto) then
         FreeAndNil(frmFPgto);
   end;
{$ENDIF}
end;

procedure TfrmMenuFisc.LeCNF;
var
   i, ecf: integer;
begin
{$IFDEF PDV}
   mECF.Lines.Clear;
   frmPDV.ECF.CarregaComprovantesNaoFiscais;
   ecf := StrToInt(frmPDV.ECF.NumECF);
   DM_PDV.TCNF.Open('select * from cnf where numecf=' + Texto_Mysql(DM_ECF.st_ECF_Num));
   for i := 0 to frmPDV.ECF.ComprovantesNaoFiscais.Count -1 do
   begin
      if frmPDV.ECF.ComprovantesNaoFiscais[i].Descricao <> C_ST_VAZIO then
         mECF.Lines.Append( 'CNF:' +  frmPDV.ECF.ComprovantesNaoFiscais[i].Indice + ' -> ' +
                            frmPDV.ECF.ComprovantesNaoFiscais[i].Descricao
        );


      if CBBanco.Checked then
      begin
         if (frmPDV.ECF.RelatoriosGerenciais[i].Descricao <> C_ST_VAZIO)and
            (not DM_PDV.TCNF.Locate('id', StrToInt(frmPDV.ECF.ComprovantesNaoFiscais[i].Indice), [])) then
         begin
            DM_PDV.TCNF.Append;
            DM_PDV.TCNFid.AsString   := Trim(frmPDV.ECF.ComprovantesNaoFiscais[i].Indice);
            DM_PDV.TCNFNome.AsString := Trim(frmPDV.ECF.ComprovantesNaoFiscais[i].Descricao);
            DM_PDV.TCNFnumecf.value  := ecf;
            DM_PDV.TCNF.Post;
         end;
      end;
   end;

   if CBBanco.Checked then
   begin
      pnlAguarde.Hide;
      frmTabRelGer := TfrmTabRelGer.Create(self);
      frmTabRelGer.DS1.DataSet := DM_PDV.TCNF;
      frmTabRelGer.Caption := 'TABELA DE COMPROV. NÃO FISCAL DO ECF';
      frmTabRelGer.ShowModal;
      FreeAndNil(frmTabRelGer);
   end;
{$ENDIF}
end;

procedure TfrmMenuFisc.LeRelGer;
var
   i, ecf: integer;
begin
{$IFDEF PDV}
   mECF.Lines.Clear;
   frmPDV.ECF.CarregaRelatoriosGerenciais;
   ecf := StrToInt(frmPDV.ECF.NumECF);
   DM_PDV.TRG.Open('select * from rg where numecf=' + Texto_Mysql(DM_ECF.st_ECF_Num));
   DM_PDV.TRG.first;

   for i := 0 to Pred(frmPDV.ECF.RelatoriosGerenciais.Count) do
   begin
      if frmPDV.ECF.RelatoriosGerenciais[i].Descricao <> C_ST_VAZIO then
         mECF.Lines.Append( 'RG.:' +  frmPDV.ECF.RelatoriosGerenciais[i].Indice + ' -> ' +
                            frmPDV.ECF.RelatoriosGerenciais[i].Descricao
        );

      if CBBanco.Checked then
      begin
         if (frmPDV.ECF.RelatoriosGerenciais[i].Descricao <> C_ST_VAZIO)and
            (not DM_PDV.TRG.Locate('id', StrToInt(frmPDV.ECF.RelatoriosGerenciais[i].Indice), [])) then
         begin
            DM_PDV.TRG.Append;
            DM_PDV.TRGid.AsString   := Trim(frmPDV.ECF.RelatoriosGerenciais[i].Indice);
            DM_PDV.TRGNome.AsString := Trim(frmPDV.ECF.RelatoriosGerenciais[i].Descricao);
            DM_PDV.TRGnumecf.value  := ecf;
            DM_PDV.TRG.Post;
         end;
      end;
   end;

   if CBBanco.Checked then
   begin
      pnlAguarde.Hide;
      frmTabRelGer := TfrmTabRelGer.Create(self);
      frmTabRelGer.ShowModal;
      FreeAndNil(frmTabRelGer);
   end;
{$ENDIF}
end;

procedure TfrmMenuFisc.LMFC;
var
  PathArquivo: string;
  i, j: integer;
begin
{$IFDEF PDV}
   i := trunc(COOInicial.Value);
   j := trunc(COOFinal.Value);

   if not chkMenuFiscalGerarArquivo.Checked then //impresso
   begin
      if pgOpc.ActivePageIndex = 0 then
        frmPDV.ECF.PafMF_LMFC_Impressao(DtInicial.Date, DtFinal.Date)
      else
        frmPDV.ECF.PafMF_LMFC_Impressao(i, j);
      DM_PDV.Gravar_coo_ini(frmPDV.ECF.NumCOO);
   end
   else   //em arquivo
   begin
      if pgOpc.ActivePageIndex = 0 then
         PathArquivo := Arquivo(C_155)
      else
         PathArquivo := Arquivo(C_156);

      if pgOpc.ActivePageIndex = 0 then
         frmPDV.ECF.PafMF_LMFC_Espelho(DtInicial.Date, DtFinal.Date, PathArquivo)
      else
        frmPDV.ECF.PafMF_LMFC_Espelho(i, j, PathArquivo);

      ShowMessage(Format(C_MSG, [PathArquivo]));
   end;
{$ENDIF}
end;

procedure TfrmMenuFisc.LMFS;
var
  PathArquivo: string;
  i, j: integer;
begin
{$IFDEF PDV}
   //gerar arquivo
   i := trunc(COOInicial.Value);
   j := trunc(COOFinal.Value);

   if not chkMenuFiscalGerarArquivo.Checked then //impresso
   begin
      if pgOpc.ActivePageIndex = 0 then
        frmPDV.ECF.PafMF_LMFS_Impressao(DtInicial.Date, DtFinal.Date)
      else
        frmPDV.ECF.PafMF_LMFS_Impressao(i, j);

      DM_PDV.Gravar_coo_ini(frmPDV.ECF.NumCOO);
   end
   else   //em arquivo
   begin
      if pgOpc.ActivePageIndex = 0 then
         PathArquivo := Arquivo(C_155)
      else
         PathArquivo := Arquivo(C_156);

      if pgOpc.ActivePageIndex = 0 then
         frmPDV.ECF.PafMF_LMFS_Espelho(DtInicial.Date, DtFinal.Date, PathArquivo)
      else
        frmPDV.ECF.PafMF_LMFS_Espelho(i, j, PathArquivo);

      ShowMessage(Format(C_MSG, [PathArquivo]));
   end;
{$ENDIF}
end;

procedure TfrmMenuFisc.Mudar_HV;
begin
{$IFDEF PDV}
   if (MessageBox(0, 'Confirma a mudança do Horário de verão?', 'ATENÇÃO!', MB_ICONQUESTION or MB_YESNO) = idNo) then
      exit;

   try
      frmPDV.ECF.MudaHorarioVerao;
      mECF.Lines.Text := 'HV alterado.';
   except
      on E: exception do
         mECF.Lines.Text := E.Message;
   end;
{$ENDIF}
end;

procedure TfrmMenuFisc.PreencherHeader(Header: TRegistroX1);
begin
  // o header dos relatórios PAF: a maioria são todos iguais
  with Header do
  begin
     CNPJ             := Number(DM.QEmpresacnpj.AsString);
     IE               := Number(DM.QEmpresaie.AsString);
     IM               := Number(DM.QEmpresaim.AsString);
     RAZAOSOCIAL      := DM.QEmpresarazao_social.AsString;
     InclusaoExclusao := False;
  end;
end;

procedure TfrmMenuFisc.Gerar_REQUISITO_XXVI(data: TDate);
begin
//   Log('Gerar_REQUISITO_XXVI','INICIO', 'conectando...');
   if not DM.Conectar then
      exit;

  DM.TPAF_R01.Open('select * from paf_r01 where nmro=' + Texto_Mysql(DM_ECF.st_ECF_Num));

  if DM.TPAF_R01.IsEmpty then
  begin
     exit;
  end;

 // Log('Gerar_REQUISITO_XXVI','Abrindo tabelas', 'Preenchendo headers...');

  DM.QSoftHouse.Open;
  DM.QEmpresa.Open;
  PreencherHeader(DM_ECF.PAF.PAF_U.RegistroU1);
  PreencherHeader(DM_ECF.PAF.PAF_P.RegistroP1);
  PreencherHeader(DM_ECF.PAF.PAF_E.RegistroE1); // preencher header do arquivo

  AbreForm(Tfrmprogress,frmprogress, False);

  //lista os A2
// Log('Gerar_REQUISITO_XXVI','A2', 'Listando...');

  DMConn.Q1.Open('select group_concat(id) from paf_r02 where num_ecf=' +
              Texto_Mysql(DM_ECF.st_ECF_Num) + ' and dt_movi between ' +
              data_My(data) + ' and ' + data_My(data)
  );
//  Log('Gerar_REQUISITO_XXVI','A2', 'filtrando...');

  DM.TPAF_A2.Open('select * from paf_a2 where r02 in(' + DMConn.Q1.Fields[0].AsString + ')');
  DM.TPAF_A2.FetchAll;

  frmprogress.bar1.Properties.Max := DM.TPAF_A2.RecordCount;
  DM_ECF.PAF.PAF_A.RegistroA2.Clear;

  Log('Gerar_REQUISITO_XXVI','A2', 'Gravando dados...');

  while not DM.TPAF_A2.Eof do
  begin
     frmprogress.bar1.Position := DM.TPAF_A2.RecNo;
     Application.ProcessMessages;

     with DM_ECF.PAF.PAF_A.RegistroA2.New do
     begin
        DT        := DM.TPAF_A2data.Value;
        MEIO_PGTO := DM.TPAF_A2fpag.AsString;
        TIPO_DOC  := DM.TPAF_A2tipo.AsString; //1-CupomFiscal, 2-CNF, 3-Nota Fiscal
        VL        := DM.TPAF_A2valor.Value;
      //  DMConn.Q1.Open('select fn_reg_valido("A2",' + DM.TPAF_A2id.AsString + ',' + Texto_Mysql(_C) + ')');
        RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;
     end;
     DM.TPAF_A2.Next;
  end;

  //P2
//  Log('Gerar_REQUISITO_XXVI','P2', 'Obtendo registros...');

  DMConn.Q5.Open('select id, cod_gtin,nome,calculo_por_arredondamento,producao_propria,' +
             'aliq_ecf,vrvenda_vista,sigla_unid from vw_estoque where suspenso ="N"');

  DMConn.Q5.FetchAll;
  frmprogress.bar1.Properties.Max := DMConn.Q5.RecordCount;
  DM_ECF.PAF.PAF_P.RegistroP2.Clear;

//  Log('Gerar_REQUISITO_XXVI','P2', 'gravando registros...');

  while not DMConn.Q5.Eof do
  begin
      frmprogress.bar1.Position := DMConn.Q5.RecNo;
      Application.ProcessMessages;

      with DM_ECF.PAF.PAF_P.RegistroP2.New do
      begin
        COD_MERC_SERV := DMConn.Q5.FieldByName('cod_gtin').AsString;
        DESC_MERC_SERV:= DMConn.Q5.FieldByName('nome').AsString;
        UN_MED        := DMConn.Q5.FieldByName('sigla_unid').AsString;
        IAT           := Iif(DMConn.Q5.FieldByName('calculo_por_arredondamento').AsString ='S','A','T');
        IPPT          := Iif(DMConn.Q5.FieldByName('producao_propria').AsString ='S','P','T');
        ST            := Iif(Number(DMConn.Q5.FieldByName('aliq_ecf').AsString) <> '', 'T', Copy(DMConn.Q5.FieldByName('aliq_ecf').AsString,1,1));
        ALIQ          := StrToFloatDef(DMConn.Q5.FieldByName('aliq_ecf').AsString,0)/100;
        VL_UNIT       := DMConn.Q5.FieldByName('vrvenda_vista').AsCurrency;

      //  DMConn.Q1.Open('select fn_reg_valido("ESTOQUE",' + DMConn.Q5.FieldByName('id').AsString + ',' + Texto_Mysql(_C) + ')');
        RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;
     end;

     DMConn.Q5.Next;
  end;

//  Log('Gerar_REQUISITO_XXVI','E2', 'Obtendo registros...');

  //E2
  DM.TPAF_E2.Open('select * from paf_e2');
  DM.TPAF_E2.FetchAll;
  frmprogress.bar1.Properties.Max := DM.TPAF_E2.RecordCount;

  DM_ECF.PAF.PAF_E.RegistroE2.Clear;

//  Log('Gerar_REQUISITO_XXVI','E2', 'Gravando registros...');

  while not DM.TPAF_E2.Eof do
  begin
     frmprogress.bar1.Position := DM.TPAF_E2.RecNo;
     Application.ProcessMessages;

     with DM_ECF.PAF.PAF_E.RegistroE2.New do
     begin
        COD_MERC := DM.TPAF_E2codigo.AsString;
        DESC_MERC:= DM.TPAF_E2nome.AsString;
        UN_MED   := DM.TPAF_E2unid.AsString;
        QTDE_EST := DM.TPAF_E2qtd.Value;

       // DMConn.Q1.Open('select fn_reg_valido("E2",' + DM.TPAF_E2id.AsString + ',' + Texto_Mysql(_C) + ')');
        RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;
     end;
     DM.TPAF_E2.Next;
  end;

  //E3
  Log('Gerar_REQUISITO_XXVI','E3', 'Obtendo registros...');

  DM.TPAF_E3.Open('select * from paf_e3');

//  Log('Gerar_REQUISITO_XXVI','E3', 'Gravando registros...');

  if not DM.TPAF_E3.IsEmpty then
  with DM_ECF.PAF.PAF_E.RegistroE3 do
  begin
     NUM_FAB      := DM.TPAF_E3serie.AsString;
     MF_ADICIONAL := DM.TPAF_E3mf_adic.AsString;
     TIPO_ECF     := DM.TPAF_E3tipo_ecf.AsString;
     MARCA_ECF    := DM.TPAF_E3marca_ecf.AsString;
     MODELO_ECF   := DM.TPAF_E3mod_ecd.AsString;
     DT_EST       := DM.TPAF_E3data_estoque.Value + DM.TPAF_E3hora_estoque.Value;

    // DMConn.Q1.Open('select fn_reg_valido("E3",' + DM.TPAF_E3id.AsString + ',' + Texto_Mysql(_C) + ')');
     RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;
  end;

  // Registro R1 - Identificação do ECF, do Usuário, do PAF-ECF e da Empresa Desenvolvedora e Dados do Arquivo
//  Log('Gerar_REQUISITO_XXVI','R01', 'Gravando registros...');

  while not DM.TPAF_R01.Eof do
  begin
     with DM_ECF.PAF.PAF_R.RegistroR01.New do
     begin
       NUM_FAB     := DM.TPAF_R01serie.AsString;
       MF_ADICIONAL:= DM.TPAF_R01mf_adic.AsString;
       TIPO_ECF    := DM.TPAF_R01tipo.AsString;
       MARCA_ECF   := DM.TPAF_R01marca.AsString;
       MODELO_ECF  := DM.TPAF_R01modelo.AsString;
       VERSAO_SB   := DM.TPAF_R01versao_sb.AsString;
       DT_INST_SB  := DM.TPAF_R01data_sb.Value;
       HR_INST_SB  := StrToTime(DM.TPAF_R01hora_sb.AsString);
       NUM_SEQ_ECF := DM.TPAF_R01nmro.Value;
       CNPJ        := Number(DM.QEmpresacnpj.AsString);
       IE          := Number(DM.QEmpresaie.AsString);
       CNPJ_SH     := DM_ECF.PAF.AAC.IdentPAF.Empresa.CNPJ;
       IE_SH       := DM_ECF.PAF.AAC.IdentPAF.Empresa.IE;
       IM_SH       := DM_ECF.PAF.AAC.IdentPAF.Empresa.IM;
       NOME_SH     := DM_ECF.PAF.AAC.IdentPAF.Empresa.RazaoSocial;
       NOME_PAF    := DM_ECF.PAF.AAC.IdentPAF.Paf.Nome;
       VER_PAF     := DM_ECF.PAF.AAC.IdentPAF.Paf.Versao;
       COD_MD5     := DM_ECF.PAF.AAC.IdentPAF.Paf.PrincipalExe.MD5;
       DT_INI      := data;
       DT_FIN      := data;
       ER_PAF_ECF  := DM_ECF.PAF.AAC.IdentPAF.VersaoER;

      // DMConn.Q1.Open('select fn_reg_valido("R01",' + DM.TPAF_R01id.AsString + ',' + Texto_Mysql(_C) + ')');
       RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;

       Log('Gerar_REQUISITO_XXVI','R02', 'Obtendo registros...');
       // Registro R02 - Relação de Reduções Z  e R03 - Detalhe da Redução Z
       DM.TPAF_R02.Open('select * from paf_r02 where num_ecf=' + Texto_Mysql(DM.TPAF_R01nmro.Value) +
                        ' and dt_movi=' + data_My(data)
       );

       DM.TPAF_R02.FetchAll;

   //    Log('Gerar_REQUISITO_XXVI','R02', 'Gravando registros...');

       while not DM.TPAF_R02.Eof do
       begin
           frmprogress.bar1.Position := DM.TPAF_R02.RecNo;
           Application.ProcessMessages;

           with RegistroR02.New do
           begin
              NUM_USU     := DM.TPAF_R02num_usu.Value;
              CRZ         := DM.TPAF_R02crz.Value;
              COO         := DM.TPAF_R02coo.Value;
              CRO         := DM.TPAF_R02cro.Value;
              DT_MOV      := DM.TPAF_R02dt_movi.Value;
              DT_EMI      := DM.TPAF_R02dt_em.Value;
              HR_EMI      := DM.TPAF_R02hora_em.Value;
              VL_VBD      := DM.TPAF_R02venda_bruta.Value;
              PAR_ECF     := 'N';
              // Registro R03 - FILHO
         //     Log('Gerar_REQUISITO_XXVI','   R03', 'Obtendo registros...');
              DM.TPAF_R03.Open('select * from paf_r03 where r02=' + Texto_Mysql(DM.TPAF_R02id.Value));

         //     Log('Gerar_REQUISITO_XXVI','   R03', 'Gravando registros...');

              while not DM.TPAF_R03.Eof do
              begin
                with RegistroR03.New do
                begin
                   TOT_PARCIAL := DM.TPAF_R03cod_tot_parcial.AsString;
                   VL_ACUM     := DM.TPAF_R03valor_tot_parcial.Value;
                  // DMConn.Q1.Open('select fn_reg_valido("R03",' + DM.TPAF_R03id.AsString + ',' + Texto_Mysql(_C) + ')');
                   RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;
                end;
                DM.TPAF_R03.Next;
              end;//fim loop r03
           end;//fim loop TPafR02

          // Registro R04 - Cupom Fiscal, Nota Fiscal de Venda a Consumidor ou Bilhete de Passagem
          //        e R05 - Detalhe do Cupom Fiscal, Nota Fiscal de Venda a Consumidor ou Bilhete de Passagem
          //        e R07 - Detalhe do Cupom Fiscal e do Documento Não Fiscal - Meio de Pagamento

      //     Log('Gerar_REQUISITO_XXVI','R04', 'Obtendo registros...');

           DM.TPAF_R04.Open('select * from paf_r04 where r02=' + Texto_Mysql(DM.TPAF_R02id.Value));

      //     Log('Gerar_REQUISITO_XXVI','R04', 'Gravando registros...');

           while not DM.TPAF_R04.Eof do
           begin
              with RegistroR04.New do
              begin
                 NUM_USU     := DM.TPAF_R02num_usu.Value;
                 NUM_CONT    := DM.TPAF_R04ccf.Value;
                 COO         := DM.TPAF_R04coo.Value;
                 DT_INI      := DM.TPAF_R04dt_em.Value;
                 SUB_DOCTO   := DM.TPAF_R04subtotal.Value;
                 SUB_DESCTO  := DM.TPAF_R04desconto.Value;
                 TP_DESCTO   := DM.TPAF_R04tipo_desc.AsString; //sempre em valor
                 SUB_ACRES   := DM.TPAF_R04acrescimo.Value;
                 TP_ACRES    := DM.TPAF_R04tipo_acresc.AsString;
                 VL_TOT      := DM.TPAF_R04vr_liq.Value;
                 CANC        := DM.TPAF_R04canc.AsString;
                 VL_CA       := 0; //nao faço canc parcial
                 ORDEM_DA    := DM.TPAF_R04ordem_desc_acresc.AsString;

                 if Number(DM.TPAF_R04cnpj_cliente.AsString) <> C_ST_VAZIO then
                 begin
                    NOME_CLI    := DM.TPAF_R04nome_cliente.AsString;
                    CNPJ_CPF    := Number(DM.TPAF_R04cnpj_cliente.AsString);
                 end;

                // DMConn.Q1.Open('select fn_reg_valido("R04",' + DM.TPAF_R04id.AsString + ',' + Texto_Mysql(_C) + ')');
                 RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;

            //     Log('Gerar_REQUISITO_XXVI','    R05', 'Obtendo registros...');

                 // Registro R05 - FILHO
                 DM.TPAF_R05.Open('select * from paf_r05 where r04=' + Texto_Mysql(DM.TPAF_R04id.Value));

            //     Log('Gerar_REQUISITO_XXVI','    R05', 'Gravando registros...');

                 while not DM.TPAF_R05.Eof do
                 begin
                    with RegistroR05.New do
                    begin
                       NUM_ITEM     := DM.TPAF_R05item.Value;
                       COD_ITEM     := DM.TPAF_R05codigo.AsString;
                       DESC_ITEM    := DM.TPAF_R05nome.AsString;
                       QTDE_ITEM    := DM.TPAF_R05qtd.Value;
                       UN_MED       := DM.TPAF_R05unid.AsString;
                       VL_UNIT      := DM.TPAF_R05vrunit.Value;
                       DESCTO_ITEM  := DM.TPAF_R05desconto.Value;
                       ACRES_ITEM   := 0;// nao faço acrescimo
                       VL_TOT_ITEM  := DM.TPAF_R05total.Value;
                       COD_TOT_PARC := DM.TPAF_R05cod_totaliz.AsString;
                       IND_CANC     := DM.TPAF_R05canc.AsString;
                       QTDE_CANC    := DM.TPAF_R05qtd_canc.Value;
                       VL_CANC      := DM.TPAF_R05vr_canc.Value;
                       VL_CANC_ACRES:= DM.TPAF_R05vr_canc_acresc.Value;
                       IAT          := DM.TPAF_R05iat.AsString;
                       IPPT         := DM.TPAF_R05ippt.AsString;
                       QTDE_DECIMAL := DM.TPAF_R05casas_dec_qtd.AsInteger;
                       VL_DECIMAL   := DM.TPAF_R05casas_dec_vrunit.AsInteger;
                      // DMConn.Q1.Open('select fn_reg_valido("R05",' + DM.TPAF_R05id.AsString + ',' + Texto_Mysql(_C) + ')');
                       RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;
                    end;
                    DM.TPAF_R05.Next;
                 end;

              //   Log('Gerar_REQUISITO_XXVI','        R07', 'Obtendo registros...');

                 // Registro R07 - FILHO do R04
                 DM.TPAF_R07.Open('select * from paf_r07 where r04=' + Texto_Mysql(DM.TPAF_R04id.Value));

               //  Log('Gerar_REQUISITO_XXVI','        R07', 'Gravando registros...');

                 while not DM.TPAF_R07.Eof do
                 begin
                    with RegistroR07.New do
                    begin
                       CCF      := DM.TPAF_R04ccf.Value;
                       MP       := DM.TPAF_R07meio_pag.AsString;
                       VL_PAGTO := DM.TPAF_R07valor.Value;
                       IND_EST  := DM.TPAF_R07extorno.AsString;
                       VL_EST   := DM.TPAF_R07valor_extorno.Value;
                       //DMConn.Q1.Open('select fn_reg_valido("R07",' + DM.TPAF_R07id.AsString + ',' + Texto_Mysql(_C) + ')');
                       RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;
                    end;
                    DM.TPAF_R07.Next;
                 end;//loop R07 fim
              end;//R04new fim
              DM.TPAF_R04.Next;
           end;//loop paf_R04 fim

       //    Log('Gerar_REQUISITO_XXVI','    R06', 'Obtendo registros...');

           // Registro R06 - Demais documentos emitidos pelo ECF
           //        e R07 - Detalhe do Cupom Fiscal e do Documento Não Fiscal - Meio de Pagamento
           DM.TPAF_R06.Open('select * from paf_r06 where r02=' + Texto_Mysql(DM.TPAF_R02id.Value));

        //   Log('Gerar_REQUISITO_XXVI','    R06', 'Gravando registros...');

           while not DM.TPAF_R06.Eof do
           begin
              with RegistroR06.New do
              begin
                  NUM_USU     := DM.TPAF_R02num_usu.Value;
                  COO         := DM.TPAF_R06coo.Value;
                  GNF         := DM.TPAF_R06gnf.Value;
                  GRG         := DM.TPAF_R06grg.Value;
                  CDC         := DM.TPAF_R06cdc.Value;
                  DENOM       := DM.TPAF_R06denominacao.AsString;
                  DT_FIN      := DM.TPAF_R06dt_emissao.Value;
                  HR_FIN      := DM.TPAF_R06hora_em.Value;
                // DMConn.Q1.Open('select fn_reg_valido("R06",' + DM.TPAF_R06id.AsString + ',' + Texto_Mysql(_C) + ')');
                  RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;

           //       Log('Gerar_REQUISITO_XXVI','        R07', 'Obtendo registros...');

                  // Registro R07 - FILHO do R04
                  DM.TPAF_R07.Open('select * from paf_r07 where r06=' + Texto_Mysql(DM.TPAF_R06id.Value));

            //      Log('Gerar_REQUISITO_XXVI','        R07', 'Gravando registros...');

                  while not DM.TPAF_R07.Eof do
                  begin
                     with RegistroR07.New do
                     begin
                        MP          := DM.TPAF_R07meio_pag.AsString;
                        VL_PAGTO    := DM.TPAF_R07valor.Value;
                        IND_EST     := DM.TPAF_R07extorno.AsString;
                        VL_EST      := DM.TPAF_R07valor_extorno.Value;
                       // DMConn.Q1.Open('select fn_reg_valido("R07",' + DM.TPAF_R07id.AsString + ',' + Texto_Mysql(_C) + ')');
                        RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;
                     end;
                     DM.TPAF_R07.Next;
                  end;//loop TPafR07 fim
              end;
              DM.TPAF_R06.Next;
           end;//loop TPAfR06 fim
           DM.TPAF_R02.Next;
        end;//loop TPAFr02 fim
     end; //fim do r01
     DM.TPAF_R01.Next;
   end;//fim loop TPAfR01

   Log('Gerar_REQUISITO_XXVI','FIM', 'Processo terminado...');

   frmprogress.btnSair.Click;

   if Assigned(frmprogress) then
      FreeAndNil(frmprogress);

  DM_ECF.PAF.SaveToFile_RegistrosPAF(DM_ECF.st_ECF_CNIEE +
                                      Copy(DM_ECF.st_ECF_Serie,Length(DM_ECF.st_ECF_Serie)-13,14) +
                                      FormatDateTime('ddmmyyyy', data) + '.txt');
  {$IFDEF PDV}
  frmPDV.Popup('Arquivo ' + Aqui(C_DIRFISCO,DM_ECF.st_ECF_CNIEE +
                Copy(DM_ECF.st_ECF_Serie,Length(DM_ECF.st_ECF_Serie)-13,14) +
                FormatDateTime('ddmmyyyy', data) + '.txt gerado.'));
  {$ENDIF}
end;

procedure TfrmMenuFisc.RegPAF;
var
   s: string;
   b,bb, b4, b5, b6: boolean;
begin
   bb := True;
   b4 := True;

   if not DM.Conectar then
      raise Exception.Create('O PDV não conseguiu estabelecer conexão com o servidor de dados.');

   if (RgEstoque.ItemIndex = 1)and(T1.IsEmpty) then
   begin
      raise Exception.Create('Foi selecionada a opção ESTOQUE PARCIAL, mas nenhum produto foi informado.');
   end;

   DM.QSoftHouse.Open;

  //U1
  DM.QEmpresa.Open;
  PreencherHeader(DM_ECF.PAF.PAF_U.RegistroU1);
  PreencherHeader(DM_ECF.PAF.PAF_P.RegistroP1);
  PreencherHeader(DM_ECF.PAF.PAF_E.RegistroE1); // preencher header do arquivo

  //inclusao exclusao no U1
  DMConn.Q1.Open('select count(*) from paf_incl_excl where registros <0 ');
  DM_ECF.PAF.PAF_U.RegistroU1.InclusaoExclusao := Iif(DMConn.Q1.Fields[0].AsInteger >0, True, false);

  //pesquisa dos dados
  DM.TPAF_R01.Open('select * from paf_r01 order by nmro');

  if DM.TPAF_R01.IsEmpty then
  begin
     ShowMessage('Nenhum registro R01 informado.');
     exit;
  end;

  AbreForm(Tfrmprogress,frmprogress, False);

  //lista os A2
  DMConn.Q1.Open('select group_concat(id) from paf_r02 where dt_movi between ' +
              data_My(DtInicial.Date) + ' and ' + data_My(DtFinal.Date)
  );

  if DMConn.Q1.Fields[0].AsString <> '' then
  begin
     DM.TPAF_A2.Open('select * from paf_a2 where r02 in(' + DMConn.Q1.Fields[0].AsString + ')');
     DM.TPAF_A2.FetchAll;

     frmprogress.bar1.Properties.Max := DM.TPAF_A2.RecordCount;
     DM_ECF.PAF.PAF_A.RegistroA2.Clear;

     while not DM.TPAF_A2.Eof do
     begin
        frmprogress.bar1.Position := DM.TPAF_A2.RecNo;
        Application.ProcessMessages;

        with DM_ECF.PAF.PAF_A.RegistroA2.New do
        begin
           DT        := DM.TPAF_A2data.Value;
           MEIO_PGTO := DM.TPAF_A2fpag.AsString;
           TIPO_DOC  := DM.TPAF_A2tipo.AsString; //1-CupomFiscal, 2-CNF, 3-Nota Fiscal
           VL        := DM.TPAF_A2valor.Value;
           DMConn.Q1.Open('select fn_reg_valido("A2",' + DM.TPAF_A2id.AsString + ',' + Texto_Mysql(_C) + ')');
           RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;
        end;
        DM.TPAF_A2.Next;
     end;
  end;

  //lista os A2  - NF
  DMConn.Q1.Open('select group_concat(id) from nf where Ide_dSaiEnt between ' +
              data_My(DtInicial.Date) + ' and ' + data_My(DtFinal.Date));

  if DMConn.Q1.Fields[0].AsString <> '' then
  begin
     DMConn.Q1.Open('select Ide_dSaiEnt, sum(ICMSTot_vNF) as valor ' +
                'from nf where id in(' + DMConn.Q1.Fields[0].AsString + ') group by Ide_dSaiEnt');
     DMConn.Q1.FetchAll;
     DM.ExecSQL('delete from paf_a2 where tipo=3 and data between' +
                 data_My(DtInicial.Date) + ' and ' + data_My(DtFinal.Date));

     frmprogress.bar1.Properties.Max := DMConn.Q1.RecordCount;

     while not DMConn.Q1.Eof do
     begin
        frmprogress.bar1.Position := DMConn.Q1.RecNo;
        Application.ProcessMessages;                           //ICMSTot_vNF

         DM.TPaf_A2.Open;

         DM.TPaf_A2.insert;
         DM.TPaf_A2ecf.Value        := 0;
         DM.TPaf_A2tipo.Value       := 3;
         DM.TPAF_A2data.Value       := Trunc(DMConn.Q1.FieldByName('Ide_dSaiEnt').AsDateTime);
         DM.TPAF_A2r02.Value        := 0;//valor inicial
         DM.TPAF_A2cod_fpag.Value   := 1;
         DM.TPAF_A2fpag.AsString    := 'Dinheiro';
         DM.TPaf_A2valor.Value      := DMConn.Q1.FieldByName('valor').AsCurrency;
         DM.TPaf_A2valor_canc.Value := 0; //grava o valor como referencia para abater se cancelar
         DM.TPaf_A2.Post;
         DMConn.Q1.Next;
     end;
     DM.Atu_Hash;
  end;


  DM.TPAF_A2.Open('select * from paf_a2 where tipo=3 and data between ' +
           data_My(DtInicial.Date) + ' and ' + data_My(DtFinal.Date));
  DM.TPAF_A2.FetchAll;

  frmprogress.bar1.Properties.Max := DM.TPAF_A2.RecordCount;

  while not DM.TPAF_A2.Eof do
  begin
     frmprogress.bar1.Position := DM.TPAF_A2.RecNo;
     Application.ProcessMessages;

     with DM_ECF.PAF.PAF_A.RegistroA2.New do
     begin
        DT        := DM.TPAF_A2data.Value;
        MEIO_PGTO := DM.TPAF_A2fpag.AsString;
        TIPO_DOC  := DM.TPAF_A2tipo.AsString; //1-CupomFiscal, 2-CNF, 3-Nota Fiscal
        VL        := DM.TPAF_A2valor.Value;
        DMConn.Q1.Open('select fn_reg_valido("A2",' + DM.TPAF_A2id.AsString + ',' + Texto_Mysql(_C) + ')');
        RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;
     end;
     DM.TPAF_A2.Next;
  end;


  //P2
  DMConn.Q5.Open('select id, cod_gtin,nome,calculo_por_arredondamento,producao_propria,' +
             'aliq_ecf,vrvenda_vista,sigla_unid from vw_estoque where suspenso ="N"');

  DMConn.Q5.FetchAll;
  frmprogress.bar1.Properties.Max := DMConn.Q5.RecordCount;
  DM_ECF.PAF.PAF_P.RegistroP2.Clear;

  while not DMConn.Q5.Eof do
  begin
      frmprogress.bar1.Position := DMConn.Q5.RecNo;
      Application.ProcessMessages;

      with DM_ECF.PAF.PAF_P.RegistroP2.New do
      begin
        COD_MERC_SERV := DMConn.Q5.FieldByName('cod_gtin').AsString;
        DESC_MERC_SERV:= DMConn.Q5.FieldByName('nome').AsString;
        UN_MED        := DMConn.Q5.FieldByName('sigla_unid').AsString;
        IAT           := Iif(DMConn.Q5.FieldByName('calculo_por_arredondamento').AsString ='S','A','T');
        IPPT          := Iif(DMConn.Q5.FieldByName('producao_propria').AsString ='S','P','T');
        ST            := Iif(Number(DMConn.Q5.FieldByName('aliq_ecf').AsString) <> '', 'T', Copy(DMConn.Q5.FieldByName('aliq_ecf').AsString,1,1));

        ALIQ          := StrToFloatDef(DMConn.Q5.FieldByName('aliq_ecf').AsString,0)/100;
        VL_UNIT       := DMConn.Q5.FieldByName('vrvenda_vista').AsCurrency;

        DMConn.Q1.Open('select fn_reg_valido("ESTOQUE",' + DMConn.Q5.FieldByName('id').AsString + ',' + Texto_Mysql(_C) + ')');
        RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;

     {   if RegistroValido then
        begin
           DMConn.Q1.Open('select id from empresa');
           DMConn.Q1.Open('select fn_reg_valido("EMPRESA",' + DMConn.Q1.FieldByName('id').AsString + ',' + Texto_Mysql(_C) + ')');
           RegistroValido:= DMConn.Q1.Fields[0].AsInteger = 1;
        end; }

     end;
     DMConn.Q5.Next;
  end;

  //E2
  if RgEstoque.ItemIndex = 0 then//total
     DM.TPAF_E2.Open('select * from paf_e2')
  else
  begin
     T1.First;
     s := '(';

     while not T1.Eof do
     begin
        s := s + T1id.AsString + ',';
        T1.Next;
     end;

     delete(s, length(s), 1);
     s := s + ')';
     DM.TPAF_E2.Open('select * from paf_e2 where cProd in ' + s );//parcial
  end;

  DM.TPAF_E2.FetchAll;
  frmprogress.bar1.Properties.Max := DM.TPAF_E2.RecordCount;

  DM_ECF.PAF.PAF_E.RegistroE2.Clear;

  while not DM.TPAF_E2.Eof do
  begin
     frmprogress.bar1.Position := DM.TPAF_E2.RecNo;
     Application.ProcessMessages;

     with DM_ECF.PAF.PAF_E.RegistroE2.New do
     begin
        COD_MERC := DM.TPAF_E2codigo.AsString;
        DESC_MERC:= DM.TPAF_E2nome.AsString;
        UN_MED   := DM.TPAF_E2unid.AsString;
        QTDE_EST := DM.TPAF_E2qtd.Value;

        DMConn.Q1.Open('select fn_reg_valido("E2",' + DM.TPAF_E2id.AsString + ',' + Texto_Mysql(_C) + ')');
        RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;

       { if RegistroValido then
        begin
           DMConn.Q1.Open('select id from empresa');
           DMConn.Q1.Open('select fn_reg_valido("EMPRESA",' + DMConn.Q1.FieldByName('id').AsString + ',' + Texto_Mysql(_C) + ')');
           RegistroValido:= DMConn.Q1.Fields[0].AsInteger = 1;
        end;}
     end;
     DM.TPAF_E2.Next;
  end;

  //E3
  DM.TPAF_E3.Open('select * from paf_e3');

  while not DM.TPAF_E3.Eof do
  begin
     with DM_ECF.PAF.PAF_E.RegistroE3 do
     begin
        NUM_FAB      := DM.TPAF_E3serie.AsString;
        MF_ADICIONAL := DM.TPAF_E3mf_adic.AsString;
        TIPO_ECF     := DM.TPAF_E3tipo_ecf.AsString;
        MARCA_ECF    := DM.TPAF_E3marca_ecf.AsString;
        MODELO_ECF   := DM.TPAF_E3mod_ecd.AsString;
        DT_EST       := DM.TPAF_E3data_estoque.Value + DM.TPAF_E3hora_estoque.Value;

        DMConn.Q1.Open('select fn_reg_valido("E3",' + DM.TPAF_E3id.AsString + ',' + Texto_Mysql(_C) + ')');
        RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;
     end;
     DM.TPAF_E3.Next;
  end;

  // Registro R1 - Identificação do ECF, do Usuário, do PAF-ECF e da Empresa Desenvolvedora e Dados do Arquivo

  while not DM.TPAF_R01.Eof do
  begin
     with DM_ECF.PAF.PAF_R.RegistroR01.New do
     begin
       NUM_FAB     := DM.TPAF_R01serie.AsString;
       MF_ADICIONAL:= DM.TPAF_R01mf_adic.AsString;
       TIPO_ECF    := DM.TPAF_R01tipo.AsString;
       MARCA_ECF   := DM.TPAF_R01marca.AsString;
       MODELO_ECF  := DM.TPAF_R01modelo.AsString;
       VERSAO_SB   := DM.TPAF_R01versao_sb.AsString;
       DT_INST_SB  := DM.TPAF_R01data_sb.Value;
       HR_INST_SB  := StrToTime(DM.TPAF_R01hora_sb.AsString);
       NUM_SEQ_ECF := DM.TPAF_R01nmro.Value;
       CNPJ        := Number(DM.QEmpresacnpj.AsString);
       IE          := Number(DM.QEmpresaie.AsString);
       CNPJ_SH     := DM_ECF.PAF.AAC.IdentPAF.Empresa.CNPJ;
       IE_SH       := DM_ECF.PAF.AAC.IdentPAF.Empresa.IE;
       IM_SH       := DM_ECF.PAF.AAC.IdentPAF.Empresa.IM;
       NOME_SH     := DM_ECF.PAF.AAC.IdentPAF.Empresa.RazaoSocial;
       NOME_PAF    := DM_ECF.PAF.AAC.IdentPAF.Paf.Nome;
       VER_PAF     := DM_ECF.PAF.AAC.IdentPAF.Paf.Versao;
       COD_MD5     := DM_ECF.AAC.IdentPAF.ArquivoListaAutenticados.MD5;
       DT_INI      := DtInicial.Date;
       DT_FIN      := DtFinal.Date;
       ER_PAF_ECF  := Number(DM_ECF.PAF.AAC.IdentPAF.VersaoER);

       DMConn.Q1.Open('select fn_reg_valido("R01",' + DM.TPAF_R01id.AsString + ',' + Texto_Mysql(_C) + ')');
       RegistroValido:= True;//DMConn.Q1.Fields[0].AsInteger = 1;

      { b := RegistroValido;

       if RegistroValido then
       begin
          DMConn.Q1.Open('select id from empresa');
          DMConn.Q1.Open('select fn_reg_valido("EMPRESA",' + DMConn.Q1.FieldByName('id').AsString + ',' + Texto_Mysql(_C) + ')');
          RegistroValido:= DMConn.Q1.Fields[0].AsInteger = 1;
       end;}

       // Registro R02 - Relação de Reduções Z  e R03 - Detalhe da Redução Z
       DM.TPAF_R02.Open('select * from paf_r02 where num_ecf=' + Texto_Mysql(DM.TPAF_R01nmro.Value) +
                        ' and dt_movi between ' + data_My(DtInicial.Date) + ' and ' + data_My(DtFinal.Date)
       );

       DM.TPAF_R02.FetchAll;

       while not DM.TPAF_R02.Eof do
       begin
           frmprogress.bar1.Position := DM.TPAF_R02.RecNo;
           Application.ProcessMessages;

           with RegistroR02.New do
           begin
              NUM_USU     := DM.TPAF_R02num_usu.Value;
              CRZ         := DM.TPAF_R02crz.Value;
              COO         := DM.TPAF_R02coo.Value;
              CRO         := DM.TPAF_R02cro.Value;
              DT_MOV      := DM.TPAF_R02dt_movi.Value;
              DT_EMI      := DM.TPAF_R02dt_em.Value;
              HR_EMI      := DM.TPAF_R02hora_em.Value;
              VL_VBD      := DM.TPAF_R02venda_bruta.Value;
              PAR_ECF     := 'N';
              RegistroValido  := True;//b;
               {if b then
               begin
                 DMConn.Q1.Open('select fn_reg_valido("R02",' + DM.TPAF_R02id.AsString + ',' + Texto_Mysql(_C) + ')');
                 RegistroValido:= DMConn.Q1.Fields[0].AsInteger = 1;
                 bb := RegistroValido;
               end;   }

              // Registro R03 - FILHO
              DM.TPAF_R03.Open('select * from paf_r03 where r02=' + Texto_Mysql(DM.TPAF_R02id.Value));

              while not DM.TPAF_R03.Eof do
              begin
                with RegistroR03.New do
                begin
                   TOT_PARCIAL := DM.TPAF_R03cod_tot_parcial.AsString;
                   VL_ACUM     := DM.TPAF_R03valor_tot_parcial.Value;

                   RegistroValido:= True;//bb;
                  { if RegistroValido then
                   begin
                      DMConn.Q1.Open('select fn_reg_valido("R03",' + DM.TPAF_R03id.AsString + ',' + Texto_Mysql(_C) + ')');
                      RegistroValido:= DMConn.Q1.Fields[0].AsInteger = 1;
                   end;}
                end;
                DM.TPAF_R03.Next;
              end;//fim loop r03
           end;//fim loop TPafR02

          // Registro R04 - Cupom Fiscal, Nota Fiscal de Venda a Consumidor ou Bilhete de Passagem
          //        e R05 - Detalhe do Cupom Fiscal, Nota Fiscal de Venda a Consumidor ou Bilhete de Passagem
          //        e R07 - Detalhe do Cupom Fiscal e do Documento Não Fiscal - Meio de Pagamento
           DM.TPAF_R04.Open('select * from paf_r04 where r02=' + Texto_Mysql(DM.TPAF_R02id.Value));

           while not DM.TPAF_R04.Eof do
           begin
              with RegistroR04.New do
              begin
                 NUM_USU     := DM.TPAF_R02num_usu.Value;
                 NUM_CONT    := DM.TPAF_R04ccf.Value;
                 COO         := DM.TPAF_R04coo.Value;
                 DT_INI      := DM.TPAF_R04dt_em.Value;
                 SUB_DOCTO   := DM.TPAF_R04subtotal.Value;
                 SUB_DESCTO  := DM.TPAF_R04desconto.Value;
                 TP_DESCTO   := Iif(DM.TPAF_R04desconto.Value> 0, DM.TPAF_R04tipo_desc.AsString, ''); //sempre em valor
                 SUB_ACRES   := DM.TPAF_R04acrescimo.Value;
                 TP_ACRES    := '';//DM.TPAF_R04tipo_acresc.AsString;
                 VL_TOT      := DM.TPAF_R04vr_liq.Value;
                 CANC        := DM.TPAF_R04canc.AsString;
                 VL_CA       := 0; //nao faço canc parcial
                 ORDEM_DA    := Iif(DM.TPAF_R04desconto.Value>0,DM.TPAF_R04ordem_desc_acresc.AsString,'');

                 NOME_CLI    := DM.TPAF_R04nome_cliente.AsString;
                 CNPJ_CPF    := Number(DM.TPAF_R04cnpj_cliente.AsString);

               RegistroValido  := True;//b;
               {if b then
                  RegistroValido  := bb;

               if bb then
               begin
                 DMConn.Q1.Open('select fn_reg_valido("R04",' + DM.TPAF_R04id.AsString + ',' + Texto_Mysql(_C) + ')');
                 RegistroValido:= DMConn.Q1.Fields[0].AsInteger = 1;
                 b4 := RegistroValido;
               end;}

                 // Registro R05 - FILHO
                 DM.TPAF_R05.Open('select * from paf_r05 where r04=' + Texto_Mysql(DM.TPAF_R04id.Value));

                 while not DM.TPAF_R05.Eof do
                 begin
                    with RegistroR05.New do
                    begin
                       NUM_ITEM     := DM.TPAF_R05item.Value;
                       COD_ITEM     := DM.TPAF_R05codigo.AsString;
                       DESC_ITEM    := DM.TPAF_R05nome.AsString;
                       QTDE_ITEM    := DM.TPAF_R05qtd.Value;
                       UN_MED       := DM.TPAF_R05unid.AsString;
                       VL_UNIT      := DM.TPAF_R05vrunit.Value;
                       DESCTO_ITEM  := DM.TPAF_R05desconto.Value;
                       ACRES_ITEM   := 0;// nao faço acrescimo
                       VL_TOT_ITEM  := DM.TPAF_R05total.Value;
                       COD_TOT_PARC := DM.TPAF_R05cod_totaliz.AsString;
                       IND_CANC     := DM.TPAF_R05canc.AsString;
                       QTDE_CANC    := DM.TPAF_R05qtd_canc.Value;
                       VL_CANC      := DM.TPAF_R05vr_canc.Value;
                       VL_CANC_ACRES:= DM.TPAF_R05vr_canc_acresc.Value;
                       IAT          := DM.TPAF_R05iat.AsString;
                       IPPT         := DM.TPAF_R05ippt.AsString;
                       QTDE_DECIMAL := DM.TPAF_R05casas_dec_qtd.AsInteger;
                       VL_DECIMAL   := DM.TPAF_R05casas_dec_vrunit.AsInteger;

               b5:=True;
               RegistroValido  := True;//b;

               {if b then
                  RegistroValido  := bb;

               if bb then
                  RegistroValido  := b4;

               if b4 then
               begin
                       DMConn.Q1.Open('select fn_reg_valido("R05",' + DM.TPAF_R05id.AsString + ',' + Texto_Mysql(_C) + ')');
                       RegistroValido:= DMConn.Q1.Fields[0].AsInteger = 1;
                       b5 := RegistroValido;
               end; }
                    end;
                    DM.TPAF_R05.Next;
                 end;

                 // Registro R07 - FILHO do R04
                 DM.TPAF_R07.Open('select * from paf_r07 where r04=' + Texto_Mysql(DM.TPAF_R04id.Value));

                 while not DM.TPAF_R07.Eof do
                 begin
                    with RegistroR07.New do
                    begin
                       COO      := DM.TPAF_R04coo.Value;
                       CCF      := DM.TPAF_R04ccf.Value;
                       MP       := DM.TPAF_R07meio_pag.AsString;
                       VL_PAGTO := DM.TPAF_R07valor.Value;
                       IND_EST  := DM.TPAF_R07extorno.AsString;
                       VL_EST   := DM.TPAF_R07valor_extorno.Value;


               RegistroValido  := True;//b;

               {if b then
                  RegistroValido  := bb;

               if bb then
                  RegistroValido  := b4;

               if b5 then
                  RegistroValido  := b5;

               if b5 then
               begin
                       DMConn.Q1.Open('select fn_reg_valido("R07",' + DM.TPAF_R07id.AsString + ',' + Texto_Mysql(_C) + ')');
                       RegistroValido:= DMConn.Q1.Fields[0].AsInteger = 1;
               end;}
                    end;
                    DM.TPAF_R07.Next;
                 end;//loop R07 fim
              end;//R04new fim
              DM.TPAF_R04.Next;
           end;//loop paf_R04 fim

           // Registro R06 - Demais documentos emitidos pelo ECF
           //        e R07 - Detalhe do Cupom Fiscal e do Documento Não Fiscal - Meio de Pagamento
           DM.TPAF_R06.Open('select * from paf_r06 where r02=' + Texto_Mysql(DM.TPAF_R02id.Value));

           while not DM.TPAF_R06.Eof do
           begin
              with RegistroR06.New do
              begin
                  NUM_USU     := DM.TPAF_R02num_usu.Value;
                  COO         := DM.TPAF_R06coo.Value;
                  GNF         := DM.TPAF_R06gnf.Value;
                  GRG         := DM.TPAF_R06grg.Value;
                  CDC         := DM.TPAF_R06cdc.Value;
                  DENOM       := DM.TPAF_R06denominacao.AsString;
                  DT_FIN      := DM.TPAF_R06dt_emissao.Value;
                  HR_FIN      := DM.TPAF_R06hora_em.Value;

               RegistroValido  := True;//b;
               b6 := True;

              { if b then
                  RegistroValido  := bb;

               if bb then
                  RegistroValido  := b4;
                b4 := True;
               if b4 then
               begin
                  DMConn.Q1.Open('select fn_reg_valido("R06",' + DM.TPAF_R06id.AsString + ',' + Texto_Mysql(_C) + ')');
                  RegistroValido:= DMConn.Q1.Fields[0].AsInteger = 1;
                  b6 := RegistroValido;
               end; }

                 // Registro R07 - FILHO do R04
                  DM.TPAF_R07.Open('select * from paf_r07 where r06=' + Texto_Mysql(DM.TPAF_R06id.Value));

                  while not DM.TPAF_R07.Eof do
                  begin
                     with RegistroR07.New do
                     begin
                        COO         := DM.TPAF_R06coo.Value;
                        MP          := DM.TPAF_R07meio_pag.AsString;
                        VL_PAGTO    := DM.TPAF_R07valor.Value;
                        IND_EST     := DM.TPAF_R07extorno.AsString;
                        VL_EST      := DM.TPAF_R07valor_extorno.Value;

                        RegistroValido  := True;//b;

                        { if b then
                            RegistroValido  := bb;

                         if bb then
                            RegistroValido  := b4;

                         if b4 then
                            RegistroValido  := b6;
                         b6 := true;
                         if b6 then
                         begin
                            DMConn.Q1.Open('select fn_reg_valido("R07",' + DM.TPAF_R07id.AsString + ',' + Texto_Mysql(_C) + ')');
                            RegistroValido:= DMConn.Q1.Fields[0].AsInteger = 1;
                         end; }
                     end;
                     DM.TPAF_R07.Next;
                  end;//loop TPafR07 fim
              end;
              DM.TPAF_R06.Next;
           end;//loop TPAfR06 fim
           DM.TPAF_R02.Next;
        end;//loop TPAFr02 fim
     end; //fim do r01
     DM.TPAF_R01.Next;
   end;//fim loop TPAfR01

   frmprogress.btnSair.Click;

   if Assigned(frmprogress) then
      FreeAndNil(frmprogress);

  DM_ECF.PAF.SaveToFile_RegistrosPAF('RegistrosPAF.txt');

  if FileExists(DM_ECF.PAF.Path + 'RegistrosPAF.txt') then
     ShowMessage(Format(C_MSG, [DM_ECF.PAF.Path + 'RegistrosPAF.txt']));
end;

procedure TfrmMenuFisc.RGEcfClick(Sender: TObject);
begin
   btnF11.Enabled :=(ECF_Ativo) or (RGEcf.Properties.Items[RGEcf.ItemIndex].tag in[6,7]);
end;

procedure TfrmMenuFisc.RgEstoqueClick(Sender: TObject);
begin
   T1.EmptyDataSet;
   lblProd.Caption := Label5.Hint;
end;

procedure TfrmMenuFisc.RgMenuFiscClick(Sender: TObject);
begin
   pgopc.ActivePage := TabVazio;
   btnF11.Enabled := ( (ECF_Ativo)and
                      (RgMenuFisc.Properties.Items[RgMenuFisc.ItemIndex].tag in[0,1,2,3,4,5,9,10,13,14,15]) ) or
                      (RgMenuFisc.Properties.Items[RgMenuFisc.ItemIndex].tag in[6,7,9,11,12,15]);

   TabData.TabVisible := (((ECF_Ativo)and
                          (RgMenuFisc.Properties.Items[RgMenuFisc.ItemIndex].tag in [1,2,3,5]))or
                          (RgMenuFisc.Properties.Items[RgMenuFisc.ItemIndex].tag in [9,11])) or
                          (RgMenuFisc.Properties.Items[RgMenuFisc.ItemIndex].tag in [15]);

   TabDoc.TabVisible  := (ECF_Ativo)and(RgMenuFisc.Properties.Items[RgMenuFisc.ItemIndex].tag in [1,2,3,5]);
   RgEstoque.Visible  := RgMenuFisc.Properties.Items[RgMenuFisc.ItemIndex].tag = 15;
   TabProd.TabVisible := RgMenuFisc.Properties.Items[RgMenuFisc.ItemIndex].tag = 15;
   RGVendaPer.Visible := RgMenuFisc.Properties.Items[RgMenuFisc.ItemIndex].tag = 11;
   chkMenuFiscalGerarArquivo.Enabled :=  not (RgMenuFisc.Properties.Items[RgMenuFisc.ItemIndex].tag in [1,2]);

   if TabData.TabVisible then
      pgopc.ActivePage := TabData
   else
   if TabDoc.TabVisible then
      pgopc.ActivePage := TabDoc;

   if RgMenuFisc.Properties.Items[RgMenuFisc.ItemIndex].tag = 15 then
   begin
     // pgopc.ActivePage := TabProd;
      T1.EmptyDataSet;
      lblProd.Caption := Label5.Hint;
      RgEstoque.ItemIndex := 0;
   end;
 {  else
   if RgMenuFisc.Properties.Items[RgMenuFisc.ItemIndex].tag = 8 then
   begin
      pgOpc.ActivePage := TabData;
      //cmbMov.ItemIndex := 0;
   end; }
end;

procedure TfrmMenuFisc.RgTipoProdClick(Sender: TObject);
begin
   T1.EmptyDataSet;
   lblProd.Caption := Label5.Hint;
end;

procedure TfrmMenuFisc.T1AfterPost(DataSet: TDataSet);
begin
   if T1.IsEmpty then
      lblProd.Caption := 'Nenhum produto listado.'
   else
      lblProd.Caption := IntToStr(T1.RecordCount) + ' produtos listados.';
end;

procedure TfrmMenuFisc.TabCadShow(Sender: TObject);
begin
   RgMenuFisc.ItemIndex := 0;
end;

procedure TfrmMenuFisc.VendaPer;
begin
   if rgVendaPer.ItemIndex=0 then
   begin
      DM_Sintegra.Cfg(DtInicial.Date,
                      DtFinal.Date,
                      0, //dt balanco
                      Aqui(C_DIRFISCO, DM_ECF.AAC.IdentPAF.NumeroLaudo + formatdatetime('ddmmyyyyhhnnss', now) +'.txt'),
                      True,//Gerar50
                      True, //Gerar60
                      True, //Gerar60I
                      True, //Gerar60R
                      False,//Gerar74
                      True, //Gerar61
                      True //Exibe_Arq
      );

      DM_Sintegra.GerarRegistro10('3','3','1');
      DM_Sintegra.GerarRegistro11;
      DM_Sintegra.GerarRegistro50;
      DM_Sintegra.GerarRegistro60;
      DM_Sintegra.GerarRegistro61;
      DM_Sintegra.GerarArquivo;
      DM_ECF.EAD.AssinarArquivoComEAD(DM_Sintegra.Sintegra.FileName, True);
   end
   else
   if rgVendaPer.ItemIndex=1 then
   begin
      with DM_Sped do
      begin
         Gerar_Bloco0(DtInicial.Date,
                      DtFinal.Date,
                      DM_ECF.AAC.IdentPAF.NumeroLaudo + formatdatetime('ddmmyyyyhhnnss', now) +'.txt',
                      False
         );
         Gerar_BlocoC(False);
         Gerar_BlocoD(False);
         Gerar_BlocoE(False);
         Gerar_BlocoG(False);
         Gerar_BlocoH(False);
         Gerar_Bloco1(False);
         Gravar_Blocos;
         DM_ECF.EAD.AssinarArquivoComEAD(String(ACBrSPEDFiscal1.Path) + String(ACBrSPEDFiscal1.Arquivo), True);
         ShowMessage('Arquivo gerado: ' + String(ACBrSPEDFiscal1.Path) + String(ACBrSPEDFiscal1.Arquivo));
      end;
   end
   else
      showmessage('Informe o convênio.');
end;

end.
