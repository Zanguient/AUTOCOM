unit uDMVLink;

interface

uses
  System.SysUtils, System.Classes, Data.DB, uFuncoes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDMVLink = class(TDataModule)
    TVL: TFDMemTable;
    TVLID: TIntegerField;
    TVLNautor: TStringField;
    TVLCodConv: TStringField;
    TVLNomeConveniado: TStringField;
    TVLcomprovante: TMemoField;
    TVLItens: TFDMemTable;
    TVLItensItem: TIntegerField;
    TVLItensidProd: TIntegerField;
    TVLItensEAN: TStringField;
    TVLItensQtd: TFloatField;
    TVLItensvrVenda: TFloatField;
    TVLItensvrVista: TCurrencyField;
    TVLItensvrReceber: TCurrencyField;
    TVLItensvrSubsidio: TCurrencyField;
    TVLItensvrReembolso: TCurrencyField;
    TVLItenspcDescReposicao: TFloatField;
    TVLItenspcComissao: TFloatField;
    TVLItensprocessado: TBooleanField;
    TVLNumECF: TIntegerField;
    TVLCOO: TIntegerField;
    TVLprocessado: TIntegerField;
    DSTVL: TDataSource;
    DSTVLITENS: TDataSource;
    TVLItensmaxQtd: TFloatField;
    procedure TVLItensBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure ClearDatasets;
    procedure LoadDatasets;
    procedure SalvarDatasets;
  end;

var
  DMVLink: TDMVLink;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TDMVLink.SalvarDatasets;
begin
   TVL.SaveToFile(Aqui('DAT\VL', 'VL.dat'));
   TVLItens.SaveToFile(Aqui('DAT\VL', 'VLItens.dat'));
end;

procedure TDMVLink.TVLItensBeforePost(DataSet: TDataSet);
begin
   if TVLItens.FieldByName('Qtd').Value > TVLItens.FieldByName('MaxQtd').Value then
      raise Exception.Create('Quantidade não pode ser maior do que ' + IntToStr(TVLItens.FieldByName('MaxQtd').AsInteger));

   if TVLItens.FieldByName('Qtd').Value < 0 then
      raise Exception.Create('Quantidade não pode ser menor que zero');

   if TVLItens.FieldByName('Qtd').Value = 0 then
      TVLItens.FieldByName('processado').Value := False;
end;

procedure TDMVLink.LoadDatasets;
VAR
   s: string;
begin
   s := Aqui('DAT\VL', 'VL.dat');

   if FileExists(s) then
   begin
      TVL.LoadFromFile(s);
      TVLItens.LoadFromFile(Aqui('DAT\VL', 'VLItens.dat'));
   end;
end;

procedure TDMVLink.ClearDatasets;
begin
   while not TVL.IsEmpty do
      TVL.Delete;

   while not TVLItens.IsEmpty do
      TVLItens.Delete;

   SalvarDatasets;
end;

end.
