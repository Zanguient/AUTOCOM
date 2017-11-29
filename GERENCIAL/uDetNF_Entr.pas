unit uDetNF_Entr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxGroupBox, cxTextEdit, cxMemo, cxDBEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls, cxDBLabel, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, cxButtons;

type
  TfrmDetNF_Entr = class(Tfrm)
    Panel1: TPanel;
    cxLabel24: TcxLabel;
    cxDBLabel25: TcxDBLabel;
    cxLabel25: TcxLabel;
    cxDBLabel26: TcxDBLabel;
    cxLabel26: TcxLabel;
    cxDBLabel27: TcxDBLabel;
    cxDBLabel29: TcxDBLabel;
    cxLabel28: TcxLabel;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel6: TCategoryPanel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    cxDBTextEdit9: TcxDBLabel;
    cxDBCalcEdit24: TcxDBLabel;
    cxDBCalcEdit23: TcxDBLabel;
    cxDBCalcEdit25: TcxDBLabel;
    grdDup: TcxGrid;
    tbvDup: TcxGridDBTableView;
    tbvDupnDup: TcxGridDBColumn;
    tbvDupvDup: TcxGridDBColumn;
    tbvDupdVenc: TcxGridDBColumn;
    lvDup: TcxGridLevel;
    CategoryPanel5: TCategoryPanel;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvqVol: TcxGridDBColumn;
    tbvespecie: TcxGridDBColumn;
    tbvmarca: TcxGridDBColumn;
    tbvnVol: TcxGridDBColumn;
    tbvpesoL: TcxGridDBColumn;
    tbvpesoB: TcxGridDBColumn;
    lv: TcxGridLevel;
    CategoryPanel4: TCategoryPanel;
    Label34: TcxLabel;
    Label35: TcxLabel;
    Label36: TcxLabel;
    Label37: TcxLabel;
    Label38: TcxLabel;
    Label39: TcxLabel;
    cxDBTextEdit1: TcxDBLabel;
    cxDBTextEdit3: TcxDBLabel;
    cxDBTextEdit5: TcxDBLabel;
    cxDBTextEdit6: TcxDBLabel;
    cxDBTextEdit7: TcxDBLabel;
    cxDBTextEdit8: TcxDBLabel;
    CategoryPanel3: TCategoryPanel;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    CategoryPanel2: TCategoryPanel;
    Label11: TcxLabel;
    cxDBCalcEdit1: TcxDBLabel;
    cxLabel1: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxLabel2: TcxLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBLabel5: TcxDBLabel;
    cxGroupBox1: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxDBLabel6: TcxDBLabel;
    cxLabel6: TcxLabel;
    cxDBLabel7: TcxDBLabel;
    cxLabel7: TcxLabel;
    cxDBLabel8: TcxDBLabel;
    cxLabel8: TcxLabel;
    cxDBLabel9: TcxDBLabel;
    cxGroupBox2: TcxGroupBox;
    cxLabel9: TcxLabel;
    cxDBLabel10: TcxDBLabel;
    cxLabel10: TcxLabel;
    cxDBLabel11: TcxDBLabel;
    cxLabel11: TcxLabel;
    cxDBLabel12: TcxDBLabel;
    cxLabel12: TcxLabel;
    cxDBLabel13: TcxDBLabel;
    cxDBLabel14: TcxDBLabel;
    cxLabel13: TcxLabel;
    cxDBLabel15: TcxDBLabel;
    cxLabel14: TcxLabel;
    cxDBLabel16: TcxDBLabel;
    cxLabel15: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    cxLabel16: TcxLabel;
    cxDBLabel17: TcxDBLabel;
    cxLabel17: TcxLabel;
    cxDBLabel18: TcxDBLabel;
    cxLabel18: TcxLabel;
    cxDBLabel19: TcxDBLabel;
    cxLabel19: TcxLabel;
    cxDBLabel20: TcxDBLabel;
    cxLabel20: TcxLabel;
    cxDBLabel21: TcxDBLabel;
    cxLabel21: TcxLabel;
    cxDBLabel22: TcxDBLabel;
    cxDBLabel23: TcxDBLabel;
    cxLabel22: TcxLabel;
    cxDBLabel24: TcxDBLabel;
    cxLabel23: TcxLabel;
    CategoryPanel1: TCategoryPanel;
    grdItens: TcxGrid;
    tbvItens: TcxGridDBTableView;
    tbvItensnItem: TcxGridDBColumn;
    tbvItensxProd: TcxGridDBColumn;
    tbvItensNCM: TcxGridDBColumn;
    tbvItensuCom: TcxGridDBColumn;
    tbvItensqCom: TcxGridDBColumn;
    tbvItensvUnCom: TcxGridDBColumn;
    tbvItensvDesc: TcxGridDBColumn;
    tbvItensvProd: TcxGridDBColumn;
    lvItens: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxLabel27: TcxLabel;
    cxDBLabel28: TcxDBLabel;
    CategoryPanel7: TCategoryPanel;
    cxDBLabel30: TcxDBLabel;
    cxLabel29: TcxLabel;
    cxDBLabel31: TcxDBLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxDBLabel32: TcxDBLabel;
    cxDBLabel33: TcxDBLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxDBLabel34: TcxDBLabel;
    cxDBLabel35: TcxDBLabel;
    cxLabel34: TcxLabel;
    cxDBLabel36: TcxDBLabel;
    cxDBLabel37: TcxDBLabel;
    cxDBLabel38: TcxDBLabel;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    cxDBLabel39: TcxDBLabel;
    cxLabel35: TcxLabel;
    cxDBLabel40: TcxDBLabel;
    cxLabel39: TcxLabel;
    cxDBLabel41: TcxDBLabel;
    cxLabel40: TcxLabel;
    cxDBLabel42: TcxDBLabel;
    cxLabel41: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetNF_Entr: TfrmDetNF_Entr;

implementation

{$R *.dfm}

uses uDM_NF_Entr, uFuncoes, uMD5Print, uAutocomConsts;

procedure TfrmDetNF_Entr.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmDetNF_Entr.FormCreate(Sender: TObject);
 var
   i: integer;
begin
   inherited;

  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
  end;
end;

end.
