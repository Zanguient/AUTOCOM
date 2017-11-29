unit uPesqProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxDBLabel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPesqProd = class(TfrmCad)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    tbvid: TcxGridDBColumn;
    tbvcod_gtin: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvvrvenda_vista: TcxGridDBColumn;
    tbvvrcusto_real: TcxGridDBColumn;
    tbvquant: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    procedure edPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbvcod_gtinHeaderClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqProd: TfrmPesqProd;
   coluna : TcxGridDBColumn;
   st_filtro: String;


implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, udm_ini, uPV, uMD5Print;

procedure TfrmPesqProd.edPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   if key = 13 then
   begin
      DM.g_int_coringa := 101;
      btnSair.Click;
   end
   else
   if key = 27 then
   begin
      DM.g_int_coringa := 0;
      btnSair.Click;
   end;
end;

procedure TfrmPesqProd.edPesqPropertiesChange(Sender: TObject);
begin
    if (edPesq.Text <> C_ST_VAZIO) then
    begin
       if Trim(edPesq.Text) = C_CORINGA then
          DM.QEstoque.Open('select * from estoque where ' + st_filtro +
                           'suspenso="N" order by ' + coluna.DataBinding.FieldName)
       else
       begin
         if coluna.DataBinding.FieldName='cod_gtin' then
         begin
            if length(Trim(edPesq.Text)) >= DM_ini.INI.StoredValue['tam_min_cod_item'] then
            begin
               DM.QEstoque.Open('select * from estoque where ' + st_filtro +
                                ' cod_gtin= ' + Texto_Mysql( Trim(edPesq.Text) ));
            end;
         end
         else
          DM.QEstoque.Open('select * from estoque where ' + st_filtro + 'suspenso="N" and ' +
                            coluna.DataBinding.FieldName + ' like ' +
                            Texto_Mysql( Trim(edPesq.Text)+ '%' ));
       end;
    end
    else
    DS1.DataSet.Close;
end;

procedure TfrmPesqProd.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin
  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
  end;
  inherited;
end;

procedure TfrmPesqProd.FormCreate(Sender: TObject);
 var
   i: integer;
begin
   inherited;

  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
  end;

   DM.g_int_coringa := 0;
   DS1.DataSet.Close;

   case frmPV.ini.StoredValue['modo'] of
      0: st_filtro := ''; //normal
      1: st_filtro := ''; //epharma
      2: st_filtro := ' medicam_vrms>0 and ' //pfp
   end;
end;

procedure TfrmPesqProd.FormShow(Sender: TObject);
var
   i: integer;
begin
   inherited;
   coluna := tbv.Columns[0];

   for i := 0 to tbv.ColumnCount - 1 do
   if tbv.Columns[i].Tag = 1 then
      coluna := tbv.Columns[i];

  (DS1.DataSet as TFDQuery).IndexFieldNames := coluna.DataBinding.FieldName;

  lblPesq.Caption := C_190 + coluna.Caption;
  edpesq.SetFocus;

  if frmPV.Edit1.Text <> C_ST_VAZIO then
  begin
     edPesq.Text := frmPV.Edit1.Text;
  end;

  bar1.Panels[1].Text := Format('%d registros', [DS1.DataSet.RecordCount]);
end;

procedure TfrmPesqProd.tbvcod_gtinHeaderClick(Sender: TObject);
var
   i: integer;
begin
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
