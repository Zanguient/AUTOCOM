inherited frmDocArr: TfrmDocArr
  Caption = 'DOCUMENTOS DE ARRECADA'#199#195'O REFERENTE A N.F.'
  ClientHeight = 169
  ClientWidth = 465
  OnKeyUp = FormKeyUp
  ExplicitWidth = 471
  ExplicitHeight = 198
  PixelsPerInch = 96
  TextHeight = 15
  object Label45: TLabel [0]
    Left = 5
    Top = -1
    Width = 97
    Height = 15
    Caption = 'Tipo de Documento'
  end
  object Label46: TLabel [1]
    Left = 159
    Top = -1
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = cxDBTextEdit10
  end
  object Label47: TLabel [2]
    Left = 189
    Top = -1
    Width = 73
    Height = 15
    Caption = 'N'#186' Documento'
    FocusControl = cxDBTextEdit11
  end
  object Label48: TLabel [3]
    Left = 4
    Top = 41
    Width = 116
    Height = 15
    Caption = 'Autentica'#231#227'o banc'#225'ria'
    FocusControl = cxDBTextEdit12
  end
  object Label49: TLabel [4]
    Left = 222
    Top = 41
    Width = 27
    Height = 15
    Caption = 'Valor'
    FocusControl = cxDBCurrencyEdit1
  end
  object Label50: TLabel [5]
    Left = 336
    Top = -1
    Width = 86
    Height = 15
    Caption = 'Data Vencimento'
    FocusControl = cxDBDateEdit3
  end
  object Label51: TLabel [6]
    Left = 336
    Top = 41
    Width = 81
    Height = 15
    Caption = 'Data Pagamento'
    FocusControl = cxDBDateEdit4
  end
  inherited TPA: TPanel
    Top = 127
    Width = 465
    TabOrder = 8
    inherited pnlBtnClose: TPanel
      Left = 371
      TabOrder = 1
    end
    inherited pnlBase: TPanel
      Width = 370
      TabOrder = 0
    end
  end
  inherited Edit1: TEdit
    Left = 544
    Top = 312
    TabOrder = 9
    ExplicitLeft = 544
    ExplicitTop = 312
  end
  object cxDBTextEdit10: TcxDBTextEdit [9]
    Left = 159
    Top = 15
    DataBinding.DataField = 'uf'
    DataBinding.DataSource = DM_NF_Entr.DScdNF_Guia_Arrec
    Properties.CharCase = ecUpperCase
    TabOrder = 1
    Width = 24
  end
  object cxDBTextEdit11: TcxDBTextEdit [10]
    Left = 189
    Top = 15
    DataBinding.DataField = 'nmro'
    DataBinding.DataSource = DM_NF_Entr.DScdNF_Guia_Arrec
    TabOrder = 2
    Width = 141
  end
  object cxDBTextEdit12: TcxDBTextEdit [11]
    Left = 4
    Top = 57
    DataBinding.DataField = 'cod_aut'
    DataBinding.DataSource = DM_NF_Entr.DScdNF_Guia_Arrec
    TabOrder = 4
    Width = 214
  end
  object cxDBCurrencyEdit1: TcxDBCurrencyEdit [12]
    Left = 222
    Top = 57
    DataBinding.DataField = 'valor'
    DataBinding.DataSource = DM_NF_Entr.DScdNF_Guia_Arrec
    TabOrder = 5
    Width = 110
  end
  object cxDBDateEdit3: TcxDBDateEdit [13]
    Left = 336
    Top = 15
    DataBinding.DataField = 'dt_venc'
    DataBinding.DataSource = DM_NF_Entr.DScdNF_Guia_Arrec
    TabOrder = 3
    Width = 121
  end
  object cxDBDateEdit4: TcxDBDateEdit [14]
    Left = 336
    Top = 57
    DataBinding.DataField = 'dt_pag'
    DataBinding.DataSource = DM_NF_Entr.DScdNF_Guia_Arrec
    TabOrder = 6
    Width = 121
  end
  object cxDBImageComboBox2: TcxDBImageComboBox [15]
    Left = 6
    Top = 15
    DataBinding.DataField = 'cod_da'
    DataBinding.DataSource = DM_NF_Entr.DScdNF_Guia_Arrec
    Properties.Items = <
      item
        Description = 'GNRE'
        ImageIndex = 0
        Value = 1
      end
      item
        Description = 'Doc. Arrec. Estadual'
        ImageIndex = 0
        Value = 0
      end>
    TabOrder = 0
    Width = 147
  end
  object dbNav: TcxDBNavigator [16]
    AlignWithMargins = True
    Left = 3
    Top = 87
    Width = 455
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
    DataSource = DM_NF_Entr.DScdNF_Guia_Arrec
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    ExplicitLeft = -60
    ExplicitTop = 56
    ExplicitWidth = 525
  end
  inherited ini: TFormStorage
    Left = 24
    Top = 312
  end
  inherited FR: TFormResizer
    Left = 64
    Top = 312
  end
  inherited EnterTab: TACBrEnterTab
    Left = 104
    Top = 312
  end
end
