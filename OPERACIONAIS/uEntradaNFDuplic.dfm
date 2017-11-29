inherited frmDuplic: TfrmDuplic
  Caption = 'FATURA E DUPLICATAS'
  ClientHeight = 191
  OnKeyUp = FormKeyUp
  ExplicitWidth = 608
  ExplicitHeight = 220
  PixelsPerInch = 96
  TextHeight = 15
  object Label40: TLabel [0]
    Left = 8
    Top = 0
    Width = 61
    Height = 15
    Caption = 'N'#186' FATURA'
    FocusControl = cxDBTextEdit9
  end
  object Label41: TLabel [1]
    Left = 135
    Top = 0
    Width = 53
    Height = 15
    Caption = 'VR. ORIG.'
    FocusControl = cxDBCalcEdit23
  end
  object Label42: TLabel [2]
    Left = 261
    Top = 0
    Width = 53
    Height = 15
    Caption = 'VR. DESC.'
    FocusControl = cxDBCalcEdit24
  end
  object Label43: TLabel [3]
    Left = 387
    Top = 0
    Width = 42
    Height = 15
    Caption = 'VR L'#205'Q.'
    FocusControl = cxDBCalcEdit25
  end
  inherited TPA: TPanel
    Top = 149
    TabOrder = 6
    inherited pnlBtnClose: TPanel
      TabOrder = 1
    end
    inherited pnlBase: TPanel
      TabOrder = 0
    end
  end
  inherited Edit1: TEdit
    Left = 376
    Top = 348
    TabOrder = 7
    ExplicitLeft = 376
    ExplicitTop = 348
  end
  object cxDBTextEdit9: TcxDBTextEdit [6]
    Left = 8
    Top = 16
    DataBinding.DataField = 'nFat'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    TabOrder = 1
    Width = 121
  end
  object cxDBCalcEdit24: TcxDBCurrencyEdit [7]
    Left = 261
    Top = 16
    DataBinding.DataField = 'vDesc'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    TabOrder = 3
    Width = 121
  end
  object cxDBCalcEdit23: TcxDBCurrencyEdit [8]
    Left = 135
    Top = 16
    DataBinding.DataField = 'vOrig'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    TabOrder = 2
    Width = 121
  end
  object cxDBCalcEdit25: TcxDBCurrencyEdit [9]
    Left = 387
    Top = 16
    DataBinding.DataField = 'vLiq'
    DataBinding.DataSource = DM_NF_Entr.DScdNF
    ParentFont = False
    TabOrder = 4
    OnEnter = cxDBCalcEdit25Enter
    Width = 121
  end
  object btnGravar: TcxButton [10]
    AlignWithMargins = True
    Left = 514
    Top = 12
    Width = 78
    Height = 30
    Caption = 'GRAVAR'
    TabOrder = 0
    TabStop = False
    OnClick = btnGravarClick
  end
  object Panel1: TPanel [11]
    Left = 8
    Top = 48
    Width = 584
    Height = 97
    TabOrder = 5
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 81
      Height = 15
      Caption = 'N'#186' DUPLICATA'
      FocusControl = cxDBTextEdit1
    end
    object Label2: TLabel
      Left = 143
      Top = 8
      Width = 37
      Height = 15
      Caption = 'VALOR'
      FocusControl = cxDBCurrencyEdit2
    end
    object Label3: TLabel
      Left = 269
      Top = 8
      Width = 78
      Height = 15
      Caption = 'VENCIMENTO'
      FocusControl = cxDBCurrencyEdit1
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 16
      Top = 24
      DataBinding.DataField = 'nDup'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Duplicata
      ParentFont = False
      TabOrder = 0
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 143
      Top = 24
      DataBinding.DataField = 'vDup'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Duplicata
      ParentFont = False
      TabOrder = 1
      Width = 121
    end
    object cxDBCurrencyEdit1: TcxDBDateEdit
      Left = 269
      Top = 24
      DataBinding.DataField = 'dVenc'
      DataBinding.DataSource = DM_NF_Entr.DScdNF_Duplicata
      ParentFont = False
      TabOrder = 2
      Width = 121
    end
    object dbNav: TcxDBNavigator
      AlignWithMargins = True
      Left = 4
      Top = 56
      Width = 575
      Height = 39
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
      DataSource = DM_NF_Entr.DScdNF_Duplicata
      Align = alBottom
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
  end
  inherited ini: TFormStorage
    Left = 16
    Top = 336
  end
  inherited FR: TFormResizer
    Left = 56
    Top = 336
  end
  inherited EnterTab: TACBrEnterTab
    Left = 96
    Top = 336
  end
end
