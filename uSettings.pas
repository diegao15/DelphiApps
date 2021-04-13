unit uSettings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,iniFiles,
  System.Threading  ;

type
  TForm1 = class(TForm)
    CheckBoxActaveOption: TCheckBox;
    EditSettingsText: TEdit;
    ComboBoxItemIndex: TComboBox;
    SpinEditNumericSettings: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ButtonSave: TButton;
    ButtonLoad: TButton;
    ButtonSincrono: TButton;
    ButtonAssincrono: TButton;
    procedure ButtonSaveClick(Sender: TObject);
    procedure ButtonLoadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonSincronoClick(Sender: TObject);
    procedure ButtonAssincronoClick(Sender: TObject);
  private
    procedure SaveSettings;
    procedure LoadSettings;

    procedure ExemploMethodoDemorado;
    { Private declarations }
  public
    const
    fileSettingsName  ='.\settings.ini';
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.ButtonAssincronoClick(Sender: TObject);
begin
  //  avoid freezin, on heavy process
  TTask.Run( procedure ()
  begin
    ExemploMethodoDemorado;
  end);
end;

procedure TForm1.ButtonLoadClick(Sender: TObject);
begin
  LoadSettings;
end;

procedure TForm1.ButtonSaveClick(Sender: TObject);
begin
  SaveSettings;
end;

procedure TForm1.ButtonSincronoClick(Sender: TObject);
begin
  ExemploMethodoDemorado;
end;

procedure TForm1.ExemploMethodoDemorado;
begin
  for var i := 0 to 100 do
    sleep(100);

  showmessage('Processamento concluido...');
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  LoadSettings;
end;

procedure TForm1.LoadSettings;
var
  iniConfig : TIniFile;
begin
  iniConfig := TIniFile.Create(fileSettingsName);
  try
    EditSettingsText.Text := iniConfig.ReadString('settings','EditSettingsText','Default value');
    CheckBoxActaveOption.Checked := iniConfig.ReadBool('settings','CheckBoxActaveOption',false);
    ComboBoxItemIndex.ItemIndex := iniConfig.ReadInteger('settings','ComboBoxItemIndex',0);
    SpinEditNumericSettings.Value := iniConfig.ReadInteger('settings','SpinEditNumericSettings',1);
  finally
    iniConfig.Free;
  end;
  //
end;

procedure TForm1.SaveSettings;
var
  iniConfig : TIniFile;
begin
  iniConfig := TIniFile.Create(fileSettingsName);
  try
    iniConfig.WriteString('settings','EditSettingsText',EditSettingsText.Text);
    iniConfig.WriteBool('settings','CheckBoxActaveOption',CheckBoxActaveOption.Checked);
    iniConfig.WriteInteger('settings','ComboBoxItemIndex',ComboBoxItemIndex.ItemIndex);
    iniConfig.WriteInteger('settings','SpinEditNumericSettings',SpinEditNumericSettings.Value);
  finally
    iniConfig.Free;
  end;
  //
end;

end.
