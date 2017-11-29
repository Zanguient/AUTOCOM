inherited frmManu: TfrmManu
  Caption = 'Manuten'#231#227'o - Integridade'
  ClientHeight = 464
  ClientWidth = 727
  ExplicitWidth = 733
  ExplicitHeight = 492
  PixelsPerInch = 96
  TextHeight = 15
  object DirList: TDirectoryListBox [0]
    Left = 0
    Top = 0
    Width = 145
    Height = 422
    Align = alLeft
    TabOrder = 3
    OnMouseUp = DirListMouseUp
  end
  object Panel2: TPanel [1]
    Left = 145
    Top = 0
    Width = 582
    Height = 422
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object ListArq: TListBox
      Left = 1
      Top = 1
      Width = 580
      Height = 97
      Align = alTop
      ItemHeight = 15
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 1
      Top = 98
      Width = 580
      Height = 323
      TabStop = False
      Align = alClient
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  inherited TPA: TPanel
    Top = 422
    Width = 727
    ExplicitTop = 422
    ExplicitWidth = 727
    inherited pnlBtnClose: TPanel
      Left = 633
      ExplicitLeft = 633
    end
    inherited pnlBase: TPanel
      Width = 632
      ExplicitWidth = 632
      object btnPesquisar: TcxButton
        Tag = 1
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 136
        Height = 30
        Align = alLeft
        Caption = 'INICIAR'
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 0
        TabStop = False
        OnClick = btnPesquisarClick
      end
    end
  end
  inherited ini: TFormStorage
    Left = 212
    Top = 152
  end
  inherited FR: TFormResizer
    Left = 216
    Top = 88
  end
  inherited EnterTab: TACBrEnterTab
    Left = 188
    Top = 16
  end
end
