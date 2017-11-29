unit uManut;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm, cxGraphics, cxLookAndFeels, DB,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  Easysize, ACBrBase, ACBrEnterTab, RxPlacemnt, Vcl.FileCtrl;

type
  TfrmManu = class(Tfrm)
    DirList: TDirectoryListBox;
    Panel2: TPanel;
    ListArq: TListBox;
    Memo1: TMemo;
    btnPesquisar: TcxButton;
    procedure btnEscClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DirListMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmManu: TfrmManu;

implementation

{$R *.dfm}

uses uAutocomConsts, udmnfe, uFuncoes, uDM;

procedure TfrmManu.btnEscClick(Sender: TObject);
begin
   close;
end;

procedure TfrmManu.btnPesquisarClick(Sender: TObject);
var
   path, s, s1: string;
   i, j: integer;
   lista: TStrings;
begin
   path  := DirList.Directory + '\';
   lista := GetFileListFiltro(path, '*.xml');
   ListArq.Items := Lista;
   Memo1.Lines.Clear;

   for i := 0 to lista.Count - 1 do
   BEGIN
      s  := path + lista[i];
      s1 := path + 'INCONSISTENTES';

      memo1.Lines.Append('Carregando '  + lista[i]);
      DM_NFE.NFe1.NotasFiscais.Clear;
      DM_NFE.NFe1.NotasFiscais.LoadFromFile(s);

      memo1.Lines.Append('Verificando existência da NF ' + Inttostr(DM_NFE.NFe1.NotasFiscais.Items[0].NFe.Ide.nNF) + ' na base de dados...');
      DM.QEmpresa.Open('select * from empresa limit 1');

      DM.QNF.Open('select * from nf where Ide_nNF=' + Texto_Mysql(DM_NFE.NFe1.NotasFiscais.Items[0].NFe.Ide.nNF) +
                 ' and Ide_serie=' + Texto_Mysql(DM_NFE.NFe1.NotasFiscais.Items[0].NFe.Ide.serie)
      );

      if Number(DM_NFE.NFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF) <> number(DM.QEmpresacnpj.AsString) then
      begin
         memo1.Lines.Append('CNPJ do emitente (' +
                            DM_NFE.NFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF +
                            ') no Arquivo XML difere do registrado no sistema (' +
                            DM.QEmpresacnpj.AsString +
                            ').'
         );

         memo1.Lines.Append('Movendo XML para a pasta ' + s1 + '...');
         System.SysUtils.ForceDirectories(s1);
         CopyFile(PwideChar(s), PwideChar(s1 + '\' + AnsiLowerCase(lista[i])), False);
         DeleteFile(s);
         memo1.Lines.Append('XML removido.');
         memo1.Lines.Append('');
         Continue;
      end;

      if not DM.QNF.IsEmpty then
      begin
         memo1.Lines.Append('NF "' + Inttostr(DM_NFE.NFe1.NotasFiscais.Items[0].NFe.Ide.nNF) + '" já cadastrada na base de dados.');
         memo1.Lines.Append('');
         Continue;
      end;

      memo1.Lines.Append('Verificando protocolo... ');

      if DM_NFE.NFe1.NotasFiscais.Items[0].NFe.procNFe.nProt = C_ST_VAZIO then
      begin
         memo1.Lines.Append('XML sem protocolo. Iniciando consulta... ');
      end
      else
      memo1.Lines.Append('Protocolo: ' + DM_NFE.NFe1.NotasFiscais.Items[0].NFe.procNFe.nProt);
      if not DM.QNF.IsEmpty then
      begin
         memo1.Lines.Append('NF encontrada. Verificando Tabela Chave...');

         if DM.QNF_Chavechave.AsString = C_ST_VAZIO then
         begin
            memo1.Lines.Append('Chave não encontrada. providenciando cadastramento dos dados...');
            DM.QNF_Chave.Insert;
            DM.QNF_Chavenf.Value           := DM.QNFid.Value;
            DM.QNF_Chavechave.AsString     := DM_NFE.NFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
            DM.QNF_Chaveprotocolo.AsString := DM_NFE.NFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
            DM.QNF_Chavecstat.Value        := 0;

            case DM_NFE.NFe1.NotasFiscais.Items[0].NFe.procNFe.cStat of
               100: DM.QNF_Chavestatus.AsString := 'AUTORIZADA';//ativa
               101: begin
                       DM.QNF_Chavestatus.AsString := 'CANCELADA';//cancelada
                       DM.QNF_Chavecstat.Value     := 2;
                    end;
               110, 205,301,302: begin
                                    DM.QNF_Chavestatus.AsString := 'DENEGADA';
                                    DM.QNF_Chavecstat.Value     := 4;

                                    for j := 0 to DM.QNF.FieldCount - 1 do
                                    begin
                                      case DM.QNF.Fields[i].DataType of
                                         ftCurrency: DM.QNF.FieldByName(DM.QNF.Fields[j].FieldName).Value := 0;
                                         ftFloat:    DM.QNF.FieldByName(DM.QNF.Fields[j].FieldName).Value := 0;
                                      end;
                                    end;

               end;
            end;

            //o recibo ficará em branco
            DM.QNF_Chave.Post;

            DM.QNF.Edit;
            DM.QNFstatus.Value := DM.QNF_Chavecstat.Value;
            DM.QNF.Post;
            memo1.Lines.Append('Chave cadastrada...');
         end
         else
         memo1.Lines.Append('Chave cadastrada...');
      end
      else
      begin
         memo1.Lines.Append('NF não cadastrada. Providenciando cadastramento dos dados...');
         DM_NFE.XmlToBD;
{$IFDEF GER}
         S1 := Aqui('NFE\GERADAS\XML\OUTROS', AnsiLowerCase(lista[i]));
         CopyFile(PwideChar(s), PwideChar(s1), False);
         DeleteFile(s);
{$ENDIF}
         memo1.Lines.Append('NF Cadastrada.');
      end;

      memo1.Lines.Append('');
      memo1.Lines.Append('');
   END;
end;

procedure TfrmManu.DirListMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
   path: string;
begin
   path  := DirList.Directory + '\';
   ListArq.Items := GetFileListFiltro(path, '*.xml');
   Memo1.Lines.Clear;
end;

procedure TfrmManu.FormCreate(Sender: TObject);
begin
   inherited;
{$IFDEF GER}
   DM_NFE := TDM_NFE.Create(self);
{$ENDIF}
end;

procedure TfrmManu.FormShow(Sender: TObject);
begin
{$IFDEF GER}
   DirList.Drive := DirProgramFiles[1];
   DirList.Directory := DirProgramFiles;
{$ELSE}
   DirList.Drive := DM_NFE.NFe1.Configuracoes.Arquivos.PathNFe[1];
   DirList.Directory := DM_NFE.NFe1.Configuracoes.Arquivos.PathNFe;
{$ENDIF}
end;


end.

