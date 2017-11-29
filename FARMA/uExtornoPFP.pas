unit uExtornoPFP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxPCdxBarPopupMenu, cxPC, cxLabel, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmExtorno = class(Tfrm)
    T1: TfDMemTable;
    DS1: TDataSource;
    T1coo: TIntegerField;
    T1data: TDateField;
    T1hora: TStringField;
    T1nome: TStringField;
    T1cpf: TStringField;
    T1cod_autoriz: TStringField;
    T1dt_extorno: TDateField;
    T1local: TStringField;
    T1cv: TMemoField;
    btnVia: TcxButton;
    Panel1: TPanel;
    Label1: TLabel;
    EdSenha: TcxTextEdit;
    edVend: TcxTextEdit;
    Label2: TLabel;
    btnExtorno: TcxButton;
    pg1: TcxPageControl;
    Tab1: TcxTabSheet;
    Tab2: TcxTabSheet;
    T2: TfDMemTable;
    DS2: TDataSource;
    T2cod_gtin: TStringField;
    T2nome: TStringField;
    T2qtd: TCurrencyField;
    Panel2: TPanel;
    edcod: TcxTextEdit;
    cxLabel1: TcxLabel;
    T1venda: TIntegerField;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    lv: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1cod_gtin: TcxGridDBColumn;
    cxGridDBTableView1nome: TcxGridDBColumn;
    cxGridDBTableView1qtd: TcxGridDBColumn;
    tbvcoo: TcxGridDBColumn;
    tbvdata: TcxGridDBColumn;
    tbvhora: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvcpf: TcxGridDBColumn;
    tbvcod_autoriz: TcxGridDBColumn;
    tbvdt_extorno: TcxGridDBColumn;
    tbvlocal: TcxGridDBColumn;
    tbvvenda: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnViaClick(Sender: TObject);
    procedure btnExtornoClick(Sender: TObject);
    procedure Tab2Show(Sender: TObject);
    procedure T2AfterPost(DataSet: TDataSet);
    procedure tbvCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    function Extorno(var Lista: TStringList): boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExtorno: TfrmExtorno;

implementation

{$R *.dfm}

uses uDM, udm_ini, uDM_PDV, uFuncoes, uFarmaPop2, updv;

procedure TfrmExtorno.btnViaClick(Sender: TObject);
var
   Lista: TStringList;
begin
   if Trim(T1cv.AsString) <> EmptyStr then
   begin
      if T1dt_extorno.Value >0 then
         raise Exception.Create('Esta venda já foi extornada.');

      Lista := TStringList.Create;
      Lista.Text := T1cv.AsString;

      try
        //frmPDV.ECF1.FechaRelatorio;
        frmPDV.ECF.RelatorioGerencial(Lista, 2, DM_PDV.Indice_RG('convenio'));
      Except
         on E: Exception do
         begin
            showmessage(E.Message);
         end;
      End;
   end
   ELSE
   ShowMessage('Não há espelho do CV para imprimir.');
end;

procedure TfrmExtorno.btnExtornoClick(Sender: TObject);
var
  Lista, CV: TStringList;
