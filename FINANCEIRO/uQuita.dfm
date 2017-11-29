inherited frmQuita: TfrmQuita
  Caption = 'frmQuita'
  ClientWidth = 515
  ExplicitWidth = 521
  ExplicitHeight = 409
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 272
    Width = 515
    Height = 109
    ExplicitTop = 272
    ExplicitWidth = 515
    ExplicitHeight = 109
    inherited pnlBtnClose: TPanel
      Left = 421
      Height = 103
      ExplicitLeft = 421
      ExplicitHeight = 103
      inherited btnSair: TcxButton
        Height = 97
        ExplicitHeight = 97
      end
    end
    inherited pnlBase: TPanel
      Width = 420
      Height = 103
      ExplicitWidth = 420
      ExplicitHeight = 103
      object Shape1: TShape
        Left = 7
        Top = 4
        Width = 105
        Height = 13
        Brush.Color = 7978239
      end
      object Shape2: TShape
        Left = 7
        Top = 16
        Width = 105
        Height = 14
        Brush.Color = clMoneyGreen
      end
      object Shape3: TShape
        Left = 7
        Top = 41
        Width = 105
        Height = 16
      end
      object Label3: TLabel
        Left = 14
        Top = 3
        Width = 41
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Faturas:'
        Transparent = True
      end
      object Label4: TLabel
        Left = 11
        Top = 16
        Width = 44
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cr'#233'dito :'
        Transparent = True
      end
      object Label5: TLabel
        Left = 13
        Top = 41
        Width = 42
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'D'#233'bito :'
        Transparent = True
      end
      object lblFat: TLabel
        Left = 58
        Top = 3
        Width = 52
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Transparent = True
      end
      object lblHaver: TLabel
        Left = 58
        Top = 16
        Width = 52
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Transparent = True
      end
      object lblSubTot: TLabel
        Left = 58
        Top = 41
        Width = 52
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Transparent = True
      end
      object Shape4: TShape
        Left = 7
        Top = 29
        Width = 105
        Height = 13
        Brush.Color = 8454143
      end
      object Label1: TLabel
        Left = 13
        Top = 28
        Width = 42
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Juros:'
        Transparent = True
      end
      object lbljuros: TLabel
        Left = 58
        Top = 28
        Width = 52
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Transparent = True
      end
      object btnF5: TcxButton
        AlignWithMargins = True
        Left = 8
        Top = 58
        Width = 104
        Height = 20
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Aviso Cobran'#231'a'
        Colors.Hot = 10538959
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = ''
        OptionsImage.Spacing = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnF5Click
      end
      object cxButton1: TcxButton
        AlignWithMargins = True
        Left = 116
        Top = 4
        Width = 22
        Height = 21
        Hint = 'MARCAR TODOS'
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Colors.Hot = 10538959
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = 'UserSkin'
        OptionsImage.Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFCA6800CA6800FF00FFCA6800CA6800FF00FF62
          0000620000FF00FFCA6800CA6800FF00FFCA6800CA6800FF00FFFF00FFCA6800
          CA6800FF00FFCA6800CA6800FF00FF620000620000FF00FFCA6800CA6800FF00
          FFCA6800CA6800FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF62
          0000620000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCA6800
          CA6800FF00FFFF00FFFF00FFFF00FF620000620000FF00FFFF00FFFF00FFFF00
          FFCA6800CA6800FF00FFFF00FFCA6800CA6800FF00FFFF00FFFF00FFFF00FF62
          0000620000FF00FFFF00FFFF00FFFF00FFCA6800CA6800FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF620000620000FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF62000062000062000062000062000062000062
          0000620000620000620000620000620000620000620000FF00FFFF00FF620000
          6200006200006200006200006200006200006200006200006200006200006200
          00620000620000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF62
          0000620000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCA6800
          CA6800FF00FFFF00FFFF00FFFF00FF620000620000FF00FFFF00FFFF00FFFF00
          FFCA6800CA6800FF00FFFF00FFCA6800CA6800FF00FFFF00FFFF00FFFF00FF62
          0000620000FF00FFFF00FFFF00FFFF00FFCA6800CA6800FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF620000620000FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFCA6800CA6800FF00FFCA6800CA6800FF00FF62
          0000620000FF00FFCA6800CA6800FF00FFCA6800CA6800FF00FFFF00FFCA6800
          CA6800FF00FFCA6800CA6800FF00FF620000620000FF00FFCA6800CA6800FF00
          FFCA6800CA6800FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Spacing = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        WordWrap = True
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        AlignWithMargins = True
        Left = 141
        Top = 4
        Width = 22
        Height = 21
        Hint = 'DESMARCAR TODOS'
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Colors.Hot = 10538959
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = 'UserSkin'
        OptionsImage.Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFD68200D68200FF00FFD68200D68200FF00FFD6
          8200D68200FF00FFD68200D68200FF00FFD68200D68200FF00FFFF00FFD68200
          D68200FF00FFD68200D68200FF00FFD68200D68200FF00FFD68200D68200FF00
          FFD68200D68200FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD68200
          D68200FF00FFFF00FFFF00FFFF00FFD68200D68200FF00FFFF00FFFF00FFFF00
          FFD68200D68200FF00FFFF00FFD68200D68200FF00FFFF00FFFF00FFFF00FFD6
          8200D68200FF00FFFF00FFFF00FFFF00FFD68200D68200FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF99330099330099330099330099330099330099
          3300993300993300993300993300993300993300993300FF00FFFF00FF993300
          9933009933009933009933009933009933009933009933009933009933009933
          00993300993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD68200
          D68200FF00FFFF00FFFF00FFFF00FFD68200D68200FF00FFFF00FFFF00FFFF00
          FFD68200D68200FF00FFFF00FFD68200D68200FF00FFFF00FFFF00FFFF00FFD6
          8200D68200FF00FFFF00FFFF00FFFF00FFD68200D68200FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFD68200D68200FF00FFD68200D68200FF00FFD6
          8200D68200FF00FFD68200D68200FF00FFD68200D68200FF00FFFF00FFD68200
          D68200FF00FFD68200D68200FF00FFD68200D68200FF00FFD68200D68200FF00
          FFD68200D68200FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OptionsImage.Layout = blGlyphTop
        OptionsImage.Spacing = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        WordWrap = True
        OnClick = cxButton2Click
      end
      object cbjuros: TCheckBox
        Left = 117
        Top = 32
        Width = 92
        Height = 15
        Hint = 'Se marcado calcula juros conforme configurado'
        Caption = 'Calcular juros'
        Color = 15790320
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        WordWrap = True
        OnClick = cbjurosClick
      end
      object cbParc: TCheckBox
        Left = 117
        Top = 50
        Width = 75
        Height = 15
        Hint = 'PARCELAR'
        Caption = 'Parcelar'
        Color = 15790320
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        WordWrap = True
        OnClick = cbParcClick
      end
      object cbDesc: TCheckBox
        Left = 117
        Top = 67
        Width = 105
        Height = 15
        Hint = 
          'Abre a caixa para inforamr o desconto que ser'#225' rateado entre tod' +
          'os os itens selecionados'
        Caption = 'Desconto'
        Color = 15790320
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        WordWrap = True
        OnClick = cbDescClick
      end
      object btnQuitar: TcxButton
        AlignWithMargins = True
        Left = 339
        Top = 3
        Width = 78
        Height = 97
        Align = alRight
        Caption = 'QUITAR'
        TabOrder = 6
        OnClick = btnQuitarClick
      end
      object edjuros: TcxCurrencyEdit
        Left = 212
        Top = 28
        Properties.DisplayFormat = '0.00%'
        TabOrder = 7
        Visible = False
        Width = 37
      end
      object eddias: TcxCurrencyEdit
        Left = 250
        Top = 28
        EditValue = 28.000000000000000000
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = 'a cada 00 dias'
        TabOrder = 8
        Visible = False
        Width = 84
      end
      object edDesc: TcxCurrencyEdit
        Left = 212
        Top = 63
        Properties.DisplayFormat = 'R$ 0.00'
        Properties.OnEditValueChanged = edDescPropertiesEditValueChanged
        TabOrder = 9
        Visible = False
        Width = 122
      end
      object cxButton3: TcxButton
        AlignWithMargins = True
        Left = 8
        Top = 78
        Width = 104
        Height = 22
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Demonstrativo'
        Colors.Hot = 10538959
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = ''
        OptionsImage.Spacing = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnClick = cxButton3Click
      end
    end
  end
  object GRD1: TcxGrid [2]
    Left = 0
    Top = 0
    Width = 515
    Height = 272
    Align = alClient
    TabOrder = 2
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    object tbv1: TcxGridDBTableView
      PopupMenu = pop1
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      OnCellClick = tbv1CellClick
      DataController.DataModeController.GridMode = True
      DataController.DataSource = DS1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
      OptionsView.CellAutoHeight = True
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clYellow
      object tbv1doc: TcxGridDBColumn
        DataBinding.FieldName = 'doc'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object tbv1data: TcxGridDBColumn
        DataBinding.FieldName = 'data'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 92
      end
      object tbv1valor: TcxGridDBColumn
        DataBinding.FieldName = 'valor'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 201
      end
      object tbv1quitar: TcxGridDBColumn
        Caption = '*'
        DataBinding.FieldName = 'quitar'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.OnEditValueChanged = tbv1quitarPropertiesEditValueChanged
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taRightJustify
      end
    end
    object lv1: TcxGridLevel
      GridView = tbv1
    end
  end
  object pnlDet: TPanel [3]
    Left = 119
    Top = 76
    Width = 331
    Height = 133
    BevelInner = bvLowered
    BevelKind = bkSoft
    BevelOuter = bvNone
    BevelWidth = 6
    TabOrder = 3
    Visible = False
    object Shape5: TShape
      Left = 7
      Top = 40
      Width = 204
      Height = 79
    end
    object DBText1: TDBText
      Left = 46
      Top = 17
      Width = 65
      Height = 17
      Color = 8454143
      DataField = 'doc'
      DataSource = DS1
      ParentColor = False
    end
    object Label2: TLabel
      Left = 3
      Top = 18
      Width = 41
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CUPOM'
      Transparent = True
    end
    object DBText2: TDBText
      Left = 148
      Top = 17
      Width = 65
      Height = 17
      Color = 8454143
      DataField = 'data'
      DataSource = DS1
      ParentColor = False
    end
    object Label6: TLabel
      Left = 114
      Top = 18
      Width = 33
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DATA'
      Transparent = True
    end
    object Label8: TLabel
      Left = 13
      Top = 72
      Width = 129
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'JUROS APLICADOS:'
      Transparent = True
    end
    object Label9: TLabel
      Left = 14
      Top = 99
      Width = 128
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TOTAL'
      Transparent = True
    end
    object DBText3: TDBText
      Left = 253
      Top = 17
      Width = 65
      Height = 17
      Color = 8454143
      DataField = 'valor'
      DataSource = DS1
      ParentColor = False
    end
    object Label10: TLabel
      Left = 210
      Top = 18
      Width = 41
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'VALOR'
      Transparent = True
    end
    object Label11: TLabel
      Left = 19
      Top = 42
      Width = 185
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Juros de n% a cada n Dias'
      Transparent = True
    end
    object DBText5: TDBText
      Left = 143
      Top = 72
      Width = 65
      Height = 17
      Alignment = taRightJustify
      Color = 12508894
      DataField = 'juros'
      DataSource = DS1
      ParentColor = False
    end
    object lbldettot: TLabel
      Left = 145
      Top = 100
      Width = 59
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btnDetFechar: TcxButton
      Tag = 1
      AlignWithMargins = True
      Left = 222
      Top = 61
      Width = 91
      Height = 35
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'FEC&HAR'
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Black'
      OptionsImage.Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FCFDFDFFFFFC
        DFE4F9969AF1777AEC7979ED7A78EE7B78EE7B7AEB797BE87C7CEB8482EF8188
        EE838CF0898FF18994EF8A99EE8A9CF2909EF393A3F296A5F3AEBAF3ECECF5FF
        FFFEFFFFF9D7D7F76363E31D20D40E0ED90D0CDA0E0CD90E0DD70D0CDA090ADC
        080DDC0D16DF1520DF1B2AE22135E62E41E8394CEC4154F0465CF14B65F2536E
        F56980F49EABF2E9E9F8E3E0F75652DF0000D70000DD0000DE0000DB0000DC00
        00DE0000D41B1BD85052E0807CE48E8EE57C84E65A65E53240E21D34ED2A45ED
        3450ED3958F04061F24568F34B6FF69AA8F36E6DE40A09D90100DB0401D90001
        D90001DC0000DB2220D79394E6E6E7F8FFFFF9FFFFFCFFFFFFFFFFFCFEFFFCE3
        E3F58E99EA3749E72C42ED3A51ED4159F34660F84E68F65D79F51B1CDB0202DA
        0002DA0100DC0002D90000D44B48DADEE1F4FFFFFFFFFFFDF7F6F7D7D8EFCACC
        EDDDDCF1FBFAF7FFFFFCFFFFFFD0D1F3525DE72B43EF3B53EF425AF34764F64E
        6AF81314D60202D90002DA0201D90000D8423FDEECF1F7FFFFFFF5F6F69292E2
        3433CF0F0DD00606D21614D3494AD3AEACE9FEFDF9FFFFFBDAE2F3475AE93045
        F13C52F4425DF54963F81315D60202D90001DC0000DD1617D3D6D6F3FFFFFCED
        EBF84F4DD70000D60000DC0000DE0000DC0000D90001DF090FD87578E8F9FAF8
        FFFFFDBFC5EF3246E6334CEF3D55F3425BF41113D50201D40000DB0000D5767B
        E4FFFFFDF8F9FB5A57DA0000D60100E00200DC0200DC0000DC0000DC0101DD07
        08E1060FD88D8EE6FFFFFCFEFEFA6A79E8293DED364EF03B53F01C1AD51A18D8
        191BE12526DCD4D7F5FFFFFAB7B8EE0B0BD60605DB0301D80000DA0100DC0000
        DC0000DC0000DC0302DD050ADF1A20DDD4D8F4FFFFFDB5BFF02639E83146F035
        4AEE2321D22C2BDA2C2EE2565BE3FAF9FCFFFFFC7C7BE73634E33939E42D2FE3
        1D1EDD0C09DC0000DD0000DE0101DC0101D90504DA0006DD858CE9FFFFFDE4E8
        F63345E6293DEF2F42E92422D4302EDE3131E27474E7FFFFFDF7F8FA6161E03E
        3EE54547E54B4BE44D50E24648E93237E21616DB0100DC0000DB0002D90001D8
        5A5DDDFFFFFDF6F6FD4251E51E35EB2939E62626D13434DD3637E27B7DE8FFFF
        FCF4F4FB6462E04746E64D4CE54E4FE75052E65455E65A5AE85558EC3C40E614
        17DA0000DA0000DD4F4EDBFFFFFFF8F8FD3F4DE4182CE92230E52627D1383ADF
        3D3FE47074E7FDFEFEFDFCFD7876E64B4CE35252E65256E65759E55B5AE35959
        E75D61E46565EB6160EF3B39E20504D56466E0FFFFFFF0F0FA3038E21725E81E
        2BDF2727D33D3FE14847E65E5EE2ECF1F8FFFFFDA9A9ED504EE65559E75A5CE7
        5E5DE86B66E5807DE86868E76867E96D6DE67272EA5453E7B5B5EDFFFFFCCBCE
        F11519DE1720E51A24DD2D2CD14545E1514FE64F4FE3C2C6EFFFFFFEEAEBF76F
        6FE3595CE56260EA6362E5BEC1EBF8FAF9AAACEB6B68EC6E72EA706FEA9997EA
        FAFAFAFFFFFC7B7DE50203DF1218E3141CDB2F2FD34C4DE15756E75453E88481
        E8F9FAFAFFFFF8C9D0F2696AE36163EB6B6AE9DDDCF7FFFFFDC9C9F16D70E96F
        73EA8C89E7E6E6F9FFFFFBF4F4FA4B4BDA0000D90C0FE00E16D63031D65354E1
        5E5DEA5D5FE85F5EE4B8B4EDFFFFFEFFFFFED4D7F38788E9726EEADCDEF6FFFF
        FCC9C9F47677E6A19FEEE8EAF7FFFFFEFEFEFCB7B7EE8285EF3538DD0002DC0C
        0ED63837D65C5BE36663EB6366E86664EC6F6DE6C0C5EBFCFEF9FFFFFFF6F8FB
        999AE3D8DBF7FFFFFEC8C8F6AFACF1FDFEFCFFFFFEF6F7F9C0C2EB8A8DEE9493
        EF9191EE2A2DDD0405D23E3FD86163E76D6AE96D6AEB6F6CED6D71E96F70E7A2
        A4E0E8E8F2F3F3F29E9BE6DBDEF7FFFFFDCCCBF5ADAFE8F5F6F7E0E1EDA7ABDD
        8D8EED9594F09797F09F9DEF8B8CF1171AD34A48E16769EE7170E87371EB7374
        EB7577EB767BEA7A78E98A85E28F8BE18482E8E1E4F7FFFFFED2D2F28B8BE69D
        9BE19795E49592F19897F29A9BF19C9EF0A09FF1AAA9F17274E57272EB7273EA
        7576E97878EB7A7AEB7C7EEB8080EB8282ED8284ED8287EA8B8BEAE3E5F8FFFF
        FFD6D7F5928FF29893F39997F29D9CF0A19FF1A3A1F1A4A4F1A6A6F4AAABEFA9
        ABEFB5B8F28A8DE97779EA7E7FEB8181EC8383ED8686ED8989ED8B8BEE8D8EEF
        918BF4CFD1EFF9FAFAC3C1EE9797F0A09DF0A29FF1A2A2F2A6A5F3A8A7F3AAAA
        F2ADADF2ACADF5B8BCF0E7E9F7BBBCF19593EF8684EA8785ED8987EF8C89EF8F
        8CEF918FEE9492F09495EF9A9CE5A7AAE39F9EEAA09EF1A4A2F2A6A4F2A8A7F1
        AAAAF2ACADF1AEAFF1B4B6F2C3C6F0D0CEF2FCFDFFEBE9F6C8C6F1B2B5F5AAAD
        F0ABAEF1AEAEF2B0B1F2B1B4F1B1B3F5B6B6F1B4B7F7B3B6F8B7BAF6BBBDF4BC
        BEF5BEC1F5BFC3F4C0C3F5C1C5F5C4C9F5C9CFF4D3D1F2EFEEF6}
      OptionsImage.Margin = 4
      OptionsImage.Spacing = 10
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnClick = btnDetFecharClick
    end
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'cbParc.Checked'
      'cbjuros.Checked'
      'eddias.Value'
      'edjuros.Value')
    Left = 456
    Top = 72
  end
  inherited FR: TFormResizer
    Left = 536
    Top = 72
  end
  inherited EnterTab: TACBrEnterTab
    Left = 576
    Top = 72
  end
  object T1: TFDMemTable
    Active = True
    BeforePost = T1BeforePost
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'doc'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'data'
        DataType = ftDate
      end
      item
        Name = 'valor'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'quitar'
        DataType = ftBoolean
      end
      item
        Name = 'haver'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'juros'
        DataType = ftCurrency
        Precision = 19
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 24
    Top = 192
    object T1id: TIntegerField
      FieldName = 'id'
    end
    object T1doc: TStringField
      DisplayLabel = 'DOCUM.'
      FieldName = 'doc'
    end
    object T1data: TDateField
      DisplayLabel = 'DATA'
      FieldName = 'data'
    end
    object T1valor: TCurrencyField
      DisplayLabel = 'VALOR'
      FieldName = 'valor'
    end
    object T1quitar: TBooleanField
      FieldName = 'quitar'
    end
    object T1haver: TCurrencyField
      FieldName = 'haver'
    end
    object T1juros: TCurrencyField
      FieldName = 'juros'
    end
  end
  object DS1: TDataSource
    DataSet = T1
    Left = 88
    Top = 224
  end
  object pop1: TPopupMenu
    Left = 56
    Top = 140
    object Detalhes1: TMenuItem
      Caption = 'Detalhes'
      Enabled = False
      OnClick = Detalhes1Click
    end
  end
end
