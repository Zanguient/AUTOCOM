inherited frmTabRelGer: TfrmTabRelGer
  Caption = 'TABELA DE RELAT. GERENCIAL DO ECF'
  ClientWidth = 448
  ExplicitWidth = 454
  PixelsPerInch = 96
  TextHeight = 15
  inherited TPA: TPanel
    Width = 448
    ExplicitWidth = 448
    inherited pnlBtnClose: TPanel
      Left = 360
      ExplicitLeft = 360
    end
    inherited pnlBase: TPanel
      Width = 359
      ExplicitWidth = 359
      inherited pnlbasebotton: TPanel
        Width = 312
        ExplicitWidth = 312
        inherited Bar1: TdxStatusBar
          Width = 310
          ExplicitWidth = 310
        end
      end
    end
  end
  inherited pgCad: TcxPageControl
    Width = 448
    ExplicitWidth = 448
    ClientRectRight = 444
    inherited TabCad: TcxTabSheet
      TabVisible = False
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 632
      ExplicitHeight = 290
      inherited dbNav: TcxDBNavigator
        Width = 430
        ExplicitWidth = 430
      end
    end
    inherited TabPesq: TcxTabSheet
      ExplicitWidth = 440
      inherited grd: TcxGrid
        Width = 440
        ExplicitWidth = 440
        inherited tbv: TcxGridDBTableView
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.Visible = True
          OptionsBehavior.NavigatorHints = True
          OptionsData.Editing = True
          OptionsSelection.CellSelect = True
          object tbvid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object tbvnome: TcxGridDBColumn
            DataBinding.FieldName = 'nome'
            HeaderAlignmentHorz = taCenter
            Width = 206
          end
          object tbvcodigo: TcxGridDBColumn
            DataBinding.FieldName = 'codigo'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              'gerencialx'
              'meiopgto'
              'identpaf'
              'paramcfg'
              'comprovfat'
              'convenio'
              'receb'
              'fechamento')
            HeaderAlignmentHorz = taCenter
          end
          object tbvnumecf: TcxGridDBColumn
            DataBinding.FieldName = 'numecf'
            HeaderAlignmentHorz = taCenter
          end
        end
      end
      inherited pnlPesq: TPanel
        Width = 440
        Visible = False
        ExplicitWidth = 440
        inherited lblPesq: TcxLabel
          Style.IsFontAssigned = True
        end
      end
    end
  end
  inherited DS1: TDataSource
    AutoEdit = True
    DataSet = DM_PDV.TRG
  end
end
