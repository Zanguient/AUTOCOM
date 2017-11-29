unit uVisual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, frxClass, frxPreview, ComCtrls, Buttons,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxButtons;

type
  TfrmVisual = class(TForm)
    bar1: TStatusBar;
    prev1: TfrxPreview;
    GB1: TPanel;
    pnlNmroPag: TPanel;
    Panel1: TPanel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    btn2: TcxButton;
    btn11: TcxButton;
    btn10: TcxButton;
    btn9: TcxButton;
    btn8: TcxButton;
    btn7: TcxButton;
    btn6: TcxButton;
    btn5: TcxButton;
    btn3: TcxButton;
    btn1: TcxButton;
    btn4: TcxButton;
    BtnFirst: TcxButton;
    btnPrior: TcxButton;
    btnNext: TcxButton;
    btnLast: TcxButton;
    btnSair: TcxButton;
    procedure btn2Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnFirstClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVisual: TfrmVisual;

implementation

uses uDM, uAutocomConsts, udm_ini;

{$R *.dfm}

procedure TfrmVisual.btn11Click(Sender: TObject);                               //BOTÕES
begin
   case TBitBtn(Sender).tag of
      0: DM.Rep1.Export(DM.pdf);
      1: DM.Rep1.Export(DM.HTML);
      2: ;//todo
      3: DM.Rep1.Export(DM.RTF);
      4: DM.Imprimir;
      5: Begin
            DM.rep1.PrintOptions.ShowDialog := true;
            DM.rep1.Print;
            //prev1.RefreshReport;
         end;
      6: DM.Rep1.Export(DM.CSV);
      7: ShowMessage(C_21); //DM.Rep1.Export(DM.mail);
      8: prev1.PageSetupDlg;
      9: DM.Rep1.Export(DM.txt);
   end;
end;

procedure TfrmVisual.btn2Click(Sender: TObject);                                //EXIBE MINIATURAS
begin
   prev1.ThumbnailVisible := not prev1.ThumbnailVisible;
end;

procedure TfrmVisual.BtnFirstClick(Sender: TObject);                            //NAVEGADOR
begin
   case TBitBtn(Sender).tag of
      0: Prev1.First;
      1: Prev1.Prior;
      2: Prev1.Next;
      3: Prev1.Last;
   end;
   pnlNmroPag.Caption := Format('%.3d', [prev1.PageNo]);
end;

procedure TfrmVisual.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmVisual.cxButton3Click(Sender: TObject);
begin
   if TBitBtn(sender).Caption = '+' then
   begin
      if prev1.Zoom >= 2 then
         prev1.Zoom := 2
      else
         prev1.Zoom := prev1.Zoom + 0.1;
   end
   else
   begin
      if prev1.Zoom <= 0.2 then
         prev1.Zoom := 0.2
      else
         prev1.Zoom := prev1.Zoom - 0.1;
   end;
   bar1.Panels[2].Text := inttostr(trunc(prev1.Zoom * 100)) + '%';
end;

procedure TfrmVisual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM_INI.INI.WriteInteger('zoom', trunc(prev1.Zoom * 100));
 //  FreeAndNil(frmVisual);
end;

procedure TfrmVisual.FormCreate(Sender: TObject);
begin
   DM.Rep1.Preview := prev1;
   prev1.Zoom := DM_INI.INI.ReadInteger('zoom', 100)/100;
   bar1.Panels[2].Text := Floattostr(prev1.Zoom * 100) + '%';
end;

procedure TfrmVisual.FormKeyDown(Sender: TObject; var Key: Word;                //TECLADO
  Shift: TShiftState);
begin
   case key of
      vk_left : BtnFirst.Click;
      vk_right: btnLast.Click;
      vk_up   : btnPrior.Click;
      vk_down : btnNext.Click;
      VK_ESCAPE: btnSair.Click;
   end;
end;

procedure TfrmVisual.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
   if prev1.Zoom <= 0.2 then
      prev1.Zoom := 0.2
   else
      prev1.Zoom := prev1.Zoom - 0.01;
   bar1.Panels[2].Text := inttostr(trunc(prev1.Zoom * 100)) + '%';
end;

procedure TfrmVisual.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
   if prev1.Zoom >= 2 then
      prev1.Zoom := 2
   else
      prev1.Zoom := prev1.Zoom + 0.01;
   bar1.Panels[2].Text := inttostr(trunc(prev1.Zoom * 100)) + '%';
end;

procedure TfrmVisual.FormShow(Sender: TObject);
begin
   if prev1.PageCount < 2 then
      bar1.Panels[0].Text := Format('%.d página', [prev1.PageCount])
   else
      bar1.Panels[0].Text := Format('%.d páginas', [prev1.PageCount]);

  bar1.Panels[1].Text := Concat('Versão ' +
                                  prev1.Report.ReportOptions.VersionMajor, '.',
                                  prev1.Report.ReportOptions.VersionMinor, '.',
                                  prev1.Report.ReportOptions.VersionRelease, '.',
                                  prev1.Report.ReportOptions.VersionBuild);

   bar1.Panels[3].Text := prev1.Report.ReportOptions.Name;
   pnlNmroPag.Caption := Format('%.3d', [prev1.PageNo]);
   bar1.Hint := prev1.Report.ReportOptions.Description.Text;
end;
                                     
end.
