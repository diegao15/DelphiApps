object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 248
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 100
    Width = 78
    Height = 13
    Caption = 'numeric settings'
  end
  object Label3: TLabel
    Left = 16
    Top = 8
    Width = 62
    Height = 13
    Caption = 'Settings text'
  end
  object Label4: TLabel
    Left = 16
    Top = 54
    Width = 92
    Height = 13
    Caption = 'Settings ItemIndex'
  end
  object CheckBoxActaveOption: TCheckBox
    Left = 16
    Top = 160
    Width = 97
    Height = 17
    Caption = 'Activate option'
    TabOrder = 0
  end
  object EditSettingsText: TEdit
    Left = 16
    Top = 27
    Width = 161
    Height = 21
    TabOrder = 1
    Text = 'EditSettingsText'
  end
  object ComboBoxItemIndex: TComboBox
    Left = 16
    Top = 73
    Width = 145
    Height = 21
    TabOrder = 2
    Text = 'ComboBoxItemIndex'
    Items.Strings = (
      'option 1'
      'option 2'
      'option 3')
  end
  object SpinEditNumericSettings: TSpinEdit
    Left = 16
    Top = 119
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object ButtonSave: TButton
    Left = 16
    Top = 192
    Width = 200
    Height = 25
    Caption = 'Save settings'
    TabOrder = 4
    OnClick = ButtonSaveClick
  end
  object ButtonLoad: TButton
    Left = 222
    Top = 192
    Width = 251
    Height = 25
    Caption = 'Load settings'
    TabOrder = 5
    OnClick = ButtonLoadClick
  end
end
