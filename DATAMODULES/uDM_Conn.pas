unit uDM_Conn;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Comp.Script, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet;

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

end.
