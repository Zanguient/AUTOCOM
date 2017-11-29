unit uCadFemissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, ACBrBase, ACBrEnterTab, rxPlacemnt, cxControls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxNavigator, cxDBNavigator, cxGridCustomTableView, cxGridTableView, uAutocomConsts,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, uFuncoes,
  uMD5Print, Easysize, dxSkinsCore;

type
  TfrmCadFemissao = class(Tfrm)
    g1: TcxGrid;
    tbv: TcxGridDBTableView;
    g1Lvl1: TcxGridLevel;
    tbvid: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvcNF: TcxGridDBColumn;
    tbvnNF: TcxGridDBColumn;
    tbvserie: TcxGridDBColumn;
    tbvlote: TcxGridDBColumn;
    nav1: TcxDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEscClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFemissao: TfrmCadFemissao;

implementation

uses udmnfe;

{$R *.dfm}

procedure TfrmCadFemissao.btnEscClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCadFemissao.FormClose(Sender: TObject; var Action: TCloseAction);
var
   i: integer;
begin
  inherited;

  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).StoreToIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
  end;
end;

procedure TfrmCadFemissao.FormCreate(Sender: TObject);
var
   i: integer;
begin
  inherited;

  for i := 0 to componentcount - 1 do
  begin
      if (Components[i] is TcxGridDBTableView) then
         (Components[i] as TcxGridDBTableView).RestoreFromIniFile(Aqui(C_GRD_FILE, MD5_Str(TForm(sender).Name + (Components[i] as TcxGridDBTableView).Name) + '.grd')); //RestoreFromIniFile   // StoreToIniFile
  end;
end;

end.
