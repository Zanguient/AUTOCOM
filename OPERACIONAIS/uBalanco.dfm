inherited frmBalanco: TfrmBalanco
  ActiveControl = Dt1
  AutoSize = True
  Caption = 'AUTOCOM GERENCIAL - M'#211'DULO INVENT'#193'RIO'
  ClientHeight = 226
  ClientWidth = 671
  ExplicitWidth = 677
  ExplicitHeight = 254
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 164
    Width = 671
    ExplicitTop = 164
    ExplicitWidth = 671
    inherited pnlBtnClose: TPanel
      Left = 577
      ExplicitLeft = 577
    end
    inherited pnlBase: TPanel
      Width = 576
      ExplicitWidth = 576
    end
  end
  object GroupBox1: TGroupBox [2]
    Left = 0
    Top = 0
    Width = 671
    Height = 81
    Align = alTop
    Caption = 'INVENT'#193'RIOS GERADOS'
    TabOrder = 2
    object cxLabel1: TcxLabel
      Left = 5
      Top = 13
      Caption = 'Data do Invent'#225'rio'
      ParentFont = False
    end
    object btnExport: TcxButton
      Tag = 108
      AlignWithMargins = True
      Left = 423
      Top = 20
      Width = 85
      Height = 56
      Hint = '-'
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      Caption = 'EXPORTAR'
      Enabled = False
      TabOrder = 1
      WordWrap = True
      OnClick = btnExportClick
    end
    object btnImprimirCST: TcxButton
      Tag = 108
      AlignWithMargins = True
      Left = 162
      Top = 20
      Width = 85
      Height = 56
      Hint = '-'
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      Caption = 'IMPRIMIR POR CST'
      TabOrder = 2
      WordWrap = True
      OnClick = btnImprimirCSTClick
    end
    object btnImprimirSessao: TcxButton
      Tag = 108
      AlignWithMargins = True
      Left = 249
      Top = 20
      Width = 85
      Height = 56
      Hint = '-'
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      Caption = 'IMPRIMIR POR SESS'#195'O'
      TabOrder = 3
      WordWrap = True
      OnClick = btnImprimirSessaoClick
    end
    object rbFormato: TcxRadioGroup
      Left = 509
      Top = 17
      Align = alRight
      Caption = 'FORM. DO ARQUIVO'
      ParentFont = False
      Properties.Items = <
        item
          Caption = 'VB SYSTEMS'
        end
        item
          Caption = 'CSV (Excel)'
        end>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -9
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      OnClick = rbFormatoClick
      Height = 62
      Width = 160
    end
    object btnAnalisar: TcxButton
      Tag = 108
      AlignWithMargins = True
      Left = 336
      Top = 20
      Width = 85
      Height = 56
      Hint = '-'
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      Caption = 'ANALISAR'
      TabOrder = 5
      WordWrap = True
      OnClick = btnAnalisarClick
    end
    object Dt1: TcxDateEdit
      Left = 5
      Top = 31
      Properties.DateButtons = []
      TabOrder = 6
      Width = 121
    end
    object cbFiltro: TcxCheckBox
      Left = 5
      Top = 55
      Caption = 'Excluir zerados e nega.'
      TabOrder = 7
      Width = 153
    end
  end
  object GroupBox2: TGroupBox [3]
    Left = 0
    Top = 81
    Width = 671
    Height = 81
    Align = alTop
    Caption = 'GERAR NOVO INVENT'#193'RIO'
    TabOrder = 3
    Visible = False
    object cxLabel2: TcxLabel
      Left = 5
      Top = 29
      Caption = 'Data do Invent'#225'rio'
      ParentFont = False
    end
    object btnGerarInvent: TcxButton
      Tag = 108
      AlignWithMargins = True
      Left = 162
      Top = 22
      Width = 85
      Height = 56
      Hint = '-'
      Margins.Left = 1
      Margins.Right = 1
      Caption = 'GERAR INVENT'#193'RIO'
      TabOrder = 2
      WordWrap = True
    end
    object dtInvent: TcxDateEdit
      Left = 5
      Top = 49
      ParentFont = False
      TabOrder = 0
      Width = 150
    end
    object pBar1: TcxProgressBar
      Left = 264
      Top = 41
      ParentFont = False
      TabOrder = 3
      Visible = False
      Width = 385
    end
  end
  object Bar1: TdxStatusBar [4]
    Left = 0
    Top = 206
    Width = 671
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        Fixed = False
        Width = 200
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  inherited ini: TFormStorage
    Left = 432
    Top = 96
  end
  inherited FR: TFormResizer
    Left = 472
    Top = 96
  end
  inherited EnterTab: TACBrEnterTab
    Left = 512
    Top = 96
  end
end
