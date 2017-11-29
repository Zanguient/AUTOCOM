object DM: TDM
  OldCreateOrder = False
  Height = 187
  Width = 1012
  object Rep1: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    EngineOptions.SilentMode = True
    EngineOptions.NewSilentMode = simSilent
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41346.612145150470000000
    ReportOptions.LastChange = 41346.612145150470000000
    ScriptLanguage = 'PascalScript'
    ShowProgress = False
    StoreInDFM = False
    OnGetValue = Rep1GetValue
    OnLoadTemplate = Rep1LoadTemplate
    Left = 144
    Top = 76
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 1
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 250
    Top = 8
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 142
    Top = 16
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 477
    Top = 24
  end
  object PDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 692
    Top = 87
  end
  object HTML: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 694
    Top = 23
  end
  object RTF: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 644
    Top = 23
  end
  object JPG: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 599
    Top = 23
  end
  object TXT: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 545
    Top = 23
  end
  object txt1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 332
    Top = 12
  end
  object txt2: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 396
    Top = 16
  end
  object EAD: TACBrEAD
    Left = 16
    Top = 132
  end
  object CSV: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 472
    Top = 80
  end
  object DB: TFDConnection
    ConnectionName = 'DB'
    Params.Strings = (
      'Database=autocom'
      'User_Name=root'
      'Server=192.168.254.110'
      'ReadTimeout=5000'
      'WriteTimeout=2000'
      'DriverID=MySQL')
    FetchOptions.AssignedValues = [evUnidirectional]
    LoginPrompt = False
    BeforeConnect = DBBeforeConnect
    Left = 12
    Top = 12
  end
  object frxFDComponents1: TfrxFDComponents
    DefaultDatabase = DB
    Left = 588
    Top = 88
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 224
    Top = 76
  end
  object drvMySQL: TFDPhysMySQLDriverLink
    Left = 8
    Top = 64
  end
  object QRelat_Grupo: TFDQuery
    Connection = DB
    SQL.Strings = (
      'select * from relat_grupo order by nome')
    Left = 792
    Top = 28
    object QRelat_Grupoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QRelat_Gruponome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
  end
  object DSRelat_Grupo: TDataSource
    DataSet = QRelat_Grupo
    Left = 792
    Top = 80
  end
  object QRelat: TFDQuery
    Connection = DB
    SQL.Strings = (
      'SELECT id, nome, grupo, txt, custom, template FROM ('
      '    select * from relat where custom = "S"'
      '    union'
      '    select * from relat where custom = "N"'
      ') AS CUR'
      'where grupo = :id'
      'group by nome'
      'order by nome')
    Left = 892
    Top = 32
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 2
      end>
    object QRelatid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QRelatgrupo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'grupo'
    end
    object QRelatnome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RELAT'#211'RIO'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QRelattemplate: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'template'
      Origin = 'template'
      BlobType = ftMemo
    end
    object QRelatcustom: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'custom'
      Origin = 'custom'
      FixedChar = True
      Size = 1
    end
    object QRelattxt: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'txt'
      Origin = 'txt'
      FixedChar = True
      Size = 1
    end
  end
  object DSRelat: TDataSource
    DataSet = QRelat
    Left = 892
    Top = 84
  end
  object Q1: TFDQuery
    Connection = DB
    SQL.Strings = (
      'SELECT id, nome, grupo, txt, custom, template FROM ('
      '    select * from relat where custom = "S"'
      '    union'
      '    select * from relat where custom = "N"'
      ') AS CUR'
      'where grupo = :id'
      'group by nome'
      'order by nome')
    Left = 948
    Top = 36
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 2
      end>
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'grupo'
    end
    object StringField1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RELAT'#211'RIO'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object MemoField1: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'template'
      Origin = 'template'
      BlobType = ftMemo
    end
    object StringField2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'custom'
      Origin = 'custom'
      FixedChar = True
      Size = 1
    end
    object StringField3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'txt'
      Origin = 'txt'
      FixedChar = True
      Size = 1
    end
  end
  object RepDesign: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 84
    Top = 80
  end
end
