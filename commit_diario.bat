@echo off
cd C:\Users\YERSON\Documents\GitHub\contribuciones-diarias

:: Obtener la fecha en formato YYYY-MM-DD
for /f "tokens=2 delims==" %%I in ('"wmic os get localdatetime /value"') do set datetime=%%I
set fecha=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%

:: Agregar la fecha al archivo contribucion.txt
echo Contribución diaria %fecha% - %time% >> contribucion.txt

:: Hacer commit y push
git add contribucion.txt
git commit -m "Contribución diaria %fecha%"
git pull origin main --rebase
git push origin main
