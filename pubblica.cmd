@echo off
rem Invia a GitHub i dati cifrati scritti dal DC_Asset Engine (cartella telefono)
cd /d "%~dp0"
git pull --rebase --quiet
git add data.enc.json
git diff --cached --quiet && (echo Nessuna novita da inviare.) || (git commit -q -m "dati %date% %time%" && git push -q && echo Inviato: il telefono vedra i nuovi dati entro qualche minuto.)
timeout /t 4 >nul
