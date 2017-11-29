unit uEnvioBol;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxContainer, cxProgressBar, cxNavigator,FireDAC.Comp.Client,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet;

type
  TfrmEnvioBol = class(Tfrm)
    DS1: TDataSource;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    tbvnome: TcxGridDBColumn;
    tbvemail: TcxGridDBColumn;
    tbvenviar: TcxGridDBColumn;
    btnEnviar: TcxButton;
    Bar1: TcxProgressBar;
    cd1: TFDMemTable;
    cd1id: TIntegerField;
    cd1nome: TStringField;
    cd1email: TStringField;
    cd1enviar: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure cd1BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    path_bol: string;
  end;

var
  frmEnvioBol: TfrmEnvioBol;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes;

procedure TfrmEnvioBol.btnEnviarClick(Sender: TObject);
var
   b: boolean;
begin
   repeat
        b :=  NaNet;
        if not b then
        if (MessageBox(0, 'Este terminal não consegue se conectar a internet.'+#13+#10+'Deseja Retentar? (corrija o problema antes de confirmar).', 'ATENÇÃO', MB_ICONQUESTION or MB_YESNO) = idNo) then
           raise Exception.Create('Não foi possível enviar o e-mail.');
   until b;

   if cd1.State in [dsEdit, dsInsert] then
      cd1.Post;

   cd1.DisableControls;
   cd1.First;
   Bar1.Position := 0;
   bar1.Properties.Max := cd1.RecordCount;
   bar1.Show;

   while not cd1.Eof do
   begin
      bar1.Position := cd1.RecNo;
      Application.ProcessMessages;

      if cd1enviar.Value then
         DM.Enviar_Boleto(cd1id.Value, cd1email.AsString, path_bol);

      cd1.Next;
   end;

   cd1.EnableControls;
   bar1.Hide;
   ShowMessage('Processo concluído.');
end;

procedure TfrmEnvioBol.cd1BeforePost(DataSet: TDataSet);
begin
   cd1email.AsString := AnsiLowerCase(cd1email.AsString);
end;

procedure TfrmEnvioBol.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'ENVIO DE BOLETOS POR E-MAIL ' + C_117;
end;

end.
