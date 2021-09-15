; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "BimEra Addin"
#define MyAppVersion "0.1"
#define MyAppPublisher "BimEra"
#define MyAppURL "https://www.bimera.co/"
#define MyAppExeName "MyProg.exe"
#define MyAppAssocName MyAppName + " File"
#define MyAppAssocExt ".myp"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{7AD03700-7B6C-412B-BFCA-070CA3DEC173}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
ChangesAssociations=yes
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\Akriyas\Documents\GitHub\WallSweepsAddIn\BIMEra.SampleProject\Sample.RevitCore\Installer
OutputBaseFilename=BimEraAddinSetup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Program Files (x86)\Inno Setup 6\Examples\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Akriyas\Documents\GitHub\WallSweepsAddIn\BIMEra.SampleProject\Sample.RevitCore\Output\2019\*"; DestDir: "C:\Program Files (x86)\BimEra Addin\2019"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Akriyas\Documents\GitHub\WallSweepsAddIn\BIMEra.SampleProject\Sample.RevitCore\Output\2020\*"; DestDir: "C:\Program Files (x86)\BimEra Addin\2020"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Akriyas\Documents\GitHub\WallSweepsAddIn\BIMEra.SampleProject\Sample.RevitCore\Output\2021\*"; DestDir: "C:\Program Files (x86)\BimEra Addin\2021"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Akriyas\Documents\GitHub\WallSweepsAddIn\BIMEra.SampleProject\Sample.RevitCore\Output\Addin file\BimEra_2019.addin"; DestDir: "C:\ProgramData\Autodesk\Revit\Addins\2019"; Flags: ignoreversion
Source: "C:\Users\Akriyas\Documents\GitHub\WallSweepsAddIn\BIMEra.SampleProject\Sample.RevitCore\Output\Addin file\BimEra_2020.addin"; DestDir: "C:\ProgramData\Autodesk\Revit\Addins\2020"; Flags: ignoreversion
Source: "C:\Users\Akriyas\Documents\GitHub\WallSweepsAddIn\BIMEra.SampleProject\Sample.RevitCore\Output\Addin file\BimEra_2021.addin"; DestDir: "C:\ProgramData\Autodesk\Revit\Addins\2021"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

