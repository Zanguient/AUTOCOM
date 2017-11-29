unit dSkins;

interface

uses
  Windows, Classes, Variants,

{ this is for skinning support }
  dxSkinsCore, dxSkinsDefaultPainters, cxLookAndFeels, dxSkinsForm,

{ these are the skins - new skins to be added }
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust, dxSkinValentine, dxSkinSummer2008, dxSkinXmas2008Blue, dxSkiniMaginary,
  dxSkinDarkSide, dxSkinPumpkin;

type
  TdmSkins = class(TDataModule)
    sc: TdxSkinController;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

implementation

{$R *.dfm}

end.
