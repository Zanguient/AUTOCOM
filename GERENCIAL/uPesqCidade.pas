unit uPesqCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, Datasnap.DBClient, dxSkinsCore,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinCaramel, dxBarBuiltInMenu;

type
  TfrmPesqCidade = class(TfrmCad)
    tbvcidade: TcxGridDBColumn;
    tbvcod: TcxGridDBColumn;
    cdCidade: TFDMemTable;
    cdCidadecidade: TStringField;
    cdCidadecod: TStringField;
    procedure FormShow(Sender: TObject);
    procedure cdCidadeAfterOpen(DataSet: TDataSet);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure edPesqEnter(Sender: TObject);
  private
    { Private declarations }
  public
    VAR
       UF: string; //recebe a UF do form solicitante
  end;

var
  frmPesqCidade: TfrmPesqCidade;

implementation

{$R *.dfm}

uses uDM, uAutocomConsts, uFuncoes;

procedure TfrmPesqCidade.btnSairClick(Sender: TObject);
begin
 // inherited;  deixar comentado o botao é modalresult neste form

end;

procedure TfrmPesqCidade.cdCidadeAfterOpen(DataSet: TDataSet);
var
   lista: TStringList;
   i: integer;
begin
   if UF = C_ST_VAZIO then
      exit;
   //carrega os dados do arquivo do IBGE
   Screen.Cursor := crHourGlass;
   cdCidade.DisableControls;
   try
      Lista := TStringList.Create;
      Lista.LoadFromFile(Aqui('nfe_data\MunIBGE', IntToStr(DM.UF_To_Codigo(UF)) + '.txt'));

      for i := 0 to Lista.Count - 1 do
      begin
          cdCidade.AppendRecord([ AnsiUpperCase(Trim(Copy(Lista.Strings[i],9,60))),
                                 StrToInt(Number(Trim(Copy(Lista.Strings[i],1,8)))) ]
          );
   end;
   finally
      Screen.Cursor := crDefault;
      cdCidade.EnableControls;
   end;
end;

procedure TfrmPesqCidade.edPesqEnter(Sender: TObject);
begin
//  inherited;
end;

procedure TfrmPesqCidade.edPesqPropertiesChange(Sender: TObject);//pesquisa por locate
begin
   if ds1.DataSet.Active then
   if not ds1.DataSet.IsEmpty then
      cdCidade.Locate('cidade', edPesq.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmPesqCidade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if Key = 27 then
      btnSair.Click;
end;

procedure TfrmPesqCidade.FormShow(Sender: TObject);
begin
   inherited;
   pgCad.ActivePage  := TabPesq;
   TabCad.TabVisible := False;
   edPesq.SetFocus;
   lblPesq.Caption := lblPesq.Caption + ' CIDADE';
   cdCidade.Open;
   Caption := 'CIDADES DE ' + UF;
end;

end.
