@echo off
cd C:\Users\YERSON\Documents\GitHub\contribuciones-diarias

:: Obtener fecha y hora en formato YYYY-MM-DD
for /f "tokens=2 delims==" %%I in ('"wmic os get localdatetime /value"') do set datetime=%%I
set fecha=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%

:: Escribir la fecha de contribución en el archivo
echo Contribución diaria %fecha% >> contribucion.txt

:: Agregar, hacer commit y empujar cambios
git add contribucion.txt
git commit -m "Contribución diaria %fecha%"
git push origin main
