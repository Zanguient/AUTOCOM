unit uQuita;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, DateUtils,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, cxTextEdit,FireDAC.Comp.Client,
  cxCurrencyEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxCheckBox, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, dxSkinsCore, dxSkinCaramel,
  dxSkinscxPCPainter;

type
  TfrmQuita = class(Tfrm)
    GRD1: TcxGrid;
    tbv1: TcxGridDBTableView;
    lv1: TcxGridLevel;
    T1: TFDMemTable;
    DS1: TDataSource;
    T1id: TIntegerField;
    T1doc: TStringField;
    T1valor: TCurrencyField;
    T1data: TDateField;
    tbv1doc: TcxGridDBColumn;
    tbv1data: TcxGridDBColumn;
    tbv1valor: TcxGridDBColumn;
    btnF5: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cbjuros: TCheckBox;
    cbParc: TCheckBox;
    cbDesc: TCheckBox;
    btnQuitar: TcxButton;
    edjuros: TcxCurrencyEdit;
    eddias: TcxCurrencyEdit;
    edDesc: TcxCurrencyEdit;
    T1quitar: TBooleanField;
    T1haver: TCurrencyField;
    tbv1quitar: TcxGridDBColumn;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblFat: TLabel;
    lblHaver: TLabel;
    lblSubTot: TLabel;
    Shape4: TShape;
    Label1: TLabel;
    lbljuros: TLabel;
    T1juros: TCurrencyField;
    pop1: TPopupMenu;
    Detalhes1: TMenuItem;
    pnlDet: TPanel;
    Shape5: TShape;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBText3: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    DBText5: TDBText;
    lbldettot: TLabel;
    btnDetFechar: TcxButton;
    cxButton3: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cbjurosClick(Sender: TObject);
    procedure cbDescClick(Sender: TObject);
    procedure tbv1quitarPropertiesEditValueChanged(Sender: TObject);
    procedure T1BeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Detalhes1Click(Sender: TObject);
    procedure btnDetFecharClick(Sender: TObject);
    procedure edDescPropertiesEditValueChanged(Sender: TObject);
    procedure btnF5Click(Sender: TObject);
    procedure tbv1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnQuitarClick(Sender: TObject);
    procedure cbParcClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    procedure soma;
    function CalcJuros: currency;

  public
    var
      fat, deb, haver, juros: currency;
      id_cli: integer;
  end;

var
  frmQuita: TfrmQuita;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, uGestaoReceber, uParcelamento, uDM_Conn;

procedure TfrmQuita.cbjurosClick(Sender: TObject);
begin
   edjuros.Visible := cbjuros.Checked;
   eddias.Visible  := cbjuros.Checked;
   Soma;
end;

procedure TfrmQuita.cbParcClick(Sender: TObject);
begin
   if cbParc.Checked then
      cbjuros.Checked := False;
end;

procedure TfrmQuita.cxButton1Click(Sender: TObject);
var n, nn: currency;
begin
   T1.DisableControls;
   T1.First;
   n := 0;  nn := 0;

   while NOT t1.Eof do
   begin
      t1.Edit;
      t1quitar.Value := true;
      t1.Post;
      n  := n  + T1valor.Value;
      nn := nn + T1juros.Value;
      t1.Next;
   end;

   t1.First;
   t1.EnableControls;
   JUROS := nn;
   deb   := n;
   soma;
end;

procedure TfrmQuita.cxButton2Click(Sender: TObject);
begin
   T1.DisableControls;
   T1.First;

   while NOT T1.Eof do
   begin
      T1.Edit;
      T1quitar.Value := false;
      T1.Post;
      T1.Next;
   end;

   T1.First;
   T1.EnableControls;
   deb     := 0;
   juros   := 0;
   Detalhes1.Enabled := cbjuros.Checked;
   soma;
end;

procedure TfrmQuita.cxButton3Click(Sender: TObject);
var
   b: boolean;
   s: string;
