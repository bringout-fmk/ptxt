object frmTrazi: TfrmTrazi
  Left = 340
  Top = 211
  BorderStyle = bsDialog
  Caption = 'Tra'#382'i tekst'
  ClientHeight = 150
  ClientWidth = 313
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 297
    Height = 73
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 26
    Height = 13
    Caption = 'Tra'#382'i:'
  end
  object OKBtn: TButton
    Left = 71
    Top = 108
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 167
    Top = 108
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Otkazi'
    ModalResult = 2
    TabOrder = 2
    OnClick = CancelBtnClick
  end
  object edTrazi: TEdit
    Left = 80
    Top = 28
    Width = 193
    Height = 21
    TabOrder = 0
  end
end
