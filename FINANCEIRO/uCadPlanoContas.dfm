inherited frmCadPlanoContas: TfrmCadPlanoContas
  Caption = 'frmCadPlanoContas'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgCad: TcxPageControl
    Properties.ActivePage = TabCad
    inherited TabCad: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 632
      ExplicitHeight = 290
      object Label1: TLabel [0]
        Left = 11
        Top = 13
        Width = 107
        Height = 15
        Caption = 'PLANO DE CONTAS'
      end
      inherited dbNav: TcxDBNavigator
        TabOrder = 17
        Visible = False
      end
      object cmb1: TcxImageComboBox
        Tag = 1
        Left = 11
        Top = 32
        ParentFont = False
        Properties.Items = <>
        TabOrder = 0
        OnClick = cmb1Click
        Width = 545
      end
      object btnNew1: TcxButton
        Tag = 1
        AlignWithMargins = True
        Left = 590
        Top = 32
        Width = 28
        Height = 24
        Hint = 'Adicionar novo Registro ao nivel'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = '+'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TabStop = False
        OnClick = btnNew1Click
      end
      object cmb2: TcxImageComboBox
        Tag = 2
        Left = 11
        Top = 61
        Enabled = False
        ParentFont = False
        Properties.Items = <>
        TabOrder = 3
        OnClick = cmb1Click
        Width = 545
      end
      object btnNew2: TcxButton
        Tag = 2
        AlignWithMargins = True
        Left = 590
        Top = 61
        Width = 28
        Height = 24
        Hint = 'Adicionar novo Registro ao nivel'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = '+'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        TabStop = False
        OnClick = btnNew1Click
      end
      object cmb3: TcxImageComboBox
        Tag = 3
        Left = 11
        Top = 89
        Enabled = False
        ParentFont = False
        Properties.Items = <>
        TabOrder = 6
        OnClick = cmb1Click
        Width = 545
      end
      object btnNew3: TcxButton
        Tag = 3
        AlignWithMargins = True
        Left = 590
        Top = 89
        Width = 28
        Height = 24
        Hint = 'Adicionar novo Registro ao nivel'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = '+'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        TabStop = False
        OnClick = btnNew1Click
      end
      object cmb4: TcxImageComboBox
        Tag = 4
        Left = 11
        Top = 117
        Enabled = False
        ParentFont = False
        Properties.Items = <>
        TabOrder = 9
        OnClick = cmb1Click
        Width = 545
      end
      object btnNew4: TcxButton
        Tag = 4
        AlignWithMargins = True
        Left = 590
        Top = 117
        Width = 28
        Height = 24
        Hint = 'Adicionar novo Registro ao nivel'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = '+'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        TabStop = False
        OnClick = btnNew1Click
      end
      object cmb5: TcxImageComboBox
        Tag = 5
        Left = 11
        Top = 145
        Enabled = False
        ParentFont = False
        Properties.Items = <>
        TabOrder = 12
        OnClick = cmb1Click
        Width = 545
      end
      object btnNew5: TcxButton
        Tag = 5
        AlignWithMargins = True
        Left = 590
        Top = 145
        Width = 28
        Height = 24
        Hint = 'Adicionar novo Registro ao nivel'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = '+'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        TabStop = False
        OnClick = btnNew1Click
      end
      object cmb6: TcxImageComboBox
        Tag = 6
        Left = 11
        Top = 173
        Enabled = False
        ParentFont = False
        Properties.Items = <>
        TabOrder = 15
        OnClick = cmb1Click
        Width = 545
      end
      object btnAdd1: TcxButton
        Tag = 1
        AlignWithMargins = True
        Left = 559
        Top = 32
        Width = 28
        Height = 24
        Hint = 'Adicionar novo N'#237'vel'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #61503
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ParentFont = False
        OnClick = btnAdd1Click
      end
      object btnAdd2: TcxButton
        Tag = 2
        AlignWithMargins = True
        Left = 559
        Top = 61
        Width = 28
        Height = 24
        Hint = 'Adicionar novo N'#237'vel'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #61503
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ParentFont = False
        OnClick = btnAdd2Click
      end
      object btnAdd3: TcxButton
        Tag = 3
        AlignWithMargins = True
        Left = 559
        Top = 89
        Width = 28
        Height = 24
        Hint = 'Adicionar novo N'#237'vel'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #61503
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ParentFont = False
        OnClick = btnAdd3Click
      end
      object btnAdd4: TcxButton
        Tag = 4
        AlignWithMargins = True
        Left = 559
        Top = 117
        Width = 28
        Height = 24
        Hint = 'Adicionar novo N'#237'vel'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #61503
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ParentFont = False
        OnClick = btnAdd4Click
      end
      object btnAdd5: TcxButton
        Tag = 5
        AlignWithMargins = True
        Left = 559
        Top = 145
        Width = 28
        Height = 24
        Hint = 'Adicionar novo N'#237'vel'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #61503
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ParentFont = False
        OnClick = btnAdd5Click
      end
      object btnNew6: TcxButton
        Tag = 6
        AlignWithMargins = True
        Left = 590
        Top = 173
        Width = 28
        Height = 24
        Hint = 'Adicionar novo Registro ao nivel'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = '+'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        TabStop = False
        OnClick = btnNew1Click
      end
      object btnAss: TcxButton
        AlignWithMargins = True
        Left = 248
        Top = 220
        Width = 101
        Height = 24
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = 'ASSOCIAR'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        TabStop = False
        Visible = False
        OnClick = btnAssClick
      end
    end
    inherited TabPesq: TcxTabSheet
      OnHide = TabPesqHide
      ExplicitLeft = 0
      ExplicitWidth = 640
      ExplicitHeight = 294
      inherited grd: TcxGrid
        inherited tbv: TcxGridDBTableView
          OptionsData.Deleting = True
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 49
          end
          object tbvplano: TcxGridDBColumn
            Tag = 1
            DataBinding.FieldName = 'plano'
            HeaderAlignmentHorz = taCenter
            Width = 77
            OnHeaderClick = tbvplanoHeaderClick
          end
          object tbvnivel: TcxGridDBColumn
            DataBinding.FieldName = 'nivel'
            HeaderAlignmentHorz = taCenter
            Width = 59
            OnHeaderClick = tbvplanoHeaderClick
          end
          object tbvconta: TcxGridDBColumn
            DataBinding.FieldName = 'conta'
            HeaderAlignmentHorz = taCenter
            Width = 110
            OnHeaderClick = tbvplanoHeaderClick
          end
          object tbvdescricao: TcxGridDBColumn
            DataBinding.FieldName = 'descricao'
            HeaderAlignmentHorz = taCenter
            Width = 240
            OnHeaderClick = tbvplanoHeaderClick
          end
          object tbvabrev: TcxGridDBColumn
            DataBinding.FieldName = 'abrev'
            HeaderAlignmentHorz = taCenter
            Width = 64
            OnHeaderClick = tbvplanoHeaderClick
          end
        end
      end
      inherited pnlPesq: TPanel
        ExplicitTop = 248
        ExplicitWidth = 640
        inherited edPesq: TcxTextEdit
          Properties.OnChange = edPesqPropertiesChange
        end
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
        object cxButton1: TcxButton
          AlignWithMargins = True
          Left = 572
          Top = 2
          Width = 66
          Height = 42
          Hint = 'Restaura o tamanho das colunas na lista'
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alRight
          Caption = 'Excluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          TabStop = False
          OnClick = cxButton1Click
          ExplicitLeft = 564
        end
      end
    end
    object TabNovo: TcxTabSheet
      Caption = 'TabNovo'
      ImageIndex = 2
      OnShow = TabNovoShow
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblcod: TLabel
        Left = 163
        Top = 93
        Width = 29
        Height = 15
        Caption = '1.1.1.1'
      end
      object Label2: TLabel
        Left = 164
        Top = 122
        Width = 40
        Height = 15
        Caption = 'CONTA'
      end
      object Label3: TLabel
        Left = 164
        Top = 151
        Width = 40
        Height = 15
        Caption = 'DESCR.'
      end
      object Label4: TLabel
        Left = 163
        Top = 180
        Width = 39
        Height = 15
        Caption = 'ABREV.'
      end
      object lblDescr: TLabel
        Left = 3
        Top = 3
        Width = 42
        Height = 15
        Caption = 'lblDescr'
      end
      object Label5: TLabel
        Left = 242
        Top = 93
        Width = 28
        Height = 15
        Caption = 'TIPO'
      end
      object edcod: TcxTextEdit
        Left = 198
        Top = 90
        ParentFont = False
        TabOrder = 0
        Text = '0'
        Width = 29
      end
      object edconta: TcxTextEdit
        Left = 211
        Top = 119
        ParentFont = False
        Properties.MaxLength = 30
        TabOrder = 1
        Width = 210
      end
      object eddescr: TcxTextEdit
        Left = 211
        Top = 148
        ParentFont = False
        Properties.MaxLength = 100
        TabOrder = 2
        Width = 210
      end
      object edabrev: TcxTextEdit
        Left = 210
        Top = 177
        ParentFont = False
        Properties.MaxLength = 100
        TabOrder = 3
        Width = 210
      end
      object btnInsert: TcxButton
        AlignWithMargins = True
        Left = 448
        Top = 148
        Width = 101
        Height = 24
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = 'INSERIR'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        TabStop = False
        OnClick = btnInsertClick
      end
      object edtipo: TcxTextEdit
        Left = 275
        Top = 90
        ParentFont = False
        TabOrder = 5
        Width = 29
      end
    end
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'tbvplano.Tag'
      'tbvnivel.Tag'
      'tbvdescricao.Tag'
      'tbvconta.Tag'
      'tbvabrev.Tag')
    Left = 120
    Top = 272
  end
  inherited DS1: TDataSource
    DataSet = DM.Qfinan_centro_custo
    Left = 184
    Top = 272
  end
  inherited FR: TFormResizer
    Left = 288
    Top = 272
  end
  inherited EnterTab: TACBrEnterTab
    Left = 240
    Top = 272
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
