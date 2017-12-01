unit uBoletoLote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxStyles,
  cxInplaceContainer, cxVGrid, cxDBVGrid, cxDropDownEdit, cxCalendar, cxLabel,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxCustomData, cxFilter, cxData, cxDataStorage, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator,
  cxDBEdit, cxCalc, cxSpinEdit, cxProgressBar, cxCheckBox, cxGroupBox,
  cxRadioGroup, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinCaramel,
  dxSkinscxPCPainter;

type
  TfrmBolLote = class(Tfrm)
    Label11: TcxLabel;
    D1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    DS1: TDataSource;
    tbvNome: TcxGridDBColumn;
    Panel1: TPanel;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label5: TLabel;
    dbNav: TcxDBNavigator;
    DSCli: TDataSource;
    Panel2: TPanel;
    Bar1: TcxProgressBar;
    crFormato: TcxRadioGroup;
    cmbBoleto: TcxLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cbNotPrint: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBolLote: TfrmBolLote;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, uEnvioBol, uMD5Print, uDMAux;

procedure TfrmBolLote.cxButton1Click(Sender: TObject);
var
   y,m,d: word;
begin
   if cmbBoleto.Text = C_ST_VAZIO then
      raise Exception.Create('Informe o boleto a gerar.');

   if D1.Date < date then
      raise Exception.Create(C_236);

   DM.QFinan_Bol_Cli.DisableControls;
   DM.QFinan_Bol_Cli.First;
   DecodeDate(D1.Date,y,m,d);

   DMAux.BoletoReport1.MostrarPreview := False;
   DMAux.BoletoReport1.MostrarSetup   := False;

   Bar1.Properties.Max := DM.QFinan_Bol_Cli.RecordCount;
   Bar1.Position := 0;
   Bar1.Show;
   frmEnvioBol.cd1.Close;
   frmEnvioBol.cd1.Open;

   while not DM.QFinan_Bol_Cli.Eof do
   begin
      DM.QCli.Locate('id', DM.QFinan_Bol_Clicliente.Value, []);
      Bar1.Position := DM.QFinan_Bol_Cli.RecNo;
      Application.ProcessMessages;

      DM.Emitir_Boleto(EncodeDate(y,m, DM.QFinan_Bol_Clidia.Value),
                       D1.Date,
                       Date,
                       '',//nmro_doc aqui nao precisa
                       DM.QClirazaosocial.AsString + ' (' + DM.QClinome.AsString + ')',
                       DM.QClicnpj.AsString,
                       DM.QClilogradouro.AsString,
                       DM.QClinmro.AsString,
                       DM.QClibairro.AsString,
                       DM.QClicidade.AsString,
                       DM.QCliuf.AsString,
                       DM.QClicep.AsString,
                       DM.QFinan_Bol_Clivalor.Value,
                       0,
                       DM.QvwBoletopc_juros.Value,
                       0,
                       DM.QvwBoletopc_multa.Value,
                       DM.QFinan_Bol_Clilinha1.AsString,
                       DM.QFinan_Bol_Clilinha2.AsString,
                       '',
                       '',
                       '',
                       '',
                       Trim(DM.QCliemail.AsString),
                       (DM.QFinan_Bol_Cliimprimir.Value = 'S')and not(cbNotPrint.Checked),
                       crFormato.ItemIndex
      );
      //gera o debito para o cliente
      DM.Insert_Debito(tdBoleto,
                       DM.QCliid.Value,
                       DM.QFinan_bol_Emitid.Value,
                       DM.QFinan_bol_Emitnossonmro.AsString,
                       Date,
                       DM.QFinan_bol_Emitdt_vencimento.Value,
                       DM.QFinan_bol_Emitvalor.Value,
                       DM.QFinan_Bol_Clilinha1.AsString
      );
      //preenche a tabela de envio de email
      if DM.QCliemail.AsString <> C_ST_VAZIO then
      begin
         with frmEnvioBol do
         begin
            cd1.Append;
            cd1id.Value       := DM.QFinan_bol_Emitid.Value;
            cd1nome.Value     := DM.QClirazaosocial.Value;
            cd1email.AsString := DM.QCliemail.AsString;
            cd1enviar.Value   := True;
            cd1.Post;
         end;
      end;

      DM.QFinan_Bol_Cli.Next;
   end;

   DM.QFinan_Bol_Cli.EnableControls;
   Bar1.Hide;

   if not frmEnvioBol.cd1.IsEmpty then //exibe a tela de envio de email
      frmEnvioBol.ShowModal
   else
      ShowMessage(C_25);
end;

procedure TfrmBolLote.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin //grava as cfg da grid
   for i := 0 to ComponentCount - 1 do
   begin
       if (Components[i] is TcxGridDBTableView) then
          (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
   end;
   inherited;
end;

procedure TfrmBolLote.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'MÓDULO EMISSOR DE BOLETOS EM LOTE ' + C_117;
   DM.QCli.Open(C_SQL23 + 'nome');
   DM.QFinan_Bol_Cli.Open;
   DM.QvwBoleto.Open;
   frmEnvioBol := TfrmEnvioBol.Create(Self);
end;

procedure TfrmBolLote.FormShow(Sender: TObject);
var
   i: integer;
begin
  inherited;

  for i := 0 to ComponentCount - 1 do //ajusta a grid
  begin
      if (Components[i] is TcxGridDBTableView) then
      begin
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(Application.ExeName + TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd'));
      end;
  end;
end;

end.
