inherited frmprogress: Tfrmprogress
  Caption = 'PROGRESSO'
  ClientHeight = 42
  ClientWidth = 410
  FormStyle = fsStayOnTop
  ExplicitWidth = 416
  ExplicitHeight = 71
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 0
    Width = 410
    inherited pnlBtnClose: TPanel
      Left = 316
      Visible = False
    end
    inherited pnlBase: TPanel
      Width = 315
      object bar1: TcxProgressBar
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 168
        ExplicitTop = 24
        ExplicitWidth = 121
        ExplicitHeight = 23
        Width = 309
      end
    end
  end
end
