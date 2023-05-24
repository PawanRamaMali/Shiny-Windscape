[Setup]
AppName=Faithful App
AppVersion=1.0
DefaultDirName={sd}\Faithful App
DefaultGroupName=Faithful
UninstallDisplayIcon={app}\start_app.vbs
Compression=lzma2
SolidCompression=yes
DisableDirPage=no
OutputBaseFilename=faithful_setup_file_v_1.0


[Files]
Source: "R\*"; DestDir: "{app}\R"  ; Flags: ignoreversion recursesubdirs createallsubdirs     
Source: "app\*"; DestDir: "{app}\app"  ; Flags: ignoreversion recursesubdirs createallsubdirs 
Source: "logs\*"; DestDir: "{app}\logs"  ; Flags: ignoreversion recursesubdirs createallsubdirs 
Source: "start_app.vbs"; DestDir: "{app}"
Source: "runApp.R"; DestDir: "{app}"
Source: "app.ico"; DestDir: "{app}"
Source: "readme.txt"; DestDir: "{app}"; Flags: isreadme


[Icons]
Name: "{group}\Faithful App"; Filename: "{app}\start_app.vbs" ;IconFilename: "{app}\app.ico"