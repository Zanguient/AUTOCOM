unit uParcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TfrmParcelas = class(Tfrm)
    cxButton1: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParcelas: TfrmParcelas;

implementation

{$R *.dfm}

end.
