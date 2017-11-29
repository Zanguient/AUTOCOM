unit uListaNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm, cxGraphics, cxLookAndFeels, uAutocomConsts, uFuncoes,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  Easysize, ACBrBase, ACBrEnterTab, RxPlacemnt, cxControls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls,
  Vcl.DBCtrls, RxLookup, Vcl.Mask, RxToolEdit, cxNavigator, cxContainer, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmListaNF = class(Tfrm)
    g1: TcxGrid;
    tbv: TcxGridDBTableView;
    g1Lvl1: TcxGridLevel;
    DSNF: TDataSource;
    tbvid: TcxGridDBColumn;
    tbvIde_serie: TcxGridDBColumn;
    tbvIde_nNF: TcxGridDBColumn;
    tbvIde_dEmi: TcxGridDBColumn;
    tbvIde_dSaiEnt: TcxGridDBColumn;
    tbvDest_CNPJCPF: TcxGridDBColumn;
    tbvDest_IE: TcxGridDBColumn;
    tbvDest_xNome: TcxGridDBColumn;
    tbvICMSTot_vNF: TcxGridDBColumn;
    tbvstatus: TcxGridDBColumn;
    Panel2: TPanel;
    pg1: TPageControl;
    tab1: TTabSheet;
    tab2: TTabSheet;
    tab3: TTabSheet;
    ednmro: TEdit;
    Panel3: TPanel;
    btnPesq2: TcxButton;
    btnCanc2: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    cb1: TCheckBox;
    cmb1: TRxDBLookupCombo;
    Label3: TLabel;
    DSDest: TDataSource;
    Panel4: TPanel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    DBText3: TDBText;
    Label6: TLabel;
    DBText4: TDBText;
    Label7: TLabel;
    DBText5: TDBText;
    Label8: TLabel;
    Shape13: TShape;
    Shape1: TShape;
    Shape2: TShape;
    Panel5: TPanel;
    Label9: TLabel;
    btnOK1: TcxButton;
    btnCanc1: TcxButton;
    btnPesquisar: TcxButton;
    btnCancelar: TcxButton;
    btnEnviar: TcxButton;
    btnConsultar: TcxButton;
    btncce: TcxButton;
    btnData: TcxButton;
    PopupMenu1: TPopupMenu;
    Detalhes1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    D1: TcxDateEdit;
    D2: TcxDateEdit;
    D3: TcxDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnEscClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnPesquisarClick(Sender: TObject);
    procedure tab1Show(Sender: TObject);
    procedure tab3Show(Sender: TObject);
    procedure tab2Show(Sender: TObject);
    procedure cmb1Click(Sender: TObject);
    procedure btnCanc2Click(Sender: TObject);
    procedure btnPesq2Click(Sender: TObject);
    procedure tbvCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btncceClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnCanc1Click(Sender: TObject);
    procedure btnOK1Click(Sender: TObject);
    procedure btnDataClick(Sender: TObject);
    procedure Detalhes1Click(Sender: TObject);
  private
    procedure CfgBtn(chave: string = '1000010');
  public
    { Public declarations }
  end;

var
  frmListaNF: TfrmListaNF;

implementation

{$R *.dfm}

uses udmnfe, uMD5Print, ucce, uMain, uDM, uDetNF;

procedure TfrmListaNF.btnCancelarClick(Sender: TObject);
var
   Justificativa: string;
begin
  Justificativa := '';

  if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa do Cancelamento', Justificativa)) then
     exit;

  if length(Trim(Justificativa)) < 15 then
   raise Exception.Create('A Justificativa deve ter ao menos 15 caracteres.');

  CfgBtn;

  frmMain.Cancelar_NF_Chave(DM.QNF_Chavechave.AsString,
                            AnsiUpperCase(Justificativa),
                            DM.QNF_chaveprotocolo.AsString,
                            DM.QNFIde_cNF.Value,
                            DM.QNFIde_nNF.Value,
                            DM.QNFIde_serie.Value
  );

  Close;
end;

procedure TfrmListaNF.btncceClick(Sender: TObject);
begin
  CfgBtn;
  frmcce := Tfrmcce.Create(self);
  frmcce.ednmro.Value  :=  DM.QNFIde_nNF.AsInteger;
  frmcce.edserie.Value :=  DM.QNFIde_serie.AsInteger;
  frmcce.ShowModal;
  FreeAndNil(frmcce);
  Close;
end;

procedure TfrmListaNF.btnConsultarClick(Sender: TObject);
begin
   CfgBtn;
   frmMain.Consultar_NF_Chave(DM.QNF_chavechave.AsString);
   close;
end;

procedure TfrmListaNF.btnEnviarClick(Sender: TObject);
begin
   frmMain.btn_enviar_email.Click;
end;

procedure TfrmListaNF.btnEscClick(Sender: TObject);
begin
   close;
end;

procedure TfrmListaNF.btnPesquisarClick(Sender: TObject);
begin
   CfgBtn('0000010');
   panel2.Show;
end;

procedure TfrmListaNF.CfgBtn(chave: string);
var
   i: integer;
