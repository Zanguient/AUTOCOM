inherited frmFPgto: TfrmFPgto
  Caption = 'AUTOCOM PDV - CADASTRO DE F. PGTO'
  ClientWidth = 548
  FormStyle = fsStayOnTop
  ExplicitWidth = 554
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Width = 548
    ExplicitWidth = 548
    inherited pnlBtnClose: TPanel
      Left = 460
      ExplicitLeft = 460
    end
    inherited pnlBase: TPanel
      Width = 459
      ExplicitWidth = 459
      inherited pnlbasebotton: TPanel
        Width = 412
        ExplicitWidth = 412
        inherited Bar1: TdxStatusBar
          Width = 410
          ExplicitWidth = 410
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 548
    ExplicitWidth = 548
    ClientRectRight = 544
    inherited TabCad: TcxTabSheet
      TabVisible = False
      ExplicitWidth = 540
      inherited dbNav: TcxDBNavigator
        Width = 530
        ExplicitWidth = 530
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 540
      inherited grd: TcxGrid
        Width = 540
        Height = 221
        ExplicitWidth = 540
        ExplicitHeight = 221
        inherited tbv: TcxGridDBTableView
          OptionsData.Editing = True
          OptionsSelection.CellSelect = True
          object tbvColumn1: TcxGridDBColumn
            Caption = 'ID'
            HeaderAlignmentHorz = taCenter
            Width = 38
          end
          object tbvColumn2: TcxGridDBColumn
            Caption = 'DESCRI'#199#195'O'
            HeaderAlignmentHorz = taCenter
            Width = 208
          end
          object tbvColumn3: TcxGridDBColumn
            Caption = 'PRZ'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
          end
          object tbvColumn4: TcxGridDBColumn
            Caption = 'TIPO'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              'DES'
              'DIN'
              'CHQ'
              'CRT'
              'TKT'
              'FAT')
            HeaderAlignmentHorz = taCenter
          end
          object tbvColumn5: TcxGridDBColumn
            Caption = 'ECF'
            HeaderAlignmentHorz = taCenter
          end
          object tbvColumn6: TcxGridDBColumn
            Caption = 'USO'
            HeaderAlignmentHorz = taCenter
          end
        end
      end
      inherited pnlPesq: TPanel
        Top = 221
        Width = 540
        Visible = False
        ExplicitTop = 221
        ExplicitWidth = 540
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 267
        Width = 540
        Height = 23
        Align = alBottom
        Color = 12189695
        ParentBackground = False
        TabOrder = 2
        object cxLabel1: TcxLabel
          Left = 1
          Top = 1
          Align = alClient
          Caption = 'F5-NOVO   F6-EXCLUIR   F7-ALTERAR   F8-GRAVAR   F9-CANCELAR'
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.WordWrap = True
          Width = 538
          AnchorX = 270
        end
      end
    end
  end
  inherited DS1: TDataSource
    DataSet = DM_PDV.TFPag
  end
end
