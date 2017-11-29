inherited frmSpedPIS: TfrmSpedPIS
  Caption = 'SPED PIS/COFINS'
  ClientHeight = 360
  ClientWidth = 362
  ExplicitWidth = 368
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 318
    Width = 362
    ExplicitTop = 318
    ExplicitWidth = 362
    inherited pnlBtnClose: TPanel
      Left = 268
      ExplicitLeft = 268
    end
    inherited pnlBase: TPanel
      Width = 267
      ExplicitWidth = 267
      object btnGerar: TcxButton
        AlignWithMargins = True
        Left = 186
        Top = 3
        Width = 78
        Height = 30
        Align = alRight
        Caption = 'GERAR'
        TabOrder = 0
        OnClick = btnGerarClick
      end
    end
  end
  object cxLabel1: TcxLabel [2]
    Left = 1
    Top = 228
    Caption = 'PER'#205'ODO'
  end
  object D1: TcxDateEdit [3]
    Left = 1
    Top = 246
    Properties.DateButtons = []
    TabOrder = 3
    Width = 121
  end
  object D2: TcxDateEdit [4]
    Left = 127
    Top = 246
    Properties.DateButtons = []
    TabOrder = 4
    Width = 121
  end
  object cmbVersao: TcxComboBox [5]
    Left = 1
    Top = 18
    Properties.Items.Strings = (
      '201'
      '200'
      '101'
      '100')
    TabOrder = 5
    Text = '201'
    Width = 44
  end
  object cxLabel2: TcxLabel [6]
    Left = 1
    Top = -1
    Caption = 'Vers'#227'o'
  end
  object cmbTipoEscr: TcxComboBox [7]
    Left = 53
    Top = 18
    Properties.Items.Strings = (
      'Original'
      'Retificadora')
    TabOrder = 7
    Text = 'Original'
    OnClick = cmbTipoEscrClick
    Width = 121
  end
  object cxLabel3: TcxLabel [8]
    Left = 53
    Top = -1
    Caption = 'Tipo de Escritura'#231#227'o'
  end
  object lblStatus: TcxLabel [9]
    Left = 0
    Top = 299
    Align = alBottom
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    AnchorX = 181
    AnchorY = 309
  end
  object cbarq: TcxCheckBox [10]
    Left = 0
    Top = 271
    Caption = 'Abrir local do arquivo'
    State = cbsChecked
    TabOrder = 10
    Width = 173
  end
  object cmbIncid: TcxComboBox [11]
    Left = 1
    Top = 64
    Properties.Items.Strings = (
      'Regime n'#227'o-cumulativo'
      'Regime cumulativo'
      'N'#227'o-cumulativo e cumulativo')
    TabOrder = 11
    Text = 'Regime n'#227'o-cumulativo'
    OnClick = cmbIncidClick
    Width = 181
  end
  object cxLabel4: TcxLabel [12]
    Left = 1
    Top = 44
    Caption = 'Incid. de PIS/COFINS no per'#237'odo'
  end
  object cxLabel5: TcxLabel [13]
    Left = 180
    Top = 1
    Caption = 'N'#186' do Recibo da Escrit. Anter.'
  end
  object edRec: TcxTextEdit [14]
    Left = 180
    Top = 18
    Enabled = False
    TabOrder = 14
    Width = 176
  end
  object cmbAprop: TcxComboBox [15]
    Left = 188
    Top = 64
    Properties.Items.Strings = (
      'Direta'
      'Rateio Prop. (rec. bruta)')
    TabOrder = 15
    Width = 168
  end
  object cxLabel6: TcxLabel [16]
    Left = 188
    Top = 44
    Caption = 'M'#233'todo de Aprop. Cred. comuns'
  end
  object cmbTipo_contrib: TcxComboBox [17]
    Left = 1
    Top = 112
    Properties.Items.Strings = (
      'Apura'#231#227'o do PIS/Pasep e Cofins Exclusiv. a Al'#237'q. B'#225'sica (CST 01)'
      
        'Apura'#231#227'o do PIS/Pasep e Cofins a Al'#237'q. Diferenc. (CST 02) ou por' +
        ' Un. de Med. de Produto (CST 03)')
    TabOrder = 17
    OnClick = cmbIncidClick
    Width = 352
  end
  object cxLabel7: TcxLabel [18]
    Left = 1
    Top = 93
    Caption = 'Tipo de contribui'#231#227'o apurada no per'#237'odo'
  end
  object cmbCriterio: TcxComboBox [19]
    Left = 1
    Top = 157
    Properties.Items.Strings = (
      'Regime de Caixa - Escrit. consolidada (Reg. F500)'
      'Regime de Compet. - Escrit. consolidada (Reg. F550)'
      'Regime de Compet. - Escrit. detalhada (Bl. A, C, D e F)')
    TabOrder = 19
    OnClick = cmbIncidClick
    Width = 352
  end
  object cxLabel8: TcxLabel [20]
    Left = 1
    Top = 138
    Caption = 'Crit'#233'rio de escritura'#231#227'o'
  end
  object cmbSitEsp: TcxComboBox [21]
    Left = 1
    Top = 200
    Properties.Items.Strings = (
      'Abertura'
      'Cis'#227'o'
      'Fus'#227'o'
      'Incorpora'#231#227'o'
      'Encerramento')
    TabOrder = 21
    OnClick = cmbIncidClick
    Width = 352
  end
  object cxLabel9: TcxLabel [22]
    Left = 1
    Top = 181
    Caption = 'Indicador de situa'#231#227'o especial'
  end
  inherited ini: TFormStorage
    StoredProps.Strings = (
      'cmbVersao.ItemIndex'
      'cmbTipoEscr.ItemIndex'
      'cmbTipo_contrib.ItemIndex'
      'cmbIncid.ItemIndex'
      'cmbCriterio.ItemIndex'
      'cmbAprop.ItemIndex')
    Left = 248
    Top = 120
  end
  inherited FR: TFormResizer
    Left = 504
    Top = 72
  end
  inherited EnterTab: TACBrEnterTab
    Left = 544
    Top = 72
  end
end
