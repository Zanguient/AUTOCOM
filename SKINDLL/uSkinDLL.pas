unit uSkinDLL;

interface

uses
  Classes;

type
  TAssignSkinsProc = procedure(AStringList: TStringList); stdcall;

  TSkinDLL = class
  private
    FSkinsDLL: THandle;
    FAssignSkinsProc: TAssignSkinsProc;
    FAvailSkins: TStringList;
    FSkinName: string;
    IsReadingPrefs: Boolean;
    function GetDllLoaded: boolean;
    procedure LoadSkin(SkinName, ResName: variant); overload;
    procedure LoadSkin(SkinName, ResName: string); overload;
    procedure ReadPrefs;
  public
    constructor Create;
    destructor Destroy; override;
    function GetAvailableSkins: TStringList;
    function GetSkinName: string;
    procedure SetSkinName(Value: string);
  end;

function GetSkinDLL: TSkinDLL;

implementation

uses
  Windows, Variants, dxSkinsDefaultPainters, dxSkinsStrs, SysUtils, Registry,
  Controls, Forms, dmSkins, Dialogs;

const
  LOW_REG_PATH = 'Software\Koplin\SkinnedApp';
  LOW_SKIN_NAME_KEY = 'SkinName';

var
  gSkinDLL: TSkinDLL;

function GetSkinDLL: TSkinDLL;
begin
  if not Assigned(gSkinDLL) then
    gSkinDLL := TSkinDLL.Create;
  Result := gSkinDLL;
end;

{ TSkinDLL }

constructor TSkinDLL.Create;
var
  procName: string;
begin
  Self.FSkinsDLL := LoadLibrary('SKINS.DLL');
  procName := 'AssignSkinNames';

  if (Self.FSkinsDLL < HINSTANCE_ERROR) then
    raise Exception.Create('SKINS.DLL não pôde ser carregado.' + SysErrorMessage(GetLastError));

  if Self.GetDllLoaded then
    Self.FAssignSkinsProc := TAssignSkinsProc(GetProcAddress(Self.FSkinsDLL, 'AssignSkins'))
  else
    Self.FAssignSkinsProc := nil;

  Self.FAvailSkins := TStringList.Create;

  if Assigned(Self.FAssignSkinsProc) then
     Self.FAssignSkinsProc(Self.FAvailSkins);

  Self.ReadPrefs;
end;

destructor TSkinDLL.Destroy;
begin
  FreeAndNil(Self.FAvailSkins);

  if Self.GetDllLoaded then
    FreeLibrary(Self.FSkinsDLL);

  inherited;
end;

function TSkinDLL.GetDllLoaded: boolean;
begin
  Result := fSkinsDLL <> INVALID_HANDLE_VALUE;
end;

procedure TSkinDLL.LoadSkin(SkinName, ResName: variant);
begin
  Self.LoadSkin(VarToStrDef(SkinName, ''), VarToStrDef(ResName, ''));
end;

procedure TSkinDLL.LoadSkin(SkinName, ResName: string);
var
  r: TResourceStream;
begin
  if Assigned(Self.FAssignSkinsProc) and (SkinName <> '') and (ResName <> '') then
  begin
    r := TResourceStream.Create(Self.FSkinsDLL, ResName, PWideChar(sdxResourceType));
    try
      try
        dxSkinsUserSkinLoadFromStream(r, SkinName);
      except
        on e: Exception do
          ShowMessage('Erro ao carregar o tema ' + SkinName + ': ' + e.Message);
      end;
    finally
      r.Free;
    end;
  end;
end;

function TSkinDLL.GetAvailableSkins: TStringList;
begin
  Result := FAvailSkins;
end;

function TSkinDLL.GetSkinName: string;
begin
  Result := Self.FSkinName;
end;

procedure TSkinDLL.ReadPrefs;
var
  Reg: TRegistry;
  SvCursor: TCursor;
begin
  SvCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;
  Self.IsReadingPrefs := true;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.LazyWrite := False;

    if Reg.OpenKey(LOW_REG_PATH, True) then
    begin
      if Reg.ValueExists(LOW_SKIN_NAME_KEY) then
        SetSkinName(Reg.ReadString(LOW_SKIN_NAME_KEY))
      else
        SetSkinName('');
      Reg.CloseKey;
    end
    else
      raise Exception.Create('Não foi possível ler a chave de registro: ' + LOW_REG_PATH);
  finally
    Screen.Cursor := SvCursor;
    FreeAndNil(Reg);
    Self.IsReadingPrefs := false;
  end;
end;

procedure TSkinDLL.SetSkinName(Value: string);
var
  i: Integer;
  Reg: TRegistry;
  SvCursor: TCursor;
begin
  if Value <> Self.FSkinName then
  begin
    Self.FSkinName := Value;

    if Assigned(Self.FAssignSkinsProc) then
    begin
      if Self.FSkinName <> '' then
      begin
        for i := 0 to Pred(Self.FAvailSkins.Count) do
        begin
          if Self.FSkinName = Self.FAvailSkins.Names[i] then
          begin
            Self.LoadSkin(Self.FAvailSkins.Names[i], Self.FAvailSkins.ValueFromIndex[i]);
            break;
          end;
        end;
      end;
    end;

    DMSkin.dxSkinController1.SkinName := 'UserSkin';// Self.FSkinName; a manha esta em voltar o nome para UserSkin

    if not Self.IsReadingPrefs then
    begin
      SvCursor := Screen.Cursor;
      Screen.Cursor := crHourglass;
      Reg := TRegistry.Create;
      try
        Reg.RootKey := HKEY_CURRENT_USER;
        Reg.LazyWrite := False;
        if Reg.OpenKey(LOW_REG_PATH, False) then
        begin
          Reg.WriteString(LOW_SKIN_NAME_KEY, Value);
          Reg.CloseKey;
        end;
      finally
        Screen.Cursor := SvCursor;
        FreeAndNil(Reg);
      end;
    end;
  end;
end;

initialization

finalization
  gSkinDLL.Free;

end.

