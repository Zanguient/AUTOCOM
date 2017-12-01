unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, ACBrBase, ShellAPI,
  ACBrEnterTab, cxClasses, RxPlacemnt, Easysize, cxStyles,
  cxGridTableView, dxScreenTip, dxCustomHint, cxHint, dxStatusBar,
  cxTextEdit, cxLabel, dxSkinsCore, dxSkinsdxStatusBarPainter, dxGDIPlusClasses,
  dxSkinCaramel;

type

  ///	<summary>
  ///	  Formulário principal do aplicativo AUTOCOM GERENCIAL
  ///	</summary>
  TfrmMain = class(TForm)
    Panel2: TPanel;
    Image1: TImage;
    Panel1: TPanel;
    Image3: TImage;
    FR: TFormResizer;
    gpbBotoes: TcxGroupBox;
    btnSair: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    Edit1: TEdit;
    Menu1: TMainMenu;
    APLICATIVO1: TMenuItem;
    Configurao1: TMenuItem;
    Sair1: TMenuItem;
    ini: TFormStorage;
    Timer1: TTimer;
    cxLabel1: TcxLabel;
    bar1: TdxStatusBar;
    cxLabel2: TcxLabel;
    CADASTROS1: TMenuItem;
    Operacionais1: TMenuItem;
    Empresa1: TMenuItem;
    EditordeRelatrios1: TMenuItem;
    AtualizarOnLine1: TMenuItem;
    Suporte1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Convnios1: TMenuItem;
    Operadores1: TMenuItem;
    Exportao1: TMenuItem;
    pnlLogin: TPanel;
    edLogin: TcxTextEdit;
    Label1: TLabel;
    edSenha: TcxTextEdit;
    Label2: TLabel;
    btnLogin: TcxButton;
    EnterTab: TACBrEnterTab;
    Logout1: TMenuItem;
    Alquotas1: TMenuItem;
    CST1: TMenuItem;
    CFOP1: TMenuItem;
    MEIOSDEPAGTO1: TMenuItem;
    Sesso1: TMenuItem;
    Unidades1: TMenuItem;
    OPERACIONAIS2: TMenuItem;
    Vendedores1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    EmissodeNF1: TMenuItem;
    AbrirPastaXML1: TMenuItem;
    AbrirPastaXML2: TMenuItem;
    MduloCompras1: TMenuItem;
    MduloNFe1: TMenuItem;
    Manuteno1: TMenuItem;
    ModelosdeNF1: TMenuItem;
    Estoque1: TMenuItem;
    FISCO1: TMenuItem;
    SINTEGRA1: TMenuItem;
    INVENTARIO1: TMenuItem;
    ANLISE1: TMenuItem;
    GERARARQUIVO1: TMenuItem;
    EFD1: TMenuItem;
    RELATRIOS1: TMenuItem;
    CENTRALDERELATRIOS1: TMenuItem;
    ZEBRAARGOX1: TMenuItem;
    PesquisadeNF1: TMenuItem;
    ReduesBC1: TMenuItem;
    CustoOperacional1: TMenuItem;
    Financeiro1: TMenuItem;
    OperadorasdeCarto1: TMenuItem;
    AsstCFOPCSTEmisso1: TMenuItem;
    AssistCFOPDevolCompra1: TMenuItem;
    SPEDPISCOFINS1: TMenuItem;
    ESTOQUE2: TMenuItem;
    Perdas1: TMenuItem;
    IntegraoBalanas1: TMenuItem;
    RegrasparaNFentrada1: TMenuItem;
    Farmcia1: TMenuItem;
    AtualizadordePreosUNITEX1: TMenuItem;
    LEIDATRANSPDOSIMPOSTOS1: TMenuItem;
    Balancas: TMenuItem;
    tmInativo: TTimer;
    ManutenoIntegridade1: TMenuItem;
    EstoqueInicial1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Configurao1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure EditordeRelatrios1Click(Sender: TObject);
    procedure Convnios1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure edSenhaPropertiesChange(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure Operadores1Click(Sender: TObject);

    ///	<summary>
    ///	  Menu Logout
    ///	</summary>
    procedure Logout1Click(Sender: TObject);
    procedure Alquotas1Click(Sender: TObject);
    procedure CST1Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure MEIOSDEPAGTO1Click(Sender: TObject);
    procedure Sesso1Click(Sender: TObject);
    procedure Unidades1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure MduloCompras1Click(Sender: TObject);
    procedure ModelosdeNF1Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
    procedure INVENTARIO1Click(Sender: TObject);
    procedure CENTRALDERELATRIOS1Click(Sender: TObject);
    procedure PesquisadeNF1Click(Sender: TObject);
    procedure MduloNFe1Click(Sender: TObject);
    procedure AbrirPastaXML2Click(Sender: TObject);

    ///	<summary>
    ///	  Abre a pasta XML Recebidas
    ///	</summary>
    procedure AbrirPastaXML1Click(Sender: TObject);
    procedure ReduesBC1Click(Sender: TObject);
    procedure CustoOperacional1Click(Sender: TObject);
    procedure AtualizarOnLine1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Financeiro1Click(Sender: TObject);
    procedure btnLoginMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure OperadorasdeCarto1Click(Sender: TObject);
    procedure AsstCFOPCSTEmisso1Click(Sender: TObject);
    procedure AssistCFOPDevolCompra1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure GERARARQUIVO1Click(Sender: TObject);
    procedure EFD1Click(Sender: TObject);
    procedure Suporte1Click(Sender: TObject);
    procedure Perdas1Click(Sender: TObject);
    procedure IntegraoBalanas1Click(Sender: TObject);
    procedure SPEDPISCOFINS1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RegrasparaNFentrada1Click(Sender: TObject);
    procedure AtualizadordePreosUNITEX1Click(Sender: TObject);
    procedure LEIDATRANSPDOSIMPOSTOS1Click(Sender: TObject);
    procedure BalancasClick(Sender: TObject);
    procedure tmInativoTimer(Sender: TObject);
    procedure ManutenoIntegridade1Click(Sender: TObject);
    procedure EstoqueInicial1Click(Sender: TObject);
  private
    procedure liberarAcesso(Menu: TMenu; formularios: boolean);
    procedure Verificar_Vigencia_IBPTax;

  public
    var
      h_proporc: double;  //proporção heigth atual x heigth original

    procedure Abrir_Form(Nome: string; aForm: TFormClass);

    ///	<summary>
    ///	  Metodo para fazer o logout do usuário. Oculta os menus e botões,
    ///	  abrindo a caixa de login e deconectando do BD
    ///	</summary>
    procedure Logout;
  end;

var
  frmMain: TfrmMain;

  ///	<summary>
  ///	  Variável que guarda o heigth original do frmMain para fins de ajuste de
  ///	  tamanho da tela
  ///	</summary>
  height_orig: integer;

implementation



{$R *.dfm}

uses uFuncoes, uDM, uCfg, uMD5Print, uCadEmpresa, uPesqCidade, uCadConvenio,
  uCadCli, uCadOperador, uAutocomConsts, uCadAliq, uCadCST, uCadCFOP,
  uCadForn, uCadFPag, uCadSessao, uCadUnidade, uCadVendedor, uDM_NF_Entr,
  uEntradaNF, uCadModeloNF, uCadEstoque, uBalanco, frmAjusteScreen, uPesqNF,
  udm_ini, uCadInfCompEstoque, uCustoOper, uSkinDLL, dmSkins, uFinan, uEmpresa,
  uTeste, uCadOper_CRT, uCadAssCfopEmissao, ucfop_devol, uAnaliseVendas,
  uSintegra, uSpedFiscal, uEstoque_perda, uIntegraBalanca, uSpedpis,
  uConverteEmitInform{, uAtu_Farma}, uAtuIPBTax{, uCadBalancas}, uCadBal,
  uAtuFarma, uManut, uEstoque_Inicial;


function Validar: Integer; stdcall; external 'softlock.dll';

  ///	<summary>
  ///	  Libera os menus e botões em função do Operador logado
  ///	</summary>
procedure TfrmMain.liberarAcesso(Menu: TMenu; formularios: boolean);   //liberar os menus conforme o operador
var
   i, j, k, m:integer;
begin
   DM.QSegur.Close;  //refresh qsegur em função DO OPERADOR
   DM.QSegur.Open;

   for i := 0 to menu.Items.Count - 1 do  //varre o menu
   begin
      Menu.Items[i].Visible := true;

      if (DM.QSegur.Locate('menu',Menu.Items[i].Name,[])) then
      begin
         Menu.Items[i].visible := DM.QSegurchave.Value = 'S';
         {verifica se tem botão a liberar}
         if DM.QSegurbotao.Value > 0 then
         begin
            for m := 0 to ComponentCount - 1 do
            begin
               if (Components[m] is TcxButton) then
               if (Components[m] as TcxButton).Tag = 100 + DM.QSegurbotao.Value then
               begin
                   (Components[m] as TcxButton).Visible  := True;
                   (Components[m] as TcxButton).Caption  := Menu.Items[i].Caption;
                    (Components[m] as TcxButton).OnClick := Menu.Items[i].OnClick;
               end;
            end;
         end;
      end;

      if (menu.Items[i].Count > 0) then //varre o sub menu
      for j := 0 to menu.Items[i].Count - 1 do
      begin
         Menu.Items[i].Items[j].visible := true;

         if(DM.QSegur.Locate('menu',Menu.Items[i].Items[j].Name,[])) then
         begin
            Menu.Items[i].Items[j].visible := DM.QSegurchave.Value = 'S';
            {verifica se tem botão a liberar}
            if DM.QSegurbotao.Value > 0 then
            begin
               for m := 0 to ComponentCount - 1 do
               begin
                  if (Components[m] is TcxButton) then
                  if (Components[m] as TcxButton).Tag = 100 + DM.QSegurbotao.Value then
                  begin
                      (Components[m] as TcxButton).Visible  := True;
                      (Components[m] as TcxButton).Caption  := Menu.Items[i].Items[j].Caption;
                       (Components[m] as TcxButton).OnClick := Menu.Items[i].Items[j].OnClick;
                  end;
               end;
            end;
         end;

         if {(Menu.Items[i].Items[j].Visible)and}           //varre o 2º sub menu
            (menu.Items[i].Items[j].Count > 0) then
         for k := 0 to menu.Items[i].Items[j].Count - 1 do
         begin
            Menu.Items[i].Items[j].Items[k].visible := true;

            if(DM.QSegur.Locate('menu',Menu.Items[i].Items[j].Items[k].Name,[])) then
            begin
               Menu.Items[i].Items[j].Items[k].visible := DM.QSegurchave.Value = 'S';
               {verifica se tem botão a liberar}
               if DM.QSegurbotao.Value > 0 then
               begin
                  for m := 0 to ComponentCount - 1 do
                  begin
                     if (Components[m] is TcxButton) then
                     if (Components[m] as TcxButton).Tag = 100 + DM.QSegurbotao.Value then
                     begin
                         (Components[m] as TcxButton).Visible  := True;
                         (Components[m] as TcxButton).Caption  := Menu.Items[i].Items[j].Items[k].Caption;
                          (Components[m] as TcxButton).OnClick := Menu.Items[i].Items[j].Items[k].OnClick;
                     end;
                  end;
               end;
            end;
         end;
      end;
   end;

   if IntegraoBalanas1.Visible then //se ja estiver visivel da rotina acima
      IntegraoBalanas1.Visible := (IntegraoBalanas1.Visible)and(DM_INI.ini.StoredValue['prefix_cod_balanca']>0);
      Balancas.Visible := IntegraoBalanas1.Visible;

   if Farmcia1.Visible then //se ja estiver visivel da rotina acima
      Farmcia1.Visible := DM_INI.ini.StoredValue['modo_farmacia'];

   AtualizadordePreosUNITEX1.Visible := Farmcia1.Visible;
end;

  ///	<summary>
  ///	 Metodo para fazer o logout do usuário. Oculta os menus e botões,
  ///  abrindo a caixa de login e deconectando do BD
  ///	</summary>
procedure TfrmMain.Logout;
var
   i,j,k: integer;
begin
   tmInativo.Enabled := False;
   for i := 0 to ComponentCount - 1 do //oculta os botoes
   begin
      if (Components[i] is TcxButton) then
         (Components[i] as TcxButton).Visible := (Components[i] as TcxButton).Tag < 100;
   end;
   //oculta os menus
   for i := 0 to menu1.Items.Count - 1 do  //varre o menu
   begin
      Menu1.Items[i].Visible := Menu1.Items[i].tag = 100;

      if (menu.Items[i].Count > 0) then //varre o sub menu
      for j := 0 to menu.Items[i].Count - 1 do
      begin
         Menu.Items[i].Items[j].visible := Menu.Items[i].Items[j].Tag = 100;;

         if (menu.Items[i].Items[j].Count > 0) then
         for k := 0 to menu.Items[i].Items[j].Count - 1 do
         begin
            Menu.Items[i].Items[j].Items[k].visible := Menu.Items[i].Items[j].Items[k].Tag = 100;
         end;
      end;
   end;

   for i := 0 to bar1.Panels.Count - 1 do
       bar1.Panels[i].Text := C_ST_VAZIO;

   DM.DB.Connected := False;
   pnlLogin.Show;
   edLogin.SetFocus;
end;


procedure TfrmMain.Logout1Click(Sender: TObject);
begin
   Logout;
end;


procedure TfrmMain.AbrirPastaXML1Click(Sender: TObject);
begin
   ShellExecute(Application.HANDLE, 'open', PWideChar(Aqui('NFE_RECEBIDAS','')),nil,nil,SW_SHOWNORMAL);
end;

procedure TfrmMain.AbrirPastaXML2Click(Sender: TObject);
begin
   ShellExecute(Application.HANDLE, 'open', PWideChar(Aqui('NFE','')),nil,nil,SW_SHOWNORMAL);
end;

procedure TfrmMain.Abrir_Form(Nome: string; aForm: TFormClass);
var
   i: integer;
begin
//desabilita o menu e botoes
   gpbBotoes.Enabled := False;

   for i := 0 to Pred(menu1.Items.Count) do  //varre o menu
      Menu1.Items[i].Visible := False;

   TForm(aForm)      := aForm.Create(self);
   TForm(aForm).Name := nome;
   AlphaBlend        := True; //ofusca o frmMain
   TForm(aForm).tag  := Trunc(h_proporc); //passa a proporção do height para o tag do form criado
   TForm(aForm).Show; //usa o show para manter o menu fiscal ativo
   AlphaBlend := False; //retorna o frmmain ao normal

   Repeat //segura a aplicação em loop
      Application.ProcessMessages
   Until not Tform(aForm).Showing;

   gpbBotoes.Enabled := True;
   liberarAcesso(Menu1, True);

   if (Tform(aForm) <> nil)and(Tform(aForm).Showing) then
      TForm(aForm).Close;

   if TForm(aForm) <> nil then
      TForm(aForm) := Nil;
end;

procedure TfrmMain.AtualizadordePreosUNITEX1Click(Sender: TObject);
begin
   Abrir_Form('frmAtu_Farma', TfrmAtu_Farma);
end;

procedure TfrmMain.AtualizarOnLine1Click(Sender: TObject);
begin
   if NaNet then
      ExecFile('Atualizador.exe','open','-g')
   else
      ShowMessage('Não foi possível conectar a internet.');
end;

procedure TfrmMain.BalancasClick(Sender: TObject);
begin
   Abrir_Form('frmCadBal', TfrmCadBal);
end;

procedure TfrmMain.btnLoginClick(Sender: TObject);
var
   data: TDate;
   i: integer;
begin
   btnLogin.Enabled := False;

   //Ini do DM
   if btnLogin.Tag <> 100 then
      DM_INI.ini.inifilename := Aqui(C_INI_FILE, 'autocom.ini');

   DM_INI.ini.Active      := True;
   DM_INI.ini.RestoreFormPlacement;

   if not DM.Conectar then
   begin
      ShowMessage('Não foi possível conectar com o servidor.');
      Abrir_form('frmCfg', TfrmCfg);
      edLogin.Clear;
      edSenha.Clear;
      edLogin.SetFocus;
      Exit;
   end;

   i := 1;//Validar; //dll

   if i = 0 then
   begin
      btnLogin.Enabled := True;
      ShowMessage('Erro ao autenticar o sistema. Verifique sua conexão com a internet ou solicite suporte.');
      DM.DB.Connected := False;
      Application.Terminate;
      exit;
   end;

   bar1.Panels[0].Text := DM.DB.Params.Values['Server'];
   bar1.Panels[1].Text := DM.DB.Params.Values['Database'];

   if DM_INI.ini.StoredValue['idTerm'] = '00' then
   begin
      ShowMessage('Informar o ID do terminal.');
      Abrir_form('frmCfg', TfrmCfg);
      edLogin.Clear;
      edSenha.Clear;
      edLogin.SetFocus;
      Exit;
   end;

   DM.id_Term := 'Gerencial ' + DM_INI.ini.StoredValue['idTerm'];

   if not DM.Procurar_Operador(edLogin.Text, edSenha.Text) then
   begin
      edLogin.Clear;
      edSenha.Clear;
      edLogin.SetFocus;
   end
   else
   begin
      edLogin.Clear;
      edSenha.Clear;
      pnlLogin.Hide;
      liberarAcesso(Menu1, True);
      bar1.Panels[2].Text := DM.Operador.Nome;
      DM.QEmpresa.Open;

      if DM.QEmpresa.IsEmpty then
      begin
         ShowMessage(C_226);
      end
      else
      begin
         bar1.Panels[3].Text := DM.id_Term + ' ' + DM.QEmpresanome_fantasia.AsString;
      end;

      data := StrToDateDef(ini.StoredValue['data_atu'], 0);

      Verificar_Vigencia_IBPTax;

      {//gera o balanço mensal
      try
      DM.DB.ExecSQL('call pr_gerar_balanco;');
      finally
      end;
      }
      if (DM_INI.ini.StoredValue['cbAtu'])and(NaNet)and(Trunc(data) <> date) then
      begin
         killtask('Atualizador.exe');
         ExecFile('Atualizador.exe','open','-g -start');
         ini.StoredValue['data_atu'] := date;
      end;
     // tmInativo.Enabled := True;   vou deixar off por hora
   end;
end;

procedure TfrmMain.btnLoginMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if (ssShift in Shift) then
   begin
      frmEmpresa := TfrmEmpresa.Create(self);
      frmEmpresa.ShowModal;
   end;
end;

procedure TfrmMain.EditordeRelatrios1Click(Sender: TObject);
begin
   if DM.Operador.Acesso < 9 then
      raise Exception.Create('Acesso somente para administradores.');
   DM.Abrir_Central_Relat('-e', DM_INI.ini.inifilename);
end;

procedure TfrmMain.edSenhaPropertiesChange(Sender: TObject);
begin
   btnLogin.Enabled := (Trim(edLogin.Text) <> C_ST_VAZIO)and(Trim(edSenha.Text) <> C_ST_VAZIO);
end;


procedure TfrmMain.Financeiro1Click(Sender: TObject);
begin
   if DM.Operador.Acesso < 7 then
      raise Exception.Create('Acesso somente para gerentes ou administradores.');
   Abrir_form('frmFinan', TfrmFinan);
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := cafree;
   Release;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   ini.StoredValue['w'] := width;
   ini.StoredValue['h'] := height;
   ini.SaveFormPlacement;
   DM_INI.INI.SaveFormPlacement;
   FreeAndNil(DM);
   FreeAndNil(DM_INI);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
   w,h: integer;
begin
   CAPTION := 'AUTOCOM GERENCIAL ' + C_117;
   DM_INI := TDM_INI.Create(self);
   DM := TDM.Create(self);
   //ini do frmMain
   ini.inifilename := Aqui(C_DAT_FILE, MD5_Str(Application.ExeName + TForm(sender).Name) + '.fr');
   ini.Active      := True;
   ini.RestoreFormPlacement;

   if not FileExists(Aqui(C_INI_FILE, 'autocom.ini')) then
   begin
      DM_INI.ini.inifilename := Aqui(C_INI_FILE, 'autocom.ini');
      DM_INI.ini.Active      := True;
      DM_INI.ini.SaveFormPlacement;
   end;

   FR.InitializeForm;
   Timer1.Enabled := true;

   //obtem o width e height original
   w := width;
   h := Height;
   height_orig := h;//var global usado no rezise
   //le as dimensoes no ini
   width  := INI.StoredValue['w'];
   Height := INI.StoredValue['h'];
   //ajusta caso seja menor que o original
   if width < w then
      width := w;

   if Height < h then
      Height := h;
   //calcula a proporção entre o height original e o atual para dimensionar os demais forms ao abri-los
   h_proporc := Arredonda(Percent(Height,h),2);
   DMSkin := TDMSkin.Create(nil);
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
   FR.ResizeAll;
   frmMain.Font.Size           := Edit1.Font.Size;

   if Assigned(DMSkin) then
      DMSkin.DSC1.Style.Font.Size := Edit1.Font.Size;

  // DMSkin.CSS.StyleSheets[DM_INI.INI.StoredValue['estilo_lista']].
   h_proporc := Arredonda(Percent(Height,height_orig),2); //anota a nova proporção entre o height original e o redimensionado
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
   GetSkinDLL.GetSkinName;
end;

procedure TfrmMain.Sair1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmMain.ManutenoIntegridade1Click(Sender: TObject);
begin
   Abrir_form('frmManu', TfrmManu);
end;

procedure TfrmMain.MduloCompras1Click(Sender: TObject);
begin
   Abrir_form('frmEntradaNF', TfrmEntradaNF);
end;

procedure TfrmMain.MduloNFe1Click(Sender: TObject);
begin
   killtask('nfe.exe');
   ExecFile(Aqui('', 'nfe.exe'), 'open', '');
end;

procedure TfrmMain.MEIOSDEPAGTO1Click(Sender: TObject);
begin
   Abrir_form('frmCadFPag', TfrmCadFPag);
end;

procedure TfrmMain.ModelosdeNF1Click(Sender: TObject);
begin
   Abrir_form('frmCadModeloNF', TfrmCadModeloNF);
end;

procedure TfrmMain.Alquotas1Click(Sender: TObject);
begin
   Abrir_form('frmCadAliq', TfrmCadAliq);
end;

procedure TfrmMain.AssistCFOPDevolCompra1Click(Sender: TObject);
begin
   Abrir_Form('frmAss_CFOP_Devol', TfrmAss_CFOP_Devol);
end;

procedure TfrmMain.AsstCFOPCSTEmisso1Click(Sender: TObject);
begin
   Abrir_Form('frmCadAssCfopEmissao', TfrmCadAssCfopEmissao);
end;

procedure TfrmMain.CENTRALDERELATRIOS1Click(Sender: TObject);
begin
   DM.Abrir_Central_Relat('-a', DM_INI.ini.inifilename);
end;

procedure TfrmMain.CFOP1Click(Sender: TObject);
begin
   Abrir_Form('frmCadCFOP', TfrmCadCFOP);
end;

procedure TfrmMain.Clientes1Click(Sender: TObject);
begin
   Abrir_Form('frmCadCli', TfrmCadCli);
end;

procedure TfrmMain.Configurao1Click(Sender: TObject);
begin
//   if DM.Operador.Acesso < 7 then
   //   raise Exception.Create('Acesso somente para gerentes ou administradores.');

   Abrir_form('frmCfg', TfrmCfg);
   Logout;
end;

procedure TfrmMain.Convnios1Click(Sender: TObject);
begin
   Abrir_Form('frmCadConvenio', TfrmCadConvenio);
end;

procedure TfrmMain.CST1Click(Sender: TObject);
begin
   Abrir_Form('frmCadCST', TfrmCadCST);
end;

procedure TfrmMain.CustoOperacional1Click(Sender: TObject);
begin
   Abrir_form('frmCustoOper', TfrmCustoOper);
end;

procedure TfrmMain.EFD1Click(Sender: TObject);
begin
   Abrir_Form('frmSpedFiscal', TfrmSpedFiscal);
end;

procedure TfrmMain.Empresa1Click(Sender: TObject);
begin
   Abrir_form('frmCadEmpresa', TfrmCadEmpresa);
end;

procedure TfrmMain.Estoque1Click(Sender: TObject);
begin
   Abrir_Form('frmCadEstoque', TfrmCadEstoque);
end;

procedure TfrmMain.EstoqueInicial1Click(Sender: TObject);
begin
   Abrir_Form('frmCad_Estoque_Inicial', TfrmCad_Estoque_Inicial);
end;

procedure TfrmMain.Fornecedores1Click(Sender: TObject);
begin
   Abrir_Form('frmCadForn', TfrmCadForn);
end;

procedure TfrmMain.GERARARQUIVO1Click(Sender: TObject);
begin
   Abrir_Form('frmSintegra', TfrmSintegra);
end;

procedure TfrmMain.IntegraoBalanas1Click(Sender: TObject);
begin
   Abrir_Form('frmIntBal', TfrmIntBal);
end;

procedure TfrmMain.INVENTARIO1Click(Sender: TObject);
begin
   Abrir_form('frmBalanco', TfrmBalanco);
end;

procedure TfrmMain.LEIDATRANSPDOSIMPOSTOS1Click(Sender: TObject);
begin
   Abrir_Form('frmAtuIPBTax', TfrmAtuIPBTax);
end;

procedure TfrmMain.OperadorasdeCarto1Click(Sender: TObject);
begin
  Abrir_form('frmCadOper_CRT', TfrmCadOper_CRT);
end;

procedure TfrmMain.Operadores1Click(Sender: TObject);
begin
   if DM.Operador.Acesso < 7 then
      raise Exception.Create('Acesso somente para gerentes ou administradores.');

   Abrir_form('frmCadOperador', TfrmCadOperador);
end;

procedure TfrmMain.Perdas1Click(Sender: TObject);
begin
   Abrir_Form('frmEstoque_perda', TfrmEstoque_perda);
end;

procedure TfrmMain.PesquisadeNF1Click(Sender: TObject);
begin
   Abrir_form('frmPesqNF', TfrmPesqNF);
end;

procedure TfrmMain.ReduesBC1Click(Sender: TObject);
begin
   Abrir_form('frmCadInfCompEstoque', TfrmCadInfCompEstoque);
end;

procedure TfrmMain.RegrasparaNFentrada1Click(Sender: TObject);
begin
   frmConverteEmitInform := TfrmConverteEmitInform.Create(self);
   DM.Qcfop_cst_csosn.Open('SELECT * from cfop_cst_csosn order by cfop, cst, csosn');
   frmConverteEmitInform.ShowModal;
end;

procedure TfrmMain.Sesso1Click(Sender: TObject);
begin
   Abrir_form('frmCadSessao', TfrmCadSessao);
end;

procedure TfrmMain.SPEDPISCOFINS1Click(Sender: TObject);
begin
   Abrir_Form('frmSpedPIS', TfrmSpedPIS);
end;

procedure TfrmMain.Suporte1Click(Sender: TObject);
begin
   ShellExecute(0, nil, 'http://showmypc.com/mac/java-client.html?seq=1', nil, nil, 1);
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
   gpbBotoes.Caption := FormatDateTime('dd "de" mmmmm "de" yyyy hh:mm:ss', now);
end;

procedure TfrmMain.tmInativoTimer(Sender: TObject);
begin
   //rotina para verificar inatividade do operador e pedir novo login
   tmInativo.Enabled := False;
   tmInativo.Tag     := tmInativo.tag + 1;

   if (DM_INI.INI.StoredValue['minutos_inativo']>0)and(tmInativo.Tag = DM_INI.INI.StoredValue['minutos_inativo']) then
   begin
      Logout;
      bar1.Panels[3].Text := 'Aplicativo sem uso por mais de ' +
                              IntToStr(DM_INI.INI.StoredValue['minutos_inativo']) +
                             ' minutos. Login requerido.';
   end
   else
   tmInativo.Enabled := True;
end;

procedure TfrmMain.Unidades1Click(Sender: TObject);
begin
   Abrir_form('frmCadUnid', TfrmCadUnid);
end;

procedure TfrmMain.Vendas1Click(Sender: TObject);
begin
   Abrir_Form('frmAnaliseVendas', TfrmAnaliseVendas);
end;

procedure TfrmMain.Vendedores1Click(Sender: TObject);
begin
   Abrir_form('frmCadVendedor', TfrmCadVendedor);
end;

procedure TfrmMain.Verificar_Vigencia_IBPTax;
var
   i: integer;
begin
   DM.Q1.Open('select versao,dt_vigencia_fim,chave from ibptax');

   if DM.Q1.IsEmpty then
   begin
      ShowMessage('Providencie a atualização da tabela IBPTax.');
      exit;
   end;

   i := Trunc(DM.Q1.FieldByName('dt_vigencia_fim').AsDateTime) - Trunc(date);

   if (i > 0) and (i < 7) then
      ShowMessage(Format('A tabela IBPTax versao "%s", chave "%s" expira em %s dias.'#10#13'Acesse o site do IBPTax e baixe o arquivo de atualização.', [DM.Q1.FieldByName('versao').AsString, DM.Q1.FieldByName('chave').AsString, IntToStr(i)]))
   else
   if i <=0 then
      ShowMessage(Format('A tabela IBPTax versao "%s", chave "%s" expirou a %s dias.'#10#13'Acesse o site do IBPTax e baixe o arquivo de atualização.', [DM.Q1.FieldByName('versao').AsString, DM.Q1.FieldByName('chave').AsString, IntToStr(i)]));
end;

end.
