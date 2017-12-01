object DMConn: TDMConn
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 439
  Width = 435
  object Q1: TFDQuery
    Connection = DB
    Left = 16
    Top = 68
  end
  object Q2: TFDQuery
    Connection = DB
    Left = 16
    Top = 128
  end
  object Q3: TFDQuery
    Connection = DB
    Left = 16
    Top = 184
  end
  object Q4: TFDQuery
    Connection = DB
    Left = 16
    Top = 240
  end
  object Q5: TFDQuery
    Connection = DB
    Left = 16
    Top = 296
  end
  object DB: TFDConnection
    ConnectionName = 'dbAutocom'
    Params.Strings = (
      'Database=autocom'
      'User_Name=root'
      'Server=192.168.254.110'
      'ReadTimeout=1'
      'WriteTimeout=1'
      'DriverID=MySQL')
    FetchOptions.AssignedValues = [evRowsetSize, evAutoClose]
    FetchOptions.RowsetSize = 500
    FetchOptions.AutoClose = False
    FormatOptions.AssignedValues = [fvFmtDisplayDateTime, fvFmtDisplayDate, fvFmtDisplayTime, fvStrsTrim2Len]
    FormatOptions.StrsTrim2Len = True
    FormatOptions.FmtDisplayDateTime = 'dd/mm/yyyy hh:mm'
    FormatOptions.FmtDisplayDate = 'dd/mm/yyyy'
    FormatOptions.FmtDisplayTime = 'hh:mm'
    ResourceOptions.AssignedValues = [rvPersistent, rvBackup, rvDefaultStoreFormat, rvDefaultStoreExt, rvAutoReconnect]
    ResourceOptions.Persistent = True
    ResourceOptions.Backup = True
    ResourceOptions.DefaultStoreExt = '.ADB'
    ResourceOptions.DefaultStoreFormat = sfBinary
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    Left = 16
    Top = 16
  end
  object Q6: TFDQuery
    Connection = DB
    Left = 16
    Top = 352
  end
  object SProc: TFDStoredProc
    Connection = DB
    Left = 108
    Top = 16
  end
  object SP: TFDScript
    SQLScripts = <>
    Connection = DB
    Params = <>
    Macros = <>
    Left = 156
    Top = 16
  end
  object drvMySQL: TFDPhysMySQLDriverLink
    Left = 60
    Top = 16
  end
  object ADGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 239
    Top = 16
  end
end
