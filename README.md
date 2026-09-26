# DC_Asset Engine – telefono

Visualizzatore di sola lettura del cruscotto patrimoniale.

- `data.enc.json` è **cifrato** (AES-GCM 256, chiave derivata dalla password con PBKDF2-SHA256, 310.000 iterazioni): senza password non è leggibile.
- `index.html` è il visualizzatore (funziona anche da browser tramite GitHub Pages).
- L'app Android si scarica dalla sezione **Releases** (`DC_Asset_Engine.apk`), compilata da GitHub Actions a ogni modifica del visualizzatore.
- I dati si aggiornano dal PC: DC_Asset Engine → Dati → *Pubblica per il telefono*, poi `pubblica.cmd`.
