object frmFarmaPop2: TfrmFarmaPop2
  Left = 293
  Top = 333
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'FARM'#193'CIA POPULAR - M'#211'DULO DE COMUNICA'#199#195'O DATASUS Vers'#227'o 2.5'
  ClientHeight = 336
  ClientWidth = 621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lista: TListBox
    Left = 0
    Top = 153
    Width = 621
    Height = 124
    TabStop = False
    Align = alClient
    Color = 10736081
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    IntegralHeight = True
    ItemHeight = 15
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 280
    Width = 621
    Height = 56
    Align = alBottom
    BevelInner = bvLowered
    BevelKind = bkSoft
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 8
      Width = 82
      Height = 13
      Caption = 'F2 - VENDEDOR'
    end
    object Label2: TLabel
      Left = 116
      Top = 8
      Width = 37
      Height = 13
      Caption = 'SENHA'
    end
    object btnConfirmar: TBitBtn
      AlignWithMargins = True
      Left = 424
      Top = 5
      Width = 107
      Height = 42
      Align = alRight
      Caption = 'F10 - CONFIRMAR'
      Enabled = False
      TabOrder = 3
      OnClick = btnConfirmarClick
    end
    object btnEnviar: TBitBtn
      AlignWithMargins = True
      Left = 316
      Top = 5
      Width = 102
      Height = 42
      Align = alRight
      Caption = 'F9 - ENVIAR'
      Enabled = False
      TabOrder = 2
      OnClick = btnEnviarClick
    end
    object btnCancelar: TBitBtn
      AlignWithMargins = True
      Left = 537
      Top = 5
      Width = 75
      Height = 42
      Align = alRight
      Cancel = True
      Caption = 'CANCELAR'
      ModalResult = 2
      TabOrder = 4
    end
    object edVend: TcxTextEdit
      Left = 6
      Top = 24
      Enabled = False
      ParentFont = False
      TabOrder = 0
      Width = 107
    end
    object EdSenha: TcxTextEdit
      Left = 116
      Top = 24
      Enabled = False
      ParentFont = False
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
      Properties.OnChange = EdSenhaPropertiesChange
      TabOrder = 1
      Width = 68
    end
    object btnItem: TBitBtn
      AlignWithMargins = True
      Left = 216
      Top = 5
      Width = 94
      Height = 42
      Align = alRight
      Caption = 'F8 - ITEM'
      TabOrder = 5
      OnClick = btnItemClick
    end
  end
  object G1: TDBGrid
    Left = 0
    Top = 0
    Width = 621
    Height = 153
    TabStop = False
    Align = alTop
    DataSource = DataSource1
    DefaultDrawing = False
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = G1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'inAutorizacaoMedicamento'
        Title.Alignment = taCenter
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'coCodigoBarra '
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dsUnidApresentacao'
        Title.Alignment = taCenter
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtprescrita'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtsolicitada'
        Title.Alignment = taCenter
        Title.Caption = 'SOLIC'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtAutorizada'
        Title.Alignment = taCenter
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlPrecoVenda'
        Title.Alignment = taCenter
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlPrecoSubsidiadoMS'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlPrecoSubsidiadoPaciente'
        Title.Alignment = taCenter
        Width = 77
        Visible = True
      end>
  end
  object HTTPRIO1: THTTPRIO
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 364
    Top = 152
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = T1
    Left = 284
    Top = 152
  end
  object T1: TFDMemTable
    AfterInsert = T1AfterInsert
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 448
    Top = 152
    object T1inAutorizacaoMedicamento: TStringField
      DisplayLabel = 'ID'
      FieldName = 'inAutorizacaoMedicamento'
      Size = 10
    end
    object T1coCodigoBarra: TStringField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'coCodigoBarra '
    end
    object T1dsUnidApresentacao: TStringField
      DisplayLabel = 'UNID'
      FieldName = 'dsUnidApresentacao'
      Size = 50
    end
    object T1qtprescrita: TFloatField
      DisplayLabel = 'QT PR.'
      FieldName = 'qtprescrita'
      DisplayFormat = '00'
    end
    object T1qtAutorizada: TFloatField
      DisplayLabel = 'QT AUT.'
      FieldName = 'qtAutorizada'
      DisplayFormat = '00'
    end
    object T1vlPrecoSubsidiadoPaciente: TFloatField
      DisplayLabel = 'VR. PAC'
      FieldName = 'vlPrecoSubsidiadoPaciente'
      currency = True
    end
    object T1vlPrecoVenda: TFloatField
      DisplayLabel = 'VR VENDA'
      FieldName = 'vlPrecoVenda'
      currency = True
    end
    object T1vlPrecoSubsidiadoMS: TFloatField
      DisplayLabel = 'VR MS'
      FieldName = 'vlPrecoSubsidiadoMS'
      currency = True
    end
    object T1qtsolicitada: TFloatField
      DisplayLabel = 'QT SOL.'
      FieldName = 'qtsolicitada'
      DisplayFormat = '00'
    end
    object T1id_prod: TIntegerField
      FieldName = 'id_prod'
    end
    object T1qtd: TCurrencyField
      FieldName = 'qtd'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 152
    object Remover1: TMenuItem
      Caption = 'Remover'
      OnClick = Remover1Click
    end
  end
end
