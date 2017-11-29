unit uCadEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, RxPlacemnt,
  cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxNavigator, cxDBNavigator, cxPC, dxStatusBar, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxCheckBox, cxDBEdit, cxDBLabel, cxDropDownEdit, cxMaskEdit,
  cxSpinEdit, Easysize, ACBrBase, ACBrEnterTab, cxGroupBox, cxRadioGroup, cxImageComboBox;

type
  TfrmCadEmpresa = class(TfrmCad)
    TabCont: TcxTabSheet;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBComboBox;
    lblcdocidEmpr: TcxDBLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBNavigator1: TcxDBNavigator;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    cxDBTextEdit30: TcxDBTextEdit;
    cxDBTextEdit31: TcxDBTextEdit;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBTextEdit33: TcxDBTextEdit;
    lblCodCidCont: TcxDBLabel;
    cxDBComboBox2: TcxDBComboBox;
    cxDBSpinEdit2: TcxDBTextEdit;
    cmbCidadeEmpr: TcxDBTextEdit;
    cmbCidadeContador: TcxDBTextEdit;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label13: TcxLabel;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    Label21: TcxLabel;
    Label22: TcxLabel;
    Label23: TcxLabel;
    Label24: TcxLabel;
    Label25: TcxLabel;
    Label26: TcxLabel;
    Label27: TcxLabel;
    Label28: TcxLabel;
    Label29: TcxLabel;
    Label30: TcxLabel;
    Label31: TcxLabel;
    Label32: TcxLabel;
    Label33: TcxLabel;
    Label34: TcxLabel;
    Label35: TcxLabel;
    TabFiscais: TcxTabSheet;
    TabFarma: TcxTabSheet;
    cxDBTextEdit35: TcxDBTextEdit;
    cxDBTextEdit37: TcxDBTextEdit;
    cxDBTextEdit38: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    Label7: TcxLabel;
    Label36: TcxLabel;
    Label37: TcxLabel;
    Label38: TcxLabel;
    Bevel1: TBevel;
    cxDBNavigator2: TcxDBNavigator;
    cxDBNavigator3: TcxDBNavigator;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit34: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBSpinEdit1: TcxDBRadioGroup;
    cxDBTextEdit21: TcxDBCheckBox;
    cxDBTextEdit22: TcxDBCheckBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxDBComboBox3: TcxDBComboBox;
    cxLabel4: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    cxDBTextEdit36: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxLabel8: TcxLabel;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxDBTextEdit39: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxDBTextEdit40: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBTextEdit41: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    cxDBTextEdit42: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    cxDBTextEdit44: TcxDBTextEdit;
    cxLabel16: TcxLabel;
    cxDBTextEdit45: TcxDBTextEdit;
    cxLabel17: TcxLabel;
    cxDBTextEdit7: TcxDBComboBox;
    Label8: TcxLabel;
    cxTabSheet2: TcxTabSheet;
    cxDBTextEdit43: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxLabel14: TcxLabel;
    cxDBTextEdit46: TcxDBTextEdit;
    cxLabel15: TcxLabel;
    cxDBTextEdit47: TcxDBTextEdit;
    cxLabel18: TcxLabel;
    cxDBTextEdit48: TcxDBTextEdit;
    cxLabel19: TcxLabel;
    cxDBTextEdit49: TcxDBTextEdit;
    cxDBImageComboBox3: TcxDBImageComboBox;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxDBImageComboBox4: TcxDBImageComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabContShow(Sender: TObject);
    procedure TabCadShow(Sender: TObject);
    procedure cxDBComboBox2PropertiesChange(Sender: TObject);
    procedure cmbCidadeEmprKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit5PropertiesChange(Sender: TObject);
    procedure cmbCidadeContadorKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit4PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEmpresa: TfrmCadEmpresa;

implementation

{$R *.dfm}

uses uDM, uPesqCidade, uFuncoes, uAutocomConsts, udm_ini;

procedure TfrmCadEmpresa.cmbCidadeContadorKeyPress(Sender: TObject;
  var Key: Char);
