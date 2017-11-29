unit uParcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData,
  cxContainer, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, Vcl.StdCtrls,
  cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxNavigator, cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls;

type
  TfrmParcelas = class(TfrmCad)
    tbvid: TcxGridDBColumn;
    tbvdias: TcxGridDBColumn;
    tbvpc_juros: TcxGridDBColumn;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    tbvplano: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParcelas: TfrmParcelas;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, uMD5Print, uParcelamento;

procedure TfrmParcelas.btnResetClick(Sender: TObject);
begin
  //inherited;
   frmParcelamento := TfrmParcelamento.Create(Self);
   frmParcelamento.edValor.Value := 1000;
   frmParcelamento.Tipo_Movi     := 'X';
   frmParcelamento.id_cli        := 2;
   frmParcelamento.id_movim      := 0;
   frmParcelamento.nmro_doc      := 'TESTE01';
   frmParcelamento.ShowModal;
end;

procedure TfrmParcelas.FormCreate(Sender: TObject);
begin
   inherited;
   CAPTION := 'COMPOSIÇÃO DE PARCELAMENTO' + C_117;
   dm.QParcelas.Open('select * from finan_parcelas order by plano');
end;

end.
