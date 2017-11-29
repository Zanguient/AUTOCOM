unit Uchq_dep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxCustomData,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize, cxDBData,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer,
  cxEdit, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  cxStyles, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxProgressBar;

type
  Tfrmchq_dep = class(Tfrm)
    cmbbanco: TcxImageComboBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cmbConta: TcxImageComboBox;
    cxLabel10: TcxLabel;
    cmbAg: TcxImageComboBox;
    cxButton1: TcxButton;
    Bar1: TcxProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure cmbbancoClick(Sender: TObject);
    procedure cmbAgClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure AtuCmbBanco;
    procedure AtuCmbAg;
    procedure AtuCmbConta;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmchq_dep: Tfrmchq_dep;

implementation

{$R *.dfm}

uses uDM, uLanca_chq_terc;

procedure Tfrmchq_dep.AtuCmbBanco;
begin
   cmbbanco.Properties.Items.Clear;
   cmbAg.Properties.Items.Clear;
   cmbConta.Properties.Items.Clear;

   while not DM.QBancos.Eof do
   begin
      with cmbbanco.Properties.Items.Add do
      begin
         Description := DM.QBancosnomebanco.AsString;
         Value       := DM.QBancosid.Value;
      end;
      DM.QBancos.Next;
   end;
end;

procedure Tfrmchq_dep.AtuCmbAg;
begin
   cmbAg.Properties.Items.Clear;
   cmbConta.Properties.Items.Clear;
   DM.QBancos.Locate('id', cmbbanco.Properties.Items[cmbbanco.ItemIndex].Value);

   while not DM.QAgencias.Eof do
   begin
      with cmbAg.Properties.Items.Add do
      begin
         Description := DM.QAgenciasnome.AsString;
         Value       := DM.QAgenciasid.Value;
      end;
      DM.QAgencias.Next;
   end;
end;

procedure Tfrmchq_dep.AtuCmbConta;
begin
   cmbConta.Properties.Items.Clear;
   DM.QAgencias.Locate('id', cmbAg.Properties.Items[cmbAg.ItemIndex].Value);

   while not DM.QContas.Eof do
   begin
      with cmbConta.Properties.Items.Add do
      begin
         Description := DM.QContasconta.AsString + '-' + DM.QContasdig.AsString;
         Value       := DM.QContasid.Value;
      end;
      DM.QContas.Next;
   end;
end;


procedure Tfrmchq_dep.cmbAgClick(Sender: TObject);
begin
   AtuCmbConta;
end;

procedure Tfrmchq_dep.cmbbancoClick(Sender: TObject);
begin
   AtuCmbAg;
end;

procedure Tfrmchq_dep.cxButton1Click(Sender: TObject);
var
  i, j, ARowIndex: integer;
  s: string;
  ARowInfo: TcxRowInfo;
begin
   if cmbConta.ItemIndex = -1 then
      raise Exception.Create('Informe a conta.');

   DM.Qfinan_ch_terc.DisableControls;

   Bar1.Properties.Max := frmLanca_chq_terc.tbv1.DataController.GetSelectedCount;

   with frmLanca_chq_terc.tbv1.DataController do
   begin
      for i := 0 to Pred(frmLanca_chq_terc.tbv1.DataController.GetSelectedCount) do
      begin
         ARowIndex := GetSelectedRowIndex(i); // retorna o índice da linha selecionada
         ARowInfo  := GetRowInfo(ARowIndex); // retorna informação da linha selecionada
         j         := (Values[ARowInfo.RecordIndex, frmLanca_chq_terc.tbv1id.index]);
         bar1.Position := i+1;
         Application.ProcessMessages;
         DM.Qfinan_ch_terc.Locate('id',j,[]);

         DM.Qfinan_ch_terc.Edit;
         DM.Qfinan_ch_tercdt_baixa.Value    := frmLanca_chq_terc.dtBx.Date;
         DM.Qfinan_ch_tercstatus.Value      := 'D';
         DM.Qfinan_ch_tercalinea.AsString   := 'Depositado na conta ' + cmbConta.Properties.Items[cmbConta.ItemIndex].Description;
         DM.Qfinan_ch_tercconta_depos.Value := cmbConta.Properties.Items[cmbConta.ItemIndex].Value;
         DM.Qfinan_ch_terc.Post;
         //gera o crédito na conta
         DM.Inserir_Movi_Banco(DM.Qfinan_ch_tercid.Value,
                               cmbConta.Properties.Items[cmbConta.ItemIndex].Value,
                               'CHQ',
                               'C',
                               DM.Qfinan_ch_tercvalor.Value,
                               frmLanca_chq_terc.dtBx.Date,
                               'CHQ-' + DM.Qfinan_ch_tercnmro.AsString + '/' + DM.Qfinan_ch_tercconta.AsString,
                               DM.Qfinan_ch_tercnome_dono.AsString + ', Port.: ' +
                               DM.Qfinan_ch_tercnome_portador.AsString

         );
      end;
   end;

   DM.Qfinan_ch_terc.EnableControls;
   btnSair.Click;
end;

procedure Tfrmchq_dep.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QBancos.Open('select * from finan_banco_banco WHERE usa="S" order by nomebanco');
   DM.QAgencias.Open;
   DM.QContas.Open;
   AtuCmbBanco;
end;

end.
