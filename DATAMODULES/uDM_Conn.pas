unit uDM_Conn;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Comp.Script, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, uDMAux;

type
  TDMConn = class(TDataModule)
    Q1: TFDQuery;
    Q2: TFDQuery;
    Q3: TFDQuery;
    Q4: TFDQuery;
    Q5: TFDQuery;
    DB: TFDConnection;
    Q6: TFDQuery;
    SProc: TFDStoredProc;
    SP: TFDScript;
    drvMySQL: TFDPhysMySQLDriverLink;
    ADGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConn: TDMConn;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMConn.DataModuleCreate(Sender: TObject);
begin
  DMAux := TDMAux.Create(Self);
end;

procedure TDMConn.DataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(DMAux);
end;

end.
