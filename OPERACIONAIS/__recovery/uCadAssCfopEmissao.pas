unit uCadAssCfopEmissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, cxMaskEdit,
  cxSpinEdit, cxDBEdit;

type
  TfrmCadAssCfopEmissao = class(TfrmCad)
    Label1: TLabel;
    Label2: TLabel;
    gbEnt: TcxGroupBox;
    gbSai: TcxGroupBox;
    cxLabel8: TcxLabel;
    cxDBSpinEdit7: TcxDBLookupComboBox;
    cxDBSpinEdit6: TcxDBLookupComboBox;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxDBSpinEdit8: TcxDBLookupComboBox;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxDBSpinEdit14: TcxDBLookupComboBox;
    cxDBSpinEdit15: TcxDBLookupComboBox;
    cxDBSpinEdit16: TcxDBLookupComboBox;
    cmbCst: TcxDBLookupComboBox;
    edCFOP: TcxDBTextEdit;
    tbvcfop: TcxGridDBColumn;
    tbvcst: TcxGridDBColumn;
    tbvcst_pis_ent: TcxGridDBColumn;
    tbvcst_pis_sai: TcxGridDBColumn;
    tbvcst_ipi_ent: TcxGridDBColumn;
    tbvcst_ipi_sai: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cmbCstEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAssCfopEmissao: TfrmCadAssCfopEmissao;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, udm_ini, uFuncoes, uMD5Print;

procedure TfrmCadAssCfopEmissao.cmbCstEnter(Sender: TObject);
begin
   gbSai.Visible := ((DM.QAssist_cfop_Emitcfop.Value >=5000)and(DM.QAssist_cfop_Emitcfop.Value <=6999)) or
                    ((DM.QAssist_cfop_Emitcfop.Value >=7000)and(DM.QAssist_cfop_Emitcfop.Value <=7999));
   gbEnt.Visible := not gbSai.Visible;
end;

procedure TfrmCadAssCfopEmissao.FormCreate(Sender: TObject);
begin
   inherited;
   DS1.DataSet.Open;
   DM.dsCST.DataSet.Open;
   DM.dsQCSOSN.DataSet.Open;
   DM.dsCST2.DataSet.Open;
   DM.dsCSTPC.DataSet.Open;
   DM.QEmpresa.Open;

   if DM.QEmpresaindativ.Value < 2 then
   begin
      cmbCst.Properties.ListSource := DM.dsQCSOSN;
    //  cmbCst.Properties.ListFieldNames := 'csosn';
      Label2.Caption :='CSOSN';
      cmbCst.Hint    := 'Para venda use 101, 102, 103, 300, 400 ou 500';
   end;
end;

end.

