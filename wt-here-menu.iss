[Setup]
AppId=WinTermHereMenu
AppName={cm:AppName}
AppVersion=1.0
DefaultDirName={autopf}\WTHereMenu
DefaultGroupName=Windows Terminal Here Menu
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=admin
ArchitecturesInstallIn64BitMode=x64
DisableDirPage=yes
SetupIconFile=icon.ico
OutputBaseFilename=WTHereMenu-Setup
OutputDir=output
DisableReadyPage=yes
UninstallDisplayName={cm:AppName}
VersionInfoProductName={cm:AppName}

[Tasks]
Name: setextended; Description: "Hide menu item (reveal on Shift+Right Click)"
Name: showicon; Description: "Show icon in menu"

[Registry]
Root: HKCR; Subkey: "Directory\Shell\WindowsTerminalHereMenu"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Directory\Shell\WindowsTerminalHereMenu"; ValueType: string; ValueData: "{cm:WTHere}"
Root: HKCR; Subkey: "Directory\Shell\WindowsTerminalHereMenu"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\icon.ico"; Tasks: showicon
Root: HKCR; Subkey: "Directory\Shell\WindowsTerminalHereMenu"; ValueType: string; ValueName: "Extended"; Tasks: setextended
Root: HKCR; Subkey: "Directory\Shell\WindowsTerminalHereMenu\command"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Directory\Shell\WindowsTerminalHereMenu\command"; ValueType: expandsz; ValueData: "%LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe -d  ""%1"""

Root: HKCR; Subkey: "Directory\Background\Shell\WindowsTerminalHereMenu"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Directory\Background\Shell\WindowsTerminalHereMenu"; ValueType: string; ValueData: "{cm:WTHere}"
Root: HKCR; Subkey: "Directory\Background\Shell\WindowsTerminalHereMenu"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\icon.ico"; Tasks: showicon
Root: HKCR; Subkey: "Directory\Background\Shell\WindowsTerminalHereMenu"; ValueType: string; ValueName: "Extended"; Tasks: setextended
Root: HKCR; Subkey: "Directory\Background\Shell\WindowsTerminalHereMenu\command"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Directory\Background\Shell\WindowsTerminalHereMenu\command"; ValueType: expandsz; ValueData: "%LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe -d  ""%1"""

Root: HKCR; Subkey: "Drive\Shell\WindowsTerminalHereMenu"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Drive\Shell\WindowsTerminalHereMenu"; ValueType: string; ValueData: "{cm:WTHere}"
Root: HKCR; Subkey: "Drive\Shell\WindowsTerminalHereMenu"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\icon.ico"; Tasks: showicon
Root: HKCR; Subkey: "Drive\Shell\WindowsTerminalHereMenu"; ValueType: string; ValueName: "Extended"; Tasks: setextended
Root: HKCR; Subkey: "Drive\Shell\WindowsTerminalHereMenu\command"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Drive\Shell\WindowsTerminalHereMenu\command"; ValueType: expandsz; ValueData: "%LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe -d  ""%1"""

[CustomMessages]
AppName=Windows Terminal Here Menu
WTHere=Open Windows &Terminal Here

[Files]
Source: "icon.ico"; DestDir: "{app}"

[Code]
procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpSelectTasks then
    WizardForm.NextButton.Caption := SetupMessage(msgButtonInstall)
  else
    WizardForm.NextButton.Caption := SetupMessage(msgButtonNext);
end;
