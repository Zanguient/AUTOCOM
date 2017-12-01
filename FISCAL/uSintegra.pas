unit uSintegra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize, Dateutils,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxCheckBox, cxGroupBox, dxSkinsCore, dxSkinCaramel;

type
  TfrmSintegra = class(Tfrm)
    btnGerar: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cb50: TcxCheckBox;
    cb60: TcxCheckBox;
    cb60i: TcxCheckBox;
    cb60r: TcxCheckBox;
    cb61: TcxCheckBox;
    cb74: TcxCheckBox;
    cbarq: TcxCheckBox;
    D1: TcxDateEdit;
    D2: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cmb1: TcxComboBox;
    procedure btnGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cb74Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSintegra: TfrmSintegra;

implementation

{$R *.dfm}

uses uDM_Sintegra, uFuncoes, uDM, uDM_Conn;

procedure TfrmSintegra.btnGerarClick(Sender: TObject);
var
   data: TDate;
   st: AnsiString;
begin
   D1.PostEditValue;
   D2.PostEditValue;
   Data := 0;

   if(D1.Date > D2.date)or(D1.Date <=0) then
      raise Exception.Create('Período incorreto.');

   if (cb74.Checked) and (cmb1.ItemIndex <0) then
      raise Exception.Create('Data do inventário incorreta.');

   if cb74.Checked then
      data := StrToDate(cmb1.Text);

   DM.QEmpresa.Open;
   Log('Sintegra','Verificando duplicados', '');
   dm.ExecSQL('CALL pr_paf_r02_dup();');
   Log('Sintegra','Verificação OK', '');

   DM_Sintegra.Cfg(D1.Date,
                   D2.Date,
                   data,
                   Aqui('Arquivos SINTEGRA', Number(DM.QEmpresacnpj.AsString) + '_' + FormatDateTime('yyymmdd', D2.Date)+ '.txt'),
                   cb50.Checked,
                   cb60.Checked,
                   cb60i.Checked,
                   cb60r.Checked,
                   cb74.Checked,
                   cb61.Checked,
                   cbarq.Checked
   );

   DM_Sintegra.GerarRegistro10('3','3','1');
   DM_Sintegra.GerarRegistro11;

   if cb50.Checked then
      DM_Sintegra.GerarRegistro50;

   if cb60.Checked then
   begin
      DM_Sintegra.GerarRegistro60;
      DM_Sintegra.GerarRegistro61;
   end;

   DM_Sintegra.GerarArquivo;

   if cbarq.Checked then
   begin
     st := 'Explorer "' + AnsiString(Aqui('Arquivos SINTEGRA','')) +'"';
     WinExec(PAnsiChar(st),SW_ShowNormal);
   end;

   btnSair.Click;
end;

procedure TfrmSintegra.cb74Click(Sender: TObject);
begin
   cmb1.Visible     := cb74.Checked;
   cxLabel2.Visible := cb74.Checked;
end;

procedure TfrmSintegra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   FreeAndNil(DM_Sintegra);
end;

procedure TfrmSintegra.FormCreate(Sender: TObject);
var
   y,m,d: word;
   data: TDate;
begin
   inherited;
   DecodeDate(Date,y,m,d);
   data := EncodeDate(y,m,1)-1;
   D2.Date := data;
   DecodeDate(Data,y,m,d);
   data := EncodeDate(y,m,1);
   D1.Date := data;
   DM_Sintegra := TDM_Sintegra.Create(self);

   DMConn.Q1.Open('select distinct(data) from balanco order by data desc');

   while not DMConn.Q1.Eof do
   begin
      cmb1.Properties.Items.Add(DateToStr(DMConn.Q1.Fields[0].AsDateTime));
      DMConn.Q1.Next;
   end;

   DMConn.Q1.Close;
end;

end.
