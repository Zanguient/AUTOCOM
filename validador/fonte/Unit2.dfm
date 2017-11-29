object Form2: TForm2
  Left = 418
  Top = 500
  AutoScroll = False
  Caption = 'Cadastro de clientes'
  ClientHeight = 348
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 44
    Top = 320
    Width = 43
    Height = 13
    Caption = 'Pesquisa'
  end
  object DBGrid1: TDBGrid
    Left = 2
    Top = 0
    Width = 531
    Height = 313
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        PickList.Strings = (
          'LIBERADO'
          'BLOQUEADO')
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 100
    Top = 316
    Width = 285
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 432
    Top = 316
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = Button1Click
  end
  object CD1: TClientDataSet
    Aggregates = <>
    FileName = 'C:\Desenvolvimento\Projetos\XeonMY\validador\cliente.xml'
    Params = <>
    AfterPost = CD1AfterDelete
    AfterDelete = CD1AfterDelete
    Left = 24
    Top = 48
    object CD1NOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object CD1SITUACAO: TStringField
      FieldName = 'SITUACAO'
    end
  end
  object DataSource1: TDataSource
    DataSet = CD1
    Left = 80
    Top = 52
  end
end