begin
  inherited;
  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxButton) then
      with (Components[i] as TcxButton) do
      begin
         if tag>0 then
            Enabled := chave[tag]='1';
      end;
  end;
end;

procedure TfrmListaNF.cmb1Click(Sender: TObject);
begin
   Panel4.Show;
end;

procedure TfrmListaNF.Detalhes1Click(Sender: TObject);
begin
   if not DM.QNF.IsEmpty then
      AbreForm(TfrmDetNF, frmDetNF);
end;

procedure TfrmListaNF.btnPesq2Click(Sender: TObject);
var
   s: string;
begin
   case pg1.ActivePageIndex of
      0: begin
         if ednmro.Text = C_ST_VAZIO then
            raise Exception.Create('Informe um número.');

         DM.QNF.Open('select * from nf where Ide_nNF=' + Texto_Mysql(ednmro.Text));
      end;

      1: begin
         if (d1.Date > d2.Date)or(d1.Date = 0) then
            raise Exception.Create('Período incorreto.');

         if cb1.Checked then
            s := 'Ide_dSaiEnt'
         else
            s := 'Ide_dEmi';

         DM.QNF.Open('select * from nf where ' + s + ' between ' + data_My(d1.Date) + ' and ' + data_My(d2.Date));
      end;

      2: begin
         if cmb1.KeyValue = null then
            raise Exception.Create('Selecione um Destinatário.');

         DM.QNF.Open('select * from nf where Dest_CNPJCPF=' + Texto_Mysql(DM.QvwDest_NFcnpj.AsString));
      end;
   end;

   panel2.Hide;
   CfgBtn;
end;

procedure TfrmListaNF.btnCanc2Click(Sender: TObject);
begin
   Panel2.Hide;
   CfgBtn;
end;

procedure TfrmListaNF.btnDataClick(Sender: TObject);
begin
   cfgbtn;
   Panel5.Show;
   d3.Clear;
   d3.SetFocus;
end;

procedure TfrmListaNF.btnOK1Click(Sender: TObject);
begin
   if d3.Date < DM.QNFIde_dEmi.Value then
      raise Exception.Create('Data informada incorretamente.');

   panel5.Hide;
   DM.QNF.Edit;
   DM.QNFIde_dSaiEnt.Value := D3.Date;
   DM.QNF.Post;
   cfgbtn;
end;

procedure TfrmListaNF.btnCanc1Click(Sender: TObject);
begin
   panel5.Hide;
end;

procedure TfrmListaNF.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin
  inherited;
  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
  end;
end;

procedure TfrmListaNF.FormCreate(Sender: TObject);
 var
   i: integer;
begin
   inherited;

  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
  end;
  CfgBtn;
end;

procedure TfrmListaNF.FormShow(Sender: TObject);
begin
   inherited;
   Panel2.Left := (g1.Width - Panel2.Width) div 2;
   Panel2.top  := (g1.Height - Panel2.Height) div 2;
   Panel5.Left := (g1.Width - Panel5.Width) div 2;
   Panel5.top  := (g1.Height - Panel5.Height) div 2;
   btnPesquisar.Click;
end;

procedure TfrmListaNF.tab1Show(Sender: TObject);
begin
   ednmro.Clear;
   ednmro.SetFocus;
end;

procedure TfrmListaNF.tab2Show(Sender: TObject);
begin
   D1.Clear;
   d2.Clear;
   cb1.Checked := false;
   d1.SetFocus;
end;

procedure TfrmListaNF.tab3Show(Sender: TObject);
begin
   DSDest.DataSet.Open;
   cmb1.KeyValue := null;
   Panel4.Hide;
   cmb1.SetFocus;
end;

procedure TfrmListaNF.tbvCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
   i: integer;
begin
   i := DM.QNFstatus.Value;

   if (i in [0,6,7,8])and(DM.QNFIde_dSaiEnt.AsDateTime = 0) then
      CfgBtn('1011011')
   else
   if i in [0,6,7,8] then
      CfgBtn('1111110')
   else
   if i = 4 then //denegada
      CfgBtn('1011010')
   else
   if i = 2 then//cancelada
      CfgBtn('1011010')
   else
      CfgBtn;
end;

procedure TfrmListaNF.tbvCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
   i: integer;
begin
   i := AViewInfo.GridRecord.Values[tbvstatus.Index];

   if i in [0,6,7,8] then
    begin
       ACanvas.Canvas.Brush.Color := clGreen;
       ACanvas.Canvas.Font.Color := clWhite;
    end
   else
   if i=4 then//denegada
    begin
       ACanvas.Canvas.Brush.Color := clYellow;
       ACanvas.Canvas.Font.Color  := clBlack;
    end
   else
   if i=2 then //cancelada
    begin
       ACanvas.Canvas.Brush.Color := clRed;
       ACanvas.Canvas.Font.Color := clWhite;
    end
   else
    begin                                    //outras situações
       ACanvas.Canvas.Brush.Color := clGray;
       ACanvas.Canvas.Font.Color := clWhite;
    end
end;

end.
