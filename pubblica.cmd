@echo off
rem Invia a GitHub i dati cifrati scritti dal DC_Asset Engine (cartella telefono)
cd /d "%~dp0"
git add data.enc.json index.html
git diff --cached --quiet && (echo Nessuna novita da inviare.) || (git commit -q -m "dati %date% %time%")
git pull --rebase -q
git push -q && echo Fatto: il telefono vedra i nuovi dati entro qualche minuto.
timeout /t 4 >nul
