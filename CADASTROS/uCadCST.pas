unit uCadCST;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, ACBrBase,
  ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls, cxLabel, cxTextEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, cxPC,
  dxStatusBar, cxButtons, Vcl.ExtCtrls, cxCheckBox, FireDAC.Comp.Client;

type
  TfrmCadCST = class(TfrmCad)
    Panel4: TPanel;
    cxLabel1: TcxLabel;
    tabipi: TcxTabSheet;
    tabpis: TcxTabSheet;
    tabcofins: TcxTabSheet;
    gipi: TcxGrid;
    tbvipi: TcxGridDBTableView;
    lvipi: TcxGridLevel;
    tbvipiid: TcxGridDBColumn;
    tbvipicst: TcxGridDBColumn;
    tbvipinome: TcxGridDBColumn;
    tbvipiacbr: TcxGridDBColumn;
    tbvipidestaca_valor: TcxGridDBColumn;
    gpis: TcxGrid;
    tbvpis: TcxGridDBTableView;
    lvpis: TcxGridLevel;
    tbvpisid: TcxGridDBColumn;
    tbvpiscst: TcxGridDBColumn;
    tbvpisnome: TcxGridDBColumn;
    tbvpisacbr: TcxGridDBColumn;
    tbvpisdestaca_valor: TcxGridDBColumn;
    gcofins: TcxGrid;
    tbvcofins: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    lvcofins: TcxGridLevel;
    tbvid: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvacbr: TcxGridDBColumn;
    tbvcst: TcxGridDBColumn;
    tbvst: TcxGridDBColumn;
    tbvSimplesNacional: TcxGridDBColumn;
    CheckBox1: TCheckBox;
    procedure TabPesqShow(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbvcstHeaderClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCST: TfrmCadCST;
  coluna : TcxGridDBColumn;

implementation

{$R *.dfm}

uses uDM, uFuncoes;

procedure TfrmCadCST.CheckBox1Click(Sender: TObject);
begin
   if TCheckBox(sender).Checked then
   begin
      DS1.DataSet    := DM.QCSOSN;
   end
   else
   begin
      DS1.DataSet    := DM.QCST;
   end;
end;

procedure TfrmCadCST.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QCST.Open;
   DM.QCSOSN.Open;
   DM.QCSTIPI.Open;
   DM.QCSTPIS.Open;
   DM.QCSTCOFINS.Open;
end;

procedure TfrmCadCST.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case pgCad.ActivePageIndex of
      1: inherited;
      2: case key of
            VK_F5: DM.DSIPI.DataSet.Append;
            VK_F6: DM.DSIPI.DataSet.Delete;
            VK_F7: DM.DSIPI.DataSet.Edit;
            VK_F8: DM.DSIPI.DataSet.Post;
            VK_F9: DM.DSIPI.DataSet.Cancel;
      end;
      3: case key of
            VK_F5: DM.DSPIS.DataSet.Append;
            VK_F6: DM.DSPIS.DataSet.Delete;
            VK_F7: DM.DSPIS.DataSet.Edit;
            VK_F8: DM.DSPIS.DataSet.Post;
            VK_F9: DM.DSPIS.DataSet.Cancel;
      end;
      4: case key of
            VK_F5: DM.DSCOFINS.DataSet.Append;
            VK_F6: DM.DSCOFINS.DataSet.Delete;
            VK_F7: DM.DSCOFINS.DataSet.Edit;
            VK_F8: DM.DSCOFINS.DataSet.Post;
            VK_F9: DM.DSCOFINS.DataSet.Cancel;
      end;
   end;
end;

procedure TfrmCadCST.FormShow(Sender: TObject);
begin
   inherited;
   pgCad.ActivePage := TabPesq;
   TabCad.TabVisible := False;
end;

procedure TfrmCadCST.TabPesqShow(Sender: TObject);
begin
//  inherited;
end;

procedure TfrmCadCST.tbvcstHeaderClick(Sender: TObject);
begin
  coluna := TcxGridDBColumn(Sender);
  (DS1.DataSet as TFDQuery).IndexFieldNames := coluna.DataBinding.FieldName;
end;

end.
