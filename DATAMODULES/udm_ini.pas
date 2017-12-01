unit udm_ini;

interface

uses
  System.SysUtils, System.Classes, RxPlacemnt;

type
  TDM_INI = class(TDataModule)
    ini: TFormStorage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_INI: TDM_INI;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
