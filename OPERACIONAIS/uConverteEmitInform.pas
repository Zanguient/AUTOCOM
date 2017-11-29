unit uConverteEmitInform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, DB,
  cxDBLookupComboBox, cxTextEdit, cxDBEdit, cxLabel, Vcl.Grids, Vcl.DBGrids,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxClasses, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxGroupBox,
  cxDBNavigator;

type
  TfrmConverteEmitInform = class(Tfrm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxDBSpinEdit1: TcxDBTextEdit;
    cxDBSpinEdit2: TcxDBLookupComboBox;
    cxDBSpinEdit6: TcxDBLookupComboBox;
    cxDBSpinEdit7: TcxDBLookupComboBox;
    cxDBSpinEdit8: TcxDBLookupComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel12: TcxLabel;
    Label20: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxDBSpinEdit9: TcxDBTextEdit;
    cmbcst: TcxDBLookupComboBox;
    cxDBSpinEdit14: TcxDBLookupComboBox;
    cxDBSpinEdit15: TcxDBLookupComboBox;
    cxDBSpinEdit16: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    grdItens: TcxGrid;
    tbvItens: TcxGridDBTableView;
    lvItens: TcxGridLevel;
    tbvItenscfop: TcxGridDBColumn;
    tbvItenscst: TcxGridDBColumn;
    tbvItenscsosn: TcxGridDBColumn;
    tbvItenscst_pis_sai: TcxGridDBColumn;
    tbvItenscst_ipi_sai: TcxGridDBColumn;
    tbvItenscst_cofins_sai: TcxGridDBColumn;
    tbvItenscfop_infor: TcxGridDBColumn;
    tbvItenscst_infor: TcxGridDBColumn;
    tbvItenscsosn_infor: TcxGridDBColumn;
    tbvItenscst_pis_ent_infor: TcxGridDBColumn;
    tbvItenscst_ipi_ent_infor: TcxGridDBColumn;
    tbvItenscst_cofins_ent_infor: TcxGridDBColumn;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    dbNav: TcxDBNavigator;
    cxButton1: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConverteEmitInform: TfrmConverteEmitInform;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, udm_ini, uFuncoes, uDM_NF_Entr;

procedure TfrmConverteEmitInform.cxButton1Click(Sender: TObject);
begin
  DM.dscfop_cst_csosn.DataSet.Cancel;
  DM.Qcfop_cst_csosn.Open('select * from cfop_cst_csosn order by cfop, cst, csosn');
end;

procedure TfrmConverteEmitInform.FormCreate(Sender: TObject);
begin
   inherited;
   dm.Qcfop_cst_csosn.open();
   DM.QCST.Open('select * from cst where SimplesNacional="N"');
   DM.cdcsosn.Open;
end;

procedure TfrmConverteEmitInform.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   case key of
      VK_F5: DM.dscfop_cst_csosn.DataSet.Append;
      VK_F6: DM.dscfop_cst_csosn.DataSet.Delete;
      VK_F7: DM.dscfop_cst_csosn.DataSet.Edit;
      VK_F8: if (DM.dscfop_cst_csosn.DataSet.State in [dsInsert, dsEdit]) then DM.dscfop_cst_csosn.DataSet.Post;
      VK_F9: DM.dscfop_cst_csosn.DataSet.Cancel;
   end;
end;

end.
