unit uCadOperador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxDropDownEdit, cxDBEdit, cxMaskEdit,
  cxSpinEdit, cxDBLabel, cxCheckBox, dxSkinsCore, dxSkinsdxStatusBarPainter,
  dxSkinscxPCPainter, dxSkinCaramel, dxBarBuiltInMenu;

type
  TfrmCadOperador = class(TfrmCad)
    EDID: TcxDBLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    cmbCidade: TcxDBTextEdit;
    tbvid: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvnomered: TcxGridDBColumn;
    tbvtel: TcxGridDBColumn;
    btnPerm: TcxButton;
    DSSegur: TDataSource;
    grdSegur: TcxGrid;
    tbvSegur: TcxGridDBTableView;
    lvSegur: TcxGridLevel;
    tbvSegurcaption: TcxGridDBColumn;
    tbvSegurchave: TcxGridDBColumn;
    tbvSegurbotao: TcxGridDBColumn;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure cmbCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure TabPesqShow(Sender: TObject);
    procedure btnPermClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbNavButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
      var ADone: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DS1StateChange(Sender: TObject);
  private
    procedure Permissoes;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadOperador: TfrmCadOperador;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, uPesqCidade, uMain, uDM_Conn;

procedure TfrmCadOperador.cmbCidadeKeyPress(Sender: TObject; var Key: Char);
begin
   if DS1.Dataset.State in [dsInsert, dsEdit] then
   begin
      if key<> #13 then
      begin
         if not ValidaUF(DM.QOperadoruf.AsString) then
         begin
            exit;
         end;

         frmPesqCidade    := TfrmPesqCidade.Create(self);
         frmPesqCidade.UF := DM.QOperadoruf.AsString;

         if frmPesqCidade.ShowModal = mrOk then
         begin
            DM.QOperadorcidade.AsString := frmPesqCidade.cdCidadecidade.AsString;
         end;
      end;
   end;
end;

procedure TfrmCadOperador.btnPermClick(Sender: TObject);
begin
   Permissoes;
end;

procedure TfrmCadOperador.dbNavButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
    inherited;
 {  cxDBTextEdit3.Hide;

   if AButtonIndex in [6,9] then
   begin
      cxDBTextEdit1.SetFocus;
      cxDBTextEdit3.Show;
   end; }
end;

procedure TfrmCadOperador.DS1StateChange(Sender: TObject);
begin
   inherited;
   btnPerm.Enabled  := not (ds1.State in[dsInsert, dsEdit]);
   DM.QSegur.Active := btnPerm.Enabled;
end;

procedure TfrmCadOperador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if DM.QSegur.State = dsEdit then
      dm.QSegur.Post;
   inherited;
end;

procedure TfrmCadOperador.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   inherited;
   if DM.QSegur.UpdatesPending then
      DM.QSegur.ApplyUpdates;
end;

procedure TfrmCadOperador.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QOperador.Open(C_SQL60);
end;

procedure TfrmCadOperador.TabPesqShow(Sender: TObject);
begin
// inherited; -> nao exibe a msg na barra de status durante a pesquisa
end;

{rotina para gravar a tabela com as permissões de todos os usuarios}
procedure TfrmCadOperador.Permissoes;
var
   i, j, k: integer;
   s: string;
   amenu: TMenu;
begin
//deixa de fora os adm
//   DM.QOperador.DisableControls;
   DM.QSegur.DisableControls;
   //DM.QOperador.First;

  // while not DM.QOperador.Eof do
 //  begin
       DM.QSegur.Close;  //atualiza qsegur em função do operador
       DM.QSegur.Open;
       DMConn.Q1.Open('select * from segur where operador=' + Texto_Mysql(DM.QOperadorid.Value));
       amenu := frmMain.Menu1; //assume o menu1 do gerencial

       for i := 0 to amenu.Items.Count - 1 do //varre o menu e grava o registro, se nao achar
       begin
          if not DM.QSegur.Locate('menu',amenu.Items[i].Name,[])then
          begin
              DMConn.Q1.Insert;
              DMConn.Q1.FieldByName('operador').Value := DM.QOperadorid.Value;
              DMConn.Q1.FieldByName('menu').AsString  := amenu.Items[i].Name;
              s := amenu.Items[i].Caption;
              s := FindReplaceStr('&','', s);
              DMConn.Q1.FieldByName('caption').AsString := AnsiUpperCase(s);
              DMConn.Q1.FieldByName('chave').Value   := 'S';
              DMConn.Q1.FieldByName('botao').Value   := 0;
              DMConn.Q1.Post;
          end;

          if amenu.Items[i].Count > 0 then  //faz o mesmo com o sub menu se tiver
          for j := 0 to amenu.Items[i].Count - 1 do
          begin
             if not DM.QSegur.Locate('menu',amenu.Items[i].Items[j].Name,[])then
             begin
                 DMConn.Q1.Insert;
                 DMConn.Q1.FieldByName('operador').Value := DM.QOperadorid.Value;
                 DMConn.Q1.FieldByName('menu').AsString  := amenu.Items[i].Items[j].Name;
                 s := amenu.Items[i].Items[j].Caption;
                 s := FindReplaceStr('&','', s);
                 DMConn.Q1.FieldByName('caption').AsString := '    ' + s; //4 espaços
                 DMConn.Q1.FieldByName('chave').Value   := 'S';
                 DMConn.Q1.FieldByName('botao').Value   := 0;
                 DMConn.Q1.Post;
             end;

             if amenu.Items[i].Items[j].Count > 0 then //faz o mesmo para o 2º sub menu se houver
             for k := 0 to amenu.Items[i].Items[j].Count - 1 do
             if not DM.QSegur.Locate('menu',amenu.Items[i].Items[j].Items[k].Name,[])then
             begin
                 DMConn.Q1.Insert;
                 DMConn.Q1.FieldByName('operador').Value := DM.QOperadorid.Value;
                 DMConn.Q1.FieldByName('menu').AsString  := amenu.Items[i].Items[j].Items[k].Name;
                 s := amenu.Items[i].Items[j].Items[k].Caption;
                 s := FindReplaceStr('&','', s);
                 DMConn.Q1.FieldByName('caption').AsString := '        ' + s; //8 espaços
                 DMConn.Q1.FieldByName('chave').Value   := 'S';
                 DMConn.Q1.FieldByName('botao').Value   := 0;
                 DMConn.Q1.Post;
             end;
          end;
       end;
      // DM.QOperador.Next;
   //end;

  // DM.QOperador.First;
 //  DM.QOperador.EnableControls;
    DM.QSegur.Refresh;
   DM.QSegur.EnableControls;
end;

end.
