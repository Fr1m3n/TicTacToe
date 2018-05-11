object Form1: TForm1
  Left = 882
  Top = 249
  BorderStyle = bsSingle
  Caption = #1050#1088#1077#1089#1090#1080#1082#1080' - '#1085#1086#1083#1080#1082#1080
  ClientHeight = 462
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = -8
    Top = 0
    Width = 350
    Height = 457
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    object cell11: TImage
      Left = 25
      Top = 25
      Width = 100
      Height = 100
      OnClick = cell11Click
    end
    object cell12: TImage
      Left = 125
      Top = 25
      Width = 100
      Height = 100
      OnClick = cell11Click
    end
    object cell13: TImage
      Left = 225
      Top = 25
      Width = 100
      Height = 100
      OnClick = cell11Click
    end
    object cell23: TImage
      Left = 225
      Top = 125
      Width = 100
      Height = 100
      OnClick = cell11Click
    end
    object cell22: TImage
      Left = 125
      Top = 125
      Width = 100
      Height = 100
      OnClick = cell11Click
    end
    object cell21: TImage
      Left = 25
      Top = 125
      Width = 100
      Height = 100
      OnClick = cell11Click
    end
    object cell33: TImage
      Left = 225
      Top = 225
      Width = 100
      Height = 100
      OnClick = cell11Click
    end
    object cell32: TImage
      Left = 125
      Top = 225
      Width = 100
      Height = 100
      OnClick = cell11Click
    end
    object cell31: TImage
      Left = 25
      Top = 225
      Width = 100
      Height = 100
      OnClick = cell11Click
    end
    object Image1: TImage
      Left = 233
      Top = 353
      Width = 100
      Height = 100
    end
    object Label4: TLabel
      Left = 248
      Top = 336
      Width = 70
      Height = 13
      Caption = #1057#1077#1081#1095#1072#1089' '#1093#1086#1076#1080#1090' '
    end
    object GroupBox2: TGroupBox
      Left = 24
      Top = 328
      Width = 185
      Height = 121
      TabOrder = 0
      object A: TLabel
        Left = 40
        Top = 16
        Width = 19
        Height = 36
        Caption = #1040
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -31
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 88
        Top = 16
        Width = 10
        Height = 37
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object B: TLabel
        Left = 128
        Top = 16
        Width = 20
        Height = 36
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -31
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 32
        Top = 8
        Width = 42
        Height = 13
        Caption = #1050#1088#1077#1089#1090#1080#1082
      end
      object Label3: TLabel
        Left = 120
        Top = 8
        Width = 32
        Height = 13
        Caption = #1053#1086#1083#1080#1082
      end
      object Label5: TLabel
        Left = 8
        Top = 96
        Width = 32
        Height = 13
        Caption = 'Label5'
      end
      object Button1: TButton
        Left = 56
        Top = 80
        Width = 73
        Height = 33
        Caption = #1053#1086#1074#1072#1103' '#1080#1075#1088#1072
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object MainMenu1: TMainMenu
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N11: TMenuItem
        Caption = #1053#1086#1074#1072#1103' '#1080#1075#1088#1072
        OnClick = Button1Click
      end
      object N2: TMenuItem
        Caption = #1042#1099#1073#1086#1088' '#1088#1077#1078#1080#1084#1072
        OnClick = N2Click
      end
    end
  end
end
