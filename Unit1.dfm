object Form1: TForm1
  Left = 298
  Top = 332
  Width = 588
  Height = 515
  Caption = 'PTXT sigma-com'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlStatusBar: TPanel
    Left = 0
    Top = 454
    Width = 580
    Height = 27
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    Caption = 'Status'
    TabOrder = 0
    object Label1: TLabel
      Left = 352
      Top = 8
      Width = 91
      Height = 13
      Caption = 'Ver 01.56, 06.2006'
    end
    object CheckBox1: TCheckBox
      Left = 79
      Top = 4
      Width = 97
      Height = 17
      Caption = 'Print u arhivu'
      TabOrder = 0
    end
    object Button1: TButton
      Left = 486
      Top = 5
      Width = 75
      Height = 17
      Caption = 'CitajArhivu'
      TabOrder = 1
      OnClick = Button1Click
    end
    object chkCompat50: TCheckBox
      Left = 167
      Top = 4
      Width = 98
      Height = 17
      Caption = 'Compatibility50'
      Color = clMoneyGreen
      Enabled = False
      ParentColor = False
      TabOrder = 2
    end
  end
  object pnlPreview: TPanel
    Left = 0
    Top = 41
    Width = 580
    Height = 413
    Align = alClient
    Caption = 'pnlPreview'
    TabOrder = 1
    object ppViewer1: TppViewer
      Left = 1
      Top = 1
      Width = 578
      Height = 411
      Align = alClient
      BevelOuter = bvNone
      PageColor = clWindow
      Report = ppReport1
      ZoomPercentage = 100
      ZoomSetting = zsPercentage
      OnPageChange = ppViewer1PageChange
      OnPrintStateChange = ppViewer1PrintStateChange
      OnStatusChange = ppViewer1StatusChange
    end
  end
  object pnlKomande: TPanel
    Left = 0
    Top = 0
    Width = 580
    Height = 41
    Align = alTop
    TabOrder = 2
    object spbPreviewPrint: TSpeedButton
      Left = 212
      Top = 5
      Width = 24
      Height = 24
      Hint = 'Print Report'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000014000000130000000100
        040000000000E400000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777700007777777777777777777700007777777777777777777700007777
        0000000000077777000077707777777770707777000077000000000000070777
        0000770777777BBB770007770000770777777888770707770000770000000000
        0007707700007707777777777070707700007770000000000707007700007777
        0FFFFFFFF07070770000777770F00000F00007770000777770FFFFFFFF077777
        00007777770F00000F07777700007777770FFFFFFFF077770000777777700000
        000077770000777777777777777777770000777777777777777777770000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spbPreviewPrintClick
    end
    object spbPreviewWhole: TSpeedButton
      Left = 246
      Top = 4
      Width = 24
      Height = 24
      Hint = 'Whole Page'
      AllowAllUp = True
      GroupIndex = 1
      Down = True
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        6E030000424D6E03000000000000760000002800000050000000130000000100
        040000000000F802000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777F7F7F7F7F7F7F7F
        7F7F777777777777777777777777777777777777777777777777777777777777
        F7F7F7F7F7F7F7F7F7F777000000000000000077770000000000000000777700
        00000000000000777F00000000000000007F7706868686868686807777068686
        86868686807777068686868686868077F70080808080808080F7770868000000
        0068607777086800000000686077770868000000006860777F08080000000008
        007F7706860FFFFFF08680777706860FFFFFF08680777706860FFFFFF0868077
        F70080087878708080F77708680FFFFFF06860777708680FFFFFF06860777708
        680FFFFFF06860777F08080787878008007F7706860F00F0F08680777706860F
        00F0F08680777706860F00F0F0868077F70080080070708080F77708680FFFFF
        F06860777708680FFFFFF06860777708680FFFFFF06860777F08080787878008
        007F7706860F00F0F08680777706860F00F0F08680777706860F00F0F0868077
        F70080080070708080F77708680FFFFFF06860777708680FFFFFF06860777708
        680FFFFFF06860777F08080787878008007F7706860F00F0F08680777706860F
        00F0F08680777706860F00F0F0868077F70080080070708080F77708680FFFFF
        F06860777708680FFFFFF06860777708680FFFFFF06860777F08080787878008
        007F7706860FFFFFF08680777706860FFFFFF08680777706860FFFFFF0868077
        F70080087878708080F777086800000000686077770868000000006860777708
        68000000006860777F08080000000008007F7706868686868686807777068686
        86868686807777068686868686868077F70080808080808080F7770000000000
        0000007777000000000000000077770000000000000000777F00000000000000
        007F777777777777777777777777777777777777777777777777777777777777
        F7F7F7F7F7F7F7F7F7F777777777777777777777777777777777777777777777
        77777777777777777F7F7F7F7F7F7F7F7F7F}
      NumGlyphs = 4
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spbPreviewWholeClick
    end
    object spbPreviewWidth: TSpeedButton
      Left = 270
      Top = 4
      Width = 24
      Height = 24
      Hint = 'Page Width'
      AllowAllUp = True
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        6E030000424D6E03000000000000760000002800000050000000130000000100
        040000000000F802000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777F7F7F7F7F7F7F7F
        7F7F777777777777777777777777777777777777777777777777777777777777
        F7F7F7F7F7F7F7F7F7F777000000000000000077770000000000000000777700
        00000000000000777F00000000000000007F77060FFFFFFFFFF0807777060FFF
        FFFFFFF0807777060FFFFFFFFFF08077F70000787878787080F777080F00000F
        00F0607777080F00000F00F0607777080F00000F00F060777F08008000070080
        007F77060FFFFFFFFFF0807777060FFFFFFFFFF0807777060FFFFFFFFFF08077
        F70000787878787080F777080F00000F00F0607777080F00000F00F060777708
        0F00000F00F060777F08008000070080007F77060FFFFFFFFFF0807777060FFF
        FFFFFFF0807777060FFFFFFFFFF08077F70000787878787080F777080F00000F
        00F0607777080F00000F00F0607777080F00000F00F060777F08008000070080
        007F77060FFFFFFFFFF0807777060FFFFFFFFFF0807777060FFFFFFFFFF08077
        F70000787878787080F777080F00000F00F0607777080F00000F00F060777708
        0F00000F00F060777F08008000070080007F77060FFFFFFFFFF0807777060FFF
        FFFFFFF0807777060FFFFFFFFFF08077F70000787878787080F777080FFFFFFF
        FFF0607777080FFFFFFFFFF0607777080FFFFFFFFFF060777F08008787878780
        007F770600000000000080777706000000000000807777060000000000008077
        F70000000000000080F777086868686868686077770868686868686860777708
        68686868686860777F08080808080808007F7706868686868686807777068686
        86868686807777068686868686868077F70080808080808080F7770000000000
        0000007777000000000000000077770000000000000000777F00000000000000
        007F777777777777777777777777777777777777777777777777777777777777
        F7F7F7F7F7F7F7F7F7F777777777777777777777777777777777777777777777
        77777777777777777F7F7F7F7F7F7F7F7F7F}
      NumGlyphs = 4
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spbPreviewWidthClick
    end
    object spbPreview100Percent: TSpeedButton
      Left = 294
      Top = 4
      Width = 24
      Height = 24
      Hint = '100 %'
      AllowAllUp = True
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        BA030000424DBA03000000000000760000002800000051000000130000000100
        0400000000004403000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777777777777777777777777777777777F7F7F7F7F7F7F7
        F7F7F00000007777777777777777777777777777777777777777777777777777
        777777777F7F7F7F7F7F7F7F7F7F700000007700000000000000007777700000
        0000000000077770000000000000000777F00000000000000007F00000007706
        80FFFFFFFFFFF0777770680FFFFFFFFFFF077770680FFFFFFFFFFF077F700807
        87878787870F70000000770860FFFFFFFFFFF0777770860FFFFFFFFFFF077770
        860FFFFFFFFFFF0777F08008787878787807F0000000770680FF000F00000077
        7770680FF000F00000077770680FF000F00000077F70080780008000000F7000
        0000770860FF000F000000777770860FF000F00000077770860FF000F0000007
        77F08008700070000007F0000000770680FFFFFFFFFFF0777770680FFFFFFFFF
        FF077770680FFFFFFFFFFF077F70080787878787870F70000000770860FFFFFF
        FFFFF0777770860FFFFFFFFFFF077770860FFFFFFFFFFF0777F0800878787878
        7807F0000000770680FF000F000000777770680FF000F00000077770680FF000
        F00000077F70080780008000000F70000000770860FF000F000000777770860F
        F000F00000077770860FF000F000000777F08008700070000007F00000007706
        80FFFFFFFFFFF0777770680FFFFFFFFFFF077770680FFFFFFFFFFF077F700807
        87878787870F70000000770860FFFFFFFFFFF0777770860FFFFFFFFFFF077770
        860FFFFFFFFFFF0777F08008787878787807F000000077068000000000000077
        77706800000000000007777068000000000000077F70080000000000000F7000
        0000770868686868686860777770868686868686860777708686868686868607
        77F08080808080808007F0000000770686868686868680777770686868686868
        6807777068686868686868077F70080808080808080F70000000770000000000
        00000077777000000000000000077770000000000000000777F0000000000000
        0007F00000007777777777777777777777777777777777777777777777777777
        777777777F7F7F7F7F7F7F7F7F7F700000007777777777777777777777777777
        7777777777777777777777777777777777F7F7F7F7F7F7F7F7F7F0000000}
      NumGlyphs = 4
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spbPreview100PercentClick
    end
    object spbPreviewFirst: TSpeedButton
      Left = 328
      Top = 4
      Width = 24
      Height = 24
      Hint = 'First Page'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000014000000130000000100
        040000000000E400000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777700007777777777777777777700007777777777777777777700007777
        7777777777777777000077778877777778777777000077770077777780777777
        0000777700777778007777770000777700777780007777770000777700777800
        0077777700007777007780000077777700007777007778000077777700007777
        0077778000777777000077770077777800777777000077770077777780777777
        0000777788777777787777770000777777777777777777770000777777777777
        777777770000777777777777777777770000777777777777777777770000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spbPreviewFirstClick
    end
    object spbPreviewPrior: TSpeedButton
      Left = 352
      Top = 4
      Width = 24
      Height = 24
      Hint = 'Prior Page'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000014000000130000000100
        040000000000E400000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777700007777777777777777777700007777777777777777777700007777
        7777777777777777000077777777777877777777000077777777778077777777
        0000777777777800777777770000777777778000777777770000777777780000
        7777777700007777778000007777777700007777777800007777777700007777
        7777800077777777000077777777780077777777000077777777778077777777
        0000777777777778777777770000777777777777777777770000777777777777
        777777770000777777777777777777770000777777777777777777770000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spbPreviewPriorClick
    end
    object spbPreviewNext: TSpeedButton
      Left = 419
      Top = 4
      Width = 24
      Height = 24
      Hint = 'Next Page'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000014000000130000000100
        040000000000E400000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777700007777777777777777777700007777777777777777777700007777
        7777777777777777000077777778777777777777000077777770877777777777
        0000777777700877777777770000777777700087777777770000777777700008
        7777777700007777777000008777777700007777777000087777777700007777
        7770008777777777000077777770087777777777000077777770877777777777
        0000777777787777777777770000777777777777777777770000777777777777
        777777770000777777777777777777770000777777777777777777770000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spbPreviewNextClick
    end
    object spbPreviewLast: TSpeedButton
      Left = 443
      Top = 4
      Width = 24
      Height = 24
      Hint = 'Last Page'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000014000000130000000100
        040000000000E400000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777700007777777777777777777700007777777777777777777700007777
        7777777777777777000077777877777778877777000077777087777770077777
        0000777770087777700777770000777770008777700777770000777770000877
        7007777700007777700000877007777700007777700008777007777700007777
        7000877770077777000077777008777770077777000077777087777770077777
        0000777778777777788777770000777777777777777777770000777777777777
        777777770000777777777777777777770000777777777777777777770000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spbPreviewLastClick
    end
    object Edit1: TEdit
      Left = 72
      Top = 8
      Width = 137
      Height = 21
      TabOrder = 0
      Text = 'c:\sigma\outf.txt'
    end
    object mskPreviewPage: TMaskEdit
      Left = 378
      Top = 6
      Width = 37
      Height = 21
      TabStop = False
      AutoSelect = False
      EditMask = '99999;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnKeyPress = mskPreviewPageKeyPress
    end
    object mskPreviewPercentage: TMaskEdit
      Left = 468
      Top = 6
      Width = 37
      Height = 21
      TabStop = False
      AutoSelect = False
      EditMask = '999\ %;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnKeyPress = mskPreviewPercentageKeyPress
    end
    object btnGo: TButton
      Left = 504
      Top = 8
      Width = 62
      Height = 19
      Caption = '&Pregled'
      TabOrder = 3
      OnClick = btnGoClick
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 57
      Height = 25
      Caption = 'trazi'
      TabOrder = 4
      OnClick = BitBtn1Click
      Glyph.Data = {
        1E060000424D1E06000000000000360000002800000017000000150000000100
        180000000000E8050000C40E0000C40E00000000000000000000C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4BBC1C59499A1988F9FC5BAC0C8
        CFD3C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4ABB7BF5E92
        C25E79B99D8AA5C7BDC1C8CFD3C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4A9C5D963B9F54699EA5C78BAA390A6C6BBC0C8CFD3C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4A1C6E161BAF9469DEF5C77B89D8AA4C6BCC0
        C8CFD3C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C5CFD59AC5E45FBAF946
        95E85D77B7A692A7C7C0C5C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4A6C6E05FB9F9459CF0647DB4AEAEB7C5C5C8BFB0AFBFABA7C9B9B4CB
        BBB8C6C0C2C7CCD0C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C7D0D49BC5E470BBF290A6BEA5999AC6A79DD6B9
        9FE2D0B0E8DBBFE6D6BDD1BBAEC2B0AFC7CCD0C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C6CFD5BECDD8C3BBBA
        C8A091EFD6AFFDF6C7FFFDD1FFFFDDFEFDE2F9F6EDDFCFC7BCAAA9C7CDD1C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C9CFD3CCB2ADEACDAAFEEEBEFFF4C1FFFED4FFFFE6FFFFF4FFFFFDFCFAEE
        CDB7A9BDB6B8C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C9CACDD4B4A5F8E7BCFFE4B2FFF3C0FFFFD5FFFFE6FF
        FFF4FFFFF4FFFFE4E5D8BBBAA5A4C8CED2C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C9C6CAD6BAA7FEF0BEFFDDAAFFEF
        BBFFFED0FFFFDFFFFFE6FFFFE5FFFFDBEFE6C2C1ABA6C8CDD1C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C9C6CAD6B9A7
        FDF3C3FFE5B6FFE9B7FFF9C6FFFFD2FFFFD8FFFFD7FFFFD1EDDFB8BFA6A2C8CD
        D1C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C9CDD1D0B5AAF5EACDFFF3D9FFE2BBFFE7B7FFEEBCFFF4C2FFF5C2FFF7C6
        DFC1A1B8A6A8C8CFD3C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C9B7B6E2CFBFFDFBF8FFF3E2FFE7BCFFDDABFF
        E0ADFFEFBDF9E1B4C3A092C2C2C6C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C7CACDC5B1AFE1D0CAF8F1
        E2FDF3CCFFEFBDFDF0C0F1D4ADCEA593C1B9BBC8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C6C9CDBFADADC6A79AD1B39DDCBEA5DAB7A1C7AAA3C3BCBEC8CFD3C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8CED2C4C4C7C2C0C3C6C4C5C6C4C7C7CACEC8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4}
    end
  end
  object ppOutfPipeline: TppTextPipeline
    CustomDelimiter = #0
    FileName = 'c:\sigma\FIN\15\Outf.txt'
    FileType = ftFixedLength
    UserName = 'OutfPipeline'
    OnLast = ppOutfPipelineLast
    Left = 8
    Top = 104
    object Linija: TppField
      FieldAlias = 'Linija'
      FieldName = 'Linija'
      FieldLength = 300
      DisplayWidth = 300
      Position = 0
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppOutfPipeline
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Clipper - Win report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 5700
    PrinterSetup.mmMarginRight = 4700
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AfterPrint = EscapeExecute
    DeviceType = 'Screen'
    OnCancel = ppReport1Cancel
    OnPreviewFormClose = ppReport1Cancel
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextFileType = ftTab
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    TextSearchSettings.Visible = True
    Left = 5
    Top = 136
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppOutfPipeline'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 794
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppRichText: TppRichText
        OnPrint = ppRichTextPrint
        UserName = 'RichText'
        Caption = 'RichText'
        mmHeight = 3969
        mmLeft = 5556
        mmTop = 0
        mmWidth = 192617
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 15346
      mmPrintPosition = 0
      object ppGenByImage: TppImage
        UserName = 'GenByImage'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 4498
        mmLeft = 179123
        mmTop = 4233
        mmWidth = 5027
        BandType = 8
      end
      object ppDatumVar: TppSystemVariable
        UserName = 'DatumVar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'SC Tahoma Mono 2'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16404
        mmTop = 3175
        mmWidth = 10583
        BandType = 8
      end
      object ppDatumLabel: TppLabel
        UserName = 'Datum'
        Caption = 'Datum:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'SC Tahoma Mono 2'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 5821
        mmTop = 3175
        mmWidth = 7938
        BandType = 8
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 5821
        mmTop = 1588
        mmWidth = 180446
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'SC Tahoma Mono 2'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 101865
        mmTop = 3704
        mmWidth = 1323
        BandType = 8
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Strana:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'SC Tahoma Mono 2'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 89429
        mmTop = 3704
        mmWidth = 9260
        BandType = 8
      end
      object ppGenByLabel: TppLabel
        UserName = 'GenByLabel'
        Caption = 'Generated by sigma-com'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'SC Tahoma Mono 2'
        Font.Size = 6
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 2646
        mmLeft = 155575
        mmTop = 3969
        mmWidth = 23283
        BandType = 8
      end
    end
    object ppPageStyle1: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 529
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'Linija'
      DataPipeline = ppOutfPipeline
      OnGetBreakValue = ppGroup2GetBreakValue
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppOutfPipeline'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 1852
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ActionList1: TActionList
    Left = 11
    Top = 68
    object Printer: TAction
      Caption = 'Printer'
      ShortCut = 16464
      OnExecute = spbPreviewPrintClick
    end
    object Escape: TAction
      Caption = 'Escape'
      ShortCut = 27
      OnExecute = EscapeExecute
    end
  end
  object ppArchiveReader1: TppArchiveReader
    AllowPrintToFile = True
    ArchiveFileName = 'c:\outf.raf'
    DeviceType = 'Screen'
    OnCancel = ppArchiveReader1Cancel
    OnPreviewFormClose = ppArchiveReader1Cancel
    SuppressOutline = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 3
    Top = 180
    Version = '7.02'
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.raf'
    InitialDir = 'c:\sigma'
    Left = 3
    Top = 220
  end
end
