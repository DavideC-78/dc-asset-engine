@echo off
rem Invia a GitHub i dati cifrati scritti dal DC_Asset Engine (cartella telefono)
rem v2.3.6: si allinea a GitHub senza toccare i file, cosi' non va in conflitto con gli invii fatti dall'engine col token
cd /d "%~dp0"
git fetch -q origin
git reset -q origin/main
git add data.enc.json index.html
git diff --cached --quiet && (echo Nessuna novita da inviare.) || (git commit -q -m "dati %date% %time%")
git push -q && echo Fatto: il telefono vedra i nuovi dati entro qualche minuto.
timeout /t 4 >nul
