inherited frmLanca_chq_terc: TfrmLanca_chq_terc
  Caption = 'frmLanca_chq_terc'
  ClientWidth = 716
  ExplicitWidth = 722
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Width = 716
    ExplicitWidth = 716
    inherited pnlBtnClose: TPanel
      Left = 628
      ExplicitLeft = 628
    end
    inherited pnlBase: TPanel
      Width = 627
      ExplicitWidth = 627
      inherited pnlbasebotton: TPanel
        Width = 580
        ExplicitWidth = 580
        inherited Bar1: TdxStatusBar
          Width = 578
          ExplicitWidth = 578
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 716
    Properties.ActivePage = TabCad
    ExplicitWidth = 716
    ClientRectRight = 716
    inherited TabCad: TcxTabSheet
      ExplicitTop = 26
      ExplicitWidth = 716
      ExplicitHeight = 294
      object Label1: TLabel [0]
        Left = 8
        Top = 16
        Width = 14
        Height = 15
        Caption = 'ID'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel [1]
        Left = 51
        Top = 15
        Width = 84
        Height = 15
        Caption = 'N'#186' DO CHEQUE'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel [2]
        Left = 178
        Top = 15
        Width = 94
        Height = 15
        Caption = 'DATA DE EMISS.'
        FocusControl = cxDBDateEdit1
      end
      object Label4: TLabel [3]
        Left = 305
        Top = 15
        Width = 58
        Height = 15
        Caption = 'BOM PARA'
        FocusControl = cxDBDateEdit2
      end
      object Label5: TLabel [4]
        Left = 432
        Top = 15
        Width = 65
        Height = 15
        Caption = 'DT DEVOLV.'
        FocusControl = cxDBDateEdit3
      end
      object Label6: TLabel [5]
        Left = 8
        Top = 64
        Width = 155
        Height = 15
        Caption = 'PROPRIET'#193'RIO DO CHEQUE'
        FocusControl = cxDBTextEdit2
      end
      object Label7: TLabel [6]
        Left = 8
        Top = 112
        Width = 131
        Height = 15
        Caption = 'PORTADOR DO CHEQUE'
        FocusControl = cxDBTextEdit3
      end
      object Label8: TLabel [7]
        Left = 8
        Top = 160
        Width = 87
        Height = 15
        Caption = 'TEL. PORTADOR'
        FocusControl = cxDBTextEdit4
      end
      object Label9: TLabel [8]
        Left = 134
        Top = 160
        Width = 40
        Height = 15
        Caption = 'BANCO'
        FocusControl = cxDBSpinEdit2
      end
      object Label10: TLabel [9]
        Left = 578
        Top = 157
        Width = 40
        Height = 15
        Caption = 'CONTA'
        FocusControl = cxDBTextEdit5
      end
      object Label11: TLabel [10]
        Left = 8
        Top = 208
        Width = 37
        Height = 15
        Caption = 'VALOR'
        FocusControl = cxDBCalcEdit1
      end
      object Label12: TLabel [11]
        Left = 134
        Top = 208
        Width = 46
        Height = 15
        Caption = 'STATUS'
        FocusControl = cxDBTextEdit6
      end
      object Label13: TLabel [12]
        Left = 269
        Top = 208
        Width = 44
        Height = 15
        Caption = 'AL'#205'NEA'
        FocusControl = cxDBTextEdit7
      end
      inherited dbNav: TcxDBNavigator
        Width = 707
        Buttons.OnButtonClick = dbNavButtonsButtonClick
        TabOrder = 13
        ExplicitWidth = 707
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 51
        Top = 31
        DataBinding.DataField = 'nmro'
        DataBinding.DataSource = DS1
        TabOrder = 0
        Width = 121
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 178
        Top = 31
        DataBinding.DataField = 'data_em'
        DataBinding.DataSource = DS1
        Properties.DateButtons = []
        TabOrder = 1
        Width = 121
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 305
        Top = 31
        DataBinding.DataField = 'dt_bompara'
        DataBinding.DataSource = DS1
        Properties.DateButtons = []
        TabOrder = 2
        Width = 121
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 432
        Top = 31
        DataBinding.DataField = 'dt_devolvido'
        DataBinding.DataSource = DS1
        Properties.DateButtons = []
        TabOrder = 3
        Width = 121
      end
      object cxDBSpinEdit1: TcxDBLabel
        Left = 8
        Top = 32
        DataBinding.DataField = 'id'
        DataBinding.DataSource = DS1
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Height = 19
        Width = 37
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 8
        Top = 80
        DataBinding.DataField = 'nome_dono'
        DataBinding.DataSource = DS1
        Properties.CharCase = ecUpperCase
        TabOrder = 4
        Width = 690
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 8
        Top = 128
        DataBinding.DataField = 'nome_portador'
        DataBinding.DataSource = DS1
        Properties.CharCase = ecUpperCase
        TabOrder = 5
        Width = 690
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 8
        Top = 176
        DataBinding.DataField = 'tel_portador'
        DataBinding.DataSource = DS1
        TabOrder = 6
        Width = 121
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 577
        Top = 176
        DataBinding.DataField = 'conta'
        DataBinding.DataSource = DS1
        Properties.CharCase = ecUpperCase
        TabOrder = 8
        Width = 121
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 269
        Top = 224
        DataBinding.DataField = 'alinea'
        DataBinding.DataSource = DS1
        Properties.CharCase = ecUpperCase
        TabOrder = 11
        Width = 429
      end
      object cxDBCalcEdit1: TcxDBCurrencyEdit
        Left = 8
        Top = 224
        DataBinding.DataField = 'valor'
        DataBinding.DataSource = DS1
        TabOrder = 9
        Width = 121
      end
      object cxDBSpinEdit2: TcxDBLookupComboBox
        Left = 134
        Top = 176
        DataBinding.DataField = 'banco'
        DataBinding.DataSource = DS1
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'nomebanco'
          end>
        Properties.ListSource = DM.DSBancos
        TabOrder = 7
        Width = 438
      end
      object cxDBTextEdit6: TcxDBImageComboBox
        Left = 134
        Top = 224
        DataBinding.DataField = 'status'
        DataBinding.DataSource = DS1
        Properties.Items = <
          item
            Description = 'CUSTODIADO'
            ImageIndex = 0
            Value = 'C'
          end
          item
            Description = 'DEPOSITADO'
            Value = 'D'
          end
          item
            Description = 'PAGO A 3'#186
            Value = 'P'
          end
          item
            Description = 'DEVOLVIDO'
            Value = 'A'
          end
          item
            Description = 'OUTRO'
            Value = 'O'
          end>
        TabOrder = 10
        Width = 131
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 716
      inherited grd: TcxGrid
        Width = 716
        ExplicitWidth = 716
        inherited tbv: TcxGridDBTableView
          OptionsView.ScrollBars = ssBoth
          object tbvid: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 40
          end
          object tbvnmro: TcxGridDBColumn
            Tag = 1
            Caption = 'N'#186' CHEQUE'
            DataBinding.FieldName = 'nmro'
            HeaderAlignmentHorz = taCenter
            Width = 98
            OnHeaderClick = tbvnmroHeaderClick
          end
          object tbvdata_em: TcxGridDBColumn
            Caption = 'DT EMISS'#195'O'
            DataBinding.FieldName = 'data_em'
            HeaderAlignmentHorz = taCenter
            OnHeaderClick = tbvnmroHeaderClick
          end
          object tbvdt_bompara: TcxGridDBColumn
            Caption = 'BOM PARA'
            DataBinding.FieldName = 'dt_bompara'
            HeaderAlignmentHorz = taCenter
            OnHeaderClick = tbvnmroHeaderClick
          end
          object tbvdt_devolvido: TcxGridDBColumn
            Caption = 'DEVOLV. EM'
            DataBinding.FieldName = 'dt_devolvido'
            HeaderAlignmentHorz = taCenter
            OnHeaderClick = tbvnmroHeaderClick
          end
          object tbvvalor: TcxGridDBColumn
            Caption = 'VALOR'
            DataBinding.FieldName = 'valor'
            HeaderAlignmentHorz = taCenter
            OnHeaderClick = tbvnmroHeaderClick
          end
          object tbvstatus: TcxGridDBColumn
            Caption = 'STATUS'
            DataBinding.FieldName = 'status'
            HeaderAlignmentHorz = taCenter
            Width = 91
          end
          object tbvnome_dono: TcxGridDBColumn
            Caption = 'NOME DO PROPRIET'#193'RIO'
            DataBinding.FieldName = 'nome_dono'
            HeaderAlignmentHorz = taCenter
            Width = 191
            OnHeaderClick = tbvnmroHeaderClick
          end
          object tbvnome_portador: TcxGridDBColumn
            Caption = 'NOME DO PORTADOR'
            DataBinding.FieldName = 'nome_portador'
            HeaderAlignmentHorz = taCenter
            Width = 165
            OnHeaderClick = tbvnmroHeaderClick
          end
          object tbvtel_portador: TcxGridDBColumn
            Caption = 'TEL. PORT.'
            DataBinding.FieldName = 'tel_portador'
            HeaderAlignmentHorz = taCenter
          end
          object tbvbanco: TcxGridDBColumn
            Caption = 'BANCO'
            DataBinding.FieldName = 'banco'
            HeaderAlignmentHorz = taCenter
          end
          object tbvconta: TcxGridDBColumn
            Caption = 'CONTA'
            DataBinding.FieldName = 'conta'
            HeaderAlignmentHorz = taCenter
            OnHeaderClick = tbvnmroHeaderClick
          end
          object tbvalinea: TcxGridDBColumn
            Caption = 'ALINEA'
            DataBinding.FieldName = 'alinea'
            HeaderAlignmentHorz = taCenter
          end
        end
      end
      inherited pnlPesq: TPanel
        Width = 716
        ExplicitWidth = 716
        inherited edPesq: TcxTextEdit
          Properties.OnChange = edPesqPropertiesChange
        end
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'BAIXA'
      ImageIndex = 2
      OnShow = cxTabSheet1Show
      object GRD1: TcxGrid
        Left = 0
        Top = 0
        Width = 716
        Height = 248
        Align = alClient
        TabOrder = 0
        LevelTabs.Slants.Kind = skCutCorner
        LevelTabs.Style = 6
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object tbv1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnCellClick = tbvCellClick
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
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.NoDataToDisplayInfoText = '<Sem dados para exibir...>'
          OptionsView.CellAutoHeight = True
          OptionsView.GridLineColor = clBlack
          OptionsView.GroupByBox = False
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clYellow
          object tbv1id: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object tbv1nmro: TcxGridDBColumn
            Caption = 'N'#186' CHEQUE'
            DataBinding.FieldName = 'nmro'
            HeaderAlignmentHorz = taCenter
          end
          object tbv1data_em: TcxGridDBColumn
            Caption = 'DT EMISS'#195'O'
            DataBinding.FieldName = 'data_em'
            HeaderAlignmentHorz = taCenter
            Width = 99
          end
          object tbv1dt_bompara: TcxGridDBColumn
            Caption = 'BOM PARA'
            DataBinding.FieldName = 'dt_bompara'
            HeaderAlignmentHorz = taCenter
          end
          object tbv1valor: TcxGridDBColumn
            Caption = 'VALOR'
            DataBinding.FieldName = 'valor'
            HeaderAlignmentHorz = taCenter
          end
          object tbv1dt_devolvido: TcxGridDBColumn
            Caption = 'DEVOLV. EM'
            DataBinding.FieldName = 'dt_devolvido'
            HeaderAlignmentHorz = taCenter
          end
          object tbv1dt_baixa: TcxGridDBColumn
            Caption = 'DT BAIXA'
            DataBinding.FieldName = 'dt_baixa'
            HeaderAlignmentHorz = taCenter
          end
          object tbv1nome_dono: TcxGridDBColumn
            Caption = 'NOME DO PROPRIET'#193'RIO'
            DataBinding.FieldName = 'nome_dono'
            HeaderAlignmentHorz = taCenter
          end
          object tbv1nome_portador: TcxGridDBColumn
            Caption = 'NOME DO PORTADOR'
            DataBinding.FieldName = 'nome_portador'
            HeaderAlignmentHorz = taCenter
          end
          object tbv1tel_portador: TcxGridDBColumn
            Caption = 'TEL PORT.'
            DataBinding.FieldName = 'tel_portador'
            HeaderAlignmentHorz = taCenter
          end
          object tbv1banco: TcxGridDBColumn
            Caption = 'BANCO'
            DataBinding.FieldName = 'banco'
            HeaderAlignmentHorz = taCenter
          end
          object tbv1conta: TcxGridDBColumn
            Caption = 'CONTA'
            DataBinding.FieldName = 'conta'
            HeaderAlignmentHorz = taCenter
          end
          object tbv1status: TcxGridDBColumn
            Caption = 'STATUS'
            DataBinding.FieldName = 'status'
            HeaderAlignmentHorz = taCenter
          end
          object tbv1alinea: TcxGridDBColumn
            Caption = 'AL'#205'NEA'
            DataBinding.FieldName = 'alinea'
            HeaderAlignmentHorz = taCenter
          end
        end
        object lv1: TcxGridLevel
          GridView = tbv1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 248
        Width = 716
        Height = 46
        Align = alBottom
        TabOrder = 1
        object Label14: TLabel
          Left = 391
          Top = 6
          Width = 71
          Height = 15
          Caption = 'DATA BAIXA'
          FocusControl = dtBx
        end
        object rg1: TcxRadioGroup
          Left = -5
          Top = -8
          ParentFont = False
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'CUSTODIADOS'
              Value = 'C'
            end
            item
              Caption = 'DEPOSITADOS'
              Value = 'D'
            end
            item
              Caption = 'TODOS'
              Value = '*'
            end
            item
              Caption = 'DEVOLVIDOS'
              Value = 'A'
            end>
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          OnClick = rg1Click
          Height = 54
          Width = 200
        end
        object RG2: TcxRadioGroup
          Left = 201
          Top = -8
          ParentFont = False
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'DEPOSITAR'
            end
            item
              Caption = 'PAGAR A 3'#186's'
            end
            item
              Caption = 'TROCAR'
            end
            item
              Caption = 'DEVOLVIDO'
            end>
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -9
          Style.Font.Name = 'Comic Sans MS'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          OnClick = rg1Click
          Height = 54
          Width = 184
        end
        object dtBx: TcxDateEdit
          Left = 391
          Top = 21
          Properties.DateButtons = []
          TabOrder = 2
          Width = 102
        end
        object btnBaixa: TcxButton
          AlignWithMargins = True
          Left = 525
          Top = 7
          Width = 78
          Height = 37
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = 'BAIXAR'
          TabOrder = 3
          OnClick = btnBaixaClick
        end
      end
    end
  end
  inherited ini: TFormStorage
    Left = 632
    Top = 64
  end
  inherited DS1: TDataSource
    DataSet = DM.Qfinan_ch_terc
    Left = 592
    Top = 64
  end
  inherited FR: TFormResizer
    Left = 688
    Top = 0
  end
  inherited EnterTab: TACBrEnterTab
    Left = 680
    Top = 72
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
