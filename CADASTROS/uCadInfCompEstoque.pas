unit uCadInfCompEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxCheckBox, cxImageComboBox;

type
  TfrmCadInfCompEstoque = class(TfrmCad)
    tbvid: TcxGridDBColumn;
    tbvcst: TcxGridDBColumn;
    tbvicms_pc: TcxGridDBColumn;
    tbvreduzir: TcxGridDBColumn;
    tbvtexto: TcxGridDBColumn;
    Panel4: TPanel;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadInfCompEstoque: TfrmCadInfCompEstoque;

implementation

{$R *.dfm}

uses uDM, uAutocomConsts;

procedure TfrmCadInfCompEstoque.FormShow(Sender: TObject);
var
   i: integer;
    Items: TcxImageComboBoxItems;
    Item : TcxImageComboBoxItem;
begin
   inherited;
   DM.QInfo_compl.Open;
   //preenche o combo da grid
   Items := (tbvcst.Properties AS TcxImageComboBoxProperties).Items;

   for i := low(C_ARR_5) to High(C_ARR_5) do
   begin
      Item := Items.Add as TcxImageComboBoxItem;
      with Item do
      begin
         Description := C_ARR_5[i];
         Value       := i;
      end;
   end;
end;

end.
