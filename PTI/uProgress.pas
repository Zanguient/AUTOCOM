unit uProgress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls,
  cxContainer, cxEdit, cxProgressBar, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls;

type
  Tfrmprogress = class(Tfrm)
    bar1: TcxProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprogress: Tfrmprogress;

implementation

{$R *.dfm}

end.
