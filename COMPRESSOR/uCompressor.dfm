object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 409
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ListExe: TCheckListBox
    Left = 0
    Top = 0
    Width = 209
    Height = 409
    Align = alLeft
    ItemHeight = 13
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 209
    Top = 0
    Width = 589
    Height = 409
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 146
      Width = 587
      Height = 28
      Align = alTop
      Caption = 'Panel2'
      TabOrder = 0
      object Button1: TButton
        Left = 206
        Top = 1
        Width = 162
        Height = 25
        Caption = 'Gerar rquivos para Upload'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 367
      Width = 587
      Height = 41
      Align = alBottom
      TabOrder = 1
      object Label1: TLabel
        Left = 4
        Top = 0
        Width = 13
        Height = 13
        Caption = 'BD'
      end
      object Label2: TLabel
        Left = 76
        Top = 0
        Width = 37
        Height = 13
        Caption = 'TABELA'
      end
      object Label3: TLabel
        Left = 149
        Top = 0
        Width = 41
        Height = 13
        Caption = 'COLUNA'
      end
      object Label4: TLabel
        Left = 244
        Top = 0
        Width = 24
        Height = 13
        Caption = 'TIPO'
      end
      object Label5: TLabel
        Left = 324
        Top = 1
        Width = 44
        Height = 13
        Caption = 'DEFAULT'
      end
      object edbd: TEdit
        Left = 2
        Top = 13
        Width = 71
        Height = 21
        TabOrder = 0
        Text = 'autocom'
      end
      object edtab: TEdit
        Left = 75
        Top = 13
        Width = 71
        Height = 21
        TabOrder = 1
        Text = 'tabela'
      end
      object edcol: TEdit
        Left = 148
        Top = 13
        Width = 93
        Height = 21
        TabOrder = 2
        Text = 'coluna'
      end
      object edtip: TEdit
        Left = 243
        Top = 13
        Width = 78
        Height = 21
        TabOrder = 3
        Text = 'int(11)'
      end
      object eddef: TEdit
        Left = 323
        Top = 13
        Width = 78
        Height = 21
        TabOrder = 4
        Text = 'default 0'
      end
      object Button2: TButton
        Left = 471
        Top = 11
        Width = 42
        Height = 25
        Caption = 'Gravar'
        TabOrder = 5
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 421
        Top = 11
        Width = 48
        Height = 25
        Caption = 'Gerar'
        TabOrder = 6
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 515
        Top = 11
        Width = 42
        Height = 25
        Caption = 'Apagar'
        TabOrder = 7
        OnClick = Button4Click
      end
    end
    object Memo2: TMemo
      Left = 1
      Top = 1
      Width = 587
      Height = 145
      Align = alTop
      TabOrder = 2
    end
    object Memo1: TMemo
      Left = 1
      Top = 174
      Width = 587
      Height = 193
      Align = alClient
      Lines.Strings = (
        'DROP PROCEDURE IF EXISTS ajuste;'
        'CREATE PROCEDURE ajuste()'
        'BEGIN'
        'IF NOT EXISTS ('
        '    SELECT * FROM information_schema.COLUMNS WHERE'
        '    TABLE_SCHEMA=$BD'
        '    AND TABLE_NAME=%TAB'
        '    AND COLUMN_NAME=$COL'
        '  )'
        '  THEN'
        '      ALTER TABLE %TAB` ADD COLUMN $COL %TIP %DEF;'
        '   end if; '
        'END;'
        'call ajuste;')
      TabOrder = 3
    end
  end
end
