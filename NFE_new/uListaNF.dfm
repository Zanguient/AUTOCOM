inherited frmListaNF: TfrmListaNF
  Caption = 'Listagem de NF'
  ClientHeight = 388
  ClientWidth = 880
  ExplicitWidth = 886
  ExplicitHeight = 416
  PixelsPerInch = 96
  TextHeight = 15
  object g1: TcxGrid [0]
    Left = 0
    Top = 0
    Width = 880
    Height = 346
    Align = alClient
    TabOrder = 4
    LevelTabs.Slants.Kind = skCutCorner
    LevelTabs.Style = 6
    LookAndFeel.SkinName = 'Caramel'
    object tbv: TcxGridDBTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      FilterBox.Visible = fvNever
      OnCellClick = tbvCellClick
      OnCustomDrawCell = tbvCustomDrawCell
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.SyncMode = False
      DataController.DataSource = DSNF
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      NewItemRow.InfoText = 'Clique aqui para adicionar nova linha'
      OptionsBehavior.PostponedSynchronization = False
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.CopyPreviewToClipboard = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHiding = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.NoDataToDisplayInfoText = '[[ VAZIO ]]'
      OptionsView.CellAutoHeight = True
      OptionsView.GridLineColor = clBlack
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clYellow
      Styles.Content = cxStyle1
      Styles.Header = cxStyle1
      object tbvid: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id'
        HeaderAlignmentHorz = taCenter
        Width = 26
      end
      object tbvIde_nNF: TcxGridDBColumn
        Caption = 'N'#186' NF'
        DataBinding.FieldName = 'Ide_nNF'
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object tbvIde_serie: TcxGridDBColumn
        Caption = 'S'#201'R'
        DataBinding.FieldName = 'Ide_serie'
        HeaderAlignmentHorz = taCenter
        Width = 39
      end
      object tbvIde_dEmi: TcxGridDBColumn
        Caption = 'DT EM.'
        DataBinding.FieldName = 'Ide_dEmi'
        HeaderAlignmentHorz = taCenter
      end
      object tbvIde_dSaiEnt: TcxGridDBColumn
        Caption = 'DT ENT/SAI'
        DataBinding.FieldName = 'Ide_dSaiEnt'
        HeaderAlignmentHorz = taCenter
      end
      object tbvDest_CNPJCPF: TcxGridDBColumn
        Caption = 'CNPJ/CPF'
        DataBinding.FieldName = 'Dest_CNPJCPF'
        HeaderAlignmentHorz = taCenter
        Width = 102
      end
      object tbvDest_IE: TcxGridDBColumn
        Caption = 'INSCR. ESTAD.'
        DataBinding.FieldName = 'Dest_IE'
        HeaderAlignmentHorz = taCenter
        Width = 92
      end
      object tbvDest_xNome: TcxGridDBColumn
        Caption = 'DESTINAT'#193'RIO'
        DataBinding.FieldName = 'Dest_xNome'
        HeaderAlignmentHorz = taCenter
        Width = 199
      end
      object tbvICMSTot_vNF: TcxGridDBColumn
        Caption = 'VALOR'
        DataBinding.FieldName = 'ICMSTot_vNF'
        HeaderAlignmentHorz = taCenter
        Width = 44
      end
      object tbvstatus: TcxGridDBColumn
        Caption = 'STATUS'
        DataBinding.FieldName = 'status'
        HeaderAlignmentHorz = taCenter
      end
    end
    object g1Lvl1: TcxGridLevel
      GridView = tbv
    end
  end
  object Panel2: TPanel [1]
    Left = 239
    Top = 72
    Width = 418
    Height = 225
    BevelWidth = 3
    Color = 11786713
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object pg1: TPageControl
      Left = 3
      Top = 3
      Width = 412
      Height = 178
      ActivePage = tab2
      Align = alClient
      Style = tsButtons
      TabOrder = 0
      object tab1: TTabSheet
        Caption = 'N'#218'MERO'
        OnShow = tab1Show
        object Shape13: TShape
          Left = 0
          Top = 0
          Width = 404
          Height = 145
          Align = alClient
          Brush.Color = clMoneyGreen
          ExplicitLeft = -1
          ExplicitWidth = 984
          ExplicitHeight = 315
        end
        object Label1: TLabel
          Left = 136
          Top = 48
          Width = 102
          Height = 15
          Caption = 'Informe o N'#186' da NF'
        end
        object ednmro: TEdit
          Left = 136
          Top = 67
          Width = 121
          Height = 23
          NumbersOnly = True
          TabOrder = 0
        end
      end
      object tab2: TTabSheet
        Caption = 'DATA'
        ImageIndex = 1
        OnShow = tab2Show
        object Shape2: TShape
          Left = 0
          Top = 0
          Width = 404
          Height = 145
          Align = alClient
          Brush.Color = 11914450
          ExplicitTop = -1
          ExplicitHeight = 148
        end
        object Label2: TLabel
          Left = 73
          Top = 31
          Width = 94
          Height = 15
          Caption = 'Informe o Per'#237'odo'
        end
        object cb1: TCheckBox
          Left = 73
          Top = 100
          Width = 302
          Height = 17
          TabStop = False
          Caption = 'Pesquisar por data de sa'#237'da ao inv'#233's da data de emiss'#227'o'
          TabOrder = 2
        end
        object D1: TcxDateEdit
          Left = 73
          Top = 52
          TabOrder = 0
          Width = 121
        end
        object D2: TcxDateEdit
          Left = 217
          Top = 52
          TabOrder = 1
          Width = 121
        end
      end
      object tab3: TTabSheet
        Caption = 'DESTINAT'#193'RIO'
        ImageIndex = 2
        OnShow = tab3Show
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 404
          Height = 65
          Align = alClient
          Brush.Color = clMoneyGreen
          ExplicitLeft = -1
          ExplicitWidth = 984
          ExplicitHeight = 315
        end
        object Label3: TLabel
          Left = 3
          Top = 5
          Width = 125
          Height = 15
          Caption = 'Selecione o destinat'#225'rio'
        end
        object cmb1: TRxDBLookupCombo
          Left = 3
          Top = 26
          Width = 398
          Height = 22
          DropDownCount = 8
          LookupField = 'id'
          LookupDisplay = 'razaosocial'
          LookupSource = DSDest
          TabOrder = 0
          OnClick = cmb1Click
        end
        object Panel4: TPanel
          Left = 0
          Top = 65
          Width = 404
          Height = 80
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          Visible = False
          object DBText1: TDBText
            Left = 56
            Top = 29
            Width = 97
            Height = 17
            DataField = 'cnpj'
            DataSource = DSDest
          end
          object Label4: TLabel
            Left = 21
            Top = 29
            Width = 29
            Height = 15
            Caption = 'CNPJ'
          end
          object DBText2: TDBText
            Left = 56
            Top = 44
            Width = 338
            Height = 17
            DataField = 'logradouro'
            DataSource = DSDest
          end
          object Label5: TLabel
            Left = 9
            Top = 44
            Width = 41
            Height = 15
            Caption = 'Lograd.:'
          end
          object DBText3: TDBText
            Left = 56
            Top = 60
            Width = 338
            Height = 17
            DataField = 'tel1'
            DataSource = DSDest
          end
          object Label6: TLabel
            Left = 23
            Top = 60
            Width = 27
            Height = 15
            Caption = 'Fone:'
          end
          object DBText4: TDBText
            Left = 56
            Top = -2
            Width = 330
            Height = 17
            DataField = 'nome'
            DataSource = DSDest
          end
          object Label7: TLabel
            Left = 15
            Top = -2
            Width = 35
            Height = 15
            Caption = 'NOME'
          end
          object DBText5: TDBText
            Left = 56
            Top = 13
            Width = 338
            Height = 17
            DataField = 'cidade'
            DataSource = DSDest
          end
          object Label8: TLabel
            Left = 6
            Top = 13
            Width = 44
            Height = 15
            Caption = 'CIDADE'
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 3
      Top = 181
      Width = 412
      Height = 41
      Align = alBottom
      TabOrder = 1
      object btnPesq2: TcxButton
        AlignWithMargins = True
        Left = 246
        Top = 6
        Width = 97
        Height = 33
        Caption = 'PESQUISAR'
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 0
        TabStop = False
        OnClick = btnPesq2Click
      end
      object btnCanc2: TcxButton
        AlignWithMargins = True
        Left = 88
        Top = 5
        Width = 97
        Height = 33
        Caption = 'FECHAR'
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 1
        TabStop = False
        OnClick = btnCanc2Click
      end
    end
  end
  object Panel5: TPanel [2]
    Left = 345
    Top = 130
    Width = 185
    Height = 109
    BevelWidth = 3
    Color = 11786713
    ParentBackground = False
    TabOrder = 3
    Visible = False
    object Label9: TLabel
      Left = 33
      Top = 7
      Width = 77
      Height = 15
      Caption = 'Informe a data'
    end
    object btnOK1: TcxButton
      AlignWithMargins = True
      Left = 96
      Top = 62
      Width = 73
      Height = 33
      Caption = 'OK'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 1
      TabStop = False
      OnClick = btnOK1Click
    end
    object btnCanc1: TcxButton
      AlignWithMargins = True
      Left = 13
      Top = 62
      Width = 81
      Height = 33
      Caption = 'FECHAR'
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 2
      TabStop = False
      OnClick = btnCanc1Click
    end
    object D3: TcxDateEdit
      Left = 30
      Top = 28
      TabOrder = 0
      Width = 121
    end
  end
  inherited TPA: TPanel
    Top = 346
    Width = 880
    ExplicitTop = 346
    ExplicitWidth = 880
    inherited pnlBtnClose: TPanel
      Left = 786
      ExplicitLeft = 786
      inherited btnSair: TcxButton
        TabStop = False
      end
    end
    inherited pnlBase: TPanel
      Width = 785
      ExplicitWidth = 785
      object btnPesquisar: TcxButton
        Tag = 1
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 30
        Align = alLeft
        Caption = 'PESQUISAR'
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 0
        TabStop = False
        OnClick = btnPesquisarClick
      end
      object btnCancelar: TcxButton
        Tag = 2
        AlignWithMargins = True
        Left = 94
        Top = 3
        Width = 85
        Height = 30
        Align = alLeft
        Caption = 'CANCELAR'
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 1
        TabStop = False
        OnClick = btnCancelarClick
      end
      object btnEnviar: TcxButton
        Tag = 3
        AlignWithMargins = True
        Left = 185
        Top = 3
        Width = 127
        Height = 30
        Align = alLeft
        Caption = 'ENVIAR POR E-MAIL'
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 2
        TabStop = False
        OnClick = btnEnviarClick
      end
      object btnConsultar: TcxButton
        Tag = 4
        AlignWithMargins = True
        Left = 318
        Top = 3
        Width = 90
        Height = 30
        Align = alLeft
        Caption = 'CONSULTAR'
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 3
        TabStop = False
        OnClick = btnConsultarClick
      end
      object btncce: TcxButton
        Tag = 5
        AlignWithMargins = True
        Left = 414
        Top = 3
        Width = 127
        Height = 30
        Align = alLeft
        Caption = 'CARTA DE CORRE'#199#195'O'
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 4
        TabStop = False
        OnClick = btncceClick
      end
      object btnData: TcxButton
        Tag = 7
        AlignWithMargins = True
        Left = 547
        Top = 3
        Width = 181
        Height = 30
        Align = alLeft
        Caption = 'INFORMAR DATA DE SA'#205'DA'
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 5
        TabStop = False
        OnClick = btnDataClick
      end
    end
  end
  inherited Edit1: TEdit
    Left = 712
    Top = 101
    ExplicitLeft = 712
    ExplicitTop = 101
  end
  inherited ini: TFormStorage
    Left = 812
    Top = 136
  end
  inherited FR: TFormResizer
    Left = 808
    Top = 72
  end
  inherited EnterTab: TACBrEnterTab
    Left = 804
    Top = 16
  end
  object DSNF: TDataSource
    DataSet = DM.QNF
    Left = 28
    Top = 32
  end
  object DSDest: TDataSource
    DataSet = DM.QvwDest_nf
    Left = 36
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 32
    Top = 88
    object Detalhes1: TMenuItem
      Caption = 'Detalhes...'
      OnClick = Detalhes1Click
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Scalable = True
    Left = 64
    Top = 232
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
end
