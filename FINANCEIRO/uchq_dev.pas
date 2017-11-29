unit uchq_dev;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer,
  cxEdit, cxMemo, cxDBEdit, cxLabel, cxDBLabel, Data.DB, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, FireDAC.Comp.Client,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmChqDev = class(Tfrm)
    DS1: TDataSource;
    btnOk: TcxButton;
    GRD1: TcxGrid;
    tbv1: TcxGridDBTableView;
    lv1: TcxGridLevel;
    tbv1id: TcxGridDBColumn;
    tbv1alinea: TcxGridDBColumn;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbv1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChqDev: TfrmChqDev;

implementation

{$R *.dfm}

uses uDM, uLanca_chq_terc;

procedure TfrmChqDev.btnOkClick(Sender: TObject);
begin
   DM.Qfinan_ch_terc.Edit;
   DM.Qfinan_ch_tercdt_baixa.Value  := frmLanca_chq_terc.dtBx.Date;
   DM.Qfinan_ch_tercstatus.Value    := 'A';
   DM.Qfinan_ch_tercalinea.AsString := 'ALÍNEA ' + DM.QFinan_ch_alineaid.AsString + ' ' +  DM.QFinan_ch_alineaalinea.AsString;
   DM.Qfinan_ch_terc.Post;
   //gera o extorno na conta
   DM.Inserir_Movi_Banco(DM.Qfinan_ch_tercid.Value,
                         DM.Qfinan_ch_tercconta_depos.Value,
                         'ECD',
                         'D',
                         DM.Qfinan_ch_tercvalor.Value,
                         frmLanca_chq_terc.dtBx.Date,
                         'CHQ-' + DM.Qfinan_ch_tercnmro.AsString + '/' + DM.Qfinan_ch_tercconta.AsString,
                         'Devolvido ALÍN. ' +
                          DM.QFinan_ch_alineaid.AsString + ' - ' +
                          DM.Qfinan_ch_tercnome_dono.AsString + ', Port.: ' +
                          DM.Qfinan_ch_tercnome_portador.AsString

   );
   DM.Qfinan_ch_terc.Refresh;
   btnSair.Click;
end;

procedure TfrmChqDev.FormCreate(Sender: TObject);
begin
   inherited;
   DM.QFinan_ch_alinea.Open;
end;

procedure TfrmChqDev.tbv1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btnOk.Enabled := not DM.QFinan_ch_alinea.IsEmpty;
end;

end.
