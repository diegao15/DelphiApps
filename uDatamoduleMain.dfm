object DataModuleMain: TDataModuleMain
  OldCreateOrder = False
  Height = 314
  Width = 371
  object FDConnectionMain: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Password=masterkey'
      'User_Name=sysdba'
      'Database=C:\Temp\BANCO.GDB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 16
  end
  object FDTableCustomer: TFDTable
    IndexFieldNames = 'CUS_ID'
    Connection = FDConnectionMain
    UpdateOptions.UpdateTableName = 'CUSTOMERS'
    TableName = 'CUSTOMERS'
    Left = 48
    Top = 96
    object FDTableCustomerCUS_ID: TIntegerField
      FieldName = 'CUS_ID'
      Origin = 'CUS_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDTableCustomerCUS_NAME: TStringField
      FieldName = 'CUS_NAME'
      Origin = 'CUS_NAME'
      Required = True
      Size = 100
    end
    object FDTableCustomerCUS_ADDRESS: TStringField
      FieldName = 'CUS_ADDRESS'
      Origin = 'CUS_ADDRESS'
      Size = 100
    end
    object FDTableCustomerCUS_ADDRESS_NUM: TStringField
      FieldName = 'CUS_ADDRESS_NUM'
      Origin = 'CUS_ADDRESS_NUM'
      Size = 10
    end
    object FDTableCustomerCUS_CITY: TStringField
      FieldName = 'CUS_CITY'
      Origin = 'CUS_CITY'
      Size = 100
    end
    object FDTableCustomerCUS_ZIP_CODE: TStringField
      FieldName = 'CUS_ZIP_CODE'
      Origin = 'CUS_ZIP_CODE'
      Size = 15
    end
    object FDTableCustomerCUS_BIRTHDAY: TDateField
      FieldName = 'CUS_BIRTHDAY'
      Origin = 'CUS_BIRTHDAY'
    end
    object FDTableCustomerCUS_PHONE: TStringField
      FieldName = 'CUS_PHONE'
      Origin = 'CUS_PHONE'
      Size = 40
    end
    object FDTableCustomerCUS_EMAIL: TStringField
      FieldName = 'CUS_EMAIL'
      Origin = 'CUS_EMAIL'
      Size = 150
    end
  end
  object DataSourceCustomers: TDataSource
    DataSet = FDTableCustomer
    Left = 48
    Top = 160
  end
end
