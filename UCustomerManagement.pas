unit UCustomerManagement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,uDataModuleMain, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls,Data.DB;

type
  TFormCustomerManagement = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Bevel1: TBevel;
    ButtonSave: TButton;
    ButtonEdit: TButton;
    ButtonNew: TButton;
    ButtonRemove: TButton;
    ButtonNext: TButton;
    ButtonPrevious: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
    procedure ButtonEditClick(Sender: TObject);
    procedure ButtonNewClick(Sender: TObject);
    procedure ButtonRemoveClick(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
  private
    procedure SaveInfo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCustomerManagement: TFormCustomerManagement;

implementation

{$R *.dfm}

procedure TFormCustomerManagement.ButtonEditClick(Sender: TObject);
begin
  if DataModuleMain.FDTableCustomer.Active then
    DataModuleMain.FDTableCustomer.Edit;
end;

procedure TFormCustomerManagement.ButtonNewClick(Sender: TObject);
begin
  if DataModuleMain.FDTableCustomer.Active then
    DataModuleMain.FDTableCustomer.Insert;
end;

procedure TFormCustomerManagement.ButtonNextClick(Sender: TObject);
begin
  if DataModuleMain.FDTableCustomer.Active then
    DataModuleMain.FDTableCustomer.Next;
end;

procedure TFormCustomerManagement.ButtonPreviousClick(Sender: TObject);
begin
  if DataModuleMain.FDTableCustomer.Active then
    DataModuleMain.FDTableCustomer.Prior;
end;

procedure TFormCustomerManagement.ButtonRemoveClick(Sender: TObject);
begin
  if Application.MessageBox('Are you sure you want to delete it?','Delete register',
  mb_iconQuestion+mb_yesno+Mb_defbutton2)= id_no then exit;

  if DataModuleMain.FDTableCustomer.Active then
    DataModuleMain.FDTableCustomer.Delete;

  showmessage('Customer deleted successfuly!');
end;

procedure TFormCustomerManagement.ButtonSaveClick(Sender: TObject);
begin
  SaveInfo;
end;

procedure TFormCustomerManagement.FormCreate(Sender: TObject);
begin
  with DataModuleMain.FDTableCustomer do
  begin
    Open();
    First;
  end;
end;

procedure TFormCustomerManagement.SaveInfo;
begin
  with DataModuleMain.FDTableCustomer do
  begin
    // avoid erros
    if state in DsEditModes then
      post;
  end;
  showmessage('Customer saved successfuly!');
end;

end.
