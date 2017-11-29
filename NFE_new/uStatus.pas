unit uStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrm, ACBrBase, ACBrEnterTab, rxPlacemnt, StdCtrls, RXCtrls, ExtCtrls,
  Easysize, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, cxButtons, dxSkinCaramel;

type
  TfrmStatus = class(Tfrm)
    Panel1: TPanel;
    LBlStatus: TRxLabel;
    Lbl1: TRxLabel;
    RxLabel1: TRxLabel;
    mmLog: TMemo;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStatus: TfrmStatus;
  Inicio: TTime;

implementation

{$R *.dfm}

procedure TfrmStatus.FormShow(Sender: TObject);
begin
  inherited;
   Inicio := now;
   Application.ProcessMessages;
end;

end.
