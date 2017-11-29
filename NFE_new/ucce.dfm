inherited frmcce: Tfrmcce
  Caption = 'EMISS'#195'O DE CARTA DE CORRE'#199#195'O (CCE)'
  ClientHeight = 386
  ClientWidth = 893
  ExplicitWidth = 899
  ExplicitHeight = 414
  PixelsPerInch = 96
  TextHeight = 15
  object Panel2: TPanel [0]
    Left = 0
    Top = 0
    Width = 893
    Height = 70
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 9
      Top = 7
      Width = 106
      Height = 17
      Caption = 'N'#186' DA N.F. e s'#233'rie'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 9
      Top = 51
      Width = 93
      Height = 17
      Caption = 'TEXTO DA CC-e'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object ednmro: TCurrencyEdit
      Left = 10
      Top = 24
      Width = 103
      Height = 23
      Margins.Left = 2
      Margins.Top = 1
      DecimalPlaces = 0
      DisplayFormat = '#'
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 171
      Top = 1
      Width = 721
      Height = 68
      Align = alRight
      TabOrder = 1
      object Label3: TLabel
        Left = 14
        Top = 9
        Width = 49
        Height = 15
        AutoSize = False
        Caption = 'DT. EM:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 68
        Top = 9
        Width = 75
        Height = 20
        DataField = 'Ide_dEmi'
        DataSource = DSNF
      end
      object DBText2: TDBText
        Left = 230
        Top = 9
        Width = 75
        Height = 20
        DataField = 'Ide_dSaiEnt'
        DataSource = DSNF
      end
      object Label4: TLabel
        Left = 173
        Top = 9
        Width = 50
        Height = 15
        AutoSize = False
        Caption = 'DT. SAI:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 422
        Top = 9
        Width = 113
        Height = 20
        DataField = 'ICMSTot_vNF'
        DataSource = DSNF
      end
      object Label5: TLabel
        Left = 366
        Top = 9
        Width = 49
        Height = 15
        AutoSize = False
        Caption = 'VALOR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 14
        Top = 27
        Width = 49
        Height = 15
        AutoSize = False
        Caption = 'CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 68
        Top = 27
        Width = 150
        Height = 19
        DataField = 'Dest_CNPJCPF'
        DataSource = DSNF
      end
      object DBText5: TDBText
        Left = 69
        Top = 45
        Width = 630
        Height = 20
        DataField = 'Dest_xNome'
        DataSource = DSNF
      end
      object Label7: TLabel
        Left = 14
        Top = 45
        Width = 49
        Height = 15
        AutoSize = False
        Caption = 'R.SOC:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
    object edserie: TCurrencyEdit
      Left = 118
      Top = 24
      Width = 37
      Height = 23
      Margins.Left = 2
      Margins.Top = 1
      DecimalPlaces = 0
      DisplayFormat = '000'
      MinValue = 1.000000000000000000
      TabOrder = 2
      Value = 1.000000000000000000
      OnKeyDown = edserieKeyDown
    end
  end
  object Memo1: TMemo [1]
    Left = 0
    Top = 70
    Width = 893
    Height = 162
    Align = alTop
    Color = 14155775
    MaxLength = 1000
    ScrollBars = ssVertical
    TabOrder = 4
    OnChange = Memo1Change
    OnKeyDown = Memo1KeyDown
  end
  object Memo2: TMemo [2]
    Left = 0
    Top = 232
    Width = 893
    Height = 100
    TabStop = False
    Align = alClient
    Color = clSilver
    Lines.Strings = (
      
        #8220'A Carta de Corre'#231#227'o '#233' disciplinada pelo '#167' 1'#186'-A do art. 7'#186' do Co' +
        'nv'#234'nio S/N, de 15 de dezembro de 1970 e pode ser utilizada para ' +
        'regulariza'#231#227'o de '
      
        'erro ocorrido na emiss'#227'o de documento fiscal, desde que o erro n' +
        #227'o esteja relacionado com:'
      
        'I - as vari'#225'veis que determinam o valor do imposto tais como: ba' +
        'se de c'#225'lculo, al'#237'quota, diferen'#231'a de pre'#231'o, quantidade, valor d' +
        'a opera'#231#227'o ou da '
      'presta'#231#227'o;'
      
        'II - a corre'#231#227'o de dados cadastrais que implique mudan'#231'a do reme' +
        'tente ou do destinat'#225'rio;'
      'III - a data de emiss'#227'o ou de sa'#237'da.'#8221)
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  inherited TPA: TPanel
    Top = 332
    Width = 893
    Height = 54
    ExplicitTop = 332
    ExplicitWidth = 893
    ExplicitHeight = 54
    inherited pnlBtnClose: TPanel
      Left = 799
      Height = 48
      ExplicitLeft = 799
      ExplicitHeight = 48
      inherited btnSair: TcxButton
        Height = 42
        ExplicitHeight = 42
      end
    end
    inherited pnlBase: TPanel
      Width = 798
      Height = 48
      ExplicitWidth = 798
      ExplicitHeight = 48
      object Label8: TLabel
        Left = 6
        Top = 2
        Width = 49
        Height = 15
        AutoSize = False
        Caption = 'CHAVE:'
      end
      object DBText6: TDBText
        Left = 60
        Top = 2
        Width = 554
        Height = 19
        DataField = 'chave'
        DataSource = DSNFDet
      end
      object Label9: TLabel
        Left = 5
        Top = 16
        Width = 49
        Height = 15
        AutoSize = False
        Caption = 'STATUS:'
      end
      object DBText7: TDBText
        Left = 59
        Top = 16
        Width = 270
        Height = 19
        DataField = 'status'
        DataSource = DSNFDet
      end
      object DBText8: TDBText
        Left = 363
        Top = 16
        Width = 46
        Height = 19
        DataField = 'cstat'
        DataSource = DSNFDet
      end
      object Label10: TLabel
        Left = 4
        Top = 29
        Width = 49
        Height = 15
        AutoSize = False
        Caption = 'PROTOC.:'
      end
      object DBText9: TDBText
        Left = 58
        Top = 29
        Width = 159
        Height = 19
        DataField = 'protocolo'
        DataSource = DSNFDet
      end
      object DBText10: TDBText
        Left = 277
        Top = 29
        Width = 182
        Height = 19
        DataField = 'recibo'
        DataSource = DSNFDet
      end
      object Label11: TLabel
        Left = 225
        Top = 29
        Width = 49
        Height = 15
        AutoSize = False
        Caption = 'RECIBO'
      end
      object btnEmitir: TcxButton
        AlignWithMargins = True
        Left = 712
        Top = 3
        Width = 83
        Height = 42
        Align = alRight
        Caption = 'F6-EMITIR'
        Enabled = False
        TabOrder = 0
        TabStop = False
        OnClick = btnEmitirClick
      end
      object D1: TcxDateEdit
        Left = 465
        Top = 12
        Anchors = [akLeft, akBottom]
        Properties.DateButtons = [btnNow]
        Properties.Kind = ckDateTime
        TabOrder = 1
        Width = 128
      end
    end
  end
  inherited ini: TFormStorage
    Left = 308
    Top = 112
  end
  inherited FR: TFormResizer
    Left = 384
    Top = 104
  end
  inherited EnterTab: TACBrEnterTab
    Left = 524
    Top = 120
  end
  object DSNF: TDataSource
    DataSet = DM.QNF
    Left = 92
    Top = 88
  end
  object DSNFDet: TDataSource
    DataSet = DM.QNF_Chave
    Left = 92
    Top = 152
  end
end
