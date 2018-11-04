object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'MiST USB Joystick Mapper'
  ClientHeight = 233
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pa0: TPanel
    Left = 16
    Top = 17
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '0'
    ParentBackground = False
    TabOrder = 0
  end
  object cb0: TComboBox
    Left = 41
    Top = 17
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 1
    OnChange = ComboChange
    Items.Strings = (
      ''
      'RIGHT'
      'LEFT'
      'DOWN'
      'UP'
      'A'
      'B'
      'SELECT'
      'START'
      'X'
      'Y'
      'L'
      'R'
      'L2'
      'R2'
      'L3'
      'R3')
  end
  object pa1: TPanel
    Left = 16
    Top = 44
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '1'
    ParentBackground = False
    TabOrder = 2
  end
  object cb1: TComboBox
    Left = 41
    Top = 44
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 3
    OnChange = ComboChange
  end
  object pa2: TPanel
    Left = 16
    Top = 71
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '2'
    ParentBackground = False
    TabOrder = 4
  end
  object cb2: TComboBox
    Left = 41
    Top = 71
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 5
    OnChange = ComboChange
  end
  object pa3: TPanel
    Left = 16
    Top = 98
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '3'
    ParentBackground = False
    TabOrder = 6
  end
  object cb3: TComboBox
    Left = 41
    Top = 98
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 7
    OnChange = ComboChange
  end
  object pa4: TPanel
    Left = 184
    Top = 17
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '4'
    ParentBackground = False
    TabOrder = 8
  end
  object cb4: TComboBox
    Left = 209
    Top = 17
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 9
    OnChange = ComboChange
  end
  object pa5: TPanel
    Left = 184
    Top = 44
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '5'
    ParentBackground = False
    TabOrder = 10
  end
  object cb5: TComboBox
    Left = 209
    Top = 44
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 11
    OnChange = ComboChange
  end
  object pa6: TPanel
    Left = 184
    Top = 71
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '6'
    ParentBackground = False
    TabOrder = 12
  end
  object cb6: TComboBox
    Left = 209
    Top = 71
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 13
    OnChange = ComboChange
    Items.Strings = (
      ''
      'RIGHT'
      'LEFT'
      'DOWN'
      'UP'
      'A'
      'B'
      'SELECT'
      'START'
      'X'
      'Y'
      'L'
      'R'
      'L2'
      'R2'
      'L3'
      'R3')
  end
  object pa7: TPanel
    Left = 184
    Top = 98
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '7'
    ParentBackground = False
    TabOrder = 14
  end
  object cb7: TComboBox
    Left = 209
    Top = 98
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 15
    OnChange = ComboChange
  end
  object pa8: TPanel
    Left = 184
    Top = 125
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '8'
    ParentBackground = False
    TabOrder = 16
  end
  object cb8: TComboBox
    Left = 209
    Top = 125
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 17
    OnChange = ComboChange
  end
  object pa9: TPanel
    Left = 184
    Top = 152
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '9'
    ParentBackground = False
    TabOrder = 18
  end
  object cb9: TComboBox
    Left = 209
    Top = 152
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 19
    OnChange = ComboChange
  end
  object pa10: TPanel
    Left = 352
    Top = 17
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '10'
    ParentBackground = False
    TabOrder = 20
  end
  object cb10: TComboBox
    Left = 377
    Top = 17
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 21
    OnChange = ComboChange
  end
  object pa11: TPanel
    Left = 352
    Top = 44
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '11'
    ParentBackground = False
    TabOrder = 22
  end
  object cb11: TComboBox
    Left = 377
    Top = 44
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 23
    OnChange = ComboChange
  end
  object pa12: TPanel
    Left = 352
    Top = 71
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '12'
    ParentBackground = False
    TabOrder = 24
  end
  object cb12: TComboBox
    Left = 377
    Top = 71
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 25
    OnChange = ComboChange
  end
  object pa13: TPanel
    Left = 352
    Top = 98
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '13'
    ParentBackground = False
    TabOrder = 26
  end
  object cb13: TComboBox
    Left = 377
    Top = 98
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 27
    OnChange = ComboChange
  end
  object pa14: TPanel
    Left = 352
    Top = 125
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '14'
    ParentBackground = False
    TabOrder = 28
  end
  object cb14: TComboBox
    Left = 377
    Top = 125
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 29
    OnChange = ComboChange
  end
  object pa15: TPanel
    Left = 352
    Top = 152
    Width = 21
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = '15'
    ParentBackground = False
    TabOrder = 30
  end
  object cb15: TComboBox
    Left = 377
    Top = 152
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 31
    OnChange = ComboChange
  end
  object edLine: TEdit
    Left = 16
    Top = 187
    Width = 345
    Height = 21
    TabOrder = 32
  end
  object cb0b: TComboBox
    Left = 107
    Top = 17
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 33
    OnChange = ComboChange
    Items.Strings = (
      ''
      'RIGHT'
      'LEFT'
      'DOWN'
      'UP'
      'A'
      'B'
      'SELECT'
      'START'
      'X'
      'Y'
      'L'
      'R'
      'L2'
      'R2'
      'L3'
      'R3')
  end
  object cb1b: TComboBox
    Left = 107
    Top = 44
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 34
    OnChange = ComboChange
  end
  object cb2b: TComboBox
    Left = 107
    Top = 71
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 35
    OnChange = ComboChange
  end
  object cb3b: TComboBox
    Left = 107
    Top = 98
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 36
    OnChange = ComboChange
  end
  object cb4b: TComboBox
    Left = 275
    Top = 17
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 37
    OnChange = ComboChange
  end
  object cb5b: TComboBox
    Left = 275
    Top = 44
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 38
    OnChange = ComboChange
  end
  object cb6b: TComboBox
    Left = 275
    Top = 71
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 39
    OnChange = ComboChange
    Items.Strings = (
      ''
      'RIGHT'
      'LEFT'
      'DOWN'
      'UP'
      'A'
      'B'
      'SELECT'
      'START'
      'X'
      'Y'
      'L'
      'R'
      'L2'
      'R2'
      'L3'
      'R3')
  end
  object cb7b: TComboBox
    Left = 275
    Top = 98
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 40
    OnChange = ComboChange
  end
  object cb8b: TComboBox
    Left = 275
    Top = 125
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 41
    OnChange = ComboChange
  end
  object cb9b: TComboBox
    Left = 275
    Top = 152
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 42
    OnChange = ComboChange
  end
  object cb10b: TComboBox
    Left = 443
    Top = 17
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 43
    OnChange = ComboChange
  end
  object cb11b: TComboBox
    Left = 443
    Top = 44
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 44
    OnChange = ComboChange
  end
  object cb12b: TComboBox
    Left = 443
    Top = 71
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 45
    OnChange = ComboChange
  end
  object cb13b: TComboBox
    Left = 443
    Top = 98
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 46
    OnChange = ComboChange
  end
  object cb14b: TComboBox
    Left = 443
    Top = 125
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 47
    OnChange = ComboChange
  end
  object cb15b: TComboBox
    Left = 443
    Top = 152
    Width = 60
    Height = 21
    Style = csDropDownList
    TabOrder = 48
    OnChange = ComboChange
  end
  object NLDJoystick1: TNLDJoystick
    Advanced = True
    OnButtonDown = NLDJoystick1ButtonDown
    OnMove = NLDJoystick1Move
    Left = 88
    Top = 136
  end
end
