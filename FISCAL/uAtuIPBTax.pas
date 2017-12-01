unit uAtuIPBTax;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uFuncoes, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, uDM, dxSkinsCore, dxSkinCaramel;

type
  TfrmAtuIPBTax = class(Tfrm)
    btnAbrir: TcxButton;
    OD1: TOpenDialog;
    T1: TFDMemTable;
    T2: TFDMemTable;
    T1versao: TStringField;
    T1itens: TIntegerField;
    T1dt_vigencia_ini: TDateField;
    T1dt_vigencia_fim: TDateField;
    T1chave: TStringField;
    T1fonte: TStringField;
    T2ncm: TStringField;
    T2ex: TStringField;
    T2tabela: TIntegerField;
    T2nome: TStringField;
    T2nacional: TCurrencyField;
    T2importado: TCurrencyField;
    T2estadual: TCurrencyField;
    T2municipal: TCurrencyField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    Label4: TLabel;
    Bar1: TProgressBar;
    Label5: TLabel;
    procedure btnAbrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtuIPBTax: TfrmAtuIPBTax;

implementation

{$R *.dfm}

uses uDM_Conn;

procedure TfrmAtuIPBTax.btnAbrirClick(Sender: TObject);
var
   Lista, Itens: TstringList;
   i, j: integer;
begin
   if OD1.Execute then
   begin
      Lista := TStringList.Create;
      Lista.LoadFromFile(OD1.FileName);
      bar1.Max := Lista.Count;
      FormatSettings.DecimalSeparator := '.';
      DMConn.Q1.Open('select versao from ibptax  order by id desc limit 1');
      Label5.Caption := 'Versão Anterior: ' + DMConn.Q1.FieldByName('versao').AsString;

      DMConn.DB.ExecSQL('truncate table ibptax; truncate table ibptax_itens;');

      for i := 1 to Pred(Lista.Count) do
      begin
         bar1.Position := i;
         Itens := Explode(Lista.Strings[i],';');

         if i = 1 then
         begin
            T1.Append;
            T1versao.AsString       := Itens.Strings[11];
            T1dt_vigencia_ini.value := StrToDate(Itens.Strings[8]);
            T1dt_vigencia_fim.value := StrToDate(Itens.Strings[9]);
            T1chave.AsString        := Itens.Strings[10];
            T1fonte.AsString        := Itens.Strings[12];
            T1.Post;
         end
         else
         begin
            T2.Append;
            T2ncm.AsString    :=Itens.Strings[0];
            T2ex.AsString     :=Itens.Strings[1];
            T2tabela.AsString :=Itens.Strings[2];
            T2nome.AsString   := Itens.Strings[3];
            T2nacional.Value  := StrToFloatDef(Itens.Strings[4],0);
            T2importado.Value := StrToFloatDef(Itens.Strings[5],0);
            T2estadual.Value  := StrToFloatDef(Itens.Strings[6],0);
            T2municipal.Value := StrToFloatDef(Itens.Strings[7],0);
            T2.Post;
         end;
         Application.ProcessMessages;
      end;
      FormatSettings.DecimalSeparator := ',';
      T1.Edit;
      T1itens.Value := Lista.Count - 1;
      T1.Post;

      DM.TIBPTax.Open;
      DM.TIBPTax_Itens.Open;

      T1.First;
      T2.First;
      bar1.Position := 0;
      Lista.Free;

      DM.TIBPTax.Append;
      DM.TIBPTax.CopyRecord(T1);
      DM.TIBPTax.Post;

      while not T2.Eof do
      begin
         Bar1.Position := T2.RecNo;
         DM.TIBPTax_Itens.Append;
         DM.TIBPTax_Itens.CopyRecord(T2);
         DM.TIBPTax_Itens.Post;
         T2.Next;
      end;
      //atualização da tabela ncm
      if not DM.TIBPTax.IsEmpty then
      begin
         DMConn.DB.ExecSQL('truncate table ncm;');
         DMConn.DB.ExecSQL('insert into ncm (cod_ncm,descr_ncm) (select ncm, nome from ibptax_itens);');
      end;

      ShowMessage('Processo concluido.');
      btnSair.Click;
   end;
end;

end.