begin
   if T1dt_extorno.Value >0 then
      raise Exception.Create('Esta venda já foi extornada.');

   if (Trim(edVend.Text)='')or(Trim(EdSenha.Text) = '') then
      raise Exception.Create('Informe corretamente Vendedor e Senha.');

   if (pg1.ActivePage = Tab2)and(Trim(edcod.text) = '') then
      raise Exception.Create('Informe o código de autorização.');

   if (pg1.ActivePage = Tab2) then
   begin
      T2.First;
      while not T2.Eof do
      begin
         if (T2cod_gtin.Value = '') or(T2qtd.Value <=0) then
            raise Exception.Create('Informe corretamente os medicamentos.');
         T2.Next;
      end;
   end;

   DM_PDV.TEmpresa.Open;

   Lista := TStringList.Create;

   if Extorno(lista) then
   begin
      CV := TStringList.Create;
      CV.Add('ESTORNO VENDA FARMACIA POPULAR');
      CV.Add('cod aut.: ' + edcod.Text);

      if pg1.ActivePage = Tab1 then
         CV.Add('CPF Benef.: ' + T1cpf.AsString);

      CV.Add('');
      CV.Add('--------------------------------------');
      CV.Add('CÓD. MEDICAMENTO         QTD ESTORNADA');
      CV.Add(Lista.Text);
      CV.Add('--------------------------------------');

      if tag = 0 then
      begin
         frmPDV.ECF.RelatorioGerencial(Lista, 2, DM_PDV.Indice_RG('convenio'));
         CV.Free;
      end;

      if pg1.ActivePage = Tab1 then
      begin
         if T1local.AsString = 'R' then
         begin
            DM.DB.ExecSQL('update pfp set dt_extorno=curdate() where cod_autoriz=' + Texto_Mysql(T1cod_autoriz.AsString));
         end
         else
         if T1local.AsString = 'L' then
         begin
            DM_PDV.DB.ExecSQL('update pfp set dt_extorno=date() where cod_autoriz=' + Texto_Mysql(T1cod_autoriz.AsString));
         end;
     end;

      btnExtorno.Enabled  := False;
      btnvia.Enabled      := False;
      DM_PDV.pfpExtornado := true;
      ShowMessage('Estorno concluído com exito!');
      btnSair.Click;
   end
   else
   Lista.Free;
end;

function TfrmExtorno.Extorno(var Lista: TStringList):boolean;
begin
  // result       := false;
   frmFarmaPop2 := TfrmFarmaPop2.Create(self);
   frmFarmaPop2.G1.Hide;
   frmFarmaPop2.edVend.Text  := edVend.Text;
   frmFarmaPop2.EdSenha.Text := EdSenha.Text;
   frmFarmaPop2.Show;
   frmFarmaPop2.PFPUsuario;//configura o usuario PFP

   frmFarmaPop2.PFPAbreEstorno(T2.RecordCount);
   T2.First;

   while not T2.Eof do
   begin
      frmFarmaPop2.PFPEstornoItens(Trim(T2cod_gtin.AsString), T2qtd.AsFloat);
      T2.Next;
   end;


   DM_PDV.TEmpresa.Open;

   result := frmFarmaPop2.PFPEstorno(Lista, edcod.Text, DM_PDV.TEmpresacnpj.AsString);

   frmFarmaPop2.Close;

   if not result then
      exit;
end;

