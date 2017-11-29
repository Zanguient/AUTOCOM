inherited frmDados: TfrmDados
  BorderIcons = [biSystemMenu, biMinimize, biMaximize]
  Caption = 'AN'#193'LISE DE DADOS'
  ClientHeight = 594
  ClientWidth = 857
  ExplicitWidth = 863
  ExplicitHeight = 622
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 552
    Width = 857
    ExplicitTop = 552
    ExplicitWidth = 857
    inherited pnlBtnClose: TPanel
      Left = 763
      ExplicitLeft = 763
    end
    inherited pnlBase: TPanel
      Width = 762
      ExplicitWidth = 762
      object cmb1: TComboBox
        Left = 6
        Top = 4
        Width = 225
        Height = 23
        TabOrder = 0
        OnClick = cmb1Click
      end
      object Button1: TButton
        Left = 237
        Top = 3
        Width = 75
        Height = 25
        Caption = 'Abrir'
        TabOrder = 1
        OnClick = Button1Click
      end
      object CheckBox1: TCheckBox
        Left = 352
        Top = 10
        Width = 97
        Height = 17
        Caption = 'Filtro'
        TabOrder = 2
        OnClick = CheckBox1Click
      end
    end
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 0
    Width = 857
    Height = 552
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Splitter1: TSplitter
        Left = 0
        Top = 120
        Width = 849
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Beveled = True
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 849
        Height = 120
        Align = alTop
        DataSource = DS1
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 123
        Width = 849
        Height = 399
        Align = alClient
        DataSource = DS2
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Splitter2: TSplitter
        AlignWithMargins = True
        Left = 3
        Top = 431
        Width = 843
        Height = -9
        Cursor = crVSplit
        Align = alTop
        Beveled = True
        Color = clRed
        ParentColor = False
        ExplicitLeft = 0
        ExplicitTop = 425
        ExplicitWidth = 849
      end
      object Splitter3: TSplitter
        AlignWithMargins = True
        Left = 3
        Top = 364
        Width = 843
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Beveled = True
        Color = clRed
        ParentColor = False
      end
      object Splitter4: TSplitter
        AlignWithMargins = True
        Left = 3
        Top = 290
        Width = 843
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Beveled = True
        Color = clRed
        ParentColor = False
      end
      object Splitter5: TSplitter
        AlignWithMargins = True
        Left = 3
        Top = 216
        Width = 843
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Beveled = True
        Color = clRed
        ParentColor = False
      end
      object Splitter6: TSplitter
        AlignWithMargins = True
        Left = 3
        Top = 68
        Width = 843
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Beveled = True
        Color = clRed
        ParentColor = False
      end
      object Splitter7: TSplitter
        AlignWithMargins = True
        Left = 3
        Top = 142
        Width = 843
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Beveled = True
        Color = clRed
        ParentColor = False
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 849
        Height = 65
        Align = alTop
        DataSource = DM_PDV.DSPAF_R01
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 222
        Width = 849
        Height = 65
        Align = alTop
        DataSource = DM_PDV.DSPAF_R04
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 148
        Width = 849
        Height = 65
        Align = alTop
        DataSource = DM_PDV.DSPAF_R03
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
      end
      object DBGrid6: TDBGrid
        Left = 0
        Top = 74
        Width = 849
        Height = 65
        Align = alTop
        DataSource = DM_PDV.DSPAF_R02
        TabOrder = 3
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
      end
      object DBGrid7: TDBGrid
        Left = 0
        Top = 296
        Width = 849
        Height = 65
        Align = alTop
        DataSource = DM_PDV.DSPAF_R05
        TabOrder = 4
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
      end
      object DBGrid8: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 373
        Width = 843
        Height = 52
        Align = alTop
        DataSource = DM_PDV.DSPAF_R06
        TabOrder = 5
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
      end
      object DBGrid9: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 428
        Width = 843
        Height = 91
        Align = alClient
        DataSource = DM_PDV.DSPAF_R07
        TabOrder = 6
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
      end
    end
  end
  inherited ini: TFormStorage
    Left = 184
    Top = 64
  end
  inherited FR: TFormResizer
    Left = 96
    Top = 48
  end
  inherited EnterTab: TACBrEnterTab
    Left = 32
    Top = 40
  end
  object DS1: TDataSource
    Left = 392
    Top = 56
  end
  object DS2: TDataSource
    Left = 392
    Top = 208
  end
end
