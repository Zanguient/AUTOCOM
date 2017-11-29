inherited frmNFTransp: TfrmNFTransp
  ActiveControl = cxDBTextEdit1
  Caption = 'INFORMAR TRANSPORTADORA'
  ClientHeight = 210
  ClientWidth = 446
  ExplicitWidth = 452
  ExplicitHeight = 239
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 168
    Width = 446
    inherited pnlBtnClose: TPanel
      Left = 352
    end
    inherited pnlBase: TPanel
      Width = 351
      object dbNav: TcxDBNavigator
        AlignWithMargins = True
        Left = 3
        Top = 1
        Width = 348
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
        Buttons.Delete.Hint = 'F6 - Excluir  Registro'
        Buttons.Delete.Visible = True
        Buttons.Edit.Hint = 'F7 - Alterar Registro'
        Buttons.Post.Hint = 'F8 - Gravar Registro'
        Buttons.Cancel.Hint = 'F9 - Cancelar Mudan'#231'as no Registro'
        Buttons.Refresh.Visible = False
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Visible = False
        DataSource = DM_NF_Entr.DScdNF
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
    end
  end
  object cxDBTextEdit1: TcxDBTextEdit [2]
    Left = 5
    Top = 18
    DataBinding.DataField = 'Transporta_CNPJCPF'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    TabOrder = 2
    Width = 125
  end
  object cxDBTextEdit3: TcxDBTextEdit [3]
    Left = 5
    Top = 62
    DataBinding.DataField = 'Transporta_xNome'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    Properties.CharCase = ecUpperCase
    TabOrder = 3
    Width = 433
  end
  object cxDBTextEdit5: TcxDBTextEdit [4]
    Left = 134
    Top = 18
    DataBinding.DataField = 'Transporta_IE'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    TabOrder = 4
    Width = 155
  end
  object cxDBTextEdit6: TcxDBTextEdit [5]
    Left = 5
    Top = 99
    DataBinding.DataField = 'Transporta_xEnder'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    TabOrder = 5
    Width = 433
  end
  object cxDBTextEdit7: TcxDBTextEdit [6]
    Left = 5
    Top = 140
    DataBinding.DataField = 'Transporta_xMun'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    TabOrder = 6
    Width = 399
  end
  object cxDBTextEdit8: TcxDBTextEdit [7]
    Left = 408
    Top = 140
    DataBinding.DataField = 'Transporta_UF'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    TabOrder = 7
    Width = 30
  end
  object Label34: TcxLabel [8]
    Left = 5
    Top = 2
    Caption = 'CNPJ/CPF'
    FocusControl = cxDBTextEdit1
    ParentFont = False
    Transparent = True
  end
  object Label35: TcxLabel [9]
    Left = 5
    Top = 44
    Caption = 'Nome/Raz'#227'o Social'
    FocusControl = cxDBTextEdit3
    ParentFont = False
    Transparent = True
  end
  object Label36: TcxLabel [10]
    Left = 134
    Top = 2
    Caption = 'Inscr. Estadual'
    FocusControl = cxDBTextEdit5
    ParentFont = False
    Transparent = True
  end
  object Label37: TcxLabel [11]
    Left = 5
    Top = 83
    Caption = 'Endere'#231'o'
    FocusControl = cxDBTextEdit6
    ParentFont = False
    Transparent = True
  end
  object Label38: TcxLabel [12]
    Left = 5
    Top = 121
    Caption = 'Munic'#237'pio'
    FocusControl = cxDBTextEdit7
    ParentFont = False
    Transparent = True
  end
  object Label39: TcxLabel [13]
    Left = 408
    Top = 124
    Caption = 'UF'
    FocusControl = cxDBTextEdit8
    ParentFont = False
    Transparent = True
  end
  inherited ini: TFormStorage
    Left = 288
    Top = 16
  end
  inherited FR: TFormResizer
    Left = 328
    Top = 16
  end
  inherited EnterTab: TACBrEnterTab
    Left = 368
    Top = 16
  end
end
