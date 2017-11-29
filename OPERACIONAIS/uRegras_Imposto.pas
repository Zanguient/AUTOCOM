unit uRegras_Imposto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls, cxCurrencyEdit,
  cxDBEdit, cxGroupBox, cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxSkinsCore, dxSkinCaramel,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, dxBarBuiltInMenu;

type
  TfrmRegras_Imposto = class(TfrmCad)
    dsAliq: TDataSource;
    dsRedBC: TDataSource;
    Label20: TcxLabel;
    cmbCst: TcxDBLookupComboBox;
    Label18: TcxLabel;
    cmbAliqICMS: TcxDBLookupComboBox;
    cxDBTextEdit7: TcxDBCheckBox;
    gpipi: TcxGroupBox;
    cxDBCalcEdit14: TcxDBCurrencyEdit;
    Label29: TcxLabel;
    cxGroupBox9: TPanel;
    Label41: TcxLabel;
    cmbcstipisai: TcxDBLookupComboBox;
    cxGroupBox10: TPanel;
    Label37: TcxLabel;
    cmbcstipient: TcxDBLookupComboBox;
    cxButton2: TcxButton;
    gppis: TcxGroupBox;
    cxDBCalcEdit13: TcxDBCurrencyEdit;
    Label26: TcxLabel;
    cxGroupBox5: TPanel;
    cxLabel5: TcxLabel;
    cmbcstpissai: TcxDBLookupComboBox;
    cxGroupBox6: TPanel;
    cxLabel3: TcxLabel;
    cmbcstpisent: TcxDBLookupComboBox;
    cxButton3: TcxButton;
    gpcofins: TcxGroupBox;
    cxDBCalcEdit12: TcxDBCurrencyEdit;
    Label22: TcxLabel;
    cxGroupBox8: TPanel;
    cxLabel4: TcxLabel;
    cmbcstcofsai: TcxDBLookupComboBox;
    cxGroupBox7: TPanel;
    cxLabel2: TcxLabel;
    cmbcstcofent: TcxDBLookupComboBox;
    cxButton4: TcxButton;
    tbvid: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function Nome: string;
  end;

var
  frmRegras_Imposto: TfrmRegras_Imposto;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes;

procedure TfrmRegras_Imposto.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QAliq.Open;
   DM.QSessao.Open;
   DM.QUnidade.Open;
   DM.QSped_CST_Tabela.Open;
   DM.QSped_Tabela.Open;
   DM.QRegras_Imposto.Open;
   DM.QRegras_Imposto.Last;
end;

function TfrmRegras_Imposto.Nome: string;
begin
   Result := FormatFloat('00', DM.QCSTcst.Value) + '-' +
             DM.QAliqcod_if.AsString + '-' +
             DM.QRegras_Impostoicp.AsString + '-' +
             'E' + cmbcstipient.Text + '.S' + cmbcstipisai.Text + '-' +
             Iif(DM.QRegras_Impostoicp.AsString = 'N','ExSx','E' + cmbcstpisent.Text + '.S' + cmbcstpissai.Text) + '-' +
             Iif(DM.QRegras_Impostoicp.AsString = 'N','ExSx','E' + cmbcstcofent.Text + '.S' + cmbcstcofsai.Text);
end;

end.
