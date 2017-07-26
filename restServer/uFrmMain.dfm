object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Server'
  ClientHeight = 251
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 104
    Top = 65
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 40
    Top = 96
    Width = 513
    Height = 123
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
end
