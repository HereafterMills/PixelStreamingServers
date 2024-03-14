set "origin=%~dp0"
set "uiPath=%~dp0Frontend\ui-library"
set "cmdPath=%~dp0SignallingWebServer\platform_scripts\cmd"

cd %uiPath%
call npm install > "%origin%build1.log"
call npm run build >> "%origin%build1.log"

cd %cmdPath%
build.bat --build >> "%origin%build1.log"