begin
   if DM.QEmpresa.State in [dsInsert, dsEdit] then
   begin
      if key<> C_CR then
      begin
         if not ValidaUF(DM.QEmpresacont_uf.AsString) then
         begin
            exit;
         end;

         frmPesqCidade    := TfrmPesqCidade.Create(self);
         frmPesqCidade.UF := DM.QEmpresacont_uf.AsString;

         if frmPesqCidade.ShowModal = mrOk then
         begin
            DM.QEmpresacont_cidade.AsString := frmPesqCidade.cdCidadecidade.AsString;
            DM.QEmpresacont_codmun.AsString := frmPesqCidade.cdCidadecod.AsString;
         end;
      end;
   end;
end;

procedure TfrmCadEmpresa.cmbCidadeEmprKeyPress(Sender: TObject; var Key: Char);
begin
   if DM.QEmpresa.State in [dsInsert, dsEdit] then
   begin
      if key<> C_CR then
      begin
         if not ValidaUF(DM.QEmpresauf.AsString) then
         begin
            exit;
         end;

         frmPesqCidade    := TfrmPesqCidade.Create(self);
         frmPesqCidade.UF := DM.QEmpresauf.AsString;

         if frmPesqCidade.ShowModal = mrOk then
         begin
            DM.QEmpresacidade.AsString := frmPesqCidade.cdCidadecidade.AsString;
            DM.QEmpresacodmun.AsString := frmPesqCidade.cdCidadecod.AsString;
         end;
      end;
   end;
end;

procedure TfrmCadEmpresa.cxDBComboBox2PropertiesChange(Sender: TObject);
begin
   if DM.QEmpresa.State in [dsInsert, dsEdit] then
   begin
      DM.QEmpresacont_cidade.AsString := C_ST_VAZIO;
      DM.QEmpresacont_codmun.AsString := C_ST_VAZIO;
   end;
end;

procedure TfrmCadEmpresa.cxDBTextEdit4PropertiesChange(Sender: TObject);
begin
   if (DS1.DataSet.State in[dsEdit, dsInsert])and
      (copy(TcxDBTextEdit(sender).Text,1,1)='I') then
      DM.QEmpresaie.AsString := C_227;
end;

procedure TfrmCadEmpresa.cxDBTextEdit5PropertiesChange(Sender: TObject);
begin
   if DM.QEmpresa.State in [dsInsert, dsEdit] then
   begin
      DM.QEmpresacidade.AsString := C_ST_VAZIO;
      DM.QEmpresacodmun.AsString := C_ST_VAZIO;
   end;
end;

procedure TfrmCadEmpresa.TabContShow(Sender: TObject);
begin
   cxDBTextEdit23.SetFocus;
end;

procedure TfrmCadEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM.QEmpresa.Close;
   inherited;
end;

procedure TfrmCadEmpresa.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QEmpresa.Open;
   TabFarma.TabVisible := DM_INI.ini.StoredValue['modo_farmacia'];
   pgCad.ActivePage := TabCad;
   b_ComPesquisa := False;
end;

procedure TfrmCadEmpresa.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;
   case key of
     // VK_F5: if DS1.DataSet <> nil then Ds1.DataSet.Append;
 //     VK_F6: if DS1.DataSet <> nil then Ds1.DataSet.Delete;
      VK_F7: if DS1.DataSet <> nil then Ds1.DataSet.Edit;
      VK_F8: if (DS1.DataSet <> nil)and(Ds1.DataSet.State in [dsInsert, dsEdit]) then Ds1.DataSet.Post;
      VK_F9: if DS1.DataSet <> nil then Ds1.DataSet.Cancel;
   end;
end;

procedure TfrmCadEmpresa.FormShow(Sender: TObject);
begin
  inherited;
  TabPesq.TabVisible := False;
end;

procedure TfrmCadEmpresa.TabCadShow(Sender: TObject);
begin
   cxDBTextEdit1.SetFocus;
end;

end.
