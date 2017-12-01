inherited frmEntradaNF: TfrmEntradaNF
  BorderStyle = bsSizeable
  Caption = 'AUTOCOM GERENCIAL - M'#211'DULO COMPRAS'
  ClientHeight = 498
  ClientWidth = 716
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 732
  ExplicitHeight = 536
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 333
    Width = 716
    Height = 145
    ExplicitTop = 333
    ExplicitWidth = 716
    ExplicitHeight = 145
    inherited pnlBtnClose: TPanel
      Left = 655
      Top = 115
      Width = 56
      Height = 25
      Margins.Left = 1
      ExplicitLeft = 655
      ExplicitTop = 115
      ExplicitWidth = 56
      ExplicitHeight = 25
      inherited btnSair: TcxButton
        Tag = 5
        AlignWithMargins = False
        Left = 0
        Top = 0
        Width = 56
        Height = 25
        Margins.Left = 1
        Margins.Right = 1
        Align = alClient
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 56
        ExplicitHeight = 25
      end
    end
    inherited pnlBase: TPanel
      Top = 115
      Width = 654
      Height = 25
      ExplicitTop = 115
      ExplicitWidth = 654
      ExplicitHeight = 25
      object btnImportar: TcxButton
        Tag = 3
        AlignWithMargins = True
        Left = 226
        Top = 3
        Width = 86
        Height = 19
        Margins.Left = 1
        Align = alLeft
        Caption = 'Importar XML'
        TabOrder = 0
        OnClick = btnImportarClick
      end
      object btnManual: TcxButton
        Tag = 1
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 87
        Height = 19
        Align = alLeft
        Caption = 'Entrada manual'
        TabOrder = 1
        OnClick = btnManualClick
      end
      object btnCancelar: TcxButton
        Tag = 2
        AlignWithMargins = True
        Left = 165
        Top = 3
        Width = 57
        Height = 19
        Margins.Left = 1
        Align = alLeft
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = btnCancelarClick
      end
      object btnConcluir: TcxButton
        Tag = 4
        AlignWithMargins = True
        Left = 316
        Top = 3
        Width = 64
        Height = 19
        Margins.Left = 1
        Align = alLeft
        Caption = 'Concluir'
        TabOrder = 3
        OnClick = btnConcluirClick
      end
      object Bar2: TcxProgressBar
        AlignWithMargins = True
        Left = 480
        Top = 2
        Margins.Left = 1
        Margins.Top = 2
        Margins.Right = 1
        Margins.Bottom = 2
        Align = alRight
        ParentFont = False
        Position = 50.000000000000000000
        Properties.BarStyle = cxbsGradientLEDs
        Properties.PeakValue = 50.000000000000000000
        Properties.ShowPeak = True
        TabOrder = 4
        Transparent = True
        Visible = False
        Width = 173
      end
      object btnItens: TcxButton
        Tag = 4
        AlignWithMargins = True
        Left = 96
        Top = 3
        Width = 65
        Height = 19
        Align = alLeft
        Caption = 'Itens'
        Enabled = False
        TabOrder = 5
        OnClick = btnItensClick
      end
      object btnPesq: TcxButton
        Tag = 4
        AlignWithMargins = True
        Left = 384
        Top = 3
        Width = 64
        Height = 19
        Margins.Left = 1
        Align = alLeft
        Caption = 'Pesquisar'
        TabOrder = 6
        OnClick = btnPesqClick
      end
    end
    object Pg1: TcxPageControl
      Left = 1
      Top = 1
      Width = 710
      Height = 114
      Align = alTop
      TabOrder = 2
      Properties.ActivePage = TabTotais
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 110
      ClientRectLeft = 4
      ClientRectRight = 706
      ClientRectTop = 26
      object TabTotais: TcxTabSheet
        Caption = 'TOTAIS DA N.F.'
        ImageIndex = 0
        ExplicitLeft = 0
        ExplicitWidth = 710
        ExplicitHeight = 88
        object Label44: TLabel
          Left = 3
          Top = 72
          Width = 125
          Height = 13
          Alignment = taRightJustify
          Caption = '* Deve ser informado no item'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TcxLabel
          Left = 0
          Top = 1
          Caption = 'B.C. ICMS'
          FocusControl = cxDBCalcEdit1
          ParentFont = False
          Transparent = True
        end
        object Label13: TcxLabel
          Left = 77
          Top = 1
          Caption = 'VR. ICMS'
          FocusControl = cxDBCalcEdit2
          ParentFont = False
          Transparent = True
        end
        object Label14: TcxLabel
          Left = 229
          Top = 1
          Caption = 'BC. ICMS S.T.*'
          FocusControl = cxDBCalcEdit3
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -11
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object Label15: TcxLabel
          Left = 316
          Top = 1
          Caption = 'VR. ICMS S.T.*'
          FocusControl = cxDBCalcEdit4
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -11
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object Label16: TcxLabel
          Left = 76
          Top = 38
          Caption = 'VR. PROD.'
          FocusControl = cxDBCalcEdit5
          ParentFont = False
          Transparent = True
        end
        object Label17: TcxLabel
          Left = 401
          Top = 2
          Caption = 'VR. FRETE'
          FocusControl = cxDBCalcEdit6
          ParentFont = False
          Transparent = True
        end
        object Label18: TcxLabel
          Left = 154
          Top = 1
          Caption = 'VR. SEGURO'
          FocusControl = cxDBCalcEdit7
          ParentFont = False
          Transparent = True
        end
        object Label19: TcxLabel
          Left = 555
          Top = 2
          Caption = 'VR. DESC.'
          FocusControl = cxDBCalcEdit8
          ParentFont = False
          Transparent = True
        end
        object Label20: TcxLabel
          Left = 478
          Top = 2
          Caption = 'VR. O.D.A'
          FocusControl = cxDBCalcEdit9
          ParentFont = False
          Transparent = True
        end
        object Label21: TcxLabel
          Left = 512
          Top = 38
          Caption = 'VR. NOTA'
          FocusControl = cxDBCalcEdit10
          ParentFont = False
          Transparent = True
        end
        object Label22: TcxLabel
          Left = -2
          Top = 38
          Caption = 'VR. IPI'
          FocusControl = cxDBCalcEdit11
          ParentFont = False
          Transparent = True
        end
        object cxDBCalcEdit1: TcxDBLabel
          Left = 0
          Top = 19
          DataBinding.DataField = 'ICMSTot_vBC'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 74
        end
        object cxDBCalcEdit2: TcxDBLabel
          Left = 77
          Top = 19
          DataBinding.DataField = 'ICMSTot_vICMS'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 74
        end
        object cxDBCalcEdit3: TcxDBLabel
          Left = 231
          Top = 19
          DataBinding.DataField = 'ICMSTot_vBCST'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 82
        end
        object cxDBCalcEdit4: TcxDBLabel
          Left = 316
          Top = 19
          DataBinding.DataField = 'ICMSTot_vST'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 82
        end
        object cxDBCalcEdit5: TcxDBLabel
          Left = 77
          Top = 55
          DataBinding.DataField = 'ICMSTot_vProd'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 74
        end
        object cxDBCalcEdit6: TcxDBLabel
          Left = 401
          Top = 19
          DataBinding.DataField = 'ICMSTot_vFrete'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 74
        end
        object cxDBCalcEdit7: TcxDBLabel
          Left = 154
          Top = 19
          DataBinding.DataField = 'ICMSTot_vSeg'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 74
        end
        object cxDBCalcEdit8: TcxDBLabel
          Left = 555
          Top = 19
          DataBinding.DataField = 'ICMSTot_vDesc'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 74
        end
        object cxDBCalcEdit9: TcxDBLabel
          Left = 478
          Top = 19
          DataBinding.DataField = 'ICMSTot_vOutro'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 74
        end
        object cxDBCalcEdit10: TcxDBLabel
          Left = 512
          Top = 55
          DataBinding.DataField = 'ICMSTot_vNF'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 117
        end
        object cxDBCalcEdit11: TcxDBLabel
          Left = 0
          Top = 55
          DataBinding.DataField = 'ICMSTot_vIPI'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 74
        end
        object cxLabel2: TcxLabel
          Left = 154
          Top = 39
          Caption = 'VR. INCID. IMPORT.'
          FocusControl = cxDBLabel3
          ParentFont = False
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 338
          Top = 39
          Caption = 'VR. PIS'
          FocusControl = cxDBLabel4
          ParentFont = False
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 257
          Top = 39
          Caption = 'VR. COFINS'
          FocusControl = cxDBLabel5
          ParentFont = False
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 418
          Top = 39
          Caption = 'VR. ISS'
          FocusControl = cxDBLabel6
          ParentFont = False
          Transparent = True
        end
        object cxDBLabel3: TcxDBLabel
          Left = 154
          Top = 55
          DataBinding.DataField = 'ICMSTot_vII'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 100
        end
        object cxDBLabel4: TcxDBLabel
          Left = 338
          Top = 55
          DataBinding.DataField = 'ICMSTot_vPIS'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 78
        end
        object cxDBLabel5: TcxDBLabel
          Left = 257
          Top = 55
          DataBinding.DataField = 'ICMSTot_vCOFINS'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 78
        end
        object cxDBLabel6: TcxDBLabel
          Left = 418
          Top = 55
          DataBinding.DataField = 'ISSQNTot_vISS'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 78
        end
        object Panel1: TPanel
          Left = 656
          Top = 0
          Width = 46
          Height = 84
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 664
          ExplicitHeight = 88
          object btnTotNF: TcxButton
            Tag = 4
            AlignWithMargins = True
            Left = 2
            Top = 4
            Width = 40
            Height = 80
            Hint = 'Editar os totais da NF (somente entrada manual)'
            Margins.Left = 1
            Align = alClient
            Caption = '>>'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            OnClick = btnTotNFClick
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'RETEN'#199#213'ES'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitWidth = 710
        ExplicitHeight = 88
        object Label27: TcxLabel
          Left = 60
          Top = 20
          Caption = 'VR. PIS'
          FocusControl = cxDBCalcEdit16
          ParentFont = False
          Transparent = True
        end
        object Label28: TcxLabel
          Left = 141
          Top = 20
          Caption = 'VR. COFINS'
          FocusControl = cxDBCalcEdit17
          ParentFont = False
          Transparent = True
        end
        object Label29: TcxLabel
          Left = 224
          Top = 20
          Caption = 'VR. CSLL'
          FocusControl = cxDBCalcEdit18
          ParentFont = False
          Transparent = True
        end
        object Label30: TcxLabel
          Left = 303
          Top = 20
          Caption = 'BC IRRF'
          FocusControl = cxDBCalcEdit19
          ParentFont = False
          Transparent = True
        end
        object Label31: TcxLabel
          Left = 466
          Top = 20
          Caption = 'VR. IRRF'
          FocusControl = cxDBCalcEdit20
          ParentFont = False
          Transparent = True
        end
        object Label32: TcxLabel
          Left = 384
          Top = 20
          Caption = 'BC. PREVID.'
          FocusControl = cxDBCalcEdit21
          ParentFont = False
          Transparent = True
        end
        object Label33: TcxLabel
          Left = 548
          Top = 20
          Caption = 'VR. PREVID.'
          FocusControl = cxDBCalcEdit22
          ParentFont = False
          Transparent = True
        end
        object cxDBCalcEdit16: TcxDBLabel
          Left = 60
          Top = 36
          DataBinding.DataField = 'retTrib_vRetPIS'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 78
        end
        object cxDBCalcEdit17: TcxDBLabel
          Left = 141
          Top = 36
          DataBinding.DataField = 'retTrib_vRetCOFINS'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 78
        end
        object cxDBCalcEdit18: TcxDBLabel
          Left = 222
          Top = 36
          DataBinding.DataField = 'retTrib_vRetCSLL'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 78
        end
        object cxDBCalcEdit19: TcxDBLabel
          Left = 303
          Top = 36
          DataBinding.DataField = 'retTrib_vBCIRRF'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 78
        end
        object cxDBCalcEdit20: TcxDBLabel
          Left = 466
          Top = 36
          DataBinding.DataField = 'retTrib_vIRRF'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 78
        end
        object cxDBCalcEdit21: TcxDBLabel
          Left = 384
          Top = 36
          DataBinding.DataField = 'retTrib_vBCRetPrev'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 78
        end
        object cxDBCalcEdit22: TcxDBLabel
          Left = 548
          Top = 36
          DataBinding.DataField = 'retTrib_vRetPrev'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 78
        end
        object Panel2: TPanel
          Left = 656
          Top = 0
          Width = 46
          Height = 84
          Align = alRight
          TabOrder = 14
          ExplicitLeft = 664
          ExplicitHeight = 88
          object btnTotNF2: TcxButton
            Tag = 4
            AlignWithMargins = True
            Left = 2
            Top = 4
            Width = 40
            Height = 80
            Hint = 'Editar os totais da NF (somente entrada manual)'
            Margins.Left = 1
            Align = alClient
            Caption = '>>'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            OnClick = btnTotNFClick
          end
        end
      end
      object cxTabSheet6: TcxTabSheet
        Caption = 'INF. COMPLEM.'
        ImageIndex = 6
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'infCpl'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentFont = False
          Properties.ReadOnly = True
          Properties.ScrollBars = ssVertical
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -9
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          ExplicitWidth = 664
          ExplicitHeight = 53
          Height = 49
          Width = 656
        end
        object Panel4: TPanel
          Left = 656
          Top = 0
          Width = 46
          Height = 49
          Align = alRight
          TabOrder = 1
          ExplicitLeft = 664
          ExplicitHeight = 53
          object btnTotNF3: TcxButton
            Tag = 4
            AlignWithMargins = True
            Left = 2
            Top = 4
            Width = 40
            Height = 45
            Hint = 'Editar os totais da NF (somente entrada manual)'
            Margins.Left = 1
            Align = alClient
            Caption = '>>'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            OnClick = btnTotNFClick
          end
        end
        object cxDBMemo2: TcxDBMemo
          AlignWithMargins = True
          Left = 3
          Top = 52
          Align = alBottom
          DataBinding.DataField = 'infAdFisco'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentFont = False
          Properties.ScrollBars = ssVertical
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -9
          Style.Font.Name = 'Verdana'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          ExplicitTop = 56
          ExplicitWidth = 704
          Height = 29
          Width = 696
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'TRANSPORTE'
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitWidth = 710
        ExplicitHeight = 88
        object Label34: TcxLabel
          Left = 5
          Top = 2
          Caption = 'CNPJ/CPF'
          FocusControl = cxDBTextEdit1
          ParentFont = False
          Transparent = True
        end
        object Label35: TcxLabel
          Left = 259
          Top = 2
          Caption = 'Nome/Raz'#227'o Social'
          FocusControl = cxDBTextEdit3
          ParentFont = False
          Transparent = True
        end
        object Label36: TcxLabel
          Left = 134
          Top = 2
          Caption = 'Inscr. Estadual'
          FocusControl = cxDBTextEdit5
          ParentFont = False
          Transparent = True
        end
        object Label37: TcxLabel
          Left = 5
          Top = 42
          Caption = 'Endere'#231'o'
          FocusControl = cxDBTextEdit6
          ParentFont = False
          Transparent = True
        end
        object Label38: TcxLabel
          Left = 380
          Top = 42
          Caption = 'Munic'#237'pio'
          FocusControl = cxDBTextEdit7
          ParentFont = False
          Transparent = True
        end
        object Label39: TcxLabel
          Left = 620
          Top = 42
          Caption = 'UF'
          FocusControl = cxDBTextEdit8
          ParentFont = False
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBLabel
          Left = 5
          Top = 18
          DataBinding.DataField = 'Transporta_CNPJCPF'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 123
        end
        object cxDBTextEdit3: TcxDBLabel
          Left = 259
          Top = 18
          DataBinding.DataField = 'Transporta_xNome'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 391
        end
        object cxDBTextEdit5: TcxDBLabel
          Left = 134
          Top = 18
          DataBinding.DataField = 'Transporta_IE'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 119
        end
        object cxDBTextEdit6: TcxDBLabel
          Left = 5
          Top = 58
          DataBinding.DataField = 'Transporta_xEnder'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 371
        end
        object cxDBTextEdit7: TcxDBLabel
          Left = 380
          Top = 58
          DataBinding.DataField = 'Transporta_xMun'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 236
        end
        object cxDBTextEdit8: TcxDBLabel
          Left = 620
          Top = 58
          DataBinding.DataField = 'Transporta_UF'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 30
        end
        object Panel5: TPanel
          Left = 656
          Top = 0
          Width = 46
          Height = 84
          Align = alRight
          TabOrder = 12
          ExplicitLeft = 664
          ExplicitHeight = 88
          object btnTransp: TcxButton
            Tag = 4
            AlignWithMargins = True
            Left = 2
            Top = 4
            Width = 40
            Height = 80
            Hint = 'Editar os totais da NF (somente entrada manual)'
            Margins.Left = 1
            Align = alClient
            Caption = '>>'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            OnClick = btnTranspClick
          end
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'VOLUMES'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grd: TcxGrid
          Left = 0
          Top = 0
          Width = 664
          Height = 88
          Align = alClient
          TabOrder = 0
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          object tbv: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            DataController.DataModeController.GridMode = True
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = DM_NF_Entr.DScdNF_Volume
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
            OptionsView.ScrollBars = ssVertical
            OptionsView.CellAutoHeight = True
            OptionsView.GridLineColor = clBlack
            OptionsView.GroupByBox = False
            OptionsView.GroupSummaryLayout = gslAlignWithColumns
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clYellow
            object tbvqVol: TcxGridDBColumn
              Caption = 'VOLUMES'
              DataBinding.FieldName = 'qVol'
              HeaderAlignmentHorz = taCenter
            end
            object tbvespecie: TcxGridDBColumn
              Caption = 'ESP'#201'CIE'
              DataBinding.FieldName = 'especie'
              HeaderAlignmentHorz = taCenter
              Width = 174
            end
            object tbvmarca: TcxGridDBColumn
              Caption = 'MARCA'
              DataBinding.FieldName = 'marca'
              HeaderAlignmentHorz = taCenter
              Width = 237
            end
            object tbvnVol: TcxGridDBColumn
              Caption = 'DESCRI'#199#195'O'
              DataBinding.FieldName = 'nVol'
              HeaderAlignmentHorz = taCenter
              Width = 220
            end
            object tbvpesoL: TcxGridDBColumn
              Caption = 'PESO L'#205'Q.'
              DataBinding.FieldName = 'pesoL'
              HeaderAlignmentHorz = taCenter
            end
            object tbvpesoB: TcxGridDBColumn
              Caption = 'PESO BRT'
              DataBinding.FieldName = 'pesoB'
              HeaderAlignmentHorz = taCenter
            end
          end
          object lv: TcxGridLevel
            GridView = tbv
          end
        end
        object Panel7: TPanel
          Left = 664
          Top = 0
          Width = 46
          Height = 88
          Align = alRight
          TabOrder = 1
          object btnVol: TcxButton
            Tag = 4
            AlignWithMargins = True
            Left = 2
            Top = 4
            Width = 40
            Height = 80
            Hint = 'Editar os totais da NF (somente entrada manual)'
            Margins.Left = 1
            Align = alClient
            Caption = '>>'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            OnClick = btnVolClick
          end
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = 'DUPLICATAS'
        ImageIndex = 5
        ExplicitLeft = 0
        ExplicitWidth = 710
        ExplicitHeight = 88
        object Label40: TLabel
          Left = 8
          Top = 0
          Width = 61
          Height = 15
          Caption = 'N'#186' FATURA'
          FocusControl = cxDBTextEdit9
        end
        object Label41: TLabel
          Left = 8
          Top = 34
          Width = 53
          Height = 15
          Caption = 'VR. ORIG.'
          FocusControl = cxDBCalcEdit23
        end
        object Label42: TLabel
          Left = 92
          Top = 0
          Width = 53
          Height = 15
          Caption = 'VR. DESC.'
          FocusControl = cxDBCalcEdit24
        end
        object Label43: TLabel
          Left = 92
          Top = 34
          Width = 42
          Height = 15
          Caption = 'VR L'#205'Q.'
          FocusControl = cxDBCalcEdit25
        end
        object grdDup: TcxGrid
          Left = 222
          Top = 0
          Width = 434
          Height = 84
          Align = alRight
          TabOrder = 0
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          ExplicitLeft = 230
          ExplicitHeight = 88
          object tbvDup: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            DataController.DataModeController.GridMode = True
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = DM_NF_Entr.DScdNF_Duplicata
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
            OptionsView.ScrollBars = ssVertical
            OptionsView.CellAutoHeight = True
            OptionsView.GridLineColor = clBlack
            OptionsView.GroupByBox = False
            OptionsView.GroupSummaryLayout = gslAlignWithColumns
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clYellow
            Styles.Content = cxStyle1
            object tbvDupnDup: TcxGridDBColumn
              Caption = 'N'#186' DA DUPLIC.'
              DataBinding.FieldName = 'nDup'
              HeaderAlignmentHorz = taCenter
              Width = 138
            end
            object tbvDupvDup: TcxGridDBColumn
              Caption = 'VALOR'
              DataBinding.FieldName = 'vDup'
              HeaderAlignmentHorz = taCenter
            end
            object tbvDupdVenc: TcxGridDBColumn
              Caption = 'DT VENCIMENTO'
              DataBinding.FieldName = 'dVenc'
              HeaderAlignmentHorz = taCenter
              Width = 107
            end
          end
          object lvDup: TcxGridLevel
            GridView = tbvDup
          end
        end
        object cxDBTextEdit9: TcxDBLabel
          Left = 8
          Top = 16
          DataBinding.DataField = 'nFat'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 74
        end
        object cxDBCalcEdit24: TcxDBLabel
          Left = 92
          Top = 16
          DataBinding.DataField = 'vDesc'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 78
        end
        object cxDBCalcEdit23: TcxDBLabel
          Left = 8
          Top = 50
          DataBinding.DataField = 'vOrig'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 78
        end
        object cxDBCalcEdit25: TcxDBLabel
          Left = 92
          Top = 50
          DataBinding.DataField = 'vLiq'
          DataBinding.DataSource = DM_NF_Entr.DScdNF
          ParentColor = False
          ParentFont = False
          Style.BorderStyle = ebsOffice11
          Height = 17
          Width = 78
        end
        object Panel8: TPanel
          Left = 656
          Top = 0
          Width = 46
          Height = 84
          Align = alRight
          TabOrder = 5
          ExplicitLeft = 664
          ExplicitHeight = 88
          object btnFat: TcxButton
            Tag = 4
            AlignWithMargins = True
            Left = 2
            Top = 4
            Width = 40
            Height = 80
            Hint = 'Editar os totais da NF (somente entrada manual)'
            Margins.Left = 1
            Align = alClient
            Caption = '>>'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            OnClick = btnFatClick
          end
        end
      end
      object TabMed: TcxTabSheet
        Caption = 'MEDICAM.'
        ImageIndex = 7
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GMed: TcxGrid
          Left = 0
          Top = 0
          Width = 710
          Height = 88
          Align = alClient
          TabOrder = 0
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          object tbvMed: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            DataController.DataModeController.GridMode = True
            DataController.DataModeController.SmartRefresh = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
            OptionsView.ScrollBars = ssVertical
            OptionsView.CellAutoHeight = True
            OptionsView.GridLineColor = clBlack
            OptionsView.GroupByBox = False
            OptionsView.GroupSummaryLayout = gslAlignWithColumns
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clYellow
            object tbvMednlote: TcxGridDBColumn
              DataBinding.FieldName = 'LOTE'
              HeaderAlignmentHorz = taCenter
            end
            object tbvMedqlote: TcxGridDBColumn
              DataBinding.FieldName = 'QUANT'
              HeaderAlignmentHorz = taCenter
            end
            object tbvMeddfab: TcxGridDBColumn
              DataBinding.FieldName = 'DT FAB.'
              HeaderAlignmentHorz = taCenter
              Width = 111
            end
            object tbvMeddven: TcxGridDBColumn
              DataBinding.FieldName = 'DT VENC.'
              HeaderAlignmentHorz = taCenter
              Width = 114
            end
            object tbvMedvpmc: TcxGridDBColumn
              DataBinding.FieldName = 'PMC'
              HeaderAlignmentHorz = taCenter
              Width = 128
            end
          end
          object LvMed: TcxGridLevel
            GridView = tbvMed
          end
        end
      end
      object cxTabSheet7: TcxTabSheet
        Caption = 'DOC. ARREC.'
        ImageIndex = 8
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 664
          Height = 88
          Align = alClient
          TabOrder = 0
          LevelTabs.Slants.Kind = skCutCorner
          LevelTabs.Style = 6
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            DataController.DataModeController.GridMode = True
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = DM_NF_Entr.DScdNF_Guia_Arrec
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Appending = True
            OptionsSelection.InvertSelect = False
            OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
            OptionsView.ScrollBars = ssVertical
            OptionsView.CellAutoHeight = True
            OptionsView.GridLineColor = clBlack
            OptionsView.GroupByBox = False
            OptionsView.GroupSummaryLayout = gslAlignWithColumns
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clYellow
            Styles.Content = cxStyle1
            object cxGridDBTableView1id: TcxGridDBColumn
              Caption = 'ID'
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 39
            end
            object cxGridDBTableView1cod_da: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO'
              HeaderAlignmentHorz = taCenter
              Width = 40
            end
            object cxGridDBTableView1nmro: TcxGridDBColumn
              Caption = 'N'#218'MERO'
              DataBinding.FieldName = 'nmro'
              HeaderAlignmentHorz = taCenter
              Width = 110
            end
            object cxGridDBTableView1cod_aut: TcxGridDBColumn
              Caption = 'C'#211'D AUT.'
              DataBinding.FieldName = 'cod_aut'
              HeaderAlignmentHorz = taCenter
              Width = 179
            end
            object cxGridDBTableView1valor: TcxGridDBColumn
              Caption = 'VALOR'
              DataBinding.FieldName = 'valor'
              HeaderAlignmentHorz = taCenter
              Width = 57
            end
            object cxGridDBTableView1dt_venc: TcxGridDBColumn
              Caption = 'DT. VENC.'
              DataBinding.FieldName = 'dt_venc'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridDBTableView1dt_pag: TcxGridDBColumn
              Caption = 'DT. PGTO'
              DataBinding.FieldName = 'dt_pag'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object Panel9: TPanel
          Left = 664
          Top = 0
          Width = 46
          Height = 88
          Align = alRight
          TabOrder = 1
          object btnDocArrec: TcxButton
            Tag = 4
            AlignWithMargins = True
            Left = 2
            Top = 4
            Width = 40
            Height = 80
            Hint = 'Editar os totais da NF (somente entrada manual)'
            Margins.Left = 1
            Align = alClient
            Caption = '>>'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            OnClick = btnDocArrecClick
          end
        end
      end
    end
  end
  inherited Edit1: TEdit
    Left = 1007
    ExplicitLeft = 1007
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 0
    Width = 716
    Height = 118
    Align = alTop
    TabOrder = 2
    object cmbMod: TcxDBLookupComboBox
      Left = 5
      Top = 18
      DataBinding.DataField = 'Ide_modelo'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.IncrementalFiltering = False
      Properties.KeyFieldNames = 'modelo'
      Properties.ListColumns = <
        item
          FieldName = 'nome'
        end>
      Properties.ListOptions.ColumnSorting = False
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = DSModeloNF
      Properties.MaxLength = 0
      Properties.OnEditValueChanged = cxDBLookupComboBox1PropertiesEditValueChanged
      TabOrder = 2
      Width = 340
    end
    object Label2: TcxLabel
      Left = 5
      Top = 2
      Caption = 'Modelo da N.F.'
      ParentFont = False
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 348
      Top = 2
      Caption = 'NF-e Chave'
      ParentFont = False
      Transparent = True
    end
    object edProt: TcxDBTextEdit
      Left = 395
      Top = 56
      DataBinding.DataField = 'protocolo'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      TabOrder = 15
      Width = 141
    end
    object edchave: TcxDBTextEdit
      Left = 348
      Top = 18
      DataBinding.DataField = 'chave'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      TabOrder = 3
      Width = 364
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 186
      Top = 56
      DataBinding.DataField = 'Ide_dEmi'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      TabOrder = 6
      Width = 100
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 290
      Top = 56
      DataBinding.DataField = 'Ide_dSaiEnt'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      TabOrder = 7
      Width = 100
    end
    object Label3: TcxLabel
      Left = 395
      Top = 40
      Caption = 'Protocolo'
      FocusControl = edProt
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 540
      Top = 40
      Caption = 'Situa'#231#227'o da N.F-e'
      FocusControl = edStatus
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 6
      Top = 78
      Caption = 'Natureza da Opera'#231#227'o'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 131
      Top = 40
      Caption = 'S'#233'rie'
      FocusControl = edSerie
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 6
      Top = 40
      Caption = 'N'#186' N.F.'
      FocusControl = ednNF
      ParentFont = False
      Transparent = True
    end
    object Label7: TcxLabel
      Left = 186
      Top = 40
      Caption = 'Data de Emiss'#227'o'
      FocusControl = cxDBDateEdit1
      ParentFont = False
      Transparent = True
    end
    object Label8: TcxLabel
      Left = 290
      Top = 40
      Caption = 'Data de Entrada'
      FocusControl = cxDBDateEdit2
      ParentFont = False
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 645
      Top = 40
      Caption = 'Finalidade'
      FocusControl = cxDBSpinEdit1
      ParentFont = False
      Transparent = True
    end
    object edStatus: TcxDBLabel
      Left = 570
      Top = 56
      DataBinding.DataField = 'status'
      DataBinding.DataSource = DataSource1
      ParentColor = False
      ParentFont = False
      Style.BorderColor = 10930928
      Height = 21
      Width = 72
    end
    object edSit: TcxDBLabel
      Left = 540
      Top = 56
      DataBinding.DataField = 'cstat'
      DataBinding.DataSource = DataSource1
      ParentColor = False
      ParentFont = False
      Style.BorderColor = 10930928
      Height = 21
      Width = 31
    end
    object cxDBSpinEdit1: TcxDBLabel
      Left = 645
      Top = 56
      DataBinding.DataField = 'Ide_finNFe'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentColor = False
      ParentFont = False
      Style.BorderColor = 10930928
      Height = 21
      Width = 67
    end
    object edSerie: TcxDBTextEdit
      Left = 133
      Top = 55
      DataBinding.DataField = 'Ide_serie'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      TabOrder = 5
      Width = 51
    end
    object ednNF: TcxDBTextEdit
      Left = 6
      Top = 56
      DataBinding.DataField = 'Ide_nNF'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      TabOrder = 4
      OnEnter = ednNFEnter
      Width = 121
    end
    object btnAlterarNatOp: TcxButton
      Left = 692
      Top = 92
      Width = 19
      Height = 23
      Hint = 'Tabela de Natureza de Opera'#231#227'o'
      Caption = '>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
      TabStop = False
      OnClick = btnAlterarNatOpClick
    end
    object cmbNatOp: TcxDBTextEdit
      Left = 6
      Top = 93
      DataBinding.DataField = 'Ide_natOp'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      Properties.CharCase = ecUpperCase
      TabOrder = 16
      Width = 685
    end
    object cxDBLabel7: TcxDBLabel
      Left = 99
      Top = -1
      DataBinding.DataField = 'Ide_modelo'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      Height = 19
      Width = 121
    end
  end
  object Bar1: TdxStatusBar [3]
    Left = 0
    Top = 478
    Width = 716
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        PanelStyle.Color = 6515454
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clWindowText
        PanelStyle.Font.Height = -9
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Text = 'SEM CADASTRO/GTIN'
        Width = 140
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        PanelStyle.Color = 8963327
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clWindowText
        PanelStyle.Font.Height = -9
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Text = 'SEM CADASTRO C/GTIN'
        Width = 140
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        PanelStyle.Color = 12447400
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clWindowText
        PanelStyle.Font.Height = -9
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Text = 'CADASTRADO'
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clWindowText
        PanelStyle.Font.Height = -9
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Width = 120
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clWindowText
        PanelStyle.Font.Height = -9
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Width = 120
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clWindowText
        PanelStyle.Font.Height = -9
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Width = 70
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clWindowText
        PanelStyle.Font.Height = -9
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object Panel6: TPanel [4]
    Left = 0
    Top = 118
    Width = 716
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    Caption = '  DADOS DO EMITENTE'
    TabOrder = 4
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 275
      Top = 17
      TabStop = False
      DataBinding.DataField = 'Emit_xNome'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 437
    end
    object Label12: TcxLabel
      Left = 275
      Top = 1
      Caption = 'Raz'#227'o Social'
      FocusControl = cxDBTextEdit4
      ParentFont = False
      Transparent = True
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 138
      Top = 17
      TabStop = False
      DataBinding.DataField = 'Emit_CNPJCPF'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 135
    end
    object Label10: TcxLabel
      Left = 138
      Top = 1
      Caption = 'CNPJ/CPF'
      FocusControl = cxDBTextEdit2
      ParentFont = False
      Transparent = True
    end
    object cxDBLabel1: TcxDBLabel
      Left = 345
      Top = 1
      DataBinding.DataField = 'Emit_EnderEmit_xMun'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      Height = 17
      Width = 336
    end
    object cxDBLabel2: TcxDBLabel
      Left = 681
      Top = 1
      DataBinding.DataField = 'Emit_EnderEmit_UF'
      DataBinding.DataSource = DM_NF_Entr.DScdNF
      ParentFont = False
      Height = 17
      Width = 31
    end
  end
  object grdItens: TcxGrid [5]
    Left = 0
    Top = 159
    Width = 716
    Height = 174
    Align = alClient
    TabOrder = 5
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    object tbvItens: TcxGridDBTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      OnCellClick = tbvItensCellClick
      OnCustomDrawCell = tbvItensCustomDrawCell
      OnEditing = tbvItensEditing
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = DM_NF_Entr.DScdNF_Item
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
      OptionsView.CellAutoHeight = True
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clYellow
      Styles.Content = cxStyle1
      Styles.Header = cxStyle1
      object tbvItensnItem: TcxGridDBColumn
        Caption = #205'TEM'
        DataBinding.FieldName = 'nItem'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 32
      end
      object tbvItenscProd: TcxGridDBColumn
        Caption = 'C'#211'D. FORN.'
        DataBinding.FieldName = 'cProd'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 64
      end
      object tbvItenscEAN: TcxGridDBColumn
        Caption = 'C'#211'D. GTIN'
        DataBinding.FieldName = 'cEAN'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 61
      end
      object tbvItensxProd: TcxGridDBColumn
        Caption = 'DESCRI'#199#195'O DA MERCADORIA/SERVI'#199'O'
        DataBinding.FieldName = 'xProd'
        HeaderAlignmentHorz = taCenter
        Styles.Content = cxStyle1
        Width = 214
      end
      object tbvItensNCM: TcxGridDBColumn
        DataBinding.FieldName = 'NCM'
        HeaderAlignmentHorz = taCenter
        Width = 33
      end
      object tbvItensCFOP: TcxGridDBColumn
        Caption = 'CFOP'
        DataBinding.FieldName = 'CFOP_inform'
        HeaderAlignmentHorz = taCenter
        Width = 33
      end
      object tbvItensCST: TcxGridDBColumn
        Caption = 'CST'
        DataBinding.FieldName = 'ICMS_CST_inform'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        OnGetProperties = tbvItensCSTGetProperties
        HeaderAlignmentHorz = taCenter
        Width = 24
      end
      object tbvItensICMS_CSOSN: TcxGridDBColumn
        Caption = 'CSOSN'
        DataBinding.FieldName = 'ICMS_CSOSN_inform'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        OnGetProperties = tbvItensICMS_CSOSNGetProperties
        HeaderAlignmentHorz = taCenter
        Width = 45
      end
      object tbvItensuCom: TcxGridDBColumn
        Caption = 'UNID.'
        DataBinding.FieldName = 'uCom'
        HeaderAlignmentHorz = taCenter
        Width = 35
      end
      object tbvItensqCom: TcxGridDBColumn
        DataBinding.FieldName = 'QTD'
        HeaderAlignmentHorz = taCenter
        Width = 34
      end
      object tbvItensvUnCom: TcxGridDBColumn
        Caption = 'VR. UNIT.'
        DataBinding.FieldName = 'VR_CUSTO'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
      end
      object tbvItensVR_VENDA: TcxGridDBColumn
        Caption = 'VR. VENDA'
        DataBinding.FieldName = 'VR_VENDA'
        HeaderAlignmentHorz = taCenter
      end
      object tbvItensvDesc: TcxGridDBColumn
        Caption = 'DESC'
        DataBinding.FieldName = 'vDesc'
        HeaderAlignmentHorz = taCenter
      end
      object tbvItensvProd: TcxGridDBColumn
        Caption = 'VR. TOTAL'
        DataBinding.FieldName = 'vProd'
        HeaderAlignmentHorz = taCenter
        Width = 58
      end
      object tbvItensIPI_pIPI: TcxGridDBColumn
        Caption = '% IPI'
        DataBinding.FieldName = 'IPI_pIPI'
        HeaderAlignmentHorz = taCenter
        Width = 41
      end
      object tbvItensIPI_vIPI: TcxGridDBColumn
        Caption = 'VR IPI'
        DataBinding.FieldName = 'IPI_vIPI'
        HeaderAlignmentHorz = taCenter
      end
      object tbvItensid_prod: TcxGridDBColumn
        DataBinding.FieldName = 'id_prod'
        Visible = False
      end
    end
    object lvItens: TcxGridLevel
      GridView = tbvItens
    end
  end
  inherited ini: TFormStorage
    Left = 312
    Top = 256
  end
  inherited FR: TFormResizer
    Left = 352
    Top = 256
  end
  inherited EnterTab: TACBrEnterTab
    Left = 392
    Top = 256
  end
  object DSModeloNF: TDataSource
    DataSet = DM.QModNF
    Left = 448
    Top = 256
  end
  object DataSource1: TDataSource
    DataSet = DM_NF_Entr.cdNF_Chave
    Left = 512
    Top = 256
  end
  object cxStyleRepository1: TcxStyleRepository
    Scalable = True
    Left = 248
    Top = 256
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 136
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Left = 56
    Top = 232
    object Assistenteparacadstramento1: TMenuItem
      Caption = 'Assistente para Cadastramento'
      OnClick = Assistenteparacadstramento1Click
    end
    object AssistentedePrecificao1: TMenuItem
      Caption = 'Assistente de Precifica'#231#227'o'
      OnClick = AssistentedePrecificao1Click
    end
    object ConverterDados1: TMenuItem
      Caption = 'Regras para NF entrada'
      OnClick = ConverterDados1Click
    end
    object Detalhes1: TMenuItem
      Caption = 'Detalhes'
      OnClick = Detalhes1Click
    end
    object Desfazerligao1: TMenuItem
      Caption = 'Desfazer liga'#231#227'o'
      OnClick = Desfazerligao1Click
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      Visible = False
      OnClick = Excluir1Click
    end
    object CoverterTodospara1: TMenuItem
      Caption = 'Converter Todos CST para %'
      Visible = False
      OnClick = CoverterTodospara1Click
    end
    object ConverterTodosCFOPpara1: TMenuItem
      Caption = 'Converter Todos CFOP para %'
      Visible = False
      OnClick = ConverterTodosCFOPpara1Click
    end
    object ConvertertodosCSOSNpara1: TMenuItem
      Caption = 'Converter todos CSOSN para %'
      OnClick = ConvertertodosCSOSNpara1Click
    end
  end
end
