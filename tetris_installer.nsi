; tetris_installer.nsi
!include "MUI2.nsh"

Name "TetrisPy"
OutFile "TetrisPyInstaller.exe"
InstallDir "$PROGRAMFILES\TetrisPy"

!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES

!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES

!insertmacro MUI_LANGUAGE "English"

Section "Install"
  SetOutPath "$INSTDIR"
  File "dist\tetris.exe"
  CreateShortcut "$DESKTOP\TetrisPy.lnk" "$INSTDIR\tetris.exe"
  WriteUninstaller "$INSTDIR\Uninstall.exe"
SectionEnd

Section "Uninstall"
  Delete "$INSTDIR\tetris.exe"
  Delete "$INSTDIR\Uninstall.exe"
  Delete "$DESKTOP\TetrisPy.lnk"
  RMDir "$INSTDIR"
SectionEnd