#define MyAppName "大连理工大学图书馆自动预约座位小程序-输入版"
#define MyAppVersion "1.1.1"
#define MyAppPublisher "qhy040404"
#define MyAppURL "https://github.com/qhy040404/DLUT-library-auto-reservation"
#define MyAppExeName "main_input.exe"

[Setup]
AppId={{AF82D06B-5781-4307-B58F-B0E4D317D71B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\DLUT-library-auto-reservation-input
DisableProgramGroupPage=yes
DisableWelcomePage=no
LicenseFile=J:\VSProjs\Library\LICENSE
OutputDir=J:\VSProjs\Library\setup\output
OutputBaseFilename=DLUT-library-auto-reservation-input-Installer
SetupIconFile=J:\VSProjs\Library\logo\logo.ico
SourceDir=J:\VSProjs\Library\setup\images
Compression=lzma
SolidCompression=yes
WizardStyle=modern
WizardImageFile=100.bmp,125.bmp,150.bmp,175.bmp
WizardSmallImageFile=100small.bmp,125small.bmp,150small.bmp,175small.bmp

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; 

[Files]
Source: "J:\VSProjs\Library\exe\input\dist\main_input\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "J:\VSProjs\Library\exe\input\dist\main_input\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "J:\VSProjs\Library\driver\chromedriver.exe"; DestDir: "{app}/driver"; Flags: ignoreversion

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent