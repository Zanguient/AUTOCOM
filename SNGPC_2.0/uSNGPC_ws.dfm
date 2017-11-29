object frm_ws: Tfrm_ws
  Left = 0
  Top = 0
  Hint = 'M'#211'DULO COMUNICA'#199#195'O SNGPC'
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'M'#211'DULO COMUNICA'#199#195'O SNGPC'
  ClientHeight = 188
  ClientWidth = 657
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 389
    Top = 0
    Width = 268
    Height = 188
    Align = alRight
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 34
      Height = 13
      Caption = 'E-MAIL'
    end
    object Label2: TLabel
      Left = 8
      Top = 46
      Width = 33
      Height = 13
      Caption = 'SENHA'
    end
    object Label3: TLabel
      Left = 8
      Top = 84
      Width = 94
      Height = 13
      Caption = 'ASSINATURA HASH'
    end
    object Edit1: TcxTextEdit
      Left = 6
      Top = 20
      ParentFont = False
      TabOrder = 0
      Width = 236
    end
    object Edit2: TcxTextEdit
      Left = 6
      Top = 61
      ParentFont = False
      Properties.EchoMode = eemPassword
      TabOrder = 1
      Width = 79
    end
    object Edit3: TcxTextEdit
      Left = 6
      Top = 98
      ParentFont = False
      TabOrder = 5
      Width = 259
    end
    object btnEnviar: TcxButton
      Left = 87
      Top = 136
      Width = 75
      Height = 37
      Caption = 'Enviar'
      TabOrder = 2
      OnClick = btnEnviarClick
    end
    object Button3: TcxButton
      Left = 190
      Top = 136
      Width = 75
      Height = 37
      Caption = 'Fechar'
      TabOrder = 4
      OnClick = Button3Click
    end
    object Button4: TcxButton
      Left = 91
      Top = 57
      Width = 87
      Height = 25
      Caption = 'Validar Usuario'
      TabOrder = 6
      OnClick = Button4Click
    end
    object Button2: TcxButton
      Left = 6
      Top = 136
      Width = 75
      Height = 37
      Caption = 'Consultar'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 389
    Height = 188
    Align = alClient
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object XMLDocument1: TXMLDocument
    Left = 188
    Top = 20
    DOMVendorDesc = 'MSXML'
  end
  object Ini: TFormStorage
    Options = []
    StoredProps.Strings = (
      'Edit1.Text')
    StoredValues = <>
    Left = 40
    Top = 16
  end
  object EnterTab: TACBrEnterTab
    EnterAsTab = True
    Left = 256
    Top = 24
  end
end
