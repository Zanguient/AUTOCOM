unit uCadPlanoContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData,
  cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls,
  cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView, FireDAC.Comp.Client,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxNavigator, cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox;

type
  TfrmCadPlanoContas = class(TfrmCad)
    cmb1: TcxImageComboBox;
    Label1: TLabel;
    btnNew1: TcxButton;
    cmb2: TcxImageComboBox;
    btnNew2: TcxButton;
    cmb3: TcxImageComboBox;
    btnNew3: TcxButton;
    cmb4: TcxImageComboBox;
    btnNew4: TcxButton;
    cmb5: TcxImageComboBox;
    btnNew5: TcxButton;
    cmb6: TcxImageComboBox;
    btnAdd1: TcxButton;
    btnAdd2: TcxButton;
    btnAdd3: TcxButton;
    btnAdd4: TcxButton;
    btnAdd5: TcxButton;
    btnNew6: TcxButton;
    TabNovo: TcxTabSheet;
    lblcod: TLabel;
    edcod: TcxTextEdit;
    edconta: TcxTextEdit;
    Label2: TLabel;
    eddescr: TcxTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    edabrev: TcxTextEdit;
    btnInsert: TcxButton;
    lblDescr: TLabel;
    tbvid: TcxGridDBColumn;
    tbvplano: TcxGridDBColumn;
    tbvnivel: TcxGridDBColumn;
    tbvconta: TcxGridDBColumn;
    tbvdescricao: TcxGridDBColumn;
    tbvabrev: TcxGridDBColumn;
    btnAss: TcxButton;
    edtipo: TcxTextEdit;
    Label5: TLabel;
    cxButton1: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnAdd1Click(Sender: TObject);
    procedure btnAdd2Click(Sender: TObject);
    procedure btnAdd3Click(Sender: TObject);
    procedure btnAdd4Click(Sender: TObject);
    procedure btnAdd5Click(Sender: TObject);
    procedure cmb1Click(Sender: TObject);
    procedure btnNew2Click(Sender: TObject);
    procedure TabNovoShow(Sender: TObject);
    procedure btnNew1Click(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure tbvplanoHeaderClick(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
    procedure TabPesqHide(Sender: TObject);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure btnAssClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure Preencher(nivel: integer; cmb: TcxImageComboBox; filtro: string = '');
    procedure Desativar(nivel: integer);
  public
    { Public declarations }
  end;

var
  frmCadPlanoContas: TfrmCadPlanoContas;
  coluna : TcxGridDBColumn;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes;

procedure TfrmCadPlanoContas.btnAdd1Click(Sender: TObject);
begin
   Preencher(2, cmb2, cmb1.Properties.Items[cmb1.SelectedItem].Value);
end;

procedure TfrmCadPlanoContas.btnAdd2Click(Sender: TObject);
begin
   Preencher(3, cmb3, cmb2.Properties.Items[cmb2.SelectedItem].Value);
end;

procedure TfrmCadPlanoContas.btnAdd3Click(Sender: TObject);
begin
   Preencher(4, cmb4, cmb3.Properties.Items[cmb3.SelectedItem].Value);
end;

procedure TfrmCadPlanoContas.btnAdd4Click(Sender: TObject);
begin
   Preencher(5, cmb5, cmb4.Properties.Items[cmb4.SelectedItem].Value);
end;

procedure TfrmCadPlanoContas.btnAdd5Click(Sender: TObject);
begin
   Preencher(6, cmb6, cmb5.Properties.Items[cmb5.SelectedItem].Value);
end;

procedure TfrmCadPlanoContas.btnAssClick(Sender: TObject);
var
   i, j: integer;
begin
   j := 0;

   for i := 0 to ComponentCount -1 do
   if (Components[i] is TcxImageComboBox) then
   begin
      with (Components[i] as TcxImageComboBox) do
      begin
         if (enabled)and(tag > j) then
         begin
            DM.g_str_coringa := Properties.Items[SelectedItem].Value;
            j := tag;
         end;
      end;
   end;
   Close;
end;

procedure TfrmCadPlanoContas.btnInsertClick(Sender: TObject);
var
   s: string;
begin
   s := lblcod.Caption + Number(edcod.Text);

   DM.Q1.Open('select * from finan_centro_custo where plano=' + Texto_Mysql(s));

   if not DM.Q1.IsEmpty then
      raise Exception.Create('Este plano de contas já existe (' + s + ').');

   if Trim(edconta.Text) = C_ST_VAZIO then
      raise Exception.Create('Informe a conta.');

   if Trim(eddescr.Text) = C_ST_VAZIO then
      raise Exception.Create('Informe a descrição.');

   if Trim(edabrev.Text) = C_ST_VAZIO then
      raise Exception.Create('Informe a abreviação.');

   if (Trim(edtipo.Text) <> 'D')and(Trim(edtipo.Text) <> 'C') then
      raise Exception.Create('Informe o Tipo (D ou C).');


   DM.ExecSQL('insert into finan_centro_custo set plano=' + Texto_Mysql(s) +
              ',nivel=' + Texto_Mysql(lblDescr.tag) +
              ',conta=' + Texto_Mysql(Trim(edconta.Text)) +
              ',descricao=' + Texto_Mysql(Trim(eddescr.Text)) +
              ',abrev=' + Texto_Mysql(Trim(edabrev.Text)) +
              ',tipo=' +  Texto_Mysql(Trim(edtipo.Text))
   );

   ShowMessage('Processo concluído.');
end;

procedure TfrmCadPlanoContas.btnNew1Click(Sender: TObject);
var
   s: string;
   i: integer;
begin
   if TcxButton(Sender).tag = 1 then
      lblcod.Caption := C_ST_VAZIO
   else
   begin
      for i := 0 to ComponentCount -1 do
      if (Components[i] is TcxImageComboBox) then
      begin
         with (Components[i] as TcxImageComboBox) do
         begin
            if Tag = TcxButton(Sender).tag -1 then
            begin
               lblcod.Caption := Properties.Items[SelectedItem].Value + '.';
               DM.Q1.Open('select max(plano) from finan_centro_custo where nivel=' +
                                    Texto_Mysql(TcxButton(Sender).tag) +
                                    ' and plano like ' +
                                    Texto_Mysql(lblcod.Caption + '%')
               );
            end;
         end;
      end;
   end;

   s := Number(DM.Q1.Fields[0].AsString);

   if s = C_ST_VAZIO then
      s := '0';

   i := StrToInt(copy(s, length(s), 1));
   s := IntToStr(i+1);

   edcod.Text       := s;
   lblDescr.Tag     := TcxButton(Sender).tag;
   pgCad.ActivePage := TabNovo;
end;

procedure TfrmCadPlanoContas.btnNew2Click(Sender: TObject);
begin
   if cmb1.ItemIndex = -1 then
      raise Exception.Create('Selecione a conta pai.');
end;

procedure TfrmCadPlanoContas.cmb1Click(Sender: TObject);
begin
   Desativar(TcxImageComboBox(sender).Tag);
end;

procedure TfrmCadPlanoContas.cxButton1Click(Sender: TObject);
begin
   if not DM.Qfinan_centro_custo.IsEmpty then
      DM.Qfinan_centro_custo.Delete;
end;

procedure TfrmCadPlanoContas.Desativar(nivel: integer);
var
   i: integer;
begin
   for i := 0 to ComponentCount -1 do
   if (Components[i] is TcxImageComboBox) then
   begin
      with (Components[i] as TcxImageComboBox) do
      begin
         if Tag > nivel then
         begin
            Properties.Items.clear;
            Enabled := False;
         end;
      end;
   end;

  btnAdd1.Enabled := cmb1.Enabled;
  btnAdd2.Enabled := cmb2.Enabled;
  btnAdd3.Enabled := cmb3.Enabled;
  btnAdd4.Enabled := cmb4.Enabled;
  btnAdd5.Enabled := cmb5.Enabled;

  btnNew2.Enabled := cmb1.Enabled;
  btnNew3.Enabled := cmb2.Enabled;
  btnNew4.Enabled := cmb3.Enabled;
  btnNew5.Enabled := cmb4.Enabled;
  btnNew6.Enabled := cmb5.Enabled;
end;

procedure TfrmCadPlanoContas.edPesqPropertiesChange(Sender: TObject);
VAR
   s: string;
begin
   if Trim(edPesq.Text) = C_ST_VAZIO then
      DS1.DataSet.Close
   else
   if Length(trim(edPesq.Text))=1 then
   begin
      if trim(edPesq.Text) = C_CORINGA then
      begin
         dm.Qfinan_centro_custo.Open(C_SQL103 + coluna.DataBinding.FieldName);
      end
      else
      begin
         s := BuscaTroca(C_SQL104, C_SOH, coluna.DataBinding.FieldName);
         s := BuscaTroca(s, C_ETX, edPesq.Text);
         dm.Qfinan_centro_custo.Open(s);
      end;
   end
   else
   begin
      if DS1.DataSet.Active then
         DS1.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
   end;
end;

procedure TfrmCadPlanoContas.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'MÓDULO PLANO DE CONTAS ' + C_117;
   Preencher(1, cmb1);
   TabNovo.TabVisible := False;
   DM.g_str_coringa := C_ST_VAZIO;
end;

procedure TfrmCadPlanoContas.Preencher(nivel: integer; cmb: TcxImageComboBox; filtro: string);
var
   i: integer;
begin
   if filtro <> C_ST_VAZIO then
      filtro := ' and plano like ' + Texto_Mysql(filtro + '%');

   DM.Q1.Open('select * from finan_centro_custo where nivel=' + Texto_Mysql(nivel) + filtro);

   for i := 0 to ComponentCount -1 do
   if (Components[i] is TcxImageComboBox) then
   begin
      with (Components[i] as TcxImageComboBox) do
      begin
         if Tag >= nivel then
         begin
            Properties.Items.clear;
            Enabled := False;
         end;

         if tag = nivel then
         begin
            while not DM.Q1.Eof do
            begin
               with Properties.Items.Add do
               begin
                   Description := DM.Q1.FieldByName('descricao').AsString;
                   Value       := DM.Q1.FieldByName('plano').AsString;

                   if DM.Q1.FieldByName('tipo').AsString = 'D' then
                      tag := 1;
               end;
               DM.Q1.Next;
            end;
            Enabled := not DM.Q1.IsEmpty;
            btnAss.visible := (btnAss.Tag = 100)and(nivel > 1)and((DM.Q1.IsEmpty)or(nivel = 6));
         end;
      end;
   end;

  btnAdd1.Enabled := cmb1.Enabled;
  btnAdd2.Enabled := cmb2.Enabled;
  btnAdd3.Enabled := cmb3.Enabled;
  btnAdd4.Enabled := cmb4.Enabled;
  btnAdd5.Enabled := cmb5.Enabled;

  btnNew2.Enabled := cmb1.Enabled;
  btnNew3.Enabled := cmb2.Enabled;
  btnNew4.Enabled := cmb3.Enabled;
  btnNew5.Enabled := cmb4.Enabled;
  btnNew6.Enabled := cmb5.Enabled;
end;

procedure TfrmCadPlanoContas.TabNovoShow(Sender: TObject);
var
   i, j: integer;
begin
   edconta.Clear;
   eddescr.Clear;
   edabrev.Clear;
   edconta.SetFocus;
   lblDescr.Caption := C_ST_VAZIO;

   edtipo.Enabled := lblcod.Caption = C_ST_VAZIO;

   if not edtipo.Enabled then
   begin
      if cmb1.Properties.Items[cmb1.SelectedItem].Tag = 1 then
         edtipo.Text := 'D'
      else
         edtipo.Text := 'C';
   end;

   if cmb1.Enabled then
      lblDescr.Caption := lblDescr.Caption + cmb1.Text;
   if cmb2.Enabled then
      lblDescr.Caption := lblDescr.Caption + ': ' + cmb2.Text;
   if cmb3.Enabled then
      lblDescr.Caption := lblDescr.Caption + ': ' + cmb3.Text;
   if cmb4.Enabled then
      lblDescr.Caption := lblDescr.Caption + ': ' + cmb4.Text;
   if cmb5.Enabled then
      lblDescr.Caption := lblDescr.Caption + ': ' + cmb5.Text;
   if cmb6.Enabled then
      lblDescr.Caption := lblDescr.Caption + ': ' + cmb6.Text;

   for i := 1 to length(lblDescr.Caption) do
   if pos(':', lblDescr.Caption[i]) > 0 then
      j := i;

   lblDescr.Caption := copy(lblDescr.Caption,1, j);
end;

procedure TfrmCadPlanoContas.TabPesqHide(Sender: TObject);
begin
   dm.Qfinan_centro_custo.Close;
end;

procedure TfrmCadPlanoContas.TabPesqShow(Sender: TObject);
var
   i: integer;
begin
   inherited;
   dm.Qfinan_centro_custo.Open;
   coluna := tbv.Columns[0];

   for i := 0 to tbv.ColumnCount - 1 do
   if tbv.Columns[i].Tag = 1 then
      coluna := tbv.Columns[i];

  lblPesq.Caption := C_190 + coluna.Caption;
  edpesq.SetFocus;
end;

procedure TfrmCadPlanoContas.tbvplanoHeaderClick(Sender: TObject);
var
   i: integer;
begin
  ds1.DataSet.close;

  for i := 0 to tbv.ColumnCount - 1 do
      tbv.Columns[i].Tag := 0;

  coluna := TcxGridDBColumn(Sender);
  TcxGridDBColumn(Sender).Tag := 1;
  lblPesq.Caption := C_190 + coluna.Caption;
  (DS1.DataSet as TFDQuery).IndexFieldNames := coluna.DataBinding.FieldName;
  edPesq.Clear;
  edpesq.SetFocus;
end;

end.
