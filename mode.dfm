object Form2: TForm2
  Left = 688
  Top = 304
  Width = 194
  Height = 101
  BorderIcons = []
  Caption = #1042#1099#1073#1086#1088' '#1088#1077#1078#1080#1084#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ComboBox1: TComboBox
    Left = 8
    Top = 8
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1088#1077#1078#1080#1084
    Items.Strings = (
      #1063#1077#1083#1086#1074#1077#1082' ('#1061') vs '#1063#1077#1083#1086#1074#1077#1082' (0)'
      #1063#1077#1083#1086#1074#1077#1082' ('#1061') vs '#1041#1086#1090' (0)'
      #1063#1077#1083#1086#1074#1077#1082' (0) vs '#1041#1086#1090' ('#1061')')
  end
  object ok: TButton
    Left = 8
    Top = 32
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = okClick
  end
  object Cancel: TButton
    Left = 88
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = CancelClick
  end
end
