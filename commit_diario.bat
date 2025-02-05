@echo off
cd C:\Users\YERSON\Documents\GitHub\contribuciones-diarias
echo Contribución diaria %date% >> contribucion.txt
git add contribucion.txt
git commit -m "Contribución diaria %date%"
git push origin main