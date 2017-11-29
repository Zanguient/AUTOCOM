inherited frmInut: TfrmInut
  Caption = 'Inutilizar Numera'#231#227'o'
  ClientHeight = 161
  ClientWidth = 452
  FormStyle = fsStayOnTop
  ExplicitWidth = 458
  ExplicitHeight = 190
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 9
    Top = 3
    Width = 68
    Height = 15
    Caption = 'Justificativa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 9
    Top = 45
    Width = 25
    Height = 15
    Caption = 'Mod.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 48
    Top = 45
    Width = 20
    Height = 15
    Caption = 'Ano'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 87
    Top = 45
    Width = 29
    Height = 15
    Caption = 'S'#233'rie'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 126
    Top = 45
    Width = 52
    Height = 15
    Caption = 'N'#186' Inicial'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 224
    Top = 45
    Width = 42
    Height = 15
    Caption = 'N'#186' Final'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object edJustificativa: TEdit [6]
    Left = 8
    Top = 18
    Width = 433
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 6
  end
  object edModelo: TCurrencyEdit [7]
    Left = 7
    Top = 62
    Width = 34
    Height = 23
    Margins.Left = 4
    Margins.Top = 1
    DecimalPlaces = 0
    DisplayFormat = '00'
    TabOrder = 7
    Value = 55.000000000000000000
  end
  object edAno: TCurrencyEdit [8]
    Left = 46
    Top = 62
    Width = 34
    Height = 23
    Margins.Left = 4
    Margins.Top = 1
    DecimalPlaces = 0
    DisplayFormat = '0000'
    TabOrder = 2
    Value = 2012.000000000000000000
  end
  object edSerie: TCurrencyEdit [9]
    Left = 85
    Top = 62
    Width = 34
    Height = 23
    Margins.Left = 4
    Margins.Top = 1
    DecimalPlaces = 0
    DisplayFormat = '000'
    TabOrder = 3
    Value = 1.000000000000000000
  end
  object EdIni: TCurrencyEdit [10]
    Left = 124
    Top = 62
    Width = 93
    Height = 23
    Margins.Left = 4
    Margins.Top = 1
    DecimalPlaces = 0
    DisplayFormat = '000'
    TabOrder = 4
  end
  object edFim: TCurrencyEdit [11]
    Left = 222
    Top = 62
    Width = 93
    Height = 23
    Margins.Left = 4
    Margins.Top = 1
    DecimalPlaces = 0
    DisplayFormat = '000'
    TabOrder = 5
    OnChange = edFimChange
  end
  object bar1: TStatusBar [12]
    Left = 0
    Top = 142
    Width = 452
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  inherited TPA: TPanel
    Top = 100
    Width = 452
    ExplicitTop = 100
    ExplicitWidth = 452
    inherited pnlBtnClose: TPanel
      Left = 358
      ExplicitLeft = 358
    end
    inherited pnlBase: TPanel
      Width = 357
      ExplicitWidth = 357
      object btnmailcancelar: TcxButton
        AlignWithMargins = True
        Left = 3
        Top = 6
        Width = 141
        Height = 24
        Margins.Top = 6
        Margins.Bottom = 6
        Align = alLeft
        Caption = 'CANCELAR'
        ModalResult = 2
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 0
        TabStop = False
      end
      object btnok: TcxButton
        AlignWithMargins = True
        Left = 150
        Top = 6
        Width = 141
        Height = 24
        Margins.Top = 6
        Margins.Bottom = 6
        Align = alLeft
        Caption = 'ENVIAR'
        Enabled = False
        ModalResult = 1
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 1
        TabStop = False
      end
    end
  end
  inherited ini: TFormStorage
    Left = 356
  end
  inherited FR: TFormResizer
    Left = 296
  end
  inherited EnterTab: TACBrEnterTab
    Left = 404
  end
end
