@echo off
:start
set mm=
set /p unverum=Welcome to the Street Fighter V Optimiser! Would you like to use the a mod manager such as PMM or FMM for the pak mods? (Y/N):
if not '%mm%'=='' set mm=%mm:0,1%
if '%mm%'=='Y' goto uyes
if '%mm%'=='y' goto uyes
if '%mm%'=='yes' goto uyes
if '%mm%'=='Yes' goto uyes
if '%mm%'=='YES' goto uyes
if '%mm%'=='N' goto uno
if '%mm%'=='n' goto uno
if '%mm%'=='no' goto uno
if '%mm%'=='No' goto uno
if '%mm%'=='NO' goto uno
echo "%mm%" is not a valid response. Please try again.
echo.
goto start

:uyes
xcopy /s /q ".\source\~mods\" ".\Pak Files\"
echo Installation complete. Pak files have been copied to this directory for use with a mod manager.
@pause
exit

:uno
set dircheck=
set /p dircheck=Is SFV installed in the default Steam directory (C:\Program Files (x86)\Steam\)? (Y/N):
if not '%dircheck%'=='' set dircheck=%dircheck:~0,1%
if '%dircheck%'=='Y' goto yes
if '%dircheck%'=='y' goto yes
if '%dircheck%'=='yes' goto yes
if '%dircheck%'=='Yes' goto yes
if '%dircheck%'=='YES' goto yes
if '%dircheck%'=='N' goto no
if '%dircheck%'=='n' goto no
if '%dircheck%'=='no' goto no
if '%dircheck%'=='No' goto no
if '%dircheck%'=='NO' goto no
echo "%dircheck%" is not a valid response. Please try again.
echo.
goto uno

:yes
xcopy /s ".\source\~mods\" "%PROGRAMFILES(X86)%\Steam\steamapps\common\StreetFighterV\StreetFighterV\Content\Paks"
echo Installation complete.
@pause
exit

:no
set dirr=
set /p dirr=Please input the full file path to your Steam library (e.g. steamapps) folder where SFV is installed:
xcopy /s ".\source\~mods\" "%dirr%\common\StreetFighterV\StreetFighterV\Content\Paks"
echo Installation complete.
@pause
exit