begin
  T1.DisableControls;
  T1.First;

   while not T1.Eof do
   begin
      b := T1quitar.Value;

      if b then
         break;
      T1.Next;
   end;

   T1.First;
   T1.EnableControls;

   if NOT b then
   begin
      ShowMessage('Nenhum registro marcado para quitação.');
      exit;
   end;

  T1.DisableControls;

   while not T1.Eof do
   begin
      if T1quitar.Value then
      begin
         s := s + T1id.AsString + ',';
      end;

      T1.Next;
   end;

   delete(s,length(s),1);

   T1.First;
   T1.EnableControls;

   DM.Abrir_Central_Relat('-v',
                          'SISTEMA',
                          'DEMONSTRATIVO',
                          QuotedDuoStr('id_cli=' + DM.QFinanDebcliente.AsString) + ' ' + //id cliente
                          QuotedDuoStr('id_deb=' + s) + ' ' + //id debitos
                          QuotedDuoStr('total='  + Floattostr(deb + juros - haver - edDesc.Value)) + ' ' +//valor
                          QuotedDuoStr('juros='  + Floattostr(juros)) + ' ' +//JUROS
                          QuotedDuoStr('haver='  + Floattostr(haver)) + ' ' +//haver
                          QuotedDuoStr('desc='   + Floattostr(edDesc.Value)) + ' ' +//desc
                          QuotedDuoStr('deb='    + Floattostr(deb))//debito
   );
end;

procedure TfrmQuita.Detalhes1Click(Sender: TObject);
begin
   pnlDet.Show;
   lbldettot.Caption := floattostrf(T1valor.Value {- T1haver.Value} + T1juros.Value, ffnumber,15,2);
end;

procedure TfrmQuita.edDescPropertiesEditValueChanged(Sender: TObject);
begin
   soma;
end;

procedure TfrmQuita.cbDescClick(Sender: TObject);
begin
   edDesc.Clear;
   edDesc.Visible := cbDesc.Checked;
end;

procedure TfrmQuita.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'AUTOCOM GERENCIAL QUITAÇÃO' + C_117;
   fat   := 0;
   deb   := 0;
   haver := 0;
   juros := 0;
end;

procedure TfrmQuita.FormShow(Sender: TObject);
begin
   inherited;
   soma;
end;

procedure TfrmQuita.btnDetFecharClick(Sender: TObject);
begin
   pnlDet.Hide;
end;

procedure TfrmQuita.btnF5Click(Sender: TObject);
begin
   DM.Abrir_Central_Relat('-v',
                          'SISTEMA',
                          'AVISO_COBRANÇA',
                          QuotedDuoStr('id_cli=' + DM.QFinanDebcliente.AsString) + ' ' + //id cliente
                          QuotedDuoStr('valor=' + Floattostr(deb + juros - haver - edDesc.Value))//valor
   );
end;

procedure TfrmQuita.btnQuitarClick(Sender: TObject);
var
   b: boolean;
   s: string;
   n: currency;
begin
   if (MessageBox(0, 'Confirma esta operação?', 'ATENÇÃO', MB_ICONWARNING or MB_YESNO) = idNo) then
      exit;

   T1.DisableControls;
   T1.First;

   while not T1.Eof do
   begin
      b := T1quitar.Value;

      if b then
         break;
      T1.Next;
   end;

   if NOT b then
   begin
      T1.First;
      T1.EnableControls;
      ShowMessage('Nenhum registro marcado para quitação.');
      exit;
   end;

   T1.First;

   while not T1.Eof do
   begin
      if T1quitar.Value then
      begin
         s := s + T1id.AsString + ',';
      end;

      T1.Next;
   end;

   delete(s,length(s),1);
   s := '(' + s + ')';

   if not cbParc.Checked then
   begin
      if juros > 0 then //cria um registro de juros no debito
         DM.Insert_Debito(tdjr,
                          id_cli,
                          id_cli,
                          'JUROS',
                          date,
                          date,
                          juros,
                          'Juros sobre o valor da quitação de ' + edjuros.Text
         );

      DM.ExecSQL('update finan_debito set dt_baixa = curdate(), hora_baixa=' +
                     Texto_Mysql(FormatDateTime('hh:mm', now)) +
                    ', valor_pg=valor where id in' + s
      );

      if juros > 0 then
         DM.ExecSQL('update finan_debito set dt_baixa = curdate(), hora_baixa=' +
                       Texto_Mysql(FormatDateTime('hh:mm', now)) +
                       ', valor_pg=valor where id_cli=' +
                       Texto_Mysql(id_cli) +
                       ' and dt_baixa is null and tipo="J";'
         );

      if deb + juros - edDesc.Value - haver >0 then
      begin
         DM.Inserir_Caixa('QCC',
                          InttoStr(id_cli) + ') ' +  dm.QFinan_CliDebrazaosocial.AsString,
                          deb + juros - edDesc.Value - haver,
                          id_cli,
                          date,
                          now
         );
      end;
   end
   else
   begin
      frmParcelamento := TfrmParcelamento.Create(Self);
      frmParcelamento.edValor.Value := deb;
      frmParcelamento.Tipo_Movi     := s;
      frmParcelamento.id_cli        := id_cli;
      frmParcelamento.id_movim      := 0;
      DMConn.Q1.Open('select count(*) from finan_debito where id_movi=0');
      frmParcelamento.nmro_doc      := 'DP' + FormatFloat('0000', DMConn.Q1.Fields[0].AsInteger+1);
      frmParcelamento.ShowModal;
      FreeAndNil(frmParcelamento);
      DM.QFinanDeb.Refresh;
   end;

