unit uSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxLabel, dxGDIPlusClasses, cxImage;

type
  Tfrmsplash = class(TForm)
    cxImage1: TcxImage;
    lblStatus: TcxLabel;
    cxLabel1: TcxLabel;
  private
    { Private declarations }
  public
    procedure Msg(s: string);
  end;

var
  frmsplash: Tfrmsplash;

implementation

{$R *.dfm}

{ Tfrmsplash }

procedure Tfrmsplash.Msg(s: string);
begin
   lblStatus.Caption := s;
   lblStatus.Repaint;
end;

end.
