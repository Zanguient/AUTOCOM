inherited frmVolumes: TfrmVolumes
  Caption = 'INFORMAR VOLUMES DA N.F.'
  ClientHeight = 133
  ClientWidth = 387
  OnKeyUp = FormKeyUp
  ExplicitWidth = 393
  ExplicitHeight = 162
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 91
    Width = 387
    TabOrder = 12
    inherited pnlBtnClose: TPanel
      Left = 293
      TabOrder = 1
    end
    inherited pnlBase: TPanel
      Width = 292
      TabOrder = 0
      object dbNav: TcxDBNavigator
        AlignWithMargins = True
        Left = 3
        Top = 1
        Width = 300
        Height = 34
        Margins.Top = 1
        Margins.Bottom = 1
        Buttons.CustomButtons = <>
        Buttons.First.Visible = False
        Buttons.PriorPage.Visible = False
        Buttons.Prior.Visible = False
        Buttons.Next.Visible = False
        Buttons.NextPage.Visible = False
        Buttons.Last.Visible = False
        Buttons.Insert.Hint = 'F5 - Novo Registro'
        Buttons.Insert.Visible = False
        Buttons.Append.Visible = True
        Buttons.Delete.Hint = 'F6 - Excluir  Registro'
        Buttons.Delete.Visible = True
        Buttons.Edit.Hint = 'F7 - Alterar Registro'
        Buttons.Post.Hint = 'F8 - Gravar Registro'
        Buttons.Cancel.Hint = 'F9 - Cancelar Mudan'#231'as no Registro'
        Buttons.Refresh.Visible = False
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Visible = False
        DataSource = DM_NF_Entr.DScdNF_Volume
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ExplicitLeft = -8
      end
    end
  end
  inherited Edit1: TEdit
    Left = 160
    Top = 348
    TabOrder = 13
    ExplicitLeft = 160
    ExplicitTop = 348
  end
  object cxDBTextEdit1: TcxDBTextEdit [2]
    Left = 3
    Top = 17
    DataBinding.DataField = 'especie'
    DataBinding.DataSource = DM_NF_Entr.DScdNF_Volume
    ParentFont = False
    Properties.CharCase = ecUpperCase
    TabOrder = 3
    Width = 125
  end
  object cxDBTextEdit3: TcxDBTextEdit [3]
    Left = 3
    Top = 60
    DataBinding.DataField = 'nVol'
    DataBinding.DataSource = DM_NF_Entr.DScdNF_Volume
    ParentFont = False
    Properties.CharCase = ecUpperCase
    TabOrder = 9
    Width = 125
  end
  object cxDBTextEdit5: TcxDBTextEdit [4]
    Left = 134
    Top = 17
    DataBinding.DataField = 'marca'
    DataBinding.DataSource = DM_NF_Entr.DScdNF_Volume
    ParentFont = False
    Properties.CharCase = ecUpperCase
    TabOrder = 4
    Width = 121
  end
  object cxDBTextEdit6: TcxDBTextEdit [5]
    Left = 134
    Top = 60
    DataBinding.DataField = 'pesoB'
    DataBinding.DataSource = DM_NF_Entr.DScdNF_Volume
    ParentFont = False
    TabOrder = 10
    Width = 121
  end
  object cxDBTextEdit7: TcxDBTextEdit [6]
    Left = 261
    Top = 60
    DataBinding.DataField = 'pesoL'
    DataBinding.DataSource = DM_NF_Entr.DScdNF_Volume
    ParentFont = False
    TabOrder = 11
    Width = 121
  end
  object Label34: TcxLabel [7]
    Left = 3
    Top = 1
    Caption = 'ESP'#201'CIE'
    FocusControl = cxDBTextEdit1
    ParentFont = False
    Transparent = True
  end
  object Label35: TcxLabel [8]
    Left = 3
    Top = 44
    Caption = 'N'#218'MERO'
    FocusControl = cxDBTextEdit3
    ParentFont = False
    Transparent = True
  end
  object Label36: TcxLabel [9]
    Left = 134
    Top = 1
    Caption = 'MARCA'
    FocusControl = cxDBTextEdit5
    ParentFont = False
    Transparent = True
  end
  object Label37: TcxLabel [10]
    Left = 134
    Top = 44
    Caption = 'PESO BRUTO'
    FocusControl = cxDBTextEdit6
    ParentFont = False
    Transparent = True
  end
  object Label38: TcxLabel [11]
    Left = 261
    Top = 44
    Caption = 'PESO L'#205'Q.'
    FocusControl = cxDBTextEdit7
    ParentFont = False
    Transparent = True
  end
  object cxDBTextEdit2: TcxDBTextEdit [12]
    Left = 261
    Top = 17
    DataBinding.DataField = 'qVol'
    DataBinding.DataSource = DM_NF_Entr.DScdNF_Volume
    ParentFont = False
    Properties.CharCase = ecUpperCase
    TabOrder = 5
    Width = 121
  end
  object cxLabel1: TcxLabel [13]
    Left = 261
    Top = 1
    Caption = 'QUANTIDADE'
    FocusControl = cxDBTextEdit2
    ParentFont = False
    Transparent = True
  end
  inherited ini: TFormStorage
    Top = 344
  end
  inherited FR: TFormResizer
    Top = 344
  end
  inherited EnterTab: TACBrEnterTab
    Top = 344
  end
end
