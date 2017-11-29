inherited frmStatus: TfrmStatus
  Caption = 'WebService'
  ClientHeight = 219
  ClientWidth = 449
  ExplicitWidth = 455
  ExplicitHeight = 248
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 449
    Height = 177
    Align = alClient
    BevelKind = bkSoft
    BevelWidth = 6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Lbl1: TRxLabel
      Left = 6
      Top = 6
      Width = 433
      Height = 14
      Align = alTop
      Alignment = taCenter
      Caption = 'WEBSERVICE        AGUARDE...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExplicitWidth = 184
    end
    object LBlStatus: TRxLabel
      Left = 6
      Top = 20
      Width = 433
      Height = 14
      Align = alTop
      Caption = '- - - - - - -'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ExplicitWidth = 54
    end
    object RxLabel1: TRxLabel
      Left = 6
      Top = 153
      Width = 433
      Height = 14
      Align = alBottom
      Alignment = taCenter
      Caption = 'PARADIGMA T.I.  www.paradigmati.com.br Vers'#227'o 1.1.1.3'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Layout = tlCenter
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ExplicitTop = 195
      ExplicitWidth = 324
    end
    object mmLog: TMemo
      Left = 6
      Top = 34
      Width = 433
      Height = 119
      Align = alClient
      Color = 9029061
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited TPA: TPanel
    Top = 177
    Width = 449
    Visible = False
    ExplicitTop = 177
    ExplicitWidth = 449
    inherited pnlBtnClose: TPanel
      Left = 355
      ExplicitLeft = 355
    end
    inherited pnlBase: TPanel
      Width = 354
      ExplicitWidth = 354
    end
  end
end
