unit uDatamoduleMain;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModuleMain = class(TDataModule)
    FDConnectionMain: TFDConnection;
    FDTableCustomer: TFDTable;
    DataSourceCustomers: TDataSource;
    FDTableCustomerCUS_ID: TIntegerField;
    FDTableCustomerCUS_NAME: TStringField;
    FDTableCustomerCUS_ADDRESS: TStringField;
    FDTableCustomerCUS_ADDRESS_NUM: TStringField;
    FDTableCustomerCUS_CITY: TStringField;
    FDTableCustomerCUS_ZIP_CODE: TStringField;
    FDTableCustomerCUS_BIRTHDAY: TDateField;
    FDTableCustomerCUS_PHONE: TStringField;
    FDTableCustomerCUS_EMAIL: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleMain: TDataModuleMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