procedure TfrmExtorno.FormCreate(Sender: TObject);
begin
   inherited;
   T1.DisableControls;

   if DM.Conectar then
   begin
      DM.Q1.Open('select v.id, v.coo, v.data, v.hora, p.nome, p.cpf_cli,' +
                 'p.cod_autoriz, p.dt_extorno, v.cv from venda v, pfp p where ' +
                 'p.venda=v.id order by v.id desc');

      while not DM.Q1.Eof do
      begin
         T1.Append;
         T1coo.Value            := DM.Q1.FieldByName('coo').AsInteger;
         T1data.Value           := DM.Q1.FieldByName('data').AsDateTime;
         T1hora.AsString        := DM.Q1.FieldByName('hora').AsString;
         T1nome.AsString        := DM.Q1.FieldByName('nome').AsString;
         T1cpf.AsString         := DM.Q1.FieldByName('cpf_cli').AsString;
         T1cod_autoriz.AsString := DM.Q1.FieldByName('cod_autoriz').AsString;
         T1local.AsString       := 'R';
         T1cv.AsString          := DM.Q1.FieldByName('cv').AsString;
         T1venda.Value          := DM.Q1.FieldByName('id').AsInteger;

         if DM.Q1.FieldByName('dt_extorno').AsDateTime>0 then
            T1dt_extorno.Value := DM.Q1.FieldByName('dt_extorno').AsDateTime;

         T1.Post;
         DM.Q1.Next;
      end;
   end;

   DM_PDV.Q1.Open('select v.id, v.coo, v.data, v.hora, p.nome, p.cpf_cli,' +
                  'p.cod_autoriz, p.dt_extorno, v.cv from venda v, pfp p where ' +
                  'p.venda=v.id order by v.id desc');

   while not DM_PDV.Q1.Eof do
   begin
      T1.Append;
      T1coo.Value            := DM_PDV.Q1.FieldByName('coo').AsInteger;
      T1data.Value           := DM_PDV.Q1.FieldByName('data').AsDateTime;
      T1hora.AsString        := DM_PDV.Q1.FieldByName('hora').AsString;
      T1nome.AsString        := DM_PDV.Q1.FieldByName('nome').AsString;
      T1cpf.AsString         := DM_PDV.Q1.FieldByName('cpf_cli').AsString;
      T1cod_autoriz.AsString := DM_PDV.Q1.FieldByName('cod_autoriz').AsString;
      T1local.AsString       := 'L';
      T1cv.AsString          := DM_PDV.Q1.FieldByName('cv').AsString;
      T1venda.Value          := DM_PDV.Q1.FieldByName('id').AsInteger;

      if DM_PDV.Q1.FieldByName('dt_extorno').AsDateTime>0 then
         T1dt_extorno.Value := DM_PDV.Q1.FieldByName('dt_extorno').AsDateTime;

      T1.Post;
      DM_PDV.Q1.Next;
   end;

   T1.First;
   T1.EnableControls;
end;

procedure TfrmExtorno.T2AfterPost(DataSet: TDataSet);
begin
   btnExtorno.Enabled := T2.RecordCount > 0;
end;

procedure TfrmExtorno.Tab2Show(Sender: TObject);
begin
 //  while not T2.IsEmpty do
 //  T2.Delete;

 //  edcod.Clear;
end;

procedure TfrmExtorno.tbvCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   while not T2.IsEmpty do
   T2.Delete;

   if not T1.IsEmpty then
   begin
      edcod.Text := T1cod_autoriz.AsString;

      if T1local.Value = 'R' then
      begin
         DM.Q1.Open('select vi.cProd, cEAN, vi.xProd, vi.qCom*e.medic_qtcaixa as qtd from ' +
                    'estoque e, venda_item vi where vi.cProd=e.id and vi.venda=' + Texto_Mysql(T1venda.Value));
         while not DM.Q1.Eof do
         begin
            T2.Append;
            T2cod_gtin.AsString := DM.Q1.FieldByName('cEAN').AsString;
            T2nome.AsString     := DM.Q1.FieldByName('xProd').AsString;
            T2qtd.AsCurrency    := DM.Q1.FieldByName('qtd').AsCurrency;
            T2.Post;
            DM.Q1.Next;
         end;
      end
      else
      if T1local.Value = 'L' then
      begin
         DM_PDV.Q1.Open('select vi.cProd, cEAN, vi.xProd, vi.qCom*e.medic_qtcaixa as qtd from ' +
                        'estoque e, venda_item vi where vi.cProd=e.id and vi.venda=' + Texto_Mysql(T1venda.Value));
         while not DM_PDV.Q1.Eof do
         begin
            T2.Append;
            T2cod_gtin.AsString := DM_PDV.Q1.FieldByName('cEAN').AsString;
            T2nome.AsString     := DM_PDV.Q1.FieldByName('xProd').AsString;
            T2qtd.AsCurrency    := DM_PDV.Q1.FieldByName('qtd').AsCurrency;
            T2.Post;
            DM_PDV.Q1.Next;
         end;
      end;

      btnVia.Enabled     := True;
      btnExtorno.Enabled := true;
      edVend.Enabled     := True;
      EdSenha.Enabled    := True;
   end;
end;

end.
