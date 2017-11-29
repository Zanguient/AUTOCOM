inherited frmMsg: TfrmMsg
  AutoSize = True
  Caption = 'COMUNICA'#199#195'O COM O ECF'
  ClientHeight = 90
  FormStyle = fsStayOnTop
  Position = poDesktopCenter
  Visible = True
  ExplicitWidth = 608
  ExplicitHeight = 119
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 48
    Visible = False
    ExplicitTop = 48
    inherited pnlBtnClose: TPanel
      Visible = False
      inherited btnSair: TcxButton
        Visible = False
      end
    end
    inherited pnlBase: TPanel
      Font.Height = -13
      ParentFont = False
    end
  end
  object pnlMsg: TPanel [2]
    Left = 0
    Top = 0
    Width = 602
    Height = 48
    Align = alTop
    Caption = '---'
    TabOrder = 2
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 136
  end
end
