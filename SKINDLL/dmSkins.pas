unit dmSkins;

interface

uses
  SysUtils, Classes, dxSkinsCore, cxLookAndFeels, dxSkinsForm;

type
  TDMSkin = class(TDataModule)
    dxSkinController1: TdxSkinController;
    cxLookAndFeelController1: TcxLookAndFeelController;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSkin: TDMSkin;

implementation

{$R *.dfm}

end.
