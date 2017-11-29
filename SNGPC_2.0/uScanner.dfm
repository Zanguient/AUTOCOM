object frmScanner: TfrmScanner
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'VISUALIZADOR SCANNER'
  ClientHeight = 528
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 367
    Height = 468
    Align = alClient
    Center = True
    Stretch = True
    ExplicitLeft = 8
    ExplicitTop = 44
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object Bar1: TStatusBar
    Left = 0
    Top = 509
    Width = 367
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'Clique em Iniciar'
  end
  object Panel1: TPanel
    Left = 0
    Top = 468
    Width = 367
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnSalvar: TcxButton
      AlignWithMargins = True
      Left = 235
      Top = 4
      Width = 61
      Height = 33
      Align = alRight
      Caption = 'SALVAR'
      Enabled = False
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnFechar: TcxButton
      AlignWithMargins = True
      Left = 302
      Top = 4
      Width = 61
      Height = 33
      Align = alRight
      Caption = 'CANCELAR'
      TabOrder = 1
      OnClick = btnFecharClick
    end
    object btnIniciar: TcxButton
      AlignWithMargins = True
      Left = 168
      Top = 4
      Width = 61
      Height = 33
      Align = alRight
      Caption = 'INICIAR'
      TabOrder = 2
      OnClick = btnIniciarClick
    end
  end
  object Twain: TDelphiTwain
    OnTwainAcquire = TwainTwainAcquire
    TransferMode = ttmMemory
    SourceCount = 0
    Info.MajorVersion = 1
    Info.MinorVersion = 0
    Info.Language = tlUserLocale
    Info.CountryCode = 1
    Info.Groups = [tgControl, tgImage]
    Info.VersionInfo = 'A'
    Info.Manufacturer = 'A'
    Info.ProductFamily = 'A'
    Info.ProductName = 'A'
    LibraryLoaded = False
    SourceManagerLoaded = False
    Left = 168
    Top = 160
  end
end
