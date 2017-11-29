unit uFPag;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxCheckBox, cxDropDownEdit;

type
  TfrmFPgto = class(TfrmCad)
    Panel4: TPanel;
    cxLabel1: TcxLabel;
    tbvColumn1: TcxGridDBColumn;
    tbvColumn2: TcxGridDBColumn;
    tbvColumn3: TcxGridDBColumn;
    tbvColumn4: TcxGridDBColumn;
    tbvColumn5: TcxGridDBColumn;
    tbvColumn6: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFPgto: TfrmFPgto;

implementation

{$R *.dfm}

uses uDM_PDV;

procedure TfrmFPgto.FormShow(Sender: TObject);
begin
   inherited;
   DM_PDV.TFPag.Open;
   tbv.DataController.ChangeFieldName(0, 'id');
   tbv.DataController.ChangeFieldName(1, 'descr');
   tbv.DataController.ChangeFieldName(2, 'aprazo');
   tbv.DataController.ChangeFieldName(3, 'tipo');
   tbv.DataController.ChangeFieldName(4, 'indice_tef');
   tbv.DataController.ChangeFieldName(5, 'uso');
end;

end.
