object GtinMaker: TGtinMaker
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Criacao de Etiquetas'
  ClientHeight = 491
  ClientWidth = 841
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 9
    Top = 8
    Width = 169
    Height = 476
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 5
      Top = 9
      Width = 148
      Height = 114
      Caption = 'Area da Folha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label12: TLabel
        Left = 4
        Top = 24
        Width = 45
        Height = 16
        Caption = 'Largura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 13
        Top = 54
        Width = 37
        Height = 16
        Caption = 'Altura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 109
        Top = 24
        Width = 16
        Height = 16
        Caption = 'MM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 109
        Top = 54
        Width = 16
        Height = 16
        Caption = 'MM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 4
        Top = 84
        Width = 46
        Height = 16
        Caption = 'Colunas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit_LargPag: TSpinEdit
        Left = 55
        Top = 22
        Width = 49
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 0
        Value = 100
        OnChange = AlteraFolha
      end
      object Edit_AltPag: TSpinEdit
        Left = 55
        Top = 51
        Width = 49
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 1
        Value = 30
        OnChange = AlteraFolha
      end
      object SpinEdit2: TSpinEdit
        Left = 55
        Top = 81
        Width = 49
        Height = 26
        MaxValue = 24
        MinValue = 1
        TabOrder = 2
        Value = 1
        OnChange = AlteraFolha
      end
    end
    object GroupBox2: TGroupBox
      Left = 5
      Top = 128
      Width = 148
      Height = 89
      Caption = 'Area da Etiqueta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label6: TLabel
        Left = 13
        Top = 53
        Width = 37
        Height = 16
        Caption = 'Altura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 5
        Top = 23
        Width = 45
        Height = 16
        Caption = 'Largura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 109
        Top = 23
        Width = 16
        Height = 16
        Caption = 'MM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 109
        Top = 53
        Width = 16
        Height = 16
        Caption = 'MM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit_LargBand: TSpinEdit
        Left = 55
        Top = 20
        Width = 49
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 0
        Value = 100
        OnChange = AlteraBand
      end
      object Edit_AltBand: TSpinEdit
        Left = 55
        Top = 50
        Width = 49
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 1
        Value = 30
        OnChange = AlteraBand
      end
    end
    object GroupBox3: TGroupBox
      Left = 5
      Top = 223
      Width = 148
      Height = 146
      Caption = 'Margens Folha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label15: TLabel
        Left = 4
        Top = 25
        Width = 68
        Height = 16
        Caption = 'Margem Top:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 4
        Top = 54
        Width = 68
        Height = 16
        Caption = 'Margem Bai.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 4
        Top = 82
        Width = 66
        Height = 16
        Caption = 'Margem Dir.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 4
        Top = 110
        Width = 70
        Height = 16
        Caption = 'Margem Esq.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sEdit_Top: TSpinEdit
        Left = 82
        Top = 22
        Width = 46
        Height = 26
        MaxValue = 24
        MinValue = 0
        TabOrder = 0
        Value = 0
        OnChange = AlteraMargem
      end
      object sEdit_Bot: TSpinEdit
        Left = 82
        Top = 51
        Width = 46
        Height = 26
        MaxValue = 24
        MinValue = 0
        TabOrder = 1
        Value = 0
        OnChange = AlteraMargem
      end
      object sEdit_Dir: TSpinEdit
        Left = 82
        Top = 79
        Width = 46
        Height = 26
        MaxValue = 24
        MinValue = 0
        TabOrder = 2
        Value = 0
        OnChange = AlteraMargem
      end
      object sEdit_Esq: TSpinEdit
        Left = 82
        Top = 107
        Width = 46
        Height = 26
        MaxValue = 24
        MinValue = 0
        TabOrder = 3
        Value = 0
        OnChange = AlteraMargem
      end
    end
    object GroupBox4: TGroupBox
      Left = 5
      Top = 362
      Width = 148
      Height = 86
      Caption = 'Dimens'#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label21: TLabel
        Left = 25
        Top = 22
        Width = 45
        Height = 16
        Caption = 'Largura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 33
        Top = 52
        Width = 37
        Height = 16
        Caption = 'Altura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit_LarBarra: TSpinEdit
        Left = 82
        Top = 19
        Width = 46
        Height = 26
        MaxValue = 24
        MinValue = 0
        TabOrder = 0
        Value = 0
        OnChange = Edit_LarBarraChange
      end
      object Edit_AltBarra: TSpinEdit
        Left = 82
        Top = 49
        Width = 46
        Height = 26
        MaxValue = 24
        MinValue = 0
        TabOrder = 1
        Value = 0
        OnChange = Edit_AltBarraChange
      end
    end
  end
  object Panel4: TPanel
    Left = 184
    Top = 417
    Width = 417
    Height = 67
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 6
      Width = 34
      Height = 16
      Caption = 'Fonte:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 38
      Width = 32
      Height = 16
      Caption = 'Estilo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 200
      Top = 6
      Width = 85
      Height = 16
      Caption = 'Tamanho Fonte:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 229
      Top = 38
      Width = 56
      Height = 16
      Caption = 'Cor Fonte:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CB_Style: TComboBox
      Left = 44
      Top = 36
      Width = 145
      Height = 21
      TabOrder = 2
      OnChange = FonteChange
      Items.Strings = (
        'Negrito'
        'Italico'
        'Sublinhado')
    end
    object CB_Color: TColorComboBox
      Left = 291
      Top = 36
      Width = 94
      Height = 20
      TabOrder = 3
      OnChange = FonteChange
    end
    object SP_Font: TSpinEdit
      Left = 291
      Top = 8
      Width = 94
      Height = 22
      MaxValue = 24
      MinValue = 2
      TabOrder = 1
      Value = 8
      OnChange = FonteChange
    end
    object CB_Font: TFontComboBox
      Left = 44
      Top = 8
      Width = 145
      Height = 20
      Style = csDropDown
      TabOrder = 0
      OnChange = FonteChange
    end
  end
  object ScrollBox1: TScrollBox
    Left = 184
    Top = 97
    Width = 652
    Height = 312
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 184
    Top = 8
    Width = 652
    Height = 85
    TabOrder = 3
    object SB_Excluir: TSpeedButton
      Left = 86
      Top = 27
      Width = 28
      Height = 30
      Flat = True
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000900FF1B0500FD690600
        FCB50500FBD60500FCF30500FCF30500FBD60600FCB40500FD690900FF1B0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000FF140500FB910500FCFB0500FCFF0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFB0500
        FC990000FF190000000000000000000000000000000000000000000000000000
        000000000000000000000300FC4C0500FCF10500FCFF0500FCFF0500FCFF0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500
        FCFF0500FCF00300FC4B00000000000000000000000000000000000000000000
        0000000000000500FD6C0500FCFD0500FCFF0500FCFF0500FCFF0500FCFF0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500
        FCFF0500FCFF0500FCFD0500FD6B000000000000000000000000000000000000
        00000400FB480500FCFC0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500
        FCFF0500FCFF0500FCFF0500FCFD0300FC4C0000000000000000000000000A00
        FF1A0500FCF20500FCFF0500FCFF0500FCFF0500FCFF0500FCEB0000FF090000
        000000000000000000000000000000000000000000000000FF0D0500FCF30500
        FCFF0500FCFF0500FCFF0500FCFF0500FCF00000FF1800000000000000000500
        FC9A0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FDD0000000000000
        00000500FA2F00000000000000000500FA3000000000000000000500FCDB0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FC98000000000900FF1C0500
        FCFB0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCBF000000000000
        00000500FCCA00000000000000000500FCCA00000000000000000500FCC80500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFB0900FF1B0500FD6B0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0400FCAD000000000000
        00000500FCCA00000000000000000500FCCA00000000000000000600FCB70500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FD680600FCB60500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FC9C000000000000
        00000500FCCA00000000000000000500FCCA00000000000000000500FCA30500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0600FCB40500FBD90500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0600FB8A000000000000
        00000500FCCA00000000000000000500FCCA00000000000000000500FB910500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FBD60500FCF20500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0400FD79000000000000
        00000500FCCA00000000000000000500FCCA00000000000000000400FD7F0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCF10500FCF20500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FD68000000000000
        00000600FCB500000000000000000600FCB500000000000000000500FD6B0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCF20500FBDA0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0600FC56000000000000
        00000000000000000000000000000000000000000000000000000600FC590500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FBD80600FCB60500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FDCF0500FCBB0500
        FCBB0500FCBB0500FCBB0500FCBB0500FCBB0500FCBB0500FCBB0500FDCF0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0600FCB40500FD6C0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FD6A0000FF110000FF110000
        FF110000FF110000FF110000FF110000FF110000FF110000FF110000FF110500
        FD6A0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FD6A0900FF1D0500
        FCFC0500FCFF0500FCFF0500FCFF0500FCFF0400FCAC0700FF250800FF220800
        FF220800FF220800FF220800FF220800FF220800FF220800FF220700FF250400
        FCAC0500FCFF0500FCFF0500FCFF0500FCFF0500FCFB0900FF1B000000000500
        FC9C0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500
        FCE20500FCAA0500FCAA0500FCAA0500FCAA0500FCE20500FCFF0500FCFF0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FC9900000000000000000900
        FF1B0500FCF20500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0400
        FCB1000000000000000000000000000000000400FCB10500FCFF0500FCFF0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCF10000FF1900000000000000000000
        00000300FC490500FCFC0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500
        FCFF0500FCFF0500FCFF0500FCFD0700FC4E0000000000000000000000000000
        0000000000000500FD6D0500FCFD0500FCFF0500FCFF0500FCFF0500FCFF0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500
        FCFF0500FCFF0500FCFD0500FD6C000000000000000000000000000000000000
        000000000000000000000700FC4E0500FCF20500FCFF0500FCFF0500FCFF0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500
        FCFF0500FCF20700FC4D00000000000000000000000000000000000000000000
        00000000000000000000000000000900FF1B0500FC990500FCFB0500FCFF0500
        FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFF0500FCFD0500
        FCAA0800FF1F0000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000900FF1D0500FD6C0600
        FCB70500FBD70500FCF40500FCF40500FBD70600FCB60500FD6B0900FF1C0000
        0000000000000000000000000000000000000000000000000000}
      OnClick = SB_ExcluirClick
    end
    object SB_CodProd: TSpeedButton
      Left = 129
      Top = 14
      Width = 121
      Height = 24
      Caption = 'CODIGO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13063205
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SB_CodProdClick
    end
    object SB_Nome: TSpeedButton
      Left = 129
      Top = 44
      Width = 121
      Height = 26
      Caption = 'NOME PRODUTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13063205
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SB_NomeClick
    end
    object Sb_Vista: TSpeedButton
      Left = 256
      Top = 14
      Width = 126
      Height = 24
      Caption = 'VLR. VISTA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13063205
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Sb_VistaClick
    end
    object Sb_Prazo: TSpeedButton
      Left = 256
      Top = 44
      Width = 126
      Height = 26
      Caption = 'VLR.PRAZO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13063205
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Sb_PrazoClick
    end
    object SB_Barras: TSpeedButton
      Left = 384
      Top = 14
      Width = 126
      Height = 24
      Caption = 'BARRAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13063205
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SB_BarrasClick
    end
    object SB_CodBarras: TSpeedButton
      Left = 384
      Top = 44
      Width = 126
      Height = 26
      Caption = 'COD. BARRAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13063205
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SB_CodBarrasClick
    end
    object Sb_Empresa: TSpeedButton
      Left = 513
      Top = 14
      Width = 126
      Height = 24
      Caption = 'FANTASIA EMP.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13063205
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Sb_EmpresaClick
    end
    object SpeedButton1: TSpeedButton
      Left = 513
      Top = 44
      Width = 126
      Height = 26
      Caption = 'Outro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13063205
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SB_Criar: TSpeedButton
      Left = 8
      Top = 14
      Width = 65
      Height = 24
      Caption = 'Criar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13063205
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SB_CriarClick
    end
    object SB_Preview: TSpeedButton
      Left = 8
      Top = 44
      Width = 65
      Height = 26
      Caption = 'Preview'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13063205
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SB_PreviewClick
    end
    object Shape1: TShape
      Left = 120
      Top = 9
      Width = 1
      Height = 64
    end
  end
  object Pn_CodBarra: TPanel
    Left = 613
    Top = 416
    Width = 229
    Height = 67
    TabOrder = 4
    object Label10: TLabel
      Left = 12
      Top = 6
      Width = 33
      Height = 16
      Caption = 'Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 0
      Top = 33
      Width = 45
      Height = 16
      Caption = 'Caption:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 135
      Top = 28
      Width = 83
      Height = 24
      Caption = 'Gerar Codido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13063205
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object Edit_Name: TEdit
      Left = 47
      Top = 4
      Width = 82
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit_NameChange
    end
    object Edit_Caption: TEdit
      Left = 47
      Top = 31
      Width = 82
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = Edit_CaptionChange
    end
  end
end