//se houver credito faz a movimentação
   DM.ExecSQL('update finan_credito set baixa="B" where cliente=' + IntToStr(id_cli));

   if haver > (deb + juros - edDesc.Value) then //se haver > debito grava o remanescente
   begin
      n := haver - (deb + juros - edDesc.Value);

      DM.QFinanCred.Insert;
      DM.QFinanCredtipo.Value       := 'R';//R = remanescente, M=Manual
      DM.QFinanCreddt_process.Value := Date;
      DM.QFinanCredvalor.Value      := n;
      DM.QFinanCredoperador.Value   := DM.Operador.ID;
      DM.QFinanCredcliente.Value    := id_cli;
      DM.QFinanCred.Post;
   end;

   DM.QFinan_CliDeb.Close;
   DM.QFinanDeb.Close;
   T1.EnableControls;
   btnSair.Click;
end;

function TfrmQuita.CalcJuros: currency; //calcula os juros a cada n dias
var dias_temp, dias: integer; taxa, valor, vr_temp : currency;
begin
   result := 0;
   valor  := T1valor.Value;
   dias   := Trunc(eddias.Value);//pega os valores configurados
   taxa   := edjuros.Value;

   Label11.Caption := 'Juros de ' + FloatToStrF(taxa,ffnumber,15,2)+ ' % a cada ' + IntToStr(dias) + ' dias.';

    //se tem dias e taxa, calcula os juros
   if (cbjuros.Checked) and (dias > 0) and (taxa > 0) and (valor > 0) then
   begin
      //levanta o nmro de dias em atraso
      dias_temp := (DaysBetween(date, T1data.Value)) - dias;

      if dias_temp > 0 then
      begin
        taxa := (taxa/dias_temp);//obtenho o valor dia em %
        vr_temp := (valor * taxa)/100; //obtem o valor do juro simples

        Result := (vr_temp*dias_temp);
      end;

      Result := Arredonda(Result, 2);
   end;
end;

procedure TfrmQuita.soma;
begin
   lblHaver.Caption  := FloatToStrF(haver,ffnumber,15,2);
   lblFat.Caption    := FloatToStrF(deb,ffnumber,15,2);
   juros := 0;

   if cbjuros.Checked then
   begin
      T1.DisableControls;
      T1.First;

      while not T1.Eof do
      begin
         if T1quitar.Value then
            juros := juros + T1juros.Value;
         T1.Next;
      end;

      T1.First;
      T1.EnableControls;
   end;

   lbljuros.Caption  := FloatToStrF(juros,ffnumber,15,2);
   lblSubTot.Caption := FloatToStrF(deb + juros - haver - edDesc.Value,ffnumber,15,2);
   //se haver >  debito mostra zero
   if (deb + juros - haver - edDesc.Value) < 0 then
      lblSubTot.Caption := '0,00';
end;

procedure TfrmQuita.T1BeforePost(DataSet: TDataSet);
begin
   T1juros.Value := CalcJuros;
end;

procedure TfrmQuita.tbv1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   Detalhes1.Enabled := T1quitar.Value;
end;

procedure TfrmQuita.tbv1quitarPropertiesEditValueChanged(Sender: TObject);
begin
   if t1quitar.Value = true then
   begin
      deb := deb + T1valor.Value;
   end
   else
   begin
      deb := deb - T1valor.Value;
   end;
   T1.Post;
   soma;
end;

end.
