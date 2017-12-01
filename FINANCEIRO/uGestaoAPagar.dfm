inherited frmGestaoAPagar: TfrmGestaoAPagar
  Caption = 'frmGestaoAPagar'
  ClientHeight = 537
  ClientWidth = 720
  ExplicitWidth = 726
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 427
    Width = 720
    Height = 110
    ExplicitTop = 427
    ExplicitWidth = 720
    ExplicitHeight = 110
    inherited pnlBtnClose: TPanel
      Left = 623
      Width = 92
      Height = 104
      ExplicitLeft = 623
      ExplicitWidth = 92
      ExplicitHeight = 104
      inherited btnSair: TcxButton
        Left = 3
        Width = 86
        Height = 98
        Align = alClient
        ExplicitLeft = 3
        ExplicitWidth = 86
        ExplicitHeight = 98
      end
    end
    inherited pnlBase: TPanel
      Width = 622
      Height = 104
      ExplicitWidth = 622
      ExplicitHeight = 104
      object pgDetBol: TcxPageControl
        Left = 0
        Top = 1
        Width = 622
        Height = 103
        Align = alBottom
        TabOrder = 0
        TabStop = False
        Properties.ActivePage = TabBaixaBol
        Properties.CustomButtons.Buttons = <>
        Properties.HotTrack = True
        ClientRectBottom = 99
        ClientRectLeft = 4
        ClientRectRight = 618
        ClientRectTop = 26
        object TabPesqBol: TcxTabSheet
          Caption = 'PESQUISA'
          ImageIndex = 0
          OnShow = TabPesqBolShow
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object rcb1: TcxRadioGroup
            Left = 408
            Top = 0
            TabStop = False
            Align = alRight
            Caption = 'Filtro'
            ParentFont = False
            Properties.Items = <
              item
                Caption = 'BAIXADOS'
                Value = 'valor_pg >0 and cancelado="N"'
              end
              item
                Caption = 'EM ABERTO'
                Value = 'valor_pg=0 and cancelado="N"'
              end
              item
                Caption = 'CANCELADOS'
                Value = 'cancelado="S"'
              end>
            ItemIndex = 1
            TabOrder = 0
            ExplicitLeft = 416
            ExplicitHeight = 77
            Height = 73
            Width = 122
          end
          object btnExibir1: TcxButton
            AlignWithMargins = True
            Left = 533
            Top = 3
            Width = 78
            Height = 67
            Align = alRight
            Caption = 'EXIBIR'
            TabOrder = 1
            OnClick = btnExibir1Click
            ExplicitLeft = 541
            ExplicitHeight = 71
          end
          object pgOpcBol: TcxPageControl
            Left = 0
            Top = 0
            Width = 408
            Height = 73
            Align = alClient
            TabOrder = 2
            Properties.ActivePage = TabDataBol
            Properties.CustomButtons.Buttons = <>
            ExplicitWidth = 416
            ExplicitHeight = 77
            ClientRectBottom = 69
            ClientRectLeft = 4
            ClientRectRight = 404
            ClientRectTop = 26
            object TabDataBol: TcxTabSheet
              Caption = 'POR DATA'
              ImageIndex = 0
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label8: TLabel
                Left = 3
                Top = 1
                Width = 66
                Height = 13
                Caption = 'DATA INICIAL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 110
                Top = 1
                Width = 56
                Height = 13
                Caption = 'DATA FINAL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object Dt1: TcxDateEdit
                Left = 3
                Top = 13
                ParentFont = False
                TabOrder = 0
                Width = 103
              end
              object Dt2: TcxDateEdit
                Left = 110
                Top = 13
                ParentFont = False
                TabOrder = 1
                Width = 103
              end
              object rbem: TcxRadioButton
                Left = 232
                Top = 0
                Width = 78
                Height = 17
                Caption = 'Emiss'#227'o'
                Checked = True
                TabOrder = 2
                TabStop = True
              end
              object rbven: TcxRadioButton
                Left = 318
                Top = 0
                Width = 78
                Height = 17
                Caption = 'Vencimento'
                TabOrder = 3
              end
              object rbbx: TcxRadioButton
                Left = 232
                Top = 18
                Width = 81
                Height = 17
                Caption = 'Baixa/Canc.'
                TabOrder = 4
              end
            end
            object TabSacBol: TcxTabSheet
              Caption = 'POR FAVORECIDO'
              ImageIndex = 1
              OnShow = TabSacBolShow
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label10: TLabel
                Left = 0
                Top = 0
                Width = 102
                Height = 13
                Align = alTop
                Caption = 'NOME/RAZ'#195'O SOCIAL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object cmb1: TcxComboBox
                AlignWithMargins = True
                Left = 0
                Top = 16
                Margins.Bottom = 10
                ParentFont = False
                Properties.CharCase = ecUpperCase
                Properties.Sorted = True
                TabOrder = 0
                Width = 395
              end
            end
            object TabnmroBol: TcxTabSheet
              Caption = 'POR N'#186' OU VALOR'
              ImageIndex = 2
              OnShow = TabnmroBolShow
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label16: TLabel
                Left = 71
                Top = 2
                Width = 41
                Height = 13
                Caption = 'N'#218'MERO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 222
                Top = 2
                Width = 30
                Height = 13
                Caption = 'VALOR'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object Label18: TLabel
                Left = 200
                Top = 21
                Width = 14
                Height = 13
                Caption = 'OU'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Comic Sans MS'
                Font.Style = []
                ParentFont = False
              end
              object edPesqNmro: TcxTextEdit
                Left = 71
                Top = 16
                ParentFont = False
                TabOrder = 0
                Width = 121
              end
              object edPesqValor: TcxCurrencyEdit
                Left = 223
                Top = 16
                ParentFont = False
                TabOrder = 1
                Width = 121
              end
            end
          end
        end
        object TabBaixaBol: TcxTabSheet
          Caption = 'BAIXA'
          ImageIndex = 3
          OnShow = TabBaixaBolShow
          ExplicitLeft = 0
          ExplicitWidth = 622
          ExplicitHeight = 77
          object Label11: TLabel
            Left = 148
            Top = 1
            Width = 77
            Height = 13
            Caption = 'DATA DA  BAIXA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 243
            Top = 0
            Width = 65
            Height = 13
            Caption = 'VALOR MULTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 3
            Top = 0
            Width = 53
            Height = 13
            Caption = 'Observa'#231#245'es'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 148
            Top = 37
            Width = 65
            Height = 13
            Caption = 'VALOR JUROS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 243
            Top = 37
            Width = 84
            Height = 13
            Caption = 'VALOR DESCONTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
          end
          object dt_Baixa: TcxDateEdit
            Left = 148
            Top = 14
            ParentFont = False
            TabOrder = 0
            Width = 91
          end
          object edMulta: TcxCurrencyEdit
            Left = 243
            Top = 14
            ParentFont = False
            Properties.OnChange = edMultaPropertiesChange
            TabOrder = 1
            Width = 97
          end
          object mmObs: TcxMemo
            Left = 0
            Top = 13
            TabStop = False
            ParentFont = False
            TabOrder = 2
            Height = 58
            Width = 145
          end
          object cbMaos: TcxCheckBox
            Left = 280
            Top = 75
            TabStop = False
            AutoSize = False
            Caption = 'Recebido em cash'
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Height = 17
            Width = 121
          end
          object Panel5: TPanel
            Left = 447
            Top = 0
            Width = 167
            Height = 73
            Align = alRight
            TabOrder = 4
            ExplicitLeft = 455
            ExplicitHeight = 77
            object Panel6: TPanel
              Left = 1
              Top = -1
              Width = 165
              Height = 73
              Align = alBottom
              TabOrder = 0
              ExplicitTop = 3
              object btnCanc: TcxButton
                AlignWithMargins = True
                Left = 4
                Top = 42
                Width = 78
                Height = 27
                Align = alLeft
                Caption = 'CANCELAR'
                Enabled = False
                TabOrder = 0
                WordWrap = True
                OnClick = btnCancClick
              end
              object btnBaixa: TcxButton
                AlignWithMargins = True
                Left = 83
                Top = 42
                Width = 78
                Height = 27
                Align = alRight
                Caption = 'BAIXAR'
                Enabled = False
                TabOrder = 1
                OnClick = btnBaixaClick
              end
              object Panel1: TPanel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 157
                Height = 32
                Align = alTop
                Caption = 'Panel1'
                TabOrder = 2
                object edValor: TcxCurrencyEdit
                  AlignWithMargins = True
                  Left = 4
                  Top = 4
                  Align = alClient
                  ParentFont = False
                  Properties.Alignment.Horz = taCenter
                  Properties.ReadOnly = True
                  Style.Color = 8454143
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Width = 149
                end
              end
            end
            object Panel7: TPanel
              Left = 1
              Top = 1
              Width = 165
              Height = 2
              Align = alClient
              TabOrder = 1
              object cxLabel1: TcxLabel
                Left = 1
                Top = 1
                Cursor = crHandPoint
                Align = alClient
                Caption = 'Associar baixa com plano de contas'
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clBlue
                Style.Font.Height = -11
                Style.Font.Name = 'Comic Sans MS'
                Style.Font.Style = [fsUnderline]
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                AnchorX = 83
                AnchorY = 1
              end
            end
          end
          object edJuros: TcxCurrencyEdit
            Left = 148
            Top = 50
            ParentFont = False
            Properties.OnChange = edMultaPropertiesChange
            TabOrder = 5
            Width = 91
          end
          object edDesc: TcxCurrencyEdit
            Left = 243
            Top = 50
            ParentFont = False
            Properties.OnChange = edDescPropertiesChange
            TabOrder = 6
            Width = 97
          end
        end
      end
    end
  end
  object grd: TcxGrid [2]
    Left = 0
    Top = 0
    Width = 720
    Height = 427
    Align = alClient
    TabOrder = 2
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    object tbv: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      OnCellClick = tbvCellClick
      DataController.DataSource = DM.DSFinan_apagar
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '000'
          Kind = skCount
          FieldName = 'id'
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'valor'
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'valor_pg'
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clYellow
      object tbvid: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id'
        HeaderAlignmentHorz = taCenter
        Width = 39
      end
      object tbvid_movi: TcxGridDBColumn
        Caption = 'MOV'
        DataBinding.FieldName = 'id_movi'
        HeaderAlignmentHorz = taCenter
        HeaderHint = 'Movimento que originou a conta'
        Width = 41
      end
      object tbvtipo: TcxGridDBColumn
        Caption = 'T'
        DataBinding.FieldName = 'tipo'
        HeaderAlignmentHorz = taCenter
        HeaderHint = 'Tipo'
      end
      object tbvfavorec_nome: TcxGridDBColumn
        Caption = 'NOME DO FAVORECIDO'
        DataBinding.FieldName = 'favorec_nome'
        HeaderAlignmentHorz = taCenter
        Width = 209
      end
      object tbvfavorec_doc: TcxGridDBColumn
        Caption = 'DOCUM. FAVOR.'
        DataBinding.FieldName = 'favorec_doc'
        HeaderAlignmentHorz = taCenter
        Width = 115
      end
      object tbvnmro_doc: TcxGridDBColumn
        Caption = 'N'#186' DOCUM.'
        DataBinding.FieldName = 'nmro_doc'
        HeaderAlignmentHorz = taCenter
        Width = 88
      end
      object tbvdt_process: TcxGridDBColumn
        Caption = 'DT. PROC.'
        DataBinding.FieldName = 'dt_process'
        HeaderAlignmentHorz = taCenter
      end
      object tbvdt_vencimento: TcxGridDBColumn
        Caption = 'DT. VENC.'
        DataBinding.FieldName = 'dt_vencimento'
        HeaderAlignmentHorz = taCenter
      end
      object tbvdt_baixa: TcxGridDBColumn
        Caption = 'DT BAIXA'
        DataBinding.FieldName = 'dt_baixa'
        HeaderAlignmentHorz = taCenter
      end
      object tbvhora_baixa: TcxGridDBColumn
        Caption = 'HORA'
        DataBinding.FieldName = 'hora_baixa'
        HeaderAlignmentHorz = taCenter
      end
      object tbvvalor: TcxGridDBColumn
        Caption = 'VALOR'
        DataBinding.FieldName = 'valor'
        HeaderAlignmentHorz = taCenter
      end
      object tbvvalor_multa: TcxGridDBColumn
        Caption = 'MULTA'
        DataBinding.FieldName = 'valor_multa'
        HeaderAlignmentHorz = taCenter
      end
      object tbvvalor_juros: TcxGridDBColumn
        Caption = 'JUROS'
        DataBinding.FieldName = 'valor_juros'
        HeaderAlignmentHorz = taCenter
      end
      object tbvvalor_desc: TcxGridDBColumn
        Caption = 'DESC.'
        DataBinding.FieldName = 'valor_desc'
        HeaderAlignmentHorz = taCenter
      end
      object tbvvalor_pg: TcxGridDBColumn
        Caption = 'VR. PAGO'
        DataBinding.FieldName = 'valor_pg'
        HeaderAlignmentHorz = taCenter
      end
      object tbvcancelado: TcxGridDBColumn
        Caption = 'CANC.'
        DataBinding.FieldName = 'cancelado'
        HeaderAlignmentHorz = taCenter
      end
      object tbvcc: TcxGridDBColumn
        Caption = 'C.CUSTO'
        DataBinding.FieldName = 'cc'
        HeaderAlignmentHorz = taCenter
      end
    end
    object lv: TcxGridLevel
      GridView = tbv
    end
  end
  inherited ini: TFormStorage
    Left = 584
    Top = 32
  end
  inherited FR: TFormResizer
    Left = 624
    Top = 32
  end
  inherited EnterTab: TACBrEnterTab
    Left = 664
    Top = 32
  end
end
