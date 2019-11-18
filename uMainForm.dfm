object Form1: TForm1
  Left = 222
  Top = 463
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Base Converter'
  ClientHeight = 124
  ClientWidth = 266
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  DesignSize = (
    266
    124)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 38
    Height = 13
    Caption = 'Decimal'
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 19
    Height = 13
    Caption = 'Hex'
  end
  object Label4: TLabel
    Left = 8
    Top = 64
    Width = 29
    Height = 13
    Caption = 'Binary'
  end
  object editDecimal: TEdit
    Left = 56
    Top = 16
    Width = 196
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    OnChange = editDecimalChange
  end
  object editHex: TEdit
    Left = 56
    Top = 40
    Width = 196
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    OnChange = editHexChange
  end
  object editBinary: TEdit
    Left = 56
    Top = 64
    Width = 196
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    OnChange = editBinaryChange
  end
  object btnClear: TButton
    Left = 96
    Top = 91
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 3
    OnClick = btnClearClick
  end
  object btnExit: TButton
    Left = 176
    Top = 91
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 4
    OnClick = btnExitClick
  end
end
