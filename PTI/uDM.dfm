object DM: TDM
  OldCreateOrder = False
  Height = 511
  Width = 695
  object DB: TMyConnection
    Database = 'autocom'
    ConnectionTimeout = 3
    Options.Compress = True
    Options.LocalFailover = True
    Username = 'root'
    Password = '1'
    Server = '192.168.254.105'
    LoginPrompt = False
    Left = 16
    Top = 8
  end
  object SP: TMyScript
    Connection = DB
    UseOptimization = True
    Left = 76
    Top = 8
  end
  object Q1: TMyQuery
    Connection = DB
    SQL.Strings = (
      'select * from empresa')
    Options.StrictUpdate = False
    Options.QueryRecCount = True
    FetchAll = False
    Left = 16
    Top = 68
  end
  object Q2: TMyQuery
    Connection = DB
    Options.StrictUpdate = False
    Options.QueryRecCount = True
    FetchAll = False
    Left = 16
    Top = 128
  end
  object Q3: TMyQuery
    Connection = DB
    Options.StrictUpdate = False
    Options.QueryRecCount = True
    FetchAll = False
    Left = 16
    Top = 184
  end
  object Q4: TMyQuery
    Connection = DB
    Options.StrictUpdate = False
    Options.QueryRecCount = True
    FetchAll = False
    Left = 16
    Top = 240
  end
  object Q5: TMyQuery
    Connection = DB
    Options.StrictUpdate = False
    Options.QueryRecCount = True
    FetchAll = False
    Left = 16
    Top = 296
  end
  object DSEstoque: TDataSource
    Left = 271
    Top = 16
  end
  object DSEmpresa: TDataSource
    Left = 271
    Top = 72
  end
end
