inherited frmTEFMessage: TfrmTEFMessage
  Caption = 'TEF - '
  ClientHeight = 128
  ClientWidth = 403
  FormStyle = fsStayOnTop
  ExplicitWidth = 409
  ExplicitHeight = 157
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 86
    Width = 403
    Visible = False
    ExplicitTop = 86
    ExplicitWidth = 585
    inherited pnlBtnClose: TPanel
      Left = 309
      ExplicitLeft = 491
    end
    inherited pnlBase: TPanel
      Width = 308
      ExplicitWidth = 490
    end
  end
  object pMensagemOperador: TPanel [2]
    Left = 0
    Top = 0
    Width = 403
    Height = 41
    Align = alTop
    Caption = 'pMensagemOperador'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 585
  end
  object pMensagemCliente: TPanel [3]
    Left = 0
    Top = 41
    Width = 403
    Height = 41
    Align = alTop
    Caption = 'pMensagemCliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    ExplicitWidth = 585
  end
end
