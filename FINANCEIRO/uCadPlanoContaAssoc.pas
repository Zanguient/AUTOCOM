unit uCadPlanoContaAssoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData,
  cxContainer, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt,
  Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxNavigator, cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls,
  Datasnap.DBClient, FireDAC.Comp.Client;

type
  TfrmCadPlanoContasAssoc = class(TfrmCad)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    Q1: TFDQuery;
    Q1id: TIntegerField;
    Q1codigo: TStringField;
    Q1operacao: TStringField;
    Q1descricao: TStringField;
    tbvid: TcxGridDBColumn;
    tbvcodigo: TcxGridDBColumn;
    tbvoperacao: TcxGridDBColumn;
    tbvdescricao: TcxGridDBColumn;
    TabSis: TcxTabSheet;
    TOpSis: TFDMemTable;
    TOpSisoperacao: TStringField;
    TOpSisplano: TStringField;
    TOpSisdescricao: TMemoField;
    DSOpSis: TDataSource;
    grdOpSis: TcxGrid;
    tbvOpSis: TcxGridDBTableView;
    lvOpSis: TcxGridLevel;
    tbvOpSisoperacao: TcxGridDBColumn;
    tbvOpSisplano: TcxGridDBColumn;
    tbvOpSisdescrio: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure Q1BeforeInsert(DataSet: TDataSet);
    procedure TabSisShow(Sender: TObject);
    procedure TOpSisBeforeClose(DataSet: TDataSet);
    procedure TOpSisAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPlanoContasAssoc: TfrmCadPlanoContasAssoc;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes;

procedure TfrmCadPlanoContasAssoc.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'PLANO DE CONTAS ASSOCIADOS' + C_117;
   Q1.Open;
end;

procedure TfrmCadPlanoContasAssoc.Q1BeforeInsert(DataSet: TDataSet);
begin
   raise Exception.Create('Operação não permitida.');
end;

procedure TfrmCadPlanoContasAssoc.TabSisShow(Sender: TObject);
begin
   TOpSis.Close;
   TOpSis.Open;
end;

procedure TfrmCadPlanoContasAssoc.TOpSisAfterOpen(DataSet: TDataSet);
const
   sql = 'select codigo, operacao, descricao from finan_centro_custo_assoc where operacao=';
   cod: Array [0..6] of string = ('BC','BF','CR','MBBOL','MBTBR', 'MBTBC', '');
   des: Array [0..6] of string = ('RECEB. BOLETO CASH','RECEB. FATURA','RECEB. REF. A CRÉD. AO CLIEN','REC. BOLETO','TRANSF. BANC. (RETIR)', 'TRANSF. BANC. (CRÉD)', '');

   procedure Insere(s: string; descr: string = '');
   var
   i: integer;
   begin
      DM.Q1.Open(sql + texto_mysql(s));
      TOpSis.DisableControls;
      TOpSis.Append;

      for i := low(cod) to High(cod) do
      if SoPalavras(s) = cod[i] then
      begin
         TOpSisoperacao.AsString := cod[i]+ '-' + des[i];
         break;
      end;

      if DM.Q1.IsEmpty then
      begin
          TOpSisplano.Value := '-';
          TOpSisdescricao.AsString := 'Sem associação. ' + descr;
      end
      else
      begin
          TOpSisplano.AsString     := DM.Q1.FieldByName('codigo').AsString;
          TOpSisdescricao.AsString := DM.Q1.FieldByName('descricao').AsString + ' ' + descr;
      end;

      TOpSis.Post;
      TOpSis.EnableControls;
   end;
begin
    Insere('BC');
    Insere('BF');
    Insere('CR');
    //insere as contas bancarias se houver
    DM.Q2.Open('select id, concat (conta,"-",dig) from finan_banco_conta');

    while not DM.Q2.Eof do
    begin
        insere(format('MB%dTBR',[DM.Q2.Fields[0].AsInteger]), 'conta ' + DM.Q2.Fields[1].AsString);
        insere(format('MB%dTBC',[DM.Q2.Fields[0].AsInteger]), 'conta ' + DM.Q2.Fields[1].AsString);
        //insere(format('MB%dEBL',[DM.Q2.Fields[0].AsInteger]), 'conta ' + DM.Q2.Fields[1].AsString);
        insere(format('MB%dBOL',[DM.Q2.Fields[0].AsInteger]), 'conta ' + DM.Q2.Fields[1].AsString);
        DM.Q2.Next;
    end;
end;

procedure TfrmCadPlanoContasAssoc.TOpSisBeforeClose(DataSet: TDataSet);
begin
   while not TOpSis.IsEmpty do
      TOpSis.Delete;
end;

end.
