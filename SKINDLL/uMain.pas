unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxButtons, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    cxButton1: TcxButton;
    icbSkins: TcxImageComboBox;
    procedure icbSkinsPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FFirstTime: Boolean;
    procedure PopularCmbSkins;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses dmSkins, uSkinDLL;

type
  TcxCustomImageComboBoxPropertiesAccess = class(TcxCustomImageComboBoxProperties);

{ TForm1 }

procedure TForm1.FormShow(Sender: TObject);
begin
   GetSkinDLL.GetSkinName;
   PopularCmbSkins;
end;

procedure TForm1.icbSkinsPropertiesEditValueChanged(Sender: TObject);
begin
  if not Self.FFirstTime then
    GetSkinDLL.SetSkinName(icbSkins.Text);
end;

procedure TForm1.PopularCmbSkins;
var
  i: Integer;
  icbItm: TcxImageComboBoxItem;
  sl: TStringList;
  s: string;
begin
  Self.FFirstTime := True;
  try
    icbSkins.Properties.Items.Clear;

    sl := GetSkinDLL.GetAvailableSkins;

    if sl <> nil then
    begin
      for i := 0 to Pred(sl.Count) do
      begin
        icbItm := icbSkins.Properties.Items.Add;
        s := sl.Names[i];
        icbItm.Description := s;
        icbItm.Value := sl.ValueFromIndex[i];
      end;
    end;

    icbItm := TcxCustomImageComboBoxPropertiesAccess(icbSkins.Properties).FindItemByText(GetSkinDLL.GetSkinName);

    if Assigned(icbItm) then
      icbSkins.EditValue := icbItm.Value
    else
      icbSkins.ItemIndex := -1;

  finally
    Self.FFirstTime := False;
  end;
end;

end.
