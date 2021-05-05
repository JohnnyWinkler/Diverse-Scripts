# Diverse-Scripts
## App deployment mit Microsoft Intune
1. Anwendung gemäss der Vorlage "[Intune] Convert .exe File in .intunewin for Deployment via Intune.ps1" für Intune vorbereiten.
2. In den Endpoint Manager (https://endpoint.microsoft.com/) wechseln und nach <b><i>Apps > Windows</b></i> navigieren.
3. Auf "Hinzufügen" klicken und als App-Typ "Windows-App (Win32) auswählen. Danach kann im weiteren Schritt die zuvor erstellte .intunewin Datei ausgewählt werden.
4. Nun kann ein Benutzerfreundliche(r) Name und Beschreibung hinzugefügt werden. Zusätzlich muss noch der Herausgeber eingetragen werden.
5. Als Installationbefehl können folgende verwendet werden. Diese sind jeweils als Silent Install definiert, damit der Benutzer von der Installation nichts mitkriegt.
- 7-Zip: 7z1900-x64.exe /S
- Firefox: “Firefox Setup 88.0.exe” -ms
- Google Chrome: ChromeSetup.exe /silent /install
- PDF24: pdf24-creator-10.0.12.exe /VERYSILENT /NORESTART
- TeamViewer Host: TeamViewer_Host_Setup.exe /S
- VLC: vlc-3.0.12-win64.exe /S
6. Als Deinstallationsbefehl muss der jeweilige Pfad zur uninstall.exe (oder wie sie dementsprechend auch heissen wird) angegeben werden. Auch hier habe ich ein paar Beispiele von Anwendungen die ich im Einsatz habe.
- 7-Zip: C:\Program Files\7-Zip\Uninstall.exe
- Firefox: C:\Program Files\Mozilla Firefox\uninstall\helper.exe
- Google Chrome: C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
- PDF24: C:\Program Files (x86)\PDF24\unins000.exe
- TeamViewer Host: C:\Program Files (x86)\TeamViewer\uninstall.exe
- VLC: C:\Program Files\VideoLAN\VLC\uninstall.exe