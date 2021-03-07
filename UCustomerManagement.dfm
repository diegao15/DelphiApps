object FormCustomerManagement: TFormCustomerManagement
  Left = 0
  Top = 0
  Caption = 'Customer Management'
  ClientHeight = 264
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 385
    Height = 209
  end
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Name:'
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 43
    Height = 13
    Caption = 'Address:'
  end
  object Label3: TLabel
    Left = 279
    Top = 62
    Width = 26
    Height = 13
    Caption = 'NUm:'
  end
  object Label4: TLabel
    Left = 16
    Top = 109
    Width = 23
    Height = 13
    Caption = 'City:'
  end
  object Label5: TLabel
    Left = 279
    Top = 110
    Width = 46
    Height = 13
    Caption = 'Zip Code:'
  end
  object Label6: TLabel
    Left = 191
    Top = 155
    Width = 28
    Height = 13
    Caption = 'Email:'
  end
  object Label7: TLabel
    Left = 16
    Top = 155
    Width = 34
    Height = 13
    Caption = 'Phone:'
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 35
    Width = 360
    Height = 21
    DataField = 'CUS_NAME'
    DataSource = DataModuleMain.DataSourceCustomers
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 83
    Width = 257
    Height = 21
    DataField = 'CUS_ADDRESS'
    DataSource = DataModuleMain.DataSourceCustomers
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 279
    Top = 83
    Width = 97
    Height = 21
    DataField = 'CUS_ADDRESS_NUM'
    DataSource = DataModuleMain.DataSourceCustomers
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 128
    Width = 257
    Height = 21
    DataField = 'CUS_CITY'
    DataSource = DataModuleMain.DataSourceCustomers
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 279
    Top = 129
    Width = 97
    Height = 21
    DataField = 'CUS_ZIP_CODE'
    DataSource = DataModuleMain.DataSourceCustomers
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 191
    Top = 174
    Width = 185
    Height = 21
    DataField = 'CUS_EMAIL'
    DataSource = DataModuleMain.DataSourceCustomers
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 16
    Top = 174
    Width = 169
    Height = 21
    DataField = 'CUS_PHONE'
    DataSource = DataModuleMain.DataSourceCustomers
    TabOrder = 6
  end
  object ButtonSave: TButton
    Left = 8
    Top = 223
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 7
    OnClick = ButtonSaveClick
  end
  object ButtonEdit: TButton
    Left = 89
    Top = 223
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 8
    OnClick = ButtonEditClick
  end
  object ButtonNew: TButton
    Left = 170
    Top = 223
    Width = 75
    Height = 25
    Caption = 'New'
    TabOrder = 9
    OnClick = ButtonNewClick
  end
  object ButtonRemove: TButton
    Left = 251
    Top = 223
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 10
    OnClick = ButtonRemoveClick
  end
  object ButtonNext: TButton
    Left = 371
    Top = 223
    Width = 22
    Height = 25
    Caption = '>'
    TabOrder = 11
    OnClick = ButtonNextClick
  end
  object ButtonPrevious: TButton
    Left = 343
    Top = 223
    Width = 22
    Height = 25
    Caption = '<'
    TabOrder = 12
    OnClick = ButtonPreviousClick
  end
end
