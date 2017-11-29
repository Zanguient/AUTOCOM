unit uDic_NF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, cxClasses, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls, cxMemo, cxDBEdit;

type
  TfrmDic_NF = class(TfrmCad)
    mmDic: TcxDBMemo;
    tbvID: TcxGridDBColumn;
    tbvTEXTO: TcxGridDBColumn;
    procedure dbNavButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure edPesqEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDic_NF: TfrmDic_NF;
  coluna : TcxGridDBColumn;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmDic_NF.dbNavButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
   inherited;
   mmDic.SetFocus;
end;

procedure TfrmDic_NF.edPesqEnter(Sender: TObject);
begin
 // inherited;

end;

procedure TfrmDic_NF.edPesqPropertiesChange(Sender: TObject);
begin
   inherited;
   if DS1.DataSet.Active then
      DS1.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
end;

procedure TfrmDic_NF.FormCreate(Sender: TObject);
begin
   inherited;
   DS1.DataSet.Open;
   DS1.DataSet.Last;
end;

end.
