inherited frmAss: TfrmAss
  BorderStyle = bsSizeable
  Caption = 'Assistente para cadastramento de Item da NF'
  ClientHeight = 174
  ClientWidth = 369
  ExplicitWidth = 385
  ExplicitHeight = 212
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 129
    Width = 363
    ExplicitLeft = 3
    ExplicitTop = 129
    ExplicitWidth = 363
    inherited pnlBtnClose: TPanel
      Left = 269
      ExplicitLeft = 269
    end
    inherited pnlBase: TPanel
      Width = 268
      ExplicitWidth = 268
      object btnProx: TcxButton
        Tag = 4
        AlignWithMargins = True
        Left = 187
        Top = 3
        Width = 78
        Height = 30
        Margins.Left = 1
        Align = alRight
        Caption = 'Continuar'
        TabOrder = 0
        OnClick = btnProxClick
      end
    end
  end
  object RGOpcao: TcxRadioGroup [2]
    AlignWithMargins = True
    Left = 3
    Top = 30
    Margins.Top = 30
    Align = alTop
    Caption = 'Escolha uma op'#231#227'o'
    ParentFont = False
    Properties.Items = <
      item
        Caption = 'Pesquisar pelo item no cadastro do sistema'
      end
      item
        Caption = 'O item n'#227'o est'#225' cadastrado no sistema'
      end>
    ItemIndex = 0
    TabOrder = 2
    Height = 96
    Width = 363
  end
  object edSit: TcxDBLabel [3]
    Left = 7
    Top = 3
    DataBinding.DataField = 'cProd'
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -9
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 21
    Width = 46
  end
  object edStatus: TcxDBLabel [4]
    Left = 56
    Top = 3
    Anchors = [akLeft, akTop, akRight]
    DataBinding.DataField = 'xProd'
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -9
    Style.Font.Name = 'Comic Sans MS'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Height = 21
    Width = 308
  end
  inherited ini: TFormStorage
    Left = 240
    Top = 80
  end
  inherited FR: TFormResizer
    Left = 280
    Top = 80
  end
  inherited EnterTab: TACBrEnterTab
    Left = 320
    Top = 80
  end
end
