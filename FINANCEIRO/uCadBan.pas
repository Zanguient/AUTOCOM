unit uCadBan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData,
  cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls,
  cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxNavigator, cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls,
  cxImageComboBox, cxMemo, cxDBEdit, cxCheckBox, cxCurrencyEdit, cxSpinEdit,
  cxMaskEdit, cxDropDownEdit, cxCalc;

type
  TfrmCadban = class(TfrmCad)
    TabAgencia: TcxTabSheet;
    TabConta: TcxTabSheet;
    grdag: TcxGrid;
    tbvag: TcxGridDBTableView;
    lvag: TcxGridLevel;
    grdConta: TcxGrid;
    tbvconta: TcxGridDBTableView;
    lvconta: TcxGridLevel;
    tbvid: TcxGridDBColumn;
    tbvnumbanco: TcxGridDBColumn;
    tbvnomebanco: TcxGridDBColumn;
    tbvagagencia: TcxGridDBColumn;
    tbvagnome: TcxGridDBColumn;
    tbvcontaconta: TcxGridDBColumn;
    tbvcontatipo: TcxGridDBColumn;
    tbvcontasaldoinicial: TcxGridDBColumn;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    Panel2: TPanel;
    cxTabSheet1: TcxTabSheet;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    CategoryPanel2: TCategoryPanel;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxDBImageComboBox3: TcxDBImageComboBox;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBImageComboBox4: TcxDBImageComboBox;
    CategoryPanel3: TCategoryPanel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBSpinEdit3: TcxDBSpinEdit;
    cxDBImageComboBox5: TcxDBImageComboBox;
    CategoryPanel4: TCategoryPanel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBSpinEdit4: TcxDBSpinEdit;
    cxDBTextEdit16: TcxDBCheckBox;
    cxDBTextEdit17: TcxDBCheckBox;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    tbvagdig: TcxGridDBColumn;
    tbvcontadig: TcxGridDBColumn;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    Label22: TcxLabel;
    Label23: TcxLabel;
    Label26: TcxLabel;
    Label27: TcxLabel;
    Label28: TcxLabel;
    Label29: TcxLabel;
    Label30: TcxLabel;
    Label31: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    Label21: TcxLabel;
    Label24: TcxLabel;
    Label11: TcxLabel;
    Label15: TcxLabel;
    Label14: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label25: TcxLabel;
    Label32: TcxLabel;
    Label33: TcxLabel;
    Label34: TcxLabel;
    Label35: TcxLabel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    cxDBCalcEdit1: TcxDBCurrencyEdit;
    cxDBCalcEdit2: TcxDBCurrencyEdit;
    cxDBCalcEdit3: TcxDBCurrencyEdit;
    Label36: TLabel;
    cxLabel3: TcxLabel;
    cxDBImageComboBox6: TcxDBImageComboBox;
    Label10: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label12: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label13: TcxLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    Label18: TcxLabel;
    cxDBSpinEdit5: TcxDBTextEdit;
    pnlEditConta: TPanel;
    Label37: TLabel;
    edconta: TcxDBTextEdit;
    Label38: TLabel;
    cxDBSpinEdit6: TcxDBSpinEdit;
    Label39: TLabel;
    Label40: TLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
    Label41: TLabel;
    cxDBTextEdit30: TcxDBTextEdit;
    Label42: TLabel;
    cxDBTextEdit31: TcxDBTextEdit;
    Label43: TLabel;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBImageComboBox7: TcxDBImageComboBox;
    tbvusa: TcxGridDBColumn;
    testar: TButton;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure pgCadPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure TabPesqShow(Sender: TObject);
    procedure TabAgenciaShow(Sender: TObject);
    procedure TabContaShow(Sender: TObject);
    procedure testarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadban: TfrmCadban;

implementation

{$R *.dfm}

uses uDM, uFuncoes;

