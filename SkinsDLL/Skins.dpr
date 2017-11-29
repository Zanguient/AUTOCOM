library Skins;                      {\\|//)
                                   (' * * ')
__________________________________ooO_(_)_Ooo___________________________________

      This library is to have all Dev Express skins in a library file.
        This way the skinning ressources are saved at a single place.

                                .oooO     Oooo.
________________________________(   )_____(   )_________________________________
                                 \ (       ) /       Developed by Michael Jelich
                                  \_)     (_}
uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  vcl.dialogs,
  dxSkinsDefaultPainters,
  dSkins in 'dSkins.pas' {dmSkins: TDataModule};

{$R *.res}

var
  gSkinData: TStringList;

procedure AssignSkins(Strings: TStrings); stdcall;
begin
  Strings.text := gSkinData.Text;
end;
exports AssignSkins;

procedure AssignSkinNames(Strings: TStrings); stdcall;
var
  i: integer;
begin
  Strings.Clear;

  for i:= 0 to gSkinData.Count-1 do
    Strings.Add(gSkinData.Names[i]);
end;
exports AssignSkinNames;

function ResNameOfSkin(SkinName: string): string; stdcall;
begin
  Result:= gSkinData.Values[SkinName];
end;
exports ResNameOfSkin;

procedure InitSkinData; stdcall;
var
  n, r: TStringList;
  i: Integer;
  s: string;
begin
  gSkinData:= TStringList.Create;

  n:= TStringList.Create;
  try
    r:= TStringList.Create;
    try
      dxSkinsPopulateSkinResources(hInstance, r, n);

      for i:= 0 to n.Count-1 do
      begin
        s := n[i];
        gSkinData.Add(n[i] + gSkinData.NameValueSeparator + r[i]);
      end;
    finally
      r.Free;
    end;
  finally
    n.Free;
  end;
end;

procedure DLLEntryPoint(dwReason: DWord);
begin
  case dwReason of
    DLL_PROCESS_ATTACH: InitSkinData;
    DLL_THREAD_ATTACH : ;
    DLL_THREAD_DETACH : ;
    DLL_PROCESS_DETACH: gSkinData.Free;
  end;
end;

begin
  DllProc:= @DLLEntryPoint;

  DLLEntryPoint(DLL_PROCESS_ATTACH);
end.

