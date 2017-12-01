unit upfp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, ShellAPI,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxMaskEdit, cxTextEdit, cxCalendar, ACBrValidador,
  dxSkinsCore, dxSkinCaramel;

type
  Tfrmpfp = class(Tfrm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edData: TcxDateEdit;
    btnF3: TcxButton;
    btnDigi: TcxButton;
    eduf: TcxTextEdit;
    ednome: TcxTextEdit;
    edend: TcxTextEdit;
    edcpf: TcxMaskEdit;
    cmb1: TcxComboBox;
    Button1: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cmb1KeyPress(Sender: TObject; var Key: Char);
    procedure cmb1Enter(Sender: TObject);
    procedure ednomeEnter(Sender: TObject);
    procedure btnF3Click(Sender: TObject);
    procedure btnDigiClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpfp: Tfrmpfp;

implementation

{$R *.dfm}

uses uDM, uFuncoes, uDM_PDV, uScanner, uPesqCli, uDM_Conn;

procedure Tfrmpfp.btnDigiClick(Sender: TObject);
var
   s: string;
   b: boolean;
begin
   if not DM.Validar_Doc(AnsiString(Number(edcpf.Text)), '', docCPF) then
   begin
      edcpf.Clear;
      edcpf.SetFocus;
      raise Exception.Create('CPF incorreto.')
   end;

   if (edData.Date < 0)or(edData.Date > date) then
   begin
      edData.Clear;
      edData.SetFocus;
      raise Exception.Create('Data incorreta.');
   end;

   s := Number(edcpf.Text) + FormatDateTime('yyyymmdd', edData.Date);
   s := Aqui('PFP\RECEITAS\' + FormatDateTime('yyyymm', edData.Date), s + '.jpg');
   b := true;

   if FileExists(s) then
   if (MessageBox(0, 'Já existe uma receita digitalizada para este CPF/Data. Deseja visualizá-la?', 'Atenção', MB_ICONWARNING or MB_YESNO) = idYES) then
   begin
      Abrir_Arquivo(s);
      b := (MessageBox(0, 'Deseja substituir a receita existente por nova digitalização?', 'Atenção', MB_ICONWARNING or MB_YESNO) = idYES);
   end;

   if b then
   begin
      frmScanner := TfrmScanner.Create(self);
      frmScanner.sPath := s;
      frmScanner.ShowModal;
      FreeAndNil(frmScanner);

      if not FileExists(s) then
         ShowMessage('Imagem da receita não encontrada.');
   end;
end;

procedure Tfrmpfp.btnF3Click(Sender: TObject);
begin
   if not ValidaUF(eduf.Text) then
   begin
      eduf.Clear;
      eduf.SetFocus;
      raise Exception.Create('UF incorreta.');
   end;

   if not DM.Validar_Doc(AnsiString(Number(edcpf.Text)), '', docCPF) then
   begin
      edcpf.Clear;
      edcpf.SetFocus;
      raise Exception.Create('CPF incorreto.')
   end;

   if (edData.Date < 0)or(edData.Date > date) then
   begin
      edData.Clear;
      edData.SetFocus;
      raise Exception.Create('Data incorreta.');
   end;

   if (cmb1.Text = C_ST_VAZIO) then
   begin
      cmb1.Clear;
      cmb1.SetFocus;
      raise Exception.Create('CRM incorreta.');
   end;

   if (ednome.Text = C_ST_VAZIO) then
   begin
      ednome.Clear;
      ednome.SetFocus;
      raise Exception.Create('Informe o nome.');
   end;

   if (edend.Text = C_ST_VAZIO) then
   begin
      edend.Clear;
      edend.SetFocus;
      raise Exception.Create('Informe o endereço.');
   end;

   DM_PDV.TPFP.Open();
   DM_PDV.TPFP.Append;
   DM_PDV.TPFPdt_receita.Value := edData.Date;
   DM_PDV.TPFPcrm.AsString     := cmb1.Text;
   DM_PDV.TPFPuf_crm.AsString  := eduf.Text;
   DM_PDV.TPFPcpf_cli.AsString := number(edcpf.Text);
   DM_PDV.TPFPnome.AsString    := ednome.Text;
   DM_PDV.TPFPender.AsString   := edend.Text;
   DM_PDV.TPFP.Post;
   btnSair.Click;
end;

procedure Tfrmpfp.Button1Click(Sender: TObject);
begin
   frmPesqCli := TfrmPesqCli.Create(Self);
   frmPesqCli.ShowModal;

   if Assigned(frmPesqCli) then
      FreeAndNil(frmPesqCli);

   edcpf.Text  := Number(DM_PDV.TClicnpj.AsString);
   ednome.Text := DM_PDV.TClirazaosocial.AsString;
   edend.Text  := DM_PDV.TClilogradouro.AsString + ' ' +
                  DM_PDV.TClinmro.AsString + ' ' +
                  DM_PDV.TClicidade.AsString;
end;

procedure Tfrmpfp.cmb1Enter(Sender: TObject);
begin
   if not ValidaUF(eduf.Text) then
   begin
      eduf.Clear;
      eduf.SetFocus;
      raise Exception.Create('UF incorreta.');
   end;
end;

procedure Tfrmpfp.cmb1KeyPress(Sender: TObject; var Key: Char);
begin
   if CharInSet(key, ['.',',','-']) then
      key := #0;
end;

procedure Tfrmpfp.ednomeEnter(Sender: TObject);
begin
   if not DM.Validar_Doc(AnsiString(Number(edcpf.Text)), '', docCPF) then
   begin
      edcpf.Clear;
      edcpf.SetFocus;
      raise Exception.Create('CPF incorreto.')
   end;
end;

procedure Tfrmpfp.FormCreate(Sender: TObject);
begin
  inherited;
  DMConn.Q1.Open('select distinct(crm) from pfp order by crm');

  while not DMConn.Q1.Eof do
  begin
    cmb1.Properties.Items.Add(DMConn.Q1.Fields[0].AsString);
    DMConn.Q1.Next;
  end;
  DMConn.Q1.Close;
  DM_PDV.DB.ExecSQL('delete from pfp where hora_recdadosconf is null;');//apaga qqr registro existente
end;

end.
