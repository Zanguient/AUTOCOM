unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, StdCtrls;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    CD1: TClientDataSet;
    DataSource1: TDataSource;
    CD1NOME: TStringField;
    CD1SITUACAO: TStringField;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CD1AfterDelete(DataSet: TDataSet);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
CD1.FileName:=ExtractFilePath(Application.ExeName)+'\cliente.xml';
cd1.Open;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
cd1.Close;
action:=cafree;
release;
end;

procedure TForm2.CD1AfterDelete(DataSet: TDataSet);
begin
cd1.SaveToFile();
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
IF EDIT1.Text<>'' then cd1.Locate('nome',edit1.text,[lopartialkey,locaseinsensitive]);
end;

end.
