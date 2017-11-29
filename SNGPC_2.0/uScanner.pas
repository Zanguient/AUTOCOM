unit uScanner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons, ExtCtrls, DelphiTwain, jpeg, ComCtrls, ufuncoes;

type
  TfrmScanner = class(TForm)
    Image1: TImage;
    Twain: TDelphiTwain;
    Bar1: TStatusBar;
    Panel1: TPanel;
    btnSalvar: TcxButton;
    btnFechar: TcxButton;
    btnIniciar: TcxButton;
    procedure btnIniciarClick(Sender: TObject);
    procedure TwainTwainAcquire(Sender: TObject; const Index: Integer;
      Image: TBitmap; var Cancel: Boolean);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    function BMPtoJPG(BitMap: TBitmap; PathToSaveJPG: string): boolean;
    { Private declarations }
  public
    { Public declarations }
    sPath: string;
  end;

var
  frmScanner: TfrmScanner;

implementation

{$R *.dfm}

procedure TfrmScanner.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmScanner.btnIniciarClick(Sender: TObject);
var
  SelectedSource: Integer;
begin
  if Twain.LoadLibrary then
  begin
    btnIniciar.Enabled        := False;
    Twain.SourceManagerLoaded := TRUE; {Allow user to select source}
    SelectedSource            := Twain.SelectSource;
    bar1.SimpleText           := sPath;

    if SelectedSource <> -1 then
    begin      {Load source, select transference method and enable (display interface)}
      Twain.Source[SelectedSource].Loaded       := TRUE;
      Twain.Source[SelectedSource].TransferMode := ttmMemory;
      Twain.Source[SelectedSource].Enabled      := TRUE;
      btnSalvar.Enabled := True;
    end {if SelectedSource <> -1}
  end
  else
    showmessage('Driver Twain não está instalado.');
end;

procedure TfrmScanner.btnSalvarClick(Sender: TObject);
begin
   BMPtoJPG(image1.Picture.Bitmap, sPath);
   Close;
end;

procedure TfrmScanner.TwainTwainAcquire(Sender: TObject; const Index: Integer;
  Image: TBitmap; var Cancel: Boolean);
begin
  Image1.Picture.Assign(Image);
  Cancel := True;  {Only want one image}
end;

function TfrmScanner.BMPtoJPG(BitMap: TBitmap; PathToSaveJPG: string): boolean;
var
  JpegImg: TJpegImage;
begin
  Result:=False;

  try
    JpegImg := TJpegImage.Create;

    JpegImg.Assign(BitMap) ;
    JpegImg.SaveToFile(PathToSaveJPG) ;

    Result:=True;
  finally
    JpegImg.Free
  end;
end;

end.
