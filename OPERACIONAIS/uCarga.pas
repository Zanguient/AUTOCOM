unit uCarga;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData,
  cxContainer, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, uADCompClient,
  Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxNavigator, cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls,
  cxMemo, cxProgressBar;

type
  TfrmCarga = class(TfrmCad)
    tbvid: TcxGridDBColumn;
    tbvterminal: TcxGridDBColumn;
    tbvpath: TcxGridDBColumn;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    btnCargaFull: TcxButton;
    cxTabSheet1: TcxTabSheet;
    grdCfull: TcxGrid;
    tbvCfull: TcxGridDBTableView;
    LvCfull: TcxGridLevel;
    Panel2: TPanel;
    cxLabel2: TcxLabel;
    ds2: TDataSource;
    tbvCfullid: TcxGridDBColumn;
    tbvCfullnome_arq: TcxGridDBColumn;
    tbvCfullscript: TcxGridDBColumn;
    Bar2: TcxProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure btnCargaFullClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarga: TfrmCarga;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM;

procedure TfrmCarga.btnCargaFullClick(Sender: TObject);
var
  i, ARowIndex: integer;
  s, s1: string;
  ARowInfo: TcxRowInfo;
begin

  with tbv.DataController do
  begin
    bar2.Properties.Max := GetSelectedCount;
    bar2.Position := 0;
    bar2.Show;

    for i := 0 to Pred(GetSelectedCount) do
    begin
      ARowIndex := GetSelectedRowIndex(i); // retorna o índice da linha selecionada
      ARowInfo  := GetRowInfo(ARowIndex); // retorna informação da linha selecionada
      s1        := (VarToStr(Values[ARowInfo.RecordIndex, tbvterminal.index]));
      bar2.Position := i+1;
      Application.ProcessMessages;
      if s1 <> 'COMUM' then
         DM.Carga_Full(s1); //gera o arquivo na pasta do terminal
    end;
  end;
  bar2.Hide;
  ShowMessage(C_25);
end;

procedure TfrmCarga.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'AUTOCOM GERENCIAL ' + C_117;
   DM.QCarga.Open;
   DM.QCargaFull.Open;
end;

procedure TfrmCarga.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case pgCad.ActivePageIndex of
      1: inherited;
      2: case key of
            VK_F5: DS2.DataSet.Append;
            VK_F6: DS2.DataSet.Delete;
            VK_F7: DS2.DataSet.Edit;
            VK_F8: DS2.DataSet.Post;
            VK_F9: DS2.DataSet.Cancel;
      end;
   end;
end;

end.
