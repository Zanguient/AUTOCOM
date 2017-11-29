inherited frmAbreDia: TfrmAbreDia
  Caption = 'CAIXA'
  ClientHeight = 164
  ClientWidth = 430
  ExplicitWidth = 436
  ExplicitHeight = 192
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 75
    Width = 430
    Height = 69
    ExplicitTop = 75
    ExplicitWidth = 430
    ExplicitHeight = 69
    inherited pnlBtnClose: TPanel
      Left = 336
      Height = 63
      ExplicitLeft = 336
      ExplicitHeight = 63
      inherited btnSair: TcxButton
        Height = 57
        Caption = 'ESC - SAIR'
        ExplicitHeight = 57
      end
    end
    inherited pnlBase: TPanel
      Width = 335
      Height = 63
      ExplicitWidth = 335
      ExplicitHeight = 63
      object edValor: TcxCurrencyEdit
        Left = 55
        Top = 2
        Enabled = False
        Properties.OnChange = edValorPropertiesChange
        TabOrder = 0
        Width = 115
      end
      object btnOK: TcxButton
        AlignWithMargins = True
        Left = 254
        Top = 3
        Width = 78
        Height = 57
        Align = alRight
        Caption = 'F11 - OK'
        Enabled = False
        TabOrder = 2
        OnClick = btnOKClick
      end
      object cxLabel1: TcxLabel
        Left = 22
        Top = 3
        Caption = 'Valor'
      end
      object cxLabel2: TcxLabel
        Left = 6
        Top = 39
        Caption = 'Observ.:'
      end
      object edObs: TcxTextEdit
        Left = 53
        Top = 37
        Properties.CharCase = ecUpperCase
        TabOrder = 1
        Width = 199
      end
      object pnlF3: TPanel
        Left = 0
        Top = 0
        Width = 253
        Height = 63
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 5
        Visible = False
        object Label1: TLabel
          Left = 6
          Top = 14
          Width = 150
          Height = 31
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Corrigir o Rel'#243'gio do ECF em:'#13#10'(Minutos)'
          WordWrap = True
        end
        object cmbMin: TdxImageComboBox
          Left = 170
          Top = 19
          Width = 73
          Height = 22
          Alignment = taLeftJustify
          ImageAlign = dxliLeft
          ItemHeight = 0
          MultiLines = False
          VertAlignment = tvaCenter
          Ctl3D = False
          Items.Strings = (
            '+ 5'
            '+ 4'
            '+ 3'
            '+ 2'
            '+ 1'
            ' 0'
            '- 1'
            '- 2'
            '- 3'
            '- 4'
            '- 5')
          ParentCtl3D = False
          TabOrder = 0
          SaveStrings = (
            '-1,5'
            ''
            ''
            ''
            ''
            '-1,0'
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            ''
            '')
        end
      end
    end
  end
  object bar1: TdxStatusBar [2]
    Left = 0
    Top = 144
    Width = 430
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object rg1: TcxRadioGroup [3]
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Escolha uma op'#231#227'o'
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'F2 - ABERTURA DO DIA'
      end
      item
        Caption = 'F3 - ENCERRAMENTO DO DIA'
      end
      item
        Caption = 'F4 - SUPRIMENTO'
      end
      item
        Caption = 'F5 - SANGRIA'
      end
      item
        Caption = 'F6 - TROCA DE TURNO'
      end
      item
        Caption = 'F7 - CONSULTA MOVIMENTO'
      end>
    TabOrder = 3
    OnClick = rg1Click
    Height = 74
    Width = 430
  end
  inherited ini: TFormStorage
    Left = 392
  end
  inherited FR: TFormResizer
    Left = 396
    Top = 112
  end
  inherited EnterTab: TACBrEnterTab
    Left = 396
    Top = 52
  end
end
