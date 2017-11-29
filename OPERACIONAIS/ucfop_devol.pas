unit ucfop_devol;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit,
  cxCheckBox, cxImageComboBox;

type
  TfrmAss_CFOP_Devol = class(TfrmCad)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBCheckBox;
    cxDBTextEdit2: TcxDBCheckBox;
    cxDBTextEdit3: TcxDBCheckBox;
    cxDBSpinEdit1: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBSpinEdit7: TcxDBLookupComboBox;
    cxDBSpinEdit6: TcxDBLookupComboBox;
    cxLabel9: TcxLabel;
    Label2: TLabel;
    tbvcfop: TcxGridDBColumn;
    tbvinterno: TcxGridDBColumn;
    tbvind: TcxGridDBColumn;
    tbvst: TcxGridDBColumn;
    tbvcst: TcxGridDBColumn;
    Label3: TLabel;
    cmbProdCST: TcxDBImageComboBox;
    cmbProdCSOSN: TcxDBImageComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAss_CFOP_Devol: TfrmAss_CFOP_Devol;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, udm_ini, uMD5Print;

procedure TfrmAss_CFOP_Devol.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   DS1.DataSet.Close;
//   DM.dsCST.DataSet.Close;
 //  DM.dsCST2.DataSet.Close;
 //  DM.dsCSTPC.DataSet.Close;
end;

procedure TfrmAss_CFOP_Devol.FormCreate(Sender: TObject);
var
   i: integer;
begin
   inherited;
   DS1.DataSet.Open;
  cmbProdCST.Properties.Items.Clear;

  for i := low(C_ARR_5) to High(C_ARR_5) do
  begin
     with cmbProdCST.Properties.Items.Add do
     begin
        Description := C_ARR_5[i];
        Value       := i;
     end;
  end;

  cmbProdCSOSN.Properties.Items.Clear;

  for i := low(C_ARR_4) to High(C_ARR_4) do
  begin
     with cmbProdCSOSN.Properties.Items.Add do
     begin
        Description := C_ARR_4[i];
        Value       := i;
     end;
  end;

   DM.dsCST2.DataSet.Open;
   DM.dsCSTPC.DataSet.Open;
end;

end.