procedure TfrmCadban.FormCreate(Sender: TObject);
begin
   pgCad.ActivePageIndex := 1;
   inherited;
   DM.QBancos.Open;
   DM.QAgencias.Open;
   DM.QContas.Open;
   DM.QBoleto.Open;
end;

procedure TfrmCadban.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case pgCad.ActivePageIndex of
      1: inherited;
      2: case key of
            VK_F5: DM.DSAgencias.DataSet.Append;
            VK_F6: DM.DSAgencias.DataSet.Delete;
            VK_F7: DM.DSAgencias.DataSet.Edit;
            VK_F8: if DM.DSAgencias.DataSet.State in [dsInsert, dsEdit] then
                   begin
                     DM.DSAgencias.DataSet.Post;
                     ShowMessage('Gravado.');
                   end;
            VK_F9: DM.DSAgencias.DataSet.Cancel;
      end;
      3: case key of
            VK_F5: begin
                     DM.DSContas.DataSet.Append;
                     pnlEditConta.Show;
                     edconta.SetFocus;
                   end;
            VK_F6: DM.DSContas.DataSet.Delete;
            VK_F7: begin
                      DM.DSContas.DataSet.Edit;
                      pnlEditConta.Show;
                      edconta.SetFocus;
                   end;
            VK_F8: if DM.DSContas.DataSet.State in [dsInsert, dsEdit] then
                   begin
                     DM.DSContas.DataSet.Post;
                     pnlEditConta.Hide;
                     ShowMessage('Gravado.');
                   end;
            VK_F9: begin
                      DM.DSContas.DataSet.Cancel;
                      pnlEditConta.Hide;
                   end;
      end;
      4: case key of
            VK_F5: DM.DSBoleto.DataSet.Append;
            VK_F6: DM.DSBoleto.DataSet.Delete;
            VK_F7: DM.DSBoleto.DataSet.Edit;
            VK_F8: if DM.DSBoleto.DataSet.State in [dsInsert, dsEdit] then
                   begin
                      DM.DSBoleto.DataSet.Post;
                      ShowMessage('Gravado.');
                   end;
            VK_F9: DM.DSBoleto.DataSet.Cancel;
      end;
   end;
end;

procedure TfrmCadban.pgCadPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
  inherited;
  if DM.QBancos.IsEmpty then
     AllowChange := False
end;

procedure TfrmCadban.TabAgenciaShow(Sender: TObject);
begin
   panel2.Caption :=  DM.QBancosnomebanco.AsString;
end;

procedure TfrmCadban.TabContaShow(Sender: TObject);
begin
   panel2.Caption :=  DM.QBancosnomebanco.AsString + ' Ag: ' + DM.QAgenciasagencia.AsString;
end;

procedure TfrmCadban.TabPesqShow(Sender: TObject);
begin
   panel2.Caption :=  C_ST_VAZIO;
end;

procedure TfrmCadban.testarClick(Sender: TObject);
var
   lista:TStringList;
   atipo: integer;
begin
   lista := TStringList.Create;
   Lista.Text := 'TESTE';

   if (DM.QBoletomail_tls.AsString = 'N')and (DM.QBoletomail_ssl.AsString = 'N') then
      atipo := 1
   else
   if DM.QBoletomail_tls.AsString = 'S' then
      atipo := 3
   else
   if DM.QBoletomail_ssl.AsString = 'S' then
      atipo := 2;

   if DM.Envia_Mail(DM.QBoletomail_from.AsString,
                    DM.QBoletomail_user.AsString,
                    DM.QBoletomail_password.AsString,
                    '',
                    DM.QBoletomail_host.AsString,
                    '',
                    'Cobrança Paradigma T.I.',
                    DM.QBoletomail_port.AsString,
                    Lista.Text,
                    'sac@paradigmati.com.br',
                    'TESTE',
                    '',
                    aTipo) then
   ShowMessage('E-mail enviado.');
   {$IFDEF GER}
   DM.Status(False, '', '');
{$endif}

end;

end.
