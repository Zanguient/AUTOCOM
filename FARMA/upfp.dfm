inherited frmpfp: Tfrmpfp
  ActiveControl = edData
  Caption = 'PFP - DADOS DA RECEITA'
  ClientHeight = 236
  ClientWidth = 276
  ExplicitWidth = 282
  ExplicitHeight = 265
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 6
    Top = 0
    Width = 102
    Height = 15
    Margins.Bottom = 0
    Caption = 'DATA DA RECEITA'
    FocusControl = edData
  end
  object Label2: TLabel [1]
    Left = 156
    Top = 2
    Width = 24
    Height = 15
    Margins.Bottom = 0
    Caption = 'CRM'
    FocusControl = cmb1
  end
  object Label3: TLabel [2]
    Left = 124
    Top = 2
    Width = 14
    Height = 15
    Margins.Bottom = 0
    Caption = 'UF'
    FocusControl = eduf
  end
  object Label4: TLabel [3]
    Left = 58
    Top = 53
    Width = 139
    Height = 13
    Margins.Bottom = 0
    Caption = 'DADOS DO BENEFICI'#193'RIO'
    FocusControl = eduf
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 69
    Width = 19
    Height = 15
    Margins.Bottom = 0
    Caption = 'CPF'
    FocusControl = eduf
  end
  object Label6: TLabel [5]
    Left = 4
    Top = 106
    Width = 99
    Height = 15
    Margins.Bottom = 0
    Caption = 'NOME COMPLETO'
  end
  object Label7: TLabel [6]
    Left = 4
    Top = 146
    Width = 61
    Height = 15
    Margins.Bottom = 0
    Caption = 'ENDERE'#199'O'
  end
  inherited TPA: TPanel
    Top = 194
    Width = 276
    TabOrder = 8
    ExplicitTop = 194
    ExplicitWidth = 276
    inherited pnlBtnClose: TPanel
      Left = 182
      TabOrder = 1
      ExplicitLeft = 182
    end
    inherited pnlBase: TPanel
      Width = 181
      TabOrder = 0
      ExplicitWidth = 181
      object btnF3: TcxButton
        AlignWithMargins = True
        Left = 96
        Top = 2
        Width = 85
        Height = 32
        Margins.Left = 0
        Margins.Top = 2
        Margins.Right = 0
        Margins.Bottom = 2
        Align = alRight
        Caption = 'OK'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = True
        OptionsImage.Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        OnClick = btnF3Click
      end
      object btnDigi: TcxButton
        AlignWithMargins = True
        Left = 0
        Top = 2
        Width = 86
        Height = 32
        Margins.Left = 0
        Margins.Top = 2
        Margins.Right = 0
        Margins.Bottom = 2
        Align = alLeft
        Caption = 'DIGITALIZAR'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = True
        OptionsImage.Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        OnClick = btnDigiClick
      end
    end
  end
  inherited Edit1: TEdit
    TabOrder = 0
  end
  object edData: TcxDateEdit [9]
    Left = 6
    Top = 16
    Properties.DateButtons = []
    Properties.ShowTime = False
    TabOrder = 1
    Width = 113
  end
  object eduf: TcxTextEdit [10]
    Left = 124
    Top = 16
    Properties.CharCase = ecUpperCase
    TabOrder = 2
    Width = 26
  end
  object ednome: TcxTextEdit [11]
    Left = 4
    Top = 124
    Properties.CharCase = ecUpperCase
    TabOrder = 6
    OnEnter = ednomeEnter
    Width = 265
  end
  object edend: TcxTextEdit [12]
    Left = 4
    Top = 164
    Properties.CharCase = ecUpperCase
    TabOrder = 7
    Width = 265
  end
  object edcpf: TcxMaskEdit [13]
    Left = 6
    Top = 83
    Properties.EditMask = '000\.000\.000-00;0;_'
    TabOrder = 4
    Text = '           '
    Width = 121
  end
  object cmb1: TcxComboBox [14]
    Left = 156
    Top = 16
    TabOrder = 3
    OnEnter = cmb1Enter
    OnKeyPress = cmb1KeyPress
    Width = 113
  end
  object Button1: TcxButton [15]
    Left = 133
    Top = 85
    Width = 30
    Height = 20
    Hint = 'Abrir cadastro de clientes'
    Caption = '>>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    TabStop = False
    OnClick = Button1Click
  end
  inherited ini: TFormStorage
    Left = 312
    Top = 24
  end
  inherited FR: TFormResizer
    Left = 304
    Top = 136
  end
  inherited EnterTab: TACBrEnterTab
    Left = 304
    Top = 72
  end
end
