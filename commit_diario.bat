@echo off
cd C:\Users\YERSON\Documents\GitHub\contribuciones-diarias
for /f "tokens=2 delims==" %%I in ('"wmic os get localdatetime /value"') do set datetime=%%I
set fecha=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%
echo Contribución diaria %fecha% >> contribucion.txt
git add contribucion.txt
git commit -m "Contribución diaria %fecha%"
git push origin main
