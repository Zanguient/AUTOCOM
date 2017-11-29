inherited frmAss_CFOP_Devol: TfrmAss_CFOP_Devol
  Caption = 'Ass. CFOP Devolu'#231#227'o de Compras'
  ClientWidth = 276
  ExplicitWidth = 282
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Width = 276
    ExplicitWidth = 276
    inherited pnlBtnClose: TPanel
      Left = 188
      ExplicitLeft = 188
    end
    inherited pnlBase: TPanel
      Width = 187
      ExplicitWidth = 187
      inherited pnlbasebotton: TPanel
        Width = 140
        ExplicitWidth = 140
        inherited Bar1: TdxStatusBar
          Width = 138
          ExplicitWidth = 138
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 276
    Properties.ActivePage = TabCad
    ExplicitWidth = 276
    ClientRectRight = 276
    inherited TabCad: TcxTabSheet
      ExplicitTop = 26
      ExplicitWidth = 276
      ExplicitHeight = 294
      object Label1: TLabel [0]
        Left = 24
        Top = 24
        Width = 28
        Height = 15
        Caption = 'CFOP'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel [1]
        Left = 24
        Top = 64
        Width = 22
        Height = 15
        Caption = 'CST'
      end
      object Label3: TLabel [2]
        Left = 24
        Top = 104
        Width = 41
        Height = 15
        Caption = 'CSOSN'
      end
      inherited dbNav: TcxDBNavigator
        Width = 268
        Buttons.Prior.Visible = True
        Buttons.Next.Visible = True
        TabOrder = 8
        ExplicitWidth = 268
      end
      object cxDBTextEdit1: TcxDBCheckBox
        Left = 20
        Top = 235
        Caption = 'Interno'
        DataBinding.DataField = 'interno'
        DataBinding.DataSource = DS1
        ParentColor = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        TabOrder = 3
        Width = 67
      end
      object cxDBTextEdit2: TcxDBCheckBox
        Left = 88
        Top = 235
        Caption = 'Ind'#250'stria'
        DataBinding.DataField = 'ind'
        DataBinding.DataSource = DS1
        ParentColor = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        TabOrder = 4
        Width = 73
      end
      object cxDBTextEdit3: TcxDBCheckBox
        Left = 167
        Top = 235
        Caption = 'ST'
        DataBinding.DataField = 'st'
        DataBinding.DataSource = DS1
        ParentColor = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        TabOrder = 5
        Width = 60
      end
      object cxDBSpinEdit1: TcxDBTextEdit
        Left = 24
        Top = 40
        AutoSize = False
        DataBinding.DataField = 'cfop'
        DataBinding.DataSource = DS1
        TabOrder = 0
        Height = 21
        Width = 41
      end
      object cxLabel8: TcxLabel
        Left = 24
        Top = 144
        Caption = 'IPI'
        ParentFont = False
        Transparent = True
      end
      object cxDBSpinEdit7: TcxDBLookupComboBox
        Left = 24
        Top = 160
        DataBinding.DataField = 'cst_ipi'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'cst'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM.dsCST2
        TabOrder = 1
        Width = 60
      end
      object cxDBSpinEdit6: TcxDBLookupComboBox
        Left = 24
        Top = 200
        DataBinding.DataField = 'cst_pis'
        DataBinding.DataSource = DS1
        ParentFont = False
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'cst'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM.dsCSTPC
        TabOrder = 2
        Width = 60
      end
      object cxLabel9: TcxLabel
        Left = 24
        Top = 184
        Caption = 'PIS'
        ParentFont = False
        Transparent = True
      end
      object cmbProdCST: TcxDBImageComboBox
        Left = 24
        Top = 80
        Hint = 
          '00 - Tributada integralmente'#13#10'10 - Tributada e com cobran'#231'a do I' +
          'CMS por substitui'#231#227'o tribut'#225'ria'#13#10'20 - Com redu'#231#227'o de base de c'#225'l' +
          'culo'#13#10'30 - Isenta ou n'#227'o tributada e com cobran'#231'a do ICMS por su' +
          'bstitui'#231#227'o tribut'#225'ria'#13#10'40 - Isenta'#13#10'41 - N'#227'o tributada'#13#10'50 - Sus' +
          'pens'#227'o'#13#10'51 - Diferimento'#13#10'60 - ICMS cobrado anteriormente por su' +
          'bstitui'#231#227'o tribut'#225'ria'#13#10'70 - Com redu'#231#227'o de base de c'#225'lculo e cob' +
          'ran'#231'a do ICMS por substitui'#231#227'o tribut'#225'ria'#13#10'90 - Outros'
        DataBinding.DataField = 'cst'
        DataBinding.DataSource = DS1
        ParentShowHint = False
        Properties.Items = <>
        ShowHint = True
        TabOrder = 9
        Width = 66
      end
      object cmbProdCSOSN: TcxDBImageComboBox
        Left = 24
        Top = 120
        Hint = 
          '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito.'#13 +
          #10'102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito.' +
          #13#10'103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receit' +
          'a bruta.'#13#10'300 - Imune.'#13#10'400 - N'#227'o tributada pelo Simples Naciona' +
          'l'#13#10'201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dit' +
          'o e com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria'#13#10'202 - Trib' +
          'utada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e com cobra' +
          'n'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria'#13#10'203 - Isen'#231#227'o do ICMS n' +
          'os Simples Nacional para faixa de receita bruta e com cobran'#231'a d' +
          'o ICMS por Substitui'#231#227'o Tribut'#225'ria'#13#10'500 - ICMS cobrado anteriorm' +
          'ente por substitui'#231#227'o tribut'#225'ria (substitu'#237'do) ou por antecipa'#231#227 +
          'o'#13#10'900 - Outros'
        DataBinding.DataField = 'csosn'
        DataBinding.DataSource = DS1
        ParentShowHint = False
        Properties.Items = <>
        ShowHint = True
        TabOrder = 10
        Width = 66
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 276
      inherited grd: TcxGrid
        Width = 276
        ExplicitWidth = 276
        inherited tbv: TcxGridDBTableView
          object tbvcfop: TcxGridDBColumn
            Caption = 'CFOP'
            DataBinding.FieldName = 'cfop'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 43
          end
          object tbvcst: TcxGridDBColumn
            Caption = 'CST'
            DataBinding.FieldName = 'cst'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 43
          end
          object tbvinterno: TcxGridDBColumn
            Caption = 'INT.'
            DataBinding.FieldName = 'interno'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 47
          end
          object tbvind: TcxGridDBColumn
            Caption = 'IND.'
            DataBinding.FieldName = 'ind'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 41
          end
          object tbvst: TcxGridDBColumn
            Caption = 'ST'
            DataBinding.FieldName = 'st'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 29
          end
        end
      end
      inherited pnlPesq: TPanel
        Width = 276
        Visible = False
        ExplicitWidth = 276
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  inherited ini: TFormStorage
    Left = 408
    Top = 272
  end
  inherited DS1: TDataSource
    DataSet = DM.Qcfop_devol
    Left = 472
    Top = 272
  end
  inherited FR: TFormResizer
    Left = 576
    Top = 272
  end
  inherited EnterTab: TACBrEnterTab
    Left = 528
    Top = 272
  end
  inherited cxStyleRepository2: TcxStyleRepository
    Left = 140
    PixelsPerInch = 96
  end
end
