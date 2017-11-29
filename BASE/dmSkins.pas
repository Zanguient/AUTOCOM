unit dmSkins;

interface

uses
  SysUtils, Classes, dxSkinsCore, cxLookAndFeels, dxSkinsForm, dxScreenTip, Forms,
  dxCustomHint, cxHint, cxGridTableView, cxClasses, cxStyles, cxLocalization, Controls,
  cxEdit;

type
  TDMSkin = class(TDataModule)
    dxSkinController1: TdxSkinController;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxLocalizer1: TcxLocalizer;
    cxHintStyleController1: TcxHintStyleController;
    DSC1: TcxDefaultEditStyleController;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  DMSkin: TDMSkin;

implementation

{$R *.dfm}

uses uAutocomConsts, uFuncoes;

{ TDMSkin }



procedure TDMSkin.DataModuleCreate(Sender: TObject);
var
   s: string;
begin
   s := Aqui(C_INI_FILE, 'gridptbr.ini');
   //cxLocalizer1.Active := False;

   if FileExists(s) then
   begin
      cxLocalizer1.LoadFromFile(s);
      cxLocalizer1.LanguageIndex := 1; // MUDA DE LINGUAGEM
      cxLocalizer1.Active        := TRUE;     // ATIVA O COMPONENTE
   end;
end;

end.
