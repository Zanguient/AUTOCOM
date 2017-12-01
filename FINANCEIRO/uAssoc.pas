unit uAssoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer,
  cxEdit, cxTextEdit, dxSkinsCore, dxSkinCaramel;

type
  TfrmAssoc = class(Tfrm)
    btnAss: TcxButton;
    Label1: TLabel;
    edDescr: TcxTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnAssClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Operacao: string;
  end;

var
  frmAssoc: TfrmAssoc;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, uDM_Conn;

procedure TfrmAssoc.btnAssClick(Sender: TObject);
begin
   if Trim(edDescr.Text) = C_ST_VAZIO then
      raise Exception.Create('Informe uma descrição.');

   DM.ExecSQL('replace into finan_centro_custo_assoc set codigo=' + Texto_Mysql(DM.g_str_coringa) +
              ',operacao='  + Texto_Mysql(Operacao) +
              ',descricao=' + Texto_Mysql(edDescr.Text)
   );

   ShowMessage('Operação concluída.');
   close;
end;

procedure TfrmAssoc.FormCreate(Sender: TObject);
begin
  inherited;
  CAPTION := 'AUTOCOM GERENCIAL ASSOC. C.CUSTO' + C_117;
end;

procedure TfrmAssoc.FormShow(Sender: TObject);
begin
  inherited;
   CAPTION := 'Associar Plano de contas ' + C_117;
   label1.Caption := Label1.Caption + Operacao;

   DMConn.Q1.Open('select * from finan_centro_custo_assoc where operacao=' + Texto_Mysql(Operacao));

   if DMConn.Q1.IsEmpty then
      Label3.Caption := 'Associação atual: Nenhum'
   else
      Label3.Caption := 'Associação atual: ' + DMConn.Q1.FieldByName('codigo').AsString;
end;

end.
