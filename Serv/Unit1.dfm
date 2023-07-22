object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1057#1077#1088#1074#1077#1088
  ClientHeight = 400
  ClientWidth = 579
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 579
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 122
    Height = 13
    Caption = #1050' '#1085#1072#1084' '#1087#1086#1076#1089#1086#1077#1076#1080#1085#1080#1083#1086#1089#1100': '
  end
  object LabelCountConnection: TLabel
    Left = 144
    Top = 16
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Button1: TButton
    Left = 75
    Top = 138
    Width = 75
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBoxDataClient: TGroupBox
    Left = 223
    Top = 8
    Width = 298
    Height = 377
    Caption = 'GroupBoxDataClient'
    TabOrder = 1
    Visible = False
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 52
      Height = 13
      Caption = #1040#1076#1088#1077#1089' '#1055#1050':'
    end
    object LabelAdresPC: TLabel
      Left = 88
      Top = 24
      Width = 52
      Height = 13
      Caption = #1040#1076#1088#1077#1089' '#1055#1050':'
    end
    object Button2: TButton
      Left = 16
      Top = 56
      Width = 241
      Height = 25
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1055#1050
      TabOrder = 0
      OnClick = Button2Click
    end
    object Memo1: TMemo
      Left = 16
      Top = 181
      Width = 241
      Height = 164
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'Memo1')
      ParentFont = False
      TabOrder = 1
    end
    object Button3: TButton
      Left = 16
      Top = 87
      Width = 241
      Height = 25
      Caption = #1055#1077#1088#1077#1079#1072#1075#1088#1091#1079#1080#1090#1100' '#1055#1050
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 16
      Top = 118
      Width = 241
      Height = 25
      Caption = #1042#1099#1082#1083#1102#1095#1080#1090#1100' '#1055#1050
      TabOrder = 3
      OnClick = Button4Сlick
    end
    object Button5: TButton
      Left = 16
      Top = 152
      Width = 241
      Height = 25
      Caption = #1054#1094#1077#1085#1080#1090#1100' '#1055#1050
      TabOrder = 4
      Visible = False
      OnClick = Button5Click
    end
  end
  object ListBoxHosts: TListBox
    Left = 17
    Top = 35
    Width = 200
    Height = 97
    ItemHeight = 13
    TabOrder = 2
    OnClick = ListBoxHostsClick
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 65530
    ServerType = stNonBlocking
    OnClientRead = ServerSocket1ClientRead
    Left = 72
    Top = 192
  end
end
