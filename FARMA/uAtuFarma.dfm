inherited frmAtu_Farma: TfrmAtu_Farma
  Caption = 'M'#211'DULO ATUALIZA'#199#195'O DE PRE'#199'OS DE MEDICAMENTOS'
  ClientHeight = 61
  ClientWidth = 343
  ExplicitWidth = 349
  ExplicitHeight = 89
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 0
    Width = 343
    ExplicitTop = 0
    ExplicitWidth = 343
    inherited pnlBtnClose: TPanel
      Left = 249
      ExplicitLeft = 249
    end
    inherited pnlBase: TPanel
      Width = 248
      ExplicitWidth = 248
      object bar1: TProgressBar
        Left = 0
        Top = 0
        Width = 164
        Height = 36
        Margins.Top = 6
        Margins.Bottom = 6
        Align = alClient
        BorderWidth = 5
        Position = 50
        Smooth = True
        BarColor = clRed
        BackgroundColor = clWhite
        Step = 1
        TabOrder = 0
        ExplicitLeft = -3
      end
      object btnIniciar: TcxButton
        AlignWithMargins = True
        Left = 167
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'INICIAR'
        TabOrder = 1
        OnClick = btnIniciarClick
      end
    end
  end
  inherited Edit1: TEdit
    Left = 615
    ExplicitLeft = 615
  end
  object stBar1: TStatusBar [2]
    Left = 0
    Top = 42
    Width = 343
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'Path dbf'
  end
  inherited ini: TFormStorage
    Left = 528
    Top = 36
  end
  inherited FR: TFormResizer
    Left = 568
    Top = 36
  end
  inherited EnterTab: TACBrEnterTab
    Left = 608
    Top = 36
  end
  object ADB: TADOConnection
    Mode = cmRead
    Left = 20
    Top = 5
  end
  object ADTS: TADODataSet
    Connection = ADB
    Parameters = <>
    Left = 64
    Top = 5
  end
  object T1: TRxMemoryData
    Left = 121
    Top = 9
  end
end
