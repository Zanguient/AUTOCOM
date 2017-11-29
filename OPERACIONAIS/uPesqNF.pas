unit uPesqNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, ClipBrd,System.UITypes,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,  ShellAPI,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxTextEdit, cxGroupBox, cxRadioGroup,
  cxPCdxBarPopupMenu, cxDBLabel, cxPC, cxMemo, cxDBEdit, cxCheckBox,
  dxSkinsCore, dxSkinscxPCPainter, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator, Vcl.DBCtrls, RxLookup, Vcl.Mask,
  RxToolEdit;

type
  TfrmPesqNF = class(Tfrm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    g1: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvid: TcxGridDBColumn;
    tbvIde_nNF: TcxGridDBColumn;
    tbvIde_serie: TcxGridDBColumn;
    tbvIde_dEmi: TcxGridDBColumn;
    tbvIde_dSaiEnt: TcxGridDBColumn;
    tbvDest_CNPJCPF: TcxGridDBColumn;
    tbvDest_IE: TcxGridDBColumn;
    tbvDest_xNome: TcxGridDBColumn;
    tbvICMSTot_vNF: TcxGridDBColumn;
    tbvstatus: TcxGridDBColumn;
    g1Lvl1: TcxGridLevel;
    Panel2: TPanel;
    pg1: TPageControl;
    tab1: TTabSheet;
    Shape13: TShape;
    Label1: TLabel;
    ednmro: TEdit;
    tab2: TTabSheet;
    Shape2: TShape;
    Label2: TLabel;
    D1: TDateEdit;
    D2: TDateEdit;
    cb1: TCheckBox;
    tab3: TTabSheet;
    Shape1: TShape;
    Label3: TLabel;
    cmb1: TRxDBLookupCombo;
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
    Panel3: TPanel;
    btnPesq2: TcxButton;
    btnCanc2: TcxButton;
    btnPesquisar: TcxButton;
    btnCancelar: TcxButton;
    DSDest: TDataSource;
    PopupMenu1: TPopupMenu;
    Detalhes1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure Detalhes1Click(Sender: TObject);
    procedure tab3Show(Sender: TObject);
    procedure tab2Show(Sender: TObject);
    procedure tab1Show(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCanc2Click(Sender: TObject);
    procedure btnPesq2Click(Sender: TObject);
    procedure cmb1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private

  public
    { Public declarations }
  end;

var
  frmPesqNF: TfrmPesqNF;
  path_grd: string;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uDM_NF_Entr, uFuncoes, uMD5Print, udm_ini, uDetNF_Entr;



procedure TfrmPesqNF.btnCanc2Click(Sender: TObject);
begin
   Panel2.Hide;
end;

procedure TfrmPesqNF.btnCancelarClick(Sender: TObject);
begin
   if not DM_NF_Entr.QNF.IsEmpty then
   if MessageDlg('Deseja Cancelar esta entrada?', mtWarning, [mbYes, mbNo], 0) = mrYes then
      DM_NF_Entr.QNF.Delete;
end;

procedure TfrmPesqNF.btnPesq2Click(Sender: TObject);
var
   s: string;
begin
   case pg1.ActivePageIndex of
      0: begin
         if ednmro.Text = C_ST_VAZIO then
            raise Exception.Create('Informe um número.');

         DM_NF_Entr.QNF.Open('select * from nf_entr where Ide_nNF=' + Texto_Mysql(ednmro.Text));
      end;

      1: begin
         if (d1.Date > d2.Date)or(d1.Date = 0) then
            raise Exception.Create('Período incorreto.');

         if cb1.Checked then
            s := 'Ide_dSaiEnt'
         else
            s := 'Ide_dEmi';

         DM_NF_Entr.QNF.Open('select * from nf_entr where ' + s + ' between ' + data_My(d1.Date) + ' and ' + data_My(d2.Date));
      end;

      2: begin
         if cmb1.KeyValue = null then
            raise Exception.Create('Selecione um Emitente.');

         DM_NF_Entr.QNF.Open('select * from nf_entr where Emit_CNPJCPF=' + Texto_Mysql(DM.QvwDest_NFcnpj.AsString));
      end;
   end;

   panel2.Hide;
end;

procedure TfrmPesqNF.btnPesquisarClick(Sender: TObject);
begin
   panel2.Show;
end;

procedure TfrmPesqNF.cmb1Click(Sender: TObject);
begin
   Panel4.Show;
end;

procedure TfrmPesqNF.Detalhes1Click(Sender: TObject);
begin
   if not DM_NF_Entr.QNF.IsEmpty then
      AbreForm(TfrmDetNF_Entr, frmDetNF_Entr);
end;

procedure TfrmPesqNF.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin
  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
  end;
   ini.SaveFormPlacement;

  inherited;
end;

procedure TfrmPesqNF.FormCreate(Sender: TObject);
var
   i: integer;
begin
  inherited;

  for i := 0 to ComponentCount - 1 do //ajusta a grid
  begin
      if (Components[i] is TcxGridDBTableView) then
      begin
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
      end;
  end;

  CAPTION := 'PESQUISA DE N.F. ' + C_117;

  if DM_NF_Entr = nil then
     DM_NF_Entr := TDM_NF_Entr.Create(self);
end;

procedure TfrmPesqNF.FormShow(Sender: TObject);
begin
  inherited;
   Panel2.Left := (g1.Width - Panel2.Width) div 2;
   Panel2.top  := (g1.Height - Panel2.Height) div 2;
   btnPesquisar.Click;
end;

procedure TfrmPesqNF.tab1Show(Sender: TObject);
begin
   ednmro.Clear;
   ednmro.SetFocus;
end;

procedure TfrmPesqNF.tab2Show(Sender: TObject);
begin
   D1.Clear;
   d2.Clear;
   cb1.Checked := false;
   d1.SetFocus;
end;

procedure TfrmPesqNF.tab3Show(Sender: TObject);
begin
   DSDest.DataSet.Open;
   cmb1.KeyValue := null;
   Panel4.Hide;
   cmb1.SetFocus;
end;

procedure TfrmPesqNF.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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
