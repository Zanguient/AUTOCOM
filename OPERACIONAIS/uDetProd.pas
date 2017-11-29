unit uDetProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxStyles, cxEdit, cxVGrid,
  cxDBVGrid, cxInplaceContainer;

type
  TfrmDetProd = class(Tfrm)
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxDBVerticalGrid1CFOP: TcxDBEditorRow;
    cxDBVerticalGrid1uCom: TcxDBEditorRow;
    cxDBVerticalGrid1qCom: TcxDBEditorRow;
    cxDBVerticalGrid1vUnCom: TcxDBEditorRow;
    cxDBVerticalGrid1vProd: TcxDBEditorRow;
    cxDBVerticalGrid1uTrib: TcxDBEditorRow;
    cxDBVerticalGrid1qTrib: TcxDBEditorRow;
    cxDBVerticalGrid1vUnTrib: TcxDBEditorRow;
    cxDBVerticalGrid1vOutro: TcxDBEditorRow;
    cxDBVerticalGrid1vFrete: TcxDBEditorRow;
    cxDBVerticalGrid1vSeg: TcxDBEditorRow;
    cxDBVerticalGrid1vDesc: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_CST: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_orig: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_modBC: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_vBC: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_pICMS: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_vICMS: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_CSOSN: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_pCredSN: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_vCredICMSSN: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_modBCST: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_pMVAST: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_vTabelaST: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_pRedBCST: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_vBCST: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_pICMSST: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_vICMSST: TcxDBEditorRow;
    cxDBVerticalGrid1ICMS_pRedBC: TcxDBEditorRow;
    cxDBVerticalGrid1IPI_CST: TcxDBEditorRow;
    cxDBVerticalGrid1IPI_clEnq: TcxDBEditorRow;
    cxDBVerticalGrid1IPI_CNPJProd: TcxDBEditorRow;
    cxDBVerticalGrid1IPI_cSelo: TcxDBEditorRow;
    cxDBVerticalGrid1IPI_qSelo: TcxDBEditorRow;
    cxDBVerticalGrid1IPI_cEnq: TcxDBEditorRow;
    cxDBVerticalGrid1IPI_vBC: TcxDBEditorRow;
    cxDBVerticalGrid1IPI_qUnid: TcxDBEditorRow;
    cxDBVerticalGrid1IPI_vUnid: TcxDBEditorRow;
    cxDBVerticalGrid1IPI_pIPI: TcxDBEditorRow;
    cxDBVerticalGrid1IPI_vIPI: TcxDBEditorRow;
    cxDBVerticalGrid1II_vBc: TcxDBEditorRow;
    cxDBVerticalGrid1II_vDespAdu: TcxDBEditorRow;
    cxDBVerticalGrid1II_vII: TcxDBEditorRow;
    cxDBVerticalGrid1II_vIOF: TcxDBEditorRow;
    cxDBVerticalGrid1PIS_CST: TcxDBEditorRow;
    cxDBVerticalGrid1PIS_vBC: TcxDBEditorRow;
    cxDBVerticalGrid1PIS_pPIS: TcxDBEditorRow;
    cxDBVerticalGrid1PIS_vPIS: TcxDBEditorRow;
    cxDBVerticalGrid1PIS_qBCProd: TcxDBEditorRow;
    cxDBVerticalGrid1PIS_vAliqProd: TcxDBEditorRow;
    cxDBVerticalGrid1PISST_vBc: TcxDBEditorRow;
    cxDBVerticalGrid1PISST_pPis: TcxDBEditorRow;
    cxDBVerticalGrid1PISST_qBCProd: TcxDBEditorRow;
    cxDBVerticalGrid1PISST_vAliqProd: TcxDBEditorRow;
    cxDBVerticalGrid1PISST_vPIS: TcxDBEditorRow;
    cxDBVerticalGrid1COFINS_CST: TcxDBEditorRow;
    cxDBVerticalGrid1COFINS_vBC: TcxDBEditorRow;
    cxDBVerticalGrid1COFINS_pCOFINS: TcxDBEditorRow;
    cxDBVerticalGrid1COFINS_vCOFINS: TcxDBEditorRow;
    cxDBVerticalGrid1COFINS_qBCProd: TcxDBEditorRow;
    cxDBVerticalGrid1COFINS_vAliqProd: TcxDBEditorRow;
    cxDBVerticalGrid1COFINSST_vBC: TcxDBEditorRow;
    cxDBVerticalGrid1COFINSST_pCOFINS: TcxDBEditorRow;
    cxDBVerticalGrid1COFINSST_qBCProd: TcxDBEditorRow;
    cxDBVerticalGrid1COFINSST_vAliqProd: TcxDBEditorRow;
    cxDBVerticalGrid1COFINSST_vCOFINS: TcxDBEditorRow;
    cxDBVerticalGrid1ISSQN_vBC: TcxDBEditorRow;
    cxDBVerticalGrid1ISSQN_vAliq: TcxDBEditorRow;
    cxDBVerticalGrid1ISSQN_vISSQN: TcxDBEditorRow;
    cxDBVerticalGrid1ISSQN_cMunFG: TcxDBEditorRow;
    cxDBVerticalGrid1ISSQN_cListServ: TcxDBEditorRow;
    cxDBVerticalGrid1ISSQN_SitTrib: TcxDBEditorRow;
    cxDBVerticalGrid1QTD: TcxDBEditorRow;
    cxDBVerticalGrid1VR_CUSTO: TcxDBEditorRow;
    cxDBVerticalGrid1VR_VENDA: TcxDBEditorRow;
    cxDBVerticalGrid1ULT_CUSTO: TcxDBEditorRow;
    CategICMS: TcxCategoryRow;
    CategICMSST: TcxCategoryRow;
    Categ_Prod: TcxCategoryRow;
    CategIPI: TcxCategoryRow;
    CategSN: TcxCategoryRow;
    CategPIS: TcxCategoryRow;
    CategPISST: TcxCategoryRow;
    CategII: TcxCategoryRow;
    CategCOFINS: TcxCategoryRow;
    CAtegCOFINSST: TcxCategoryRow;
    CategISS: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetProd: TfrmDetProd;
  path_grd: string;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM_NF_Entr, uFuncoes, uMD5Print;

procedure TfrmDetProd.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin //grava as cfg da grid
   for i := 0 to ComponentCount - 1 do
   begin
       if (Components[i] is TcxDBVerticalGrid) then
          (Components[i] as TcxDBVerticalGrid).StoreToIniFile(path_grd);
   end;

  inherited;
end;

procedure TfrmDetProd.FormCreate(Sender: TObject);
var
   i: integer;
begin
   inherited;

   for i := 0 to ComponentCount - 1 do //pega o path do .grd
   begin
      if (Components[i] is TcxDBVerticalGrid) then
          path_grd := Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxDBVerticalGrid).Name) + '.grd');
   end;
end;

procedure TfrmDetProd.FormShow(Sender: TObject);
var
   i: integer;
begin
  inherited;

  for i := 0 to ComponentCount - 1 do //ajusta a grid
  begin
      if (Components[i] is TcxDBVerticalGrid) then
      begin
         (Components[i] as TcxDBVerticalGrid).RestoreFromIniFile(path_grd);
      end;
  end;
end;

end.
