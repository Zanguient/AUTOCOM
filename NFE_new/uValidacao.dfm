inherited frmValidacao: TfrmValidacao
  Caption = 'Valida'#231#227'o de informa'#231#245'es'
  ClientHeight = 358
  ClientWidth = 565
  ExplicitWidth = 571
  ExplicitHeight = 387
  PixelsPerInch = 96
  TextHeight = 15
  object ListaErros: TListBox [0]
    Left = 0
    Top = 0
    Width = 565
    Height = 316
    Align = alClient
    Color = 8454143
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -9
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 2
  end
  inherited TPA: TPanel
    Top = 316
    Width = 565
    ExplicitTop = 316
    ExplicitWidth = 565
    inherited pnlBtnClose: TPanel
      Left = 471
      ExplicitLeft = 471
    end
    inherited pnlBase: TPanel
      Width = 470
      ExplicitWidth = 470
      object lblerro: TLabel
        Left = 12
        Top = 11
        Width = 34
        Height = 15
        Caption = 'lblerro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  inherited ini: TFormStorage
    Left = 252
    Top = 48
  end
  inherited FR: TFormResizer
    Left = 136
    Top = 48
  end
  inherited EnterTab: TACBrEnterTab
    Left = 316
  end
end
