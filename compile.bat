@echo on
set "script_path=%~dp0"
set "engine=%script_path%engine"
set "main=main"
set "love=%script_path%engine\love.exe"
for %%A in ("%CD%") do set "name=%%~nxA"
set "to_zip=%script_path%%main%"
mkdir output
set "out=%script_path%output\%name%.love"
set "fin=%script_path%output\%name%.exe"

"C:\Program Files (x86)\7-Zip\7z.exe" a -tzip "%out%" "%to_zip%\*"

copy /b "%love%" + "%out%" "%fin%"
del /f "%out%"


echo %to_zip%

@REM exit
 pause