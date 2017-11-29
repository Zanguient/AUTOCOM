unit uCadVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, cxCheckBox,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxDBLabel, Vcl.StdCtrls, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, cxLabel, cxTextEdit, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC, dxStatusBar,
  cxButtons, Vcl.ExtCtrls, dxSkinsCore, dxSkinsdxStatusBarPainter,
  dxSkinscxPCPainter;

type
  TfrmCadVendedor = class(TfrmCad)
    EDID: TcxDBLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    cmbCidade: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    tbvnome: TcxGridDBColumn;
    tbvnomered: TcxGridDBColumn;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    procedure dbNavButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
    procedure cmbCidadeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadVendedor: TfrmCadVendedor;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, uPesqCidade;

procedure TfrmCadVendedor.cmbCidadeKeyPress(Sender: TObject; var Key: Char);
begin
   if DS1.Dataset.State in [dsInsert, dsEdit] then
   begin
      if key<> #13 then
      begin
         if not ValidaUF(DM.QVendedoruf.AsString) then
         begin
            exit;
         end;

         frmPesqCidade    := TfrmPesqCidade.Create(self);
         frmPesqCidade.UF := DM.QVendedoruf.AsString;

         if frmPesqCidade.ShowModal = mrOk then
         begin
            DM.Qvendedorcidade.AsString := frmPesqCidade.cdCidadecidade.AsString;
         end;
      end;
   end;
end;

procedure TfrmCadVendedor.dbNavButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
{   cxDBTextEdit3.Hide;

   if AButtonIndex in [6,9] then
   begin
      cxDBTextEdit1.SetFocus;
      cxDBTextEdit3.Show;
   end; }
end;

procedure TfrmCadVendedor.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QVendedor.Open;
end;

procedure TfrmCadVendedor.TabPesqShow(Sender: TObject);
begin
//  inherited;
end;

end.
