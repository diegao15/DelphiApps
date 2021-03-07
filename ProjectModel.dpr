program ProjectModel;

uses
  Vcl.Forms,
  UCustomerManagement in 'UCustomerManagement.pas' {FormCustomerManagement},
  uDatamoduleMain in 'uDatamoduleMain.pas' {DataModuleMain: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModuleMain, DataModuleMain);
  Application.CreateForm(TFormCustomerManagement, FormCustomerManagement);
  Application.Run;
end.
