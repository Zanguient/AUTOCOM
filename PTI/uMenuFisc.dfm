inherited frmMenuFisc: TfrmMenuFisc
  Left = 540
  Top = 249
  Caption = 'frmMenuFisc'
  ClientHeight = 500
  ClientWidth = 478
  FormStyle = fsStayOnTop
  Position = poDesigned
  ExplicitWidth = 484
  ExplicitHeight = 528
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Top = 427
    Width = 478
    Visible = False
    ExplicitTop = 427
    ExplicitWidth = 478
    inherited pnlBtnClose: TPanel
      Left = 390
      ExplicitLeft = 390
    end
    inherited pnlBase: TPanel
      Width = 389
      Visible = False
      ExplicitWidth = 389
      inherited pnlbasebotton: TPanel
        Width = 342
        ExplicitWidth = 342
        inherited Bar1: TdxStatusBar
          Width = 340
          Panels = <
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              PanelStyle.Alignment = taCenter
              MinWidth = 1
              Width = 1
            end
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              PanelStyle.Alignment = taCenter
            end>
          ExplicitWidth = 340
        end
      end
      inherited btnReset: TcxButton
        Visible = False
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 478
    Height = 427
    Properties.ActivePage = TabECF
    ExplicitWidth = 478
    ExplicitHeight = 427
    ClientRectBottom = 423
    ClientRectRight = 474
    inherited TabCad: TcxTabSheet
      Caption = 'MENU FISCAL'
      ExplicitTop = 26
      ExplicitWidth = 478
      ExplicitHeight = 401
      inherited dbNav: TcxDBNavigator
        AlignWithMargins = False
        Left = 0
        Top = 376
        Width = 470
        Height = 21
        Visible = False
        ExplicitLeft = 0
        ExplicitTop = 380
        ExplicitWidth = 477
        ExplicitHeight = 21
      end
      object Panel1: TPanel
        Left = 0
        Top = 352
        Width = 470
        Height = 24
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 356
        ExplicitWidth = 478
        object chkMenuFiscalGerarArquivo: TcxCheckBox
          AlignWithMargins = True
          Left = 21
          Top = 2
          Margins.Left = 20
          Margins.Top = 1
          Margins.Bottom = 1
          Align = alTop
          Caption = 'Efetuar a gera'#231#227'o de arquivo'
          ParentFont = False
          TabOrder = 0
        end
      end
      object RgMenuFisc: TcxRadioGroup
        Left = 0
        Top = 0
        Align = alClient
        Caption = 'Op'#231#245'es'
        Properties.Items = <
          item
            Caption = 'LX - EMISS'#195'O DA LEITURA X'
            Value = 0
          end
          item
            Caption = 'LMF - LEITURA DA MEM'#211'RIA FISCAL (COMPLETA)'
            Value = 1
            Tag = 1
          end
          item
            Caption = 'LMF - LEITURA DA MEM'#211'RIA FISCAL (SIMPLIFICADA)'
            Value = 2
            Tag = 2
          end
          item
            Caption = 'Arq. MF (bin'#225'rio)'
            Value = '14'
            Tag = 14
          end
          item
            Caption = 'Arq. MFD (bin'#225'rio)'
            Value = 4
            Tag = 4
          end
          item
            Caption = 'Identifica'#231#227'o do PAF-ECF'
            Value = '10'
            Tag = 10
          end
          item
            Caption = 'Vendas do Per'#237'odo'
            Value = 11
            Tag = 11
          end
          item
            Caption = 'Tab. '#205'ndice T'#233'cnico Produ'#231#227'o'
            Value = 12
            Tag = 12
          end
          item
            Caption = 'Par'#226'metros de Configura'#231#227'o'
            Value = 13
            Tag = 13
          end
          item
            Caption = 'REGISTROS DO PAF-ECF'
            Value = '15'
            Tag = 15
          end>
        TabOrder = 2
        OnClick = RgMenuFiscClick
        Height = 264
        Width = 470
      end
      object pgOpc: TcxPageControl
        Left = 0
        Top = 264
        Width = 470
        Height = 88
        Align = alBottom
        TabOrder = 3
        Properties.ActivePage = TabData
        Properties.CustomButtons.Buttons = <>
        ExplicitTop = 268
        ExplicitWidth = 478
        ClientRectBottom = 84
        ClientRectLeft = 4
        ClientRectRight = 466
        ClientRectTop = 26
        object TabData: TcxTabSheet
          Caption = 'Emiss'#227'o por Data'
          ImageIndex = 0
          ExplicitLeft = 0
          ExplicitWidth = 478
          ExplicitHeight = 62
          object DtInicial: TcxDateEdit
            Left = 29
            Top = 24
            Properties.DateButtons = []
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.ValidateOnEnter = False
            TabOrder = 0
            Width = 110
          end
          object DtFinal: TcxDateEdit
            Left = 174
            Top = 24
            Properties.DateButtons = []
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.ValidateOnEnter = False
            TabOrder = 1
            Width = 107
          end
          object rgVendaPer: TcxRadioGroup
            Left = 340
            Top = -9
            ParentFont = False
            Properties.Items = <
              item
                Caption = 'Conv.: 57/95'
                Value = 0
              end
              item
                Caption = 'Ato COT.: 09/08'
                Value = 1
              end>
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Comic Sans MS'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Visible = False
            Height = 65
            Width = 155
          end
          object Label1: TcxLabel
            Left = 1
            Top = 28
            Caption = 'de :'
            Transparent = True
          end
          object Label2: TcxLabel
            Left = 146
            Top = 28
            Caption = 'at'#233
            Transparent = True
          end
        end
        object TabDoc: TcxTabSheet
          Caption = 'Emiss'#227'o por N'#186' Doc.'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitWidth = 478
          ExplicitHeight = 62
          object Label3: TcxLabel
            Left = 16
            Top = 21
            Caption = 'de :'
            Transparent = True
          end
          object Label4: TcxLabel
            Left = 128
            Top = 21
            Caption = 'at'#233
            Transparent = True
          end
          object COOInicial: TcxCurrencyEdit
            Left = 38
            Top = 18
            EditValue = 0.000000000000000000
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '0'
            TabOrder = 0
            Width = 80
          end
          object COOFinal: TcxCurrencyEdit
            Left = 155
            Top = 18
            EditValue = 0.000000000000000000
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '0'
            TabOrder = 1
            Width = 80
          end
        end
        object TabProd: TcxTabSheet
          Caption = 'INFORME O PRODUTO'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitWidth = 478
          ExplicitHeight = 62
          object RgTipoProd: TRadioGroup
            Left = -2
            Top = -14
            Width = 86
            Height = 69
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ItemIndex = 0
            Items.Strings = (
              'C'#211'DIGO'
              'DESCRI'#199#195'O')
            ParentFont = False
            TabOrder = 2
            OnClick = RgTipoProdClick
          end
          object BtnInsereProd: TcxButton
            Left = 433
            Top = 16
            Width = 20
            Height = 22
            Caption = '>>'
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnClick = BtnInsereProdClick
          end
          object EdEstoque: TcxTextEdit
            Left = 175
            Top = 16
            AutoSize = False
            TabOrder = 0
            Height = 23
            Width = 255
          end
          object lblProd: TcxLabel
            Left = 175
            Top = 39
            Hint = 'Nenhum produto listado'
            Caption = 'Nenhum produto listado'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object Label5: TcxLabel
            Left = 175
            Top = -3
            Caption = 'Digite o produto e clique no bot'#227'o para inserir'
            Transparent = True
          end
          object RgEstoque: TRadioGroup
            Left = 84
            Top = -11
            Width = 87
            Height = 66
            ItemIndex = 0
            Items.Strings = (
              'TOTAL'
              'PARCIAL')
            TabOrder = 5
            Visible = False
            OnClick = RgEstoqueClick
          end
        end
        object TabVazio: TcxTabSheet
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
      end
    end
    inherited TabPesq: TcxTabSheet
      TabVisible = False
      ExplicitWidth = 474
      ExplicitHeight = 401
      inherited grd: TcxGrid
        Width = 470
        Height = 351
        ExplicitWidth = 478
        ExplicitHeight = 355
      end
      inherited pnlPesq: TPanel
        Top = 351
        Width = 470
        ExplicitTop = 355
        ExplicitWidth = 474
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
    object TabECF: TcxTabSheet
      Caption = 'INTERA'#199#195'O COM ECF'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object RGEcf: TcxRadioGroup
        Left = 0
        Top = 0
        TabStop = False
        Align = alTop
        Caption = 'A'#231#245'es'
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Ler Formas de Pagamento'
          end
          item
            Caption = 'Ler Relat'#243'rios Gerenciais'
            Tag = 1
          end
          item
            Caption = 'Ler Comprovantes N'#227'o Fiscais'
            Tag = 2
          end
          item
            Caption = 'Ler Al'#237'quotas'
            Tag = 3
          end
          item
            Caption = 'Alterar Hor'#225'rio de Ver'#227'o'
            Tag = 4
          end
          item
            Caption = 'For'#231'ar a emiss'#227'o da Redu'#231#227'o Z'
            Tag = 5
          end
          item
            Caption = 'CANCELAR CUPOM FISCAL'
            Tag = 6
          end
          item
            Caption = 'CANCELAR CUPOM N'#195'O FISCAL'
            Tag = 7
          end
          item
            Caption = 'Espelho MFD'
            Tag = 8
          end>
        TabOrder = 0
        OnClick = RGEcfClick
        Height = 97
        Width = 470
      end
      object Panel2: TPanel
        Left = 0
        Top = 97
        Width = 470
        Height = 32
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 478
        object CBBanco: TcxCheckBox
          AlignWithMargins = True
          Left = 4
          Top = 4
          Align = alClient
          Caption = 'Ap'#243's a leitura, gravar no banco de dados'
          TabOrder = 0
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 129
        Width = 470
        Height = 268
        Align = alClient
        Caption = 'Panel3'
        TabOrder = 2
        ExplicitWidth = 478
        ExplicitHeight = 272
        object mECF: TMemo
          Left = 1
          Top = 1
          Width = 468
          Height = 187
          Align = alClient
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 476
          ExplicitHeight = 191
        end
        object pgECF: TcxPageControl
          Left = 1
          Top = 188
          Width = 468
          Height = 79
          Align = alBottom
          TabOrder = 1
          Properties.ActivePage = TabFpgto
          Properties.CustomButtons.Buttons = <>
          ExplicitTop = 192
          ExplicitWidth = 476
          ClientRectBottom = 75
          ClientRectLeft = 4
          ClientRectRight = 464
          ClientRectTop = 26
          object TabFpgto: TcxTabSheet
            Caption = 'F.Pgto'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitWidth = 476
            ExplicitHeight = 53
            object edFPgto: TcxTextEdit
              Left = 2
              Top = 18
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clNavy
              Style.Font.Height = -13
              Style.Font.Name = 'Comic Sans MS'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 222
            end
            object lblHost: TcxLabel
              Left = 2
              Top = -1
              Caption = 'NOVA F. PAGTO'
              Style.Shadow = False
              Properties.LabelStyle = cxlsLowered
              Transparent = True
            end
            object btnFPag: TcxButton
              AlignWithMargins = True
              Left = 382
              Top = 3
              Width = 75
              Height = 43
              Align = alRight
              Caption = 'Cadastrar'
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Flat = True
              SpeedButtonOptions.Transparent = True
              TabOrder = 3
              TabStop = False
              OnClick = btnFPagClick
              ExplicitLeft = 398
              ExplicitHeight = 47
            end
            object cbVinc: TcxCheckBox
              Left = 241
              Top = 21
              Caption = 'Permite Vinculado'
              ParentFont = False
              State = cbsChecked
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -9
              Style.Font.Name = 'Comic Sans MS'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
            end
          end
          object TabAliq: TcxTabSheet
            Caption = 'Al'#237'q.'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitWidth = 476
            ExplicitHeight = 53
            object edAliq: TcxCurrencyEdit
              Left = 141
              Top = 14
              EditValue = 0.000000000000000000
              Properties.Alignment.Horz = taRightJustify
              Properties.AssignedValues.MinValue = True
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = '0.00%'
              Properties.MaxValue = 100.000000000000000000
              TabOrder = 0
              Width = 64
            end
            object cbiss: TCheckBox
              Left = 231
              Top = 17
              Width = 48
              Height = 17
              Caption = 'ISS'
              TabOrder = 1
            end
            object cxLabel1: TcxLabel
              Left = 46
              Top = 15
              Caption = 'NOVA AL'#205'Q.'
              Style.Shadow = False
              Properties.LabelStyle = cxlsLowered
              Transparent = True
            end
            object btnAliq: TcxButton
              AlignWithMargins = True
              Left = 382
              Top = 3
              Width = 75
              Height = 43
              Align = alRight
              Caption = 'Cadastrar'
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Flat = True
              SpeedButtonOptions.Transparent = True
              TabOrder = 3
              TabStop = False
              OnClick = btnAliqClick
              ExplicitLeft = 398
              ExplicitHeight = 47
            end
          end
          object TabRel: TcxTabSheet
            Caption = 'Relat'#243'rios'
            ImageIndex = 2
            object edRelGer: TcxTextEdit
              Left = 159
              Top = 15
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Properties.MaxLength = 15
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clNavy
              Style.Font.Height = -13
              Style.Font.Name = 'Comic Sans MS'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 205
            end
            object btnRel: TcxButton
              AlignWithMargins = True
              Left = 382
              Top = 3
              Width = 75
              Height = 43
              Align = alRight
              Caption = 'Cadastrar'
              LookAndFeel.Kind = lfFlat
              LookAndFeel.NativeStyle = False
              SpeedButtonOptions.CanBeFocused = False
              SpeedButtonOptions.Flat = True
              SpeedButtonOptions.Transparent = True
              TabOrder = 2
              TabStop = False
              OnClick = btnRelClick
              ExplicitLeft = 398
              ExplicitHeight = 47
            end
            object RGTipoRel: TcxRadioGroup
              Left = -4
              Top = -10
              TabStop = False
              ParentFont = False
              Properties.Items = <
                item
                  Caption = 'Relat'#243'rio Gerencial (RG)'
                end
                item
                  Caption = 'Comrov. n'#227'o fiscal (CNF)'
                end>
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -9
              Style.Font.Name = 'Comic Sans MS'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Height = 58
              Width = 145
            end
          end
        end
      end
    end
  end
  object pnlAguarde: TPanel [3]
    Left = 142
    Top = 147
    Width = 197
    Height = 77
    BevelWidth = 8
    Caption = 'AGUARDE...'
    Color = 4962803
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object Panel4: TPanel [4]
    Left = 0
    Top = 459
    Width = 478
    Height = 41
    Align = alBottom
    TabOrder = 4
    object btnEsc: TcxButton
      AlignWithMargins = True
      Left = 368
      Top = 4
      Width = 106
      Height = 33
      Align = alRight
      Caption = 'ESC - Fechar'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      TabStop = False
      OnClick = btnEscClick
    end
    object btnF11: TcxButton
      AlignWithMargins = True
      Left = 256
      Top = 4
      Width = 106
      Height = 33
      Align = alRight
      Caption = 'F11 - EXECUTAR'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      TabStop = False
      OnClick = btnF11Click
    end
    object btnF10: TcxButton
      AlignWithMargins = True
      Left = 43
      Top = 4
      Width = 207
      Height = 33
      Align = alRight
      Caption = 'F10 - VER ARQUIVOS GERADOS'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 2
      TabStop = False
      OnClick = btnF10Click
    end
  end
  inherited ini: TFormStorage
    Left = 352
    Top = 40
  end
  inherited DS1: TDataSource
    Left = 416
    Top = 40
  end
  inherited FR: TFormResizer
    Left = 424
    Top = 104
  end
  inherited EnterTab: TACBrEnterTab
    Left = 424
    Top = 160
  end
  inherited cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
  end
  object T1: TFDMemTable
    Active = True
    AfterPost = T1AfterPost
    AfterDelete = T1AfterPost
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 372
    Top = 98
    object T1id: TIntegerField
      FieldName = 'id'
    end
  end
end
