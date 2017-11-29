inherited frmProdNotFound: TfrmProdNotFound
  Caption = 'ATEN'#199#195'O'
  ClientHeight = 398
  ClientWidth = 596
  FormStyle = fsStayOnTop
  ExplicitWidth = 602
  ExplicitHeight = 427
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 356
    Width = 596
    Visible = False
    inherited pnlBtnClose: TPanel
      Left = 502
    end
    inherited pnlBase: TPanel
      Width = 501
    end
  end
  object cxLabel1: TcxLabel [2]
    Left = 0
    Top = 0
    Align = alClient
    Caption = 
      'PRODUTO/SERVI'#199'O N'#195'O ENCONTRADO. TECLE A BARRA DE ESPA'#199'O PARA PRO' +
      'SSEGUIR'
    ParentColor = False
    ParentFont = False
    Style.Color = clRed
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -48
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = [fsBold]
    Style.Shadow = False
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Properties.Depth = 2
    Properties.LabelEffect = cxleExtrude
    Properties.LabelStyle = cxlsOutLine
    Properties.ShadowedColor = clWhite
    Properties.WordWrap = True
    ExplicitLeft = 248
    ExplicitTop = 192
    ExplicitWidth = 49
    ExplicitHeight = 19
    Width = 596
    AnchorX = 298
    AnchorY = 178
  end
  inherited FR: TFormResizer
    Left = 8
    Top = 72
  end
  inherited EnterTab: TACBrEnterTab
    Left = 8
    Top = 128
  end
end
