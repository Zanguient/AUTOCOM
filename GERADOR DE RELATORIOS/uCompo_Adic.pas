unit uCompo_Adic;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, frxDsgnIntf,
frxDCtrl, frxClass, frxDesgn,cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
cxCurrencyEdit, cxEdit;


type
//criar a classe
  TfrxcxDateEditControl = class(TfrxDialogControl)
  private
    FcxDateEdit: TcxDateEdit;

    function GetDate: TDate;
    procedure SetDate(const Value: TDate);

  public
    constructor Create(AOwner: TComponent); override;
    property DateEdit: TcxDateEdit read FcxDateEdit;
  published
    property Date: TDate read GetDate write SetDate;
    property TabStop;
    property OnClick;
    property OnDblClick;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
  end;

  TfrxcxCurrencyEdit = class(TfrxDialogControl)
  private
    FcxCurrencyEdit : TcxCurrencyEdit;
    FOnChange: TfrxNotifyEvent;

    function GetValue: Double;
    function GetDisplayFormat: string;
    procedure SetValue(Value: Double);
    procedure SetDisplayFormat(Value: string);

    function GetDecimalPlaces: integer;
    procedure SetDecimalPlaces(Value: integer);

  public
    constructor Create(AOwner: TComponent); override;
    property cxCurrencyEdit: TcxCurrencyEdit read FcxCurrencyEdit;
  published
    property Value: Double read GetValue write SetValue;
    property DisplayFormat: String read GetDisplayFormat write SetDisplayFormat;
    property QtdDecimais: Integer read GetDecimalPlaces write SetDecimalPlaces;
  end;

implementation

{ TfrxcxDateEditControl }

constructor TfrxcxDateEditControl.Create(AOwner: TComponent);
begin
   inherited;
    FcxDateEdit := TcxDateEdit.Create(nil);
    InitControl(FcxDateEdit);
    Date   := now;
    FcxDateEdit.Properties.SaveTime := False;
    FcxDateEdit.Properties.ShowTime := False;
    width  := 97;
    height := 21;
end;


function TfrxcxDateEditControl.GetDate: TDate;
begin
  Result := FcxDateEdit.Date
end;

procedure TfrxcxDateEditControl.SetDate(const Value: TDate);
begin
   FcxDateEdit.Date := Value;
end;


{ TfrxcxCurrencyEdit }

constructor TfrxcxCurrencyEdit.Create(AOwner: TComponent);
begin
  inherited;
    FcxCurrencyEdit := TcxCurrencyEdit.Create(nil);
    InitControl(FcxCurrencyEdit);

    FcxCurrencyEdit.Properties.Alignment.Horz := taRightJustify;
    Value  := 0;
    width  := 97;
    height := 21;
end;


function TfrxcxCurrencyEdit.GetDecimalPlaces: integer;
begin
   Result := FcxCurrencyEdit.Properties.DecimalPlaces;
end;


function TfrxcxCurrencyEdit.GetDisplayFormat: string;
begin
    Result := FcxCurrencyEdit.Properties.DisplayFormat;
end;


function TfrxcxCurrencyEdit.GetValue: Double;
begin
   Result := FcxCurrencyEdit.Value;
end;

procedure TfrxcxCurrencyEdit.SetDecimalPlaces(Value: integer);
begin
   FcxCurrencyEdit.Properties.DecimalPlaces := Value;
end;

procedure TfrxcxCurrencyEdit.SetDisplayFormat(Value: string);
begin
   FcxCurrencyEdit.Properties.DisplayFormat := Value;
end;


procedure TfrxcxCurrencyEdit.SetValue(Value: Double);
begin
   FcxCurrencyEdit.Value := Value;
end;

initialization
   frxObjects.RegisterObject1(TfrxcxDateEditControl, nil, 'frxcxDateEdit', '', 0, 20);
   frxObjects.RegisterObject1(TfrxcxCurrencyEdit, nil, 'frxcxCurrencyEdit', '', 0, 13);
end.
