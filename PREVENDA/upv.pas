unit upv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, dxStatusBar, cxContainer,
  cxEdit, cxGroupBox, cxPCdxBarPopupMenu, cxPC, cxTextEdit, cxLabel, dxGDIPlusClasses, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBLabel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinsCore, dxSkinCaramel, dxSkinscxPCPainter, dxBarBuiltInMenu,
  dxSkinsdxStatusBarPainter;

type
  TfrmPV = class(Tfrm)
    Timer1: TTimer;
    gpbBotoes: TcxGroupBox;
    cxButton1: TcxButton;
    btnF9: TcxButton;
    cxButton4: TcxButton;
    btnF10: TcxButton;
    btnF11: TcxButton;
    btnF12: TcxButton;
    btnF3: TcxButton;
    pg1: TcxPageControl;
    TabIni: TcxTabSheet;
    TabVenda: TcxTabSheet;
    Panel1: TPanel;
    Image3: TImage;
    cxLabel2: TcxLabel;
    Panel2: TPanel;
    Image1: TImage;
    Edit2: TEdit;
    pnlLogin: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edLogin: TcxTextEdit;
    edSenha: TcxTextEdit;
    btnLogin: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    bar1: TdxStatusBar;
    Menu1: TMainMenu;
    APLICATIVO1: TMenuItem;
    Configurao1: TMenuItem;
    AtualizarOnLine1: TMenuItem;
    Suporte1: TMenuItem;
    Logout1: TMenuItem;
    Sair1: TMenuItem;
    cxLabel1: TcxLabel;
    tmInativo: TTimer;
    TVenda_Item: TFDQuery;
    TVenda_Itemid: TFDAutoIncField;
    TVenda_Itemvenda: TIntegerField;
    TVenda_ItemnItem: TIntegerField;
    TVenda_ItemcProd: TIntegerField;
    TVenda_ItemcEAN: TStringField;
    TVenda_ItemxProd: TStringField;
    TVenda_ItemNCM: TStringField;
    TVenda_ItemEXTIPI: TStringField;
    TVenda_ItemCFOP: TStringField;
    TVenda_ItemuCom: TStringField;
    TVenda_ItemqCom: TFloatField;
    TVenda_ItemvUnCom: TFloatField;
    TVenda_ItemvProd: TFloatField;
    TVenda_ItemcEANTrib: TStringField;
    TVenda_ItemuTrib: TStringField;
    TVenda_ItemqTrib: TFloatField;
    TVenda_ItemvUnTrib: TFloatField;
    TVenda_ItemvOutro: TFloatField;
    TVenda_ItemvFrete: TFloatField;
    TVenda_ItemvSeg: TFloatField;
    TVenda_ItemvDesc: TFloatField;
    TVenda_IteminfAdProd: TMemoField;
    TVenda_ItemICMS_CST: TIntegerField;
    TVenda_ItemICMS_orig: TIntegerField;
    TVenda_ItemICMS_modBC: TIntegerField;
    TVenda_ItemICMS_vBC: TFloatField;
    TVenda_ItemICMS_pICMS: TFloatField;
    TVenda_ItemICMS_vICMS: TFloatField;
    TVenda_ItemICMS_CSOSN: TIntegerField;
    TVenda_ItemICMS_pCredSN: TFloatField;
    TVenda_ItemICMS_vCredICMSSN: TFloatField;
    TVenda_ItemICMS_modBCST: TIntegerField;
    TVenda_ItemICMS_pMVAST: TFloatField;
    TVenda_ItemICMS_vTabelaST: TFloatField;
    TVenda_ItemICMS_pRedBCST: TFloatField;
    TVenda_ItemICMS_vBCST: TFloatField;
    TVenda_ItemICMS_pICMSST: TFloatField;
    TVenda_ItemICMS_vICMSST: TFloatField;
    TVenda_ItemICMS_pRedBC: TFloatField;
    TVenda_ItemIPI_CST: TIntegerField;
    TVenda_ItemIPI_clEnq: TStringField;
    TVenda_ItemIPI_CNPJProd: TStringField;
    TVenda_ItemIPI_cSelo: TStringField;
    TVenda_ItemIPI_qSelo: TIntegerField;
    TVenda_ItemIPI_cEnq: TStringField;
    TVenda_ItemIPI_vBC: TFloatField;
    TVenda_ItemIPI_qUnid: TFloatField;
    TVenda_ItemIPI_vUnid: TFloatField;
    TVenda_ItemIPI_pIPI: TFloatField;
    TVenda_ItemIPI_vIPI: TFloatField;
    TVenda_ItemII_vBc: TFloatField;
    TVenda_ItemII_vDespAdu: TFloatField;
    TVenda_ItemII_vII: TFloatField;
    TVenda_ItemII_vIOF: TFloatField;
    TVenda_ItemPIS_CST: TIntegerField;
    TVenda_ItemPIS_vBC: TFloatField;
    TVenda_ItemPIS_pPIS: TFloatField;
    TVenda_ItemPIS_vPIS: TFloatField;
    TVenda_ItemPIS_qBCProd: TFloatField;
    TVenda_ItemPIS_vAliqProd: TFloatField;
    TVenda_ItemPISST_vBc: TFloatField;
    TVenda_ItemPISST_pPis: TFloatField;
    TVenda_ItemPISST_qBCProd: TFloatField;
    TVenda_ItemPISST_vAliqProd: TFloatField;
    TVenda_ItemPISST_vPIS: TFloatField;
    TVenda_ItemCOFINS_CST: TIntegerField;
    TVenda_ItemCOFINS_vBC: TFloatField;
    TVenda_ItemCOFINS_pCOFINS: TFloatField;
    TVenda_ItemCOFINS_vCOFINS: TFloatField;
    TVenda_ItemCOFINS_qBCProd: TFloatField;
    TVenda_ItemCOFINS_vAliqProd: TFloatField;
    TVenda_ItemCOFINSST_vBC: TFloatField;
    TVenda_ItemCOFINSST_pCOFINS: TFloatField;
    TVenda_ItemCOFINSST_qBCProd: TFloatField;
    TVenda_ItemCOFINSST_vAliqProd: TFloatField;
    TVenda_ItemCOFINSST_vCOFINS: TFloatField;
    TVenda_ItemISSQN_vBC: TFloatField;
    TVenda_ItemISSQN_vAliq: TFloatField;
    TVenda_ItemISSQN_vISSQN: TFloatField;
    TVenda_ItemISSQN_cMunFG: TIntegerField;
    TVenda_ItemISSQN_cListServ: TIntegerField;
    TVenda_ItemISSQN_SitTrib: TIntegerField;
    TVenda_ItemICMS_vBCSTRet: TFloatField;
    TVenda_ItemICMS_vICMSSTRet: TFloatField;
    TVenda_ItemvTotTrib: TFloatField;
    TVenda_Itemecf_aliq: TStringField;
    DSVendaItem: TDataSource;
    tbvnItem: TcxGridDBColumn;
    tbvcEAN: TcxGridDBColumn;
    tbvxProd: TcxGridDBColumn;
    tbvuCom: TcxGridDBColumn;
    tbvqCom: TcxGridDBColumn;
    tbvvProd: TcxGridDBColumn;
    tbvvDesc: TcxGridDBColumn;
    DSCli: TDataSource;
    cxDBLabel1: TcxDBLabel;
    lblccd: TcxLabel;
    tbvCFOP: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    TVenda_Itemvcomissao: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure TabIniShow(Sender: TObject);
    procedure edSenhaPropertiesChange(Sender: TObject);
    procedure btnF10Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Configurao1Click(Sender: TObject);
    procedure tmInativoTimer(Sender: TObject);
    procedure btnF3Click(Sender: TObject);
    procedure TVenda_ItemAfterInsert(DataSet: TDataSet);
    procedure btnF9Click(Sender: TObject);
    procedure btnF12Click(Sender: TObject);
    procedure btnF11Click(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnLoginMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    procedure Abrir_Form(Nome: string; aForm: TFormClass);
    procedure liberarAcesso(Menu: TMenu; formularios: boolean);
    procedure AtuPV;
    function Permissao(forca: boolean): boolean;
  public
    var
      h_proporc: double;  //proporção heigth atual x heigth original

    procedure CfgBtn(chave: string='');
    procedure Limpar_Venda;
    procedure LimparPV;
  end;

var
  frmPV: TfrmPV;
  height_orig: integer;
  PV, stTipo: string;

implementation

{$R *.dfm}

uses udm_ini, uDM, dmSkins, uFuncoes, uSkinDLL, uAutocomConsts, uMD5Print, uCfg, uPesqCli, uPesqProd, uItem,
  uCancelar, uConcluir, uEmpresa, uOpcoes, uDM_PDV;

//funçoes de dlls
function Validar: Integer; stdcall; external 'LIB\32\softlock.dll';

//liberar os menus conforme o operador
procedure TfrmPV.liberarAcesso(Menu: TMenu; formularios: boolean);
begin
   gpbBotoes.Enabled := true;
end;

procedure TfrmPV.Logout1Click(Sender: TObject);
begin
   gpbBotoes.Enabled := true;
   pnlLogin.Show;
   pg1.ActivePage := TabIni;
   CfgBtn;
end;

procedure TfrmPV.Sair1Click(Sender: TObject);
begin
   btnSair.Click;
end;

procedure TfrmPV.Abrir_Form(Nome: string; aForm: TFormClass);
begin
   //Application.CreateForm(TForm, aForm);
   TForm(aForm)      := aForm.Create(self);
   TForm(aForm).Name := nome;
   AlphaBlend        := True; //ofusca o frmMain
   TForm(aForm).tag  := Trunc(h_proporc); //passa a proporção do height para o tag do form criado

   TForm(aForm).ShowModal;
   AlphaBlend := False; //retorna o frmmain ao normal

   if (Tform(aForm) <> nil)and(Tform(aForm).Showing) then
      TForm(aForm).Close;

   if TForm(aForm) <> nil then
      TForm(aForm) := Nil;
end;

procedure TfrmPV.btnLoginClick(Sender: TObject);
var
   data: TDate;
   i: integer;
begin
   btnLogin.Enabled := False;
   Timer1.Tag       := 0;
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

   DM.id_Term := 'PV ' + DM_INI.ini.StoredValue['idTerm'];

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
         tmInativo.Enabled := True;

         DM_PDV.Conectar;
         TVenda_Item.Open;

         if TVenda_Item.IsEmpty then
            CfgBtn('001000001100')
         else
         begin
            pg1.ActivePage := TabVenda;
            DM_PDV.TPFP.Open;

            if not DM.QCli.Active then
               DM.QCli.Open('select * from cliente where id=1');

            if TVenda_Item.IsEmpty then
               CfgBtn('001000001100')
            else
               CfgBtn('001000001111');
         end;
         AtuPV;
      end;

      data := StrToDateDef(ini.StoredValue['data_atu'], 0);

      if (DM_INI.ini.StoredValue['cbAtu'])and(NaNet)and(Trunc(data) <> date) then
      begin
         ExecFile('Atualizador.exe','open','-a -start');
         ini.StoredValue['data_atu'] := date;
      end;
   end;
end;

procedure TfrmPV.btnLoginMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if (ssShift in Shift) then
   begin
      frmEmpresa := TfrmEmpresa.Create(self);
      frmEmpresa.ShowModal;
   end;
end;

procedure TfrmPV.cxButton1Click(Sender: TObject);
begin
   btnSair.Click;
end;

procedure TfrmPV.Edit1Enter(Sender: TObject);
begin
   edit1.Clear;
end;

procedure TfrmPV.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if (Edit1.Text <> C_ST_VAZIO)and (key=13) then
      btnF10.Click;
end;

procedure TfrmPV.AtuPV;
begin
   DM.Q1.Open('select valor from indices where nome="pv"');
   PV := LFill(DM.Q1.Fields[0].AsString, 10, '0');
   stTipo := '';

   case ini.StoredValue['modo'] of
      0: stTipo := ' PRÉ-VENDA';
      1: stTipo := ' VENDA P/NF';
     // 2: stTipo := ' VENDA FARMÁCIA POPULAR';
   end;
end;

procedure TfrmPV.btnF10Click(Sender: TObject);
begin
   if not DM.QCli.Active then
      DM.QCli.Open('select * from cliente where id=1');

  if (TVenda_Item.IsEmpty) then
  begin
     if ParamStr(1) = '' then
        ini.StoredValue['modo'] := 0
     else
     begin
        if ParamStr(1) <> '-nf' then
        begin
           ini.StoredValue['modo'] := -1;
           frmOpc := TfrmOpc.Create(self);

           case frmOpc.ShowModal of
              mrYes: ini.StoredValue['modo'] := 0;//PV
              mrNo:  ini.StoredValue['modo'] := 1;//NF
              mrCancel: exit;
           end;

           if Assigned(frmOpc) then
              FreeAndNil(frmOpc);
        end
        else
        ini.StoredValue['modo'] := 1;//nf por default
     end;
  end;

   pg1.ActivePage := TabVenda;
   AtuPV;

   if not lblccd.Visible then
      Edit1.Clear;

   Abrir_Form('frmPesqProd', TfrmPesqProd);

   if DM.QEstoque.IsEmpty then
   begin
      ini.StoredValue['modo'] := -1;
      AtuPV;
      exit;
   end;

   if (Pos('09',DM.QEstoquedestinacao.AsString) <0)and
      (NCM_Invalido(DM_PDV.TProdncm.AsString)) then
      raise Exception.Create('NCM deste item incorreto');

   if (DM.QEstoquevrvenda_vista.AsCurrency <=0) then
      raise Exception.Create('item sem valor unitário');

   if (DM.QEstoqueunidade.AsInteger = 0) then
      raise Exception.Create('item sem unidade de medida');

   Abrir_Form('frmItem', TfrmItem);

   if TVenda_Item.IsEmpty then
      CfgBtn('001000001100')
   else
      CfgBtn('001000001111');

   TVenda_Item.EnableControls;
   btnF10.SetFocus;
end;

procedure TfrmPV.btnF11Click(Sender: TObject);
begin
   Abrir_Form('frmConcluir', TfrmConcluir);
   AtuPV;
   Edit1.SetFocus;
end;

procedure TfrmPV.btnF12Click(Sender: TObject);
begin
   Abrir_Form('frmCancelar', TfrmCancelar);
   AtuPV;
   Edit1.SetFocus;
end;

procedure TfrmPV.btnF3Click(Sender: TObject);
begin
   Abrir_Form('frmPesqCli', TfrmPesqCli);

   if (not TVenda_Item.IsEmpty)and(DM.QCliid.Value > 1) then
   begin
      if (MessageBox(0, 'Deseja associar este cliente a venda atual?', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idNo) then
         DM.QCli.Locate('id',1,[]);
   end;
   Edit1.SetFocus;
end;

procedure TfrmPV.btnF9Click(Sender: TObject);
begin
   Abrir_Form('frmPesqProd', TfrmPesqProd);
   Edit1.SetFocus;
end;

procedure TfrmPV.edSenhaPropertiesChange(Sender: TObject);
begin
   btnLogin.Enabled := (Trim(edLogin.Text) <> C_ST_VAZIO)and(Trim(edSenha.Text) <> C_ST_VAZIO);
end;

procedure TfrmPV.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin
  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
  end;

   ini.StoredValue['w'] := width;
   ini.StoredValue['h'] := height;
   ini.SaveFormPlacement;
   DM_INI.INI.SaveFormPlacement;
   FreeAndNil(DM);
   FreeAndNil(DM_INI);
   inherited;;
end;

procedure TfrmPV.FormCreate(Sender: TObject);
var
   w,h: integer;
   i: integer;
begin
   inherited;

  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
  end;
   CAPTION := 'AUTOCOM PRÉ-VENDA ' + C_117;
   DM_INI := TDM_INI.Create(self);
   DM := TDM.Create(self);

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
   TabIni.TabVisible   := False;
   TabVenda.TabVisible := False;
   pg1.ActivePage      := TabIni;
end;

procedure TfrmPV.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F3    : if btnF3.Enabled then btnF3.Click;
      VK_F9    : if btnF9.Enabled then btnF9.Click;
      VK_F10   : if btnF10.Enabled then btnF10.Click;
      VK_F11   : if btnF11.Enabled then btnF11.Click;
      VK_F12   : if btnF12.Enabled then btnF12.Click;
      VK_SPACE : lblCCD.visible := (DM_ini.ini.StoredValue['ccd'])and (not lblCCD.visible);
   end;
end;

procedure TfrmPV.FormShow(Sender: TObject);
begin
  inherited;
   frmPV.Font.Size             := Edit1.Font.Size;
   DMSkin.DSC1.Style.Font.Size := Edit1.Font.Size;
   GetSkinDLL.GetSkinName;
   h_proporc := Arredonda(Percent(Height,height_orig),2);
   lblccd.Visible := DM_ini.ini.StoredValue['ccd'];
end;

procedure TfrmPV.TabIniShow(Sender: TObject);
begin
   if pnlLogin.Visible then
      edLogin.SetFocus;
end;

procedure TfrmPV.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   if AViewInfo.GridRecord.Values[tbvCFOP.Index]='CANC' then //item cancelado pela coluna CFOP
    begin
       ACanvas.Canvas.Brush.Color := $008695EA;
       ACanvas.Canvas.Font.Color := clBlack;
    end
end;

procedure TfrmPV.Timer1Timer(Sender: TObject);
begin
   gpbBotoes.Caption := FormatDateTime('dd "de" mmmmm "de" yyyy hh:mm:ss', now) + ' Próxima PV: ' + PV + stTipo;
end;

procedure TfrmPV.tmInativoTimer(Sender: TObject);
begin
   //rotina para verificar inatividade do operador e pedir novo login
   tmInativo.Enabled := False;
   tmInativo.Tag     := tmInativo.tag + 1;

   if (DM_INI.INI.StoredValue['minutos_inativo']>0)and(tmInativo.Tag = DM_INI.INI.StoredValue['minutos_inativo']) then
   begin
      Logout1.Click;
      bar1.Panels[3].Text := 'Inativo por mais de ' +
                              IntToStr(DM_INI.INI.StoredValue['minutos_inativo']) +
                             ' min. Login requerido.';
   end
   else
   tmInativo.Enabled := True;
end;

procedure TfrmPV.TVenda_ItemAfterInsert(DataSet: TDataSet);
begin
   DM_PDV.Q1.Open('select max(nitem) from pv');
   TVenda_ItemnItem.Value := StrToIntDef(DM_PDV.Q1.Fields[0].AsString,0) + 1;
end;

procedure TfrmPV.LimparPV;
begin
   TVenda_Item.DisableControls;
   TVenda_Item.First;

   while not TVenda_Item.IsEmpty do
      TVenda_Item.Delete;

   //DM_PDV.DB.ExecSQL('delete from pfp;');

   TVenda_Item.EnableControls;
   TVenda_Item.Refresh;
end;

procedure TfrmPV.Limpar_Venda;
var
   i: integer;
begin
   if ini.StoredValue['modo'] = 0 then//se for prevenda, gera uma venda cancelada
   begin
      TVenda_Item.DisableControls;
      TVenda_Item.First;

      DM.QVenda.Open('select * from venda where tipo="PV" limit 1');
      DM.QVenda_Item.Open;

      DM.QVenda.Append;

      for i := 0 to Pred(DM.QVenda.Fields.Count) do
      begin
         if DM.QVenda.Fields[i] is TFloatField then
            DM.QVenda.Fields[i].AsCurrency := 0;
      end;

      DM.Q1.Open('select max(coo) from venda where tipo="PV"');
      DM.Q2.Open('select max(coa) from venda where tipo="PV"');
      DM_PDV.Q1.Open('select sum(vProd) from pv');

      DM.QVendacliente.AsInteger      := DM.QCliid.Value;
      DM.QVendacoo.Value              := DM.Q1.Fields[0].AsInteger + 1;
      DM.QVendacoa.AsInteger          := DM.Q2.Fields[0].AsInteger + 1;
      DM.QVendapv.AsString            := LFill(FloatToStr(DM.Indice('pv')),10,'0');
      DM.QVendatipo.AsString          := 'PV';
      DM.QVendaoperador.AsInteger     := DM.Operador.ID;
      DM.QVendavendedor.AsInteger     := 0;
      DM.QVendanf.AsInteger           := 0;
      DM.QVendacancelado.AsString     := 'S';
      DM.QVendaterminal.AsString      := DM.id_Term;
      DM.QVendadata.Value             := Date;
      DM.QVendahora.AsString          := FormatDateTime('hh:nn', now);
      DM.QVendavalor.AsCurrency       := DM_PDV.Q1.Fields[0].AsCurrency;
      DM.QVendavr_desconto.AsCurrency := 0;
      DM.QVendavr_pago.AsCurrency     := DM_PDV.Q1.Fields[0].AsCurrency;
      DM.QVendavr_comissao.AsCurrency := 0;
      DM.QVendavr_din.AsCurrency      := DM_PDV.Q1.Fields[0].AsCurrency;
      DM.QVendavr_chq.AsCurrency      := 0;
      DM.QVendavr_card.AsCurrency     := 0;
      DM.QVendavr_tkt.AsCurrency      := 0;
      DM.QVendavr_outros.AsCurrency   := 0;
      DM.QVendatroco.AsCurrency       := 0;
      DM.QVenda.Post;

      frmPV.TVenda_Item.DisableControls;
      frmPV.TVenda_Item.First;

      while not frmPV.TVenda_Item.Eof do
      begin
         DM.QVenda_Item.Append;
         DM.QVenda_Item.CopyRecord(frmPV.TVenda_Item);
         DM.QVenda_Itemvenda.Value := DM.QVendaid.Value;
         DM.QVenda_ItemCFOP.Value  := '';//remove a informação CANC dos itens p/permitir a total. no ECF e posterior cancelamento
         DM.QVenda_Item.Post;
         frmPV.TVenda_Item.Next;
      end;

      DM.DB.ExecSQL('update indices set valor=if(valor >=9999999999,1,valor+1) where nome="pv";');
   end;

   frmPV.LimparPV;
   DM.QCli.Open('select * from cliente where id=1');
   frmPV.CfgBtn('001000001100');
   frmPV.pg1.ActivePageIndex := 0;
end;

procedure TfrmPV.CfgBtn(chave: string);
var
   i, j: integer;
begin
   chave := RFill(chave,12,'0');
   for i := 0 to componentCount -1 do
   begin
      if (Components[i] is TcxButton) then
      begin
          for j := 1 to 12 do
          if (Components[i] as TcxButton).tag = j then
             (Components[i] as TcxButton).Enabled := chave[j] = '1';
      end;
   end;
   lblccd.Visible := DM_ini.ini.StoredValue['ccd'];
end;

function TfrmPV.Permissao(forca:boolean): boolean;
var
   s: string;
begin
   if (not DM_INI.ini.StoredValue['operacoes_supervisionadas'])and (not Forca) then
   begin
      Result := False;
      Exit;
   end;

   s := '';

   s := InputBox('Permissão de supervisor', 'Senha supervisor', s);

   DM.Q1.Open('select * from operador where senha=' + Texto_Mysql(s) + ' and acesso > 7');

   Result := not DM.Q1.IsEmpty;

   if Result then
      ShowMessage('Autorizado.')
   else
      ShowMessage('Negado. Usuário não foi encontrado ou não tem nível de supervisão.')
end;


procedure TfrmPV.Configurao1Click(Sender: TObject);
begin
   if Permissao(True) then
      Abrir_form('frmCfg', TfrmCfg);
end;

end.

