unit uAnalise;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, cxButtons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmDados = class(Tfrm)
    cmb1: TComboBox;
    Button1: TButton;
    DS1: TDataSource;
    DS2: TDataSource;
    CheckBox1: TCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    DBGrid8: TDBGrid;
    DBGrid9: TDBGrid;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    Splitter5: TSplitter;
    Splitter6: TSplitter;
    Splitter7: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cmb1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDados: TfrmDados;

implementation

{$R *.dfm}

uses uDM_PDV, uFuncoes;

procedure TfrmDados.Button1Click(Sender: TObject);
begin
   DS1.DataSet := nil;
   ds2.DataSet := nil;

   if cmb1.Text <> '' then
   begin
      if (cmb1.Text = 'TVenda') or (cmb1.Text = 'TVenda_Item') then
      begin
         ds1.DataSet := DM_PDV.TVenda;
         ds2.DataSet := DM_PDV.TVenda_Item;
      end
      else
      ds1.DataSet := TFDQuery(DM_PDV.FindComponent(cmb1.Text));
   end;

   if ds1.DataSet <> nil then
      ds1.DataSet.Open;
   if ds2.DataSet <> nil then
      ds2.DataSet.Open;
end;

procedure TfrmDados.CheckBox1Click(Sender: TObject);
begin
   ds1.DataSet.Filtered := CheckBox1.Checked;
end;

procedure TfrmDados.cmb1Click(Sender: TObject);
begin
   if ds1.DataSet <> nil then
      ds1.DataSet.Close;
   if ds2.DataSet <> nil then
      ds2.DataSet.Close;
end;

procedure TfrmDados.FormCreate(Sender: TObject);
var
   i: integer;
begin
  inherited;

  for i := 0 to Pred(DM_PDV.ComponentCount) do
  begin
     if (DM_PDV.Components[i] is TFDQuery) then
        cmb1.Items.Append((DM_PDV.Components[i] as TFDQuery).Name);
  end;
end;

procedure TfrmDados.TabSheet2Show(Sender: TObject);
begin
   DM_PDV.TPAF_R01.Open;
   DM_PDV.TPAF_R02.Open;
   DM_PDV.TPAF_R03.Open;
   DM_PDV.TPAF_R04.Open;
   DM_PDV.TPAF_R05.Open;
   DM_PDV.TPAF_R06.Open;
   DM_PDV.TPAF_R07.Open;
end;

end.
