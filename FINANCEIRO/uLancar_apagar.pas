unit uLancar_apagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls, cxCheckBox,
  cxDBEdit, cxGroupBox, cxDropDownEdit, cxImageComboBox, cxCurrencyEdit,
  cxDBLabel, cxMemo, cxMaskEdit, cxCalendar;

type
  TfrmLancar_apagar = class(TfrmCad)
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label5: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label6: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label9: TLabel;
    Label14: TLabel;
    cxDBMemo1: TcxDBMemo;
    cxDBSpinEdit1: TcxDBLabel;
    cxButton1: TcxButton;
    cxDBCalcEdit1: TcxDBCurrencyEdit;
    cxDBTextEdit1: TcxDBImageComboBox;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancar_apagar: TfrmLancar_apagar;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, udm_ini, uFuncoes, uCadPlanoContas, uAssoc,
  uListaEmitentes, uMain;

procedure TfrmLancar_apagar.cxButton1Click(Sender: TObject);
begin
   if ds1.DataSet.State in [dsInsert, dsEdit] then
   begin
      frmListaEmit     := TfrmListaEmit.Create(Self);
      frmListaEmit.tag := Trunc(frmMain.h_proporc);
      frmListaEmit.ShowModal;

      if (MessageBox(0, 'Associar este favorecido?', C_237, MB_ICONQUESTION or MB_YESNO) = idNo) then
      begin
         exit;
      end;

      DM.QFinan_apagarfavorec_cod.Value     := DM.QvwDest_nfid.Value;
      DM.QFinan_apagarfavorec_nome.AsString := DM.QvwDest_nfrazaosocial.AsString;
      DM.QFinan_apagarfavorec_doc.AsString  := DM.QvwDest_nfcnpj.AsString;
   end;
end;

procedure TfrmLancar_apagar.cxButton2Click(Sender: TObject);
begin
   if ds1.DataSet.State in [dsInsert, dsEdit] then
   begin
      ShowMessage('Você deverá informar o plano de conta que será associado a esta operação.');
      DM.g_str_coringa  := '';
      frmCadPlanoContas := TfrmCadPlanoContas.Create(Self);
      frmCadPlanoContas.btnAss.Tag := 100;//habilita o botão associar
      frmCadPlanoContas.ShowModal;
      DM.QFinan_apagarcc.AsString := DM.g_str_coringa;
   end;
end;

procedure TfrmLancar_apagar.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'AUTOCOM GERENCIAL LANÇAMENTO DE CONTAS A PAGAR' + C_117;
   DM.QFinan_apagar.Open('select * from finan_apagar order by id desc limit 1');
   TabPesq.TabVisible := False;
end;

end.
