inherited frmLancar_apagar: TfrmLancar_apagar
  Caption = 'frmLancar_apagar'
  ClientHeight = 295
  ExplicitHeight = 323
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 263
    ExplicitTop = 263
  end
  inherited pgCad: TcxPageControl
    Height = 263
    Properties.ActivePage = TabCad
    ExplicitHeight = 263
    ClientRectBottom = 263
    inherited TabCad: TcxTabSheet
      ExplicitTop = 26
      ExplicitWidth = 640
      ExplicitHeight = 237
      object Label1: TLabel [0]
        Left = 16
        Top = 9
        Width = 28
        Height = 15
        Caption = 'TIPO'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel [1]
        Left = 143
        Top = 9
        Width = 74
        Height = 15
        Caption = 'FAVORECIDO'
        FocusControl = cxDBSpinEdit1
      end
      object Label4: TLabel [2]
        Left = 16
        Top = 53
        Width = 117
        Height = 15
        Caption = 'DOCUMENTO FAVOR.'
        FocusControl = cxDBTextEdit3
      end
      object Label3: TLabel [3]
        Left = 141
        Top = 53
        Width = 91
        Height = 15
        Caption = 'N'#186' DOCUMENTO'
        FocusControl = cxDBTextEdit4
      end
      object Label5: TLabel [4]
        Left = 266
        Top = 53
        Width = 89
        Height = 15
        Caption = 'DATA PROCESS.'
        FocusControl = cxDBDateEdit1
      end
      object Label6: TLabel [5]
        Left = 359
        Top = 53
        Width = 83
        Height = 15
        Caption = 'DATA VENCIM.'
        FocusControl = cxDBDateEdit2
      end
      object Label9: TLabel [6]
        Left = 454
        Top = 53
        Width = 85
        Height = 15
        Caption = 'VALOR DOCUM.'
        FocusControl = cxDBCalcEdit1
      end
      object Label14: TLabel [7]
        Left = 16
        Top = 96
        Width = 84
        Height = 15
        Caption = 'OBSERVA'#199#213'ES'
        FocusControl = cxDBMemo1
      end
      inherited dbNav: TcxDBNavigator
        Top = 211
        Width = 634
        Buttons.Delete.Visible = False
        TabOrder = 10
        ExplicitTop = 211
        ExplicitWidth = 634
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 181
        Top = 25
        DataBinding.DataField = 'favorec_nome'
        DataBinding.DataSource = DS1
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        Width = 415
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 16
        Top = 69
        DataBinding.DataField = 'favorec_doc'
        DataBinding.DataSource = DS1
        Properties.CharCase = ecUpperCase
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 141
        Top = 69
        DataBinding.DataField = 'nmro_doc'
        DataBinding.DataSource = DS1
        Properties.CharCase = ecUpperCase
        TabOrder = 4
        Width = 121
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 266
        Top = 69
        DataBinding.DataField = 'dt_process'
        DataBinding.DataSource = DS1
        TabOrder = 5
        Width = 89
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 359
        Top = 69
        DataBinding.DataField = 'dt_vencimento'
        DataBinding.DataSource = DS1
        TabOrder = 6
        Width = 89
      end
      object cxDBMemo1: TcxDBMemo
        Left = 16
        Top = 112
        DataBinding.DataField = 'obs'
        DataBinding.DataSource = DS1
        Properties.CharCase = ecUpperCase
        TabOrder = 8
        Height = 89
        Width = 605
      end
      object cxDBSpinEdit1: TcxDBLabel
        Left = 143
        Top = 25
        DataBinding.DataField = 'favorec_cod'
        DataBinding.DataSource = DS1
        ParentColor = False
        Style.BorderStyle = ebsOffice11
        Height = 21
        Width = 36
      end
      object cxButton1: TcxButton
        Left = 598
        Top = 24
        Width = 23
        Height = 24
        Hint = 'Abre as Tabelas da EFD'
        Caption = '>>'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        OnClick = cxButton1Click
      end
      object cxDBCalcEdit1: TcxDBCurrencyEdit
        Left = 454
        Top = 69
        DataBinding.DataField = 'valor'
        DataBinding.DataSource = DS1
        TabOrder = 7
        Width = 121
      end
      object cxDBTextEdit1: TcxDBImageComboBox
        Left = 16
        Top = 25
        DataBinding.DataField = 'tipo'
        DataBinding.DataSource = DS1
        Properties.Items = <
          item
            Description = 'BOLETO'
            ImageIndex = 0
            Value = 'B'
          end
          item
            Description = 'FATURA'
            Value = 'F'
          end
          item
            Description = 'DUPLICATA'
            Value = 'D'
          end
          item
            Description = 'DINHEIRO'
            Value = '$'
          end
          item
            Description = 'CHEQUE'
            Value = 'C'
          end
          item
            Description = 'OUTRO'
            Value = 'O'
          end>
        TabOrder = 1
        Width = 121
      end
    end
    inherited TabPesq: TcxTabSheet
      TabVisible = False
      ExplicitHeight = 233
      inherited grd: TcxGrid
        Height = 191
        ExplicitHeight = 187
        inherited tbv: TcxGridDBTableView
          OptionsView.ScrollBars = ssBoth
        end
      end
      inherited pnlPesq: TPanel
        Top = 191
        ExplicitTop = 187
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  inherited ini: TFormStorage
    Left = 32
    Top = 216
  end
  inherited DS1: TDataSource
    DataSet = DM.QFinan_apagar
    Left = 80
    Top = 216
  end
  inherited FR: TFormResizer
    Left = 176
    Top = 216
  end
  inherited EnterTab: TACBrEnterTab
    Left = 128
    Top = 216
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
end
